id sub_10018C86C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v5)
    {
      [v5 invalidate];
      v5 = *(v3 + v4);
    }

    *(v3 + v4) = 0;
  }

  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10018CABC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v48 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel;
  v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v49 = v13;
  v16 = v6;
  v17 = a1;
  v18 = v15;
  v19 = sub_100753094();
  v21 = v20;

  if (!a2)
  {

    v6 = v16;
    v13 = v49;
    v24 = *&v2[v49];
    if (v24)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  if (v19 != v17 || v21 != a2)
  {
    v23 = sub_100754754();

    v6 = v16;
    v13 = v49;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_11:
    v24 = *&v2[v13];
    if (v24)
    {
      goto LABEL_31;
    }

LABEL_12:
    v25 = v2;
    if (qword_100921580 != -1)
    {
      swift_once();
    }

    v26 = sub_100750534();
    v27 = sub_10000D0FC(v26, qword_100981DB8);
    v28 = *(v26 - 8);
    (*(v28 + 16))(v12, v27, v26);
    (*(v28 + 56))(v12, 0, 1, v26);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v29 = objc_allocWithZone(sub_100745C84());
    v30 = sub_100745C74();
    v2 = v25;
    v31 = *&v25[v13];
    *&v25[v13] = v30;

    v32 = *&v25[v13];
    if (v32)
    {
      sub_100016C60(0, &qword_100923500);
      v33 = v32;
      v2 = v25;
      v34 = sub_100753DF4();
      [v33 setTextColor:v34];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 preferredContentSizeCategory];
    v37 = sub_100753954();

    v38 = *&v2[v13];
    if (v37)
    {
      if (v38)
      {
        [v38 setNumberOfLines:0];
        v39 = *&v2[v13];
        if (v39)
        {
          v40 = [v39 layer];
          [v40 setCompositingFilter:0];

          if (*&v2[v13])
          {
            v41 = &OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView;
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else if (v38)
    {
      [v38 setNumberOfLines:2];
      v42 = *&v2[v13];
      if (v42)
      {
        v43 = [v42 layer];
        v41 = &OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView;
        v44 = [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] traitCollection];
        [v44 userInterfaceStyle];

        sub_100753094();
        v45 = sub_100753064();

        [v43 setCompositingFilter:v45];

        if (*&v2[v13])
        {
LABEL_30:
          [*&v2[*v41] addSubview:?];
          v24 = *&v2[v13];
          if (!v24)
          {

LABEL_35:
            [v2 setNeedsLayout];
            return;
          }

LABEL_31:
          v46 = v24;
          if (a2)
          {
            v47 = sub_100753064();
          }

          else
          {
            v47 = 0;
          }

          [v46 setText:v47];

          goto LABEL_35;
        }
      }
    }

    __break(1u);
    return;
  }

LABEL_24:
}

id sub_10018D040()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView];
  if (v1)
  {
    v2 = qword_100920460;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    [v3 setBackgroundColor:qword_10097E0F0];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView] addSubview:v3];
    v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
    v5 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer];
    *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer] = v4;

    result = *&v0[v5];
    if (!result || ([result setDelegate:v0], (result = *&v0[v5]) == 0) || (result = objc_msgSend(result, "addTarget:action:", v0, "handleTapWithGestureRecognizer:"), !*&v0[v5]))
    {
      __break(1u);
      return result;
    }

    [v3 addGestureRecognizer:?];
    v8 = [v0 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_100753954();

    if (v10)
    {
      v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView];
      if (v11)
      {
        v12 = v11;
        [v12 setHidden:0];
      }
    }
  }

  return [v0 setNeedsLayout];
}

id sub_10018D208()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_100747064();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v14 = sub_100753954();

    if (v14)
    {
      if (qword_100920450 != -1)
      {
        swift_once();
      }

      v15 = sub_10000D0FC(v5, qword_10097E0C0);
      (*(v6 + 16))(v9, v15, v5);
      v16 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v16], v9, v5);
      swift_endAccess();
      v17 = 16.0;
    }

    else
    {
      if (qword_100920448 != -1)
      {
        swift_once();
      }

      v18 = sub_10000D0FC(v5, qword_10097E0A8);
      (*(v6 + 16))(v9, v18, v5);
      v19 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v11[v19], v9, v5);
      swift_endAccess();
      v17 = 4.0;
    }

    v20 = v11;
    [v20 setNeedsLayout];
    (*(v6 + 8))(v9, v5);
    [v20 setLayoutMargins:{v17, 0.0, v17, 0.0}];

    v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel];
    v22 = qword_100920F70;
    v23 = v20;
    v24 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v25 = sub_100750534();
    v26 = sub_10000D0FC(v25, qword_100980BA0);
    v27 = *(v25 - 8);
    v28 = *(v27 + 16);
    v28(v4, v26, v25);
    v29 = *(v27 + 56);
    v29(v4, 0, 1, v25);
    sub_100745BA4();

    v30 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    if (qword_100920F78 != -1)
    {
      swift_once();
    }

    v31 = sub_10000D0FC(v25, qword_100980BB8);
    v28(v4, v31, v25);
    v29(v4, 0, 1, v25);
    sub_100745BA4();

    v32 = qword_100920460;
    v33 = v23;
    if (v32 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_10097E0F0];

    v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView];
    if (v34)
    {
      v35 = v34;
      [v35 addSubview:v33];
    }
  }

  return [v1 setNeedsLayout];
}

void sub_10018D744(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10018F7A0(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_10018D8D0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10018D924;
}

void sub_10018D924(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_10018DA3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventCardLayout(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10018DF10(v10);
  AppEventCardLayout.placeChildren(relativeTo:in:)(v1, v6, v12, v14, v16, v18);
  (*(v4 + 8))(v6, v3);
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    v21 = v19;
    [v20 frame];
    if (CGRectGetHeight(v49) > 0.0)
    {
      [v20 frame];
      Height = CGRectGetHeight(v50);
      [v20 frame];
      v23 = CGRectGetHeight(v51);
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel] frame];
      v24 = Height - (v23 - CGRectGetMinY(v52));
      v25 = (v24 + -50.0) / Height;
      v26 = (v24 + 30.0) / Height;
      v27 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25;
      v28 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
      v29 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v31 = v30;

      v32 = *&v21[v27];
      v33 = [*&v21[v28] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v34 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v31, v32}];

      v35 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25;
      v36 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
      v37 = [*&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v39 = v38;

      v40 = *&v21[v35];
      v41 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v39, v40}];

      sub_100169DC8(v26);
      v42 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v21[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v26;
      v43 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v45 = v44;

      v46 = *&v21[v42];
      v47 = [*&v21[v36] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v45, v46}];
    }

    sub_10001BB14(v10);
  }

  else
  {
    sub_10001BB14(v10);
  }
}

id sub_10018DF10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920458 != -1)
  {
    v59 = v4;
    swift_once();
    v4 = v59;
  }

  v7 = sub_10000D0FC(v4, qword_10097E0D8);
  v76 = v6;
  sub_10010C610(v7, v6);
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView);
  v103 = sub_100743034();
  v104 = &protocol witness table for UIView;
  v82 = v8;
  *&v102 = v8;
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView);
  v100 = sub_100746ED4();
  v101 = &protocol witness table for UIView;
  v98 = &protocol witness table for UIView;
  *&v99 = v9;
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView);
  v97 = v100;
  v80 = v10;
  v81 = v9;
  *&v96 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  v12 = sub_100016C60(0, &qword_100922300);
  v94 = v12;
  v95 = &protocol witness table for UIView;
  v79 = v11;
  *&v93 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView);
  v91 = sub_1007433C4();
  v92 = &protocol witness table for UIView;
  v78 = v13;
  *&v90 = v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = type metadata accessor for VideoView();
    v71 = &protocol witness table for UIView;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v77 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView);
  if (v77)
  {
    v70 = type metadata accessor for MediaOverlayGradientBlurView();
    v69 = &protocol witness table for UIView;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v75 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton);
  if (v75)
  {
    v68 = type metadata accessor for NotifyMeButton();
    v67 = &protocol witness table for UIView;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel);
  v16 = sub_100745C84();
  v17 = &protocol witness table for UILabel;
  v88 = v16;
  v89 = &protocol witness table for UILabel;
  v73 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel);
  v74 = v15;
  v86 = &protocol witness table for UILabel;
  *&v87 = v15;
  v85 = v16;
  *&v84 = v73;
  v18 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel);
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView);
  if (v19)
  {
    v65 = type metadata accessor for SeparatorView();
    v66 = &protocol witness table for UIView;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  v83 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView);
  v20 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (v20)
  {
    v63 = type metadata accessor for SmallLockupView();
    v64 = &protocol witness table for UIView;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  if (v83)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v83)
  {
    v22 = &protocol witness table for UIView;
  }

  else
  {
    v22 = 0;
  }

  v61 = v22;
  v62 = v21;
  if (!v18)
  {
    v16 = 0;
    v17 = 0;
  }

  sub_10010CC50(v76, a1);
  v23 = type metadata accessor for AppEventCardLayout(0);
  sub_100012160(&v102, a1 + v23[5]);
  sub_100012160(&v99, a1 + v23[6]);
  sub_100012160(&v96, a1 + v23[7]);
  sub_100012160(&v93, a1 + v23[8]);
  sub_100012160(&v90, a1 + v23[9]);
  v24 = (a1 + v23[10]);
  *v24 = Strong;
  v24[1] = 0;
  v25 = v71;
  v26 = v72;
  v24[2] = 0;
  v24[3] = v26;
  v24[4] = v25;
  v27 = (a1 + v23[11]);
  v28 = v77;
  *v27 = v77;
  v27[1] = 0;
  v29 = v69;
  v30 = v70;
  v27[2] = 0;
  v27[3] = v30;
  v27[4] = v29;
  v31 = (a1 + v23[12]);
  v32 = v75;
  *v31 = v75;
  v31[1] = 0;
  v33 = v67;
  v34 = v68;
  v31[2] = 0;
  v31[3] = v34;
  v31[4] = v33;
  sub_100012160(&v87, a1 + v23[13]);
  sub_100012160(&v84, a1 + v23[14]);
  v35 = (a1 + v23[15]);
  *v35 = v18;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = v16;
  v35[4] = v17;
  v36 = (a1 + v23[16]);
  *v36 = v19;
  v36[1] = 0;
  v38 = v65;
  v37 = v66;
  v36[2] = 0;
  v36[3] = v38;
  v36[4] = v37;
  v39 = (a1 + v23[17]);
  *v39 = v83;
  v39[1] = 0;
  v40 = v61;
  v41 = v62;
  v39[2] = 0;
  v39[3] = v41;
  v39[4] = v40;
  v42 = (a1 + v23[18]);
  *v42 = v20;
  v42[1] = 0;
  v44 = v63;
  v43 = v64;
  v42[2] = 0;
  v42[3] = v44;
  v42[4] = v43;
  v45 = v20;
  v46 = v82;
  v47 = v81;
  v48 = v80;
  v49 = v79;
  v50 = v78;
  v51 = v28;
  v52 = v32;
  v53 = v74;
  v54 = v73;
  v55 = v18;
  v56 = v19;
  v57 = v83;

  return v57;
}

void sub_10018E5DC()
{
  v1 = v0;
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton;
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton])
  {
    v7 = [objc_allocWithZone(type metadata accessor for NotifyMeButton()) init];
    memset(v13, 0, sizeof(v13));
    memset(v12, 0, sizeof(v12));
    sub_100752A74();
    sub_1000277BC(v12);
    sub_1000277BC(v13);
    sub_100753C74();
    (*(v3 + 8))(v5, v2);
    [v7 addTarget:v1 action:"notifyMeButtonTapped:" forControlEvents:64];
    v8 = v7[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style];
    v7[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_style] = 0;
    if (v8)
    {
      v9 = sub_100754754();

      if ((v9 & 1) == 0)
      {
        sub_1006E0AB0();
      }
    }

    else
    {
    }

    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] addSubview:v7];
    v10 = *&v1[v6];
    *&v1[v6] = v7;
    v11 = v7;

    [v1 setNeedsLayout];
  }
}

void sub_10018E820(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

void *(*sub_10018E8B4(void *a1))(void *result, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter;
  a1[2] = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter;
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_10018E90C;
}

void *sub_10018E90C(void *result, char a2)
{
  if (a2)
  {

    sub_10018E820(v2);
  }

  else
  {
    v4 = result[1];
    v3 = result[2];
    v5 = *(v4 + v3);
    *(v4 + v3) = *result;
    if (!v5)
    {
      return result;
    }

    v6 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v5 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(v5 + v6) = 0;
  }
}

id sub_10018E9B4(char a1, char a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
  if (v4)
  {
    v4[OBJC_IVAR____TtC22SubscribePageExtension14NotifyMeButton_isActive] = a1 & 1;
    v6 = v4;
    sub_1006E1B80();
    sub_1006E1C84(a2 & 1);
  }

  return [v3 setNeedsLayout];
}

void sub_10018EA34(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    sub_10018E5DC();
  }

  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton];
  if (v5)
  {
    v6 = v5;
    v17 = v6;
    if (a2)
    {
      if ((a1 & 1) == 0)
      {
        if ([v6 isHidden])
        {
          [v17 setAlpha:0.0];
          [v17 setHidden:0];
        }
      }

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v17;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v22 = sub_10018F6DC;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1000CF7B0;
      v21 = &unk_10086A680;
      v10 = _Block_copy(&aBlock);
      v11 = v17;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v9;
      *(v13 + 32) = v12;
      v22 = sub_10018F790;
      v23 = v13;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100144DD8;
      v21 = &unk_10086A6F8;
      v14 = _Block_copy(&aBlock);
      v15 = v11;

      [v7 animateWithDuration:v10 animations:v14 completion:0.3];

      _Block_release(v14);
      _Block_release(v10);
    }

    else
    {
      if (a1)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = 1.0;
      }

      [v6 setHidden:a1 & 1];
      [v17 setAlpha:v16];
      [v2 setNeedsLayout];
    }
  }
}

void sub_10018ECEC(int a1, id a2, char a3)
{
  [a2 setHidden:a3 & 1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_10018ED5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v3)
    {
      [v3 invalidate];
      v4 = *(v1 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v1 + v2) = 0;
  }
}

id sub_10018EEAC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v1 setNeedsLayout];
  }

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
  v5 = [v4 text];
  if (v5)
  {

    [v4 setText:0];
    [v1 setNeedsLayout];
  }

  sub_10018CABC(0, 0);
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView];
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  sub_100743384(v16, v7);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView];
  if (v8)
  {
    [v8 setHidden:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView];
  if (v9)
  {
    [v9 setHidden:1];
  }

  v10 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
  *v10 = 0;
  *(v10 + 1) = 0;
  sub_1000164A8(v11);
  sub_10018F560();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:v6];
    [v1 setNeedsLayout];
  }

  sub_10018E820(0);
  v15[0] = 0x3FF0000000000000;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 0x3FF0000000000000;
  v15[4] = 0;
  v15[5] = 0;
  [v1 setTransform:v15];
  [v1 setAlpha:1.0];
  return [v1 setHidden:0];
}

uint64_t (*sub_10018F130(uint64_t **a1))()
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
  v2[4] = sub_10018D8D0(v2);
  return sub_1000181A8;
}

uint64_t (*sub_10018F1B4(void *a1))()
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
  v2[4] = sub_10018E8B4(v2);
  return sub_10001BB78;
}

uint64_t sub_10018F230()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10018F7A0(&qword_10092B000, v1, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_10018F2A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10018F7A0(&qword_10092B000, v5, type metadata accessor for AppEventCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_10018F330(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_10018F7A0(&qword_10092B000, v3, type metadata accessor for AppEventCardView);
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10018F3EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300);
  v5 = v4;
  v6 = sub_100753FC4();

  return v6 & 1;
}

void sub_10018F560()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10018F7A0(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v2 = [v8 superview];
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
      sub_100016C60(0, &qword_100922300);
      v5 = v4;
      v6 = sub_100753FC4();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 removeFromSuperview];
    }
  }
}

uint64_t sub_10018F6A4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10018F6DC()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_10018F700(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018F718()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10018F750()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10018F7A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_10018F7E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer);
  if (v3)
  {
    [v3 removeTarget:v0 action:0];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView);
  if (result)
  {

    return [result setHidden:1];
  }

  return result;
}

char *sub_10018F890()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  v91 = v2;
  v92 = v3;
  __chkstk_darwin(v2);
  v90 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v5 - 8);
  *&v94 = &v82 - v6;
  v93 = sub_100752AC4();
  v89 = *(v93 - 1);
  __chkstk_darwin(v93);
  v85 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074AB44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer] = 0;
  v15 = &v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
  *v15 = 0;
  v15[1] = 0;
  v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView] = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100746ED4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView] = v16;
  v17 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] = v17;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100921578 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  v19 = sub_10000D0FC(v18, qword_100981DA0);
  v20 = *(v18 - 8);
  v87 = *(v20 + 16);
  v87(v14, v19, v18);
  v86 = *(v20 + 56);
  (v86)(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v9 + 104);
  v84 = v9 + 104;
  v22(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v23 = sub_100745C84();
  v24 = objc_allocWithZone(v23);
  v83 = v8;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel] = sub_100745C74();
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v18, qword_100981D88);
  v87(v14, v25, v18);
  (v86)(v14, 0, 1, v18);
  v22(v11, v21, v83);
  v26 = objc_allocWithZone(v23);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel] = sub_100745C74();
  v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView] = v27;
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_contentView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v31 = v28;
  v32 = v30;
  v33 = v85;
  sub_100752A74();
  sub_1000277BC(&v96);
  sub_1000277BC(&v98);
  sub_100753C74();

  v34 = *(v89 + 8);
  v35 = v93;
  v34(v33, v93);
  v89 = v29;
  v36 = *&v28[v29];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v37 = v36;
  sub_100752A74();
  sub_1000277BC(&v96);
  sub_1000277BC(&v98);
  sub_100753C74();

  v34(v33, v35);
  ObjCClassFromMetadata = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView;
  v38 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v39 = v38;
  sub_100752A74();
  sub_1000277BC(&v96);
  sub_1000277BC(&v98);
  sub_100753C74();

  v34(v33, v35);
  v87 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel;
  v40 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_titleLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v41 = v40;
  sub_100752A74();
  sub_1000277BC(&v96);
  sub_1000277BC(&v98);
  sub_100753C74();

  v34(v33, v35);
  v86 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel;
  v42 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_kindLabel];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v43 = v42;
  sub_100752A74();
  sub_1000277BC(&v96);
  sub_1000277BC(&v98);
  sub_100753C74();

  v34(v33, v35);
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v31 setClipsToBounds:0];
  v44 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView;
  v45 = qword_1009204C8;
  v46 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_shadowView];
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_10074F0C4();
  v48 = sub_10000D0FC(v47, qword_10097E218);
  v49 = *(v47 - 8);
  v50 = v94;
  (*(v49 + 16))(v94, v48, v47);
  (*(v49 + 56))(v50, 0, 1, v47);
  sub_100743014();

  v51 = *&v31[v44];
  sub_100742FF4();

  v52 = *&v31[v44];
  v53 = v91;
  v54 = v92;
  v55 = *(v92 + 104);
  v56 = v90;
  LODWORD(v94) = enum case for CornerStyle.continuous(_:);
  v93 = v55;
  v55(v90);
  v57 = v52;
  sub_100743024();

  v92 = *(v54 + 8);
  (v92)(v56, v53);
  v58 = *&v31[v44];
  v59 = [v31 traitCollection];
  v60 = [v59 userInterfaceStyle];

  [v58 setHidden:v60 == 2];
  [v31 addSubview:*&v31[v44]];
  v61 = v89;
  v62 = qword_100920460;
  v63 = *&v28[v89];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_10097E0F0;
  [v63 setBackgroundColor:qword_10097E0F0];

  v65 = *&v28[v61];
  (v93)(v56, v94, v53);
  v66 = v65;
  sub_100746E34();

  (v92)(v56, v53);
  [v31 addSubview:*&v28[v61]];
  v67 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView;
  [*&v28[v61] addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView]];
  [*&v31[v67] addSubview:*(ObjCClassFromMetadata + v31)];
  v68 = *(v87 + v31);
  sub_100016C60(0, &qword_100923500);
  v69 = v68;
  v70 = sub_100753DD4();
  [v69 setTextColor:v70];

  v71 = *&v86[v31];
  v72 = sub_100753DF4();
  [v71 setTextColor:v72];

  v73 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView;
  v74 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_borderView];
  v75 = v64;
  sub_100746E64();

  v76 = *&v31[v73];
  sub_100746E74();

  [*&v31[v73] setUserInteractionEnabled:0];
  [*&v31[v73] setHidden:1];
  v77 = *&v31[v73];
  (v93)(v56, v94, v53);
  v78 = v77;
  sub_100746E34();

  (v92)(v56, v53);
  [v31 addSubview:*&v31[v73]];
  sub_10018BBC4();
  sub_10018C450();
  sub_10000C518(&unk_1009249D0);
  v79 = swift_allocObject();
  v94 = xmmword_1007A5A00;
  *(v79 + 16) = xmmword_1007A5A00;
  *(v79 + 32) = sub_1007519E4();
  *(v79 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  v80 = swift_allocObject();
  *(v80 + 16) = v94;
  *(v80 + 32) = sub_100751624();
  *(v80 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v31;
}

void sub_100190674()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter) = 0;
  sub_100754644();
  __break(1u);
}

BOOL sub_100190760(void *a1)
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
      return *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_100016C60(0, &qword_100922300);
    v8 = v7;
    v9 = v2;
    v10 = sub_100753FC4();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100190980(Swift::Float a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10074F0C4();
  sub_100039C50(v5, a3);
  sub_10000D0FC(v5, a3);
  sub_10000D198();
  sub_100753F24(0.0, 0.0, 0.0, a1);
  return sub_10074F094();
}

uint64_t sub_100190A14()
{
  v0 = sub_10074F0C4();
  sub_100039C50(v0, qword_10097E1A0);
  sub_10000D0FC(v0, qword_10097E1A0);
  sub_10000D198();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6.super.isa = v3;
  v7.super.isa = v5;
  sub_100753EC4(v6, v7);
  return sub_10074F094();
}

uint64_t sub_100190CF4(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10074F0C4();
  sub_100039C50(v5, a3);
  sub_10000D0FC(v5, a3);
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  return sub_10074F094();
}

void sub_100190DB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_1006D0264();
    v7 = OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_1006D0130();
    sub_1005285A0();
    v5 = &OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_1006D0150(v8);
}

double sub_100190E88(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100191024();
  v11 = v10;
  v12 = sub_1001910D0(v9, v10, a7, a1);
  sub_100079128(v9, v11);
  return v12;
}

void sub_100190EF8()
{
  v0 = sub_100191024();
  v2 = v1;
  sub_100190DB8(v0, v1);

  sub_100079128(v0, v2);
}

uint64_t sub_100190FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100191024()
{
  sub_10000C518(&qword_100924B88);
  sub_100752764();
  sub_100752D34();
  sub_100742DE4();

  result = v1;
  if ((~v1 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

double sub_1001910D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100741264();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    sub_100744414();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100144D70(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_1009206C8 != -1)
      {
        swift_once();
      }

      v23 = sub_10000C518(&unk_10092B050);
      v15 = sub_10000D0FC(v23, qword_10092F7C8);
      __chkstk_darwin(v15);
      *(&v22 - 2) = v14;
      swift_beginAccess();
      sub_1007512B4();
      swift_endAccess();
      v16 = v24;
      v17 = [a3 traitCollection];
      v18 = [v17 preferredContentSizeCategory];

      [v16 setMinimumContentSizeCategory:v18];
      v19 = [a3 traitCollection];
      v20 = [v19 preferredContentSizeCategory];

      [v16 setMaximumContentSizeCategory:v20];
      [v16 setMetadata:a2];
      [v16 sizeThatFits:{a4, 1.79769313e308}];
      v24 = v16;
      swift_beginAccess();
      sub_1007512D4();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    sub_1007443F4();
    sub_1007443E4();
    swift_getObjectType();
    sub_1001FBC40();
  }

  return a4;
}

id sub_1001914C4()
{
  v1 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016B4C(v0 + v11, v3, &unk_100923C00);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000C8CC(v3, &unk_100923C00);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_100741704().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

id sub_1001916F0()
{
  v1 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1007417F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016B4C(v0 + v11, v3, &unk_100923C00);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000C8CC(v3, &unk_100923C00);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_100741704().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }

    ObjectType = swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = (*(v15 + 312))(ObjectType, v15);
    }

    else
    {
      v16 = [v13 snapshotViewAfterScreenUpdates:0];
    }

    v17 = v16;

    return v17;
  }

  return result;
}

void sub_100191990(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = 0uLL;
  width = 0.0;
  if (!Strong)
  {
    v20 = 1;
    height = 0.0;
LABEL_15:
    *a2 = v13;
    *(a2 + 16) = width;
    *(a2 + 24) = height;
    *(a2 + 32) = v20;
    return;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 collectionView];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_100016B4C(v2 + v19, v7, &unk_100923C00);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10000C8CC(v7, &unk_100923C00);
LABEL_14:
    v20 = 1;
    height = 0.0;
    v13 = 0uLL;
    goto LABEL_15;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = sub_100741704().super.isa;
  v23 = [v18 cellForItemAtIndexPath:isa];

  (*(v9 + 8))(v11, v8);
  if (!v23)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v24 superview];
  if (!v25)
  {

LABEL_18:
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v15 collectionView];
  if (!v27)
  {

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    v39 = v27;
    [v39 transform];
    tx = v68.tx;
    ty = v68.ty;
    v66 = *&v68.c;
    origin = *&v68.a;
    v68.a = 1.0;
    v68.b = 0.0;
    v68.c = 0.0;
    v68.d = 1.0;
    v68.tx = 0.0;
    v68.ty = 0.0;
    [v39 setTransform:&v68];
    [v24 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v26 convertRect:0 toView:{v43, v45, v47, v49}];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    *&v68.a = origin;
    *&v68.c = v66;
    v68.tx = tx;
    v68.ty = ty;
    [v39 setTransform:&v68];
    [v39 safeAreaInsets];
    v58.x = v51 + 0.0;
    origin = v58;
    v60 = v53 - v59;
    v61 = [v39 superview];

    if (v61)
    {
      [v61 safeAreaInsets];
      v63 = v62;
    }

    else
    {

      v63 = 0.0;
    }

    v20 = 0;
    width = v55 + 0.0;
    height = v57 + 0.0;
    *&v64 = origin.x;
    *(&v64 + 1) = v60 + v63;
    v13 = v64;
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v15 view];
  if (v29)
  {
    v30 = v29;
    [v24 bounds];
    [v30 convertRect:v24 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v24 transform];
    v66 = *&v68.c;
    origin = *&v68.a;
    v65 = *&v68.tx;

    *&v68.a = origin;
    *&v68.c = v66;
    *&v68.tx = v65;
    v69.origin.x = v32;
    v69.origin.y = v34;
    v69.size.width = v36;
    v69.size.height = v38;
    v70 = CGRectApplyAffineTransform(v69, &v68);
    v66 = *&v70.origin.y;
    origin = v70.origin;
    width = v70.size.width;
    height = v70.size.height;

    *&v13 = origin.x;
    v20 = 0;
    *(&v13 + 1) = v66;
    goto LABEL_15;
  }

  __break(1u);
}

id sub_100191EB8(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000C518(&qword_10092B0C8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - v10;
  v99 = sub_10074F704();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v13 - 8);
  v94 = &v87 - v14;
  v96 = sub_100753CD4();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_1007469A4();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001946C4(a1);
  if (!v27)
  {
    return 0;
  }

  v100 = a1;
  v101 = v11;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentedViewController + 8) = v28;
  v104 = v27;
  swift_unknownObjectWeakAssign();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v103 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = IsReduceMotionEnabled;
  swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (!v30 || !a3)
  {
    goto LABEL_6;
  }

  v31 = v30;
  v92 = v4;
  v89 = a2;
  v90 = v9;
  v91 = v8;
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 16);
  v34 = a3;
  v35 = v33(ObjectType, v31);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  swift_beginAccess();
  sub_100016B4C(v35 + v36, v24, &unk_100923200);

  v38 = v105;
  v37 = v106;
  if ((*(v105 + 48))(v24, 1, v106) == 1)
  {

    sub_10000C8CC(v24, &unk_100923200);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v4 = v92;
LABEL_6:
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = sub_1007417F4();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_10003E1A0(v18, v4 + v40);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v100;
    v43 = v103;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(Strong + qword_10097D360);
      v44[qword_10097D360] = 0;
      sub_1000B6F90(v45);
    }

    goto LABEL_25;
  }

  v47 = v102;
  (*(v38 + 32))(v102, v24, v37);
  v48 = v92;
  *(v92 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = v31;
  swift_unknownObjectWeakAssign();
  v43 = v103;
  v8 = v91;
  v9 = v90;
  v49 = v38;
  a2 = v89;
  if (*(v48 + v103))
  {
    (*(v49 + 8))(v47, v37);

    v42 = v100;
    v4 = v92;
LABEL_25:
    v81 = *(v4 + v43);
    v82 = objc_allocWithZone(type metadata accessor for ArticlePagePresentationController());
    v83 = a2;
    sub_100438168(v42, a2, v81);
    v46 = v84;
    *(v84 + OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_transitioningViewProvider + 8) = &off_10086A788;
    swift_unknownObjectWeakAssign();
    v85 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000C518(&qword_10092B0E0);
    sub_100194E10();

    sub_100752574();
    v86 = v101;
    sub_100752594();

    sub_10000C620(v107);
    (*(v9 + 8))(v86, v8);
    return v46;
  }

  v88 = v34;
  v50 = [v34 collectionView];
  v42 = v100;
  if (v50 && (v51 = v50, v52 = [v50 indexPathsForSelectedItems], v51, v52))
  {
    v53 = sub_1007417F4();
    v54 = sub_1007532A4();

    v4 = v92;
    if (*(v54 + 16))
    {
      v55 = *(v53 - 8);
      (*(v55 + 16))(v21, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v53);

      (*(v55 + 56))(v21, 0, 1, v53);
    }

    else
    {

      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
    }
  }

  else
  {
    v56 = sub_1007417F4();
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v4 = v92;
  }

  v57 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_10003E1A0(v21, v4 + v57);
  swift_endAccess();
  sub_10074FBB4();
  sub_100194E74();
  v58 = v102;
  sub_1007468B4();
  v59 = v107[0];
  if (!v107[0])
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v60 = sub_1001916F0();
  if (!v60)
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v61 = v60;
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62)
  {

    (*(v105 + 8))(v102, v106);
    goto LABEL_25;
  }

  v63 = v62;
  result = [v88 view];
  if (result)
  {
    v65 = result;
    v92 = swift_getObjectType();
    v66 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
    v67 = sub_100753CB4();
    v68 = *(v67 - 8);
    v69 = v94;
    (*(v68 + 104))(v94, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = v93;
    sub_100753CC4();
    sub_10000C8CC(v69, &unk_10092B0D0);
    sub_100753C94();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    (*(v95 + 8))(v70, v96);
    v108[0] = v72;
    v108[1] = v74;
    v108[2] = v76;
    v108[3] = v78;
    v109 = 0;
    (*(v63 + 224))(v108, v92, v63);
    swift_getKeyPath();
    v79 = v97;
    v80 = v102;
    sub_100746914();

    sub_1000BC4C0(v59, v61, v63, v79);

    (*(v98 + 8))(v79, v99);
    (*(v105 + 8))(v80, v106);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v43 = v103;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_100192BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_10097D360);
      v5[qword_10097D360] = 0;
      sub_1000B6F90(v6);
    }
  }

  v7 = a3 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_100719B34(1, ObjectType, v10);
  }

  v12 = sub_1001914C4();
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  v14 = sub_100192D68();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = swift_getObjectType();
    (*(v17 + 248))(1, v18, v17);
  }

  v19 = sub_100192DEC();
  if (v19)
  {
    v21 = v20;
    v23 = v19;
    v22 = swift_getObjectType();
    (*(v21 + 248))(1, v22, v21);
  }
}

char *sub_100192D68()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[qword_100926550];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_100192DEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_100926550);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_alternateCell);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100192E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_10097D360);
    v5[qword_10097D360] = 0;
    sub_1000B6F90(v6);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 layer];

    v11 = *&CATransform3DIdentity.m33;
    v24[4] = *&CATransform3DIdentity.m31;
    v24[5] = v11;
    v12 = *&CATransform3DIdentity.m43;
    v24[6] = *&CATransform3DIdentity.m41;
    v24[7] = v12;
    v13 = *&CATransform3DIdentity.m13;
    v24[0] = *&CATransform3DIdentity.m11;
    v24[1] = v13;
    v14 = *&CATransform3DIdentity.m23;
    v24[2] = *&CATransform3DIdentity.m21;
    v24[3] = v14;
    [v10 setTransform:v24];
  }

  type metadata accessor for ArticleContainerViewController();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    *(v15 + OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_allowTraitCollectionOverrides) = 1;
  }

  v16 = sub_1001914C4();
  if (v16)
  {
    v17 = v16;
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();

    if (v18)
    {
      v19 = a3 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController;
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v22 + 32))(0, ObjectType, v22);
      }
    }
  }
}

void sub_10019301C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      v15 = Strong;
      ObjectType = swift_getObjectType();
      sub_100719BD8(0, ObjectType, v14);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v12 + 8);
      v20 = swift_getObjectType();
      sub_100719C50(v20, v19);
    }

    v21 = sub_100192D68();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 248))(0, v25, v24);
    }

    v26 = sub_100192DEC();
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = swift_getObjectType();
      (*(v29 + 248))(0, v30, v29);
    }

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v43 = v31;
      v32 = swift_unknownObjectWeakLoadStrong();
      sub_1000B6968(v32, *(v12 + 8));

      v33 = v43;
    }
  }

  else
  {
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong collectionView];

      if (v35)
      {
        v36 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
        swift_beginAccess();
        sub_100016B4C(a3 + v36, v7, &unk_100923C00);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          sub_10000C8CC(v7, &unk_100923C00);
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          isa = sub_100741704().super.isa;
          v38 = [v35 cellForItemAtIndexPath:isa];

          (*(v9 + 8))(v11, v8);
          if (v38)
          {
            [v38 setHidden:0];
          }
        }
      }
    }

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *(v12 + 8);
      v42 = swift_getObjectType();
      sub_100719B34(0, v42, v41);
    }
  }
}

char *sub_100193444(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentingViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *(v3 + 1);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v7[qword_10097EE48] = 0;
  }

  sub_100191990(0, v41);
  v8 = v1[OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
  v9 = type metadata accessor for TodayTransitionDismissAnimation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_destinationRect];
  v11[32] = v42;
  v12 = v41[1];
  *v11 = v41[0];
  *(v11 + 1) = v12;
  v10[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition] = v8;
  v40.receiver = v10;
  v40.super_class = v9;
  v13 = objc_msgSendSuper2(&v40, "init");
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v6;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v16 = *&v13[v15];
  v17 = v1;
  v18 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_100255160(0, *(v16 + 2) + 1, 1, v16);
    *&v13[v15] = v16;
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_100255160((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v22 = &v16[24 * v21];
  *(v22 + 4) = sub_100194624;
  *(v22 + 5) = v14;
  v22[48] = 0;
  *&v13[v15] = v16;
  swift_endAccess();

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  swift_beginAccess();
  v24 = *&v13[v15];
  v25 = v17;
  v26 = a1;

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v24;
  if ((v27 & 1) == 0)
  {
    v24 = sub_100255160(0, *(v24 + 2) + 1, 1, v24);
    *&v13[v15] = v24;
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_100255160((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = &v24[24 * v29];
  *(v30 + 4) = sub_100194670;
  *(v30 + 5) = v23;
  v30[48] = 1;
  *&v13[v15] = v24;
  swift_endAccess();

  v31 = swift_allocObject();
  v31[2] = v18;
  v31[3] = v6;
  v31[4] = v25;
  swift_beginAccess();
  v32 = *&v13[v15];
  v33 = v25;
  v34 = v18;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v32;
  if ((v35 & 1) == 0)
  {
    v32 = sub_100255160(0, *(v32 + 2) + 1, 1, v32);
    *&v13[v15] = v32;
  }

  v37 = *(v32 + 2);
  v36 = *(v32 + 3);
  if (v37 >= v36 >> 1)
  {
    v32 = sub_100255160((v36 > 1), v37 + 1, 1, v32);
  }

  *(v32 + 2) = v37 + 1;
  v38 = &v32[24 * v37];
  *(v38 + 4) = sub_1001946B8;
  *(v38 + 5) = v31;
  v38[48] = 2;
  *&v13[v15] = v32;
  swift_endAccess();

  return v13;
}

void sub_100193818()
{
  v0 = sub_100192D68();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 248))(1, ObjectType, v3);
  }

  v5 = sub_100192DEC();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_getObjectType();
    (*(v8 + 248))(1, v9, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    *&v11[qword_100926548] = 0;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = v12, v14 = [v12 traitCollection], v13, v15 = objc_msgSend(v14, "horizontalSizeClass"), v14, v15 != 1))
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];

      if (v18)
      {
        v31 = v18;
        v19 = [v18 viewControllers];
        sub_100032B70();
        v20 = sub_1007532A4();

        if (v20 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
        {
          v22 = 0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v26 = sub_100754574();
            }

            else
            {
              if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v26 = *(v20 + 8 * v22 + 32);
            }

            v25 = v26;
            v27 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (v28)
            {
              v29 = [v28 collectionView];
              if (!v29)
              {
                __break(1u);
                return;
              }

              v23 = v29;
              v24 = [v29 collectionViewLayout];

              [v24 invalidateLayout];
              v25 = v24;
            }

            ++v22;
            if (v27 == i)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

LABEL_28:

        v30 = [v31 navigationBar];
        [v30 setHidden:1];
      }
    }
  }
}

void sub_100193B5C(int a1, int a2, id a3, uint64_t a4)
{
  v5 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ArticlePagePresentationController();
    v7 = swift_dynamicCastClass();
    v8 = v7;
    if (v7)
    {
      v9 = v7 + OBJC_IVAR____TtC22SubscribePageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v9 + 24))
      {
        sub_10000C824(v9, v15);
        v10 = v16;
        v11 = v17;
        sub_10000C888(v15, v16);
        (*(v11 + 24))(v10, v11);
        sub_10000C620(v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(a4 + OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(Strong + qword_10097D360);
      v13[qword_10097D360] = 1;
      sub_1000B6F90(v14);
    }
  }
}

void sub_100193CA0(uint64_t a1, char a2, void *a3, id a4, uint64_t a5)
{
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    sub_100719B34(0, ObjectType, a4);
    v14 = sub_100192D68();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(v17 + 248))(0, v18, v17);
    }

    v19 = sub_100192DEC();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_getObjectType();
      (*(v22 + 248))(0, v23, v22);
    }

    v24 = sub_1001914C4();
    if (v24)
    {
      v25 = v24;
      v82 = v10;
      swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        v27 = v25;
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v86 = OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_presentedViewController;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        v36 = *&Strong[qword_100926550];
        if (v36)
        {
          v80 = v9;
          v85 = v28;
          v37 = v36 + OBJC_IVAR____TtC22SubscribePageExtension27ArticleHeaderViewController_cell;
          v38 = *v37;
          v79 = *(v37 + 8);
          v39 = v38;

          swift_getObjectType();
          v78 = swift_conformsToProtocol2();
          v81 = v39;
          if (v78)
          {
            v40 = v39 == 0;
          }

          else
          {
            v40 = 1;
          }

          v83 = ObjectType;
          v84 = v25;
          if (!v40)
          {
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v77 = v26;
              v42 = v41;
              v76 = v81;

              v43 = v85;
              if (v85)
              {
                swift_getObjectType();
                v44 = swift_conformsToProtocol2();
                if (v44)
                {
                  v45 = v43;
                  v44 = v43;
                }
              }

              else
              {
                v44 = 0;
              }

              v75 = v44 == 0;
              swift_unknownObjectRelease();
              sub_10074B184();
              sub_100752764();
              sub_100752D34();
              v74 = v87;
              v46 = v76;
              swift_getObjectType();
              v47 = sub_100748FB4();
              v48 = v46;
              v49 = v74;
              sub_10074B124();

              ObjectType = v83;
              v25 = v84;
              v26 = v77;
            }
          }

          v28 = v85;
          if (v85)
          {
            v50 = swift_getObjectType();
            v51 = a5;
            v52 = a3;
            v53 = *(v26 + 304);
            v54 = v85;
            v55 = v81;
            v56 = v50;
            v28 = v85;
            v53(v81, v79, 1, v56, v26);
            a3 = v52;
            a5 = v51;
            ObjectType = v83;
            v25 = v84;
          }

          else
          {
          }

          v9 = v80;
        }

        else
        {
        }
      }

      [v25 setHidden:0];
      v57 = [a3 collectionView];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 indexPathsForSelectedItems];
        if (v59)
        {
          v84 = v25;
          v60 = v59;
          v61 = sub_1007532A4();

          v62 = v61;
          v63 = *(v61 + 16);
          if (v63)
          {
            v85 = v28;
            v83 = ObjectType;
            v79 = a5;
            v80 = a3;
            v81 = a4;
            v65 = v82 + 16;
            v64 = *(v82 + 16);
            v66 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v82 = v62;
            v67 = v62 + v66;
            v68 = *(v65 + 56);
            do
            {
              v64(v12, v67, v9);
              isa = sub_100741704().super.isa;
              (*(v65 - 8))(v12, v9);
              [v58 deselectItemAtIndexPath:isa animated:0];

              v67 += v68;
              --v63;
            }

            while (v63);

            a4 = v81;
            ObjectType = v83;
            v25 = v84;
            v28 = v85;
          }

          else
          {

            v25 = v84;
          }
        }
      }

      sub_100719BD8(1, ObjectType, a4);
      (*(a4 + 4))(1, ObjectType, a4);
      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {
        goto LABEL_44;
      }

      if (v28)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          (*(a4 + 1))(ObjectType, a4);
          sub_10074B184();
          sub_100752764();
          sub_100752D34();
          v71 = v87;
          swift_getObjectType();
          v72 = v28;
          v28 = sub_100748FB4();
          v73 = v72;
          sub_10074B164();
        }

LABEL_44:

        return;
      }
    }
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + qword_10097D360);
      v30[qword_10097D360] = 0;
      sub_1000B6F90(v31);
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v32[qword_10097EE48] = 1;
    }

    v33 = swift_getObjectType();
    sub_100719BD8(0, v33, a4);
  }
}

uint64_t type metadata accessor for TodayArticleTransitioningDelegate()
{
  result = qword_10092B0A0;
  if (!qword_10092B0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100194540()
{
  sub_10003DEB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001945E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100194630()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100194678()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001946C4(void *a1)
{
  type metadata accessor for ArticleContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ArticleContainerViewController_articleViewController);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3 != 0)
    {
      v12 = v3;
      return v3;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_19:
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v13 = sub_100752E44();
    sub_10000D0FC(v13, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v15[3] = sub_100032B70();
    v15[0] = a1;
    v14 = a1;
    sub_100752444();
    sub_10000C8CC(v15, &unk_100923520);
    sub_100752CF4();

    return 0;
  }

  v6 = v5;
  v7 = a1;
  v8 = [v6 viewControllers];
  sub_100032B70();
  v9 = sub_1007532A4();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_100754574();
LABEL_13:
    v3 = v11;

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3)
    {
      return v3;
    }

    v7 = v3;
    goto LABEL_18;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_1001949CC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_100191990(1, v38);
    v4 = v1[OBJC_IVAR____TtC22SubscribePageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
    v5 = type metadata accessor for TodayTransitionPresentAnimation();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionPresentAnimation_originRect];
    v7[32] = v39;
    v8 = v38[1];
    *v7 = v38[0];
    *(v7 + 1) = v8;
    v6[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition] = v4;
    v37.receiver = v6;
    v37.super_class = v5;
    v9 = objc_msgSendSuper2(&v37, "init");
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
    swift_beginAccess();
    v12 = *&v9[v11];
    v13 = v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_100255160(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_100255160((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[24 * v16];
    *(v17 + 4) = sub_100194DB8;
    *(v17 + 5) = v10;
    v17[48] = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    swift_beginAccess();
    v19 = *&v9[v11];
    v20 = v13;
    v21 = a1;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v19;
    if ((v22 & 1) == 0)
    {
      v19 = sub_100255160(0, *(v19 + 2) + 1, 1, v19);
      *&v9[v11] = v19;
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_100255160((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[24 * v24];
    *(v25 + 4) = sub_100194DC0;
    *(v25 + 5) = v18;
    v25[48] = 1;
    *&v9[v11] = v19;
    swift_endAccess();

    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    swift_beginAccess();
    v27 = *&v9[v11];
    v28 = v20;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v27;
    if ((v29 & 1) == 0)
    {
      v27 = sub_100255160(0, *(v27 + 2) + 1, 1, v27);
      *&v9[v11] = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_100255160((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[24 * v31];
    *(v32 + 4) = sub_100194DC8;
    *(v32 + 5) = v26;
    v32[48] = 2;
    *&v9[v11] = v27;
    swift_endAccess();
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + qword_10097D360);
      v34[qword_10097D360] = 0;
      sub_1000B6F90(v35);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_100194D80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100194DD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100194E10()
{
  result = qword_10092B0E8;
  if (!qword_10092B0E8)
  {
    sub_10000C724(&qword_10092B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B0E8);
  }

  return result;
}

unint64_t sub_100194E74()
{
  result = qword_100926C60;
  if (!qword_100926C60)
  {
    sub_10074FBB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926C60);
  }

  return result;
}

double sub_100194ED8(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100194FE8(a2, v11, a7, a5, v7, ObjectType);
}

double sub_100194FE8(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6)
{
  v9 = sub_100742874();
  v11 = v10;
  v12 = sub_100742864();
  v14 = v13;
  v15 = sub_1007428A4();
  v17 = v16;
  v18 = sub_1005FBD60();
  if (qword_100920180 != -1)
  {
    swift_once();
  }

  sub_100536A04(&unk_10097D3C0, a3);
  v19 = type metadata accessor for AppEventCardView();
  sub_10051252C(v9, v11, v12, a1, v14, v15, v17, v18 & 1, a3, v19, a6);

  return a1;
}

void *sub_100195130(uint64_t a1, void *a2)
{
  if (qword_100920180 != -1)
  {
    swift_once();
  }

  sub_100536A04(&unk_10097D3C0, a2);
  type metadata accessor for AppEventCardView();

  return sub_100514768(a1, a2);
}

double sub_1001951F0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, double a9, uint64_t a10, int *a11)
{
  if (qword_100920180 != -1)
  {
    swift_once();
  }

  sub_100536A04(&unk_10097D3C0, a8);
  v20 = type metadata accessor for AppEventCardView();
  sub_10051252C(a1, a2, a3, a9, a4, a5, a6, a7 & 1, a8, v20, a11);
  return a9;
}

void sub_100195300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100742814();
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView];
  sub_1000C94C4(v9);
  [v2 setNeedsLayout];
  v11 = sub_100742934();
  if (v11)
  {
    v22 = v11;
    sub_10074ECD4();
    sub_100752764();
    sub_100195604(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v12 = sub_10000C518(&unk_100933080);
    (*(*(v12 - 8) + 56))(v8, 0, 1, v12);
  }

  else
  {
    v13 = sub_10000C518(&unk_100933080);
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  v14 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_100195594(v8, &v3[v14]);
  swift_endAccess();
  sub_10051312C(a1, a2);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  sub_100752754();
  v15 = v22;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v17 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  v18 = v17;
  sub_1000CAC84(v15);
  v19 = *(v10 + v16);
  *(v10 + v16) = v15;
  v20 = v15;

  sub_1000CADE8(v17);
}

uint64_t sub_100195594(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100195604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  sub_100514C70(v12, a2, *(a3 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView), a4, a5);
  return (*(v9 + 8))(v12, a4);
}

__n128 sub_100195764@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_1000EB8CC();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_1000EB820();
  }

  v3 = swift_allocObject();
  sub_10000C824(v1 + 96, v3 + 112);
  sub_1000746BC(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_1000746BC(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

uint64_t sub_100195878(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100195890(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_1001958E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100195930(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100195978(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100195A0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100195A58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100195AE4(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 5);
  v29 = *(v1 + 3);
  v30 = v5;
  v31 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_10000C824((v1 + 12), v26);
  sub_1000746BC((v1 + 17), v27);
  v10 = v1[22];
  v11 = v1[23];
  v12 = *(v1 + 192);
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v4;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = 0;
  v27[5] = v10;
  v27[6] = v11;
  v28 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1000746BC(v27, &v15);
    sub_10007485C(&v15);
  }

  sub_10000C888(v26, v26[3]);
  sub_100751254();
  sub_100196A8C(v17);
  sub_1000746BC((v1 + 25), &v15);
  if (v16)
  {
    sub_100012160(&v15, v17);
    sub_10000C888(v17, v18);
    sub_100751254();
    sub_10000C620(v17);
  }

  else
  {
    sub_10007485C(&v15);
  }

  return a1;
}

uint64_t sub_100195CE8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_1007539B4();
  v14 = sub_10010FD98(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_10000C824((v5 + 12), v64);
  sub_1000746BC((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_1000746BC(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_10007485C(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_10000C888(v64, v65);
  sub_100751254();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_1000746BC((v6 + 25), v57);
  v36 = v58;
  sub_10007485C(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_1000746BC((v6 + 17), v57);
    v37 = v58 == 0;
    sub_10007485C(v57);
  }

  sub_10000C888(v64, v65);
  sub_100751254();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  sub_100753AA4();
  sub_100196124(v47, v48, v49, v50, a1, v68);
  sub_1000746BC((v6 + 25), &v55);
  if (v56)
  {
    sub_100012160(&v55, v57);
    sub_10000C888(v57, v58);
    sub_100751254();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_10000C888(v57, v58);
    sub_100753AA4();
    sub_100751244();
    sub_100196A8C(v59);
    return sub_10000C620(v57);
  }

  else
  {
    sub_100196A8C(v59);
    return sub_10007485C(&v55);
  }
}

uint64_t sub_100196124(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 96) | (*(a6 + 32) < *(a6 + 8) + *(a6 + 8));
  sub_1000746BC(v6 + 144, &v21);
  if (v22)
  {
    sub_100012160(&v21, v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinX(v24);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_10000C888(v23, v23[3]);
    sub_100753AA4();
    sub_100751244();
    sub_10000C620(v23);
  }

  else
  {
    sub_10007485C(&v21);
  }

  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_10000C888((v6 + 104), *(v6 + 128));
  sub_100753AA4();
  return sub_100751244();
}

double sub_100196324(double a1)
{
  sub_1000746BC(v1 + 200, &v26);
  if (v27)
  {
    sub_100012160(&v26, &v12);
    sub_10000C888(&v12, *(&v13 + 1));
    sub_100751254();
    sub_10000C620(&v12);
  }

  else
  {
    sub_10007485C(&v26);
  }

  v2 = v1[1];
  v24 = *v1;
  v25 = v2;
  v3 = *(v1 + 8);
  v23 = *(v1 + 72);
  v4 = *(v1 + 11);
  v10 = v1[3];
  v11 = v1[2];
  sub_10000C824((v1 + 6), v20);
  sub_1000746BC(v1 + 136, v21);
  v5 = *(v1 + 22);
  v6 = *(v1 + 23);
  v7 = *(v1 + 192);
  v12 = v24;
  v13 = v25;
  v14 = v11;
  v15 = v10;
  v16 = v3;
  v17 = v23;
  v18 = v4;
  v19 = 1;
  v21[5] = v5;
  v21[6] = v6;
  v22 = v7;
  if ((v7 & 1) == 0)
  {
    sub_1000746BC(v21, &v26);
    sub_10007485C(&v26);
  }

  sub_10000C888(v20, v20[3]);
  sub_100751254();
  sub_100196A8C(&v12);
  return a1;
}

uint64_t sub_100196548(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1007539B4();
  v72.origin.x = sub_10010FD98(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_1000746BC(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_10007485C(&v62);
    v17 = y;
  }

  else
  {
    sub_100012160(&v62, &v43);
    sub_10000C888(&v43, *(&v44 + 1));
    sub_100751254();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_10000C888(&v43, *(&v44 + 1));
    sub_100753AA4();
    sub_100751244();
    v17 = y;
    sub_10000C620(&v43);
  }

  sub_1000746BC(v5 + 200, v60);
  v18 = v61;
  sub_10007485C(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_10000C824((v5 + 6), v51);
  sub_1000746BC(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_1000746BC(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_10007485C(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_10000C888(v51, v51[3]);
  sub_100751254();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  sub_100753AA4();
  sub_100196124(v37, v38, v39, v40, a1, &v62);
  return sub_100196A8C(&v43);
}

double sub_100196938()
{
  sub_100195764(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

uint64_t sub_1001969DC()
{
  sub_100195764(v1);
  sub_10000C888(v1, v1[3]);
  sub_100751244();
  return sub_10000C620(v1);
}

__n128 sub_100196A70@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

__n128 sub_100196ABC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100196B00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100196B48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100196BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100196BE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100196C08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

unint64_t sub_100196C70()
{
  result = qword_10092B138;
  if (!qword_10092B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B138);
  }

  return result;
}

uint64_t sub_100196CD0(uint64_t a1, uint64_t a2)
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

void sub_100196E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100745434();
    v9 = sub_10074EDC4();

    if (v9)
    {
      v10 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000C8CC(v6, &unk_100923960);
      }

      else
      {
        sub_1003C0E00(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100196FD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10074F284();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v29);
  sub_10000C518(&unk_100923100);
  sub_1007454C4();
  if (swift_dynamicCast())
  {
    v11 = sub_100745464();
    if (qword_1009219F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_10000D0FC(v12, qword_100982828);
    sub_1007504C4();
    if (v11)
    {

      sub_10074F294();
      sub_10074F254();
      (*(v8 + 8))(v10, v7);
      sub_10074F374();
      v13 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v13 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_1007433C4();
      sub_10019A71C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    v14 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView);
    v15 = sub_100745434();
    sub_100606134(v15, a2);
  }

  else
  {
    sub_10000C824(a1, v29);
    sub_10074F8A4();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v8;
    v17 = v2;
    v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView);
    v19 = sub_10074F834();
    sub_100606134(v19, a2);

    if (sub_10074F844())
    {
      v20 = qword_1009219F0;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_10000D0FC(v21, qword_100982828);
      sub_1007504C4();

      sub_10074F294();
      sub_10074F254();
      (*(v28 + 8))(v10, v7);
      sub_10074F374();
      v22 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v22 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_1007433C4();
      sub_10019A71C(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView);
      v24 = a1[3];
      v25 = a1[4];
      v26 = sub_10000C888(a1, v24);
      sub_1001F0FDC(v26, a2, v23, v24, v25);
    }
  }
}

double sub_1001975C0(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100198620(a2, v10, a7, v7, ObjectType);
}

uint64_t sub_10019762C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007454C4();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100198804(v5, a3);
  }

  else
  {
    sub_10074F8A4();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_1001995DC(v7, a3);
  }
}

double sub_10019776C(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, uint64_t a9, void *a10)
{
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v107 = a3;
  v106 = a2;
  v108 = a1;
  v103 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v103);
  v105 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v104);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10074CD14();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = sub_100750F34();
  swift_allocObject();
  v101 = sub_100750F14();
  swift_allocObject();
  v96 = sub_100750F14();
  swift_allocObject();
  v95 = sub_100750F14();
  swift_allocObject();
  v94 = sub_100750F14();
  swift_allocObject();
  v92 = sub_100750F14();
  swift_allocObject();
  v90 = sub_100750F14();
  swift_allocObject();
  v102 = sub_100750F14();
  swift_allocObject();
  v97 = sub_100750F14();
  v22 = [a7 traitCollection];
  sub_100751364();

  swift_allocObject();
  v93 = sub_100750F14();
  swift_allocObject();
  v91 = sub_100750F14();
  swift_allocObject();
  v89 = sub_100750F14();
  v23 = [a7 traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  sub_100753954();

  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921570 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  sub_10000D0FC(v25, qword_100981D88);
  v26 = [a7 traitCollection];
  v27 = sub_100753C14();

  v28 = sub_10074F3F4();
  v111 = v28;
  v83 = sub_10019A71C(&qword_10092AC70, &type metadata accessor for Feature);
  v112 = v83;
  v29 = sub_10000D134(aBlock);
  v30 = *(v28 - 8);
  v31 = *(v30 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v84 = v28;
  v81 = v31;
  v80 = v30 + 104;
  v31(v29);
  sub_10074FC74();
  sub_10000C620(aBlock);

  v85 = v27;
  sub_10074CD04();
  sub_10074CCE4();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v88 = v15;
  v79 = v33;
  v33(v20, v15);
  if (qword_100921DB0 != -1)
  {
    swift_once();
  }

  v34 = qword_100982F58;
  v35 = unk_100982F60;
  v36 = qword_100982F68;
  v37 = [a7 traitCollection];
  v38 = sub_100753804();
  v87 = v32;
  if (v38)
  {
  }

  else
  {
    v39 = sub_1007537D4();

    if (v39)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }
  }

  v40 = v36;
  v106 = a7;
  v41 = [a7 traitCollection];
  v42 = objc_allocWithZone(NSMutableAttributedString);
  v43 = v40;
  v44 = v42;
  v45 = v108;
  v46 = [v44 initWithAttributedString:v108];
  v107 = [v45 length];
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = v41;
  *(v47 + 32) = v46;
  *(v47 + 40) = 1;
  v48 = swift_allocObject();
  v48[2] = sub_100047814;
  v48[3] = v47;
  v112 = sub_1000B18A8;
  v113 = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v111 = &unk_10086AE48;
  v49 = _Block_copy(aBlock);
  v50 = v43;
  v51 = v41;
  v52 = v46;

  [v45 enumerateAttributesInRange:0 options:v107 usingBlock:{0x100000, v49}];

  _Block_release(v49);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
    goto LABEL_24;
  }

  v108 = a10;
  v53 = v84;
  v111 = v84;
  v112 = v83;
  v54 = sub_10000D134(aBlock);
  v81(v54, v82, v53);
  v55 = v50;
  sub_10074FC74();
  sub_10000C620(aBlock);
  v56 = v86;
  v107 = v55;
  sub_10074CCD4();
  sub_10074CCE4();
  v79(v56, v88);
  v57 = v99;
  if (v99)
  {
    v58 = HIBYTE(v99) & 0xF;
    v59 = v98;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v58 = v98 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v88) = v58 != 0;
    v48 = v106;
  }

  else
  {
    LODWORD(v88) = 0;
    v48 = v106;
    v59 = v98;
  }

  type metadata accessor for AppPromotionSubtitleView();
  v60 = [v48 traitCollection];
  sub_1002CA59C(v59, v57, v100, 0, v60, v109);

  v61 = [v48 traitCollection];
  LOBYTE(v60) = sub_100753804();

  if (v60)
  {
    if (qword_1009219F8 == -1)
    {
LABEL_18:
      v62 = qword_100982840;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_1009219F0 != -1)
  {
    swift_once();
  }

  v62 = qword_100982828;
LABEL_22:
  v63 = v105;
  v64 = sub_10000D0FC(v103, v62);
  sub_10019A5F8(v64, v63);
  v65 = v104;
  v66 = (v14 + *(v104 + 20));
  v66[3] = v21;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  *v66 = v101;
  v67 = (v14 + v65[6]);
  v67[3] = v21;
  v67[4] = &protocol witness table for LayoutViewPlaceholder;
  *v67 = v96;
  v68 = (v14 + v65[7]);
  v68[3] = v21;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v95;
  v69 = (v14 + v65[8]);
  v69[3] = v21;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v94;
  v70 = (v14 + v65[9]);
  v70[3] = v21;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v92;
  v71 = (v14 + v65[10]);
  v71[3] = v21;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v90;
  v72 = (v14 + v65[11]);
  v72[3] = v21;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v102;
  v73 = (v14 + v65[12]);
  v73[3] = v21;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v97;
  sub_10000C824(v114, v14 + v65[13]);
  sub_10000C824(aBlock, v14 + v65[14]);
  sub_10000C824(v109, v14 + v65[15]);
  v74 = (v14 + v65[16]);
  v74[3] = v21;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v93;
  v75 = (v14 + v65[17]);
  v75[3] = v21;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v91;
  v76 = (v14 + v65[18]);
  v76[3] = v21;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v89;
  sub_10019A65C(v63, v14);
  *(v14 + v65[19]) = v88;

  sub_1002C86A0(v48, v14);

  sub_10000C620(v109);
  sub_10000C620(aBlock);
  sub_10000C620(v114);
  sub_10019A6C0(v14);
  return a8;
}

void sub_1001983E4(uint64_t a1, char *a2)
{
  v3 = sub_10074ED34();
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741D54();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (sub_10074EF04())
    {
      v6 = sub_100749EF4();
      v8 = v7;

      if (v8)
      {
        sub_100741894();
        v9 = sub_100741874();
        if (v9)
        {
          v10 = v9;
          sub_10074EF44();

          sub_10000C518(&unk_100925780);
          sub_100752764();

          sub_100752D34();
          v11 = v17[1];
          v12 = v17[2];
          type metadata accessor for SubscriptionLockupPresenter();
          swift_allocObject();
          v13 = a2;
          v14 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v6, v8, v5, a2, &off_10087DD40, v10, v11, v12);
          v15 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v13[v15] = v14;

          return;
        }
      }
    }
  }

  v16 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v16] = 0;

  sub_1006085EC(0, 0);
}

double sub_100198620(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_1007454C4();
  if (swift_dynamicCastClass())
  {

    sub_1007454A4();
    v9 = sub_10074F914();

    v10 = a5;
    v26 = a4;
    v11 = sub_100745484();
    v13 = v12;
    v14 = sub_1007454B4();
    v16 = v15;
    v17 = sub_100745414();
    v18 = sub_10019776C(v9, v11, v13, v14, v16, v17, a3, a1, v26, v10);
  }

  else
  {
    sub_10074F8A4();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    sub_10074F884();
    v19 = sub_10074F914();

    v20 = sub_10074F874();
    v22 = v21;
    v23 = sub_10074F894();
    v18 = sub_10019776C(v19, v20, v22, v23, v24, 0, a3, a1, a4, a5);
  }

  return v18;
}

uint64_t sub_100198804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v5 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v5 - 8);
  v103 = &v84 - v6;
  v102 = sub_10074C3E4();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_10000C518(&unk_100925560);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v101 = &v84 - v8;
  v9 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v9 - 8);
  v106 = &v84 - v10;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v108 = &v84 - v12;
  v13 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v13 - 8);
  v107 = &v84 - v14;
  v15 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v15 - 8);
  v112 = &v84 - v16;
  v17 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - v18;
  v20 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v20 - 8);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v110 = &v84 - v23;
  v105 = sub_100746BA4();
  v24 = *(v105 - 8);
  __chkstk_darwin(v105);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100745484();
  sub_1005CB7DC(v27, v28);
  sub_1007454A4();
  v29 = sub_10074F914();

  sub_1005CB93C(v29);
  v30 = sub_1007454B4();
  v32 = v31;
  v33 = sub_100745414();
  sub_1002CAA70(v30, v32, v33);
  v34 = v19;

  v35 = v112;

  v36 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_100745474();
  v37 = sub_100746B84();
  v38 = v105;
  (*(v24 + 8))(v26, v105);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_1005CBE84();
  [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v109 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView);
  v40 = v110;
  v41 = v39;
  v42 = sub_100745434();
  v43 = sub_10000C518(&unk_10092EEA0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v97 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = sub_100742E24();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  sub_100741D54();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v92 = v45;
    v93 = v43;
    v95 = v34;
    v96 = a1;
    v50 = v48;
    v104 = v48;
    v51 = v49;
    v89 = sub_100745E94();
    v52 = *(v89 - 8);
    v88 = *(v52 + 56);
    v90 = v52 + 56;
    v53 = v107;
    v88(v107, 1, 1, v89);
    v87 = *(v111 + 56);
    v105 = v42;
    v54 = v108;
    v87(v108, 1, 1, v113);
    v55 = sub_10074F8B4();
    v56 = *(v55 - 8);
    v85 = *(v56 + 56);
    v86 = v56 + 56;
    v57 = v106;
    v85(v106, 1, 1, v55);
    swift_retain_n();
    sub_100656038(v50, v51, v40, v114, 1, 0, v35, v53, v57, v54);
    sub_10000C8CC(v57, &unk_100925520);
    v51[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    v91 = v51;
    [v51 setNeedsLayout];
    sub_10000C8CC(v54, &unk_100925990);
    sub_10000C8CC(v53, &unk_1009259A0);
    v58 = v35;
    v94 = v41;
    v59 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v60 = sub_100741D44();
    v88(v53, 1, 1, v89);
    v87(v54, 1, 1, v113);
    v85(v57, 1, 1, v55);
    sub_100656038(v60, v59, v40, v114, 0, 0, v58, v53, v57, v54);
    sub_10000C8CC(v57, &unk_100925520);
    v59[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v105;
    sub_10000C8CC(v61, &unk_100925990);
    sub_10000C8CC(v53, &unk_1009259A0);
    v63 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = sub_10074EF24();
    if (v64)
    {
    }

    sub_1001CD868(v64 != 0);
    v65 = *&v59[v63];
    v66 = sub_10074EF04();

    v67 = sub_10074EDF4();

    v68 = v98;
    v92(v98, 1, 1, v93);
    v69 = v99;
    v70 = v102;
    (*(v99 + 104))(v100, enum case for OfferButtonSubtitlePosition.below(_:), v102);
    (*(v69 + 56))(v103, 1, 1, v70);
    sub_10019A71C(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v71 = v101;
    sub_10074A9C4();
    sub_10015DE40(v66, v67, 0, v68, v71, v114, 0, 0);

    (*(v111 + 8))(v71, v113);
    sub_10000C8CC(v68, &unk_100925540);
    v46 = v94;
    sub_1001983E4(v62, v94);

    v34 = v95;
    sub_100608B80(v46, v95);
    a1 = v96;
    v35 = v112;
    v40 = v110;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
    v72 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v73 = sub_100745E94();
    v74 = v107;
    (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
    v75 = v108;
    (*(v111 + 56))(v108, 1, 1, v113);
    v76 = sub_10074F8B4();
    v77 = v106;
    (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
    sub_100656038(v42, v72, v40, v114, 0, 0, v35, v74, v77, v75);
    sub_10000C8CC(v77, &unk_100925520);
    v72[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v72 setNeedsLayout];
    sub_10000C8CC(v75, &unk_100925990);
    sub_10000C8CC(v74, &unk_1009259A0);
    sub_100608B80(v46, v34);
  }

  sub_10000C8CC(v35, &unk_100925530);
  sub_10000C8CC(v34, &qword_10092B188);
  sub_10000C8CC(v40, &unk_100925540);
  v78 = swift_allocObject();
  v79 = v109;
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  *(v80 + 2) = v78;
  *(v80 + 3) = a1;
  *(v80 + 4) = v114;
  v81 = (v79 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction);
  v82 = *(v79 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v81 = sub_10019A4FC;
  v81[1] = v80;

  sub_1000164A8(v82);
}

uint64_t sub_1001995DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v6 - 8);
  v114 = v94 - v7;
  v113 = sub_10074C3E4();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10000C518(&unk_100925560);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = v94 - v9;
  v10 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v10 - 8);
  v116 = v94 - v11;
  v12 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v12 - 8);
  v118 = v94 - v13;
  v14 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v14 - 8);
  v117 = v94 - v15;
  v16 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v16 - 8);
  v124 = v94 - v17;
  v18 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v18 - 8);
  v122 = v94 - v19;
  v20 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v20 - 8);
  v109 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v120 = v94 - v23;
  v24 = sub_100746BA4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074F874();
  sub_1005CB7DC(v28, v29);
  sub_10074F884();
  v30 = sub_10074F914();

  sub_1005CB93C(v30);
  v31 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_subtitleView);
  sub_10074F894();
  v32 = *(v31 + qword_100930F38);
  if (v33)
  {
    v34 = sub_100753064();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_100930F40) setHidden:1];
  sub_1007442C4();
  v35 = a2;
  sub_100752754();

  v36 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_mediaContentView);
  sub_10074F854();
  v37 = sub_100746B84();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkFallbackView);
  sub_1001F0D88();
  sub_1005CBE84();
  [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (sub_10074F844())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_artworkView);
  }

  v39 = v122;
  v40 = v120;
  v115 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupView);
  v42 = sub_10074F834();
  v43 = sub_10000C518(&unk_10092EEA0);
  v44 = *(v43 - 8);
  v107 = *(v44 + 56);
  v108 = v43;
  v106 = v44 + 56;
  v107(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = sub_100742E24();
  (*(*(v45 - 8) + 56))(v124, 1, 1, v45);
  sub_100741D54();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
  v119 = v41;
  if (v47)
  {
    v49 = v47;
    v104 = a1;
    v105 = v3;
    v100 = sub_100745E94();
    v50 = *(v100 - 8);
    v99 = *(v50 + 56);
    v101 = v50 + 56;
    v51 = v117;
    v99(v117, 1, 1, v100);
    v98 = *(v121 + 56);
    v52 = v118;
    v98(v118, 1, 1, v123);
    v96 = sub_10074F8B4();
    v53 = *(v96 - 8);
    v95 = *(v53 + 56);
    v97 = v53 + 56;
    v54 = v116;
    v95(v116, 1, 1, v96);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v115;
    v59 = v124;
    sub_100656038(v49, v48, v57, v115, 1, 0, v124, v51, v54, v52);
    sub_10000C8CC(v54, &unk_100925520);
    v48[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    v102 = v48;
    [v48 setNeedsLayout];
    sub_10000C8CC(v52, &unk_100925990);
    sub_10000C8CC(v51, &unk_1009259A0);
    v60 = v49;
    v61 = *&v119[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v103 = v60;
    v62 = v58;
    v63 = sub_100741D44();
    v99(v51, 1, 1, v100);
    v98(v52, 1, 1, v123);
    v95(v54, 1, 1, v96);
    v64 = v62;
    sub_100656038(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10000C8CC(v54, &unk_100925520);
    v61[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v61 setNeedsLayout];

    sub_10000C8CC(v52, &unk_100925990);
    sub_10000C8CC(v51, &unk_1009259A0);
    v65 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = sub_10074EF24();
    v67 = v55;
    if (v66)
    {
    }

    sub_1001CD868(v66 != 0);
    v68 = *&v61[v65];
    v69 = sub_10074EF04();

    v70 = sub_10074EDF4();

    v71 = v109;
    (v107)(v109, 1, 1, v108);
    v72 = v110;
    v73 = v113;
    (*(v110 + 104))(v111, enum case for OfferButtonSubtitlePosition.below(_:), v113);
    (*(v72 + 56))(v114, 1, 1, v73);
    sub_10019A71C(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v74 = v112;
    sub_10074A9C4();
    v75 = v64;
    sub_10015DE40(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v121 + 8))(v74, v123);
    sub_10000C8CC(v71, &unk_100925540);
    v76 = v119;
    sub_1001983E4(v67, v119);

    v39 = v122;
    sub_100608B80(v76, v122);
    v3 = v105;
    v77 = v124;
    v78 = v120;
  }

  else
  {
    [v48 setHidden:1];
    v94[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v80 = sub_100745E94();
    v81 = v117;
    (*(*(v80 - 8) + 56))(v117, 1, 1, v80);
    v82 = v118;
    (*(v121 + 56))(v118, 1, 1, v123);
    v83 = sub_10074F8B4();
    v84 = v116;
    (*(*(v83 - 8) + 56))(v116, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v115;
    v77 = v124;
    sub_100656038(v85, v79, v86, v115, 0, 0, v124, v81, v84, v82);
    sub_10000C8CC(v84, &unk_100925520);
    v79[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v79 setNeedsLayout];
    v76 = v119;
    v75 = v87;
    sub_10000C8CC(v82, &unk_100925990);
    sub_10000C8CC(v81, &unk_1009259A0);
    sub_100608B80(v76, v39);
  }

  sub_10000C8CC(v77, &unk_100925530);
  sub_10000C8CC(v39, &qword_10092B188);
  sub_10000C8CC(v78, &unk_100925540);
  sub_10074F834();
  v88 = sub_10074EDC4();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_10019A548;
    *(v88 + 24) = v89;

    v90 = sub_100066280;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension20AppPromotionCardView_lockupViewTappedAction);
  *v91 = v90;
  v91[1] = v88;
  return sub_1000164A8(v92);
}

uint64_t sub_10019A47C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019A4B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10019A508()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019A550()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10019A588()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10019A5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019A5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019A65C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019A6C0(uint64_t a1)
{
  v2 = type metadata accessor for AppPromotionCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019A71C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10019A764(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView;
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

  v20 = OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    sub_100752A74();
    sub_1000277BC(&v42);
    sub_1000277BC(&v44);
    sub_100753C74();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    sub_100752A74();
    sub_1000277BC(&v42);
    sub_1000277BC(&v44);
    sub_100753C74();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  sub_100752A74();
  sub_1000277BC(&v42);
  sub_1000277BC(&v44);
  sub_100753C74();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_10019B01C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_10019B078()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743204();

  v4 = *(v1 + v2);
  sub_1007433C4();
  sub_10019B1B8(&qword_100925570, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100744274();
}

uint64_t sub_10019B160(uint64_t a1, uint64_t a2)
{
  result = sub_10019B1B8(&qword_10092B1C0, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10019B1B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_10019B200()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView] setAlpha:0.0];
  v1 = [v0 buttonTray];
  [v1 setAlpha:0.0];

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_10019CA3C;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000CF7B0;
  v12 = &unk_10086AEC0;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_10019CA5C;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100144DD8;
  v12 = &unk_10086AF10;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.2];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_10019B3D0()
{
  v1 = sub_100750FA4();
  __chkstk_darwin(v1 - 8);
  sub_100750F94();
  v2 = objc_allocWithZone(sub_100750FC4());
  v3 = sub_100750FB4();
  sub_10019C904(v3);

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView] setHidden:1];
  v4 = [v0 buttonTray];
  [v4 setHidden:1];
}

void sub_10019B4C8()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArcadeDownloadPackViewController();
  v7.receiver = v0;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "viewDidLoad");
  sub_10000C888(&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  sub_100744314();
  v6 = [v0 navigationItem];
  [v6 setLargeTitleDisplayMode:2];
}

uint64_t sub_10019B6A0(char a1)
{
  v2 = v1;
  v4 = sub_100741454();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742964();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArcadeDownloadPackViewController();
  v14.receiver = v2;
  v14.super_class = v12;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v8);
  sub_100742974();
  (*(v9 + 8))(v11, v8);
  result = sub_1007442E4();
  if (result)
  {
    sub_100741444();
    sub_100741424();
    (*(v5 + 8))(v7, v4);
    sub_100746C04();
  }

  return result;
}

uint64_t sub_10019B91C(char a1)
{
  v2 = v1;
  v4 = sub_100741454();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752BC4();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C518(&qword_100930220);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArcadeDownloadPackViewController();
  v20.receiver = v2;
  v20.super_class = v15;
  objc_msgSendSuper2(&v20, "viewWillDisappear:", a1 & 1);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v12 + 104))(v14, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v11);
  sub_100742974();
  (*(v12 + 8))(v14, v11);
  result = sub_1007442E4();
  if (result)
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v18 + 8))(v6, v19);
    sub_100746C24();
    v17 = sub_100746C34();
    (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    sub_100746C14();
  }

  return result;
}

uint64_t sub_10019BC9C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArcadeDownloadPackViewController();
  v17.receiver = a1;
  v17.super_class = v13;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v17, v14, a3);
  sub_10000C888(&v15[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&v15[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v12, *a5, v9);
  sub_100742974();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10019BE08(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(&a1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_100742974();

  return (*(v6 + 8))(v8, v5);
}

void sub_10019BF34()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_overlayViewController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10019C064()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView + 8];
  ObjectType = swift_getObjectType();
  [v5 bounds];
  [v3 convertRect:v5 fromCoordinateSpace:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v1 view];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v1 buttonTray];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 buttonTray];
  [v16 convertRect:v26 fromCoordinateSpace:{v19, v21, v23, v25}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v39.origin.x = v28;
  v39.origin.y = v30;
  v39.size.width = v32;
  v39.size.height = v34;
  CGRectGetMinY(v39);
  v40.origin.x = v8;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v14;
  CGRectGetMinY(v40);
  v41.origin.x = v8;
  v41.origin.y = v10;
  v41.size.width = v12;
  v41.size.height = v14;
  CGRectGetWidth(v41);
  sub_100744304();
  sub_100749554();

  v35 = sub_100744304();
  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    (*(v4 + 8))(v35, v36, ObjectType, v4);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10019C328(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_overlayViewController];
  if (v2)
  {
    v3 = [v2 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setAlpha:0.0];
  }

  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView] setAlpha:1.0];
  v5 = [a1 buttonTray];
  [v5 setAlpha:1.0];
}

id sub_10019C570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10019C644(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_objectGraph);
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_100052F00(v5);
  }

  sub_1003C0E00(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

void sub_10019C784()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_pageView] setHidden:0];
  v1 = [v0 buttonTray];
  [v1 setHidden:0];
}

void sub_10019C800()
{
  sub_100751094();
  sub_10019C8AC();
  swift_errorRetain();

  v0 = sub_100751054();
  sub_10019C904(v0);
}

unint64_t sub_10019C8AC()
{
  result = qword_10092B218;
  if (!qword_10092B218)
  {
    sub_100744344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092B218);
  }

  return result;
}

id sub_10019C904(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    sub_10074B964();
    v9 = *&v1[v3] == 0;

    return [v1 setModalInPresentation:v9];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019CA04()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019CA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10019CA90(char a1)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScreenshotsGalleryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  result = objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1);
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks];
    if (v10 >> 62)
    {
      result = sub_100754664();
      if (v9 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= result)
      {
        return result;
      }
    }

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result layoutIfNeeded];

      sub_100741764();
      v12 = [v1 collectionView];
      if (v12)
      {
        v13 = v12;
        isa = sub_100741704().super.isa;
        [v13 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v4 + 8))(v6, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10019CCAC()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipeStateChangedOn:"];
  [v2 setDirection:8];
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 addGestureRecognizer:v2];

    v5 = [v0 collectionView];
    if (v5)
    {
      v6 = v5;
      sub_100016C60(0, &qword_100923500);
      v7 = sub_100753E04();
      [v6 setBackgroundColor:v7];
    }

    v8 = [v1 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 setAlwaysBounceHorizontal:1];
    }

    v10 = [v1 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 setShowsHorizontalScrollIndicator:0];
    }

    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      [v14 setRemembersLastFocusedIndexPath:1];
    }

    v16 = [v1 collectionView];
    if (v16)
    {
      v17 = v16;
      [v16 setContentInsetAdjustmentBehavior:2];
    }

    v18 = [v1 collectionView];
    if (v18)
    {
      v19 = v18;
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1007539D4();
      v21 = sub_100753064();

      [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];
    }

    v22 = [v1 collectionView];
    if (!v22)
    {

      return;
    }

    v37 = v22;
    [v22 bounds];
    sub_10019E204(v23, v24);
    v26 = v25;
    v41 = sub_1007444C4() & 1;
    v27 = sub_1004C7000(v26, v41);
    v28 = v27;
    v40 = *(v26 + 16);
    if (!v40)
    {
LABEL_30:

      return;
    }

    v29 = 0;
    v30 = (v26 + 48);
    v38 = v27 & 0xC000000000000001;
    v39 = v27 >> 62;
    while (v29 < *(v26 + 16))
    {
      v31 = *(v30 - 2);
      v32 = *(v30 - 1);
      v33 = *v30;
      if (v39)
      {
        v34 = sub_100754664();
      }

      else
      {
        v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29 == v34)
      {
        goto LABEL_30;
      }

      if (v38)
      {

        sub_100754574();
      }

      else
      {
        if (v29 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }
      }

      v43 = 0;
      memset(v42, 0, sizeof(v42));
      v35 = swift_allocObject();
      swift_weakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v41;
      *(v36 + 24) = v35;
      *(v36 + 32) = v31;
      *(v36 + 40) = v32;
      *(v36 + 48) = v33;
      *(v36 + 56) = v29;

      sub_1007441F4();

      sub_10000C8CC(v42, &unk_1009276E0);

      v30 += 3;
      if (v40 == ++v29)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_10019D1DC(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionViewLayout];

    [v5 invalidateLayout];
  }

  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    [v6 setNeedsLayout];
  }
}

void sub_10019D310(void *a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_10019F784;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1003ED3AC;
  v14[3] = &unk_10086AF70;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_10019D4A8()
{
  v0 = sub_1007417F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 collectionView];

      if (v8)
      {
        sub_10000C518(&qword_1009253E0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1007A6580;
        *(v9 + 32) = 0;
        *(v9 + 40) = v5;
        sub_1007416F4();
        isa = sub_100741704().super.isa;
        (*(v1 + 8))(v3, v0);
        [v8 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_10019D78C(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  sub_1007539D4();
  v4 = sub_100753064();

  isa = sub_100741704().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_10028864C();

  return v7;
}

double sub_10019DE00(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = sub_1007537E4();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_10019DEC8(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10000C8CC(v9, &unk_100923C00);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    sub_100741744();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_10003E130(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000C8CC(v9, &unk_100923C00);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_100741774();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_10019E204(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = sub_100754664();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = sub_10074F194();
      sub_10074F2A4();
      v11 = v10;
      v13 = v12;
      sub_10074F2A4();
      v15 = v14;
      v17 = v16;
      sub_10074F2A4();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100254FF4(0, v7[2] + 1, 1, v7);
      }

      v27 = v7[2];
      v26 = v7[3];
      if (v27 >= v26 >> 1)
      {
        v7 = sub_100254FF4((v26 > 1), v27 + 1, 1, v7);
      }

      v7[2] = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_10019E3C8()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_10019E448()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10019E538(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_10000C518(&qword_1009253E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007A6580;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    sub_1007416F4();
    isa = sub_100741704().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell();
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_100743384(v20, v18);

        v15 = v17;
      }
    }
  }
}

unint64_t sub_10019E6EC()
{
  v1 = v0;
  v2 = sub_1007428D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks];
  result = sub_100741774();
  v53 = v2;
  v54 = v6;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = sub_100754574();
LABEL_5:
    v52 = OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
    v14 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    type metadata accessor for BorderedScreenshotView();
    sub_1007477B4();
    Width = CGRectGetWidth(v55);
    v18 = v15 + v16;
    sub_1007477B4();
    CGRectGetHeight(v56);
    v19 = [v0 traitCollection];
    v20 = sub_1007537E4();

    if (sub_1007444C4())
    {
      sub_10074F194();
    }

    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    v21 = Width - v18;

    sub_1007444B4();

    v22 = v53;
    if ((*(v3 + 88))(v5, v53) != enum case for AppPlatform.watch(_:))
    {
      (*(v3 + 8))(v5, v22, 0.0);
    }

    sub_1007504B4();
    v24 = v23;
    v25 = (v21 - v23) * 0.5;
    if (v20)
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 60.0)
      {
        goto LABEL_15;
      }

      v28 = 120.0;
    }

    else
    {
      v26 = v52;
      v27 = v54;
      if (v25 >= 30.0)
      {
        goto LABEL_15;
      }

      v28 = 60.0;
    }

    v24 = v21 - v28;
LABEL_15:
    sub_10074F2A4();
    if (v29 < v24)
    {
      v24 = v29;
    }

    sub_1007504C4();
    v31 = v30;
    (*(v7 + 8))(v9, v27);
    v32 = &v10[OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v32 = v24;
    *(v32 + 1) = v31;
    v32[16] = 0;
    [v10 setNeedsLayout];
    v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v34 = *(v33 + 16);

    v35 = sub_10030C758(v13, v34);

    if (v35)
    {
      v36 = *(*&v10[v26] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v37 = v35;
      v38 = v36;
      v39 = sub_100743334();

      if (v39)
      {
        sub_100016C60(0, &qword_10092B280);
        v41 = v37;
        v42 = sub_100753FC4();

        v43 = v42 ^ 1;
      }

      else
      {
        v43 = 1;
      }

      v49.is_nil = v43 & 1;
      v49.value.super.isa = v35;
    }

    else
    {
      v44 = sub_10030C758(v13, *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_placeholderImages]);
      if (!v44)
      {
      }

      v37 = v44;
      v45 = *(*&v10[v26] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v46 = sub_100743334();

      if (v46)
      {
        sub_100016C60(0, &qword_10092B280);
        v47 = v37;
        v48 = sub_100753FC4();

        if (v48)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v50 = v37;
      }

      v38 = *(*&v10[v26] + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
      v49.value.super.isa = v37;
      v49.is_nil = 1;
    }

    sub_100743384(v49, v40);

    v47 = v37;
LABEL_29:
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 8 * result + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_10019ECA8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1007428D4();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v70[-v10];
  v75 = sub_1007504F4();
  __chkstk_darwin(v75);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v70[-v16];
  v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v77 = v15;
    result = sub_100754664();
    v15 = v77;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v74 = a2;
  v77 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v78 = sub_100754574();
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v78 = *(v18 + 32);

    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v22 = *(v21 + 16);
      if (v22)
      {
        goto LABEL_7;
      }
    }
  }

  v22 = sub_100754664();
  if (!v22)
  {
  }

LABEL_7:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v73 = sub_100754574();
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (result >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_69:
    __break(1u);
    return result;
  }

  v73 = *(v18 + 8 * result + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = sub_1007537E4();

  if (sub_1007444C4())
  {
    sub_10074F194();
  }

  sub_10074F2A4();
  sub_10074F2A4();
  sub_100750504();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  sub_1007444B4();

  v72 = *(v76 + 88);
  v31 = v72(v11, v6);
  v71 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v76 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  sub_1007504B4();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_initWithTitle_style_target_action_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_initWithTitle_style_target_action_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  sub_10074F2A4();
  if (v38 < v34)
  {
    v34 = v38;
  }

  sub_1007504C4();
  v40 = v39;
  v41 = *(v77 + 8);
  v42 = v17;
  v43 = v75;
  v77 += 8;
  v41(v42, v75);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[129]];
  v48 = sub_1007537E4();

  if (sub_1007444C4())
  {
    sub_10074F194();
  }

  sub_10074F2A4();
  sub_10074F2A4();
  sub_100750504();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  sub_1007444B4();

  v50 = v72(v8, v6);
  if (v50 != v71)
  {
    (*(v76 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  sub_1007504B4();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v74;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v74;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  sub_10074F2A4();
  if (v59 < v54)
  {
    v54 = v59;
  }

  sub_1007504C4();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_10019F394(void *a1)
{
  v2 = v1;
  v4 = sub_1007428D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007504F4();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32ScreenshotsGalleryViewController_artworks];
  v14 = sub_100741774();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  sub_1007537E4();

  if (sub_1007444C4())
  {
    sub_10074F194();
  }

  sub_10074F2A4();
  sub_10074F2A4();
  sub_100750504();

  sub_1007444B4();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  sub_1007504B4();
  v16 = v19;
  sub_10074F2A4();
  sub_1007504C4();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  sub_1007537E4();
}

uint64_t sub_10019F74C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019F78C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019F7A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10019F7DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10019F81C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_10000C518(&qword_10092B368);
  __chkstk_darwin(v1 - 8);
  sub_10074FDC4();
  v12 = sub_10074FDE4();
  v11 = v2;
  v10 = sub_10074FDF4();
  v9 = v3;
  sub_10074FD54();
  sub_10074FDA4();
  sub_10074FD64();
  sub_10074FD94();
  sub_10074FD74();
  sub_10074FD84();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      sub_10074FDD4();
      return sub_10074FDB4();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019FA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_10074FE04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  sub_10074CC54();
  sub_10074FD74();
  v13 = *(v7 + 8);
  v13(v12, v6);
  if (!v28[3])
  {
    return sub_10000C8CC(v28, &qword_10092B350);
  }

  sub_10000C518(&unk_10092B358);
  sub_10074ECD4();
  result = swift_dynamicCast();
  if (result)
  {
    v24 = v27;
    sub_100744AC4();
    sub_100752764();
    sub_100752D34();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_10074CC54();
      sub_10074FDC4();
      v13(v9, v6);
      v17 = swift_dynamicCast();
      v18 = v17 == 0;
      if (v17)
      {
        v19 = v25;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

      sub_10073415C(v19, v20);
    }

    v21 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v5, 1, v21) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v24, 1, a2, v5);

      return (*(v22 + 8))(v5, v21);
    }
  }

  return result;
}

uint64_t sub_10019FDA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_10074FE04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10074CC54();
  sub_10074FD84();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10000C8CC(v15, &qword_10092B350);
  }

  sub_10000C518(&unk_10092B358);
  sub_10074ECD4();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

uint64_t sub_1001A000C(uint64_t result)
{
  if (result)
  {

    sub_10074F364();
    sub_1007442C4();
    sub_10074FEA4();
    sub_100744244();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v1, &unk_1009276E0);
  }

  return result;
}

void sub_1001A0130()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34SmallContactCardCollectionViewCell_smallPlayerCard);

      v6 = sub_10074FE94();
      if (v6)
      {
      }
    }

    sub_10074FE64();
  }
}

uint64_t sub_1001A0270()
{
  sub_1007442C4();
  sub_10074FEA4();
  sub_100744244();
  sub_100744264();
  return sub_100016994(v1);
}

uint64_t sub_1001A02F0()
{
  sub_10074FEA4();
  sub_10074FE74();
  v1 = [objc_opt_self() absoluteDimension:v0];
  v2 = sub_100749A04();

  return v2;
}

uint64_t sub_1001A0424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074FE04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_10074CC54();
  sub_10019F81C(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_10074FE84();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  sub_10074FE34();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return sub_10074FE54();
}

uint64_t sub_1001A0688()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001A06C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001A0714()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1001A0764()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10093CB50);

    sub_1001A28CC();
    sub_1001A2918(&qword_1009281E0, sub_1001A28CC);
    sub_100744274();
  }

  sub_1001A28CC();
  sub_1001A2918(&qword_1009281E0, sub_1001A28CC);
  sub_100744274();
  sub_100620EA0();
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView;
  v7 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_1001A2918(&qword_100925570, &type metadata accessor for ArtworkView);
  v8 = v7;
  sub_100744274();

  v9 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100744274();

  v10 = *(*(v5 + v6) + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_inAppPurchaseIcon);
  if (v10)
  {
    v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView];
    v12 = v10;
    v13 = v11;
    sub_100744274();

    v14 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView];
    sub_100744274();
  }
}

uint64_t sub_1001A0A4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = sub_10074C3E4();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_100624FB4(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView);
  if (sub_100745444())
  {
    v29 = sub_10074F914();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView);
  v31 = sub_100745434();
  v32 = sub_10000C518(&unk_10092EEA0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = sub_100746BA4();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = sub_100742E24();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  sub_100741D54();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = sub_100745E94();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = sub_10074F8B4();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_100656038(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10000C8CC(v48, &unk_100925520);
    v41[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10000C8CC(v44, &unk_100925990);
    sub_10000C8CC(v18, &unk_1009259A0);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = sub_100741D44();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_100656038(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10000C8CC(v48, &unk_100925520);
    v50[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v50 setNeedsLayout];

    sub_10000C8CC(v44, &unk_100925990);
    sub_10000C8CC(v18, &unk_1009259A0);
    v55 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = sub_10074EF24();
    if (v57)
    {
    }

    sub_1001CD868(v57 != 0);
    v58 = *&v50[v55];
    v59 = sub_10074EF04();
    v60 = v56;

    v61 = sub_10074EDF4();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_1001A2918(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v65 = v92;
    sub_10074A9C4();
    sub_10015DE40(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10000C8CC(v62, &unk_100925540);
    v66 = v84;
    sub_1001983E4(v60, v84);

    v23 = v86;
    sub_100608B80(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView);
    v68 = sub_100745E94();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = sub_10074F8B4();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_100656038(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10000C8CC(v71, &unk_100925520);
    v67[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v67 setNeedsLayout];
    sub_10000C8CC(v69, &unk_100925990);
    sub_10000C8CC(v18, &unk_1009259A0);
    sub_100608B80(v30, v23);
  }

  sub_10000C8CC(v99, &unk_100925530);
  sub_10000C8CC(v23, &qword_10092B188);
  return sub_10000C8CC(v35, &unk_100925540);
}

uint64_t sub_1001A164C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v146 = a3;
  v144 = a2;
  v4 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v4 - 8);
  v136 = v117 - v5;
  v135 = sub_10074C3E4();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100925560);
  v140 = *(v7 - 8);
  v141 = v7;
  __chkstk_darwin(v7);
  v134 = v117 - v8;
  v9 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v9 - 8);
  v137 = v117 - v10;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v139 = v117 - v12;
  v13 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v13 - 8);
  v138 = v117 - v14;
  v15 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v15 - 8);
  v17 = v117 - v16;
  v18 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v18 - 8);
  v20 = v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v117 - v22;
  v24 = sub_10000C518(&qword_10092B188);
  __chkstk_darwin(v24 - 8);
  v26 = v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v117 - v28;
  v30 = sub_100746BA4();
  v31 = *(v30 - 1);
  __chkstk_darwin(v30);
  v143 = v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = v117 - v34;
  sub_10074B384();
  v36 = a1;
  if (swift_dynamicCastClass())
  {
    v142 = a1;

    v37 = sub_10074B304();
    v39 = v145;
    v38 = v146;
    sub_1001A0A4C(v37, v146);

    v40 = *(v39 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView);
    v41 = sub_10074B364();
    v42 = sub_10074B374();
    sub_1000EEC78(v41, v42, v38);

    v43 = *(v39 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView);
    v44 = [v40 backgroundColor];
    [v43 setBackgroundColor:v44];

    sub_10074B314();
    v45 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v46 = v143;
    (*(v31 + 16))(v143, v39 + v45, v30);
    swift_beginAccess();
    (*(v31 + 24))(v39 + v45, v35, v30);
    swift_endAccess();
    sub_10057E3C0();
    v47 = *(v31 + 8);
    v47(v46, v30);
    v47(v35, v30);
    *(v39 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_10074B344() & 1;
    sub_100580E0C(0);
    sub_10074B304();

    v48 = sub_100745434();
    v49 = v144;
  }

  else
  {
    v127 = v29;
    v50 = v35;
    v51 = v145;
    v129 = v30;
    v126 = v20;
    v128 = v26;
    v131 = v23;
    v130 = v17;
    sub_1007482D4();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v53 = result;
    v54 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView);
    v142 = v36;

    sub_1000EF5C0(v53, v146);
    v55 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageContainerView);
    v56 = [v54 backgroundColor];
    [v55 setBackgroundColor:v56];

    sub_100748264();
    v57 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v58 = v31;
    v59 = *(v31 + 16);
    v60 = v143;
    v61 = v129;
    v59(v143, v51 + v57, v129);
    swift_beginAccess();
    (*(v58 + 24))(v51 + v57, v50, v61);
    swift_endAccess();
    sub_10057E3C0();
    v62 = *(v58 + 8);
    v62(v60, v61);
    v62(v50, v61);
    *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = sub_100748294() & 1;
    sub_100580E0C(0);
    v63 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_learnMoreView);
    if (sub_100748244())
    {
      v64 = sub_10074F914();
    }

    else
    {
      v64 = 0;
    }

    v65 = v127;
    [*(v63 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v64];

    v66 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);
    v67 = sub_100748234();
    sub_100748264();
    v68 = *(v58 + 56);
    v68(v65, 0, 1, v61);
    sub_1006263A4(v67, v146, v65);

    sub_10000C8CC(v65, &qword_10092B188);
    v69 = *(v66 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_learnMoreButton);
    sub_100748254();
    v70 = sub_100753064();

    [v69 setTitle:v70 forState:0];

    v71 = *(v66 + OBJC_IVAR____TtC22SubscribePageExtension33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (sub_100748244())
    {
      v72 = sub_10074F914();
    }

    else
    {
      v72 = 0;
    }

    v73 = v140;
    [v71 setAttributedText:v72];

    v74 = sub_100748234();
    v75 = v128;
    v143 = v53;
    sub_100748264();
    v68(v75, 0, 1, v129);
    v76 = v146;
    sub_1006263A4(v74, v146, v75);
    v77 = *(v51 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_lockupView);
    v145 = v74;
    v78 = sub_10074F834();
    v79 = sub_10000C518(&unk_10092EEA0);
    v80 = *(v79 - 8);
    v81 = *(v80 + 56);
    v82 = v131;
    v127 = (v80 + 56);
    v81(v131, 1, 1, v79);
    v83 = sub_100742E24();
    v84 = v130;
    (*(*(v83 - 8) + 56))(v130, 1, 1, v83);
    sub_100741D54();
    v85 = swift_dynamicCastClass();
    v86 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView];
    if (v85)
    {
      v124 = v81;
      v125 = v79;
      v129 = v77;
      v87 = v85;
      v88 = v86;
      v120 = sub_100745E94();
      v89 = *(v120 - 8);
      v119 = *(v89 + 56);
      v121 = v89 + 56;
      v90 = v138;
      v119(v138, 1, 1, v120);
      v118 = *(v73 + 56);
      v91 = v139;
      v118(v139, 1, 1, v141);
      v92 = sub_10074F8B4();
      v93 = *(v92 - 8);
      v117[0] = *(v93 + 56);
      v117[1] = v93 + 56;
      v94 = v137;
      (v117[0])(v137, 1, 1, v92);
      swift_retain_n();
      sub_100656038(v87, v88, v82, v146, 1, 0, v130, v90, v94, v91);
      sub_10000C8CC(v94, &unk_100925520);
      v88[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1001CE71C();
      v122 = v88;
      [v88 setNeedsLayout];
      sub_10000C8CC(v91, &unk_100925990);
      sub_10000C8CC(v90, &unk_1009259A0);
      v95 = *&v129[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
      v123 = v87;
      v96 = sub_100741D44();
      v119(v90, 1, 1, v120);
      v118(v91, 1, 1, v141);
      v97 = v92;
      v84 = v130;
      (v117[0])(v94, 1, 1, v97);
      sub_100656038(v96, v95, v82, v146, 0, 0, v84, v90, v94, v91);
      sub_10000C8CC(v94, &unk_100925520);
      v95[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1001CE71C();
      [v95 setNeedsLayout];

      sub_10000C8CC(v91, &unk_100925990);
      sub_10000C8CC(v90, &unk_1009259A0);
      v98 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton;
      [*&v95[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v95[v98] setUserInteractionEnabled:0];
      [v95 setHidden:1];
      v99 = sub_10074EF24();
      if (v99)
      {
      }

      sub_1001CD868(v99 != 0);
      v100 = *&v95[v98];
      v101 = sub_10074EF04();

      v102 = sub_10074EDF4();

      v103 = v126;
      v124(v126, 1, 1, v125);
      v104 = v132;
      v105 = v135;
      (*(v132 + 104))(v133, enum case for OfferButtonSubtitlePosition.below(_:), v135);
      (*(v104 + 56))(v136, 1, 1, v105);
      sub_1001A2918(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
      v106 = v134;
      sub_10074A9C4();
      sub_10015DE40(v101, v102, 0, v103, v106, v146, 0, 0);

      (*(v140 + 8))(v106, v141);
      sub_10000C8CC(v103, &unk_100925540);
      v107 = v129;
      sub_1001983E4(v78, v129);

      v75 = v128;
      sub_100608B80(v107, v128);
      v108 = v144;
      v109 = v131;
    }

    else
    {
      [*&v77[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_iapLockupView] setHidden:1];
      v110 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension22SubscriptionLockupView_appLockupView];
      v111 = sub_100745E94();
      v112 = v138;
      (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
      v113 = v139;
      (*(v73 + 56))(v139, 1, 1, v141);
      v114 = sub_10074F8B4();
      v115 = v137;
      (*(*(v114 - 8) + 56))(v137, 1, 1, v114);
      sub_100656038(v78, v110, v131, v76, 0, 0, v84, v112, v115, v113);
      v116 = v115;
      v109 = v131;
      sub_10000C8CC(v116, &unk_100925520);
      v110[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_1001CE71C();
      [v110 setNeedsLayout];
      sub_10000C8CC(v113, &unk_100925990);
      sub_10000C8CC(v112, &unk_1009259A0);
      sub_100608B80(v77, v75);
      v108 = v144;
    }

    sub_10000C8CC(v84, &unk_100925530);
    sub_10000C8CC(v109, &unk_100925540);
    sub_10000C8CC(v75, &qword_10092B188);
    sub_100748234();

    v48 = sub_10074F834();
    v49 = v108;
  }

  sub_100606134(v48, v49);
}

unint64_t sub_1001A28CC()
{
  result = qword_10092BFC0;
  if (!qword_10092BFC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092BFC0);
  }

  return result;
}

uint64_t sub_1001A2918(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001A2960()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

char *sub_1001A2A3C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder;
  sub_1007433C4();
  v11 = sub_1007431D4();
  sub_100746E74();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder;
  sub_100743794();
  v13 = sub_100743754();
  v15 = sub_10071B540(v13, v14, UIFontTextStyleFootnote);

  *&v5[v12] = v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder;
  v17 = sub_100743784();
  v19 = sub_10071B540(v17, v18, UIFontTextStyleBody);

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder;
  v21 = sub_100743734();
  v23 = sub_10071B540(v21, v22, UIFontTextStyleFootnote);

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_contentType;
  v26 = enum case for Shelf.ContentType.smallLockup(_:);
  v27 = sub_10074E984();
  (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
  v5[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] = 0;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for LockupPlaceholderView();
  v28 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder]];

  return v32;
}

uint64_t sub_1001A2CF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_contentType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return sub_1001A2F58(a1);
  }

  if (v12 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return sub_1001A3470(a1);
  }

  if (v12 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return sub_1001A3950(a1);
  }

  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_100754534(44);
  v11(v6, v1 + v10, v3);
  sub_1007545F4();
  (*(v4 + 8))(v6, v3);
  v15._object = 0x80000001007688D0;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007531B4(v15);
  result = sub_100754644();
  __break(1u);
  return result;
}

uint64_t sub_1001A2F58@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_10074CD14();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v6, qword_10097E3A8);
  v38 = v7;
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  sub_100746FE4();
  sub_100746FA4();
  v37 = v9;
  v14(v9, v12, v6);
  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder);
  v59[8] = sub_1007433C4();
  v59[9] = &protocol witness table for UIView;
  v59[5] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = sub_10074F3F4();
  v59[3] = v19;
  v59[4] = sub_1001A418C(&qword_10092AC70, &type metadata accessor for Feature);
  v20 = sub_10000D134(v59);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
  sub_10074FC74();
  sub_10000C620(v59);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v3 + 8))(v5, v35);
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v21 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder);
    v22 = sub_100016C60(0, &qword_1009236D0);
    v23 = v21;
    v24 = &protocol witness table for UILabel;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = v22;
  v58 = v24;
  v54 = v21;
  v25 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder);
  v52 = sub_100016C60(0, &qword_1009236D0);
  v53 = &protocol witness table for UILabel;
  v50 = &protocol witness table for UILabel;
  v51 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder);
  v49 = v52;
  v48 = v26;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v27 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder);
  v40 = sub_100016C60(0, &qword_100922300);
  v41 = &protocol witness table for UIView;
  v39 = v27;
  v28 = sub_100747084();
  v29 = v36;
  v36[3] = v28;
  v29[4] = sub_1001A418C(&qword_10092B3F0, &type metadata accessor for SmallLockupLayout);
  v29[5] = sub_1001A418C(&qword_10092C580, &type metadata accessor for SmallLockupLayout);
  sub_10000D134(v29);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  sub_100747074();
  return (*(v38 + 8))(v12, v6);
}

uint64_t sub_1001A3470@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_10074CD14();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747814();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MediumLockupCollectionViewCell();
  v13 = [v1 traitCollection];
  sub_10024BBC0(v12);

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder];
  [v14 sizeThatFits:{0.0, 0.0}];
  sub_100747804();
  v15 = *(v7 + 16);
  v37 = v9;
  v38 = v6;
  v15(v9, v12, v6);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder];
  v59 = sub_1007433C4();
  v60 = &protocol witness table for UIView;
  v58 = v16;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder];
    v18 = sub_100016C60(0, &qword_1009236D0);
    v19 = v17;
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v56 = v18;
  v57 = v20;
  v53 = v17;
  v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder];
  v51 = sub_100016C60(0, &qword_1009236D0);
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder];
  v48 = v51;
  v46 = 0;
  v47 = v22;
  v44 = 0u;
  v45 = 0u;
  v23 = objc_opt_self();
  v24 = v16;
  v25 = v21;
  v26 = v22;
  v27 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = sub_10074F3F4();
  v43[3] = v28;
  v43[4] = sub_1001A418C(&qword_10092AC70, &type metadata accessor for Feature);
  v29 = sub_10000D134(v43);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_10074FC74();
  sub_10000C620(v43);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v35 + 8))(v5, v36);
  v41 = sub_100016C60(0, &qword_100922300);
  v42 = &protocol witness table for UIView;
  v40 = v14;
  v30 = sub_100747834();
  v31 = v39;
  v39[3] = v30;
  v31[4] = sub_1001A418C(&qword_10092B3E0, &type metadata accessor for MediumLockupLayout);
  v31[5] = sub_1001A418C(&qword_10092B3E8, &type metadata accessor for MediumLockupLayout);
  sub_10000D134(v31);
  v32 = v14;
  sub_100747824();
  return (*(v7 + 8))(v12, v38);
}

uint64_t sub_1001A3950@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100746A54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920690 != -1)
  {
    swift_once();
  }

  v7 = sub_10000D0FC(v3, qword_10097E958);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder);
  v34 = sub_1007433C4();
  v35 = &protocol witness table for UIView;
  v33 = v8;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder);
    v10 = sub_100016C60(0, &qword_1009236D0);
    v11 = v9;
    v12 = &protocol witness table for UILabel;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v10;
  v32 = v12;
  v28 = v9;
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder);
  v26 = sub_100016C60(0, &qword_1009236D0);
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder);
  v23 = v26;
  v22 = v14;
  v15 = sub_100746A74();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a1[3] = v15;
  a1[4] = sub_1001A418C(&qword_10092B3D0, &type metadata accessor for LargeLockupLayout);
  a1[5] = sub_1001A418C(&qword_10092B3D8, &type metadata accessor for LargeLockupLayout);
  sub_10000D134(a1);
  v16 = v8;
  v17 = v13;
  v18 = v14;
  return sub_100746A64();
}

uint64_t sub_1001A3CC4()
{
  v1 = sub_100750354();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100746A74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LockupPlaceholderView();
  v13.receiver = v0;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  sub_1001A2CF8(v12);
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    [v0 insertSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder] belowSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder] removeFromSuperview];
  }

  sub_1001A41D4(v12, v11);
  sub_10000C518(&qword_10092B3F8);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder] removeFromSuperview];
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder]];
  }

  sub_10000C888(v12, v12[3]);
  sub_1007477B4();
  sub_100751124();
  (*(v2 + 8))(v4, v1);
  return sub_10000C620(v12);
}

id sub_1001A3F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupPlaceholderView()
{
  result = qword_10092B3C0;
  if (!qword_10092B3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A40DC()
{
  result = sub_10074E984();
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

uint64_t sub_1001A418C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A41D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1001A4238()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_iconPlaceholder;
  sub_1007433C4();
  v3 = sub_1007431D4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_headingPlaceholder;
  sub_100743794();
  v5 = sub_100743754();
  v7 = sub_10071B540(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_titlePlaceholder;
  v9 = sub_100743784();
  v11 = sub_10071B540(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_subtitlePlaceholder;
  v13 = sub_100743734();
  v15 = sub_10071B540(v13, v14, UIFontTextStyleFootnote);

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.smallLockup(_:);
  v19 = sub_10074E984();
  (*(*(v19 - 8) + 104))(v1 + v17, v18, v19);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21LockupPlaceholderView_wantsHeadingTextPlaceholder) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1001A43F4()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10000C518(&unk_1009231A0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A57A0;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v38[1] = type metadata accessor for ActionDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 56) = 0xD000000000000028;
  *(v6 + 64) = 0x800000010076F0A0;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = sub_1001A4C60;
  *(v6 + 112) = v5;
  v7 = v0;

  sub_100741484();
  v8 = sub_100741464();
  v10 = v9;
  v11 = *(v2 + 8);
  v41 = v1;
  v42 = v2 + 8;
  v11(v4, v1);
  v43 = v8;
  v44 = v10;
  sub_1007544E4();

  v12 = v39;
  *(v39 + 32) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 56) = 0xD000000000000025;
  *(v14 + 64) = 0x800000010076F0D0;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = sub_1001A4CB8;
  *(v14 + 112) = v13;
  v15 = v7;

  sub_100741484();
  v16 = sub_100741464();
  v18 = v17;
  v11(v4, v1);
  v43 = v16;
  v44 = v18;
  sub_1007544E4();

  v12[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = swift_allocObject();
  *(v20 + 56) = 0xD000000000000029;
  *(v20 + 64) = 0x800000010076F100;
  *(v20 + 72) = 0u;
  *(v20 + 88) = 0u;
  *(v20 + 104) = sub_1001A4D10;
  *(v20 + 112) = v19;
  v21 = v15;

  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v11(v4, v41);
  v43 = v22;
  v44 = v24;
  sub_1007544E4();

  v12[6] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  v26 = swift_allocObject();
  *(v26 + 56) = 0xD00000000000002DLL;
  *(v26 + 64) = 0x800000010076F130;
  *(v26 + 72) = 0u;
  *(v26 + 88) = 0u;
  *(v26 + 104) = sub_1001A4D30;
  *(v26 + 112) = v25;
  v27 = v21;

  sub_100741484();
  v28 = sub_100741464();
  v30 = v29;
  v31 = v41;
  v11(v4, v41);
  v43 = v28;
  v44 = v30;
  sub_1007544E4();

  v12[7] = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007A5CF0;
  type metadata accessor for DebugSection();
  v33 = swift_allocObject();
  sub_100741484();
  v34 = sub_100741464();
  v36 = v35;
  v11(v4, v31);
  v33[2] = v34;
  v33[3] = v36;
  v33[4] = 0;
  v33[5] = 0xE000000000000000;
  v33[6] = v12;
  *(v32 + 32) = v33;
  return v32;
}

uint64_t sub_1001A48E8(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(void))
{
  v8 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100052F00(v10);
  }

  a3(0);
  swift_allocObject();
  a4();
  a5();

  return (*(v12 + 8))(v10, v11);
}

uint64_t sub_1001A4A68(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100052F00(v4);
  }

  sub_10074E0D4();
  swift_allocObject();
  v8 = sub_10074E0B4();
  sub_1003C1528(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

id sub_1001A4BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A4C28()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1001A4D60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_materialView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) init];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView;
  v14 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_materialView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_materialView]];
  v17 = *&v12[v13];
  v17[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_kind] = 2;
  v18 = v17;
  v19 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  [*&v12[v13] setAlpha:0.5];
  v20 = *&v12[v13];
  v21 = [v20 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v22 = *&v12[v13];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v24 = *&v15[v16];
  sub_10000C518(&unk_1009231A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A7210;
  v26 = objc_opt_self();
  v27 = v24;
  result = [v26 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v25 + 32) = result;
    *(v25 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
    sub_1001A5B04();
    isa = sub_100753294().super.isa;

    [v27 setBackgroundEffects:isa];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1001A5218()
{
  v1 = v0;
  v2 = sub_10074DDF4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ShelfBackgroundMaterialGradientColors.oneColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    sub_10000C518(&unk_1009231A0);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007A5CF0;
    result[4] = v8;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.twoColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10000C518(&unk_1009231A0);
    result = swift_allocObject();
    v10 = *v6;
    *(result + 1) = xmmword_1007A7210;
    *(result + 2) = v10;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.threeColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    sub_10000C518(&unk_1009231A0);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007AC000;
    result[4] = v11;
    *(result + 5) = vextq_s8(*(v6 + 8), *(v6 + 8), 8uLL);
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.fourColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10000C518(&unk_1009231A0);
    result = swift_allocObject();
    v12 = *v6;
    v13 = *(v6 + 1);
    *(result + 1) = xmmword_1007A57A0;
    *(result + 2) = v12;
    *(result + 3) = v13;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1001A552C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007457B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074DDF4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *(sub_10000C518(&qword_1009245B8) + 48);
    (*(v9 + 32))(v12, v7, v8);
    v14 = sub_100748E34();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v41 = v12;
    v15 = sub_1001A5218();
    v16 = v15;
    v44 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView];
    v42 = v9;
    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      do
      {
        v47 = _swiftEmptyArrayStorage;
        v19 = sub_1007545C4();
        if ((v18 & 0x8000000000000000) == 0)
        {
          v40 = v8;
          v20 = 0;
          v8 = 0;
          v21 = 0;
          v45 = v16 & 0xFFFFFFFFFFFFFF8;
          v46 = v16 & 0xC000000000000001;
          v43 = v16;
          v16 += 32;
          do
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v21)
            {
              goto LABEL_48;
            }

            if (!v17)
            {
              goto LABEL_39;
            }

            v23 = v8 % v17;
            if (v46)
            {
              v24 = sub_100754574();
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_40;
              }

              if (v23 >= *(v45 + 16))
              {
                goto LABEL_41;
              }

              v24 = *(v16 + 8 * v23);
            }

            v25 = v24;
            v26 = v2;
            v27 = [v2 traitCollection];
            v28 = [v27 userInterfaceStyle];

            v29 = 0.3;
            if (v28 == 2)
            {
              v29 = 0.5;
            }

            v30 = [v25 colorWithAlphaComponent:v29];

            sub_1007545A4();
            v2 = v47[2];
            sub_1007545D4();
            sub_1007545E4();
            v19 = sub_1007545B4();
            v21 = v8 == v17;
            if (v8 == v17)
            {
              v8 = 0;
            }

            else
            {
              v31 = __OFADD__(v8++, 1);
              if (v31)
              {
                goto LABEL_43;
              }
            }

            ++v20;
            v2 = v26;
          }

          while (v22 != v18);
          *&v44[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v47;

          sub_100037ED0();
          v47 = _swiftEmptyArrayStorage;
          v19 = sub_10001E46C(0, v18, 0);
          v16 = 0;
          v32 = 0;
          v33 = 0;
          v34 = v47;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v33)
            {
              goto LABEL_49;
            }

            v47 = v34;
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            if (v36 >= v35 >> 1)
            {
              v19 = sub_10001E46C((v35 > 1), v36 + 1, 1);
              v34 = v47;
            }

            *(v34 + 16) = v36 + 1;
            *(v34 + 8 * v36 + 32) = v32 / v17;
            v33 = v32 == v17;
            if (v32 == v17)
            {
              v32 = 0;
            }

            else
            {
              v31 = __OFADD__(v32++, 1);
              if (v31)
              {
                goto LABEL_44;
              }
            }

            ++v16;
            if (v8 == v18)
            {

              v37 = v44;
              sub_100037D2C(v34);
              if (v17 == 4)
              {
                v38 = 0.0;
              }

              else
              {
                v38 = 0.5;
              }

              v39 = [v37 layer];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v38, 0.0}];

              [v37 setNeedsDisplay];
              [v26 setNeedsLayout];
              (*(v42 + 8))(v41, v40);
              return;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v19 = sub_100754664();
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v17 = v19;
        v18 = v19 + 1;
      }

      while (!__OFADD__(v19, 1));
    }

    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension37MaterialGradientSectionBackgroundView_gradientView] + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = _swiftEmptyArrayStorage;

    sub_100037ED0();
    sub_100037D2C(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_1001A5B04()
{
  result = qword_10092BE10;
  if (!qword_10092BE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092BE10);
  }

  return result;
}

uint64_t sub_1001A5B50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1001A5BA4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = ObjectType;
    v6 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v7 = a1;
    sub_1001A6F64(&v29, v7);
    swift_endAccess();

    v8 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase;
    v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase);
    if ((v9 - 1) >= 2)
    {
      if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase))
      {
        [v7 setAlpha:1.0];
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
      if (v10)
      {
        sub_10000C518(&unk_1009231A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007A5CF0;
        *(inited + 32) = v7;
        v12 = v7;
        v13 = v10;
        sub_1001A8BD4(inited);
        v15 = v14;
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v5;
        v17 = objc_allocWithZone(UIViewPropertyAnimator);
        if (v9 == 1)
        {
          v27 = sub_1001A8F10;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_10086B280;
        }

        else
        {
          v27 = sub_1001A8ED8;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_10086B230;
        }

        v25 = sub_1000CF7B0;
        v26 = v18;
        v21 = _Block_copy(&v23);

        v22 = [v17 initWithDuration:v21 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0, v23, v24}];
        _Block_release(v21);
        v7 = v22;
        [v13 fractionComplete];
        [v7 setFractionComplete:?];
        [v7 startAnimation];

        goto LABEL_18;
      }

      *(v2 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
    }

    v19 = *(v2 + v6);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_100754434();

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v2 + v8) == 3 && !UIAccessibilityIsReduceMotionEnabled())
      {
        sub_1001A627C();
      }

      goto LABEL_18;
    }

    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:
  }
}

id sub_1001A5F10()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v4 = ObjectType;
    if (sub_100754664())
    {
      sub_1001A8BD4(_swiftEmptyArrayStorage);
      v2 = v5;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v4;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews] = v2;
  v0[OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase] = 3;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_1001A5FF8()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
  }

  v3 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1007543F4();
    sub_100009D34();
    sub_1001AA338(&qword_10092B4B0, sub_100009D34);
    sub_1007534A4();
    v6 = v20;
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_1001A8F34();

      return;
    }

    while (1)
    {
      [v18 setAlpha:1.0];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_100754464())
      {
        sub_100009D34();
        swift_dynamicCast();
        v18 = v19;
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1001A627C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_100754434();

    if (v3)
    {
LABEL_3:
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 0;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1001A8F74;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A67C4;
      aBlock[3] = &unk_10086B2D0;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.8];
      _Block_release(v5);

      v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = v7;
      v9 = v7;
      [v8 invalidate];

      v10 = [objc_opt_self() mainRunLoop];
      [v10 addTimer:v9 forMode:NSRunLoopCommonModes];

      return;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  sub_1001A5FF8();
}

void sub_1001A6478()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
    *(Strong + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = 0;
    v2 = Strong;
    [v1 invalidate];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1001A6520();
  }
}

void sub_1001A6520()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001A5FF8();
    return;
  }

  v4 = sub_100754434();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 1;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1001AA3A4;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000CF7B0;
  v18 = &unk_10086B320;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1001A8F7C;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1001A5B50;
  v18 = &unk_10086B348;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_1001A67C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1001A682C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1001A5FF8();
    return;
  }

  v4 = sub_100754434();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1001AA3A8;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000CF7B0;
  v18 = &unk_10086B398;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1001A8FAC;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1001A5B50;
  v18 = &unk_10086B3C0;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}