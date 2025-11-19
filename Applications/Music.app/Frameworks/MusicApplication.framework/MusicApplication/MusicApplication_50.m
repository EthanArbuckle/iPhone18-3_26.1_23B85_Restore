uint64_t sub_43C4F8()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v24 = v1;
  *&v37[0] = v1;
  *(&v37[0] + 1) = v4;
  v37[1] = xmmword_AF7C20;
  v37[2] = xmmword_AF82C0;
  v38 = v0;
  v39 = 1;
  v40 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v37);
  v23 = v3;
  v22 = v4;
  v21 = v0;
  sub_2F118(v37, v55);
  v19 = v5;

  v6 = sub_ABA580();
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = qword_E718D8;
  v9 = [v2 clearColor];
  *&v31[0] = v7;
  *(&v31[0] + 1) = v9;
  v31[1] = xmmword_AF7C20;
  v32 = 0;
  v33 = 0;
  v34 = v6;
  v35 = 2;
  v36 = xmmword_B0F750;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v31);
  v18 = v8;
  v17 = v9;
  v16 = v6;
  sub_2F118(v31, v55);

  v11 = sub_ABA560();
  v12 = [v2 clearColor];
  *&v25[0] = v1;
  *(&v25[0] + 1) = v12;
  v25[1] = xmmword_AF7C20;
  v26 = 0;
  v27 = 0;
  v28 = v11;
  v29 = 3;
  v30 = xmmword_AFB160;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x7470697263736564, 0xEB000000006E6F69, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF82E0;
  *(v14 + 32) = v19;
  *(v14 + 40) = v10;
  *(v14 + 48) = v13;
  sub_2F118(v25, v55);

  v41[0] = v24;
  v41[1] = v12;
  v42 = xmmword_AF7C20;
  v43 = 0;
  v44 = 0;
  v45 = v11;
  v46 = 3;
  v47 = xmmword_AFB160;
  sub_2F174(v41);
  v48[0] = v7;
  v48[1] = v9;
  v49 = xmmword_AF7C20;
  v50 = 0;
  v51 = 0;
  v52 = v6;
  v53 = 2;
  v54 = xmmword_B0F750;
  sub_2F174(v48);
  v55[0] = v24;
  v55[1] = v4;
  v56 = xmmword_AF7C20;
  v57 = xmmword_AF82C0;
  v58 = v20;
  v59 = 1;
  v60 = xmmword_AF7C30;
  sub_2F174(v55);

  return v19;
}

void sub_43C954()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isBottomHairlineHidden) = 1;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCornerTreatment;
  v6 = sub_ABA680();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkPlaceholder);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_playbackPosition) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_hasBeenPlayed) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_artworkCachingReference) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textDrawingCache) = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textComponents);
  *v8 = sub_43C4F8();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  v12 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView;
  *(v0 + v12) = [objc_allocWithZone(type metadata accessor for VideoHeaderLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headlineTextStackView;
  type metadata accessor for TextStackView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_textStackView;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_descriptionTextStackView;
  *(v0 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell____lazy_storage___chevronImageView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_bottomHairlineView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_43CB7C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog);
  *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_lockupImageArtworkCatalog) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_headerLockupView);
  v6 = *(v5 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog);
  *(v5 + OBJC_IVAR____TtC16MusicApplication21VideoHeaderLockupView_lockupImageArtworkCatalog) = a1;
  v7 = v4;

  sub_74EA4(a1);
}

uint64_t sub_43CC20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_43CDCC()
{
  v1 = v0;
  *(v0 + 16) = [objc_allocWithZone(MPStoreSocialServiceController) init];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = sub_976C4(_swiftEmptyArrayStorage);
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = &_swiftEmptySetSingleton;
  sub_43FD10();
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = qword_DE67B0;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_DE67A8;
  v5 = qword_E70D40;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_E70D38;
  v7 = swift_allocObject();
  swift_weakInit();

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = sub_441A2C;
  v8[4] = v2;
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 24) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_441A74, v8);

  sub_43CFD0();

  return v1;
}

uint64_t sub_43CFD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_DE67A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
    UnfairLock.locked<A>(_:)(sub_199998);
    if (v14)
    {
      swift_beginAccess();

      sub_44065C(v2);

      v3 = *JSSocialProfile.NotificationNames.didUpdateFollowees.unsafeMutableAddressor();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = v14;
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v6 = v14;
      v7 = v3;

      v1[4] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v7, v14, 1, 1, sub_441AC0, v5);

      v8 = *JSSocialProfile.NotificationNames.didUpdateFollowState.unsafeMutableAddressor();
      v9 = swift_allocObject();
      swift_weakInit();
      swift_allocObject();
      v1[5] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, 0, 1, 1, sub_441AC8, v9);

      v10 = *JSSocialProfile.NotificationNames.didUpdateHasRequestedToFollowCurrentUser.unsafeMutableAddressor();
      v11 = swift_allocObject();
      swift_weakInit();
      v12 = v10;

      swift_allocObject();

      v13 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v12, 0, 1, 1, sub_441AF8, v11);

      v1[6] = v13;
    }
  }

  return result;
}

uint64_t sub_43D2E0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();

    sub_44065C(v1);
  }

  return result;
}

void sub_43D378(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = sub_AB2BC0();
  if (!v4)
  {
    v10 = 0u;
    v11 = 0u;
LABEL_11:
    sub_12E1C(&v10, &unk_DE8E40);
    return;
  }

  v5 = v4;
  JSSocialProfile.NotificationNames.UserInfoKeys.socialProfile.unsafeMutableAddressor();

  sub_ABAD10();
  if (*(v5 + 16) && (v6 = sub_2EC004(v9), (v7 & 1) != 0))
  {
    sub_808B0(*(v5 + 56) + 32 * v6, &v10);
    sub_8085C(v9);
  }

  else
  {
    sub_8085C(v9);
    v10 = 0u;
    v11 = 0u;
  }

  if (!*(&v11 + 1))
  {
    goto LABEL_11;
  }

  type metadata accessor for JSSocialProfile();
  if (swift_dynamicCast())
  {
    v8 = v9[0];
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      a3(v8);
    }

    else
    {
    }
  }
}

uint64_t sub_43D4D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_44002C();
    *(v5 + 32) = 0;

    v6 = [objc_allocWithZone(MPStoreSocialServiceController) init];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;
    if (v6 != v7)
    {
      v8 = v6;
      sub_43FD10();

      v7 = v8;
    }

    a3();
  }

  return result;
}

void sub_43D5A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  qword_E71818 = v4;
}

uint64_t sub_43D66C()
{
  type metadata accessor for SocialStatesCoordinator();
  swift_allocObject();
  result = sub_43CDCC();
  qword_E71820 = result;
  return result;
}

unint64_t sub_43D6A8(void *a1)
{
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_AB7CF0();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  if ([a1 hasLightweightProfile])
  {
    return 4;
  }

  *v5 = sub_ABA150();
  v7(v5, v6, v2);
  v11 = sub_AB7CF0();
  result = v9(v5, v2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  v12 = v25;
  v13 = *(v25 + 64);
  if (v13)
  {
    result = sub_43EB04([v13 transientFollowStateForPerson:a1]);
    if (result != 4)
    {
      return result;
    }
  }

  v14 = [a1 identifiers];
  v15 = [v14 universalStore];

  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = [v15 socialProfileID];
  if (!v16)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_AB92A0();
  v20 = v19;
  swift_unknownObjectRelease();

LABEL_12:
  swift_beginAccess();
  v21 = *(v12 + 72);
  if (*(v21 + 16))
  {

    v22 = sub_2EBF88(v18, v20);
    if (v23)
    {
      v24 = *(*(v21 + 56) + v22);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_43D968(void *a1)
{
  v2 = sub_AB7CC0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v5 = sub_ABA150();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = sub_AB7CF0();
  v9 = *(v3 + 8);
  result = v9(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  *v5 = sub_ABA150();
  v7(v5, v6, v2);
  v11 = sub_AB7CF0();
  result = v9(v5, v2);
  if ((v11 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = v25;
  v13 = *(v25 + 64);
  if (v13)
  {
    v14 = [v13 transientFollowPendingRequestStateForPerson:a1] == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = [a1 identifiers];
  v16 = [v15 universalStore];

  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = [v16 socialProfileID];
  if (!v17)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  v18 = v17;
  v19 = sub_AB92A0();
  v21 = v20;
  swift_unknownObjectRelease();

LABEL_11:
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 == 0 && v14;
  if (v22)
  {
    if (v14)
    {
      swift_beginAccess();
      v24 = *(v12 + 80);

      v23 = sub_472F00(v19, v21, v24);
    }
  }

  return v23 & 1;
}

void sub_43DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_AB7CC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v11 = sub_ABA150();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v12 = sub_AB7CF0();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v13 = *(v4 + 16);
    sub_1116A8(a1, v18);
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v4;
    sub_111814(v18, (v14 + 4));
    v14[16] = a2;
    v14[17] = a3;
    aBlock[4] = sub_441FB0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3FC190;
    aBlock[3] = &block_descriptor_109_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    sub_307CC(a2);

    [v16 acceptAllFollowRequestsWithCompletion:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_43DE40(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_13C80(0, &qword_DE8ED0);
  sub_1116A8(a5, v17);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a2;
  sub_111814(v17, v14 + 48);
  *(v14 + 144) = a6;
  *(v14 + 152) = a7;
  v15 = a3;

  swift_errorRetain();
  sub_307CC(a6);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_442068, v14);
}

void sub_43DF3C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t))
{
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a1 & 1) != 0 && *(a3 + 16) == a2)
  {
    v17 = v14;
    swift_beginAccess();
    *(a3 + 80) = &_swiftEmptySetSingleton;

    v18 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_E71830 object:a3];

    sub_13C80(0, &qword_DE8ED0);
    *v16 = sub_ABA150();
    (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v17);
    v19 = sub_AB7CF0();
    (*(v13 + 8))(v16, v17);
    if ((v19 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v20 = *JSBridge.shared.unsafeMutableAddressor();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = -64;
    v22 = *&stru_B8.segname[(swift_isaMask & *v20) + 16];
    v23 = v20;
    v22(sub_442150, v21);

    if (a6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (a4)
    {
      sub_441630(a5);
    }

    if (a6)
    {
LABEL_6:
      a6(a1 & 1, a4);
    }
  }
}

uint64_t sub_43E1F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, char a7, uint64_t a8, uint64_t a9)
{
  sub_13C80(0, &qword_DE8ED0);
  sub_1116A8(a5, v21);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  sub_111814(v21, v17 + 48);
  *(v17 + 144) = a6;
  *(v17 + 152) = a7 & 1;
  *(v17 + 160) = a8;
  *(v17 + 168) = a9;

  v18 = a4;
  swift_errorRetain();
  v19 = a6;
  sub_307CC(a8);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4415F4, v17);
}

void sub_43E308(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, uint64_t))
{
  v16 = sub_43D968(a2);
  if (a3)
  {
    v17 = a4 == 0;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  if (a4)
  {
    sub_441630(a5);
    goto LABEL_21;
  }

  if ((v18 & 1) != 0 && *(a1 + 16) == a6)
  {
    sub_440D8C(0, a2, 1);
    v19 = [a2 identifiers];
    v20 = [v19 universalStore];

    if (v20)
    {
      v21 = [v20 socialProfileID];
      if (v21)
      {
        v27 = sub_AB92A0();
        v23 = v22;
        swift_unknownObjectRelease();

        v21 = v27;
        if (a7)
        {
          goto LABEL_20;
        }

LABEL_18:
        swift_beginAccess();
        v24 = *(a1 + 88);

        v25 = sub_472F00(v21, v23, v24);

        if (v25)
        {
          swift_beginAccess();
          sub_2EF424(v21, v23);
          swift_endAccess();
        }

        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      v23 = 0xE000000000000000;
      if ((a7 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = 0;
      v23 = 0xE000000000000000;
      if ((a7 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
  }

LABEL_21:
  if (a8)
  {
    a8(v18, a4);
  }

  if ((v16 ^ sub_43D968(a2)))
  {
    v26 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 != -1)
    {
      swift_once();
    }

    [v26 postNotificationName:qword_E71830 object:a1];
  }
}

void sub_43E588(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v13 = a4;
    v14 = a5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_199560;
    v12 = &block_descriptor_139;
    v7 = _Block_copy(&v9);

    v8 = &selRef_declineFollowRequestFromPerson_completion_;
  }

  else
  {
    v13 = a4;
    v14 = a5;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_199560;
    v12 = &block_descriptor_42;
    v7 = _Block_copy(&v9);

    v8 = &selRef_acceptFollowRequestFromPerson_completion_;
  }

  [a2 *v8];
  _Block_release(v7);
}

void sub_43E6CC(void *a1, uint64_t a2, void (*a3)(void, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (qword_DE6BE0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  if ([a1 hasLoadedValuesForPropertySet:qword_E71818])
  {
    v15 = sub_43D6A8(a1);
    v16 = *(v5 + 16);
    sub_1116A8(a2, v23);
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = a1;
    sub_111814(v23, (v17 + 4));
    v17[16] = v16;
    v17[17] = a3;
    v17[18] = a4;
    v18 = v16;

    v19 = a1;
    sub_307CC(a3);
    v20 = sub_43D6A8(v19);
    sub_43EC9C(v15, v19, v18, sub_441D7C, v17);
    v21 = sub_43D6A8(v19);
    if (v20 == 4)
    {
      if (v21 != 4)
      {
        goto LABEL_12;
      }
    }

    else if (v21 == 4 || v20 != v21)
    {
LABEL_12:
      v22 = [objc_opt_self() defaultCenter];
      if (qword_DE6BF0 != -1)
      {
        swift_once();
      }

      [v22 postNotificationName:qword_E71828 object:v5];

      goto LABEL_15;
    }

LABEL_15:

    return;
  }

  if (a3)
  {
    a3(0, 1, 0);
  }
}

uint64_t sub_43E9F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  sub_13C80(0, &qword_DE8ED0);
  sub_1116A8(a5, v20);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a2;
  sub_111814(v20, (v16 + 6));
  v16[18] = a6;
  v16[19] = a7;
  v16[20] = a8;

  v17 = a4;
  swift_errorRetain();
  v18 = a6;
  sub_307CC(a7);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_441E40, v16);
}

unint64_t sub_43EB04(unint64_t a1)
{
  if (a1 < 7)
  {
    return 0x30001000204uLL >> (8 * a1);
  }

  sub_ABAD90(24);
  v2._object = 0x8000000000B4AB80;
  v2._countAndFlagsBits = 0xD000000000000013;
  sub_AB94A0(v2);
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x8000000000B65610;
  sub_AB94A0(v3);
  v4._countAndFlagsBits = 32;
  v4._object = 0xE100000000000000;
  sub_AB94A0(v4);
  type metadata accessor for MPStoreSocialTransientFollowState(0);
  sub_ABAF70();
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_43EC14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6, void (*a7)(uint64_t, void, uint64_t), uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    sub_441630(a3);
  }

  else if (a4 != 4 && *(a2 + 16) == a5)
  {
    sub_440A48(a4, a6, 1);
  }

  if (a7)
  {
    a7(a9, 0, a1);
  }
}

void sub_43EC9C(unsigned __int8 a1, id a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_94_1;
      v8 = _Block_copy(&v11);

      v9 = &selRef_cancelFollowRequestOnPerson_completion_;
    }

    else if ([a2 isPrivate])
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_100_0;
      v8 = _Block_copy(&v11);

      v9 = &selRef_requestFollowPerson_completion_;
    }

    else
    {
      v15 = a4;
      v16 = a5;
      v11 = _NSConcreteStackBlock;
      v12 = 1107296256;
      v13 = sub_43EF70;
      v14 = &block_descriptor_97;
      v8 = _Block_copy(&v11);

      v9 = &selRef_followPerson_completion_;
    }
  }

  else if (a1 == 2)
  {
    v15 = a4;
    v16 = a5;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_43EF70;
    v14 = &block_descriptor_91;
    v8 = _Block_copy(&v11);

    v9 = &selRef_unfollowPerson_completion_;
  }

  else
  {
    if (a1 != 3)
    {
      return;
    }

    v15 = a4;
    v16 = a5;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_43EF70;
    v14 = &block_descriptor_88_1;
    v8 = _Block_copy(&v11);

    v9 = &selRef_unblockPerson_completion_;
  }

  [a3 *v9];
  _Block_release(v8);
}

void sub_43EF70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_43EFE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_AB7CC0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v13 = sub_ABA150();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = sub_AB7CF0();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v16 = *(v5 + 16);
    sub_1116A8(a2, aBlock);
    v17 = swift_allocObject();
    v17[2] = v5;
    sub_111814(aBlock, (v17 + 3));
    v17[15] = v16;
    v17[16] = a1;
    v17[17] = a3;
    v17[18] = a4;
    aBlock[4] = sub_441BFC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3A5920;
    aBlock[3] = &block_descriptor_79_0;
    v18 = _Block_copy(aBlock);
    v19 = v16;

    v20 = a1;
    sub_307CC(a3);

    [v19 removeFollower:v20 completion:v18];
    _Block_release(v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_43F23C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_13C80(0, &qword_DE8ED0);
  sub_1116A8(a3, v18);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  sub_111814(v18, (v14 + 4));
  v14[16] = a4;
  v14[17] = a5;
  v14[18] = a6;
  v14[19] = a7;
  swift_errorRetain();

  v15 = a4;
  v16 = a5;
  sub_307CC(a6);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_441CC0, v14);
}

void sub_43F338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    sub_441630(a3);
  }

  else if (*(a2 + 16) == a4)
  {
    sub_4410EC(a5);
  }

  if (a6)
  {
    a6(a1);
  }
}

void sub_43F3A4(char *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  v11 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  *&v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v10;
  v13 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v14 = v10;
  v15 = [v13 initWithRequestedPropertySet:v14];
  if (v15)
  {
    *&v12[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v15;
    v20.receiver = v12;
    v20.super_class = v11;
    v4 = objc_msgSendSuper2(&v20, "init");

    v16 = [objc_opt_self() activeAccount];
    v7 = sub_21B8E0(a1, v16);

    if (!v7)
    {
LABEL_9:

      return;
    }

    v17 = sub_43D968(v7) & 1;
    v18 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_hasRequestedToFollowCurrentUser;
    swift_beginAccess();
    sub_440D8C(a1[v18], v7, 0);
    if (v17 == (sub_43D968(v7) & 1))
    {
      v8 = v7;
      goto LABEL_8;
    }

    v8 = [objc_opt_self() defaultCenter];
    if (qword_DE6BF8 == -1)
    {
LABEL_6:
      [v8 postNotificationName:qword_E71830 object:v2];

      v4 = v7;
LABEL_8:

      v4 = v8;
      goto LABEL_9;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_43F6C8(char *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_AB7CF0();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v8;
  v12 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_followState;
  swift_beginAccess();
  v13 = a1[v12];
  if (v13 == 6)
  {
    return;
  }

  v43 = v9;
  v44 = v11;
  v45 = v2;
  sub_13C80(0, &qword_DF4BC8);
  v14 = [swift_getObjCClassFromMetadata() allSupportedProperties];
  if (!v14)
  {
    __break(1u);
    goto LABEL_37;
  }

  v15 = v14;
  v16 = type metadata accessor for JSModelSocialPersonProfileBuilder();
  v17 = objc_allocWithZone(v16);
  v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_initializedProperties] = 2;
  *&v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_requestedProperties] = v15;
  v18 = objc_allocWithZone(MPStoreModelSocialPersonBuilder);
  v19 = v15;
  v20 = [v18 initWithRequestedPropertySet:v19];
  if (!v20)
  {
LABEL_37:
    __break(1u);
    return;
  }

  *&v17[OBJC_IVAR____TtC16MusicApplication33JSModelSocialPersonProfileBuilder_storePlatformPersonBuilder] = v20;
  v48.receiver = v17;
  v48.super_class = v16;
  v2 = objc_msgSendSuper2(&v48, "init");

  v21 = [objc_opt_self() activeAccount];
  a1 = sub_21B8E0(a1, v21);

  v9 = v45;
  if (a1)
  {
    v22 = sub_43D6A8(a1);
    if ([a1 hasLightweightProfile])
    {
      *v7 = sub_ABA150();
      v43(v7, v46, v4);
      v10 = sub_AB7CF0();
      v44(v7, v4);
      if (v10)
      {
        v23 = [a1 identifiers];
        v24 = [v23 universalStore];

        if (v24)
        {
          v25 = [v24 socialProfileID];
          if (v25)
          {
            v26 = v25;
            v27 = sub_AB92A0();
            v29 = v28;
            swift_unknownObjectRelease();

LABEL_17:
            swift_beginAccess();
            v38 = 4;
            v39 = v27;
            v40 = v29;
            goto LABEL_21;
          }

          swift_unknownObjectRelease();
        }

        v27 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_17;
      }

      goto LABEL_33;
    }

    *v7 = sub_ABA150();
    v43(v7, v46, v4);
    v10 = sub_AB7CF0();
    v44(v7, v4);
    if ((v10 & 1) == 0)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v30 = 0x30201000404uLL >> (8 * v13);
    v31 = [a1 identifiers];
    v32 = [v31 universalStore];

    if (v32)
    {
      v33 = [v32 socialProfileID];
      if (v33)
      {
        v34 = v33;
        v35 = sub_AB92A0();
        v37 = v36;
        swift_unknownObjectRelease();

LABEL_20:
        swift_beginAccess();
        v38 = v30;
        v39 = v35;
        v40 = v37;
LABEL_21:
        sub_2E5254(v38, v39, v40);
        swift_endAccess();
        v41 = sub_43D6A8(a1);
        if (v22 == 4)
        {
          if (v41 != 4)
          {
            goto LABEL_27;
          }
        }

        else if (v41 == 4 || v22 != v41)
        {
LABEL_27:
          v10 = [objc_opt_self() defaultCenter];
          if (qword_DE6BF0 == -1)
          {
LABEL_28:
            [v10 postNotificationName:qword_E71828 object:v9];

            v2 = a1;
            goto LABEL_29;
          }

LABEL_35:
          swift_once();
          goto LABEL_28;
        }

        v10 = a1;
LABEL_29:

        v2 = v10;
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    v35 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_20;
  }

LABEL_30:
}

NSString sub_43FC68()
{
  result = sub_AB9260();
  qword_E71828 = result;
  return result;
}

NSString sub_43FCA0()
{
  result = sub_AB9260();
  qword_E71830 = result;
  return result;
}

NSString sub_43FCD8()
{
  result = sub_AB9260();
  qword_E71838 = result;
  return result;
}

uint64_t sub_43FD10()
{
  v1 = v0;
  v2 = MPStoreSocialServiceControllerTransientStatesDidChangeNotification;
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v5 = v2;
  v6 = v3;
  *(v1 + 56) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v3, 1, 1, sub_441B4C, v4);
}

void sub_43FDE4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_AB2BC0();
  if (v2)
  {
    v3 = v2;
    *&v14 = sub_AB92A0();
    *(&v14 + 1) = v4;
    sub_ABAD10();
    if (*(v3 + 16) && (v5 = sub_2EC004(v13), (v6 & 1) != 0))
    {
      sub_808B0(*(v3 + 56) + 32 * v5, &v14);
      sub_8085C(v13);
    }

    else
    {
      sub_8085C(v13);
      v14 = 0u;
      v15 = 0u;
    }

    if (*(&v15 + 1))
    {
      sub_13C80(0, &unk_E073B0);
      v7 = swift_dynamicCast();
      v8 = v13[0];
      if (!v7)
      {
        v8 = 0;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  sub_12E1C(&v14, &unk_DE8E40);
  v8 = 0;
LABEL_13:
  v9 = *(v1 + 64);
  *(v1 + 64) = v8;

  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  if (qword_DE6BF0 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_E71828 object:v1];

  v12 = [v10 defaultCenter];
  if (qword_DE6BF8 != -1)
  {
    swift_once();
  }

  [v12 postNotificationName:qword_E71830 object:v1];
}

void sub_44002C()
{
  v1 = sub_AB7C10();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB7C50();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB7CC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v10 = sub_ABA150();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = sub_AB7CF0();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v12 = sub_976C4(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v0[9] = v12;

    swift_beginAccess();
    v0[10] = &_swiftEmptySetSingleton;

    swift_beginAccess();
    v0[11] = &_swiftEmptySetSingleton;

    v13 = sub_ABA150();
    aBlock[4] = sub_441B44;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_72_1;
    v14 = _Block_copy(aBlock);

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_D1010();
    sub_ABABB0();
    sub_ABA160();
    (*(v17 + 8))(v3, v1);
    (*(v4 + 8))(v6, v16);
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void sub_4403F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  if (qword_DE6BF0 != -1)
  {
    swift_once();
  }

  [v3 postNotificationName:qword_E71828 object:a1];

  v4 = [v2 defaultCenter];
  v5 = v4;
  if (qword_DE6BF8 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_E71830 object:a1];
}

void sub_44051C(void *a1, void (*a2)(void))
{
  v5 = sub_43D6A8(a1);
  a2();
  v6 = sub_43D6A8(a1);
  if (v5 == 4)
  {
    if (v6 == 4)
    {
      return;
    }
  }

  else if (v6 != 4 && v5 == v6)
  {
    return;
  }

  v7 = [objc_opt_self() defaultCenter];
  v8 = v7;
  if (qword_DE6BF0 != -1)
  {
    swift_once();
    v7 = v8;
  }

  [v7 postNotificationName:qword_E71828 object:v2];
}

uint64_t sub_44065C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_38;
  }

  v9 = sub_976C4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v2 + 72) = v9;

  if (!a1)
  {
    return result;
  }

  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v46 = a1;
  while (v14)
  {
LABEL_12:
    while (1)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (v16 << 10) | (16 * v18);
      v20 = (*(a1 + 48) + v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = (*(a1 + 56) + v19);
      v24 = *v23;
      v25 = v23[1];

      v26._rawValue = &off_CEFC70;
      v49._countAndFlagsBits = v24;
      v49._object = v25;
      v27 = sub_ABB140(v26, v49);

      if (v27 > 2)
      {
        break;
      }

      if (v27 == 2)
      {
        v47 = 0;
        goto LABEL_22;
      }

LABEL_7:

      if (!v14)
      {
        goto LABEL_8;
      }
    }

    switch(v27)
    {
      case 3:
        v28 = 1;
        break;
      case 4:
        v28 = 2;
        break;
      case 5:
        v28 = 3;
        break;
      default:
        goto LABEL_7;
    }

    v47 = v28;
LABEL_22:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v2 + 72);
    v30 = v48;
    *(v2 + 72) = 0x8000000000000000;
    v31 = sub_2EBF88(v22, v21);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_37;
    }

    v37 = v32;
    if (v30[3] < v36)
    {
      sub_328818(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_2EBF88(v22, v21);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_40;
      }

LABEL_27:
      a1 = v46;
      if (v37)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v41 = v31;
    sub_331B48();
    v31 = v41;
    a1 = v46;
    if (v37)
    {
LABEL_28:
      v39 = v31;

      v40 = v48;
      *(v48[7] + v39) = v47;
      goto LABEL_32;
    }

LABEL_30:
    v40 = v48;
    v48[(v31 >> 6) + 8] |= 1 << v31;
    v42 = (v40[6] + 16 * v31);
    *v42 = v22;
    v42[1] = v21;
    *(v40[7] + v31) = v47;
    v43 = v40[2];
    v35 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v35)
    {
      goto LABEL_39;
    }

    v40[2] = v44;
LABEL_32:
    *(v2 + 72) = v40;
    swift_endAccess();
  }

LABEL_8:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_ABB4C0();
  __break(1u);
  return result;
}

uint64_t sub_440A48(int a1, void *a2, char a3)
{
  v31 = a1;
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_13C80(0, &qword_DE8ED0);
  *v8 = sub_ABA150();
  v10 = *(v6 + 104);
  v30 = enum case for DispatchPredicate.onQueue(_:);
  v29 = v10;
  v10(v8);
  v11 = sub_AB7CF0();
  v28 = *(v6 + 8);
  result = v28(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = [a2 identifiers];
  v14 = [v13 universalStore];

  v27[1] = v9;
  if (v14)
  {
    v15 = [v14 socialProfileID];
    if (v15)
    {
      v16 = v15;
      v17 = sub_AB92A0();
      v19 = v18;
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v17 = 0;
  v19 = 0xE000000000000000;
LABEL_7:
  swift_beginAccess();

  v20 = v31;
  sub_2E5254(v31, v17, v19);
  swift_endAccess();
  if ((a3 & 1) == 0)
  {
  }

  if (v20 <= 1u)
  {
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  else
  {
    if (v20 != 2)
    {
      if (v20 == 3)
      {
        v21 = 5;
        goto LABEL_17;
      }
    }

    v21 = 4;
  }

LABEL_17:
  *v8 = sub_ABA150();
  v29(v8, v30, v5);
  v22 = sub_AB7CF0();
  result = v28(v8, v5);
  if ((v22 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v23 = *JSBridge.shared.unsafeMutableAddressor();
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  v25 = *&stru_B8.segname[(swift_isaMask & *v23) + 16];
  v26 = v23;
  v25(sub_442150, v24);
}

uint64_t sub_440D8C(int a1, void *a2, char a3)
{
  v30 = a1;
  v5 = sub_AB7CC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_13C80(0, &qword_DE8ED0);
  *v8 = sub_ABA150();
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v29 = *(v6 + 104);
  v29(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = sub_AB7CF0();
  v28 = *(v6 + 8);
  result = v28(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v27 = v9;
  v13 = a3;
  v14 = [a2 identifiers];
  v15 = [v14 universalStore];

  HIDWORD(v26) = v10;
  if (v15)
  {
    v16 = [v15 socialProfileID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_AB92A0();
      v20 = v19;
      swift_unknownObjectRelease();

      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      swift_beginAccess();

      sub_1A9FC(&v31, v18, v20);
      swift_endAccess();

      if ((v13 & 1) == 0)
      {
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  v18 = 0;
  v20 = 0xE000000000000000;
  if (v30)
  {
    goto LABEL_9;
  }

LABEL_5:
  swift_beginAccess();
  sub_2EF424(v18, v20);
  swift_endAccess();

  if ((v13 & 1) == 0)
  {
  }

LABEL_10:
  *v8 = sub_ABA150();
  v29(v8, HIDWORD(v26), v5);
  v21 = sub_AB7CF0();
  result = v28(v8, v5);
  if ((v21 & 1) == 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v22 = *JSBridge.shared.unsafeMutableAddressor();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 24) = v20;
  *(v23 + 32) = 64;
  v24 = *&stru_B8.segname[(swift_isaMask & *v22) + 16];
  v25 = v22;
  v24(sub_442150, v23);
}

void sub_4410EC(void *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v9 = *(v5 + 104);
  v9(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = sub_AB7CF0();
  v25 = *(v5 + 8);
  v25(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = [a1 identifiers];
  v12 = [v11 universalStore];

  v24 = v9;
  if (v12)
  {
    v13 = [v12 socialProfileID];
    if (v13)
    {
      HIDWORD(v23) = v8;
      v14 = v2;
      v15 = v13;
      v16 = sub_AB92A0();
      v18 = v17;
      swift_unknownObjectRelease();

      v2 = v14;
      v8 = HIDWORD(v23);
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_7:
  swift_beginAccess();

  sub_1A9FC(&v26, v16, v18);
  swift_endAccess();

  *v7 = sub_ABA150();
  v24(v7, v8, v4);
  v10 = sub_AB7CF0();
  v25(v7, v4);
  if ((v10 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = *JSBridge.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v18;
  *(v20 + 32) = 0x80;
  v21 = *&stru_B8.segname[(swift_isaMask & *v19) + 16];
  v22 = v19;
  v21(sub_441B40, v20);

  v10 = [objc_opt_self() defaultCenter];
  if (qword_DE6C00 != -1)
  {
LABEL_12:
    swift_once();
  }

  [v10 postNotificationName:qword_E71838 object:v2];
}

uint64_t sub_44146C()
{

  return v0;
}

uint64_t sub_4414D4()
{
  sub_44146C();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_139(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_441544()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

void sub_441630(uint64_t a1)
{
  v2 = sub_AB35C0();
  __chkstk_darwin(v2 - 8);
  v3 = sub_AB9250();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    sub_1116A8(a1, aBlock);
    if (aBlock[8] == 1)
    {
      sub_12E1C(aBlock, &unk_DEA520);
    }

    else
    {
      sub_17704(aBlock, v16);
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v9 = sub_AB9260();

      v10 = [objc_opt_self() alertControllerWithTitle:0 message:v9 preferredStyle:1];

      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      v11 = sub_AB9260();

      aBlock[4] = UIScreen.Dimensions.size.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1546C;
      aBlock[3] = &block_descriptor_45_2;
      v12 = _Block_copy(aBlock);

      v13 = [objc_opt_self() actionWithTitle:v11 style:1 handler:v12];
      _Block_release(v12);

      [v10 addAction:v13];
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v10, 1, 1, 0, 0);
      sub_1611C(v16);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_4419F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_441A34()
{

  return swift_deallocObject();
}

uint64_t sub_441A80()
{

  return swift_deallocObject();
}

uint64_t sub_441B28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_441B54()
{

  if (*(v0 + 88) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 72);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
    }

    if (*(v0 + 88))
    {
    }

    if (*(v0 + 104))
    {
    }
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441C10()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441CD4()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441D90()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 152))
  {
  }

  return swift_deallocObject();
}

void sub_441E40()
{
  v1 = *(v0 + 32);
  sub_43EB04(*(v0 + 16));
  sub_44051C(v1, sub_441ED4);
}

uint64_t sub_441F10()
{

  if (*(v0 + 96) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 80);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
    }

    if (*(v0 + 96))
    {
    }

    if (*(v0 + 112))
    {
    }
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_441FC0()
{

  if (*(v0 + 112) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_17774(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
    }

    if (*(v0 + 112))
    {
    }

    if (*(v0 + 128))
    {
    }
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_60Tm()
{
  sub_441B28(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

void sub_442154(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSDeepLinkSegue_viewIdentifier;
  swift_beginAccess();
  v4 = v1[v3];
  if (v4 == 7)
  {
    return;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = v1;
  sub_4148FC(v23);
  if (v25 == 1)
  {
    sub_111898(v23);
LABEL_15:
    if (v4 > 5)
    {
      sub_442694();
    }

    else
    {
      sub_4424E0();
    }

    return;
  }

  sub_17704(v23, v26);
  PresentationSource.windowScene.getter();
  if (!v7)
  {
    sub_1611C(v26);
    goto LABEL_15;
  }

  v8 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = Strong, v11 = UIViewController.canBeDismissed.getter(), v10, !v11))
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    v13 = [v12 presentedViewController];

    if (!v13)
    {
      sub_1611C(v26);

      goto LABEL_15;
    }
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = OBJC_IVAR____TtC11MusicJSCore15JSDeepLinkSegue_animated;
    swift_beginAccess();
    v17 = v6[v16];
    sub_2D384(a1, v23);
    v18 = swift_allocObject();
    v19 = v23[1];
    *(v18 + 16) = v23[0];
    *(v18 + 32) = v19;
    *(v18 + 48) = v23[2];
    *(v18 + 64) = v24;
    *(v18 + 72) = v8;
    *(v18 + 80) = sub_442434;
    *(v18 + 88) = v5;
    v22[4] = sub_4428B0;
    v22[5] = v18;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_1B5EB4;
    v22[3] = &block_descriptor_140;
    v20 = _Block_copy(v22);
    v21 = v8;

    [v15 dismissViewControllerAnimated:v17 completion:v20];

    sub_1611C(v26);
    _Block_release(v20);
  }

  else
  {
    sub_1611C(v26);
    v15 = v8;
  }
}

uint64_t sub_4423FC()
{

  return swift_deallocObject();
}

void sub_442434()
{
  if (*(v0 + 16) > 5u)
  {
    sub_442694();
  }

  else
  {
    sub_4424E0();
  }
}

uint64_t sub_442448(uint64_t a1, void *a2, void (*a3)(_BYTE *))
{
  sub_2D384(a1, v7);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = xmmword_AF7710;
  PresentationSource.init(windowScene:position:)(a2, v8, v6);
  sub_4161A4(v6);
  a3(v7);
  return sub_16170(v7);
}

void sub_4424E0()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.jsBridge.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000028, 0x8000000000B65640, &v10);
    _os_log_impl(&dword_0, v5, v6, "Attempted to perform %s within Legacy Music (picker environment) which is unexpected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_442694()
{
  v0 = sub_AB4BC0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Logger.jsBridge.unsafeMutableAddressor();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_AB4BA0();
  v6 = sub_AB9F40();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_425E68(0xD000000000000024, 0x8000000000B65670, &v10);
    _os_log_impl(&dword_0, v5, v6, "Attempted to perform %s within Legacy Music (picker environment) which is unexpected.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_442848()
{

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Track.identifierSet.getter()
{
  v1 = [objc_opt_self() kindWithVariants:1];
  v9 = v0;
  v2 = objc_allocWithZone(MPIdentifierSet);
  v3 = sub_AB9260();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_57B7C;
  *(v4 + 24) = &v8;
  aBlock[4] = sub_3F328C;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_141;
  v5 = _Block_copy(aBlock);

  v6 = [v2 initWithSource:v3 modelKind:v1 block:v5];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

void Track.fetchModelObject(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a1;
  v5 = sub_AB8860();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = v7;
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8440();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45 - v13;
  sub_AB8510();
  sub_AB8500();
  sub_AB8390();

  sub_AB84B0();

  (*(v9 + 104))(v12, enum case for MusicLibrary.AddStatus.added(_:), v8);
  v15 = sub_AB8430();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  if (v15)
  {
    v46 = v6;
    v47 = a2;
    v17 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 kindWithVariants:3];
    [v19 setItemKind:v20];

    if (qword_DE6C08 != -1)
    {
      swift_once();
    }

    [v19 setItemProperties:qword_E073C0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_AF82B0;
    v22 = [v18 kindWithVariants:1];
    v45 = &v45;
    __chkstk_darwin(v22);
    v23 = v3;
    *(&v45 - 2) = v3;
    v24 = objc_allocWithZone(MPIdentifierSet);
    v25 = sub_AB9260();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_44545C;
    *(v26 + 24) = &v45 - 4;
    v55 = sub_445458;
    v56 = v26;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_41A314;
    v54 = &block_descriptor_16_3;
    v27 = _Block_copy(&aBlock);

    v28 = [v24 initWithSource:v25 modelKind:v22 block:v27];
    _Block_release(v27);

    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      *(v21 + 32) = v28;
      sub_13C80(0, &unk_DE8180);
      isa = sub_AB9740().super.isa;

      [v19 setAllowedItemIdentifiers:isa];

      v30 = sub_AB9260();
      [v19 setLabel:v30];

      sub_13C80(0, &qword_DF86B0);
      v31 = static MPMediaLibrary.device.getter();
      [v19 setMediaLibrary:v31];

      v32 = v46;
      v33 = v49;
      (*(v46 + 16))(v49, v23, v5);
      v34 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v35 = (v48 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      (*(v32 + 32))(v36 + v34, v33, v5);
      v37 = (v36 + v35);
      v38 = v47;
      *v37 = v50;
      v37[1] = v38;
      v55 = sub_44508C;
      v56 = v36;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_151E0;
      v54 = &block_descriptor_22_1;
      v39 = _Block_copy(&aBlock);

      [v19 performWithResponseHandler:v39];
      _Block_release(v39);
LABEL_8:

      return;
    }

    __break(1u);
  }

  else
  {
    v40 = [objc_opt_self() kindWithVariants:1];
    __chkstk_darwin(v40);
    *(&v45 - 2) = v3;
    v41 = objc_allocWithZone(MPIdentifierSet);
    v42 = sub_AB9260();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_44545C;
    *(v43 + 24) = &v45 - 4;
    v55 = sub_445458;
    v56 = v43;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_41A314;
    v54 = &block_descriptor_8_3;
    v44 = _Block_copy(&aBlock);

    v19 = [v41 initWithSource:v42 modelKind:v40 block:v44];
    _Block_release(v44);

    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if ((v41 & 1) == 0)
    {
      sub_443284(v19, v50, a2);
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_443284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v5 = sub_AB8860();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v43 = v8;
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v40 - v9;
  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v11 = sub_AB4BC0();
  __swift_project_value_buffer(v11, qword_E70DC0);
  v12 = *(v6 + 16);
  v45 = v3;
  v42 = v12;
  v12(v10, v3, v5);
  v13 = sub_AB4BA0();
  v14 = sub_AB9F50();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v41 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    sub_4450A4();
    v18 = sub_ABB330();
    v20 = v19;
    (*(v6 + 8))(v10, v5);
    v21 = sub_425E68(v18, v20, aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "Falling back to catalog request for track: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);

    a1 = v41;
  }

  else
  {
    (*(v6 + 8))(v10, v5);
  }

  v22 = [objc_allocWithZone(MPModelSong) initWithIdentifiers:a1];
  v23 = type metadata accessor for StoreModelItemRequest();
  v24 = objc_allocWithZone(v23);
  v25 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model;
  *&v24[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v26 = OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching;
  *&v24[v25] = v22;
  v24[v26] = 0;
  v49.receiver = v24;
  v49.super_class = v23;
  v27 = v22;
  v28 = objc_msgSendSuper2(&v49, "init");
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 kindWithVariants:3];
  [v30 setItemKind:v31];

  if (qword_DE6C08 != -1)
  {
    swift_once();
  }

  [v30 setItemProperties:qword_E073C0];
  v32 = sub_AB9260();
  [v30 setLabel:v32];

  v33 = v44;
  v42(v44, v45, v5);
  v34 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v6 + 32))(v36 + v34, v33, v5);
  v37 = (v36 + v35);
  v38 = v47;
  *v37 = v46;
  v37[1] = v38;
  aBlock[4] = sub_44519C;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_36_1;
  v39 = _Block_copy(aBlock);

  [v30 performWithResponseHandler:v39];
  _Block_release(v39);
}

void sub_44375C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_AB8860();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = [a1 results];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 firstItem];

      if (v16)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v37 = a4;
  v17 = sub_AB4BC0();
  __swift_project_value_buffer(v17, qword_E70DC0);
  v18 = *(v11 + 16);
  v38 = a3;
  v18(v13, a3, v10);
  swift_errorRetain();
  v19 = sub_AB4BA0();
  v20 = sub_AB9F30();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = a5;
    v22 = v21;
    aBlock[0] = swift_slowAlloc();
    *v22 = 136446466;
    sub_4450A4();
    v23 = sub_ABB330();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_425E68(v23, v25, aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v39 = a2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
    v27 = sub_AB9350();
    v29 = sub_425E68(v27, v28, aBlock);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_0, v19, v20, "Failed to resolve library song model for track: %{public}s with error = %{public}s", v22, 0x16u);
    swift_arrayDestroy();

    a5 = v36;
  }

  else
  {
    (*(v11 + 8))(v13, v10);
  }

  v30 = [objc_opt_self() kindWithVariants:1];
  __chkstk_darwin(v30);
  *(&v36 - 2) = v38;
  v31 = objc_allocWithZone(MPIdentifierSet);
  v32 = sub_AB9260();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_44545C;
  *(v33 + 24) = &v36 - 4;
  aBlock[4] = sub_445458;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_30_2;
  v34 = _Block_copy(aBlock);

  v35 = [v31 initWithSource:v32 modelKind:v30 block:v34];
  _Block_release(v34);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    sub_443284(v35, v37, a5);
  }
}

void sub_443C6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v8 = sub_AB8860();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v13 = [v10 results];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 firstItem];

      if (v15)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a4();

          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_DE67E0 != -1)
  {
    swift_once();
  }

  v16 = sub_AB4BC0();
  __swift_project_value_buffer(v16, qword_E70DC0);
  (*(v9 + 16))(v12, a3, v8);
  swift_errorRetain();
  v17 = sub_AB4BA0();
  v18 = sub_AB9F30();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v19 = 136446466;
    sub_4450A4();
    v20 = sub_ABB330();
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_425E68(v20, v22, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v27 = a2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
    v24 = sub_AB9350();
    v26 = sub_425E68(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_0, v17, v18, "Failed to resolve catalog song model for song: %{public}s = %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    (*(v9 + 8))(v12, v8);
  }
}

void sub_443FD0(uint64_t isEscapingClosureAtFileLocation, unint64_t a2)
{
  v4 = sub_AB8860();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB87D0();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_4453F0;
    *(v4 + 24) = v12;
    v31 = sub_C3FB8;
    v32 = v4;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v29 = sub_4522E8;
    v30 = &block_descriptor_64_0;
    v7 = _Block_copy(&aBlock);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  static ApplicationCapabilities.shared.getter(&aBlock);
  sub_70C54(&aBlock);
  if (BYTE2(aBlock))
  {
    (*(v5 + 16))(v7, a2, v4);
    a2 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    v14 = *(v5 + 32);
    v5 += 32;
    v14(v13 + a2, v7, v4);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_44531C;
    *(v4 + 24) = v13;
    v26 = sub_57B84;
    v27 = v4;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_4522E8;
    v25 = &block_descriptor_54_0;
    v7 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setUniversalStoreIdentifiersWithBlock:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  sub_13C80(0, &qword_DF86B0);
  v15 = static MPMediaLibrary.device.getter();
  v16 = [v15 uniqueIdentifier];

  if (v16)
  {
    (*(v5 + 16))(v7, a2, v4);
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    (*(v5 + 32))(v18 + v17, v7, v4);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_44527C;
    *(v19 + 24) = v18;
    v26 = sub_445458;
    v27 = v19;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_444B84;
    v25 = &block_descriptor_45_3;
    v20 = _Block_copy(&v22);

    [isEscapingClosureAtFileLocation setLibraryIdentifiersWithDatabaseID:v16 block:v20];
    _Block_release(v20);
    v21 = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
    }
  }
}

id sub_4444DC(id result, uint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3) & 0xF;
  v5 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = v5;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v28 = result;

    v30 = sub_44F40C(a2, a3, 10);
    v32 = v31;

    result = v28;
    if ((v32 & 1) == 0)
    {
      v9 = v30;
      return [result setAdamID:v9];
    }

    goto LABEL_63;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v33 = result;
      v4 = sub_ABAE60();
      result = v33;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v17 = (v4 + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
LABEL_53:
              LOBYTE(v4) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_62;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v23 = *v4 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v34[0] = a2;
  v34[1] = a3 & 0xFFFFFFFFFFFFFFLL;
  if (a2 != 43)
  {
    if (a2 == 45)
    {
      if (!v4)
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = v34 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v25 = v34;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_62:
    v35 = v4;
    if ((v4 & 1) == 0)
    {
      return [result setAdamID:v9];
    }

LABEL_63:
    v9 = 0;
    return [result setAdamID:v9];
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v20 = v34 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

void sub_4447F8(void *a1)
{
  sub_AB8810();
  v2 = sub_AB9260();

  [a1 setUniversalCloudLibraryID:v2];
}

uint64_t sub_444864(void *a1)
{
  result = sub_AB8810();
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    goto LABEL_63;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v8 = sub_44F40C(result, v3, 10);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return [a1 setPersistentID:v8];
    }

    goto LABEL_63;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_ABAE60();
      v5 = v29;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          v8 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v31 = v5;
      v26 = v5;

      if ((v26 & 1) == 0)
      {
        return [a1 setPersistentID:v8];
      }

LABEL_63:
      v8 = 0;
      return [a1 setPersistentID:v8];
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        v8 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v30[0] = result;
  v30[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v30;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v12 = v30 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v18 = v30 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_444B84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_444BD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  v10 = MPModelRelationshipSongArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF4EC0;
  *(v12 + 32) = sub_AB92A0();
  *(v12 + 40) = v13;
  v40 = v10;
  isa = sub_AB9740().super.isa;
  v15 = objc_opt_self();
  v16 = [v15 propertySetWithProperties:isa];

  *(inited + 48) = v16;
  v17 = MPModelRelationshipSongComposer;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = v17;
  v22 = sub_AB9740().super.isa;
  v23 = [v15 propertySetWithProperties:v22];

  *(inited + 72) = v23;
  v24 = MPModelRelationshipSongAlbum;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_AF85F0;
  *(v26 + 32) = sub_AB92A0();
  *(v26 + 40) = v27;
  *(v26 + 48) = sub_AB92A0();
  *(v26 + 56) = v28;
  v29 = v24;
  v30 = sub_AB9740().super.isa;
  v31 = [v15 propertySetWithProperties:v30];

  *(inited + 96) = v31;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(MPPropertySet);
  v33 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v34 = sub_AB8FD0().super.isa;

  v35 = [v32 initWithProperties:v33 relationships:v34];

  sub_13C80(0, &unk_DE8EB0);
  v36 = sub_10F414();
  v37 = [v35 propertySetByCombiningWithPropertySet:v36];

  v38 = sub_2BAFF8();
  v39 = [v37 propertySetByCombiningWithPropertySet:v38];

  qword_E073C0 = v39;
}

uint64_t block_copy_helper_141(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4450A4()
{
  result = qword_E073D0;
  if (!qword_E073D0)
  {
    sub_AB8860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E073D0);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{
  v1 = sub_AB8860();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_4451B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_AB8860() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t objectdestroy_38Tm_0()
{
  v1 = sub_AB8860();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_445334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_AB8860() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_4453B8()
{

  return swift_deallocObject();
}

void sub_445460(uint64_t a1)
{
  *(a1 + qword_E074A0) = 0;
  v1 = a1 + qword_E074B0;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = (a1 + qword_E074B8);
  *v2 = 0;
  v2[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_4454F0()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for JSFlowcaseViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_E074B8];
  v12 = *&v1[qword_E074B8];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_E074B0];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_445618(void *a1)
{
  v1 = a1;
  sub_4454F0();
}

void sub_445660(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for JSFlowcaseViewController();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 viewBackgroundColor];
    [v3 setBackgroundColor:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_445718(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for JSFlowcaseViewController();
  objc_msgSendSuper2(&v25, "traitCollectionDidChange:", a1);
  v3 = &selRef__authenticateReturningError_;
  v4 = [v1 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (!a1 || v5 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [a1 preferredContentSizeCategory];
  v9 = sub_AB92A0();
  v11 = v10;
  if (v9 == sub_AB92A0() && v11 == v12)
  {

    v3 = &selRef__authenticateReturningError_;
    goto LABEL_9;
  }

  v13 = sub_ABB3C0();

  v3 = &selRef__authenticateReturningError_;
  if ((v13 & 1) == 0)
  {
LABEL_7:
    [v1 loadViewIfNeeded];
    v14 = *&v1[qword_DFE2F8];
    if (!v14)
    {
      __break(1u);
      goto LABEL_17;
    }

    v15 = [v14 collectionViewLayout];
    v16 = &v1[qword_E074B0];
    *v16 = 0;
    *(v16 + 1) = 0;
    v16[16] = 1;
  }

LABEL_9:
  if (![v1 isViewLoaded])
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v17 = *&v1[qword_DFE2F8];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v18 = [v17 collectionViewLayout];
  type metadata accessor for ShelfCollectionViewLayout();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = [v1 v3[334]];
    v22 = [v21 horizontalSizeClass];

    LODWORD(v21) = v22 == &dword_0 + 1;
    v23 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
    swift_beginAccess();
    v24 = *(v20 + v23);
    *(v20 + v23) = v21;
    if (v21 != v24)
    {
      sub_32533C();
    }
  }
}

void sub_4459BC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_445718(a3);
}

id sub_445A28()
{
  swift_beginAccess();

  v0 = sub_AB9260();

  return v0;
}

Class sub_445AB8()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void *sub_445B30()
{
  v1 = qword_E074A0;
  if (*&v0[qword_E074A0])
  {
    v2 = *&v0[qword_E074A0];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07AC8);
    swift_allocObject();
    v2 = sub_2BFB80(v0, v4, 0, 0);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_445BFC@<D0>(_OWORD *a1@<X8>)
{
  if (*(v1 + qword_DFE2F0))
  {
    type metadata accessor for JSFlowcaseModelResponse();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults);
      isa = sub_AB3770().super.isa;
      v6 = [v4 itemAtIndexPath:isa];

      if (v6)
      {
        type metadata accessor for JSFlowcaseItem();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v8 = v7;
          v9 = (v7 + OBJC_IVAR____TtC11MusicJSCore14JSFlowcaseItem_headlineText);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];

          swift_unknownObjectRetain();
          v28 = IndexPath.safeItem.getter();
          v12 = sub_27EEA4(v8);
          v14 = v13;
          if (!v11)
          {
            v15 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
            swift_beginAccess();
            v16 = *(v8 + v15);
            if (v16)
            {
              v17 = v16;
              v18 = [v17 name];
              if (v18)
              {
                v27 = v18;
                v10 = sub_AB92A0();
                v11 = v19;

                goto LABEL_14;
              }
            }

            v10 = 0;
            v11 = 0;
          }

LABEL_14:
          v25 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
          swift_beginAccess();
          v26 = *(v8 + v25) != 0;
          *&v29 = v12;
          *(&v29 + 1) = v14;
          *&v30 = v10;
          *(&v30 + 1) = v11;
          *&v31 = v8;
          *(&v31 + 1) = v28;
          LOBYTE(v32) = v26;
          *(&v32 + 1) = 5122;
          *(&v32 + 1) = 0;
          *&v33 = 0;
          *(&v33 + 1) = v8;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37[0] = 1;
          *&v37[8] = 0;
          *&v37[16] = 0;
          v37[24] = 2;
          v38[0] = v12;
          v38[1] = v14;
          v38[2] = v10;
          v38[3] = v11;
          v38[4] = v8;
          v38[5] = v28;
          v39 = v26;
          v40 = 5122;
          v41 = 0;
          v42 = 0;
          v43 = v8;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 1;
          v48 = 0;
          v49 = 0;
          v50 = 2;
          sub_465F4(&v29, &v60);
          sub_46650(v38);
          v57 = v35;
          v58 = v36;
          v59[0] = *v37;
          *(v59 + 9) = *&v37[9];
          v53 = v31;
          v54 = v32;
          v55 = v33;
          v56 = v34;
          v51 = v29;
          v52 = v30;
          UIScreen.Dimensions.size.getter(*&v29);
          v66 = v57;
          v67 = v58;
          v68[0] = v59[0];
          *(v68 + 9) = *(v59 + 9);
          v62 = v53;
          v63 = v54;
          v64 = v55;
          v65 = v56;
          v60 = v51;
          v61 = v52;
          goto LABEL_11;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  sub_465CC(&v60);
LABEL_11:
  v20 = v67;
  a1[6] = v66;
  a1[7] = v20;
  a1[8] = v68[0];
  *(a1 + 137) = *(v68 + 9);
  v21 = v63;
  a1[2] = v62;
  a1[3] = v21;
  v22 = v65;
  a1[4] = v64;
  a1[5] = v22;
  result = *&v60;
  v24 = v61;
  *a1 = v60;
  a1[1] = v24;
  return result;
}

void sub_445F14(void *a1)
{
  sub_3B316C(a1);
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:1];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  [a1 setClipsToBounds:0];
  type metadata accessor for FlowcaseCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  static UICollectionReusableView.reuseIdentifier.getter();
  v5 = sub_AB9260();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];

  sub_13C80(0, &qword_DFE230);
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_AB9260();
  [a1 registerClass:v6 forCellWithReuseIdentifier:v7];
}

_BYTE *sub_446098()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for ShelfCollectionViewLayout()) init];
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  LODWORD(v3) = v4 == &dword_0 + 1;
  v5 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_scrollStyle;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = v3;
  if (v3 != v6)
  {
    sub_32533C();
  }

  return v2;
}

void sub_446154(_BYTE *a1, id a2)
{
  v5 = [a2 contentItem];
  v6 = 0;
  v7 = &selRef__authenticateReturningError_;
  v135 = v2;
  if (!v5)
  {
    goto LABEL_38;
  }

  v8 = v5;
  v9 = MPModelStoreBrowseContentItem.kind.getter();
  v11 = v9;
  if (v10 > 6u)
  {
    if (v10 > 8u)
    {
      if (v10 != 9)
      {
        if (v10 == 12)
        {
          v55 = sub_4A3F1C();
          v56 = sub_10AC20(v11);

          v134 = [v11 shouldVisuallyDisableFor:v56];
          v57 = [v11 title];
          if (v57)
          {
            v58 = v57;
            v59 = sub_AB92A0();
            v18 = v60;

            v19 = v11;
            v20 = v59;
            v21 = 12;
            goto LABEL_35;
          }

          v81 = v11;
          v82 = 12;
          goto LABEL_64;
        }

        if (v10 == 255)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v49 = [v9 title];
      if (v49)
      {
        v50 = v49;
        v39 = sub_AB92A0();
        v18 = v51;
      }

      else
      {
        v39 = 0;
        v18 = 0;
      }

      v76 = [a2 subtitleText];
      if (v76)
      {
        v77 = v76;
        v27 = sub_AB92A0();
        v28 = v78;

        v74 = v11;
        v75 = 9;
        goto LABEL_69;
      }

      v79 = v11;
      v80 = 9;
LABEL_71:
      sub_3EB30(v79, v80);

      v134 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_72;
    }

    if (v10 != 7)
    {
      if (v10 != 8)
      {
        goto LABEL_36;
      }

      v29 = sub_4A3F1C();
      v30 = sub_10AC20(v11);

      v134 = [v11 shouldVisuallyDisableFor:v30];
      v31 = [v11 title];
      if (v31)
      {
        v32 = v31;
        v33 = sub_AB92A0();
        v18 = v34;
      }

      else
      {
        v33 = 0;
        v18 = 0;
      }

      v61 = [v11 show];
      if (v61)
      {
        v62 = v61;
        v63 = [v61 title];
        if (v63)
        {
          v64 = v63;
          v27 = sub_AB92A0();
          v28 = v65;

          sub_3EB30(v11, 8);
LABEL_75:
          v133 = 1;
          v20 = v33;
          v7 = &selRef__authenticateReturningError_;
          goto LABEL_85;
        }
      }

      sub_3EB30(v11, 8);

      v27 = 0;
      v28 = 0;
      goto LABEL_75;
    }

    v41 = sub_4A3F1C();
    v42 = sub_10AC20(v11);

    v134 = [v11 shouldVisuallyDisableFor:v42];
    v43 = [v11 title];
    if (v43)
    {
      v44 = v43;
      v132 = sub_AB92A0();
      v18 = v45;
    }

    else
    {
      v132 = 0;
      v18 = 0;
    }

    v66 = [v11 artist];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 name];
      if (v68)
      {
        v69 = v68;
        v27 = sub_AB92A0();
        v28 = v70;

LABEL_78:
        if ([v11 hasVideo])
        {
          [v11 duration];
          v6 = v91;
          sub_3EB30(v11, 7);

          v133 = 0;
LABEL_84:
          v20 = v132;
          goto LABEL_85;
        }

        sub_3EB30(v11, 7);

LABEL_83:
        v133 = 1;
        goto LABEL_84;
      }
    }

    v27 = 0;
    v28 = 0;
    goto LABEL_78;
  }

  if (v10 > 2u)
  {
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        if (v10 == 5)
        {
          v12 = sub_4A3F1C();
          v13 = sub_10AC20(v11);

          v134 = [v11 shouldVisuallyDisableFor:v13];
          v14 = [v11 name];
          if (v14)
          {
            v15 = v14;
            v16 = sub_AB92A0();
            v18 = v17;

            v19 = v11;
            v20 = v16;
            v21 = 5;
LABEL_35:
            sub_3EB30(v19, v21);

            v27 = 0;
            v28 = 0;
LABEL_40:
            v133 = 1;
            goto LABEL_85;
          }

          v81 = v11;
          v82 = 5;
LABEL_64:
          sub_3EB30(v81, v82);

          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v52 = [v9 name];
      if (v52)
      {
        v53 = v52;
        v132 = sub_AB92A0();
        v18 = v54;
      }

      else
      {
        v132 = 0;
        v18 = 0;
      }

      v83 = [v11 curator];
      if (v83)
      {
        v84 = v83;
        v85 = [v83 name];
        if (v85)
        {
          v86 = v85;
          v27 = sub_AB92A0();
          v28 = v87;

          sub_3EB30(v11, 4);
          v134 = 0;
          goto LABEL_83;
        }
      }

      sub_3EB30(v11, 4);

      v134 = 0;
      v27 = 0;
      v28 = 0;
      goto LABEL_83;
    }

    v46 = [v9 shortName];
    if (v46)
    {
      v47 = v46;
      v39 = sub_AB92A0();
      v18 = v48;
    }

    else
    {
      v39 = 0;
      v18 = 0;
    }

    v71 = [v11 shortEditorNotes];
    if (v71)
    {
      v72 = v71;
      v27 = sub_AB92A0();
      v28 = v73;

      v74 = v11;
      v75 = 3;
LABEL_69:
      sub_3EB30(v74, v75);

      v134 = 0;
LABEL_72:
      v133 = 1;
      v20 = v39;
      goto LABEL_85;
    }

    v79 = v11;
    v80 = 3;
    goto LABEL_71;
  }

  if (!v10)
  {
    v35 = [v9 artist];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 name];
      if (v37)
      {
        v38 = v37;
        v39 = sub_AB92A0();
        v18 = v40;

LABEL_67:
        v88 = [v11 title];
        if (v88)
        {
          v89 = v88;
          v27 = sub_AB92A0();
          v28 = v90;

          v74 = v11;
          v75 = 0;
          goto LABEL_69;
        }

        v79 = v11;
        v80 = 0;
        goto LABEL_71;
      }
    }

    v39 = 0;
    v18 = 0;
    goto LABEL_67;
  }

  if (v10 != 1)
  {
LABEL_36:
    sub_3EB30(v9, v10);
LABEL_37:

LABEL_38:
    v134 = 0;
LABEL_39:
    v27 = 0;
    v28 = 0;
    v20 = 0;
    v18 = 0;
    goto LABEL_40;
  }

  v22 = [v9 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_AB92A0();
    v18 = v25;

    v133 = 1;
    v26 = v11;
    v20 = v24;
    sub_3EB30(v26, 1);

    v134 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v133 = 1;
    sub_3EB30(v11, 1);

    v134 = 0;
    v27 = 0;
    v28 = 0;
    v20 = 0;
    v18 = 0;
  }

LABEL_85:
  v92 = [a2 titleText];
  if (v92)
  {
    v93 = v92;
    v20 = sub_AB92A0();
    v95 = v94;

    v18 = v95;
  }

  v96 = [a2 v7[318]];
  if (v96)
  {
    v97 = v96;
    v27 = sub_AB92A0();
    v99 = v98;

    v28 = v99;
  }

  v100 = [a2 thumbnailHorizontalAlignment];
  *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailHorizontalAlignment] = v100;
  sub_86C88();
  v101 = [a2 headlineText];
  if (v101)
  {
    v102 = v101;
    v103 = sub_AB92A0();
    v105 = v104;
  }

  else
  {
    v103 = 0;
    v105 = 0xE000000000000000;
  }

  v106 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline];
  v107 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline];
  v108 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_headline + 8];
  *v106 = v103;
  v106[1] = v105;
  sub_855D0(v107, v108);

  if (v18)
  {
    v109 = v20;
  }

  else
  {
    v109 = 0;
  }

  if (v18)
  {
    v110 = v18;
  }

  else
  {
    v110 = 0xE000000000000000;
  }

  v111 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title];
  v112 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title];
  v113 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_title + 8];
  *v111 = v109;
  v111[1] = v110;
  sub_85784(v112, v113);

  if (v28)
  {
    v114 = v27;
  }

  else
  {
    v114 = 0;
  }

  if (v28)
  {
    v115 = v28;
  }

  else
  {
    v115 = 0xE000000000000000;
  }

  v116 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle];
  v117 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle];
  v118 = *&a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_subtitle + 8];
  *v116 = v114;
  v116[1] = v115;
  sub_8590C(v117, v118);

  v119 = [a2 descriptionTitleText];
  if (v119)
  {
    v120 = v119;
    v121 = sub_AB92A0();
    v123 = v122;
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  v124 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionTitle];
  *v124 = v121;
  v124[1] = v123;

  sub_85BCC();
  v125 = [a2 descriptionText];
  if (v125)
  {
    v126 = v125;
    v127 = sub_AB92A0();
    v129 = v128;
  }

  else
  {
    v127 = 0;
    v129 = 0;
  }

  v130 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_descriptionText];
  *v130 = v127;
  v130[1] = v129;

  sub_863A4();
  v131 = &a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_duration];
  *v131 = v6;
  v131[8] = v133;
  sub_864E0();
  a1[OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_isDisabled] = v134;
  sub_86E70();
  v136 = [v135 viewBackgroundColor];
  [a1 setBackgroundColor:v136];
}

char *sub_446B98(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v118 = a3;
  v6 = sub_AB3430();
  v112 = *(v6 - 8);
  v113 = v6;
  __chkstk_darwin(v6);
  v111 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB3820();
  v115 = *(v8 - 8);
  v116 = v8;
  __chkstk_darwin(v8);
  v109 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v117);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v12 - 8);
  v114 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v15 = __chkstk_darwin(v14 - 8);
  v110 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v101 - v17;
  v19 = type metadata accessor for PlaybackIntentDescriptor(0);
  v108 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v119 = &v101 - v27;
  v28 = *&v3[qword_DFE2F0];
  if (v28)
  {
    type metadata accessor for JSFlowcaseModelResponse();
    result = swift_dynamicCastClass();
    if (result)
    {
      v107 = a1;
      v29 = *&result[OBJC_IVAR____TtC16MusicApplication23JSFlowcaseModelResponse_jsResults];
      v30 = v28;
      isa = sub_AB3770().super.isa;
      v32 = [v29 itemAtIndexPath:isa];

      type metadata accessor for JSFlowcaseItem();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v104 = v18;
        v105 = v30;
        v106 = v32;
        v34 = v107;
        v35 = v33;
        v36 = [v107 contentItem];
        v37 = [v36 innerObject];

        v103 = v35;
        sub_2641C4(v37, v4, static MPMediaLibraryFilteringOptions.none.getter, 0, v119);

        v38 = [v4 traitCollection];
        v39 = UITraitCollection.mediaPickerConfiguration.getter();

        if (v39)
        {
          v40 = *&v4[qword_DFE298];
          if (v40)
          {

            v41 = [v34 pickableObjectFor:{objc_msgSend(v39, "selectionMode")}];
            if (v41)
            {
              v42 = v41;
              *&v102 = v40;
              v43 = [v41 musicTypeIdentifier];
              if (v43)
              {
                v44 = v43;

                v45 = v119;
                sub_15F84(v119, v25, &unk_DEA510);
                if ((v108[6])(v25, 1, v19) == 1)
                {
                  sub_12E1C(v45, &unk_DEA510);
                  sub_12E1C(v25, &unk_DEA510);

                  swift_unknownObjectRelease();
                }

                sub_140E58(v25, v21);
                result = [v4 loadViewIfNeeded];
                v93 = *&v4[qword_DFE2F8];
                if (v93)
                {
                  v94 = v93;
                  v95 = sub_AB3770().super.isa;
                  v96 = [v94 cellForItemAtIndexPath:v95];

                  if (v96)
                  {
                    swift_getObjectType();
                    v97 = swift_conformsToProtocol2();
                    v98 = v107;
                    if (v97)
                    {
                      v99 = v97;
                    }

                    else
                    {
                      v100 = v107;

                      v98 = v100;
                      v96 = 0;
                      v99 = 0;
                    }
                  }

                  else
                  {
                    v99 = 0;
                    v98 = v107;
                  }

                  sub_3B8FA0(v21, v98, v96, v99);
                  sub_1DF5E8(v21, type metadata accessor for PlaybackIntentDescriptor);
                  sub_12E1C(v45, &unk_DEA510);

                  swift_unknownObjectRelease();

                  return swift_unknownObjectRelease();
                }

LABEL_48:
                __break(1u);
                return result;
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

        v46 = JSSegueCoordinator.shared.unsafeMutableAddressor();
        result = [v4 loadViewIfNeeded];
        v47 = qword_DFE2F8;
        v48 = *&v4[qword_DFE2F8];
        if (v48)
        {
          v108 = v46;
          v49 = v48;
          v50 = sub_AB3770().super.isa;
          v51 = [v49 cellForItemAtIndexPath:v50];

          v52 = v104;
          if (v51)
          {
            sub_D5958(v125);
            v101 = v125[1];
            v102 = v125[0];
            v53 = v126;
            v54 = v127;
            v55 = v128;

            v57 = v101;
            v56 = v102;
          }

          else
          {
            v53 = 0;
            v55 = 0;
            v56 = 0uLL;
            v54 = 255;
            v57 = 0uLL;
          }

          v129[0] = v56;
          v129[1] = v57;
          v130 = v53;
          v131 = v54;
          v132 = v55;
          v58 = v4;
          result = [v58 loadViewIfNeeded];
          if (*&v4[v47])
          {
            v59 = _s30CollectionViewSelectionHandlerVMa();
            v123[3] = v59;
            v123[4] = &off_CF7E60;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v123);
            v62 = v115;
            v61 = v116;
            v63 = *(v115 + 16);
            v63(boxed_opaque_existential_0 + *(v59 + 20), v118, v116);
            swift_unknownObjectWeakInit();
            sub_15F84(v123, &v120, &unk_DE8E30);
            if (*(&v121 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
              v64 = v114;
              v65 = swift_dynamicCast();
              v66 = *(v59 - 8);
              (*(v66 + 56))(v64, v65 ^ 1u, 1, v59);
              if ((*(v66 + 48))(v64, 1, v59) != 1)
              {
                v63(v52, v64 + *(v59 + 20), v61);
                sub_1DF5E8(v64, _s30CollectionViewSelectionHandlerVMa);
                v67 = 0;
                goto LABEL_26;
              }
            }

            else
            {
              sub_12E1C(&v120, &unk_DE8E30);
              v64 = v114;
              (*(*(v59 - 8) + 56))(v114, 1, 1, v59);
            }

            sub_12E1C(v64, &qword_E037A0);
            v67 = 1;
LABEL_26:
            (*(v62 + 56))(v52, v67, 1, v61);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong && (v69 = Strong, sub_12B2FC(), v71 = v70, v73 = v72, v69, v71))
            {
              ObjectType = swift_getObjectType();
              (*(v73 + 8))(ObjectType, v73);
              v76 = v75;
              swift_unknownObjectRelease();
              v77 = v110;
              sub_15F84(v52, v110, &unk_DE8E20);
              if ((*(v62 + 48))(v77, 1, v61) == 1)
              {
                sub_12E1C(v77, &unk_DE8E20);
                v120 = 0u;
                v121 = 0u;
                v122 = 0;
              }

              else
              {
                (*(v62 + 32))(v109, v77, v61);
                sub_449708(&qword_DFAA90, &type metadata accessor for IndexPath);
                sub_ABAD10();
              }

              v79 = swift_getObjectType();
              v80 = v111;
              sub_3B8F68();
              v78 = sub_21CCAC(1, v80, &v120, v79, v76);
              (*(v112 + 8))(v80, v113);
              sub_12E1C(&v120, &qword_DF2BD0);
              sub_12E1C(v52, &unk_DE8E20);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_12E1C(v52, &unk_DE8E20);
              v78 = 0;
            }

            v81 = swift_unknownObjectWeakLoadStrong();
            if (v81)
            {
              v82 = v81;
              sub_12AFE8();
              v84 = v83;
            }

            else
            {
              v84 = 0;
            }

            sub_15F28(v124, &v120);
            sub_15F84(v123, (v11 + 104), &unk_DE8E30);
            v85 = v117;
            v86 = v119;
            sub_15F84(v119, &v11[*(v117 + 28)], &unk_DEA510);
            *v11 = 0u;
            *(v11 + 1) = 0u;
            *(v11 + 2) = 0u;
            *(v11 + 3) = 0u;
            *(v11 + 8) = 1;
            *(v11 + 9) = 0;
            *(v11 + 10) = 0;
            *(v11 + 11) = 0;
            sub_2D594(&v120, v11);
            v88 = v107;
            v87 = v108;
            *(v11 + 12) = v107;
            v89 = *v87;
            *(&v121 + 1) = v85;
            v90 = __swift_allocate_boxed_opaque_existential_0(&v120);
            sub_2D604(v11, v90);
            v91 = v88;
            v92 = v89;
            JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v103, 0, v78, v84, &v120);
            sub_1611C(v124);
            sub_12E1C(v86, &unk_DEA510);
            sub_1DF5E8(v11, _s23MusicPerformanceContextVMa);

            sub_12E1C(&v120, &unk_DE8E40);

            sub_12E1C(v123, &unk_DE8E30);
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_48;
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_4478BC()
{
  v1 = *(v0 + qword_E074A8);
  v2 = type metadata accessor for JSFlowcaseModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication22JSFlowcaseModelRequest_flowcaseViewModel] = v1;
  v191.receiver = v3;
  v191.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v191, "init");
  sub_13C80(0, &unk_E07B80);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v189 = v5;
  v8 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v189 setItemKind:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v186 = swift_allocObject();
  *(v186 + 16) = xmmword_B00DB0;
  *(v186 + 32) = sub_AB92A0();
  *(v186 + 40) = v9;
  *(v186 + 48) = sub_AB92A0();
  *(v186 + 56) = v10;
  *(v186 + 64) = sub_AB92A0();
  *(v186 + 72) = v11;
  *(v186 + 80) = sub_AB92A0();
  *(v186 + 88) = v12;
  *(v186 + 96) = sub_AB92A0();
  *(v186 + 104) = v13;
  *(v186 + 112) = sub_AB92A0();
  *(v186 + 120) = v14;
  *(v186 + 128) = sub_AB92A0();
  *(v186 + 136) = v15;
  *(v186 + 144) = sub_AB92A0();
  *(v186 + 152) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v187 = inited;
  v188 = inited + 32;
  *(inited + 40) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF4EC0;
  *(v19 + 32) = sub_AB92A0();
  *(v19 + 40) = v20;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_AF85E0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  isa = sub_AB9740().super.isa;
  v26 = objc_opt_self();
  v27 = [v26 propertySetWithProperties:isa];

  sub_13C80(0, &qword_DE8E78);
  v28 = sub_10F414();
  v29 = [v27 propertySetByCombiningWithPropertySet:v28];

  v30 = swift_getObjCClassFromMetadata();
  v31 = [v30 requiredLibraryNavigationHandlerProperties];
  v32 = [v30 requiredStoreNavigationHandlerProperties];
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  v34 = [v29 propertySetByCombiningWithPropertySet:v33];
  *(v21 + 48) = v34;
  *(v21 + 56) = sub_AB92A0();
  *(v21 + 64) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_AF85F0;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_AB92A0();
  *(v36 + 56) = v38;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_AF4EC0;
  *(v39 + 32) = sub_AB92A0();
  *(v39 + 40) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_AF4EC0;
  *(v41 + 32) = sub_AB92A0();
  *(v41 + 40) = v42;
  v43 = sub_AB9740().super.isa;
  v44 = [v26 propertySetWithProperties:v43];

  *(v39 + 48) = v44;
  sub_96EA4(v39);
  swift_setDeallocating();
  sub_12E1C(v39 + 32, &unk_DE8E80);
  v45 = objc_allocWithZone(MPPropertySet);
  v46 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v47 = sub_AB8FD0().super.isa;

  v48 = [v45 initWithProperties:v46 relationships:v47];

  sub_13C80(0, &qword_DE8E90);
  v49 = sub_10F414();
  v50 = [v48 propertySetByCombiningWithPropertySet:v49];

  v51 = swift_getObjCClassFromMetadata();
  v52 = [v51 requiredLibraryNavigationHandlerProperties];
  v53 = [v51 requiredStoreNavigationHandlerProperties];
  v54 = [v52 propertySetByCombiningWithPropertySet:v53];

  v55 = [v50 propertySetByCombiningWithPropertySet:v54];
  *(v21 + 72) = v55;
  *(v21 + 80) = sub_AB92A0();
  *(v21 + 88) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_AF8820;
  *(v57 + 32) = sub_AB92A0();
  *(v57 + 40) = v58;
  *(v57 + 48) = sub_AB92A0();
  *(v57 + 56) = v59;
  *(v57 + 64) = sub_AB92A0();
  *(v57 + 72) = v60;
  v61 = sub_AB9740().super.isa;
  v62 = [v26 propertySetWithProperties:v61];

  sub_13C80(0, &unk_E04570);
  v63 = sub_10F414();
  v64 = [v62 propertySetByCombiningWithPropertySet:v63];

  v65 = swift_getObjCClassFromMetadata();
  v66 = [v65 requiredLibraryNavigationHandlerProperties];
  v67 = [v65 requiredStoreNavigationHandlerProperties];
  v68 = [v66 propertySetByCombiningWithPropertySet:v67];

  v69 = [v64 propertySetByCombiningWithPropertySet:v68];
  *(v21 + 96) = v69;
  *(v21 + 104) = sub_AB92A0();
  *(v21 + 112) = v70;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_AF85D0;
  *(v71 + 32) = sub_AB92A0();
  *(v71 + 40) = v72;
  *(v71 + 48) = sub_AB92A0();
  *(v71 + 56) = v73;
  *(v71 + 64) = sub_AB92A0();
  *(v71 + 72) = v74;
  *(v71 + 80) = sub_AB92A0();
  *(v71 + 88) = v75;
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_AF4EC0;
  *(v76 + 32) = sub_AB92A0();
  *(v76 + 40) = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_AF4EC0;
  *(v78 + 32) = sub_AB92A0();
  *(v78 + 40) = v79;
  v80 = sub_AB9740().super.isa;
  v81 = [v26 propertySetWithProperties:v80];

  *(v76 + 48) = v81;
  sub_96EA4(v76);
  swift_setDeallocating();
  sub_12E1C(v76 + 32, &unk_DE8E80);
  v82 = objc_allocWithZone(MPPropertySet);
  v83 = sub_AB9740().super.isa;

  v84 = sub_AB8FD0().super.isa;

  v85 = [v82 initWithProperties:v83 relationships:v84];

  sub_13C80(0, &unk_DE8EA0);
  v86 = sub_10F414();
  v87 = [v85 propertySetByCombiningWithPropertySet:v86];

  v88 = swift_getObjCClassFromMetadata();
  v89 = [v88 requiredLibraryNavigationHandlerProperties];
  v90 = [v88 requiredStoreNavigationHandlerProperties];
  v91 = [v89 propertySetByCombiningWithPropertySet:v90];

  v92 = [v87 propertySetByCombiningWithPropertySet:v91];
  *(v21 + 120) = v92;
  *(v21 + 128) = sub_AB92A0();
  *(v21 + 136) = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_AF4EC0;
  *(v94 + 32) = sub_AB92A0();
  *(v94 + 40) = v95;
  v96 = sub_AB9740().super.isa;
  v97 = [v26 propertySetWithProperties:v96];

  sub_13C80(0, &unk_E087D0);
  v98 = sub_10F414();
  v99 = [v97 propertySetByCombiningWithPropertySet:v98];

  v100 = swift_getObjCClassFromMetadata();
  v101 = [v100 requiredLibraryNavigationHandlerProperties];
  v102 = [v100 requiredStoreNavigationHandlerProperties];
  v103 = [v101 propertySetByCombiningWithPropertySet:v102];

  v104 = [v99 propertySetByCombiningWithPropertySet:v103];
  *(v21 + 144) = v104;
  *(v21 + 152) = sub_AB92A0();
  *(v21 + 160) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_AF8600;
  *(v106 + 32) = sub_AB92A0();
  *(v106 + 40) = v107;
  *(v106 + 48) = sub_AB92A0();
  *(v106 + 56) = v108;
  *(v106 + 64) = sub_AB92A0();
  *(v106 + 72) = v109;
  *(v106 + 80) = sub_AB92A0();
  *(v106 + 88) = v110;
  *(v106 + 96) = sub_AB92A0();
  *(v106 + 104) = v111;
  v112 = swift_initStackObject();
  *(v112 + 16) = xmmword_AF4EC0;
  *(v112 + 32) = sub_AB92A0();
  *(v112 + 40) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_AF4EC0;
  *(v114 + 32) = sub_AB92A0();
  *(v114 + 40) = v115;
  v116 = sub_AB9740().super.isa;
  v117 = [v26 propertySetWithProperties:v116];

  *(v112 + 48) = v117;
  sub_96EA4(v112);
  swift_setDeallocating();
  sub_12E1C(v112 + 32, &unk_DE8E80);
  v118 = objc_allocWithZone(MPPropertySet);
  v119 = sub_AB9740().super.isa;

  v120 = sub_AB8FD0().super.isa;

  v121 = [v118 initWithProperties:v119 relationships:v120];

  sub_13C80(0, &unk_DE8EB0);
  v122 = sub_10F414();
  v123 = [v121 propertySetByCombiningWithPropertySet:v122];

  v124 = swift_getObjCClassFromMetadata();
  v125 = [v124 requiredLibraryNavigationHandlerProperties];
  v126 = [v124 requiredStoreNavigationHandlerProperties];
  v127 = [v125 propertySetByCombiningWithPropertySet:v126];

  v128 = [v123 propertySetByCombiningWithPropertySet:v127];
  *(v21 + 168) = v128;
  *(v21 + 176) = sub_AB92A0();
  *(v21 + 184) = v129;
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_AF85F0;
  *(v130 + 32) = sub_AB92A0();
  *(v130 + 40) = v131;
  *(v130 + 48) = sub_AB92A0();
  *(v130 + 56) = v132;
  v133 = sub_AB9740().super.isa;
  v134 = [v26 propertySetWithProperties:v133];

  sub_13C80(0, &unk_DE8EC0);
  v135 = sub_10F414();
  v136 = [v134 propertySetByCombiningWithPropertySet:v135];

  v137 = swift_getObjCClassFromMetadata();
  v138 = [v137 requiredLibraryNavigationHandlerProperties];
  v139 = [v137 requiredStoreNavigationHandlerProperties];
  v140 = [v138 propertySetByCombiningWithPropertySet:v139];

  v141 = [v136 propertySetByCombiningWithPropertySet:v140];
  *(v21 + 192) = v141;
  *(v21 + 200) = sub_AB92A0();
  *(v21 + 208) = v142;
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_AF85F0;
  *(v143 + 32) = sub_AB92A0();
  *(v143 + 40) = v144;
  *(v143 + 48) = sub_AB92A0();
  *(v143 + 56) = v145;
  v146 = swift_initStackObject();
  *(v146 + 16) = xmmword_AF4EC0;
  *(v146 + 32) = sub_AB92A0();
  *(v146 + 40) = v147;
  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_AF4EC0;
  *(v148 + 32) = sub_AB92A0();
  *(v148 + 40) = v149;
  v150 = sub_AB9740().super.isa;
  v151 = [v26 propertySetWithProperties:v150];

  *(v146 + 48) = v151;
  sub_96EA4(v146);
  swift_setDeallocating();
  sub_12E1C(v146 + 32, &unk_DE8E80);
  v152 = objc_allocWithZone(MPPropertySet);
  v153 = sub_AB9740().super.isa;

  v154 = sub_AB8FD0().super.isa;

  v155 = [v152 initWithProperties:v153 relationships:v154];

  sub_13C80(0, &unk_DE9C00);
  v156 = sub_10F414();
  v157 = [v155 propertySetByCombiningWithPropertySet:v156];

  v158 = swift_getObjCClassFromMetadata();
  v159 = [v158 requiredLibraryNavigationHandlerProperties];
  v160 = [v158 requiredStoreNavigationHandlerProperties];
  v161 = [v159 propertySetByCombiningWithPropertySet:v160];

  v162 = [v157 propertySetByCombiningWithPropertySet:v161];
  *(v21 + 216) = v162;
  *(v21 + 224) = sub_AB92A0();
  *(v21 + 232) = v163;
  v164 = swift_allocObject();
  *(v164 + 16) = xmmword_AF85F0;
  *(v164 + 32) = sub_AB92A0();
  *(v164 + 40) = v165;
  *(v164 + 48) = sub_AB92A0();
  *(v164 + 56) = v166;
  v167 = sub_AB9740().super.isa;
  v168 = [v26 propertySetWithProperties:v167];

  sub_13C80(0, &unk_E03780);
  v169 = sub_10F414();
  v170 = [v168 propertySetByCombiningWithPropertySet:v169];

  v171 = swift_getObjCClassFromMetadata();
  v172 = [v171 requiredLibraryNavigationHandlerProperties];
  v173 = [v171 requiredStoreNavigationHandlerProperties];
  v174 = [v172 propertySetByCombiningWithPropertySet:v173];

  v175 = [v170 propertySetByCombiningWithPropertySet:v174];
  *(v21 + 240) = v175;
  sub_96EA4(v21);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v176 = objc_allocWithZone(MPPropertySet);
  v177 = sub_AB9740().super.isa;

  v178 = sub_AB8FD0().super.isa;

  v179 = [v176 initWithProperties:v177 relationships:v178];

  *(v187 + 48) = v179;
  sub_96EA4(v187);
  swift_setDeallocating();
  sub_12E1C(v188, &unk_DE8E80);
  v180 = objc_allocWithZone(MPPropertySet);
  v181 = sub_AB9740().super.isa;

  v182 = sub_AB8FD0().super.isa;

  v183 = [v180 initWithProperties:v181 relationships:v182];

  [v189 setItemProperties:v183];
  v184 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_449978;
  aBlock[5] = v184;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_142;
  v185 = _Block_copy(aBlock);

  [v189 performWithResponseHandler:v185];
  _Block_release(v185);
}

uint64_t sub_448F1C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_465C4, v5);
}

void sub_448FC0()
{
  v1 = &v0[qword_E074B0];
  if (v0[qword_E074B0 + 16])
  {
    v2 = v0;
    [v0 loadViewIfNeeded];
    v3 = *&v0[qword_DFE2F8];
    if (v3)
    {
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v0 traitCollection];
      v13 = [v12 horizontalSizeClass];

      if (v13 == &dword_0 + 2)
      {
        v14 = [v2 traitCollection];
        v15 = UITraitCollection.isAccessibilitySizeCategory.getter();

        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, v15 & 1, v24, v9);
        v16 = *&v24[6];
      }

      else
      {
        sub_3D2824();
        v16 = v17;
      }

      v25.origin.x = v5;
      v25.origin.y = v7;
      v25.size.width = v9;
      v25.size.height = v11;
      v18 = [v2 traitCollection];
      sub_89B20();
      v20 = v19;
      if (qword_DE6760 != -1)
      {
        swift_once();
      }

      [qword_DEB918 valueForReferenceMetric:v16];
      [v18 displayScale];
      sub_AB3A00();
      v22 = v21 + 0.0;
      v23 = sub_2F48A4(v20, v18, 0, 0);

      *v1 = v16 + 0.0;
      v1[1] = v22 + v23;
      *(v1 + 16) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_449224()
{

  v1 = *(v0 + qword_E074A8);
}

id sub_449264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSFlowcaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_44929C(uint64_t a1)
{

  v2 = *(a1 + qword_E074A8);
}

uint64_t type metadata accessor for JSFlowcaseViewController()
{
  result = qword_E074E8;
  if (!qword_E074E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_4493D4(id *a1)
{
  v1 = [*a1 backgroundArtworkCatalog];

  return v1;
}

double sub_44940C()
{
  v1 = [*v0 traitCollection];
  sub_448FC0();
  v3 = v2;
  if (qword_DE6760 != -1)
  {
    swift_once();
  }

  [qword_DEB918 valueForReferenceMetric:v3];
  [v1 displayScale];
  sub_AB3A00();

  return v3;
}

uint64_t sub_449520(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, &v3, v1);
  return 1;
}

double sub_449574@<D0>(_OWORD *a1@<X8>)
{
  sub_445BFC(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

unint64_t sub_449620()
{
  result = qword_E07AC0;
  if (!qword_E07AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E07AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07AC0);
  }

  return result;
}

uint64_t sub_449684(uint64_t a1)
{
  *(a1 + 8) = sub_449708(&qword_E07AF8, type metadata accessor for JSFlowcaseViewController);
  result = sub_449708(&qword_E07B00, type metadata accessor for JSFlowcaseViewController);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_449708(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_449750(char *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v9, v4);
    v5 = v10;
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    *&a1[v6] = v5;
    v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    if (sub_AB38D0())
    {
      *&a1[v7] = *&a1[v6];
      [a1 invalidateLayout];
    }
  }

  return [a1 invalidateLayout];
}

void sub_449854(uint64_t a1, id a2)
{
  v4 = [a2 backgroundArtworkCatalog];
  v5 = [a2 thumbnailArtworkCatalog];
  v6 = *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_backgroundArtworkCatalog) = v4;
  v7 = v4;

  sub_74EA4(v4);
  v8 = *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC16MusicApplication12FlowcaseCell_thumbnailArtworkCatalog) = v5;
  v9 = v5;

  sub_8681C();
}

uint64_t sub_449940()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_142(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_449998()
{

  return swift_deallocObject();
}

char *sub_4499D8(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
LABEL_25:
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v5 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v24 = result;
    for (i = v5; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_361248(i, a1);
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = MPModelObject.bestIdentifier(for:)(3, 2u);
      if (v11)
      {
        break;
      }

LABEL_6:
      if (v5 == v4)
      {
        return v24;
      }
    }

    v12 = v11;
    v13 = v10;
    swift_beginAccess();
    v14 = *a2;
    if (!*(*a2 + 16) || (v15 = sub_2EBF88(v13, v12), (v16 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_6;
    }

    v17 = *(*(v14 + 56) + 48 * v15);
    swift_endAccess();

    v18 = v17;

    v19 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_6CEBC(0, *(v24 + 2) + 1, 1, v24);
    }

    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = v19;
    if (v21 >= v20 >> 1)
    {
      v22 = sub_6CEBC((v20 > 1), v21 + 1, 1, v19);
    }

    result = v22;
    *(v22 + 2) = v21 + 1;
    v23 = &v22[16 * v21];
    *(v23 + 4) = v18;
    *(v23 + 5) = v9;
  }

  while (v5 != v4);
  return result;
}

NSString sub_449C24()
{
  result = sub_AB9260();
  qword_E71840 = result;
  return result;
}

char *sub_449C5C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center;
  *&v0[v2] = [objc_allocWithZone(SLHighlightCenter) init];
  v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden] = 0;
  v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights] = 0;
  v3 = &v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v4 = &v0[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_importResultAssertions];
  *v4 = 0u;
  v4[1] = 0u;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  [*&v5[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center] setDelegate:v5];
  return v5;
}

void sub_449D54(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v7 = 132;
  }

  else
  {
    v7 = 21;
  }

  if (qword_DE6C48 != -1)
  {
    swift_once();
  }

  v8 = sub_AB4BC0();
  __swift_project_value_buffer(v8, qword_E71878);
  v9 = sub_AB4BA0();
  v10 = sub_AB9F50();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_0, v9, v10, "Will fetch %{public}ld highlights", v11, 0xCu);
  }

  v12 = *&v4[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_center];
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v4;
  v13[4] = a2;
  v13[5] = a3;
  v16[4] = sub_44F0F4;
  v16[5] = v13;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_44B878;
  v16[3] = &block_descriptor_143;
  v14 = _Block_copy(v16);
  v15 = v4;

  [v12 fetchHighlightsWithLimit:v7 completionBlock:v14];
  _Block_release(v14);
}

uint64_t sub_449F30(unint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v11 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v12 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      if (v12 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      }

      v13 = v12 < a4;
      goto LABEL_7;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v39 = sub_ABB060();
  if (v39 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v39;
  }

  if (v7 < 0)
  {
    goto LABEL_43;
  }

  v40 = v39;
  result = sub_ABB060();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  v13 = v40 < a4;
  if (sub_ABB060() < v7)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) == 0 || !v7)
  {

    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_15:

    v17 = sub_ABB070();
    v16 = v20;
    v19 = v21;
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_16:
    sub_130DF4(v17, v18, v16, v19);
    v7 = v22;
    goto LABEL_23;
  }

  sub_13C80(0, &unk_E07CB0);

  v14 = 0;
  do
  {
    v15 = v14 + 1;
    sub_ABAE00(v14);
    v14 = v15;
  }

  while (v7 != v15);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_12:
  v16 = 0;
  v17 = a1 & 0xFFFFFFFFFFFFFF8;
  v18 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v19 = (2 * v7) | 1;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v41 = v18;
  sub_ABB3F0();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = _swiftEmptyArrayStorage;
  }

  v24 = v23[2];

  if (__OFSUB__(v19 >> 1, v16))
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v24 != (v19 >> 1) - v16)
  {
LABEL_46:
    swift_unknownObjectRelease();
    v18 = v41;
    goto LABEL_16;
  }

  v7 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_24;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_isSeeAllButtonHidden) = v13;
  if (qword_DE6C48 != -1)
  {
LABEL_44:
    swift_once();
  }

  v25 = sub_AB4BC0();
  __swift_project_value_buffer(v25, qword_E71878);

  v26 = sub_AB4BA0();
  v27 = sub_AB9F50();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349312;
    if (v11)
    {
      v29 = sub_ABB060();
    }

    else
    {
      v29 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    *(v28 + 4) = v29;

    *(v28 + 12) = 2050;
    *(v28 + 14) = a4;
    _os_log_impl(&dword_0, v26, v27, "Fetched %{public}ld highlights, limiting to %{public}ld", v28, 0x16u);
  }

  else
  {
  }

  v30 = sub_44A384(v7);
  v32 = v31;
  v33 = (a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  v34 = *(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver);
  *v33 = v30;
  v33[1] = v31;
  v33[2] = v35;

  sub_44F118(v34);
  if (*(a5 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights) == 1)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = a6;
    *(v36 + 24) = a7;

    sub_44B344(v32, sub_70638, v36);
  }

  else
  {

    return a6(v38);
  }
}

unint64_t sub_44A384(unint64_t a1)
{
  v2 = sub_AB31C0();
  v96 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v95 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v97 = &v94 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v94 - v8;
  __chkstk_darwin(v7);
  v11 = &v94 - v10;
  result = sub_99D94(_swiftEmptyArrayStorage);
  v13 = result;
  v122 = result;
  v121 = &_swiftEmptySetSingleton;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = result)
  {
    v111 = a1;
    v102 = v2;
    if (i)
    {
      break;
    }

    v16 = 0;
    v99 = _swiftEmptyArrayStorage;
LABEL_49:

    v73 = 0;
    v74 = v13 + 64;
    v75 = 1 << v13[32];
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & *(v13 + 8);
    v9 = ((v75 + 63) >> 6);
    v109 = (v96 + 16);
    v108 = v96 + 8;
    v107 = v96 + 32;
    v110 = _swiftEmptyArrayStorage;
    *&v72 = 136446210;
    v112 = v72;
    v113 = v9;
    if (v77)
    {
      while (2)
      {
        v78 = v73;
LABEL_58:
        v79 = __clz(__rbit64(v77));
        v77 &= v77 - 1;
        v80 = v79 | (v78 << 6);
        v81 = *(*(v13 + 7) + 8 * v80);
        v82 = *(*(v13 + 6) + v80);

        sub_44D5DC(v82, v81, v97);
        if (v16)
        {
          v115 = v81;
          if (qword_DE6C48 != -1)
          {
            swift_once();
          }

          v83 = sub_AB4BC0();
          __swift_project_value_buffer(v83, qword_E71878);
          swift_errorRetain();
          v84 = sub_AB4BA0();
          v11 = sub_AB9F50();

          if (os_log_type_enabled(v84, v11))
          {
            v85 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            *&aBlock = v114;
            *v85 = v112;
            v120 = v16;
            swift_errorRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
            v86 = sub_AB9350();
            v88 = v74;
            v89 = v13;
            v90 = sub_425E68(v86, v87, &aBlock);
            v2 = v102;

            *(v85 + 4) = v90;
            v13 = v89;
            v74 = v88;
            _os_log_impl(&dword_0, v84, v11, "unable to build a catalog URL to fetch %{public}s", v85, 0xCu);
            v11 = v114;
            __swift_destroy_boxed_opaque_existential_0(v114);
            a1 = v111;

            v9 = v113;
          }

          v16 = 0;
          v73 = v78;
          if (v77)
          {
            continue;
          }
        }

        else
        {
          v115 = v13;
          (*v109)(v95, v97, v2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_6CD74(0, v110[2] + 1, 1, v110);
          }

          v92 = v110[2];
          v91 = v110[3];
          if (v92 >= v91 >> 1)
          {
            v110 = sub_6CD74(v91 > 1, v92 + 1, 1, v110);
          }

          v11 = v96;
          (*(v96 + 1))(v97, v2);
          v93 = v110;
          v110[2] = v92 + 1;
          (*(v11 + 4))(v93 + ((v11[80] + 32) & ~v11[80]) + *(v11 + 9) * v92, v95, v2);

          v73 = v78;
          v16 = 0;
          v13 = v115;
          v9 = v113;
          if (v77)
          {
            continue;
          }
        }

        break;
      }
    }

    while (1)
    {
      v78 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v78 >= v9)
      {

        return a1;
      }

      v77 = *&v74[8 * v78];
      ++v73;
      if (v77)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    result = sub_ABB060();
  }

  if (i >= 1)
  {
    v15 = 0;
    v16 = 0;
    v114 = (a1 & 0xC000000000000001);
    v103 = (v96 + 16);
    *&v112 = v96 + 8;
    v101 = &v117;
    v99 = _swiftEmptyArrayStorage;
    *(&v17 + 1) = 2;
    v98 = xmmword_AF4EC0;
    *&v17 = 136446466;
    v100 = v17;
    v113 = v9;
    v107 = v11;
    v106 = i;
    while (1)
    {
      if (v114)
      {
        v19 = sub_361AA0(v15, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = [v19 resourceURL];
      sub_AB3150();

      sub_450810(&aBlock);
      v115 = v20;
      if (v16)
      {
        if (qword_DE6C48 != -1)
        {
          swift_once();
        }

        v22 = sub_AB4BC0();
        __swift_project_value_buffer(v22, qword_E71878);
        (*v103)(v9, v11, v2);
        swift_errorRetain();
        v23 = sub_AB4BA0();
        v24 = sub_AB9F50();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v25 = v100;
          sub_451E68(&unk_E07CD0, &type metadata accessor for URL);
          v26 = sub_ABB330();
          v28 = v27;
          v110 = v15;
          v29 = *v112;
          (*v112)(v113, v2);
          v30 = sub_425E68(v26, v28, &aBlock);

          *(v25 + 4) = v30;
          *(v25 + 12) = 2082;
          v120 = v16;
          swift_errorRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
          v31 = sub_AB9350();
          v33 = sub_425E68(v31, v32, &aBlock);

          *(v25 + 14) = v33;
          _os_log_impl(&dword_0, v23, v24, "unable to interpret %{public}s Error=%{public}s", v25, 0x16u);
          swift_arrayDestroy();

          v11 = v107;

          v29(v11, v2);
          a1 = v111;
          v15 = v110;
          i = v106;
          v9 = v113;
        }

        else
        {

          v18 = *v112;
          (*v112)(v9, v2);
          v18(v11, v2);
        }

        v16 = 0;
      }

      else
      {
        v34 = aBlock;
        v35 = v117;
        v36 = *(&v118 + 1);
        *&v123 = v20;
        BYTE8(v123) = v117;
        v124 = aBlock;
        v125 = v118;
        v37 = v122;
        v38 = v122[2];

        v105 = v36;
        if (v38 && (sub_2ECBE0(v35), (v39 & 1) != 0))
        {
          v41 = sub_44D518(&aBlock, v35);
          v42 = *v40;
          if (*v40)
          {
            v43 = v40;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v43 = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = sub_6B0F0(0, *(v42 + 2) + 1, 1, v42);
              *v43 = v42;
            }

            v46 = *(v42 + 2);
            v45 = *(v42 + 3);
            if (v46 >= v45 >> 1)
            {
              v42 = sub_6B0F0((v45 > 1), v46 + 1, 1, v42);
              *v43 = v42;
            }

            *(v42 + 2) = v46 + 1;
            *&v42[16 * v46 + 32] = v34;
            (v41)(&aBlock, 0);
            v16 = 0;
          }

          else
          {

            (v41)(&aBlock, 0);
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
          v47 = swift_allocObject();
          *(v47 + 16) = v98;
          *(v47 + 32) = v34;
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v37;
          sub_94F14(v47, v35, v48);
          v122 = aBlock;
        }

        v108 = [objc_opt_self() sharedServerObjectDatabase];
        v11 = [objc_opt_self() kindWithVariants:7];
        v49 = [objc_opt_self() kindWithSongKind:v11];
        v50 = objc_opt_self();
        sub_13C80(0, &qword_DE9C10);
        v51 = static MPModelPlaylistEntry.defaultMusicKind.getter();
        v52 = [v50 kindWithPlaylistEntryKind:v51 options:0];

        sub_13C80(0, &unk_E25110);
        v53 = [swift_getObjCClassFromMetadata() identityKind];
        v54 = v53;
        v109 = v16;
        v104 = *(&v34 + 1);
        v110 = v52;
        if (v35 <= 1)
        {
          v55 = v49;
          v52 = v49;
          if (!v35)
          {
            v52 = v11;
          }
        }

        else
        {
          v55 = v49;
          if (v35 != 2)
          {
            v52 = v11;
            if (v35 != 3)
            {
              v52 = v53;
            }
          }
        }

        v56 = v52;
        __chkstk_darwin(v56);
        *(&v94 - 2) = &v123;
        v9 = objc_allocWithZone(MPIdentifierSet);
        v2 = swift_allocObject();
        *(v2 + 16) = sub_451114;
        *(v2 + 24) = &v94 - 4;
        *(&v118 + 1) = sub_57B84;
        v119 = v2;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v117 = sub_41A314;
        *&v118 = &block_descriptor_43_8;
        v57 = _Block_copy(&aBlock);
        a1 = v56;

        v13 = [v9 initWithModelKind:a1 block:v57];

        _Block_release(v57);

        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_71;
        }

        if (qword_DE6C40 != -1)
        {
          swift_once();
        }

        v59 = v108;
        v60 = [v108 modelObjectMatchingIdentifierSet:v13 propertySet:qword_E71870];

        a1 = v111;
        v2 = v102;
        v16 = v109;
        v9 = v113;
        i = v106;
        if (v60 && (v61 = MPModelObject.bestIdentifier(for:)(3, 2u), v63 = v62, v60, v63))
        {
          v64 = sub_472F00(v61, v63, v121);
          v65 = v115;
          if ((v64 & 1) == 0)
          {
            sub_1A9FC(&aBlock, v61, v63);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_6CD9C(0, *(v99 + 2) + 1, 1, v99);
            }

            v67 = *(v99 + 2);
            v66 = *(v99 + 3);
            v11 = v107;
            if (v67 >= v66 >> 1)
            {
              v99 = sub_6CD9C((v66 > 1), v67 + 1, 1, v99);
            }

            (*v112)(v11, v2);
            v68 = v99;
            *(v99 + 2) = v67 + 1;
            v69 = &v68[48 * v67];
            v70 = v123;
            v71 = v125;
            *(v69 + 3) = v124;
            *(v69 + 4) = v71;
            *(v69 + 2) = v70;
            goto LABEL_8;
          }

          v11 = v107;
          (*v112)(v107, v2);
        }

        else
        {
          v11 = v107;
          (*v112)(v107, v2);
        }
      }

LABEL_8:
      if (i == ++v15)
      {
        v13 = v122;
        goto LABEL_49;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_44B344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v37 = a2;
  v4 = sub_AB7C10();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C50();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = dispatch_group_create();
  v9 = swift_allocObject();
  *(v9 + 16) = _swiftEmptyArrayStorage;
  v10 = *(a1 + 16);
  if (v10)
  {
    v47 = sub_13C80(0, &qword_DF4F60);
    v46 = sub_13C80(0, &qword_E07CC0);
    v11 = *(sub_AB31C0() - 8);
    v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      dispatch_group_enter(v8);
      v14 = static ICMusicKitRequestContext.music.getter();
      v15 = objc_allocWithZone(ICMusicKitURLRequest);
      sub_AB30F0(v16);
      v18 = v17;
      v19 = [v15 initWithURL:v17 requestContext:v14];

      v20 = static ICURLSessionManager.musicSession.getter();
      v21 = swift_allocObject();
      v21[2] = v8;
      v21[3] = v19;
      v21[4] = v9;
      v53 = sub_44F21C;
      v54 = v21;
      aBlock = _NSConcreteStackBlock;
      v50 = 1107296256;
      v51 = sub_151E0;
      v52 = &block_descriptor_31_1;
      v22 = _Block_copy(&aBlock);
      v23 = v8;
      v24 = v19;

      [v20 enqueueDataRequest:v24 withCompletionHandler:v22];
      _Block_release(v22);

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  sub_13C80(0, &qword_DE8ED0);
  v25 = sub_ABA150();
  v26 = swift_allocObject();
  v27 = v37;
  v28 = v38;
  v26[2] = v38;
  v26[3] = v9;
  v29 = v39;
  v26[4] = v27;
  v26[5] = v29;
  v53 = sub_44F270;
  v54 = v26;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_1B5EB4;
  v52 = &block_descriptor_37_2;
  v30 = _Block_copy(&aBlock);

  v31 = v28;

  v32 = v40;
  sub_AB7C30();
  v48 = _swiftEmptyArrayStorage;
  sub_451E68(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_36A00(&qword_DF06D0, &unk_DE9C30);
  v33 = v43;
  v34 = v45;
  sub_ABABB0();
  sub_ABA0F0();

  (*(v44 + 8))(v33, v34);
  (*(v41 + 8))(v32, v42);
  _Block_release(v30);
}

void sub_44B878(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  sub_13C80(0, &unk_E07CB0);
  v8 = sub_AB9760();

  v9 = a2;
  v10 = a4;
  v7(v8, a3, a4);
}

void sub_44B93C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_AB2BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_DE6C10 != -1)
  {
    swift_once();
  }

  v11[3] = ObjectType;
  v11[0] = v1;
  v7 = qword_E71840;
  v8 = v1;
  sub_AB2BA0();
  v9 = [objc_opt_self() defaultCenter];
  isa = sub_AB2B80().super.isa;
  [v9 postNotification:isa];
  (*(v4 + 8))(v6, v3);
}

void sub_44BAB8(void *a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5)
{
  if (!a1 || (v9 = [a1 bodyData]) == 0)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE6C48 != -1)
      {
        swift_once();
      }

      v29 = sub_AB4BC0();
      __swift_project_value_buffer(v29, qword_E71878);
      swift_errorRetain();
      v30 = sub_AB4BA0();
      v31 = sub_AB9F30();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v61[0] = v33;
        *v32 = 136446210;
        v59[0] = a2;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
        v34 = sub_AB9350();
        v36 = sub_425E68(v34, v35, v61);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_0, v30, v31, "url request error: %{public}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v33);
      }
    }

    else
    {
      if (qword_DE6C48 != -1)
      {
        swift_once();
      }

      v37 = sub_AB4BC0();
      __swift_project_value_buffer(v37, qword_E71878);
      v30 = sub_AB4BA0();
      v38 = sub_AB9F30();
      if (os_log_type_enabled(v30, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v30, v38, "Missing response data", v39, 2u);
      }
    }

    goto LABEL_24;
  }

  v10 = v9;
  v11 = sub_AB3260();
  v13 = v12;

  v14 = objc_opt_self();
  isa = sub_AB3250().super.isa;
  v59[0] = 0;
  v16 = [v14 JSONObjectWithData:isa options:0 error:v59];
  v17 = v59[0];

  if (!v16)
  {
    v40 = sub_AB3050();

    swift_willThrow();
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v41 = sub_AB4BC0();
    __swift_project_value_buffer(v41, qword_E71878);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v42 = sub_AB9F30();

    if (os_log_type_enabled(v30, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v59[0] = v44;
      *v43 = 136446210;
      v57[0] = v40;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
      v45 = sub_AB9350();
      v47 = sub_425E68(v45, v46, v59);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_0, v30, v42, "JSON deserialize error: %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    sub_466B8(v11, v13);
LABEL_24:

    goto LABEL_25;
  }

  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_15F84(v61, v57, &unk_DE8E40);
  if (!v58)
  {
    sub_12E1C(v61, &unk_DE8E40);
    sub_466B8(v11, v13);
    sub_12E1C(v57, &unk_DE8E40);
    goto LABEL_25;
  }

  sub_9ACFC(v57, v59);
  v18 = objc_allocWithZone(MPServerObjectDatabaseMediaKitImportRequest);
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v19 = [v18 initWithPayload:sub_ABB3A0()];
  swift_unknownObjectRelease();
  v20 = v19;
  v21 = [a4 requestContext];
  v22 = [v21 identity];

  [v20 setUserIdentity:v22];
  v23 = [objc_opt_self() sharedServerObjectDatabase];
  v57[0] = 0;
  v24 = [v23 importObjectsFromRequest:v20 options:1 error:v57];
  v25 = v57[0];
  if (!v24)
  {
    v48 = v57[0];
    sub_AB3050();

    swift_willThrow();
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v49 = sub_AB4BC0();
    __swift_project_value_buffer(v49, qword_E71878);
    swift_errorRetain();
    v30 = sub_AB4BA0();
    v50 = sub_AB9F30();

    if (!os_log_type_enabled(v30, v50))
    {

      __swift_destroy_boxed_opaque_existential_0(v59);
      sub_12E1C(v61, &unk_DE8E40);
      sub_466B8(v11, v13);

      goto LABEL_25;
    }

    v56 = v23;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v57[0] = v52;
    *v51 = 136446210;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90);
    v53 = sub_AB9350();
    v55 = sub_425E68(v53, v54, v57);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_0, v30, v50, "object database import error: %{public}s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);

    __swift_destroy_boxed_opaque_existential_0(v59);
    sub_12E1C(v61, &unk_DE8E40);
    sub_466B8(v11, v13);

    goto LABEL_24;
  }

  v26 = v24;
  swift_beginAccess();
  v27 = v25;
  v28 = v26;
  sub_AB9730();
  if (*(&dword_10 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a5 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_0(v59);
  sub_12E1C(v61, &unk_DE8E40);
  sub_466B8(v11, v13);

LABEL_25:
  dispatch_group_leave(a3);
}

uint64_t sub_44C36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07CC8);
  v10[0] = v6;
  v7 = OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_importResultAssertions;
  swift_beginAccess();

  sub_44F27C(v10, a1 + v7);
  v8 = swift_endAccess();
  return a3(v8);
}

void sub_44C4A4(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  v2 = *&a1[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver];
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v3 = a1;
  sub_44F118(v2);
  sub_44B93C();
}

unint64_t sub_44C600()
{
  result = qword_E07C50;
  if (!qword_E07C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C50);
  }

  return result;
}

id sub_44C654()
{
  result = [objc_allocWithZone(type metadata accessor for Interstellar.HighlightsSource()) init];
  qword_E71848 = result;
  return result;
}

uint64_t sub_44C684@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  a3[OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_automaticallyFetchObjectsForHighlights] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8);
  v10 = swift_allocBox();
  sub_44D0F0();
  v11 = a3;
  sub_AB5110();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAA80);
  v12 = swift_allocObject();
  *&v13 = 1;
  *(v12 + 16) = xmmword_AF4EC0;
  if (qword_DE6C10 != -1)
  {
    swift_once();
  }

  v14 = qword_E71840;
  UIScreen.Dimensions.size.getter(v13);
  *(v12 + 56) = &type metadata for NotificationTrigger;
  *(v12 + 64) = &protocol witness table for NotificationTrigger;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  type metadata accessor for BindingRequestResponseInvalidation();
  swift_allocObject();
  v17 = v14;
  v18 = BindingRequestResponseInvalidation.init(triggers:)(v12);
  v19 = swift_allocObject();
  *(v19 + 16) = v11;
  *(v19 + 24) = a4 & 1;
  *(v19 + 32) = v10;
  *(v19 + 40) = a1;
  *(v19 + 48) = a2;
  *(v19 + 56) = v18;
  v20 = v11;

  sub_449D54(a4 & 1, sub_44D194, v19);

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
}

uint64_t sub_44C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver))
  {
    v10 = *(a1 + OBJC_IVAR____TtCO16MusicApplication12Interstellar16HighlightsSource_resolver + 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;

  sub_4515FC(v10, sub_4515EC, v11);
}

uint64_t sub_44C96C(uint64_t a1, char a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D80);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFC2B8);
  v14 = swift_projectBox();
  if ((a2 & 1) == 0 && *(a1 + 16))
  {
    swift_beginAccess();
    v15._rawValue = &off_CF1890;
    sub_AB50D0(v15);
    v18[1] = 0;
    v18[2] = 0;
    sub_AB5090();
    swift_endAccess();
  }

  swift_beginAccess();
  (*(*(v13 - 8) + 16))(v12, v14, v13);
  swift_storeEnumTagMultiPayload();
  v16 = sub_451E68(&qword_DF4FA8, type metadata accessor for BindingRequestResponseInvalidation);
  a4(v12, a6, v16);
  return sub_12E1C(v12, &qword_E07D80);
}

uint64_t sub_44CB48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DE8ED0);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a1;
  v10[6] = a5;
  swift_errorRetain();
  v11 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_451E58, v10);
}

id sub_44CC20(char *a1, void (*a2)(char *, uint64_t), int a3, id a4, uint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    result = [a4 results];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result allItems];

    v11 = sub_AB9760();
    v12 = sub_12DBC0(v11);

    if (!v12)
    {
LABEL_8:

      v12 = _swiftEmptyArrayStorage;
    }

    v13 = sub_4499D8(v12, (a5 + 16));
    if (qword_DE6C48 != -1)
    {
      swift_once();
    }

    v14 = sub_AB4BC0();
    __swift_project_value_buffer(v14, qword_E71878);

    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = *(v13 + 2);

      _os_log_impl(&dword_0, v15, v16, "Personalized %{public}ld highlights", v17, 0xCu);
    }

    else
    {
    }

    a2(v13, 0);
  }
}

Swift::Int sub_44CE70()
{
  sub_ABB5C0();
  sub_ABA7A0();
  return sub_ABB610();
}

Swift::Int sub_44CED8()
{
  sub_ABB5C0();
  sub_ABA7A0();
  return sub_ABB610();
}

unint64_t sub_44CF70()
{
  result = qword_E07C58;
  if (!qword_E07C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C58);
  }

  return result;
}

uint64_t sub_44CFC4()
{
  v0 = qword_E07B90;

  return v0;
}

uint64_t sub_44D008(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_13C80(0, &qword_DFA720);
  return sub_ABA790() & ~(v2 ^ v3) & 1;
}

unint64_t sub_44D074(uint64_t a1)
{
  result = sub_44D09C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_44D09C()
{
  result = qword_E07C90;
  if (!qword_E07C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07C90);
  }

  return result;
}

unint64_t sub_44D0F0()
{
  result = qword_E07CA0;
  if (!qword_E07CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07CA0);
  }

  return result;
}

uint64_t sub_44D144()
{

  return swift_deallocObject();
}

Swift::Int sub_44D1B4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_44D294()
{
  sub_AB93F0();
}

Swift::Int sub_44D360()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_44D43C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_4507C4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_44D46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE800000000000000;
  v6 = 0x7473696C79616C70;
  v7 = 0xEB000000006F6564;
  v8 = 0x69762D636973756DLL;
  if (v2 != 3)
  {
    v8 = 0x6E6F6974617473;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void (*sub_44D518(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_44FE0C(v4, a2);
  return sub_44D590;
}

void sub_44D590(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_44D5DC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v56) = a1;
  v52 = a3;
  v5 = sub_AB2C10();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v58 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40);
  __chkstk_darwin(v7 - 8);
  v9 = &v48 - v8;
  v61 = sub_AB2CE0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v12 = __chkstk_darwin(v11 - 8);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = sub_AB31C0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4511DC();
  URL.init(string:)(v20, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_12E1C(v15, &unk_DF2AE0);
    v22 = sub_4511DC();
    v24 = v23;
    sub_4514A4();
    swift_allocError();
    *v25 = v22;
    v25[1] = v24;
    return swift_willThrow();
  }

  v51 = v3;
  v50 = *(v17 + 32);
  v50(v19, v15, v16);
  if (!*(a2 + 16))
  {
    sub_4514A4();
    swift_allocError();
    v38 = xmmword_AF82C0;
    goto LABEL_19;
  }

  v49 = a2;
  v27 = 0xE400000000000000;
  v28 = 1735290739;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v29 = 0xE800000000000000;
  v30 = 0x7473696C79616C70;
  v31 = 0xEB000000006F6564;
  v32 = 0x69762D636973756DLL;
  if (v56 != 3)
  {
    v32 = 0x6E6F6974617473;
    v31 = 0xE700000000000000;
  }

  if (v56 != 2)
  {
    v30 = v32;
    v29 = v31;
  }

  if (v56)
  {
    v28 = 0x6D75626C61;
    v27 = 0xE500000000000000;
  }

  if (v56 <= 1u)
  {
    v33._countAndFlagsBits = v28;
  }

  else
  {
    v33._countAndFlagsBits = v30;
  }

  if (v56 <= 1u)
  {
    v34 = v27;
  }

  else
  {
    v34 = v29;
  }

  v33._object = v34;
  sub_AB94A0(v33);

  v62._countAndFlagsBits = 115;
  v62._object = 0xE100000000000000;
  sub_AB94A0(v62);
  sub_AB3100(v60);

  sub_AB2C40();
  v35 = v59;
  v36 = v61;
  if ((*(v59 + 48))(v9, 1, v61) == 1)
  {
    sub_12E1C(v9, &unk_E07D40);
    sub_4514A4();
    swift_allocError();
    v38 = xmmword_AFB300;
LABEL_19:
    *v37 = v38;
    swift_willThrow();
    return (*(v17 + 8))(v19, v16);
  }

  v56 = v17 + 32;
  (*(v35 + 32))(v57, v9, v36);
  v60._countAndFlagsBits = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_36A00(&qword_E00020, &unk_DFDE70);
  sub_AB9140();
  v39 = v58;
  sub_AB2BE0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEEA98);
  v40 = v54;
  v41 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_AF4EC0;
  v43 = v39;
  v44 = v55;
  (*(v40 + 16))(v42 + v41, v43, v55);
  v45 = v57;
  URLComponents.appendQueryItems(_:)(v42);

  v46 = v53;
  sub_AB2C50();
  if (v21(v46, 1, v16) == 1)
  {
    sub_12E1C(v46, &unk_DF2AE0);
    sub_4514A4();
    swift_allocError();
    *v47 = xmmword_AFB300;
    swift_willThrow();
    (*(v40 + 8))(v58, v44);
    (*(v59 + 8))(v45, v61);
    return (*(v17 + 8))(v19, v16);
  }

  (*(v40 + 8))(v58, v44);
  (*(v59 + 8))(v45, v61);
  (*(v17 + 8))(v19, v16);
  return (v50)(v52, v46, v16);
}

void sub_44DD1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v4 = MPModelRelationshipAlbumArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF4EC0;
  *(v6 + 32) = sub_AB92A0();
  *(v6 + 40) = v7;
  v8 = v4;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v10;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v11 = objc_allocWithZone(MPPropertySet);
  v12 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v13 = sub_AB8FD0().super.isa;

  v14 = [v11 initWithProperties:v12 relationships:v13];

  if (qword_DE6CE8 != -1)
  {
    swift_once();
  }

  v15 = qword_E719D8;
  v16 = [v14 propertySetByCombiningWithPropertySet:v15];

  qword_E71850 = v16;
}

void sub_44DFB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85F0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  isa = sub_AB9740().super.isa;
  v4 = [objc_opt_self() propertySetWithProperties:isa];

  if (qword_DE6D00 != -1)
  {
    swift_once();
  }

  v5 = qword_E719F0;
  v6 = [v4 propertySetByCombiningWithPropertySet:v5];

  qword_E71858 = v6;
}

void sub_44E0EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8600;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v7 = MPModelRelationshipSongArtist;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  v11 = v7;
  isa = sub_AB9740().super.isa;
  v13 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v13;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v14 = objc_allocWithZone(MPPropertySet);
  v15 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v16 = sub_AB8FD0().super.isa;

  v17 = [v14 initWithProperties:v15 relationships:v16];

  if (qword_DE6D10 != -1)
  {
    swift_once();
  }

  v18 = qword_E71A00;
  v19 = [v17 propertySetByCombiningWithPropertySet:v18];

  qword_E71860 = v19;
}

void sub_44E3C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B00DB0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_AB92A0();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_AB92A0();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_AB92A0();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_AB92A0();
  *(v0 + 152) = v8;
  isa = sub_AB9740().super.isa;
  v10 = [objc_opt_self() propertySetWithProperties:isa];

  sub_13C80(0, &unk_E087D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v13 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = [v10 propertySetByCombiningWithPropertySet:v14];
  qword_E71868 = v15;
}

void sub_44E5B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  v1 = MPModelRelationshipGenericAlbum;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v2;
  v3 = qword_DE6C20;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_E71850;
  *(inited + 48) = qword_E71850;
  v6 = MPModelRelationshipGenericPlaylist;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v7;
  v8 = qword_DE6C28;
  v9 = v5;
  v10 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_E71858;
  *(inited + 72) = qword_E71858;
  v12 = MPModelRelationshipGenericSong;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v13;
  v14 = qword_DE6C30;
  v15 = v11;
  v16 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v17 = qword_E71860;
  *(inited + 96) = qword_E71860;
  v18 = MPModelRelationshipGenericRadioStation;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v19;
  v20 = qword_DE6C38;
  v21 = v17;
  v22 = v18;
  if (v20 != -1)
  {
    swift_once();
  }

  v23 = qword_E71868;
  *(inited + 120) = qword_E71868;
  v24 = v23;

  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550);
  v27 = sub_AB8FD0().super.isa;

  v28 = [v25 initWithProperties:isa relationships:v27];

  qword_E71870 = v28;
}

uint64_t sub_44E87C(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 16);
  v32 = *(a2 + 32);
  v33 = v5;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  v6[1] = *a2;
  v6[2] = v7;
  v6[3] = *(a2 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_451130;
  *(v8 + 24) = v6;
  v30 = sub_445458;
  v31 = v8;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_4522E8;
  v29 = &block_descriptor_52_0;
  v9 = _Block_copy(&aBlock);
  v10 = v4;
  sub_C8C3C(&v33, v25);

  sub_15F84(&v32, v25, &unk_DEE6F0);

  [a1 setUniversalStoreIdentifiersWithBlock:v9];
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
    return result;
  }

  if (*(a2 + 8) == 4)
  {
    v12 = swift_allocObject();
    v13 = *(a2 + 16);
    v12[1] = *a2;
    v12[2] = v13;
    v12[3] = *(a2 + 32);
    v14 = swift_allocObject();
    v15 = sub_451180;
    *(v14 + 16) = sub_451180;
    *(v14 + 24) = v12;
    v30 = sub_3F328C;
    v31 = v14;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_4522E8;
    v29 = &block_descriptor_64_1;
    v16 = _Block_copy(&aBlock);
    v17 = v10;
    sub_C8C3C(&v33, v25);
    sub_15F84(&v32, v25, &unk_DEE6F0);

    [a1 setRadioIdentifiersWithBlock:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v15 = 0;
LABEL_6:
  sub_13C80(0, &qword_DF0600);
  v19 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 stringValue];
    sub_AB92A0();

    v22 = sub_AB9260();
    v30 = UIScreen.Dimensions.size.getter;
    v31 = 0;
    aBlock = _NSConcreteStackBlock;
    v27 = 1107296256;
    v28 = sub_4522E8;
    v29 = &block_descriptor_55_2;
    v23 = _Block_copy(&aBlock);

    [a1 setPersonalStoreIdentifiersWithPersonID:v22 block:v23];
    _Block_release(v23);
    v24 = swift_isEscapingClosureAtFileLocation();

    result = sub_17654(v15);
    if ((v24 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return sub_17654(v15);
}

void sub_44ECC0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = HIBYTE(v4) & 0xF;
    v7 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      goto LABEL_69;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v36 = a1;
      v31 = v4;

      v32 = sub_44F40C(v5, v31, 10);
      v34 = v33;

      a1 = v36;
      if ((v34 & 1) == 0)
      {
        v12 = v32;
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v38 = v5;
      v39 = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (!v6)
        {
LABEL_78:
          __break(1u);
          return;
        }

        v9 = v6 - 1;
        if (v6 != 1)
        {
          v12 = 0;
          v23 = &v38 + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v9)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v5 == 45)
      {
        if (!v6)
        {
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v9 = v6 - 1;
        if (v6 != 1)
        {
          v12 = 0;
          v16 = &v38 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v9)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else if (v6)
      {
        v12 = 0;
        v28 = &v38;
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            break;
          }

          v28 = (v28 + 1);
          if (!--v6)
          {
LABEL_66:
            LOBYTE(v9) = 0;
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v9 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v35 = a1;
        v9 = sub_ABAE60();
        a1 = v35;
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          v19 = v7 - 1;
          if (v7 != 1)
          {
            v12 = 0;
            if (!v9)
            {
              goto LABEL_68;
            }

            v20 = (v9 + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              v22 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v20;
              if (!--v19)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v10 == 45)
      {
        if (v7 >= 1)
        {
          v11 = v7 - 1;
          if (v7 != 1)
          {
            v12 = 0;
            if (!v9)
            {
              goto LABEL_68;
            }

            v13 = (v9 + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                break;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_67;
        }

        __break(1u);
        goto LABEL_76;
      }

      if (v7)
      {
        v12 = 0;
        if (!v9)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v26 = *v9 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v9;
          if (!--v7)
          {
            goto LABEL_66;
          }
        }
      }
    }

LABEL_67:
    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_68:
    LOBYTE(v40) = v9;
    if ((v9 & 1) == 0)
    {
LABEL_70:
      [a1 setAdamID:{v12, v36, v38, v39, v40}];
      return;
    }

LABEL_69:
    v12 = 0;
    goto LABEL_70;
  }

  if (v2 < 2)
  {
    goto LABEL_7;
  }

  v3 = a1;
  v37 = sub_AB9260();
  [v3 setGlobalPlaylistID:v37];
}

uint64_t sub_44F044()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71878);
  __swift_project_value_buffer(v0, qword_E71878);
  return static Logger.music(_:)();
}

uint64_t sub_44F0B4()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_143(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_44F118(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_44F164()
{

  return swift_deallocObject();
}

uint64_t sub_44F19C()
{

  return swift_deallocObject();
}

uint64_t sub_44F1D4()
{

  return swift_deallocObject();
}

uint64_t sub_44F228()
{

  return swift_deallocObject();
}

uint64_t sub_44F27C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_44F2EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    if (!__OFSUB__(v13, a2))
    {
      result = v10 + 40 * a3;
      v14 = v9 + 32 + 40 * a2;
      if (result < v14 || result >= v14 + 40 * (v13 - a2))
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v14)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(v9 + 16);
      v11 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (!v11)
      {
        *(v9 + 16) = v17;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_12E1C(a4, &qword_E07D88);
  }

  result = sub_8FEC8(a4, v10);
  if (a3 == 1)
  {
    return sub_12E1C(a4, &qword_E07D88);
  }

LABEL_22:
  __break(1u);
  return result;
}

unsigned __int8 *sub_44F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_AB9580();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_44F998();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_ABAE60();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_44F998()
{
  v0 = sub_AB9590();
  v4 = sub_44FA18(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_44FA18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_ABA9E0();
    if (!v9 || (v10 = v9, v11 = sub_284478(v9, 0), v12 = sub_44FB70(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_AB93D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_AB93D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_ABAE60();
LABEL_4:

  return sub_AB93D0();
}

unint64_t sub_44FB70(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_44FD90(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_AB94F0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_ABAE60();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_44FD90(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_AB94D0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_44FD90(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_AB9510();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_AB94E0();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_44FE0C(uint64_t *a1, unsigned __int8 a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_450074(v5);
  v5[9] = sub_44FF10((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_44FEB0;
}

void sub_44FEB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

Swift::Int (*sub_44FF10(uint64_t a1, unsigned __int8 a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_2ECBE0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_334CC8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_32EEF0(v14, a3 & 1);
    v9 = sub_2ECBE0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_ABB4C0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_45002C;
}

Swift::Int sub_45002C(Swift::Int result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_95C5C(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_27E4CC(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_450074(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_45009C;
}

uint64_t sub_4500A8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0() & 1;
  }
}

unint64_t sub_450100(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D90);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

uint64_t sub_450224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s9ComponentCMa(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_ABB060();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_ABB060();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_450324(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TextStackView.Component();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_ABB060();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_ABB060();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_450444(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  v14 = 16 * v12;
  v15 = &v13[16 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_450504(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}