id sub_1005E8898()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  if (v1 >> 62 != 1)
  {
    sub_10012BAC0(*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32));
    goto LABEL_6;
  }

  v6 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  v7 = v2;
  swift_bridgeObjectRetain_n();
  v23 = v6;
  v8 = v7;
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v8 setFrame:{v10, v12, v14, v16}];
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v4;
  result = [result view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1005C405C();
  [v18 insertSubview:v8 aboveSubview:v19];

  v20 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 deactivateConstraints:isa];

  sub_1005DB5C0(v23, v8, v3, 1);

  v4 = v22;
LABEL_6:
  sub_1005E15A8(2, 1);
  sub_1005D1674(1, 0);

  return sub_10012BB6C(v1, v2, v3, v4, v5);
}

void sub_1005E8AD8()
{
  v1 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v42 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v44 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  v45 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  sub_10012BAC0(v3, v2, v4, v5, v6);
  sub_1005DAD10(0);
  v39 = v3 >> 62;
  v43 = v6;
  if (!(v3 >> 62))
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    v10 = v5;
    v11 = v6;

    [v8 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v8 setFrame:{v13, v15, v17, v19}];
    v20 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v20)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v21 = [v20 view];
    if (!v21)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v22 = v21;
    v23 = sub_1005C405C();
    [v22 insertSubview:v8 aboveSubview:v23];

    v24 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v24 deactivateConstraints:isa];

    sub_10012BB6C(v3, v2, v4, v5, v43);
  }

  v40 = v4;
  v41 = v3;
  v26 = v0;
  sub_1005E15A8(3, 1);
  v27 = *(v1 + 16);
  v47[0] = *v1;
  v47[1] = v27;
  v47[2] = *(v1 + 32);
  v48 = *(v1 + 48);
  v28 = *v1;
  v29 = *(v1 + 8);
  v30 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = *(v1 + 32);
  *v1 = 0x8000000000000000;
  v42[1] = 0u;
  v42[2] = 0u;
  *v42 = 0u;
  sub_1005EB280(v47, v46);
  sub_10012BB6C(v28, v29, v30, v31, v32);
  sub_1005D7D3C(v47);
  sub_1005EB2B8(v47);
  v33 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v34 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v34)
  {
    __break(1u);
    goto LABEL_12;
  }

  v35 = v34;
  sub_1001B6A0C(0, 1);

  v36 = *(v26 + v33);
  if (!v36)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = *&v36[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v37)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v38 = v36;
  [v37 setSelected:0];
  sub_1001C30CC();
  sub_1001C36E8();

  if (!v39)
  {
    v46[0] = v41;
    v46[1] = v2;
    v46[2] = v40;
    v46[3] = v5;
    v46[4] = v43;
    v46[5] = v45;
    v46[6] = v44;
    sub_1005DBD58(v46, 1);
  }

  sub_10012BB6C(v41, v2, v40, v5, v43);
}

uint64_t sub_1005E8E30(unsigned __int8 a1)
{
  v2 = a1;
  v3 = (v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v4 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v5 = v4 >> 62;
  if (v2 > 1)
  {
    if (!v5)
    {
      return 3;
    }

    if (v5 != 1)
    {
      return 0;
    }

    v15 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem);
    if (!v15)
    {
      return 0;
    }

    v16 = [v15 metadataObject];
    if (!v16)
    {
      return 0;
    }

    v17 = v16;
    v18 = [v16 innermostModelObject];

    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {

      return 0;
    }

    v20 = v19;
    type metadata accessor for LyricsLoader();
    LOBYTE(v20) = static LyricsLoader.supportsLyrics(for:)(v20);

    if (v20)
    {
      return 3;
    }
  }

  else
  {
    if (!v5)
    {
      return 2;
    }

    if (v5 == 1)
    {
      v6 = v3[3];
      v7 = v3[4];
      v9 = v3[1];
      v8 = v3[2];
      v10 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = (v4 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_10012BAC0(v4, v9, v8, v6, v7);
      sub_1002AC9FC(v12, v13);

      if (v13)
      {
        sub_1002AC8A4(v12, v13);
        return 1;
      }

      sub_1002AC8A4(v12, 0);
    }
  }

  return 0;
}

void sub_1005E8FAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 1;
  if (v1 != 1)
  {
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
    if (v3)
    {
      [v3 invalidate];
      v3 = *(v0 + v2);
    }

    *(v0 + v2) = 0;
  }
}

void sub_1005E9024(char *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011978A8);
  __chkstk_darwin(v4 - 8);
  v112 = &v110 - v5;
  v6 = type metadata accessor for UIView.Corner.Radius();
  v110 = *(v6 - 8);
  v111 = v6;
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v10 = [a1 isReversed];
  v11 = [v2 presentationController];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [v2 presentingViewController];
  if (v14)
  {
    v15 = v14;
    type metadata accessor for TabBarController();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0 smoothness:6.0];
  if (v16)
  {
    v18 = v16;
    v19 = [v18 tabBar];
    v20 = [v19 traitCollection];

    v21 = [v20 userInterfaceStyle];
    [v17 setAdaptiveStyle:v21];
  }

  if (v13)
  {
    [v13 _setLargeBackground:v17];
    [v13 _setNonLargeBackground:v17];
  }

  v116 = v17;
  v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal] = v10;
  if (v10)
  {
    v22 = sub_1005CD758();
    [v22 setHidden:1];

    sub_1005C4C78();
  }

  if ((*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] & 0x8000000000000000) != 0 && (v23 = [v2 traitCollection], v24 = objc_msgSend(v23, "horizontalSizeClass"), v23, v24 == 1))
  {
    v25 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v25)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v26 = *(v25 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
    v27 = [v26 layer];
    [v27 setAllowsGroupOpacity:0];

    if (v10)
    {
      v28 = 1.0;
    }

    else
    {
      v28 = 0.0;
    }

    [v26 setAlpha:v28];

    if (!sub_1005DA588())
    {
      v29 = sub_1005C405C();
      [v29 setAlpha:v28];
    }

    v115 = v16;
    if (!v10)
    {
LABEL_24:
      v30 = sub_1005D01F0();
LABEL_33:
      v40 = 0.0;
      goto LABEL_34;
    }
  }

  else
  {
    v31 = OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView;
    v32 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
    if (!v32)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v33 = [v32 layer];
    [v33 setAllowsGroupOpacity:0];

    v34 = *&v2[v31];
    if (!v34)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v35 = 0.0;
    if (v10)
    {
      v35 = 1.0;
    }

    [v34 setAlpha:v35];
    v115 = v16;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v36 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v36)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v38 = v37;
  [v37 setAutoresizingMask:0];

  v30 = sub_1005D01F0();
  v39 = sub_1005DA588();
  v40 = 1.0;
  if (!v39)
  {
    goto LABEL_33;
  }

LABEL_34:
  [v30 setAlpha:v40];

  v41 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v42 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v42)
  {
    __break(1u);
    goto LABEL_71;
  }

  v43 = *(v42 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView);
  if (!v43)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v114 = v13;
  v44 = 0.0;
  if (v10)
  {
    v44 = 1.0;
  }

  [v43 setAlpha:v44];
  v45 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v46 = sub_1002752B8();

    if (v46)
    {
      v47 = *&v2[v41];
      if (!v47)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 3 || !*(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
      {
        if (v10)
        {
          v48 = *(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v48)
          {
            v49 = v48;
            v50 = [v2 traitCollection];
            [v50 displayCornerRadius];
            v52 = v51;

            v53 = *&v49[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
            v54 = &v53[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
            swift_beginAccess();
            v55 = *(type metadata accessor for Artwork(0) + 28);
            v56 = v55 + *(type metadata accessor for Artwork.Decoration(0) + 20);
            v57 = type metadata accessor for UIView.Corner();
            if ((*(*(v57 - 8) + 48))(&v54[v56], 1, v57))
            {
              swift_endAccess();
              v58 = 0;
            }

            else
            {
              v59 = v53;
              UIView.Corner.radius.getter();
              swift_endAccess();

              [*&v49[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] bounds];
              UIView.Corner.Radius.value(in:)();
              v58 = v60;
              (*(v110 + 8))(v9, v111);
            }

            v61 = v49;
            sub_1005DDEFC(1, 0);
            sub_1005C6A74(1);
            v62 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer;
            v63 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
            if (v63)
            {
              [v63 removeFromSuperview];
            }

            sub_1005D90E0(0);
            v64 = type metadata accessor for MorphingMotionArtwork(0);
            v65 = v112;
            (*(*(v64 - 8) + 56))(v112, 1, 1, v64);
            v66 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
            swift_beginAccess();
            sub_10006B010(v65, &v2[v66], &qword_1011978A8);
            swift_endAccess();
            v67 = *&v2[v62];
            *&v2[v62] = 0;

            v68 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
            v69 = [*&v49[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] layer];
            [v69 setCornerCurve:kCACornerCurveContinuous];

            v70 = [*&v49[v68] layer];
            [v70 setCornerRadius:v52];

            v71 = swift_allocObject();
            *(v71 + 16) = v61;
            *(v71 + 24) = v58;
            v72 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator;
            v73 = v61;
            v74 = v113;
            v75 = *&v113[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
            v76 = swift_allocObject();
            v76[2] = sub_1005EA660;
            v76[3] = v71;
            v76[4] = v75;
            v77 = v75;
            v78 = v73;
            v79 = v77;

            UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v76);

            v80 = swift_allocObject();
            *(v80 + 16) = v78;
            v81 = *&v74[v72];
            v82 = swift_allocObject();
            v82[2] = sub_1005EA66C;
            v82[3] = v80;
            v82[4] = v81;
            v83 = v81;
            v84 = v78;
            v85 = v83;

            UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v82);
          }
        }
      }
    }
  }

  v86 = objc_opt_self();
  v87 = [v86 currentDevice];
  v88 = [v87 userInterfaceIdiom];

  if (v88 == 1)
  {
    goto LABEL_64;
  }

  if (!*&v2[v45])
  {
    goto LABEL_64;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v89 = v118;
  if (v118 == 255)
  {
    goto LABEL_64;
  }

  sub_10004ADFC(v117, v118);
  if (v89)
  {
    goto LABEL_64;
  }

  v90 = *&v2[v41];
  if (v90)
  {
    if (*(v90 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) == 3 || !*(v90 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
    {
      if (v10)
      {
        v91 = *(v90 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v91)
        {
          LOBYTE(v117) = 11;
          v92 = sub_100025CE0();
          v93 = v91;
          if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v92) & 1) == 0 || (v94 = [v86 currentDevice], v95 = objc_msgSend(v94, "userInterfaceIdiom"), v94, v95 != 1))
          {
            sub_10065E888();
            sub_10065E9C0();
          }

          v96 = swift_allocObject();
          *(v96 + 16) = v93;
          v97 = *&v113[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
          v98 = swift_allocObject();
          v98[2] = sub_1005EA658;
          v98[3] = v96;
          v98[4] = v97;
          v99 = v97;
          v100 = v93;
          v101 = v99;

          UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v98);
        }
      }
    }

LABEL_64:
    v102 = *&v2[v41];
    if (v102)
    {
      v103 = *(v102 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      v104 = v114;
      v105 = v115;
      v106 = v116;
      if (!v103 || !v10)
      {
        goto LABEL_69;
      }

      v107 = v103;
      v108 = [v2 view];
      if (v108)
      {
        v109 = v108;
        [v108 addSubview:v107];

LABEL_69:
        return;
      }

      goto LABEL_78;
    }

    goto LABEL_72;
  }

LABEL_80:
  __break(1u);
}

void sub_1005E9BF8(char *a1)
{
  v3 = [a1 isReversed];
  v4 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v4 >> 62 == 1)
  {
    v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = 0;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  *(v7 + 32) = v5;
  v8 = *&a1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
  v9 = swift_allocObject();
  v9[2] = sub_1005EA60C;
  v9[3] = v7;
  v9[4] = v8;
  v10 = v8;
  v11 = v1;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EA618, v9);

  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v3;
  v13 = *&a1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator];
  v14 = swift_allocObject();
  v14[2] = sub_1005EA624;
  v14[3] = v12;
  v14[4] = v13;
  v15 = v13;
  v16 = v11;
  v17 = v15;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, sub_1005EBEAC, v14);

  v18 = [v16 presentationController];
  if (v18)
  {
    v19 = v18;
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v20;
  *(v21 + 32) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1005EA630;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v24 = *&a1[v23];
  v25 = v20;

  v26 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_10049974C(0, v24[2] + 1, 1, v24);
    *&a1[v23] = v24;
  }

  v29 = v24[2];
  v28 = v24[3];
  if (v29 >= v28 >> 1)
  {
    v24 = sub_10049974C((v28 > 1), v29 + 1, 1, v24);
  }

  v24[2] = v29 + 1;
  v30 = &v24[2 * v29];
  v30[4] = sub_100547098;
  v30[5] = v22;
  *&a1[v23] = v24;
  swift_endAccess();
}

unint64_t sub_1005E9F44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BD00, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005E9F90()
{
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData) = 0;
  v1 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData;
  *(v1 + 2) = 0;
  *v1 = 512;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  v3 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState) = 0;
  v4 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
  *(v0 + v4) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) = 0;
  v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  v6 = type metadata accessor for VideoArtwork();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_fullScreenMorphingMotionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_regularMorphingMotionConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) = 1;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions) = _swiftEmptyArrayStorage;
  v7 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  *v7 = 0x8000000000000000;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) = 0;
  v8 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_windowEventNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver) = 0;
  v9 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *(v0 + v9) = swift_allocObject();
  v10 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame);
  *v10 = 0u;
  v10[1] = 0u;
  *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005EA348()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v2 >> 62 == 1)
  {
    v10 = (v2 & 0x3FFFFFFFFFFFFFFFLL);
    v3 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (v3)
    {
      v4 = v1[1];
      v5 = v1[2];
      v6 = v1[3];
      v7 = v1[4];
      v8 = *((swift_isaMask & *v3) + 0x190);
      sub_10012BAC0(v2, v4, v5, v6, v7);
      sub_10012BAC0(v2, v4, v5, v6, v7);
      v9 = v3;
      LOBYTE(v6) = v8();

      if (v6)
      {
        [v4 layoutIfNeeded];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005EA4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1005E09AC(a1, v4, v5, v7, v6);
}

id sub_1005EA588(id result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_1005EA59C(result, a2, a3, a4, SBYTE1(a4));
  }

  return result;
}

id sub_1005EA59C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_1005EA5C8(result);
  }

  return result;
}

id sub_1005EA5C8(id result)
{
  if (result)
  {
    v1 = result;

    return v1;
  }

  return result;
}

id sub_1005EA6C8()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setAlpha:1.0];
  result = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (result)
  {

    return [result setAlpha:0.0];
  }

  return result;
}

id sub_1005EA7FC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*(v0 + 16))();
  v3 = *(v2 + 32);

  return [v3 convertRect:v1 fromCoordinateSpace:?];
}

uint64_t sub_1005EA878(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1005EA8C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1005EA91C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005EA980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005EA9E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1005EAA44()
{
  v1 = 0.0;
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = 1.0;
    if (*(*(v0 + 32) + OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning))
    {
      v1 = 0.0;
    }
  }

  return [*(v0 + 16) setAlpha:v1];
}

uint64_t sub_1005EAAC4()
{

  return swift_deallocObject();
}

unint64_t sub_1005EAB38()
{
  result = qword_101197938;
  if (!qword_101197938)
  {
    sub_1001109D0(&qword_101197920);
    sub_1005EABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197938);
  }

  return result;
}

unint64_t sub_1005EABC4()
{
  result = qword_101197940;
  if (!qword_101197940)
  {
    sub_1001109D0(&qword_101197918);
    sub_1005EAC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197940);
  }

  return result;
}

unint64_t sub_1005EAC50()
{
  result = qword_101197948;
  if (!qword_101197948)
  {
    sub_1001109D0(&qword_101197910);
    sub_1005EACDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197948);
  }

  return result;
}

unint64_t sub_1005EACDC()
{
  result = qword_101197950;
  if (!qword_101197950)
  {
    sub_1001109D0(&qword_101197908);
    sub_1001109D0(&qword_1011978F8);
    sub_1001109D0(&qword_1011978F0);
    sub_1001109D0(&qword_101188300);
    sub_100020674(&qword_101197958, &qword_101188300);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197950);
  }

  return result;
}

uint64_t sub_1005EAE58()
{
  type metadata accessor for MorphingMotionArtwork(0);

  return sub_1005E6F34();
}

uint64_t sub_1005EAEB8()
{
  v1 = (type metadata accessor for MorphingMotionArtwork(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1005EAFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for MorphingMotionArtwork(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1005EB0D8()
{

  return swift_deallocObject();
}

uint64_t sub_1005EB13C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1005DFF54(a1);
}

unint64_t sub_1005EB32C(unint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10012BB6C(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1005EB340(unint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_10012BAC0(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1005EB354()
{

  return swift_deallocObject();
}

id sub_1005EB3E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

id sub_1005EB424()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

__n128 sub_1005EB4A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[3] = result;
  v1[4].n128_u8[0] = v2;
  return result;
}

unint64_t sub_1005EB4B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BD68, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1005EB504()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1005EB7F8;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B6E68;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1005EA878(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_1005EB7F8()
{
  if ([*(v0 + 16) isViewLoaded])
  {
    sub_1005C6A74(0);
  }
}

id sub_1005EB860(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setAlpha:?];
  }

  return result;
}

uint64_t sub_1005EB8E0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1005D0848(a1, v4);
}

double sub_1005EB9A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  static Date.timeIntervalSinceReferenceDate.getter();
  v6 = v3 + (v5 - v1) * v4;
  if (v6 >= v2)
  {
    v6 = v2;
  }

  return fmax(v6, 0.0);
}

uint64_t sub_1005EBA14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005EBA5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005EBAB8()
{
  result = qword_101197A40;
  if (!qword_101197A40)
  {
    sub_1001109D0(&qword_101197A48);
    sub_1001109D0(&qword_101197928);
    sub_1001109D0(&qword_101197920);
    sub_1005EAB38();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101197958, &qword_101188300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197A40);
  }

  return result;
}

unint64_t sub_1005EBC08()
{
  result = qword_101197A50;
  if (!qword_101197A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197A50);
  }

  return result;
}

id sub_1005EBF0C()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  [result setAutoresizingMask:18];

  result = [v0 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [result layer];

  [v4 setAllowsGroupBlending:0];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = [result layer];

  [v6 setAllowsGroupOpacity:0];
  result = [v0 view];
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl;
    [result addSubview:*&v0[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl]];

    v9 = *&v0[v8];
    static CGSize.greatestFiniteSize.getter();
    [v9 sizeThatFits:?];
    v11 = v10;
    v13 = v12;

    [v0 setPreferredContentSize:{v11, v13}];
    sub_10010FC20(&unk_101182D80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    *(v14 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v14 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_1005EC180()
{
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl;
  v2 = *&v0[OBJC_IVAR____TtC5Music27RatingControlViewController_ratingControl];
  static CGSize.greatestFiniteSize.getter();
  [v2 sizeThatFits:?];
  v4 = v3;
  v6 = v5;

  [v0 preferredContentSize];
  if (v4 != v8 || v6 != v7)
  {
    [v0 setPreferredContentSize:{v4, v6}];
  }

  result = [v0 view];
  if (result)
  {
    v11 = result;
    CGRect.centeringAlong(axes:in:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [*&v0[v1] frame];
    v26.origin.x = v20;
    v26.origin.y = v21;
    v26.size.width = v22;
    v26.size.height = v23;
    v25.origin.x = v13;
    v25.origin.y = v15;
    v25.size.width = v17;
    v25.size.height = v19;
    result = CGRectEqualToRect(v25, v26);
    if ((result & 1) == 0)
    {
      return [*&v0[v1] setFrame:{v13, v15, v17, v19}];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005EC334(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount] = a1;
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating] = a2;
  v3 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer] = v3;
  v4 = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer] = v4;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  sub_1005EC82C();
  v6 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer;
  [v5 addGestureRecognizer:*&v5[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_panGestureRecognizer]];
  [*&v5[v6] addTarget:v5 action:"panGestureRecognized:"];
  v7 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer;
  [v5 addGestureRecognizer:*&v5[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_tapGestureRecognizer]];
  [*&v5[v7] addTarget:v5 action:"tapGestureRecognized:"];

  return v5;
}

void sub_1005EC4FC()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1007E9C28(0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v3 = *(v2 + 32);
  }

  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;
  v8 = *&v0[v1];
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_19:

    return;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v9 < 1)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = sub_1007E9C28(v10, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    ++v10;
    [v12 setFrame:{v11, 0.0, v5, v7}];

    v11 = v5 + 10.0 + v11;
  }

  while (v9 != v10);
}

uint64_t sub_1005EC82C()
{
  v1 = v0;
  v23 = type metadata accessor for UIButton.Configuration();
  v19 = *(v23 - 8);
  v2 = __chkstk_darwin(v23);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  static UIButton.Configuration.plain()();
  v7 = [objc_opt_self() clearColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v8 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.visualEffect.setter();
  v8(aBlock, 0);
  v22 = v6;
  result = UIButton.Configuration.contentInsets.setter();
  v10 = *&v0[OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount];
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v10)
    {
      v11 = sub_100009F78(0, &qword_101183A18);
      v12 = 0;
      v20 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
      v21 = v11;
      v13 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
      v14 = *(v19 + 16);
      do
      {
        v14(v4, v22, v23);
        v15 = UIButton.init(configuration:primaryAction:)();
        [v15 setUserInteractionEnabled:0];
        aBlock[4] = sub_1005ECB74;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10027D328;
        aBlock[3] = &unk_1010B7348;
        v16 = _Block_copy(aBlock);
        [v15 setConfigurationUpdateHandler:v16];
        _Block_release(v16);
        if (v12 < *&v1[v20])
        {
          [v15 setSelected:1];
        }

        [v1 addSubview:v15];
        swift_beginAccess();
        v17 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v1[v13] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v18 = *((*&v1[v13] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v12;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      while (v10 != v12);
    }

    return (*(v19 + 8))(v22, v23);
  }

  return result;
}

void sub_1005ECB74(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  if ([a1 state] == 4)
  {
    if (qword_10117F948 != -1)
    {
      swift_once();
    }

    v8 = &qword_101197A68;
  }

  else
  {
    if (qword_10117F940 != -1)
    {
      swift_once();
    }

    v8 = &qword_101197A60;
  }

  v9 = *v8;
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {

    sub_1005ED588(v7, v5);
    UIButton.configuration.setter();

    sub_1005ED5F8(v7);
  }

  else
  {
    if (qword_10117F950 != -1)
    {
      swift_once();
    }

    v11 = qword_101197A70;
    v12 = String._bridgeToObjectiveC()();

    v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

    if (v13)
    {
      v14 = [v13 imageWithTintColor:v9 renderingMode:1];
    }

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }
}

void sub_1005ECE34(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = a1;
  if ([v4 state] == 3)
  {
    [v4 locationInView:v6];
    sub_1005ECEB8(v5);
  }
}

void sub_1005ECEB8(CGFloat a1)
{
  v5 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_59;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1007E9C28(0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v7 = *(v6 + 32);
  }

  [v7 frame];
  if (CGRectGetMinX(v25) > a1)
  {
    v3 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
    v8 = *(v2 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating);
    *(v2 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating) = 0;
    if (!v8)
    {

      return;
    }

    v24 = v7;
    v6 = *(v2 + v5);
    v1 = v2;
    if (!(v6 >> 62))
    {
      v5 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

      if (v5)
      {
        v9 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = sub_1007E9C28(v9, v6);
          }

          else
          {
            if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v10 = *(v6 + 8 * v9 + 32);
          }

          v11 = v10;
          v2 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          [v10 setSelected:v9 < *(v1 + v3)];

          ++v9;
        }

        while (v2 != v5);
      }

      return;
    }

LABEL_65:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_10;
  }

LABEL_20:
  while (1)
  {
    v12 = Int.seconds.getter(0x7FFFFFFFFFFFFFFFLL);
    v1 = *(v2 + v5);
    v6 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v6)
    {
      break;
    }

    v23 = v5;
    v24 = v2;
    v5 = 0;
    v3 = 0;
    v13 = 1;
    v2 = &selRef_setContacts_;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E9C28(v5, v1);
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v14 = *(v1 + 8 * v5 + 32);
      }

      v15 = v14;
      v16 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      [v14 center];
      CGPoint.distance(to:)();
      v18 = v17;

      if (v18 < v12)
      {
        v3 = v5;
      }

      v13 &= v18 >= v12;
      if (v18 < v12)
      {
        v12 = v18;
      }

      ++v5;
    }

    while (v16 != v6);

    if (v13)
    {
      return;
    }

    v19 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_64;
    }

    v3 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating;
    v20 = *(v24 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating);
    *(v24 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_rating) = v19;
    if (v20 == v19)
    {
      return;
    }

    v1 = *(v24 + v23);
    v6 = v1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v6)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v21 = sub_1007E9C28(v5, v1);
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v21 = *(v1 + 8 * v5 + 32);
      }

      v22 = v21;
      v2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v21 setSelected:v5 < *(v24 + v3)];

      ++v5;
      if (v2 == v6)
      {
        goto LABEL_49;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

LABEL_49:
}

void sub_1005ED28C()
{
  sub_100009F78(0, &qword_101180C98);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(229, 229, 234, 1.0);
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.2];
  v2 = [v0 _colorBlendedWithColor:v1 compositingFilter:kCAFilterPlusD];

  if (v2)
  {

    qword_101197A60 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_1005ED350()
{
  v0 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  qword_101197A68 = v0;

  return v0;
}

void sub_1005ED384()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 configurationWithTextStyle:v1 scale:-1];

  qword_101197A70 = v2;
}

void sub_1005ED3F4()
{
  UIEdgeInsets.init(value:)();
  qword_101197A78 = v0;
  unk_101197A80 = v1;
  qword_101197A88 = v2;
  unk_101197A90 = v3;
}

id sub_1005ED450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RatingControlViewController.RatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005ED588(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005ED5F8(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1005ED660(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 invalidateIntrinsicContentSize];

  v4 = [a1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 setNeedsLayout];
}

void sub_1005ED700()
{
  v1 = OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starButtons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1007E9C28(0, v2);

    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
LABEL_6:
    [v3 intrinsicContentSize];

    Int.seconds.getter(*(v0 + OBJC_IVAR____TtCC5Music27RatingControlViewControllerP33_74EAAB04F169518A744BEF384CEBD97713RatingControl_starCount));
    return;
  }

  __break(1u);
}

uint64_t sub_1005ED818()
{
  v1 = v0;
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Source();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  MusicAppDestination.SharePageDescriptor.source.getter();
  (*(v7 + 8))(v9, v6);
  v11 = (*(v3 + 88))(v5, v2);
  if (v11 == enum case for MusicAppDestination.SharePageDescriptor.Source.data(_:))
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  if (v11 != enum case for MusicAppDestination.SharePageDescriptor.Source.itemSource(_:))
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  (*(v3 + 96))(v5, v2);
  v13 = *v5;
  v14 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithActivityItems:isa applicationActivities:0];

  v17 = [v1 activityType];
  v18 = [v13 activityViewController:v16 itemForActivityType:v17];

  if (!v18)
  {
LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100016270(v24, v25);
  sub_10000DD18(v25, v24);
  sub_1005F049C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000959C(v25);
    goto LABEL_10;
  }

  v19 = v23;
  v20 = UIImagePNGRepresentation(v23);
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    sub_10000959C(v25);
    return v22;
  }

  sub_10000959C(v25);
  swift_unknownObjectRelease();

  return 0;
}

id sub_1005EDBA4(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  if ((sub_10044BC7C(a1) & 1) == 0)
  {
    goto LABEL_8;
  }

  v26 = a3;
  v27 = a2;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  (*(v9 + 104))(v11, enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:), v8);
  sub_1005F04E8(&unk_101197BB0, &type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31 != v29 || v32 != v30)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v17(v14, v8);

    a3 = v26;
    a2 = v27;
    if ((v16 & 1) == 0 || a1 <= 2u)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_10012BA6C(a3);
    v18 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
    (*(*(v18 - 8) + 8))(a2, v18);
    type metadata accessor for ShareAssetStoryActivity(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = *(v9 + 8);
  v15(v11, v8);
  v15(v14, v8);

  a3 = v26;
  a2 = v27;
  if (a1 > 2u)
  {
    goto LABEL_8;
  }

LABEL_9:
  v4[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork] = a1;
  v20 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  v21 = a3;
  v22 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v4[v20], a2, v22);
  sub_10012B7A8(v21, &v4[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_presentationSource]);
  v24 = type metadata accessor for ShareAssetStoryActivity(0);
  v28.receiver = v4;
  v28.super_class = v24;
  v25 = objc_msgSendSuper2(&v28, "init");
  sub_10012BA6C(v21);
  (*(v23 + 8))(a2, v22);
  return v25;
}

uint64_t sub_1005EE220@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v41 = &v36 - v10;
  v11 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for URLComponents();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v40 = v15;
  v18 = *(v15 + 48);
  v42 = v14;
  if (v18(v13, 1, v14) == 1)
  {
    sub_1000095E8(v13, &qword_101194980);
    v19 = type metadata accessor for URL();
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }

  else
  {
    v36 = v2;
    v38 = a1;
    (*(v40 + 32))(v17, v13, v42);
    URLQueryItem.init(name:value:)();
    v37 = v8;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();

    v21 = URLComponents.queryItems.getter();
    v22 = _swiftEmptyArrayStorage;
    if (v21)
    {
      v22 = v21;
    }

    v43 = v22;
    sub_10010FC20(&unk_101197BC0);
    v23 = *(v3 + 72);
    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v39 = v5;
    v25 = 2 * v23;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100EBE260;
    v27 = v26 + v24;
    v28 = *(v3 + 16);
    v29 = v41;
    v30 = v36;
    v28(v27, v41, v36);
    v31 = v27 + v23;
    v32 = v37;
    v28(v31, v37, v30);
    v33 = v27 + v25;
    v34 = v39;
    v28(v33, v39, v30);
    sub_1001259EC(v26);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v35 = *(v3 + 8);
    v35(v34, v30);
    v35(v32, v30);
    v35(v29, v30);
    return (*(v40 + 8))(v17, v42);
  }
}

uint64_t sub_1005EE7A8()
{
  result = type metadata accessor for MusicAppDestination.SharePageDescriptor();
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

uint64_t sub_1005EE84C()
{
  v1 = v0;
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    return 0x6A2E63696C627570;
  }

  if (v7 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    return 0x6D2E63696C627570;
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v9._countAndFlagsBits = 0x656C646E61686E55;
  v9._object = 0xEF20646E696B2064;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1005EEC10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005EECF8()
{
  result = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
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

uint64_t sub_1005EED94()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1005EEED8()
{
  v1 = v0;
  v121 = type metadata accessor for Date();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v114 = &v104 - v5;
  v6 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v6 - 8);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v104 - v9;
  __chkstk_darwin(v10);
  v112 = &v104 - v11;
  __chkstk_darwin(v12);
  v14 = &v104 - v13;
  v15 = type metadata accessor for MusicAppDestination.SharePageDescriptor();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v104 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v113 = &v104 - v19;
  __chkstk_darwin(v20);
  v110 = &v104 - v21;
  __chkstk_darwin(v22);
  v24 = &v104 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v106 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v107 = &v104 - v29;
  __chkstk_darwin(v30);
  v129 = &v104 - v31;
  v109 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork;
  v32 = v0[OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_socialNetwork];
  v119 = sub_1005ED818();
  v123 = v33;
  v34 = OBJC_IVAR____TtC5Music23ShareAssetStoryActivity_itemDescriptor;
  swift_beginAccess();
  v35 = *(v16 + 16);
  v127 = v16 + 16;
  v126 = v35;
  v35(v24, &v0[v34], v15);
  MusicAppDestination.SharePageDescriptor.url.getter();
  v36 = *(v16 + 8);
  v115 = v15;
  *&v128 = v16 + 8;
  v125 = v36;
  v36(v24, v15);
  v122 = v26;
  v37 = *(v26 + 48);
  v130 = v25;
  v38 = v37(v14, 1, v25);
  v39 = v14;
  v40 = v1;
  sub_1000095E8(v39, &qword_101183A20);
  v124 = v32;
  if (v38 == 1)
  {
    if (v32 > 2)
    {

      LOBYTE(v32) = v124;
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = v1;
      LOBYTE(v32) = v124;
      if ((v41 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    URL.init(string:)();
    swift_beginAccess();
    MusicAppDestination.SharePageDescriptor.url.setter();
    swift_endAccess();
  }

LABEL_7:
  v135 = sub_10044B4CC(v32);
  v112 = v34;
  v42 = v110;
  v43 = v115;
  v126(v110, &v40[v34], v115);
  v44 = v111;
  MusicAppDestination.SharePageDescriptor.url.getter();
  v125(v42, v43);
  v45 = v130;
  if (v37(v44, 1, v130) == 1)
  {
    v46 = v122;
LABEL_11:
    v51 = v124;
    sub_1000095E8(v44, &qword_101183A20);
    sub_10044B664(v51, v129);
    v52 = v117;
    v53 = v116;
    goto LABEL_24;
  }

  v47 = v122;
  v48 = v40;
  v49 = *(v122 + 32);
  v50 = v107;
  v49(v107, v44, v45);
  v44 = v108;
  v111 = v48;
  sub_1005EE220(v108);
  if (v37(v44, 1, v45) == 1)
  {
    (*(v47 + 8))(v50, v45);
    v40 = v111;
    v46 = v47;
    goto LABEL_11;
  }

  v49(v106, v44, v45);
  v51 = v124;
  v54 = v50;
  if (v124 <= 1)
  {
    if (v124)
    {
      v55 = 0xD000000000000025;
    }

    else
    {
      v55 = 0xD000000000000026;
    }

    if (v124)
    {
      v56 = "aredSticker.contentURL";
    }

    else
    {
      v56 = "ativekit.attachmentURL";
    }

    v40 = v111;
    v53 = v116;
    v57 = v106;
    goto LABEL_22;
  }

  v40 = v111;
  v53 = v116;
  v57 = v106;
  if (v124 == 2)
  {
    v56 = "redSticker.backgroundVideo";
    v55 = 0xD000000000000026;
LABEL_22:
    v58 = URL.absoluteString.getter();
    v134 = &type metadata for String;
    *&v133 = v58;
    *(&v133 + 1) = v59;
    sub_100016270(&v133, &v132);
    v60 = v135;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v131 = v60;
    sub_1006C5E68(&v132, v55, v56 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);

    v135 = v131;
    v51 = v124;
  }

  sub_10044C294(v57, 0x65723A656C707061, 0xED00003A79616C70, v51, v129);
  v62 = v57;
  v46 = v47;
  v63 = *(v47 + 8);
  v64 = v130;
  v63(v62, v130);
  v63(v54, v64);
  v52 = v117;
LABEL_24:
  v65 = v113;
  v126(v113, &v112[v40], v43);
  v66 = v114;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  v125(v65, v43);
  v67 = (*(v53 + 88))(v66, v52);
  if (v67 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    if (v40[v109] > 1u)
    {
      v68 = v119;
      v69 = v123;
      v70 = v46;
      if (v40[v109] != 2)
      {

        v77 = v130;
        goto LABEL_38;
      }
    }

    else
    {
      v68 = v119;
      v69 = v123;
      v70 = v46;
    }

    v77 = v130;
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v74 & 1) == 0)
    {
      v75 = sub_10044BA2C(v51);
      goto LABEL_39;
    }

LABEL_38:
    v75 = sub_10044BAA0(v51);
LABEL_39:
    v78 = v76;
    if (v69 >> 60 == 15)
    {
      sub_10040824C(v75, v76, &v132);

      sub_1000095E8(&v132, &unk_101183F30);
      if (v51 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

    v134 = &type metadata for Data;
    *&v133 = v68;
    *(&v133 + 1) = v69;
    v79 = v75;
    sub_100016270(&v133, &v132);
    sub_10002BC44(v68, v69);
    v80 = v135;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v80;
    v82 = v79;
    LODWORD(v79) = v124;
    sub_1006C5E68(&v132, v82, v78, v81);

    v135 = v131;
    if (v79 == 3)
    {
LABEL_43:
      v134 = &type metadata for String;
      *&v133 = 0x656772616CLL;
      *(&v133 + 1) = 0xE500000000000000;
      sub_100016270(&v133, &v132);
      v83 = v135;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v83;
      sub_1006C5E68(&v132, 0xD000000000000039, 0x8000000100E52060, v84);
LABEL_49:
      v135 = v131;
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  if (v67 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    v70 = v46;
    if (v51 > 1)
    {
      v68 = v119;
      v77 = v130;
      if (v51 != 2)
      {
        goto LABEL_43;
      }

      v72 = "wluco1oowhb7pga.imageSize";
      v73 = 0xD000000000000028;
      v71 = v123;
    }

    else
    {
      v68 = v119;
      v71 = v123;
      if (v51)
      {
        v73 = 0xD00000000000002ALL;
        v72 = "aredSticker.backgroundVideo";
      }

      else
      {
        v72 = "ativekit.backgroundVideo";
        v73 = 0xD00000000000002BLL;
      }

      v77 = v130;
    }

    if (v71 >> 60 != 15)
    {
      v134 = &type metadata for Data;
      *&v133 = v68;
      *(&v133 + 1) = v71;
      sub_100016270(&v133, &v132);
      sub_10002BC44(v68, v71);
      v85 = v135;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v85;
      sub_1006C5E68(&v132, v73, v72 | 0x8000000000000000, v86);

      goto LABEL_49;
    }

    sub_10040824C(v73, v72 | 0x8000000000000000, &v132);

    sub_1000095E8(&v132, &unk_101183F30);
LABEL_50:
    v87 = [objc_opt_self() generalPasteboard];
    sub_10010FC20(&unk_1011927C0);
    v88 = swift_allocObject();
    v128 = xmmword_100EBC6B0;
    *(v88 + 16) = xmmword_100EBC6B0;
    *(v88 + 32) = v135;
    sub_10010FC20(&qword_101197BD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10010FC20(&qword_101197BD8);
    inited = swift_initStackObject();
    *(inited + 16) = v128;
    *(inited + 32) = UIPasteboardOptionExpirationDate;
    v91 = UIPasteboardOptionExpirationDate;
    v92 = v118;
    Date.init()();
    v93 = v121;
    *(inited + 64) = v121;
    sub_10001C8B8((inited + 40));
    Date.addingTimeInterval(_:)();
    (*(v120 + 8))(v92, v93);
    sub_10010D62C(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &unk_101180460);
    type metadata accessor for OptionsKey(0);
    sub_1005F04E8(&qword_1011808E8, type metadata accessor for OptionsKey);
    v94 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v87 setItems:isa options:v94];

    v95 = [objc_opt_self() sharedApplication];
    v96 = v129;
    URL._bridgeToObjectiveC()(&var18);
    v98 = v97;
    sub_10010CD7C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1005F04E8(&qword_10118A3E0, type metadata accessor for OpenExternalURLOptionsKey);
    v99 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v95 openURL:v98 options:v99 completionHandler:0];

    [v40 activityDidFinish:1];
    sub_100029CA4(v68, v123);
    (*(v70 + 8))(v96, v77);
    return 1;
  }

  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v101._object = 0x8000000100E52040;
  v101._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v101);
  v102 = v104;
  v126(v104, &v112[v40], v43);
  v103 = v105;
  MusicAppDestination.SharePageDescriptor.kind.getter();
  v125(v102, v43);
  _print_unlocked<A, B>(_:_:)();
  (*(v53 + 8))(v103, v52);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005F0000()
{
  v1 = v0;
  v2 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind;
  sub_1005EE84C();
  v8 = objc_allocWithZone(NSItemProvider);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithItem:isa typeIdentifier:v9];

  v11 = [objc_allocWithZone(LPLinkMetadata) init];
  (*(v3 + 16))(v5, &v1[v7], v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    v13 = &selRef_setImageProvider_;
LABEL_5:
    [v11 *v13];

    return v11;
  }

  if (v12 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    v13 = &selRef_setVideoProvider_;
    goto LABEL_5;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v15 = [v1 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005F02A4()
{
  v1 = type metadata accessor for MusicAppDestination.SharePageDescriptor.Kind();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC5Music30ShareAssetActivityItemProvider_kind, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for MusicAppDestination.SharePageDescriptor.Kind.image(_:))
  {
    return 0x6A2E63696C627570;
  }

  if (v6 == enum case for MusicAppDestination.SharePageDescriptor.Kind.video(_:))
  {
    return 0x6D2E63696C627570;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v8._countAndFlagsBits = 0x656C646E61686E55;
  v8._object = 0xEF20646E696B2064;
  String.append(_:)(v8);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1005F049C()
{
  result = qword_101183B40;
  if (!qword_101183B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101183B40);
  }

  return result;
}

uint64_t sub_1005F04E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005F0598()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LyricsSharingTransitionView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView;
  v2 = [*&v0[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] layer];
  [*&v0[v1] bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*&v0[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView] layer];
  [v11 cornerRadius];
  v13 = v12;

  v14 = [objc_opt_self() bezierPathWithRoundedRect:v4 cornerRadius:{v6, v8, v10, v13}];
  v15 = [v14 CGPath];

  [v2 setShadowPath:v15];
}

id sub_1005F0754()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsSharingTransitionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005F0848(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v9 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v9);
  *&v4[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint] = 0;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView] = v11;
  [v11 setBackgroundColor:*(a3 + 568)];
  v12 = [objc_allocWithZone(UIView) init];
  v13 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] = v13;
  [v13 setAlpha:0.0];
  v14 = [objc_allocWithZone(UIView) init];
  v15 = UIView.forAutolayout.getter();

  v16 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView] = v15;
  v17 = [v15 layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  v18 = [*&v5[v16] layer];
  [v18 setCornerRadius:*(a3 + 576)];

  v19 = [*&v5[v16] layer];
  [v19 setMasksToBounds:1];

  v20 = objc_allocWithZone(type metadata accessor for BackdropView());
  v21 = sub_100453A34();
  v22 = UIView.forAutolayout.getter();

  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] = v22;
  [v22 setHidden:1];
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = UIView.forAutolayout.getter();

  v25 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel;
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel] = v24;
  [v24 setNumberOfLines:0];
  v26 = qword_10117FDA8;
  v27 = *&v5[v25];
  if (v26 != -1)
  {
    swift_once();
  }

  [v27 setFont:qword_101219640];

  v28 = qword_10117FDB0;
  v29 = *&v5[v25];
  if (v28 != -1)
  {
    swift_once();
  }

  [v29 setTextColor:qword_101219648];

  v30 = *&v5[v25];
  v31 = *(a1 + *(type metadata accessor for Lyrics.TextLine(0) + 64));
  v32 = v30;
  v31();
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  [*&v5[v25] setAlpha:0.0];
  *&v5[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView] = a2;
  v34 = type metadata accessor for LyricsSharingTransitionView();
  v137.receiver = v5;
  v137.super_class = v34;
  v35 = a2;
  v36 = objc_msgSendSuper2(&v137, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  UIView.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIView.traitOverrides.setter();
  v37 = [objc_opt_self() currentTraitCollection];
  v38 = [v37 userInterfaceStyle];

  v39 = *&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView];
  if (v38 == 2)
  {
    v40 = qword_10117FE08;
    v41 = v39;
    if (v40 != -1)
    {
      swift_once();
    }

    v138 = xmmword_101219728;
    v139 = *algn_101219738;
    v140 = qword_101219748;
    v42 = xmmword_101219728;
    UIView.shadow.setter(&v138);

    v43 = [*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] layer];
    if (qword_10117FE10 != -1)
    {
      swift_once();
    }

    sub_10018DC74(qword_101219750);
    v44.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 setFilters:v44.super.isa];
  }

  else
  {
    v45 = qword_10117FDF8;
    v44.super.isa = v39;
    if (v45 != -1)
    {
      swift_once();
    }

    v138 = xmmword_1012196D8;
    v139 = *algn_1012196E8;
    v140 = qword_1012196F8;
    v46 = xmmword_1012196D8;
    UIView.shadow.setter(&v138);
  }

  v47 = [v36 layer];
  [v47 setAnchorPoint:{0.0, 0.5}];

  v48 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView;
  [v36 addSubview:*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView]];
  v49 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  [v36 addSubview:*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView]];
  v133 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView;
  [*&v36[v49] addSubview:*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView]];
  v50 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView;
  [*&v36[v49] addSubview:*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView]];
  v134 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView;
  v51 = *&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_initialView];
  v52 = *&v36[v49];
  v53 = v51;
  v54 = UIView.forAutolayout.getter();

  [v52 addSubview:v54];
  v55 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel;
  [*&v36[v49] addSubview:*&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel]];
  v132 = v55;
  v56 = [*&v36[v55] topAnchor];
  v57 = [*&v36[v49] topAnchor];
  v58 = *(a3 + 584);
  v59 = [v56 constraintEqualToAnchor:v57 constant:v58];

  v135 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint;
  v60 = *&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint];
  *&v36[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint] = v59;

  sub_10010FC20(&qword_101183990);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100ED6A70;
  v62 = [*&v36[v49] leadingAnchor];
  v63 = [v36 leadingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v61 + 32) = v64;
  v65 = [*&v36[v49] trailingAnchor];
  v66 = [v36 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v61 + 40) = v67;
  v68 = [*&v36[v49] topAnchor];
  v69 = [v36 topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v61 + 48) = v70;
  v71 = [*&v36[v49] bottomAnchor];
  v72 = [v36 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v61 + 56) = v73;
  v74 = [*&v36[v48] leadingAnchor];
  v75 = [v36 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v61 + 64) = v76;
  v77 = [*&v36[v48] trailingAnchor];
  v78 = [v36 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v61 + 72) = v79;
  v80 = [*&v36[v48] topAnchor];
  v81 = [v36 topAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  *(v61 + 80) = v82;
  v83 = [*&v36[v48] bottomAnchor];
  v84 = [v36 bottomAnchor];

  v85 = [v83 constraintEqualToAnchor:v84];
  *(v61 + 88) = v85;
  v86 = [*&v36[v50] leadingAnchor];
  v87 = [*&v36[v49] leadingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v61 + 96) = v88;
  v89 = [*&v36[v50] trailingAnchor];
  v90 = [*&v36[v49] trailingAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v61 + 104) = v91;
  v92 = [*&v36[v50] topAnchor];
  v93 = [*&v36[v49] topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93];

  *(v61 + 112) = v94;
  v95 = [*&v36[v50] bottomAnchor];
  v96 = [*&v36[v49] bottomAnchor];
  v97 = [v95 constraintEqualToAnchor:v96];

  *(v61 + 120) = v97;
  v98 = [*&v36[v133] leadingAnchor];
  v99 = [*&v36[v49] leadingAnchor];
  v100 = [v98 constraintEqualToAnchor:v99];

  *(v61 + 128) = v100;
  v101 = [*&v36[v133] trailingAnchor];
  v102 = [*&v36[v49] trailingAnchor];
  v103 = [v101 constraintEqualToAnchor:v102];

  *(v61 + 136) = v103;
  v104 = [*&v36[v133] topAnchor];
  v105 = [*&v36[v49] topAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v61 + 144) = v106;
  v107 = [*&v36[v133] bottomAnchor];
  v108 = [*&v36[v49] bottomAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v61 + 152) = v109;
  v110 = [*&v36[v134] leadingAnchor];
  v111 = [*&v36[v49] leadingAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 constant:v58];

  *(v61 + 160) = v112;
  v113 = [*&v36[v134] trailingAnchor];
  v114 = [*&v36[v49] trailingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114 constant:-v58];

  *(v61 + 168) = v115;
  v116 = [*&v36[v134] topAnchor];
  v117 = [*&v36[v49] topAnchor];
  v118 = [v116 constraintEqualToAnchor:v117 constant:v58];

  *(v61 + 176) = v118;
  v119 = [*&v36[v134] bottomAnchor];
  v120 = [*&v36[v49] bottomAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:-v58];

  *(v61 + 184) = v121;
  v122 = *&v36[v135];
  if (v122)
  {
    v123 = objc_opt_self();
    *(v61 + 192) = v122;
    v124 = *&v36[v132];
    v125 = v122;
    v126 = [v124 leadingAnchor];
    v127 = [*&v36[v49] leadingAnchor];
    v128 = [v126 constraintEqualToAnchor:v127 constant:v58];

    *(v61 + 200) = v128;
    v129 = [*&v36[v132] widthAnchor];
    v130 = [v129 constraintEqualToConstant:a4 + -64.0 + -32.0 - v58];

    *(v61 + 208) = v130;
    sub_100294F58();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v123 activateConstraints:isa];

    sub_1003407A4(a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005F1854(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  sub_10010FC20(&unk_101195200);
  *(v2 + 40) = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1005F192C, 0, 0);
}

uint64_t sub_1005F192C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() currentTraitCollection];
  [v3 displayScale];
  v5 = v4;

  static Artwork.CropStyle.squareCenterCrop.getter();
  v6 = type metadata accessor for Artwork.CropStyle();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  v7 = enum case for Artwork.ImageFormat.jpeg(_:);
  v8 = type metadata accessor for Artwork.ImageFormat();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_1005F1AF8;
  v12 = v0[5];
  v13 = v0[6];
  v14.n128_u64[0] = v0[3];
  v15.n128_u64[0] = v14.n128_u64[0];

  v11.n128_f64[0] = 1.0 / v5;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v13, v12, 0, 0, v14, v15, v11);
}

uint64_t sub_1005F1AF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = v1;

  v6 = v4[6];
  sub_1000095E8(v4[5], &unk_101195200);
  sub_1000095E8(v6, &unk_101184060);
  if (v1)
  {

    return _swift_task_switch(sub_1005F1CB4, 0, 0);
  }

  else
  {

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_1005F1CB4()
{
  v14 = v0;
  if (qword_10117F960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101197C40);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve image from artwork with error: %{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_1005F1E98()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101197C40);
  sub_1000060E4(v0, qword_101197C40);
  return static Logger.music(_:)();
}

uint64_t sub_1005F1EFC(uint64_t a1)
{
  v31 = type metadata accessor for AudioVariant();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v29[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_10066C790(0, v6, 0);
  v7 = v40;
  v39 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v34 = v3 + 32;
  v35 = v3 + 16;
  v30 = a1 + 64;
  v11 = v31;
  v32 = v6;
  v33 = a1;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v39 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    v36 = v10;
    v38 = *(a1 + 36);
    v14 = *(v3 + 72);
    (*(v3 + 16))(v5, *(a1 + 48) + v14 * v9, v11);
    v40 = v7;
    v15 = v11;
    v17 = v7[2];
    v16 = v7[3];
    v18 = (v17 + 1);
    if (v17 >= v16 >> 1)
    {
      v37 = (v17 + 1);
      sub_10066C790(v16 > 1, v17 + 1, 1);
      v18 = v37;
      v7 = v40;
    }

    v7[2] = v18;
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = v7;
    v20 = v7 + v19 + v17 * v14;
    v21 = v3;
    result = (*(v3 + 32))(v20, v5, v15);
    v12 = 1 << *(v33 + 32);
    if (v9 >= v12)
    {
      goto LABEL_23;
    }

    v22 = *(v39 + 8 * v13);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_24;
    }

    v11 = v15;
    a1 = v33;
    if (v38 != *(v33 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    if (v23)
    {
      v12 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v13 << 6;
      v25 = v13 + 1;
      v26 = (v30 + 8 * v13);
      while (v25 < (v12 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1000D8F7C(v9, v38, 0);
          v12 = __clz(__rbit64(v27)) + v24;
          goto LABEL_19;
        }
      }

      result = sub_1000D8F7C(v9, v38, 0);
LABEL_19:
      v11 = v31;
    }

    v10 = v36 + 1;
    v9 = v12;
    v3 = v21;
    v7 = v37;
    if (v36 + 1 == v32)
    {
      return v7;
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
  return result;
}

uint64_t sub_1005F2220()
{
  sub_10028F250();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_1005F225C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v96 = a3;
  v93 = a2;
  v6 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v6 - 8);
  v99 = v92 - v7;
  v8 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v8 - 8);
  v94 = v92 - v9;
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v92[1] = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v92[0] = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v14 - 8);
  v100 = v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v16 - 8);
  v98 = v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v97 = v92 - v19;
  __chkstk_darwin(v20);
  v95 = v92 - v21;
  __chkstk_darwin(v22);
  v24 = v92 - v23;
  __chkstk_darwin(v25);
  v27 = v92 - v26;
  __chkstk_darwin(v28);
  v30 = v92 - v29;
  __chkstk_darwin(v31);
  v33 = v92 - v32;
  v34 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v34 - 8);
  v36 = v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v92 - v38;
  v40 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v40 - 8);
  v42 = v92 - v41;
  v102 = a1;
  sub_1000089F8(a1, v33, &unk_101184730);
  v43 = type metadata accessor for Album();
  v44 = *(v43 - 8);
  v103 = *(v44 + 48);
  v104 = v44 + 48;
  v45 = v103(v33, 1, v43);
  v101 = v44;
  if (v45 == 1)
  {
    sub_1000095E8(v33, &unk_101184730);
    v46 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v46 - 8) + 56))(v39, 1, 1, v46);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v43, &protocol witness table for Album, v39);
    (*(v44 + 8))(v33, v43);
  }

  v47 = sub_10010FC20(&unk_101182950);
  (*(*(v47 - 8) + 56))(v100, 1, 11, v47);
  sub_1000089F8(v102, v30, &unk_101184730);
  if (v103(v30, 1, v43) == 1)
  {
    sub_1000095E8(v30, &unk_101184730);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v43, &protocol witness table for Album, v36);
    (*(v101 + 8))(v30, v43);
    v48 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v48 - 8) + 48))(v36, 1, v48) == 1)
    {
      sub_1000095E8(v36, &unk_10118A5E0);
    }

    else
    {
      v49 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
      v51 = v50;
      sub_1005F92F8(v36, type metadata accessor for ArtworkImage.ViewModel);
      if ((v51 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v49 = 0x3FF0000000000000;
LABEL_10:
  v52 = Corner.large.unsafeMutableAddressor();
  v53 = *v52;
  v54 = v52[1];
  v55 = *(v52 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v106);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v39, v100, v49, 0, v106, v53, v54, v55, v42);
  v56 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v56 - 8) + 56))(v42, 0, 1, v56);
  sub_1005F3AFC(v42);
  v57 = v102;
  sub_1000089F8(v102, v27, &unk_101184730);
  if (v103(v27, 1, v43) == 1)
  {
    sub_1000095E8(v27, &unk_101184730);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v58 = String.init(localized:table:bundle:locale:comment:)();
    v60 = v101;
  }

  else
  {
    v61 = Album.title.getter();
    v63 = v62;
    v60 = v101;
    (*(v101 + 8))(v27, v43);
    v59 = v63;
    v58 = v61;
  }

  v64 = v94;
  sub_1005F42E0(v58, v59);
  sub_1000089F8(v57, v24, &unk_101184730);
  v65 = v103(v24, 1, v43);
  v66 = v95;
  if (v65 == 1)
  {
    sub_1000095E8(v24, &unk_101184730);
    v67 = 1;
  }

  else
  {
    Album.favoriteStatus.getter();
    (*(v60 + 8))(v24, v43);
    v67 = 0;
  }

  v68 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v68 - 8) + 56))(v64, v67, 1, v68);
  sub_1005F4470(v64);
  v69 = v96 & 1;
  if (*(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) == (v96 & 1))
  {
    *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v69;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v92[-2] = v4;
    LOBYTE(v92[-1]) = v69;
    v105 = v4;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v71 = v97;
  sub_1000089F8(v57, v66, &unk_101184730);
  if (v103(v66, 1, v43) == 1)
  {
    sub_1000095E8(v66, &unk_101184730);
    v72 = 0;
    v73 = 0;
    v74 = -1;
  }

  else
  {
    v75 = Album.artistName.getter();
    v77 = v76;
    (*(v60 + 8))(v66, v43);
    v73 = v77;
    v72 = v75;
    v74 = 1;
  }

  v78 = v99;
  sub_1005F4744(v72, v73, v74);
  sub_1000089F8(v57, v71, &unk_101184730);
  if (v103(v71, 1, v43) == 1)
  {
    sub_1000095E8(v71, &unk_101184730);
    v79 = 1;
  }

  else
  {
    sub_1005F5C30(v93, v78);
    (*(v60 + 8))(v71, v43);
    v79 = 0;
  }

  v80 = _s8MetadataV13ConfigurationOMa(0);
  (*(*(v80 - 8) + 56))(v78, v79, 1, v80);
  v81 = swift_getKeyPath();
  __chkstk_darwin(v81);
  v92[-2] = v4;
  v92[-1] = v78;
  v105 = v4;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v78, &unk_1011A4760);
  v82 = v98;
  sub_1000089F8(v102, v98, &unk_101184730);
  if (v103(v82, 1, v43) == 1)
  {
    sub_1000095E8(v82, &unk_101184730);
  }

  else
  {
    v83 = sub_1005F606C();
    v85 = v84;
    (*(v101 + 8))(v82, v43);
    if (v85)
    {
      goto LABEL_29;
    }
  }

  v83 = 0;
  v85 = 0xE000000000000000;
LABEL_29:
  swift_getKeyPath();
  v105 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v86 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v87 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v88 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v89 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  if (v87)
  {
    sub_100030444(*(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16));
    v90 = v88;
    v91 = v89;
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

  sub_1004E5E44(v86, v87, v88);
  sub_1004E5E90(v86, v87, v88);
  sub_1005F4CC8(v83, v85, v90, v91);
}

uint64_t sub_1005F2FA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v9 - 8);
  v11 = (v18 - v10);
  sub_1000089F8(a1, v8, &unk_101184730);
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1000095E8(v8, &unk_101184730);
    v14 = 1;
  }

  else
  {
    sub_1005F5C30(a2, v11);
    (*(v13 + 8))(v8, v12);
    v14 = 0;
  }

  v15 = _s8MetadataV13ConfigurationOMa(0);
  (*(*(v15 - 8) + 56))(v11, v14, 1, v15);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v18[-2] = v3;
  v18[-1] = v11;
  v18[1] = v3;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v11, &unk_1011A4760);
}

double sub_1005F325C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void sub_1005F32FC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1005F341C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_1005F34BC(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1005F35DC()
{
  swift_getKeyPath();
  sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1005F367C(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F379C()
{
  v1 = OBJC_IVAR____TtCV5Music6Header7Metrics___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005F3860()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1005F3904()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1005F39A4(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2 != 2)
  {
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 16) = result;
    return result;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1005F3AFC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_10119F000);
  v7 = sub_1005FA4B0(v5, a1);
  sub_1000095E8(v5, &unk_10119F000);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &unk_10119F000);
    swift_beginAccess();
    sub_10006B010(v5, v1 + v6, &unk_10119F000);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_10119F000);
}

uint64_t sub_1005F3D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a2, &unk_101188920);
}

uint64_t sub_1005F3E00(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000089F8(a1, &v6 - v3, &unk_101188920);
  return sub_1005F3EAC(v4);
}

uint64_t sub_1005F3EAC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &unk_101188920);
  v7 = sub_1005FABCC(v5, a1);
  sub_1000095E8(v5, &unk_101188920);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &unk_101188920);
    swift_beginAccess();
    sub_10006B010(v5, v1 + v6, &unk_101188920);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &unk_101188920);
}

uint64_t sub_1005F40C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks;

  v5 = sub_10025B374(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F4224()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);

  return v1;
}

uint64_t sub_1005F42E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v6 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title) == a1 && *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8) == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F4470(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
  swift_beginAccess();
  sub_1000089F8(v1 + v6, v5, &qword_1011831D0);
  v7 = sub_1005FA780(v5, a1);
  sub_1000095E8(v5, &qword_1011831D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v5, &qword_1011831D0);
    swift_beginAccess();
    sub_10006B010(v5, v1 + v6, &qword_1011831D0);
    swift_endAccess();
  }

  return sub_1000095E8(a1, &qword_1011831D0);
}

uint64_t sub_1005F4678()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution);
  sub_1005F94C0(v1, *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16));
  return v1;
}

uint64_t sub_1005F4744(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v8 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16);
  if (v8 == 255)
  {
    if (a3 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (a3 == -1)
  {
    goto LABEL_18;
  }

  v9 = *v7;
  v10 = *(v7 + 8);
  if ((v8 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      sub_1005F94B4();
      v12 = sub_10047BD40(v9, a1);
      sub_1005F9490(v9, v10, v8);
      if (v12)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1005F9490(a1, a2, a3);
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = v9 == a1 && v10 == a2;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v13 = *v7;
  v14 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v15 = *(v7 + 16);
  *(v7 + 16) = a3;

  return sub_1005F9490(v13, v14, v15);
}

uint64_t sub_1005F494C()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);

  return v1;
}

uint64_t sub_1005F4A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1005F4AE4@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1000089F8(v9 + v7, a3, a2);
}

uint64_t sub_1005F4BF4()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  sub_1004E5E44(v1, *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16));
  return v1;
}

void sub_1005F4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v10 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v11 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v12 = *(v4 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  if (v11)
  {
    if (a2)
    {
      v13 = v10 == a1 && v11 == a2;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1004E5E90(a1, a2, a3);

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;

  sub_1004E5E90(v10, v11, v12);
}

void sub_1005F4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v6 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v7 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v8 = *(a1 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  sub_1004E5E44(a2, a3, a4);
  sub_1004E5E90(v6, v7, v8);
}

uint64_t sub_1005F4F14()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1005F4FB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents;
  if (sub_100190304(*(v1 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F5128(uint64_t a1, void *a2, void (*a3)(void, void))
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = (v3 + *a2);
  v7 = *v6;
  a3(*v6, v6[1]);
  return v7;
}

uint64_t sub_1005F5238(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = (a1 + *a4);
  v8 = *v7;
  v9 = v7[1];
  *v7 = a2;
  v7[1] = a3;
  a5(a2, a3);
  return a6(v8, v9);
}

uint64_t sub_1005F5298()
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1005F5344(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005F5578(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_1005F5640(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005F5754()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, &unk_10119F000);
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork, &unk_101188920);

  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, &qword_1011831D0);
  sub_1005F9490(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution + 16));

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction));
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__metadata, &unk_1011A4760);
  sub_1004E5E90(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8), *(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16));

  sub_100020438(*(v0 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider));

  v1 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1005F58E4()
{
  sub_1005F5754();

  return swift_deallocClassInstance();
}

void sub_1005F5964()
{
  sub_1005F5BCC(319, &qword_101195CF0, type metadata accessor for ArtworkImage.Info);
  if (v0 <= 0x3F)
  {
    sub_1005F5BCC(319, &qword_1011A4570, &type metadata accessor for Artwork);
    if (v1 <= 0x3F)
    {
      sub_1005F5BCC(319, &qword_1011891E8, &type metadata accessor for MusicFavoriteStatus);
      if (v2 <= 0x3F)
      {
        sub_1005F5BCC(319, &unk_101197EB8, _s8MetadataV13ConfigurationOMa);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1005F5BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005F5C30@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Date.FormatStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = Album.isPreorder.getter();
  if (v14 != 2 && (v14 & 1) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    goto LABEL_15;
  }

  v28 = a1;
  Album.releaseDate.getter();
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    sub_1000095E8(v13, &qword_101188C20);
    v16 = Album.releaseYearString.getter();
    v17 = v21;
  }

  else
  {
    static FormatStyle<>.musicReleaseYear.getter();
    sub_1005FAAD4(&unk_1011A3900, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    (*(v8 + 8))(v10, v7);
    (*(v20 + 8))(v13, v19);
    v16 = v29;
    v17 = v30;
  }

  v22 = Album.genreNames.getter();
  a1 = v28;
  if (v22[2])
  {
    v15 = v22[4];
    v18 = v22[5];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v15 = 0;
    v18 = 0;

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  if (v16 == 48 && v17 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = 0;
    v17 = 0;
  }

LABEL_15:
  sub_1000089F8(a1, v6, &unk_1011842D0);
  v23 = sub_10010FC20(&unk_1011841D0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) == 1)
  {
    sub_1000095E8(v6, &unk_1011842D0);
  }

  else
  {
    v25 = sub_1005F627C();
    (*(v24 + 8))(v6, v23);
    if (v25)
    {
      goto LABEL_20;
    }
  }

  v25 = Album.audioVariants.getter();

  if (!v25)
  {
    v25 = _swiftEmptyArrayStorage;
  }

LABEL_20:
  *a2 = v15;
  a2[1] = v18;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v25;
  _s8MetadataV13ConfigurationOMa(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005F606C()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  Album.editorialNotes.getter();
  v6 = type metadata accessor for EditorialNotes();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (v8(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_1011866A0);
  }

  else
  {
    EditorialNotes.standard.getter();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    if (v10)
    {
      goto LABEL_7;
    }
  }

  Album.editorialNotes.getter();
  if (v8(v3, 1, v6) != 1)
  {
    EditorialNotes.short.getter();
    v12 = v11;
    (*(v7 + 8))(v3, v6);
    if (!v12)
    {
      return 0;
    }

LABEL_7:
    countAndFlagsBits = String.trim()()._countAndFlagsBits;

    return countAndFlagsBits;
  }

  sub_1000095E8(v3, &qword_1011866A0);
  return 0;
}

uint64_t sub_1005F627C()
{
  v1 = type metadata accessor for AudioVariant();
  v106 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v86 - v5;
  v102 = type metadata accessor for Song();
  v86 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v122 = *(v94 - 8);
  v8 = __chkstk_darwin(v94);
  v93 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v86 - v10;
  v117 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v103 = *(v117 - 8);
  v11 = __chkstk_darwin(v117);
  v100 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v86 - v13;
  v14 = type metadata accessor for Track();
  v118 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v105 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v123 = &v86 - v18;
  v19 = __chkstk_darwin(v17);
  v104 = &v86 - v20;
  v21 = __chkstk_darwin(v19);
  v116 = &v86 - v22;
  __chkstk_darwin(v21);
  v124 = (&v86 - v23);
  v24 = sub_10010FC20(&unk_10118C0B0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v86 - v26;
  v28 = sub_10010FC20(&unk_1011841D0);
  __chkstk_darwin(v28);
  (*(v30 + 16))(&v86 - v29, v0, v28);
  sub_1005FAF84(&unk_10118C0A0);
  dispatch thunk of Sequence.makeIterator()();
  v31 = *(v25 + 44);
  v32 = sub_1005FAF84(&qword_1011913B0);
  dispatch thunk of Collection.endIndex.getter();
  v33 = *&v27[v31];
  v120 = _swiftEmptyArrayStorage;
  v121 = v14;
  if (v33 != v125)
  {
    v110 = (v118 + 16);
    v108 = (v118 + 88);
    LODWORD(v107) = enum case for Track.musicVideo(_:);
    v119 = (v118 + 8);
    v98 = (v103 + 2);
    v97 = (v103 + 11);
    v96 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    v95 = (v103 + 1);
    v91 = (v103 + 12);
    v90 = (v122 + 32);
    v89 = enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:);
    v88 = (v122 + 104);
    v87 = (v122 + 8);
    v103 = (v118 + 32);
    v120 = _swiftEmptyArrayStorage;
    v114 = v28;
    v115 = v27;
    v112 = v32;
    v113 = v31;
    v109 = v4;
    do
    {
      v122 = dispatch thunk of Collection.subscript.read();
      v62 = *v110;
      v63 = v124;
      v64 = v121;
      (*v110)(v124);
      (v122)(&v125, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v65 = v116;
      (v62)(v116, v63, v64);
      v66 = (*v108)(v65, v64);
      v67 = *v119;
      (*v119)(v65, v64);
      if (v66 != v107)
      {
        if (qword_10117F5F8 != -1)
        {
          swift_once();
        }

        v68 = *Player.state<A>(for:)(v124);
        v69 = v99;
        (*(v68 + 256))();

        v70 = v100;
        v71 = v117;
        (*v98)(v100, v69, v117);
        v72 = (*v97)(v70, v71);
        if (v72 != v96)
        {
          v77 = *v95;
          v78 = v70;
          v79 = v117;
          (*v95)(v69, v117);
          v77(v78, v79);
LABEL_27:
          v80 = *v103;
          (*v103)(v104, v124, v64);
          v81 = v120;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v126 = v81;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10066C7D4(0, v81[2] + 1, 1);
            v81 = v126;
          }

          v27 = v115;
          v61 = v113;
          v4 = v109;
          v84 = v81[2];
          v83 = v81[3];
          if (v84 >= v83 >> 1)
          {
            sub_10066C7D4(v83 > 1, v84 + 1, 1);
            v81 = v126;
          }

          v81[2] = v84 + 1;
          v85 = (*(v118 + 80) + 32) & ~*(v118 + 80);
          v120 = v81;
          v80(v81 + v85 + *(v118 + 72) * v84, v104, v121);
          goto LABEL_19;
        }

        (*v91)(v70, v117);
        v73 = v92;
        v74 = v94;
        (*v90)(v92, v70, v94);
        v75 = v93;
        (*v88)(v93, v89, v74);
        LODWORD(v122) = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
        v76 = *v87;
        (*v87)(v75, v74);
        v76(v73, v74);
        (*v95)(v69, v117);
        if ((v122 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v67(v124, v64);
      v27 = v115;
      v61 = v113;
      v4 = v109;
LABEL_19:
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v27[v61] != v125);
  }

  sub_1000095E8(v27, &unk_10118C0B0);
  v116 = v120[2];
  if (v116)
  {
    v34 = static AudioVariant.allCases.getter();
    v35 = sub_10066FE3C(v34);
    v36 = v120;

    v38 = 0;
    v115 = v36 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    v113 = v118 + 88;
    v114 = v118 + 16;
    LODWORD(v112) = enum case for Track.song(_:);
    v119 = (v118 + 8);
    v110 = (v118 + 96);
    v108 = (v86 + 32);
    v107 = (v86 + 8);
    v39 = (v106 + 8);
    v40 = v105;
    v41 = v121;
    v120 = v36;
    v111 = v1;
    while (v38 < v36[2])
    {
      v124 = v35;
      v44 = v118;
      v45 = *(v118 + 72);
      v122 = v38;
      v46 = *(v118 + 16);
      v47 = v123;
      v46(v123, &v115[v45 * v38], v41);
      v46(v40, v47, v41);
      v48 = (*(v44 + 88))(v40, v41);
      if (v48 == v112)
      {
        (*v110)(v40, v41);
        v49 = v101;
        v50 = v102;
        (*v108)(v101, v40, v102);
        v51 = Song.audioVariants.getter();
        (*v107)(v49, v50);
        if (v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        (*v119)(v40, v41);
        v52 = _swiftEmptyArrayStorage;
      }

      v53 = v111;
      sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant);
      v54 = Set.init(minimumCapacity:)();
      v125 = v54;
      v55 = v52[2];
      if (v55)
      {
        v56 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v117 = v52;
        v57 = v52 + v56;
        v58 = *(v106 + 72);
        v59 = *(v106 + 16);
        do
        {
          v59(v6, v57, v53);
          sub_1003B2644(v4, v6);
          (*v39)(v4, v53);
          v57 += v58;
          --v55;
        }

        while (v55);

        v42 = v125;
        v41 = v121;
        v40 = v105;
      }

      else
      {
        v42 = v54;
      }

      v43 = (v122 + 1);
      v35 = sub_1005F8A4C(v42, v124);

      result = (*v119)(v123, v41);
      v38 = v43;
      v36 = v120;
      if (v43 == v116)
      {

        v60 = sub_1005F1EFC(v35);

        return v60;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_1005F7078()
{
  v0 = sub_10010FC20(&qword_1011866A0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  result = Playlist.standardDescription.getter();
  if (!v7)
  {
    result = Playlist.shortDescription.getter();
    if (!v8)
    {
      Playlist.editorialNotes.getter();
      v9 = type metadata accessor for EditorialNotes();
      v10 = *(v9 - 8);
      v11 = *(v10 + 48);
      if (v11(v5, 1, v9) == 1)
      {
        sub_1000095E8(v5, &qword_1011866A0);
      }

      else
      {
        EditorialNotes.standard.getter();
        v13 = v12;
        (*(v10 + 8))(v5, v9);
        if (v13)
        {
          goto LABEL_9;
        }
      }

      Playlist.editorialNotes.getter();
      if (v11(v3, 1, v9) == 1)
      {
        sub_1000095E8(v3, &qword_1011866A0);
        return 0;
      }

      EditorialNotes.short.getter();
      v15 = v14;
      (*(v10 + 8))(v3, v9);
      if (!v15)
      {
        return 0;
      }

LABEL_9:
      countAndFlagsBits = String.trim()()._countAndFlagsBits;

      return countAndFlagsBits;
    }
  }

  return result;
}

uint64_t sub_1005F72A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v8 = v7;
  v167 = a7;
  v160 = a6;
  v157 = a5;
  v159 = a4;
  v158 = a3;
  v168 = a2;
  v10 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v10 - 8);
  v165 = &v143 - v11;
  v164 = type metadata accessor for Date();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v144 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v13 - 8);
  v166 = &v143 - v14;
  v15 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v15 - 8);
  v156 = &v143 - v16;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v148 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v147 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10010FC20(&qword_101198358);
  __chkstk_darwin(v151);
  v152 = &v143 - v21;
  v22 = sub_10010FC20(&unk_10119F000);
  v23 = __chkstk_darwin(v22 - 8);
  v150 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v146 = &v143 - v26;
  __chkstk_darwin(v25);
  v153 = &v143 - v27;
  v28 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v28 - 8);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10010FC20(&unk_1011814D0);
  v32 = __chkstk_darwin(v31 - 8);
  v149 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v162 = &v143 - v35;
  v36 = __chkstk_darwin(v34);
  v161 = &v143 - v37;
  v38 = __chkstk_darwin(v36);
  v145 = &v143 - v39;
  v40 = __chkstk_darwin(v38);
  v155 = &v143 - v41;
  v42 = __chkstk_darwin(v40);
  v154 = &v143 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v143 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v143 - v48;
  __chkstk_darwin(v47);
  v51 = &v143 - v50;
  v52 = sub_10010FC20(&unk_10118A5E0);
  v53 = __chkstk_darwin(v52 - 8);
  v55 = &v143 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v57 = &v143 - v56;
  v169 = type metadata accessor for ArtworkImage.Info(0);
  v58 = *(v169 - 8);
  v59 = __chkstk_darwin(v169);
  v143 = &v143 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v172 = &v143 - v61;
  v177 = a1;
  sub_1000089F8(a1, v51, &unk_1011814D0);
  v62 = type metadata accessor for Playlist();
  v63 = *(v62 - 8);
  v175 = *(v63 + 48);
  v176 = v63 + 48;
  v64 = v175(v51, 1, v62);
  v173 = v63;
  if (v64 == 1)
  {
    sub_1000095E8(v51, &unk_1011814D0);
    v65 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v65 - 8) + 56))(v57, 1, 1, v65);
  }

  else
  {
    Playlist.artworkViewModel.getter(v57);
    (*(v63 + 8))(v51, v62);
  }

  sub_1000089F8(v177, v49, &unk_1011814D0);
  if (v175(v49, 1, v62) == 1)
  {
    sub_1000095E8(v49, &unk_1011814D0);
    v66 = type metadata accessor for Playlist.Variant();
    (*(*(v66 - 8) + 56))(v30, 1, 1, v66);
  }

  else
  {
    Playlist.variant.getter();
    (*(v173 + 8))(v49, v62);
  }

  v67 = sub_10010FC20(&unk_101182950);
  (*(*(v67 - 8) + 56))(v30, 0, 11, v67);
  sub_1000089F8(v177, v46, &unk_1011814D0);
  v68 = v175(v46, 1, v62);
  v174 = v62;
  if (v68 == 1)
  {
    sub_1000095E8(v46, &unk_1011814D0);
  }

  else
  {
    Playlist.artworkViewModel.getter(v55);
    (*(v173 + 8))(v46, v62);
    v69 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v69 - 8) + 48))(v55, 1, v69) == 1)
    {
      sub_1000095E8(v55, &unk_10118A5E0);
    }

    else
    {
      v70 = ArtworkImage.ViewModel.calculatedAspectRatio.getter();
      v72 = v71;
      sub_1005F92F8(v55, type metadata accessor for ArtworkImage.ViewModel);
      if ((v72 & 1) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  v70 = 0x3FF0000000000000;
LABEL_13:
  v73 = Corner.large.unsafeMutableAddressor();
  v74 = *v73;
  v75 = v73[1];
  v76 = *(v73 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v180);
  v77 = v172;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v57, v30, v70, 0, v180, v74, v75, v76, v172);
  swift_getKeyPath();
  v78 = OBJC_IVAR____TtCV5Music6Header13Configuration___observationRegistrar;
  v179 = v8;
  v170 = sub_1005FAAD4(&unk_1011A4750, _s13ConfigurationCMa);
  v171 = v78;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  swift_beginAccess();
  v80 = v153;
  sub_1005F8850(v77, v153);
  v81 = *(v58 + 56);
  v82 = v169;
  v81(v80, 0, 1, v169);
  v83 = *(v151 + 48);
  v84 = v8 + v79;
  v85 = v152;
  sub_1000089F8(v84, v152, &unk_10119F000);
  sub_1000089F8(v80, v85 + v83, &unk_10119F000);
  v86 = *(v58 + 48);
  if (v86(v85, 1, v82) == 1)
  {
    sub_1000095E8(v80, &unk_10119F000);
    if (v86(v85 + v83, 1, v82) == 1)
    {
      sub_1000095E8(v85, &unk_10119F000);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v87 = v82;
  v88 = v146;
  sub_1000089F8(v85, v146, &unk_10119F000);
  if (v86(v85 + v83, 1, v87) == 1)
  {
    sub_1000095E8(v80, &unk_10119F000);
    sub_1005F92F8(v88, type metadata accessor for ArtworkImage.Info);
    v82 = v169;
LABEL_18:
    sub_1000095E8(v85, &qword_101198358);
LABEL_19:
    v89 = v150;
    sub_1005F8850(v172, v150);
    v81(v89, 0, 1, v82);
    sub_1005F3AFC(v89);
    goto LABEL_20;
  }

  v109 = v85 + v83;
  v110 = v143;
  sub_1002D8E5C(v109, v143);
  v111 = static ArtworkImage.Info.__derived_struct_equals(_:_:)(v88, v110);
  sub_1005F92F8(v110, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v80, &unk_10119F000);
  sub_1005F92F8(v88, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v85, &unk_10119F000);
  v82 = v169;
  if ((v111 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  v90 = v154;
  sub_1000089F8(v177, v154, &unk_1011814D0);
  v91 = v174;
  if (v175(v90, 1, v174) == 1)
  {
    sub_1000095E8(v90, &unk_1011814D0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v92 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v94 = Playlist.name.getter();
    v96 = v95;
    (*(v173 + 8))(v90, v91);
    v93 = v96;
    v92 = v94;
  }

  v97 = v155;
  sub_1005F42E0(v92, v93);
  v98 = v156;
  sub_1000089F8(v157, v156, &qword_1011831D0);
  sub_1005F4470(v98);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v100 = v158;
  *(&v143 - 4) = v8;
  *(&v143 - 3) = v100;
  *(&v143 - 2) = v159;
  v178 = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v101 = v160 & 1;
  if (*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) == (v160 & 1))
  {
    *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v101;
  }

  else
  {
    v102 = swift_getKeyPath();
    __chkstk_darwin(v102);
    *(&v143 - 2) = v8;
    *(&v143 - 8) = v101;
    v178 = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v103 = v173;
  v104 = v163;
  if (!v168)
  {
    sub_1000089F8(v177, v97, &unk_1011814D0);
    v108 = v174;
    if (v175(v97, 1, v174) == 1)
    {
      sub_1000095E8(v97, &unk_1011814D0);
    }

    else
    {
      v107 = Playlist.curatorName.getter();
      v105 = v112;
      (*(v103 + 8))(v97, v108);
      if (v105)
      {
        goto LABEL_36;
      }
    }

    v113 = v145;
    sub_1000089F8(v177, v145, &unk_1011814D0);
    v114 = v174;
    if (v175(v113, 1, v174) == 1)
    {
      sub_1000095E8(v113, &unk_1011814D0);

      v107 = 0;
      v105 = 0;
LABEL_38:
      v106 = -1;
      goto LABEL_39;
    }

    v107 = sub_10034E2C4();
    v105 = v115;
    (*(v103 + 8))(v113, v114);

    if (!v105)
    {
      v107 = 0;
      goto LABEL_38;
    }

LABEL_36:
    v116 = v166;
    v106 = 1;
    goto LABEL_40;
  }

  v105 = 0;
  v106 = 0;
  v107 = v168;
LABEL_39:
  v116 = v166;
LABEL_40:

  sub_1005F4744(v107, v105, v106);
  v117 = v161;
  sub_1000089F8(v177, v161, &unk_1011814D0);
  v118 = v174;
  if (v175(v117, 1, v174) == 1)
  {
    sub_1000095E8(v117, &unk_1011814D0);
    v119 = v165;
    (*(v104 + 56))(v165, 1, 1, v164);
LABEL_43:
    sub_1000095E8(v119, &qword_101188C20);
    v121 = _s8MetadataV13ConfigurationOMa(0);
    (*(*(v121 - 8) + 56))(v116, 1, 1, v121);
    goto LABEL_45;
  }

  v119 = v165;
  Playlist.lastModifiedDate.getter();
  (*(v103 + 8))(v117, v118);
  v120 = v164;
  if ((*(v104 + 48))(v119, 1, v164) == 1)
  {
    goto LABEL_43;
  }

  v122 = *(v104 + 32);
  v123 = v144;
  v122(v144, v119, v120);
  v124 = v123;
  v103 = v173;
  v122(v116, v124, v120);
  v125 = _s8MetadataV13ConfigurationOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v125 - 8) + 56))(v116, 0, 1, v125);
LABEL_45:
  v126 = swift_getKeyPath();
  __chkstk_darwin(v126);
  *(&v143 - 2) = v8;
  *(&v143 - 1) = v116;
  v178 = v8;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v116, &unk_1011A4760);
  v127 = v162;
  sub_1000089F8(v177, v162, &unk_1011814D0);
  v128 = v174;
  if (v175(v127, 1, v174) == 1)
  {
    sub_1000095E8(v127, &unk_1011814D0);
  }

  else
  {
    v129 = sub_1005F7078();
    v131 = v130;
    (*(v103 + 8))(v127, v128);
    if (v131)
    {
      goto LABEL_49;
    }
  }

  v129 = 0;
  v131 = 0xE000000000000000;
LABEL_49:
  swift_getKeyPath();
  v178 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v132 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v133 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v134 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  v135 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 24);
  if (v133)
  {
    sub_100030444(*(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16));
    v136 = v134;
    v137 = v135;
  }

  else
  {
    v136 = 0;
    v137 = 0;
  }

  sub_1004E5E44(v132, v133, v134);
  sub_1004E5E90(v132, v133, v134);
  sub_1005F4CC8(v129, v131, v136, v137);
  if ((v167 & 1) == 0)
  {
    goto LABEL_58;
  }

  v138 = v149;
  sub_1000089F8(v177, v149, &unk_1011814D0);
  if (v175(v138, 1, v128) == 1)
  {
    sub_1000095E8(v138, &unk_1011814D0);
LABEL_58:
    v140 = &off_1010993C8;
    goto LABEL_59;
  }

  v139 = Playlist.supportsSing.getter();
  (*(v173 + 8))(v138, v128);
  if (v139 == 2 || (v139 & 1) == 0)
  {
    goto LABEL_58;
  }

  v140 = &off_1010993A0;
LABEL_59:
  v141 = sub_10010E594(v140);
  sub_1005F4FB8(v141);
  return sub_1005F92F8(v172, type metadata accessor for ArtworkImage.Info);
}

uint64_t sub_1005F8850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F88B4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_100030444(v1);
  return sub_100020438(v4);
}

uint64_t sub_1005F8958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005FB05C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

void *sub_1005F89BC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1005F8C10(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1005F8A4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1005F8C10((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1005F89BC(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_1005F8C10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v66 = a1;
  v6 = type metadata accessor for AudioVariant();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v75 = (v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = v61 - v11;
  v13 = __chkstk_darwin(v10);
  v76 = (v61 - v14);
  result = __chkstk_darwin(v13);
  v65 = v61 - v16;
  v17 = *(a3 + 16);
  v18 = *(a4 + 16);
  v77 = v7 + 16;
  v73 = a4;
  v74 = a3;
  v69 = v7;
  if (v18 >= v17)
  {
    v42 = 0;
    v43 = *(a3 + 56);
    v64 = a3 + 56;
    v44 = 1 << *(a3 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v43;
    v47 = (v44 + 63) >> 6;
    v72 = a4 + 56;
    v76 = (v7 + 8);
    j = v47;
    v68 = 0;
    if (v46)
    {
      goto LABEL_30;
    }

LABEL_31:
    v49 = v42;
    while (1)
    {
      v42 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v42 >= v47)
      {
LABEL_44:

        return sub_1003B1B78(v66, v62, v68, a3);
      }

      v50 = *(v64 + 8 * v42);
      ++v49;
      if (v50)
      {
        v48 = __clz(__rbit64(v50));
        for (i = ((v50 - 1) & v50); ; i = ((v46 - 1) & v46))
        {
          v51 = v48 | (v42 << 6);
          v52 = *(a3 + 48);
          v53 = *(v7 + 72);
          v70 = v51;
          v54 = *(v7 + 16);
          v54(v75, v52 + v53 * v51, v6);
          sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant);
          v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v56 = -1 << *(a4 + 32);
          v57 = v55 & ~v56;
          if ((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v65 = (v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v58 = ~v56;
            while (1)
            {
              v54(v12, *(v73 + 48) + v57 * v53, v6);
              sub_1005FAAD4(&qword_10118D1F8, &type metadata accessor for AudioVariant);
              v59 = dispatch thunk of static Equatable.== infix(_:_:)();
              v60 = *v76;
              (*v76)(v12, v6);
              if (v59)
              {
                break;
              }

              v57 = (v57 + 1) & v58;
              if (((*(v72 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
              {
                a4 = v73;
                goto LABEL_42;
              }
            }

            result = (v60)(v75, v6);
            v7 = v69;
            *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
            v47 = j;
            v27 = __OFADD__(v68++, 1);
            a4 = v73;
            a3 = v74;
            v46 = i;
            if (v27)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v60 = *v76;
LABEL_42:
            result = (v60)(v75, v6);
            a3 = v74;
            v7 = v69;
            v47 = j;
            v46 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v48 = __clz(__rbit64(v46));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v68 = 0;
    v19 = a4;
    v20 = 0;
    v22 = v19 + 56;
    v21 = *(v19 + 56);
    v61[0] = v22;
    v23 = 1 << *(v22 - 24);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v63 = v7 + 32;
    v64 = v26;
    v70 = a3 + 56;
    v75 = (v7 + 8);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_10:
    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v26)
      {
        goto LABEL_44;
      }

      v30 = *(v61[0] + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        for (j = (v30 - 1) & v30; ; j = (v25 - 1) & v25)
        {
          v31 = *(v7 + 72);
          v32 = *(v73 + 48) + v31 * (v28 | (v20 << 6));
          v33 = v65;
          i = *(v7 + 16);
          v72 = v31;
          i(v65, v32, v6);
          (*(v7 + 32))(v76, v33, v6);
          sub_1005FAAD4(&qword_10118D1F0, &type metadata accessor for AudioVariant);
          v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v35 = -1 << *(a3 + 32);
          v36 = v34 & ~v35;
          v37 = v36 >> 6;
          v38 = 1 << v36;
          if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) != 0)
          {
            v61[1] = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v39 = ~v35;
            while (1)
            {
              i(v12, *(v74 + 48) + v36 * v72, v6);
              sub_1005FAAD4(&qword_10118D1F8, &type metadata accessor for AudioVariant);
              v40 = dispatch thunk of static Equatable.== infix(_:_:)();
              v41 = *v75;
              (*v75)(v12, v6);
              if (v40)
              {
                break;
              }

              v36 = (v36 + 1) & v39;
              v37 = v36 >> 6;
              v38 = 1 << v36;
              if (((1 << v36) & *(v70 + 8 * (v36 >> 6))) == 0)
              {
                a3 = v74;
                goto LABEL_21;
              }
            }

            result = (v41)(v76, v6);
            v25 = j;
            v66[v37] |= v38;
            v7 = v69;
            v27 = __OFADD__(v68++, 1);
            a3 = v74;
            v26 = v64;
            if (v27)
            {
              goto LABEL_48;
            }

            if (!v25)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v41 = *v75;
LABEL_21:
            result = (v41)(v76, v6);
            v7 = v69;
            v26 = v64;
            v25 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v28 = __clz(__rbit64(v25));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1005F92F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005F93A0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = *(v0 + 24);
}

uint64_t sub_1005F9428()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_1005F94C0(v1, v2, v6);
  return sub_1005F9490(v4, v5, v7);
}

uint64_t sub_1005F9490(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1005F94A8();
  }

  return result;
}

uint64_t sub_1005F94C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1005F94B4();
  }

  return result;
}

uint64_t sub_1005F94D8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v134 = a4;
  v135 = a8;
  v132 = a3;
  v133 = a7;
  v130 = a5;
  v131 = a6;
  v129 = a2;
  v10 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v10 - 8);
  v113 = &v112 - v11;
  v12 = sub_10010FC20(&unk_1011A4760);
  __chkstk_darwin(v12 - 8);
  v141 = (&v112 - v13);
  v14 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v14 - 8);
  v139 = &v112 - v15;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v120 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v118 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v20 - 8);
  v138 = &v112 - v21;
  v22 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&unk_101184730);
  v26 = __chkstk_darwin(v25 - 8);
  v128 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v112 - v29;
  v31 = __chkstk_darwin(v28);
  v121 = &v112 - v32;
  v33 = __chkstk_darwin(v31);
  v119 = &v112 - v34;
  v35 = __chkstk_darwin(v33);
  v122 = &v112 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v112 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = &v112 - v41;
  __chkstk_darwin(v40);
  v44 = &v112 - v43;
  v45 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v45 - 8);
  v47 = &v112 - v46;
  v48 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v48 - 8);
  v137 = &v112 - v49;
  v140 = a1;
  sub_1000089F8(a1, v44, &unk_101184730);
  v50 = type metadata accessor for Album();
  v51 = *(v50 - 8);
  v136 = *(v51 + 48);
  v52 = v136(v44, 1, v50);
  v127 = v30;
  v126 = v51;
  if (v52 == 1)
  {
    sub_1000095E8(v44, &unk_101184730);
    v53 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v53 - 8) + 56))(v47, 1, 1, v53);
  }

  else
  {
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v50, &protocol witness table for Album, v47);
    (*(v51 + 8))(v44, v50);
  }

  v54 = sub_10010FC20(&unk_101182950);
  (*(*(v54 - 8) + 56))(v24, 1, 11, v54);
  v55 = Corner.large.unsafeMutableAddressor();
  v56 = *v55;
  v57 = v55[1];
  v58 = *(v55 + 16);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v142);
  v59 = v137;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v47, v24, 0, 1, v142, v56, v57, v58, v137);
  v60 = type metadata accessor for ArtworkImage.Info(0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v125 = v60;
  v124 = v62;
  v123 = v61 + 56;
  (v62)(v59, 0, 1);
  v63 = v140;
  sub_1000089F8(v140, v42, &unk_101184730);
  v64 = v136;
  if (v136(v42, 1, v50) == 1)
  {
    sub_1000095E8(v42, &unk_101184730);
    v65 = type metadata accessor for Artwork();
    (*(*(v65 - 8) + 56))(v138, 1, 1, v65);
    v66 = v139;
    v67 = v126;
  }

  else
  {
    Album.staticDetailTallArtwork.getter();
    v67 = v126;
    (*(v126 + 8))(v42, v50);
    v66 = v139;
  }

  sub_1000089F8(v63, v39, &unk_101184730);
  v68 = v64(v39, 1, v50);
  v69 = v141;
  v70 = v127;
  if (v68 == 1)
  {
    sub_1000095E8(v39, &unk_101184730);
  }

  else
  {
    v71 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v67 + 8))(v39, v50);
    if (v71)
    {
      goto LABEL_11;
    }
  }

  v71 = sub_10010BDB8(_swiftEmptyArrayStorage);

LABEL_11:
  v72 = v122;
  sub_1000089F8(v63, v122, &unk_101184730);
  v73 = v64(v72, 1, v50);
  v122 = v71;
  if (v73 == 1)
  {
    sub_1000095E8(v72, &unk_101184730);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v120 = String.init(localized:table:bundle:locale:comment:)();
    v118 = v74;
  }

  else
  {
    v120 = Album.title.getter();
    v118 = v75;
    (*(v67 + 8))(v72, v50);
  }

  v76 = v119;
  sub_1000089F8(v63, v119, &unk_101184730);
  if (v64(v76, 1, v50) == 1)
  {
    sub_1000095E8(v76, &unk_101184730);
    v77 = 1;
  }

  else
  {
    Album.favoriteStatus.getter();
    (*(v67 + 8))(v76, v50);
    v77 = 0;
  }

  v78 = type metadata accessor for MusicFavoriteStatus();
  v79 = *(v78 - 8);
  v80 = *(v79 + 56);
  v116 = v78;
  v115 = v80;
  v114 = v79 + 56;
  (v80)(v66, v77, 1);
  v81 = v121;
  sub_1000089F8(v63, v121, &unk_101184730);
  if (v64(v81, 1, v50) == 1)
  {
    sub_1000095E8(v81, &unk_101184730);
    v119 = 0;
    v117 = 0;
    v82 = 255;
  }

  else
  {
    v119 = Album.artistName.getter();
    v117 = v83;
    (*(v67 + 8))(v81, v50);
    v82 = 1;
  }

  LODWORD(v121) = v82;
  sub_1000089F8(v63, v70, &unk_101184730);
  if (v64(v70, 1, v50) == 1)
  {
    sub_1000095E8(v70, &unk_101184730);
    v84 = 1;
  }

  else
  {
    v85 = sub_10010FC20(&unk_1011841D0);
    v86 = v113;
    (*(*(v85 - 8) + 56))(v113, 1, 1, v85);
    sub_1005F5C30(v86, v69);
    sub_1000095E8(v86, &unk_1011842D0);
    (*(v67 + 8))(v70, v50);
    v84 = 0;
  }

  v127 = a9;
  v87 = _s8MetadataV13ConfigurationOMa(0);
  v88 = *(*(v87 - 8) + 56);
  v88(v69, v84, 1, v87);
  v89 = v128;
  sub_1000089F8(v63, v128, &unk_101184730);
  if (v136(v89, 1, v50) == 1)
  {
    sub_1000095E8(v89, &unk_101184730);
LABEL_27:

    v128 = 0;
    v136 = 0xE000000000000000;
    goto LABEL_28;
  }

  v90 = sub_1005F606C();
  v92 = v91;
  (*(v67 + 8))(v89, v50);
  v136 = v92;
  if (!v92)
  {
    goto LABEL_27;
  }

  v128 = v90;
LABEL_28:
  v126 = sub_10010E594(&off_101099300);
  _s13ConfigurationCMa(0);
  v93 = swift_allocObject();
  v94 = OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo;
  v124(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkInfo, 1, 1, v125);
  v95 = OBJC_IVAR____TtCV5Music6Header13Configuration__tallArtwork;
  v96 = type metadata accessor for Artwork();
  (*(*(v96 - 8) + 56))(v93 + v95, 1, 1, v96);
  v97 = OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus;
  v115(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__favoriteStatus, 1, 1, v116);
  v98 = v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__attribution;
  v99 = (v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__artworkAction);
  v100 = OBJC_IVAR____TtCV5Music6Header13Configuration__metadata;
  v88((v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__metadata), 1, 1, v87);
  v101 = (v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v125 = (v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__playbackIntentProvider);
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = 0;
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = 0;
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = 0;
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) = 0;
  ObservationRegistrar.init()();
  sub_1000095E8(v140, &unk_101184730);
  *(v93 + 16) = v129;
  sub_1000095E8(v93 + v94, &unk_10119F000);
  sub_10003D17C(v137, v93 + v94, &unk_10119F000);
  sub_1000095E8(v93 + v95, &unk_101188920);
  sub_10003D17C(v138, v93 + v95, &unk_101188920);
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__videoArtworks) = v122;
  v102 = (v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  v103 = v118;
  *v102 = v120;
  v102[1] = v103;
  sub_1000095E8(v93 + v97, &qword_1011831D0);
  sub_10003D17C(v139, v93 + v97, &qword_1011831D0);
  v104 = v117;
  *v98 = v119;
  *(v98 + 8) = v104;
  *(v98 + 16) = v121;
  v105 = (v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__attributionAction);
  v106 = v131;
  *v105 = v130;
  v105[1] = v106;
  *v99 = 0;
  v99[1] = 0;
  sub_1000095E8(v93 + v100, &unk_1011A4760);
  sub_10003D17C(v141, v93 + v100, &unk_1011A4760);
  v107 = v136;
  *v101 = v128;
  v101[1] = v107;
  v108 = v135;
  v101[2] = v133;
  v101[3] = v108;
  v109 = v125;
  v110 = v134;
  *v125 = v132;
  v109[1] = v110;
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__playIntentButtonIntents) = v126;
  *(v93 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics) = v127;
  return v93;
}

uint64_t sub_1005FA4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Info(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10119F000);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_10010FC20(&qword_101198358);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1000089F8(a1, &v20 - v13, &unk_10119F000);
  sub_1000089F8(a2, &v14[v15], &unk_10119F000);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000089F8(v14, v10, &unk_10119F000);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1002D8E5C(&v14[v15], v7);
      v18 = static ArtworkImage.Info.__derived_struct_equals(_:_:)(v10, v7);
      sub_1005F92F8(v7, type metadata accessor for ArtworkImage.Info);
      sub_1005F92F8(v10, type metadata accessor for ArtworkImage.Info);
      sub_1000095E8(v14, &unk_10119F000);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1005F92F8(v10, type metadata accessor for ArtworkImage.Info);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v14, &qword_101198358);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v14, &unk_10119F000);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1005FA780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicFavoriteStatus();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&qword_101198360);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1000089F8(a1, &v21 - v13, &qword_1011831D0);
  sub_1000089F8(a2, &v14[v15], &qword_1011831D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1000089F8(v14, v10, &qword_1011831D0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1005FAAD4(&qword_101198368, &type metadata accessor for MusicFavoriteStatus);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v14, &qword_1011831D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v14, &qword_101198360);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v14, &qword_1011831D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1005FAAD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005FAB1C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1005FAB88(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1005FABCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v21 - v12, &unk_101188920);
  sub_1000089F8(a2, &v13[v15], &unk_101188920);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &unk_101188920);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1005FAAD4(&unk_10118D3D0, &type metadata accessor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v13, &unk_101188920);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000095E8(v13, &unk_101191420);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000095E8(v13, &unk_101188920);
  v17 = 0;
  return v17 & 1;
}

double sub_1005FAF54()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

double sub_1005FAF64()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

double sub_1005FAF74()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1005FAF84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&unk_1011841D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005FB008()
{
  result = qword_101198370;
  if (!qword_101198370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198370);
  }

  return result;
}

unint64_t sub_1005FB05C()
{
  result = qword_101198378;
  if (!qword_101198378)
  {
    sub_1001109D0(&qword_10118E380);
    sub_1005FB0E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198378);
  }

  return result;
}

unint64_t sub_1005FB0E0()
{
  result = qword_101198380;
  if (!qword_101198380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198380);
  }

  return result;
}

void sub_1005FB1CC()
{
  _s8MetadataV13ConfigurationOMa(319);
  if (v0 <= 0x3F)
  {
    sub_1005FB298(319, &qword_1011891F0, &unk_1011891F8);
    if (v1 <= 0x3F)
    {
      sub_1005FB298(319, &qword_10118E378, &qword_10118E380);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005FB298(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1001109D0(a3);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1005FB2EC()
{
  sub_1005FB360();
  if (v0 <= 0x3F)
  {
    sub_1005FB3D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1005FB360()
{
  if (!qword_1011984B0)
  {
    sub_1001109D0(&qword_1011984B8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1011984B0);
    }
  }
}

void sub_1005FB3D8()
{
  if (!qword_1011984C0)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1011984C0);
    }
  }
}

uint64_t sub_1005FB420(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005FB444(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FB4A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1005FB500(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1005FB540@<X0>(_BYTE *a1@<X8>)
{
  sub_1005FF400();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1005FB5DC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101188610);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for Font.TextStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011984F8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = sub_10010FC20(&qword_101198500);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  sub_1005FBA40(v1, v14);
  v18 = sub_10010FC20(&qword_101198508);
  sub_1005FBEE8(&v14[*(v18 + 36)]);
  sub_1005FC4A4(v10);
  v19 = type metadata accessor for Font.Design();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  static Font.Weight.semibold.getter();
  v20 = static Font.system(_:design:weight:)();
  sub_1000095E8(v6, &qword_101188610);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v22 = &v14[*(v12 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = v1 + *(_s8MetadataVMa(0) + 20);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v26 = v38;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v24, 0);
    (*(v39 + 8))(v26, v40);
    LOBYTE(v24) = v42;
  }

  v27 = v24 == 2 || (v24 & 1) == 0;
  v28 = swift_getKeyPath();
  sub_1005FEEFC(v14, v17);
  v29 = &v17[*(v15 + 36)];
  *v29 = v28;
  v29[8] = v27;
  v30 = AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = v30[3];
  v35 = sub_1005FEF6C();

  View.accessibilityIdentifier(_:)(v31, v32, v33, v34, v15, v35);

  return sub_1000095E8(v17, &qword_101198500);
}

uint64_t sub_1005FBA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = type metadata accessor for Font.TextStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s8MetadataV13AlbumMetadataVMa(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101198568);
  __chkstk_darwin(v8);
  v10 = (&v30 - v9);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s8MetadataV13ConfigurationOMa(0);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005FF33C(v32, v17, _s8MetadataV13ConfigurationOMa);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v5;
    (*(v12 + 32))(v14, v17, v11);
    v18 = Date.lastUpdatedDateString.getter();
    if (v19)
    {
      v34 = v18;
      v35 = v19;
      sub_100009838();
      v20 = Text.init<A>(_:)();
      v22 = v21;
      v24 = v23;
      v26 = v25 & 1;
      sub_10021D0C0(v20, v21, v25 & 1);
    }

    else
    {
      v20 = 0;
      v22 = 0;
      v26 = 0;
      v24 = 0;
    }

    *v10 = v20;
    v10[1] = v22;
    v10[2] = v26;
    v10[3] = v24;
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101186800);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa);
    _ConditionalContent<>.init(storage:)();
    sub_10024EA04(v20, v22, v26, v24);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v27 = *(v17 + 4);
    v28 = *(v17 + 1);
    *v7 = *v17;
    *(v7 + 1) = v28;
    *(v7 + 4) = v27;
    *(v7 + 5) = swift_getKeyPath();
    v7[48] = 0;
    v34 = 0x4032000000000000;
    (*(v30 + 104))(v4, enum case for Font.TextStyle.caption2(_:), v31);
    sub_100363C0C();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    sub_1005FF33C(v7, v10, _s8MetadataV13AlbumMetadataVMa);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_101186800);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa);
    _ConditionalContent<>.init(storage:)();
    return sub_1005FF3A4(v7);
  }
}

uint64_t sub_1005FBEE8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for BlendMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v42 = &v40 - v9;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1 + *(_s8MetadataVMa(0) + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (v16 == 1)
  {
    v17 = *v14;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v15, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v17) = v47;
  }

  if ((v17 & 0xFE) == 2)
  {
    v19 = static HierarchicalShapeStyle.secondary.getter();
    v45 = &type metadata for HierarchicalShapeStyle;
    v46 = &protocol witness table for HierarchicalShapeStyle;
    LODWORD(v44) = v19;
  }

  else
  {
    if (v17)
    {
      v20 = static Color.black.getter();
    }

    else
    {
      v20 = static Color.white.getter();
    }

    v48 = &type metadata for Color;
    v49 = &protocol witness table for Color;
    *&v47 = v20;
    sub_100188D80(&v47, &v44);
  }

  sub_100188D80(&v44, &v47);
  if (v16)
  {
    v21 = 0.6;
    if (v15)
    {
      v21 = 0.45;
    }

    if ((v15 & 0xFE) == 2)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = v21;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v15, 0);
    v24 = *(v11 + 8);
    v24(v13, v10);
    v25 = 0.6;
    if (v44)
    {
      v25 = 0.45;
    }

    if ((v44 & 0xFE) == 2)
    {
      v22 = 1.0;
    }

    else
    {
      v22 = v25;
    }

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v15, 0);
    v24(v13, v10);
    LOBYTE(v15) = v44;
  }

  v27 = *(v3 + 104);
  if ((v15 & 0xFE) == 2)
  {
    v27(v7, enum case for BlendMode.normal(_:), v2);
    v28 = *(v3 + 32);
  }

  else
  {
    v29 = &enum case for BlendMode.plusDarker(_:);
    if ((v15 & 1) == 0)
    {
      v29 = &enum case for BlendMode.plusLighter(_:);
    }

    v30 = v41;
    v27(v41, *v29, v2);
    v28 = *(v3 + 32);
    v28(v7, v30, v2);
  }

  v31 = v42;
  v28(v42, v7, v2);
  v32 = sub_10000954C(&v47, v48);
  v33 = __chkstk_darwin(v32);
  (*(v35 + 16))(&v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
  v36 = AnyShapeStyle.init<A>(_:)();
  v37 = sub_10010FC20(&qword_101198560);
  v38 = v43;
  v28((v43 + *(v37 + 36)), v31, v2);
  *v38 = v36;
  *(v38 + 8) = v22;
  return sub_10000959C(&v47);
}

uint64_t sub_1005FC4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(_s8MetadataVMa(0) + 20);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v8, 0);
    (*(v4 + 8))(v6, v3);
    if (v14[15])
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = &enum case for Font.TextStyle.caption2(_:);
    goto LABEL_6;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = &enum case for Font.TextStyle.footnote(_:);
LABEL_6:
  v11 = *v9;
  v12 = type metadata accessor for Font.TextStyle();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

uint64_t sub_1005FC668(uint64_t a1)
{
  result = sub_1005FF2D4(&qword_1011984F0, _s8MetadataVMa);
  *(a1 + 8) = result;
  return result;
}

void sub_1005FC6DC()
{
  v0 = String.nonBreakingSpace.unsafeMutableAddressor();
  v2 = *v0;
  v3 = v0[1];

  v1._countAndFlagsBits = 2144194;
  v1._object = 0xA300000000000000;
  String.append(_:)(v1);
  qword_101198388 = v2;
  unk_101198390 = v3;
}

uint64_t sub_1005FC734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001104F0(&off_10109BE20);
  v8 = sub_1005FCB08(v7);

  if (qword_10117F968 != -1)
  {
    swift_once();
  }

  v32 = qword_101198388;
  v33 = unk_101198390;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  if (v10 != 1)
  {
    sub_1005FF6B8(v9, 0);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    v29 = v8;
    v13 = v12;
    os_log(_:dso:log:_:_:)();

    v8 = v29;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v9, 0);
    (*(v30 + 8))(v6, v31);
    if ((v45 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = static HorizontalAlignment.leading.getter();
    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = static HorizontalAlignment.center.getter();
LABEL_8:
  v14 = v11;
  v49 = 1;
  sub_1005FD420(&v45);
  v39 = *&v46[48];
  v40 = *&v46[64];
  v35 = v45;
  v36 = *v46;
  v37 = *&v46[16];
  v38 = *&v46[32];
  v41 = *&v46[80];
  v42[0] = v45;
  v42[1] = *v46;
  v42[2] = *&v46[16];
  v42[3] = *&v46[32];
  v42[4] = *&v46[48];
  v42[5] = *&v46[64];
  v42[6] = *&v46[80];
  sub_1000089F8(&v35, &v43, &qword_101198630);
  sub_1000095E8(v42, &qword_101198630);
  *&v48[71] = v39;
  *&v48[55] = v38;
  *&v48[87] = v40;
  *&v48[103] = v41;
  *&v48[7] = v35;
  *&v48[23] = v36;
  *&v48[39] = v37;
  v15 = v49;
  v43 = v14;
  v44[0] = v49;
  v16 = *&v48[48];
  *&v44[65] = *&v48[64];
  v17 = *&v48[64];
  *&v44[81] = *&v48[80];
  v18 = *&v48[80];
  *&v44[97] = *&v48[96];
  *&v44[1] = *v48;
  v19 = *v48;
  v20 = *&v48[16];
  *&v44[17] = *&v48[16];
  *&v44[33] = *&v48[32];
  v21 = *&v48[32];
  *&v44[49] = *&v48[48];
  v22 = *v44;
  *(a2 + 24) = v14;
  v23 = *&v44[64];
  *(a2 + 88) = *&v44[48];
  v24 = *&v44[16];
  *(a2 + 72) = *&v44[32];
  *(a2 + 56) = v24;
  *(a2 + 40) = v22;
  v25 = *&v44[80];
  *(a2 + 136) = *&v44[96];
  *(a2 + 120) = v25;
  *(a2 + 104) = v23;
  *&v46[65] = v17;
  *&v46[81] = v18;
  *v47 = *&v48[96];
  *&v44[112] = *&v48[111];
  v26 = v32;
  v27 = v33;
  *a2 = v8;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 152) = *&v44[112];
  v45 = v14;
  v46[0] = v15;
  *&v47[15] = *&v48[111];
  *&v46[1] = v19;
  *&v46[17] = v20;
  *&v46[33] = v21;
  *&v46[49] = v16;

  sub_1000089F8(&v43, &v34, &qword_101198638);
  sub_1000095E8(&v45, &qword_101198638);
}

char *sub_1005FCB08(uint64_t a1)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v73[2] = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioVariant();
  v79 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  if (!*(a1 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v78 = v7;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = sub_100042A50(0, a1);
  if (v11 != 1)
  {
    if (v14)
    {
      if (v11)
      {

        TextArray.Element.init(_:)(v10, v11, v83);
        v80 = sub_10049AA60(0, 1, 1, _swiftEmptyArrayStorage);
        v24 = *(v80 + 2);
        v23 = *(v80 + 3);
        if (v24 >= v23 >> 1)
        {
          v80 = sub_10049AA60((v23 > 1), v24 + 1, 1, v80);
        }

        v21 = v78;
        v25 = v80;
        *(v80 + 2) = v24 + 1;
        v26 = &v25[48 * v24];
        v27 = v83[1];
        *(v26 + 2) = v83[0];
        *(v26 + 3) = v27;
        *(v26 + 4) = v83[2];
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      else
      {

        v80 = _swiftEmptyArrayStorage;
        v21 = v78;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

      TextArray.Element.init(_:)(v12, v13, v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_10049AA60(0, *(v80 + 2) + 1, 1, v80);
      }

      v19 = *(v80 + 2);
      v28 = *(v80 + 3);
      v20 = v19 + 1;
      if (v19 >= v28 >> 1)
      {
        v80 = sub_10049AA60((v28 > 1), v19 + 1, 1, v80);
      }

      v16 = v84;
      goto LABEL_20;
    }

LABEL_13:
    v80 = _swiftEmptyArrayStorage;
    v21 = v78;
    goto LABEL_21;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v84;
  TextArray.Element.init(_:)(v15, v17, v84);
  v80 = sub_10049AA60(0, 1, 1, _swiftEmptyArrayStorage);
  v19 = *(v80 + 2);
  v18 = *(v80 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v21 = v78;
LABEL_20:
    v29 = v80;
    *(v80 + 2) = v20;
    v30 = &v29[48 * v19];
    v31 = *v16;
    v32 = v16[2];
    *(v30 + 3) = v16[1];
    *(v30 + 4) = v32;
    *(v30 + 2) = v31;
LABEL_21:
    if ((sub_100042A50(1, a1) & 1) == 0)
    {
      return v80;
    }

    v20 = Array<A>.removingEquivalents()();
    a1 = *(v20 + 16);
    v74 = v5;
    if (!a1)
    {
      break;
    }

    v33 = sub_1003AE06C(a1, 0);
    v19 = sub_10019802C(&v85, &v33[(*(v79 + 80) + 32) & ~*(v79 + 80)], a1, v20);
    v16 = v85;
    v5 = *(&v86 + 1);

    sub_10005C9F8();
    if (v19 == a1)
    {

      v5 = v74;
      v21 = v78;
      goto LABEL_26;
    }

    __break(1u);
LABEL_55:
    v80 = sub_10049AA60((v18 > 1), v20, 1, v80);
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_26:
  *&v85 = v33;
  sub_1005FDB28(&v85);
  v34 = *(v85 + 16);
  if (v34)
  {
    v77 = *(v79 + 16);
    v35 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v73[1] = v85;
    v36 = v85 + v35;
    v76 = (v79 + 8);
    v79 += 16;
    v75 = *(v79 + 56);
    v37 = v80;
    v77(v21, v85 + v35, v5);
    while (1)
    {
      AudioVariant.symbolString.getter();
      if (v40)
      {
        v41 = qword_10117F878;

        if (v41 != -1)
        {
          swift_once();
        }

        v42 = qword_101218F90;
        v43 = Image.init(_:bundle:)();
      }

      else
      {
        v43 = 0;
      }

      v44 = AudioVariant.badgeText.getter();
      v46 = v45;
      v47 = AudioVariant.accessibilityLabel.getter();
      v49 = v48;
      if (!v43)
      {
        break;
      }

      v80 = v34;
      if (!v46)
      {

        v61 = Text.init(_:)();
LABEL_42:
        v54 = v61;
        v56 = v62;
        v58 = v63;
        v60 = v64;
        goto LABEL_43;
      }

      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v50);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v51._countAndFlagsBits = 41154;
      v51._object = 0xA200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
      v52._countAndFlagsBits = v44;
      v52._object = v46;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);

      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
      LocalizedStringKey.init(stringInterpolation:)();
      v54 = Text.init(_:tableName:bundle:comment:)();
      v56 = v55;
      v58 = v57;
      v60 = v59;

LABEL_43:
      v65 = v58 & 1;
      if (v49)
      {
        v66 = v47;
      }

      else
      {
        v66 = 0;
      }

      TextArray.Element.init(text:accessibilityLabel:)(v54, v56, v58 & 1, v60, v66, v49, &v85);
      sub_10024EA48(v54, v56, v58 & 1, v60);
      sub_10021D0C0(v54, v56, v58 & 1);

      v67 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_10049AA60(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = v78;
      v69 = *(v67 + 2);
      v68 = *(v67 + 3);
      v37 = v67;
      if (v69 >= v68 >> 1)
      {
        v37 = sub_10049AA60((v68 > 1), v69 + 1, 1, v67);
      }

      sub_10011895C(v54, v56, v65);

      sub_10024EA04(v54, v56, v65, v60);

      v5 = v74;
      (*v76)(v39, v74);
      *(v37 + 2) = v69 + 1;
      v70 = &v37[48 * v69];
      v71 = v85;
      v72 = v87;
      *(v70 + 3) = v86;
      *(v70 + 4) = v72;
      *(v70 + 2) = v71;
      v34 = v80;
LABEL_29:
      v36 += v75;
      if (!--v34)
      {

        return v37;
      }

      v77(v39, v36, v5);
    }

    if (!v46)
    {
      v38 = v78;
      (*v76)(v78, v5);
      v39 = v38;

      goto LABEL_29;
    }

    v80 = v34;
    v81 = v44;
    v82 = v46;
    sub_100009838();
    v61 = Text.init<A>(_:)();
    goto LABEL_42;
  }

  return v80;
}

uint64_t sub_1005FD420@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001104F0(&off_10109BDD0);
  v3 = sub_1005FCB08(v2);

  if (qword_10117F968 != -1)
  {
    swift_once();
  }

  v4 = unk_101198390;
  v8 = qword_101198388;
  _s8MetadataV13AlbumMetadataVMa(0);
  swift_bridgeObjectRetain_n();
  sub_10010FC20(&qword_10119A070);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = sub_1001104F0(&off_10109BDF8);
  v6 = sub_1005FCB08(v5);

  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  *(a1 + 104) = v4;
}

double sub_1005FD5BC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static Axis.Set.horizontal.getter();
  sub_1005FC734(v2, &v12);
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v33[6] = v18;
  v33[7] = v19;
  v33[8] = v20;
  v33[9] = v21;
  v33[2] = v14;
  v33[3] = v15;
  v33[4] = v16;
  v33[5] = v17;
  v33[0] = v12;
  v33[1] = v13;
  sub_1000089F8(&v23, &v11, &qword_101198628);
  sub_1000095E8(v33, &qword_101198628);
  *&v22[55] = v26;
  *&v22[39] = v25;
  *&v22[103] = v29;
  *&v22[119] = v30;
  *&v22[135] = v31;
  *&v22[151] = v32;
  *&v22[71] = v27;
  *&v22[87] = v28;
  *&v22[7] = v23;
  *&v22[23] = v24;
  v5 = *&v22[96];
  *(a1 + 113) = *&v22[112];
  v6 = *&v22[144];
  *(a1 + 129) = *&v22[128];
  *(a1 + 145) = v6;
  v7 = *&v22[32];
  *(a1 + 49) = *&v22[48];
  v8 = *&v22[80];
  *(a1 + 65) = *&v22[64];
  *(a1 + 81) = v8;
  *(a1 + 97) = v5;
  result = *v22;
  v10 = *&v22[16];
  *(a1 + 1) = *v22;
  *(a1 + 17) = v10;
  *a1 = v4;
  *(a1 + 160) = *&v22[159];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_1005FD7A8()
{
  v1 = v0;
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s8MetadataV13ConfigurationOMa(0);
  __chkstk_darwin(v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005FF33C(v1, v12, _s8MetadataV13ConfigurationOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    Date.lastUpdatedDateString.getter();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    if (!v15)
    {
      return 0;
    }

    goto LABEL_6;
  }

  v16 = *v12;
  v17 = v12[1];
  v18 = v12[4];
  if (v17)
  {
    if (v17 == 1)
    {
LABEL_6:

      return 1;
    }

    v19 = v16;
    v20 = v17;
LABEL_11:
    sub_1005FF454(v19, v20);
    return 1;
  }

  if (v12[3])
  {

    v19 = v16;
    v20 = 0;
    goto LABEL_11;
  }

  v27[1] = v12[2];
  v21 = 0;
  v22 = *(v18 + 16);
  v23 = (v3 + 8);
  while (1)
  {
    if (v22 == v21)
    {

      sub_1005FF454(v16, 0);
      return 0;
    }

    if (v21 >= *(v18 + 16))
    {
      break;
    }

    (*(v3 + 16))(v5, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v2);
    AudioVariant.symbolString.getter();
    if (v24)
    {

      sub_1005FF454(v16, 0);
      (*v23)(v5, v2);
      return 1;
    }

    ++v21;
    AudioVariant.badgeText.getter();
    v26 = v25;
    result = (*v23)(v5, v2);
    if (v26)
    {

      v19 = v16;
      v20 = 0;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1005FDB28(void **a1)
{
  v2 = *(type metadata accessor for AudioVariant() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F094(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005FDBD0(v5);
  *a1 = v3;
}

void sub_1005FDBD0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for AudioVariant();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for AudioVariant() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005FDF80(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1005FDCFC(0, v2, 1, a1);
  }
}

void sub_1005FDCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AudioVariant();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v30 - v11;
  v14 = __chkstk_darwin(v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static AudioVariant.< infix(_:_:)(v22, v24);
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005FDF80(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for AudioVariant();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  v17 = __chkstk_darwin(v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_10059F01C(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_1005FE96C(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10059F01C(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_10059EF90(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = static AudioVariant.< infix(_:_:)(v26, v28);
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = static AudioVariant.< infix(_:_:)(v35, v38) & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_100498FCC(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_100498FCC((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_1005FE96C(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10059F01C(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_10059EF90(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = static AudioVariant.< infix(_:_:)(v103, v105);
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1005FE96C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for AudioVariant();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = static AudioVariant.< infix(_:_:)(v39, v42);
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = static AudioVariant.< infix(_:_:)(v19, v23);
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_10085E2A4(&v59, &v58, &v57);
}

uint64_t sub_1005FEEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011984F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005FEF6C()
{
  result = qword_101198510;
  if (!qword_101198510)
  {
    sub_1001109D0(&qword_101198500);
    sub_1005FF024();
    sub_100020674(&unk_10118A590, &qword_10119A2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198510);
  }

  return result;
}

unint64_t sub_1005FF024()
{
  result = qword_101198518;
  if (!qword_101198518)
  {
    sub_1001109D0(&qword_1011984F8);
    sub_1005FF0DC();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198518);
  }

  return result;
}

unint64_t sub_1005FF0DC()
{
  result = qword_101198520;
  if (!qword_101198520)
  {
    sub_1001109D0(&qword_101198508);
    sub_1005FF194();
    sub_100020674(&qword_101198550, &qword_101198558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198520);
  }

  return result;
}

unint64_t sub_1005FF194()
{
  result = qword_101198528;
  if (!qword_101198528)
  {
    sub_1001109D0(&qword_101198530);
    sub_1005FF218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198528);
  }

  return result;
}

unint64_t sub_1005FF218()
{
  result = qword_101198538;
  if (!qword_101198538)
  {
    sub_1001109D0(&qword_101198540);
    sub_10024E988();
    sub_1005FF2D4(&qword_101198548, _s8MetadataV13AlbumMetadataVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198538);
  }

  return result;
}

uint64_t sub_1005FF2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005FF33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005FF3A4(uint64_t a1)
{
  v2 = _s8MetadataV13AlbumMetadataVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005FF400()
{
  result = qword_101198570;
  if (!qword_101198570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198570);
  }

  return result;
}

uint64_t sub_1005FF454(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_1005FF4C4()
{
  sub_1005FF588();
  if (v0 <= 0x3F)
  {
    sub_1005FB298(319, &qword_1011891F0, &unk_1011891F8);
    if (v1 <= 0x3F)
    {
      sub_100402A50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1005FF588()
{
  if (!qword_1011985E0)
  {
    type metadata accessor for AudioVariant();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1011985E0);
    }
  }
}

unint64_t sub_1005FF5E0()
{
  result = qword_101198618;
  if (!qword_101198618)
  {
    sub_1001109D0(&qword_101198620);
    sub_1005FEF6C();
    sub_1005FF2D4(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198618);
  }

  return result;
}

uint64_t sub_1005FF6B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1005FF6D8()
{
  result = qword_101198650;
  if (!qword_101198650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101198650);
  }

  return result;
}

id sub_1005FF72C()
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v1 = [v5 cellForItemAtIndexPath:isa];

  if (v1)
  {
    v2 = v1;
    v3 = UIView.findPresentationSourceView<A>(id:)();

    if (v3)
    {
      return v3;
    }
  }

  return v5;
}

uint64_t sub_1005FF7FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011987C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  __chkstk_darwin(v13);
  v15 = &v22[-v14];
  __chkstk_darwin(v16);
  v18 = &v22[-v17];
  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[16] = v19 == 0;
  v23 = a1;
  v24 = a2;
  sub_10010FC20(&qword_1011987C8);
  sub_1006145B8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.horizontal.getter();
  UIHostingConfiguration.margins(_:_:)();
  v20 = *(v7 + 8);
  v20(v9, v6);
  static Edge.Set.bottom.getter();
  UIHostingConfiguration.margins(_:_:)();
  v20(v12, v6);
  static Edge.Set.top.getter();
  UIHostingConfiguration.margins(_:_:)();
  v20(v15, v6);
  v25 = static Color.clear.getter();
  a3[3] = sub_10010FC20(&qword_1011987E8);
  a3[4] = sub_100020674(&qword_1011987F0, &qword_1011987E8);
  sub_10001C8B8(a3);
  UIHostingConfiguration.background<A>(_:)();

  return (v20)(v18, v6);
}

uint64_t sub_1005FFADC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DynamicTypeSize();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101198AD8);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = sub_10010FC20(&qword_101198AE0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v52 - v14;
  v16 = sub_10010FC20(&qword_101198AE8);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = sub_10010FC20(&qword_101198AF0);
  v20 = *(v19 - 8);
  v56 = v19;
  v57 = v20;
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v58 = sub_10010FC20(&qword_101198AF8);
  __chkstk_darwin(v58);
  v24 = &v52 - v23;
  v62 = sub_10010FC20(&qword_101198B00);
  __chkstk_darwin(v62);
  v52 = &v52 - v25;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v26 = sub_10010FC20(&qword_101198B08);
  sub_1006001F0(v1, &v11[*(v26 + 44)]);
  v55 = _s8GridCellVMa(0);
  sub_10056CABC(v8);
  v27 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v53 + 8))(v8, v54);
  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  KeyPath = swift_getKeyPath();
  sub_10003D17C(v11, v15, &qword_101198AD8);
  v30 = &v15[*(v13 + 44)];
  *v30 = KeyPath;
  *(v30 + 1) = v28;
  v30[16] = 0;
  v31 = static Font.footnote.getter();
  v32 = swift_getKeyPath();
  sub_10003D17C(v15, v18, &qword_101198AE0);
  v33 = &v18[*(v16 + 36)];
  *v33 = v32;
  v33[1] = v31;
  v34 = v59;
  static AccessibilityChildBehavior.combine.getter();
  v35 = sub_10061528C();
  View.accessibilityElement(children:)();
  (*(v60 + 8))(v34, v61);
  sub_1000095E8(v18, &qword_101198AE8);
  v36 = v63;
  static AccessibilityTraits.isButton.getter();
  v67 = v16;
  v68 = v35;
  swift_getOpaqueTypeConformance2();
  v37 = v56;
  View.accessibilityAddTraits(_:)();
  (*(v64 + 8))(v36, v65);
  (*(v57 + 8))(v22, v37);
  v38 = AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = v38[3];
  v43 = sub_100615428();

  v44 = v52;
  View.accessibilityIdentifier(_:)(v39, v40, v41, v42, v58, v43);

  sub_1000095E8(v24, &qword_101198AF8);
  sub_10010FC20(&qword_10118F1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v46 = v55;
  v47 = (v2 + *(v55 + 28));
  v48 = v47[1];
  *(inited + 32) = *v47;
  *(inited + 40) = v48;
  v49 = (v2 + *(v46 + 32));
  v50 = v49[1];
  *(inited + 48) = *v49;
  *(inited + 56) = v50;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  sub_100615520();
  View.accessibilityInputLabels(_:)();

  return sub_1000095E8(v44, &qword_101198B00);
}

uint64_t sub_1006001F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v243 = a2;
  v208 = sub_10010FC20(&qword_101184C80);
  __chkstk_darwin(v208);
  v207 = &v203 - v3;
  v4 = sub_10010FC20(&qword_101198B38);
  __chkstk_darwin(v4 - 8);
  v206 = &v203 - v5;
  v240 = sub_10010FC20(&qword_101198B40);
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v205 = &v203 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v204 = &v203 - v8;
  v9 = sub_10010FC20(&qword_101198B48);
  __chkstk_darwin(v9 - 8);
  v242 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v203 - v12;
  v14 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v14 - 8);
  v222 = &v203 - v15;
  v16 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v16 - 8);
  v221 = &v203 - v17;
  v232 = type metadata accessor for Text.Suffix();
  v230 = *(v232 - 8);
  __chkstk_darwin(v232);
  v227 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10010FC20(&qword_101189260);
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v226 = &v203 - v19;
  v223 = sub_10010FC20(&qword_101198B50);
  __chkstk_darwin(v223);
  v225 = &v203 - v20;
  v224 = sub_10010FC20(&qword_101198B58);
  __chkstk_darwin(v224);
  v229 = &v203 - v21;
  v233 = sub_10010FC20(&qword_101198B60);
  __chkstk_darwin(v233);
  v234 = &v203 - v22;
  v23 = sub_10010FC20(&qword_101198B68);
  __chkstk_darwin(v23 - 8);
  v238 = &v203 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v247 = &v203 - v26;
  v27 = sub_10010FC20(&qword_101198B70);
  __chkstk_darwin(v27);
  v29 = &v203 - v28;
  v30 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v30 - 8);
  v32 = &v203 - v31;
  v33 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v33 - 8);
  v35 = &v203 - v34;
  v36 = sub_10010FC20(&qword_101198B78);
  __chkstk_darwin(v36);
  v38 = &v203 - v37;
  v218 = sub_10010FC20(&qword_101198B80);
  v215 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = &v203 - v39;
  v246 = sub_10010FC20(&qword_101198B88);
  v217 = *(v246 - 8);
  __chkstk_darwin(v246);
  v216 = &v203 - v40;
  v220 = sub_10010FC20(&qword_101198B90);
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v245 = &v203 - v41;
  v237 = sub_10010FC20(&qword_101198B98);
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = &v203 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v248 = &v203 - v44;
  v249 = a1;
  sub_1000089F8(a1, v32, &unk_10118A5E0);
  v45 = type metadata accessor for ArtworkImage.ViewModel(0);
  v46 = (*(*(v45 - 8) + 48))(v32, 1, v45);
  v241 = v13;
  if (v46 == 1)
  {
    sub_1000095E8(v32, &unk_10118A5E0);
    v47 = type metadata accessor for Artwork();
    (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  }

  else
  {
    v48 = type metadata accessor for Artwork();
    v49 = *(v48 - 8);
    (*(v49 + 16))(v35, v32, v48);
    sub_100615BE4(v32, type metadata accessor for ArtworkImage.ViewModel);
    (*(v49 + 56))(v35, 0, 1, v48);
  }

  v50 = sub_100615604(v35);
  sub_1000095E8(v35, &unk_101188920);
  v51 = objc_opt_self();
  v52 = &selRef_systemFillColor;
  if ((v50 & 1) == 0)
  {
    v52 = &selRef_clearColor;
  }

  v53 = [v51 *v52];
  v212 = Color.init(_:)();
  v54 = _s8GridCellVMa(0);
  v55 = *(v54 + 24);
  v56 = v54;
  v244 = v54;
  v57 = v249;
  v211 = *(v249 + v55);
  v210 = static Alignment.center.getter();
  v209 = v58;
  v59 = &v38[*(v36 + 36)];
  v60 = (v57 + *(v56 + 20));
  v213 = v36;
  v61 = *v60;
  v62 = v60[1];
  v63 = v60[2];
  v64 = v38;
  v65 = type metadata accessor for ArtworkImage.Info(0);
  v66 = v65[5];
  v67 = (v57 + v65[7]);
  v68 = *v67;
  *v258 = v67[1];
  *&v258[10] = *(v67 + 26);
  v257 = v68;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v57, v61, v62, v63, 1, v57 + v66, &v257, v29);
  v69 = v57 + v65[6];
  v70 = *v69;
  LOBYTE(v69) = *(v69 + 8);
  v71 = &v29[*(v27 + 36)];
  *v71 = v70;
  *(v71 + 4) = v69;
  v72 = AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor();
  v73 = *v72;
  v74 = v72[1];
  v76 = v72[2];
  v75 = v72[3];
  v77 = sub_100615888();

  View.accessibilityIdentifier(_:)(v73, v74, v76, v75, v27, v77);

  sub_1000095E8(v29, &qword_101198B70);
  v78 = &v59[*(sub_10010FC20(&qword_101198BA8) + 36)];
  v79 = v209;
  *v78 = v210;
  v78[1] = v79;
  v80 = v211;
  *v64 = v212;
  *(v64 + 8) = v80;
  *(v64 + 16) = 0;
  v81 = v249;
  v82 = sub_10061592C();
  v83 = v214;
  v84 = v213;
  View.corner(_:)();
  sub_1000095E8(v64, &qword_101198B78);
  Border.artwork.unsafeMutableAddressor();

  *&v254 = v84;
  *(&v254 + 1) = v82;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v216;
  v87 = v218;
  View.border(_:corner:)();

  (*(v215 + 8))(v83, v87);
  *&v254 = 0xD000000000000019;
  *(&v254 + 1) = 0x8000000100E52630;
  v250 = v87;
  v251 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = v246;
  View.presentationSource<A>(id:)();
  (*(v217 + 8))(v86, v89);
  v90 = v244;
  if (*(v81 + *(v244 + 44)) == 1)
  {
    static Color.accentColor.getter();
  }

  else
  {
    static Color.clear.getter();
  }

  UIScreen.Dimensions.size.getter(3.0);
  *&v254 = v246;
  *(&v254 + 1) = &type metadata for String;
  *&v255 = v88;
  *(&v255 + 1) = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v91 = v220;
  v92 = v245;
  View.border(_:corner:)();

  (*(v219 + 8))(v92, v91);
  v93 = v90;
  v94 = (v249 + *(v90 + 28));
  v95 = v249;
  v96 = v94[1];
  *&v254 = *v94;
  *(&v254 + 1) = v96;
  v97 = sub_100009838();

  v217 = v97;
  v98 = Text.init<A>(_:)();
  v100 = v99;
  v102 = v101;
  static Font.Weight.medium.getter();
  v103 = Text.fontWeight(_:)();
  v245 = v103;
  v105 = v104;
  v220 = v104;
  v107 = v106;
  v109 = v108;
  v246 = v108;
  sub_10011895C(v98, v100, v102 & 1);

  *&v254 = v103;
  *(&v254 + 1) = v105;
  LODWORD(v219) = v107 & 1;
  LOBYTE(v255) = v107 & 1;
  *(&v255 + 1) = v109;
  v110 = v221;
  sub_1000089F8(v95 + *(v93 + 40), v221, &unk_10118D2F0);
  v111 = TextBadge.init(for:isPlayable:)(v110, 1);
  v112 = TextBadge.view.getter(v111);
  v114 = v113;
  LODWORD(v221) = v115;
  v218 = v116;
  LODWORD(v100) = *(v95 + *(v93 + 36));
  v117 = type metadata accessor for MusicFavoriteStatus();
  v118 = *(v117 - 8);
  v119 = &enum case for MusicFavoriteStatus.favorited(_:);
  if (!v100)
  {
    v119 = &enum case for MusicFavoriteStatus.neutral(_:);
  }

  v120 = v222;
  (*(*(v117 - 8) + 104))(v222, *v119, v117);
  (*(v118 + 56))(v120, 0, 1, v117);
  v121 = TextBadge.init(for:)(v120);
  v122 = TextBadge.view.getter(v121);
  v124 = v123;
  v126 = v125;
  v127 = static Text.+ infix(_:_:)();
  v129 = v128;
  LOBYTE(v120) = v130;
  sub_10011895C(v122, v124, v126 & 1);

  sub_10011895C(v112, v114, v221 & 1);

  v131 = v227;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v127, v129, v120 & 1);

  v132 = v226;
  View.textSuffix(_:)();
  (*(v230 + 8))(v131, v232);
  sub_10011895C(v245, v220, v219);

  LODWORD(v131) = static HierarchicalShapeStyle.primary.getter();
  v133 = v225;
  (*(v228 + 32))(v225, v132, v231);
  *&v133[*(v223 + 36)] = v131;
  LOBYTE(v131) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v135 = v134;
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v142 = v133;
  v143 = v229;
  sub_10003D17C(v142, v229, &qword_101198B50);
  v144 = v143 + *(v224 + 36);
  *v144 = v131;
  *(v144 + 8) = v135;
  *(v144 + 16) = v137;
  *(v144 + 24) = v139;
  *(v144 + 32) = v141;
  *(v144 + 40) = 0;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v145 = v234;
  sub_10003D17C(v143, v234, &qword_101198B58);
  v146 = v233;
  v147 = (v145 + *(v233 + 36));
  v148 = v255;
  *v147 = v254;
  v147[1] = v148;
  v147[2] = v256;
  v149 = AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor();
  v150 = *v149;
  v151 = v149[1];
  v152 = v149[2];
  v153 = v149[3];
  v154 = sub_1006159E4();

  View.accessibilityIdentifier(_:)(v150, v151, v152, v153, v146, v154);

  sub_1000095E8(v145, &qword_101198B60);
  v155 = (v249 + *(v244 + 32));
  v156 = v155[1];
  if (v156)
  {
    v249 = *v155;
    v250 = v249;
    v251 = v156;

    v157 = Text.init<A>(_:)();
    v159 = v158;
    v161 = v160;
    LODWORD(v250) = static HierarchicalShapeStyle.secondary.getter();
    v162 = Text.foregroundStyle<A>(_:)();
    v164 = v163;
    v166 = v165;
    v168 = v167;
    v246 = v167;
    sub_10011895C(v157, v159, v161 & 1);

    v250 = v162;
    v251 = v164;
    LOBYTE(v159) = v166 & 1;
    v252 = v166 & 1;
    v253 = v168;
    v169 = AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor();
    v170 = *v169;
    v171 = v169[1];
    v172 = v169[2];
    v173 = v169[3];

    v174 = v207;
    View.accessibilityIdentifier(_:)(v170, v171, v172, v173, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v162, v164, v159);

    sub_100617E28(&qword_1011860C0, &qword_101184C80);
    v175 = v206;
    View.accessibilityHidden(_:)();
    sub_1000095E8(v174, &qword_101184C80);
    v176 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v178 = v177;
    v180 = v179;
    v182 = v181;
    v184 = v183;
    v185 = v205;
    sub_10003D17C(v175, v205, &qword_101198B38);
    v186 = v240;
    v187 = v185 + *(v240 + 36);
    *v187 = v176;
    *(v187 + 8) = v178;
    *(v187 + 16) = v180;
    *(v187 + 24) = v182;
    *(v187 + 32) = v184;
    *(v187 + 40) = 0;
    v188 = v185;
    v189 = v204;
    sub_10003D17C(v188, v204, &qword_101198B40);
    v190 = v241;
    sub_10003D17C(v189, v241, &qword_101198B40);
    v191 = 0;
  }

  else
  {
    v190 = v241;
    v186 = v240;
    v191 = 1;
  }

  (*(v239 + 56))(v190, v191, 1, v186);
  v192 = v236;
  v193 = *(v236 + 16);
  v194 = v235;
  v195 = v237;
  v193(v235, v248, v237);
  v196 = v247;
  v197 = v238;
  sub_1000089F8(v247, v238, &qword_101198B68);
  v198 = v242;
  sub_1000089F8(v190, v242, &qword_101198B48);
  v199 = v243;
  v193(v243, v194, v195);
  v200 = sub_10010FC20(&qword_101198BD8);
  sub_1000089F8(v197, &v199[*(v200 + 48)], &qword_101198B68);
  sub_1000089F8(v198, &v199[*(v200 + 64)], &qword_101198B48);
  sub_1000095E8(v190, &qword_101198B48);
  sub_1000095E8(v196, &qword_101198B68);
  v201 = *(v192 + 8);
  v201(v248, v195);
  sub_1000095E8(v198, &qword_101198B48);
  sub_1000095E8(v197, &qword_101198B68);
  return (v201)(v194, v195);
}

uint64_t sub_100601A30@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v54 = type metadata accessor for AccessibilityTraits();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for AccessibilityChildBehavior();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101198BE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_10010FC20(&qword_101198BE8);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v47 = sub_10010FC20(&qword_101198BF0);
  v11 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = &v45 - v12;
  v46 = sub_10010FC20(&qword_101198BF8);
  __chkstk_darwin(v46);
  v15 = &v45 - v14;
  v51 = sub_10010FC20(&qword_101198C00);
  __chkstk_darwin(v51);
  v50 = &v45 - v16;
  v55 = sub_10010FC20(&qword_101198C08);
  __chkstk_darwin(v55);
  v56 = &v45 - v17;
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCallout];
  v19 = v1;
  if (sub_100602224())
  {
    v20 = static VerticalAlignment.top.getter();
  }

  else
  {
    v20 = static VerticalAlignment.center.getter();
  }

  *v7 = v20;
  *(v7 + 1) = 0;
  v7[16] = 0;
  v21 = sub_10010FC20(&qword_101198C10);
  sub_1006024B0(v1, v18, &v7[*(v21 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v7, v10, &qword_101198BE0);
  v22 = &v10[*(v8 + 36)];
  v23 = v65;
  *(v22 + 4) = v64;
  *(v22 + 5) = v23;
  *(v22 + 6) = v66;
  v24 = v61;
  *v22 = v60;
  *(v22 + 1) = v24;
  v25 = v63;
  *(v22 + 2) = v62;
  *(v22 + 3) = v25;
  static AccessibilityChildBehavior.combine.getter();
  v26 = sub_100615C44();
  View.accessibilityElement(children:)();
  (*(v48 + 8))(v4, v49);
  sub_1000095E8(v10, &qword_101198BE8);
  v27 = v52;
  static AccessibilityTraits.isButton.getter();
  v58 = v8;
  v59 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v47;
  View.accessibilityAddTraits(_:)();
  (*(v53 + 8))(v27, v54);
  (*(v11 + 8))(v13, v28);
  v29 = AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v33 = v29[3];
  v34 = sub_100615CFC();

  v35 = v50;
  View.accessibilityIdentifier(_:)(v30, v31, v32, v33, v46, v34);

  sub_1000095E8(v15, &qword_101198BF8);
  sub_10010FC20(&qword_10118F1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v37 = _s8ListCellVMa(0);
  v38 = (v19 + *(v37 + 28));
  v39 = v38[1];
  *(inited + 32) = *v38;
  *(inited + 40) = v39;
  v40 = (v19 + *(v37 + 32));
  v41 = v40[1];
  *(inited + 48) = *v40;
  *(inited + 56) = v41;

  static Text.compact(_:)(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011815E0);
  swift_arrayDestroy();
  sub_100615DF4();
  v42 = v56;
  View.accessibilityInputLabels(_:)();

  v43 = sub_1000095E8(v35, &qword_101198C00);
  __chkstk_darwin(v43);
  _s17ContextMenuButtonVMa(0);
  sub_100615550(&qword_101198C38, &qword_101198C08, &unk_100ED7788, sub_100615DF4);
  sub_10061465C(&qword_101198C40, _s17ContextMenuButtonVMa);
  View.accessibilityActions<A>(_:)();

  return sub_1000095E8(v42, &qword_101198C08);
}

uint64_t sub_100602224()
{
  v16 = type metadata accessor for EnvironmentValues();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118A610);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s8ListCellVMa(0);
  sub_1000089F8(v0 + *(v11 + 56), v6, &qword_10118A610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

uint64_t sub_1006024B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v200 = a2;
  v197 = a3;
  v4 = _s17ContextMenuButtonVMa(0);
  v193 = *(v4 - 8);
  v194 = v4;
  __chkstk_darwin(v4);
  v166 = (&v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10010FC20(&qword_101198C48);
  __chkstk_darwin(v6 - 8);
  v196 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v195 = &v157 - v9;
  v165 = _s27DownloadStatusIndicatorViewVMa(0);
  __chkstk_darwin(v165);
  v162 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_10118F518);
  __chkstk_darwin(v11 - 8);
  v167 = &v157 - v12;
  v13 = type metadata accessor for MusicLibrary.DownloadStatus();
  v168 = *(v13 - 8);
  v169 = v13;
  __chkstk_darwin(v13);
  v161 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_10010FC20(&qword_101198C50);
  __chkstk_darwin(v163);
  v164 = &v157 - v15;
  v16 = sub_10010FC20(&qword_10118FE30);
  __chkstk_darwin(v16 - 8);
  v190 = &v157 - v17;
  v18 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v159 = *(v18 - 8);
  v160 = v18;
  __chkstk_darwin(v18);
  v157 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v158 = &v157 - v21;
  v22 = sub_10010FC20(&qword_101198C58);
  __chkstk_darwin(v22 - 8);
  v192 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v202 = &v157 - v25;
  v26 = sub_10010FC20(&qword_101198C60);
  __chkstk_darwin(v26 - 8);
  v189 = (&v157 - v27);
  v187 = sub_10010FC20(&qword_101198C68);
  __chkstk_darwin(v187);
  v191 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v188 = &v157 - v30;
  __chkstk_darwin(v31);
  v204 = &v157 - v32;
  v172 = sub_10010FC20(&qword_101186818);
  v33 = *(v172 - 8);
  __chkstk_darwin(v172);
  v35 = &v157 - v34;
  v36 = sub_10010FC20(&qword_101186908);
  v37 = *(v36 - 8);
  v174 = v36;
  v175 = v37;
  __chkstk_darwin(v36);
  v170 = &v157 - v38;
  v173 = sub_10010FC20(&qword_101198C70) - 8;
  __chkstk_darwin(v173);
  v171 = &v157 - v39;
  v176 = sub_10010FC20(&qword_101198C78);
  __chkstk_darwin(v176);
  v178 = &v157 - v40;
  v183 = sub_10010FC20(&qword_101198C80);
  __chkstk_darwin(v183);
  v182 = &v157 - v41;
  v186 = sub_10010FC20(&qword_101198C88);
  v184 = *(v186 - 8);
  __chkstk_darwin(v186);
  v181 = &v157 - v42;
  v179 = sub_10010FC20(&qword_101198C90);
  __chkstk_darwin(v179);
  v185 = &v157 - v43;
  v177 = sub_10010FC20(&qword_101198C98);
  __chkstk_darwin(v177);
  v201 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v180 = &v157 - v46;
  __chkstk_darwin(v47);
  v203 = &v157 - v48;
  v49 = _s8ListCellVMa(0);
  v50 = *(v49 + 20);
  v51 = *(v49 + 24);
  v198 = v49;
  v199 = a1;
  v52 = a1 + v50;
  v53 = *(a1 + v51);
  v54 = *(a1 + v51 + 8);
  v55 = *(a1 + v51 + 16);
  v56 = type metadata accessor for ArtworkImage.Info(0);
  v57 = v56[5];
  v58 = (v52 + v56[7]);
  v59 = *(v58 + 26);
  v60 = v58[1];
  v229 = *v58;
  v230[0] = v60;
  *(v230 + 10) = v59;
  static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(v52, v53, v54, v55, 0, v52 + v57, &v229, v35);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v172;
  View.corner(_:)();
  (*(v33 + 8))(v35, v62);
  Border.artwork.unsafeMutableAddressor();

  *&v222 = v62;
  *(&v222 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v63 = v171;
  v64 = v174;
  v65 = v170;
  View.border(_:corner:)();

  (*(v175 + 8))(v65, v64);
  v66 = v52 + v56[6];
  v67 = *v66;
  LOBYTE(v66) = *(v66 + 8);
  v68 = v63 + *(v173 + 44);
  *v68 = v67;
  *(v68 + 8) = v66;
  *(v68 + 9) = 0;
  [v200 lineHeight];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = v178;
  sub_10003D17C(v63, v178, &qword_101198C70);
  v70 = v176;
  v71 = (v69 + *(v176 + 36));
  v72 = v214;
  v71[4] = v213;
  v71[5] = v72;
  v71[6] = v215;
  v73 = v210;
  *v71 = v209;
  v71[1] = v73;
  v74 = v212;
  v71[2] = v211;
  v71[3] = v74;
  v75 = AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor();
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  v79 = v75[3];
  v80 = sub_100615E6C();

  v81 = v182;
  View.accessibilityIdentifier(_:)(v76, v77, v78, v79, v70, v80);

  sub_1000095E8(v69, &qword_101198C78);
  *&v222 = 0xD000000000000019;
  *(&v222 + 1) = 0x8000000100E52630;
  sub_100615550(&qword_101198CB0, &qword_101198C80, &unk_100ED77F0, sub_100615E6C);
  v82 = v181;
  View.presentationSource<A>(id:)();
  sub_1000095E8(v81, &qword_101198C80);
  LOBYTE(v76) = static Edge.Set.leading.getter();
  v83 = v199;
  EdgeInsets.init(_all:)();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v185;
  (*(v184 + 32))(v185, v82, v186);
  v93 = v92 + *(v179 + 36);
  *v93 = v76;
  *(v93 + 8) = v85;
  *(v93 + 16) = v87;
  *(v93 + 24) = v89;
  *(v93 + 32) = v91;
  *(v93 + 40) = 0;
  v94 = static Alignment.trailing.getter();
  v96 = v95;
  v97 = v180;
  v98 = &v180[*(v177 + 36)];
  sub_100603AC8(v83, v98);
  v99 = (v98 + *(sub_10010FC20(&qword_101198CB8) + 36));
  *v99 = v94;
  v99[1] = v96;
  sub_10003D17C(v92, v97, &qword_101198C90);
  v100 = v97;
  v101 = v203;
  sub_10003D17C(v100, v203, &qword_101198C98);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v185 = v218;
  v186 = v216;
  v183 = v221;
  v184 = v220;
  v208 = 1;
  v207 = v217;
  v206 = v219;
  v102 = static HorizontalAlignment.leading.getter();
  v103 = v189;
  *v189 = v102;
  v103[1] = 0;
  *(v103 + 16) = 0;
  v104 = sub_10010FC20(&qword_101198CC0);
  sub_100603DC4(v83, v200, v103 + *(v104 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v105 = v103;
  v106 = v188;
  sub_10003D17C(v105, v188, &qword_101198C60);
  v107 = (v106 + *(v187 + 36));
  v108 = v227;
  v107[4] = v226;
  v107[5] = v108;
  v107[6] = v228;
  v109 = v223;
  *v107 = v222;
  v107[1] = v109;
  v110 = v225;
  v107[2] = v224;
  v107[3] = v110;
  v111 = sub_10003D17C(v106, v204, &qword_101198C68);
  v112 = v198;
  v113 = v190;
  (*(**(v83 + *(v198 + 52) + 8) + 112))(v111);
  v114 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v115 = *(v114 - 8);
  v116 = v83;
  v117 = v101;
  if ((*(v115 + 48))(v113, 1, v114) == 1)
  {
    v118 = sub_1000095E8(v113, &qword_10118FE30);
    v119 = v202;
    goto LABEL_8;
  }

  v120 = (*(v115 + 88))(v113, v114);
  v119 = v202;
  if (v120 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    v118 = (*(v115 + 8))(v113, v114);
    goto LABEL_8;
  }

  (*(v115 + 96))(v113, v114);
  v122 = v158;
  v121 = v159;
  v123 = v160;
  (*(v159 + 32))(v158, v113, v160);
  v124 = v157;
  (*(v121 + 104))(v157, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.userUploadRequired(_:), v123);
  v125 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v126 = *(v121 + 8);
  v126(v124, v123);
  if ((v125 & 1) == 0)
  {
    v118 = (v126)(v122, v123);
    v116 = v199;
LABEL_8:
    v128 = v167;
    (*(**(v116 + *(v112 + 48) + 8) + 112))(v118);
    v129 = v168;
    v130 = v169;
    if ((*(v168 + 48))(v128, 1, v169) == 1)
    {
      sub_1000095E8(v128, &qword_10118F518);
      v127 = 1;
    }

    else
    {
      v131 = v161;
      (*(v129 + 32))(v161, v128, v130);
      v132 = v162;
      (*(v129 + 16))(v162, v131, v130);
      (*(v129 + 56))(v132, 0, 1, v130);
      v133 = v165;
      v205 = 0x4000000000000000;
      sub_100363C0C();
      ScaledMetric.init(wrappedValue:)();
      v205 = 0x3FF0000000000000;
      ScaledMetric.init(wrappedValue:)();
      *(v132 + *(v133 + 20)) = 0;
      sub_100616084(v132, v164, _s27DownloadStatusIndicatorViewVMa);
      swift_storeEnumTagMultiPayload();
      sub_1006160EC();
      sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
      _ConditionalContent<>.init(storage:)();
      v134 = v132;
      v112 = v198;
      sub_100615BE4(v134, _s27DownloadStatusIndicatorViewVMa);
      v135 = v131;
      v117 = v203;
      (*(v129 + 8))(v135, v130);
      v116 = v199;
      v127 = 0;
    }

    goto LABEL_11;
  }

  swift_storeEnumTagMultiPayload();
  sub_1006160EC();
  sub_10061465C(&qword_101198CE0, _s27DownloadStatusIndicatorViewVMa);
  _ConditionalContent<>.init(storage:)();
  v126(v122, v123);
  v127 = 0;
  v116 = v199;
LABEL_11:
  v136 = sub_10010FC20(&qword_101198CC8);
  v137 = 1;
  (*(*(v136 - 8) + 56))(v119, v127, 1, v136);
  v138 = (v116 + *(v112 + 44));
  v139 = v194;
  if (*v138)
  {
    v140 = v138[1];
    v141 = v166;
    *v166 = *v138;
    *(v141 + 8) = v140;
    v205 = 0x4046000000000000;
    sub_100363C0C();

    ScaledMetric.init(wrappedValue:)();
    v205 = 0x403C000000000000;
    ScaledMetric.init(wrappedValue:)();
    v142 = v195;
    sub_10061601C(v141, v195, _s17ContextMenuButtonVMa);
    v137 = 0;
  }

  else
  {
    v142 = v195;
  }

  (*(v193 + 56))(v142, v137, 1, v139);
  v143 = v201;
  sub_1000089F8(v117, v201, &qword_101198C98);
  v144 = v208;
  v145 = v207;
  v146 = v206;
  v147 = v191;
  sub_1000089F8(v204, v191, &qword_101198C68);
  v148 = v119;
  v149 = v192;
  sub_1000089F8(v148, v192, &qword_101198C58);
  v150 = v196;
  sub_1000089F8(v142, v196, &qword_101198C48);
  v151 = v197;
  sub_1000089F8(v143, v197, &qword_101198C98);
  v152 = sub_10010FC20(&qword_101198CD0);
  v153 = v151 + v152[12];
  *v153 = 0;
  *(v153 + 8) = v144;
  v154 = v185;
  *(v153 + 16) = v186;
  *(v153 + 24) = v145;
  *(v153 + 32) = v154;
  *(v153 + 40) = v146;
  v155 = v183;
  *(v153 + 48) = v184;
  *(v153 + 56) = v155;
  sub_1000089F8(v147, v151 + v152[16], &qword_101198C68);
  sub_1000089F8(v149, v151 + v152[20], &qword_101198C58);
  sub_1000089F8(v150, v151 + v152[24], &qword_101198C48);
  sub_1000095E8(v142, &qword_101198C48);
  sub_1000095E8(v202, &qword_101198C58);
  sub_1000095E8(v204, &qword_101198C68);
  sub_1000095E8(v203, &qword_101198C98);
  sub_1000095E8(v150, &qword_101198C48);
  sub_1000095E8(v149, &qword_101198C58);
  sub_1000095E8(v147, &qword_101198C68);
  return sub_1000095E8(v201, &qword_101198C98);
}