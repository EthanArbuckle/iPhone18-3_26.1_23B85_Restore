uint64_t sub_1002B102C()
{

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101184280, &unk_101182130);
  Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

void sub_1002B11FC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing);
    *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing) = v1;
    if (v1 != v4)
    {
      sub_1000511A4();
    }
  }
}

uint64_t sub_1002B1274(uint64_t a1, uint64_t a2)
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
  sub_1001F4CB8(0, 0, v5, &unk_100EC58E8, v8);
}

uint64_t sub_1002B1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B1430, v6, v5);
}

uint64_t sub_1002B1430()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);

    v4 = [v2 traitCollection];
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1 || [v4 accessibilityContrast] == 1)
    {

      *(v3 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
    }

    else
    {
      IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();

      *(v3 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = !IsInvertColorsEnabled;
      if (!IsInvertColorsEnabled)
      {
        sub_10010FC20(&qword_101189E10);
        type metadata accessor for EditorialVideoArtworkFlavor();
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100EBDC20;
        static EditorialVideoArtworkFlavor.motionDetailTall.getter();
        goto LABEL_6;
      }
    }

    sub_10010FC20(&qword_101189E10);
    type metadata accessor for EditorialVideoArtworkFlavor();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBC6B0;
    v8 = v7;
LABEL_6:
    static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = v8;
    static Published.subscript.setter();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1002B16F0(uint64_t *a1, uint64_t a2)
{
  v72 = sub_10010FC20(&unk_101189E40);
  __chkstk_darwin(v72);
  v5 = &v63 - v4;
  v6 = sub_10010FC20(&unk_101192950);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v63 - v11;
  __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v15 = type metadata accessor for EditorialVideoArtworkFlavor();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v74 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v63 - v19;
  v21 = type metadata accessor for VideoArtwork();
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v27 = *a1;
  if (!*a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v76 = [Strong artworkView];

    if (v76)
    {
      *&v76[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = 0;

      sub_10006ADD4();
      v37 = v76;
    }

    return;
  }

  v64 = v26;
  v65 = v9;
  v71 = v14;
  v67 = v25;
  v28 = *(v25 + 16);
  v75 = &v63 - v24;
  v76 = v23;
  v28();
  v68 = v15;
  v69 = v16;
  v29 = *(v16 + 16);
  v73 = v20;
  v29(v20, v27 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v15);
  v66 = a2;
  v30 = swift_unknownObjectUnownedLoadStrong();
  v70 = v27;

  v31 = [v30 artworkView];

  if (v31)
  {
    v32 = *&v31[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData];
    if (v32)
    {

      v33 = v71;
      v34 = v76;
      (v28)(v71, v32 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v76);

      v35 = 0;
      goto LABEL_11;
    }
  }

  v35 = 1;
  v34 = v76;
  v33 = v71;
LABEL_11:
  v38 = v67;
  v39 = *(v67 + 56);
  v39(v33, v35, 1, v34);
  (v28)(v12, v75, v34);
  v40 = v38;
  v39(v12, 0, 1, v34);
  v41 = *(v72 + 48);
  sub_1000089F8(v33, v5, &unk_101192950);
  sub_1000089F8(v12, &v5[v41], &unk_101192950);
  v42 = *(v38 + 48);
  if (v42(v5, 1, v34) == 1)
  {
    sub_1000095E8(v12, &unk_101192950);
    v43 = v76;
    sub_1000095E8(v33, &unk_101192950);
    v44 = v42(&v5[v41], 1, v43);
    v46 = v68;
    v45 = v69;
    v47 = v70;
    if (v44 == 1)
    {
      sub_1000095E8(v5, &unk_101192950);
LABEL_28:

      (*(v45 + 8))(v73, v46);
LABEL_36:
      (*(v40 + 8))(v75, v43);
      return;
    }
  }

  else
  {
    v48 = v65;
    sub_1000089F8(v5, v65, &unk_101192950);
    if (v42(&v5[v41], 1, v34) != 1)
    {
      v56 = v64;
      (*(v40 + 32))(v64, &v5[v41], v34);
      sub_1002B7108(&qword_101186E80, &type metadata accessor for VideoArtwork);
      v57 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58 = *(v40 + 8);
      v58(v56, v34);
      sub_1000095E8(v12, &unk_101192950);
      sub_1000095E8(v71, &unk_101192950);
      v58(v48, v76);
      v43 = v76;
      sub_1000095E8(v5, &unk_101192950);
      v46 = v68;
      v45 = v69;
      v47 = v70;
      if (v57)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    sub_1000095E8(v12, &unk_101192950);
    v43 = v76;
    sub_1000095E8(v71, &unk_101192950);
    (*(v40 + 8))(v48, v43);
    v46 = v68;
    v45 = v69;
    v47 = v70;
  }

  sub_1000095E8(v5, &unk_101189E40);
LABEL_17:
  v49 = swift_unknownObjectUnownedLoadStrong();
  v50 = [v49 artworkView];

  if (v50)
  {
    *&v50[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = v47;
    swift_retain_n();

    sub_10006ADD4();
  }

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  sub_1002B7108(&unk_101189E50, &type metadata accessor for EditorialVideoArtworkFlavor);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v79 == v77 && v80 == v78)
  {
    v51 = 1;
  }

  else
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v52 = *(v45 + 8);
  v52(v74, v46);

  if (v51 & 1) == 0 || (LOBYTE(v79) = 11, v53 = sub_100025CE0(), (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v53)) && (v54 = [objc_opt_self() currentDevice], v55 = objc_msgSend(v54, "userInterfaceIdiom"), v54, v55 == 1) || (v59 = swift_unknownObjectUnownedLoadStrong(), v60 = objc_msgSend(v59, "artworkView"), v59, !v60))
  {

    v52(v73, v46);
    goto LABEL_36;
  }

  if (*&v60[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v61 = v80;
    if (v80 == 255)
    {

      v52(v73, v46);
      (*(v40 + 8))(v75, v76);
    }

    else
    {
      sub_10004ADFC(v79, v80);
      v62 = v76;
      if ((v61 & 1) == 0)
      {
        sub_10065F284();
        sub_10065D24C();
      }

      v52(v73, v46);
      (*(v40 + 8))(v75, v62);
    }
  }

  else
  {
    v52(v73, v46);
    (*(v40 + 8))(v75, v43);
  }
}

void sub_1002B2128()
{
  v0 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v0) & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
      v3 = *(*(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager) + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
      v4 = *(v3 + 24);
      *(v3 + 24) = v2;
      v5 = Strong;
      v6 = v2;

      sub_100069C14();
    }
  }
}

uint64_t sub_1002B2200(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager);
    v4 = result;

    *(*(v3 + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService) + 16) = v1 ^ 1;
    sub_100069C14();
  }

  return result;
}

id sub_1002B2290(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_101189D60);
  __chkstk_darwin(v6 - 8);
  v8 = &v50[-v7];
  v9 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v50[-v14];
  p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
  if (v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading] == 1)
  {
    v17 = NowPlaying.TrackMetadata.loading.unsafeMutableAddressor();
LABEL_3:
    sub_1002B709C(v17, v13);
    goto LABEL_11;
  }

  v18 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (v18)
  {
    v51 = a2;
    v52 = a1;
    v53 = &v50[-v14];
    v19 = v18;
    v20 = [v19 tracklist];
    v21 = [v20 playingItem];

    v22 = [v19 tracklist];
    v23 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource];
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    sub_100112878(v24);
    NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v21, v22, v24, v25, v8);
    v26 = *(v10 + 48);
    if (v26(v8, 1, v9) == 1)
    {
      v27 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1002B709C(v27, v13);

      v28 = v26(v8, 1, v9);
      a1 = v52;
      v15 = v53;
      p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
      LOBYTE(a2) = v51;
      if (v28 != 1)
      {
        sub_1000095E8(v8, &qword_101189D60);
      }
    }

    else
    {

      sub_1002B7F50(v8, v13, type metadata accessor for NowPlaying.TrackMetadata);
      a1 = v52;
      v15 = v53;
      p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
      LOBYTE(a2) = v51;
    }
  }

  else
  {
    v29 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath];
    if (!v29)
    {
      v17 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      goto LABEL_3;
    }

    NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)(v29, 0, 0, v13);
  }

LABEL_11:
  sub_1002B7F50(v13, v15, type metadata accessor for NowPlaying.TrackMetadata);
  v30 = sub_1002ADF78();
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    v31 = 2;
  }

  else
  {
    result = [v3 view];
    if (!result)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    v33 = result;
    v34 = [result effectiveUserInterfaceLayoutDirection];

    v31 = Gliss.Direction.init(playerDirection:layoutDirection:)(a1, a2 & 1, v34);
  }

  result = [v3 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v35 = result;
  v36 = UIView.allowsAnimatedChanges.getter();

  if (v36)
  {
    v37 = [v3 presentedViewController];
    if (!v37)
    {
      v38 = 1;
      goto LABEL_20;
    }
  }

  v38 = 0;
LABEL_20:
  (*((swift_isaMask & *v30) + 0x150))(v15, v31, v38);

  v39 = [v3 artworkView];
  if (v39)
  {
    v40 = v39;
    v41 = *&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath];
    v42 = v41;
    sub_1000692A4(v41);
  }

  [v3 accessibilityUpdateMetadata];
  sub_10004EFF4();
  v43 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
  swift_beginAccess();
  v44 = *&v3[v43];
  if (v44)
  {
    v45 = *(p_cache[329] + v3);
    if (v45)
    {
      v46 = v44;
      v47 = [v45 tracklist];
      v48 = [v47 playingItem];

      if (v48)
      {
        LOBYTE(v45) = MPCPlayerResponseItem.supportsLyrics.getter();
      }

      else
      {
        LOBYTE(v45) = 0;
      }
    }

    else
    {
      v46 = v44;
    }

    [v46 setEnabled:v45 & 1];
  }

  swift_beginAccess();
  v49 = *&v3[v43];
  if (v49)
  {
    swift_endAccess();
    [v49 setNeedsUpdateConfiguration];
    return sub_1002B8288(v15, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    sub_1002B8288(v15, type metadata accessor for NowPlaying.TrackMetadata);
    return swift_endAccess();
  }
}

uint64_t sub_1002B2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002B28A8, v6, v5);
}

uint64_t sub_1002B28A8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton;
  v0[6] = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton;
  *(v1 + v2) = 1;
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1002B2954;

  return static Task<>.sleep(for:)(10.0);
}

uint64_t sub_1002B2954()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1002B86C8;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1002B2A78;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002B2A78()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    *(v0[2] + v0[6]) = 0;
  }

  v1 = v0[1];

  return v1();
}

void sub_1002B2AEC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = (*((swift_isaMask & v8->isa) + 0x1B0))();

    _os_log_impl(&_mh_execute_header, v9, v10, "[BottomPlayerViewController] session.objectWillChange participant count: %{public}ld", v11, 0xCu);
  }

  else
  {

    v9 = v8;
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*((swift_isaMask & v8->isa) + 0x1B0))();
    v15 = *&v13[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount];
    *&v13[OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount] = v14;
    if (v14 != v15)
    {
      sub_10004F27C();
    }
  }
}

void sub_1002B2D4C(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  if (qword_10117F228 != -1)
  {
    swift_once();
  }

  sub_100663064(v2, qword_101218668);
  v4 = sub_1002AE644();
  v5 = (*((swift_isaMask & *v4) + 0xE8))(v13);
  *(v6 + 24) = 0;
  v5(v13, 0);

  v7 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
  v8 = *((swift_isaMask & *v7) + 0x100);
  v9 = v7;
  v10 = v8(v13);
  *(v11 + 24) = 0;
  v10(v13, 0);

  v12 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask];
  *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask] = 0;
  if (v12)
  {
    Task.cancel()();
  }
}

void sub_1002B2F5C(uint64_t a1)
{
  v3 = v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds + 32];
  if (v3 == 1)
  {
    v4 = 0.0;
    if (*(a1 + 32))
    {
      return;
    }
  }

  else
  {
    Width = CGRectGetWidth(*&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds]);
    if (*(a1 + 32))
    {
      goto LABEL_10;
    }

    v4 = Width;
  }

  if (v4 == CGRectGetWidth(*a1))
  {
    v6 = v3;
  }

  else
  {
    v6 = 1;
  }

  if (v6 == 1)
  {
LABEL_10:
    sub_1002B06E4();
    v7 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton];
    if (v7)
    {
      v8 = v7;
      v9 = [v1 view];
      if (!v9)
      {
        __break(1u);
        goto LABEL_22;
      }

      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v36.origin.x = v12;
      v36.origin.y = v14;
      v36.size.width = v16;
      v36.size.height = v18;
      v19 = CGRectGetWidth(v36);
      if (qword_10117F530 != -1)
      {
        v34 = v19;
        swift_once();
        v19 = v34;
      }

      [v8 setHidden:v19 < *&qword_1012189C0];
    }

    v20 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!v21)
    {
      return;
    }

    v22 = v21;
    v23 = [v1 view];
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v37.origin.x = v26;
      v37.origin.y = v28;
      v37.size.width = v30;
      v37.size.height = v32;
      v33 = CGRectGetWidth(v37);
      if (qword_10117F530 != -1)
      {
        v35 = v33;
        swift_once();
        v33 = v35;
      }

      [v22 setHidden:v33 < *&qword_1012189C0];

      return;
    }

LABEL_22:
    __break(1u);
  }
}

void sub_1002B3280(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1002AE644();
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [*&v3[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView] superview];
    [a1 convertRect:v13 fromView:{v6, v8, v10, v12}];

    [a1 bounds];
    CGRectGetHeight(v14);
  }

  else
  {
    [a1 bounds];
  }
}

void *sub_1002B3650()
{
  v0 = sub_10010FC20(&unk_1011838E0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v37 - v4;
  v6 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_10010FC20(&unk_10118AB20);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = *(Strong + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    if (v20)
    {
      v46 = [v20 tracklist];
      v21 = type metadata accessor for Actions.PlaybackContext();
      v22 = *(v21 - 8);
      v45 = *(v22 + 56);
      v45(v17, 1, 1, v21);
      v23 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
      sub_1000089F8(v17, v12, &unk_10118AB20);
      v44 = *(v22 + 48);
      if (v44(v12, 1, v21) == 1)
      {
        v43 = v22 + 56;
        v24 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
        (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
        *&v58 = 0;
        v56 = 0u;
        v57 = 0u;
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v25 = qword_101218AD8;
        sub_1000089F8(v5, v3, &unk_1011838E0);
        v42 = v25;
        v41 = UIViewController.playActivityInformation.getter();
        v40 = v26;
        v39 = v27;
        v38 = v28;
        sub_1000089F8(&v56, &v51, &unk_101183910);
        if (v52)
        {
          sub_100188D80(&v51, &v53);
        }

        else
        {
          v50 = v19;
          sub_100009F78(0, &qword_101183D40);
          v37 = v19;
          sub_10010FC20(&unk_101183920);
          if (swift_dynamicCast())
          {
            sub_100188D80(&v47, &v53);
          }

          else
          {
            v49 = 0;
            v48 = 0u;
            v47 = 0u;
            *&v53 = v37;
            v30 = v37;
            v31 = String.init<A>(reflecting:)();
            *(&v54 + 1) = &type metadata for Player.CommandIssuerIdentity;
            *&v55 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v53 = v31;
            *(&v53 + 1) = v32;
            if (*(&v48 + 1))
            {
              sub_1000095E8(&v47, &unk_101183910);
            }
          }

          if (v52)
          {
            sub_1000095E8(&v51, &unk_101183910);
          }
        }

        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v42, v3, v41, v40, v39, v38, &v53, v15);
        sub_1000095E8(&v56, &unk_101183910);
        sub_1000095E8(v5, &unk_1011838E0);
        if (v44(v12, 1, v21) != 1)
        {
          sub_1000095E8(v12, &unk_10118AB20);
        }
      }

      else
      {
        sub_1002B7F50(v12, v15, type metadata accessor for Actions.PlaybackContext);
      }

      v45(v15, 0, 1, v21);
      v33 = v46;
      sub_1001CCD5C(v19, v15, v8, variable initialization expression of Library.Context.playlistVariants, 0, &v53);
      sub_1000095E8(v15, &unk_10118AB20);
      if (*(&v53 + 1))
      {
        v56 = v53;
        v57 = v54;
        v58 = v55;
        *&v51 = &off_101099ED0;
        v29 = _swiftEmptyArrayStorage;
        sub_100124084(_swiftEmptyArrayStorage);
        v34 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v51, 0);

        v47 = v56;
        sub_100015BB0(&v47);
        v51 = v57;
        sub_100015BB0(&v51);

        sub_1000095E8(v8, &unk_1011838F0);
        sub_1000095E8(v17, &unk_10118AB20);
        if (v34)
        {
          v35 = [v34 children];

          sub_100009F78(0, &qword_10118CDE0);
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v19 = v35;
        }

        goto LABEL_23;
      }

      sub_1000095E8(v8, &unk_1011838F0);
      sub_1000095E8(v17, &unk_10118AB20);
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_23:

    return v29;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1002B3DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_opt_self() standardUserDefaults];
  v13[3] = &type metadata for Int;
  v13[0] = a3;
  v12 = 0;
  sub_1002B8234();
  sub_100009838();
  NSUserDefaults.subscript.setter(v13, &v12, &type metadata for NowPlayingViewController.DefaultsKey);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_10003169C();

    if (v10)
    {
      *v6 = 5;
      swift_storeEnumTagMultiPayload();
      sub_10070BF44(v6, 0, 0, 0, 0);

      sub_1002B8288(v6, type metadata accessor for AppInterfaceContext.Activity.Destination);
    }
  }
}

void sub_1002B42A4(int a1, id a2)
{
  if ([a2 state] == 3)
  {
    sub_1007EA514(sub_1002B42F8, 0);
  }
}

void sub_1002B42F8(void *a1)
{
  type metadata accessor for NowPlayingViewController(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v3)
    {
      v5 = v3;
      v4 = a1;
      sub_1005E8898();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1002B440C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    result = [v2 artworkView];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = *(a1 + 16) == 0x6B726F77747241 && *(a1 + 24) == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      type metadata accessor for NowPlayingContentViewDonationItem();
      v7 = swift_allocObject();
      *(v7 + 48) = 0;
      *(v7 + 56) = 0u;
      *(v7 + 72) = 0u;
      *(v7 + 88) = 0u;
      *(v7 + 104) = 0;
      *(v7 + 16) = 0x6B726F77747241;
      *(v7 + 24) = 0xE700000000000000;
      *(v7 + 32) = v5;
      *(v7 + 40) = 0;
      v8 = swift_allocObject();
      *(v8 + 16) = v2;
      *(v8 + 24) = v5;
      *(v7 + 88) = sub_1002B7040;
      *(v7 + 96) = v8;
      v9 = v5;
      v10 = v2;
      return v7;
    }
  }

  return 0;
}

id sub_1002B4514(_BYTE *a1)
{
  v2 = v1;
  v4 = UIView.forAutolayout.getter();
  [v2 setArtworkView:v4];

  result = [v2 view];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  [result addSubview:a1];

  v7 = a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates];
  a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates] = 0;
  if (v7 == 1)
  {
    [a1 setNeedsLayout];
  }

  v8 = *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
  *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 0;
  if (v8 & 0xC100) != 0 || (v8)
  {
    sub_10004C8F4();
    [a1 setNeedsLayout];
  }

  v9 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v9))
  {
    v10 = [v2 traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 2)
    {
      v12 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
      [*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:0];
      [*&a1[v12] setAlpha:1.0];
      [a1 setAlpha:1.0];
    }
  }

  sub_10010FC20(&qword_101183990);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBDC10;
  v14 = [a1 centerXAnchor];
  v15 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide;
  result = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide];
  if (!result)
  {
    goto LABEL_16;
  }

  v16 = [result centerXAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];

  *(v13 + 32) = v17;
  v18 = [a1 centerYAnchor];
  result = *&v2[v15];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = [result centerYAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v13 + 40) = v20;
  v21 = [a1 widthAnchor];
  result = *&v2[v15];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = [result widthAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v13 + 48) = v23;
  result = [a1 heightAnchor];
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = result;
    v26 = objc_opt_self();
    v27 = [v24 heightAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];

    *(v13 + 56) = v28;
    sub_100009F78(0, &qword_1011838A0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];

    return sub_1002B2290(0, 1);
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1002B48F8()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for PresentationDonationTarget();
    v3 = swift_allocObject();
    v3[9] = 0;
    v3[10] = 0;
    v3[2] = 0x6B726F77747241;
    v3[3] = 0xE700000000000000;
    v3[4] = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v3[11] = sub_1002B7150;
    v3[12] = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v3[5] = sub_1002B7158;
    v3[6] = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    v3[7] = sub_1002B717C;
    v3[8] = v6;
    v3[13] = sub_1002B4C64;
    v3[14] = 0;
    sub_10010FC20(&qword_101183990);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBC6C0;
    *(v7 + 32) = v3;
    v8 = v0;
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002B4A54(uint64_t a1, id a2)
{
  v4 = [a2 artworkView];
  if (v4)
  {
    v5 = v4;
    [v4 setHidden:1];
  }

  v6 = *(a1 + 32);
  type metadata accessor for NowPlayingContentView(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates);
    *(v7 + OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates) = 1;
    v10 = v6;
    if ((v9 & 1) == 0)
    {
      [v8 setNeedsLayout];
    }

    v14 = v10;
    v11 = [a2 traitCollection];
    v12 = [v11 userInterfaceStyle];

    [v8 setOverrideUserInterfaceStyle:v12];
    [v8 updateTraitsIfNeeded];
    v13 = *&v8[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
    *&v8[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = 0;
    if (v13 & 0xC100) != 0 || (v13)
    {
      sub_10004C8F4();
      [v8 setNeedsLayout];
    }
  }
}

void sub_1002B4BDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NowPlayingContentView(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    sub_1002B4514(v3);
  }
}

void sub_1002B4C64(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a2 + 32);
    [v2 setOverrideUserInterfaceStyle:0];
    type metadata accessor for NowPlayingContentView(0);
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10065CE7C(0, 1);
      sub_10065D1CC();
    }
  }
}

void sub_1002B4CFC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor:v10];

      v11 = [a3 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (v11)
      {
        v12 = v11;
        type metadata accessor for NowPlayingViewController(0);
        if (swift_dynamicCastClass())
        {

          v13 = [a4 layer];
          [v13 setShadowOpacity:0.0];
        }

        else
        {
          v13 = v7;
          v7 = v12;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B4E48(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v4 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!*&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying])
  {
    v6 = *(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] = v6;
    v7 = v4;
    v8 = v6;
    v9 = v7;
    sub_100198E90(0);

    if (*(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton) == 1)
    {
      v10 = *(a1 + v3);
      if (!v10)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v11 = v10;
      sub_1001AF140(0);

      v12 = *(a1 + v3);
      if (!v12)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v13 = v12;
      sub_1001AF484(5.0);
    }

    v14 = *(a1 + v3);
    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_autoMixTransitionInformation;
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = &v14[OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation];
    swift_beginAccess();
    v19 = *v18;
    v20 = *(v18 + 1);
    *v18 = v16;
    *(v18 + 1) = v17;
    v21 = v14;
    v22 = v16;
    v23 = v17;

    v4 = *(a1 + v3);
    if (!v4)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v24 = [v4 view];
  if (!v24)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  [v24 layoutIfNeeded];

  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v27 == 1)
  {
    v26 = *(a2 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying);
    if (v26)
    {
      if ([v26 isSharedListeningSession])
      {
        sub_10012F360();
      }
    }
  }
}

id sub_1002B50C0()
{
  v1 = [v0 artworkView];

  return v1;
}

void (*sub_1002B50F8())()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v38[-v8];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_30;
  }

  v11 = result;
  v12 = [result window];

  v13 = [v12 windowScene];
  if (!v13)
  {
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 connectedScenes];
    sub_100009F78(0, &qword_1011839F0);
    sub_10001C070(&qword_101183DE0, &qword_1011839F0);
    v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v15);
    v17 = v16;

    if (v17 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_1007E90D4(0, v17);
          goto LABEL_8;
        }

        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v17 + 32);
LABEL_8:
          v19 = v18;

          v13 = v19;
          goto LABEL_9;
        }

        __break(1u);
LABEL_30:
        __break(1u);
        return result;
      }
    }

    goto LABEL_25;
  }

LABEL_9:
  v20 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = [v20 tracklist];
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  v23 = [v21 playingItem];
  if (!v23)
  {
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 metadataObject];

  if (!v25)
  {
    goto LABEL_22;
  }

  v26 = [v25 innermostModelObject];

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = [v27 album];
    if (v29)
    {
      v30 = v29;
      v31 = [v22 playingItemIndexPath];
      if (v31)
      {
        v32 = v31;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 32))(v9, v5, v2);
        v33 = v26;
        v34 = [v22 items];
        v35 = [v34 sectionAtIndex:IndexPath.section.getter()];

        v36 = [v35 metadataObject];
        v37 = sub_100483660(v30, v28, v36, v13);

        (*(v3 + 8))(v9, v2);
        if (v37)
        {
          return v37;
        }

        return 0;
      }

LABEL_22:
      goto LABEL_25;
    }
  }

  else
  {
  }

  v13 = v26;
LABEL_25:

  return 0;
}

void sub_1002B5680()
{
  v1 = [v0 traitCollection];
  [v1 horizontalSizeClass];
}

id sub_1002B5774(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

id sub_1002B5810(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1002B5874@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_1002B58F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10012BCD4();
}

uint64_t sub_1002B596C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1002B59EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1002B5A68(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1002B5AFC(a1, v2);
}

unint64_t sub_1002B5AFC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1002B5C00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t), uint64_t a6)
{
  v8 = *(a4 + 32);
  v9 = v8[2];
  v10 = 16 * v9 + 16;
  v11 = v9;
  while (v11)
  {
    --v11;
    v12 = *(v8 + v10);
    v10 -= 16;
    if (v12 == a2)
    {

      v14 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v9 >= v8[3] >> 1)
      {
        v8 = sub_100059EE8(isUniquelyReferenced_nonNull_native, v9 + 1, 1, v8);
      }

      sub_1003BB890(v11, v11, 1, v14, a6);

      v16 = *(a4 + 32);
      *(a4 + 32) = v8;
      sub_100059F0C(v16);
    }
  }

  return a5(a1, a4);
}

void sub_1002B5D28(void *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  if (v4 != v5)
  {
    sub_10004EFF4();
  }
}

void sub_1002B5DF8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition) = 0;
  v2 = (v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_autoMixTransitionInformation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButton) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_invertColorsStatusDidChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_didActivateObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionRestrictionsObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_videoArtworksObserver) = 0;
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager;
  type metadata accessor for MotionArtworkManager();
  swift_allocObject();
  *(v0 + v3) = sub_100040FAC();
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlayingPath) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession) = 0;
  v4 = v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastKnownViewBounds;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_glissandoDataSource;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v6 = qword_101218AC8;
  _s19GlissandoDataSourceCMa();
  v7 = swift_allocObject();
  *(v7 + 54) = -4864;
  *(v7 + 32) = 0;
  strcpy((v7 + 40), "Swipe Gesture");
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = MPCPlayerRequestTracklistRange.neighboringItems.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];
  v11 = *(*v6 + 752);

  v12 = v11(v26);
  v13.reverseCount = v9;
  v13.forwardCount = v10;
  Player.NowPlayingConfiguration.insert(_:)(v13);
  v12(v26, 0);
  *(v1 + v5) = v7;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___glissCoordinator) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_mediaControls) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_routeLabel) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsLabel) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_standardConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_newRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playerSubscriptions) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide) = 0;
  v14 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  v15 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v16 = UIView.forAutolayout.getter();

  *(v1 + v14) = v16;
  v17 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  v18 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v19 = UIView.forAutolayout.getter();

  *(v1 + v17) = v19;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playbackCancellationGesture) = 0;
  v20 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack) = 0;
  v22 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_reverseButtonConfiguration);
  v22[1] = 0;
  v22[2] = 0;
  *v22 = 0;
  v23 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_playPauseButtonConfiguration);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 0;
  v24 = (v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_skipButtonConfiguration);
  v24[1] = 0;
  v24[2] = 0;
  *v24 = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_contextMenuButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lyricsButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_queueButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isPreviewing) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_isSharedListeningLoading) = 0;
  *(v21 + 96) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = 3;
  v25 = v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_lastSpecifiedTabAccessoryEnvironment;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002B628C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_101180418);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_101180420);
      v5 = v11;
      result = sub_1002B5A68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1002B63B4(char *a1)
{
  sub_10004F8C8();
  sub_1000511A4();
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    sub_1002AF2CC();
  }

  else
  {
    v4 = *&a1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView];
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }

  v5 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 deactivateConstraints:isa];

  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:v7];
}

uint64_t sub_1002B6524(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager];
  v2 = [a1 traitCollection];
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1 || [v2 accessibilityContrast] == 1)
  {

    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = 0;
  }

  else
  {
    IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();

    *(v1 + OBJC_IVAR____TtC5Music20MotionArtworkManager_allowNowPlayingTallMotionArtwork) = !IsInvertColorsEnabled;
    if (!IsInvertColorsEnabled)
    {
      sub_10010FC20(&qword_101189E10);
      type metadata accessor for EditorialVideoArtworkFlavor();
      *(swift_allocObject() + 16) = xmmword_100EBDC20;
      static EditorialVideoArtworkFlavor.motionDetailTall.getter();
      goto LABEL_5;
    }
  }

  sub_10010FC20(&qword_101189E10);
  type metadata accessor for EditorialVideoArtworkFlavor();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
LABEL_5:
  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1002B6778(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack;
  result = *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack);
  if (result)
  {
    [result bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [a1 locationInView:*(v1 + v3)];
    v28.x = v13;
    v28.y = v14;
    v30.origin.x = v6;
    v30.origin.y = v8;
    v30.size.width = v10;
    v30.size.height = v12;
    if (CGRectContainsPoint(v30, v28))
    {
      return 0;
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_trailingButtonsStackView);
      if (v15)
      {
        v16 = v15;
        [v16 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;
        [a1 locationInView:v16];
        v29.x = v25;
        v29.y = v26;
        v31.origin.x = v18;
        v31.origin.y = v20;
        v31.size.width = v22;
        v31.size.height = v24;
        v27 = CGRectContainsPoint(v31, v29);

        return !v27;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002B688C(void *a1)
{
  v2 = [a1 state];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v6 = String._bridgeToObjectiveC()();
      v7 = [objc_opt_self() animationWithKeyPath:v6];

      [v7 setFromValue:0];
      v8 = [objc_opt_self() clearColor];
      v9 = [v8 CGColor];

      [v7 setToValue:v9];
      v10 = v7;
      [v10 setDuration:0.1];
      [v10 setAutoreverses:1];
      LODWORD(v11) = 2.0;
      [v10 setRepeatCount:v11];
      [v10 setRemovedOnCompletion:1];

      v12 = [v1 view];
      if (!v12)
      {
LABEL_20:
        __break(1u);
        return;
      }

      v13 = v12;
      v14 = [v12 layer];

      v15 = String._bridgeToObjectiveC()();
      [v14 addAnimation:v10 forKey:?];

      goto LABEL_15;
    }

    if (v2 != 3)
    {
      return;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return;
    }

    v3 = [v1 view];
    if (v3)
    {
      v15 = v3;
      if (qword_10117F520 != -1)
      {
        swift_once();
        v3 = v15;
      }

      [v3 setBackgroundColor:qword_1012189B0];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  v15 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:?];

LABEL_15:
}

void sub_1002B6B78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v6 layer];

  [v8 removeAllAnimations];
  v9 = [a1 containerView];
  v10 = [v3 view];
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = UIView.Shadow.identity.unsafeMutableAddressor();
  v13 = *(v12 + 1);
  v45[0] = *v12;
  v45[1] = v13;
  v46 = v12[4];
  v14 = *&v45[0];
  UIView.shadow.setter(v45);

  v15 = [v3 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v43 = 0;
  aBlock = 0u;
  v42 = 0u;
  UIView._background.setter();

  v17 = [v3 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v19];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002B7000;
  *(v22 + 24) = v21;
  v23 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v24 = *(a2 + v23);

  swift_unknownObjectRetain();
  v40 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_10049974C(0, v24[2] + 1, 1, v24);
    *(a2 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_10049974C((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v28 = &v24[2 * v27];
  v28[4] = sub_1002B700C;
  v28[5] = v22;
  *(a2 + v23) = v24;
  swift_endAccess();

  v29 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for NowPlayingViewController(0);
    v31 = swift_dynamicCastClass();
    if (!v31)
    {

      goto LABEL_15;
    }

    v32 = v31;
    v33 = objc_opt_self();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = v3;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1002B7038;
    *(v35 + 24) = v34;
    v43 = sub_100029B94;
    v44 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v42 = sub_100029B9C;
    *(&v42 + 1) = &unk_1010A4060;
    v36 = _Block_copy(&aBlock);
    v37 = v30;
    v38 = v3;

    [v33 performWithoutAnimation:v36];

    _Block_release(v36);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v30 = v40;
LABEL_15:
}

id sub_1002B7040(char a1)
{
  if ((a1 & 1) == 0)
  {
    return sub_1002B4514(*(v1 + 24));
  }

  v2 = *(v1 + 16);

  return [v2 setArtworkView:0];
}

uint64_t sub_1002B709C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B7108(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002B7158()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5Music26BottomPlayerViewController_artworkLayoutGuide);
  if (result)
  {
    return [result layoutFrame];
  }

  __break(1u);
  return result;
}

id sub_1002B7184(void *a1)
{
  v2 = sub_1002B50F8();
  if (v2)
  {
    v7[4] = v2;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10002BC98;
    v7[3] = &unk_1010A41A0;
    v4 = v2;
    v5 = _Block_copy(v7);

    [a1 addAnimations:v5];
    _Block_release(v5);
    return sub_100020438(v4);
  }

  else
  {

    return [a1 setPreferredCommitStyle:0];
  }
}

id sub_1002B7294(CGFloat a1)
{
  v3 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v3 - 8);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v85 = v70 - v7;
  v8 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v8 - 8);
  v10 = v70 - v9;
  v11 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v11 - 8);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v70 - v15;
  __chkstk_darwin(v17);
  v19 = v70 - v18;
  v20 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v20 - 8);
  v22 = v70 - v21;
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  *&v25 = __chkstk_darwin(v23).n128_u64[0];
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_transportControlsStack];
  if (!result)
  {
    __break(1u);
    return result;
  }

  [result frame];
  x = v101.origin.x;
  y = v101.origin.y;
  width = v101.size.width;
  height = v101.size.height;
  if (CGRectGetMinX(v101) <= a1)
  {
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = height;
    if (CGRectGetMaxX(v102) >= a1)
    {
      return 0;
    }
  }

  v84 = v19;
  v33 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying;
  result = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (!result)
  {
    return result;
  }

  v81 = v27;
  v82 = v24;
  v83 = v23;
  v34 = [result tracklist];
  v35 = [v34 playingItem];

  if (!v35)
  {
    return 0;
  }

  v36 = [v35 metadataObject];

  if (!v36)
  {
    return 0;
  }

  v37 = [v36 innermostModelObject];

  v38 = v37;
  GenericMusicItem.init(_:)();
  v39 = v82;
  v40 = v83;
  if ((*(v82 + 48))(v22, 1, v83) == 1)
  {

    sub_1000095E8(v22, &unk_101189DA0);
    return 0;
  }

  v79 = v38;
  (*(v39 + 32))(v81, v22, v40);
  v41 = *&v1[v33];
  v80 = v1;
  if (v41)
  {
    v78 = [v41 tracklist];
    v42 = type metadata accessor for Actions.PlaybackContext();
    v43 = *(v42 - 8);
    v44 = v84;
    v77 = *(v43 + 56);
    v77(v84, 1, 1, v42);
    v45 = type metadata accessor for MetricsEvent.Page(0);
    v46 = v10;
    (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
    sub_1000089F8(v44, v13, &unk_10118AB20);
    v47 = *(v43 + 48);
    if (v47(v13, 1, v42) == 1)
    {
      v76 = v47;
      v48 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v49 = v85;
      (*(*(v48 - 8) + 56))(v85, 1, 1, v48);
      *&v99 = 0;
      v97 = 0u;
      v98 = 0u;
      if (qword_10117F608 != -1)
      {
        swift_once();
      }

      v50 = qword_101218AD8;
      sub_1000089F8(v49, v5, &unk_1011838E0);
      v75 = v50;
      v74 = UIViewController.playActivityInformation.getter();
      v73 = v51;
      v72 = v52;
      v71 = v53;
      sub_1000089F8(&v97, &aBlock, &unk_101183910);
      if (v88)
      {
        sub_100188D80(&aBlock, &v94);
        v1 = v80;
      }

      else
      {
        v1 = v80;
        *&v100 = v80;
        v70[1] = sub_100009F78(0, &qword_101183D40);
        v56 = v1;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100188D80(&v91, &v94);
        }

        else
        {
          v93 = 0;
          v92 = 0u;
          v91 = 0u;
          *&v94 = v56;
          v57 = v56;
          v58 = String.init<A>(reflecting:)();
          *(&v95 + 1) = &type metadata for Player.CommandIssuerIdentity;
          *&v96 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v94 = v58;
          *(&v94 + 1) = v59;
          if (*(&v92 + 1))
          {
            sub_1000095E8(&v91, &unk_101183910);
          }
        }

        if (v88)
        {
          sub_1000095E8(&aBlock, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v75, v5, v74, v73, v72, v71, &v94, v16);
      sub_1000095E8(&v97, &unk_101183910);
      sub_1000095E8(v49, &unk_1011838E0);
      if (v76(v13, 1, v42) != 1)
      {
        sub_1000095E8(v13, &unk_10118AB20);
      }
    }

    else
    {
      sub_1002B7F50(v13, v16, type metadata accessor for Actions.PlaybackContext);
    }

    v77(v16, 0, 1, v42);
    v60 = v78;
    sub_1001CCD5C(v1, v16, v46, variable initialization expression of Library.Context.playlistVariants, 0, &v94);
    sub_1000095E8(v16, &unk_10118AB20);
    v55 = v79;
    if (*(&v94 + 1))
    {
      v97 = v94;
      v98 = v95;
      v99 = v96;
      *&aBlock = &off_101099EF8;
      sub_100124084(_swiftEmptyArrayStorage);
      v54 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(aBlock, 0);

      v100 = v97;
      sub_100015BB0(&v100);
      v91 = v98;
      sub_100015BB0(&v91);
    }

    else
    {

      v54 = 0;
    }

    sub_1000095E8(v46, &unk_1011838F0);
    sub_1000095E8(v84, &unk_10118AB20);
  }

  else
  {
    v54 = 0;
    v55 = v79;
  }

  v61 = sub_1002435F0();
  v62 = sub_1002B50F8();
  v63 = v62;
  if (v62)
  {
    sub_100020438(v62);
  }

  if (((v63 != 0) ^ *(v61 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron)))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v70[-2] = v61;
    LOBYTE(v70[-1]) = v63 != 0;
    *&aBlock = v61;
    sub_1002B7108(&unk_101189DB0, type metadata accessor for ContextualPreview.Data);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v61 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v63 != 0;
  }

  v65 = swift_allocObject();
  *(v65 + 16) = v54;
  v66 = objc_opt_self();
  v89 = sub_100218654;
  v90 = v61;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v87 = sub_100747E6C;
  v88 = &unk_1010A4150;
  v67 = _Block_copy(&aBlock);

  v89 = NowPlaying.TrackMetadata.underlyingItem.getter;
  v90 = v65;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v87 = sub_100747EBC;
  v88 = &unk_1010A4178;
  v68 = _Block_copy(&aBlock);

  v69 = [v66 configurationWithIdentifier:0 previewProvider:v67 actionProvider:v68];

  _Block_release(v68);
  _Block_release(v67);

  (*(v82 + 8))(v81, v83);
  return v69;
}

void *NowPlaying.TrackMetadata.underlyingItem.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1002B7F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002B80C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B0F2C(a1, v4, v5, v6);
}

unint64_t sub_1002B8234()
{
  result = qword_101189E38;
  if (!qword_101189E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101189E38);
  }

  return result;
}

uint64_t sub_1002B8288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002B82E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B1398(a1, v4, v5, v6);
}

uint64_t sub_1002B83AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1002B2810(a1, v4, v5, v6);
}

uint64_t sub_1002B8460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002AEB04(a1);
}

uint64_t sub_1002B850C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1002AE828(a1);
}

uint64_t sub_1002B85B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1002AE490(a1);
}

unint64_t sub_1002B8664()
{
  result = qword_10118ACD0;
  if (!qword_10118ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ACD0);
  }

  return result;
}

uint64_t sub_1002B86E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = result + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(a2, a3, a4);

      v8 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1002B8768(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
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

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
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

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1002CE7C4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1002B8A68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B8ABC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LaunchOptions.Source(0);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  strcpy(v21, "LaunchOptions(");
  HIBYTE(v21[1]) = -18;
  sub_1002CF480(v1, v8, type metadata accessor for LaunchOptions.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v10 = *v8;
    if (EnumCaseMultiPayload == 1)
    {
      strcpy(&v20, "Shortcut=");
      WORD1(v20._object) = 0;
      HIDWORD(v20._object) = -385875968;
      v11 = [v10 type];
    }

    else
    {
      strcpy(&v20, "UserActivity=");
      HIWORD(v20._object) = -4864;
      v11 = [v10 activityType];
    }

    v13 = v11;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    String.append(_:)(v20);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v20._countAndFlagsBits = 1028411989;
    v20._object = 0xE400000000000000;
    v12._countAndFlagsBits = URL.absoluteString.getter();
    String.append(_:)(v12);

    String.append(_:)(v20);

    (*(v3 + 8))(v5, v2);
  }

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v21[0];
}

id sub_1002B8D68(char *a1, uint64_t a2, void *a3)
{
  v494 = a3;
  v483 = a2;
  v5 = type metadata accessor for LaunchOptions.Kind(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v475 = &v450 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v455);
  v456 = (&v450 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10010FC20(&qword_101194980);
  v10 = __chkstk_darwin(v9 - 8);
  v453 = &v450 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v458 = &v450 - v13;
  v14 = __chkstk_darwin(v12);
  v452 = &v450 - v15;
  v16 = __chkstk_darwin(v14);
  v457 = &v450 - v17;
  v18 = __chkstk_darwin(v16);
  v460 = &v450 - v19;
  v20 = __chkstk_darwin(v18);
  v467 = (&v450 - v21);
  v22 = __chkstk_darwin(v20);
  v465 = &v450 - v23;
  v24 = __chkstk_darwin(v22);
  v466 = &v450 - v25;
  v26 = __chkstk_darwin(v24);
  v469 = &v450 - v27;
  __chkstk_darwin(v26);
  v480 = &v450 - v28;
  v479 = type metadata accessor for URLComponents();
  v478 = *(v479 - 8);
  v29 = __chkstk_darwin(v479);
  v459 = &v450 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v464 = &v450 - v32;
  v33 = __chkstk_darwin(v31);
  v468 = &v450 - v34;
  __chkstk_darwin(v33);
  v486 = &v450 - v35;
  v36 = type metadata accessor for URL();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v492 = &v450 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v474 = &v450 - v41;
  v42 = __chkstk_darwin(v40);
  v471 = &v450 - v43;
  v44 = __chkstk_darwin(v42);
  v470 = (&v450 - v45);
  v46 = __chkstk_darwin(v44);
  v461 = &v450 - v47;
  v48 = __chkstk_darwin(v46);
  object = &v450 - v49;
  v50 = __chkstk_darwin(v48);
  v472 = &v450 - v51;
  v52 = __chkstk_darwin(v50);
  v493 = &v450 - v53;
  v462 = v54;
  __chkstk_darwin(v52);
  v56 = &v450 - v55;
  v57 = sub_10010FC20(&qword_10118A240);
  v58 = __chkstk_darwin(v57 - 8);
  v485 = &v450 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v454 = &v450 - v61;
  __chkstk_darwin(v60);
  v63 = &v450 - v62;
  *(v3 + 16) = 7;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v64 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v65 = 0;
  v65[1] = 0;
  (*(v37 + 56))(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v36);
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  v482 = v6;
  v66 = *(v6 + 56);
  v490 = v63;
  v67 = v63;
  v68 = v37;
  v488 = v5;
  v477 = v6 + 56;
  v476 = v66;
  v66(v67, 1, 1, v5);
  v70 = v37 + 16;
  v69 = *(v37 + 16);
  v71 = a1;
  v69(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_source, a1, v36);
  type metadata accessor for LaunchOptions.Source(0);
  swift_storeEnumTagMultiPayload();
  v484 = v3;
  v72 = v494;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = v494;
  v73 = qword_10117F540;
  v481 = v72;
  if (v73 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  v75 = sub_1000060E4(v74, qword_101189E90);
  v69(v56, a1, v36);
  v69(v493, v56, v36);
  v463 = v68;
  v76 = *(v68 + 8);
  v76(v56, v36);
  v487 = v75;
  v77 = Logger.logObject.getter();
  v78 = v69;
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v77, v79);
  v494 = (v68 + 8);
  v491 = v76;
  v489 = v78;
  if (v80)
  {
    v81 = swift_slowAlloc();
    v451 = swift_slowAlloc();
    *&v501[0] = v451;
    *v81 = 136446210;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
    v82 = v493;
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = sub_1000105AC(v83, v84, v501);

    v86 = v81;
    *(v81 + 4) = v85;
    v76 = v491;
    v491(v82, v36);
    _os_log_impl(&_mh_execute_header, v77, v79, "Launched with %{public}s", v86, 0xCu);
    sub_10000959C(v451);
  }

  else
  {

    v76(v493, v36);
  }

  v87 = v480;
  v88 = URL.isSafariScriptURL.getter();
  v89 = v492;
  v90 = v486;
  v495 = v71;
  if (v88)
  {
    v91 = v472;
    v92 = v489;
    v489(v472, v71, v36);
    v93 = object;
    v92(object, v91, v36);
    v76(v91, v36);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v493 = v36;
      v97 = v96;
      v98 = swift_slowAlloc();
      *&v501[0] = v98;
      *v97 = 136446210;
      sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
      v99 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v70;
      v102 = v76;
      v103 = sub_1000105AC(v99, v100, v501);

      *(v97 + 4) = v103;
      v102(v93, v493);
      v70 = v101;
      _os_log_impl(&_mh_execute_header, v94, v95, "Handled -> %{public}s", v97, 0xCu);
      sub_10000959C(v98);

      v36 = v493;
    }

    else
    {
      v76(v93, v36);
    }

    v108 = v490;
    sub_1000095E8(v490, &qword_10118A240);
    v107 = v488;
    v110 = v476;
    v92(v108, v495, v36);
    swift_storeEnumTagMultiPayload();
    v110(v108, 0, 1, v107);
    v109 = v485;
    v89 = v492;
    goto LABEL_32;
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v104 = v478;
  v105 = *(v478 + 48);
  v106 = v479;
  if (v105(v87, 1, v479) == 1)
  {
    sub_1000095E8(v87, &qword_101194980);
    v107 = v488;
    v108 = v490;
LABEL_11:
    v109 = v485;
    goto LABEL_32;
  }

  v111 = v89;
  v493 = v36;
  v112 = *(v104 + 32);
  v112(v90, v87, v106);
  URLComponents.scheme.getter();
  if (!v113)
  {
    (*(v104 + 8))(v90, v106);
    goto LABEL_31;
  }

  v114 = String.lowercased()();

  v115 = sub_1002CF1C4(v114);
  if (v115 == 4 || (v116 = v115, object = v114._object, v117 = URLComponents.host.getter(), !v118))
  {
    (*(v478 + 8))(v90, v479);

    goto LABEL_31;
  }

  v119 = v118;
  v120 = v116;
  if (v116 > 1u)
  {
    v159 = v495;
    if (v120 != 2)
    {
      goto LABEL_265;
    }

    v160 = v117;

    URL._bridgeToObjectiveC()(v161);
    v163 = v162;
    v164 = [v162 searchResultIdentifier];

    v36 = v493;
    if (v164)
    {
      v165 = [v164 unsignedLongLongValue];

      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      v168 = os_log_type_enabled(v166, v167);
      v169 = v492;
      if (v168)
      {
        v170 = swift_slowAlloc();
        *&v501[0] = swift_slowAlloc();
        *v170 = 136446722;
        *(v170 + 4) = sub_1000105AC(0x686372616573, 0xE600000000000000, v501);
        *(v170 + 12) = 2082;

        v171 = sub_1000105AC(v160, v119, v501);

        *(v170 + 14) = v171;
        swift_bridgeObjectRelease_n();
        *(v170 + 22) = 2050;
        *(v170 + 24) = v165;

        _os_log_impl(&_mh_execute_header, v166, v167, "Handled %{public}s %{public}s %{public}llu", v170, 0x20u);
        swift_arrayDestroy();

        v36 = v493;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v478 + 8))(v486, v479);
      v108 = v490;
      sub_1000095E8(v490, &qword_10118A240);
      v107 = v488;
      v109 = v485;
      v194 = swift_allocObject();
      *(v194 + 16) = v165;
      *v108 = sub_1002CF210;
      *(v108 + 1) = v194;
      swift_storeEnumTagMultiPayload();
      v476(v108, 0, 1, v107);
      v89 = v169;
    }

    else
    {

      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      v179 = os_log_type_enabled(v177, v178);
      v180 = v490;
      v181 = v492;
      v109 = v485;
      v182 = v486;
      if (v179)
      {
        v183 = swift_slowAlloc();
        *v183 = 0;
        _os_log_impl(&_mh_execute_header, v177, v178, "Unable to resolve item PID", v183, 2u);
        v36 = v493;
      }

      (*(v478 + 8))(v182, v479);
      v89 = v181;
      v108 = v180;
      v107 = v488;
    }

LABEL_32:
    sub_1000089F8(v108, v109, &qword_10118A240);
    if ((*(v482 + 48))(v109, 1, v107) == 1)
    {
      sub_1000095E8(v109, &qword_10118A240);
      v136 = v474;
      v137 = v495;
      v138 = v489;
      v489(v474, v495, v36);
      v480 = v70;
      v138(v89, v136, v36);
      v139 = v491;
      v491(v136, v36);
      v140 = Logger.logObject.getter();
      v141 = v89;
      v142 = static os_log_type_t.default.getter();
      v143 = os_log_type_enabled(v140, v142);
      v144 = v483;
      if (v143)
      {
        v145 = swift_slowAlloc();
        v493 = v36;
        v146 = v145;
        v147 = swift_slowAlloc();
        *&v498 = v147;
        *v146 = 136446210;
        sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
        v148 = dispatch thunk of CustomStringConvertible.description.getter();
        v150 = sub_1000105AC(v148, v149, &v498);

        *(v146 + 4) = v150;
        v139(v141, v493);
        _os_log_impl(&_mh_execute_header, v140, v142, "Passing to resolver %{public}s", v146, 0xCu);
        sub_10000959C(v147);
        v138 = v489;
        v137 = v495;

        v36 = v493;
        v151 = v481;
      }

      else
      {

        v139(v141, v36);
        v151 = v481;
      }

      v153 = v484;
      v138((v484 + OBJC_IVAR____TtC5Music13LaunchOptions_kind), v137, v36);
      swift_storeEnumTagMultiPayload();
      v108 = v490;
      if (!v144)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v152 = v475;
      sub_1002CF4E8(v109, v475, type metadata accessor for LaunchOptions.Kind);
      v153 = v484;
      sub_1002CF4E8(v152, v484 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      v144 = v483;
      v139 = v491;
      v151 = v481;
      if (!v483)
      {
LABEL_39:

        goto LABEL_40;
      }
    }

    v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002C9C20(v144, v154, v155);

    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1002C9D6C(v144, v156, v157);

LABEL_40:
    v139(v495, v36);
    sub_1000095E8(v108, &qword_10118A240);
    return v153;
  }

  if (!v116)
  {
    v121 = v117;
    v122 = v118;

    URL.query.getter();
    v123 = v490;
    v89 = v111;
    if (!v124)
    {
LABEL_73:

      v203 = Logger.logObject.getter();
      v204 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v203, v204))
      {
        v205 = swift_slowAlloc();
        *&v501[0] = swift_slowAlloc();
        *v205 = 136446466;
        *(v205 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v501);
        *(v205 + 12) = 2082;

        v206 = sub_1000105AC(v121, v122, v501);

        *(v205 + 14) = v206;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v203, v204, "Ignored %{public}s %{public}s", v205, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v478 + 8))(v486, v479);
      v107 = v488;
      v36 = v493;
      v109 = v485;
      v108 = v123;
      goto LABEL_32;
    }

    v480 = v70;
    v125 = String._bridgeToObjectiveC()();
    v126 = [v125 queryKeysAndValues];

    if (v126)
    {
      v127 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v496 = 0x646D636975;
      v497 = 0xE500000000000000;
      AnyHashable.init<A>(_:)();
      sub_1004075E8(v501, v127, &v498);

      sub_10001621C(v501);
      if (*(&v499 + 1))
      {
        if (swift_dynamicCast())
        {
          v129 = v496;
          v128 = v497;
          v108 = v123;
          if (v496 == 0xD000000000000017 && 0x8000000100E451C0 == v497 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            swift_bridgeObjectRetain_n();
            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = swift_slowAlloc();
              *&v501[0] = swift_slowAlloc();
              *v132 = 136446466;
              *(v132 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v501);
              *(v132 + 12) = 2082;

              v133 = sub_1000105AC(v129, v128, v501);

              *(v132 + 14) = v133;
              swift_bridgeObjectRelease_n();

              _os_log_impl(&_mh_execute_header, v130, v131, "Handled %{public}s %{public}s", v132, 0x16u);
              swift_arrayDestroy();
              v134 = v490;

              v108 = v134;

              (*(v478 + 8))(v486, v479);
              v135 = v134;
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v478 + 8))(v486, v479);
              v135 = v123;
            }

            sub_1000095E8(v135, &qword_10118A240);
            v89 = v492;
            v70 = v480;
            v109 = v485;
            *v108 = sub_1002BE694;
            *(v108 + 1) = 0;
            v107 = v488;
            swift_storeEnumTagMultiPayload();
            v476(v108, 0, 1, v107);
            v36 = v493;
            goto LABEL_32;
          }

          swift_bridgeObjectRetain_n();

          v226 = Logger.logObject.getter();
          v227 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v226, v227))
          {
            v228 = swift_slowAlloc();
            LODWORD(v477) = v227;
            v229 = v228;
            *&v501[0] = swift_slowAlloc();
            *v229 = 136446722;
            *(v229 + 4) = sub_1000105AC(0xD000000000000012, 0x8000000100E3C050, v501);
            *(v229 + 12) = 2082;

            v230 = sub_1000105AC(v121, v122, v501);

            *(v229 + 14) = v230;
            swift_bridgeObjectRelease_n();
            *(v229 + 22) = 2082;

            v231 = sub_1000105AC(v129, v128, v501);

            *(v229 + 24) = v231;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v226, v477, "Ignored %{public}s %{public}s %{public}s", v229, 0x20u);
            swift_arrayDestroy();
            v232 = v490;

            v108 = v232;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v478 + 8))(v486, v479);
          v107 = v488;
          goto LABEL_119;
        }
      }

      else
      {

        sub_1000095E8(&v498, &unk_101183F30);
      }

      v89 = v492;
      v70 = v480;
      goto LABEL_73;
    }

    __break(1u);
    goto LABEL_243;
  }

  v172 = v117;
  v173 = v479;
  if (v117 == 6447476 && v118 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v472 = v119;

    v174 = v469;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v175 = v105(v174, 1, v173);
    v176 = v172;
    if (v175 == 1)
    {
      sub_1000095E8(v174, &qword_101194980);
LABEL_80:
      v207 = v472;

      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *&v501[0] = swift_slowAlloc();
        *v210 = 136446466;
        *(v210 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
        *(v210 + 12) = 2082;

        v211 = sub_1000105AC(v176, v207, v501);

        *(v210 + 14) = v211;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v208, v209, "Ignored %{public}s %{public}s", v210, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      (*(v478 + 8))(v90, v479);
      v107 = v488;
      v36 = v493;
      v109 = v485;
      v89 = v111;
      v108 = v490;
      goto LABEL_32;
    }

    v184 = v468;
    v112(v468, v174, v173);
    v185 = URLComponents.queryItemsDictionary.getter();
    if (!v185)
    {
      (*(v478 + 8))(v184, v173);
      goto LABEL_80;
    }

    v186 = v185;
    v187 = v172;
    v188 = sub_100407584(6447476, 0xE300000000000000, v185);
    v190 = v478;
    if (!v189)
    {
      (*(v478 + 8))(v184, v479);
      goto LABEL_79;
    }

    v191 = v188;
    v192 = v189;

    v503._countAndFlagsBits = v191;
    v503._object = v192;
    v193 = sub_10003F3A8(v503);
    if (v193 == 7)
    {
      (*(v190 + 8))(v184, v479);

LABEL_79:

      v176 = v187;
      goto LABEL_80;
    }

    v212 = v193;

    swift_bridgeObjectRetain_n();
    v213 = Logger.logObject.getter();
    v214 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v215 = 136446466;
      *(v215 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v215 + 12) = 2082;

      v216 = sub_1000105AC(v191, v192, v501);

      *(v215 + 14) = v216;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v213, v214, "Handled %{public}s tab=%{public}s", v215, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v238 = swift_allocBox();
    v471 = v239;
    swift_storeEnumTagMultiPayload();
    v240 = sub_100017984(v212, 0);
    v241 = v479;
    if (v240)
    {
      v480 = v70;
      v242 = sub_100407584(0x2D7972617262696CLL, 0xEC000000756E656DLL, v186);
      if (v243)
      {
        v244 = v242;
        v245 = v243;

        v504._countAndFlagsBits = v244;
        v504._object = v245;
        v246 = sub_1002CF218(v504);
        if (v246 != 13)
        {
          v263 = v246;
          swift_bridgeObjectRetain_n();
          v264 = Logger.logObject.getter();
          v265 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v264, v265))
          {
            v266 = swift_slowAlloc();
            v470 = swift_slowAlloc();
            *&v501[0] = v470;
            *v266 = 136446466;
            *(v266 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
            *(v266 + 12) = 2082;

            v267 = sub_1000105AC(v244, v245, v501);

            *(v266 + 14) = v267;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v264, v265, "Handled %{public}s library-menu=%{public}s", v266, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v268 = *(v478 + 8);
          v269 = v479;
          v268(v468, v479);
          v268(v486, v269);
          v260 = v490;
          sub_1000095E8(v490, &qword_10118A240);
          v270 = v471;
          sub_1002CF550(v471, type metadata accessor for AppInterfaceContext.Activity.Destination);
          *v270 = v263;
          v111 = v492;
          v70 = v480;
          v109 = v485;
          v262 = v476;
          goto LABEL_134;
        }

        v247 = v238;
        v248 = v212;
      }

      else
      {
        v247 = v238;
        v248 = v212;
      }

      v111 = v492;
      v70 = v480;
    }

    else
    {
      v247 = v238;
      v248 = v212;
    }

    v258 = v486;

    v259 = *(v478 + 8);
    v259(v468, v241);
    v259(v258, v241);
    v260 = v490;
    sub_1000095E8(v490, &qword_10118A240);
    v261 = v471;
    sub_1002CF550(v471, type metadata accessor for AppInterfaceContext.Activity.Destination);
    *v261 = v248;
    v261[1] = 1;
    v109 = v485;
    v262 = v476;
    v238 = v247;
LABEL_134:
    swift_storeEnumTagMultiPayload();
    *v260 = sub_1002CF478;
    v260[1] = v238;
    v107 = v488;
    swift_storeEnumTagMultiPayload();
    v262(v260, 0, 1, v107);
    v36 = v493;
    v89 = v111;
    v108 = v260;
    goto LABEL_32;
  }

  if (v172 == 0x6C70736964726163 && v119 == 0xEA00000000007961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v105 = v172;

    v196 = URL.lastPathComponent.getter();
    v197 = v195;
    if (v196 == 0xD000000000000010 && 0x8000000100E442B0 == v195 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      URL.query.getter();
      if (!v198)
      {
        goto LABEL_112;
      }

      v199 = String._bridgeToObjectiveC()();
      v200 = [v199 queryKeysAndValues];

      if (v200)
      {

        v201 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v496 = 0x6574616D696E61;
        v497 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        sub_1004075E8(v501, v201, &v498);

        sub_10001621C(v501);
        if (*(&v499 + 1))
        {
          if (swift_dynamicCast())
          {
            v202 = String.BOOLValue.getter();

LABEL_113:
            swift_bridgeObjectRetain_n();
            v249 = Logger.logObject.getter();
            v250 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v249, v250))
            {
              v251 = swift_slowAlloc();
              *&v501[0] = swift_slowAlloc();
              *v251 = 136446722;
              *(v251 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
              *(v251 + 12) = 2082;

              v252 = sub_1000105AC(v196, v197, v501);

              *(v251 + 14) = v252;
              swift_bridgeObjectRelease_n();
              *(v251 + 22) = 1026;
              *(v251 + 24) = v202 & 1;

              _os_log_impl(&_mh_execute_header, v249, v250, "Handled %{public}s %{public}s animate=%{BOOL,public}d", v251, 0x1Cu);
              swift_arrayDestroy();

              (*(v478 + 8))(v486, v479);
            }

            else
            {

              swift_bridgeObjectRelease_n();

              (*(v478 + 8))(v90, v479);
            }

            v253 = v490;
            sub_1000095E8(v490, &qword_10118A240);
            v36 = v493;
            v109 = v485;
            v254 = swift_allocObject();
            *(v254 + 16) = v202 & 1;
            *v253 = sub_1002CF470;
            v253[1] = v254;
            v107 = v488;
            swift_storeEnumTagMultiPayload();
            v476(v253, 0, 1, v107);
            v89 = v111;
            v108 = v253;
            goto LABEL_32;
          }
        }

        else
        {
          sub_1000095E8(&v498, &unk_101183F30);
        }

LABEL_112:
        v202 = 1;
        goto LABEL_113;
      }

      __break(1u);
LABEL_259:
      v159 = v495;
      v119 = v472;
      if (v480 == 0x78696D6F747561 && v472 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
      {

        v404 = v458;
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v405 = v453;
        sub_1000089F8(v404, v453, &qword_101194980);
        if (v105(v405, 1, v479) == 1)
        {
          sub_1000095E8(v453, &qword_101194980);
        }

        else
        {
          v428 = v453;
          v429 = URLComponents.queryItemsDictionary.getter();
          v430 = *(v478 + 8);
          v430(v428, v479);
          if (v429)
          {

            v431 = sub_100407584(0x676E696F6774756FLL, 0xE800000000000000, v429);
            v433 = v432;

            if (v433)
            {
              v434 = sub_100407584(0x676E696D6F636E69, 0xE800000000000000, v429);
              v436 = v435;

              if (v436)
              {
                v437 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
                sub_10010FC20(&unk_101181640);
                v438 = swift_allocObject();
                *(v438 + 16) = xmmword_100EBDC20;
                *(v438 + 32) = v431;
                *(v438 + 40) = v433;
                *(v438 + 48) = v434;
                *(v438 + 56) = v436;
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v437 setStoreIDs:isa];

                v440 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
                [v440 setRequest:v437];
                v441 = [objc_allocWithZone(MPCPlaybackIntent) init];
                [v441 setTracklistToken:v440];
                [v441 setTracklistSource:3];
                [v441 setShuffleMode:0];
                v442 = v456;
                *v456 = v441;
                swift_storeEnumTagMultiPayload();
                v502 = 0;
                memset(v501, 0, sizeof(v501));
                v500 = 0;
                v498 = 0u;
                v499 = 0u;
                v443 = v441;
                v444 = v454;
                PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v442, v501, 3, 0, 0, 1, 0, 1, v454, 0, &v498);

                sub_1000095E8(v458, &qword_101194980);
                v430(v486, v479);
                v108 = v490;
                sub_1000095E8(v490, &qword_10118A240);
                v445 = v488;
                swift_storeEnumTagMultiPayload();
                v476(v444, 0, 1, v445);
                v446 = v444;
                v107 = v445;
                sub_10003D17C(v446, v108, &qword_10118A240);
                v36 = v493;
                goto LABEL_270;
              }
            }
          }
        }

        v447 = Logger.logObject.getter();
        v448 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v447, v448))
        {
          v449 = swift_slowAlloc();
          *&v498 = 0;
          v496 = 0;
          *v449 = 0;
          *&v501[0] = v449 + 2;
          sub_1002B86E0(_swiftEmptyArrayStorage, v501, &v498, &v496);
          _os_log_impl(&_mh_execute_header, v447, v448, "Unable to get song IDs from URL", v449, 2u);
        }

        sub_1000095E8(v458, &qword_101194980);
        goto LABEL_104;
      }

LABEL_265:
      v472 = v119;
      v406 = v470;
      v36 = v493;
      v407 = v489;
      v489(v470, v159, v493);
      v408 = v471;
      v407(v471, v406, v36);
      v409 = v491;
      v491(v406, v36);
      v410 = Logger.logObject.getter();
      v411 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v410, v411))
      {
        v412 = swift_slowAlloc();
        v413 = swift_slowAlloc();
        *&v501[0] = v413;
        *v412 = 136446210;
        sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
        v414 = dispatch thunk of CustomStringConvertible.description.getter();
        v416 = sub_1000105AC(v414, v415, v501);

        *(v412 + 4) = v416;

        v409(v408, v493);
        _os_log_impl(&_mh_execute_header, v410, v411, "Unresolved kind for URL %{public}s.", v412, 0xCu);
        sub_10000959C(v413);

        v36 = v493;
      }

      else
      {

        v409(v408, v36);
      }

      (*(v478 + 8))(v486, v479);
      v107 = v488;
      goto LABEL_269;
    }

    swift_bridgeObjectRetain_n();

    v233 = Logger.logObject.getter();
    v234 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v233, v234))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      (*(v478 + 8))(v90, v479);
      goto LABEL_122;
    }

    v235 = swift_slowAlloc();
    *&v501[0] = swift_slowAlloc();
    *v235 = 136446722;
    *(v235 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
    *(v235 + 12) = 2082;

    v236 = sub_1000105AC(v105, v119, v501);

    *(v235 + 14) = v236;
    swift_bridgeObjectRelease_n();
    *(v235 + 22) = 2082;

    v237 = sub_1000105AC(v196, v197, v501);

    *(v235 + 24) = v237;
    swift_bridgeObjectRelease_n();

    _os_log_impl(&_mh_execute_header, v233, v234, "Ignored %{public}s %{public}s %{public}s", v235, 0x20u);
    swift_arrayDestroy();

    goto LABEL_103;
  }

  if (v172 == 0x73636972796CLL && v119 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v217 = v172;
    v480 = v70;

    v219 = URL.lastPathComponent.getter();
    v220 = v218;
    if (v219 == 0x79616C702D776F6ELL && v218 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v219 == 0x6979616C70776F6ELL && v220 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();

      v221 = Logger.logObject.getter();
      v222 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v221, v222))
      {
        v223 = swift_slowAlloc();
        *&v501[0] = swift_slowAlloc();
        *v223 = 136446722;
        *(v223 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
        *(v223 + 12) = 2082;

        v224 = sub_1000105AC(v217, v119, v501);

        *(v223 + 14) = v224;
        swift_bridgeObjectRelease_n();
        *(v223 + 22) = 2082;

        v225 = sub_1000105AC(v219, v220, v501);

        *(v223 + 24) = v225;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v221, v222, "Handled %{public}s %{public}s %{public}s", v223, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v478 + 8))(v90, v479);
      v108 = v490;
      sub_1000095E8(v490, &qword_10118A240);
      v107 = v488;
      v36 = v493;
      v109 = v485;
      *v108 = 1;
      swift_storeEnumTagMultiPayload();
      v476(v108, 0, 1, v107);
      v89 = v492;
      v70 = v480;
      goto LABEL_32;
    }

    if (v219 == 0x6C61646F6DLL && v220 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v275 = URLComponents.queryItemsDictionary.getter();
      if (v275)
      {
        sub_100407584(0x64692D65726F7473, 0xE800000000000000, v275);
        if (v276)
        {

          v471 = MusicItemID.init(_:)();
          v278 = v277;
          swift_bridgeObjectRetain_n();

          v279 = Logger.logObject.getter();
          v280 = static os_log_type_t.default.getter();
          v470 = v279;
          if (os_log_type_enabled(v279, v280))
          {
            v281 = swift_slowAlloc();
            v469 = swift_slowAlloc();
            *&v501[0] = v469;
            *v281 = 136446722;
            *(v281 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
            *(v281 + 12) = 2082;

            v282 = sub_1000105AC(v217, v119, v501);

            *(v281 + 14) = v282;
            swift_bridgeObjectRelease_n();
            *(v281 + 22) = 2082;

            v283 = MusicItemID.description.getter();
            v285 = v284;

            v286 = sub_1000105AC(v283, v285, v501);

            *(v281 + 24) = v286;
            swift_bridgeObjectRelease_n();

            v287 = v470;
            _os_log_impl(&_mh_execute_header, v470, v280, "Handled %{public}s %{public}s %{public}s", v281, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v478 + 8))(v486, v479);
          sub_1000095E8(v490, &qword_10118A240);
          v338 = swift_allocObject();
          *(v338 + 16) = v471;
          *(v338 + 24) = v278;
          v108 = v490;
          *v490 = sub_1002CF468;
          *(v108 + 1) = v338;
          v107 = v488;
          swift_storeEnumTagMultiPayload();
          v476(v108, 0, 1, v107);
LABEL_119:
          v36 = v493;
LABEL_120:
          v89 = v492;
          v70 = v480;
          goto LABEL_11;
        }
      }
    }

    swift_bridgeObjectRetain_n();

    v332 = Logger.logObject.getter();
    v333 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v332, v333))
    {
      v334 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v334 = 136446722;
      *(v334 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v334 + 12) = 2082;

      v335 = sub_1000105AC(v217, v119, v501);

      *(v334 + 14) = v335;
      swift_bridgeObjectRelease_n();
      *(v334 + 22) = 2082;

      v336 = sub_1000105AC(v219, v220, v501);

      *(v334 + 24) = v336;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v332, v333, "Ignored %{public}s %{public}s %{public}s", v334, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    (*(v478 + 8))(v486, v479);
LABEL_196:
    v107 = v488;
    v36 = v493;
    v108 = v490;
    goto LABEL_120;
  }

  if (v172 == 0x6B63756C746F70 && v119 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    LOBYTE(v501[0]) = 0;
    v255 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v255))
    {
      v480 = v70;
      v256 = v466;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v257 = v479;
      if (v105(v256, 1, v479) == 1)
      {

        (*(v478 + 8))(v486, v257);
        sub_1000095E8(v256, &qword_101194980);
        goto LABEL_196;
      }

      v112(v464, v256, v257);
      v288 = URLComponents.queryItemsDictionary.getter();
      if (v288)
      {
        v289 = v288;
        sub_100407584(25705, 0xE200000000000000, v288);
        if (v290)
        {
          sub_100407584(7955819, 0xE300000000000000, v289);
          v292 = v291;

          if (v292)
          {
            v293 = String._bridgeToObjectiveC()();

            v294 = String._bridgeToObjectiveC()();

            v295 = [objc_opt_self() propertiesWithSessionIdentifier:v293 sessionKey:v294];

            sub_100009F78(0, &unk_10118A248);
            v296 = sub_1002C0CEC(UIScreen.Dimensions.size.getter, 0);
            v297 = [objc_opt_self() sharedSessionIntentWithProperties:v295 identity:v296];

            v298 = *(v478 + 8);
            v299 = v479;
            v298(v464, v479);
            v298(v486, v299);
            v107 = v488;
            v89 = v492;
            v36 = v493;
            v108 = v490;
            v70 = v480;
            v109 = v485;
            if (!v297)
            {
              goto LABEL_32;
            }

            sub_1000095E8(v490, &qword_10118A240);
            v300 = v461;
            v489(v461, v495, v36);
            v301 = v107;
            v302 = v463;
            v303 = (*(v463 + 80) + 24) & ~*(v463 + 80);
            v304 = swift_allocObject();
            *(v304 + 16) = v297;
            v305 = v304 + v303;
            v36 = v493;
            (*(v302 + 32))(v305, v300, v493);
            v107 = v301;
            *v108 = sub_1002CF3F4;
            *(v108 + 1) = v304;
            swift_storeEnumTagMultiPayload();
            v306 = v108;
            v307 = v301;
            goto LABEL_157;
          }
        }
      }

      v339 = *(v478 + 8);
      v340 = v479;
      v339(v464, v479);
      v339(v486, v340);
      goto LABEL_196;
    }

    (*(v478 + 8))(v90, v479);
LABEL_31:
    v107 = v488;
    v36 = v493;
    v109 = v485;
    v89 = v111;
    v108 = v490;
    goto LABEL_32;
  }

  v480 = v172;
  if (v172 == 0x696C646572616873 && v119 == 0xEF676E696E657473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v271 = Logger.logObject.getter();
    v272 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v273 = 136446466;
      *(v273 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v273 + 12) = 2082;

      v274 = sub_1000105AC(v480, v119, v501);

      *(v273 + 14) = v274;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v271, v272, "Handled %{public}s %{public}s sharedlistening", v273, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v308 = v465;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v309 = v308;
    v310 = v467;
    sub_1000089F8(v309, v467, &qword_101194980);
    if (v105(v310, 1, v479) == 1)
    {

      sub_1000095E8(v465, &qword_101194980);
      (*(v478 + 8))(v486, v479);
      sub_1000095E8(v490, &qword_10118A240);
      v311 = v467;
      v312 = &qword_101194980;
    }

    else
    {
      v313 = v467;
      v314 = URLComponents.queryItemsDictionary.getter();
      v315 = *(v478 + 8);
      v315(v313, v479);
      if (v314)
      {
        sub_100407584(0x72656C61776F6873, 0xE900000000000074, v314);
        v317 = v316;

        if (v317)
        {
          v318 = String.BOOLValue.getter();

          if (v318)
          {
            if (qword_10117F600 != -1)
            {
              swift_once();
            }

            v319 = qword_101218AD0;

            sub_1000095E8(v465, &qword_101194980);
            v315(v486, v479);
            sub_1000095E8(v490, &qword_10118A240);
            swift_beginAccess();
            v320 = v319[8];
            if (v320 != 1)
            {
              v322 = v319[9];
              v321 = v319[10];
              v323 = v319[7];
              v324 = swift_allocObject();
              v324[2] = v323;
              v324[3] = v320;
              v324[4] = v322;
              v324[5] = v321;
              v325 = v490;
              *v490 = sub_1002CF3E8;
              v325[1] = v324;
              swift_storeEnumTagMultiPayload();

LABEL_171:
              v108 = v490;
              v326 = v490;
              v107 = v488;
LABEL_191:
              v476(v326, 0, 1, v107);
              v36 = v493;
LABEL_270:
              v89 = v492;
              goto LABEL_11;
            }

LABEL_170:
            *v490 = 2;
            swift_storeEnumTagMultiPayload();
            goto LABEL_171;
          }
        }
      }

      sub_1000095E8(v465, &qword_101194980);
      v315(v486, v479);
      v312 = &qword_10118A240;
      v311 = v490;
    }

    sub_1000095E8(v311, v312);
    goto LABEL_170;
  }

  v472 = v119;
  if (v480 == 0xD000000000000010 && 0x8000000100E442B0 == v472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v480 == 0x70776F6E776F6873 && v472 == 0xEE00676E6979616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v327 = Logger.logObject.getter();
    v328 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v327, v328))
    {
      v329 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v329 = 136446466;
      *(v329 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v329 + 12) = 2082;
      v330 = v472;

      v331 = sub_1000105AC(v480, v330, v501);

      *(v329 + 14) = v331;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v327, v328, "Handled %{public}s %{public}s shownowplaying", v329, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v478 + 8))(v486, v479);
    sub_1000095E8(v490, &qword_10118A240);
    v337 = 5;
LABEL_189:
    v108 = v490;
    *v490 = v337;
    v107 = v488;
LABEL_190:
    swift_storeEnumTagMultiPayload();
    v326 = v108;
    goto LABEL_191;
  }

  if (v480 == 0x72616873776F6873 && v472 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_bridgeObjectRetain_n();
    v341 = Logger.logObject.getter();
    v342 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v341, v342))
    {
      v343 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v343 = 136446466;
      *(v343 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v343 + 12) = 2082;
      v344 = v472;

      v345 = sub_1000105AC(v480, v344, v501);

      *(v343 + 14) = v345;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v341, v342, "Handled %{public}s %{public}s showsharing", v343, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v478 + 8))(v486, v479);
    sub_1000095E8(v490, &qword_10118A240);
    v337 = 3;
    goto LABEL_189;
  }

  if ((v480 != 0x61636F4C776F6873 || v472 != 0xE90000000000006CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v480 == 0x73655370756F7267 && v472 == 0xEC0000006E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (URL.lastPathComponent.getter() == 0x73676E6974746573 && v355 == 0xE800000000000000)
      {

        (*(v478 + 8))(v486, v479);
        v107 = v488;
        v89 = v492;
        v36 = v493;
        v108 = v490;
        v109 = v485;
      }

      else
      {
        v356 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*(v478 + 8))(v486, v479);
        v107 = v488;
        v89 = v492;
        v36 = v493;
        v108 = v490;
        v109 = v485;
        if ((v356 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      sub_1000095E8(v108, &qword_10118A240);
      swift_storeEnumTagMultiPayload();
      v306 = v108;
      v307 = v107;
LABEL_157:
      v476(v306, 0, 1, v307);
      goto LABEL_32;
    }

    if ((v480 != 0x7473696C79616C70 || v472 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v480 == 0x686372616573 && v472 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v386 = v457;
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        v387 = v386;
        v388 = v452;
        sub_1000089F8(v387, v452, &qword_101194980);
        if (v105(v388, 1, v479) == 1)
        {
          sub_1000095E8(v452, &qword_101194980);
          LODWORD(v470) = 0;
          v471 = 0;
          v389 = 0;
        }

        else
        {
          v399 = v452;
          v400 = URLComponents.queryItemsDictionary.getter();
          (*(v478 + 8))(v399, v479);
          if (v400)
          {

            v471 = sub_100407584(1836213620, 0xE400000000000000, v400);
            v389 = v401;

            sub_100407584(0x636F6C6563726F66, 0xEA00000000006C61, v400);
            v403 = v402;

            if (v403)
            {
              LODWORD(v470) = String.BOOLValue.getter();
            }

            else
            {
              LODWORD(v470) = 0;
            }
          }

          else
          {
            LODWORD(v470) = 0;
            v471 = 0;
            v389 = 0;
          }
        }

        swift_bridgeObjectRetain_n();

        v417 = Logger.logObject.getter();
        v418 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v417, v418))
        {
          v419 = swift_slowAlloc();
          v469 = swift_slowAlloc();
          *&v498 = v469;
          *v419 = 136446978;
          *(v419 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, &v498);
          *(v419 + 12) = 2082;
          v420 = v472;

          v421 = sub_1000105AC(v480, v420, &v498);

          *(v419 + 14) = v421;
          swift_bridgeObjectRelease_n();
          *(v419 + 22) = 2082;
          *&v501[0] = v471;
          *(&v501[0] + 1) = v389;

          sub_10010FC20(&qword_1011815E0);
          v422 = String.init<A>(describing:)();
          v424 = sub_1000105AC(v422, v423, &v498);

          *(v419 + 24) = v424;
          swift_bridgeObjectRelease_n();
          *(v419 + 32) = 2082;
          if (v470)
          {
            v425 = 1702195828;
          }

          else
          {
            v425 = 0x65736C6166;
          }

          if (v470)
          {
            v426 = 0xE400000000000000;
          }

          else
          {
            v426 = 0xE500000000000000;
          }

          v427 = sub_1000105AC(v425, v426, &v498);

          *(v419 + 34) = v427;

          _os_log_impl(&_mh_execute_header, v417, v418, "Handled %{public}s %{public}s term=%{public}s forceLocal=%{public}s", v419, 0x2Au);
          swift_arrayDestroy();
        }

        else
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        sub_1000095E8(v457, &qword_101194980);
        (*(v478 + 8))(v486, v479);
        sub_1000095E8(v490, &qword_10118A240);
        *(v484 + 16) = 4;
        v108 = v490;
        *v490 = v471;
        *(v108 + 1) = v389;
        v108[16] = v470 & 1;
        v107 = v488;
        goto LABEL_190;
      }

      goto LABEL_259;
    }

    v374 = URL.lastPathComponent.getter();
    v375 = v373;
    if (v374 == 7824750 && v373 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_bridgeObjectRetain_n();

      v126 = Logger.logObject.getter();
      v376 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v126, v376))
      {
        v377 = swift_slowAlloc();
        *&v501[0] = swift_slowAlloc();
        *v377 = 136446722;
        *(v377 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
        *(v377 + 12) = 2082;
        v378 = v472;

        v379 = sub_1000105AC(v480, v378, v501);

        *(v377 + 14) = v379;
        swift_bridgeObjectRelease_n();
        *(v377 + 22) = 2082;

        v380 = sub_1000105AC(v374, v375, v501);

        *(v377 + 24) = v380;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v126, v376, "Handled %{public}s %{public}s %{public}s", v377, 0x20u);
        swift_arrayDestroy();

LABEL_244:

        (*(v478 + 8))(v486, v479);
        sub_1000095E8(v490, &qword_10118A240);
        v108 = v490;
        *v490 = sub_1002C19FC;
        *(v108 + 1) = 0;
        v107 = v488;
        goto LABEL_190;
      }

LABEL_243:

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      goto LABEL_244;
    }

    swift_bridgeObjectRetain_n();

    v233 = Logger.logObject.getter();
    v390 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v233, v390))
    {
      v391 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v391 = 136446722;
      *(v391 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v391 + 12) = 2082;
      v392 = v472;

      v393 = sub_1000105AC(v480, v392, v501);

      *(v391 + 14) = v393;
      swift_bridgeObjectRelease_n();
      *(v391 + 22) = 2082;

      v394 = sub_1000105AC(v374, v375, v501);

      *(v391 + 24) = v394;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v233, v390, "Ignored %{public}s %{public}s %{public}s", v391, 0x20u);
      swift_arrayDestroy();

LABEL_103:

LABEL_104:
      (*(v478 + 8))(v486, v479);
LABEL_122:
      v107 = v488;
      v36 = v493;
LABEL_269:
      v108 = v490;
      goto LABEL_270;
    }

    swift_bridgeObjectRelease_n();
LABEL_241:
    swift_bridgeObjectRelease_n();

    goto LABEL_104;
  }

  v346 = v460;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (v105(v346, 1, v479) == 1)
  {
    sub_1000095E8(v460, &qword_101194980);
LABEL_238:

    v381 = Logger.logObject.getter();
    v382 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v381, v382))
    {
      v383 = swift_slowAlloc();
      *&v501[0] = swift_slowAlloc();
      *v383 = 136446466;
      *(v383 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
      *(v383 + 12) = 2082;
      v384 = v472;

      v385 = sub_1000105AC(v480, v384, v501);

      *(v383 + 14) = v385;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&_mh_execute_header, v381, v382, "Ignored %{public}s %{public}s", v383, 0x16u);
      swift_arrayDestroy();

      goto LABEL_104;
    }

    goto LABEL_241;
  }

  v112(v459, v460, v479);
  v347 = URLComponents.queryItemsDictionary.getter();
  if (!v347)
  {
    (*(v478 + 8))(v459, v479);
    goto LABEL_238;
  }

  v348 = v347;
  v349 = sub_100407584(6580592, 0xE300000000000000, v347);
  if (!v350)
  {
    (*(v478 + 8))(v459, v479);
LABEL_237:

    goto LABEL_238;
  }

  v351 = v349;
  v352 = v350;

  v353 = sub_1002B8768(v351, v352);
  if (v354 & 1) != 0 || (v357 = v353, v358 = sub_100407584(1701869940, 0xE400000000000000, v348), v360 = sub_1002CF264(v358, v359), (v361))
  {
LABEL_236:
    (*(v478 + 8))(v459, v479);

    goto LABEL_237;
  }

  v362 = v360;
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v363 = result;
    v364 = [result entityWithPersistentID:v357 entityType:v362];

    if (v364)
    {
      v365 = v364;

      v471 = v365;
      v366 = Logger.logObject.getter();
      v367 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v366, v367))
      {
        v368 = swift_slowAlloc();
        v369 = swift_slowAlloc();
        v470 = swift_slowAlloc();
        *&v501[0] = v470;
        *v368 = 136446722;
        *(v368 + 4) = sub_1000105AC(0x636973756DLL, 0xE500000000000000, v501);
        *(v368 + 12) = 2082;
        v370 = v472;

        v371 = sub_1000105AC(v480, v370, v501);

        *(v368 + 14) = v371;
        swift_bridgeObjectRelease_n();
        *(v368 + 22) = 2114;
        v372 = v471;
        *(v368 + 24) = v471;
        *v369 = v364;

        _os_log_impl(&_mh_execute_header, v366, v367, "Handled %{public}s %{public}s %{public}@", v368, 0x20u);
        sub_1000095E8(v369, &unk_101183D70);

        swift_arrayDestroy();
      }

      else
      {

        v395 = v471;

        swift_bridgeObjectRelease_n();
      }

      v396 = *(v478 + 8);
      v397 = v479;
      v396(v459, v479);
      v396(v486, v397);
      sub_1000095E8(v490, &qword_10118A240);
      v398 = swift_allocObject();
      *(v398 + 16) = v471;
      v108 = v490;
      *v490 = sub_1002D0DF0;
      *(v108 + 1) = v398;
      v107 = v488;
      goto LABEL_190;
    }

    goto LABEL_236;
  }

  __break(1u);
  return result;
}

void sub_1002BE694(void (*a1)(id))
{
  v2 = [objc_opt_self() currentDevicePurchasesPlaylist];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for LaunchOptions(0);
    sub_100009F78(0, &qword_10118A258);
    v4 = sub_1002BE84C();
    v9 = [v3 genericModelObjectWithRequestedProperties:v4];

    a1(v9);
  }

  else
  {
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101189E90);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No purchased playlist found", v8, 2u);
    }

    a1(0);
  }
}

id sub_1002BE84C()
{
  v0 = sub_100009F78(0, &qword_10118A260);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBF880;
    *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 40) = v2;
    *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 56) = v3;
    *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 72) = v4;
    *(v1 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 88) = v5;
    *(v1 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 104) = v6;
    *(v1 + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 120) = v7;
    *(v1 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v1 + 136) = v8;
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() propertySetWithProperties:v9.super.isa];
LABEL_7:
    v20 = v10;
LABEL_8:

    return v20;
  }

  v11 = sub_100009F78(0, &qword_10118A268);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100EBEF50;
    *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 40) = v13;
    *(v12 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 56) = v14;
    *(v12 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 72) = v15;
    *(v12 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v12 + 88) = v16;
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() propertySetWithProperties:v9.super.isa];
    goto LABEL_7;
  }

  v17 = sub_100009F78(0, &unk_10118A270);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_6;
  }

  v22 = sub_100009F78(0, &qword_101183A28);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100EBE260;
    *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 40) = v24;
    *(v23 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 56) = v25;
    *(v23 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v23 + 72) = v26;
    sub_10010FC20(&qword_101186F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v28;
    *(inited + 48) = sub_1002BE84C(v0);
    sub_10000BFA0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_101186F18);
    v29 = objc_allocWithZone(MPPropertySet);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v29 initWithProperties:isa relationships:v9.super.isa];

    goto LABEL_8;
  }

  v31 = sub_100009F78(0, &qword_10118A280);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&unk_101181640);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBC6B0;
    *(v32 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v32 + 40) = v33;
    sub_10010FC20(&qword_101186F10);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_100EBDC20;
    *(v34 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v34 + 40) = v35;
    v36 = objc_opt_self();
    *(v34 + 48) = [v36 emptyPropertySet];
    *(v34 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v34 + 64) = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100EBC6B0;
    *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v38 + 40) = v39;
    v40 = Array._bridgeToObjectiveC()().super.isa;

    v41 = [v36 propertySetWithProperties:v40];

    *(v34 + 72) = v41;
    sub_10000BFA0(v34);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18);
    swift_arrayDestroy();
    v42 = objc_allocWithZone(MPPropertySet);
    v43 = Array._bridgeToObjectiveC()().super.isa;

    sub_100009F78(0, &qword_101186F20);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v42 initWithProperties:v43 relationships:v9.super.isa];

    goto LABEL_8;
  }

  v44 = sub_100009F78(0, &qword_10118A288);
  if (swift_dynamicCastMetatype())
  {
LABEL_6:
    sub_10010FC20(&unk_101181640);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100EBC6B0;
    *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v18 + 40) = v19;
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() propertySetWithProperties:v9.super.isa];
    goto LABEL_7;
  }

  sub_100009F78(0, &qword_10118A258);
  if (swift_dynamicCastMetatype())
  {
    sub_10010FC20(&qword_101186F10);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_100EBCED0;
    *(v45 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 40) = v46;
    *(v45 + 48) = sub_1002BE84C(v0);
    *(v45 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 64) = v47;
    *(v45 + 72) = sub_1002BE84C(v11);
    *(v45 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 88) = v48;
    *(v45 + 96) = sub_1002BE84C(v17);
    *(v45 + 104) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 112) = v49;
    *(v45 + 120) = sub_1002BE84C(v22);
    *(v45 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 136) = v50;
    *(v45 + 144) = sub_1002BE84C(v31);
    *(v45 + 152) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v45 + 160) = v51;
    *(v45 + 168) = sub_1002BE84C(v44);
    sub_10000BFA0(v45);
    swift_setDeallocating();
    sub_10010FC20(&qword_101186F18);
    swift_arrayDestroy();
    v52 = objc_allocWithZone(MPPropertySet);
    v53 = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &qword_101186F20);
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v52 initWithProperties:v53 relationships:v9.super.isa];

    goto LABEL_8;
  }

  v54 = [objc_opt_self() emptyPropertySet];

  return v54;
}

void sub_1002BF200()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v18 - v6;
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  v10 = swift_projectBox();
  PresentationSource.windowScene.getter();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 delegate];

    if (v13 && (v18[1] = v13, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v20 + 1))
      {
        v14 = *(*sub_10000954C(&v19, *(&v20 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v19);
        if (v14)
        {
          v15 = &v9[*(sub_10010FC20(&unk_1011841E0) + 48)];
          swift_beginAccess();
          sub_1002CF480(v10, v9, type metadata accessor for AppInterfaceContext.Activity.Destination);
          *v15 = 0;
          *(v15 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1002CF480(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v7, v4, type metadata accessor for AppInterfaceContext.Activity);
          v16 = (*(v1 + 80) + 32) & ~*(v1 + 80);
          v17 = swift_allocObject();
          *(v17 + 16) = 0;
          *(v17 + 24) = 0;
          sub_1002CF4E8(v4, v17 + v16, type metadata accessor for AppInterfaceContext.Activity);
          sub_100706900(v7, sub_100137E88, v17);

          sub_1002CF550(v7, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v9, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    sub_1000095E8(&v19, &unk_101184EA0);
  }
}

uint64_t sub_1002BF538(uint64_t a1, char a2)
{
  v3 = [objc_opt_self() sharedApplication];
  sub_1002BF5AC();
  v5 = v4;

  if (v5)
  {
    sub_1001D3268(0, a2 & 1);
  }

  return 1;
}

void sub_1002BF5AC()
{
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
    v6 = v36;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v30 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = v15;
        v17 = [v15 session];
        v18 = [v17 role];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_26;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v31;
          v13 = v5;
          v14 = v6;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_26:
      sub_10005C9F8();

      v25 = [v16 delegate];

      if (v25)
      {
        v26 = swift_dynamicCastObjCProtocolConditional();
        if (v26 && (v27 = v26, ([v26 respondsToSelector:"window"] & 1) != 0))
        {
          v28 = [v27 window];
          swift_unknownObjectRelease();
          if (v28)
          {
            v29 = [v28 rootViewController];

            if (v29)
            {
              type metadata accessor for CarPlayRootNavigationController();
              if (!swift_dynamicCastClass())
              {
              }
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
LABEL_23:
      sub_10005C9F8();
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002BF954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v13[-v7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_10012B7A8(a1, v13);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  v11[5] = a3;
  sub_10012B828(v13, (v11 + 6));
  sub_1001F4CB8(0, 0, v8, &unk_100EC5A10, v11);

  return 1;
}

uint64_t sub_1002BFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  sub_10010FC20(&unk_101181520);
  v6[19] = swift_task_alloc();
  v7 = *(sub_10010FC20(&qword_10118A308) - 8);
  v6[20] = v7;
  v6[21] = *(v7 + 64);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10118A310);
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = type metadata accessor for MainActor();
  v6[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[29] = v10;
  v6[30] = v9;

  return _swift_task_switch(sub_1002BFC64, v10, v9);
}

uint64_t sub_1002BFC64()
{
  v2 = v0[16];
  v1 = v0[17];
  swift_getKeyPath();
  v0[14] = v2;
  v0[15] = v1;
  type metadata accessor for Song();
  sub_1002CF674(&unk_1011929D0, &type metadata accessor for Song);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v3 = swift_task_alloc();
  v0[31] = v3;
  *v3 = v0;
  v3[1] = sub_1002BFDA0;
  v4 = v0[23];
  v5 = v0[24];

  return MusicCatalogResourceRequest.response()(v4, v5);
}

uint64_t sub_1002BFDA0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1002C00F4;
  }

  else
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_1002BFEC4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002BFEC4()
{
  v1 = v0[25];
  v2 = v0[23];
  v15 = v0[24];
  v16 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  v8 = sub_10010FC20(&unk_10118A320);
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000089F8(v2, v3, &qword_10118A308);
  sub_10012B7A8(v7, (v0 + 2));
  v10 = static MainActor.shared.getter();
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10003D17C(v3, v12 + v11, &qword_10118A308);
  sub_10012B828((v0 + 2), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v5, &unk_100EC5A50, v12);

  sub_1000095E8(v2, &qword_10118A308);
  (*(v1 + 8))(v16, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002C00F4()
{
  v1 = v0[25];
  v2 = v0[23];
  v15 = v0[24];
  v16 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  v8 = sub_10010FC20(&unk_10118A320);
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1000089F8(v2, v3, &qword_10118A308);
  sub_10012B7A8(v7, (v0 + 2));
  v10 = static MainActor.shared.getter();
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10003D17C(v3, v12 + v11, &qword_10118A308);
  sub_10012B828((v0 + 2), v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v5, &unk_100EC5A50, v12);

  sub_1000095E8(v2, &qword_10118A308);
  (*(v1 + 8))(v16, v15);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1002C0324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for Locale();
  v5[10] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118D1A0);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  sub_10010FC20(&qword_10118A308);
  v5[21] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v5[22] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[27] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002C05D0, v11, v10);
}

uint64_t sub_1002C05D0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 64);

  sub_1000089F8(v2, v1, &qword_10118A308);
  v3 = sub_10010FC20(&unk_10118A320);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  if (v5 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_10118A308);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_4:
    sub_1000095E8(*(v0 + 176), &unk_101183960);
LABEL_5:
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() alertControllerWithTitle:0 message:v13 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v15 = String._bridgeToObjectiveC()();

    v16 = [objc_opt_self() actionWithTitle:v15 style:0 handler:0];

    [v14 addAction:v16];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v14, 1, 1, 0, 0);

    goto LABEL_6;
  }

  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 144);
  MusicCatalogResourceResponse.items.getter();
  (*(v4 + 8))(v8, v3);
  sub_10034DD6C(v9);
  (*(v11 + 8))(v10, v12);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_4;
  }

  v19 = *(v0 + 208);
  (*(*(v0 + 192) + 32))(v19, *(v0 + 176), *(v0 + 184));
  type metadata accessor for LyricsLoader();
  if ((static LyricsLoader.supportsLyrics(for:)(v19) & 1) == 0)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
    goto LABEL_5;
  }

  PresentationSource.windowScene.getter();
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 delegate];

  if (!v22 || (*(v0 + 56) = v22, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_18;
  }

  v23 = *(v0 + 40);
  if (!v23)
  {
LABEL_18:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_19;
  }

  v24 = *(*sub_10000954C((v0 + 16), v23) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 16);
  if (v24)
  {
    v25 = *(v0 + 200);
    v26 = *(v0 + 192);
    v44 = *(v0 + 184);
    v45 = *(v0 + 208);
    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    (*(v26 + 16))(v25);
    v31 = objc_allocWithZone(type metadata accessor for StaticLyricsViewController());
    v32 = sub_100336758(v25, 0, 0);
    *v27 = v32;
    *(v27 + 8) = 1;
    *(v27 + 16) = &_swiftEmptySetSingleton;
    swift_storeEnumTagMultiPayload();
    sub_1002CF480(v27, v28, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v28, v29, type metadata accessor for AppInterfaceContext.Activity);
    v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    sub_1002CF4E8(v29, v34 + v33, type metadata accessor for AppInterfaceContext.Activity);
    v35 = v32;
    sub_100706900(v28, sub_100139B24, v34);

    sub_1002CF550(v28, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v27, type metadata accessor for AppInterfaceContext.Activity);
    (*(v26 + 8))(v45, v44);
    goto LABEL_6;
  }

LABEL_19:
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_1000060E4(v36, qword_101189E90);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 208);
  v41 = *(v0 + 184);
  v42 = *(v0 + 192);
  if (v39)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "No appInterfaceContext in windowScene", v43, 2u);
  }

  (*(v42 + 8))(v40, v41);
LABEL_6:

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1002C0CEC(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_1002D0E14;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10006BD7C;
  v9[3] = &unk_1010A45A0;
  v6 = _Block_copy(v9);

  v7 = [v4 initWithBlock:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

BOOL sub_1002C0E18(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  PresentationSource.windowScene.getter();
  v13 = v12;
  if (v12)
  {

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
    type metadata accessor for MainActor();
    v15 = a2;
    v16 = static MainActor.shared.getter();
    v17 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v16;
    *(v18 + 3) = &protocol witness table for MainActor;
    *(v18 + 4) = v15;
    (*(v6 + 32))(&v18[v17], v8, v5);
    sub_1001F4F78(0, 0, v11, &unk_100EC5A60, v18);
  }

  return v13 != 0;
}

uint64_t sub_1002C1038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_1002C10D4, v7, v6);
}

uint64_t sub_1002C10D4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = qword_101218AD8;
  v0[5] = type metadata accessor for LaunchOptions.Source(0);
  v0[6] = &off_1010A43B0;
  v3 = sub_10001C8B8(v0 + 2);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 16))(v3, v1, v4);
  swift_storeEnumTagMultiPayload();
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1002C1228;
  v6 = v0[8];

  return static SharedListening.addIntent(_:playbackController:issuer:)(v6, v2, (v0 + 2));
}

uint64_t sub_1002C1228()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1002C13DC;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910);
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1002C1368;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002C1368()
{

  **(v0 + 56) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C13DC()
{

  sub_1000095E8(v0 + 16, &unk_101183910);
  **(v0 + 56) = *(v0 + 112) != 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002C1468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v9 = type metadata accessor for AppInterfaceContext.Activity(0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - v14;
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  PresentationSource.windowScene.getter();
  if (v18)
  {
    v19 = v18;
    v29 = a3;
    v20 = [v18 delegate];

    if (v20 && (v35 = v20, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v33 + 1))
      {
        v21 = *(*sub_10000954C(&v32, *(&v33 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v32);
        if (v21)
        {
          v22 = *(sub_10010FC20(&unk_1011841E0) + 48);
          v28 = v21;
          v23 = &v17[v22];
          *v17 = 2;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v23 = 0;
          v23[1] = 0;
          swift_storeEnumTagMultiPayload();
          sub_10012B7A8(a1, &v32);
          v24 = swift_allocObject();
          v25 = v29;
          v24[2] = a2;
          v24[3] = v25;
          v24[4] = a4;
          v24[5] = v31;
          sub_10012B828(&v32, (v24 + 6));
          sub_1002CF480(v17, v15, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v15, v12, type metadata accessor for AppInterfaceContext.Activity);
          v26 = (*(v30 + 80) + 32) & ~*(v30 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1002CF8DC;
          *(v27 + 24) = v24;
          sub_1002CF4E8(v12, v27 + v26, type metadata accessor for AppInterfaceContext.Activity);

          sub_100706900(v15, sub_100139B24, v27);

          sub_1002CF550(v15, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v17, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1000095E8(&v32, &unk_101184EA0);
  }
}

void sub_1002C1804(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a5)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_opt_self() alertControllerWithTitle:a3 message:v9 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  [v10 addAction:v12];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v10, 1, 1, 0, 0);
}

void sub_1002C19FC()
{
  v0 = type metadata accessor for AppInterfaceContext.Activity(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v4 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = v17 - v6;
  __chkstk_darwin(v5);
  v9 = (v17 - v8);
  PresentationSource.windowScene.getter();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 delegate];

    if (v12 && (v17[1] = v12, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v19 + 1))
      {
        v13 = *(*sub_10000954C(&v18, *(&v19 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v18);
        if (v13)
        {
          v14 = (v9 + *(sub_10010FC20(&unk_1011841E0) + 48));
          *v9 = 0;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v14 = 0;
          v14[1] = 0;
          swift_storeEnumTagMultiPayload();
          sub_1002CF480(v9, v7, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF480(v7, v4, type metadata accessor for AppInterfaceContext.Activity);
          v15 = (*(v1 + 80) + 32) & ~*(v1 + 80);
          v16 = swift_allocObject();
          *(v16 + 16) = sub_1002CF8EC;
          *(v16 + 24) = v13;
          sub_1002CF4E8(v4, v16 + v15, type metadata accessor for AppInterfaceContext.Activity);
          swift_retain_n();
          sub_100706900(v7, sub_100139B24, v16);

          sub_1002CF550(v7, type metadata accessor for AppInterfaceContext.Activity);
          sub_1002CF550(v9, type metadata accessor for AppInterfaceContext.Activity);
        }

        return;
      }
    }

    else
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }

    sub_1000095E8(&v18, &unk_101184EA0);
  }
}

void sub_1002C1D18(uint64_t a1, uint64_t (*a2)(uint64_t a1))
{
  v34 = a2;
  v3 = type metadata accessor for AppInterfaceContext.Activity(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v31 = &v31 - v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for PlaylistCreation.Context(0);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_1011841F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - v15;
  sub_1000089F8(a1, &v31 - v15, &unk_1011841F0);
  v32 = v4;
  LODWORD(a1) = (*(v4 + 48))(v16, 1, v3);
  sub_1000095E8(v16, &unk_1011841F0);
  if (a1 == 1)
  {
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_101189E90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to navigate to Library tab", v20, 2u);
    }
  }

  else
  {
    v21 = type metadata accessor for Playlist.Folder();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v22 = v11[6];
    v23 = sub_10010FC20(&unk_1011841D0);
    (*(*(v23 - 8) + 56))(&v13[v22], 1, 1, v23);
    v24 = &v13[v11[5]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v13[v11[7]];
    v26 = v34;
    *v25 = sub_1002CF8F4;
    v25[1] = v26;
    sub_1002CF480(v13, v10, type metadata accessor for PlaylistCreation.Context);
    swift_storeEnumTagMultiPayload();
    v27 = v31;
    sub_1002CF480(v10, v31, type metadata accessor for AppInterfaceContext.Activity);
    v28 = v33;
    sub_1002CF480(v27, v33, type metadata accessor for AppInterfaceContext.Activity);
    v29 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    sub_1002CF4E8(v28, v30 + v29, type metadata accessor for AppInterfaceContext.Activity);

    sub_100706900(v27, sub_100139B24, v30);

    sub_1002CF550(v27, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v13, type metadata accessor for PlaylistCreation.Context);
  }
}

uint64_t sub_1002C21BC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v47 = a1;
  v2 = sub_10010FC20(&unk_1011841F0);
  __chkstk_darwin(v2 - 8);
  v45 = (&v43 - v3);
  v44 = type metadata accessor for AppInterfaceContext.Activity(0);
  v46 = *(v44 - 8);
  v4 = *(v46 + 64);
  v5 = __chkstk_darwin(v44);
  v6 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - v8;
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for PlaylistCreation.FlowResult(0);
  __chkstk_darwin(v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  sub_1002CF480(v47, v14, type metadata accessor for PlaylistCreation.FlowResult);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_1002CF550(v14, type metadata accessor for PlaylistCreation.FlowResult);
  }

  v23 = v9;
  v47 = v19;

  (*(v16 + 32))(v21, v14, v15);
  v24 = v45;
  sub_1007041B4(v21, 0, 0, v45);
  v25 = v15;
  v26 = v16;
  if ((*(v46 + 48))(v24, 1, v44) == 1)
  {
    sub_1000095E8(v24, &unk_1011841F0);
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000060E4(v27, qword_101189E90);
    v28 = v47;
    (*(v16 + 16))(v47, v21, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = v25;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136446210;
      sub_1002CF674(&qword_101184200, &type metadata accessor for Playlist);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v26 + 8);
      v37(v28, v31);
      v38 = sub_1000105AC(v34, v36, &v48);

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to generate navigation activity to playlist=%{public}s", v32, 0xCu);
      sub_10000959C(v33);

      return (v37)(v21, v31);
    }

    else
    {

      v42 = *(v26 + 8);
      v42(v28, v25);
      return (v42)(v21, v25);
    }
  }

  else
  {
    v47 = v25;
    sub_1002CF4E8(v24, v11, type metadata accessor for AppInterfaceContext.Activity);
    v39 = v23;
    sub_1002CF480(v11, v23, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF480(v23, v6, type metadata accessor for AppInterfaceContext.Activity);
    v40 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    sub_1002CF4E8(v6, v41 + v40, type metadata accessor for AppInterfaceContext.Activity);
    sub_100706900(v39, sub_100139B24, v41);

    sub_1002CF550(v39, type metadata accessor for AppInterfaceContext.Activity);
    sub_1002CF550(v11, type metadata accessor for AppInterfaceContext.Activity);
    return (*(v16 + 8))(v21, v47);
  }
}

void sub_1002C27D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() kindWithVariants:7];
  v7 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v8 = v6;
  [v7 setItemKind:v8];
  type metadata accessor for LaunchOptions(0);
  sub_100009F78(0, &qword_101183A28);
  v9 = sub_1002BE84C();
  [v7 setItemProperties:v9];

  sub_10010FC20(&qword_101183990);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBC6C0;
  v18[2] = v7;
  v18[3] = a3;
  v11 = objc_allocWithZone(MPIdentifierSet);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002CF8FC;
  *(v12 + 24) = v18;
  v23 = sub_1001EBE40;
  v24 = v12;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10006BD7C;
  v22 = &unk_1010A46B8;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 initWithModelKind:v8 block:v13];

  _Block_release(v13);

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 32) = v14;
    sub_100009F78(0, &qword_101192200);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setAllowedItemIdentifiers:isa];

    [v7 setContentRange:{0, 1}];
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v23 = sub_1002CF904;
    v24 = v16;
    aBlock = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10000B378;
    v22 = &unk_1010A4708;
    v17 = _Block_copy(&aBlock);

    [v7 performWithResponseHandler:v17];
    _Block_release(v17);
  }
}

id sub_1002C2B30(void *a1, id a2, uint64_t a3)
{
  result = [a2 mediaLibrary];
  if (!result)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  result = [result uniqueIdentifier];
  if (result)
  {
    v7 = result;

    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1002CF96C;
    *(v9 + 24) = v8;
    v12[4] = sub_1002D0E14;
    v12[5] = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1002B8A68;
    v12[3] = &unk_1010A47F8;
    v10 = _Block_copy(v12);

    [a1 setLibraryIdentifiersWithDatabaseID:v7 block:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
  return result;
}

void sub_1002C2CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = [a1 results];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 firstItem];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v10 = [objc_opt_self() emptyIdentifierSet];
  __chkstk_darwin(v10);
  v17[2] = v9;
  v11 = objc_allocWithZone(MPModelGenericObject);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1002CF90C;
  *(v12 + 24) = v17;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010A4758;
  v13 = _Block_copy(aBlock);

  v14 = [v11 initWithIdentifiers:v10 block:v13];

  _Block_release(v13);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    sub_100009F78(0, &qword_101182960);
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v14;

    v16 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002CF93C, v15);

    return;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

id sub_1002C2F68(uint64_t a1, uint64_t a2)
{
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101189E90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Resolved song model", v6, 2u);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();

  return [v7 setSong:a2];
}

uint64_t sub_1002C3090(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v92 = &v88 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v90 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v98);
  v99 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for LaunchOptions.Kind(0);
  __chkstk_darwin(v101);
  v100 = (&v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Playlist.Variant();
  v93 = *(v17 - 8);
  v94 = v17;
  __chkstk_darwin(v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&qword_10118A3B0);
  v96 = *(v20 - 8);
  v97 = v20;
  __chkstk_darwin(v20);
  v95 = &v88 - v21;
  *(v5 + 16) = 7;
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v22 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v23 = 0;
  v23[1] = 0;
  v91 = v13;
  v13[7](v5 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  v24 = [a1 type];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v108._countAndFlagsBits = v25;
  v108._object = v27;
  v28 = sub_1003C1F00(v108);
  if (v28 == 5)
  {
    sub_100020438(a3);

    p_cache = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
    v30 = &OBJC_METACLASS____TtC5Music26PresentationDonationTarget.cache;
LABEL_3:

    sub_100020438(*(p_cache[470] + v5));

    sub_1000095E8(v30[472] + v5, &qword_101183A20);

    type metadata accessor for LaunchOptions(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v89 = a3;
  v31 = a4;
  v32 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_source) = a1;
  type metadata accessor for LaunchOptions.Source(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = a2;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = a1;
      v47 = v100;
      *v100 = sub_1002CF97C;
      v47[1] = v46;
      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v47, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      v48 = a1;
    }

    else
    {
      if (v28 == 3)
      {
        sub_100009F78(0, &qword_10118A3B8);
        v33 = a1;
        v34 = a2;
        v35 = static ICUserIdentityStore.activeAccountDSID.getter();
        if (v35)
        {
          v91 = v33;
          v92 = v34;
          v36 = v35;

          type metadata accessor for Playlist();
          type metadata accessor for Playlist.Entry();
          v37 = v95;
          MusicLibrarySectionedRequest.init()();
          swift_getKeyPath();
          v39 = v93;
          v38 = v94;
          (*(v93 + 104))(v19, enum case for Playlist.Variant.favoriteSongs(_:), v94);
          sub_1002CF674(&qword_10118A3C0, &type metadata accessor for Playlist.Variant);
          v40 = v97;
          MusicLibrarySectionedRequest<>.filterSections<A>(matching:equalTo:)();

          (*(v39 + 8))(v19, v38);
          sub_100198A44();
          v41 = MusicPlayableRequest.playbackIntent()();
          v42 = v89;
          if (v41)
          {
            v43 = v99;
            *v99 = v41;
            swift_storeEnumTagMultiPayload();
            v107 = 0;
            v105 = 0u;
            v106 = 0u;
            v104 = 0;
            v102 = 0u;
            v103 = 0u;
            v44 = v100;
            PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v43, &v105, 3, 0, 0, 1, 0, 1, v100, 0, &v102);

            (*(v96 + 8))(v37, v40);
            swift_storeEnumTagMultiPayload();
            sub_1002CF4E8(v44, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
LABEL_17:
            v59 = (v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
            v60 = *(v5 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
            *v59 = v42;
            v59[1] = v31;
            sub_100030444(v42);
            sub_100020438(v60);
            sub_100020438(v42);
            return v5;
          }

          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v82 = type metadata accessor for Logger();
          sub_1000060E4(v82, qword_101189E90);
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "Could not create Play Favorite Songs Quick Action playback intent", v85, 2u);

            sub_100020438(v42);
          }

          else
          {
            sub_100020438(v42);
          }

          (*(v96 + 8))(v37, v40);
        }

        else
        {
          v77 = v89;
          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v78 = type metadata accessor for Logger();
          sub_1000060E4(v78, qword_101189E90);
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&_mh_execute_header, v79, v80, "No active account DSID to Play Favorite Songs", v81, 2u);
          }

          sub_100020438(v77);
        }

LABEL_41:
        p_cache = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
        v30 = (&OBJC_METACLASS____TtC5Music26PresentationDonationTarget + 16);
        sub_1002CF550(v5 + v32, type metadata accessor for LaunchOptions.Source);

        goto LABEL_3;
      }

      LOBYTE(v105) = 9;
      v49 = sub_100025CE0();
      v50 = a1;
      v51 = a2;
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v49) & 1) == 0)
      {
        sub_100020438(v89);

        goto LABEL_41;
      }

      v52 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v52 setStoreIDs:isa];

      v54 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v54 setRequest:v52];
      v55 = [objc_allocWithZone(MPCPlaybackIntent) init];
      [v55 setTracklistToken:v54];
      [v55 setTracklistSource:3];
      v56 = v99;
      *v99 = v55;
      swift_storeEnumTagMultiPayload();
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v57 = v55;
      v58 = v100;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v56, &v105, 3, 0, 0, 1, 0, 1, v100, 0, &v102);

      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v58, v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
    }

LABEL_16:
    v42 = v89;
    goto LABEL_17;
  }

  if (!v28)
  {
    *(v5 + 16) = 4;
    v45 = v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind;
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  v61 = a1;
  v62 = a2;
  BagProvider.shared.unsafeMutableAddressor();

  v63 = BagProvider.bag.getter();

  if (v63)
  {
    v64 = [v63 stringForBagKey:ICURLBagKeyCountryCode];

    if (v64)
    {
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      *&v105 = 0xD000000000000018;
      *(&v105 + 1) = 0x8000000100E452A0;
      v68._countAndFlagsBits = v65;
      v68._object = v67;
      String.append(_:)(v68);

      v69._countAndFlagsBits = 0x6E6F69746174732FLL;
      v69._object = 0xEB00000000656D2FLL;
      String.append(_:)(v69);
      v70 = v92;
      URL.init(string:)();

      v71 = v91;
      if ((*(v91 + 6))(v70, 1, v12) != 1)
      {

        v86 = v71[4];
        v87 = v90;
        v86(v90, v70, v12);
        v86((v5 + OBJC_IVAR____TtC5Music13LaunchOptions_kind), v87, v12);
        goto LABEL_12;
      }

      sub_1000095E8(v70, &qword_101183A20);
    }
  }

  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_1000060E4(v72, qword_101189E90);
  v73 = static os_log_type_t.error.getter();
  v74 = Logger.logObject.getter();
  if (os_log_type_enabled(v74, v73))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v74, v73, "Could not generate station URL", v75, 2u);
  }

  sub_100020438(v89);

  swift_storeEnumTagMultiPayload();
  return v5;
}

uint64_t sub_1002C3EE0(uint64_t a1, void *a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v6 = (*(*qword_101218AC8 + 432))();
  if (v6 && (v7 = v6, v8 = [v6 state], v7, v8 == 2))
  {
    v9 = &unk_100EC5AB0;
  }

  else
  {
    v9 = &unk_100EC5AA0;
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  type metadata accessor for MainActor();
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_1001F4CB8(0, 0, v5, v9, v13);

  return 1;
}

uint64_t sub_1002C40C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002C4158, v6, v5);
}

uint64_t sub_1002C4158()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v0[5] = &type metadata for Player.ChangeCommand;
  v0[6] = &protocol witness table for Player.ChangeCommand;
  v0[2] = 0;
  v0[10] = type metadata accessor for LaunchOptions.Source(0);
  v0[11] = &off_1010A43B0;
  *sub_10001C8B8(v0 + 7) = v1;
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1002C4290;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

uint64_t sub_1002C4290(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1002C43D4;
  }

  else
  {

    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1002D0E18;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002C43D4()
{
  v14 = v0;

  sub_1000095E8((v0 + 7), &unk_101183910);
  sub_10000959C((v0 + 2));
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101189E90);
  v2 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();

  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "Could not perform previous player command=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002C45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002C4664, v6, v5);
}

uint64_t sub_1002C4664()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 0;
  *(v0 + 80) = type metadata accessor for LaunchOptions.Source(0);
  *(v0 + 88) = &off_1010A43B0;
  *sub_10001C8B8((v0 + 56)) = v1;
  swift_storeEnumTagMultiPayload();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1002C479C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002C479C(void *a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1002C4940;
  }

  else
  {

    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1002C48E0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002C48E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002C4940()
{
  v14 = v0;

  sub_1000095E8((v0 + 7), &unk_101183910);
  sub_10000959C((v0 + 2));
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101189E90);
  v2 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();

  v4 = os_log_type_enabled(v3, v2);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[12] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "Could not perform play command=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

id sub_1002C4B38(void *a1, void *a2)
{
  v3 = v2;
  v121 = a2;
  v120 = type metadata accessor for LaunchOptions.Kind(0);
  __chkstk_darwin(v120);
  v6 = (&v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v113 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v116 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 7;
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_privacyAcknowledgementObserver) = 0;
  v13 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v14 = 0;
  v14[1] = 0;
  (*(v11 + 56))(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, 1, 1, v10);
  *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = 0;
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101189E90);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v115 = v6;
  v117 = v11;
  v118 = v10;
  v119 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v124 = v21;
    *v20 = 136446210;
    v22 = v16;
    v114 = v3;
    v23 = v22;
    v24 = [v22 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v3 = v114;
    v28 = sub_1000105AC(v25, v27, &v124);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v17, v18, "Launched with userActivity=%{public}s", v20, 0xCu);
    sub_10000959C(v21);
  }

  v29 = [v16 activityType];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v33 == v32)
  {

    goto LABEL_10;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {

LABEL_10:
    *(v3 + 16) = 4;
    v35 = [v16 userInfo];
    if (v35)
    {
      v36 = v35;
      v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v38;
      AnyHashable.init<A>(_:)();
      if (*(v37 + 16))
      {
        v39 = sub_1000160B4(&v124);
        if (v40)
        {
          sub_10000DD18(*(v37 + 56) + 32 * v39, &v126);
          sub_10001621C(&v124);

          if (*(&v127 + 1))
          {
            if (swift_dynamicCast())
            {
              v41 = v124;
              v42 = v125;
              v43 = HIBYTE(v125) & 0xF;
              if ((v125 & 0x2000000000000000) == 0)
              {
                v43 = v124 & 0xFFFFFFFFFFFFLL;
              }

              if (v43)
              {
                goto LABEL_23;
              }
            }

LABEL_22:
            v41 = 0;
            v42 = 0;
LABEL_23:

            v44 = Logger.logObject.getter();
            v45 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v47 = swift_slowAlloc();
              *&v126 = v47;
              *v46 = 136446210;
              v124 = v41;
              v125 = v42;

              sub_10010FC20(&qword_1011815E0);
              v48 = String.init<A>(describing:)();
              v50 = v3;
              v51 = sub_1000105AC(v48, v49, &v126);

              *(v46 + 4) = v51;
              v3 = v50;
              _os_log_impl(&_mh_execute_header, v44, v45, "User activity resolved to search with query %{public}s", v46, 0xCu);
              sub_10000959C(v47);
            }

            v52 = v3 + OBJC_IVAR____TtC5Music13LaunchOptions_kind;
            *v52 = v41;
            *(v52 + 8) = v42;
            *(v52 + 16) = 1;
            swift_storeEnumTagMultiPayload();
LABEL_26:
            *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_source) = v16;
            type metadata accessor for LaunchOptions.Source(0);
            swift_storeEnumTagMultiPayload();
            *(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) = v121;
            return v3;
          }

LABEL_21:
          sub_1000095E8(&v126, &unk_101183F30);
          goto LABEL_22;
        }
      }

      sub_10001621C(&v124);
    }

    v126 = 0u;
    v127 = 0u;
    goto LABEL_21;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v53 == v32)
  {
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {

      v77 = v16;
      v70 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v124 = v80;
        *v79 = 136446210;
        v81 = v77;
        v82 = [v81 description];
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v84;

        v86 = sub_1000105AC(v83, v85, &v124);

        *(v79 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v70, v78, "Unhandled userActivity=%{public}s", v79, 0xCu);
        sub_10000959C(v80);

LABEL_56:

        sub_100020438(*(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler));

        sub_1000095E8(v3 + OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL, &qword_101183A20);

        type metadata accessor for LaunchOptions(0);
        swift_deallocPartialClassInstance();
        return 0;
      }

LABEL_55:
      goto LABEL_56;
    }
  }

  v55 = &selRef_setPhotosHeaderMetadata_;
  v56 = [v16 userInfo];
  if (!v56)
  {

    v126 = 0u;
    v127 = 0u;
    goto LABEL_44;
  }

  v57 = v56;
  v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v123 = v59;
  AnyHashable.init<A>(_:)();
  if (!*(v58 + 16) || (v60 = sub_1000160B4(&v124), (v61 & 1) == 0))
  {

    sub_10001621C(&v124);
    v126 = 0u;
    v127 = 0u;
    goto LABEL_42;
  }

  sub_10000DD18(*(v58 + 56) + 32 * v60, &v126);
  sub_10001621C(&v124);

  if (!*(&v127 + 1))
  {
LABEL_42:

LABEL_44:
    v67 = &unk_101183F30;
    v68 = &v126;
    goto LABEL_45;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v62 = HIBYTE(v125) & 0xF;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v62 = v124 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {

LABEL_60:

    goto LABEL_46;
  }

  v63 = v119;
  URL.init(string:)();
  v64 = v117;
  v65 = v63;
  v66 = v118;
  if ((*(v117 + 48))(v65, 1, v118) == 1)
  {

    v67 = &qword_101183A20;
    v68 = v119;
LABEL_45:
    sub_1000095E8(v68, v67);
LABEL_46:
    v69 = v16;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v124 = v73;
      *v72 = 136446210;
      v74 = [v69 v55[191]];
      if (v74)
      {
        v75 = v74;
        v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v76 = 0;
      }

      *&v126 = v76;
      sub_10010FC20(&qword_10118A3D0);
      v87 = String.init<A>(describing:)();
      v89 = sub_1000105AC(v87, v88, &v124);

      *(v72 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v70, v71, "Unable to parse searchable activity with userInfo=%{public}s", v72, 0xCu);
      sub_10000959C(v73);

      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v91 = v116;
  (*(v64 + 32))(v116, v119, v66);
  result = [objc_opt_self() deviceMediaLibrary];
  if (result)
  {
    v92 = result;

    URL._bridgeToObjectiveC()(v93);
    v95 = v94;
    v96 = [v92 entityWithLibraryURL:v94];

    if (v96)
    {
      v97 = v96;
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();

      v100 = os_log_type_enabled(v98, v99);
      v102 = v117;
      v101 = v118;
      if (v100)
      {
        v103 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v124 = v114;
        *v103 = 136446210;
        v104 = v97;
        v105 = v3;
        v106 = [v104 description];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v97;
        v109 = v108;

        v3 = v105;
        v110 = sub_1000105AC(v107, v109, &v124);
        v97 = v119;

        *(v103 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v98, v99, "User activity resolved to searchable activity with mediaEntity=%{public}s", v103, 0xCu);
        sub_10000959C(v114);

        (*(v117 + 8))(v116, v118);
      }

      else
      {

        (*(v102 + 8))(v116, v101);
      }

      v111 = v115;
      v112 = swift_allocObject();
      *(v112 + 16) = v97;
      *v111 = sub_1002D025C;
      v111[1] = v112;
      swift_storeEnumTagMultiPayload();
      sub_1002CF4E8(v111, v3 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, type metadata accessor for LaunchOptions.Kind);
      goto LABEL_26;
    }

    (*(v117 + 8))(v91, v118);
    v55 = &selRef_setPhotosHeaderMetadata_;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

void sub_1002C5958(void (*a1)(id), uint64_t a2, void *a3)
{
  type metadata accessor for LaunchOptions(0);
  sub_100009F78(0, &qword_10118A258);
  v5 = sub_1002BE84C();
  v6 = [a3 genericModelObjectWithRequestedProperties:v5];

  a1(v6);
}

uint64_t sub_1002C5A04()
{
  v1 = v0;
  v2 = type metadata accessor for AppInterfaceContext.Activity(0);
  v3 = *(v2 - 8);
  v137 = v2;
  v138 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v136 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v140 = &v134 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v134 - v9;
  __chkstk_darwin(v8);
  v135 = (&v134 - v11);
  v141 = type metadata accessor for PlaybackIntentDescriptor(0);
  v146 = *(v141 - 8);
  v12 = __chkstk_darwin(v141);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v150 = (&v134 - v15);
  v147 = v16;
  __chkstk_darwin(v14);
  v149 = &v134 - v17;
  v18 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v18 - 8);
  v156 = &v134 - v19;
  v20 = type metadata accessor for LaunchURL.Resolver();
  v143 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v144 = v22;
  v145 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v153 = &v134 - v23;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v154 = v24;
  v155 = v25;
  v26 = __chkstk_darwin(v24);
  v142 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v27;
  __chkstk_darwin(v26);
  v157 = &v134 - v28;
  v29 = type metadata accessor for LaunchOptions.Kind(0);
  v30 = __chkstk_darwin(v29);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v134 - v33;
  if (qword_10117F540 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  v36 = sub_1000060E4(v35, qword_101189E90);

  v151 = v36;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v139 = v4;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v134 = v10;
    v41 = v40;
    v42 = swift_slowAlloc();
    *&v162 = v42;
    *v41 = 136446210;
    sub_1002CF480(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, v34, type metadata accessor for LaunchOptions.Kind);
    v43 = String.init<A>(describing:)();
    v45 = v1;
    v46 = sub_1000105AC(v43, v44, &v162);

    *(v41 + 4) = v46;
    v1 = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Performing %{public}s", v41, 0xCu);
    sub_10000959C(v42);

    v10 = v134;
  }

  sub_1002CF480(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_kind, v32, type metadata accessor for LaunchOptions.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v56 = v154;
        v55 = v155;
        v57 = *(v155 + 32);
        v58 = v157;
        v57(v157, v32, v154);
        v59 = v57;
        v150 = v57;
        v151 = v1;
        v147 = *(v55 + 16);
        v60 = v142;
        v147(v142, v58, v56);
        v61 = *(v55 + 80);
        v62 = (v61 + 16) & ~v61;
        v148 = v61 | 7;
        v63 = (v152 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
        v64 = swift_allocObject();
        v65 = v59(v64 + v62, v60, v56);
        *(v64 + v63) = v151;
        UIScreen.Dimensions.size.getter(v65);
        v149 = v66;
        *(&v134 - 2) = __chkstk_darwin(v67);
        *(&v134 - 1) = v68;

        v69 = 1;
        v70 = v153;
        LaunchURL.Resolver.init(perform:handlerBuilder:)(1, sub_1002D0814, v153);
        v71 = type metadata accessor for TaskPriority();
        (*(*(v71 - 8) + 56))(v156, 1, 1, v71);
        v72 = v70;
        v73 = v145;
        sub_1002CF480(v72, v145, type metadata accessor for LaunchURL.Resolver);
        v147(v60, v157, v56);
        type metadata accessor for MainActor();
        v74 = static MainActor.shared.getter();
        v75 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v76 = (v144 + v61 + v75) & ~v61;
        v77 = swift_allocObject();
        *(v77 + 16) = v74;
        *(v77 + 24) = &protocol witness table for MainActor;
        sub_1002CF4E8(v73, v77 + v75, type metadata accessor for LaunchURL.Resolver);
        v78 = v77 + v76;
        v1 = v151;
        v150(v78, v60, v56);
        sub_1001F5520(0, 0, v156, &unk_100EC5B28, v77);

        sub_1002CF550(v153, type metadata accessor for LaunchURL.Resolver);
        (*(v155 + 8))(v157, v56);
        goto LABEL_56;
      }

      v91 = *v32;
      v92 = *(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
      static PresentationSource.topmost(in:)(&v162);

      sub_1000089F8(&v162, v158, &unk_1011845E0);
      if (v158[8] != 1)
      {
        sub_10012B828(v158, &v159);
        v69 = v91(&v159);

        sub_10012BA6C(&v159);
        sub_1000095E8(&v162, &unk_1011845E0);
        goto LABEL_56;
      }

      sub_1000095E8(&v162, &unk_1011845E0);
      sub_1000095E8(v158, &unk_1011845E0);
      goto LABEL_55;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v79 = *v32;

      v79(sub_1002D0608, v1);

      v69 = 1;
      goto LABEL_56;
    }

    v93 = v149;
    sub_1002CF4E8(v32, v149, type metadata accessor for PlaybackIntentDescriptor);
    v94 = v93 + *(v141 + 32);
    if (*(v94 + 24))
    {
      sub_100008FE4(v93 + *(v141 + 32), &v162);
      v95 = *(&v163 + 1);
      v96 = v164;
      sub_10000954C(&v162, *(&v163 + 1));
      v97 = v1;
      v98 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
      *(&v160 + 1) = type metadata accessor for LaunchOptions.Source(0);
      v161 = &off_1010A43B0;
      v99 = sub_10001C8B8(&v159);
      v100 = v97 + v98;
      v1 = v97;
      sub_1002CF480(v100, v99, type metadata accessor for LaunchOptions.Source);
      v101 = Player.CommandIssuer.appending(_:)(&v159, v95, v96);
      v103 = v102;
      sub_10000959C(&v159);
      *(&v160 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v161 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v159 = v101;
      *(&v159 + 1) = v103;
      sub_10000959C(&v162);
      if (*(&v160 + 1))
      {
        sub_100188D80(&v159, &v162);
LABEL_45:
        sub_10006B010(&v162, v94, &unk_101183910);
        v116 = v150;
        sub_1002CF480(v93, v150, type metadata accessor for PlaybackIntentDescriptor);
        v117 = type metadata accessor for TaskPriority();
        v69 = 1;
        v118 = v156;
        (*(*(v117 - 8) + 56))(v156, 1, 1, v117);
        v119 = v148;
        sub_1002CF480(v116, v148, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v120 = static MainActor.shared.getter();
        v121 = (*(v146 + 80) + 32) & ~*(v146 + 80);
        v122 = swift_allocObject();
        *(v122 + 16) = v120;
        *(v122 + 24) = &protocol witness table for MainActor;
        sub_1002CF4E8(v119, v122 + v121, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v118, &unk_100ECA700, v122);

        v123 = type metadata accessor for PlaybackIntentDescriptor;
        sub_1002CF550(v116, type metadata accessor for PlaybackIntentDescriptor);
        v124 = v93;
        goto LABEL_46;
      }
    }

    else
    {
      v161 = 0;
      v159 = 0u;
      v160 = 0u;
    }

    v114 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
    *(&v163 + 1) = type metadata accessor for LaunchOptions.Source(0);
    v164 = &off_1010A43B0;
    v115 = sub_10001C8B8(&v162);
    sub_1002CF480(v1 + v114, v115, type metadata accessor for LaunchOptions.Source);
    if (*(&v160 + 1))
    {
      sub_1000095E8(&v159, &unk_101183910);
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v80 = v155;
      v81 = v157;
      v82 = v32;
      v83 = v154;
      (*(v155 + 32))(v157, v82, v154);
      sub_1002C9F54();
      (*(v80 + 8))(v81, v83);
      v69 = 1;
      goto LABEL_56;
    }

    v104 = *v32;
    v105 = *(v32 + 1);
    v106 = v32[16];
    v107 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
    if (!v107)
    {

LABEL_48:
      v164 = 0;
      v162 = 0u;
      v163 = 0u;
LABEL_51:
      sub_1000095E8(&v162, &unk_101184EA0);
LABEL_52:
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "No appInterfaceContext in windowScene", v127, 2u);
      }

      goto LABEL_55;
    }

    *&v159 = v107;
    sub_10010FC20(&unk_101184050);
    sub_10010FC20(&unk_101184EB0);
    if (swift_dynamicCast())
    {
      if (*(&v163 + 1))
      {
        v108 = *(*sub_10000954C(&v162, *(&v163 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(&v162);
        if (!v108)
        {

          goto LABEL_52;
        }

        v109 = *(sub_10010FC20(&unk_10118A290) + 48);
        v110 = v135;
        *v135 = v104;
        *(v110 + 8) = v105;
        if (v106)
        {
          v111 = enum case for SearchScope.library(_:);
          v112 = type metadata accessor for SearchScope();
          v113 = *(v112 - 8);
          (*(v113 + 104))(v110 + v109, v111, v112);
          (*(v113 + 56))(v110 + v109, 0, 1, v112);
        }

        else
        {
          v130 = type metadata accessor for SearchScope();
          (*(*(v130 - 8) + 56))(v110 + v109, 1, 1, v130);
        }

        v69 = 1;
        swift_storeEnumTagMultiPayload();
        sub_1002CF480(v110, v10, type metadata accessor for AppInterfaceContext.Activity);
        v131 = v140;
        sub_1002CF480(v10, v140, type metadata accessor for AppInterfaceContext.Activity);
        v132 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v133 = swift_allocObject();
        *(v133 + 16) = 0;
        *(v133 + 24) = 0;
        sub_1002CF4E8(v131, v133 + v132, type metadata accessor for AppInterfaceContext.Activity);
        sub_100706900(v10, sub_100139B24, v133);

        v123 = type metadata accessor for AppInterfaceContext.Activity;
        sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
        v124 = v110;
LABEL_46:
        sub_1002CF550(v124, v123);
        goto LABEL_56;
      }
    }

    else
    {
      v164 = 0;
      v162 = 0u;
      v163 = 0u;
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v84 = *v32;
    v85 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
    if (v85)
    {
      *&v159 = v85;
      sub_10010FC20(&unk_101184050);
      sub_10010FC20(&unk_101184EB0);
      if (swift_dynamicCast())
      {
        if (*(&v163 + 1))
        {
          v86 = *(*sub_10000954C(&v162, *(&v163 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v162);
          if (v86)
          {
            v87 = &v10[*(sub_10010FC20(&unk_1011841E0) + 48)];
            *v10 = v84;
            type metadata accessor for AppInterfaceContext.Activity.Destination(0);
            swift_storeEnumTagMultiPayload();
            *v87 = 0;
            v87[1] = 0;
            swift_storeEnumTagMultiPayload();
            v51 = v140;
            sub_1002CF480(v10, v140, type metadata accessor for AppInterfaceContext.Activity);
            v88 = v136;
            sub_1002CF480(v51, v136, type metadata accessor for AppInterfaceContext.Activity);
            v89 = (*(v138 + 80) + 32) & ~*(v138 + 80);
            v90 = swift_allocObject();
            *(v90 + 16) = 0;
            *(v90 + 24) = 0;
            sub_1002CF4E8(v88, v90 + v89, type metadata accessor for AppInterfaceContext.Activity);
            sub_100706900(v51, sub_100139B24, v90);

            goto LABEL_26;
          }

          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_48;
  }

  if (EnumCaseMultiPayload != 7)
  {
LABEL_55:
    v69 = 0;
    goto LABEL_56;
  }

  v48 = [*(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (v48 && (*&v159 = v48, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v163 + 1))
    {
      v49 = *(*sub_10000954C(&v162, *(&v163 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

      sub_10000959C(&v162);
      if (!v49)
      {
LABEL_27:
        v69 = 1;
        goto LABEL_56;
      }

      v50 = &v10[*(sub_10010FC20(&unk_1011841E0) + 48)];
      *v10 = 4;
      type metadata accessor for AppInterfaceContext.Activity.Destination(0);
      swift_storeEnumTagMultiPayload();
      *v50 = 0;
      v50[1] = 0;
      swift_storeEnumTagMultiPayload();
      v51 = v140;
      sub_1002CF480(v10, v140, type metadata accessor for AppInterfaceContext.Activity);
      v52 = v136;
      sub_1002CF480(v51, v136, type metadata accessor for AppInterfaceContext.Activity);
      v53 = (*(v138 + 80) + 32) & ~*(v138 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = 0;
      *(v54 + 24) = 0;
      sub_1002CF4E8(v52, v54 + v53, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v51, sub_100139B24, v54);

LABEL_26:

      sub_1002CF550(v51, type metadata accessor for AppInterfaceContext.Activity);
      sub_1002CF550(v10, type metadata accessor for AppInterfaceContext.Activity);
      goto LABEL_27;
    }
  }

  else
  {
    v164 = 0;
    v162 = 0u;
    v163 = 0u;
  }

  sub_1000095E8(&v162, &unk_101184EA0);
  v69 = 1;
LABEL_56:
  v128 = *(v1 + OBJC_IVAR____TtC5Music13LaunchOptions_completionHandler);
  if (v128)
  {

    v128(v69 & 1);
    sub_100020438(v128);
  }

  return v69 & 1;
}

uint64_t sub_1002C6E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v4 = type metadata accessor for URL();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v3[22] = *(v5 + 64);
  v3[23] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for MainActor();
  v3[26] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002C6F5C, v7, v6);
}

uint64_t sub_1002C6F5C()
{

  static ApplicationCapabilities.shared.getter((v0 + 16));
  sub_100014984(v0 + 16);
  if (*(v0 + 17))
  {
    goto LABEL_8;
  }

  v1 = URL.host.getter();
  if (!v2)
  {
    goto LABEL_8;
  }

  if (v1 == 0xD000000000000014 && v2 == 0x8000000100E453A0)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
LABEL_8:
      if (URL.lastPathComponent.getter() == 1852403562 && v5 == 0xE400000000000000)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          if (URL.lastPathComponent.getter() == 0x6E69537075746573 && v8 == 0xE900000000000067)
          {
          }

          else
          {
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v25 & 1) == 0)
            {
              v36 = *(v0 + 192);
              v37 = *(v0 + 184);
              v38 = *(v0 + 160);
              v39 = *(v0 + 168);
              v41 = *(v0 + 144);
              v40 = *(v0 + 152);
              v42 = type metadata accessor for TaskPriority();
              (*(*(v42 - 8) + 56))(v36, 1, 1, v42);
              (*(v39 + 16))(v37, v41, v38);

              v43 = static MainActor.shared.getter();
              v44 = (*(v39 + 80) + 40) & ~*(v39 + 80);
              v45 = swift_allocObject();
              *(v45 + 2) = v43;
              *(v45 + 3) = &protocol witness table for MainActor;
              *(v45 + 4) = v40;
              (*(v39 + 32))(&v45[v44], v37, v38);
              sub_10086E66C(0, 0, v36, &unk_100EC5B48, v45);
              goto LABEL_19;
            }
          }

          v9 = *(v0 + 192);
          v26 = *(v0 + 184);
          v27 = *(v0 + 160);
          v28 = *(v0 + 168);
          v30 = *(v0 + 144);
          v29 = *(v0 + 152);
          v31 = type metadata accessor for TaskPriority();
          (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
          (*(v28 + 16))(v26, v30, v27);

          v32 = static MainActor.shared.getter();
          v33 = (*(v28 + 80) + 40) & ~*(v28 + 80);
          v18 = swift_allocObject();
          *(v18 + 2) = v32;
          *(v18 + 3) = &protocol witness table for MainActor;
          *(v18 + 4) = v29;
          (*(v28 + 32))(&v18[v33], v26, v27);
          v19 = &unk_100EC5B58;
LABEL_18:
          sub_1001F4CB8(0, 0, v9, v19, v18);
LABEL_19:

LABEL_20:

          v20 = *(v0 + 8);
          v21 = 1;
          goto LABEL_21;
        }
      }

      v9 = *(v0 + 192);
      v10 = *(v0 + 184);
      v11 = *(v0 + 160);
      v12 = *(v0 + 168);
      v14 = *(v0 + 144);
      v13 = *(v0 + 152);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
      (*(v12 + 16))(v10, v14, v11);

      v16 = static MainActor.shared.getter();
      v17 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v18 = swift_allocObject();
      *(v18 + 2) = v16;
      *(v18 + 3) = &protocol witness table for MainActor;
      *(v18 + 4) = v13;
      (*(v12 + 32))(&v18[v17], v10, v11);
      v19 = &unk_100EC5B68;
      goto LABEL_18;
    }
  }

  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v24 = v23;
    if (LSApplicationWorkspace.openNotificationSettings()())
    {

      goto LABEL_20;
    }

    sub_1002D0D20();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
  }

  else
  {
    sub_1002D0D20();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  v20 = *(v0 + 8);
  v21 = 0;
LABEL_21:

  return v20(v21);
}

uint64_t sub_1002C74B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1002AC1CC;

  return sub_1002CA3D8(a5);
}

uint64_t sub_1002C7574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1001AB600;

  return sub_1002CD534(a5);
}

uint64_t sub_1002C7630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  sub_10010FC20(&qword_101183A20);
  v5[14] = swift_task_alloc();
  sub_10010FC20(&qword_10118A418);
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v7;
  v5[18] = v6;

  return _swift_task_switch(sub_1002C773C, v7, v6);
}

uint64_t sub_1002C773C()
{
  v1 = [*(*(v0 + 96) + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
  if (!v1)
  {

    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_12:
    sub_1000095E8(v0 + 16, &unk_101184EA0);
    goto LABEL_13;
  }

  *(v0 + 80) = v1;
  sub_10010FC20(&unk_101184050);
  sub_10010FC20(&unk_101184EB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_11;
  }

  v2 = *(v0 + 40);
  if (!v2)
  {
LABEL_11:

    goto LABEL_12;
  }

  v3 = *(*sub_10000954C((v0 + 16), v2) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 16);
  if (v3)
  {
    v4 = *(v3 + 16);
    *(v0 + 152) = v4;

    if (v4)
    {
      v6 = *(v0 + 112);
      v5 = *(v0 + 120);
      v7 = *(v0 + 96);
      v8 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
      swift_beginAccess();
      sub_1000089F8(v7 + v8, v6, &qword_101183A20);

      ReferrerInfo.init(externalReferrerURL:referringApp:)();
      v9 = type metadata accessor for ReferrerInfo();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
      v10 = swift_task_alloc();
      *(v0 + 160) = v10;
      *v10 = v0;
      v10[1] = sub_1002C7A50;
      v11 = *(v0 + 120);
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);

      return MusicPageProvider.openURL(_:referrerInfo:)(v13, v12, v11);
    }
  }

LABEL_13:
  v14 = *(v0 + 88);
  v15 = sub_10010FC20(&unk_10118A420);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002C7A50()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 168) = v0;

  sub_1000095E8(v3, &qword_10118A418);

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = sub_1002C7CAC;
  }

  else
  {
    v6 = sub_1002C7BDC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1002C7BDC()
{

  v1 = *(v0 + 88);
  v2 = sub_10010FC20(&unk_10118A420);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002C7CAC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1002C7D24(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118A400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 56) = &type metadata for LaunchURL.GenericHandler;
  *(inited + 64) = &protocol witness table for LaunchURL.GenericHandler;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = static LaunchURL.ArrayBuilder.buildBlock(_:)(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &qword_10118A408);
  return v5;
}

uint64_t sub_1002C7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_1002C7EA0;

  return LaunchURL.Resolver.perform(withURL:)(a5);
}

uint64_t sub_1002C7EA0(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1002C80A0;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1002C8034;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002C8034()
{
  v1 = *(v0 + 48);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002C80A0()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1002C810C(void *a1, NSObject *a2)
{
  v188 = a2;
  v174 = type metadata accessor for AppInterfaceContext.Activity(0);
  v175 = *(v174 - 8);
  v3 = __chkstk_darwin(v174);
  v177 = v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v179 = v166 - v6;
  v176 = v7;
  __chkstk_darwin(v5);
  v178 = v166 - v8;
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v186 = v166 - v10;
  v180 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v180);
  v181 = (v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PlaybackIntentDescriptor(0);
  v182 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v183 = v14;
  v184 = v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v185 = v166 - v15;
  v169 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v169);
  v170 = v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&qword_101181B78);
  __chkstk_darwin(v17 - 8);
  v171 = v166 - v18;
  v173 = type metadata accessor for TVSeason();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v168 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_1011846B0);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = v166 - v24;
  v26 = type metadata accessor for MusicVideo();
  v187 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v29 - 8);
  v31 = v166 - v30;
  v32 = type metadata accessor for Artist();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = v166 - v37;
  v39 = type metadata accessor for ContainerDetail.Source(0);
  v40 = __chkstk_darwin(v39);
  v42 = v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v166[1] = v40;
  v167 = v42;
  v189 = a1;
  v43 = [v189 type];
  if (v43 > 3)
  {
    if (v43 != 4)
    {
      if (v43 == 6)
      {
        v107 = [v189 tvEpisode];
        if (v107)
        {
          v108 = v107;
          if ([v107 isLibraryAdded] && (v109 = objc_msgSend(v108, "season")) != 0)
          {
            v110 = v109;
            v111 = [v108 show];
            if (v111)
            {

              v112 = v110;
              v113 = v171;
              v114 = v173;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v115 = v172;
              if ((*(v172 + 48))(v113, 1, v114) != 1)
              {
                v163 = v168;
                (*(v115 + 32))(v168, v113, v114);
                v164 = v170;
                (*(v115 + 16))(v170, v163, v114);
                swift_storeEnumTagMultiPayload();
                v165 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController());
                v125 = sub_10061A47C(v164, 0);

                (*(v115 + 8))(v163, v114);
                goto LABEL_96;
              }

              sub_1000095E8(v113, &qword_101181B78);
              goto LABEL_105;
            }
          }

          else
          {
            v110 = v108;
          }
        }

        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v116 = type metadata accessor for Logger();
        sub_1000060E4(v116, qword_101189E90);
        v188 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v188, v117))
        {
          goto LABEL_74;
        }

        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = "Unable to resolve TV episode";
        goto LABEL_73;
      }

      if (v43 != 9)
      {
        goto LABEL_34;
      }

      v50 = [v189 movie];
      if (!v50)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v122 = type metadata accessor for Logger();
        sub_1000060E4(v122, qword_101189E90);
        v188 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v188, v117))
        {
          goto LABEL_74;
        }

        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = "Unable to resolve movie";
        goto LABEL_73;
      }

      v187 = v50;
      if (([v50 isLibraryAdded]& 1) != 0)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000060E4(v51, qword_101189E90);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "Resolved movie", v54, 2u);
        }

        v55 = [objc_allocWithZone(MPModelLibraryRequest) init];
        v56 = String._bridgeToObjectiveC()();
        [v55 setLabel:v56];

        sub_100009F78(0, &qword_10118A288);
        v57 = static MPModelMovie.defaultMusicKind.getter();
        [v55 setItemKind:v57];

        sub_10010FC20(&qword_101183990);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_100EBC6C0;
        *(v58 + 32) = [v187 identifiers];
        sub_100009F78(0, &qword_101192200);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v55 setAllowedItemIdentifiers:isa];

        v60 = [v55 playbackIntentWithStartItemIdentifiers:0];
        if (v60)
        {
          v61 = v60;
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&_mh_execute_header, v62, v63, "Adding playback intent to engine", v64, 2u);
          }

          v65 = v181;
          *v181 = v61;
          swift_storeEnumTagMultiPayload();
          v193 = 0;
          v191 = 0u;
          v192 = 0u;
          v66 = v188;
          v67 = *(&v188->isa + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
          v68 = v61;
          v69 = v67;
          v70 = UIWindowScene.rootViewController.getter();

          v71 = OBJC_IVAR____TtC5Music13LaunchOptions_source;
          v190[3] = type metadata accessor for LaunchOptions.Source(0);
          v190[4] = &off_1010A43B0;
          v72 = sub_10001C8B8(v190);
          sub_1002CF480(v66 + v71, v72, type metadata accessor for LaunchOptions.Source);
          v73 = v185;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v65, &v191, 3, 0, 0, 1, 0, 1, v185, v70, v190);
          v74 = type metadata accessor for TaskPriority();
          v75 = v186;
          (*(*(v74 - 8) + 56))(v186, 1, 1, v74);
          v76 = v184;
          sub_1002CF480(v73, v184, type metadata accessor for PlaybackIntentDescriptor);
          type metadata accessor for MainActor();
          v77 = static MainActor.shared.getter();
          v78 = (*(v182 + 80) + 32) & ~*(v182 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = v77;
          *(v79 + 24) = &protocol witness table for MainActor;
          sub_1002CF4E8(v76, v79 + v78, type metadata accessor for PlaybackIntentDescriptor);
          sub_1001F4F78(0, 0, v75, &unk_100EC5B70, v79);

          sub_1002CF550(v73, type metadata accessor for PlaybackIntentDescriptor);
          goto LABEL_105;
        }

LABEL_86:
        v97 = v187;
        goto LABEL_75;
      }

LABEL_85:

      goto LABEL_86;
    }

    v187 = [v189 playlist];
    if (!v187)
    {
      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      sub_1000060E4(v120, qword_101189E90);
      v188 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v188, v117))
      {
        goto LABEL_74;
      }

      v118 = swift_slowAlloc();
      *v118 = 0;
      v119 = "Unable to resolve playlist";
      goto LABEL_73;
    }

    v88 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v88, 0);
    if (v89)
    {

      v90 = sub_10010FC20(&qword_10118A430);
      v91 = *(v90 + 48);
      v92 = *(v90 + 64);
      v93 = _s6AlbumsV5ScopeOMa(0);
      v94 = v167;
      swift_storeEnumTagMultiPayload();
      (*(*(v93 - 8) + 56))(v94, 0, 1, v93);
      v94[v91] = 0;
      v94[v92] = 0;
      swift_storeEnumTagMultiPayload();
      v95 = v187;
      v96 = v94;
    }

    else
    {
      v127 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v127, 0);
      if (!v128)
      {
        goto LABEL_85;
      }

      v129 = v167;
      *v167 = 0;
      swift_storeEnumTagMultiPayload();
      v95 = v187;
      v96 = v129;
    }

    v106 = sub_1006A99C4(v95, v96, 0, 0);
    if (!v106)
    {
      goto LABEL_105;
    }

    goto LABEL_95;
  }

  switch(v43)
  {
    case 1:
      v80 = [v189 song];
      if (v80)
      {
        v81 = v80;
        v82 = [v80 album];
        if (v82)
        {
          v83 = v82;
          v84 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
          MPModelObject.bestIdentifier(for:)(*v84, 0);
          if (v85)
          {

            v86 = v81;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v87 = v187;
            if ((v187[6].isa)(v25, 1, v26) == 1)
            {
              sub_1000095E8(v25, &unk_1011846B0);
            }

            else
            {
              v87[4](v28, v25, v26);
              if ([v83 trackCount] <= 1)
              {
                v87[2](v23, v28, v26);
                (v87[7])(v23, 0, 1, v26);
                v137 = objc_allocWithZone(type metadata accessor for LibraryMusicVideosViewController());
                v125 = sub_100507278(0, v23);

                (v87[1])(v28, v26);
                goto LABEL_96;
              }

              (v87[1])(v28, v26);
            }

            v138 = sub_10010FC20(&qword_10118A430);
            v139 = *(v138 + 48);
            v140 = *(v138 + 64);
            v141 = _s6AlbumsV5ScopeOMa(0);
            v142 = v167;
            swift_storeEnumTagMultiPayload();
            (*(*(v141 - 8) + 56))(v142, 0, 1, v141);
            v142[v139] = 0;
            v142[v140] = 0;
            swift_storeEnumTagMultiPayload();
            v135 = v83;
            v136 = v142;
          }

          else
          {
            v134 = v167;
            *v167 = 0;
            swift_storeEnumTagMultiPayload();
            v135 = v83;
            v136 = v134;
          }

          v106 = sub_1006A9254(v135, v136, v81);
          if (v106)
          {
            goto LABEL_95;
          }

LABEL_105:

          return;
        }
      }

      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v126 = type metadata accessor for Logger();
      sub_1000060E4(v126, qword_101189E90);
      v188 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v188, v117))
      {
        goto LABEL_74;
      }

      v118 = swift_slowAlloc();
      *v118 = 0;
      v119 = "Unable to resolve song";
      goto LABEL_73;
    case 2:
      v98 = [v189 album];
      if (!v98)
      {
        if (qword_10117F540 != -1)
        {
          swift_once();
        }

        v123 = type metadata accessor for Logger();
        sub_1000060E4(v123, qword_101189E90);
        v188 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v188, v117))
        {
          goto LABEL_74;
        }

        v118 = swift_slowAlloc();
        *v118 = 0;
        v119 = "Unable to resolve album";
LABEL_73:
        _os_log_impl(&_mh_execute_header, v188, v117, v119, v118, 2u);

LABEL_74:

        v97 = v188;
        goto LABEL_75;
      }

      v187 = v98;
      v99 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
      MPModelObject.bestIdentifier(for:)(*v99, 0);
      if (v100)
      {

        v101 = sub_10010FC20(&qword_10118A430);
        v102 = *(v101 + 48);
        v103 = *(v101 + 64);
        v104 = _s6AlbumsV5ScopeOMa(0);
        v105 = v167;
        swift_storeEnumTagMultiPayload();
        (*(*(v104 - 8) + 56))(v105, 0, 1, v104);
        *(v105 + v102) = 0;
        *(v105 + v103) = 0;
        swift_storeEnumTagMultiPayload();
        v106 = sub_1006A9254(v187, v105, 0);
        if (!v106)
        {
          goto LABEL_105;
        }

LABEL_95:
        v125 = v106;
        goto LABEL_96;
      }

      v130 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
      v131 = ModelObjectBackedStoreItemMetadata.init(modelObject:)(v187);
      if (v131)
      {
        v132 = v131;
        v133 = v167;
        *v167 = 0;
        swift_storeEnumTagMultiPayload();
        v125 = sub_1006A9254(v187, v133, 0);

        if (v125)
        {
          goto LABEL_96;
        }

        goto LABEL_105;
      }

      goto LABEL_85;
    case 3:
      v44 = [v189 artist];
      if (v44)
      {
        v45 = v44;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        if ((*(v33 + 48))(v31, 1, v32) == 1)
        {
          sub_1000095E8(v31, &unk_101184930);
          if (qword_10117F540 != -1)
          {
            swift_once();
          }

          v46 = type metadata accessor for Logger();
          sub_1000060E4(v46, qword_101189E90);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v47, v48, "Unable to convert to MusicKit Item", v49, 2u);
          }

          return;
        }

        (*(v33 + 32))(v38, v31, v32);
        (*(v33 + 16))(v36, v38, v32);
        v124 = objc_allocWithZone(type metadata accessor for LibraryArtistDetailViewController(0));
        v125 = sub_1001FAE8C(v36, 0);

        (*(v33 + 8))(v38, v32);
LABEL_96:
        v143 = v125;
        v144 = [*(&v188->isa + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene) delegate];
        if (v144)
        {
          v190[0] = v144;
          sub_10010FC20(&unk_101184050);
          sub_10010FC20(&unk_101184EB0);
          if (swift_dynamicCast())
          {
            if (*(&v192 + 1))
            {
              v145 = *(*sub_10000954C(&v191, *(&v192 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C(&v191);
              if (v145)
              {
                if (qword_10117F540 != -1)
                {
                  swift_once();
                }

                v146 = type metadata accessor for Logger();
                sub_1000060E4(v146, qword_101189E90);
                v147 = v143;
                v148 = Logger.logObject.getter();
                v149 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v148, v149))
                {
                  v150 = swift_slowAlloc();
                  v151 = swift_slowAlloc();
                  *v150 = 138543362;
                  *(v150 + 4) = v147;
                  *v151 = v147;
                  v152 = v147;
                  _os_log_impl(&_mh_execute_header, v148, v149, "Navigating to %{public}@", v150, 0xCu);
                  sub_1000095E8(v151, &unk_101183D70);
                }

                v153 = sub_10010FC20(&unk_1011841E0);
                v154 = v178;
                v155 = &v178[*(v153 + 48)];
                v156 = *(sub_10010FC20(&unk_10118CE00) + 48);
                *v154 = v147;
                v157 = type metadata accessor for UITraitOverrides();
                (*(*(v157 - 8) + 56))(&v154[v156], 1, 1, v157);
                type metadata accessor for AppInterfaceContext.Activity.Destination(0);
                swift_storeEnumTagMultiPayload();
                *v155 = 0;
                *(v155 + 1) = 0;
                swift_storeEnumTagMultiPayload();
                v158 = v179;
                sub_1002CF480(v154, v179, type metadata accessor for AppInterfaceContext.Activity);
                v159 = v177;
                sub_1002CF480(v158, v177, type metadata accessor for AppInterfaceContext.Activity);
                v160 = (*(v175 + 80) + 32) & ~*(v175 + 80);
                v161 = swift_allocObject();
                *(v161 + 16) = 0;
                *(v161 + 24) = 0;
                sub_1002CF4E8(v159, v161 + v160, type metadata accessor for AppInterfaceContext.Activity);
                v162 = v147;
                sub_100706900(v158, sub_100139B24, v161);

                sub_1002CF550(v158, type metadata accessor for AppInterfaceContext.Activity);
                sub_1002CF550(v154, type metadata accessor for AppInterfaceContext.Activity);
              }

              else
              {
              }

              return;
            }
          }

          else
          {
            v193 = 0;
            v191 = 0u;
            v192 = 0u;
          }
        }

        else
        {

          v193 = 0;
          v191 = 0u;
          v192 = 0u;
        }

        sub_1000095E8(&v191, &unk_101184EA0);
        return;
      }

      if (qword_10117F540 != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      sub_1000060E4(v121, qword_101189E90);
      v188 = Logger.logObject.getter();
      v117 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v188, v117))
      {
        goto LABEL_74;
      }

      v118 = swift_slowAlloc();
      *v118 = 0;
      v119 = "Unable to resolve artist";
      goto LABEL_73;
  }

LABEL_34:
  v97 = v189;
LABEL_75:
}

uint64_t sub_1002C9C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v17[0] = a2;
  *(&v17[0] + 1) = a3;

  v7 = [(objc_class *)v6.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v8 = swift_dynamicCast();
    v9 = v13;
    v10 = v14;
    if (!v8)
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    sub_1000095E8(v17, &unk_101183F30);
    v9 = 0;
    v10 = 0;
  }

  v11 = (v3 + OBJC_IVAR____TtC5Music13LaunchOptions_sourceApplicationBundleIdentifier);
  *v11 = v9;
  v11[1] = v10;
}

uint64_t sub_1002C9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v21 = a2;
  v22 = a3;

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    return sub_10001621C(v23);
  }

  v11 = sub_1000160B4(v23);
  if ((v12 & 1) == 0)
  {
    return sub_10001621C(v23);
  }

  sub_10000DD18(*(a1 + 56) + 32 * v11, v24);
  sub_10001621C(v23);
  sub_10010FC20(&unk_10118A3F0);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v21;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v14 + 16))
    {
      sub_100019C10(v15, v16);
      v18 = v17;

      if (v18)
      {

        URL.init(string:)();

        v19 = OBJC_IVAR____TtC5Music13LaunchOptions_referrerURL;
        swift_beginAccess();
        sub_10006B010(v10, v4 + v19, &qword_101183A20);
        return swift_endAccess();
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1002C9F54()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
  v2 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v38 = static PresentationSource.topmostPresentedViewController(in:options:)(v1, *v2);

  if (!v38)
  {
    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    if (qword_10117F540 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, qword_101189E90);
    v6 = v38;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      *(v9 + 4) = v4;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Passing to %{public}@", v9, 0xCu);
      sub_1000095E8(v10, &unk_101183D70);
    }

    URL._bridgeToObjectiveC()(v12);
    v38 = v13;
    [v4 handleSafariScriptURL:?];
  }

  else
  {
    v14 = &stru_101148000;
    v15 = [v38 presentingViewController];
    if (!v15)
    {
      goto LABEL_9;
    }

    v16 = v15;
    v17 = &unk_10117F000;
    v18 = qword_101189E90;
    while (1)
    {
      if (v17[168] != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, v18);
      v20 = v16;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v18;
        v25 = v14;
        v26 = swift_slowAlloc();
        *v23 = 138543362;
        *(v23 + 4) = v20;
        *v26 = v16;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "Evaluating %{public}@", v23, 0xCu);
        sub_1000095E8(v26, &unk_101183D70);
        v14 = v25;
        v18 = v24;

        v17 = &unk_10117F000;
      }

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        break;
      }

      v16 = [v38 v14[64].name];
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    v29 = v28;
    v30 = v20;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      *(v33 + 4) = v29;
      *v34 = v29;
      v35 = v30;
      _os_log_impl(&_mh_execute_header, v31, v32, "Passing to %{public}@", v33, 0xCu);
      sub_1000095E8(v34, &unk_101183D70);
    }

    URL._bridgeToObjectiveC()(v36);
    v6 = v37;
    [v29 handleSafariScriptURL:v37];
  }

LABEL_9:
}

uint64_t sub_1002CA3D8(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_10010FC20(&unk_101181520);
  v2[20] = swift_task_alloc();
  sub_10010FC20(&qword_101194980);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for URLComponents();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[27] = v4;
  v5 = *(v4 - 8);
  v2[28] = v5;
  v2[29] = *(v5 + 64);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[32] = v6;
  v2[33] = *(v6 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for MainActor();
  v2[41] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[42] = v8;
  v2[43] = v7;

  return _swift_task_switch(sub_1002CA660, v8, v7);
}

uint64_t sub_1002CA660()
{
  v45 = v0;
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[18];
  v8 = Logger.sharePlayTogether.unsafeMutableAddressor();
  v0[44] = v8;
  v9 = *(v3 + 16);
  v0[45] = v9;
  v0[46] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v43 = v9;
  v9(v1, v8, v2);
  v10 = *(v5 + 16);
  v0[47] = v10;
  v0[48] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v7, v6);
  v11 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v11, v42);
  v13 = v0[39];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[31];
  v18 = v0[27];
  v17 = v0[28];
  if (v12)
  {
    v19 = swift_slowAlloc();
    v41 = v8;
    v20 = swift_slowAlloc();
    v44 = v20;
    *v19 = 136315138;
    sub_1002CF674(&qword_1011A4850, &type metadata accessor for URL);
    v39 = v15;
    v40 = v13;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_1000105AC(v21, v23, &v44);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v11, v42, "Handling URL %s", v19, 0xCu);
    sub_10000959C(v20);
    v8 = v41;

    v25 = *(v14 + 8);
    v25(v40, v39);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v14 + 8);
    v25(v13, v15);
  }

  v0[49] = v25;
  v26 = [objc_opt_self() sharedPrivacyInfo];
  v27 = [v26 privacyAcknowledgementRequiredForMusic];

  if (v27)
  {
    v28 = v0[34];
    v29 = v0[32];

    v43(v28, v8, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[34];
    v34 = v0[32];
    if (v32)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Privacy ack required, not presenting SharePlayTogether sheet.", v35, 2u);
    }

    v25(v33, v34);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v0[50] = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    v38 = swift_task_alloc();
    v0[51] = v38;
    *v38 = v0;
    v38[1] = sub_1002CAAEC;

    return ApplicationCapabilities.Controller.updated()((v0 + 2));
  }
}

uint64_t sub_1002CAAEC()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_1002CAC30, v3, v2);
}

uint64_t sub_1002CAC30()
{
  v1 = *(v0 + 104);
  *(v0 + 416) = v1;
  if (!v1)
  {
    v19 = *(v0 + 360);
    v20 = *(v0 + 352);
    v21 = *(v0 + 280);
    v22 = *(v0 + 256);

    v19(v21, v20, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Subscription status is nil, waiting for it to update", v25, 2u);
    }

    v26 = *(v0 + 392);
    v113 = *(v0 + 376);
    v27 = *(v0 + 280);
    v28 = *(v0 + 256);
    v29 = *(v0 + 240);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);
    v32 = *(v0 + 152);
    v112 = *(v0 + 144);

    v26(v27, v28);
    v33 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
    v34 = objc_opt_self();
    v35 = v33;
    v36 = [v34 sharedController];
    v113(v29, v112, v30);
    v37 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    (*(v31 + 32))(v38 + v37, v29, v30);
    type metadata accessor for NotificationObserver();
    swift_allocObject();

    v39 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v35, v36, 1, 1, sub_1002D0280, v38);
    sub_100014984(v0 + 16);
    *(v32 + OBJC_IVAR____TtC5Music13LaunchOptions_subscriptionStatusObserver) = v39;
    goto LABEL_9;
  }

  v2 = v1;
  if ([v2 isMinorAccountHolder])
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 352);
    v5 = *(v0 + 288);
    v6 = *(v0 + 256);

    v3(v5, v4, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to join because account is a minor", v9, 2u);
    }

    v10 = *(v0 + 392);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);

    v10(v11, v12);
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v14;
    v18 = &unk_100EC5AE8;
LABEL_17:
    sub_1001F4CB8(0, 0, v13, v18, v17);

    sub_100014984(v0 + 16);
    goto LABEL_18;
  }

  if ((sub_10048BBDC(9, *(v0 + 48)) & 1) == 0)
  {
    v46 = *(v0 + 360);
    v47 = *(v0 + 352);
    v48 = *(v0 + 296);
    v49 = *(v0 + 256);

    v46(v48, v47, v49);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Failed to join because allowedServices don't contain .sharePlayTogether", v52, 2u);
    }

    v53 = *(v0 + 392);
    v54 = *(v0 + 296);
    v55 = *(v0 + 256);
    v56 = *(v0 + 152);
    v13 = *(v0 + 160);

    v53(v54, v55);
    v57 = type metadata accessor for TaskPriority();
    (*(*(v57 - 8) + 56))(v13, 1, 1, v57);

    v58 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v58;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v56;
    v18 = &unk_100EC5AC8;
    goto LABEL_17;
  }

  URL.absoluteString.getter();
  v40 = String._bridgeToObjectiveC()();

  v41 = [objc_opt_self() tokenForJoinURLString:v40];
  *(v0 + 424) = v41;

  if (!v41)
  {
    v61 = *(v0 + 360);
    v62 = *(v0 + 352);
    v63 = *(v0 + 304);
    v64 = *(v0 + 256);

    v61(v63, v62, v64);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Failed to join because token is nil", v67, 2u);
    }

    v68 = *(v0 + 392);
    v69 = *(v0 + 304);
    v70 = *(v0 + 256);
    v72 = *(v0 + 152);
    v71 = *(v0 + 160);

    v68(v69, v70);
    v73 = type metadata accessor for TaskPriority();
    (*(*(v73 - 8) + 56))(v71, 1, 1, v73);

    v74 = static MainActor.shared.getter();
    v75 = swift_allocObject();
    v75[2] = v74;
    v75[3] = &protocol witness table for MainActor;
    v75[4] = v72;
    sub_1001F4CB8(0, 0, v71, &unk_100EC5AD8, v75);

    sub_100014984(v0 + 16);
LABEL_9:

LABEL_18:

    v59 = *(v0 + 8);

    return v59();
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 192);
  v44 = *(v0 + 176);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v45 = *(v43 + 48);
  if (v45(v44, 1, v42) == 1)
  {
    sub_1000095E8(*(v0 + 176), &qword_101194980);
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 208), *(v0 + 176), *(v0 + 184));
    v76 = URLComponents.queryItemsDictionary.getter();
    if (v76)
    {
      v77 = v76;
      if (*(v76 + 16))
      {
        v78 = sub_100019C10(97, 0xE100000000000000);
        if (v79)
        {
          v80 = (*(v77 + 56) + 16 * v78);
          v82 = *v80;
          v81 = v80[1];

          v83 = *(v0 + 208);
          v84 = *(v0 + 184);
          v85 = *(v0 + 192);
          if (v82 == 1702195828 && v81 == 0xE400000000000000)
          {

            (*(v85 + 8))(v83, v84);
          }

          else
          {
            v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

            (*(v85 + 8))(v83, v84);
            v86 = 0;
            if ((v111 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v86 = 1;
          goto LABEL_33;
        }
      }
    }

    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));
  }

  v86 = 0;
LABEL_33:
  v87 = *(v0 + 184);
  v88 = *(v0 + 168);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (v45(v88, 1, v87) == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_101194980);
LABEL_43:
    v106 = 0;
    goto LABEL_44;
  }

  (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 168), *(v0 + 184));
  v89 = URLComponents.queryItemsDictionary.getter();
  if (!v89)
  {
    goto LABEL_42;
  }

  v90 = v89;
  if (!*(v89 + 16) || (v91 = sub_100019C10(29811, 0xE200000000000000), (v92 & 1) == 0))
  {

    goto LABEL_42;
  }

  v93 = (*(v90 + 56) + 16 * v91);
  v94 = *v93;
  v95 = v93[1];

  v96 = sub_1002B8768(v94, v95);
  if (v97)
  {
LABEL_42:
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    goto LABEL_43;
  }

  v98 = v96;
  v100 = *(v0 + 192);
  v99 = *(v0 + 200);
  v101 = *(v0 + 184);
  if (v98 != 1)
  {
    (*(v100 + 8))(v99, v101);
    goto LABEL_43;
  }

  *(v0 + 448) = 8;
  v102 = v99;
  v103 = v101;
  v104 = sub_100025CE0();
  v105 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v104);
  (*(v100 + 8))(v102, v103);
  v106 = v105 & 1;
LABEL_44:
  v107 = *(v0 + 152);
  type metadata accessor for SharePlayTogetherSession(0);
  v108 = *(v107 + OBJC_IVAR____TtC5Music13LaunchOptions_windowScene);
  *(v0 + 432) = v108;
  v109 = v108;
  v110 = swift_task_alloc();
  *(v0 + 440) = v110;
  *v110 = v0;
  v110[1] = sub_1002CB768;

  return sub_10074A0BC(v41, v109, v86, v106, 0, 0);
}