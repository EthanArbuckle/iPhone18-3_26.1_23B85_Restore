void sub_1ECB90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_9405B8];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1EEC04;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_509F0;
      aBlock[3] = &unk_888798;
      v3 = _Block_copy(aBlock);
      v4 = v1;

      [v4 enterFullScreenAnimated:1 completionHandler:v3];

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_1ECD1C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_427484(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_9405B8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_1ECDE0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = sub_7699E0();

    if (v2)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0x3FF0000000000000;
      v5 = objc_opt_self();
      v7[4] = sub_1EEBE0;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_23F0CC;
      v7[3] = &unk_888748;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_1ECF90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_BD88(&unk_948710);
  __chkstk_darwin(v8 - 8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  v12 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_75A6B0();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_BD88(&unk_948720);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_75A6E0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_75DC30();
  v26 = __chkstk_darwin(v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &off_949000;
  if (a1)
  {
    v69 = v25;
    v70 = v24;
    v71 = a2;
    v30 = *(v20 + 104);
    v67 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    sub_764BC0();
    sub_765260();
    sub_7666A0();

    v32 = sub_766690();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    v33 = a3;
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v34 = v73;
    sub_764BD0();
    v35 = sub_7570A0();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v74;
    sub_764B90();
    v37 = v75;
    sub_764B80();
    type metadata accessor for VideoView();
    sub_1EE2E8(&qword_93F500, type metadata accessor for VideoView);
    v38 = v31;
    v4 = v67;
    v68 = v38;
    v72 = v33;
    v39 = sub_75C340();
    sub_10A2C(v37, &unk_948710);
    sub_10A2C(v36, &unk_948710);
    sub_10A2C(v34, &unk_93FD30);
    sub_10A2C(v76, &unk_9443A0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_BE70(0, &qword_93E550);
        v44 = v4;
        v45 = sub_76A1C0();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1EC0F4();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_764BC0();
      v53 = sub_7651A0();

      [v52 setBackgroundColor:v53];
    }

    sub_764BC0();
    v54 = sub_7651A0();

    a2 = v71;
    if (!v54)
    {
      sub_BE70(0, &qword_93E540);
      v54 = sub_76A030();
    }

    [v4 setBackgroundColor:v54];

    (*(v69 + 8))(v68, v70);
    v48 = &selRef_setSpeed_;
    v29 = &off_949000;
  }

  else
  {
    v48 = &selRef_setSpeed_;
    if (a2)
    {

      v49 = sub_7651A0();
      if (!v49)
      {
        sub_BE70(0, &qword_93E540);
        v49 = sub_76A030();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = &off_949000;
    }
  }

  [*(v29[420] + v4) v48[483]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[483]];
  }

  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView] v48[483]];
  v57 = sub_1ED7DC(a2, a1);
  v58 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v58 = v57;
  v58[1] = v60;
  sub_F704(v59);
  v61 = *v58;
  if (*v58)
  {

    [v4 bounds];
    v63 = v62;
    v65 = v64;
    v66 = [v4 traitCollection];
    v61(v63, v65);
    sub_F704(v61);
  }
}

void (*sub_1ED7DC(uint64_t a1, uint64_t a2))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = sub_764BC0();
LABEL_5:
    v5 = a2 != 0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7;
    *(v8 + 40) = a1;
    *(v8 + 48) = ObjectType;
    return sub_1EE5A8;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1ED8D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_75A110();
  sub_768860();
  if (v10)
  {
    if (!sub_75E220())
    {
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView];
      sub_75E190();
      sub_FE4A4();

      v8 = sub_75E190();
      [v3 bounds];
      sub_1EE620(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = sub_75E210();
  v6 = sub_75E220();
  sub_1ECF90(v5, v6, a2);
LABEL_6:
}

void sub_1EDA08(double a1, double a2, uint64_t a3, char a4)
{
  v7 = sub_765240();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        v14 = &qword_940590;
        goto LABEL_7;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v13 = v15;
      v14 = &OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
LABEL_7:
      v16 = *&v13[*v14];

      if (a1 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v16 = 0;
  if (a1 != 0.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v16)
  {
    return;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:

    return;
  }

  sub_75A110();
  v16 = v16;
  sub_768860();

  if (!v19[4])
  {

    goto LABEL_11;
  }

  if (qword_93C610 != -1)
  {
    swift_once();
  }

  v17 = sub_766690();
  sub_BE38(v17, qword_99B7C0);
  sub_766660();
  sub_765250();
  v18 = sub_765210();
  (*(v8 + 8))(v10, v7);
  sub_765330();
  [v16 setContentMode:v18];
  sub_BE70(0, &qword_949D90);
  sub_1EE5B8();
  sub_75A050();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView()
{
  result = qword_949D68;
  if (!qword_949D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EDE34()
{
  result = sub_75CA40();
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

void sub_1EDF0C(void *a1)
{
  sub_1EE378();
  swift_unknownObjectWeakAssign();
  sub_1EC0F4();
}

uint64_t (*sub_1EDF5C(uint64_t **a1))()
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
  v2[4] = sub_1EC220(v2);
  return sub_21028;
}

uint64_t sub_1EDFD4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1EE2E8(&unk_949DA0, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1EE048(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1EE2E8(&unk_949DA0, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1EE0D4(uint64_t *a1))()
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
  sub_1EE2E8(&unk_949DA0, type metadata accessor for AppPromotionMediaContainerView);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_1EE190(void *a1)
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
  sub_BE70(0, &qword_93E550);
  v4 = v1;
  v5 = sub_76A1C0();

  return v5 & 1;
}

id sub_1EE220()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1EE2E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1EE378()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1EE2E8(&qword_93F500, type metadata accessor for VideoView);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_BE70(0, &qword_93E550);
      v3 = v0;
      v4 = sub_76A1C0();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1EE4F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1EE528()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1EE560()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1EE5B8()
{
  result = qword_950A60;
  if (!qword_950A60)
  {
    sub_BE70(255, &qword_949D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_950A60);
  }

  return result;
}

uint64_t sub_1EE620(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_765240();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_765860();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_134D8(v34, v33);

  sub_BD88(&unk_93F520);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_7657D0();
    sub_7657F0();
    sub_757BA0();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      sub_757B90();
      v14 = sub_764EE0();
    }

    else
    {

      sub_7657F0();
      v14 = sub_764EE0();
    }

    v30 = a2;
    if (v14)
    {

      sub_765250();
      sub_765210();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      sub_765330();
      v28 = a3;
      v16 = *&a3[qword_944F20];
      sub_7652E0();
      sub_7591B0();
      [v16 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      sub_765250();
      v17 = sub_765210();
      v15(v10, v7);
      [v16 setContentMode:v17];
      sub_759210();
      sub_1EE2E8(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      sub_765250();
      sub_765210();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      sub_765330();
      v19 = *&a3[qword_944F18];
      v20 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v21 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();

      v22 = *(v19 + v20);
      sub_765250();
      v23 = sub_765210();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      sub_759210();
      sub_1EE2E8(&qword_945810, &type metadata accessor for ArtworkView);
      v25 = v24;
      sub_75A050();
    }

    else
    {
    }
  }

  return sub_BEB8(v34);
}

uint64_t sub_1EEBA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EEBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1EEC0C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_93C358 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_99AF10;
  v9[3] = unk_99AF20;
  v10 = qword_99AF30;
  v9[0] = xmmword_99AEF0;
  v9[1] = unk_99AF00;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *(v1 + v3) = sub_FDB24(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = sub_75CA40();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_1EEDC0()
{
  v0 = sub_7664A0();
  v57 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_757CA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v45 - v7;
  v9 = sub_BD88(&qword_944E50);
  __chkstk_darwin(v9 - 8);
  v49 = v45 - v10;
  v11 = sub_757DF0();
  sub_161DC(v11, qword_99B7E0);
  v45[2] = sub_BE38(v11, qword_99B7E0);
  if (qword_93C620 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v3, qword_99B7F8);
  v13 = *(v4 + 16);
  v13(v8, v12, v3);
  sub_757C60();
  v15 = v14;
  v17 = v16;
  v18 = *(v4 + 8);
  v18(v8, v3);
  v75 = v15;
  v76 = v17;
  v19 = v56;
  v13(v56, v12, v3);
  sub_757C60();
  v21 = v20;
  v23 = v22;
  v18(v19, v3);
  v74[0] = v21;
  v74[1] = v23;
  sub_BD88(&qword_93FBE0);
  type metadata accessor for CGSize(0);
  sub_7592D0();
  v77 = &type metadata for Double;
  v78 = &protocol witness table for Double;
  v75 = 0x402E000000000000;
  if (qword_93D4D8 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v47 = sub_BE38(v24, qword_99E698);
  v25 = *(v24 - 8);
  v54 = *(v25 + 16);
  v55 = v25 + 16;
  v54(v2, v47, v24);
  v48 = enum case for FontSource.useCase(_:);
  v26 = v57;
  v27 = v57 + 104;
  v53 = *(v57 + 104);
  v53(v2);
  v56 = sub_766CA0();
  v74[3] = v56;
  v74[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v28 = sub_B1B4(v71);
  v29 = *(v26 + 16);
  v29(v28, v2, v0);
  v50 = v29;
  sub_766CB0();
  v52 = *(v26 + 8);
  v52(v2, v0);
  v54(v2, v47, v24);
  v30 = v48;
  (v53)(v2, v48, v0);
  v72 = v56;
  v73 = &protocol witness table for StaticDimension;
  sub_B1B4(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v68);
  v29(v31, v2, v0);
  v32 = v54;
  sub_766CB0();
  v52(v2, v0);
  v51 = v24;
  v32(v2, v47, v24);
  v45[1] = v27;
  (v53)(v2, v30, v0);
  v69 = v56;
  v70 = &protocol witness table for StaticDimension;
  sub_B1B4(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v33 = sub_B1B4(v65);
  v47 = v26 + 16;
  v50(v33, v2, v0);
  sub_766CB0();
  v57 = v26 + 8;
  v52(v2, v0);
  if (qword_93D4E0 != -1)
  {
    swift_once();
  }

  v34 = v51;
  v46 = sub_BE38(v51, qword_99E6B0);
  v35 = v54;
  v54(v2, v46, v34);
  v36 = v48;
  v37 = v53;
  v53(v2);
  v66 = v56;
  v67 = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v62);
  v50(v38, v2, v0);
  sub_766CB0();
  v52(v2, v0);
  v35(v2, v46, v51);
  v37(v2, v36, v0);
  v39 = v56;
  v63 = v56;
  v64 = &protocol witness table for StaticDimension;
  sub_B1B4(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v40 = sub_B1B4(v59);
  v41 = v50;
  v50(v40, v2, v0);
  sub_766CB0();
  v42 = v52;
  v52(v2, v0);
  v54(v2, v46, v51);
  (v53)(v2, v36, v0);
  v60 = v39;
  v61 = &protocol witness table for StaticDimension;
  sub_B1B4(v59);
  v58[3] = v0;
  v58[4] = &protocol witness table for FontSource;
  v43 = sub_B1B4(v58);
  v41(v43, v2, v0);
  sub_766CB0();
  v42(v2, v0);
  return sub_757DD0();
}

uint64_t sub_1EF604()
{
  v0 = sub_757CA0();
  sub_161DC(v0, qword_99B7F8);
  sub_BE38(v0, qword_99B7F8);
  return sub_757C20();
}

uint64_t sub_1EF664()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_949DB0);
  sub_BE38(v0, qword_949DB0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

id sub_1EF700()
{
  v1 = v0;
  v2 = sub_757AA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v39 - v6;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  v15 = *(v3 + 16);
  v15(v12, &v1[v14], v2);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v16, v12, v2);
  swift_endAccess();
  v15(v9, (v13 + v16), v2);
  sub_244454(v9);
  v17 = *(v3 + 8);
  v17(v9, v2);
  v41 = v17;
  v17(v12, v2);
  v42 = v1;
  v18 = &v1[v14];
  v19 = v39;
  v20 = v40;
  v15(v39, v18, v2);
  (*(v3 + 104))(v20, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1F14A0(&unk_949E10, &type metadata accessor for InAppPurchaseTheme);
  sub_769430();
  sub_769430();
  if (v45 == v43 && v46 == v44)
  {
    v21 = v20;
    v22 = v41;
    v41(v21, v2);
    v22(v19, v2);

LABEL_5:
    v26 = v42;
    v27 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel];
    v28 = [v42 tintColor];
    [v27 setTextColor:v28];

    v29 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel];
    if (v29)
    {
      v30 = [v26 tintColor];
      [v29 setTextColor:v30];
    }

    v31 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel];
    v32 = [v26 tintColor];
    [v31 setTextColor:v32];
    goto LABEL_11;
  }

  v23 = sub_76A950();
  v24 = v20;
  v25 = v41;
  v41(v24, v2);
  v25(v19, v2);

  if (v23)
  {
    goto LABEL_5;
  }

  v26 = v42;
  v33 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel];
  sub_396E8();
  v34 = sub_769FD0();
  [v33 setTextColor:v34];

  v35 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel];
  if (v35)
  {
    v36 = sub_769FD0();
    [v35 setTextColor:v36];
  }

  v37 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel];
  v32 = sub_769FF0();
  [v37 setTextColor:v32];
LABEL_11:

  return [v26 setNeedsLayout];
}

char *sub_1EFBA8(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_757CA0();
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  v15 = enum case for InAppPurchaseTheme.infer(_:);
  v16 = sub_757AA0();
  (*(*(v16 - 8) + 104))(&v2[v14], v15, v16);
  v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_isHeightConstrained] = 0;
  if (qword_93C620 != -1)
  {
    swift_once();
  }

  sub_BE38(v11, qword_99B7F8);
  sub_757C10();
  sub_757C20();
  v17 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v53 = a1;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView] = sub_243D30(v13, a1 & 1);
  if (qword_93D4D8 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v19 = sub_BE38(v18, qword_99E698);
  v20 = *(v18 - 8);
  v21 = *(v20 + 16);
  v52 = v19;
  v58 = v21;
  (v21)(v10);
  v57 = *(v20 + 56);
  v57(v10, 0, 1, v18);
  v22 = *(v5 + 104);
  v56 = enum case for DirectionalTextAlignment.none(_:);
  v55 = v22;
  v22(v7);
  v23 = sub_75BB20();
  v24 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel] = sub_75BB10();
  if (qword_93D4E0 != -1)
  {
    swift_once();
  }

  v25 = sub_BE38(v18, qword_99E6B0);
  v58(v10, v25, v18);
  v57(v10, 0, 1, v18);
  v55(v7, v56, v4);
  v26 = objc_allocWithZone(v23);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel] = sub_75BB10();
  v27 = objc_allocWithZone(type metadata accessor for OfferButton());
  v28 = sub_1DD00C(0);
  v29 = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_offerButton] = v28;
  if (v53)
  {
    v58(v10, v52, v18);
    v57(v10, 0, 1, v18);
    v55(v7, v56, v4);
    v30 = objc_allocWithZone(v23);
    v29 = sub_75BB10();
  }

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel] = v29;
  v31 = type metadata accessor for InAppPurchaseLockupView();
  v60.receiver = v2;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v36 = v32;
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_93C628 != -1)
  {
    swift_once();
  }

  v37 = sub_BD88(&unk_93F8F0);
  sub_BE38(v37, qword_949DB0);
  v59 = v36;
  v38 = v36;
  sub_7592B0();

  v39 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel;
  sub_76A150();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel;
  if (*&v38[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_76A150();
  }

  v41 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel;
  sub_76A150();
  v42 = *&v38[v41];
  sub_396E8();
  v43 = v42;
  v44 = sub_769FF0();
  [v43 setTextColor:v44];

  v45 = *&v38[v39];
  sub_75BAD0();

  [v38 addSubview:*&v38[v39]];
  v46 = *&v38[v41];
  sub_75BAD0();

  [v38 addSubview:*&v38[v41]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_offerButton]];
  [v38 addSubview:*&v38[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView]];
  v47 = *&v38[v40];
  if (v47)
  {
    v48 = v47;
    sub_75BAD0();
    [v38 addSubview:v48];
  }

  sub_BD88(&qword_9477F0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_77B6D0;
  *(v49 + 32) = sub_7676E0();
  *(v49 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_769F40();

  swift_unknownObjectRelease();

  return v38;
}

void sub_1F0420()
{
  v1 = v0;
  v2 = sub_757AA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for InAppPurchaseLockupView();
  v21.receiver = v0;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "tintColorDidChange");
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_theme;
  swift_beginAccess();
  (*(v3 + 16))(v8, &v1[v10], v2);
  (*(v3 + 104))(v5, enum case for InAppPurchaseTheme.spotlight(_:), v2);
  sub_1F14A0(&unk_949E10, &type metadata accessor for InAppPurchaseTheme);
  sub_769430();
  sub_769430();
  if (v20[3] == v20[1] && v20[4] == v20[2])
  {
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = sub_76A950();
    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel];
  v15 = [v1 tintColor];
  [v14 setTextColor:v15];

  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel];
  if (v16)
  {
    v17 = [v1 tintColor];
    [v16 setTextColor:v17];
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel];
  v19 = [v1 tintColor];
  [v18 setTextColor:v19];
}

uint64_t sub_1F0788()
{
  v1 = v0;
  v44 = sub_7664F0();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_757E10();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_757DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for InAppPurchaseLockupView();
  v62.receiver = v1;
  v62.super_class = v10;
  objc_msgSendSuper2(&v62, "layoutSubviews");
  if (qword_93C618 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v4, qword_99B7E0);
  v38 = v5;
  v12 = *(v5 + 16);
  v12(v9, v11, v4);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_offerButton];
  v36 = v10;
  sub_75D650();
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v13[v15], &v59);
    sub_B170(&v59, v60);
    sub_760DE0();
    v17 = v16;
    v19 = v18;
    sub_BEB8(&v59);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  sub_757DB0();
  sub_757DC0();
  v12(v37, v9, v4);
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView];
  v60 = type metadata accessor for InAppPurchaseView();
  v61 = &protocol witness table for UIView;
  v59 = v20;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_titleLabel];
  v22 = sub_75BB20();
  v57 = v22;
  v58 = &protocol witness table for UILabel;
  v56 = v21;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel];
  if (v23)
  {
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v23;
  v54 = v25;
  v55 = v24;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_descriptionLabel];
  v50 = &protocol witness table for UILabel;
  v49 = v22;
  v48 = v26;
  v27 = type metadata accessor for OfferButton();
  v47 = &protocol witness table for UIView;
  v46 = v27;
  v45 = v13;
  v28 = v20;
  v29 = v21;
  v30 = v23;
  v31 = v26;
  v32 = v13;
  v33 = v39;
  sub_757E00();
  sub_75D650();
  v34 = v41;
  sub_757D90();
  (*(v43 + 8))(v34, v44);
  (*(v40 + 8))(v33, v42);
  return (*(v38 + 8))(v9, v4);
}

id sub_1F0E2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseLockupView()
{
  result = qword_949DF8;
  if (!qword_949DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F0F74()
{
  result = sub_757AA0();
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

double sub_1F1030(void *a1)
{
  v2 = sub_75D850();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_757DF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C618 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v9, qword_99B7E0);
  (*(v10 + 16))(v12, v13, v9);
  v14 = [a1 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v15 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v15 = qword_946938;
  }

  v16 = sub_BE38(v2, v15);
  (*(v3 + 16))(v5, v16, v2);

  (*(v3 + 32))(v8, v5, v2);
  sub_75D800();
  sub_75D830();
  sub_757DB0();
  sub_757E10();
  sub_1F14A0(&qword_949E08, &type metadata accessor for InAppPurchaseLockupViewLayout);
  sub_766ED0();
  v18 = v17;
  (*(v3 + 8))(v8, v2);
  (*(v10 + 8))(v12, v9);
  return v18;
}

uint64_t sub_1F13B0(void *a1)
{
  if (qword_93C628 != -1)
  {
    swift_once();
  }

  v2 = sub_BD88(&unk_93F8F0);
  sub_BE38(v2, qword_949DB0);
  v3 = a1;
  sub_7592B0();

  sub_76A150();
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel])
  {
    sub_76A150();
  }

  return sub_76A150();
}

uint64_t sub_1F14A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F14E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v33 = a3;
  v4 = sub_BD88(&unk_957130);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = sub_7572A0();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_764CF0();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_761ED0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v42);
  sub_B170(a1, a1[3]);
  v15 = v6;
  v16 = v34;
  sub_75C260();
  sub_1F386C(&qword_949E60, &type metadata accessor for TodayCardTriggerIdentifier);
  *&v39 = sub_76A910();
  *(&v39 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v44._countAndFlagsBits = 8250;
  v44._object = 0xE200000000000000;
  sub_769370(v44);
  sub_B170(a1, a1[3]);
  sub_75C280();
  v18 = sub_764CA0();
  v20 = v19;
  (*(v8 + 8))(v10, v35);
  v21 = v36;
  v45._countAndFlagsBits = v18;
  v45._object = v20;
  sub_769370(v45);
  v22 = v37;

  v40 = v39;
  sub_1ED18(v22, v21, &unk_957130);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_10A2C(v21, &unk_957130);
    sub_10A2C(v22, &unk_957130);
    v23 = 0xED00002E74657920;
    v24 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v41 = v24;
    *(&v41 + 1) = v23;
    v29 = v42[1];
    v30 = v33;
    *(v33 + 32) = v42[0];
    *(v30 + 48) = v29;
    *(v30 + 64) = v43;
    v31 = v41;
    *v30 = v40;
    *(v30 + 16) = v31;
    return sub_BEB8(a1);
  }

  v25 = v32;
  (*(v16 + 32))(v32, v21, v15);
  result = sub_757260();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = -v27;
  if (!__OFSUB__(0, v27))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_76A730(20);

    *&v39 = 0x206E656553;
    *(&v39 + 1) = 0xE500000000000000;
    v38 = v28;
    v46._countAndFlagsBits = sub_76A910();
    sub_769370(v46);

    v47._countAndFlagsBits = 0x73646E6F63657320;
    v47._object = 0xED00002E6F676120;
    sub_769370(v47);
    v23 = *(&v39 + 1);
    v24 = v39;
    sub_10A2C(v22, &unk_957130);
    (*(v16 + 8))(v25, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1F1A14@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_761ED0();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_957130);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_134D8(a1, v15);
  sub_B170(a2, a2[3]);
  sub_B170(a1, a1[3]);
  sub_75C260();
  sub_7579F0();
  (*(v5 + 8))(v7, v13);
  return sub_1F14E8(v15, v10, v14);
}

id sub_1F1BB4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_sections] = sub_1F31C0(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = sub_769210();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_1F1DB0()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_sections] = sub_1F31C0(*&v0[OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_triggerController]);

  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];

    v3 = [v0 refreshControl];
    [v3 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_1F1EB4(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_769210();

  v6 = sub_769210();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_134D8(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_10914(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = sub_769210();
  aBlock[4] = sub_1F3C2C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_6B0344;
  aBlock[3] = &unk_888900;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = sub_769210();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_1F2124(void *a1, char a2)
{
  v5 = sub_761ED0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_triggerController))
  {
    sub_761E90();
    sub_10914(v12, v13);
    if (a2)
    {
      sub_B170(v13, v14);
      sub_BD88(&qword_949E80);
      v9 = swift_allocObject();
      v9[1] = xmmword_77B6D0;
      sub_B170(a1, a1[3]);
      sub_75C260();
      v10._rawValue = v9;
      sub_757A10(v10);
    }

    else
    {
      sub_B170(a1, a1[3]);
      sub_75C270();
      sub_B170(v13, v14);
      sub_B170(a1, a1[3]);
      sub_75C260();
      sub_757A00();
      (*(v6 + 8))(v8, v5);
    }

    v11 = [objc_opt_self() sharedCoordinator];
    [v11 simulateStorefrontChange];

    sub_BEB8(v13);
  }
}

uint64_t sub_1F2AA8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1F2AC0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1F2AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1F2B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1F2B90()
{
  result = qword_949E58;
  if (!qword_949E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949E58);
  }

  return result;
}

uint64_t sub_1F2BE4(uint64_t a1)
{
  v65 = sub_75E710();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_761ED0();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_BD88(&qword_949E68);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v74 = _swiftEmptyArrayStorage;
  sub_143BBC(0, v9, 0);
  v10 = v74;
  v11 = a1 + 64;
  result = sub_76A5B0();
  v13 = result;
  v14 = 0;
  v15 = *(a1 + 36);
  v56 = v2 + 16;
  v57 = v4 + 16;
  v54 = v2 + 32;
  v55 = v4 + 32;
  v58 = v2;
  v53 = v2 + 8;
  v52 = v4 + 8;
  v47 = a1 + 72;
  v73 = v4;
  v48 = v9;
  v50 = a1 + 64;
  v49 = v15;
  v51 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v67 = 1 << v13;
    v68 = v13 >> 6;
    v66 = v14;
    v16 = v61;
    v17 = *(v61 + 48);
    v18 = *(a1 + 48) + *(v4 + 72) * v13;
    v70 = *(v4 + 16);
    v19 = v59;
    v20 = v63;
    v70(v59, v18, v63);
    v21 = v58;
    v22 = *(a1 + 56) + *(v58 + 72) * v13;
    v69 = *(v58 + 16);
    v71 = v13;
    v23 = v65;
    v69(&v19[v17], v22, v65);
    v24 = *(v73 + 32);
    v72 = v10;
    v25 = v60;
    v24(v60, v19, v20);
    v26 = *(v16 + 48);
    (*(v21 + 32))(&v25[v26], &v19[v17], v23);
    v27 = v62;
    v70(v62, v25, v20);
    v28 = v64;
    v69(v64, &v25[v26], v23);
    v70 = sub_761EC0();
    v30 = v29;
    sub_1F386C(&qword_949E70, &type metadata accessor for TriggerBuilderError);
    v31 = sub_76A9C0();
    v33 = v32;
    v34 = *(v21 + 8);
    v4 = v73;
    v34(v28, v23);
    (*(v4 + 8))(v27, v20);
    v35 = v25;
    v10 = v72;
    sub_10A2C(v35, &qword_949E68);
    v74 = v10;
    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      sub_143BBC((v36 > 1), v37 + 1, 1);
      v10 = v74;
    }

    v10[2] = v37 + 1;
    v38 = &v10[9 * v37];
    result = v71;
    v38[4] = v70;
    v38[5] = v30;
    v38[6] = v31;
    v38[7] = v33;
    *(v38 + 4) = 0u;
    *(v38 + 5) = 0u;
    v38[12] = 0;
    a1 = v51;
    v13 = 1 << *(v51 + 32);
    if (result >= v13)
    {
      goto LABEL_24;
    }

    v11 = v50;
    v39 = *(v50 + 8 * v68);
    if ((v39 & v67) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v15) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v40 = v39 & (-2 << (result & 0x3F));
    if (v40)
    {
      v13 = __clz(__rbit64(v40)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v68 << 6;
      v42 = v68 + 1;
      v43 = (v47 + 8 * v68);
      while (v42 < (v13 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_1F38B4(result, v49, 0);
          v13 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      result = sub_1F38B4(result, v49, 0);
    }

LABEL_4:
    v14 = v66 + 1;
    if (v66 + 1 == v48)
    {
      return v10;
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
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1F31C0(uint64_t a1)
{
  if (!a1)
  {
    sub_BD88(&qword_941AB8);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_77B6D0;
    v9[4] = 0xD000000000000015;
    v9[5] = 0x80000000007D4770;
    v9[6] = _swiftEmptyArrayStorage;
    *(v9 + 56) = 2;
    return v9;
  }

  sub_761EA0();
  v1 = v39;
  v2 = v40;
  v3 = v41;
  v4 = v42;
  v5 = v43;
  isUniquelyReferenced_nonNull_native = sub_761E90();
  v7 = *(v38 + 16);
  v36 = v38;
  v37 = v39;
  if (v7)
  {
    v8 = sub_1F2BE4(v38);
    isUniquelyReferenced_nonNull_native = sub_7B378(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = isUniquelyReferenced_nonNull_native;
    v11 = *(isUniquelyReferenced_nonNull_native + 16);
    v10 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v11 >= v10 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378((v10 > 1), v11 + 1, 1, isUniquelyReferenced_nonNull_native);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    v12[4] = 0xD000000000000013;
    v12[5] = 0x80000000007D4790;
    v12[6] = v8;
    *(v12 + 56) = 2;
    v1 = v37;
    if (*(v37 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v35 = &v38;
      v13 = sub_3A085C(sub_1F384C, v34, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_7B378(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_7B378((v14 > 1), v15 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v15 + 1;
      v16 = &v9[4 * v15];
      v16[4] = 0xD00000000000001DLL;
      v16[5] = 0x80000000007D47B0;
      v16[6] = v13;
      *(v16 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    if (*(v39 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v17 = sub_3A085C(sub_1F3C74, v34, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378((v18 > 1), v19 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v19 + 1;
    v20 = &v9[4 * v19];
    v20[4] = 0xD00000000000001BLL;
    v20[5] = 0x80000000007D47D0;
    v20[6] = v17;
    *(v20 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v21 = sub_3A085C(sub_1F3C74, v34, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v23 = v9[2];
    v22 = v9[3];
    if (v23 >= v22 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378((v22 > 1), v23 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v23 + 1;
    v24 = &v9[4 * v23];
    v24[4] = 0xD00000000000001CLL;
    v24[5] = 0x80000000007D47F0;
    v24[6] = v21;
    *(v24 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v25 = sub_3A085C(sub_1F3C74, v34, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v9[2];
    v26 = v9[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_7B378((v26 > 1), v27 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v27 + 1;
    v28 = &v9[4 * v27];
    v28[4] = 0xD000000000000020;
    v28[5] = 0x80000000007D4810;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v29 = sub_3A085C(sub_1F3C74, v34, v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_7B378(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    if (v31 >= v30 >> 1)
    {
      v9 = sub_7B378((v30 > 1), v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    v32 = &v9[4 * v31];
    v32[4] = 0xD000000000000017;
    v32[5] = 0x80000000007D4840;
    v32[6] = v29;
    *(v32 + 56) = 0;
    sub_BEB8(&v38);
  }

  else
  {
    sub_BEB8(&v38);
  }

  return v9;
}

uint64_t sub_1F386C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F38B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1F38C0(void *a1)
{
  result = sub_7575D0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = sub_7575A0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_1F3B84(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = sub_769210();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = sub_769210();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_1F3BBC(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1F3A5C()
{
  result = sub_7575D0();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2 + 32 * result;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);

  result = sub_7575A0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1F3B84(v4 + 72 * result + 32, v9);

  if (v5 != 2)
  {
    sub_1ED18(&v10, &v6, &qword_949E78);
    if (!v7)
    {
      sub_1F3BBC(v9);
      return sub_10A2C(&v6, &qword_949E78);
    }

    sub_10914(&v6, v8);
    sub_1F1EB4(v8, v5 & 1);
    sub_BEB8(v8);
  }

  return sub_1F3BBC(v9);
}

uint64_t sub_1F3BEC()
{
  sub_BEB8(v0 + 24);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_1F3C5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1F3C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v10 = sub_BD88(&qword_949ED8);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = v59 - v12;
  [a6 pageMarginInsets];
  [v6 setLayoutMargins:?];
  if (qword_93D060 != -1)
  {
    swift_once();
  }

  v14 = sub_75D250();
  v15 = sub_BE38(v14, qword_954820);
  __chkstk_darwin(v15);
  v59[-2] = a6;
  sub_765470();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_1F4738(v13, &v7[v16]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10A2C(v13, &qword_949ED8);
  if (sub_759BB0())
  {
    v17 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteView];
    v18 = sub_7654C0();
    v19 = v17[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron];
    v17[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = (v18 & 2) != 0;
    sub_14F5D4(v19);
    v17[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = (sub_7654C0() & 4) != 0;
    v20 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
    sub_7654D0();
    v21 = sub_769210();

    [v20 setText:v21];

    [v17 setNeedsLayout];
    v22 = sub_7654A0();
    if (v22)
    {
      v23 = v22;
      sub_7654B0();
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      *(v24 + 24) = v23;
      v25 = &v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      v26 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
      *v25 = sub_1F4854;
      v25[1] = v24;
      swift_retain_n();

      sub_F704(v26);
      v27 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];

      [v27 setEnabled:1];

      sub_10A2C(v59, &unk_93FBD0);
    }

    else
    {
    }
  }

  else
  {
    v28 = &v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    v29 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteActionBlock];
    *v28 = 0;
    *(v28 + 1) = 0;
    sub_F704(v29);
    [*&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer] setEnabled:0];
  }

  v30 = sub_759B80();
  if (v30)
  {
    v31 = v30;
    v32 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView];
    sub_764C60();
    if (v33)
    {
      v34 = sub_769210();
    }

    else
    {
      v34 = 0;
    }

    [v32 setTitle:v34 forState:0];

    v35 = swift_allocObject();
    *(v35 + 16) = a3;
    *(v35 + 24) = v31;
    v36 = &v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock];
    v37 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonActionBlock];
    *v36 = sub_1F47AC;
    v36[1] = v35;
    swift_retain_n();

    sub_F704(v37);

    [v32 addTarget:v7 action:"buttonTapped" forControlEvents:64];
  }

  sub_75A110();
  sub_768900();
  sub_768ED0();
  v38 = v59[0];
  sub_41790C();
  v39 = sub_759BA0();
  if (!v39)
  {
    goto LABEL_27;
  }

  v40 = v39;
  v41 = v39 >> 62;
  if (v39 >> 62)
  {
    if (sub_76A860())
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (!*(&dword_10 + (v39 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_26:

LABEL_27:
    v53 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
    if (!v53)
    {
      goto LABEL_30;
    }

    v54 = v53;
    v55 = sub_765960();

    *(v55 + 48) = 1;
    goto LABEL_29;
  }

LABEL_16:
  v42 = OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView;
  v43 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_riverView];
  if (v43 && (v44 = v43, v45 = sub_765960(), v44, *(v45 + 40) = v40, , , , (v46 = *&v7[v42]) != 0))
  {
    v47 = v46;
    v48 = sub_765960();

    if (v41)
    {
      v49 = sub_76A860();
    }

    else
    {
      v49 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    }

    *(v48 + 48) = v49;

    v50 = *&v7[v42];
    if (v50)
    {
      goto LABEL_24;
    }
  }

  else
  {

    v50 = *&v7[v42];
    if (v50)
    {
LABEL_24:
      v51 = v50;
      v52 = sub_765960();

      *(v52 + 56) = v38;

LABEL_29:
    }
  }

LABEL_30:
  v56 = sub_759B90();
  if (v56)
  {

    v57 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_396E8();
    v57 = sub_76A090();
  }

  v58 = v57;
  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider30ArcadeFooterCollectionViewCell_buttonView] _setBackgroundColor:v57];
  [v7 setNeedsLayout];
}

uint64_t sub_1F4384(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1F44C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_75D250();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D060 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v7, qword_954820);
  __chkstk_darwin(v11);
  *(&v15 - 2) = a6;
  sub_765470();
  sub_75D270();
  sub_1F4808(&qword_944CF0, &type metadata accessor for ArcadeFooterLayout);
  sub_766ED0();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_1F4738(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_949ED8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1F47C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F4808(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1F485C()
{
  v0 = sub_760880();
  sub_161DC(v0, qword_99B840);
  sub_BE38(v0, qword_99B840);
  if (qword_93C650 != -1)
  {
    swift_once();
  }

  v1 = sub_766CA0();
  v2 = sub_BE38(v1, qword_949EF8);
  v5[3] = v1;
  v5[4] = &protocol witness table for StaticDimension;
  v3 = sub_B1B4(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return sub_760860();
}

UIFontTextStyle sub_1F49AC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_949EE0);
  v1 = sub_BE38(v0, qword_949EE0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_1F4A74(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93C648 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_949EE0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

id sub_1F4C50(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&qword_949F78);
  __chkstk_darwin(v9);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_lineBreaks;
  v13 = sub_BD88(&qword_949F68);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_buttons] = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  sub_7667C0();
  sub_1F5FF4();
  sub_767480();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v14;
}

uint64_t sub_1F5014()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_buttons;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_76A860();
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
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[qword_99E150];
      v10 = *&v7[qword_99E150];
      *v9 = 0;
      *(v9 + 1) = 0;
      sub_F704(v10);
      [v8 setTitle:0 forState:0];
      swift_beginAccess();
      sub_BD88(&qword_949FA8);
      sub_767470();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1F51AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_768C60();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = ObjectType;
  swift_beginAccess();
  sub_BD88(&qword_949FA8);
  sub_767450();
  swift_endAccess();
  v11 = *&v22[0];
  [v11 _setWantsAccessibilityUnderline:0];
  v12 = [v11 titleLabel];

  if (v12)
  {
    [v12 setNumberOfLines:2];
  }

  sub_759F80();
  v13 = sub_769210();

  [v11 setTitle:v13 forState:0];

  sub_759F70();
  sub_76A6A0();
  sub_1EB60(v23);
  memset(v23, 0, 32);
  memset(v22, 0, sizeof(v22));
  sub_768C10();

  sub_10A2C(v22, &unk_93FBD0);
  sub_10A2C(v23, &unk_93FBD0);
  sub_769E70();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = &v11[qword_99E150];
  v16 = *&v11[qword_99E150];
  *v15 = sub_1F6668;
  v15[1] = v14;

  sub_F704(v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v18 = v11;
  sub_769440();
  if (*(&dword_10 + (*(v3 + v17) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v3 + v17) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  swift_endAccess();
  v19 = [v3 contentView];
  [v19 addSubview:v18];
}

char *sub_1F5524@<X0>(char **a1@<X8>)
{
  v2 = sub_766CA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RoundedTitledButton();
  if (qword_93DA00 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v6, qword_99F5F8);
  (*(v7 + 16))(v9, v10, v6);
  if (qword_93C650 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v2, qword_949EF8);
  (*(v3 + 16))(v5, v11, v2);
  result = sub_4FF328(v9, v5);
  *a1 = result;
  return result;
}

uint64_t sub_1F5728(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  result = sub_759F90();
  if (result)
  {
    v7 = result;
    v8 = sub_BD88(&unk_93F630);
    sub_768860();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10A2C(v5, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v7, 1, a2, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t sub_1F5894()
{
  v1 = v0;
  v23 = sub_7664F0();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_949F88);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_760880();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7608A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitledButtonStackCollectionViewCell();
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_93C630 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v8, qword_99B840);
  (*(v9 + 16))(v11, v17, v8);
  swift_beginAccess();

  sub_140CB4(v18);

  v19 = OBJC_IVAR____TtC18ASMessagesProvider35TitledButtonStackCollectionViewCell_lineBreaks;
  swift_beginAccess();
  sub_1F6670(v1 + v19, v7);
  sub_760890();
  v20 = [v1 contentView];
  sub_2630C();
  sub_75D650();

  sub_760850();
  (*(v2 + 8))(v4, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_1F5CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledButtonStackCollectionViewCell()
{
  result = qword_949F48;
  if (!qword_949F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1F5E10()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_1F5F20();
    if (v1 <= 0x3F)
    {
      sub_1F5F84();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1F5F20()
{
  if (!qword_949F60)
  {
    sub_133D8(&qword_949F68);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_949F60);
    }
  }
}

void sub_1F5F84()
{
  if (!qword_949F70)
  {
    sub_133D8(&qword_949F78);
    sub_1F5FF4();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_949F70);
    }
  }
}

unint64_t sub_1F5FF4()
{
  result = qword_949F80;
  if (!qword_949F80)
  {
    sub_133D8(&qword_949F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949F80);
  }

  return result;
}

uint64_t sub_1F6058(uint64_t a1, uint64_t a2)
{
  result = sub_7670D0();
  v7[3] = result;
  v7[4] = &protocol witness table for LayoutViewPlaceholder;
  v7[0] = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_BD88(&unk_9418A0);
      v5 = sub_7694E0();
      v5[2] = a2;
      v6 = (v5 + 4);
      do
      {
        sub_134D8(v7, v6);
        v6 += 40;
        --a2;
      }

      while (a2);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_BEB8(v7);
    return v5;
  }

  return result;
}

double sub_1F610C(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v30 = a1;
  v33 = sub_757500();
  __chkstk_darwin(v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v4;
  v5 = sub_BD88(&unk_949F88);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_760880();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_7608A0();
  v16 = *(v29 - 8);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C630 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v12, qword_99B840);
  (*(v13 + 16))(v15, v19, v12);
  sub_760870();
  sub_B170(v35, v35[3]);
  sub_33964();
  sub_766700();
  (*(v9 + 8))(v11, v8);
  sub_BEB8(v35);
  sub_7670D0();
  swift_allocObject();
  v20 = sub_7670B0();
  v21 = sub_75D050();
  if (v21 >> 62)
  {
    v22 = sub_76A860();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  sub_1F6058(v20, v22);
  sub_75D040();
  sub_75D030();
  sub_BD88(&qword_93FBE0);
  sub_7592D0();
  v23 = sub_BD88(&qword_949F68);
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  sub_760890();
  sub_1F65C8();
  v24 = v29;
  sub_7665A0();
  v26 = v25;
  (*(v16 + 8))(v18, v24);
  return v26;
}

unint64_t sub_1F65C8()
{
  result = qword_949F98;
  if (!qword_949F98)
  {
    sub_7608A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_949F98);
  }

  return result;
}

uint64_t sub_1F6628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F6670(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_949F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1F66E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_75D2C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7666D0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v15, qword_99E788);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_93C658 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_949FB0);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_5B8B0(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_93C660 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_949FC8];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1F6ACC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75D2C0();
  sub_161DC(v4, qword_949FB0);
  v18 = sub_BE38(v4, qword_949FB0);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v16 = sub_BE38(v5, qword_99E788);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_766CA0();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v19);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_75D2A0();
}

id sub_1F6E30()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_949FC8 = result;
  return result;
}

uint64_t sub_1F6FA8()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_75D650();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  sub_75D650();
  MinX = CGRectGetMinX(v17);
  sub_75D650();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_F704(v14);
  }

  return result;
}

void sub_1F7158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_134D8(a3, v24);
      sub_BD88(&unk_944DA0);
      sub_765B70();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_765B60(), , v13))
      {
        sub_762A80();
        if (swift_dynamicCastClass())
        {
          sub_762A70();
          sub_759BC0();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_1F7B64(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_75F4B0();

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

    else
    {
    }
  }
}

uint64_t sub_1F75AC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1F760C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_1F76A4()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_1F7700(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_1F77C0(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_134D8(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10914(v6, v4 + 32);
  return sub_1F7B58;
}

unint64_t sub_1F788C()
{
  result = qword_94A028;
  if (!qword_94A028)
  {
    sub_762A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A028);
  }

  return result;
}

uint64_t sub_1F78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v9 layoutDirection];
  sub_769BB0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_762A70();
  sub_579E1C(v19, a2);
}

uint64_t sub_1F7AA0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F7AD8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1F7B10()
{

  sub_BEB8(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1F7B64(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1F7BCC()
{
  v1 = v0;
  v2 = sub_75D2C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7666D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v11 = sub_BE38(v6, qword_99E788);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_93C658 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v2, qword_949FB0);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_5B8B0(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_93C660 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_949FC8];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_76A840();
  __break(1u);
}

void sub_1F7EBC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_1F7F5C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset];
        v9 = qword_93C4A0;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_99B328[64];
        v71 = *&byte_99B328[80];
        v72 = *&byte_99B328[96];
        v73 = *&byte_99B328[112];
        v66 = *byte_99B328;
        v67 = *&byte_99B328[16];
        v68 = *&byte_99B328[32];
        v69 = *&byte_99B328[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_69A56C(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = sub_76A1C0();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = sub_76A1C0();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset];
        v27 = qword_93C4A0;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_99B328[64];
        v71 = *&byte_99B328[80];
        v72 = *&byte_99B328[96];
        v73 = *&byte_99B328[112];
        v66 = *byte_99B328;
        v67 = *&byte_99B328[16];
        v68 = *&byte_99B328[32];
        v69 = *&byte_99B328[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_93C498;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_BD88(&qword_9452F0);
        isa = sub_7690E0().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_15F084();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = sub_76A1C0();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = sub_76A1C0();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = sub_76A1C0();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_1F8750(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  if (v5)
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
  return sub_1F9F1C;
}

id sub_1F8910()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount;
  v6 = sub_705B8(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_1F8B14()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_1F8B78(void *a1)
{
  sub_1F9D9C(a1);
}

uint64_t (*sub_1F8BC4(uint64_t **a1))()
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
  v2[4] = sub_1F8750(v2);
  return sub_246E0;
}

uint64_t sub_1F8C34()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1F9ED4(&qword_94A1A0, v1, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_1F8CA8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1F9ED4(&qword_94A1A0, v5, type metadata accessor for MediaView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_1F8D34(uint64_t *a1))()
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
  sub_1F9ED4(&qword_94A1A0, v3, type metadata accessor for MediaView);
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_1F8DF0(void *a1)
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
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_2630C();
  v5 = v4;
  v6 = sub_76A1C0();

  return v6 & 1;
}

char *sub_1F8E78(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_1F9008(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1F908C;
}

void sub_1F9090(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_1F9ED4(&qword_93F500, 255, type metadata accessor for VideoView);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_2630C();
        v8 = v7;
        v9 = sub_76A1C0();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_1F92A8(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1F9ED4(&qword_93F500, 255, type metadata accessor for VideoView);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_2630C();
        v14 = v13;
        v15 = sub_76A1C0();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_1F92A8(v24);

    v20 = v24;
  }
}

void sub_1F92A8(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_1F9ED4(&qword_93F500, 255, type metadata accessor for VideoView);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_2630C();
      v11 = v2;
      v12 = sub_76A1C0();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_2630C();
  v18 = v4;
  v5 = a1;
  v6 = sub_76A1C0();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    sub_759210();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      sub_7590D0();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_1F94EC()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      sub_769BB0();
      v12 = sub_705B8(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_99A1B8;
      v30 = *(v23 + qword_99A1B8);
      v31 = *(v23 + qword_99A1B8 + 8);
      v32 = *(v23 + qword_99A1B8 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_539CC();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_99A1B0);
      v36 = *(v23 + qword_99A1B0);
      v37 = *(v23 + qword_99A1B0 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_54EB4();
      }
    }
  }
}

id sub_1F98A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1F9948()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_1F99A0(void *a1)
{
  sub_1F9D9C(a1);
}

uint64_t (*sub_1F99D8(uint64_t **a1))()
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
  v2[4] = sub_1F9008(v2);
  return sub_21028;
}

uint64_t sub_1F9A48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1F9A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1F9B08(uint64_t *a1))()
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

uint64_t sub_1F9BA4(void *a1)
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
  sub_2630C();
  v4 = v1;
  v5 = sub_76A1C0();

  return v5 & 1;
}

void sub_1F9D9C(void *a1)
{
  if (a1)
  {
    sub_1F9ED4(&qword_93F500, 255, type metadata accessor for VideoView);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_2630C();
      v6 = v1;
      v7 = sub_76A1C0();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = a1;
  v8 = a1;
  sub_1F92A8(v9);
}

uint64_t sub_1F9ED4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1FA080(unint64_t a1)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_BE70(0, &unk_94A220);
  isa = sub_769450().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = sub_76A860();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_setInterGroupSpacing_;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = sub_76A770();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[166]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            sub_757590();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_7BA20(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_7BA20(v32 > 1, v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_setInterGroupSpacing_;
          }
        }

        if ([v23 v21[166]] == &dword_0 + 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          sub_757590();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_7BA20(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_7BA20(v43 > 1, v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_setInterGroupSpacing_;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1FA694(uint64_t a1)
{
  v2 = v1;
  isa = sub_757550().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_46F7F4(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_1FB038();
    v11 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_1FA7B4(uint64_t a1)
{
  v2 = v1;
  isa = sub_757550().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_46F7F4(a1, v8);

  if (v9)
  {
    v10 = sub_1FB620();
    v11 = *&v7[OBJC_IVAR____TtCC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_1FA8C4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void *sub_1FA9CC(double a1, double a2, double a3, double a4)
{
  v30 = sub_757640();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v38.receiver = v4;
  v38.super_class = v11;
  result = objc_msgSendSuper2(&v38, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_BE70(0, &qword_944B40);
    v15 = sub_769460();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v37 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v37;
      result = sub_76A7C0();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v31 = OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v34 = v15 & 0xFFFFFFFFFFFFFF8;
      v35 = OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v27 = v9 + 1;
      v28 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_76A770();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v34 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        sub_76A510();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v36;
        [v36 setZIndex:3];
        if ((*(v17 + v35) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v33 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = sub_1AD898();
            swift_unknownObjectRelease();
            v24 = [v22 indexPath];
            v25 = v29;
            sub_757590();

            v26 = sub_7575C0();
            (*v27)(v25, v30);
            if (v26 < v32)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v28;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v37;
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
        if (i == v18)
        {

          return v37;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1FB038()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = sub_769210();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + sub_7575A0() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1FB290(void *a1)
{
  v15 = a1;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v15 copy];
  sub_76A510();
  swift_unknownObjectRelease();
  sub_BE70(0, &qword_944B40);
  if (swift_dynamicCast())
  {
    v7 = v16;
    [v16 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = sub_1AD898();
          swift_unknownObjectRelease();
          v11 = [v7 indexPath];
          sub_757590();

          v12 = sub_7575C0();
          (*(v3 + 8))(v6, v2);
          if (v12 < v10)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v14 = v15;

    return v14;
  }
}

id sub_1FB5B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1FB620()
{
  v0 = sub_769210();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = sub_7695E0().super.super.isa;
  [v3 setFromValue:isa];

  v5 = sub_7695E0().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

uint64_t sub_1FB768()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_75CF00();
  sub_161DC(v4, qword_99B898);
  v44 = sub_BE38(v4, qword_99B898);
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E6E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = sub_766CA0();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_B1B4(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_B1B4(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  sub_766CB0();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_B1B4(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_766CB0();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_B1B4(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_B1B4(v76);
  v12(v16, v3, v0);
  v17 = v13;
  sub_766CB0();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_B1B4(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v73);
  v49(v20, v3, v0);
  v21 = v17;
  sub_766CB0();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_B1B4(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_B1B4(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  sub_766CB0();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_B1B4(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_B1B4(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  sub_766CB0();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_B1B4(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v64);
  v24(v31, v3, v0);
  v32 = v27;
  sub_766CB0();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_B1B4(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_B1B4(v61);
  v24(v33, v3, v0);
  v34 = v32;
  sub_766CB0();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_B1B4(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_B1B4(v58);
  v24(v36, v3, v0);
  v37 = v34;
  sub_766CB0();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v55);
  v49(v38, v3, v0);
  v39 = v37;
  sub_766CB0();
  v28(v3, v0);
  v56 = sub_766970();
  v57 = &protocol witness table for ZeroDimension;
  sub_B1B4(v55);
  sub_766960();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return sub_75CDC0();
}

uint64_t sub_1FC024()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_75CF00();
  sub_161DC(v4, qword_99B8B0);
  v41[0] = sub_BE38(v4, qword_99B8B0);
  if (qword_93DBF0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99FBC8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = sub_766CA0();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  sub_766CB0();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_B1B4(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v78);
  v48(v15, v3, v0);
  sub_766CB0();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_B1B4(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v75);
  v19 = v48;
  v48(v18, v3, v0);
  sub_766CB0();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_B1B4(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v72);
  v19(v21, v3, v0);
  sub_766CB0();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_B1B4(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_B1B4(v69);
  v48(v24, v3, v0);
  sub_766CB0();
  v22(v3, v0);
  if (qword_93DBF8 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_BE38(v42, qword_99FBE0);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_B1B4(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_B1B4(&v66);
  v48(v28, v3, v0);
  sub_766CB0();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v62);
  v48(v31, v3, v0);
  sub_766CB0();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_B1B4(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  sub_766CB0();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_B1B4(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v56);
  v33(v38, v3, v0);
  sub_766CB0();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_B1B4(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_B1B4(v53);
  v33(v39, v3, v0);
  sub_766CB0();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return sub_75CDC0();
}

void sub_1FC9E8(char a1)
{
  v2 = v1;
  v4 = sub_757CA0();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      sub_769A00();

      sub_757C20();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
      v11 = sub_243D30(v7, 1);
      v12 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_1FCBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = sub_75CF00();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_75D650();
  v6 = v5 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(v5 + v7, v13);
    sub_B170(v13, v13[3]);
    sub_760DE0();
    v9 = v8;
    v11 = v10;
    sub_BEB8(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return sub_75CE80();
}

uint64_t sub_1FD068@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_75CF20();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CF00();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_1FCBC0(&v53 - v11);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    sub_765470();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel];
    v16 = sub_75BB20();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_34698(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    v19 = sub_75BB20();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel();
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_34698(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_BE70(0, &qword_93E550);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel];
  v34 = sub_75BB20();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_134D8(&v76, &v70);
  sub_134D8(v75, &v69);
  sub_1ED18(v74, &v68, &qword_9417D0);
  sub_134D8(v73, &v67);
  sub_134D8(v82, &v66);
  sub_1ED18(&v79, &v65, &qword_9417D0);
  sub_1ED18(v72, &v64, &qword_9417D0);
  sub_1ED18(v71, &v63, &unk_943B10);
  v49 = v58;
  sub_75CF10();
  sub_1FE620();
  v50 = v61;
  sub_7665D0();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10A2C(&v79, &qword_9417D0);
  v51(v56, v36);
  sub_BEB8(v82);
  sub_10A2C(v71, &unk_943B10);
  sub_10A2C(v72, &qword_9417D0);
  sub_BEB8(v73);
  sub_10A2C(v74, &qword_9417D0);
  sub_BEB8(v75);
  return sub_BEB8(&v76);
}

uint64_t sub_1FD730()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = sub_766CA0();
  v9[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  sub_766CB0();
  (*(v1 + 8))(v4, v0);
  return sub_75CEE0();
}

void sub_1FD89C()
{
  v1 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      sub_75BA30();
      sub_75BA40();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_93D548;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_7666D0();
      v15 = sub_BE38(v14, qword_99E7E8);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      sub_75BA40();

      sub_BE70(0, &qword_93E540);
      v17 = v13;
      v9 = sub_769FF0();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_1FDAF0(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_BE70(0, &unk_94A280), v7 = a1, v8 = v4, LOBYTE(a1) = sub_76A1C0(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton];
      sub_BE70(0, &qword_93E550);
      v12 = v11;
      v13 = v10;
      v14 = sub_76A1C0();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1FDD68()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

uint64_t sub_1FDEC8()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  v2 = sub_75CF00();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapBlock);

  return sub_F704(v3);
}

id sub_1FDF74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView()
{
  result = qword_94A268;
  if (!qword_94A268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1FE0B0()
{
  result = sub_75CF00();
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

double sub_1FE168()
{
  v1 = sub_75CF00();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1FCBC0(v4);
  [v5 layoutMargins];
  v6 = sub_1FE304(v4, v5);
  (*(v2 + 8))(v4, v1);
  return v6;
}

unint64_t sub_1FE2AC()
{
  result = qword_94A278;
  if (!qword_94A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A278);
  }

  return result;
}

double sub_1FE304(uint64_t a1, void *a2)
{
  v4 = sub_75D850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_75CF00();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  (*(v12 + 16))(v15, a1, v11);
  v17 = sub_75CE70();
  if ((v19 & 1) == 0 && ((v17 | v18) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v20 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v20 = qword_946938;
    }

    v21 = sub_BE38(v4, v20);
    (*(v5 + 16))(v7, v21, v4);
    (*(v5 + 32))(v10, v7, v4);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v5 + 8))(v10, v4);
  }

  sub_75CDB0();
  v23 = v22;

  (*(v12 + 8))(v15, v11);
  return v23;
}

unint64_t sub_1FE620()
{
  result = qword_94A290;
  if (!qword_94A290)
  {
    sub_75CF20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94A290);
  }

  return result;
}

id sub_1FE678()
{
  v1 = sub_7676A0();
  __chkstk_darwin(v1);
  v2 = sub_767BB0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_iconType] = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v7 = sub_75CF00();
  v8 = sub_BE38(v7, qword_99B898);
  (*(*(v7 - 8) + 16))(&v0[v6], v8, v7);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_searchAdTertiaryLabel] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_lockupTapBlock];
  v10 = type metadata accessor for SmallLockupView();
  *v9 = 0;
  v9[1] = 0;
  v14.receiver = v0;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v3 + 104))(v5, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v2);
  v12 = v11;
  sub_769EE0();
  sub_767680();
  sub_769EF0();

  return v12;
}

int64x2_t sub_1FE908()
{
  if (qword_93C678 != -1)
  {
    swift_once();
  }

  v0 = qword_94A2A0;
  qword_99B928 = 0;
  swift_weakInit();
  qword_99B938 = 0;
  unk_99B940 = 0;
  result = vdupq_n_s64(0x404A000000000000uLL);
  byte_99B948 = 1;
  xmmword_99B900 = result;
  *&qword_99B910 = xmmword_78B690;
  qword_99B920 = v0;
  return result;
}

uint64_t sub_1FE9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_weakInit();
  swift_weakDestroy();
  return sub_1FFE3C(a1, a2);
}

id sub_1FE9F8(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
  if (qword_93C680 != -1)
  {
    swift_once();
  }

  v13 = &v5[v12];
  v14 = qword_99B910;
  v15 = xmmword_99B900;
  *(v13 + 5) = &type metadata for CGFloat;
  *(v13 + 6) = &protocol witness table for CGFloat;
  *(v13 + 2) = v14;
  v16 = byte_99B948;
  v17 = *algn_99B918;
  v18 = *&qword_99B938;
  *v13 = v15;
  *(v13 + 56) = v17;
  *(v13 + 72) = v18;
  v13[88] = v16;
  sub_20132C(&xmmword_99B900, &v5[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config]);
  v5[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_enablePrerenderedIcons] = a1 & 1;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v39, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v23 = v19;
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v23 setClipsToBounds:1];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config;
  swift_beginAccess();
  v25 = sub_20132C(v23 + v24, v37);
  __chkstk_darwin(v25);
  sub_1EBC0();
  sub_765470();
  sub_1EC70(v37);
  swift_beginAccess();
  sub_201374(v35, v23 + v24);
  swift_endAccess();
  sub_20132C(v23 + v24, v37);
  v26 = v37[0];
  v27 = v37[1];
  v35[5] = &type metadata for CGFloat;
  v35[6] = &protocol witness table for CGFloat;
  v28 = v37[3];
  v29 = v37[4];
  v35[2] = v37[2];
  v30 = v37[7];
  v31 = v37[8];
  v32 = v38;
  sub_1EC70(v37);
  v35[0] = v26;
  v35[1] = v27;
  v35[7] = v28;
  v35[8] = v29;
  v35[9] = v30;
  v35[10] = v31;
  v36 = v32;
  v33 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_18BC94(v35, v23 + v33);
  swift_endAccess();

  return v23;
}

id sub_1FED30(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews];
  if (v4 >> 62)
  {
    result = sub_76A860();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = sub_76A860();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_76A770();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_1FEEE0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config;
  swift_beginAccess();
  sub_20132C(v0 + v1, v13);
  v2 = v13[0];
  v3 = v13[1];
  v11[5] = &type metadata for CGFloat;
  v11[6] = &protocol witness table for CGFloat;
  v4 = v13[3];
  v11[2] = v13[2];
  v5 = v13[4];
  v6 = v13[7];
  v7 = v13[8];
  v8 = v14;
  sub_1EC70(v13);
  v11[0] = v2;
  v11[1] = v3;
  v11[7] = v4;
  v11[8] = v5;
  v11[9] = v6;
  v11[10] = v7;
  v12 = v8;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
  swift_beginAccess();
  sub_2013AC(v11, v0 + v9);
  swift_endAccess();
  [v0 setNeedsLayout];
  return sub_2011D8(v11);
}

id sub_1FF0FC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews;
  sub_759210();

  v2 = sub_769490();

  if (v2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v4 = *(v0 + v1);
      if (v4 >> 62)
      {
        result = sub_76A860();
        v5 = result;
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
        if (v5)
        {
LABEL_5:
          if (v5 < 1)
          {
            __break(1u);
            return result;
          }

          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v7 = sub_76A770();
            }

            else
            {
              v7 = *(v4 + 8 * v6 + 32);
            }

            v8 = v7;
            ++v6;
            sub_14FA38();
            sub_75A0C0();
          }

          while (v5 != v6);

          return sub_1FED30(_swiftEmptyArrayStorage);
        }
      }
    }

    return sub_1FED30(_swiftEmptyArrayStorage);
  }

  return result;
}

void sub_1FF26C(CGFloat a1, CGFloat a2)
{
  if (a1 > 0.0 && a2 > 0.0)
  {
    v4 = v2;
    v6 = v2 + OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = *(v6 + 40);
      if (v7)
      {
        sub_765390();

        if ((sub_769490() & 1) == 0)
        {

          return;
        }

        v8 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
        swift_beginAccess();
        sub_18BC54(v4 + v8, v22);
        v9 = *(sub_1FFEC8(v22, 0.0, 0.0, a1, a2) + 2);

        sub_2011D8(v22);
        v10 = _swiftEmptyArrayStorage;
        v22[0] = _swiftEmptyArrayStorage;
        if (v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            if (v7 >> 62)
            {
              goto LABEL_35;
            }

            for (i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
            {
              v20 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_enablePrerenderedIcons;
              sub_759210();
              v12 = 0;
              while (1)
              {
                v13 = (*(v4 + v20) == 1 ? sub_759000() : sub_759020());
                v14 = v13;
                sub_769440();
                if (*(&dword_10 + (v22[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
                {
                  sub_7694C0();
                }

                sub_769500();
                if (i == -1 && v12 == 0x8000000000000000)
                {
                  break;
                }

                v10 = v22[0];
                sub_76A770();
                sub_765320();
                sub_14FA38();
                sub_75A050();

                swift_unknownObjectRelease();

                if (v9 == ++v12)
                {
                  goto LABEL_30;
                }
              }

LABEL_34:
              __break(1u);
LABEL_35:
              ;
            }

            __break(1u);
            goto LABEL_37;
          }

          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          v15 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
          if (!v15)
          {
LABEL_37:
            __break(1u);
            return;
          }

          v19 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_enablePrerenderedIcons;
          sub_759210();
          v16 = 0;
          do
          {
            if (*(v4 + v19) == 1)
            {
              v17 = sub_759000();
            }

            else
            {
              v17 = sub_759020();
            }

            v18 = v17;
            sub_769440();
            if (*(&dword_10 + (v22[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v22[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            if (v16 % v15 >= *(v21 + 16))
            {
              __break(1u);
              goto LABEL_34;
            }

            ++v16;
            v10 = v22[0];

            sub_765320();
            sub_14FA38();
            sub_75A050();
          }

          while (v9 != v16);
        }

LABEL_30:

        sub_1FED30(v10);
      }
    }
  }
}

uint64_t sub_1FF65C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v5);
  [v1 bounds];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  result = CGRectIsEmpty(v57);
  if ((result & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews;
    v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews];
    if (!(v14 >> 62))
    {
      result = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        return result;
      }

LABEL_4:
      v15 = *&v1[v13];
      *&v43 = v7;
      if (v15 >> 62)
      {
        v16 = sub_76A860();
      }

      else
      {
        v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      v40 = v13;
      v17 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v39 = v4;
        *&v41 = v3;
        *&v42 = v1;
        v45[0] = _swiftEmptyArrayStorage;

        result = sub_1439B8(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_36;
        }

        v18 = 0;
        v17 = v45[0];
        v51 = 0x3FF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0x3FF0000000000000;
        v55 = 0;
        v56 = 0;
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = sub_76A770();
          }

          else
          {
            v19 = *(v15 + 8 * v18 + 32);
          }

          v20 = v19;
          [v20 transform];
          if (sub_769910())
          {
            *&v44.d = sub_2630C();
            *&v44.tx = &protocol witness table for UIView;
            *&v44.a = v20;
            v21 = v20;
          }

          else
          {
            sub_769E80();
          }

          sub_10914(&v44, v46);

          v45[0] = v17;
          v23 = v17[2];
          v22 = v17[3];
          if (v23 >= v22 >> 1)
          {
            sub_1439B8((v22 > 1), v23 + 1, 1);
          }

          ++v18;
          v24 = v47;
          v25 = v48;
          v26 = sub_10974(v46, v47);
          v27 = __chkstk_darwin(v26);
          v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29, v27);
          sub_146570(v23, v29, v45, v24, v25);
          sub_BEB8(v46);
          v17 = v45[0];
        }

        while (v16 != v18);

        v1 = v42;
        v3 = v41;
        v4 = v39;
      }

      v31 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
      swift_beginAccess();
      sub_18BC54(&v1[v31], v46);
      v49 = v17;
      v32 = v43;
      IconArtworkGridLayout.placeChildren(relativeTo:in:)(x, y, width, height);
      (*(v4 + 8))(v32, v3);
      v33 = &v1[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config];
      swift_beginAccess();
      result = CGAffineTransformMakeRotation(&v44, v33[4]);
      v42 = *&v44.c;
      v43 = *&v44.a;
      v41 = *&v44.tx;
      v34 = *&v1[v40];
      if (v34 >> 62)
      {
        result = sub_76A860();
        v35 = result;
        if (result)
        {
LABEL_21:
          if (v35 >= 1)
          {

            v36 = 0;
            do
            {
              if ((v34 & 0xC000000000000001) != 0)
              {
                v37 = sub_76A770();
              }

              else
              {
                v37 = *(v34 + 8 * v36 + 32);
              }

              v38 = v37;
              ++v36;
              *&v44.a = v43;
              *&v44.c = v42;
              *&v44.tx = v41;
              [v37 setTransform:&v44];
            }

            while (v35 != v36);

            return sub_1FFE74(v46);
          }

LABEL_36:
          __break(1u);
          return result;
        }
      }

      else
      {
        v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
        if (v35)
        {
          goto LABEL_21;
        }
      }

      return sub_1FFE74(v46);
    }

    result = sub_76A860();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1FFC4C(uint64_t a1, uint64_t a2, double a3, double a4)
{

  *(a1 + 40) = a2;
  result = swift_weakAssign();
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1FFD68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1FFDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

char *sub_1FFEC8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
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

void sub_20122C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_layoutMetrics;
  if (qword_93C680 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_99B910;
  v4 = xmmword_99B900;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_99B948;
  v6 = *algn_99B918;
  v7 = *&qword_99B938;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_20132C(&xmmword_99B900, v0 + OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config);
  sub_76A840();
  __break(1u);
}

__n128 sub_201364(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_201408()
{
  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77DC20;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_BE70(0, &qword_93F900);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_BE70(0, &qword_940F48);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_BE70(0, &qword_945820);
  *(inited + 120) = v13;
  v14 = sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  return v14;
}

void sub_201590()
{
  v1 = sub_760AD0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v41 - v7;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v16 = v0;
      v17 = qword_93D9A8;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_7666D0();
      v19 = sub_BE38(v18, qword_99F4F0);
      v20 = *(v18 - 8);
      (*(v20 + 16))(v8, v19, v18);
      (*(v20 + 56))(v8, 0, 1, v18);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v21 = objc_allocWithZone(sub_75BB20());
      v22 = sub_75BB10();
      v0 = v16;
      v23 = *&v16[v12];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v16[v12];
      }

      else
      {
        v24 = 0;
      }

      *&v16[v12] = v22;
      v25 = v22;

      v26 = [v16 contentView];
      [v26 addSubview:v25];

      [v16 setNeedsLayout];
    }

    v27 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v28 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v28)
    {
      v43 = v10;
      v29 = *v27;
      v30 = v27[1];
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[5];
      v34 = v27[6];
      v44 = *v27;
      v45 = v30;
      v46 = v31;
      v47 = v32;
      v48 = v28;
      v49 = v33;
      v50 = v34;
      v35 = *&v0[v12];
      if (v35)
      {
        sub_202ED0(v29, v30, v31, v32, v28, v33);
        v42 = v35;
        sub_201408();
        v41 = objc_allocWithZone(NSAttributedString);
        v36 = sub_769210();

        type metadata accessor for Key(0);
        sub_202F10(&qword_93EC10, type metadata accessor for Key);
        isa = sub_7690E0().super.isa;

        v38 = [v41 initWithString:v36 attributes:isa];

        v39 = v42;
        [v42 setAttributedText:v38];
        sub_202A54(v29, v30, v31, v32, v28, v33);
      }

      else
      {
      }
    }

    else
    {

      v40 = *&v0[v12];
      if (v40)
      {
        [v40 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }
}

void sub_201A78()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

uint64_t sub_201D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_765B10();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7573C0();
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75F730();
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264118(a1, a2, a3);
  sub_765B20();
  sub_757A70();
  if (swift_dynamicCastClass())
  {
    v37 = v11;
    v38 = v9;
    v39 = v8;
    v18 = [v4 traitCollection];
    v19 = sub_7699B0();

    sub_765A80();
    sub_757390();
    sub_202CE0(v19 & 1, v17, v14, v41);
    v20 = v42;
    v21 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v41[1];
    *v21 = v41[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v41[2];
    *(v21 + 6) = v20;
    sub_202E68(v41, v40);
    sub_202A54(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_202EA0(v41);
    v29 = sub_765B40();
    v30 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    sub_201590();
    v32 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v32)
    {
      v33 = v32;
      v34 = v37;
      sub_765B30();
      v35 = sub_765AC0();
      (*(v38 + 8))(v34, v39);
      [v33 setTextColor:v35];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_202064(uint64_t a1, uint64_t a2)
{
  sub_264FB8(a1, a2);
  sub_765B70();
  sub_202F10(&qword_94CAB0, &type metadata accessor for TodayCard);
  result = sub_75C750();
  if (v8)
  {
    sub_765B20();
    sub_757A70();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      sub_75C7B0();

      v3 = sub_7618B0();

      if (v3)
      {
      }

      else
      {

        sub_7577D0();

        v4 = sub_765330();

        sub_BD88(&unk_93F5C0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_77D9F0;
        *(v5 + 32) = v4;

        v6._rawValue = v5;
        sub_75A070(v6);
      }
    }
  }

  return result;
}

id sub_20225C(uint64_t a1, uint64_t a2)
{
  sub_264910(a1, a2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_2022C8()
{
  v1 = v0;
  v2 = sub_BD88(&qword_94A330);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-v4 - 8];
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  sub_765B20();
  sub_757A70();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_632720();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    sub_7577D0();
    sub_7652E0();

    v18 = sub_7652D0();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_202A94(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10A2C(v5, &qword_94A330);
    sub_7577D0();

    sub_765330();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView();
    sub_202F10(&qword_94A338, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView);
    sub_76A6E0();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v21, &unk_9443A0);
  }

  else
  {
  }
}

void sub_2026C0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v4)
    {
      v5 = v4;

      v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v5[OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v7 = a1;

      v3 = v5;
      sub_632720();
    }
  }
}

void sub_202810()
{
  sub_202A54(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell()
{
  result = qword_94A320;
  if (!qword_94A320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2029B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2029F8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_202A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_202A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94A330);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_202B04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_202B48()
{
  v0 = sub_75F730();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((sub_757360() & 1) == 0 && (sub_757310() & 1) == 0 && (sub_757350() & 1) == 0)
  {
    sub_75F710();
    sub_202F10(&unk_94A340, &type metadata accessor for StringCharacteristics);
    v5 = sub_76A520();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      sub_75F700();
      v7 = sub_76A520();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_202CE0@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_202B48();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = sub_7573C0();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = sub_75F730();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_78B730;
  *(a4 + 16) = xmmword_78B740;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_202ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_202F10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_202F58(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_BD88(&qword_94A498);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_1ED18(v1 + v17, v16, &qword_94A490);
  sub_1ED18(v29, &v16[v18], &qword_94A490);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10A2C(v16, &qword_94A490);
    }

    goto LABEL_6;
  }

  sub_1ED18(v16, v12, &qword_94A490);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_205CA0(v12);
LABEL_6:
    v21 = &qword_94A498;
    goto LABEL_13;
  }

  v22 = v26;
  sub_205C3C(&v16[v18], v26);
  if (sub_75B650() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_757580())
  {
    v23 = sub_75B650();
    sub_205CA0(v22);
    sub_205CA0(v12);
    result = sub_10A2C(v16, &qword_94A490);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_205CA0(v22);
  sub_205CA0(v12);
  v21 = &qword_94A490;
LABEL_13:
  sub_10A2C(v16, v21);
LABEL_14:
  sub_1ED18(v28 + v17, v9, &qword_94A490);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10A2C(v9, &qword_94A490);
  }

  v24 = v27;
  sub_205C3C(v9, v27);
  sub_203338();
  return sub_205CA0(v24);
}

uint64_t sub_203338()
{
  v0 = sub_757640();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575B0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), sub_769BC0(), v6 = sub_769210(), , isa = sub_757550().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_205E24(), sub_BD88(&unk_94A520), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_2035D0(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = sub_757550().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_205E24(), sub_BD88(&unk_94A520), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_2035D0(v16);
  (*(v1 + 8))(v3, v0);
  sub_10A2C(v16, &unk_94A510);
  return sub_10A2C(v18, &unk_94A510);
}

uint64_t sub_2035D0(uint64_t a1)
{
  v49 = sub_BD88(&qword_94A498);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_1ED18(a1, &v51, &unk_94A510);
  if (!v52)
  {
    return sub_10A2C(&v51, &unk_94A510);
  }

  v47 = v12;
  v48 = v22;
  sub_10914(&v51, v54);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider45InteractiveSectionBackgroundScrollCoordinator_currentState;
  swift_beginAccess();
  sub_1ED18(v1 + v23, v15, &qword_94A490);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_94A490;
    v26 = v15;
LABEL_21:
    sub_10A2C(v26, v25);
    return sub_BEB8(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_205C3C(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_B170(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_11CB8C(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_1ED18(v31, v50, &qword_94A490);
  sub_1ED18(v9, v32 + v33, &qword_94A490);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v31, &qword_94A490);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10A2C(v32, &qword_94A490);
LABEL_8:
      sub_205CA0(v48);
      return sub_BEB8(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_1ED18(v32, v44, &qword_94A490);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
LABEL_11:
    sub_10A2C(v32, &qword_94A498);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_205C3C(v32 + v33, v43);
  v37 = sub_75B650();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (sub_757580())
  {
    v38 = sub_75B650();
    sub_205CA0(v36);
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
    sub_10A2C(v32, &qword_94A490);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_205CA0(v36);
    sub_10A2C(v9, &qword_94A490);
    sub_10A2C(v47, &qword_94A490);
    sub_205CA0(v34);
    sub_10A2C(v32, &qword_94A490);
  }

LABEL_18:
  sub_1ED18(v45, &v51, &unk_94A510);
  v39 = v52;
  if (!v52)
  {
    sub_205CA0(v48);
    v25 = &unk_94A510;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_B170(&v51, v52);
  v41 = *(v35 + 80);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_205CA0(v42);
  sub_BEB8(&v51);
  return sub_BEB8(v54);
}

uint64_t sub_203BE4()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider45InteractiveSectionBackgroundScrollCoordinator_currentState, &qword_94A490);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveSectionBackgroundScrollCoordinator()
{
  result = qword_94A378;
  if (!qword_94A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_203CC4()
{
  sub_11C704();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_203DB0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2050BC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_203E2C(v6);
  return sub_76A7B0();
}

void sub_203E2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_76A900(v2);
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
        sub_BD88(&unk_94A500);
        v6 = sub_7694E0();
        *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_204164(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_203F3C(0, v2, 1, a1);
  }
}

void sub_203F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = sub_757640();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      sub_757590();

      v20 = [v18 indexPath];
      v21 = v32;
      sub_757590();

      LOBYTE(v20) = sub_757570();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_204164(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = sub_757640();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_204F10(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_2049EC((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_204F10(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_204E84(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      sub_757590();

      v23 = [v20 indexPath];
      v24 = v119;
      sub_757590();

      LODWORD(v116) = sub_757570();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        sub_757590();

        v32 = [v28 indexPath];
        v33 = v119;
        sub_757590();

        LODWORD(v32) = sub_757570() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_7BFD4(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_7BFD4((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_2049EC((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_204F10(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_204E84(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    sub_757590();

    v49 = [v46 indexPath];
    v50 = v119;
    sub_757590();

    LOBYTE(v49) = sub_757570();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_2049EC(void **a1, void **a2, void **a3, void **a4)
{
  v51 = sub_757640();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        sub_757590();

        v37 = [v34 indexPath];
        v38 = v50;
        sub_757590();

        LOBYTE(v37) = sub_757570();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        sub_757590();

        v21 = [v18 indexPath];
        v22 = v50;
        sub_757590();

        LOBYTE(v21) = sub_757570();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_204E84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_204F10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_204F24(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_941A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_205028(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_76A860();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_7E3E8(v3, 0);
  sub_10C7CC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_2050F8(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_BD88(&qword_94A490);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = sub_757640();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = sub_75B660();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= sub_75AF30())
  {
    return;
  }

  v90 = v32;
  sub_75AF00();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = sub_75B650();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_205028(v41);
  sub_203DB0(v105);
  v42 = v105[0];
  v89 = v9;
  if (v105[0] < 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = sub_76A860();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = sub_76A770();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      sub_757590();

      v51 = sub_7575C0();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        sub_757590();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_7BA20(0, v48[2] + 1, 1, v48);
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          v45 = sub_7BA20(v54 > 1, v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        v45[2] = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (v45[2])
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(sub_7575C0(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    sub_7575B0();
    sub_75AEC0();
    v61 = v97;
    sub_75AEC0();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = sub_757550().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC18ASMessagesProvider45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_1ED18(v80 + v79, v94, &qword_94A490);
    swift_beginAccess();
    sub_205BCC(v74, v80 + v79);
    swift_endAccess();
    sub_202F58(v81);

    sub_10A2C(v81, &qword_94A490);
    sub_10A2C(v74, &qword_94A490);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}