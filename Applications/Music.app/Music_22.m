uint64_t sub_100299F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_100299FE4, v6, v5);
}

uint64_t sub_100299FE4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.VocalsCommand.Prepare;
  v0[6] = &protocol witness table for Player.VocalsCommand.Prepare;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10029A118;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

uint64_t sub_10029A118(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10029A2CC;
  }

  else
  {
    v4[20] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_10029A25C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10029A25C()
{
  v1 = v0[20];
  v2 = v0[13];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_10029A2CC()
{

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029A350(uint64_t result)
{
  v2 = OBJC_IVAR___MusicNowPlayingLyricsViewController_layout;
  if (*(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_layout) == (result & 1))
  {
    return result;
  }

  v3 = v1;
  v20 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints);

  sub_100124054(v4);

  sub_100124054(v5);
  v6 = v20;
  v19 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints);

  sub_100124054(v7);
  v8 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  if (v8)
  {
    v9 = v8;
    v10 = [v9 tracklist];
    v11 = [v10 playingItem];

    if (v11)
    {
      v12 = [v9 tracklist];
      v13 = [v12 vocalsControlCommand];

      if (v13)
      {
        swift_unknownObjectRelease();
        MPCPlayerResponseItem.hasStoreLyrics.getter();

        goto LABEL_9;
      }
    }
  }

LABEL_9:

  sub_100124054(v14);
  v15 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider;
  v16 = *(v3 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider);
  if (*(v3 + v2) == 1)
  {
    if (v16)
    {
      v17 = v16;
      VerticalToggleSlider.growAnchorPoint.setter(2);

      if (*(v3 + v15))
      {
        VerticalToggleSlider.interactionScaleFactor.setter(0x3FF8000000000000, 0);
      }
    }

    Array<A>.deactivate()(v20);

    v6 = v19;
  }

  else
  {
    if (v16)
    {
      v18 = v16;
      VerticalToggleSlider.growAnchorPoint.setter(8);

      if (*(v3 + v15))
      {
        VerticalToggleSlider.interactionScaleFactor.setter(0, 1);
      }
    }

    Array<A>.deactivate()(v19);
  }

  Array<A>.activate()(v6);
}

uint64_t sub_10029A5CC(uint64_t a1)
{
  v3 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter;
  swift_beginAccess();
  sub_1002AD930(a1, v1 + v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_container);
  if (v4)
  {
    v5 = [v4 layer];
    sub_1000089F8(v1 + v3, v13, &unk_101183F30);
    v6 = v14;
    if (v14)
    {
      v7 = sub_10000954C(v13, v14);
      v8 = *(v6 - 8);
      __chkstk_darwin(v7);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v10, v6);
      sub_10000959C(v13);
    }

    else
    {
      v11 = 0;
    }

    [v5 setCompositingFilter:v11];

    swift_unknownObjectRelease();
  }

  return sub_1000095E8(a1, &unk_101183F30);
}

BOOL sub_10029A798(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

BOOL sub_10029A7D8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    v3 = *a2;
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        v4 = *a2;
        if (*a1 == 2)
        {
          if (v4 == 2)
          {
            return 1;
          }
        }

        else
        {
          v7 = (*a1 ^ v3) & 1;
          if (v4 != 2 && v7 == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (v2 == 2 && v3 == 0)
    {
      return 1;
    }

    return 0;
  }

  return !*(a2 + 8);
}

uint64_t sub_10029A850()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_1002AC9F4;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10002BC98;
  v8[3] = &unk_1010A3970;
  v3 = _Block_copy(v8);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.25];
  _Block_release(v3);
  sub_1002A24D0();
  sub_10029F54C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
    v7 = v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8];
    sub_1002AC9FC(v6, v7);
    sub_1005E7EF0(v6, v7);
    swift_unknownObjectRelease();
    return sub_1002AC8A4(v6, v7);
  }

  return result;
}

void sub_10029A9A0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
  if (!v2)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = [v2 view];
  if (!v3)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  v5 = (a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  if (*(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1 || (v6 = 1.0, *v5 != 2))
  {
    v6 = 0.0;
  }

  [v3 setAlpha:v6];

  v7 = *(a1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
  if (v5[8] == 1 && *v5 != 2)
  {
    if (v7)
    {
      v9 = [v7 view];
      if (v9)
      {
        v10 = 1.0;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
      return;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = [v7 view];
  if (!v9)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = 0.0;
LABEL_17:
  v11 = v9;
  [v9 setAlpha:v10];
}

void sub_10029AB40()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  v3 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v7 > 1u)
  {
    if (v3)
    {
      v4 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight];
LABEL_6:
      v5 = *((swift_isaMask & *v3) + 0x1C8);
      v6 = v3;
      v5(v4);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10029AC48(char a1, char a2)
{
  v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  if (a2)
  {
    v6 = objc_allocWithZone(UISpringTimingParameters);
    v7 = v2;
    v8 = 0.0;
    v9 = [v6 initWithMass:1.0 stiffness:300.0 damping:40.0 initialVelocity:{0.0, 0.0}];
    v10 = v9;
    if (a1)
    {
      v11 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:986.0 damping:62.0 initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v11 = v9;
      v8 = 0.15;
    }

    sub_100009F78(0, &unk_101183AE0);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v11).super.isa;
    v20[4] = sub_1002AD924;
    v20[5] = v5;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002BC98;
    v20[3] = &unk_1010A3DA8;
    v16 = _Block_copy(v20);

    [(objc_class *)isa addAnimations:v16];
    _Block_release(v16);
    [(objc_class *)isa startAnimationAfterDelay:v8];
  }

  else
  {
    if (a1)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0;
    }

    v13 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
    v14 = v2;
    if (v13)
    {
      [v13 setAlpha:v12];
    }

    v17 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
    if (v17)
    {
      [v17 setAlpha:v12];
    }

    v18 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
    if (v18)
    {
      [v18 setAlpha:v12];
    }
  }

  sub_1002A51EC();
}

id sub_10029AECC(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider);
  if (v4)
  {
    [v4 setAlpha:v3];
  }

  v5 = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
  if (v5)
  {
    [v5 setAlpha:v3];
  }

  result = *(a2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton);
  if (result)
  {

    return [result setAlpha:v3];
  }

  return result;
}

id sub_10029AF78()
{
  v1 = [objc_opt_self() sharedMonitor];
  [v1 unregisterObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for NowPlayingLyricsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10029B2D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v174.receiver = v0;
  v174.super_class = type metadata accessor for NowPlayingLyricsViewController();
  objc_msgSendSuper2(&v174, "viewDidLoad");
  LOBYTE(v172[0]) = 6;
  v3 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v3))
  {
    v4 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *(*v4 + 224);

    v7 = v6(sub_1002AD9E8, v5);

    *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = v7;
  }

  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8;
  v10 = [v8 layer];

  [v10 setAllowsGroupBlending:0];
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v11 = [objc_allocWithZone(UIActivityIndicatorView) init];
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator;
  v13 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = *&v1[v12];
  if (!v15)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = qword_10117F900;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  [v17 setColor:qword_101219098];

  v18 = *&v1[v12];
  if (!v18)
  {
    goto LABEL_65;
  }

  [v18 setHidesWhenStopped:1];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!*&v1[v12])
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v20 = v19;
  [v19 addSubview:?];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [objc_allocWithZone(UIView) initWithFrame:{v24, v26, v28, v30}];
  v32 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = v31;
  v33 = v31;

  v34 = [v1 view];
  if (!v34)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v35 = v34;
  v171 = v3;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v33, 0);

  [v33 setPreservesSuperviewLayoutMargins:1];
  v36 = [v33 layer];
  v37 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter;
  swift_beginAccess();
  sub_1000089F8(&v1[v37], v172, &unk_101183F30);
  v38 = v173;
  if (v173)
  {
    v39 = sub_10000954C(v172, v173);
    v40 = *(v38 - 8);
    v41 = __chkstk_darwin(v39);
    v43 = &v169 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43, v41);
    v44 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v40 + 8))(v43, v38);
    sub_10000959C(v172);
  }

  else
  {
    v44 = 0;
  }

  [v36 setCompositingFilter:v44];

  swift_unknownObjectRelease();
  type metadata accessor for SyncedLyricsViewController(0);
  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v46 = [v45 view];
  if (!v46)
  {
    goto LABEL_70;
  }

  v47 = v46;
  [v46 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];

  v48 = [v45 view];
  if (!v48)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  [v48 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];

  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = *((swift_isaMask & *v45) + 0x270);

  v50(sub_1002AD9A0, v49);

  v51 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v52 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = v45;
  v53 = v45;

  v54 = [v53 view];
  if (!v54)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  [v54 setAlpha:0.0];

  v55 = *&v1[v51];
  if (!v55)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v56 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (v56)
  {
    v57 = v55;
    v58 = [v56 tracklist];
    v59 = [v58 playingItem];

    if (v59)
    {
      v60 = [v59 nowPlayingAudioFormat];

      if (v60)
      {
        v61 = [v60 isSpatialized];

        v62 = v61;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v63 = v55;
  }

  v62 = 0;
LABEL_26:
  (*((swift_isaMask & *v55) + 0x180))(v62);

  v64 = *&v1[v51];
  if (!v64)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v65 = [v64 view];
  if (!v65)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v66 = v65;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v65, 0);

  if (!*&v1[v51])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v1 addChildViewController:?];
  v67 = *&v1[v51];
  if (!v67)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v170 = v53;
  [v67 didMoveToParentViewController:v1];
  v68 = *&v1[v51];
  if (!v68)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v69 = v33;
  v70 = [v68 view];
  if (!v70)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v71 = v70;
  v72 = AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor();
  v73 = *v72;
  v74 = v72[1];
  sub_100009F78(0, &qword_101181620);

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v73, v74);

  type metadata accessor for StaticLyricsContentViewController();
  v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v76 = OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController;
  v77 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = v75;
  v78 = v75;

  v79 = [v78 view];
  if (!v79)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  [v79 setAlpha:0.0];

  v80 = *&v1[v76];
  if (!v80)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v81 = [v80 view];
  if (!v81)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v82 = v81;
  [v81 setPreservesSuperviewLayoutMargins:1];

  v83 = *&v1[v76];
  if (!v83)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v84 = v83;
  v85 = [v1 traitCollection];
  v86 = sub_100050078();
  v87 = UITraitCollection.subscript.getter();

  if (v87)
  {
    if (qword_10117F8E8 != -1)
    {
      swift_once();
    }

    v88 = qword_101219080;
  }

  else
  {
    v88 = [objc_opt_self() labelColor];
  }

  v89 = *&v84[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor];
  *&v84[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor] = v88;
  v90 = v88;

  sub_100781F6C();
  v91 = *&v1[v76];
  if (!v91)
  {
    goto LABEL_84;
  }

  v92 = [v91 view];
  if (!v92)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v93 = v92;
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v92, 0);

  if (!*&v1[v76])
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  [v1 addChildViewController:?];
  v94 = *&v1[v76];
  if (!v94)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  [v94 didMoveToParentViewController:v1];
  v95 = *&v1[v76];
  if (!v95)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v96 = [v95 view];
  if (!v96)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v97 = v96;
  v98 = AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor();
  v99 = *v98;
  v100 = v98[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v99, v100);

  v101 = sub_1002A664C();
  v102 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = v101;
  v103 = v101;

  v104 = [v1 view];
  if (!v104)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v105 = v104;
  [v104 addSubview:v103];

  LOBYTE(v172[0]) = 6;
  v106 = v69;
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v171) & 1) == 0)
  {
    goto LABEL_56;
  }

  v107 = v103;
  v108 = [objc_allocWithZone(type metadata accessor for NowPlayingLyricsTranslationButton()) init];
  v109 = UIView.forAutolayout.getter();

  v110 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v111 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = v109;
  v112 = v109;

  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = &v112[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  v115 = *&v112[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_translationToggleBlock];
  *v114 = sub_1002AD9C8;
  v114[1] = v113;

  sub_100020438(v115);

  v116 = *&v1[v110];
  if (!v116)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v118 = &v116[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  v119 = *&v116[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_transliterationToggleBlock];
  *v118 = sub_1002AD9D0;
  v118[1] = v117;

  v120 = v116;
  sub_100020438(v119);

  v121 = *&v1[v110];
  if (!v121)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = &v121[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  v124 = *&v121[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuOpenedBlock];
  *v123 = sub_1002AD9D8;
  v123[1] = v122;

  v125 = v121;
  sub_100020438(v124);

  v126 = *&v1[v110];
  if (!v126)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = &v126[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  v129 = *&v126[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_menuClosedBlock];
  *v128 = sub_1002AD9E0;
  v128[1] = v127;

  v130 = v126;
  sub_100020438(v129);

  v131 = *&v1[v110];
  if (!v131)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  [v131 setHidden:1];
  v132 = [v1 view];
  if (!v132)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v103 = v107;
  v133 = *&v1[v110];
  if (v133)
  {
    v134 = v132;
    [v132 insertSubview:v133 belowSubview:v107];

LABEL_56:
    if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
    {
      v135 = sub_1002A8BA8();
      v136 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
      *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = v135;
      v137 = v135;

      sub_1002AA8E0();
      v138 = [v1 view];
      if (!v138)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v139 = v138;
      [v138 addSubview:v137];
    }

    v140 = objc_opt_self();
    v141 = [v140 clearColor];
    v142 = [v141 cgColor];
    v143 = v141;
    if (v142)
    {
      v171 = v103;
      v144 = v142;
      v145 = [v140 whiteColor];
      v146 = [v145 cgColor];
      v147 = v145;
      if (v146)
      {
        v148 = v146;
        v149 = [objc_allocWithZone(CAGradientLayer) init];
        [v106 bounds];
        [v149 setFrame:?];
        sub_10010FC20(&qword_101181530);
        v150 = swift_allocObject();
        *(v150 + 16) = xmmword_100EBEF50;
        type metadata accessor for CGColor(0);
        *(v150 + 32) = v144;
        *(v150 + 56) = v151;
        *(v150 + 64) = v148;
        *(v150 + 88) = v151;
        *(v150 + 96) = v148;
        *(v150 + 152) = v151;
        *(v150 + 120) = v151;
        *(v150 + 128) = v144;
        v152 = v144;
        v153 = v148;
        v154 = v152;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v149 setColors:isa];

        v156 = [v106 layer];
        [v156 setMask:v149];

        v157 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer];
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = v149;
        v158 = v149;

        sub_10029ECCC();
        sub_10029F940();
        sub_10010FC20(&unk_101182D80);
        v159 = swift_allocObject();
        *(v159 + 16) = xmmword_100EBC6B0;
        *(v159 + 32) = &type metadata for HasAnimatedBackgroundTrait;
        *(v159 + 40) = v86;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v160 = swift_allocObject();
        *(v160 + 16) = xmmword_100EBDC20;
        v161 = sub_1001D1C24();
        *(v160 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
        *(v160 + 40) = v161;
        *(v160 + 48) = type metadata accessor for UITraitUserInterfaceIdiom();
        *(v160 + 56) = &protocol witness table for UITraitUserInterfaceIdiom;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v162 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for NotificationObserver();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneWillDeactivateNotification, 0, 1, 1, sub_1002AD9A8, v162);

        v163 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_1002AD9B0, v163);

        v164 = UIPresentationControllerPresentationTransitionDidEndNotification;
        v165 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v164, 0, 1, 1, sub_1002AD9B8, v165);

        v166 = UIPresentationControllerDismissalTransitionDidEndNotification;
        v167 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v166, 0, 1, 1, sub_1002AD9C0, v167);

        v168 = [objc_opt_self() sharedMonitor];
        [v168 registerObserver:v1];

        return;
      }

      goto LABEL_92;
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_99:
  __break(1u);
}

void sub_10029C654(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_10010FC20(&unk_101189A00);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *&Strong[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
    if (!v16)
    {

      return;
    }

    v17 = *(*v16 + 312);
    v18 = *v16 + 312;

    v37 = v18;
    v17(v19);
    v20 = type metadata accessor for Lyrics.Transliteration(0);
    v36 = *(v20 - 8);
    v38 = *(v36 + 48);
    if (v38(v13, 1, v20) == 1)
    {

      sub_1000095E8(v13, &unk_101189A00);
      return;
    }

    v34 = v17;
    v35 = v20;
    sub_1000095E8(v13, &unk_101189A00);
    v21 = sub_10048C4E4(3, a1);
    v22 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    v23 = v22(3) & 1;

    if (v21 == v23)
    {
      goto LABEL_13;
    }

    (*(*v16 + 440))(v24);
    v25 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
    v26 = *&v15[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
    if (v26)
    {
      v27 = *((swift_isaMask & *v26) + 0x3B8);
      v28 = v26;
      v27();

      v29 = v38(v10, 1, v35);
      sub_1000095E8(v10, &unk_101189A00);
      v30 = *&v15[v25];
      if (v30)
      {
        v31 = *((swift_isaMask & *v30) + 0x3A0);

        v32 = v30;
        v33 = v31();
        if (v29 == 1)
        {
          (*(v36 + 56))(v7, 1, 1, v35);
        }

        else
        {
          v34(v33);
        }

        (*((swift_isaMask & *v32) + 0x4C8))(v16, v4, v7);

        sub_1000095E8(v7, &unk_101189A00);
        sub_1000095E8(v4, &qword_101189A18);
        sub_1002A24D0();
LABEL_13:

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

void sub_10029CB04(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002A2FDC(a1);
  }
}

void sub_10029CB60()
{
  v0 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v45 - v1);
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101189A18);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v17)
  {

    return;
  }

  v46 = v17;

  v18 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v19 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v20 = *&v16[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = *((swift_isaMask & *v20) + 0x3A0);
  v45 = *v18;

  v22 = v20;
  v21();

  v23 = type metadata accessor for Lyrics.Translation(0);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v14, 1, v23);
  sub_1000095E8(v14, &qword_101189A18);
  v26 = *&v16[v19];
  if (v25 != 1)
  {
    if (v26)
    {
      (*(v24 + 56))(v11, 1, 1, v23);
      v30 = *((swift_isaMask & *v26) + 0x3A8);
      v31 = v26;
      v30(v11);

      (*(*v45 + 240))(0);
      v29 = 1701079368;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = *(*v46 + 288);
  v28 = v26;
  v27();
  (*((swift_isaMask & *v28) + 0x3A8))(v11);

  (*(*v45 + 232))(0);
  v29 = 2003789907;
LABEL_10:
  v32 = v29 | 0x6E61725400000000;
  sub_1002A24D0();
  v33 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = v33;
    sub_1005E0230(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v36 - 8) + 56))(v2, 1, 1, v36);
    v37 = v33;
  }

  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v32, 0xEF6E6F6974616C73, 5, 55, v5, 0, 0, 6, v8, 0, 0, 0xFF00u, v2, 0);
  v38 = sub_10053771C();
  v40 = v39;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v41 = qword_101218AD0;
  v42 = GroupActivitiesManager.hasJoined.getter();
  v43 = GroupActivitiesManager.participantsCount.getter();
  v44 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v33) + 0xB8))(v8, v38, v40, v42 & 1, v43, *(v41 + v44));

  sub_1002AD498(v8, type metadata accessor for MetricsEvent.Click);
}

void sub_10029D1C4()
{
  v0 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v48 - v1;
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101189A00);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v17)
  {

    return;
  }

  v49 = v8;
  v50 = v2;
  v51 = v17;

  v18 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v19 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v20 = *&v16[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v20)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = *v18;
  v22 = *((swift_isaMask & *v20) + 0x3B8);

  v23 = v20;
  v22();

  v24 = type metadata accessor for Lyrics.Transliteration(0);
  v25 = *(v24 - 8);
  LODWORD(v22) = (*(v25 + 48))(v14, 1, v24);
  sub_1000095E8(v14, &unk_101189A00);
  v26 = *&v16[v19];
  if (v22 != 1)
  {
    if (v26)
    {
      (*(v25 + 56))(v11, 1, 1, v24);
      v31 = *((swift_isaMask & *v26) + 0x3C0);
      v32 = v26;
      v31(v11);

      (*(*v21 + 240))(1);
      v29 = "ShowPronunciation";
      v30 = 2;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

  if (!v26)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = *(*v51 + 312);
  v28 = v26;
  v27();
  (*((swift_isaMask & *v28) + 0x3C0))(v11);

  v29 = "translationButtonTempAction";
  v30 = 1;
LABEL_10:
  (*(*v21 + 232))(v30);
  sub_1002A24D0();
  v33 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v34 = type metadata accessor for URL();
  (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
  v35 = swift_unknownObjectWeakLoadStrong();
  v36 = v50;
  if (v35)
  {
    v37 = v33;
    sub_1005E0230(v36);
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    v39 = v33;
  }

  v40 = v49;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000011, v29 | 0x8000000000000000, 5, 55, v5, 0, 0, 6, v49, 0, 0, 0xFF00u, v36, 0);
  v41 = sub_10053771C();
  v43 = v42;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v44 = qword_101218AD0;
  v45 = GroupActivitiesManager.hasJoined.getter();
  v46 = GroupActivitiesManager.participantsCount.getter();
  v47 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v33) + 0xB8))(v40, v41, v43, v45 & 1, v46, *(v44 + v47));

  sub_1002AD498(v40, type metadata accessor for MetricsEvent.Click);
}

void sub_10029D830()
{
  v0 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v24[-v1];
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v24[-v4];
  v6 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = v11;
      sub_1005E0230(v2);
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
      v15 = v11;
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0x6F4373636972794CLL, 0xEE00736C6F72746ELL, 5, 1, v5, 0, 0, 6, v8, 0, 0, 0xFF00u, v2, 0);
    v16 = sub_10053771C();
    v18 = v17;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v19 = qword_101218AD0;
    v20 = GroupActivitiesManager.hasJoined.getter();
    v21 = GroupActivitiesManager.participantsCount.getter();
    v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v11) + 0xB8))(v8, v16, v18, v20 & 1, v21, *(v19 + v22));

    sub_1002AD498(v8, type metadata accessor for MetricsEvent.Click);
    v23 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 232);

    v23(4);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10029DBDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
      *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
      if (v3 == 1)
      {
        sub_1005C4F50(4.0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10029DC74()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  Notification.object.getter();
  if (!v19)
  {

    sub_1000095E8(v18, &unk_101183F30);
    return;
  }

  sub_100009F78(0, &qword_101189A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    return;
  }

  v6 = v17;
  v7 = [v5 view];
  if (!v7)
  {
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 window];

  v10 = [v9 windowScene];
  if (!v10)
  {

    goto LABEL_13;
  }

  v11 = v6;
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v13 = Logger.lyrics.unsafeMutableAddressor();
    (*(v1 + 16))(v3, v13, v0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "UI got backgrounded", v16, 2u);
    }

    (*(v1 + 8))(v3, v0);
    *(v5 + OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded) = 1;
    sub_1002AAA18();
  }
}

void sub_10029DF2C()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v63 - v1;
  v3 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v3 - 8);
  v5 = &v63 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v63 - v11;
  __chkstk_darwin(v13);
  v15 = &v63 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  Notification.object.getter();
  if (!v75)
  {

    sub_1000095E8(v74, &unk_101183F30);
    return;
  }

  sub_100009F78(0, &qword_101189A30);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v70 = v2;
  v71 = v6;
  v72 = v7;
  v18 = v73;
  v19 = [v17 view];
  if (!v19)
  {
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 window];

  v22 = [v21 windowScene];
  if (!v22)
  {

    return;
  }

  v23 = v18;
  v24 = static NSObject.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {

LABEL_17:
    return;
  }

  v69 = v23;
  v25 = Logger.lyrics.unsafeMutableAddressor();
  v26 = v71;
  v27 = v72;
  v28 = *(v72 + 16);
  v67 = v25;
  v68 = v28;
  (v28)(v15);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "UI got foregrounded", v31, 2u);
    v27 = v72;
  }

  v34 = *(v27 + 8);
  v32 = v27 + 8;
  v33 = v34;
  v34(v15, v26);
  v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  Date.init()();
  v35 = type metadata accessor for Date();
  (*(*(v35 - 8) + 56))(v5, 0, 1, v35);
  v36 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_10006B010(v5, &v17[v36], &qword_101188C20);
  swift_endAccess();
  v37 = *&v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v37 || !v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] || v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] == 1)
  {

    return;
  }

  v38 = &v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  v39 = *&v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  if (!v39)
  {
    v49 = v37;
    v50 = v71;
LABEL_25:
    v68(v9, v67, v50);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Making new lyrics request", v55, 2u);
    }

    v33(v9, v50);
    v56 = type metadata accessor for TaskPriority();
    v57 = v70;
    (*(*(v56 - 8) + 56))(v70, 1, 1, v56);
    type metadata accessor for MainActor();
    v23 = v17;
    v58 = static MainActor.shared.getter();
    v59 = swift_allocObject();
    v59[2] = v58;
    v59[3] = &protocol witness table for MainActor;
    v59[4] = v23;
    v60 = sub_1001F4CB8(0, 0, v57, &unk_100EC55E8, v59);

    v61 = *v38;
    v62 = v38[1];
    *v38 = v60;
    v38[1] = v37;
    sub_1002AC974(v61, v62);
    goto LABEL_17;
  }

  v66 = v33;
  v72 = v32;
  v64 = &v17[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  v40 = v38[1];
  v41 = v37;
  sub_1002AC9B4(v39, v40);
  v65 = v39;
  v42 = [v40 identifiers];
  v63 = v41;
  v43 = [v41 identifiers];
  v44 = [v42 intersectsSet:v43];

  if ((v44 & 1) == 0)
  {
    Task.cancel()();

    v38 = v64;
    v51 = *v64;
    v52 = v64[1];
    *v64 = 0;
    v38[1] = 0;
    sub_1002AC974(v51, v52);
    v50 = v71;
    v33 = v66;
    goto LABEL_25;
  }

  v45 = v71;
  v68(v12, v67, v71);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Lyrics request for this song already in progress", v48, 2u);
  }

  else
  {
  }

  v66(v12, v45);
}

uint64_t sub_10029E6EC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1002A0D18();
}

void sub_10029E798()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    Notification.object.getter();
    if (v8)
    {
      sub_100009F78(0, &qword_101183D40);
      if (swift_dynamicCast())
      {
        v2 = v6;
        v3 = [v1 parentViewController];
        if (v3)
        {
          v4 = v3;
          v5 = static NSObject.== infix(_:_:)();

          if (v5)
          {

            return;
          }
        }

        else
        {
        }

        sub_1002AAA18();
      }

      else
      {
      }
    }

    else
    {

      sub_1000095E8(v7, &unk_101183F30);
    }
  }
}

void sub_10029E8D0()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  Notification.object.getter();
  if (v9)
  {
    type metadata accessor for NowPlayingViewController(0);
    if (swift_dynamicCast())
    {

      return;
    }
  }

  else
  {
    sub_1000095E8(v8, &unk_101183F30);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    Date.init()();
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_10006B010(v2, v4 + v6, &qword_101188C20);
    swift_endAccess();
  }
}

void sub_10029ECCC()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = [v0 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    v5 = [v2 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (LOBYTE(__dst[0]))
    {
      v7 = SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor();
      if (LOBYTE(__dst[0]) == 1)
      {
        memcpy(__dst, v7, sizeof(__dst));
        v73 = *(&__dst[41] + 1);
        v71 = *(&__dst[42] + 1);
        v72 = *&__dst[42];
        v70 = BYTE3(__dst[41]);
        v69 = BYTE2(__dst[41]);
        v68 = BYTE1(__dst[41]);
        v67 = __dst[41];
        v66 = __dst[40];
        v65 = *(&__dst[39] + 1);
        v63 = *(&__dst[37] + 8);
        v64 = *(&__dst[38] + 8);
        v62 = *&__dst[37];
        v61 = __dst[36];
        v60 = *(&__dst[35] + 1);
        v58 = *(&__dst[33] + 8);
        v59 = *(&__dst[34] + 8);
        v56 = *(&__dst[31] + 8);
        v57 = *(&__dst[32] + 8);
        v55 = *&__dst[31];
        v54 = __dst[30];
        v53 = __dst[29];
        v52 = __dst[28];
        v50 = __dst[25];
        v51 = __dst[26];
        v48 = *(&__dst[27] + 1);
        v49 = *&__dst[27];
        v46 = __dst[23];
        v47 = __dst[24];
        v45 = __dst[22];
        v44 = __dst[21];
        v43 = __dst[20];
        v41 = *(&__dst[18] + 1);
        v42 = __dst[19];
        v40 = __dst[17];
        v38 = *(&__dst[16] + 1);
        v39 = *&__dst[18];
        v8 = *(&__dst[15] + 1);
        v9 = *&__dst[16];
        v36 = *&__dst[13];
        v37 = *&__dst[15];
        v34 = BYTE8(__dst[13]);
        v35 = __dst[12];
        v10 = *&__dst[6];
        v11 = BYTE8(__dst[6]);
        v12 = *&__dst[5];
        v13 = BYTE8(__dst[5]);
        v14 = __dst[0];
        v15 = *(&__dst[11] + 1);
        v16 = *&__dst[11];
        v32 = __dst[10];
        v33 = __dst[14];
        v30 = __dst[8];
        v31 = __dst[9];
        v29 = __dst[7];
        v17 = *(&__dst[4] + 1);
        v18 = *&__dst[4];
        v19 = *(&__dst[3] + 1);
        v20 = *(&__dst[0] + 1);
        sub_1002AD8C8(__dst, v74);
        v21 = 0;
        v22 = xmmword_100EC40A0;
        v23 = 0uLL;
      }

      else
      {
        memcpy(__dst, v7, sizeof(__dst));
        v73 = *(&__dst[41] + 1);
        v71 = *(&__dst[42] + 1);
        v72 = *&__dst[42];
        v70 = BYTE3(__dst[41]);
        v69 = BYTE2(__dst[41]);
        v68 = BYTE1(__dst[41]);
        v67 = __dst[41];
        v66 = __dst[40];
        v65 = *(&__dst[39] + 1);
        v63 = *(&__dst[37] + 8);
        v64 = *(&__dst[38] + 8);
        v62 = *&__dst[37];
        v61 = __dst[36];
        v60 = *(&__dst[35] + 1);
        v58 = *(&__dst[33] + 8);
        v59 = *(&__dst[34] + 8);
        v56 = *(&__dst[31] + 8);
        v57 = *(&__dst[32] + 8);
        v55 = *&__dst[31];
        v54 = __dst[30];
        v53 = __dst[29];
        v52 = __dst[28];
        v50 = __dst[25];
        v51 = __dst[26];
        v48 = *(&__dst[27] + 1);
        v49 = *&__dst[27];
        v46 = __dst[23];
        v47 = __dst[24];
        v45 = __dst[22];
        v44 = __dst[21];
        v43 = __dst[20];
        v41 = *(&__dst[18] + 1);
        v42 = __dst[19];
        v40 = __dst[17];
        v38 = *(&__dst[16] + 1);
        v39 = *&__dst[18];
        v8 = *(&__dst[15] + 1);
        v9 = *&__dst[16];
        v36 = *&__dst[13];
        v37 = *&__dst[15];
        v34 = BYTE8(__dst[13]);
        v35 = __dst[12];
        v10 = *&__dst[6];
        v11 = BYTE8(__dst[6]);
        v12 = *&__dst[5];
        v13 = BYTE8(__dst[5]);
        v14 = __dst[0];
        v15 = *(&__dst[11] + 1);
        v16 = *&__dst[11];
        v32 = __dst[10];
        v33 = __dst[14];
        v30 = __dst[8];
        v31 = __dst[9];
        v17 = *(&__dst[4] + 1);
        v18 = *&__dst[4];
        v19 = *(&__dst[3] + 1);
        v20 = *(&__dst[0] + 1);
        v27 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame + 16];
        v29 = __dst[7];
        v25 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
        sub_1002AD8C8(__dst, v74);
        v22 = v25;
        v23 = v27;
        v21 = 0x80;
      }
    }

    else
    {
      if (v6 > 1)
      {
        v24 = SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor();
      }

      else
      {
        v24 = SyncedLyricsViewController.Specs.default.unsafeMutableAddressor();
      }

      memcpy(__dst, v24, sizeof(__dst));
      v73 = *(&__dst[41] + 1);
      v71 = *(&__dst[42] + 1);
      v72 = *&__dst[42];
      v70 = BYTE3(__dst[41]);
      v69 = BYTE2(__dst[41]);
      v68 = BYTE1(__dst[41]);
      v67 = __dst[41];
      v66 = __dst[40];
      v65 = *(&__dst[39] + 1);
      v63 = *(&__dst[37] + 8);
      v64 = *(&__dst[38] + 8);
      v62 = *&__dst[37];
      v61 = __dst[36];
      v60 = *(&__dst[35] + 1);
      v58 = *(&__dst[33] + 8);
      v59 = *(&__dst[34] + 8);
      v56 = *(&__dst[31] + 8);
      v57 = *(&__dst[32] + 8);
      v55 = *&__dst[31];
      v54 = __dst[30];
      v53 = __dst[29];
      v52 = __dst[28];
      v50 = __dst[25];
      v51 = __dst[26];
      v48 = *(&__dst[27] + 1);
      v49 = *&__dst[27];
      v46 = __dst[23];
      v47 = __dst[24];
      v45 = __dst[22];
      v44 = __dst[21];
      v43 = __dst[20];
      v41 = *(&__dst[18] + 1);
      v42 = __dst[19];
      v40 = __dst[17];
      v38 = *(&__dst[16] + 1);
      v39 = *&__dst[18];
      v8 = *(&__dst[15] + 1);
      v9 = *&__dst[16];
      v36 = *&__dst[13];
      v37 = *&__dst[15];
      v34 = BYTE8(__dst[13]);
      v35 = __dst[12];
      v10 = *&__dst[6];
      v11 = BYTE8(__dst[6]);
      v12 = *&__dst[5];
      v13 = BYTE8(__dst[5]);
      v21 = __dst[3];
      v14 = __dst[0];
      v15 = *(&__dst[11] + 1);
      v16 = *&__dst[11];
      v32 = __dst[10];
      v33 = __dst[14];
      v30 = __dst[8];
      v31 = __dst[9];
      v17 = *(&__dst[4] + 1);
      v18 = *&__dst[4];
      v19 = *(&__dst[3] + 1);
      v28 = __dst[2];
      v29 = __dst[7];
      v26 = __dst[1];
      v20 = *(&__dst[0] + 1);
      sub_1002AD8C8(__dst, v74);
      v22 = v26;
      v23 = v28;
    }

    v77 = v20;
    v78 = v22;
    v79 = v23;
    v81 = v19;
    v82 = v18;
    v83 = v17;
    v88 = v29;
    v89 = v30;
    v90 = v31;
    v91 = v32;
    v92 = v16;
    v93 = v15;
    v97 = v33;
    LOBYTE(__dst[0]) = v13;
    v74[0] = v11;
    v76[0] = v14;
    v80 = v21;
    v84 = v12;
    v85 = v13;
    v86 = v10;
    v87 = v11;
    v94 = v35;
    v95 = v36;
    v96 = v34;
    v98 = v37;
    v99 = v8;
    v100 = v9;
    v102 = v40;
    v101 = v38;
    v103 = v39;
    v104 = v41;
    v105 = v42;
    v106 = v43;
    v107 = v44;
    v108 = v45;
    v109 = v46;
    v110 = v47;
    v111 = v50;
    v112 = v51;
    v113 = v49;
    v114 = v48;
    v115 = v52;
    v116 = v53;
    v117 = v54;
    v118 = v55;
    v120 = v57;
    v119 = v56;
    v122 = v59;
    v121 = v58;
    v123 = v60;
    v124 = v61;
    v125 = v62;
    v127 = v64;
    v126 = v63;
    v128 = v65;
    v129 = v66;
    v130 = v67;
    v131 = v68;
    v132 = v69;
    v133 = v70;
    v134 = v73;
    v135 = v72;
    v136 = v71;
    (*((swift_isaMask & *v3) + 0x1E0))(v76);
  }

  else
  {
    __break(1u);
  }
}

void sub_10029F54C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  [v2 userInterfaceIdiom];

  if (v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] != 1 || v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state] == 2)
  {
    v4 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
    if (!v4)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = v4;
    v6 = sub_100783210();

    [v6 textContainerInset];
  }

  else
  {
    v7 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
    if (!v7)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = *((swift_isaMask & *v7) + 0x208);
    v9 = v7;
    v8();
  }

  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer;
  v11 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer];
  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_10010FC20(&qword_101183990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBDC10;
  v13 = v11;
  *(v12 + 32) = CGFloat._bridgeToObjectiveC()();
  v14 = [v1 view];
  if (!v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v14;
  [v14 bounds];

  *(v12 + 40) = CGFloat._bridgeToObjectiveC()();
  v16 = [v1 view];
  if (!v16)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v16;
  [v16 bounds];

  *(v12 + 48) = CGFloat._bridgeToObjectiveC()();
  *(v12 + 56) = CGFloat._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101189A20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setLocations:isa];

  v19 = *&v1[v10];
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = v19;
  v21 = [v1 view];
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = sub_100025CE0();
  v32 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v31);
  v33 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  if ((v32 & 1) == 0)
  {
    if (v33)
    {
      v36 = v33;
      v35 = sub_100783210();

      [v35 textContainerInset];
      [v35 setTextContainerInset:?];
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (!v33)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    [v34 layoutMargins];
    [v35 setLayoutMargins:?];
LABEL_21:

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_10029F940()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v3 = OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator;
  v4 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
  if (!v4)
  {
    __break(1u);
    goto LABEL_35;
  }

  v5 = [v4 centerXAnchor];
  v6 = [v1 view];
  if (!v6)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = v6;
  v8 = [v6 centerXAnchor];

  v9 = [v5 constraintEqualToAnchor:v8];
  *(inited + 32) = v9;
  v10 = *&v1[v3];
  if (!v10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = [v10 centerYAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(inited + 40) = v15;
  sub_100124054(inited);
  v16 = sub_100025CE0();
  v17 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v16);
  v18 = &stru_101148000;
  p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
  v20 = &stru_101148000;
  v21 = &stru_101148000;
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6D0;
  v23 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v24 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
  if (!v24)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = [v24 leadingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v27 = v26;
  v28 = [v26 layoutMarginsGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v25 constraintEqualToAnchor:v29];

  *(v22 + 32) = v30;
  v31 = *&v1[v23];
  if (!v31)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v32 = [v31 bottomAnchor];
  v33 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider;
  v34 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v34)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v35 = [v34 bottomAnchor];
  v36 = [v32 constraintEqualToAnchor:v35];

  *(v22 + 40) = v36;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = v22;

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100EBC6D0;
  v38 = *&v1[v23];
  if (!v38)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v39 = [v38 trailingAnchor];
  v40 = *&v1[v33];
  if (!v40)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];

  *(v37 + 32) = v42;
  v43 = *&v1[v23];
  if (!v43)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v44 = [v43 topAnchor];
  v45 = *&v1[v33];
  if (!v45)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46 constant:12.0];

  *(v37 + 40) = v47;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = v37;

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100EBC6D0;
  v49 = *&v1[v23];
  if (!v49)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v50 = [v49 topAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v52 = v51;
  v53 = [v51 topAnchor];

  v54 = [v50 constraintEqualToAnchor:v53 constant:18.0];
  *(v48 + 32) = v54;
  v55 = *&v1[v23];
  if (!v55)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v56 = [v55 trailingAnchor];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v58 = v57;
  v59 = [v57 layoutMarginsGuide];

  v60 = [v59 trailingAnchor];
  v61 = [v56 constraintEqualToAnchor:v60];

  *(v48 + 40) = v61;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = v48;

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100EBC6D0;
  v63 = *&v1[v23];
  if (!v63)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v64 = [v63 heightAnchor];
  v65 = [v64 constraintEqualToConstant:38.0];

  *(v62 + 32) = v65;
  v66 = *&v1[v23];
  if (v66)
  {
    v67 = objc_opt_self();
    v68 = [v66 widthAnchor];
    v69 = [v68 constraintEqualToConstant:38.0];

    *(v62 + 40) = v69;

    sub_100124054(v70);
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v67 activateConstraints:isa];

    v20 = &stru_101148000;
    v18 = &stru_101148000;
    v21 = &stru_101148000;
    p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
LABEL_21:
    v72 = *(p_cache[305] + v1);
    if (!v72)
    {
LABEL_27:
      v100 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton];
      if (!v100)
      {
LABEL_33:
        Array<A>.activate()(_swiftEmptyArrayStorage);

        return;
      }

      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_100EBC6D0;
      v102 = v100;
      v103 = [v102 v21[93].attr];
      v104 = [v1 view];
      if (v104)
      {
        v105 = v104;
        v106 = [v104 v21[93].attr];

        v107 = [v103 constraintEqualToAnchor:v106];
        *(v101 + 32) = v107;
        v108 = [v102 v20[95].attr];
        v109 = [v1 view];
        if (v109)
        {
          v110 = v109;
          v111 = [v109 layoutMarginsGuide];

          v112 = [v111 v20[95].attr];
          v113 = [v108 constraintEqualToAnchor:v112];

          *(v101 + 40) = v113;
          *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = v101;

          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_100EBC6D0;
          v115 = [v102 bottomAnchor];
          v116 = [v1 view];
          if (v116)
          {
            v117 = v116;
            v118 = [v116 bottomAnchor];

            v119 = [v115 constraintEqualToAnchor:v118];
            *(v114 + 32) = v119;
            v120 = [v102 v20[95].attr];

            v121 = [v1 view];
            if (v121)
            {
              v122 = v121;
              v123 = [v121 layoutMarginsGuide];

              v124 = [v123 v20[95].attr];
              v125 = [v120 constraintEqualToAnchor:v124];

              *(v114 + 40) = v125;
              *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = v114;

              sub_100124054(v126);

              goto LABEL_33;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100EBC6D0;
    v74 = v72;
    v75 = [v74 v18[94].attr];
    v76 = [v1 view];
    if (v76)
    {
      v77 = v18;
      v78 = v76;
      v79 = [v76 v77[94].attr];

      v80 = [v75 constraintEqualToAnchor:v79 constant:-32.0];
      *(v73 + 32) = v80;
      v81 = [v74 v20[95].attr];
      v82 = [v1 view];
      if (v82)
      {
        v83 = v82;
        v84 = [v82 layoutMarginsGuide];

        v85 = [v84 v20[95].attr];
        v86 = [v81 constraintEqualToAnchor:v85];

        *(v73 + 40) = v86;
        *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = v73;

        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100EBC6D0;
        v88 = [v74 topAnchor];
        v89 = [v1 view];
        if (v89)
        {
          v90 = v89;
          v91 = [v89 topAnchor];

          v92 = [v88 constraintEqualToAnchor:v91 constant:18.0];
          *(v87 + 32) = v92;
          v93 = [v74 v20[95].attr];

          v94 = [v1 view];
          if (!v94)
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v95 = v94;
          v96 = [v94 layoutMarginsGuide];

          v97 = [v96 v20[95].attr];
          v98 = [v93 constraintEqualToAnchor:v97];

          *(v87 + 40) = v98;
          *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = v87;

          sub_100124054(v99);

          v21 = &stru_101148000;
          goto LABEL_27;
        }

LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_59:
  __break(1u);
}

void sub_1002A05E0(void *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_song);
  if (v7)
  {
    v38 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_song);
    if (a1)
    {
      v37 = v7;
      v8 = a1;
      v9 = [v8 identifiers];
      v10 = [v37 identifiers];
      v11 = [v9 intersectsSet:v10];

      if (v11)
      {
        type metadata accessor for LyricsLoader();
        v12 = static LyricsLoader.supportsLyrics(for:)(v8);
        v13 = static LyricsLoader.supportsLyrics(for:)(v37);

        if (((v12 ^ v13) & 1) == 0)
        {
          v14 = v37;
LABEL_17:

          return;
        }
      }

      else
      {
      }
    }

    else
    {
      v18 = v7;
    }

    v19 = (v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
    if (*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask))
    {
      v20 = v19[1];

      v21 = v20;
      Task.cancel()();

      v22 = *v19;
      v23 = v19[1];
      *v19 = 0;
      v19[1] = 0;
      sub_1002AC974(v22, v23);
    }

    sub_1002AAC80(a1);
    *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

    type metadata accessor for LyricsLoader();
    if (static LyricsLoader.supportsLyrics(for:)(v38))
    {
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v26 = v38;

      v27 = static MainActor.shared.getter();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = &protocol witness table for MainActor;
      v28[4] = v25;
      v28[5] = v26;

      v29 = sub_1001F4CB8(0, 0, v6, &unk_100EC5530, v28);
      v31 = *v19;
      v30 = v19[1];
      *v19 = v29;
      v19[1] = v38;
      sub_1002AC974(v31, v30);
      return;
    }

    v32 = v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
    v33 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
    *v32 = 0;
    v34 = *(v32 + 8);
    *(v32 + 8) = 0;
    sub_1002AC8A4(v33, v34);
    sub_10029A850();
    v35 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
    if (!v35)
    {
      __break(1u);
      return;
    }

    v36 = v35;
    [v36 stopAnimating];

    v14 = v38;
    goto LABEL_17;
  }

  v15 = v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  v16 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  *v15 = 0;
  v17 = *(v15 + 8);
  *(v15 + 8) = 0;
  sub_1002AC8A4(v16, v17);

  sub_10029A850();
}

uint64_t sub_1002A0998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002A0A30, v7, v6);
}

uint64_t sub_1002A0A30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002A0B20;

    return sub_1002A0D18();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002A0B20()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1002A0C40, v3, v2);
}

uint64_t sub_1002A0C40()
{
  v1 = v0[10];

  v2 = (v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
  v3 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask);
  if (v3)
  {
    v4 = v0[6];
    v5 = v2[1];
    sub_1002AC9B4(v3, v5);
    v6 = v5;
    sub_1002AC974(v3, v5);

    v7 = v0[10];
    if (v4 == v6)
    {
      v8 = *v2;
      v9 = v2[1];
      *v2 = 0;
      v2[1] = 0;
      sub_1002AC974(v8, v9);
    }
  }

  else
  {
    v7 = v0[10];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002A0D18()
{
  v1[5] = v0;
  v2 = type metadata accessor for Logger();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20);
  v1[9] = swift_task_alloc();
  sub_10010FC20(&unk_101189A00);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  sub_10010FC20(&qword_101189A18);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v4;
  v1[18] = v3;

  return _swift_task_switch(sub_1002A0EE4, v4, v3);
}

uint64_t sub_1002A0EE4()
{
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR___MusicNowPlayingLyricsViewController_song;
  *(v0 + 152) = OBJC_IVAR___MusicNowPlayingLyricsViewController_song;
  v3 = *(v1 + v2);
  *(v0 + 160) = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedMonitor];
  v7 = [v6 isRemoteServerLikelyReachable];

  if ((v7 & 1) == 0)
  {
    v13 = [v5 lyrics];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = [v13 text];

    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
LABEL_14:

      v1 = *(v0 + 40);
LABEL_15:
      v20 = v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
      v21 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
      *v20 = 0;
      v22 = *(v20 + 8);
      *(v20 + 8) = 0;
      sub_1002AC8A4(v21, v22);
      result = sub_10029A850();
      v24 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
      if (!v24)
      {
        __break(1u);
        return result;
      }

      v25 = v24;

      [v25 stopAnimating];

      goto LABEL_33;
    }
  }

  v8 = *(v0 + 40);
  v9 = OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  *(v0 + 168) = OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
  v10 = v8 + v9;
  v11 = *(v8 + v9);
  *(v0 + 176) = v11;
  v12 = *(v8 + v9 + 8);
  *(v0 + 226) = v12;
  *v10 = 0;
  *(v10 + 8) = 2;
  sub_10029A850();
  if (!*(v10 + 8))
  {
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*(v10 + 8) == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_18;
    }

    if (*v10 == 2)
    {
      if (v11 == 2)
      {
        goto LABEL_19;
      }

LABEL_18:
      v26 = *(v0 + 40);
      sub_100009F78(0, &qword_101182960);
      v27 = static OS_dispatch_queue.main.getter();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v29 = v26;
      OS_dispatch_queue.asyncAfter(_:block:)(sub_1002AD8C0, v28);

      goto LABEL_19;
    }

    if (v11 == 2 || ((*v10 ^ v11) & 1) != 0)
    {
      goto LABEL_18;
    }
  }

  else if (v12 != 2 || v11 != 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  v30 = *(v0 + 40);
  if (*(v30 + OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded))
  {
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = *(v0 + 48);

    v34 = Logger.lyrics.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v34, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v39 = *(v0 + 56);
    v38 = *(v0 + 64);
    v40 = *(v0 + 48);
    if (v37)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "NowPlayingLyricsViewController: app is backgrounded, not making lyrics request", v41, 2u);

      sub_1002AC8A4(v11, v12);
    }

    else
    {

      sub_1002AC8A4(v11, v12);
    }

    (*(v39 + 8))(v38, v40);
LABEL_33:

    v46 = *(v0 + 8);

    return v46();
  }

  v42 = *(v30 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader);
  *(v0 + 184) = v42;
  v43 = *((swift_isaMask & *v42) + 0x78);
  v42;
  v48 = (v43 + *v43);
  v44 = swift_task_alloc();
  *(v0 + 192) = v44;
  *v44 = v0;
  v44[1] = sub_1002A1414;

  return v48(v5);
}

uint64_t sub_1002A1414(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  *(v5 + 227) = a3;
  *(v5 + 216) = v3;

  if (v3)
  {
    v6 = *(v5 + 136);
    v7 = *(v5 + 144);
    v8 = sub_1002A2348;
  }

  else
  {

    v6 = *(v5 + 136);
    v7 = *(v5 + 144);
    v8 = sub_1002A1538;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1002A1538()
{
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v7 = *(v0 + 40);
    v8 = v7 + *(v0 + 168);
    v9 = *(v8 + 8) == 2 && *v8 == 0;
    if (!v9 || (v10 = *(v7 + *(v0 + 152))) == 0)
    {
      v37 = *(v0 + 200);
      v38 = *(v0 + 208);
      v39 = *(v0 + 176);
      v40 = *(v0 + 226);
      v41 = *(v0 + 227);

      sub_1002AC8A4(v39, v40);

      v42 = v41 & 1;
      v43 = v37;
      v44 = v38;
LABEL_23:
      sub_10011895C(v43, v44, v42);
      goto LABEL_24;
    }

    v11 = *(v0 + 160);
    v12 = v10;
    v13 = [v11 identifiers];
    v14 = [v12 identifiers];
    v15 = [v13 intersectsSet:v14];

    if ((v15 & 1) == 0)
    {
      v47 = *(v0 + 200);
      v46 = *(v0 + 208);
      v48 = *(v0 + 176);
      v49 = *(v0 + 226);
      v50 = *(v0 + 227);

      sub_1002AC8A4(v48, v49);

      sub_10011895C(v47, v46, v50 & 1);

      goto LABEL_24;
    }

    result = *(*(v0 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator);
    if (result)
    {
      v17 = *(v0 + 227);
      [result stopAnimating];
      if (v17)
      {
        v18 = *(v0 + 200);
        v19 = *(v0 + 40);
        *(v19 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = v18;

        v20 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
        v21 = *(v19 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
        if (v21)
        {
          v22 = v18[56];
          v23 = v21;
          v24 = v23;
          if (!v22 || (v25 = [v23 tracklist], v26 = MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter(), v25, (v26 & 1) == 0))
          {
            v127 = v24;
            v68 = *(v0 + 40);
            v69 = v68 + *(v0 + 168);
            v70 = *v69;
            *v69 = 2;
            v71 = *(v69 + 8);
            *(v69 + 8) = 1;
            sub_1002AC8A4(v70, v71);
            result = sub_10029A850();
            v72 = *(v68 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if (!v72)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v73 = *(v0 + 120);
            v74 = *(v0 + 96);
            v128 = *(v0 + 40);
            v75 = type metadata accessor for Lyrics.Translation(0);
            v76 = *(*(v75 - 8) + 56);
            v76(v73, 1, 1, v75);
            v77 = type metadata accessor for Lyrics.Transliteration(0);
            (*(*(v77 - 8) + 56))(v74, 1, 1, v77);
            v78 = *((swift_isaMask & *v72) + 0x4C8);
            v79 = v72;
            v78(0, v73, v74);

            sub_1000095E8(v74, &unk_101189A00);
            result = sub_1000095E8(v73, &qword_101189A18);
            v80 = *(v128 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
            if (!v80)
            {
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v81 = *(v0 + 200);
            v82 = *(v0 + 120);
            v76(v82, 1, 1, v75);
            v83 = v80;
            sub_100782D34(v81, v82);

            v84 = v82;
            goto LABEL_36;
          }
        }

        v27 = *(v0 + 40) + *(v0 + 168);
        v28 = *v27;
        *v27 = v18[56] == 2;
        v29 = *(v27 + 8);
        *(v27 + 8) = 1;
        sub_1002AC8A4(v28, v29);
        sub_10029A850();
        *(v0 + 224) = 6;
        v30 = sub_100025CE0();
        result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v30);
        if ((result & 1) == 0)
        {
          v85 = *(*(v0 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
          if (!v85)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v86 = *(v0 + 200);
          v87 = *(v0 + 120);
          v88 = *(v0 + 96);
          v89 = type metadata accessor for Lyrics.Translation(0);
          (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
          v90 = type metadata accessor for Lyrics.Transliteration(0);
          (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
          v91 = *((swift_isaMask & *v85) + 0x4C8);
          v92 = v85;
          v91(v86, v87, v88);

          sub_1000095E8(v88, &unk_101189A00);
          v84 = v87;
          goto LABEL_36;
        }

        v31 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
        v32 = *(v19 + v20);
        if (v32)
        {

          v33 = [v32 tracklist];
          v34 = [v33 vocalsControlCommand];

          if (v34)
          {
            v35 = [v34 isActive];
            swift_unknownObjectRelease();
            if (v35)
            {
              result = (*(*v31 + 248))(2);
              if ((result & 1) == 0)
              {
                v36 = 1;
                goto LABEL_39;
              }
            }
          }
        }

        else
        {
        }

        result = (*(*v31 + 248))(1);
        v36 = result;
LABEL_39:
        v93 = *(*(v0 + 40) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
        if (!v93)
        {
LABEL_69:
          __break(1u);
          return result;
        }

        v94 = *(*v31 + 248);
        v95 = v93;
        v129 = v94;
        if (v94(0))
        {
          v96 = (*(*v18 + 288))();
        }

        else
        {
          v97 = *(v0 + 112);
          v98 = type metadata accessor for Lyrics.Translation(0);
          v96 = (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
        }

        if (v36)
        {
          (*(*v18 + 312))(v96);
        }

        else
        {
          v99 = *(v0 + 88);
          v100 = type metadata accessor for Lyrics.Transliteration(0);
          (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
        }

        v101 = *(v0 + 112);
        v102 = *(v0 + 88);
        (*((swift_isaMask & *v95) + 0x4C8))(*(v0 + 200), v101, v102);

        sub_1000095E8(v102, &unk_101189A00);
        sub_1000095E8(v101, &qword_101189A18);
        if ((v129(5) & 1) != 0 && (v129(4) & 1) == 0)
        {
          v103 = *(v0 + 80);
          (*(*v18 + 312))();
          v104 = type metadata accessor for Lyrics.Transliteration(0);
          v105 = (*(*(v104 - 8) + 48))(v103, 1, v104);
          v106 = sub_1000095E8(v103, &unk_101189A00);
          if (v105 == 1)
          {
            v107 = *(v0 + 104);
            (*(*v18 + 288))(v106);
            v108 = type metadata accessor for Lyrics.Translation(0);
            v109 = (*(*(v108 - 8) + 48))(v107, 1, v108);
            v110 = *(v0 + 104);
            if (v109 == 1)
            {

              v84 = v110;
LABEL_36:
              sub_1000095E8(v84, &qword_101189A18);
              goto LABEL_54;
            }

            sub_1000095E8(*(v0 + 104), &qword_101189A18);
          }

          sub_1002A5A68(8u);
        }

LABEL_54:
        result = [*(v0 + 40) view];
        if (result)
        {
          v111 = result;

          v112 = [v111 window];

          if (v112)
          {

            v113 = [objc_opt_self() sharedApplication];
            v114 = [v113 applicationState];

            if (!v114)
            {
              v115 = *(v0 + 72);
              v116 = *(v0 + 40);
              Date.init()();
              v117 = type metadata accessor for Date();
              (*(*(v117 - 8) + 56))(v115, 0, 1, v117);
              v118 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
              swift_beginAccess();
              sub_10006B010(v115, v116 + v118, &qword_101188C20);
              swift_endAccess();
              *(v116 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = 0;
            }
          }

          goto LABEL_58;
        }

        goto LABEL_65;
      }

      v51 = *(v0 + 40);
      v52 = v51 + *(v0 + 168);
      v53 = *v52;
      *v52 = 2;
      v54 = *(v52 + 8);
      *(v52 + 8) = 1;

      sub_1002AC8A4(v53, v54);
      sub_10029A850();
      *(v51 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

      v55 = *(v51 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
      if (v55)
      {
        v56 = *(v0 + 120);
        v57 = *(v0 + 96);
        v58 = *(v0 + 40);
        v59 = type metadata accessor for Lyrics.Translation(0);
        (*(*(v59 - 8) + 56))(v56, 1, 1, v59);
        v60 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v60 - 8) + 56))(v57, 1, 1, v60);
        v61 = *((swift_isaMask & *v55) + 0x4C8);
        v62 = v55;
        v61(0, v56, v57);

        sub_1000095E8(v57, &unk_101189A00);
        result = sub_1000095E8(v56, &qword_101189A18);
        v63 = *(v58 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
        if (v63)
        {
          v65 = *(v0 + 200);
          v64 = *(v0 + 208);
          v66 = v63;

          v67 = &v66[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_lyricsText];
          *v67 = v65;
          *(v67 + 1) = v64;

          sub_100781890();

LABEL_58:
          *(v0 + 225) = 6;
          v119 = sub_100025CE0();
          v120 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v119);
          v121 = *(v0 + 227);
          v123 = *(v0 + 200);
          v122 = *(v0 + 208);
          v124 = *(v0 + 226);
          v125 = *(v0 + 176);
          v126 = *(v0 + 160);
          if (v120)
          {
            sub_1002A24D0();
          }

          else
          {
          }

          sub_1002AC8A4(v125, v124);
          v42 = v121 & 1;
          v43 = v123;
          v44 = v122;
          goto LABEL_23;
        }

        goto LABEL_64;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 227);
  v6 = *(v0 + 226);

  sub_10011895C(v1, v2, v5 & 1);
  sub_1002AC8A4(v3, v6);

LABEL_24:

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1002A2348()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 40);
  v7 = *(v0 + 226);

  v8 = v6 + v4;
  *(v6 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics) = 0;

  v9 = *(v6 + v4);
  *v8 = v1;
  LOBYTE(v4) = *(v6 + v4 + 8);
  *(v8 + 8) = 0;
  swift_errorRetain();
  swift_errorRetain();
  sub_1002AC8A4(v9, v4);
  sub_10029A850();

  sub_1002AC8A4(v2, v7);

  v10 = *(v0 + 8);

  return v10();
}

char *sub_1002A248C(char *result)
{
  if (result[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8] == 2 && *&result[OBJC_IVAR___MusicNowPlayingLyricsViewController_state] == 0)
  {
    result = *&result[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator];
    if (result)
    {
      return [result startAnimating];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002A24D0()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101189A00);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = (&v89 - v7);
  __chkstk_darwin(v6);
  v10 = &v89 - v9;
  v11 = sub_10010FC20(&qword_101189A18);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v89 - v16;
  __chkstk_darwin(v15);
  v19 = &v89 - v18;
  v94 = 6;
  v20 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v20))
  {
    if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 2 || *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state) != 0)
    {
      goto LABEL_9;
    }

    v22 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
    v23 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
    if (!v23)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ([v23 isHidden])
    {
LABEL_9:
      v24 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
      if (v24)
      {
        v90 = v14;
        v91 = v8;
        v89 = v5;
        v92 = v1;
        v8 = *(*v24 + 288);

        v8(v25);
        v14 = type metadata accessor for Lyrics.Translation(0);
        v26 = *(v14 - 1);
        v22 = *(v26 + 48);
        v1 = v26 + 48;
        v27 = v22(v19, 1, v14);
        v28 = sub_1000095E8(v19, &qword_101189A18);
        v19 = v24;
        if (v27 != 1)
        {
          goto LABEL_22;
        }

        (*(*v24 + 312))(v28);
        v29 = type metadata accessor for Lyrics.Transliteration(0);
        if ((*(*(v29 - 8) + 48))(v10, 1, v29) != 1)
        {
LABEL_21:
          v28 = sub_1000095E8(v10, &unk_101189A00);
LABEL_22:
          v8(v28);
          v39 = v22(v17, 1, v14);
          sub_1000095E8(v17, &qword_101189A18);
          v40 = &_swiftEmptySetSingleton;
          if (v39 != 1)
          {
            v41 = *(v92 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if (!v41)
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            v42 = v1;
            v43 = *((swift_isaMask & *v41) + 0x3A0);
            v44 = v41;
            v45 = v90;
            v43();

            v46 = v22(v45, 1, v14);
            v47 = v46 != 1;
            sub_1000095E8(v45, &qword_101189A18);
            Hasher.init(_seed:)();
            Hasher._combine(_:)(0);
            Hasher._combine(_:)(v46 != 1);
            v48 = Hasher._finalize()();
            v49 = -1 << *(&_swiftEmptySetSingleton + 32);
            v50 = v48 & ~v49;
            if (((*(&_swiftEmptySetSingleton + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0)
            {
LABEL_30:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v93 = &_swiftEmptySetSingleton;
              if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  sub_1003AEEF0();
                }

                else
                {
                  sub_1003B80D4();
                }

                v40 = v93;
                Hasher.init(_seed:)();
                Hasher._combine(_:)(0);
                Hasher._combine(_:)(v47);
                v54 = Hasher._finalize()();
                v55 = -1 << v40[32];
                v50 = v54 & ~v55;
                if ((*&v40[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v50))
                {
                  v56 = ~v55;
                  do
                  {
                    v57 = *(*(v40 + 6) + v50);
                    if ((v57 & 0x80000000) == 0 && (((v46 != 1) ^ v57) & 1) == 0)
                    {
                      goto LABEL_67;
                    }

                    v50 = (v50 + 1) & v56;
                  }

                  while (((*&v40[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v50) & 1) != 0);
                }
              }

              else if (isUniquelyReferenced_nonNull_native)
              {
                v40 = &_swiftEmptySetSingleton;
              }

              else
              {
                sub_1001938AC();
                v40 = v93;
              }

              v46 = v92;
              *&v40[((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v50;
              *(*(v40 + 6) + v50) = v47;
              v58 = *(v40 + 2);
              v59 = __OFADD__(v58, 1);
              v60 = v58 + 1;
              if (v59)
              {
                __break(1u);
LABEL_77:
                __break(1u);
                goto LABEL_78;
              }

              *(v40 + 2) = v60;
LABEL_45:
              v61 = v91;
              (*(*v19 + 312))();
              v62 = type metadata accessor for Lyrics.Transliteration(0);
              v63 = *(*(v62 - 8) + 48);
              v64 = v63(v61, 1, v62);
              sub_1000095E8(v61, &unk_101189A00);
              if (v64 == 1)
              {
                goto LABEL_70;
              }

              v65 = *(v46 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
              if (!v65)
              {
LABEL_88:
                __break(1u);
                return;
              }

              v66 = *((swift_isaMask & *v65) + 0x3B8);
              v67 = v65;
              v68 = v89;
              v66();

              v69 = v63(v68, 1, v62);
              sub_1000095E8(v68, &unk_101189A00);
              if (v69 == 1)
              {
                LOBYTE(v50) = 0x80;
              }

              else
              {
                LOBYTE(v50) = -127;
              }

              Hasher.init(_seed:)();
              Hasher._combine(_:)(1uLL);
              Hasher._combine(_:)(v69 != 1);
              v70 = Hasher._finalize()();
              v71 = -1 << v40[32];
              v42 = v70 & ~v71;
              if ((*&v40[((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v42))
              {
                v72 = ~v71;
                while (1)
                {
                  v73 = *(*(v40 + 6) + v42);
                  if (v73 < 0 && (((v69 != 1) ^ v73) & 1) == 0)
                  {
                    break;
                  }

                  v42 = (v42 + 1) & v72;
                  if (((*&v40[((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v42) & 1) == 0)
                  {
                    goto LABEL_56;
                  }
                }

LABEL_70:
                v81 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
                v82 = *(v46 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
                if (v82)
                {
                  *&v82[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = v40;

                  v83 = v82;

                  sub_100656E20();

                  v84 = *(v46 + v81);
                  if (v84)
                  {
                    [v84 setHidden:0];
                    v85 = *(v46 + v81);
                    if (v85)
                    {
                      v86 = v85;

                      [v86 setEnabled:1];

                      v87 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 232);

                      v87(5);

                      v31 = *(v46 + v81);
                      if (v31)
                      {
                        goto LABEL_74;
                      }

                      goto LABEL_83;
                    }

LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_81:
                  __break(1u);
                  goto LABEL_82;
                }

LABEL_80:
                __break(1u);
                goto LABEL_81;
              }

LABEL_56:
              v74 = swift_isUniquelyReferenced_nonNull_native();
              v93 = v40;
              if (*(v40 + 3) > *(v40 + 2))
              {
                if ((v74 & 1) == 0)
                {
                  sub_1001938AC();
                  v40 = v93;
                }

                goto LABEL_68;
              }

              if (v74)
              {
                sub_1003AEEF0();
              }

              else
              {
                sub_1003B80D4();
              }

              v40 = v93;
              Hasher.init(_seed:)();
              Hasher._combine(_:)(1uLL);
              Hasher._combine(_:)(v69 != 1);
              v75 = Hasher._finalize()();
              v76 = -1 << v40[32];
              v42 = v75 & ~v76;
              if (((*&v40[((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v42) & 1) == 0)
              {
LABEL_68:
                *&v40[((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v42;
                *(*(v40 + 6) + v42) = v50;
                v79 = *(v40 + 2);
                v59 = __OFADD__(v79, 1);
                v80 = v79 + 1;
                if (!v59)
                {
                  *(v40 + 2) = v80;
                  goto LABEL_70;
                }

                goto LABEL_77;
              }

              v77 = ~v76;
              while (1)
              {
                v78 = *(*(v40 + 6) + v42);
                if (v78 < 0 && (((v69 != 1) ^ v78) & 1) == 0)
                {
                  break;
                }

                v42 = (v42 + 1) & v77;
                if (((*&v40[((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v42) & 1) == 0)
                {
                  goto LABEL_68;
                }
              }

LABEL_67:
              ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              goto LABEL_68;
            }

            v51 = ~v49;
            while (1)
            {
              v52 = *(*(&_swiftEmptySetSingleton + 6) + v50);
              if ((v52 & 0x80000000) == 0 && (((v46 != 1) ^ v52) & 1) == 0)
              {
                break;
              }

              v50 = (v50 + 1) & v51;
              if (((*(&_swiftEmptySetSingleton + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v50) & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          v46 = v92;
          goto LABEL_45;
        }

        sub_1000095E8(v10, &unk_101189A00);
        v1 = v92;
      }

      v22 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
      v30 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
      if (!v30)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      [v30 setHidden:1];
      v31 = *(v22 + v1);
      if (v31)
      {
LABEL_74:
        v88 = [v31 contextMenuInteraction];
        [v88 dismissMenu];

        return;
      }

      __break(1u);
    }

    v32 = *(v22 + v1);
    if (!v32)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    *&v32[OBJC_IVAR___MusicNowPlayingLyricsTranslationButton_availableOptions] = &_swiftEmptySetSingleton;
    v33 = v32;

    sub_100656E20();

    v34 = *(v22 + v1);
    if (!v34)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v35 = objc_opt_self();
    v36 = v34;
    v37 = [v35 tertiaryLabelColor];
    [v36 setTintColor:v37];

    v38 = *(v22 + v1);
    if (!v38)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    [v38 setEnabled:0];
    v31 = *(v22 + v1);
    if (!v31)
    {
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_74;
  }
}

void sub_1002A2FDC(uint64_t a1)
{
  v227 = a1;
  v218 = type metadata accessor for Logger();
  v223 = *(v218 - 8);
  __chkstk_darwin(v218);
  v222 = v193 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_101184010);
  __chkstk_darwin(v3 - 8);
  v202 = v193 - v4;
  v5 = sub_10010FC20(&qword_101189A10);
  __chkstk_darwin(v5 - 8);
  v201 = v193 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v211 = *(v7 - 8);
  __chkstk_darwin(v7);
  v209 = v193 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for DispatchQoS();
  v208 = *(v210 - 8);
  __chkstk_darwin(v210);
  v207 = v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v212 = *(v219 - 8);
  __chkstk_darwin(v219);
  v213 = v10;
  v11 = v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for DispatchTime();
  v220 = *(v217 - 8);
  __chkstk_darwin(v217);
  v206 = v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v216 = v193 - v14;
  v215 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v215);
  v214 = v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v16 - 8);
  v204 = v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v193 - v19;
  v21 = type metadata accessor for Lyrics.TextLine(0);
  v22 = *(v21 - 8);
  v225 = v21;
  v226 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v221 = (v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = v193 - v25;
  __chkstk_darwin(v27);
  v205 = v193 - v28;
  __chkstk_darwin(v29);
  v203 = v193 - v30;
  __chkstk_darwin(v31);
  v33 = v193 - v32;
  v34 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v34 - 8);
  v36 = v193 - v35;
  v37 = type metadata accessor for Song();
  v38 = *(v37 - 8);
  v228 = v37;
  v229 = v38;
  __chkstk_darwin(v37);
  __chkstk_darwin(v39);
  v42 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v42)
  {
    __break(1u);
    goto LABEL_46;
  }

  v43 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v43)
  {
    return;
  }

  v198 = v1;
  v199 = v41;
  v196 = v7;
  v197 = v11;
  v224 = v193 - v40;
  v200 = v33;
  v44 = v43;
  v45 = v42;
  v46 = v228;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v47 = v229;
  if ((*(v229 + 48))(v36, 1, v46) == 1)
  {

    sub_1000095E8(v36, &unk_101183960);
    return;
  }

  v195 = v44;
  v48 = v224;
  v49 = (*(v47 + 32))(v224, v36, v46);
  v193[1] = v42;
  v50 = (*((swift_isaMask & *v45) + 0x220))(v49);
  if (!v50)
  {
    (*(v47 + 8))(v48, v46);

    return;
  }

  v51 = v50;
  v194 = v45;
  (*(*v50 + 416))(v227);
  v52 = v225;
  if ((*(v226 + 48))(v20, 1, v225) == 1)
  {
    (*(v229 + 8))(v224, v46);

    sub_1000095E8(v20, &qword_101184020);
    return;
  }

  v193[0] = v51;
  v53 = v200;
  v54 = sub_1002AD430(v20, v200, type metadata accessor for Lyrics.TextLine);
  (*(v53 + v52[16]))(v54);
  v55 = String.count.getter();

  v56 = sub_1001EBB88();
  v57 = v194;
  if (v58)
  {
    v60 = v222;
    v59 = v223;
    v61 = v221;
    if (v55 <= 150)
    {
      goto LABEL_11;
    }

LABEL_16:
    v70 = Logger.lyrics.unsafeMutableAddressor();
    v71 = v218;
    (v59)[2](v60, v70, v218);
    v72 = v200;
    sub_1002AD3C8(v200, v26, type metadata accessor for Lyrics.TextLine);
    sub_1002AD3C8(v72, v61, type metadata accessor for Lyrics.TextLine);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v238[0] = v227;
      *v75 = 136446722;
      v76 = (*&v26[v52[16]])();
      v77 = v52;
      v79 = v78;
      sub_1002AD498(v26, type metadata accessor for Lyrics.TextLine);
      v80 = sub_1000105AC(v76, v79, v238);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2050;
      (*(v61 + v77[16]))(v81);
      v82 = String.count.getter();

      sub_1002AD498(v61, type metadata accessor for Lyrics.TextLine);
      *(v75 + 14) = v82;
      *(v75 + 22) = 2050;
      v83 = sub_1001EBB88();
      v85 = 150;
      if ((v84 & 1) == 0)
      {
        v85 = v83;
      }

      *(v75 + 24) = v85;
      _os_log_impl(&_mh_execute_header, v73, v74, "Trying to share a line that is too long to be shared (text=%{public}s, length=%{public}ld, maxCharacterCount=%{public}ld)", v75, 0x20u);
      sub_10000959C(v227);

      (*(v223 + 1))(v60, v218);
      (*(v229 + 8))(v224, v228);
      v86 = v200;
    }

    else
    {
      sub_1002AD498(v61, type metadata accessor for Lyrics.TextLine);

      (v59[1])(v60, v71);
      (*(v229 + 8))(v224, v228);
      sub_1002AD498(v26, type metadata accessor for Lyrics.TextLine);
      v86 = v200;
    }

    goto LABEL_43;
  }

  v60 = v222;
  v59 = v223;
  v61 = v221;
  if (v56 < v55)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((*((swift_isaMask & *v194) + 0x1F0))(v56))
  {
    v63 = v62;
    ObjectType = swift_getObjectType();
    (*(v63 + 48))(v57, ObjectType, v63);
    swift_unknownObjectRelease();
  }

  v65 = *(v229 + 16);
  v65(v199, v224, v228);
  v66 = v198;
  v67 = *&v198[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v67)
  {
    v68 = *(v67 + 24);
    v222 = *(v67 + 16);
    v69 = v68;

    v66 = v198;
  }

  else
  {
    v222 = 0;
    v69 = 0;
  }

  memset(v242, 0, sizeof(v242));
  v243 = 0;
  v244 = xmmword_100EBCEF0;
  v223 = v66;
  PresentationSource.init(viewController:position:)(v223, v242, v238);
  SyncedLyricsViewController.reportConcernData.getter(v234);
  v221 = type metadata accessor for LyricsSharingActivityViewController();
  v87 = objc_allocWithZone(v221);
  v88 = &v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
  *v88 = 0;
  v88[1] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader] = 0;
  v89 = &v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v89[1] = 0u;
  v89[2] = 0u;
  *v89 = xmmword_100EBCEE0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence] = 0;
  v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = 0;
  v90 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  v91 = type metadata accessor for Date();
  (*(*(v91 - 8) + 56))(&v87[v90], 1, 1, v91);
  v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = 0;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = 0;
  v65(&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song], v199, v228);
  *v88 = v222;
  v88[1] = v69;
  sub_10012B7A8(v238, &v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource]);
  v92 = v234[1];
  *v89 = v234[0];
  v89[1] = v92;
  v89[2] = v234[2];
  type metadata accessor for LyricsSelectionViewController();
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v93 = [objc_allocWithZone(LPLinkMetadata) init];
  v94 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
  *&v87[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] = v93;
  v95 = sub_100564124();
  v96 = [v95 specialization];

  if (v96)
  {
    objc_opt_self();
    v97 = swift_dynamicCastObjCClass();
    if (!v97)
    {
    }
  }

  else
  {
    v97 = 0;
  }

  v98 = *&v87[v94];
  v99 = [v97 artwork];
  [v98 setImage:v99];

  isa = Array._bridgeToObjectiveC()().super.isa;
  v233.receiver = v87;
  v233.super_class = v221;
  v101 = objc_msgSendSuper2(&v233, "initWithActivityItems:applicationActivities:", isa, 0);

  v102 = v101;
  UIViewController.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  sub_1001E0BC4(0);

  sub_10012BA6C(v238);
  v103 = *(v229 + 8);
  v229 += 8;
  v103(v199, v228);
  v104 = v223;
  v105 = [v223 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (!LOBYTE(v238[0]))
  {

    v107 = v200;
    v106 = v219;
    goto LABEL_30;
  }

  v106 = v219;
  v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v107 = v200;
  if (v108)
  {
LABEL_30:
    v222 = v102;
    v225 = v103;
    v109 = v203;
    sub_1002AD3C8(v107, v203, type metadata accessor for Lyrics.TextLine);
    v110 = v227;
    v111 = *(v227 + *(v106 + 20));
    v112 = *((swift_isaMask & *v57) + 0x1D8);
    v113 = v111;
    v112(v235);
    v114 = [v104 view];
    if (v114)
    {
      v115 = v114;
      [v114 frame];
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v123 = v122;

      v245.origin.x = v117;
      v245.origin.y = v119;
      v245.size.width = v121;
      v245.size.height = v123;
      Width = CGRectGetWidth(v245);
      v125 = objc_allocWithZone(type metadata accessor for LyricsSharingTransitionView());
      sub_1005F0848(v109, v113, v235, Width);
      v127 = v126;
      sub_1002AD4F8(v235);

      v128 = v219;
      v129 = (v110 + *(v219 + 28));
      v130 = *v129;
      v131 = v129[1];
      v132 = v129[2];
      v133 = v129[3];
      v134 = v127;
      v112(v236);
      v135 = sub_1002AD4F8(v236);
      v136 = -*&v236[73];
      (v112)(v237, v135);
      sub_1002AD4F8(v237);
      v246.origin.x = v130;
      v246.origin.y = v131;
      v246.size.width = v132;
      v246.size.height = v133;
      v247 = CGRectInset(v246, v136, -*&v237[73]);
      [v134 setFrame:{v247.origin.x, v247.origin.y, v247.size.width, v247.size.height}];
      [*&v134[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabel] setTextAlignment:*(v110 + v128[6])];
      v137 = *&v134[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView];
      v112(v238);
      sub_1002AD4F8(v238);
      v230 = v239;
      v231 = v240;
      v232 = v241;
      [v137 setTransform:&v230];

      v138 = (v110 + v128[9]);
      v139 = v138[1];
      v230 = *v138;
      v231 = v139;
      v232 = v138[2];
      [v134 setTransform:&v230];

      (*(v110 + v128[10]))();
      v140 = v223;
      v141 = [v223 view];
      if (v141)
      {
        v142 = v141;
        [v141 addSubview:v134];

        v143 = *&v140[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView];
        *&v140[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = v134;
        v144 = v134;

        v145 = v197;
        if (qword_10117F5A0 != -1)
        {
          swift_once();
        }

        v146 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A70 timingParameters:0.0];
        v147 = swift_allocObject();
        *(v147 + 16) = v144;
        *&v232 = sub_1002AD54C;
        *(&v232 + 1) = v147;
        *&v230 = _NSConcreteStackBlock;
        *(&v230 + 1) = 1107296256;
        v215 = &v231;
        *&v231 = sub_10002BC98;
        *(&v231 + 1) = &unk_1010A3BF0;
        v148 = _Block_copy(&v230);
        v149 = v144;

        v221 = v146;
        [(objc_class *)v146 addAnimations:v148];
        _Block_release(v148);
        [(objc_class *)v146 startAnimation];
        sub_100009F78(0, &qword_101182960);
        v218 = static OS_dispatch_queue.main.getter();
        v150 = v206;
        static DispatchTime.now()();
        + infix(_:_:)();
        v219 = *(v220 + 8);
        v220 += 8;
        (v219)(v150, v217);
        v151 = v205;
        sub_1002AD3C8(v200, v205, type metadata accessor for Lyrics.TextLine);
        sub_1002AD3C8(v227, v145, type metadata accessor for SyncedLyricsSharingTransitionInfo);
        v152 = (*(v226 + 80) + 40) & ~*(v226 + 80);
        v153 = (v23 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
        v154 = v145;
        v155 = (*(v212 + 80) + v153 + 8) & ~*(v212 + 80);
        v156 = swift_allocObject();
        v157 = v222;
        v156[2] = v149;
        v156[3] = v157;
        v156[4] = v193[0];
        sub_1002AD430(v151, v156 + v152, type metadata accessor for Lyrics.TextLine);
        v158 = v223;
        *(v156 + v153) = v223;
        sub_1002AD430(v154, v156 + v155, type metadata accessor for SyncedLyricsSharingTransitionInfo);
        *&v232 = sub_1002AD554;
        *(&v232 + 1) = v156;
        *&v230 = _NSConcreteStackBlock;
        *(&v230 + 1) = 1107296256;
        *&v231 = sub_10002BC98;
        *(&v231 + 1) = &unk_1010A3C40;
        v159 = _Block_copy(&v230);
        v160 = v158;
        v161 = v157;
        v162 = v149;

        v163 = v207;
        static DispatchQoS.unspecified.getter();
        *&v230 = _swiftEmptyArrayStorage;
        sub_10002473C();
        sub_10010FC20(&qword_101182970);
        sub_10002489C();
        v164 = v209;
        v165 = v196;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v166 = v216;
        v167 = v218;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v159);

        (*(v211 + 8))(v164, v165);
        (*(v208 + 8))(v163, v210);
        (v219)(v166, v217);
        (v225)(v224, v228);
        goto LABEL_42;
      }

LABEL_47:
      __break(1u);
      return;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v168 = v193[0];
  v169 = *(v193[0] + 48);
  v170 = v204;
  sub_1002AD3C8(v200, v204, type metadata accessor for Lyrics.TextLine);
  v171 = (*(v226 + 56))(v170, 0, 1, v225);
  v172 = v202;
  (*(*v168 + 232))(v171);
  v173 = type metadata accessor for Locale.Language();
  v174 = *(v173 - 8);
  if ((*(v174 + 48))(v172, 1, v173) == 1)
  {
    v175 = &unk_101184010;
    v176 = v172;
  }

  else
  {
    v177 = v172;
    v178 = v201;
    Locale.Language.languageCode.getter();
    (*(v174 + 8))(v177, v173);
    v179 = v178;
    v180 = type metadata accessor for Locale.LanguageCode();
    v181 = *(v180 - 8);
    if ((*(v181 + 48))(v179, 1, v180) != 1)
    {
      v184 = Locale.LanguageCode.identifier.getter();
      v185 = v179;
      v183 = v186;
      (*(v181 + 8))(v185, v180);
      v182 = v184;
      goto LABEL_41;
    }

    v175 = &qword_101189A10;
    v176 = v179;
  }

  sub_1000095E8(v176, v175);
  v182 = 0;
  v183 = 0;
LABEL_41:
  v187 = v169;
  v188 = v204;
  sub_1001E3574(v187, v204, v182, v183, *(v193[0] + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v188, &qword_101184020);
  v189 = v197;
  sub_1002AD3C8(v227, v197, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v190 = (*(v212 + 80) + 16) & ~*(v212 + 80);
  v191 = swift_allocObject();
  sub_1002AD430(v189, v191 + v190, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v238[4] = sub_1002ADCB0;
  v238[5] = v191;
  v238[0] = _NSConcreteStackBlock;
  v238[1] = 1107296256;
  v238[2] = sub_10002BC98;
  v238[3] = &unk_1010A3BA0;
  v192 = _Block_copy(v238);

  [v223 presentViewController:v102 animated:1 completion:v192];

  _Block_release(v192);

  v103(v224, v228);
LABEL_42:
  v86 = v200;
LABEL_43:
  sub_1002AD498(v86, type metadata accessor for Lyrics.TextLine);
}

id sub_1002A4A64(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  [v2 setTransform:&v5];
  v3 = *(a1 + OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  return [v3 setTransform:&v5];
}

void sub_1002A4AEC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v53 = a6;
  v54 = a2;
  v55 = a5;
  v48 = a4;
  v49 = a3;
  v7 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v50 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v51 = v8;
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184010);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_10010FC20(&qword_101189A10);
  __chkstk_darwin(v12 - 8);
  v47 = &v46 - v13;
  v14 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - v15;
  if (qword_10117F5A8 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A78 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  v60 = sub_1002AD638;
  v61 = v18;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10002BC98;
  v59 = &unk_1010A3C90;
  v19 = _Block_copy(&aBlock);
  v20 = a1;

  [v17 addAnimations:v19];
  _Block_release(v19);
  if (qword_10117F5B0 != -1)
  {
    swift_once();
  }

  v21 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A80 timingParameters:0.0];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v60 = sub_1002AD65C;
  v61 = v22;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10002BC98;
  v59 = &unk_1010A3CE0;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  [v21 addAnimations:v23];
  _Block_release(v23);
  [v17 startAnimation];
  [v21 startAnimation];
  v25 = v49;
  v26 = *(v49 + 48);
  sub_1002AD3C8(v48, v16, type metadata accessor for Lyrics.TextLine);
  v27 = type metadata accessor for Lyrics.TextLine(0);
  v28 = (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
  (*(*v25 + 232))(v28);
  v29 = type metadata accessor for Locale.Language();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v11, 1, v29) == 1)
  {
    v31 = &unk_101184010;
    v32 = v11;
  }

  else
  {
    v33 = v47;
    Locale.Language.languageCode.getter();
    (*(v30 + 8))(v11, v29);
    v34 = type metadata accessor for Locale.LanguageCode();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) != 1)
    {
      v38 = Locale.LanguageCode.identifier.getter();
      v37 = v39;
      (*(v35 + 8))(v33, v34);
      v36 = v38;
      goto LABEL_11;
    }

    v31 = &qword_101189A10;
    v32 = v33;
  }

  sub_1000095E8(v32, v31);
  v36 = 0;
  v37 = 0;
LABEL_11:
  v40 = v54;
  sub_1001E3574(v26, v16, v36, v37, *(v25 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v16, &qword_101184020);
  v41 = v55;
  [v40 setTransitioningDelegate:v55];
  v42 = v52;
  sub_1002AD3C8(v53, v52, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v43 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v44 = swift_allocObject();
  sub_1002AD430(v42, v44 + v43, type metadata accessor for SyncedLyricsSharingTransitionInfo);
  v60 = sub_1002AD850;
  v61 = v44;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10002BC98;
  v59 = &unk_1010A3D30;
  v45 = _Block_copy(&aBlock);

  [v41 presentViewController:v40 animated:1 completion:v45];
  _Block_release(v45);
}

uint64_t sub_1002A51EC()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v5 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = [v5 tracklist];
  v7 = [v6 vocalsControlCommand];

  if (!v7)
  {
    goto LABEL_13;
  }

  if (([v7 isDisabled] & 1) != 0 || (v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] & 1) != 0 || (v8 = *&v0[v4]) == 0)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = &protocol witness table for MainActor;
    sub_1001F4CB8(0, 0, v3, &unk_100EC55C0, v22);
  }

  v9 = v8;
  v10 = [v9 tracklist];
  v11 = [v10 playingItem];

  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [v9 tracklist];
  v13 = [v12 vocalsControlCommand];

  if (!v13)
  {

    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v14 = v0;
  v15 = MPCPlayerResponseItem.hasStoreLyrics.getter();

  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v14;
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_1001F4CB8(0, 0, v3, &unk_100EC55D0, v19);
  swift_unknownObjectRelease();
}

uint64_t sub_1002A54E4()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A5578, v2, v1);
}

uint64_t sub_1002A5578()
{

  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002A562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a4;
  type metadata accessor for MainActor();
  *(v4 + 280) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A56C4, v6, v5);
}

uint64_t sub_1002A56C4()
{

  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1002AD3B8;
  *(v0 + 120) = v1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 3;
  *(v0 + 144) = sub_1002ADCD4;
  *(v0 + 152) = v2;
  *(v0 + 160) = sub_1002AD3C0;
  *(v0 + 168) = v3;
  *(v0 + 176) = sub_1002ADCD0;
  *(v0 + 184) = v4;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 1;
  v5 = *(v0 + 112);
  *(v0 + 40) = *(v0 + 128);
  v6 = *(v0 + 160);
  *(v0 + 56) = *(v0 + 144);
  *(v0 + 72) = v6;
  *(v0 + 88) = *(v0 + 176);
  *(v0 + 24) = v5;
  swift_unknownObjectWeakInit();

  sub_1001D1980(v0 + 112, v0 + 192);
  sub_10058B0DC((v0 + 16));

  sub_1001D19DC(v0 + 112);
  sub_100198CAC(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

double sub_1002A58C8@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 bounds];
      v20[0] = v4;
      v20[1] = v7;
      v20[2] = v8;
      v20[3] = v9;
      v20[4] = v10;
      v21 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v20, 15, v12);
      v16[0] = v12[0];
      v16[1] = v12[1];
      v17 = v13;
      v18 = v14;
      v19 = v15;
      PresentationSource.init(viewController:position:)(v6, v16, a1);

      return result;
    }
  }

  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_1002A59D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
      *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
      if (v3 == 1)
      {
        sub_1005C4F50(4.0);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1002A5A68(unsigned __int8 a1)
{
  v3 = sub_10010FC20(&qword_101189A18);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = sub_10010FC20(&unk_101189A00);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  v16 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v16)
  {
    if (a1 == 8)
    {
      v50 = v1;
      v17 = *(*v16 + 312);
      v18 = *v16 + 312;

      v48 = v18;
      v49 = v17;
      v17(v19);
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      v21 = *(*(v20 - 8) + 48);
      v22 = v21(v15, 1, v20);
      v23 = sub_1000095E8(v15, &unk_101189A00);
      if (v22 == 1 || ((*(*v16 + 288))(v23), v24 = type metadata accessor for Lyrics.Translation(0), v25 = (*(*(v24 - 8) + 48))(v8, 1, v24), v23 = sub_1000095E8(v8, &qword_101189A18), v25 == 1))
      {
        v49(v23);
        v26 = v21(v12, 1, v20);
        v27 = sub_1000095E8(v12, &unk_101189A00);
        if (v26 == 1)
        {
          (*(*v16 + 288))(v27);
          v28 = type metadata accessor for Lyrics.Translation(0);
          v29 = (*(*(v28 - 8) + 48))(v6, 1, v28);
          v1 = v50;
          if (v29 == 1)
          {

            return sub_1000095E8(v6, &qword_101189A18);
          }

          sub_1000095E8(v6, &qword_101189A18);
          a1 = 3;
        }

        else
        {
          a1 = 4;
          v1 = v50;
        }
      }

      else
      {
        a1 = 6;
        v1 = v50;
      }
    }

    else
    {
    }

    if (sub_1005875D0(a1))
    {
    }

    v30 = String._bridgeToObjectiveC()();
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
    result = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton];
    if (result)
    {
      result = [result setShowsMenuAsPrimaryAction:0];
      v33 = *&v1[v32];
      if (v33)
      {
        sub_100009F78(0, &qword_1011839A0);
        v34 = swift_allocObject();
        *(v34 + 16) = v31;
        *(v34 + 24) = a1;
        v35 = v33;
        v36 = v31;
        v37 = v35;
        v50 = v30;

        v38 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v37 addAction:v38 forControlEvents:64];

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        v42[2] = v41;
        v43 = v36;
        v44 = v50;
        v42[3] = v50;
        v42[4] = v43;
        v45 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *&v58 = sub_1002AD20C;
        *(&v58 + 1) = v39;
        LOWORD(v59) = 257;
        *(&v59 + 1) = 3;
        *&v60 = sub_1002AD214;
        *(&v60 + 1) = v40;
        *&v61 = sub_1002AD230;
        *(&v61 + 1) = v42;
        *&v62 = sub_1002AD23C;
        *(&v62 + 1) = v45;
        v46 = qword_10117F8A8;
        v47 = v44;

        if (v46 != -1)
        {
          swift_once();
        }

        v52[0] = a1;
        v54 = v59;
        v55 = v60;
        v56 = v61;
        v57 = v62;
        v53 = v58;
        swift_unknownObjectWeakInit();

        sub_1001D1980(&v58, &v51);
        sub_10058B0DC(v52);

        sub_1001D19DC(&v58);

        sub_100198CAC(v52);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002A6144(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(a3, 0);
}

void sub_1002A61E8(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
    if (v4)
    {
      [v4 bounds];
      v17[0] = v4;
      v17[1] = v5;
      v17[2] = v6;
      v17[3] = v7;
      v17[4] = v8;
      v18 = 0;
      PresentationSource.Position.init(source:permittedArrowDirections:)(v17, 15, v9);
      v13[0] = v9[0];
      v13[1] = v9[1];
      v14 = v10;
      v15 = v11;
      v16 = v12;
      PresentationSource.init(viewController:position:)(v3, v13, a1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }
}

void sub_1002A62CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002A6348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton;
  v9 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton);
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v9 removeActionForIdentifier:a3 forControlEvents:64];
  v10 = *&v7[v8];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v10 setShowsMenuAsPrimaryAction:1];
  swift_beginAccess();
  if (*(a4 + 16) != 1)
  {
    goto LABEL_7;
  }

  v11 = *&v7[v8];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v11 performPrimaryAction];
LABEL_7:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
    *(v12 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
    if (v13 == 1)
    {
      sub_1005C4F50(4.0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1002A646C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
  {
    sub_1005E0230(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

id MPCPlayerResponseItem.hasStoreLyrics.getter()
{
  v1 = [v0 metadataObject];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 innermostModelObject];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = [v4 lyrics]) != 0)
  {
    v6 = v5;
    v7 = [v5 hasStoreLyrics];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t type metadata accessor for NowPlayingLyricsViewController()
{
  result = qword_1011899E0;
  if (!qword_1011899E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002A664C()
{
  v0 = type metadata accessor for VocalsAttenuationSlider();
  v1 = [objc_allocWithZone(v0) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_1002AD1E0, v2, v0);

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(0x10000, sub_1002AD1E8, v3, v0);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(4096, sub_1002AD1F0, v4, v0);

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(0x40000, sub_1002AD1F8, v5, v0);

  return v1;
}

void sub_1002A67F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (v2)
    {
      v3 = [v2 tracklist];
      v4 = [v3 vocalsControlCommand];

      if (v4)
      {
        if ([v4 isDisabled])
        {
          [v4 disabledReason];
          sub_1002A88BC();
          swift_unknownObjectRelease();

          return;
        }

        swift_unknownObjectRelease();
      }
    }

    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(1, 2);
  }
}

void sub_1002A6930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (!v2)
    {
      goto LABEL_9;
    }

    v3 = [v2 tracklist];
    v4 = [v3 vocalsControlCommand];

    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = [v4 isDisabled];
    swift_unknownObjectRelease();
    if (v5)
    {
      goto LABEL_9;
    }

    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(1, 2);

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005E8FAC();

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_9:
    }
  }
}

void sub_1002A6A70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002A745C(0);
  }
}

void sub_1002A6AC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
    if (v2)
    {
      v3 = [v2 tracklist];
      v4 = [v3 vocalsControlCommand];

      if (v4)
      {
        v5 = [v4 isDisabled];
        swift_unknownObjectRelease();
        if ((v5 & 1) == 0)
        {
          v6 = swift_unknownObjectWeakLoadStrong();
          if (v6)
          {
            v7 = *(v6 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer);
            *(v6 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) = 0;
            if (v7 == 1)
            {
              sub_1005C4F50(4.0);
            }

            swift_unknownObjectRelease();
          }

          sub_1002A745C(1);
        }
      }
    }
  }
}

id sub_1002A6BD4()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v41[-v4];
  v6 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v6)
  {
    return result;
  }

  v7 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v8 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v8)
  {
    v20 = v6;
    goto LABEL_8;
  }

  v9 = v6;
  v10 = [v8 tracklist];
  v8 = [v10 vocalsControlCommand];

  v11 = *&v1[v7];
  if (!v11)
  {
LABEL_8:
    v21 = v6;
LABEL_11:
    v19 = 1;
    goto LABEL_12;
  }

  v12 = v9;
  v13 = v11;
  v14 = [v13 tracklist];
  v15 = [v14 playingItem];

  if (!v15)
  {
LABEL_10:

    goto LABEL_11;
  }

  v16 = [v13 tracklist];
  v17 = [v16 vocalsControlCommand];

  if (!v17)
  {

    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  v18 = MPCPlayerResponseItem.hasStoreLyrics.getter();

  v19 = v18 ^ 1;
LABEL_12:
  [v6 setHidden:v19 & 1];
  v22 = v6;
  if (v8)
  {
    v23 = [v8 isContinuous];
  }

  else
  {
    v23 = 0;
  }

  v24 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isContinuous;
  swift_beginAccess();
  *(v6 + v24) = v23;
  if (v8)
  {
    v25 = [v8 isDisabled] ^ 1;
    v26 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    *(v6 + v26) = v25;
    if ([v8 isDisabled])
    {
      v27 = 0;
    }

    else
    {
      v27 = 2;
    }

    VerticalToggleSlider.longPressMode.setter(v27);
    VerticalToggleSlider.isVisuallyDisabled.setter([v8 isDisabled]);
    sub_1002A51EC();
    [swift_unknownObjectRetain() minLevel];
    v29 = v28;
    result = [v8 maxLevel];
    if (v29 > v30)
    {
      __break(1u);
      return result;
    }

    VerticalToggleSlider.valueRange.setter(v29, v30);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_isTapToToggleEnabled;
    swift_beginAccess();
    *(v6 + v31) = 0;
    VerticalToggleSlider.longPressMode.setter(2u);
    VerticalToggleSlider.isVisuallyDisabled.setter(0);
    sub_1002A51EC();
  }

  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
  type metadata accessor for MainActor();
  v33 = v6;
  v34 = v1;
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = &protocol witness table for MainActor;
  v36[4] = v33;
  v36[5] = v34;
  sub_1001F4CB8(0, 0, v5, &unk_100EC55B0, v36);

  v41[15] = 6;
  v37 = sub_100025CE0();
  v38 = v33;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v37))
  {
    v38 = v33;
    if (v34[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] == 1)
    {
      [(objc_class *)v33 isHidden];

      v39 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0);

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v39 deactivateConstraints:isa];

      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v39 activateConstraints:v38];
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1002A70C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A715C, v7, v6);
}

uint64_t sub_1002A715C()
{
  if (VerticalToggleSlider.isBeingInteractedWith.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[3] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
    v0[7] = v3;
    v4 = (*v3 + 120) & 0xFFFFFFFFFFFFLL | 0xA5A6000000000000;
    v0[8] = *(*v3 + 120);
    v0[9] = v4;

    return _swift_task_switch(sub_1002A723C, v3, 0);
  }
}

uint64_t sub_1002A723C()
{
  *(v0 + 80) = (*(v0 + 64))();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002A72B0, v1, v2);
}

uint64_t sub_1002A72B0()
{
  v1 = v0[3];

  v2 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v3 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  v4 = 0.0;
  if (v3)
  {
    v5 = [v3 tracklist];
    v6 = [v5 vocalsControlCommand];

    if (v6)
    {
      [v6 level];
      v4 = v7;
      swift_unknownObjectRelease();
      v8 = 0;
      v9 = v0[10];
      if ((v9 & 0x1000000000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      if ((v9 & 0x10000000000) != 0)
      {
        VerticalToggleSlider.isOn.setter(0);
        goto LABEL_17;
      }

      if ((v9 & 0x100000000) != 0)
      {
        VerticalToggleSlider.isOn.setter(1);
        if (v8)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v4 = *&v9;
        VerticalToggleSlider.isOn.setter(1);
      }

LABEL_16:
      VerticalToggleSlider.value.setter(v4);
      goto LABEL_17;
    }
  }

  v8 = 1;
  v9 = v0[10];
  if ((v9 & 0x1000000000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = *(v1 + v2);
  if (v10)
  {
    v11 = [v10 tracklist];
    v12 = [v11 vocalsControlCommand];

    if (v12)
    {
      v13 = [v12 isActive];
      swift_unknownObjectRelease();
      LOBYTE(v10) = v13;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  VerticalToggleSlider.isOn.setter(v10);
  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = v0[1];

  return v14();
}

void sub_1002A745C(int a1)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v107 = (&v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = (&v100 - v6);
  __chkstk_darwin(v8);
  v106 = (&v100 - v9);
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v12 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v100 - v14;
  __chkstk_darwin(v16);
  v108 = &v100 - v17;
  v18 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v100 - v22;
  __chkstk_darwin(v24);
  v26 = &v100 - v25;
  v27 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v27 - 8);
  v29 = &v100 - v28;
  v30 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider];
  if (!v30)
  {
    goto LABEL_11;
  }

  v31 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v31)
  {
    goto LABEL_11;
  }

  v102 = a1;
  v100 = v26;
  v101 = v20;
  v32 = v31;
  v33 = v30;
  v34 = [v32 tracklist];
  v35 = [v34 vocalsControlCommand];

  if (!v35)
  {

LABEL_11:

    sub_1002A6BD4();
    return;
  }

  v104 = v32;
  v36 = v1;
  v37 = VerticalToggleSlider.isOn.getter();
  v105 = v33;
  v103 = v35;
  v38 = v37 ^ [v35 isActive];
  v39 = VerticalToggleSlider.isOn.getter();
  if (v38)
  {
    if (v39)
    {
      v40 = v103;
      v41 = [v103 isDisabled];
      v42 = v104;
      if (v41)
      {

        [v40 disabledReason];
        sub_1002A88BC();

        swift_unknownObjectRelease();
        return;
      }

      v55 = VerticalToggleSlider.isBeingInteractedWith.getter();

      v56 = type metadata accessor for TaskPriority();
      (*(*(v56 - 8) + 56))(v29, 1, 1, v56);
      type metadata accessor for MainActor();
      if (v55)
      {
        v57 = v105;
        v58 = v36;
        v59 = static MainActor.shared.getter();
        v60 = swift_allocObject();
        v60[2] = v59;
        v60[3] = &protocol witness table for MainActor;
        v60[4] = v58;
        v60[5] = v57;
        v61 = &unk_100EC5590;
      }

      else
      {
        v71 = v36;
        v72 = static MainActor.shared.getter();
        v60 = swift_allocObject();
        v60[2] = v72;
        v60[3] = &protocol witness table for MainActor;
        v60[4] = v71;
        v61 = &unk_100EC5580;
      }

      sub_1001F4CB8(0, 0, v29, v61, v60);

      if (v102)
      {
        v73 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v74 = type metadata accessor for URL();
        (*(*(v74 - 8) + 56))(v108, 1, 1, v74);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v75 = v73;
          v76 = v106;
          sub_1005E0230(v106);
          swift_unknownObjectRelease();
        }

        else
        {
          v91 = type metadata accessor for MetricsEvent.Page(0);
          v76 = v106;
          (*(*(v91 - 8) + 56))(v106, 1, 1, v91);
          v92 = v73;
        }

        v23 = v100;
        MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000016, 0x8000000100E448F0, 5, 55, v108, 0, 0, 10, v100, 0, 0, 0xFF00u, v76, 0);
        v93 = sub_10053771C();
        v95 = v94;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v96 = qword_101218AD0;
        v97 = GroupActivitiesManager.hasJoined.getter();
        v98 = GroupActivitiesManager.participantsCount.getter();
        v99 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v73) + 0xB8))(v23, v93, v95, v97 & 1, v98, *(v96 + v99));

        swift_unknownObjectRelease();
        goto LABEL_47;
      }

      swift_unknownObjectRelease();

LABEL_36:
      return;
    }

    v48 = type metadata accessor for TaskPriority();
    (*(*(v48 - 8) + 56))(v29, 1, 1, v48);
    type metadata accessor for MainActor();
    v49 = v36;
    v50 = static MainActor.shared.getter();
    v51 = swift_allocObject();
    v51[2] = v50;
    v51[3] = &protocol witness table for MainActor;
    v51[4] = v49;
    sub_1001F4CB8(0, 0, v29, &unk_100EC5570, v51);

    v32 = v104;
    if ((v102 & 1) == 0)
    {
      swift_unknownObjectRelease();

      goto LABEL_36;
    }

    v12 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v52 = type metadata accessor for URL();
    (*(*(v52 - 8) + 56))(v15, 1, 1, v52);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = v12;
      sub_1005E0230(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v77 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v77 - 8) + 56))(v7, 1, 1, v77);
      v78 = v12;
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0xD000000000000017, 0x8000000100E448D0, 5, 55, v15, 0, 0, 10, v23, 0, 0, 0xFF00u, v7, 0);
    v64 = sub_10053771C();
    v44 = v79;
    if (qword_10117F600 == -1)
    {
LABEL_39:
      v80 = qword_101218AD0;
      v81 = GroupActivitiesManager.hasJoined.getter();
      v82 = GroupActivitiesManager.participantsCount.getter();
      v83 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v12) + 0xB8))(v23, v64, v44, v81 & 1, v82, *(v80 + v83));

      swift_unknownObjectRelease();
LABEL_47:

      v90 = v23;
      goto LABEL_48;
    }

LABEL_50:
    swift_once();
    goto LABEL_39;
  }

  if (v39)
  {
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v29, 1, 1, v43);
    type metadata accessor for MainActor();
    v44 = v105;
    v45 = v36;
    v46 = static MainActor.shared.getter();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = &protocol witness table for MainActor;
    v47[4] = v45;
    v47[5] = v44;
    sub_1001F4CB8(0, 0, v29, &unk_100EC55A0, v47);

    if (VerticalToggleSlider.isBeingInteractedWith.getter())
    {
      swift_unknownObjectRelease();

      return;
    }

    v62 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v63 = VerticalToggleSlider.value.getter();
    v64 = v62;

    if ((LODWORD(v63) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_50;
    }

    v65 = v101;
    if (v63 <= -9.2234e18)
    {
      __break(1u);
    }

    else if (v63 < 9.2234e18)
    {
      v109 = v63;
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      v69 = type metadata accessor for URL();
      (*(*(v69 - 8) + 56))(v12, 1, 1, v69);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v70 = v107;
        sub_1005E0230(v107);
        swift_unknownObjectRelease();
      }

      else
      {
        v84 = type metadata accessor for MetricsEvent.Page(0);
        v70 = v107;
        (*(*(v84 - 8) + 56))(v107, 1, 1, v84);
      }

      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v66, v68, 20, 7, v12, 0, 0, 10, v65, 0, 0, 0xFF00u, v70, 0);
      v29 = sub_10053771C();
      v12 = v85;
      if (qword_10117F600 == -1)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_42:
    v86 = qword_101218AD0;
    v87 = GroupActivitiesManager.hasJoined.getter();
    v88 = GroupActivitiesManager.participantsCount.getter();
    v89 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v64) + 0xB8))(v65, v29, v12, v87 & 1, v88, *(v86 + v89));

    swift_unknownObjectRelease();

    v90 = v65;
LABEL_48:
    sub_1002AD498(v90, type metadata accessor for MetricsEvent.Click);
    return;
  }

  swift_unknownObjectRelease();

  v54 = v105;
}

uint64_t sub_1002A81DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A8274, v7, v6);
}

uint64_t sub_1002A8274()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  *(v0 + 56) = v1;
  *(v0 + 80) = VerticalToggleSlider.value.getter();
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  *(v0 + 64) = *(*v1 + 144);
  *(v0 + 72) = v2;

  return _swift_task_switch(sub_1002A8318, v1, 0);
}

uint64_t sub_1002A8318()
{
  (*(v0 + 64))(*(v0 + 80));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1002ADCDC, v1, v2);
}

uint64_t sub_1002A8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002A8430, v6, v5);
}

uint64_t sub_1002A8430()
{
  v1 = *(v0[2] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  v0[6] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  v0[7] = *(*v1 + 144);
  v0[8] = v2;

  return _swift_task_switch(sub_1002A84CC, v1, 0);
}

uint64_t sub_1002A84CC()
{
  (*(v0 + 56))(&_mh_execute_header);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002ADCD8, v1, v2);
}

uint64_t sub_1002A854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002A85E4, v6, v5);
}

uint64_t sub_1002A85E4()
{
  v1 = *(v0[2] + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  v0[6] = v1;
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  v0[7] = *(*v1 + 144);
  v0[8] = v2;

  return _swift_task_switch(sub_1002A8680, v1, 0);
}

uint64_t sub_1002A8680()
{
  (*(v0 + 56))(0x10000000000);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002ADCD8, v1, v2);
}

uint64_t sub_1002A8700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002A8798, v7, v6);
}

uint64_t sub_1002A8798()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter);
  *(v0 + 56) = v1;
  *(v0 + 80) = VerticalToggleSlider.value.getter();
  v2 = (*v1 + 144) & 0xFFFFFFFFFFFFLL | 0x8A67000000000000;
  *(v0 + 64) = *(*v1 + 144);
  *(v0 + 72) = v2;

  return _swift_task_switch(sub_1002A883C, v1, 0);
}

uint64_t sub_1002A883C()
{
  (*(v0 + 64))(*(v0 + 80));

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100222A34, v1, v2);
}

void sub_1002A88BC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  static Player.VocalsCommand.localizedDisablementMessage(for:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:0 message:v3 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  [v0 presentViewController:v4 animated:1 completion:0];
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1012190C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    type metadata accessor for MPRemoteCommandDisabledReason(0);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Presenting VA Disablement Message for reason=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }
}

void *sub_1002A8BA8()
{
  v0 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v0 - 8);
  v2 = &v27 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SymbolButton.Configuration.init()(v6);
  variable initialization expression of SymbolButton.Configuration.symbol(v28);
  v39 = v28[0];
  sub_1000095E8(&v39, &qword_1011815E0);
  LOBYTE(v40[0]) = 0;
  v7 = *(v6 + 5);
  v40[4] = *(v6 + 4);
  v40[5] = v7;
  v40[6] = *(v6 + 6);
  v41 = *(v6 + 14);
  v8 = *(v6 + 1);
  v40[0] = *v6;
  v40[1] = v8;
  v9 = *(v6 + 3);
  v40[2] = *(v6 + 2);
  v40[3] = v9;
  sub_1001D223C(v40);
  v10 = v28[1];
  *v6 = xmmword_100EBEE60;
  *(v6 + 1) = v10;
  *(v6 + 4) = 0x4034000000000000;
  v6[40] = 0;
  *(v6 + 41) = v29[0];
  *(v6 + 11) = *(v29 + 3);
  *(v6 + 6) = 6;
  v11 = v31;
  *(v6 + 56) = v30;
  *(v6 + 72) = v11;
  v12 = v33;
  *(v6 + 88) = v32;
  *(v6 + 104) = v12;
  static SymbolButton.Material.with(_:)(sub_1002A8FCC, &v34);
  v27 = v34;
  v13 = v35;
  v14 = v36;
  v16 = v37;
  v15 = v38;
  sub_1002ACCD0(*(v6 + 29), *(v6 + 30), *(v6 + 31));
  *(v6 + 232) = v27;
  *(v6 + 31) = v13;
  *(v6 + 32) = v14;
  *(v6 + 33) = v16;
  *(v6 + 34) = v15;
  static UIView.Corner.rounded.getter();
  v17 = type metadata accessor for UIView.Corner();
  (*(*(v17 - 8) + 56))(v2, 0, 1, v17);
  sub_10006B010(v2, &v6[*(v4 + 44)], &qword_101183A90);
  *&v6[*(v4 + 60)] = vdupq_n_s64(0x4042000000000000uLL);
  v18 = type metadata accessor for SymbolButton(0);
  v19 = objc_allocWithZone(v18);
  v20 = SymbolButton.init(configuration:handler:)(v6, 0, 0);
  v21 = SymbolButton.withProvider(_:)(sub_1002A9020, 0);

  v22 = (*((swift_isaMask & *v21) + 0x108))(0x542073636972794CLL, 0xEA00000000005254);
  (*((swift_isaMask & *v21) + 0x228))(v22, 52.0, 52.0);
  v23 = v21;
  [v23 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = String._bridgeToObjectiveC()();
  [v23 _setLayoutDebuggingIdentifier:v24];

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  ControlEventHandling<>.on(_:handler:)(64, sub_1002ACD2C, v25, v18);

  return v23;
}

void sub_1002A8FCC(id *a1)
{
  v2 = [objc_opt_self() effectWithBlurRadius:10.0];

  *a1 = v2;
}

void sub_1002A9020(uint64_t a1, uint64_t a2)
{
  v3 = static SymbolButton.Background.with(_:)(sub_1002ACDE8);
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v10 = v9;
  sub_100282F24(*(a2 + 200), *(a2 + 208));
  *(a2 + 200) = v5;
  *(a2 + 208) = v6;
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  v11 = UIViewConfigurationState.traitCollection.getter();
  sub_100050078();
  LOBYTE(v6) = UITraitCollection.subscript.getter();

  if (v6)
  {
    v12 = [objc_opt_self() whiteColor];
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 112) = v12;
}

void sub_1002A9110(uint64_t a1)
{
  v2 = UIViewConfigurationState.traitCollection.getter();
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  if (v3)
  {
    v4 = [objc_opt_self() whiteColor];
    v5 = [v4 colorWithAlphaComponent:0.18];

    *(a1 + 8) = v5;
  }

  else
  {
    if (qword_10117F8F8 != -1)
    {
      swift_once();
    }

    v6 = qword_101219090;
    v7 = *(a1 + 8);
    v8 = qword_101219090;

    *(a1 + 8) = v6;
  }
}

uint64_t sub_1002A9208(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a2;
  sub_1001F4CB8(0, 0, v5, &unk_100EC5558, v8);
}

uint64_t sub_1002A932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a4;
  v5 = type metadata accessor for Lyrics.Transliteration(0);
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  sub_10010FC20(&unk_101189A00);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v6 = type metadata accessor for Locale.Language();
  v4[48] = v6;
  v4[49] = *(v6 - 8);
  v4[50] = swift_task_alloc();
  v7 = type metadata accessor for Lyrics.Translation(0);
  v4[51] = v7;
  v4[52] = *(v7 - 8);
  v4[53] = swift_task_alloc();
  sub_10010FC20(&qword_101189A18);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  sub_10010FC20(&unk_101184010);
  v4[56] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[57] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[58] = v9;
  v4[59] = v8;

  return _swift_task_switch(sub_1002A9598, v9, v8);
}

uint64_t sub_1002A9598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (!Strong)
  {

    goto LABEL_77;
  }

  v2 = Strong;
  v3 = [objc_allocWithZone(AVTimeFormatter) init];
  *(v0 + 488) = v3;
  [v3 setStyle:1];
  v4 = OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying;
  v5 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying];
  if (!v5)
  {
    v166 = 0;
    v12 = 0;
LABEL_24:
    v21 = [v3 stringFromSeconds:NAN];
    v165._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v165._object = v22;
    goto LABEL_25;
  }

  v6 = [v5 tracklist];
  v7 = [v6 playingItem];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v8 = [v7 metadataObject];

  if (!v8)
  {
    v10 = 0;
    v11 = *&v2[v4];
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_16:
    v166 = 0;
LABEL_23:
    v12 = v10;
    goto LABEL_24;
  }

  v9 = [v8 innermostModelObject];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
LABEL_11:
    v11 = *&v2[v4];
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v11 = *&v2[v4];
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_12:
  v13 = [v11 tracklist];
  v14 = [v13 vocalsControlCommand];

  if (v14)
  {
    v166 = [v14 isActive];
    swift_unknownObjectRelease();
    v15 = *&v2[v4];
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v166 = 0;
    v15 = *&v2[v4];
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v16 = [v15 tracklist];
  v17 = [v16 playingItem];

  if (!v17)
  {
    goto LABEL_23;
  }

  [v17 duration];
  static Date.timeIntervalSinceReferenceDate.getter();
  v19 = v171 + (v18 - v169) * v172;
  if (v19 >= v170)
  {
    v19 = v170;
  }

  v12 = v10;
  if (v19 <= 0.0)
  {
    v20 = [v3 stringFromSeconds:NAN];
  }

  else
  {
    v20 = [v3 stringFromSeconds:?];
  }

  v21 = v20;
  v165._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v165._object = v155;

LABEL_25:
  v167._object = 0xE90000000000005DLL;
  v167._countAndFlagsBits = 0x6E776F6E6B6E755BLL;

  *(v0 + 496) = v12;
  BagProvider.shared.unsafeMutableAddressor();

  v23 = BagProvider.bag.getter();
  *(v0 + 504) = v23;

  if (v23)
  {
    v24 = [v23 stringForBagKey:ICURLBagKeyCountryCode];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = [v23 stringForBagKey:ICURLBagKeyStoreFrontID];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34._countAndFlagsBits = 10272;
        v34._object = 0xE200000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = v31;
        v35._object = v33;
        String.append(_:)(v35);

        v36._countAndFlagsBits = 41;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        v167._countAndFlagsBits = v26;
        v167._object = v28;
      }

      else
      {
      }
    }
  }

  *(v0 + 536) = 6;
  v37 = sub_100025CE0();
  v38 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v37);
  v161 = v23;
  if ((v38 & 1) == 0)
  {
    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    v49 = 0xE000000000000000;
    goto LABEL_56;
  }

  v41 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics];
  if (v41)
  {
    v42 = *(v0 + 448);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    sub_1000089F8(v41 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v42, &unk_101184010);
    v45 = (*(v44 + 48))(v42, 1, v43);
    v46 = *(v0 + 448);
    if (v45 != 1)
    {
      v50 = *(v0 + 384);
      v51 = *(v0 + 392);
      v160 = Locale.Language.maximalIdentifier.getter();
      v163 = v52;
      v38 = (*(v51 + 8))(v46, v50);
      goto LABEL_37;
    }

    v38 = sub_1000095E8(*(v0 + 448), &unk_101184010);
  }

  v163 = 0xE300000000000000;
  v160 = 7104878;
LABEL_37:
  v158 = v12;
  v164 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
  v53 = *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (!v53)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v54 = *(v0 + 440);
  v55 = *(v0 + 408);
  v56 = *(v0 + 416);
  v57 = *((swift_isaMask & *v53) + 0x3A0);
  v58 = v53;
  v57();

  v157 = *(v56 + 48);
  v59 = v157(v54, 1, v55);
  v60 = *(v0 + 440);
  if (v59)
  {
    v38 = sub_1000095E8(v60, &qword_101189A18);
    v162 = 0xE300000000000000;
    v159 = 7104878;
  }

  else
  {
    v61 = *(v0 + 424);
    v63 = *(v0 + 392);
    v62 = *(v0 + 400);
    v64 = *(v0 + 384);
    v65 = *(v0 + 440);
    sub_1002AD3C8(v60, v61, type metadata accessor for Lyrics.Translation);
    sub_1000095E8(v65, &qword_101189A18);
    (*(v63 + 16))(v62, v61, v64);
    sub_1002AD498(v61, type metadata accessor for Lyrics.Translation);
    v159 = Locale.Language.maximalIdentifier.getter();
    v162 = v66;
    v38 = (*(v63 + 8))(v62, v64);
  }

  v67 = *&v2[v164];
  if (!v67)
  {
    goto LABEL_87;
  }

  v68 = *(v0 + 376);
  v70 = *(v0 + 344);
  v69 = *(v0 + 352);
  v71 = *((swift_isaMask & *v67) + 0x3B8);
  v72 = v67;
  v71();

  v156 = *(v69 + 48);
  if (v156(v68, 1, v70))
  {
    sub_1000095E8(*(v0 + 376), &unk_101189A00);
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    v76 = *(v0 + 392);
    v75 = *(v0 + 400);
    v78 = *(v0 + 376);
    v77 = *(v0 + 384);
    v79 = *(v0 + 360);
    sub_1002AD3C8(v78, v79, type metadata accessor for Lyrics.Transliteration);
    sub_1000095E8(v78, &unk_101189A00);
    (*(v76 + 16))(v75, v79, v77);
    sub_1002AD498(v79, type metadata accessor for Lyrics.Transliteration);
    v74 = Locale.Language.maximalIdentifier.getter();
    v73 = v80;
    (*(v76 + 8))(v75, v77);
  }

  _StringGuts.grow(_:)(129);
  *(v0 + 320) = 0;
  *(v0 + 328) = 0xE000000000000000;
  v81._countAndFlagsBits = 0x6172662077656956;
  v81._object = 0xEC000000203A656DLL;
  String.append(_:)(v81);
  v82 = v2;
  v38 = [v82 view];
  if (!v38)
  {
    goto LABEL_88;
  }

  v83 = v38;
  [v38 frame];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;

  *(v0 + 200) = v85;
  *(v0 + 208) = v87;
  *(v0 + 216) = v89;
  *(v0 + 224) = v91;
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v92._countAndFlagsBits = 0xD000000000000011;
  v92._object = 0x8000000100E44830;
  String.append(_:)(v92);
  v93 = [v82 view];

  if (!v93)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v93 layoutMargins];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  *(v0 + 232) = v95;
  *(v0 + 240) = v97;
  *(v0 + 248) = v99;
  *(v0 + 256) = v101;
  type metadata accessor for UIEdgeInsets(0);
  _print_unlocked<A, B>(_:_:)();
  v102._object = 0x8000000100E44850;
  v102._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v102);
  v103._countAndFlagsBits = v160;
  v103._object = v163;
  String.append(_:)(v103);
  v104._countAndFlagsBits = 0xD000000000000016;
  v104._object = 0x8000000100E44870;
  String.append(_:)(v104);
  v105._countAndFlagsBits = v159;
  v105._object = v162;
  String.append(_:)(v105);
  v106._countAndFlagsBits = 0xD00000000000001ALL;
  v106._object = 0x8000000100E44890;
  String.append(_:)(v106);
  v107._countAndFlagsBits = v74;
  v107._object = v73;
  String.append(_:)(v107);
  v108._object = 0x8000000100E448B0;
  v108._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v108);
  static Locale.preferredLanguages.getter();
  v109 = Array.description.getter();
  v111 = v110;

  v112._countAndFlagsBits = v109;
  v112._object = v111;
  String.append(_:)(v112);

  v113 = *&v2[v164];
  if (!v113)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v47 = *(v0 + 320);
  v49 = *(v0 + 328);
  v114 = *(v0 + 432);
  v115 = *(v0 + 408);
  v116 = *((swift_isaMask & *v113) + 0x3A0);
  v117 = v113;
  v116();

  v118 = v157(v114, 1, v115);
  v119 = *(v0 + 432);
  if (v118 == 1)
  {
    v38 = sub_1000095E8(*(v0 + 432), &qword_101189A18);
    v120 = *&v2[v164];
    if (!v120)
    {
LABEL_91:
      __break(1u);
      return _swift_task_switch(v38, v39, v40);
    }

    v121 = *(v0 + 368);
    v122 = *(v0 + 344);
    v123 = v120;

    (*((swift_isaMask & *v123) + 0x3B8))(v124);

    LODWORD(v123) = v156(v121, 1, v122);
    sub_1000095E8(v121, &unk_101189A00);
    if (v123 == 1)
    {
      v48 = _swiftEmptyArrayStorage;
      v12 = v158;
      goto LABEL_56;
    }
  }

  else
  {

    sub_1000095E8(v119, &qword_101189A18);
  }

  v48 = sub_100499710(0, 1, 1, _swiftEmptyArrayStorage);
  v126 = *(v48 + 2);
  v125 = *(v48 + 3);
  if (v126 >= v125 >> 1)
  {
    v48 = sub_100499710((v125 > 1), v126 + 1, 1, v48);
  }

  v12 = v158;
  *(v48 + 2) = v126 + 1;
  v48[v126 + 32] = 3;
LABEL_56:
  _StringGuts.grow(_:)(171);
  v127._countAndFlagsBits = 0x61644120676E6F53;
  v127._object = 0xED0000203A44496DLL;
  String.append(_:)(v127);
  if (!v12 || (v128 = [v12 identifiers], v129 = MPIdentifierSet.bestStoreIdentifier.getter(), v131 = v130, v128, !v131))
  {

    v131 = 0x8000000100E44760;
    v129 = 0xD000000000000018;
  }

  v132._countAndFlagsBits = v129;
  v132._object = v131;
  String.append(_:)(v132);

  v133._countAndFlagsBits = 0x726665726F74530ALL;
  v133._object = 0xED0000203A746E6FLL;
  String.append(_:)(v133);
  String.append(_:)(v167);

  v134._countAndFlagsBits = 0xD000000000000010;
  v134._object = 0x8000000100E44780;
  String.append(_:)(v134);
  String.append(_:)(v165);

  v135._object = 0x8000000100E447A0;
  v135._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v135);
  if (v166)
  {
    v136 = 28239;
  }

  else
  {
    v136 = 6710863;
  }

  if (v166)
  {
    v137 = 0xE200000000000000;
  }

  else
  {
    v137 = 0xE300000000000000;
  }

  v138 = v137;
  String.append(_:)(*&v136);

  v139._countAndFlagsBits = 10;
  v139._object = 0xE100000000000000;
  String.append(_:)(v139);
  v140._countAndFlagsBits = v47;
  v140._object = v49;
  String.append(_:)(v140);
  v141._countAndFlagsBits = 0xD000000000000062;
  v141._object = 0x8000000100E447C0;
  String.append(_:)(v141);
  v142 = [v2 parentViewController];
  if (!v142)
  {

    goto LABEL_70;
  }

  v143 = v142;
  v144 = [v142 view];

  if (!v144)
  {
    __break(1u);
    goto LABEL_86;
  }

  v145 = UIView.screenshot.getter();

  if (!v145)
  {
LABEL_70:
    v146 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  sub_10010FC20(&qword_101183990);
  v146 = swift_allocObject();
  *(v146 + 1) = xmmword_100EBC6C0;
  v146[4] = v145;
LABEL_71:
  v147 = sub_1006E1288(_swiftEmptyArrayStorage);
  static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0, 0, 0, 0xE000000000000000, v146, v147, _swiftEmptyArrayStorage, v48, v0 + 144, 0);

  v148 = *(v0 + 152);
  if (v148)
  {
    *(v0 + 88) = *(v0 + 144);
    *(v0 + 96) = v148;
    v149 = *(v0 + 160);
    *(v0 + 120) = *(v0 + 176);
    *(v0 + 104) = v149;
    v150 = *(v0 + 192);
    *(v0 + 136) = v150;
    v151 = *(v0 + 128);
    *(v0 + 512) = v151;
    *(v0 + 520) = v150;
    if (v151)
    {
      *(v0 + 80) = 0;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      v168 = (v151 + *v151);
      v152 = swift_task_alloc();
      *(v0 + 528) = v152;
      *v152 = v0;
      v152[1] = sub_1002AA6A8;

      return v168(v0 + 88, v0 + 16);
    }

    v39 = *(v0 + 464);
    v40 = *(v0 + 472);
    v38 = sub_1002AA7C8;

    return _swift_task_switch(v38, v39, v40);
  }

LABEL_77:

  v154 = *(v0 + 8);

  return v154();
}

uint64_t sub_1002AA6A8()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return _swift_task_switch(sub_1002AA7C8, v3, v2);
}

uint64_t sub_1002AA7C8()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  v4 = *(v0 + 480);

  *(v0 + 304) = *(v0 + 88);
  sub_100015BB0(v0 + 304);
  *(v0 + 288) = *(v0 + 104);
  sub_100015BB0(v0 + 288);
  sub_100020438(v1);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1002AA8E0()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton);
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = objc_opt_self();
  v11 = v1;
  v4 = [v3 standardUserDefaults];
  v5 = sub_1002991D8();

  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v6 tracklist];
  v8 = [v7 playingItem];

  if (!v8)
  {
    goto LABEL_9;
  }

  if ((MPCPlayerResponseItem.hasStoreLyrics.getter() & 1) == 0)
  {

LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v9 = MPCPlayerResponseItem.supportsLyrics.getter();

  v10 = v9 ^ 1;
LABEL_10:
  [v11 setHidden:v10 & 1];
}

uint64_t sub_1002AAA18()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101188C20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v16[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v7, &qword_101188C20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000095E8(v7, &qword_101188C20);
  }

  (*(v9 + 32))(v11, v7, v8);
  Date.timeIntervalSinceNow.getter();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) - v15;
  (*(v9 + 56))(v5, 1, 1, v8);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v12, &qword_101188C20);
  return swift_endAccess();
}

id sub_1002AAC80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v83 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101184010);
  __chkstk_darwin(v7 - 8);
  v9 = &v77 - v8;
  v10 = sub_10010FC20(&qword_101189A10);
  __chkstk_darwin(v10 - 8);
  v12 = &v77 - v11;
  v13 = sub_10010FC20(&unk_101189A00);
  __chkstk_darwin(v13 - 8);
  v15 = &v77 - v14;
  v16 = sub_10010FC20(&qword_101189A18);
  result = __chkstk_darwin(v16 - 8);
  v19 = &v77 - v18;
  if (!a1)
  {
    return result;
  }

  v20 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics;
  v21 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics);
  if (!v21 || *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1)
  {
    return result;
  }

  v81 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  v82 = v5;
  v22 = a1;

  sub_1002AAA18();
  v23 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration);
  if (v23 > 0.0)
  {
    v80 = v21;
    *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration) = 0;
    v24 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
    [v24 setModelSong:v22];
    v25 = *(v2 + v20);
    v78 = v22;
    v79 = v4;
    if (v25 && *(v25 + 24))
    {

      v26 = String._bridgeToObjectiveC()();
    }

    else
    {
      v26 = 0;
    }

    [v24 setLyricsID:v26];

    [v24 setModelPlayEvent:*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent)];
    result = [v24 setVisibleDuration:v23];
    v27 = OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController;
    v28 = *(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (v28)
    {
      v29 = *((swift_isaMask & *v28) + 0x3A0);
      v30 = v28;
      v29();

      v31 = type metadata accessor for Lyrics.Translation(0);
      v32 = (*(*(v31 - 8) + 48))(v19, 1, v31) != 1;
      sub_1000095E8(v19, &qword_101189A18);
      result = [v24 setDisplayTranslationEnabled:v32];
      v33 = *(v2 + v27);
      if (v33)
      {
        v34 = *((swift_isaMask & *v33) + 0x3B8);
        v35 = v33;
        v34();

        v36 = type metadata accessor for Lyrics.Transliteration(0);
        v37 = (*(*(v36 - 8) + 48))(v15, 1, v36) != 1;
        sub_1000095E8(v15, &unk_101189A00);
        v38 = v24;
        v39 = [v24 setDisplayTransliterationEnabled:v37];
        (*(*v80 + 232))(v39);
        v40 = type metadata accessor for Locale.Language();
        v41 = *(v40 - 8);
        v42 = (*(v41 + 48))(v9, 1, v40);
        v43 = v82;
        if (v42 == 1)
        {
          v44 = &unk_101184010;
          v45 = v9;
        }

        else
        {
          Locale.Language.languageCode.getter();
          (*(v41 + 8))(v9, v40);
          v46 = type metadata accessor for Locale.LanguageCode();
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(v12, 1, v46) != 1)
          {
            Locale.LanguageCode.identifier.getter();
            (*(v47 + 8))(v12, v46);
            v48 = String._bridgeToObjectiveC()();

            goto LABEL_20;
          }

          v44 = &qword_101189A10;
          v45 = v12;
        }

        sub_1000095E8(v45, v44);
        v48 = 0;
LABEL_20:
        [v38 setLanguage:v48];

        v49 = 1;
        if (v81)
        {
          v49 = 2;
        }

        if (v81 == 2)
        {
          v50 = 0;
        }

        else
        {
          v50 = v49;
        }

        [v38 setDisplayType:v50];
        v51 = String._bridgeToObjectiveC()();
        [v38 setFeatureName:v51];

        [v38 setUserPreferenceSyllable:2];
        [*(v2 + OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController) recordLyricsViewEvent:v38];
        v52 = Logger.lyrics.unsafeMutableAddressor();
        v53 = v83;
        v54 = v79;
        (*(v43 + 16))(v83, v52, v79);
        v55 = v78;
        v56 = v80;

        v57 = v38;
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          LODWORD(v78) = v59;
          v61 = v60;
          v81 = swift_slowAlloc();
          v86 = v81;
          *v61 = 136446978;
          v84 = [v57 displayType];
          type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
          v62 = String.init<A>(describing:)();
          v64 = sub_1000105AC(v62, v63, &v86);

          *(v61 + 4) = v64;
          *(v61 + 12) = 2082;
          v65 = *(v56 + 24);
          v84 = *(v56 + 16);
          v85 = v65;

          sub_10010FC20(&qword_1011815E0);
          v66 = String.init<A>(describing:)();
          v68 = sub_1000105AC(v66, v67, &v86);

          *(v61 + 14) = v68;
          *(v61 + 22) = 2082;
          v69 = Double.description.getter();
          v71 = sub_1000105AC(v69, v70, &v86);

          *(v61 + 24) = v71;
          *(v61 + 32) = 2082;
          v72 = [v55 humanDescription];
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v76 = sub_1000105AC(v73, v75, &v86);

          *(v61 + 34) = v76;
          _os_log_impl(&_mh_execute_header, v58, v78, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v61, 0x2Au);
          swift_arrayDestroy();

          return (*(v43 + 8))(v83, v79);
        }

        else
        {

          return (*(v43 + 8))(v53, v54);
        }
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }
}

id sub_1002AB634()
{
  if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8) != 1)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_state) == 2)
  {
    result = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController);
    if (!result)
    {
      __break(1u);
      return 0;
    }

    return [result contentScrollView];
  }

  result = *(v0 + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
  if (result)
  {
    return [result contentScrollView];
  }

  __break(1u);
  return result;
}

id sub_1002AB6F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] = 0;
  v7 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
  *v8 = 0;
  v8[8] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = 0;
  v9 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = 0;
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  v10 = &v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = 0;
  v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = 0;
  *&v3[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = 0;
  v11 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics] = 0;
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = 0;
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = 0;
  v12 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter;
  type metadata accessor for SequentialVocalCommandsFilter();
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *&v4[v12] = SequentialVocalCommandsFilter.__allocating_init(playbackController:)(qword_101218AD8);
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = 0;
  v13 = OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController;
  *&v4[v13] = [objc_allocWithZone(MPCLyricsReportingController) init];
  *&v4[OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration] = 0;
  v14 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  if (a2)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  v19.receiver = v4;
  v19.super_class = type metadata accessor for NowPlayingLyricsViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v16, a3);

  return v17;
}

id sub_1002ABAB0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] = 0;
  v4 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsCompositingFilter];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state];
  *v5 = 0;
  v5[8] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = 0;
  v6 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_container] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_activityIndicator] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_gradientMaskLayer] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButton] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_areControlsHidden] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationSliderSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonToVocalAttenuationSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_translationButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButtonSplitViewConstraints] = _swiftEmptyArrayStorage;
  v7 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_modelPlayEvent] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_backgroundObserver] = 0;
  v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_isBackgrounded] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_didActivateObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_presentationObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_dismissalObserver] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_optionsObserver] = 0;
  v8 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsLoader;
  *&v2[v8] = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_lyrics] = 0;
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView] = 0;
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalAttenuationToggleSlider] = 0;
  v9 = OBJC_IVAR___MusicNowPlayingLyricsViewController_vocalCommandsFilter;
  type metadata accessor for SequentialVocalCommandsFilter();
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *&v2[v9] = SequentialVocalCommandsFilter.__allocating_init(playbackController:)(qword_101218AD8);
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_tapToRadarButton] = 0;
  v10 = OBJC_IVAR___MusicNowPlayingLyricsViewController_reportingController;
  *&v2[v10] = [objc_allocWithZone(MPCLyricsReportingController) init];
  *&v2[OBJC_IVAR___MusicNowPlayingLyricsViewController_visibleDuration] = 0;
  v11 = OBJC_IVAR___MusicNowPlayingLyricsViewController_lyricsVisibilityStart;
  v12 = type metadata accessor for Date();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for NowPlayingLyricsViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

void sub_1002ABE04()
{
  sub_1001E8510();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002ABF44(void *a1)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = *&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_song];
  if (!v6)
  {
    return;
  }

  v17 = v6;
  if (![a1 isRemoteServerLikelyReachable])
  {
    goto LABEL_8;
  }

  v7 = v17;
  if (!v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_state + 8])
  {
    v8 = &v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask];
    if (!*&v1[OBJC_IVAR___MusicNowPlayingLyricsViewController_currentLyricsTask])
    {
      type metadata accessor for LyricsLoader();
      if (static LyricsLoader.supportsLyrics(for:)(v17))
      {
        v9 = type metadata accessor for TaskPriority();
        (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
        type metadata accessor for MainActor();
        v10 = v1;
        v11 = static MainActor.shared.getter();
        v12 = swift_allocObject();
        v12[2] = v11;
        v12[3] = &protocol witness table for MainActor;
        v12[4] = v10;
        v13 = sub_1001F4CB8(0, 0, v5, &unk_100EC5540, v12);
        v15 = *v8;
        v14 = v8[1];
        *v8 = v13;
        v8[1] = v6;
        sub_1002AC974(v15, v14);
        return;
      }

LABEL_8:
      v7 = v17;
    }
  }
}

uint64_t sub_1002AC120()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1002A0D18();
}

uint64_t sub_1002AC1CC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002ADCD8, v1, v0);
}

id sub_1002AC370(int a1, int a2, char *a3, void *a4)
{
  v13[0] = 0x3FF0000000000000;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = 0x3FF0000000000000;
  v13[4] = 0;
  v13[5] = 0;
  [a3 setTransform:v13];
  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_backgroundView] setHidden:0];
  v6 = OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView;
  v7 = *&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_containerView];
  v8 = [a4 traitCollection];
  v9 = [v8 accessibilityContrast];

  v10 = 0;
  if (v9 == 1)
  {
    v10 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  [v7 setBackgroundColor:v10];

  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_shadowView] setAlpha:1.0];
  [*&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_highlightView] setAlpha:0.0];
  v11 = [*&a3[v6] layer];
  [v11 setCornerRadius:16.0];

  result = *&a3[OBJC_IVAR____TtC5Music27LyricsSharingTransitionView_finalLabelTopConstraint];
  if (result)
  {
    [result setConstant:12.0];
    return [a3 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AC59C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Artwork.Size.Dimension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.Size.Dimension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002AC668()
{
  result = qword_1011899F8;
  if (!qword_1011899F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011899F8);
  }

  return result;
}

uint64_t sub_1002AC6E4()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView];
  if (v1)
  {
    type metadata accessor for PresentationDonationItem();
    v2 = swift_allocObject();
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    *(v2 + 16) = 0x4C6C616974696E49;
    *(v2 + 24) = 0xEB00000000656E69;
    *(v2 + 32) = v1;
    *(v2 + 40) = 0;
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v0;
    *(v2 + 72) = sub_1002AC7D0;
    *(v2 + 80) = v3;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v2 + 88) = sub_1002AC7D8;
    *(v2 + 96) = v4;
    v5 = v0;
  }

  else
  {
    v2 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1002AC7D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView);
  *(v1 + OBJC_IVAR___MusicNowPlayingLyricsViewController_sharingTransitionView) = 0;
}

uint64_t sub_1002AC7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100299F4C(a1, v4, v5, v6);
}

uint64_t sub_1002AC8A4(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1002AC8B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A0998(a1, v4, v5, v7, v6);
}

void sub_1002AC974(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1002AC9B4(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

uint64_t sub_1002AC9FC(uint64_t a1, char a2)
{
  if (!a2)
  {
    return swift_errorRetain();
  }

  return result;
}

void sub_1002ACA0C(char *a1)
{
  v1 = *&a1[OBJC_IVAR___MusicNowPlayingLyricsViewController_staticLyricsViewController];
  if (v1)
  {
    v3 = v1;
    v4 = [a1 traitCollection];
    sub_100050078();
    v5 = UITraitCollection.subscript.getter();

    if (v5)
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v6 = qword_101219080;
    }

    else
    {
      v6 = [objc_opt_self() labelColor];
    }

    v7 = *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor];
    *&v3[OBJC_IVAR____TtC5Music33StaticLyricsContentViewController_textColor] = v6;
    v8 = v6;

    sub_100781F6C();
  }

  else
  {
    __break(1u);
  }
}

id sub_1002ACB38()
{
  v1 = type metadata accessor for LyricsSharingAnimationController();
  v2 = objc_allocWithZone(v1);
  v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_didPrepareAnimations] = 0;
  if (qword_10117F5B8 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A88 timingParameters:0.0];
  *&v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_stampAnimator] = v3;
  v4 = &v2[OBJC_IVAR____TtC5Music32LyricsSharingAnimationController_sourceViewController];
  *v4 = v0;
  v4[1] = &off_1010A3840;
  v7.receiver = v2;
  v7.super_class = v1;
  v5 = v0;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_1002ACC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1002AC120();
}

void *sub_1002ACCD0(void *result, void *a2, void *a3)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1002ACD34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A932C(a1, v4, v5, v6);
}

uint64_t sub_1002ACDF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A854C(a1, v4, v5, v6);
}

uint64_t sub_1002ACEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A8398(a1, v4, v5, v6);
}

uint64_t sub_1002ACF58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A81DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A8700(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD0D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002AD120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1002A70C4(a1, v4, v5, v7, v6);
}

uint64_t sub_1002AD258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1002A54E4();
}

uint64_t sub_1002AD304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002A562C(a1, v4, v5, v6);
}

uint64_t sub_1002AD3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AD430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AD498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002AD554()
{
  v1 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) - 8);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  sub_1002A4AEC(v5, v6, v7, v0 + v2, v8, v9);
}

uint64_t sub_1002AD680()
{
  v1 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(type metadata accessor for Lyrics.TextLine(0) + 28);
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1002AD930(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101183F30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AD9F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10029E6EC();
}

uint64_t getEnumTagSinglePayload for NowPlayingLyricsViewController.State.LyricsType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NowPlayingLyricsViewController.State.LyricsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002ADBF8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1002ADC0C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1002ADC40()
{
  result = qword_101189A38;
  if (!qword_101189A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189A38);
  }

  return result;
}

uint64_t sub_1002ADD7C()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_1002ADE44;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10003640C;
  v4[3] = &unk_1010A41C8;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_1012189B0 = v2;
  return result;
}

id sub_1002ADE44(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_100009F78(0, &qword_101180C98);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(25, 25, 28, 0.2);
  }

  else
  {
    v2 = objc_allocWithZone(UIColor);

    return [v2 initWithWhite:0.75 alpha:0.2];
  }
}

id sub_1002ADF78()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator;
  v5 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator];
LABEL_5:
    v19 = v5;
    return v6;
  }

  v7 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1002B709C(v7, v3);
  v8 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource];

  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s19GlissandoDataSourceCMa();
    sub_1002B7108(&unk_101183970, _s19GlissandoDataSourceCMa);
    Gliss.Coordinator.GestureConfiguration.init(hostingView:hitRect:simultaneousGestureRecognizerAllowance:)(v10, sub_1002B7100, v11, 0, 0, v21);
    sub_10010FC20(&unk_101189D80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBC6B0;
    v13 = v0;
    v14 = sub_1002AE644();
    v15 = sub_1002B7108(&unk_101183980, type metadata accessor for NowPlaying.TrackTitleStackView);
    *(v12 + 32) = v14;
    *(v12 + 40) = v15;
    v16 = objc_allocWithZone(sub_10010FC20(&unk_101189D90));
    v17 = Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(v3, v8, v21, v12);
    v18 = *&v13[v4];
    *&v13[v4] = v17;
    v6 = v17;

    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1002AE1B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls);
    if (v5)
    {
      [v5 setSourceView:a1];
      v6 = *&v3[v4];
      if (v6)
      {
        [v6 startPrewarming];

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

void sub_1002AE248(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 *a3];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1002AE2D0@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying), v4 = Strong, v5 = v3, v4, v3))
  {
    *(a1 + 24) = &type metadata for DragDropToQueue.Destination;
    *(a1 + 32) = sub_1002B8664();
    *a1 = v5;
    *(a1 + 8) = 4;
    *(a1 + 16) = 1;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1002AE378(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  if (a2 == 3)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = &protocol witness table for MainActor;
    sub_1001F524C(0, 0, v6, &unk_100EC5930, v9);
  }

  return result;
}

uint64_t sub_1002AE490(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AE528, v3, v2);
}

uint64_t sub_1002AE528()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ClearCommand;
  *(v0 + 48) = &protocol witness table for Player.ClearCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2D48;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

char *sub_1002AE644()
{
  v1 = OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView);
  }

  else
  {
    v4 = v0;
    if (qword_10117F4E0 != -1)
    {
      swift_once();
    }

    v5 = qword_101218970;
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 labelColor];
    NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)(1, v14, 32.0, 0.0, 8.0, 0.0, 40.0);
    NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(v7, v8, 0, v14, 1, 0, 0, v15);
    if (qword_10117F4E8 != -1)
    {
      swift_once();
    }

    NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(qword_101218978, [v6 labelColor], 0, v14, 1, 0, 0, v16);
    v9 = objc_allocWithZone(type metadata accessor for NowPlaying.TrackTitleStackView(0));
    v10 = NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(v15, v16);
    v11 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1002AE828(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AE8C0, v3, v2);
}

uint64_t sub_1002AE8C0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002AE9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v6, a3, v9);
}

uint64_t sub_1002AEB04(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002AEB9C, v3, v2);
}

uint64_t sub_1002AEB9C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 2;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_1002AECB8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration + 16);
    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_1006CCC5C(0);
        if (v6)
        {
          v7 = *(*(v4 + 56) + 16 * v5);
          v13 = a1;

          v7(&v13);
        }
      }
    }

    v8 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v9)
      {
        v10 = *((swift_isaMask & *v9) + 0x110);
        v11 = v8;
        v12 = v9;
        v10(v12);

        v3 = v11;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002AEDEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration + 16];
    if (v3 && *(v3 + 16))
    {
      v4 = Strong;
      v5 = sub_1006CCC5C(0);
      if (v6)
      {
        v7 = *(*(v3 + 56) + 16 * v5);
        v8 = a1;

        v7(&v8);
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

void sub_1002AEEAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
    v5 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton);
    if (v5)
    {
      if ([v5 isHolding])
      {
LABEL_11:

        return;
      }

      v6 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration + 16];
      if (v6)
      {
        if (*(v6 + 16))
        {
          v7 = sub_1006CCC5C(0);
          if (v8)
          {
            v9 = *(*(v6 + 56) + 16 * v7);
            v15 = a1;

            v9(&v15);
          }
        }
      }

      v10 = *&v3[v4];
      if (v10)
      {
        v11 = *&v10[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v11)
        {
          v12 = *((swift_isaMask & *v11) + 0x110);
          v13 = v10;
          v14 = v11;
          v12(v14);

          v3 = v13;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1002AEFFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *&Strong[*a3 + 16];
    if (v8 && *(v8 + 16))
    {
      v9 = Strong;
      v10 = sub_1006CCC5C(1);
      if (v11)
      {
        v12 = *(*(v8 + 56) + 16 * v10);
        v18 = a1;

        v12(&v18);

        v13 = *&v9[*a4];
        if (!v13)
        {
          __break(1u);
          return;
        }

        Strong = v9;
        v14 = *&v13[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v14)
        {
          v15 = *((swift_isaMask & *v14) + 0x130);
          v16 = v13;
          v17 = v14;
          v15(0.5);

          Strong = v16;
        }
      }

      else
      {
        Strong = v9;
      }
    }
  }
}

void sub_1002AF144(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3 + 16);
    if (v9)
    {
      if (*(v9 + 16))
      {
        v10 = sub_1006CCC5C(2);
        if (v11)
        {
          v12 = *(*(v9 + 56) + 16 * v10);
          v18 = a1;

          v12(&v18);
        }
      }
    }

    v13 = *&v8[*a4];
    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v14)
      {
        v15 = *((swift_isaMask & *v14) + 0x138);
        v16 = v13;
        v17 = v14;
        v15(v17);

        v8 = v16;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002AF278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000511A4();
  }
}

void sub_1002AF2CC()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v168 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v168 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v168 - v14;
  __chkstk_darwin(v13);
  v17 = &v168 - v16;
  v18 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView];
  if (!v18)
  {
    v172 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView;
    sub_100009F78(0, &qword_101183A00);
    v180 = v9;
    v22 = static UIFont.preferredFont(forTextStyle:weight:)();
    v23 = [objc_opt_self() configurationWithFont:v22 scale:3];

    static UIButton.Configuration.plain()();
    v178 = objc_opt_self();
    v24 = [v178 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v25 = String._bridgeToObjectiveC()();
    v185 = objc_opt_self();
    v26 = [v185 systemImageNamed:v25];

    UIButton.Configuration.image.setter();
    v184 = v23;
    v168 = v23;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v27 = type metadata accessor for HitMyRectButton();
    v28 = *(v6 + 16);
    v182 = (v6 + 16);
    v183 = v28;
    v169 = v17;
    v28(v15, v17, v5);
    v29 = v27;
    v30 = UIButton.init(configuration:primaryAction:)();
    sub_100009F78(0, &unk_101189DF0);
    v177 = static UIPointerStyle.capsule(in:)(0);
    v181 = v31;
    swift_retain_n();
    v32 = v30;
    UIButton.pointerStyleProvider.setter();
    v33 = v32;
    [v33 setContextMenuInteractionEnabled:1];
    [v33 setShowsMenuAsPrimaryAction:1];
    v34 = v33;
    v35 = [v34 layer];
    [v35 setAllowsGroupBlending:0];

    sub_100009F78(0, &unk_1011845F0);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v37.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v37, 0, sub_1002B81EC, v36).super.super.isa;

    [v34 setMenu:isa];

    [v34 setShowsMenuFromSource:0];
    v39 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton] = v34;
    v179 = v34;

    v40 = v29;
    v173 = v29;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v42 = UIView.forAutolayout.getter();

    static UIButton.Configuration.plain()();
    v43 = v178;
    v44 = [v178 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v185 systemImageNamed:v45];
    v47 = v5;

    UIButton.Configuration.image.setter();
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v170 = v12;
    v183(v4, v12, v5);
    v171 = v6;
    v174 = *(v6 + 56);
    v174(v4, 0, 1, v5);
    v48 = v42;
    UIButton.configuration.setter();
    UIButton.pointerStyleProvider.setter();

    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    ControlEventHandling<>.on(_:handler:)(64, sub_1002B81F4, v49, v40);

    v50 = v48;
    v51 = [v50 layer];
    [v51 setAllowsGroupBlending:0];

    v52 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
    swift_beginAccess();
    v53 = *&v1[v52];
    *&v1[v52] = v50;
    v176 = v50;

    v54 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    v55 = UIView.forAutolayout.getter();

    v56 = v180;
    static UIButton.Configuration.plain()();
    v57 = [v43 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v58 = String._bridgeToObjectiveC()();
    v59 = [v185 systemImageNamed:v58];

    UIButton.Configuration.image.setter();
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v183(v4, v56, v47);
    v178 = v47;
    v174(v4, 0, 1, v47);
    v60 = v55;
    UIButton.configuration.setter();
    UIButton.pointerStyleProvider.setter();

    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    ControlEventHandling<>.on(_:handler:)(64, sub_1002B8214, v61, v173);

    v62 = v60;
    v63 = [v62 layer];
    [v63 setAllowsGroupBlending:0];

    v64 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
    *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton] = v62;
    v65 = v62;

    type metadata accessor for HitMyRectStackView();
    v66 = sub_10010FC20(&qword_101183990);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100EBE270;
    v68 = v179;
    v69 = v176;
    *(v67 + 32) = v179;
    *(v67 + 40) = v69;
    *(v67 + 48) = v65;
    v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100009F78(0, &qword_101181620);
    v71 = v68;
    v72 = v69;
    v73 = v65;
    v74 = Array._bridgeToObjectiveC()().super.isa;

    v75 = [v70 initWithArrangedSubviews:v74];

    v76 = UIView.forAutolayout.getter();
    v77 = v76;
    [v77 setAxis:0];
    [v77 setSpacing:6.0];

    v78 = [v1 view];
    if (v78)
    {
      v79 = v78;
      v80 = v77;
      [v79 addSubview:v80];

      v81 = *&v1[v172];
      *&v1[v172] = v80;
      v185 = v80;

      v184 = objc_opt_self();
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100EBEE70;
      v83 = [v73 widthAnchor];
      v84 = [v83 constraintEqualToConstant:48.0];

      *(v82 + 32) = v84;
      v85 = [v73 heightAnchor];
      v86 = [v73 widthAnchor];
      v183 = v66;
      v87 = v73;
      v88 = [v85 constraintEqualToAnchor:v86];

      *(v82 + 40) = v88;
      v89 = [v72 widthAnchor];
      v90 = [v87 widthAnchor];
      v91 = [v89 constraintEqualToAnchor:v90];

      *(v82 + 48) = v91;
      v92 = [v72 heightAnchor];
      v93 = [v72 widthAnchor];
      v182 = v72;

      v94 = [v92 constraintEqualToAnchor:v93];
      *(v82 + 56) = v94;
      v95 = [v71 widthAnchor];
      v96 = [v87 widthAnchor];
      v181 = v87;

      v97 = [v95 constraintEqualToAnchor:v96];
      *(v82 + 64) = v97;
      v98 = [v71 heightAnchor];
      v99 = [v71 widthAnchor];
      v100 = v71;

      v101 = [v98 constraintEqualToAnchor:v99];
      *(v82 + 72) = v101;
      sub_100009F78(0, &qword_1011838A0);
      v102 = Array._bridgeToObjectiveC()().super.isa;

      [v184 activateConstraints:v102];

      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_100EC56C0;
      v104 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack;
      v105 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
      if (v105)
      {
        v106 = [v105 leadingAnchor];
        v107 = [v1 view];
        if (v107)
        {
          v108 = v107;
          v109 = [v107 layoutMarginsGuide];

          v110 = [v109 leadingAnchor];
          v111 = [v106 constraintEqualToAnchor:v110];

          *(v103 + 32) = v111;
          v112 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
          if (v112)
          {
            v113 = [v112 leadingAnchor];
            v114 = *&v1[v104];
            if (v114)
            {
              v115 = [v114 trailingAnchor];
              v116 = [v113 constraintEqualToAnchor:v115 constant:10.0];

              *(v103 + 40) = v116;
              v117 = v185;
              v118 = [v185 trailingAnchor];

              v119 = [v1 view];
              if (v119)
              {
                v120 = v119;
                v121 = [v119 layoutMarginsGuide];

                v122 = [v121 trailingAnchor];
                v123 = [v118 constraintEqualToAnchor:v122];

                *(v103 + 48) = v123;
                v124 = [v117 centerYAnchor];

                v125 = [v1 view];
                if (v125)
                {
                  v126 = v125;
                  v184 = v100;
                  v127 = [v125 centerYAnchor];

                  v128 = [v124 constraintEqualToAnchor:v127];
                  *(v103 + 56) = v128;
                  v129 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
                  v130 = [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] widthAnchor];
                  if (qword_10117F528 != -1)
                  {
                    swift_once();
                  }

                  v131 = *&qword_1012189B8;
                  v132 = [v130 constraintEqualToConstant:*&qword_1012189B8];

                  *(v103 + 64) = v132;
                  v133 = [*&v1[v129] heightAnchor];
                  v134 = [*&v1[v129] widthAnchor];
                  v135 = [v133 constraintEqualToAnchor:v134];

                  *(v103 + 72) = v135;
                  v136 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
                  v137 = [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] widthAnchor];
                  v138 = [v137 constraintEqualToConstant:v131];

                  *(v103 + 80) = v138;
                  v139 = [*&v1[v136] heightAnchor];
                  v140 = [*&v1[v136] widthAnchor];
                  v141 = [v139 constraintEqualToAnchor:v140];

                  *(v103 + 88) = v141;
                  v142 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton;
                  v143 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton];
                  if (v143)
                  {
                    v144 = [v143 widthAnchor];
                    v145 = [v144 constraintEqualToConstant:v131];

                    *(v103 + 96) = v145;
                    v146 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton;
                    v147 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton];
                    if (v147)
                    {
                      v148 = [v147 widthAnchor];
                      v149 = [v148 constraintEqualToConstant:v131];

                      *(v103 + 104) = v149;
                      v150 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton;
                      v151 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton];
                      if (v151)
                      {
                        v152 = [v151 widthAnchor];
                        v153 = [v152 constraintEqualToConstant:v131];

                        *(v103 + 112) = v153;
                        v154 = *&v1[v142];
                        if (v154)
                        {
                          v155 = [v154 heightAnchor];
                          v156 = [v155 constraintEqualToConstant:v131];

                          *(v103 + 120) = v156;
                          v157 = *&v1[v146];
                          v159 = v170;
                          v158 = v171;
                          v160 = v182;
                          if (v157)
                          {
                            v161 = [v157 heightAnchor];
                            v162 = [v161 constraintEqualToConstant:v131];

                            *(v103 + 128) = v162;
                            v163 = *&v1[v150];
                            if (v163)
                            {
                              v164 = [v163 heightAnchor];
                              v165 = [v164 constraintEqualToConstant:v131];

                              *(v103 + 136) = v165;
                              v166 = *(v158 + 8);
                              v167 = v178;
                              v166(v180, v178);
                              v166(v159, v167);
                              v166(v169, v167);
                              *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_newRegularLayoutConstraints] = v103;

                              return;
                            }

                            goto LABEL_35;
                          }

LABEL_34:
                          __break(1u);
LABEL_35:
                          __break(1u);
                          return;
                        }

LABEL_33:
                        __break(1u);
                        goto LABEL_34;
                      }

LABEL_32:
                      __break(1u);
                      goto LABEL_33;
                    }

LABEL_31:
                    __break(1u);
                    goto LABEL_32;
                  }

LABEL_30:
                  __break(1u);
                  goto LABEL_31;
                }

LABEL_29:
                __break(1u);
                goto LABEL_30;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
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

  v19 = v18;
  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_23;
  }

  v185 = v20;
  [v20 addSubview:v19];

  v21 = v185;
}

void sub_1002B0570(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying) = v1;
    v5 = v1;
    sub_100068948(v4);
  }
}

void sub_1002B05EC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath) = v1;
    v5 = v1;

    sub_1002B2290(0, 1);
  }
}

void sub_1002B066C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession) = v1;
    v5 = v1;

    sub_10006A6D8();
  }
}

void sub_1002B06E4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    v4 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
    if (v4)
    {
      v5 = [v4 tracklist];
      if (v5)
      {
        v6 = v5;
        v7 = [v1 view];
        if (!v7)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v39.origin.x = v10;
        v39.origin.y = v12;
        v39.size.width = v14;
        v39.size.height = v16;
        Width = CGRectGetWidth(v39);
        if (qword_10117F538 != -1)
        {
          swift_once();
        }

        v18 = *&qword_1012189C8;
        v19 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
        v20 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton];
        v21 = [v6 shuffleType];
        v22 = *&v20[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType];
        *&v20[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_shuffleType] = v21;
        if (v21 != v22)
        {
          sub_10004FD5C();
        }

        v23 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
        v24 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton];
        v25 = [v6 repeatType];
        v26 = *&v24[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType];
        *&v24[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_repeatType] = v25;
        if (v25 != v26)
        {
          sub_100050478();
        }

        [*&v1[v19] setHidden:v18 >= Width];
        [*&v1[v23] setHidden:v18 >= Width];
        v27 = *&v1[v19];
        v28 = [v6 shuffleCommand];
        if (v28)
        {
          swift_unknownObjectRelease();
        }

        [v27 setEnabled:v28 != 0];

        v29 = *&v1[v23];
        v30 = [v6 repeatCommand];
        if (v30)
        {
          swift_unknownObjectRelease();
        }

        [v29 setEnabled:v30 != 0];
      }
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] setHidden:1];
    [*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] setHidden:1];
  }

  v31 = sub_1000483AC();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaRemote, v31) & 1) == 0)
  {
    return;
  }

  v32 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton;
  v33 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton];
  if (!v33)
  {
    __break(1u);
    goto LABEL_31;
  }

  v34 = [v33 superview];
  if (v34)
  {

    return;
  }

  v36 = *&v1[v32];
  if (!v36)
  {
    goto LABEL_32;
  }

  LODWORD(v35) = 1148846080;
  [v36 setContentHuggingPriority:0 forAxis:v35];
  v37 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
  if (!v37)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!*&v1[v32])
  {
LABEL_34:
    __break(1u);
    return;
  }

  [v37 addArrangedSubview:?];
}

void sub_1002B0A98()
{
  v1 = [v0 traitCollection];
  [v1 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = [*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton] imageView];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 layer];

    v5 = String._bridgeToObjectiveC()();
    [v4 setCompositingFilter:v5];
  }

  v6 = [*&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton] imageView];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 layer];

    v9 = String._bridgeToObjectiveC()();
    [v8 setCompositingFilter:v9];
  }

  v10 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
  if (v10)
  {
    v11 = [v10 imageView];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 layer];

      v14 = String._bridgeToObjectiveC()();
      [v13 setCompositingFilter:v14];
    }
  }

  v15 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
  swift_beginAccess();
  v16 = *&v0[v15];
  if (v16)
  {
    v17 = [v16 imageView];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 layer];

      v20 = String._bridgeToObjectiveC()();
      [v19 setCompositingFilter:v20];
    }
  }

  v21 = *&v0[OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton];
  if (v21 && (v22 = [v21 imageView]) != 0)
  {
    v23 = v22;
    v24 = [v22 layer];

    v25 = String._bridgeToObjectiveC()();

    [v24 setCompositingFilter:v25];
  }

  else
  {
  }
}

void sub_1002B0D64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 traitCollection];

      v5 = [v4 tabAccessoryEnvironment];
      if (v5 > 1)
      {
        v6 = &v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment];
        *v6 = v5;
        v6[8] = 0;
      }

      sub_1000511A4();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B0E30(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = v1;
    if (v1 != v4)
    {
      sub_10004F27C();
    }
  }
}

void sub_1002B0EA8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading) = v1;
    if (v1 != v4)
    {
      sub_1002B2290(0, 1);
      sub_1000511A4();
    }
  }
}

uint64_t sub_1002B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = sub_10010FC20(&unk_101182130);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B102C, v7, v6);
}