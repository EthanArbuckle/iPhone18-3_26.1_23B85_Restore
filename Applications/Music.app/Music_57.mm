id sub_10065ECB4(int a1, char a2, id a3)
{
  if (a2)
  {
    return [a3 removeFromSuperview];
  }

  return result;
}

void sub_10065ECCC()
{
  if (*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v15 == 255)
    {
LABEL_15:

      return;
    }

    if (v15)
    {
LABEL_14:
      sub_10004ADFC(v14, v15);
      goto LABEL_15;
    }

    v1 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView;
    v2 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
    *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
    v3 = &selRef_objectAtIndexedSubscript_;
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    v4 = [objc_allocWithZone(UIImageView) initWithImage:v14];
    v5 = v4;
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    if (v6)
    {
      sub_100009F78(0, &qword_101181620);
      v7 = v5;
      v6 = v6;
      v3 = &selRef_objectAtIndexedSubscript_;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = v4;
    }

    [v6 v3[101]];
    v7 = v5;
LABEL_11:

    v10 = *(v0 + v1);
    if (v10)
    {
      [v10 setClipsToBounds:1];
      v11 = *(v0 + v1);
      if (v11)
      {
        v12 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
        v13 = v11;
        [v12 bounds];
        [v13 setFrame:?];
        sub_10004ADFC(v14, v15);

        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }
}

void sub_10065EEBC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v35[-v3];
  v5 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (v5)
  {
    v6 = v5;
    [v6 setAlpha:0.0];
    v7 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v8 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v9 = type metadata accessor for Artwork(0);
    v10 = *(v9 + 28);
    v11 = type metadata accessor for Artwork.Decoration(0);
    sub_1000089F8(v8 + v10 + *(v11 + 20), v4, &qword_101183A90);
    UIView.corner.setter();
    v12 = *(v1 + v7) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v13 = (v12 + *(v9 + 28));
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v16;
    UIView.border.setter(v14, v15, v16);
    v18 = *(v1 + v7);
    v19 = UIView.forAutolayout.getter();
    [v18 addSubview:v19];

    v20 = objc_opt_self();
    sub_10010FC20(&qword_101183990);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBDC10;
    v22 = [v6 topAnchor];
    v23 = [*(v1 + v7) topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v21 + 32) = v24;
    v25 = [v6 bottomAnchor];
    v26 = [*(v1 + v7) bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v21 + 40) = v27;
    v28 = [v6 leftAnchor];
    v29 = [*(v1 + v7) leftAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    *(v21 + 48) = v30;
    v31 = [v6 rightAnchor];
    v32 = [*(v1 + v7) rightAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v21 + 56) = v33;
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v20 activateConstraints:isa];
  }
}

id sub_10065F260(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_10065F284()
{
  v1 = sub_10010FC20(&qword_10119C158);
  __chkstk_darwin(v1 - 8);
  v3 = (&v23 - v2);
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10010FC20(&qword_10119C160);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  if (*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v9 = v25;
    if (v25 != 255)
    {
      v10 = v24;
      if ((v25 & 1) == 0)
      {
        v23 = v0;
        v15 = VideoArtwork.url.getter();
        v16 = __chkstk_darwin(v15);
        __chkstk_darwin(v16);
        MotionView.init(url:previewFrame:fallback:)();
        type metadata accessor for SquareMotionState(0);
        sub_1000496E4(&qword_10119C100, type metadata accessor for SquareMotionState);

        v17 = ObservedObject.init(wrappedValue:)();
        v19 = v18;
        sub_10004ADFC(v10, v9);

        *v3 = v17;
        v3[1] = v19;
        v20 = sub_10010FC20(&qword_10119BDB8);
        (*(v6 + 32))(v3 + *(v20 + 36), v8, v5);
        (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
        v21 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
        v22 = v23;
        swift_beginAccess();
        v13 = v22 + v21;
        goto LABEL_7;
      }

      sub_10004ADFC(v24, v25);
    }
  }

  v11 = sub_10010FC20(&qword_10119BDB8);
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
  swift_beginAccess();
  v13 = v0 + v12;
LABEL_7:
  sub_10006B010(v3, v13, &qword_10119C158);
  return swift_endAccess();
}

uint64_t sub_10065F6D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_10065F7F8()
{
  v1 = v0;
  LOBYTE(v7) = 11;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
      if (!v5)
      {
        return v5 & 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v8 != 255)
      {
        sub_10004ADFC(v7, v8);
        LOBYTE(v5) = v8 ^ 1;
        return v5 & 1;
      }

      goto LABEL_10;
    }

    if (v4)
    {
      goto LABEL_10;
    }
  }

  v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    LOBYTE(v5) = v8;
    if (v8 != 255)
    {
      sub_10004ADFC(v7, v8);
      return v5 & 1;
    }

LABEL_10:
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

void sub_10065F994(void *a1, void *a2)
{
  v3 = a1;
  v4 = *(v2 + *a2);
  *(v2 + *a2) = a1;
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v3 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_100009F78(0, &qword_101181620), v3 = v3, v6 = v4, v5 = static NSObject.== infix(_:_:)(), v6, (v5 & 1) == 0))
  {
LABEL_7:
    [v4 removeFromSuperview];
    v6 = v4;
  }
}

void sub_10065FA6C(uint64_t a1, char a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
  v8 = [v7 layer];
  v9 = v8;
  if (a2)
  {
    v10 = a3;
  }

  else
  {
    v10 = a4;
  }

  if (a2)
  {
    v11 = &kCACornerCurveContinuous;
  }

  else
  {
    v11 = &kCACornerCurveCircular;
  }

  [v8 setCornerRadius:v10];

  v12 = [v7 layer];
  v13 = *v11;
  [v12 setCornerCurve:v13];
}

void sub_10065FB58()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Music10MotionData_keyframeSnapshot);
    if (v2)
    {
      v3 = v2;
      sub_10065F994(v2, &OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
      [v3 removeFromSuperview];
      if ((*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
        [*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) frame];
        [v3 frame];
        [v3 setFrame:?];
      }

      [v3 setAlpha:0.0];
      sub_10065FD20(0);
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      v8[4] = sub_1001D2178;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10002BC98;
      v8[3] = &unk_1010B92F0;
      v6 = _Block_copy(v8);
      v7 = v3;

      [v4 animateWithDuration:v6 animations:0.15];
      _Block_release(v6);
    }
  }
}

void sub_10065FD20(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIView.Corner.Radius();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v8 - 8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for UIView.Corner();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (v15)
  {
    v79 = a1;
    v16 = v15;
    [v16 setContentMode:2];
    v81 = 11;
    v17 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0)
    {
      v18 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
      v21 = UIView.forAutolayout.getter();
      [v18 addSubview:v21];

      v20 = (v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize);
      if ((*(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
LABEL_7:
        v22 = v20[1] / *v20;
        v23 = objc_opt_self();
        sub_10010FC20(&qword_101183990);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_100EBDC10;
        v25 = [v16 topAnchor];
        v26 = [v18 topAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];

        *(v24 + 32) = v27;
        v28 = [v16 leftAnchor];
        v29 = [v18 leftAnchor];
        v30 = [v28 constraintEqualToAnchor:v29];

        *(v24 + 40) = v30;
        v31 = [v16 rightAnchor];
        v32 = [v18 rightAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];

        *(v24 + 48) = v33;
        v34 = [v16 heightAnchor];
        v35 = [v16 widthAnchor];
        v36 = [v34 constraintEqualToAnchor:v35 multiplier:v22];

        *(v24 + 56) = v36;
        sub_100009F78(0, &qword_1011838A0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v23 activateConstraints:isa];
      }

LABEL_11:

      return;
    }

    if (*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) == 1)
    {
      v18 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
      v19 = UIView.forAutolayout.getter();
      [v18 addSubview:v19];

      v20 = (v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize);
      if ((*(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    v75 = v11;
    v76 = v14;
    v74 = v5;
    v78 = v12;
    v38 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v39 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
    v40 = UIView.forAutolayout.getter();
    [v39 addSubview:v40];

    v77 = objc_opt_self();
    sub_10010FC20(&qword_101183990);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBDC10;
    v42 = [v16 topAnchor];
    v43 = [*(v2 + v38) topAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v41 + 32) = v44;
    v45 = [v16 bottomAnchor];
    v46 = [*(v2 + v38) bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v41 + 40) = v47;
    v48 = [v16 leftAnchor];
    v49 = [*(v2 + v38) leftAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v41 + 48) = v50;
    v51 = [v16 rightAnchor];
    v52 = [*(v2 + v38) rightAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v41 + 56) = v53;
    sub_100009F78(0, &qword_1011838A0);
    v54 = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:v54];

    v55 = [v16 layer];
    [v55 setMasksToBounds:1];

    v56 = v38;
    [*(v2 + v38) alpha];
    if (v57 < 1.0)
    {
      [*(v2 + v38) setAlpha:1.0];
    }

    v58 = v78;
    v59 = v76;
    if (v79)
    {
      goto LABEL_11;
    }

    v60 = *(v2 + v56) + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    v61 = *(type metadata accessor for Artwork(0) + 28);
    v62 = type metadata accessor for Artwork.Decoration(0);
    sub_1000089F8(v60 + v61 + *(v62 + 20), v10, &qword_101183A90);
    v63 = v75;
    if ((*(v58 + 48))(v10, 1, v75) == 1)
    {

      sub_1000095E8(v10, &qword_101183A90);
    }

    else
    {
      (*(v58 + 32))(v59, v10, v63);
      UIView.Corner.radius.getter();
      v64 = v74;
      if ((*(v74 + 88))(v7, v4) == enum case for UIView.Corner.Radius.value(_:))
      {
        (*(v64 + 96))(v7, v4);
        v65 = *v7;
        v66 = v7[8];
        v67 = [v16 layer];
        v68 = v63;
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v69 = v65 * 0.73;
        if (v80)
        {
          v69 = v65;
        }

        [v67 setCornerRadius:v69];

        v70 = [v16 layer];
        v71 = &kCACornerCurveContinuous;
        if (!v66)
        {
          v71 = &kCACornerCurveCircular;
        }

        v72 = *v71;
        [v70 setCornerCurve:v72];

        (*(v58 + 8))(v59, v68);
      }

      else
      {
        (*(v58 + 8))(v59, v63);

        (*(v64 + 8))(v7, v4);
      }
    }
  }
}

id sub_1006608B8(char *a1, void *a2)
{
  [*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setAlpha:1.0];
  v4 = [a1 layer];
  [v4 setZPosition:0.0];

  return [a2 setAlpha:0.0];
}

void sub_10066094C(int a1, id a2)
{
  [a2 removeFromSuperview];
  v3 = [a2 layer];
  [v3 setZPosition:0.0];
}

void sub_1006609C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10004E3C8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsLayout];
  }
}

id sub_100660A4C(uint64_t a1)
{
  if (!*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData))
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v7 == 255)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  sub_10004ADFC(v6, v7);
  if (v7)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v2 = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView);
  if (!v2)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v3 = [v2 superview];
  if (!v3)
  {
    return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
  }

  v4 = (*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) & 1) == 0 && (*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_mode) & 0xC000) != 0;
  return [*(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:v4];
}

void sub_100660BAC(unsigned __int16 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      v5 = a1;
      v6 = [objc_opt_self() blackColor];

      v7 = 24.0;
      if ((v5 & 1) == 0)
      {
        v7 = 8.0;
      }

      v8 = 0.12;
      if (v5)
      {
        v8 = 0.45;
      }

      v9 = 12.0;
      if ((v5 & 1) == 0)
      {
        v9 = 4.0;
      }

      goto LABEL_15;
    }

    if (a1 == 0x8000)
    {
      v6 = [objc_opt_self() blackColor];

      v8 = 0.18;
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    v6 = [objc_opt_self() blackColor];
    v10 = [a2 userInterfaceStyle] == 2;

    v8 = dbl_100EDAAB0[v10];
LABEL_14:
    v7 = 15.0;
    v9 = 15.0;
LABEL_15:
    UIView.Shadow.init(color:opacity:radius:offset:)(v6, &v16, v8, v7, 0.0, v9);
    v11 = v16;
    v12 = v17;
    v13 = v18;
    goto LABEL_19;
  }

  if (qword_10117FAF0 != -1)
  {
    swift_once();
  }

  v14 = unk_101219208;
  v15 = *(&xmmword_1012191F0 + 8);
  v11 = xmmword_1012191F0;

  v13 = v14;
  v12 = v15;
LABEL_19:
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 24) = v13;
}

void sub_100660D74(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
  v7 = v6;
  v8 = Artwork.Content.init(catalog:background:)(v6, 0);
  v10 = v9;
  sub_10004D23C(*a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 8) = v10;
  v11 = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath];
  LOWORD(v10) = *&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  v12 = v11;
  sub_10004D27C(v10, v11, v32);
  v29 = v32[1];
  v30 = v32[0];
  v13 = v33;
  v14 = v34;

  v15 = type metadata accessor for Artwork(0);
  v16 = a1 + *(v15 + 32);
  sub_10004D5E4(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
  *v16 = v30;
  *(v16 + 16) = v29;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  v17 = (a1 + *(v15 + 28));
  v18 = type metadata accessor for Artwork.Decoration(0);
  sub_10004D63C(a3, v17 + *(v18 + 20));
  if (qword_10117FAE8 != -1)
  {
    swift_once();
  }

  v19 = qword_10119BCC0;
  v20 = byte_10119BCC8;
  v21 = qword_10119BCD0;
  v22 = v17[2];
  v23 = qword_10119BCD0;

  *v17 = v19;
  v17[1] = v20;
  v17[2] = v21;
  *(v17 + *(v18 + 28)) = 0;
  [a2 bounds];
  Width = CGRectGetWidth(v35);
  [a2 bounds];
  Height = CGRectGetHeight(v36);
  *(a1 + 40) = Width;
  *(a1 + 48) = 2;
  *(a1 + 56) = Height;
  *(a1 + 64) = 2;
  if (*&a2[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference])
  {

    v26 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v28 = *v26;
    v27 = v26[1];
    swift_weakInit();
    v31[0] = v28;
    v31[1] = v27;
    swift_weakAssign();

    sub_10006B010(v31, a1 + 16, &qword_101190910);
  }
}

void sub_100660F90(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10010FC20(&qword_101189D60);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 208))(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_101189D60);
    return;
  }

  sub_100662D50(v7, v12);
  v13 = *&v12[*(v8 + 32)];
  if (v13)
  {
    v14 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
    v15 = v14;
    v16 = v13;
    LOBYTE(v14) = Optional<A>.isArtworkVisuallyIdentical(to:)(v14, v14);

    if (v14)
    {
      sub_1006638C0(v12, type metadata accessor for NowPlaying.TrackMetadata);

      return;
    }

    v17 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    v18 = *&v2[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    sub_1000089F8(v18 + 16, v39, &qword_101190910);
    sub_1000089F8(v39, &v37, &qword_101190910);
    if (v38)
    {

      sub_100662DB4(&v37);
    }

    else
    {
      sub_1000095E8(&v37, &qword_101190910);
    }

    v19 = String._bridgeToObjectiveC()();

    sub_1000089F8(v39, &v37, &qword_101190910);
    if (v38)
    {
      Strong = swift_weakLoadStrong();
      sub_100662DB4(&v37);
    }

    else
    {
      sub_1000095E8(&v37, &qword_101190910);
      Strong = 0;
    }

    [v16 setCacheIdentifier:v19 forCacheReference:Strong];

    swift_unknownObjectRelease();
    v21 = [v2 traitCollection];
    [v21 displayScale];
    v23 = v22;

    [v16 setDestinationScale:v23];
    v24 = *&v2[v17];
    v25 = &v24[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
    swift_beginAccess();
    v26 = v25[48];
    if (v26 == 255)
    {
      [v24 bounds];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      v31 = *(v25 + 7);
      v32 = *(v25 + 5);
      v33 = v25[64];
      [v24 bounds];
      v28 = Artwork.Size.computedSize(in:)(v32, v26, v31, v33, v34, v35);
    }

    [v16 setFittingSize:{v28, v30}];
    v36 = v2;
    MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v36, 1, UIScreen.Dimensions.size.getter, 0, ObjectType);

    sub_1000095E8(v39, &qword_101190910);
  }

  sub_1006638C0(v12, type metadata accessor for NowPlaying.TrackMetadata);
}

void sub_100661448()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
  if (v1)
  {
    v2 = *(*v1 + 216);

    v4 = v2(v3);

    v5 = [v4 playerViewController];

    v6 = [v5 view];
    if (v6)
    {
      v7 = [v6 layer];

      if (v7)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100661690()
{
  if (!qword_10119BDB0)
  {
    sub_1001109D0(&qword_10119BDB8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10119BDB0);
    }
  }
}

void sub_1006616F8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;

  sub_100068E6C(v1);
}

void sub_100661740(uint64_t a1)
{
  v2 = (*(*a1 + 216))();
  v6 = [v2 playerViewController];

  v3 = [v6 parentViewController];
  if (v3)
  {

    [v6 willMoveToParentViewController:0];
    [v6 removeFromParentViewController];
  }

  type metadata accessor for NowPlayingContentView(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext);
    *(v4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = a1;

    sub_10065E3FC(v5);
  }

  else
  {
  }
}

uint64_t sub_100661884(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 72);
  if (v3)
  {

    v3(v2, a1);
    sub_100020438(v3);
  }

  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  v5 = qword_101218668;
  v6 = *(qword_101218668 + 32);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (v9)
  {
    v10 = *(v7 + 16 * v8);
    swift_unknownObjectRetain();
    result = sub_100662E14(v2, v5);
    if (*(v2 + 104))
    {
      if (v10)
      {
        swift_getObjectType();
        v12 = swift_unknownObjectRetain();
        sub_100170440(v12, v5);
        return swift_unknownObjectRelease_n();
      }

      return result;
    }
  }

  else
  {
    result = sub_100662E14(v2, qword_101218668);
    if (*(v2 + 104))
    {
      return result;
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1006619C0(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *(v2 + 88);
  if (v4)
  {

    v4(a2 & 1, a1);
    sub_100020438(v4);
  }

  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  v7 = qword_101218668;

  return sub_100663250(v3, v7);
}

uint64_t sub_100661A78()
{

  sub_100020438(*(v0 + 56));
  sub_100020438(*(v0 + 72));
  sub_100020438(*(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_100661AFC()
{
  v1 = *(v0 + 32);
  type metadata accessor for NowPlayingContentView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

double sub_100661B44()
{
  v0 = [objc_opt_self() clearColor];
  UIView.Shadow.init(color:opacity:radius:offset:)(v0, v2, 0.0, 0.0, 0.0, 0.0);
  result = *v2;
  xmmword_1012191F0 = v2[0];
  unk_101219200 = v2[1];
  qword_101219210 = v3;
  return result;
}

uint64_t sub_100661BDC()
{
  v1 = OBJC_IVAR____TtC5MusicP33_F1E3C2770AD101679EE581A908D0EFAF17SquareMotionState__isExpanded;
  v2 = sub_10010FC20(&unk_101189E60);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC5MusicP33_F1E3C2770AD101679EE581A908D0EFAF17SquareMotionState__isPlaying, v2);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for NowPlayingContentView.ViewMode(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFE)
  {
    goto LABEL_17;
  }

  if (a2 + 49154 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49154 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49154;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3E00 | (*a1 >> 14) & 0xFFFFFE03 | (4 * (*a1 >> 1))) ^ 0x3FFF;
  if (v6 >= 0x3FFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for NowPlayingContentView.ViewMode(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49154 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49154 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFD)
  {
    v6 = ((a2 - 16382) >> 16) + 1;
    *result = a2 - 16382;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

_WORD *sub_100661E3C(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x101 | (a2 << 14);
  }

  else
  {
    *result = (a2 & 1 | (((a2 >> 1) & 1) << 8)) ^ 0x8100;
  }

  return result;
}

uint64_t sub_100661EC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SquareMotionState(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100661F08@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for MotionCacheDownloadPolicy();
  v101 = *(v3 - 8);
  v102 = v3;
  __chkstk_darwin(v3);
  v100 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v67[1] = a1;
  v108 = v5;
  v109 = v6;
  v7 = v5;
  v87 = v5;
  v8 = v6;
  v86 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v108 = v7;
  v109 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  v11 = OpaqueTypeConformance2;
  v82 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeMetadata2();
  v70 = v12;
  v13 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_1011879E8);
  v14 = type metadata accessor for ModifiedContent();
  v108 = OpaqueTypeMetadata2;
  v109 = v11;
  v90 = swift_getOpaqueTypeConformance2();
  v106 = v90;
  v107 = &protocol witness table for _ScaleEffect;
  v15 = v13;
  v75 = v13;
  WitnessTable = swift_getWitnessTable();
  v93 = WitnessTable;
  v17 = sub_1006634C0();
  v104 = WitnessTable;
  v105 = v17;
  v18 = swift_getWitnessTable();
  v108 = v14;
  v109 = v18;
  v19 = v18;
  v74 = v18;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = type metadata accessor for MCUINamespace();
  v22 = *(v21 - 8);
  v98 = v21;
  v99 = v22;
  __chkstk_darwin(v21);
  v97 = v67 - v23;
  v24 = type metadata accessor for MotionPlaybackPolicy();
  v95 = *(v24 - 8);
  v96 = v24;
  __chkstk_darwin(v24);
  v91 = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v14;
  v92 = type metadata accessor for MCUINamespace();
  v94 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = v67 - v26;
  v68 = swift_checkMetadataState();
  v27 = *(v68 - 8);
  __chkstk_darwin(v68);
  v29 = v67 - v28;
  v71 = *(v12 - 8);
  __chkstk_darwin(v30);
  v32 = v67 - v31;
  v77 = *(v15 - 8);
  __chkstk_darwin(v33);
  v69 = v67 - v34;
  v76 = *(v14 - 8);
  __chkstk_darwin(v35);
  v72 = v67 - v36;
  v81 = v20;
  v88 = *(v20 - 8);
  __chkstk_darwin(v37);
  v78 = v67 - v38;
  v108 = v14;
  v109 = v19;
  v80 = swift_getOpaqueTypeConformance2();
  v108 = v20;
  v109 = v80;
  v89 = swift_getOpaqueTypeMetadata2();
  v85 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v83 = v67 - v41;
  Corner.large.unsafeMutableAddressor();
  View.corner(_:)();
  Border.artwork.unsafeMutableAddressor();

  v42 = v68;
  View.border(_:corner:)();

  (*(v27 + 8))(v29, v42);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  static UnitPoint.center.getter();
  v43 = v69;
  v44 = v70;
  View.scaleEffect(_:anchor:)();
  (*(v71 + 8))(v32, v44);
  sub_100662AFC();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v45 = v72;
  v46 = v75;
  View.animation<A>(_:value:)();

  (*(v77 + 8))(v43, v46);
  v47 = v84;
  v48 = v73;
  View.mcui.getter();
  (*(v76 + 8))(v45, v48);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v49 = v91;
  *v91 = v108;
  v51 = v95;
  v50 = v96;
  (*(v95 + 104))(v49, enum case for MotionPlaybackPolicy.custom(_:), v96);
  v52 = v78;
  v53 = v92;
  MCUINamespace<A>.motionCollection(policy:)();
  (*(v51 + 8))(v49, v50);
  (*(v94 + 8))(v47, v53);
  v54 = v97;
  v55 = v81;
  View.mcui.getter();
  (*(v88 + 8))(v52, v55);
  v57 = v100;
  v56 = v101;
  v58 = v102;
  (*(v101 + 104))(v100, enum case for MotionCacheDownloadPolicy.whileVisible(_:), v102);
  v59 = v79;
  v60 = v98;
  MCUINamespace<A>.motionCacheDownload(policy:)();
  (*(v56 + 8))(v57, v58);
  (*(v99 + 8))(v54, v60);
  v61 = v85;
  v62 = *(v85 + 16);
  v63 = v83;
  v64 = v89;
  v62(v83, v59, v89);
  v65 = *(v61 + 8);
  v65(v59, v64);
  v62(v103, v63, v64);
  return (v65)(v63, v64);
}

uint64_t sub_100662AFC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
}

uint64_t sub_100662C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119BDB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100662C9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10065E5A0(a1, v4, v5, v6);
}

uint64_t sub_100662D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100662E14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  v7 = *(v4 + 16);
  v5 = v4 + 16;
  v6 = v7;
  if (!v7 || *(v5 + 16 * v6) != result)
  {
    if (qword_10117F230 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101181F90);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446210;

      sub_10010FC20(&qword_101182128);
      v13 = String.init<A>(describing:)();
      v15 = sub_1000105AC(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Become active container=%{public}s", v11, 0xCu);
      sub_10000959C(v12);
    }

    v16 = *(a2 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100059EE8(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100059EE8((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    v19 = &v16[2 * v18];
    v19[4] = v3;
    v19[5] = &off_1010B9010;
    v20 = *(a2 + 32);
    *(a2 + 32) = v16;

    sub_100059F0C(v20);
  }

  return result;
}

uint64_t sub_100663070(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  v5 = *(v4 + 16);
  v6 = (v4 + 16 + 16 * v5);
  while (v5)
  {
    --v5;
    v7 = *v6;
    v6 -= 2;
    if (v7 == result)
    {
      if (qword_10117F230 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, qword_101181F90);
      v9 = v3;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136446210;
        v14 = v9;
        sub_10010FC20(&qword_101182128);
        v15 = String.init<A>(describing:)();
        v17 = sub_1000105AC(v15, v16, &v20);

        *(v12 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v10, v11, "Resign active container=%{public}s", v12, 0xCu);
        sub_10000959C(v13);
      }

      v19 = *(a2 + 32);

      sub_1004F3F58(v5);
      swift_unknownObjectRelease();
      v18 = *(a2 + 32);
      *(a2 + 32) = v19;
      sub_100059F0C(v18);
    }
  }

  return result;
}

uint64_t sub_100663250(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + 16);
  v5 = (v3 + 16 + 16 * v4);
  while (v4)
  {
    --v4;
    v6 = *v5;
    v5 -= 2;
    if (v6 == result)
    {
      if (qword_10117F230 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000060E4(v7, qword_101181F90);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 136446210;
        v17 = v11;

        sub_10010FC20(&qword_101182128);
        v12 = String.init<A>(describing:)();
        v14 = sub_1000105AC(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Resign active container=%{public}s", v10, 0xCu);
        sub_10000959C(v11);
      }

      v16 = *(a2 + 32);

      sub_1004F3F58(v4);
      swift_unknownObjectRelease();
      v15 = *(a2 + 32);
      *(a2 + 32) = v16;
      sub_100059F0C(v15);
    }
  }

  return result;
}

uint64_t sub_100663438(unsigned __int16 a1, unsigned __int16 a2)
{
  if (a1 >> 14)
  {
    if (a1 >> 14 != 1)
    {
      if (a1 == 0x8000)
      {
        if (a2 == 0x8000)
        {
          return 1;
        }
      }

      else if (a2 == 32769)
      {
        return 1;
      }

      return 0;
    }

    if ((a2 & 0xC000) != 0x4000)
    {
      return 0;
    }
  }

  else if (a2 >= 0x4000u)
  {
    return 0;
  }

  if ((a2 ^ a1))
  {
    return 0;
  }

  else
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }
}

unint64_t sub_1006634C0()
{
  result = qword_1011879E0;
  if (!qword_1011879E0)
  {
    sub_1001109D0(&qword_1011879E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011879E0);
  }

  return result;
}

void sub_100663524()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_mode) = 1;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) = 0;
  v8 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference) = 0;
  v9 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog) = 0;
  v10 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
  Artwork.init()(&v20[-v6]);
  sub_1005579F0(v7, v4);
  v11 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v12 = Artwork.View.init(configuration:)(v4);
  sub_1006638C0(v7, type metadata accessor for Artwork);
  *(v1 + v10) = v12;
  v13 = OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView;
  *(v1 + v13) = [objc_allocWithZone(UIView) init];
  v14 = (v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_lastSeenBounds);
  *v14 = 0u;
  v14[1] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionAnimationDuration) = 0x3FC3333333333333;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) = 0;
  v15 = v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainer;
  v17 = sub_10010FC20(&qword_10119BDB8);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView) = 0;
  v18 = OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionState;
  type metadata accessor for SquareMotionState(0);
  v19 = swift_allocObject();
  v20[15] = 1;
  Published.init(initialValue:)();
  v20[14] = 1;
  Published.init(initialValue:)();
  *(v1 + v18) = v19;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isSquareMotionSizeTransitioning) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath) = 0;
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10066386C()
{
  result = qword_10119C170;
  if (!qword_10119C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C170);
  }

  return result;
}

uint64_t sub_1006638C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100663984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v3 - 8);
  v5 = &v26[-v4 - 8];
  v6 = type metadata accessor for RecentlyAddedMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11 - 8];
  v13 = type metadata accessor for GenericMusicItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100008FE4(a1, v34);
  sub_10010FC20(&unk_10118AB50);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
    sub_100168400(v34);
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v18(v12, 1, 1, v13);
    sub_1000095E8(v12, &unk_101189DA0);
    sub_100008FE4(a1, v34);
    v19 = swift_dynamicCast();
    v20 = *(v7 + 56);
    if (v19)
    {
      v20(v5, 0, 1, v6);
      (*(v7 + 32))(v9, v5, v6);
      sub_100169B0C(v34);
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v20(v5, 1, 1, v6);
      sub_1000095E8(v5, &unk_101197040);
      sub_100008FE4(a1, v34);
    }
  }

  sub_100663E60(v34, v26);
  if (v27)
  {
    sub_10010FC20(&qword_10119C180);
    if (swift_dynamicCast())
    {
      if (*(&v29 + 1))
      {
        sub_100059A8C(&v28, v31);
        v21 = v32;
        v22 = v33;
        sub_10000954C(v31, v32);
        (*(v22 + 8))(v21, v22);
        sub_1000095E8(v34, &qword_10118B990);
        return sub_10000959C(v31);
      }
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
    }
  }

  else
  {
    sub_1000095E8(v26, &qword_10118B990);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  sub_1000095E8(v34, &qword_10118B990);
  sub_1000095E8(&v28, &qword_10119C178);
  v24 = type metadata accessor for EntityIdentifier();
  return (*(*(v24 - 8) + 56))(v25, 1, 1, v24);
}

uint64_t sub_100663E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118B990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100663EE4()
{
  v0 = type metadata accessor for LayoutProperties();
  sub_100006080(v0, qword_101219250);
  sub_1000060E4(v0, qword_101219250);
  LayoutProperties.init()();
  return LayoutProperties.stackOrientation.setter();
}

double sub_100663F3C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), char a9)
{
  v44 = type metadata accessor for HeightConstrainedHStackLayout.Cache();
  v17 = *(v44 + 28);
  if (!*(*(a6 + v17) + 16) || (*(a6 + 25) & 1) != 0 || (static ProposedViewSize.== infix(_:_:)() & 1) == 0)
  {
    *a6 = a1;
    *(a6 + 8) = a2 & 1;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4 & 1;
    *(a6 + 25) = 0;
    sub_1006641A4(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8, a9 & 1);
  }

  v18 = *(a6 + v17);
  v19 = *(v18 + 16);
  v20 = 0.0;
  v21 = 0.0;
  if (v19)
  {
    if (v19 == 1)
    {
      v22 = 0;
LABEL_11:
      v27 = v19 - v22;
      v28 = (v18 + 16 * v22 + 32);
      do
      {
        v29 = *v28;
        v28 += 2;
        v21 = v21 + v29;
        --v27;
      }

      while (v27);
      goto LABEL_13;
    }

    v22 = v19 & 0x7FFFFFFFFFFFFFFELL;
    v23 = (v18 + 48);
    v24 = v19 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v25 = *(v23 - 2);
      v26 = *v23;
      v23 += 4;
      v21 = v21 + v25 + v26;
      v24 -= 2;
    }

    while (v24);
    if (v19 != v22)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v30 = sub_100665858(a5, a7, a8, a9 & 1);
  v31 = v30[1].u64[0];
  if (!v31)
  {
    goto LABEL_21;
  }

  if (v31 <= 3)
  {
    v32 = 0;
    v20 = 0.0;
LABEL_19:
    v35 = v31 - v32;
    v36 = &v30[2].i64[v32];
    do
    {
      v37 = *v36++;
      v20 = v20 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_21;
  }

  v32 = v31 & 0x7FFFFFFFFFFFFFFCLL;
  i64 = v30[3].i64;
  v20 = 0.0;
  v34 = v31 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(i64 - 2) + *(i64 - 1) + *i64 + i64[1];
    i64 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v31 != v32)
  {
    goto LABEL_19;
  }

LABEL_21:

  if (*(a6 + *(v44 + 24) + 8))
  {
    v38 = *(v18 + 16);
    if (v38)
    {
      v39 = (v18 + 40);
      v40 = 0.0;
      do
      {
        v41 = *v39;
        v39 += 2;
        v42 = v41;
        if (v40 <= v41)
        {
          v40 = v42;
        }

        --v38;
      }

      while (v38);
    }
  }

  return v21 + v20;
}

uint64_t sub_1006641A4(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), unsigned __int8 a9)
{
  v211 = a8;
  v210 = a7;
  v193 = a6;
  v207 = a4;
  v208 = a3;
  v190 = a2;
  v189 = *&a1;
  v201 = type metadata accessor for ViewSpacing();
  v185 = *(v201 - 8);
  __chkstk_darwin(v201);
  v200 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v199 = &v185 - v12;
  v13 = sub_10010FC20(&qword_10119C1B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v205 = &v185 - v17;
  v224 = sub_10010FC20(&qword_1011920F8);
  v195 = *(v224 - 8);
  __chkstk_darwin(v224);
  v220 = (&v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v219 = &v185 - v20;
  __chkstk_darwin(v21);
  v223 = (&v185 - v22);
  v187 = sub_10010FC20(&qword_10119C1A0);
  __chkstk_darwin(v187);
  v196 = (&v185 - v23);
  v24 = type metadata accessor for LayoutSubviews();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v185 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10010FC20(&qword_10119C1C0);
  __chkstk_darwin(v28);
  v222 = &v185 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v185 - v31;
  v225 = type metadata accessor for LayoutSubview();
  v213 = *(v225 - 8);
  __chkstk_darwin(v225);
  v209 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v198 = &v185 - v35;
  __chkstk_darwin(v36);
  v215 = &v185 - v37;
  __chkstk_darwin(v38);
  v194 = &v185 - v39;
  __chkstk_darwin(v40);
  v206 = &v185 - v41;
  __chkstk_darwin(v42);
  v221 = (&v185 - v43);
  __chkstk_darwin(v44);
  v218 = &v185 - v45;
  v47 = __chkstk_darwin(v46);
  v186 = (&v185 - v48);
  v188 = v25;
  v49 = *(v25 + 16);
  v214 = a5;
  v203 = (v25 + 16);
  v197 = v49;
  v49(v27, a5, v24, v47);
  v50 = sub_1006673C8(&qword_10119C1B8);
  v202 = v27;
  v191 = v50;
  dispatch thunk of Sequence.makeIterator()();
  v204 = v28;
  v51 = *(v28 + 36);
  v52 = sub_1006673C8(&qword_10119C1C8);
  dispatch thunk of Collection.endIndex.getter();
  v53 = *&v32[v51] == v228;
  v212 = v24;
  v192 = v52;
  if (v53)
  {
LABEL_5:
    sub_1000095E8(v32, &qword_10119C1C0);
    v59 = 0;
    v60 = 1;
  }

  else
  {
    v54 = (v213 + 16);
    v217 = (v213 + 32);
    v216 = (v213 + 8);
    while (1)
    {
      v55 = dispatch thunk of Collection.subscript.read();
      v56 = v218;
      v57 = v225;
      (*v54)(v218);
      v55(&v228, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v58 = *v217;
      (*v217)(v221, v56, v57);
      sub_1006672FC();
      LayoutSubview.subscript.getter();
      if (v228 == 1)
      {
        break;
      }

      (*v216)(v221, v57);
      dispatch thunk of Collection.endIndex.getter();
      if (*&v32[v51] == v228)
      {
        goto LABEL_5;
      }
    }

    sub_1000095E8(v32, &qword_10119C1C0);
    v61 = v186;
    v58(v186, v221, v57);
    LOBYTE(v228) = v190 & 1;
    v227 = v207 & 1;
    LayoutSubview.sizeThatFits(_:)();
    v63 = v62;
    (*v216)(v61, v57);
    v60 = 0;
    v59 = v63;
  }

  v208 = v59;
  v64 = type metadata accessor for HeightConstrainedHStackLayout.Cache();
  v65 = v193;
  v66 = v193 + v64[6];
  *v66 = v59;
  *(v66 + 8) = v60;
  v67 = v64[5];
  v68 = static LayoutSubviews.== infix(_:_:)();
  v207 = v60;
  v186 = v64;
  if ((v68 & 1) != 0 && (v69 = *(v65 + v64[8])) != 0)
  {
    v196 = sub_10018E4B4(v69);
    v70 = v214;
    v71 = v212;
    v72 = v197;
  }

  else
  {
    v73 = v196;
    v70 = v214;
    v71 = v212;
    v72 = v197;
    v197(v196, v214, v212);
    swift_getKeyPath();
    v221 = v67;
    sub_100667458();
    v74 = Sequence.sorted<A>(by:comparator:)();

    sub_1000095E8(v73, &qword_10119C1A0);
    KeyPath = swift_getKeyPath();
    v76 = sub_100666B34(KeyPath, v74);

    v196 = v76;
    v77 = sub_10018E5E4(v76);
    v78 = v64[8];

    *(v65 + v78) = v77;
    (*(v188 + 24))(v221 + v65, v70, v71);
  }

  LODWORD(v221) = a9;
  v72(v202, v70, v71);
  v79 = v222;
  dispatch thunk of Sequence.makeIterator()();
  v80 = *(v204 + 9);
  dispatch thunk of Collection.endIndex.getter();
  v81 = 0.0;
  v82 = 0.0;
  v83 = v206;
  if (*(v79 + v80) != v228)
  {
    v84 = (v213 + 16);
    v85 = (v213 + 8);
    v86 = v225;
    do
    {
      v87 = dispatch thunk of Collection.subscript.read();
      (*v84)(v83);
      v87(&v228, 0);
      v79 = v222;
      dispatch thunk of Collection.formIndex(after:)();
      static ProposedViewSize.zero.getter();
      LOBYTE(v228) = v88 & 1;
      v227 = v89 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v91 = v90;
      (*v85)(v83, v86);
      v82 = v82 + v91;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v79 + v80) != v228);
  }

  sub_1000095E8(v79, &qword_10119C1C0);
  v92 = sub_100665858(v214, v210, v211, v221 & 1);
  v93 = v92[1].u64[0];
  v94 = v205;
  v95 = v196;
  if (!v93)
  {
    goto LABEL_22;
  }

  if (v93 > 3)
  {
    v96 = v93 & 0x7FFFFFFFFFFFFFFCLL;
    i64 = v92[3].i64;
    v81 = 0.0;
    v98 = v93 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v81 = v81 + *(i64 - 2) + *(i64 - 1) + *i64 + i64[1];
      i64 += 4;
      v98 -= 4;
    }

    while (v98);
    if (v93 == v96)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v96 = 0;
    v81 = 0.0;
  }

  v99 = v93 - v96;
  v100 = &v92[2].i64[v96];
  do
  {
    v101 = *v100++;
    v81 = v81 + v101;
    --v99;
  }

  while (v99);
LABEL_22:

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (result < 0)
  {
    goto LABEL_79;
  }

  v103 = result;
  if (result)
  {
    type metadata accessor for CGSize(0);
    v104 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v104[2] = v103;
    v210 = v104;
    bzero(v104 + 4, 16 * v103);
  }

  else
  {
    v210 = _swiftEmptyArrayStorage;
  }

  v105 = v215;
  v106 = v95[2];
  if (!v106)
  {
LABEL_76:

    v183 = v186[7];
    v184 = v193;

    *(v184 + v183) = v210;
    return result;
  }

  v107 = v189;
  if (v190)
  {
    v107 = 10.0;
  }

  v221 = (v213 + 32);
  v203 = (v213 + 56);
  v218 = (v213 + 16);
  v211 = (v213 + 48);
  v197 = (v185 + 8);
  v216 = (v213 + 8);
  v108 = v107 - v82 - v81;
  v206 = (v210 + 4);
  v204 = v15;
  while (1)
  {
    v109 = v95[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v106 - 1) > v95[3] >> 1)
    {
      v95 = sub_10049AB80(isUniquelyReferenced_nonNull_native, v106, 1, v95);
    }

    sub_1000095E8((v95 + 4), &unk_101183270);
    v111 = v95[2];
    memmove(v95 + 4, v95 + 5, 8 * v111 - 8);
    v95[2] = v111 - 1;
    v112 = *(v109 + 16);
    v214 = v109;
    v196 = v95;
    if (v112)
    {
      v228 = _swiftEmptyArrayStorage;
      sub_10066CE08(0, v112, 0);
      v113 = v228;
      v114 = v109 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v217 = *(v195 + 72);
      v222 = v112;
      v115 = v112;
      v116 = v221;
      do
      {
        v117 = v223;
        sub_1000089F8(v114, v223, &qword_1011920F8);
        v118 = v219;
        sub_1000089F8(v117, v219, &qword_1011920F8);
        v119 = v225;
        v120 = *(v224 + 48);
        v121 = v220;
        *v220 = *v118;
        (*v116)(v121 + v120, &v118[v120], v119);
        static ProposedViewSize.zero.getter();
        v227 = v122 & 1;
        v226 = v123 & 1;
        LayoutSubview.sizeThatFits(_:)();
        v125 = v124;
        sub_1000095E8(v121, &qword_1011920F8);
        sub_1000095E8(v117, &qword_1011920F8);
        v228 = v113;
        v127 = v113[2];
        v126 = v113[3];
        v128 = v127 + 1;
        if (v127 >= v126 >> 1)
        {
          sub_10066CE08((v126 > 1), v127 + 1, 1);
          v113 = v228;
        }

        v113[2] = v128;
        v113[v127 + 4] = v125;
        v114 += v217;
        --v115;
      }

      while (v115);
      v15 = v204;
      v94 = v205;
      v129 = v225;
      v105 = v215;
      v112 = v222;
      if (v128 <= 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v113 = _swiftEmptyArrayStorage;
      v128 = _swiftEmptyArrayStorage[2];
      if (!v128)
      {
        v131 = 0.0;
        v129 = v225;
        goto LABEL_49;
      }

      v129 = v225;
      if (v128 <= 3)
      {
LABEL_41:
        v130 = 0;
        v131 = 0.0;
LABEL_47:
        v134 = v128 - v130;
        v135 = 8 * v130 + 32;
        do
        {
          v131 = v131 + *(v113 + v135);
          v135 += 8;
          --v134;
        }

        while (v134);
        goto LABEL_49;
      }
    }

    v130 = v128 & 0xFFFFFFFFFFFFFFFCLL;
    v132 = (v113 + 6);
    v131 = 0.0;
    v133 = v128 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v131 = v131 + *(v132 - 2) + *(v132 - 1) + *v132 + v132[1];
      v132 += 4;
      v133 -= 4;
    }

    while (v133);
    if (v128 != v130)
    {
      goto LABEL_47;
    }

LABEL_49:

    v202 = *v203;
    v202(v94, 1, 1, v129);
    if (v112)
    {
      v228 = _swiftEmptyArrayStorage;
      sub_10066CDC4(0, v112, 0);
      v136 = v228;
      v137 = v214 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
      v212 = *(v195 + 72);
      v138 = v194;
      v139 = v221;
      do
      {
        v222 = v112;
        v140 = v129;
        v141 = v223;
        sub_1000089F8(v137, v223, &qword_1011920F8);
        v142 = v219;
        sub_1000089F8(v141, v219, &qword_1011920F8);
        v143 = v139;
        v144 = *(v224 + 48);
        v145 = v220;
        *v220 = *v142;
        v217 = *v143;
        (v217)(v145 + v144, v142 + v144, v140);
        (*v218)(v138, v145 + v144, v140);
        sub_1000095E8(v145, &qword_1011920F8);
        sub_1000095E8(v141, &qword_1011920F8);
        v228 = v136;
        v147 = v136[2];
        v146 = v136[3];
        if (v147 >= v146 >> 1)
        {
          sub_10066CDC4(v146 > 1, v147 + 1, 1);
          v136 = v228;
        }

        v136[2] = v147 + 1;
        (v217)(v136 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v147, v138, v140);
        v137 += v212;
        v112 = (v222 - 1);
        v129 = v140;
        v139 = v143;
      }

      while (v222 != 1);
      v15 = v204;
      v94 = v205;
      v105 = v215;
    }

    else
    {
      v136 = _swiftEmptyArrayStorage;
    }

    v148 = v136[2];
    if (v148)
    {
      v149 = *(v213 + 80);
      v217 = v136;
      v150 = v136 + ((v149 + 32) & ~v149);
      v151 = *(v213 + 72);
      v152 = *(v213 + 16);
      v153 = 0.0;
      v152(v105, v150, v129);
      while (1)
      {
        sub_1000089F8(v94, v15, &qword_10119C1B0);
        if ((*v211)(v15, 1, v129) == 1)
        {
          (*v216)(v105, v129);
          sub_1000095E8(v15, &qword_10119C1B0);
        }

        else
        {
          v222 = *v221;
          v154 = v198;
          (v222)(v198, v15, v129);
          v155 = v199;
          LayoutSubview.spacing.getter();
          v156 = v200;
          LayoutSubview.spacing.getter();
          ViewSpacing.distance(to:along:)();
          v158 = v157;
          v159 = *v197;
          v160 = v156;
          v161 = v152;
          v162 = v151;
          v163 = v204;
          v164 = v201;
          (*v197)(v160, v201);
          v165 = v155;
          v94 = v205;
          v166 = v164;
          v15 = v163;
          v151 = v162;
          v152 = v161;
          v129 = v225;
          v159(v165, v166);
          v105 = v215;
          (*v216)(v154, v129);
          sub_1000095E8(v94, &qword_10119C1B0);
          v153 = v153 + v158;
          (v222)(v94, v105, v129);
          v202(v94, 0, 1, v129);
        }

        v150 += v151;
        if (!--v148)
        {
          break;
        }

        v152(v105, v150, v129);
      }
    }

    else
    {

      v153 = 0.0;
    }

    v108 = v108 + v131 + v153;
    v167 = *(v214 + 16);
    if (v167)
    {
      break;
    }

LABEL_31:

    sub_1000095E8(v94, &qword_10119C1B0);
    v95 = v196;
    v106 = v196[2];
    if (!v106)
    {
      goto LABEL_76;
    }
  }

  v168 = 0;
  v169 = v214 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
  v217 = *(v195 + 72);
  v222 = (1 - v167);
  v170 = v167 - 1;
  while (1)
  {
    v171 = v223;
    sub_1000089F8(v169, v223, &qword_1011920F8);
    v172 = *v171;
    v173 = v224;
    v174 = *v216;
    (*v216)((v171 + *(v224 + 48)), v225);
    sub_1000089F8(v169, v171, &qword_1011920F8);
    v175 = v171 + *(v173 + 48);
    v176 = v225;
    v177 = v209;
    (*v221)(v209, v175, v225);
    LOBYTE(v228) = 0;
    v227 = v207;
    LayoutSubview.sizeThatFits(_:)();
    v179 = v178;
    v181 = v180;
    result = (v174)(v177, v176);
    if ((v172 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v172 >= v210[2])
    {
      goto LABEL_78;
    }

    v182 = &v206[16 * v172];
    *v182 = v179;
    *(v182 + 1) = v181;
    if (v108 - v179 >= 0.0)
    {
      v108 = v108 - v179;
    }

    else
    {
      v108 = 0.0;
    }

    if (!&v222[v168])
    {
      v15 = v204;
      v94 = v205;
      v105 = v215;
      goto LABEL_31;
    }

    ++v168;
    v169 += v217;
    --v170;
    if (v168 >= *(v214 + 16))
    {
      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

int64x2_t *sub_100665858(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    type metadata accessor for LayoutSubviews();
    sub_1006673C8(&qword_10119C1C8);
    dispatch thunk of Collection.startIndex.getter();
    result = dispatch thunk of Collection.endIndex.getter();
    v6 = v24;
    v7 = v23 - v24;
    if (v23 >= v24)
    {
      if (!__OFSUB__(v23, v24))
      {
        v8 = __OFSUB__(v7, 1);
        v9 = v7 - 1;
        if (!v8)
        {
          result = sub_1006674BC(v24, v9 & ~(v9 >> 63), v23, v24, v23);
          if (v10)
          {
            v11 = v23;
          }

          else
          {
            v11 = result;
          }

          if (v11 >= v24)
          {
            __chkstk_darwin(result);
            v22[2] = a1;
            return sub_1001FACD0(sub_100667524, v22, v6, v12);
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  type metadata accessor for LayoutSubviews();
  sub_1006673C8(&qword_10119C1C8);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  v14 = &result[-1].u64[1] + 7;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_23;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result == 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  result[1].i64[0] = v14;
  v16 = &result[2];
  if (v14 < 4)
  {
    v17 = 0;
LABEL_19:
    v21 = v15 + ~v17;
    do
    {
      *v16++ = a3;
      --v21;
    }

    while (v21);
    return result;
  }

  v17 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  v16 += v14 & 0x7FFFFFFFFFFFFFFCLL;
  v18 = vdupq_n_s64(a3);
  v19 = result + 3;
  v20 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19[-1] = v18;
    *v19 = v18;
    v19 += 2;
    v20 -= 4;
  }

  while (v20);
  if (v14 != v17)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_100665A74(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, unsigned int (**a8)(char *, uint64_t, uint64_t), CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, unsigned __int8 a13)
{
  v112 = a8;
  v121 = a7;
  v137 = a6;
  v134 = a5;
  v131 = a4;
  v130 = a3;
  v129 = a2;
  v128 = a1;
  v105 = a12;
  v104 = a11;
  v110 = a13;
  v103 = type metadata accessor for ViewSpacing();
  v133 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v100 - v17;
  v138 = sub_10010FC20(&qword_1011920F8);
  v122 = *(v138 - 8);
  __chkstk_darwin(v138 - 8);
  v125 = &v100 - v18;
  v19 = type metadata accessor for LayoutSubview();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v132 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v100 - v23;
  __chkstk_darwin(v25);
  v108 = &v100 - v26;
  v27 = sub_10010FC20(&qword_10119C198);
  __chkstk_darwin(v27 - 8);
  v127 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v126 = &v100 - v30;
  v31 = type metadata accessor for LayoutSubviews();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10010FC20(&qword_10119C1A0);
  __chkstk_darwin(v35 - 8);
  v37 = &v100 - v36;
  v38 = sub_10010FC20(&qword_10119C1A8);
  v39 = v38 - 8;
  __chkstk_darwin(v38);
  v41 = &v100 - v40;
  v42 = sub_10010FC20(&qword_10119C1B0);
  __chkstk_darwin(v42 - 8);
  v120 = &v100 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v44);
  v46 = *(v20 + 56);
  v135 = &v100 - v47;
  v113 = v46;
  v46(v45);
  (*(v32 + 16))(v37, v134, v31);
  v48 = v37;
  v49 = v24;
  (*(v32 + 32))(v34, v48, v31);
  sub_1006673C8(&qword_10119C1B8);
  v136 = v31;
  dispatch thunk of Sequence.makeIterator()();
  v50 = v20 + 56;
  v51 = v132;
  v106 = *(v39 + 44);
  *&v41[v106] = 0;
  v52 = *(sub_10010FC20(&qword_10119C1C0) + 36);
  v53 = sub_1006673C8(&qword_10119C1C8);
  v124 = 0;
  v107 = (v50 - 40);
  v54 = (v50 - 24);
  v123 = (v122 + 7);
  v122 += 6;
  v118 = (v50 - 8);
  v114 = v50;
  v109 = (v50 - 48);
  v55 = v112;
  v100 = (v133 + 8);
  v111 = v110 & 1;
  v56 = 0.0;
  v116 = v49;
  v115 = v41;
  v119 = (v50 - 24);
  v117 = v53;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v41[v52] == v140[0])
    {
      v58 = v49;
      v59 = 1;
      v60 = v127;
      v61 = v126;
    }

    else
    {
      v62 = dispatch thunk of Collection.subscript.read();
      v63 = v108;
      (*v107)(v108);
      v62(v140, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v64 = *(v138 + 48);
      v65 = v125;
      v66 = v124;
      *v125 = v124;
      (*v54)(&v65[v64], v63, v19);
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        __break(1u);
        goto LABEL_40;
      }

      v58 = v49;
      v124 = v68;
      *&v41[v106] = v68;
      v60 = v127;
      sub_10003D17C(v125, v127, &qword_1011920F8);
      v59 = 0;
      v61 = v126;
    }

    v69 = v138;
    (*v123)(v60, v59, 1, v138);
    sub_10003D17C(v60, v61, &qword_10119C198);
    v70 = (*v122)(v61, 1, v69);
    v71 = v137;
    if (v70 == 1)
    {
      goto LABEL_38;
    }

    v72 = v52;
    v133 = *v61;
    v73 = v61;
    v74 = *v54;
    (*v54)(v58, &v73[*(v138 + 48)], v19);
    v75 = v120;
    sub_1000089F8(v135, v120, &qword_10119C1B0);
    if ((*v118)(v75, 1, v19) == 1)
    {
      sub_1000095E8(v75, &qword_10119C1B0);
    }

    else
    {
      v74(v51, v75, v19);
      v76 = *&v55;
      if (v110)
      {
        v77 = v19;
        v78 = v101;
        LayoutSubview.spacing.getter();
        v79 = v102;
        LayoutSubview.spacing.getter();
        ViewSpacing.distance(to:along:)();
        v76 = v80;
        v81 = *v100;
        v82 = v79;
        v83 = v103;
        (*v100)(v82, v103);
        v84 = v78;
        v19 = v77;
        v85 = v83;
        v51 = v132;
        v81(v84, v85);
        v71 = v137;
      }

      (*v109)(v51, v19);
      v56 = v56 + v76;
    }

    v86 = *(*(v71 + *(type metadata accessor for HeightConstrainedHStackLayout.Cache() + 28)) + 16);
    v53 = v117;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v87 = dispatch thunk of Collection.distance(from:to:)();
    v88 = v137;
    v89 = v86 == v87;
    v90 = v121;
    v52 = v72;
    if (!v89 || (*(v137 + 25) & 1) != 0 || (LOBYTE(v140[0]) = v129 & 1, v139 = v131 & 1, (static ProposedViewSize.== infix(_:_:)() & 1) == 0))
    {
      LOBYTE(v140[0]) = v129 & 1;
      v139 = v131 & 1;
      sub_1006641A4(v128, v129 & 1, v130, v131 & 1, v134, v88, v90, v112, v111);
    }

    type metadata accessor for CGSize(0);
    Array.subscript.getter(v91, v140);
    v92 = v141 ? 0.0 : *v140;
    v93 = v141 ? 0.0 : *&v140[1];
    v54 = v119;
    if (v92 == 0.0 && v93 == 0.0)
    {
      break;
    }

    static VerticalAlignment.top.getter();
    if (static VerticalAlignment.== infix(_:_:)())
    {
      static UnitPoint.topLeading.getter();
      v49 = v116;
      v51 = v132;
      v41 = v115;
    }

    else
    {
      static VerticalAlignment.center.getter();
      v94 = static VerticalAlignment.== infix(_:_:)();
      v51 = v132;
      if (v94)
      {
        v142.origin.x = a9;
        v142.origin.y = a10;
        v142.size.width = v104;
        v142.size.height = v105;
        CGRectGetHeight(v142);
        static UnitPoint.leading.getter();
      }

      else
      {
        static VerticalAlignment.bottom.getter();
        if (static VerticalAlignment.== infix(_:_:)())
        {
          v143.origin.x = a9;
          v143.origin.y = a10;
          v143.size.width = v104;
          v143.size.height = v105;
          CGRectGetHeight(v143);
          static UnitPoint.bottomLeading.getter();
        }

        else
        {
          static UnitPoint.topLeading.getter();
        }
      }

      v49 = v116;
      v41 = v115;
    }

    LOBYTE(v140[0]) = 0;
    v139 = 0;
    LayoutSubview.place(at:anchor:proposal:)();
    v57 = v135;
    sub_1000095E8(v135, &qword_10119C1B0);
    v56 = v56 + v92;
    v74(v57, v49, v19);
    (v113)(v57, 0, 1, v19);
  }

  v53 = v116;
  v41 = v115;
  if (qword_10117FC48 == -1)
  {
    goto LABEL_35;
  }

LABEL_40:
  swift_once();
LABEL_35:
  v95 = type metadata accessor for Logger();
  sub_1000060E4(v95, qword_1012193F8);
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "Cannot place subview because cachedSize even after layout is zero", v98, 2u);
  }

  (*v109)(v53, v19);
LABEL_38:
  sub_1000095E8(v41, &qword_10119C1A8);
  return sub_1000095E8(v135, &qword_10119C1B0);
}

uint64_t sub_100666800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for ViewSpacing();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for LayoutSubview();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v25 - v16;
  v18 = *a1;
  v25[1] = a2;
  LayoutSubviews.subscript.getter();
  LayoutSubview.spacing.getter();
  v19 = *(v12 + 8);
  v19(v17, v11);
  result = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    LayoutSubviews.subscript.getter();
    LayoutSubview.spacing.getter();
    v19(v14, v11);
    ViewSpacing.distance(to:along:)();
    v22 = v21;
    v23 = v27;
    v24 = *(v26 + 8);
    v24(v7, v27);
    result = (v24)(v10, v23);
    *v28 = v22;
  }

  return result;
}

double sub_100666A44()
{
  static ProposedViewSize.infinity.getter();
  LayoutSubview.sizeThatFits(_:)();
  v1 = v0;
  static ProposedViewSize.zero.getter();
  LayoutSubview.sizeThatFits(_:)();
  return v1 - v2;
}

double sub_100666AA8@<D0>(double *a1@<X8>)
{
  static ProposedViewSize.infinity.getter();
  LayoutSubview.sizeThatFits(_:)();
  v3 = v2;
  static ProposedViewSize.zero.getter();
  LayoutSubview.sizeThatFits(_:)();
  result = v3 - v4;
  *a1 = result;
  return result;
}

void *sub_100666B34(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = sub_10010FC20(&qword_1011920F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v41 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = v34 - v7;
  __chkstk_darwin(v8);
  v10 = v34 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = sub_10010FC20(&qword_1011920F0);
  v13 = *(v4 + 72);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v36 = *(v4 + 80);
  v37 = v12;
  v15 = swift_allocObject();
  v35 = xmmword_100EBC6B0;
  *(v15 + 16) = xmmword_100EBC6B0;
  sub_1000089F8(a2 + v14, v15 + v14, &qword_1011920F8);
  v16 = v11 - 1;
  if (v11 != 1)
  {

    v34[1] = a2;
    v19 = v13 + v14 + a2;
    v40 = _swiftEmptyArrayStorage;
    v20 = v14;
    while (1)
    {
      sub_1000089F8(v19, v10, &qword_1011920F8);
      if (!*(v15 + 16))
      {
        break;
      }

      v22 = v20;
      v23 = v38;
      sub_1000089F8(v15 + v20, v38, &qword_1011920F8);
      swift_getAtKeyPath();
      sub_1000095E8(v23, &qword_1011920F8);
      swift_getAtKeyPath();
      if (v43 == v42)
      {
        sub_1000089F8(v10, v41, &qword_1011920F8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10049ACD8(0, *(v15 + 16) + 1, 1, v15);
        }

        v25 = *(v15 + 16);
        v24 = *(v15 + 24);
        if (v25 >= v24 >> 1)
        {
          v15 = sub_10049ACD8(v24 > 1, v25 + 1, 1, v15);
        }

        sub_1000095E8(v10, &qword_1011920F8);
        *(v15 + 16) = v25 + 1;
        v21 = v15 + v22 + v25 * v13;
        v20 = v22;
        sub_10003D17C(v41, v21, &qword_1011920F8);
      }

      else
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = v40;
        }

        else
        {
          v26 = sub_10049AB80(0, v40[2] + 1, 1, v40);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_10049AB80((v27 > 1), v28 + 1, 1, v26);
        }

        v26[2] = v28 + 1;
        v40 = v26;
        v26[v28 + 4] = v15;
        v20 = v22;
        v29 = swift_allocObject();
        *(v29 + 16) = v35;
        sub_10003D17C(v10, v29 + v22, &qword_1011920F8);

        v15 = v29;
      }

      v19 += v13;
      if (!--v16)
      {

        v17 = v40;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_21:

  v13 = v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_27:
    v30 = sub_10049AB80(0, v13[2] + 1, 1, v13);
    goto LABEL_23;
  }

  v30 = v17;
LABEL_23:
  v32 = v30[2];
  v31 = v30[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_10049AB80((v31 > 1), v32 + 1, 1, v30);
  }

  v30[2] = v32 + 1;
  v30[v32 + 4] = v15;
  v33 = v30;

  return v33;
}

uint64_t sub_100666F78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117FAF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LayoutProperties();
  v3 = sub_1000060E4(v2, qword_101219250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100667020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeightConstrainedHStackLayout.Cache();
  v5 = v4[5];
  v6 = type metadata accessor for LayoutSubviews();
  result = (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 256;
  v8 = a2 + v4[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  *(a2 + v4[7]) = _swiftEmptyArrayStorage;
  *(a2 + v4[8]) = 0;
  return result;
}

void (*sub_100667208(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

unint64_t sub_1006672FC()
{
  result = qword_10119C188;
  if (!qword_10119C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C188);
  }

  return result;
}

unint64_t sub_100667374()
{
  result = qword_10119C190;
  if (!qword_10119C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C190);
  }

  return result;
}

uint64_t sub_1006673C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for HeightConstrainedHStackLayout.Cache()
{
  result = qword_10119C230;
  if (!qword_10119C230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100667458()
{
  result = qword_10119C1D0;
  if (!qword_10119C1D0)
  {
    sub_1001109D0(&qword_10119C1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C1D0);
  }

  return result;
}

uint64_t sub_1006674BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a2 >= 1)
  {
    if (v5 < 0 || v5 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v5 <= 0 && v5 > a2)
  {
    return 0;
  }

LABEL_9:
  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (result < a4 || result > a5)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_10066756C()
{
  sub_1000308A0(319, &qword_10119C240);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LayoutSubviews();
    if (v1 <= 0x3F)
    {
      sub_1000308A0(319, &qword_101194178);
      if (v2 <= 0x3F)
      {
        sub_100667658();
        if (v3 <= 0x3F)
        {
          sub_1006676B0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100667658()
{
  if (!qword_10119C248)
  {
    type metadata accessor for CGSize(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10119C248);
    }
  }
}

void sub_1006676B0()
{
  if (!qword_10119C250)
  {
    sub_1001109D0(&unk_10119C258);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10119C250);
    }
  }
}

uint64_t sub_100667714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  v5 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EnvironmentValues();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = type metadata accessor for AdaptativeContainerStack._LayoutProvider();
  __chkstk_darwin(v12);
  v31 = &v28 - v13;
  v33 = v14;
  v34 = v10;
  v36 = v14;
  v37 = v10;
  v38 = &off_1010B9548;
  v39 = v11;
  v15 = type metadata accessor for LayoutProviderStack();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  v21 = *(v3 + 48);
  if (*(v3 + 56) != 1)
  {

    static os_log_type_t.fault.getter();
    v28 = v7;
    v22 = static Log.runtimeIssuesLog.getter();
    v7 = v28;
    os_log(_:dso:log:_:_:)();

    v23 = v29;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10027AC30(v21, 0);
    (*(v8 + 8))(v23, v30);
    LOBYTE(v21) = v36;
  }

  sub_10056CABC(v7);
  v24 = v31;
  sub_100667AC0(v21, v7, v31);
  LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)(v24, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v33, v17);
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v17, v15, WitnessTable);
  v26 = *(v35 + 8);

  v26(v17, v15);
  sub_100663950(v20, v15, WitnessTable);
  return (v26)(v20, v15);
}

uint64_t sub_100667AC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AdaptativeContainerStack._LayoutProvider() + 36);
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

unint64_t sub_100667B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v12 = DynamicTypeSize.isAccessibilitySize.getter();
  if (v11 == 2 || (v11 & 1) == 0)
  {
    *(a5 + 24) = &type metadata for VStackLayout;
    result = sub_100667EEC();
  }

  else if (v12)
  {
    a1 = static VerticalAlignment.top.getter();
    *(a5 + 24) = &type metadata for HStackLayout;
    result = sub_100667F94();
  }

  else
  {
    *(a5 + 24) = &type metadata for HeightConstrainedHStackLayout;
    result = sub_100667F40();
    a1 = a2;
  }

  *(a5 + 32) = result;
  *a5 = a1;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

uint64_t sub_100667C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = swift_getKeyPath();
  *(a7 + 56) = 0;
  v8 = *(type metadata accessor for AdaptativeContainerStack() + 48);
  *(a7 + v8) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

void sub_100667CCC()
{
  sub_1000308A0(319, &qword_101194178);
  if (v0 <= 0x3F)
  {
    sub_10001F7E8();
    if (v1 <= 0x3F)
    {
      sub_10028D4F4();
      if (v2 <= 0x3F)
      {
        sub_100117C38();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100667E30()
{
  sub_1000308A0(319, &qword_10119C398);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DynamicTypeSize();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100667EEC()
{
  result = qword_10119C3A0;
  if (!qword_10119C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3A0);
  }

  return result;
}

unint64_t sub_100667F40()
{
  result = qword_10119C3A8;
  if (!qword_10119C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3A8);
  }

  return result;
}

unint64_t sub_100667F94()
{
  result = qword_10119C3B0;
  if (!qword_10119C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C3B0);
  }

  return result;
}

uint64_t sub_100667FE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (qword_10117FB08 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, qword_101219280);
  swift_retain_n();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v94 = v7;
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136447234;
    v16 = sub_10066A7FC();
    v18 = sub_1000105AC(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2050;
    v19 = [*(a1 + 32) state];

    *(v14 + 14) = v19;

    *(v14 + 22) = 2048;
    v20 = [*(a1 + 40) state];

    *(v14 + 24) = v20;

    *(v14 + 32) = 2050;
    v21 = [*(a1 + 48) state];

    *(v14 + 34) = v21;

    *(v14 + 42) = 2050;
    v22 = [*(a1 + 56) state];

    *(v14 + 44) = v22;

    _os_log_impl(&_mh_execute_header, v12, v13, "Reversing %{public}s, tCVPA=%{public}ld fPOA=%ld sPOA=%{public}ld aA=%{public}ld", v14, 0x34u);
    sub_10000959C(v15);
  }

  else
  {
  }

  _s13AnimationDataC7ContextCMa();
  v23 = swift_allocObject();
  *(a1 + 80) = v23;

  v24 = &stru_101148000;
  if (*(a1 + 73) != 1)
  {
    v38 = *(a1 + 72);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    if (v38 != 1)
    {
      if (v41)
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "reverse path 3", v52, 2u);
      }

      v53 = *(a1 + 40);
      v54 = swift_allocObject();
      *(v54 + 16) = v23;
      *(v54 + 24) = a1;
      v103 = sub_10066B618;
      v104 = v54;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_100338AB8;
      v102 = &unk_1010B9700;
      v55 = _Block_copy(&aBlock);

      v56 = v53;

      [v56 addCompletion:v55];
      _Block_release(v55);

      if ([*(a1 + 40) state] == 1)
      {
        v57 = *(a1 + 40);
        [v57 setReversed:{objc_msgSend(v57, "isReversed") ^ 1}];

        v24 = &stru_101148000;
        v31 = &selRef_setContacts_;
        goto LABEL_37;
      }

      [*(a1 + 24) setAlpha:0.0];
      v73 = *(a1 + 40);
      v74 = swift_allocObject();
      *(v74 + 16) = a1;
      *(v74 + 24) = 0;
      v103 = sub_10066B77C;
      v104 = v74;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_10002BC98;
      v102 = &unk_1010B9750;
      v75 = _Block_copy(&aBlock);

      v76 = v73;

      [v76 addAnimations:v75];
      _Block_release(v75);

      [*(a1 + 40) startAnimation];
      v24 = &stru_101148000;
      goto LABEL_36;
    }

    if (v41)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "reverse path 2 - secondPhaseStarted", v42, 2u);
    }

    if ([*(a1 + 48) state] == 1)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      v45 = &selRef_setContacts_;
      if (os_log_type_enabled(v43, v44))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "reverse path 2 - secondPhaseStarted - active", v46, 2u);
      }

      [*(a1 + 48) stopAnimation:0];
    }

    else
    {
      if ([*(a1 + 48) state] != 2)
      {
LABEL_31:
        v61 = *(a1 + 48);
        v62 = swift_allocObject();
        *(v62 + 16) = v8;
        *(v62 + 24) = 0;
        v103 = sub_10066B654;
        v104 = v62;
        aBlock = _NSConcreteStackBlock;
        v100 = 1107296256;
        v101 = sub_10002BC98;
        v102 = &unk_1010B9840;
        v63 = _Block_copy(&aBlock);
        v64 = v8;
        v65 = v61;

        [v65 addAnimations:v63];
        _Block_release(v63);

        v66 = *(a1 + 48);
        v67 = swift_allocObject();
        *(v67 + 16) = v23;
        *(v67 + 24) = a1;
        *(v67 + 32) = 0;
        v103 = sub_10066B6DC;
        v104 = v67;
        aBlock = _NSConcreteStackBlock;
        v100 = 1107296256;
        v24 = &stru_101148000;
        v101 = sub_100338AB8;
        v102 = &unk_1010B9890;
        v68 = _Block_copy(&aBlock);

        v69 = v66;

        [v69 addCompletion:v68];
        _Block_release(v68);

        [*(a1 + 48) startAnimation];
LABEL_36:
        v31 = &selRef_setContacts_;
        goto LABEL_37;
      }

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v45 = &selRef_setContacts_;
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "reverse path 2 - secondPhaseStarted - stopped", v60, 2u);
      }
    }

    [*(a1 + 48) v45[262]];
    goto LABEL_31;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "reverse path 1 - isReversed", v27, 2u);
  }

  if ([*(a1 + 48) state] == 1)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "reverse path 1 - reversing second phase", v30, 2u);
    }

    [*(a1 + 48) stopAnimation:0];
    v31 = &selRef_setContacts_;
    [*(a1 + 48) finishAnimationAtPosition:2];
    v32 = *(a1 + 48);
    v33 = swift_allocObject();
    *(v33 + 16) = v8;
    v103 = sub_10066B778;
    v104 = v33;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_10002BC98;
    v102 = &unk_1010B9958;
    v34 = _Block_copy(&aBlock);
    v35 = v32;
    v36 = v8;

    [v35 addAnimations:v34];
    _Block_release(v34);

    v37 = *(a1 + 48);
  }

  else
  {
    v47 = *(a1 + 40);
    v48 = swift_allocObject();
    v48[2] = v23;
    v48[3] = a1;
    v48[4] = v8;
    v103 = sub_10066B6E8;
    v104 = v48;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_100338AB8;
    v102 = &unk_1010B98E0;
    v49 = _Block_copy(&aBlock);

    v50 = v8;
    v51 = v47;

    [v51 addCompletion:v49];
    _Block_release(v49);

    if ([*(a1 + 40) state] == 1)
    {
      [*(a1 + 48) stopAnimation:0];
    }

    else
    {
      [*(a1 + 24) setAlpha:1.0];
    }

    v31 = &selRef_setContacts_;
    v70 = *(a1 + 40);
    v103 = sub_1005EB120;
    v104 = a1;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_10002BC98;
    v102 = &unk_1010B9908;
    v71 = _Block_copy(&aBlock);

    v72 = v70;

    [v72 addAnimations:v71];
    _Block_release(v71);

    v37 = *(a1 + 40);
  }

  [v37 startAnimation];
LABEL_37:
  v77 = *(a1 + 32);
  [v77 setReversed:{objc_msgSend(v77, "isReversed") ^ 1}];

  v78 = *(a1 + 56);
  v79 = swift_allocObject();
  *(v79 + 16) = a2;
  *(v79 + 24) = a3;
  v80 = v78;

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_100029B6C, v79);

  v81 = [*(a1 + 56) state];
  if (!v81)
  {
    v81 = [*(a1 + 56) v24[188].name];
  }

  a4(v81);
  [*(a1 + 64) stopAnimation:0];
  [*(a1 + 64) v31[262]];
  v82 = *(a1 + 64);
  v83 = swift_allocObject();
  *(v83 + 16) = v8;
  v84 = v8;
  v85 = v82;
  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, sub_1005EA90C, v83);

  [*(a1 + 64) v24[188].name];
  *(a1 + 73) = (*(a1 + 73) & 1) == 0;
  *(a1 + 72) = 1;
  v86 = swift_allocObject();
  v86[2] = v23;
  v86[3] = a1;
  v86[4] = a6;
  v86[5] = a7;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_10066B648;
  *(v87 + 24) = v86;
  swift_beginAccess();
  v88 = *(a1 + 88);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 88) = v88;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v88 = sub_10006429C(0, v88[2] + 1, 1, v88);
    *(a1 + 88) = v88;
  }

  v91 = v88[2];
  v90 = v88[3];
  if (v91 >= v90 >> 1)
  {
    v88 = sub_10006429C((v90 > 1), v91 + 1, 1, v88);
  }

  v88[2] = v91 + 1;
  v92 = &v88[2 * v91];
  v92[4] = sub_100029B94;
  v92[5] = v87;
  *(a1 + 88) = v88;
  swift_endAccess();
}

uint64_t sub_100668E18()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219268);
  sub_1000060E4(v0, qword_101219268);
  return static Logger.NowPlaying.category(_:)(0x697469736E617254, 0xEB00000000736E6FLL);
}

uint64_t sub_100668E84()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219280);
  sub_1000060E4(v0, qword_101219280);
  return static Logger.NowPlaying.category(_:)(0xD000000000000013, 0x8000000100E53AF0);
}

id sub_100668EE8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter;
  v7 = *(v1 + OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter);
  }

  else
  {
    v9 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v9 setLocale:isa];

    v11 = String._bridgeToObjectiveC()();
    [v9 setDateFormat:v11];

    v12 = *(v1 + v6);
    *(v1 + v6) = v9;
    v8 = v9;

    v7 = 0;
  }

  v13 = v7;
  return v8;
}

void sub_10066908C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink] = 0;
  *&v4[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel____lazy_storage___dateFormatter] = 0;
  v25.receiver = v4;
  v25.super_class = _s9TimeLabelCMa();
  v9 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 grayColor];
  [v11 setBackgroundColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 monospacedDigitSystemFontOfSize:17.0 weight:UIFontWeightRegular];
  [v14 setFont:v15];

  sub_10066B5C4();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = CADisplayLink.init(handler:)(sub_10066B610, v16);
  v18 = OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink;
  v19 = *&v14[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink];
  *&v14[OBJC_IVAR____TtCC5Music24NowPlayingViewController9TimeLabel_displayLink] = v17;
  v20 = v17;

  v26 = CAFrameRateRange.init(minimum:maximum:preferred:)(80.0, 120.0, 0x42F00000);
  [v20 setPreferredFrameRateRange:{*&v26.minimum, *&v26.maximum, *&v26.preferred}];

  v21 = *&v14[v18];
  if (v21)
  {
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 mainRunLoop];
    [v23 addToRunLoop:v24 forMode:NSRunLoopCommonModes];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006692E4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100668EE8();
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    v8 = [v6 stringFromDate:isa];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();

    [v5 setText:v9];
  }
}

id sub_100669500()
{
  v2.receiver = v0;
  v2.super_class = _s9TimeLabelCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006695A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 72) = 0;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v16[4] = sub_10066B774;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100338AB8;
  v16[3] = &unk_1010B9688;
  v8 = _Block_copy(v16);
  v9 = v6;

  [v9 addCompletion:v8];
  _Block_release(v8);

  v10 = *(v3 + 24);

  v10(v11);

  v12 = *(v3 + 40);
  v13 = *(v3 + 48);
  v14 = *(v3 + 16);

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, v12, v13);

  return [*(v3 + 16) startAnimationAfterDelay:*(v3 + 56)];
}

id sub_100669718(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 72) = 0;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v16[4] = sub_10066B500;
  v16[5] = v7;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100338AB8;
  v16[3] = &unk_1010B9638;
  v8 = _Block_copy(v16);
  v9 = v6;

  [v9 addCompletion:v8];
  _Block_release(v8);

  v10 = *(v3 + 40);

  v10(v11);

  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  v14 = *(v3 + 16);

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(1, v12, v13);

  return [*(v3 + 16) startAnimationAfterDelay:*(v3 + 64)];
}

uint64_t sub_10066988C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006698D4()
{
  v1 = *(v0 + 56);
  v2 = v1 >> 62;
  v3 = 0xE600000000000000;
  v4 = 0x73636972796CLL;
  if (v1 >> 62 != 1)
  {
    v4 = 0x72616C75676572;
    v3 = 0xE700000000000000;
  }

  v5 = v2 == 0;
  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6575657571;
  }

  if (v5)
  {
    v3 = 0xE500000000000000;
  }

  if ((~v1 & 0xF000000000000007) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 7104878;
  }

  if ((~v1 & 0xF000000000000007) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  _StringGuts.grow(_:)(31);
  v9._object = 0x8000000100E53C50;
  v9._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10._countAndFlagsBits = 0x3D65646F6D20;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = v7;
  v11._object = v8;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

void sub_100669A1C(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101219268);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136446210;

      v10 = sub_1006698D4();
      v12 = v11;

      v13 = sub_1000105AC(v10, v12, v22);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, a2, v8, 0xCu);
      sub_10000959C(v9);
    }

    v14 = *(v4 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      *(v4 + 16) = v16;
      if (v16 == 2)
      {
        swift_beginAccess();
        v17 = *(v4 + 24);
        v18 = *(v17 + 16);
        if (v18)
        {

          v19 = v17 + 40;
          do
          {
            v20 = *(v19 - 8);

            v20(v21);

            v19 += 16;
            --v18;
          }

          while (v18);
        }

        *(v4 + 24) = _swiftEmptyArrayStorage;
      }

      else
      {
      }
    }
  }
}

void sub_100669C5C()
{
  v1 = v0;
  v2 = 0xD000000000000012;
  *(v0 + 48) = (*(v0 + 48) & 1) == 0;
  v3 = [*(*(v0 + 32) + 16) state];
  v4 = *(v0 + 32);
  if (v3)
  {
    v5 = *(v4 + 16);
    [v5 setReversed:{objc_msgSend(v5, "isReversed") ^ 1}];

    v6 = "<NPQVC.AnimationData ";
    v7 = 0xD000000000000013;
  }

  else if (*(v4 + 72) == 1)
  {
    v8 = *(v0 + 16);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v0 + 16) = v10;
    if (v10 == 2)
    {
      swift_beginAccess();
      v11 = *(v0 + 24);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);

          v14(v15);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v0 + 24) = _swiftEmptyArrayStorage;
    }

    v16 = *(v0 + 48);
    v17 = swift_allocObject();
    swift_weakInit();

    if (v16)
    {
      sub_100669718(sub_10066B5A0, v17);

      v6 = "Position: starting";
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      sub_1006695A4(sub_10066B57C, v17);

      v6 = "ve but not complete";
      v7 = 0xD000000000000012;
    }
  }

  else
  {
    v6 = "Opacity: starting reversed";
    v7 = 0xD000000000000023;
  }

  v18 = [*(*(v1 + 40) + 16) state];
  v19 = *(v1 + 40);
  if (!v18)
  {
    if (*(v19 + 72) != 1)
    {
      v21 = "Opacity: reversing";
      v2 = 0xD000000000000022;
      goto LABEL_29;
    }

    v22 = *(v1 + 16);
    v9 = __OFSUB__(v22, 1);
    v23 = v22 - 1;
    if (!v9)
    {
      *(v1 + 16) = v23;
      if (v23 == 2)
      {
        swift_beginAccess();
        v24 = *(v1 + 24);
        v25 = *(v24 + 16);
        if (v25)
        {

          v26 = v24 + 40;
          do
          {
            v27 = *(v26 - 8);

            v27(v28);

            v26 += 16;
            --v25;
          }

          while (v25);
        }

        *(v1 + 24) = _swiftEmptyArrayStorage;
      }

      v29 = *(v1 + 48);
      v30 = swift_allocObject();
      swift_weakInit();

      if (v29)
      {
        sub_100669718(sub_10066B558, v30);

        v21 = "Opacity: starting";
        v2 = 0xD00000000000001ALL;
      }

      else
      {
        sub_1006695A4(sub_10066B534, v30);

        v21 = "e but not complete";
        v2 = 0xD000000000000011;
      }

      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    return;
  }

  v20 = *(v19 + 16);
  [v20 setReversed:{objc_msgSend(v20, "isReversed") ^ 1}];

  v21 = "Position: reversing";
LABEL_29:
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000060E4(v31, qword_101219268);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v34 = 136446722;
    v35 = sub_1006698D4();
    v37 = sub_1000105AC(v35, v36, &v40);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2082;
    v38 = sub_1000105AC(v7, v6 | 0x8000000000000000, &v40);

    *(v34 + 14) = v38;
    *(v34 + 22) = 2082;
    v39 = sub_1000105AC(v2, v21 | 0x8000000000000000, &v40);

    *(v34 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s %{public}s %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10066A204(uint64_t a1, const char *a2)
{
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219268);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22[0] = v7;
    *v6 = 136446210;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_10010FC20(&unk_101197A20);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, v22);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
    sub_10000959C(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 16);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      *(result + 16) = v14;
      if (v14 == 2)
      {
        v15 = result;
        swift_beginAccess();
        v16 = *(v15 + 24);
        v17 = *(v16 + 16);
        if (v17)
        {

          v18 = v16 + 40;
          do
          {
            v19 = *(v18 - 8);

            v19(v20);

            v18 += 16;
            --v17;
          }

          while (v17);

          v21 = v15;
        }

        else
        {
          v21 = v15;
        }

        *(v21 + 24) = _swiftEmptyArrayStorage;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10066A464()
{

  sub_1005EB32C(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_10066A52C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0x72616C75676572;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10066A5D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10066A660()
{
  String.hash(into:)();
}

Swift::Int sub_10066A6D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10066A758@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109C0F0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10066A7B8(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x657370616C6C6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10066A7FC()
{
  _StringGuts.grow(_:)(32);
  v1._object = 0x8000000100E53B10;
  v1._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x3D646E696B20;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  if (*(v0 + 16))
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (*(v0 + 16))
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 62;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10066A940(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_10117FB08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101219280);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136446210;
    swift_beginAccess();
    swift_weakLoadStrong();
    sub_10010FC20(&qword_10119C9A0);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, a3, v7, 0xCu);
    sub_10000959C(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10066AB04();
  }

  return result;
}

void sub_10066AB04()
{
  v1 = *(v0 + 96);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 96) = v3;
    if (v3 == 5)
    {
      swift_beginAccess();
      v4 = *(v0 + 88);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);
      }

      *(v0 + 88) = &_swiftEmptyArrayStorage;
    }
  }
}

id *sub_10066ABD0()
{

  return v0;
}

uint64_t sub_10066AC28()
{
  sub_10066ABD0();

  return swift_deallocClassInstance();
}

unint64_t sub_10066ACB8()
{
  result = qword_10119C990;
  if (!qword_10119C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C990);
  }

  return result;
}

void sub_10066AD30(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (*(a3 + 80) == a2)
  {
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101219280);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "reverse path 1 - completion", v9, 2u);
    }

    [*(a3 + 24) setAlpha:0.0];
    v10 = *&a4[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
    if (v10)
    {
      [v10 setAlpha:0.0];
      if ([*(a3 + 48) state] == 2)
      {
        [*(a3 + 48) finishAnimationAtPosition:2];
      }

      v11 = *(a3 + 48);
      v12 = swift_allocObject();
      *(v12 + 16) = a4;
      v16[4] = sub_10066B6F4;
      v16[5] = v12;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10002BC98;
      v16[3] = &unk_1010B99A8;
      v13 = _Block_copy(v16);
      v14 = v11;
      v15 = a4;

      [v14 addAnimations:v13];
      _Block_release(v13);

      [*(a3 + 48) startAnimation];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10066AF58(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a3 + 80) == a2)
  {
    v20[12] = v4;
    v20[13] = v5;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101219280);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67240192;
      *(v11 + 4) = a4 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "reverse path 2 - secondPhaseStarted - completion isReversed=%{BOOL,public}d", v11, 8u);
    }

    if ([*(a3 + 40) state] == 1)
    {
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "reverse path 2 - secondPhaseStarted - completion stopping first phase", v14, 2u);
      }

      [*(a3 + 40) stopAnimation:0];
      [*(a3 + 40) finishAnimationAtPosition:2];
    }

    v15 = 0.0;
    if (a4)
    {
      v15 = 1.0;
    }

    [*(a3 + 24) setAlpha:v15];
    v16 = *(a3 + 40);
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4 & 1;
    v20[4] = sub_10066B724;
    v20[5] = v17;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_10002BC98;
    v20[3] = &unk_1010B99F8;
    v18 = _Block_copy(v20);
    v19 = v16;

    [v19 addAnimations:v18];
    _Block_release(v18);

    [*(a3 + 40) startAnimation];
  }
}

uint64_t sub_10066B208(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (*(a2 + 80) == result)
  {
    v14[9] = v3;
    v14[10] = v4;
    if (qword_10117FB08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101219280);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315138;
      v11 = sub_10066A7FC();
      v13 = sub_1000105AC(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "reverse %s completion", v9, 0xCu);
      sub_10000959C(v10);
    }

    return a3();
  }

  return result;
}

uint64_t sub_10066B388(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xF000000000000007;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v3 = swift_allocObject();
  swift_weakInit();

  sub_1006695A4(sub_10066B4B8, v3);

  v4 = swift_allocObject();
  swift_weakInit();

  sub_1006695A4(sub_10066B4DC, v4);

  return v2;
}

uint64_t sub_10066B500()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + 72) = 1;
  return v1();
}

unint64_t sub_10066B5C4()
{
  result = qword_10119C998;
  if (!qword_10119C998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119C998);
  }

  return result;
}

void sub_10066B618()
{
  if (*(*(v0 + 24) + 80) == *(v0 + 16))
  {
    sub_10066AB04();
  }
}

id sub_10066B654()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (result)
  {
    v2 = 0.0;
    if (*(v0 + 24))
    {
      v2 = 1.0;
    }

    return [result setAlpha:v2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10066B690()
{

  return swift_deallocObject();
}

id sub_10066B6F8()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  __break(1u);
  return result;
}

id sub_10066B724()
{
  v1 = 1.0;
  if (*(v0 + 24))
  {
    v1 = 0.0;
  }

  return [*(*(v0 + 16) + 24) setAlpha:v1];
}

void *sub_10066B7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100015C04(0, v1, 0);
  v24 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = result;
  v5 = 0;
  v23 = v1;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
  {
    v8 = v4 >> 6;
    if ((*(v24 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_21;
    }

    v9 = *(a1 + 36);
    result = Library.Menu.Identifier.rawValue.getter(*(*(a1 + 48) + v4));
    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      v21 = v10;
      v22 = result;
      sub_100015C04((v11 > 1), v12 + 1, 1);
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = result;
    v13[5] = v10;
    v6 = 1 << *(a1 + 32);
    if (v4 >= v6)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v8);
    if ((v14 & (1 << v4)) == 0)
    {
      goto LABEL_23;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v4 & 0x3F));
    if (v15)
    {
      v6 = __clz(__rbit64(v15)) | v4 & 0x7FFFFFFFFFFFFFC0;
      v7 = v23;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v7 = v23;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v6 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000D8F7C(v4, v9, 0);
          v6 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000D8F7C(v4, v9, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v7)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10066B9CC(uint64_t a1)
{
  sub_1006709F8();
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1003B3B90(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_10066BAEC(void *a1, char a2)
{
  v4 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = _s9PlaylistsV5ScopeVMa(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v36 - v11);
  v13 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100217F14();
  UITraitCollection.subscript.getter();
  v16 = sub_10049CB78();

  switch(a2)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_14;
    case 3:
      goto LABEL_17;
    case 4:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDSongsTableViewController) initWithShowLocalContent:v16 & 1];
        if (!result)
        {
          __break(1u);
          return [objc_allocWithZone(type metadata accessor for LibraryDownloadingViewController()) init];
        }
      }

      else
      {
        v23 = objc_allocWithZone(type metadata accessor for LibrarySongsViewController());
        return sub_100522954(v16 & 1);
      }

      return result;
    case 5:
      goto LABEL_26;
    case 6:
      goto LABEL_29;
    case 7:
      goto LABEL_20;
    case 8:
      if ([a1 userInterfaceIdiom] != 3)
      {
        goto LABEL_47;
      }

      result = [objc_allocWithZone(MCDCompilationsTableViewController) initWithShowLocalContent:v16 & 1];
      if (result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_34;
    case 9:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDComposersTableViewController) initWithShowLocalContent:v16 & 1];
        if (!result)
        {
          __break(1u);
LABEL_14:
          if ([a1 userInterfaceIdiom] == 3)
          {
            result = [objc_allocWithZone(MCDArtistsTableViewController) initWithShowLocalContent:v16 & 1];
            if (!result)
            {
              __break(1u);
LABEL_17:
              if ([a1 userInterfaceIdiom] == 3)
              {
                result = [objc_allocWithZone(MCDAlbumsTableViewController) initWithShowLocalContent:v16 & 1];
                if (!result)
                {
                  __break(1u);
LABEL_20:
                  if ([a1 userInterfaceIdiom] == 3)
                  {
                    result = [objc_allocWithZone(MCDGenresViewController) initWithShowLocalContent:v16 & 1];
                    if (!result)
                    {
                      __break(1u);
LABEL_23:
                      if ([a1 userInterfaceIdiom] == 3)
                      {
                        result = [objc_allocWithZone(MCDPlaylistsViewController) initWithShowLocalContent:v16 & 1];
                        if (!result)
                        {
                          __break(1u);
LABEL_26:
                          if ([a1 userInterfaceIdiom] == 3)
                          {
                            result = [objc_opt_self() madeForYouViewControllerWithShowLocalContent:v16 & 1];
                            if (!result)
                            {
                              __break(1u);
LABEL_29:
                              v19 = type metadata accessor for MusicVideo();
                              (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
                              v20 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController());
                              return sub_100507278(v16 & 1, v6);
                            }
                          }

                          else
                          {
                            if (qword_10117F298 != -1)
                            {
                              swift_once();
                            }

                            v32 = sub_1000060E4(v7, qword_101218730);
                            sub_100670A4C(v32, v10, _s9PlaylistsV5ScopeVMa);
                            v33 = [a1 horizontalSizeClass] != 2;
                            v34 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
                            return sub_10037E11C(v10, v16 & 1, v33);
                          }
                        }
                      }

                      else
                      {
                        v29 = [a1 horizontalSizeClass];
                        v30 = *(v7 + 20);
                        v31 = type metadata accessor for Playlist.Folder();
                        (*(*(v31 - 8) + 56))(v12 + v30, 1, 1, v31);
                        if (qword_10117F5D8 != -1)
                        {
                          swift_once();
                        }

                        *v12 = qword_101218AB8;
                        *(v12 + *(v7 + 24)) = 0;
                        objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());

                        return sub_10037E11C(v12, v16 & 1, v29 != 2);
                      }
                    }
                  }

                  else
                  {
                    v27 = objc_allocWithZone(type metadata accessor for LibraryGenresViewController());
                    return sub_1003D14A8(v16 & 1);
                  }
                }
              }

              else
              {
LABEL_47:
                swift_storeEnumTagMultiPayload();
                v35 = objc_allocWithZone(type metadata accessor for LibraryAlbumsViewController());
                return sub_1006E7454(v15, v16 & 1);
              }
            }
          }

          else
          {
            v25 = sub_10045B524(a1);
            v26 = objc_allocWithZone(type metadata accessor for LibraryArtistsContainerViewController());
            return sub_100457798(v25 & 1, v16 & 1);
          }
        }
      }

      else
      {
        v24 = objc_allocWithZone(type metadata accessor for LibraryComposersViewController());
        return sub_10035F860(v16 & 1);
      }

      return result;
    case 10:
      v21 = objc_allocWithZone(type metadata accessor for LibraryTVShowsMoviesViewController(0));
      return sub_1007BB278(v16 & 1);
    case 11:
      goto LABEL_5;
    case 12:
      return [objc_allocWithZone(type metadata accessor for LibraryDownloadingViewController()) init];
    default:
      if ([a1 userInterfaceIdiom] == 3)
      {
        result = [objc_allocWithZone(MCDRecentlyAddedTableViewController) initWithShowLocalContent:v16 & 1];
        if (!result)
        {
          __break(1u);
LABEL_5:
          if ([a1 userInterfaceIdiom] == 3)
          {
            v18 = objc_allocWithZone(type metadata accessor for CarPlayLibraryViewController());
            return sub_1004899DC(v16 & 1);
          }

          else
          {
LABEL_34:
            v22 = objc_allocWithZone(type metadata accessor for LibraryMainViewController());
            return sub_100039DB0(1);
          }
        }
      }

      else
      {
        v28 = objc_allocWithZone(type metadata accessor for LibraryRecentlyAddedViewController());
        return sub_1007DF4E0(v16 & 1);
      }

      return result;
  }
}

uint64_t sub_10066C1EC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UITraitOverrides();
  (*(*(v6 - 8) + 16))(a2, v3, v6);
  if (Library.Menu.Identifier.rawValue.getter(a1) == 0xD000000000000026 && 0x8000000100E3C290 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  sub_10010E29C(&off_101099070);
  sub_100217F14();
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

void *NSUserDefaults.libraryMenuOrderedIdentifiers.getter()
{
  NSUserDefaults.libraryMenuRevision.getter();
  v1 = v0;

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100015C04(0, v2, 0);
    v3 = 32;
    v4 = "LibraryView.RecentlyAdded";
    v5 = "LibraryView.Playlists";
    v6 = "LibraryView.Artists";
    v7 = "LibraryView.Albums";
    v8 = "LibraryView.Songs";
    v9 = "LibraryView.MadeForYou";
    v10 = "LibraryView.MusicVideos";
    v11 = "LibraryView.Genres";
    v12 = "LibraryView.Compilations";
    v13 = "LibraryView.Composers";
    v14 = "LibraryView.Shows";
    v15 = "LibraryView.Downloaded";
    do
    {
      v16 = 0xD000000000000029;
      v17 = "nt";
      switch(*(v1 + v3))
      {
        case 1:
          v16 = 0xD000000000000025;
          v17 = v4;
          break;
        case 2:
          v16 = 0xD000000000000023;
          v17 = v5;
          break;
        case 3:
          v16 = 0xD000000000000022;
          v17 = v6;
          break;
        case 4:
          v16 = 0xD000000000000021;
          v17 = v7;
          break;
        case 5:
          v16 = 0xD000000000000026;
          v17 = v8;
          break;
        case 6:
          v16 = 0xD000000000000027;
          v17 = v9;
          break;
        case 7:
          v16 = 0xD000000000000022;
          v17 = v10;
          break;
        case 8:
          v16 = 0xD000000000000028;
          v17 = v11;
          break;
        case 9:
          v16 = 0xD000000000000025;
          v17 = v12;
          break;
        case 0xA:
          v16 = 0xD000000000000021;
          v17 = v13;
          break;
        case 0xB:
          v16 = 0xD000000000000026;
          v17 = v14;
          break;
        case 0xC:
          v16 = 0xD000000000000027;
          v17 = v15;
          break;
        default:
          break;
      }

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        v26 = v11;
        v27 = v10;
        v24 = v13;
        v25 = v12;
        v32 = v5;
        v33 = v4;
        v30 = v7;
        v31 = v6;
        v28 = v9;
        v29 = v8;
        v22 = v15;
        v23 = v14;
        sub_100015C04((v18 > 1), v19 + 1, 1);
        v15 = v22;
        v14 = v23;
        v13 = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v9 = v28;
        v8 = v29;
        v7 = v30;
        v6 = v31;
        v5 = v32;
        v4 = v33;
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      v20 = &_swiftEmptyArrayStorage[2 * v19];
      v20[4] = v16;
      v20[5] = v17 | 0x8000000000000000;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t NSUserDefaults.libraryMenuSelectedIdentifiers.getter()
{
  NSUserDefaults.libraryMenuRevision.getter();
  v1 = v0;

  v2 = sub_10066B7A8(v1);

  v3 = sub_10066FFD8(v2);

  return v3;
}

void *sub_10066C750(void *a1, int64_t a2, char a3)
{
  result = sub_10066CF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066C770(char *a1, int64_t a2, char a3)
{
  result = sub_10066D094(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066C790(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10118D438, &unk_100EC9198, &type metadata accessor for AudioVariant);
  *v3 = result;
  return result;
}

size_t sub_10066C7D4(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101193E80, &unk_100ECF120, &type metadata accessor for Track);
  *v3 = result;
  return result;
}

size_t sub_10066C818(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119C9D0, &unk_100EDB3F8, type metadata accessor for PlaylistCurators.Curator);
  *v3 = result;
  return result;
}

size_t sub_10066C85C(size_t a1, int64_t a2, char a3)
{
  result = sub_10066E3FC(a1, a2, a3, *v3, &qword_10119C9A8, &unk_100EDB3E0, &unk_10119EF50);
  *v3 = result;
  return result;
}

char *sub_10066C89C(char *a1, int64_t a2, char a3)
{
  result = sub_10066D1C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066C8BC(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA38, &unk_100EDB468, &type metadata accessor for MusicPlayActivityFields);
  *v3 = result;
  return result;
}

char *sub_10066C900(char *a1, int64_t a2, char a3)
{
  result = sub_10066D2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066C920(char *a1, int64_t a2, char a3)
{
  result = sub_10066D4D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C940(void *a1, int64_t a2, char a3)
{
  result = sub_10066D5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066C960(void *a1, int64_t a2, char a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &unk_1011927C0, &unk_100ED6A50, &qword_101197BD0);
  *v3 = result;
  return result;
}

char *sub_10066C9A0(char *a1, int64_t a2, char a3)
{
  result = sub_10066D740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066C9C0(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA28, &unk_100EDB458, &type metadata accessor for Playlist.Entry.Reaction);
  *v3 = result;
  return result;
}

char *sub_10066CA04(char *a1, int64_t a2, char a3)
{
  result = sub_10066D84C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066CA24(char *a1, int64_t a2, char a3)
{
  result = sub_10066D970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066CA44(size_t a1, int64_t a2, char a3)
{
  result = sub_10066E3FC(a1, a2, a3, *v3, &qword_10119CA10, &unk_100EDB440, &qword_101191960);
  *v3 = result;
  return result;
}

void *sub_10066CA84(void *a1, int64_t a2, char a3)
{
  result = sub_10066DA80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066CAA4(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &unk_101197BC0, &unk_100ECF170, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_10066CAE8(void *a1, int64_t a2, char a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_10119C9E0, &unk_100EDB408, &qword_10119ED90);
  *v3 = result;
  return result;
}

char *sub_10066CB28(char *a1, int64_t a2, char a3)
{
  result = sub_10066DBEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066CB48(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10118AC80, &unk_100EC9020, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

void *sub_10066CB8C(void *a1, int64_t a2, char a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_1011BE680, &unk_100EBF438, &unk_1011BE660);
  *v3 = result;
  return result;
}

char *sub_10066CBCC(char *a1, int64_t a2, char a3)
{
  result = sub_10066DE30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066CBEC(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101191FC0, &unk_100ED92D0, &type metadata accessor for Playlist);
  *v3 = result;
  return result;
}

size_t sub_10066CC30(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101192910, &unk_100ECFD30, &type metadata accessor for Album);
  *v3 = result;
  return result;
}

char *sub_10066CC74(char *a1, int64_t a2, char a3)
{
  result = sub_10066DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CC94(void *a1, int64_t a2, char a3)
{
  result = sub_10066E048(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CCB4(void *a1, int64_t a2, char a3)
{
  result = sub_10066E17C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CCD4(void *a1, int64_t a2, char a3)
{
  result = sub_10066E2A4(a1, a2, a3, *v3, &qword_10119C9B0, &unk_100EDB3E8, &qword_1011831E0);
  *v3 = result;
  return result;
}

void *sub_10066CD14(void *a1, int64_t a2, char a3)
{
  result = sub_10066E2A4(a1, a2, a3, *v3, &qword_1011901E0, &unk_100ECF200, &qword_101183238);
  *v3 = result;
  return result;
}

void *sub_10066CD54(void *a1, int64_t a2, char a3)
{
  result = sub_10066E5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10066CD74(char *a1, int64_t a2, char a3)
{
  result = sub_10066EBA8(a1, a2, a3, *v3, &qword_101191F78);
  *v3 = result;
  return result;
}

char *sub_10066CDA4(char *a1, int64_t a2, char a3)
{
  result = sub_10066E86C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10066CDC4(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_10119CA48, &unk_100EDB470, &type metadata accessor for LayoutSubview);
  *v3 = result;
  return result;
}

char *sub_10066CE08(char *a1, int64_t a2, char a3)
{
  result = sub_10066E970(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10066CE28(void *a1, int64_t a2, char a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_10119CA60, &unk_100EDB488, &qword_101183268);
  *v3 = result;
  return result;
}

void *sub_10066CE68(void *a1, int64_t a2, char a3)
{
  result = sub_10066EA74(a1, a2, a3, *v3, &qword_1011920E8, &unk_100ECF308, &unk_101183270);
  *v3 = result;
  return result;
}

char *sub_10066CEA8(char *a1, int64_t a2, char a3)
{
  result = sub_10066EBA8(a1, a2, a3, *v3, &qword_10119C9C8);
  *v3 = result;
  return result;
}

size_t sub_10066CED8(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_101191F80, &unk_100ECF130, &type metadata accessor for Playlist.Entry);
  *v3 = result;
  return result;
}

size_t sub_10066CF1C(size_t a1, int64_t a2, char a3)
{
  result = sub_10066EC94(a1, a2, a3, *v3, &qword_1011A0FA0, &unk_100EDB410, type metadata accessor for SharePlayTogetherSessionManagementViewController.SnapshotIdentifier);
  *v3 = result;
  return result;
}

void *sub_10066CF60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&unk_10118FC68);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066D1C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_101191400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066D2C4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101191F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10066D3CC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101192088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D4D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066D5F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101185210);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119E600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D740(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101184900);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D84C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101188708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066D970(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101181530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066DA80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119C9F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066DBEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119C9D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_10066DCEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&unk_10118CF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10066DE30(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_101191F28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066DF3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E048(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10118F1F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011815E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E17C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for Role(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E2A4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10010FC20(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_10066E3FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5);
  v14 = *(sub_10010FC20(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10010FC20(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10066E5E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10119CA08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10066E72C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10118D168);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10066E86C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10066E970(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_10119CA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10066EA74(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10010FC20(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10066EBA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10010FC20(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

size_t sub_10066EC94(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_10066EE70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101183260);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_10118D430);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003AED60(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10066F060(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180440);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1003AF3AC();
        }

        v2 = v14;
        sub_100670AB4(&unk_10118D420, &type metadata accessor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F294(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101183248);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_1011839F0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B0ED0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F484(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&qword_101180240);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ImpressionTracker();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1003B0EE4();
        }

        v2 = v15;
        Hasher.init(_seed:)();
        v3 = sub_10047E418();
        Hasher._combine(_:)(v3);
        result = Hasher._finalize()();
        v5 = v15 + 56;
        v6 = -1 << *(v15 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v8 == v11;
            if (v8 == v11)
            {
              v8 = 0;
            }

            v10 |= v12;
            v13 = *(v5 + 8 * v8);
          }

          while (v13 == -1);
          v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v15 + 48) + 8 * v9) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F688(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180280);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_101183D40);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1138(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10066F878(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_101180380);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009F78(0, &qword_101181F70);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1003B1524(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10066FA68(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._finalize()();
  v4 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
  result = sub_100198C50(a1, *(a2 + 48) + 96 * v4);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FBF4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_100670AB4(&unk_10118D420, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FCDC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = sub_10047E418();
  Hasher._combine(_:)(v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10066FD84(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_10066FE3C(uint64_t a1)
{
  v2 = type metadata accessor for AudioVariant();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100670AB4(&qword_10118D1F0, &type metadata accessor for AudioVariant);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1003B2644(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10066FFD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003B3170(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100670070(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100670AB4(&qword_10118BD00, type metadata accessor for Lyrics.TextLine);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100670A4C(v11, v5, type metadata accessor for Lyrics.TextLine);
      sub_1003B3560(v8, v5);
      sub_1003407A4(v8);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_1006701EC(uint64_t a1)
{
  v2 = type metadata accessor for Album();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100670AB4(&unk_10118D190, &type metadata accessor for Album);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1003B3CE0(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100670388(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1006709F8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1003B3B90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100670454(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_1006704D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1006709A4();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      sub_100198BAC(v8, v7, v6, *v4);
      sub_1003B4314(v9, v8, v7, v6, v5);
      sub_100110A18(v9[0], v9[1], v9[2], v9[3]);
      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_100670590(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_47:
    _CocoaArrayWrapper.endIndex.getter();
  }

  type metadata accessor for ImpressionTracker();
  sub_100670AB4(&qword_1011831E8, type metadata accessor for ImpressionTracker);
  v3 = Set.init(minimumCapacity:)();
  if (!v2)
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v3;
    }

LABEL_6:
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v1 + 32;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1;
    v27 = v1 + 32;
    while (1)
    {
LABEL_7:
      v1 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v3 < 0)
      {
        v8 = v3;
      }

      v29 = v8;
      while (1)
      {
        if (v5)
        {
          v9 = sub_1007E97F0(v4, v26);
          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_45;
          }

          v9 = *(v7 + 8 * v4);

          v10 = __OFADD__(v4++, 1);
          if (v10)
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        if (!v1)
        {
          v12 = v2;
          Hasher.init(_seed:)();
          v13 = sub_10047E418();
          Hasher._combine(_:)(v13);
          v14 = Hasher._finalize()();
          v15 = ~(-1 << *(v3 + 32));
          for (i = v14 & v15; ((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v15)
          {
            if (sub_10047E418() == *(v9 + 56))
            {

              v2 = v12;
              v7 = v27;
              v6 = v28;
              goto LABEL_21;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v2 = *(v3 + 16);
          v1 = *(v3 + 24);

          if (v1 > v2)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1001948A4();
            }

            goto LABEL_36;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            sub_1003B0EE4();
          }

          else
          {
            sub_1003B9C68();
          }

          Hasher.init(_seed:)();
          Hasher._combine(_:)(*(v9 + 56));
          v18 = Hasher._finalize()();
          v1 = v3 + 56;
          v19 = -1 << *(v3 + 32);
          i = v18 & ~v19;
          if (((*(v3 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
          {
LABEL_36:
            *(v3 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
            *(*(v3 + 48) + 8 * i) = v9;
            v20 = *(v3 + 16);
            v10 = __OFADD__(v20, 1);
            v21 = v20 + 1;
            if (v10)
            {
              goto LABEL_46;
            }

            *(v3 + 16) = v21;

            v2 = v12;
            v7 = v27;
            v6 = v28;
            if (v4 != v2)
            {
              goto LABEL_7;
            }

            return v3;
          }

          v2 = ~v19;
          while (sub_10047E418() != *(v9 + 56))
          {
            i = (i + 1) & v2;
            if (((*(v1 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

LABEL_49:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v11 = __CocoaSet.member(for:)();

        if (!v11)
        {
          break;
        }

        swift_dynamicCast();

LABEL_21:
        if (v4 == v2)
        {
          return v3;
        }
      }

      v22 = __CocoaSet.count.getter();
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_49;
      }

      v23 = sub_10066F484(v29, v22 + 1);
      if (*(v23 + 24) <= *(v23 + 16))
      {
        sub_1003B0EE4();
      }

      sub_10066FCDC(v24, v23);

      v3 = v23;
      if (v4 == v2)
      {
        return v3;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_6;
  }

  return v3;
}

unint64_t sub_1006709A4()
{
  result = qword_10119C9B8;
  if (!qword_10119C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C9B8);
  }

  return result;
}

unint64_t sub_1006709F8()
{
  result = qword_10119C9C0;
  if (!qword_10119C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C9C0);
  }

  return result;
}

uint64_t sub_100670A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100670AB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100670BB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_dimmedBackgroundColor);
}

id sub_100670C14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingShuffleButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100670CD8()
{
  _s14descr101092F61V16PlaylistsManagerCMa();
  v0 = swift_allocObject();
  sub_10010FC20(&qword_1011937C8);
  Published.init(initialValue:)();
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager_preferences;
  if (qword_10117FA68 != -1)
  {
    swift_once();
  }

  *(v0 + v1) = qword_101219178;
  type metadata accessor for Playlist();

  MusicLibraryRequest.init()();
  return v0;
}

uint64_t _s14descr101092F61V17RootPlaylistsViewVMa()
{
  result = qword_10119CB18;
  if (!qword_10119CB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100670E40()
{
  sub_1004651A8();
  if (v0 <= 0x3F)
  {
    sub_100465200();
    if (v1 <= 0x3F)
    {
      sub_100670EDC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100670EDC()
{
  if (!qword_10119CB28)
  {
    _s14descr101092F61V16PlaylistsManagerCMa();
    sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10119CB28);
    }
  }
}

uint64_t sub_100670F8C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X8>)
{
  v16[2] = a2;
  v3 = _s14descr101092F61V17RootPlaylistsViewVMa();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10010FC20(&qword_10119CB70);
  v16[1] = v6;
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_10010FC20(&qword_10119CB98);
  sub_1006712A8(&v8[*(v9 + 44)]);
  v16[0] = _s14descr101092F61V17RootPlaylistsViewVMa;
  sub_100674080(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s14descr101092F61V17RootPlaylistsViewVMa);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_100673E88(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = &v8[*(v6 + 36)];
  *v12 = sub_100673EEC;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  _s14descr101092F61V16PlaylistsManagerCMa();
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = *(v17 + 16);

  v17 = v13;
  sub_100674080(a1, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16[0]);
  v14 = swift_allocObject();
  sub_100673E88(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v10);
  sub_100673B28();
  View.onChange<A>(of:initial:_:)();

  return sub_1000095E8(v8, &qword_10119CB70);
}

uint64_t sub_1006712A8@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v81 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  __chkstk_darwin(v81);
  v63 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v60 - v7;
  v80 = sub_10010FC20(&qword_10119CBA0);
  __chkstk_darwin(v80);
  v79 = &v60 - v8;
  v77 = sub_10010FC20(&qword_10119CBA8);
  __chkstk_darwin(v77);
  v78 = &v60 - v9;
  v82 = sub_10010FC20(&qword_10119CBB0);
  __chkstk_darwin(v82);
  v75 = &v60 - v10;
  v11 = type metadata accessor for MultimodalListStyle.IconStyle();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v68 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v60 - v14;
  v15 = sub_10010FC20(&qword_101190DF8);
  __chkstk_darwin(v15 - 8);
  v64 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v74 = type metadata accessor for MultimodalListStyle();
  v66 = *(v74 - 8);
  __chkstk_darwin(v74);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10010FC20(&qword_10119CBB8);
  v65 = *(v73 - 8);
  __chkstk_darwin(v73);
  v23 = &v60 - v22;
  v76 = sub_10010FC20(&qword_10119CBC0);
  v72 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v60 - v24;
  _s14descr101092F61V17RootPlaylistsViewVMa();
  v25 = v1;
  _s14descr101092F61V16PlaylistsManagerCMa();
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = v84;
  v28 = *(v84 + 16);
  if (v28 < 2)
  {
    v41 = v3;
    v42 = v78;
    v43 = v81;
    if (v28)
    {
      v44 = *(v4 + 16);
      v45 = v61;
      v44(v61, v84 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v41);

      v46 = v62;
      (*(v4 + 32))(v62, v45, v41);
      v47 = v63;
      v44(v63 + v43[9], v46, v41);
      *v47 = swift_getKeyPath();
      sub_10010FC20(&unk_101193FC0);
      swift_storeEnumTagMultiPayload();
      v48 = v47 + v43[5];
      *v48 = sub_100462628;
      *(v48 + 1) = 0;
      v48[16] = 0;
      v49 = v47 + v43[6];
      *v49 = sub_10024F1B0;
      *(v49 + 1) = 0;
      v49[16] = 0;
      v50 = v47 + v43[7];
      *v50 = sub_100462684;
      *(v50 + 1) = 0;
      v50[16] = 0;
      v51 = v47 + v43[8];
      v88 = 0;
      State.init(wrappedValue:)();
      v52 = v85;
      *v51 = v84;
      *(v51 + 1) = v52;
      sub_100674080(v47, v42, _s14descr101092F61V19PlaylistDetailsViewVMa);
      swift_storeEnumTagMultiPayload();
      v53 = sub_100020674(&qword_10119CBC8, &qword_10119CBB8);
      v84 = v73;
      v85 = v74;
      v86 = v53;
      v87 = &protocol witness table for MultimodalListStyle;
      swift_getOpaqueTypeConformance2();
      sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa);
      v54 = v75;
      _ConditionalContent<>.init(storage:)();
      sub_10009ABAC(v54, v79);
      swift_storeEnumTagMultiPayload();
      sub_1006740E8();
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v54, &qword_10119CBB0);
      sub_1006744DC(v47, _s14descr101092F61V19PlaylistDetailsViewVMa);
      return (*(v4 + 8))(v46, v41);
    }

    else
    {

      v55 = v79;
      if (qword_10117F1F0 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_1000060E4(v56, qword_101218608);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "No Content", v59, 2u);
      }

      *v55 = 0;
      *(v55 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1006740E8();
      return _ConditionalContent<>.init(storage:)();
    }
  }

  else
  {
    __chkstk_darwin(v26);
    *(&v60 - 2) = v25;
    *(&v60 - 1) = v27;
    sub_10010FC20(&qword_10119CBE0);
    sub_100020674(&qword_10119CBE8, &qword_10119CBE0);
    List<>.init(content:)();

    sub_10056CF3C(v19);
    v29 = type metadata accessor for MultimodalListStyle.Layout();
    (*(*(v29 - 8) + 56))(v19, 0, 1, v29);
    v31 = v69;
    v30 = v70;
    v32 = v67;
    (*(v69 + 104))(v67, enum case for MultimodalListStyle.IconStyle.square(_:), v70);
    sub_1000089F8(v19, v64, &qword_101190DF8);
    (*(v31 + 16))(v68, v32, v30);
    MultimodalListStyle.init(layout:iconStyle:)();
    (*(v31 + 8))(v32, v30);
    sub_1000095E8(v19, &qword_101190DF8);
    v33 = sub_100020674(&qword_10119CBC8, &qword_10119CBB8);
    v34 = v71;
    v35 = v73;
    v36 = v74;
    View.listStyle<A>(_:)();
    (*(v66 + 8))(v21, v36);
    (*(v65 + 8))(v23, v35);
    v37 = v72;
    v38 = v76;
    (*(v72 + 16))(v78, v34, v76);
    swift_storeEnumTagMultiPayload();
    v84 = v35;
    v85 = v36;
    v86 = v33;
    v87 = &protocol witness table for MultimodalListStyle;
    swift_getOpaqueTypeConformance2();
    sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa);
    v39 = v75;
    _ConditionalContent<>.init(storage:)();
    sub_10009ABAC(v39, v79);
    swift_storeEnumTagMultiPayload();
    sub_1006740E8();
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v39, &qword_10119CBB0);
    return (*(v37 + 8))(v34, v38);
  }
}

uint64_t sub_100671FDC()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  _s14descr101092F61V17RootPlaylistsViewVMa();
  _s14descr101092F61V16PlaylistsManagerCMa();
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
  v3 = StateObject.wrappedValue.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  sub_1001F4CB8(0, 0, v2, &unk_100EDB620, v6);
}

void sub_100672184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = _s14descr101092F61V17RootPlaylistsViewVMa();
  __chkstk_darwin(v23);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_1000060E4(v9, qword_101218608);
  sub_100674080(a3, v8, _s14descr101092F61V17RootPlaylistsViewVMa);
  v22[1] = v10;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    _s14descr101092F61V16PlaylistsManagerCMa();
    sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v14 = *(v24 + 16);

    sub_1006744DC(v8, _s14descr101092F61V17RootPlaylistsViewVMa);
    *(v13 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v11, v12, "Playlists loaded: %ld", v13, 0xCu);
  }

  else
  {
    sub_1006744DC(v8, _s14descr101092F61V17RootPlaylistsViewVMa);
  }

  if (qword_10117FA68 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = *(v24 + 16);

  _s14descr101092F61V16PlaylistsManagerCMa();
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = *(v24 + 16);

  if (v15 != v16)
  {
    sub_100674080(a3, v5, _s14descr101092F61V17RootPlaylistsViewVMa);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v20 = *(v24 + 16);

      *(v19 + 4) = v20;
      *(v19 + 12) = 2048;
      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v21 = *(v24 + 16);

      sub_1006744DC(v5, _s14descr101092F61V17RootPlaylistsViewVMa);
      *(v19 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Playlists mismatch between Preferences.shared.selectedPlaylists count (%ld) and playlistsManager.playlists.count (%ld)", v19, 0x16u);
    }

    else
    {
      sub_1006744DC(v5, _s14descr101092F61V17RootPlaylistsViewVMa);
    }
  }
}

uint64_t sub_10067273C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&qword_10119CBF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v24 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v23 = &v22 - v10;
  v11 = _s14descr101092F61V17RootPlaylistsViewVMa();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_100674080(a1, &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), _s14descr101092F61V17RootPlaylistsViewVMa);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  sub_100673E88(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v25 = a2;

  sub_10010FC20(&qword_1011937C8);
  sub_10010FC20(&qword_10119CBF8);
  sub_100020674(&qword_10119CC00, &qword_1011937C8);
  sub_100020674(&qword_10119CC08, &qword_10119CBF8);
  sub_1006743DC(&unk_1011A4BD0, &type metadata accessor for Playlist);
  v16 = v23;
  ForEach<>.init(_:content:)();
  v17 = *(v7 + 16);
  v18 = v24;
  v17(v24, v16, v6);
  *a3 = sub_10024F1B0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_100674378;
  *(a3 + 32) = v15;
  v19 = sub_10010FC20(&qword_10119CC10);
  v17((a3 + *(v19 + 48)), v18, v6);
  KeyValueObservationTrigger.keyPath.getter();
  v20 = *(v7 + 8);

  v20(v16, v6);
  v20(v18, v6);
  sub_1000D8FC4();
}

uint64_t sub_100672AF8()
{
  v1 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v1 - 8);
  v39 = &v35 - v2;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v35 = &v35 - v4;
  v42 = sub_10010FC20(&qword_10119CC38);
  __chkstk_darwin(v42);
  v43 = (&v35 - v5);
  v6 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v6 - 8);
  v41 = &v35 - v7;
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  _s14descr101092F61V17RootPlaylistsViewVMa();
  v40 = v0;
  _s14descr101092F61V16PlaylistsManagerCMa();
  sub_1006743DC(&unk_10119CB30, _s14descr101092F61V16PlaylistsManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v44 + 2))
  {
  }

  (*(v9 + 16))(v11, &v44[(*(v9 + 80) + 32) & ~*(v9 + 80)], v8);

  v36 = v9;
  v37 = v14;
  v15 = *(v9 + 32);
  v38 = v8;
  v15(v14, v11, v8);
  _s14descr101092F61V20PlaybackStateManagerCMa();
  sub_1006743DC(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v16 = v44;
  if (v44)
  {
    v17 = [v44 state];
  }

  else
  {
    v17 = 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v41;
  static Published.subscript.getter();

  v20 = v43;
  v21 = *(v42 + 48);
  *v43 = v17;
  sub_100452540(v19, v20 + v21);
  v22 = v36;
  if (v17 == 4)
  {
    v26 = v43;
    v24 = v38;
    v29 = (*(v36 + 48))(v43 + v21, 1, v38);
    v25 = v37;
    if (v29 == 1)
    {
LABEL_10:
      StateObject.wrappedValue.getter();
      v27 = type metadata accessor for Playlist.Entry();
      v28 = v39;
      (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
      sub_100410208(v25, v28);

      sub_1000095E8(v28, &qword_101191570);
      (*(v22 + 8))(v25, v24);
      return sub_1000095E8(v26, &qword_10119CC38);
    }
  }

  else
  {
    v23 = v17 == 2;
    v25 = v37;
    v24 = v38;
    v26 = v43;
    if (!v23 || (*(v36 + 48))(v43 + v21, 1, v38) == 1)
    {
      goto LABEL_10;
    }
  }

  sub_1000095E8(v26 + v21, &unk_1011814D0);
  v30 = StateObject.wrappedValue.getter();
  v31 = type metadata accessor for TaskPriority();
  v32 = v35;
  (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
  type metadata accessor for MainActor();

  v33 = static MainActor.shared.getter();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = &protocol witness table for MainActor;
  v34[4] = v30;
  sub_1001F524C(0, 0, v32, &unk_100ECE100, v34);

  return (*(v22 + 8))(v25, v24);
}

uint64_t sub_100673220(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10119CC18);
  __chkstk_darwin(v2);
  v11 = a1;
  sub_1006733E4(a1, &v10[-v3]);
  _s14descr101092F61V16PlaylistCellViewVMa();
  sub_1006743DC(&qword_10119CC20, _s14descr101092F61V16PlaylistCellViewVMa);
  v4 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  v5 = sub_1001109D0(&qword_10119CC28);
  v6 = sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa);
  v7 = sub_100009838();
  v8 = sub_100674424();
  v12 = v4;
  v13 = &type metadata for String;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  swift_getOpaqueTypeConformance2();
  return NavigationLink.init(destination:label:)();
}

uint64_t sub_1006733E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39[1] = a2;
  v3 = type metadata accessor for ArtworkImage.ReusePolicy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v12 = v39 - v11;
  v39[0] = sub_10010FC20(&qword_10119CC28);
  __chkstk_darwin(v39[0]);
  v14 = v39 - v13;
  v15 = _s14descr101092F61V19PlaylistDetailsViewVMa();
  __chkstk_darwin(v15);
  v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v18 + 36);
  v20 = type metadata accessor for Playlist();
  (*(*(v20 - 8) + 16))(v17 + v19, a1, v20);
  *v17 = swift_getKeyPath();
  sub_10010FC20(&unk_101193FC0);
  swift_storeEnumTagMultiPayload();
  v21 = v17 + v15[5];
  *v21 = sub_100462628;
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = v17 + v15[6];
  *v22 = sub_10024F1B0;
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = v17 + v15[7];
  *v23 = sub_100462684;
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = v17 + v15[8];
  LOBYTE(v40) = 0;
  State.init(wrappedValue:)();
  v25 = *(&v42[0] + 1);
  *v24 = v42[0];
  *(v24 + 1) = v25;
  v40 = Playlist.name.getter();
  v41 = v26;
  Playlist.artworkViewModel.getter(v12);
  Playlist.variant.getter();
  v27 = sub_10010FC20(&unk_101182950);
  (*(*(v27 - 8) + 56))(v9, 0, 11, v27);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v42);
  (*(v4 + 104))(v6, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v3);
  static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v12, v9, v42, v6, v14);
  (*(v4 + 8))(v6, v3);
  sub_1006744DC(v9, type metadata accessor for ArtworkImage.Placeholder);
  sub_1000095E8(v12, &unk_10118A5E0);
  v28 = &v14[*(sub_10010FC20(&qword_1011968F0) + 36)];
  *v28 = 0;
  *(v28 + 4) = 257;
  v29 = &v14[*(v39[0] + 36)];
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  *&v29[*(sub_10010FC20(&qword_101185680) + 36)] = 256;
  sub_1006743DC(&qword_10119CBD0, _s14descr101092F61V19PlaylistDetailsViewVMa);
  sub_100009838();
  sub_100674424();
  View.navigationTitle<A, B>(_:icon:)();
  sub_1000095E8(v14, &qword_10119CC28);

  return sub_1006744DC(v17, _s14descr101092F61V19PlaylistDetailsViewVMa);
}

uint64_t sub_100673954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(_s14descr101092F61V16PlaylistCellViewVMa() + 24);
  v5 = type metadata accessor for Playlist();
  result = (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  *a2 = sub_100462628;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_10024F1B0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1006739F8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_10119CB68);
  sub_1001109D0(&qword_10119CB70);
  sub_100673B28();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  Color.MusicTint.normal.unsafeMutableAddressor();
  KeyPath = swift_getKeyPath();

  v3 = AnyShapeStyle.init<A>(_:)();
  result = sub_10010FC20(&qword_10119CB90);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v3;
  return result;
}

unint64_t sub_100673B28()
{
  result = qword_10119CB78;
  if (!qword_10119CB78)
  {
    sub_1001109D0(&qword_10119CB70);
    sub_100020674(&qword_10119CB80, &qword_10119CB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119CB78);
  }

  return result;
}

uint64_t sub_100673BE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}