void sub_1004E4BC0()
{
  v44 = type metadata accessor for VideoConfiguration();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for VideoControls();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &ObjectType - v7;
  v9 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v40 = v0;
    (*((swift_isaMask & *Strong) + qword_1009D2210 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
      v18 = v17;
      v39 = v8;
      v19 = v5;
      v20 = v12;
      v21 = v18;
      dispatch thunk of VideoViewDelegate.userInitiatedPlay(for:)();

      v12 = v20;
      v5 = v19;
      v8 = v39;
      swift_unknownObjectRelease();
    }

    (*(v13 + 104))(v15, enum case for MediaClickMetricsEvent.TargetId.play(_:), v12);
    v22 = v12;
    v24 = v45;
    v23 = v46;
    (*(v45 + 104))(v11, enum case for MediaClickMetricsEvent.ActionType.play(_:), v46);
    sub_1004E3360(v15, v11);
    (*(v24 + 8))(v11, v23);
    v25 = (*(v13 + 8))(v15, v22);
    if ((*((swift_isaMask & *v17) + qword_1009D2210 + 752))(v25))
    {
      v26 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
      v27 = qword_1009D2200;
      v28 = (v40 + 16);
      v29 = (v40 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v30, v44);
        VideoConfiguration.autoPlayPlaybackControls.getter();
      }

      else
      {
        swift_beginAccess();
        v32 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v32, v44);
        VideoConfiguration.playbackControls.getter();
      }

      (*v29)(v31, v44);
      static VideoControls.muteUnmute.getter();
      sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls);
      v33 = v41;
      v34 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v35 = *(v42 + 8);
      v35(v5, v33);
      v35(v8, v33);
      if (v34)
      {
        v36 = *(v17 + qword_100988CE0);
        if (v36)
        {
          v37 = v36;
          [v17 updateAudioSessionCategoryWithIsAudioOn:1];
          [v37 setMuted:0];

          v17 = v37;
        }

        else
        {
          *(v17 + qword_100988D00) = 1;
        }
      }
    }
  }
}

void sub_1004E51CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_100988CE0);

    [v2 play];
  }
}

void sub_1004E5244()
{
  v1 = v0;
  v0[qword_1009D21F0] = 0;
  v2 = qword_1009D21E8;
  [v0 setUserInteractionEnabled:(v0[qword_1009D21E8] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_100005744(0, &qword_100970180);
    v3 = static UIColor.placeholderBackground.getter();
  }

  v10 = v3;
  v4 = *&v0[qword_100988CE8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_1004E77F8();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_100988CE0];
    if (v9)
    {
      [v9 setMuted:(v1[qword_100988D08] & 1) == 0];
    }
  }

  sub_1004E24B8();
  [v1 setNeedsLayout];
}

void sub_1004E53D0(void *a1)
{
  v1 = a1;
  sub_1004E77F8();
}

uint64_t sub_1004E5418()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_100988CE8];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_100988CC0];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_1004E1028();
  return sub_1004E2CA0();
}

void sub_1004E5568(void *a1)
{
  v1 = a1;
  sub_1004E5418();
}

void sub_1004E55B0(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_100988CE0);
      v3 = Strong;
      v4 = v2;

      if (v2)
      {
        dispatch thunk of VideoPlayer.releaseAssets()();
      }
    }
  }
}

id sub_1004E5630(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_100988CC0] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_1004E56F0(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_100988CC0);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_1004E57A8(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = dispatch thunk of VideoPlayer.playerItem.getter();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_1004E5818()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + qword_1009D21E8) = 0;
    sub_1004E5244();
  }
}

void sub_1004E5878()
{
  type metadata accessor for RoundedCornerView();
  v1 = method lookup function for RoundedCornerView();
  v1();
  v2 = UIRectCorner.caCornerMask.getter();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  dispatch thunk of RoundedCornerView.updateBorder()();
  v4 = *&v0[qword_100988CE8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_100988CC0] layer];
  [v8 setMaskedCorners:v2];
}

void sub_1004E59B4(void *a1, double a2)
{
  v3 = a1;
  sub_1004E5B04(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_1004E5A40(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1004E5A84(void *a1, double a2)
{
  v3 = a1;
  sub_1004E5B04(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_1004E5B04(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_100988CE8];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_100988CC0];
  [v3 *a2];
  return [v10 *a1];
}

void sub_1004E5BCC(uint64_t a1, uint64_t a2)
{
  v5 = qword_100988D10;
  v6 = *&v2[qword_100988D10];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_10066D4C4(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = static NSObject.== infix(_:_:)();

        if ((v16 & 1) == 0)
        {
          sub_100005744(0, &qword_100981660);
          sub_10008DB40();
          v17 = v13;
          isa = Set._bridgeToObjectiveC()().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v21.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
      v22.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v20.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

uint64_t sub_1004E5E58(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a4;
  v8 = a1;
  sub_1004E5BCC(v6, a4);
}

void sub_1004E5F20(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_100988D10;
  v8 = *&v3[qword_100988D10];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_100296044(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100005744(0, &qword_100981660);
    sub_10008DB40();
    v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
    v21.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100005744(0, &qword_100972EB0);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      sub_100005744(0, &qword_100981660);
      sub_10008DB40();
      v17 = v13;
      isa = Set._bridgeToObjectiveC()().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v19.super.isa = Set._bridgeToObjectiveC()().super.isa;
  v20.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

uint64_t sub_1004E6150(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  sub_1004E5F20(v8, a4, a5);
}

void sub_1004E6200(void *a1)
{
  v1 = a1;
  sub_1004E3018();
}

void sub_1004E6248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_1004E62A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + qword_1009D2210 + 712))();
  }
}

void sub_1004E634C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1004E849C(a4);

  swift_unknownObjectRelease();
}

void sub_1004E63C8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1004E8640(a4);
}

uint64_t sub_1004E6484(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_100988CE0];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1004E6520()
{
  swift_weakDestroy();
  sub_10001F64C(v0 + qword_100988CA8);
  sub_10001F64C(v0 + qword_100988CB0);
  sub_10001F64C(v0 + qword_100988CB8);

  sub_10002B894(v0 + qword_1009D2198, &unk_100973A50);
  sub_10002B894(v0 + qword_1009D21A0, &unk_100973A50);
  sub_10002B894(v0 + qword_1009D21A8, &unk_100988E00);

  v1 = qword_1009D21C8;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10001F63C(*(v0 + qword_1009D21D0));
  sub_10003D614(v0 + qword_1009D21D8);
  sub_10001F64C(v0 + qword_1009D21E0);
  swift_unknownObjectWeakDestroy();
  v3 = qword_1009D2200;
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_100988D10);
}

id sub_1004E6714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004E674C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10001F64C(a1 + qword_100988CA8);
  sub_10001F64C(a1 + qword_100988CB0);
  sub_10001F64C(a1 + qword_100988CB8);

  sub_10002B894(a1 + qword_1009D2198, &unk_100973A50);
  sub_10002B894(a1 + qword_1009D21A0, &unk_100973A50);
  sub_10002B894(a1 + qword_1009D21A8, &unk_100988E00);

  v2 = qword_1009D21C8;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_10001F63C(*(a1 + qword_1009D21D0));
  sub_10003D614(a1 + qword_1009D21D8);
  sub_10001F64C(a1 + qword_1009D21E0);
  swift_unknownObjectWeakDestroy();
  v4 = qword_1009D2200;
  v5 = type metadata accessor for VideoConfiguration();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_100988D10);
}

void sub_1004E6944()
{
  if (!qword_100988DB8)
  {
    type metadata accessor for MetricsData();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100988DB8);
    }
  }
}

uint64_t sub_1004E6A0C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1004E6A6C(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_100988CA0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1004E6B54(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1009D21E0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1004E6BC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1009D21E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1004E6C60;
}

void sub_1004E6C60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1004E6CEC()
{
  v1 = *(v0 + qword_100988CE0);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of VideoPlayer.restart()();
  }
}

uint64_t sub_1004E6D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009D2200;
  swift_beginAccess();
  v4 = type metadata accessor for VideoConfiguration();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_1004E6E18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = type metadata accessor for VideoConfiguration();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_1009D2200;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_1004E6F70;
}

void sub_1004E6F70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1004E032C(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1004E032C(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1004E7028@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_100988DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for MediaMetricsEvent.ActionType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = type metadata accessor for MediaMetricsEvent.ActionDetails();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1004E081C(v11, v6, a2);
  sub_10002B894(v6, &unk_100988DF0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1004E7280@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10002849C(&unk_100988DF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for MediaMetricsEvent.ActionType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = type metadata accessor for MediaMetricsEvent.ActionDetails();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1004E081C(v9, v4, a1);
  sub_10002B894(v4, &unk_100988DF0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1004E7474()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
    dispatch thunk of VideoViewDelegate.playbackWillEnd(in:videoView:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E7548()
{
  v1 = v0 + qword_100988CB8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E75EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_100988CE0);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_1004E76E8()
{
  v1 = *(v0 + qword_100988CE0);
  if (v1)
  {
    v2 = v1;
    if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
    {
      [v2 pause];
    }
  }
}

uint64_t sub_1004E77F8()
{
  v1 = v0;
  v2 = type metadata accessor for VideoControls();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = type metadata accessor for VideoFillMode();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VideoConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_100988CE0);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_1009D2200;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    VideoConfiguration.looping.getter();
    (*(v11 + 8))(v15, v10);
    dispatch thunk of VideoPlayer.shouldLoopPlayback.setter();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_100988CE8;
  v22 = *(v1 + qword_100988CE8);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_1009D2200;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = VideoConfiguration.canPlayFullScreen.getter();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_100988CC0);
  v29 = qword_1009D2200;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  VideoConfiguration.fillMode.getter();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = VideoFillMode.contentMode.getter();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    VideoConfiguration.fillMode.getter();
    v71(v15, v10);
    v35 = VideoFillMode.videoGravity.getter();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_1004DFED0(v79);
  sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls);
  v37 = v68;
  v38 = v77;
  dispatch thunk of SetAlgebra.init()();
  sub_1004E805C(&qword_100980970, &type metadata accessor for VideoControls);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_100988CF8);
  static VideoControls.prominentPlay.getter();
  v43 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    static VideoControls.prominentPlayOnPause.getter();
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:VideoControls.containsInlineControls.getter() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_1009D2210 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_1009D2208);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        static VideoControls.muteUnmute.getter();
        v57 = v77;
        v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_1009D21E8);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_1004E1178();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = VideoConfiguration.roundedCorners.getter();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_1009D21E8) & 1) == 0)
    {
      type metadata accessor for ArtworkView();
      static ArtworkView.iconBorderColor.getter();
      dispatch thunk of RoundedCornerView.borderColor.setter();
      static ArtworkView.iconBorderWidth.getter();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  sub_1004E2CA0();
  sub_1004E2164();
  sub_1004E2320();
  return v66(v64, v65);
}

uint64_t sub_1004E805C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004E80A4(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
    dispatch thunk of VideoViewDelegate.videoDidChangeState(to:for:)();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_100988CB8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_1004E2164();
  return sub_1004E1178();
}

void sub_1004E8208()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_1009D2200;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    VideoConfiguration.looping.getter();
    (*(v3 + 8))(v5, v2);
    sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
    dispatch thunk of VideoViewDelegate.videoDidPlayToEnd(isLooping:videoView:)();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_1009D21E8) == 1)
  {
    v7 = *(v1 + qword_100988CE8);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1004E8494;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008C6070;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

void sub_1004E849C(void *a1)
{
  v3 = v1 + qword_100988CA8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_1009D21F0) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006D1458;
  v12 = &unk_1008C6098;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1004E900C;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1006D1458;
  v12 = &unk_1008C60C0;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1004E8640(uint64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for VideoConfiguration();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VideoControls();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_1004E3360(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_100988CE0);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_100988D08) = v37;
        *(v2 + qword_1009D21E8) = 1;
        sub_1004E5244();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_1009D21E8) = 0;
        sub_1004E5244();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_1004E3360(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_100988CA8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
      dispatch thunk of VideoViewDelegate.userInitiatedPause(for:)();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_1004E3360(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_1009D2210 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_100988CE0);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_1009D21E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1004E805C(&qword_100973190, type metadata accessor for VideoView);
      dispatch thunk of VideoViewDelegate.userInitiatedPlay(for:)();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_1004E3360(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_1009D2210 + 752))(v25) & 1) == 0)
    {
      v26 = dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();
      v27 = qword_1009D2200;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        VideoConfiguration.autoPlayPlaybackControls.getter();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        VideoConfiguration.playbackControls.getter();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      static VideoControls.muteUnmute.getter();
      sub_1004E805C(&unk_100988DE0, &type metadata accessor for VideoControls);
      v40 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_100988CE0];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

uint64_t sub_1004E9014(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_10096E568 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009880E0;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1004E9510;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1008C6160;
  }

  else
  {
    if (qword_10096E568 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009880E0;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_100007D18;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_1008C6110;
  }

  v20 = sub_100007A08;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1004E805C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004E93BC()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1004E9434()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_100988CF8) setAlpha:v1];
}

uint64_t sub_1004E946C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100988DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9568()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell();
  sub_1004E9AF8(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_1004E9AF8(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell);
  sub_1004E9AF8(&qword_100974860, type metadata accessor for BaseTodayBrickCollectionViewCell);
  return v0;
}

uint64_t sub_1004E9634()
{
  type metadata accessor for TodayCard();
  sub_1004E9AF8(&qword_100977390, &type metadata accessor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v2)
  {
    return 0;
  }

  TodayCard.media.getter();
  v0 = TodayCardMedia.kind.getter();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell();
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell();
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell();
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground();
  }

  return result;
}

uint64_t sub_1004E9740()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_10002849C(&unk_1009731F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_1004E9AF8(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1004E9634();
  if (result)
  {
    v15 = result;
    sub_1004E9AF8(&qword_100974850, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_1004E9AF8(&qword_100974858, type metadata accessor for BaseTodayBrickCollectionViewCell);
    sub_1004E9AF8(&qword_100974860, type metadata accessor for BaseTodayBrickCollectionViewCell);
    return v15;
  }

  return result;
}

uint64_t sub_1004E9AF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004E9B40()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_1009D2220 = v2;
    *algn_1009D2228 = v4;
    qword_1009D2230 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9C58()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_1009D2238 = v2;
    unk_1009D2240 = v4;
    qword_1009D2248 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9D70()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_1009D2250 = v2;
    *algn_1009D2258 = v4;
    qword_1009D2260 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1004E9E7C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_1009D2268 = v2;
  unk_1009D2270 = v4;
  qword_1009D2278 = v6;
}

id sub_1004E9F68(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = type metadata accessor for VideoControls();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = type metadata accessor for VideoFillMode();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VideoConfiguration();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Uber.Style();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = type metadata accessor for Uber.AssetType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  Uber.assetType.getter();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (Uber.video.getter())
      {
        type metadata accessor for VideoViewManager();
        BaseObjectGraph.inject<A>(_:)();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        Video.preview.getter();
        Artwork.size.getter();
        v31 = v48;
        AspectRatio.init(_:_:)();

        v32 = type metadata accessor for AspectRatio();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        Video.playbackControls.getter();
        Video.autoPlayPlaybackControls.getter();
        Video.canPlayFullScreen.getter();
        Video.allowsAutoPlay.getter();
        Video.looping.getter();
        v33 = v51;
        VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
        Video.playbackId.getter();
        v34 = v54;
        Video.videoUrl.getter();
        v35 = type metadata accessor for URL();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        Video.templateMediaEvent.getter();
        v37 = v56;
        Video.templateClickEvent.getter();
        type metadata accessor for VideoView();
        sub_1004EA8C0(&qword_100973190, type metadata accessor for VideoView);
        v38 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
        sub_10002B894(v37, &unk_100973A50);
        sub_10002B894(v36, &unk_100973A50);
        sub_10002B894(v34, &qword_100982460);
        sub_10002B894(v60, &qword_10096FB90);
        if (v38)
        {
          v39 = v38;
          Video.preview.getter();
          v40 = Artwork.backgroundColor.getter();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  Uber.style.getter();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_1004EA8C0(&qword_100973B50, &type metadata accessor for Uber.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!Uber.artwork.getter() || (v43 = Artwork.backgroundColor.getter(), , !v43))
  {
    if (Uber.compactArtwork.getter())
    {
      v43 = Artwork.backgroundColor.getter();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}

uint64_t sub_1004EA8C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EA908(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*((swift_isaMask & *v1) + 0x1D0))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *((swift_isaMask & *v1) + 0x1C8);

  return v9(result);
}

uint64_t sub_1004EAA64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10097DBD0);
}

uint64_t sub_1004EAACC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10097DBD0);
  return swift_endAccess();
}

uint64_t sub_1004EAB3C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*((swift_isaMask & *v1) + 0x138))())
  {
    v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*((swift_isaMask & *v1) + 0x1D8))(v5);
LABEL_7:
  v6 = *((swift_isaMask & *v1) + 0x1D0);

  return v6(v3);
}

__n128 sub_1004EACA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1004EACC8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

void sub_1004EACE8()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_100005744(0, &qword_100972EB0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_1004EAE8C()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

id sub_1004EB068()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

void sub_1004EB0E4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*((swift_isaMask & *v3) + 0xE0))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*((swift_isaMask & *v3) + 0x1D8))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v12);
  }
}

uint64_t sub_1004EB284()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1004EEDF4;
  *(v4 + 24) = v3;
  v9[4] = sub_10006F094;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000489A8;
  v9[3] = &unk_1008C65B0;
  v5 = _Block_copy(v9);
  v6 = v0;
  v7 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004EB418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*((swift_isaMask & *v2) + 0xE0))(v13);
  type metadata accessor for TodayCardGridTracker();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v14 = sub_1006E2600();
  sub_1004EAB3C(v14);
  type metadata accessor for TodayCard();
  sub_1004EEDAC(&qword_100977390, &type metadata accessor for TodayCard);
  v15 = ItemLayoutContext.typedModel<A>(as:)();
  v16 = v21;
  if (!v21)
  {
  }

  (*((swift_isaMask & *v2) + 0xD8))(v15);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    return sub_10002B894(v10, &qword_10097DBD0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    if (*(v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v18 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v18 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v19 = *(v2 + *v18);
    if (v19 == 7)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*((swift_isaMask & *v2) + 0x1E0))(v16, v19, v7, a2);
      [v2 setNeedsLayout];

      return (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1004EB808(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*((swift_isaMask & *v2) + 0x268))(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  *v8 = v5;
  v8[1] = v7;
  sub_10000827C(v5);
  result = sub_10001F63C(v9);
  if (v5)
  {
    v5(result);
    return sub_10001F63C(v5);
  }

  return result;
}

uint64_t sub_1004EB920()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  return sub_10001F63C(v2);
}

id sub_1004EB9C0()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_1004EEDA4;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1004ED208;
  v10 = &unk_1008C6538;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = type metadata accessor for Feature.iOS();
  v10 = v6;
  v11 = sub_1004EEDAC(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v7 = sub_1000056E0(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = isFeatureEnabled(_:)();
  result = sub_100007000(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

void sub_1004EBBD4(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_1004674A4(a2, a4, a5);
  }

  else
  {
    sub_100467918(a2, a4, a5);
  }
}

double sub_1004EBBF0()
{
  v1 = type metadata accessor for PageGrid();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = sub_1006E2600();
  type metadata accessor for TodayCard();
  sub_1004EEDAC(&qword_100977390, &type metadata accessor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  v6 = v13;
  if (v13)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v7 = v13;
    v8 = (*(v0 + 528))(v6, v5, 0, v4, v13, 0);
  }

  else
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v9 = v13;
    sub_100467918(v5, v4, v13);
    v8 = v10;
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1004EBE78(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*((swift_isaMask & *v3) + 0xE0))(v8);
  sub_1004EAB3C(a2);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = TodayCard.backgroundColor.getter();
    if (!v13)
    {
      sub_100005744(0, &qword_100970180);
      v13 = static UIColor.todayCardDefaultBackground.getter();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

uint64_t sub_1004EC024()
{
  v1 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xD8))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10002B894(v3, &qword_10097DBD0);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_100699674(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

void *sub_1004EC290(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = type metadata accessor for PageGrid();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = type metadata accessor for ShadowView();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell();
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_10096DA38;
  v35 = *(v30 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Shadow();
  v37 = sub_1000056A8(v36, qword_1009CFD08);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  dispatch thunk of ShadowView.shadow.setter();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_100005744(0, &qword_100970180);
    v46 = static UIColor.todayCardDefaultBackground.getter();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*((swift_isaMask & *v30) + 0x278))();
  sub_10002849C(&qword_10097B110);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007B10D0;
  *(v52 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_1004EC9FC()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    ImpressionsCalculator.viewBounds.setter();
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*((swift_isaMask & *v1) + 0x1A8))(v3);
  v4 = (v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {

    v6(v7);
    return sub_10001F63C(v6);
  }

  return result;
}

id sub_1004ECC90(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_1004EA908(*(a1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*((swift_isaMask & *a1) + 0x138))(v5);
  v7 = (*((swift_isaMask & *a2) + 0x140))(v6 & 1);
  v8 = (*((swift_isaMask & *a1) + 0x150))(v7);
  (*((swift_isaMask & *a2) + 0x158))(v8 & 1);
  v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*((swift_isaMask & *a2) + 0x1D8))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1004EAB3C(*(a1 + v11));
  v13 = (*((swift_isaMask & *a1) + 0x190))(v12);
  (*((swift_isaMask & *a2) + 0x198))(v13 & 1);
  v14 = sub_1004EEDAC(&unk_100988FF0, type metadata accessor for BaseTodayCardCollectionViewCell);
  (*((swift_isaMask & *a2) + 0x1E8))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

_BYTE *sub_1004ECFAC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell();
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_100005744(0, &qword_100972EB0);
      if (static NSObject.== infix(_:_:)())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel();
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_1004ED174(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_100005744(0, &qword_100972EB0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_1002A5EF0(v3);

  return v4;
}

Class sub_1004ED208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1004ED284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell()
{
  result = qword_100988FB8;
  if (!qword_100988FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004ED3B0()
{
  sub_1001890DC(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_1001890DC(319, &qword_100977370, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1004ED540()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_1004ED5F8@<D0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x170))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1004ED7E4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_1004ED84C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0);
  return swift_endAccess();
}

uint64_t sub_1004ED920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1004EDA7C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1004EDADC(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1004EDB74()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1004EDBD0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_1004EDDE8(void *a1)
{
  a1[3] = sub_1004EEDAC(&qword_100988FC8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[4] = sub_1004EEDAC(&qword_100988FD0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[5] = sub_1004EEDAC(&qword_100974810, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[6] = sub_1004EEDAC(&qword_100988FD8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[7] = sub_1004EEDAC(&qword_100988FE0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[8] = sub_1004EEDAC(&qword_100988FE8, type metadata accessor for BaseTodayCardCollectionViewCell);
  result = sub_1004EEDAC(&qword_100974820, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[9] = result;
  return result;
}

uint64_t sub_1004EDF34(uint64_t a1, void *a2)
{
  v4 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v6, &qword_10097DBD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &qword_10097DBD0);
  }

  (*(v8 + 32))(v10, v6, v7);
  PageGrid.horizontalDirectionalMargins.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004EE154(uint64_t result, char a2)
{
  if (result)
  {

    TodayCard.media.getter();
    v3 = TodayCardMedia.kind.getter();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
          v5 = &unk_1009877F8;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell();
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          v5 = &unk_1009877E0;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          TodayCard.media.getter();
          type metadata accessor for TodayCardMediaList();
          if (swift_dynamicCastClass())
          {
            v7 = TodayCardMediaList.hasMedia.getter();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell();
              v5 = &unk_100980BB8;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell();
LABEL_36:
        v4 = v8;
        v5 = &unk_100988FF0;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell();
      v5 = &unk_100979D48;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
          v5 = &unk_1009877D0;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
          v5 = &unk_1009877C8;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
          v5 = &unk_1009877C0;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell();
          v5 = &unk_1009877E8;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell();
          v5 = &unk_1009877D8;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_1004EEDAC(v5, v6);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

id sub_1004EE4C4()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*((swift_isaMask & *v1) + 0xD8))();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10002B894(v11, &qword_10097DBD0);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      PageGrid.horizontalDirectionalMargins.getter();
      PageGrid.horizontalDirectionalMargins.getter();
    }

    [v36 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*((swift_isaMask & *v1) + 0xD8))();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10002B894(v15, &qword_10097DBD0);
    v25 = [v1 traitCollection];
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    [v25 layoutDirection];
    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10002B894(v21, &qword_10097DBD0);
  return [v1 setNeedsLayout];
}

uint64_t sub_1004EE9F4(uint64_t a1, char a2, void *a3)
{
  v6 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v8, &qword_10097DBD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002B894(v8, &qword_10097DBD0);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [a3 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  return (*(v10 + 8))(v12, v9);
}

void sub_1004EEC30()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = type metadata accessor for PageGrid();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004EEDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004EEE04()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D22D0);
  sub_1000056A8(v4, qword_1009D22D0);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004EF4D8(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5, char a6)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  sub_1004F09C8(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

id sub_1004EF718()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - v3;
  v5 = SearchAction.term.getter();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  v74 = v5;
  v9 = objc_opt_self();
  if (qword_10096EAA8 != -1)
  {
    swift_once();
  }

  v10 = qword_1009D2D70;
  v11 = [*(v1 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits) traitCollection];
  v12 = [v9 preferredFontForTextStyle:v10 compatibleWithTraitCollection:v11];

  SearchAction.entity.getter();
  v13 = type metadata accessor for SearchEntity();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v4, 1, v13) == 1)
  {
    sub_10002B894(v4, &unk_100982AA0);
    v15 = Action.title.getter();
    if (v16)
    {
      v17 = v15;

      v74 = v17;
    }
  }

  else
  {
    v74 = sub_1004EFF28(v74, v7);
    (*(v14 + 8))(v4, v13);
  }

  v72 = sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  v71 = xmmword_1007B1890;
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSForegroundColorAttributeName;
  v20 = qword_10096EC80;
  v70 = NSForegroundColorAttributeName;
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_1009D3298;
  v22 = sub_100005744(0, &qword_100970180);
  *(inited + 40) = v21;
  v69 = v22;
  *(inited + 64) = v22;
  *(inited + 72) = NSFontAttributeName;
  v23 = sub_100005744(0, &qword_1009730E0);
  *(inited + 104) = v23;
  *(inited + 80) = v12;
  v24 = v21;
  v68 = NSFontAttributeName;
  v73 = v12;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(NSMutableAttributedString);
  v26 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10006F0F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  v29 = SearchAction.prefixTerm.getter();
  if (v30)
  {
    v66 = v29;
    v67 = v30;
    v31 = v28;
    v32 = v73;
    v33 = swift_initStackObject();
    *(v33 + 16) = v71;
    v34 = v70;
    *(v33 + 32) = v70;
    v35 = qword_10096EC78;
    v36 = v34;
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_1009D3290;
    *(v33 + 40) = qword_1009D3290;
    v38 = v68;
    *(v33 + 64) = v69;
    *(v33 + 72) = v38;
    *(v33 + 104) = v23;
    *(v33 + 80) = v32;
    v39 = v38;
    v40 = v32;
    v41 = v37;
    sub_100397150(v33);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = Dictionary._bridgeToObjectiveC()().super.isa;

    v65 = v31;
    v42 = [v31 string];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v79 = v43;
    v80 = v45;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    sub_10007FED4();
    v46 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v48 = v47;

    v79 = v46;
    v80 = v48;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v49 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v51 = v50;

    v79 = v49;
    v80 = v51;
    v77 = 10060002;
    v78 = 0xA300000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v52 = String._bridgeToObjectiveC()();

    v79 = v66;
    v80 = v67;
    v76 = 0xE100000000000000;
    v77 = 9994466;
    v78 = 0xA300000000000000;
    v75 = 39;
    v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v55 = v54;

    v79 = v53;
    v80 = v55;
    v77 = 96;
    v78 = 0xE100000000000000;
    v75 = 39;
    v76 = 0xE100000000000000;
    v56 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v58 = v57;

    v79 = v56;
    v80 = v58;
    v76 = 0xE100000000000000;
    v77 = 10060002;
    v28 = v65;
    v78 = 0xA300000000000000;
    v75 = 39;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v59 = String._bridgeToObjectiveC()();

    v60 = [v52 rangeOfString:v59 options:1];
    v62 = v61;

    v63 = v74;
    [v28 addAttributes:v74 range:{v60, v62}];
  }

  v64 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v28];

  return v64;
}

uint64_t sub_1004EFF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = type metadata accessor for SearchEntity();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_10002849C(&unk_100984010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050);
    v16._object = (v13 | 0x8000000000000000);
    v16._countAndFlagsBits = v6;
    countAndFlagsBits = localizedString(_:with:)(v16, v15)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1004F0214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004F02C8()
{
  result = Action.artwork.getter();
  if (result)
  {
    dispatch thunk of Artwork.systemImageName.getter();
    v2 = v1;

    if (v2)
    {
      v3 = qword_10096EC98;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = [objc_opt_self() configurationWithTextStyle:qword_1009D32B0];
      v5 = static SystemImage.load(_:with:includePrivateImages:)();

      if (qword_10096EC90 != -1)
      {
        swift_once();
      }

      v6 = [v5 imageWithTintColor:qword_1009D32A8];
      swift_bridgeObjectRelease_n();

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004F040C(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v13 = a1;
    IndexPath.item.getter();
    dispatch thunk of SearchHintsPresenter.hint(at:)();
    v14 = sub_1004EF718();
    if (v14)
    {
      v15 = v14;
      v31 = v13;
      v16 = OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView;
      v17 = *(v2 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits);
      v18 = *&v12[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
      v32 = v8;
      v19 = v18;
      [v17 pageMarginInsets];
      [v19 setLayoutMargins:?];

      v20 = *&v12[v16];
      *(v20 + OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator) = 1;
      [*(v20 + OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView) setHidden:0];
      v21 = *&v12[v16];
      v22 = v15;
      v23 = v21;
      v24 = sub_1004F02C8();
      [*&v23[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel] setAttributedText:v22];
      v25 = *&v23[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
      *&v23[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage] = v24;
      v26 = v24;

      sub_1005EA968(v27, v28, v29);
      [v23 setNeedsLayout];

      v30 = v32;

      Action.impressionMetrics.getter();

      if ((*(v30 + 48))(v6, 1, v7) == 1)
      {

        return sub_10002B894(v6, &qword_100973D30);
      }

      else
      {
        (*(v30 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          ImpressionsCalculator.addElement(_:at:)();
        }

        else
        {
        }

        return (*(v30 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1004F07B8()
{
  v1 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for ImpressionMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = IndexPath.item.getter();
  result = dispatch thunk of SearchHintsPresenter.resultCount.getter();
  if (v8 < result)
  {
    IndexPath.item.getter();
    dispatch thunk of SearchHintsPresenter.hint(at:)();
    Action.impressionMetrics.getter();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10002B894(v3, &qword_100973D30);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        ImpressionsCalculator.removeElement(_:)();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_1004F09C8(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(IndexPath.item.getter(), 1))
  {
    __break(1u);
  }

  else
  {
    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_1004F0B50(void *a1)
{
  IndexPath.item.getter();
  dispatch thunk of SearchHintsPresenter.hint(at:)();
  v3 = sub_1004EF718();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_1005EB9BC(v3, v6);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1004F0C60()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView] setImage:0];
  *&v0[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = 0;
}

uint64_t sub_1004F0D04()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductCapabilityLayout.Metrics();
  sub_100005644(v4, qword_1009D22E8);
  v30 = sub_1000056A8(v4, qword_1009D22E8);
  v40[8] = &type metadata for Double;
  v40[9] = &protocol witness table for Double;
  v40[5] = 0x4030000000000000;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1010);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = type metadata accessor for StaticDimension();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v5, qword_1009D1028);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_1000056E0(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v34);
  v18 = v27;
  v27(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_1000056E0(v34);
  v32 = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v31);
  v18(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19(v3, v0);
  v33 = &protocol witness table for Double;
  v32 = &type metadata for Double;
  v31[0] = 0;
  return ProductCapabilityLayout.Metrics.init(iconSize:iconMargin:titleSpace:captionTopSpace:captionBottomSpace:bottomSpace:)();
}

uint64_t sub_1004F118C()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100989060);
  sub_1000056A8(v0, qword_100989060);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1004F1228()
{
  v0 = [objc_opt_self() systemFontOfSize:30.0];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_100989078 = v1;
}

char *sub_1004F12A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v49 - v18;
  v20 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView;
  *&v5[v23] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v10, qword_1009D1010);
  v26 = *(v11 + 16);
  v26(v19, v25, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v27 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v24] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v28 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v10, qword_1009D1028);
  v30 = v49;
  v26(v49, v29, v10);
  v31 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v5[v28] = sub_1002F5B8C(v30, 0, 0);
  *&v5[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = 0;
  v52.receiver = v5;
  v52.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v34 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  [*&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView] setContentMode:1];
  [*&v32[v34] setAccessibilityIgnoresInvertColors:1];
  v35 = qword_10096E680;
  v36 = *&v32[v34];
  if (v35 != -1)
  {
    swift_once();
  }

  [v36 setPreferredSymbolConfiguration:qword_100989078];

  v37 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  v38 = *&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 systemGrayColor];
  [v40 setTextColor:v41];

  v42 = qword_10096E678;
  v43 = *&v32[v37];
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v44, qword_100989060);
  v51 = v32;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v45 = [v32 contentView];
  [v45 addSubview:*&v32[v34]];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel]];

  v47 = [v32 contentView];
  [v47 addSubview:*&v32[v37]];

  return v32;
}

uint64_t sub_1004F1944()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for LayoutRect();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ProductCapabilityLayout();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProductCapabilityLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v34 - v12;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutSubviews", v11);
  v35 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon];
  v15 = qword_10096E670;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D22E8);
  v38 = v7;
  v17 = *(v7 + 16);
  v17(v13, v16, v6);
  if (v14)
  {
    v18 = qword_10096E680;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = static SystemImage.load(artwork:with:includePrivateImages:)();
    if (v19)
    {
      v20 = v19;
      [v19 size];
    }
  }

  ProductCapabilityLayout.Metrics.iconSize.setter();

  v17(v9, v13, v6);
  v21 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView];
  v49 = sub_100005744(0, &qword_100972EB0);
  v50 = &protocol witness table for UIView;
  v48 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
  v46 = sub_100005744(0, &qword_100986BF0);
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel];
  v43 = type metadata accessor for DynamicTypeLinkedLabel();
  v44 = &protocol witness table for UIView;
  v42 = v23;
  v24 = v21;
  v25 = v22;
  v26 = v23;
  v27 = v39;
  ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)();
  v28 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();

  ProductCapabilityLayout.placeChildren(relativeTo:in:)();
  (*(v36 + 8))(v4, v37);
  if (!*&v1[v35])
  {
    goto LABEL_16;
  }

  v29 = qword_10096E680;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = static SystemImage.load(artwork:with:includePrivateImages:)();
  if (!v30)
  {

LABEL_16:
    v31 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
    [v31 frame];
    [v31 setFrame:?];
    goto LABEL_17;
  }

  v31 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
  v32 = v30;
  [v30 size];
  [v31 frame];
  [v31 setFrame:?];

LABEL_17:
  [v24 center];
  [v31 setCenter:?];
  (*(v40 + 8))(v27, v41);
  return (*(v38 + 8))(v13, v6);
}

id sub_1004F1FC8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E678 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_100989060);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

uint64_t type metadata accessor for ProductCapabilityCell()
{
  result = qword_1009890A8;
  if (!qword_1009890A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004F2268()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004F2318()
{
  sub_100005744(0, &qword_100973120);
  sub_1000D0150();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_1004F2388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a4;
  v50 = a3;
  v48 = a1;
  v60 = type metadata accessor for ProductCapabilityLayout();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = type metadata accessor for ProductCapabilityLayout.Metrics();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v55 = &v44[-v9];
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v44[-v14];
  v51 = type metadata accessor for LayoutViewPlaceholder();
  v53 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v16 = sub_100005744(0, &qword_1009730E0);
  v17 = qword_10096E030;

  if (v17 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for FontUseCase();
  sub_1000056A8(v46, qword_1009D1010);
  v61 = a5;
  v18 = [a5 traitCollection];
  v47 = v16;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v19 = type metadata accessor for Feature();
  v70[3] = v19;
  v20 = sub_1004F2BB4(&qword_100972E50, &type metadata accessor for Feature);
  v70[4] = v20;
  v21 = sub_1000056E0(v70);
  v22 = *(*(v19 - 8) + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v22(v21);
  isFeatureEnabled(_:)();
  sub_100007000(v70);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v23 = *(v11 + 8);
  v23(v15, v10);
  if (v50)
  {
    v48 = LinkableText.plainText.getter();
  }

  else
  {
    v48 = 0;
  }

  v50 = v10;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v46, qword_1009D1028);
  v24 = [v61 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v68 = v19;
  v69 = v20;
  v25 = sub_1000056E0(&v67);
  (v22)(v25, v45, v19);
  isFeatureEnabled(_:)();
  sub_100007000(&v67);
  v26 = v49;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v23(v26, v50);
  if (qword_10096E670 != -1)
  {
    swift_once();
  }

  v27 = v58;
  v28 = sub_1000056A8(v58, qword_1009D22E8);
  v29 = v56;
  v30 = *(v56 + 16);
  v31 = v55;
  v30(v55, v28, v27);
  if (v52)
  {
    v32 = qword_10096E680;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = static SystemImage.load(artwork:with:includePrivateImages:)();
    if (v33)
    {
      v34 = v33;
      [v33 size];
    }
  }

  ProductCapabilityLayout.Metrics.iconSize.setter();
  v30(v54, v31, v27);
  v65 = v51;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v53;
  sub_10002C0AC(v70, v63);
  v35 = v68;
  v36 = v69;
  v37 = sub_10002A400(&v67, v68);
  v62[3] = v35;
  v62[4] = *(v36 + 8);
  v38 = sub_1000056E0(v62);
  (*(*(v35 - 8) + 16))(v38, v37, v35);

  v39 = v57;
  ProductCapabilityLayout.init(metrics:iconView:titleText:captionText:)();
  sub_1004F2BB4(&qword_1009890C0, &type metadata accessor for ProductCapabilityLayout);
  v40 = v60;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v42 = v41;

  (*(v59 + 8))(v39, v40);
  (*(v29 + 8))(v31, v27);
  sub_100007000(v70);
  sub_100007000(&v67);
  return v42;
}

uint64_t sub_1004F2BB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004F2BFC()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconPositioningView;
  *(v1 + v15) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel;
  if (qword_10096E030 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v2, qword_1009D1010);
  v18 = *(v3 + 16);
  v18(v11, v17, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v16) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v20 = OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_captionLabel;
  if (qword_10096E038 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v2, qword_1009D1028);
  v22 = v25;
  v18(v25, v21, v2);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *(v1 + v20) = sub_1002F5B8C(v22, 0, 0);
  *(v1 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1004F2FDC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = static String.isNilOrEmpty(_:)();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_1004F3190(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = a7;
  LODWORD(v132) = a6;
  v129 = a5;
  v138 = a4;
  v133 = a3;
  v130 = a10;
  v122 = type metadata accessor for TertiaryIconPlacement();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AdamId();
  v136 = *(v14 - 8);
  v137 = v14;
  __chkstk_darwin(v14);
  v125 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v135 = &v119 - v17;
  __chkstk_darwin(v18);
  v123 = &v119 - v19;
  v139 = type metadata accessor for OfferLabelStyle();
  v134 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v127 = &v119 - v22;
  v23 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v23 - 8);
  v126 = &v119 - v24;
  v25 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v25 - 8);
  v27 = &v119 - v26;
  v28 = type metadata accessor for OfferButtonSubtitlePosition();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v124 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v31 - 8);
  v33 = &v119 - v32;
  v34 = sub_10002849C(&unk_1009701A0);
  v141 = *(v34 - 8);
  v142 = v34;
  __chkstk_darwin(v34);
  v143 = &v119 - v35;
  v140 = a1;
  v36 = Lockup.heading.getter();
  if (v37)
  {
    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v119 = a8;
      sub_100028BB8();
      v39 = static UIColor.primaryText.getter();
      sub_10003EE6C(1, v39);

      v40 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
      if (v40)
      {
        v41 = v40;
        v42 = String._bridgeToObjectiveC()();

        [v41 setText:v42];
      }

      else
      {
      }

      a8 = v119;
      goto LABEL_13;
    }
  }

  v43 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v44 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v44)
  {
    [v44 setHidden:1];
    v45 = *&a2[v43];
    if (v45)
    {
      [v45 setText:0];
    }
  }

LABEL_13:
  v46 = Lockup.title.getter();
  sub_10003D978(v46, v47);
  v48 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel];
  Lockup.ordinal.getter();
  if (v49)
  {
    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  [v48 setText:v50];

  sub_100031660(v130, v33, &unk_100970150);
  v52 = v141;
  v51 = v142;
  if ((*(v141 + 48))(v33, 1, v142) == 1)
  {
    sub_10002B894(v33, &unk_100970150);
    v53 = *(v29 + 104);
    v53(v124, enum case for OfferButtonSubtitlePosition.below(_:), v28);
    v53(v27, enum case for OfferButtonSubtitlePosition.right(_:), v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    sub_1004F4330(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    AccessibilityConditional.init(value:axValue:)();
  }

  else
  {
    (*(v52 + 32))(v143, v33, v51);
  }

  v54 = v139;
  v55 = v134;
  v56 = Lockup.offerDisplayProperties.getter();
  v57 = v131;
  if (!v56)
  {
    goto LABEL_24;
  }

  v58 = type metadata accessor for OfferStyle();
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    v59 = type metadata accessor for OfferEnvironment();
    if ((*(*(v59 - 8) + 48))(a8, 1, v59) == 1)
    {
      v60 = type metadata accessor for OfferTint();
      if ((*(*(v60 - 8) + 48))(a9, 1, v60) == 1)
      {

LABEL_24:
        v61 = Lockup.offerDisplayProperties.getter();
        goto LABEL_26;
      }
    }
  }

  v62 = v126;
  (*(v55 + 56))(v126, 1, 1, v54);
  v144 = 0u;
  v145 = 0u;
  v61 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

  sub_10002B894(&v144, &unk_1009711D0);
  sub_10002B894(v62, &qword_100973AC8);
LABEL_26:

  v63 = Lockup.buttonAction.getter();
  v64 = Lockup.includeBetaApps.getter();
  sub_10064AFA4(v61, v63, 0, v133, v143, v138, v132 & 1, v64 & 1);

  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v134 = *(&v144 + 1);
  v139 = v144;
  if (v61)
  {
    v65 = v61;
    v66 = v127;
    OfferDisplayProperties.offerLabelStyle.getter();
    v67 = v128;
    (*(v55 + 104))(v128, enum case for OfferLabelStyle.none(_:), v54);
    sub_1004F4330(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    v69 = *(v55 + 8);
    v69(v67, v54);
    v69(v66, v54);
    if ((v68 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      type metadata accessor for ASKBagContract();
      swift_unknownObjectRetain();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v71 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v72 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v145 + 1) = v71;
      *&v144 = v72;
      v73 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
      swift_beginAccess();

      sub_100283DDC(&v144, &a2[v73]);
      swift_endAccess();
      [*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] frame];
      v147.origin.x = 0.0;
      v147.origin.y = 0.0;
      v147.size.width = 0.0;
      v147.size.height = 0.0;
      v61 = v65;
      if (CGRectEqualToRect(v146, v147))
      {
        v74 = objc_opt_self();
        v75 = [v74 areAnimationsEnabled];
        [v74 setAnimationsEnabled:0];
        sub_1004F4330(&qword_1009890C8, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
        [a2 layoutIfNeeded];
        [v74 setAnimationsEnabled:v75];
      }

      else
      {
        sub_1004F4330(&qword_1009890C8, type metadata accessor for BaseLockupView);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
      }

      goto LABEL_34;
    }

    v61 = v65;
  }

  v144 = 0u;
  v145 = 0u;
  v70 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100283DDC(&v144, &a2[v70]);
  swift_endAccess();
  sub_1004F2FDC(0, 0);
LABEL_34:
  v76 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v77 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v78 = &selRef_loadView;
  if (v77 && ([v77 isHidden] & 1) == 0 && (v79 = *&a2[v76]) != 0)
  {
    v80 = [v79 hasContent];
  }

  else
  {
    v80 = 0;
  }

  v81 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
  swift_beginAccess();
  sub_100031660(&a2[v81], &v144, &unk_1009711D0);
  v82 = *(&v145 + 1);
  LODWORD(v138) = *(&v145 + 1) != 0;
  sub_10002B894(&v144, &unk_1009711D0);
  v83 = Lockup.tertiaryTitle.getter();
  if (!v84)
  {
LABEL_45:
    v86 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v87 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v87)
    {
      [v87 setHidden:1];
      v88 = *&a2[v86];
      if (v88)
      {
        [v88 setText:0];
      }
    }

    goto LABEL_54;
  }

  if (v82)
  {
    v85 = v80;
  }

  else
  {
    v85 = 0;
  }

  if (v85)
  {

    goto LABEL_45;
  }

  v133 = v83;
  v89 = v84;
  sub_10003F12C();
  Lockup.tertiaryTitleIcons.getter();
  v90 = Array.isNotEmpty.getter();

  v91 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v90)
  {
    if (v91)
    {
      v132 = v91;
      v92 = Lockup.tertiaryTitleIcons.getter();
      v93 = v120;
      Lockup.tertiaryIconPlacement.getter();
      v94 = v132;
      sub_1005D4DD8(v92, v133, v89, v93);

      v95 = v93;
      v78 = &selRef_loadView;
      (*(v121 + 8))(v95, v122);
      goto LABEL_54;
    }
  }

  else if (v91)
  {
    v96 = v91;
    v97 = String._bridgeToObjectiveC()();

    [v96 setText:v97];

    v78 = &selRef_loadView;
    goto LABEL_54;
  }

LABEL_54:
  v98 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  Lockup.subtitle.getter();
  if (v99)
  {
    v100 = String._bridgeToObjectiveC()();
  }

  else
  {
    v100 = 0;
  }

  [v98 setText:v100];

  v101 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v102 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v102)
  {
    v103 = [v102 isHidden];
    v104 = v141;
    if ((v103 & 1) != 0 || (v105 = *&a2[v101]) == 0)
    {
      v106 = 0;
    }

    else
    {
      v106 = [v105 v78[161]];
    }
  }

  else
  {
    v106 = 0;
    v104 = v141;
  }

  if (![v98 v78[161]])
  {
    goto LABEL_69;
  }

  if (v106)
  {
    if (v82)
    {
      v107 = 1;
    }

    else
    {
      v107 = v80;
    }

    if (v107)
    {
LABEL_69:
      v108 = 1;
      goto LABEL_72;
    }
  }

  else
  {
    v108 = v138;
    if (v80)
    {
      goto LABEL_72;
    }
  }

  v108 = 0;
LABEL_72:
  [v98 setHidden:v108];
  v109 = *&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  if (Lockup.icon.getter())
  {

    v110 = v129;
  }

  else
  {
    v110 = 1;
  }

  [v109 setHidden:v110 & 1];
  v111 = Lockup.includeBetaApps.getter();
  if (v61 && (v111 & 1) != 0)
  {
    v112 = v125;
    OfferDisplayProperties.adamId.getter();
    (*(v136 + 32))(v135, v112, v137);
    swift_getObjectType();
    v113 = dispatch thunk of AppStateController.stateMachine(forApp:)();
    v115 = v114;
    v116 = &a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
    }

    *v116 = v113;
    v116[1] = v115;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_10003DAE8();
    swift_unknownObjectRelease();
    (*(v136 + 8))(v135, v137);
  }

  else
  {
    v117 = &a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine];
    if (*&a2[OBJC_IVAR____TtC8AppStore14BaseLockupView_stateMachine])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
    }

    *v117 = 0;
    *(v117 + 1) = 0;
    swift_unknownObjectRelease();
    sub_10003DAE8();
  }

  [a2 setNeedsLayout];
  swift_unknownObjectRelease();

  return (*(v104 + 8))(v143, v142);
}

uint64_t sub_1004F4330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F4378()
{
  v33 = type metadata accessor for UUID();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100979740);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_10002849C(&qword_100973210);
  v30 = swift_allocObject();
  v31 = xmmword_1007B0B70;
  *(v30 + 16) = xmmword_1007B0B70;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.placeholderDisableShelfHydration.getter();
  v10 = static LocalPreferences.AppStoreKit.getter();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x8000000100817C60;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  AnyHashable.init<A>(_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_1004F46E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004F473C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_10002849C(&unk_100987AF0);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  type metadata accessor for Lockup();
  sub_1004F5034();
  result = ItemLayoutContext.typedModel<A>(as:)();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_10002849C(&unk_100973240);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = type metadata accessor for OfferStyle();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = type metadata accessor for OfferEnvironment();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_10002849C(&unk_1009701A0);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = type metadata accessor for OfferTint();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_1004F3190(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10002B894(v12, &unk_100973AD0);
    v27[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v27 setNeedsLayout];
    sub_10002B894(v15, &unk_100970150);
    sub_10002B894(v18, &unk_100970160);
    sub_10002B894(v21, &qword_100973AE0);
    sub_10002B894(v24, &unk_100973230);
    v33 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    v35 = Lockup.subtitleTextColor.getter();
    if (!v35)
    {
      sub_100028BB8();
      v35 = static UIColor.secondaryText.getter();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    Lockup.subtitleTextFilter.getter();
    v38 = type metadata accessor for TitleEffectFilterType();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10002B894(v9, &unk_100987AF0);
    }

    else
    {
      TitleEffectFilterType.compositingFilter.getter();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_10002A400(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_100007000(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        Lockup.subtitleTextFilter.getter();
        v51 = v40(v50, 1, v38) == 1;
        sub_10002B894(v50, &unk_100987AF0);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1004F4E94@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004F4EF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_1004F4FB8()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v4, v2);
}

unint64_t sub_1004F5034()
{
  result = qword_100974480;
  if (!qword_100974480)
  {
    type metadata accessor for Lockup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974480);
  }

  return result;
}

id sub_1004F508C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow] = a1;
  v6 = OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_layoutConfiguration;
  v7 = type metadata accessor for AvatarShowcaseLayoutConfiguration();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a2, v7);
  AvatarShowcaseLayoutConfiguration.visibleWidth.getter();
  v10 = v9 * a1;
  AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
  v12 = v10 + v11;
  AvatarShowcaseLayoutConfiguration.width.getter();
  v14 = v13;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for AvatarShowcaseView();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, v12, v14);
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 clearColor];
  [v17 setBackgroundColor:v18];

  (*(v8 + 8))(a2, v7);
  return v17;
}

void sub_1004F5270(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = a1;

  if (!a1)
  {
    return;
  }

  v4 = [v2 subviews];
  sub_100005744(0, &qword_100972EB0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v6; ++i)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v8 = *(v5 + 8 * i + 32);
        }

        v9 = v8;
        type metadata accessor for ArtworkView();
        if (swift_dynamicCastClass())
        {
          sub_10009A098();
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }
      }
    }
  }
}

void sub_1004F53FC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v6 - 8);
  v59 = &v51 - v7;
  v58 = type metadata accessor for CornerStyle();
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F5A50();

  v57 = a2;
  sub_1004F5270(v11);
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (*&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow] >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *&v3[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_maxPlayersToShow];
  }

  AvatarShowcaseLayoutConfiguration.visibleWidth.getter();
  v15 = v14 * v13;
  AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
  v17 = v15 + v16;
  [v3 frame];
  v19 = v18;
  v21 = v20;
  [v3 frame];
  [v3 setFrame:{v19, v21, v17}];
  if (v13 < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v60 = a1;
  if (v13)
  {
    v52 = v60 & 0xC000000000000001;
    if ((v60 & 0xC000000000000001) != 0 || v13 <= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v56 = sub_100005744(0, &qword_100970180);
      v22 = 0;
      v55 = (v8 + 104);
      v54 = enum case for CornerStyle.arc(_:);
      v53 = (v8 + 8);
      v51 = v13;
      while (1)
      {
        AvatarShowcaseLayoutConfiguration.width.getter();
        v25 = v24;
        AvatarShowcaseLayoutConfiguration.overlappedWidth.getter();
        v27 = (v25 - v26) * v22;
        AvatarShowcaseLayoutConfiguration.width.getter();
        v29 = v28;
        AvatarShowcaseLayoutConfiguration.width.getter();
        v31 = v30;
        v8 = type metadata accessor for ArtworkView();
        v32 = [objc_allocWithZone(v8) initWithFrame:{v27, 0.0, v29, v31}];
        static UIColor.placeholderBackground.getter();
        ArtworkView.backgroundColor.setter();
        AvatarShowcaseLayoutConfiguration.width.getter();
        v33 = v58;
        (*v55)(v10, v54, v58);
        ArtworkView.setCorner(radius:style:)();
        (*v53)(v10, v33);
        if (qword_10096DA58 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Shadow();
        v35 = sub_1000056A8(v34, qword_1009CFD68);
        v36 = *(v34 - 8);
        v37 = v59;
        (*(v36 + 16))(v59, v35, v34);
        v38 = *(v36 + 56);
        a1 = v36 + 56;
        v38(v37, 0, 1, v34);
        ArtworkView.shadow.setter();
        v39 = [v3 traitCollection];
        LOBYTE(v37) = UITraitCollection.prefersRightToLeftLayouts.getter();

        v40 = [v3 subviews];
        sub_100005744(0, &qword_100972EB0);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = v41 >> 62;
        if (v37)
        {
          if (v42)
          {
            v43 = _CocoaArrayWrapper.endIndex.getter();
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v43)
            {
              goto LABEL_11;
            }
          }

          v44 = __OFSUB__(v43, 1);
          v45 = v43 - 1;
          if (v44)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v45 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v46 = *(v41 + 8 * v45 + 32);
LABEL_29:
            v47 = v46;
            goto LABEL_30;
          }
        }

        else
        {
          if (v42)
          {
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_11:

              [v3 addSubview:v32];
              v23 = 0;
              if (!v52)
              {
                goto LABEL_34;
              }

              goto LABEL_12;
            }
          }

          else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_11;
          }

          if ((v41 & 0xC000000000000001) == 0)
          {
            if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v46 = *(v41 + 32);
            goto LABEL_29;
          }
        }

        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
        v48 = v47;

        v23 = v48;
        v49 = [v3 traitCollection];
        v50 = UITraitCollection.prefersRightToLeftLayouts.getter();

        if (v50)
        {
          [v3 insertSubview:v32 aboveSubview:{v23, v51}];
        }

        else
        {
          [v3 insertSubview:v32 belowSubview:{v23, v51}];
        }

        if (!v52)
        {
LABEL_34:

          goto LABEL_13;
        }

LABEL_12:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
        ++v22;
        AvatarShowcaseLayoutConfiguration.width.getter();
        AvatarShowcaseLayoutConfiguration.width.getter();
        Artwork.config(using:)();
        sub_10009A098();
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        if (v51 == v22)
        {
          return;
        }
      }
    }

    goto LABEL_47;
  }
}

void sub_1004F5A50()
{
  *&v0[OBJC_IVAR____TtC8AppStore18AvatarShowcaseView_artworkLoader] = 0;

  v1 = [v0 subviews];
  sub_100005744(0, &qword_100972EB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:
}

id sub_1004F5BA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarShowcaseView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AvatarShowcaseView()
{
  result = qword_100989128;
  if (!qword_100989128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004F5CA8()
{
  result = type metadata accessor for AvatarShowcaseLayoutConfiguration();
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

uint64_t sub_1004F5D9C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSLogger();
  sub_100005644(v4, qword_1009D2340);
  sub_1000056A8(v4, qword_1009D2340);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v5, v0);
  return OSLogger.init(subsystem:category:)();
}

id sub_1004F6054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore24UpsellGridViewController_gridView];
  v7 = *&v3[OBJC_IVAR____TtC8AppStore24UpsellGridViewController_artworkLoader];
  result = [v3 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    v11 = v10;
    v13 = v12;

    *(v6 + OBJC_IVAR____TtC8AppStore14UpsellGridView_primaryIcon) = a1;

    v14 = OBJC_IVAR____TtC8AppStore14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *(v6 + v14) = a2;

    *(v6 + OBJC_IVAR____TtC8AppStore14UpsellGridView_artworkLoader) = v7;

    return sub_10045222C(v11, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004F6230()
{
  if (qword_10096E688 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for OSLogger();
  sub_1000056A8(v0, qword_1009D2340);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_1000056E0(v4);
  (*(*(v3 - 8) + 16))(v1);
  static LogMessage.safe(_:)();
  sub_10003D444(v4);
  Logger.error(_:)();
}

uint64_t sub_1004F6454(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UpsellGridViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeLinkedTextView()
{
  result = qword_1009891A0;
  if (!qword_1009891A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1004F6538(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1004F664C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1004F6770@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v12 = a3;
    v5 = (a2 + 72);
    while (1)
    {
      v6 = *(v5 - 5);
      v7 = *(v5 - 4);
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      v10 = *(v5 - 1);
      v11 = *v5;
      v13[0] = v6;
      v13[1] = v7;
      v13[2] = v8;
      v13[3] = v9;
      v13[4] = v10;
      v13[5] = v11;

      result = v14(v13);
      if (v3)
      {
        break;
      }

      if (result)
      {
        goto LABEL_7;
      }

      v5 += 6;

      if (!--v4)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
LABEL_7:
        a3 = v12;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_9:
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
  }

  return result;
}

id sub_1004F68BC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1004F6914(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v15, "textColor");
  v14.receiver = v6;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "setTextColor:", v7);
  v13.receiver = v6;
  v13.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v13, "textColor");
  if (v9)
  {
    v10 = v9;
    if (v8)
    {
      sub_100005744(0, &qword_100970180);
      v11 = v8;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v8)
  {
    goto LABEL_10;
  }

  sub_1004F6A30();
  v11 = v8;
LABEL_9:

LABEL_10:
}

id sub_1004F6A30()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DynamicTypeTextView.fontUseCase.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &qword_100972ED0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = *&v0[qword_100989198];
  if (!v10)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v65 = v6;
  v66 = v5;
  v11 = sub_100005744(0, &qword_1009730E0);

  v12 = dispatch thunk of DynamicTypeTextView.traitCollectionForFontUseCases.getter();
  v64 = v8;
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v14 = *&v0[qword_100989190];
  v85.receiver = v0;
  v85.super_class = ObjectType;
  v71 = v14;

  v15 = objc_msgSendSuper2(&v85, "textAlignment");
  v16 = dispatch thunk of DynamicTypeTextView.lineBreakMode.getter();
  v67 = v0;
  v84.receiver = v0;
  v84.super_class = ObjectType;
  v70 = ObjectType;
  result = objc_msgSendSuper2(&v84, "textColor");
  if (result)
  {
    v17 = result;
    v18 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v18 setAlignment:v15];
    [v18 setLineBreakMode:v16];
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1890;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v20 = sub_100005744(0, &unk_100976610);
    *(inited + 40) = v18;
    *(inited + 64) = v20;
    *(inited + 72) = NSFontAttributeName;
    *(inited + 104) = v11;
    *(inited + 80) = v13;
    v21 = NSParagraphStyleAttributeName;
    v22 = v18;
    v23 = NSFontAttributeName;
    v24 = v13;
    v25 = sub_100397150(inited);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0);
    swift_arrayDestroy();
    v78 = sub_100005744(0, &qword_100970180);
    *&aBlock = v17;
    sub_100056164(&aBlock, v82);
    v62 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v25;
    sub_100051368(v82, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
    v83 = v81;

    sub_100005744(0, &qword_100989250);
    v69 = v24;
    v63 = v10;
    v27 = dispatch thunk of StyledText.asAttributedString(using:)();
    v28._rawValue = v83;

    isa = NSAttributedString.init(attributedString:defaultAttributes:)(v27, v28).super.isa;
    v30 = v22;
    v31 = isa;
    v32 = [(objc_class *)v31 fullRange];
    [(objc_class *)v31 addAttribute:v21 value:v30 range:v32, v33];
    v61 = v30;

    v68 = swift_allocObject();
    *(v68 + 16) = 0;
    *&v82[0] = 0;
    v34 = *(v71 + 16);
    v73 = NSLinkAttributeName;
    if (v34)
    {
      v72 = NSUnderlineStyleAttributeName;
      v35 = v71 + 72;
      do
      {
        v36 = *(v35 - 24);
        v74 = *(v35 - 8);

        v75 = v36;

        v37 = sub_1004F81C4(v82, v31);
        v38 = String._bridgeToObjectiveC()();
        v39 = [v37 rangeOfString:v38 options:4];
        v41 = v40;

        if (v39 != NSNotFound.getter())
        {
          v42 = String._bridgeToObjectiveC()();
          [(objc_class *)v31 addAttribute:v73 value:v42 range:v39, v41];

          if (UIAccessibilityButtonShapesEnabled())
          {
            v43 = Int._bridgeToObjectiveC()().super.super.isa;
            [(objc_class *)v31 addAttribute:v72 value:v43 range:v39, v41];
          }
        }

        v35 += 48;

        --v34;
      }

      while (v34);
    }

    v44 = [(objc_class *)v31 fullRange];
    v46 = v45;
    v47 = v31;
    v48 = swift_allocObject();
    v49 = v71;
    v48[2] = v70;
    v48[3] = v49;
    v50 = v69;
    v48[4] = v68;
    v48[5] = v50;
    v48[6] = &v83;
    v48[7] = v47;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1004F8984;
    *(v51 + 24) = v48;
    v79 = sub_1002CA5FC;
    v80 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v77 = sub_1006607C0;
    v78 = &unk_1008C66D8;
    v52 = _Block_copy(&aBlock);
    v53 = v50;

    [(objc_class *)v47 enumerateAttribute:v73 inRange:v44 options:v46 usingBlock:0, v52];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if ((v52 & 1) == 0)
    {
      v54 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v47];

      v55 = *&v82[0];

      v56 = v67;
      [v67 setAttributedText:v54];

      dispatch thunk of StyledText.plainText.getter();
      String.languageAwareOutsets(whenUsedWith:)();
      v58 = v57;
      v60 = v59;

      [v56 setTextContainerInset:{v58, 0.0, v60, 0.0}];

      return (*(v65 + 8))(v64, v66);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1004F7344(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_1004F7384(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "textAlignment");
  v9.receiver = v6;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setTextAlignment:", a3);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "textAlignment") != v7)
  {
    sub_1004F6A30();
  }
}

uint64_t sub_1004F7424()
{
  type metadata accessor for DynamicTypeTextView();
  v0 = method lookup function for DynamicTypeTextView();

  return v0();
}

uint64_t sub_1004F747C(char *a1)
{
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  type metadata accessor for DynamicTypeTextView();
  v9 = method lookup function for DynamicTypeTextView();
  v9();
  (*(v3 + 16))(v5, a1, v2);
  v10 = method lookup function for DynamicTypeTextView();
  v11 = v10(v5);
  (v9)(v11);
  sub_1004F8DBC(&qword_100989258, &type metadata accessor for DirectionalTextAlignment);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v3 + 8);
  v13(v5, v2);
  if ((v12 & 1) == 0)
  {
    sub_1004F6A30();
  }

  v13(a1, v2);
  return (v13)(v8, v2);
}

void (*sub_1004F7684(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for DirectionalTextAlignment();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  type metadata accessor for DynamicTypeTextView();
  v9 = method lookup function for DynamicTypeTextView();
  v9();
  return sub_1004F77B0;
}

void sub_1004F77B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1004F747C(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1004F747C(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1004F7864(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1004F6A30();
}

id sub_1004F78BC(uint64_t a1, uint64_t a2)
{
  *&v2[qword_100989198] = a1;

  v4 = qword_100989190;
  *&v2[qword_100989190] = a2;

  if (*(*&v2[v4] + 16))
  {
    v5 = &UIAccessibilityTraitLink;
  }

  else
  {
    v5 = &UIAccessibilityTraitStaticText;
  }

  [v2 setAccessibilityTraits:*v5];

  return sub_1004F6A30();
}

id sub_1004F7970()
{
  [v0 setAttributedText:0];
  *&v0[qword_100989198] = 0;

  v1 = qword_100989190;
  *&v0[qword_100989190] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  [v0 setAccessibilityTraits:*v2];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

void sub_1004F7A34(void *a1)
{
  v1 = a1;
  sub_1004F6A30();
}

uint64_t sub_1004F7A7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + qword_100989190);
    v8 = Strong;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(Strong);
  *(&v16 - 2) = a2;
  sub_1004F6770(sub_1004F8E08, v7, &v17);

  v10 = v18;
  if (v18)
  {
    v11 = v17;
    v13 = v19;
    v12 = v20;
    v14 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      v22 = v11;
      v23 = v10;
      sub_1001964F0(&v22);

      v24 = v21;
      sub_1001964F0(&v24);
      return sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v13, 1, v12, v5);
      v22 = v11;
      v23 = v10;
      sub_1001964F0(&v22);

      v24 = v21;
      sub_1001964F0(&v24);

      return (*(v15 + 8))(v5, v14);
    }
  }

  return result;
}

id sub_1004F7CE8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = sub_1004F89D4(v9, v10);

  return v12;
}

BOOL sub_1004F7D7C()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_100989190);
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[6];
    v7 = v4[7];
    v8 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10002B894(v3, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v6, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v5 != 0;
}

BOOL sub_1004F7F4C(void *a1)
{
  v1 = a1;
  v2 = sub_1004F7D7C();

  return v2;
}

uint64_t sub_1004F7F80()
{
  Action.id.getter();
  v0 = AnyHashable.description.getter();
  v2 = v1;
  sub_10003D614(v7);
  v3 = URL.host.getter();
  if (v4)
  {
    if (v0 == v3 && v4 == v2)
    {

      v5 = 1;
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1004F805C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = 0x2F3A6E6F69746361;
  v16 = 0xE90000000000002FLL;

  Action.id.getter();
  v10._countAndFlagsBits = AnyHashable.description.getter();
  String.append(_:)(v10);

  result = sub_10003D614(v14);
  v12 = v15;
  v13 = v16;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v12;
  a5[5] = v13;
  return result;
}

id sub_1004F8120(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v5 = [objc_opt_self() configurationWithFont:a2 scale:1];
    swift_beginAccess();
    v6 = *v3;
    *v3 = v5;
    v4 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v4;
}

id sub_1004F81C4(void **a1, id a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *a1;
  }

  else
  {
    v5 = [a2 string];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = [objc_allocWithZone(NSString) initWithString:v5];

    swift_beginAccess();
    v7 = *a1;
    *a1 = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1004F8298(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, id a10)
{
  v16 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v16 - 8);
  v18 = v47 - v17;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C234(a1, &v55);
  if (!v58)
  {
    sub_10002B894(&v55, &unk_1009711D0);
    return;
  }

  v50 = a3;
  if (swift_dynamicCast())
  {
    URL.init(string:)();

    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      sub_10002B894(v18, &qword_100982460);
      return;
    }

    v23 = (*(v20 + 32))(v22, v18, v19);
    __chkstk_darwin(v23);
    v47[-2] = v22;
    sub_1004F6770(sub_1004F89B4, a6, &v55);
    if (!v56)
    {
      goto LABEL_19;
    }

    v48 = a2;
    v49 = v56;
    v24 = v55;
    v25 = v57;
    v26 = v58;
    v27 = Action.artwork.getter();
    if (v27)
    {
      v28 = v27;
      v47[0] = v24;
      v47[1] = v25;
      v47[2] = v26;

      v29 = sub_1004F8120(a7, a8);
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        v30 = static SystemImage.load(artwork:with:includePrivateImages:)();
        v31 = v48;
      }

      else
      {
        v32 = dispatch thunk of Artwork.isBundleImage.getter();
        v31 = v48;
        if ((v32 & 1) == 0)
        {
          *&v52[0] = v47[0];
          *(&v52[0] + 1) = v49;
          sub_1001964F0(v52);

          v53 = v59;
          sub_1001964F0(&v53);

          goto LABEL_19;
        }

        v30 = sub_100330100(v28, v29);
      }

      if (v30)
      {
        v33 = v30;
        v34 = *a9;
        v60[0] = v59;
        v54 = &type metadata for String;
        v53 = v59;
        sub_100056164(&v53, v52);

        sub_10019D860(v60, &v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v34;
        sub_100051368(v52, NSLinkAttributeName, isUniquelyReferenced_nonNull_native);
        v36 = objc_allocWithZone(NSMutableAttributedString);
        v37 = String._bridgeToObjectiveC()();
        v38 = [v36 initWithString:v37];

        v39 = [objc_opt_self() textAttachmentWithImage:v33];
        v40 = [objc_opt_self() attributedStringWithAttachment:v39];

        [v38 appendAttributedString:v40];
        type metadata accessor for Key(0);
        sub_1004F8DBC(&qword_100976620, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v42 = [v38 fullRange];
        [v38 addAttributes:isa range:{v42, v43}];

        v44 = __OFADD__(v31, v50);
        v45 = v31 + v50;
        v46 = v47[0];
        if (v44)
        {
          __break(1u);
          return;
        }

        [a10 insertAttributedString:v38 atIndex:v45];

        *&v53 = v46;
        *(&v53 + 1) = v49;
        sub_1001964F0(&v53);

        sub_1001964F0(v60);

        goto LABEL_19;
      }

      *&v52[0] = v47[0];
      *(&v52[0] + 1) = v49;
      sub_1001964F0(v52);
    }

    else
    {
      *&v52[0] = v24;
      *(&v52[0] + 1) = v49;
      sub_1001964F0(v52);
    }

    v53 = v59;
    sub_1001964F0(&v53);
LABEL_19:
    (*(v20 + 8))(v22, v19);
  }
}

uint64_t sub_1004F88E0()
{
}

uint64_t sub_1004F8920()
{
}

id sub_1004F89D4(uint64_t a1, void *a2)
{
  v22 = a2;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for UITextItem.Content();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  UITextItem.content.getter();
  if ((*(v3 + 88))(v5, v2) == enum case for UITextItem.Content.link(_:))
  {
    (*(v3 + 96))(v5, v2);
    v21 = *(v7 + 32);
    v13 = v6;
    v21(v12, v5, v6);
    v22 = sub_100005744(0, &qword_10097CD40);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v9, v12, v13);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v21((v17 + v15), v9, v13);
    *(v17 + v16) = v14;
    *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;

    v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    (*(v7 + 8))(v12, v13);

    return v18;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v22;
  }
}

uint64_t sub_1004F8D14(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004F7A7C(a1, v4);
}

uint64_t sub_1004F8DBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004F8E24()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1004F8F18(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = v94 - v7;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 1);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2[qword_1009D23C8] != 1)
  {
    return;
  }

  v14 = [v2 traitCollection];
  v15 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v16 = 20.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 20.0;
  if (a2)
  {
    v17 = *&v3[qword_1009D23D0];
    v16 = *&v3[qword_1009D23D0 + 8];
    v18 = *&v3[qword_1009D23D0 + 16];
    v19 = *&v3[qword_1009D23D0 + 24];
  }

  if (v15)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v108 = v20;
  v22 = *a1;
  v21 = *(a1 + 8);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  v114.origin.x = *a1;
  v114.origin.y = v21;
  v114.size.width = v24;
  v114.size.height = v23;
  Width = CGRectGetWidth(v114);
  v106 = v23;
  v107 = Width - v16 - v19;
  v104 = v21;
  v105 = v22;
  v115.origin.x = v22;
  v115.origin.y = v21;
  v103 = v24;
  v115.size.width = v24;
  v115.size.height = v23;
  v26 = v17;
  v27 = CGRectGetHeight(v115) - v17 - v18;
  v28 = v15;
  v29 = *&v3[qword_100989270];
  v30 = [v29 text];
  v101 = v28;
  if (v30)
  {

    v31 = v107;
    [v29 sizeThatFits:{v107, v27}];
    v17 = v32;
    v102 = v33;
    if (v28)
    {
      v116.origin.x = v19;
      v34 = v26;
      v116.origin.y = v26;
      v116.size.width = v31;
      v116.size.height = v27;
      MinX = CGRectGetMaxX(v116) - v17;
      v35 = v17;
      v36 = v17 + 30.0;
      v37 = 0.0;
    }

    else
    {
      v117.origin.x = v16;
      v34 = v26;
      v117.origin.y = v26;
      v117.size.width = v31;
      v117.size.height = v27;
      MinX = CGRectGetMinX(v117);
      v35 = v17;
      v37 = v17 + 30.0;
      v36 = v17 + 30.0;
    }

    v39 = v108 + v37;
    v38 = v31 - v36;
  }

  else
  {
    v102 = 0.0;
    MinX = 0.0;
    v35 = 0.0;
    v34 = v17;
    v38 = v107;
    v39 = v108;
  }

  if (qword_10096E698 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for StaticDimension();
  sub_1000056A8(v40, qword_1009D2380);
  static Dimensions.defaultRoundingRule.getter();
  v99 = v40;
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v44 = *(v10 + 8);
  v43 = v10 + 8;
  v97 = v44;
  v44(v13, v9);
  v107 = *&v3[qword_100989278];
  v45 = [*&v107 attributedText];
  v100 = v35;
  if (v45)
  {
    v46 = v45;
    v94[0] = v29;
    v94[1] = v43;
    v95 = v9;
    v96 = a1;
    v47 = [v3 traitCollection];
    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v46];
    v98 = COERCE_DOUBLE([v46 length]);
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = v47;
    *(v48 + 32) = v9;
    *(v48 + 40) = 1;
    a1 = swift_allocObject();
    *(a1 + 16) = sub_10010279C;
    *(a1 + 24) = v48;
    v112 = sub_1001027AC;
    v113 = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v111 = &unk_1008C6858;
    v49 = _Block_copy(aBlock);
    v29 = v113;
    v50 = v47;
    v108 = COERCE_DOUBLE(v9);

    [v46 enumerateAttributesInRange:0 options:*&v98 usingBlock:{0x100000, v49}];

    _Block_release(v49);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_28;
    }

    a1 = v96;
    v9 = v95;
    v29 = v94[0];
  }

  else
  {
    v108 = 0.0;
  }

  v98 = v42;
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v52, qword_1009D15E0);
  v54 = *(v52 - 8);
  (*(v54 + 16))(v8, v53, v52);
  (*(v54 + 56))(v8, 0, 1, v52);
  v55 = type metadata accessor for Feature();
  v111 = v55;
  v112 = sub_100085D7C();
  v56 = sub_1000056E0(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v17 = v57;
  v35 = v58;
  sub_10002B894(v8, &qword_100972ED0);
  v59 = v39;
  v60 = v34;
  v61 = v38;
  v62 = v27;
  if (v101)
  {
    MaxX = CGRectGetMaxX(*&v59);
    v64 = v34;
    v34 = MaxX - v17;
  }

  else
  {
    v65 = CGRectGetMinX(*&v59);
    v64 = v34;
    v34 = v65;
  }

  v8 = *&v107;
  isEscapingClosureAtFileLocation = v99;
  v66 = v39;
  v67 = v38;
  v68 = v27;
  MinY = CGRectGetMinY(*(&v64 - 1));
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  sub_1000056A8(isEscapingClosureAtFileLocation, qword_1009D2368);
  AnyDimension.topMargin(from:in:)();
  v27 = MinY + v70;
  v50 = &selRef__setDefaultAttributes_;
  [v8 setFrame:{v34, v27, v17, v35}];
  v71 = 0.0;
  v118.origin.y = 0.0;
  v118.origin.x = MinX;
  v39 = v100;
  v118.size.width = v100;
  v38 = v102;
  v118.size.height = v102;
  if (CGRectIsEmpty(v118))
  {
    goto LABEL_29;
  }

  if (qword_10096E6A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_28:
  sub_1000056A8(isEscapingClosureAtFileLocation, qword_1009D2398);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v73 = v72;
  v97(v13, v9);
  v119.origin.x = v34;
  v119.origin.y = v27;
  v119.size.width = v17;
  v119.size.height = v35;
  v74 = CGRectGetMinY(v119);
  [v8 firstBaselineFromTop];
  v76 = v74 + v75;
  [v29 firstBaselineFromTop];
  v71 = v73 + v76 - v77;
LABEL_29:
  v78 = MinX;
  [v29 v50[490]];
  v120.origin.x = v78;
  v120.origin.y = v71;
  v120.size.width = v39;
  v120.size.height = v38;
  MaxY = CGRectGetMaxY(v120);
  [v29 lastBaselineFromBottom];
  v81 = MaxY - v80;
  v121.origin.x = v34;
  v121.origin.y = v27;
  v121.size.width = v17;
  v121.size.height = v35;
  v82 = CGRectGetMaxY(v121);
  [v8 lastBaselineFromBottom];
  v84 = v82 - v83;
  if (v81 > v84)
  {
    v84 = v81;
  }

  v85 = v98 + v84;
  v87 = v104;
  v86 = v105;
  v122.origin.x = v105;
  v122.origin.y = v104;
  v88 = v103;
  v122.size.width = v103;
  v89 = v106;
  v122.size.height = v106;
  v90 = CGRectGetMinX(v122);
  v123.origin.x = v86;
  v123.origin.y = v87;
  v123.size.width = v88;
  v123.size.height = v89;
  v91 = CGRectGetMaxY(v123) - v85;
  v124.origin.x = v86;
  v124.origin.y = v87;
  v124.size.width = v88;
  v124.size.height = v89;
  v125.size.width = CGRectGetWidth(v124);
  v125.origin.x = v90;
  v125.origin.y = v91;
  v125.size.height = v85;
  v126 = CGRectIntegral(v125);
  v92 = *&v3[qword_100989268];
  [v92 v50[490]];
  [v92 frame];
  Height = CGRectGetHeight(v127);

  *(a1 + 24) = v89 - Height;
}

uint64_t sub_1004F9970(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D15E0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004F9B4C()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  qword_1009D23B0 = result;
  return result;
}

void *sub_1004F9B90(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v55 = swift_isaMask & *v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v51 - v14;
  v16 = qword_100989260;
  type metadata accessor for RoundedCornerView();
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_1009D23B8;
  v18 = type metadata accessor for ItemLayoutContext();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[qword_1009D23C0] = 0;
  v5[qword_1009D23C8] = 0;
  v19 = &v5[qword_1009D23D0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v19 = UIEdgeInsetsZero.top;
  v19[1] = left;
  v19[2] = bottom;
  v19[3] = right;
  v5[qword_1009D23D8] = 0;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[qword_100989268] = v23;
  if (qword_10096E228 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_1009D15F8);
  v26 = *(v24 - 8);
  v54 = *(v26 + 16);
  v54(v15, v25, v24);
  v53 = *(v26 + 56);
  v53(v15, 0, 1, v24);
  v27 = enum case for DirectionalTextAlignment.none(_:);
  v52 = *(v11 + 104);
  v52(v56, enum case for DirectionalTextAlignment.none(_:), v10);
  v28 = type metadata accessor for DynamicTypeLabel();
  v51 = v10;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[qword_100989270] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E220 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_1009D15E0);
  v54(v15, v31, v24);
  v53(v15, 0, 1, v24);
  v52(v56, v27, v51);
  v32 = objc_allocWithZone(v29);
  *&v5[qword_100989278] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = type metadata accessor for FramedMediaCollectionViewCell();
  v57.receiver = v5;
  v57.super_class = v33;
  v34 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v36 = [v34 contentView];
  v37 = qword_100989260;
  [v36 addSubview:*(v34 + qword_100989260)];

  v38 = qword_100989268;
  v39 = *(v34 + qword_100989268);
  sub_100005744(0, &qword_100970180);
  v40 = v39;
  v41 = static UIColor.placeholderBackground.getter();
  [v40 setBackgroundColor:v41];

  [*(v34 + v38) setHidden:1];
  [*(v34 + v37) addSubview:*(v34 + v38)];
  v42 = qword_100989270;
  v43 = *(v34 + qword_100989270);
  v44 = static UIColor.primaryText.getter();
  [v43 setTextColor:v44];

  [*(v34 + v38) addSubview:*(v34 + v42)];
  v45 = qword_100989278;
  v46 = qword_10096E6A8;
  v47 = *(v34 + qword_100989278);
  if (v46 != -1)
  {
    swift_once();
  }

  [v47 setTextColor:qword_1009D23B0];

  [*(v34 + v45) setTextAlignment:4];
  [*(v34 + v38) addSubview:*(v34 + v45)];
  v48 = *((swift_isaMask & *v34) + 0x130);
  v49 = *(v34 + v37);
  v48();

  return v34;
}

uint64_t sub_1004FA288()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *(v0 + qword_100989260);
  v3 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  [v2 frame];
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12;
  v15[3] = v13;
  sub_1004F8F18(v15, *(v1 + qword_1009D23D8));
  return (*((swift_isaMask & *v1) + 0x128))(v15);
}

void sub_1004FA3F4(void *a1)
{
  v1 = a1;
  sub_1004FA288();
}

id sub_1004FA43C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FramedMediaCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004FA530()
{
  v1 = qword_100989260;
  type metadata accessor for RoundedCornerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_1009D23B8;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + qword_1009D23C0) = 0;
  *(v0 + qword_1009D23C8) = 0;
  v4 = (v0 + qword_1009D23D0);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  *(v0 + qword_1009D23D8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004FA640()
{
  *(v0 + 16) = [objc_opt_self() standardUserDefaults];
  v1 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
  v2 = sub_10002849C(&unk_100989340);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration, 1, 1, v2);
  sub_1004FB3D0();
  return v0;
}

uint64_t sub_1004FA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v74 = a3;
  v4 = sub_10002849C(&qword_100989510);
  __chkstk_darwin(v4 - 8);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  __chkstk_darwin(v9);
  v11 = &v71 - v10;
  __chkstk_darwin(v12);
  v14 = &v71 - v13;
  __chkstk_darwin(v15);
  v17 = (&v71 - v16);
  __chkstk_darwin(v18);
  v20 = &v71 - v19;
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  __chkstk_darwin(v24);
  v26 = &v71 - v25;
  __chkstk_darwin(v27);
  v29 = &v71 - v28;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  type metadata accessor for NavigationActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
    v35 = v76;
    swift_beginAccess();
    sub_1004FEB8C(v35 + v34, v32);
    v36 = sub_10002849C(&unk_100989340);
    v37 = *(v36 - 8);
    result = (*(v37 + 48))(v32, 1, v36);
    if (result != 1)
    {
      v77 = v33;
      sub_100005744(0, &qword_100972D08);
      type metadata accessor for DebugSetting();

      v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      (*(v37 + 8))(v32, v36);
      return v39;
    }

    __break(1u);
    goto LABEL_37;
  }

  v72 = v29;
  v40 = v76;
  v41 = v73;
  type metadata accessor for ActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v42 = a2;
    v43 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration;
    swift_beginAccess();
    v44 = v72;
    sub_1004FEB8C(v40 + v43, v72);
    v45 = sub_10002849C(&unk_100989340);
    v46 = *(v45 - 8);
    result = (*(v46 + 48))(v44, 1, v45);
    if (result == 1)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v77 = v42;
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v46 + 8))(v44, v45);
    return v39;
  }

  type metadata accessor for StringUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v47 = a2;
    v48 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v48, v26);
    v49 = sub_10002849C(&unk_100989340);
    v50 = *(v49 - 8);
    result = (*(v50 + 48))(v26, 1, v49);
    if (result == 1)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = v47;
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    v51 = *(v50 + 8);
    v52 = v26;
    goto LABEL_14;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  if (swift_dynamicCastClass())
  {
    v53 = a2;
    v54 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
    swift_beginAccess();
    v55 = v23;
    sub_1004FEB8C(v40 + v54, v23);
    v49 = sub_10002849C(&unk_100989340);
    v56 = *(v49 - 8);
    result = (*(v56 + 48))(v55, 1, v49);
    if (result == 1)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v77 = v53;
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    v51 = *(v56 + 8);
    v52 = v55;
LABEL_14:
    v51(v52, v49);
    return v39;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v57 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
    swift_beginAccess();
    v58 = v20;
    sub_1004FEB8C(v40 + v57, v20);
    a2 = sub_10002849C(&unk_100989340);
    v17 = *(a2 - 8);
    if (v17[6](v20, 1, a2) != 1)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v59 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
    swift_beginAccess();
    v58 = v17;
    sub_1004FEB8C(v40 + v59, v17);
    a2 = sub_10002849C(&unk_100989340);
    v17 = *(a2 - 8);
    result = (v17[6])(v58, 1, a2);
    if (result == 1)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  type metadata accessor for PromptActionDebugSetting();
  if (swift_dynamicCastClass())
  {
    v60 = a2;
    v61 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v61, v14);
    v62 = sub_10002849C(&unk_100989340);
    v63 = *(v62 - 8);
    result = (*(v63 + 48))(v14, 1, v62);
    if (result == 1)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v77 = v60;
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v63 + 8))(v14, v62);
    return v39;
  }

  type metadata accessor for InfoDebugSetting();
  if (swift_dynamicCastClass())
  {
    v64 = a2;
    v65 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration;
    swift_beginAccess();
    sub_1004FEB8C(v40 + v65, v11);
    v66 = sub_10002849C(&unk_100989340);
    v67 = *(v66 - 8);
    result = (*(v67 + 48))(v11, 1, v66);
    if (result == 1)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v77 = v64;
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (*(v67 + 8))(v11, v66);
    return v39;
  }

  type metadata accessor for MenuDebugSetting();
  if (swift_dynamicCastClass())
  {
    v41 = a2;
    v68 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration;
    swift_beginAccess();
    v58 = v8;
    sub_1004FEB8C(v40 + v68, v8);
    a2 = sub_10002849C(&unk_100989340);
    v17 = *(a2 - 8);
    if (v17[6](v8, 1, a2) == 1)
    {
      __break(1u);
      goto LABEL_32;
    }

LABEL_21:
    v77 = v41;
LABEL_22:
    sub_100005744(0, &qword_100972D08);
    type metadata accessor for DebugSetting();

    v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    (v17[1])(v58, a2);
    return v39;
  }

LABEL_32:
  type metadata accessor for MenuItemDebugSetting();
  v69 = a2;
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v70 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  v58 = v41;
  sub_1004FEB8C(v40 + v70, v41);
  a2 = sub_10002849C(&unk_100989340);
  v17 = *(a2 - 8);
  result = (v17[6])(v41, 1, a2);
  if (result != 1)
  {
    v77 = v69;
    goto LABEL_22;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1004FB3D0()
{
  v1 = sub_10002849C(&qword_100989510);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  sub_100005744(0, &qword_100972D08);
  type metadata accessor for DebugSetting();
  UICollectionView.CellRegistration.init(handler:)();
  v4 = sub_10002849C(&unk_100989340);
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v6);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v7);
  swift_endAccess();
  v8 = *(v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v9 = v8;
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v10 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v10);
  swift_endAccess();
  *(swift_allocObject() + 16) = v9;
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v11 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v11);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v12 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v12);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v13 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v13);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v14 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v14);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v15 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v15);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v16 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v16);
  swift_endAccess();
  UICollectionView.CellRegistration.init(handler:)();
  v5(v3, 0, 1, v4);
  v17 = OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration;
  swift_beginAccess();
  sub_1004FEAD8(v3, v0 + v17);
  return swift_endAccess();
}

uint64_t sub_1004FB988(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v5 - 8);
  v30 = v26 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for NavigationActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v27 = v7;
    v28 = a1;
    v26[1] = v17;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_10001F63C(v20);
    }

    UIListContentConfiguration.secondaryText.setter();
    v32[3] = v13;
    v32[4] = &protocol witness table for UIListContentConfiguration;
    v26[0] = v13;
    v22 = sub_1000056E0(v32);
    (*(v14 + 16))(v22, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v23 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v24 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
    v25 = v29;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v31 + 8))(v25, v27);
    (*(v10 + 8))(v23, v9);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v26[0]);
  }

  return result;
}

uint64_t sub_1004FBDF4()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    if (!*(v5 + 80))
    {
      v6 = *(v5 + 88);
      if (v6)
      {
        v6();
      }
    }

    UIListContentConfiguration.secondaryText.setter();
    v9[3] = v0;
    v9[4] = &protocol witness table for UIListContentConfiguration;
    v7 = sub_1000056E0(v9);
    (*(v1 + 16))(v7, v3, v0);
    UICollectionViewCell.contentConfiguration.setter();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1004FBFB0(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v26 = a4;
  v29 = a1;
  v5 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v5 - 8);
  v27 = &v24 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  type metadata accessor for StringUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v24 = v18;
    v25 = v7;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();

    v20 = String._bridgeToObjectiveC()();

    v21 = [v26 valueForKey:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    v30 = v33;
    v31 = v34;
    if (*(&v34 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10002B894(&v30, &unk_1009711D0);
    }

    UIListContentConfiguration.secondaryText.setter();
    *(&v31 + 1) = v14;
    v32 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_1000056E0(&v30);
    (*(v15 + 16))(v22, v17, v14);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8);
    v26 = v17;
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
    v23 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v28 + 8))(v9, v25);
    (*(v11 + 8))(v13, v10);
    UICollectionViewListCell.accessories.setter();

    return (*(v15 + 8))(v26, v14);
  }

  return result;
}

uint64_t sub_1004FC4A8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v7 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = type metadata accessor for UICellAccessory.Placement();
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v45 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v40 = v13;
    v41 = v9;
    v37[1] = v19;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    *(&v51 + 1) = v15;
    v52 = &protocol witness table for UIListContentConfiguration;
    v22 = sub_1000056E0(&v50);
    v38 = v16;
    (*(v16 + 16))(v22, v18, v15);
    v42 = a1;
    UICollectionViewCell.contentConfiguration.setter();
    v23 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

    v24 = String._bridgeToObjectiveC()();

    v25 = [a4 objectForKey:v24];

    if (v25)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    v50 = v48;
    v51 = v49;
    v39 = v15;
    if (*(&v49 + 1))
    {
      sub_100005744(0, &qword_10097FB80);
      if (swift_dynamicCast())
      {
        v26 = v47;
        [v23 setOn:{objc_msgSend(v47, "BOOLValue")}];

LABEL_10:
        sub_100005744(0, &qword_10097CD40);
        v27 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = a4;
        v28[4] = v21;

        v29 = a4;
        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v23 addAction:v30 forControlEvents:0x2000];
        sub_10002849C(&qword_100972CA8);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        v31 = &v12[*(sub_10002849C(&qword_100972D18) + 48)];
        v32 = enum case for UICellAccessory.DisplayedState.always(_:);
        v33 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v33 - 8) + 104))(v12, v32, v33);
        *v31 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v31[1] = 0;
        (*(v43 + 104))(v12, enum case for UICellAccessory.Placement.trailing(_:), v44);
        v34 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v34 - 8) + 56))(v41, 1, 1, v34);
        v35 = v23;
        v36 = v45;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();
        (*(v46 + 8))(v36, v40);
        UICollectionViewListCell.accessories.setter();

        return (*(v38 + 8))(v18, v39);
      }
    }

    else
    {
      sub_10002B894(&v50, &unk_1009711D0);
    }

    [v23 setOn:0];
    goto LABEL_10;
  }

  return result;
}

void sub_1004FCB44(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong isOn];
    v7 = String._bridgeToObjectiveC()();
    [a3 setBool:v6 forKey:v7];
  }
}

uint64_t sub_1004FCBDC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v5 - 8);
  v24 = v22 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v23 - 8);
  __chkstk_darwin(v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for StringPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    static UIListContentConfiguration.valueCell()();
    v22[1] = a1;
    v22[2] = v17;

    UIListContentConfiguration.text.setter();
    swift_getObjectType();
    Preferences.subscript.getter();
    UIListContentConfiguration.secondaryText.setter();
    v27[3] = v13;
    v27[4] = &protocol witness table for UIListContentConfiguration;
    v19 = sub_1000056E0(v27);
    (*(v14 + 16))(v19, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v20 = v23;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v23);
    v21 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v25 + 8))(v9, v26);
    (*(v10 + 8))(v12, v20);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1004FD034(uint64_t a1)
{
  v35 = a1;
  v1 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for UICellAccessory.Placement();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BoolPreferencesDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v15 = result;
    v31 = v3;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();

    UIListContentConfiguration.secondaryText.setter();
    v36[3] = v10;
    v36[4] = &protocol witness table for UIListContentConfiguration;
    v16 = sub_1000056E0(v36);
    v28 = v11;
    v29 = v10;
    (*(v11 + 16))(v16, v13, v10);
    UICollectionViewCell.contentConfiguration.setter();
    v17 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getObjectType();
    Preferences.subscript.getter();
    v18 = v36[0];
    v30 = v7;
    if (LOBYTE(v36[0]) == 2)
    {
      v18 = *(v15 + 88);
    }

    [v17 setOn:v18 & 1];
    sub_100005744(0, &qword_10097CD40);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v15;

    v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v17 addAction:v21 forControlEvents:0x2000];
    sub_10002849C(&qword_100972CA8);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v22 = &v6[*(sub_10002849C(&qword_100972D18) + 48)];
    v23 = enum case for UICellAccessory.DisplayedState.always(_:);
    v24 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v24 - 8) + 104))(v6, v23, v24);
    *v22 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v22[1] = 0;
    (*(v32 + 104))(v6, enum case for UICellAccessory.Placement.trailing(_:), v33);
    v25 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v17;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    static UICellAccessory.customView(configuration:)();
    (*(v34 + 8))(v9, v30);
    UICollectionViewListCell.accessories.setter();

    return (*(v28 + 8))(v13, v29);
  }

  return result;
}

void sub_1004FD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100979740);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_getObjectType();
    (*(v5 + 16))(v7, a3 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v4);
    v10[7] = [v9 isOn];
    Preferences.subscript.setter();
  }
}

uint64_t sub_1004FD788(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v5 - 8);
  v31 = v27 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIListContentConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v19 = result;
    v28 = v7;
    v29 = a1;
    v27[1] = v17;

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();
    v20 = *(v19 + 72);
    if (v20)
    {

      v20(v21);
      sub_10001F63C(v20);
    }

    UIListContentConfiguration.secondaryText.setter();
    sub_100005744(0, &qword_100970180);
    static UIColor.appTint.getter();
    v22 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v22(v33, 0);
    v33[3] = v13;
    v33[4] = &protocol witness table for UIListContentConfiguration;
    v27[0] = v13;
    v23 = sub_1000056E0(v33);
    (*(v14 + 16))(v23, v16, v13);
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v24 = v12;
    (*(v10 + 104))(v12, enum case for UICellAccessory.DisplayedState.always(_:), v9);
    v25 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
    v26 = v30;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v32 + 8))(v26, v28);
    (*(v10 + 8))(v24, v9);
    UICollectionViewListCell.accessories.setter();

    return (*(v14 + 8))(v16, v27[0]);
  }

  return result;
}

uint64_t sub_1004FDC4C()
{
  v0 = type metadata accessor for UIListContentConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InfoDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {

    static UIListContentConfiguration.valueCell()();

    UIListContentConfiguration.text.setter();

    UIListContentConfiguration.secondaryText.setter();
    v7[3] = v0;
    v7[4] = &protocol witness table for UIListContentConfiguration;
    v5 = sub_1000056E0(v7);
    (*(v1 + 16))(v5, v3, v0);
    UICollectionViewCell.contentConfiguration.setter();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1004FDDCC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for UICellAccessory.DisplayedState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v8 - 8);
  v10 = v34 - v9;
  v11 = sub_10002849C(&qword_100989518);
  __chkstk_darwin(v11 - 8);
  v13 = v34 - v12;
  v40 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UIListContentConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  type metadata accessor for MenuDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v21 = result;
    v36 = v5;
    v34[1] = v19;

    static UIListContentConfiguration.valueCell()();

    v22 = UIListContentConfiguration.text.setter();
    v23 = (*(v21 + 80))(v41, v22);
    __chkstk_darwin(v23);
    v34[-2] = v41;
    v25 = sub_1004F664C(sub_1004FEB58, &v34[-4], v24);
    v35 = v6;
    if (v25)
    {
    }

    sub_10002B894(v41, &qword_10096FB90);
    UIListContentConfiguration.secondaryText.setter();
    sub_100005744(0, &qword_100970180);
    static UIColor.appTint.getter();
    v26 = UIListContentConfiguration.secondaryTextProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v26(v41, 0);
    v41[3] = v15;
    v41[4] = &protocol witness table for UIListContentConfiguration;
    v27 = sub_1000056E0(v41);
    (*(v16 + 16))(v27, v18, v15);
    v34[0] = a1;
    UICollectionViewCell.contentConfiguration.setter();
    sub_10002849C(&qword_100972CA8);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    v28 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
    v29 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    static UIColor.tertiaryText.getter();
    v30 = v37;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    v32 = v35;
    v31 = v36;
    v33 = v39;
    (*(v35 + 104))(v39, enum case for UICellAccessory.DisplayedState.always(_:), v36);
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v32 + 8))(v33, v31);
    (*(v38 + 8))(v30, v40);
    UICollectionViewListCell.accessories.setter();

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_1004FE3A8()
{
  v0 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v0 - 8);
  v20 = v17 - v1;
  v2 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  v19 = *(v22 - 8);
  __chkstk_darwin(v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIListContentConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MenuItemDebugSetting();
  result = swift_dynamicCastClass();
  if (result)
  {
    v12 = result;
    v18 = v2;

    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v23[3] = v7;
    v23[4] = &protocol witness table for UIListContentConfiguration;
    v13 = sub_1000056E0(v23);
    (*(v8 + 16))(v13, v10, v7);
    UICollectionViewCell.contentConfiguration.setter();
    if (*(v12 + 72) == 1)
    {
      sub_10002849C(&qword_100972CA8);
      v14 = *(type metadata accessor for UICellAccessory() - 8);
      v17[1] = (*(v14 + 80) + 32) & ~*(v14 + 80);
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v15 = v19;
      (*(v19 + 104))(v6, enum case for UICellAccessory.DisplayedState.always(_:), v22);
      v16 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v16 - 8) + 56))(v20, 1, 1, v16);
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v21 + 8))(v4, v18);
      (*(v15 + 8))(v6, v22);
    }

    UICollectionViewListCell.accessories.setter();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_1004FE7E8()
{
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_navigationActionRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_actionRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringUserDefaultRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLUserDefaultRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_stringPreferenceRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_BOOLPreferenceRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_promptActionRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_infoSettingRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuRegistration, &qword_100989510);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore29DebugSettingCellRegistrations_menuItemRegistration, &qword_100989510);
  return v0;
}

uint64_t sub_1004FE918()
{
  sub_1004FE7E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugSettingCellRegistrations()
{
  result = qword_100989328;
  if (!qword_100989328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004FE9C4()
{
  sub_1004FEA74();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004FEA74()
{
  if (!qword_100989338)
  {
    sub_10002D1A8(&unk_100989340);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100989338);
    }
  }
}

uint64_t sub_1004FEAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100989510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100989510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004FEC74()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EdgeInsetsDimension();
  sub_100005644(v4, qword_1009D24D8);
  v24 = sub_1000056A8(v4, qword_1009D24D8);
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for StaticDimension();
  v6 = sub_1000056A8(v5, qword_1009D2430);
  v31[3] = v5;
  v31[4] = &protocol witness table for StaticDimension;
  v7 = sub_1000056E0(v31);
  v21 = *(*(v5 - 8) + 16);
  v21(v7, v6, v5);
  *v3 = UIFontTextStyleBody;
  v8 = v1[13];
  v23 = enum case for FontSource.textStyle(_:);
  v22 = v8;
  v8(v3);
  v30[3] = v5;
  v30[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v30);
  v28 = v0;
  v29 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v27);
  v20 = v1[2];
  v20(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v19 = v1[1];
  v19(v3, v0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v5, qword_1009D2460);
  v28 = v5;
  v29 = &protocol witness table for StaticDimension;
  v12 = sub_1000056E0(v27);
  v21(v12, v11, v5);
  *v3 = v10;
  v13 = v23;
  v14 = v22;
  v22(v3, v23, v0);
  v26[3] = v5;
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v25[3] = v0;
  v25[4] = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v25);
  v20(v15, v3, v0);
  v16 = v10;
  StaticDimension.init(_:scaledLike:)();
  v19(v3, v0);
  *v3 = v16;
  v14(v3, v13, v0);
  v17 = v16;
  return EdgeInsetsDimension.init(top:left:bottom:right:source:)();
}

uint64_t sub_1004FF030(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v12[3] = v3;
  v12[4] = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v12);
  (*(v4 + 16))(v8, v6, v3);
  v9 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

id sub_1004FF1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &v4[*a3];
  *v7 = a1;
  *(v7 + 1) = a2;

  v8 = *&v4[*a4];
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = static String.isNilOrEmpty(_:)();

  [v8 setHidden:v10 & 1];

  return [v4 setNeedsLayout];
}

id sub_1004FF2BC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  v3 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (*&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText + 8])
  {
    if (!v4)
    {
      type metadata accessor for FadeableDynamicTypeLabel(0);
      v5 = DynamicTypeLabel.__allocating_init(frame:)();
      sub_100503234(v5);

      v6 = *&v0[v3];
      if (v6)
      {
        [v6 setLineBreakMode:2];
      }
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v7 = *&v0[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v3] = 0;

    [v0 setNeedsLayout];
  }

  v8 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v8)
  {
    if (*(v2 + 1))
    {
      v9 = v8;

      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    [v9 setText:v10];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004FF418(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  swift_beginAccess();
  sub_10003715C(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer);
  sub_100031660(v1 + v6, v5, &qword_10097B3F0);
  v8 = sub_10002849C(&unk_10097B3D0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  v10 = v7;
  sub_10002B894(v5, &qword_10097B3F0);
  [v10 setEnabled:v9];

  return sub_10002B894(a1, &qword_10097B3F0);
}

uint64_t sub_1004FF58C()
{
  v58 = type metadata accessor for BadgeValueViewAlignment();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = type metadata accessor for BadgeType();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v57 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for BadgeCaptionCappingType();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v55 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for BadgeViewSpacing();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FontSource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_100005644(v11, qword_1009D2508);
  v49 = sub_1000056A8(v11, qword_1009D2508);
  if (qword_10096DE78 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D0AE8);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v16 = v14 + 16;
  v15(v10, v13, v12);
  v17 = v8[13];
  v18 = enum case for FontSource.useCase(_:);
  v68 = v8 + 13;
  v65 = v17;
  v17(v10);
  v19 = type metadata accessor for StaticDimension();
  v86[3] = v19;
  v86[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v86);
  v84 = v7;
  v85 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v83);
  v21 = v8[2];
  v69 = v8 + 2;
  v67 = v21;
  v21(v20, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v22 = v8[1];
  v66 = v8 + 1;
  v63 = v22;
  v22(v10, v7);
  if (qword_10096DE70 != -1)
  {
    swift_once();
  }

  v60 = sub_1000056A8(v12, qword_1009D0AD0);
  v15(v10, v60, v12);
  v45 = v18;
  v65(v10, v18, v7);
  v84 = v19;
  v85 = &protocol witness table for StaticDimension;
  sub_1000056E0(v83);
  v23 = v16;
  v24 = v15;
  v81 = v7;
  v82 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v80);
  v26 = v67;
  v67(v25, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v27 = v63;
  v63(v10, v7);
  v64 = v12;
  v61 = v23;
  v62 = v24;
  v24(v10, v60, v12);
  v28 = v45;
  v29 = v65;
  v65(v10, v45, v7);
  v81 = v19;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v7;
  v79 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v77);
  v26(v30, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v27(v10, v7);
  v31 = v28;
  v32 = v19;
  v33 = v29;
  if (qword_10096DE58 != -1)
  {
    swift_once();
  }

  v34 = v64;
  v46 = sub_1000056A8(v64, qword_1009D0A88);
  v35 = v62;
  v62(v10, v46, v34);
  v33(v10, v28, v7);
  v78 = v32;
  v79 = &protocol witness table for StaticDimension;
  sub_1000056E0(v77);
  v36 = v33;
  v60 = v32;
  v75 = v7;
  v76 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v74);
  v67(v37, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v63(v10, v7);
  v38 = v46;
  v35(v10, v46, v64);
  v36(v10, v28, v7);
  v75 = v60;
  v76 = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v7;
  v73 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v71);
  v40 = v67;
  v67(v39, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v41 = v63;
  v63(v10, v7);
  v62(v10, v38, v64);
  v65(v10, v31, v7);
  v72 = v60;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v70[3] = v7;
  v70[4] = &protocol witness table for FontSource;
  v42 = sub_1000056E0(v70);
  v40(v42, v10, v7);
  StaticDimension.init(_:scaledLike:)();
  v41(v10, v7);
  (*(v47 + 104))(v52, enum case for BadgeViewSpacing.standard(_:), v48);
  (*(v50 + 104))(v55, enum case for BadgeCaptionCappingType.none(_:), v51);
  (*(v53 + 104))(v57, enum case for BadgeType.chartPosition(_:), v54);
  (*(v56 + 104))(v59, enum case for BadgeValueViewAlignment.baseline(_:), v58);
  return BadgeViewRibbonLayout.Metrics.init(headingSpace:captionSpace:captionBottomSpace:badgeValueEditorsChoiceSpace:badgeValueIconSpace:badgeValueTextSpace:badgeValueBaselineOffset:badgeIconSize:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:regularBadgeInsets:accessibleBadgeInsets:)();
}

char *sub_1004FFED4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  v13 = enum case for BadgeLeadingValue.infer(_:);
  v14 = type metadata accessor for BadgeLeadingValue();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_caption];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_captionView] = 0;
  v16 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_heading];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = 1;
  v4[OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable] = 1;
  v18 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  v19 = enum case for BadgeCaptionCappingType.none(_:);
  v20 = type metadata accessor for BadgeCaptionCappingType();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_valueView] = 0;
  v4[OBJC_IVAR____TtC8AppStore9BadgeView_requiresRemainingWidth] = 0;
  v21 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  v22 = enum case for BadgeValueViewAlignment.baseline(_:);
  v23 = type metadata accessor for BadgeValueViewAlignment();
  (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
  v24 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  v25 = enum case for BadgeViewSpacing.standard(_:);
  v26 = type metadata accessor for BadgeViewSpacing();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  v27 = OBJC_IVAR____TtC8AppStore9BadgeView_action;
  v28 = sub_10002849C(&unk_10097B3D0);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  v30 = enum case for BadgeType.custom(_:);
  v31 = type metadata accessor for BadgeType();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView] = 0;
  v32 = &v4[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount] = 0;
  v33 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  *&v4[v33] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v34 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v34] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  *&v4[v36] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v37 = type metadata accessor for BadgeView(0);
  v61.receiver = v4;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 systemGrayColor];
  [v44 setTintColor:v45];

  v46 = OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_tapGestureRecognizer] setEnabled:0];
  v47 = *&v44[v46];
  [v47 addTarget:v44 action:"didTapBadgeView:"];

  [v44 addGestureRecognizer:*&v44[v46]];
  v48 = OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel] setNumberOfLines:1];
  [*&v44[v48] setTextAlignment:1];
  [*&v44[v48] setLineBreakMode:2];
  v49 = qword_10096DE70;
  v50 = *&v44[v48];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for FontUseCase();
  v52 = sub_1000056A8(v51, qword_1009D0AD0);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v54(v11, v52, v51);
  v55 = *(v53 + 56);
  v55(v11, 0, 1, v51);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [v44 addSubview:*&v44[v48]];
  v56 = OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel;
  [*&v44[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel] setNumberOfLines:1];
  [*&v44[v56] setTextAlignment:1];
  [*&v44[v56] setLineBreakMode:2];
  v57 = qword_10096DE78;
  v58 = *&v44[v56];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v51, qword_1009D0AE8);
  v54(v11, v59, v51);
  v55(v11, 0, 1, v51);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [v44 addSubview:*&v44[v56]];
  sub_100500E50();
  sub_100501240();

  return v44;
}

id sub_1005005E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10050094C()
{
  v1 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v1 - 8);
  v32 = &v30 - v2;
  v31 = type metadata accessor for BadgeCaptionCappingType();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeLeadingValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for BadgeLeadingValue.infer(_:), v6, v8);
  v11 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  swift_beginAccess();
  (*(v7 + 24))(&v0[v11], v10, v6);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v7 + 8))(v10, v6);
  v12 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_caption];
  *v12 = 0;
  *(v12 + 1) = 0;

  v13 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  [v13 setText:0];

  LOBYTE(v10) = static String.isNilOrEmpty(_:)();

  [v13 setHidden:v10 & 1];
  [v0 setNeedsLayout];
  v14 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_heading];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  [v15 setText:0];

  LOBYTE(v7) = static String.isNilOrEmpty(_:)();

  [v15 setHidden:v7 & 1];
  [v0 setNeedsLayout];
  v16 = &v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  *v16 = 0;
  *(v16 + 1) = 0;

  sub_1004FF2BC();
  v17 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v0[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v0[v17] = 0;

  [v0 setNeedsLayout];
  v20 = OBJC_IVAR____TtC8AppStore9BadgeView_valueView;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
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

  [v0 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView];
  *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView] = 0;

  v24 = OBJC_IVAR____TtC8AppStore9BadgeView_alignment;
  *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = 4;
  [*&v0[v17] setTextAlignment:4];
  [v13 setTextAlignment:*&v0[v24]];
  [v15 setTextAlignment:*&v0[v24]];
  [v0 setNeedsLayout];
  v0[OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable] = 1;
  [v0 setNeedsLayout];
  v25 = v31;
  (*(v3 + 104))(v5, enum case for BadgeCaptionCappingType.none(_:), v31);
  v26 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v3 + 24))(&v0[v26], v5, v25);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v3 + 8))(v5, v25);
  v27 = sub_10002849C(&unk_10097B3D0);
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  return sub_1004FF418(v28);
}

void sub_100500E50()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (qword_10096DE58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0A88);
  v7 = [v1 traitCollection];
  isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v7).super.isa;
  v9 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v9)
  {
    v17 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

    if (v17)
    {
      v10 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
      if (v10)
      {
        v11 = v10;
        [v11 setFont:v17];
      }

      v12 = v17;

      return;
    }
  }

  else
  {
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v13)
  {
    v14 = *(v5 - 8);
    (*(v14 + 16))(v4, v6, v5);
    (*(v14 + 56))(v4, 0, 1, v5);
    v15 = v13;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }
}

void sub_1005010B8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    [v2 setTintColor:v3];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 tintColor];
    [v5 setTextColor:v6];
  }
}

void sub_100501240()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v1 systemGrayColor];
  [v0 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  v5 = [v1 systemGrayColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  sub_100005744(0, &qword_100970180);
  isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.4], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.921568627, 0.921568627, 0.960784314, 0.5)).super.isa;
  [v6 setTextColor:isa];
}

void sub_1005013E0(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = type metadata accessor for BadgeType();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for BadgeViewSpacing();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeLeadingValue();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v44 = type metadata accessor for BadgeValueViewAlignment();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BadgeCaptionCappingType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v19 = sub_1000056A8(v18, qword_1009D2508);
  (*(*(v18 - 8) + 16))(a1, v19, v18);
  v20 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v20], v14);
  BadgeViewRibbonLayout.Metrics.captionCappingType.setter();
  v21 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v21], v44);
  BadgeViewRibbonLayout.Metrics.valueViewAlignment.setter();
  BadgeViewRibbonLayout.Metrics.alignment.setter();
  v22 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  swift_beginAccess();
  v23 = v45;
  (*(v7 + 16))(v45, &v2[v22], v6);
  v24 = v46;
  (*(v7 + 104))(v46, enum case for BadgeLeadingValue.view(_:), v6);
  sub_1005039D8(&qword_100989608, &type metadata accessor for BadgeLeadingValue);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v24, v6);
  v25(v23, v6);
  BadgeViewRibbonLayout.Metrics.isLabelLeading.setter();
  v26 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  swift_beginAccess();
  (*(v48 + 16))(v47, &v2[v26], v49);
  BadgeViewRibbonLayout.Metrics.spacingType.setter();
  v27 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  swift_beginAccess();
  (*(v51 + 16))(v50, &v2[v27], v52);
  BadgeViewRibbonLayout.Metrics.badgeType.setter();
  v28 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView];
  if (v28)
  {
    v29 = v28;
    ArtworkView.imageBaselineOffsetFromBottom.getter();
  }

  BadgeViewRibbonLayout.Metrics.badgeValueBaselineOffset.setter();
  if ((v2[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon + 8] & 1) == 0)
  {
    v30 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon];
    v31 = *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount];
    v32 = [v2 traitCollection];
    v33 = UITraitCollection.prefersRightToLeftLayouts.getter();
    v34 = v33;
    if (!v30 && (v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (__OFSUB__(v31, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (((v30 == v31 - 1) & v33) == 1)
    {
LABEL_10:
      v35 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v36 + 8) = 0;
      v35(v53, 0);
      v37 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v38 + 8) = 0;
      v37(v53, 0);
    }

    if (!v30 && ((v34 ^ 1) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v31, 1))
    {
      if ((v30 != v31 - 1) | v34 & 1)
      {
LABEL_16:

        return;
      }

LABEL_15:
      v39 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v40 + 24) = 0;
      v39(v53, 0);
      v41 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v42 + 24) = 0;
      v41(v53, 0);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_100501B24()
{
  v27 = type metadata accessor for LayoutRect();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BadgeViewRibbonLayout();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeView(0);
  v44.receiver = v0;
  v44.super_class = v9;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  sub_1005013E0(v5);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel];
  v11 = type metadata accessor for DynamicTypeLabel();
  v42 = v11;
  v43 = &protocol witness table for UILabel;
  v41 = v10;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionView];
  v13 = sub_100005744(0, &qword_100972EB0);
  v39 = v13;
  v40 = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  }

  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  v33 = v17;
  v36 = v11;
  v37 = v16;
  v18 = *&v0[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v29 = 0;
    v30 = 0;
  }

  v28 = v18;
  v31 = v13;
  v32 = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  BadgeViewRibbonLayout.placeChildren(relativeTo:in:)();
  (*(v26 + 8))(v2, v27);
  return (*(v6 + 8))(v8, v25);
}

double sub_100501E84()
{
  v1 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BadgeViewRibbonLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005013E0(v3);
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel);
  v9 = type metadata accessor for DynamicTypeLabel();
  v25[18] = v9;
  v25[19] = &protocol witness table for UILabel;
  v25[15] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_captionView);
  v11 = sub_100005744(0, &qword_100972EB0);
  v25[13] = v11;
  v25[14] = &protocol witness table for UIView;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel);
  }

  v25[10] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel);
  if (v13)
  {
    v14 = &protocol witness table for UILabel;
    v15 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel);
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v14 = 0;
    v25[6] = 0;
    v25[7] = 0;
  }

  v25[5] = v15;
  v25[8] = v9;
  v25[9] = v14;
  v16 = *(v0 + OBJC_IVAR____TtC8AppStore9BadgeView_valueView);
  if (v16)
  {
    v17 = &protocol witness table for UIView;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v16;
  v25[3] = v11;
  v25[4] = v17;
  v18 = v13;
  v19 = v16;
  v20 = v8;
  v21 = v10;
  BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)();
  sub_1005039D8(&qword_100989610, &type metadata accessor for BadgeViewRibbonLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  return v23;
}

void sub_100502178(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v6 = OBJC_IVAR____TtC8AppStore9BadgeView_alignment;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *&v2[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = v7;
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel] setTextAlignment:?];
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel] setTextAlignment:*&v2[v6]];
  [*&v2[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel] setTextAlignment:*&v2[v6]];
  [v2 setNeedsLayout];
  sub_100500E50();
}

void sub_100502378()
{
  type metadata accessor for BadgeLeadingValue();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BadgeCaptionCappingType();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BadgeValueViewAlignment();
      if (v2 <= 0x3F)
      {
        type metadata accessor for BadgeViewSpacing();
        if (v3 <= 0x3F)
        {
          sub_1000798B8();
          if (v4 <= 0x3F)
          {
            type metadata accessor for BadgeType();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100502628()
{
  if (v0[qword_100989588] == 1)
  {
    if (*&v0[qword_100989590])
    {
      return;
    }

    v2 = *&v0[qword_100989598];
    v3 = *&v0[qword_100989568];
    if (v2 == -1)
    {
      v6 = v3;
      v7 = [v0 traitCollection];
      v4 = UITraitCollection.prefersRightToLeftLayouts.getter();
    }

    else
    {
      v4 = v2 == 1;
      v5 = v3;
    }

    v8 = sub_1005F2CF8(v3, v4 & 1);

    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  sub_100502718(v1);
}

void sub_100502718(void *a1)
{
  v3 = qword_100989590;
  v4 = *&v1[qword_100989590];
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
  v10 = a1;

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v7 = *&v1[v3];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 layer];
    [v9 addSublayer:v8];
  }
}

id sub_100502804(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, "text");
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_1005028B8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = a1;

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v10, "setText:", v5);

  type metadata accessor for LanguageAwareString();
  static LanguageAwareString.alwaysGenerateAttributedString.getter();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v7 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)();
  if (v7)
  {
    v8 = v7;
    [a1 bounds];
    CGRectGetWidth(v11);
    [a1 lineBreakMode];
    v9 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
  }

  else
  {
    v9 = -1;
  }

  *&a1[qword_100989598] = v9;
}

id sub_100502A00(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v3, "attributedText");

  return v1;
}

void sub_100502A5C(void *a1, uint64_t a2, void *a3)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v4 = v11.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v11, "setAttributedText:", v5);
  if (v5)
  {
    v6 = type metadata accessor for LanguageAwareString();
    v7 = v5;
    static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
    v8 = objc_allocWithZone(v6);
    v9 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
    [v4 bounds];
    CGRectGetWidth(v12);
    [v4 lineBreakMode];
    v10 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
  }

  else
  {
    v10 = -1;
  }

  *&v4[qword_100989598] = v10;
}

void sub_100502B7C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (v0[qword_100989580] == 1)
  {
    [v0 frame];
    [v0 sizeThatFits:{v1, v2}];
    v4 = v3;
    [v0 frame];
    v5 = floor(v4 - CGRectGetWidth(v12)) > COERCE_DOUBLE(1);
    v6 = qword_100989588;
    v0[qword_100989588] = v5;
    sub_100502628();
    v7 = *&v0[qword_100989590];
    if (v7)
    {
      if (v0[v6] == 1)
      {
        v8 = v7;
        [v0 frame];
        CGRectGetWidth(v13);
        [v0 bounds];
        CGRectGetMaxX(v14);
        [v0 bounds];
        CGRectGetMinY(v15);
        [v0 bounds];
        CGRectGetHeight(v16);
        v9 = *&v0[qword_100989598];
        v10 = v8;
        [v0 bounds];
        if (v9 == -1)
        {
          CGRect.withLayoutDirection(in:relativeTo:)();
        }

        else
        {
          CGRect.withLayoutDirection(_:relativeTo:)();
        }

        [v10 setFrame:?];
      }
    }
  }
}

void sub_100502D58(void *a1)
{
  v1 = a1;
  sub_100502B7C();
}

void sub_100502DA0()
{
  if (*&v0[qword_100989590])
  {
    v1 = *&v0[qword_100989598];
    v2 = *&v0[qword_100989568];
    if (v1 == -1)
    {
      v5 = v2;
      v6 = [v0 traitCollection];
      v3 = UITraitCollection.prefersRightToLeftLayouts.getter();
    }

    else
    {
      v3 = v1 == 1;
      v4 = v2;
    }

    v7 = sub_1005F2CF8(v2, v3 & 1);

    sub_100502718(v7);
  }
}

void sub_100502E74(void *a1)
{
  v1 = a1;
  sub_100502DA0();
}

uint64_t sub_100502EBC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v22[1] = a4;
  v23 = a2;
  v24 = a3;
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = v22 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100989568;
  sub_100005744(0, &qword_100970180);
  *&v18[v19] = static UIColor.defaultBackground.getter();
  *&v18[qword_100989570] = 0x3FD0000000000000;
  *&v18[qword_100989578] = 0x4034000000000000;
  v18[qword_100989580] = 1;
  v18[qword_100989588] = 0;
  *&v18[qword_100989590] = 0;
  *&v18[qword_100989598] = -1;
  sub_100031660(a1, v17, &qword_100972ED0);
  (*(v12 + 16))(v14, a6, v11);
  v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v12 + 8))(a6, v11);
  sub_10002B894(a1, &qword_100972ED0);
  return v20;
}

void sub_100503100()
{
  v1 = *(v0 + qword_100989590);
}

id sub_100503140()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100503178(uint64_t a1)
{
  v2 = *(a1 + qword_100989590);
}

unint64_t sub_1005031E0()
{
  result = qword_100989600;
  if (!qword_100989600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989600);
  }

  return result;
}

id sub_100503234(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel];
  if (v4)
  {
    [v4 removeFromSuperview];
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
    v7 = v6;
    [v7 setNumberOfLines:1];
    [v7 setLineBreakMode:2];
    [v7 setTextAlignment:1];
    v8 = [v1 tintColor];
    [v7 setTextColor:v8];

    [v1 addSubview:v7];
    sub_100500E50();
  }

  return [v1 setNeedsLayout];
}