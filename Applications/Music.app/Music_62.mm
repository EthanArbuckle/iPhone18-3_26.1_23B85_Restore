void sub_1006DB538()
{
  v1 = v0;
  v2 = sub_1006D1794();
  v3 = [v2 indexPathsForSelectedItems];

  if (v3)
  {
    type metadata accessor for IndexPath();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101219770);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    type metadata accessor for IndexPath();
    v10 = Array.description.getter();
    v12 = sub_1000105AC(v10, v11, v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "🚮 Will remove %s indexes", v8, 0xCu);
    sub_10000959C(v9);
  }

  v13 = *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView];
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v4;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1006E1A68;
  *(v15 + 24) = v14;
  v19[4] = sub_100029B94;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100029B9C;
  v19[3] = &unk_1010BB3F8;
  v16 = _Block_copy(v19);
  v17 = v13;
  v18 = v1;

  [v17 performBatchUpdates:v16 completion:0];
  _Block_release(v16);
}

void sub_1006DB7E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
  if (!*(a1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

  v11 = *(a2 + 16);
  if (v11)
  {
    v27 = a1;
    v40 = _swiftEmptyArrayStorage;
    sub_10066CED8(0, v11, 0);
    v12 = v40;
    v13 = v5 + 16;
    v36 = *(v5 + 16);
    v37 = v5 + 16;
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26[1] = a2;
    v15 = a2 + v14;
    v34 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v35 = v10;
    v33 = v10 + v34;
    v16 = *(v13 + 56);
    v31 = v39 + 16;
    v32 = v16;
    v29 = (v39 + 32);
    v30 = (v13 - 8);
    while (1)
    {
      v36(v7, v15, v4);
      v17 = IndexPath.item.getter();
      if ((v17 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v17 >= *(v10 + 16))
      {
        goto LABEL_13;
      }

      v18 = v38;
      v19 = *(v39 + 72);
      (*(v39 + 16))(v38, v33 + v19 * v17, v8);
      (*v30)(v7, v4);
      v40 = v12;
      v20 = v8;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        sub_10066CED8(v21 > 1, v22 + 1, 1);
        v18 = v38;
        v12 = v40;
      }

      v12[2] = v22 + 1;
      (*v29)(v12 + v34 + v22 * v19, v18, v20);
      v15 += v32;
      --v11;
      v8 = v20;
      v10 = v35;
      if (!v11)
      {
        a1 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_10:
  if (*(a1 + v28))
  {

    dispatch thunk of MusicLibraryPlaylistEditViewModel.remove(_:)();

    v23 = sub_1006D1794();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v23 deleteItemsAtIndexPaths:isa];

    v25 = sub_1006D251C();
    [v25 setEnabled:0];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_1006DBB84()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v57 = &v54 - v3;
  v58 = sub_10010FC20(&qword_10119EF68);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v54 - v4;
  v5 = sub_10010FC20(&qword_10119EF70);
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v59 = &v54 - v6;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v11 - 8);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v63 = v18;
  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_101219770);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will present Music picker", v22, 2u);
  }

  v23 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);
  v25(v15, 1, 1, v24);
  (*(v8 + 16))(v10, &v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist], v7);
  v26 = v23;
  v27 = Playlist.id.getter();
  v28 = v7;
  v29 = v1;
  v31 = v30;
  (*(v8 + 8))(v10, v28);
  v32 = v62;
  v25(v62, 1, 1, v24);
  v33 = v63;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x636973754D646461, 0xE800000000000000, 5, 44, v15, 0, 0, 12, v63, 0, 0, 65280, v27, v31, 0x7473696C79616C50, 0xE800000000000000, v32, 0, 1, 2, 0, 0, 0);
  v34 = sub_10053771C();
  v36 = v35;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v37 = qword_101218AD0;
  v38 = GroupActivitiesManager.hasJoined.getter();
  v39 = GroupActivitiesManager.participantsCount.getter();
  v40 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v26) + 0xB8))(v33, v34, v36, v38 & 1, v39, *(v37 + v40));

  sub_1006E2FFC(v33, type metadata accessor for MetricsEvent.Click);
  v41 = sub_1006D64F0();
  result = [v29 view];
  if (result)
  {
    v43 = result;
    v44 = [v41 isDescendantOfView:result];

    if (v44)
    {
LABEL_11:
      sub_1006D6360();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v64) = 1;
      return static Published.subscript.setter();
    }

    result = [v29 view];
    if (result)
    {
      v45 = result;
      [result addSubview:*&v29[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView]];

      sub_1006D6360();
      swift_beginAccess();
      sub_10010FC20(&qword_10119B4B8);
      v46 = v55;
      Published.projectedValue.getter();
      swift_endAccess();

      sub_100009F78(0, &qword_101182960);
      v47 = static OS_dispatch_queue.main.getter();
      v64 = v47;
      v48 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v49 = v57;
      (*(*(v48 - 8) + 56))(v57, 1, 1, v48);
      sub_100020674(&unk_10119EF78, &qword_10119EF68);
      sub_1000206BC();
      v50 = v58;
      v51 = v59;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v49, &qword_101182140);

      (*(v56 + 8))(v46, v50);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&unk_10119EF88, &qword_10119EF70);
      v52 = v61;
      v53 = Publisher<>.sink(receiveValue:)();

      (*(v60 + 8))(v51, v52);
      *&v29[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription] = v53;

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006DC438(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006DA0D0(v1);
  }
}

id sub_1006DC494()
{
  v1 = v0;
  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219770);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Will dismiss edit view controller", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1006DC594()
{
  v1[170] = v0;
  v2 = type metadata accessor for Logger();
  v1[171] = v2;
  v1[172] = *(v2 - 8);
  v1[173] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v1[174] = swift_task_alloc();
  v3 = type metadata accessor for Playlist();
  v1[175] = v3;
  v1[176] = *(v3 - 8);
  v1[177] = swift_task_alloc();
  type metadata accessor for Locale();
  v1[178] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[179] = swift_task_alloc();
  v1[180] = type metadata accessor for MainActor();
  v1[181] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[182] = v5;
  v1[183] = v4;

  return _swift_task_switch(sub_1006DC77C, v5, v4);
}

uint64_t sub_1006DC77C()
{
  if (![*(v0 + 1360) isEditing])
  {
    goto LABEL_13;
  }

  if (sub_1006D65D8())
  {
    v1 = 1;
  }

  else
  {
    v1 = *(*(v0 + 1360) + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges);
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  *(v0 + 1472) = sub_1000060E4(*(v0 + 1368), qword_101219770);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "🏮Save button called, hasChanges=%{BOOL}d", v4, 8u);
  }

  if (v1)
  {
    v5 = *(v0 + 1360);
    v6 = sub_1006D6A4C();
    *(v0 + 1480) = sub_1006D2BA8();
    *(v0 + 1136) = 0u;
    *(v0 + 1152) = 0u;
    *(v0 + 1168) = 0;
    *(v0 + 1176) = 255;
    *(v0 + 1184) = 0;
    PresentationSource.init(viewController:position:)(v5, v0 + 1136, v0 + 1040);
    v7 = swift_task_alloc();
    *(v0 + 1488) = v7;
    *v7 = v0;
    v7[1] = sub_1006DC9DC;

    return sub_1004F475C(v0 + 1040, v6 & 1);
  }

  else
  {
LABEL_13:

    sub_1006DC494();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1006DC9DC(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1497) = a1;

  sub_10012BA6C(v3 + 1040);
  v4 = *(v2 + 1464);
  v5 = *(v2 + 1456);

  return _swift_task_switch(sub_1006DCB30, v5, v4);
}

void sub_1006DCB30()
{
  v101 = v0;
  if (*(v0 + 1497) == 1)
  {
    [*(v0 + 1360) setEditing:0 animated:1];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v2 = String.trim()();

    v3 = (v2._object >> 56) & 0xF;
    if ((v2._object & 0x2000000000000000) == 0)
    {
      v3 = v2._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
    }

    v4 = *(v0 + 1360);
    v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController;
    if (*&v4[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController])
    {

      dispatch thunk of MusicLibraryPlaylistEditViewModel.name.setter();

      if (*&v4[v5])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        dispatch thunk of MusicLibraryPlaylistEditViewModel.description.setter();

        v98 = v4;
        v99 = v5;
        if (*&v4[v5])
        {
          v6 = *(v0 + 1416);
          v7 = *(v0 + 1408);
          v8 = *(v0 + 1400);
          v9 = *(v0 + 1360);
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          dispatch thunk of MusicLibraryPlaylistEditViewModel.isVisiblePlaylist.setter();

          (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v8);
          sub_1006CF48C();
          v10 = *(v7 + 8);
          v1 = (v7 + 8);
          v10(v6, v8);
          LOBYTE(v6) = sub_100031064(0);

          if ((v6 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v11 = *(v0 + 384), v12 = *(v0 + 400), *(v0 + 248) = v11, *(v0 + 264) = v12, v13 = *(v0 + 416), *(v0 + 280) = v13, v14 = *(v0 + 320), v15 = *(v0 + 336), *(v0 + 184) = v14, *(v0 + 200) = v15, v17 = *(v0 + 352), v16 = *(v0 + 368), *(v0 + 216) = v17, *(v0 + 232) = v16, v19 = *(v0 + 288), v18 = *(v0 + 304), *(v0 + 152) = v19, *(v0 + 168) = v18, *(v0 + 112) = v11, *(v0 + 128) = v12, *(v0 + 144) = v13, *(v0 + 48) = v14, *(v0 + 64) = v15, *(v0 + 80) = v17, *(v0 + 96) = v16, *(v0 + 16) = v19, *(v0 + 32) = v18, sub_1000D8FCC((v0 + 16)) == 1))
          {

LABEL_14:
            v4 = v98;
            goto LABEL_15;
          }

          v67 = *(v0 + 96);
          *(v0 + 488) = *(v0 + 80);
          *(v0 + 504) = v67;
          v68 = *(v0 + 128);
          *(v0 + 520) = *(v0 + 112);
          *(v0 + 536) = v68;
          v69 = *(v0 + 32);
          *(v0 + 424) = *(v0 + 16);
          *(v0 + 440) = v69;
          v70 = *(v0 + 64);
          *(v0 + 456) = *(v0 + 48);
          *(v0 + 472) = v70;
          if (sub_1005024E0((v0 + 424)) == 1)
          {
            if (!*&v4[v5])
            {
LABEL_55:
              __break(1u);
              goto LABEL_56;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v71 = *(v0 + 1352);
            v72 = [v71 CGImage];

            dispatch thunk of MusicLibraryPlaylistEditViewModel.userImage.setter();
            sub_1000095E8(v0 + 152, &qword_1011842B0);
          }

          else
          {
            v1 = *(v0 + 456);
            if (v1)
            {
              v73 = *(v0 + 448);
              v74 = *(v0 + 464);
              v75 = *(v0 + 472);
              v77 = *(v0 + 480);
              v76 = *(v0 + 488);
              v78 = *(v0 + 496);
              *(v0 + 1192) = v73;
              *(v0 + 1200) = v1;
              *(v0 + 1208) = v74;
              *(v0 + 1216) = v75;
              *(v0 + 1224) = v77;
              *(v0 + 1232) = v76;
              *(v0 + 1240) = v78;
              sub_1001F43A0(v73, v1, v74, v75, v77, v76, v78);
              sub_100501164(v0 + 16, v0 + 808);
              v94 = v75;
              v95 = v77;
              v96 = v76;
              v97 = v78;
              sub_1001F43A0(v73, v1, v74, v75, v77, v76, v78);
              PlaylistCovers.Recipe.init(from:)((v0 + 1192), (v0 + 936));
              PlaylistCovers.Recipe.rawJSONRepresentation()();
              if (v79)
              {
                v80 = *(v0 + 1384);
                v81 = *(v0 + 1376);
                v82 = *(v0 + 1368);

                sub_1001F4410(v0 + 936);
                v83 = Logger.playlistCovers.unsafeMutableAddressor();
                (*(v81 + 16))(v80, v83, v82);
                swift_errorRetain();
                v84 = Logger.logObject.getter();
                v85 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v84, v85))
                {
                  v86 = swift_slowAlloc();
                  v87 = swift_slowAlloc();
                  *v86 = 138543362;
                  swift_errorRetain();
                  v88 = _swift_stdlib_bridgeErrorToNSError();
                  *(v86 + 4) = v88;
                  *v87 = v88;
                  _os_log_impl(&_mh_execute_header, v84, v85, "Failed to encode recipe with error=%{public}@", v86, 0xCu);
                  sub_1000095E8(v87, &unk_101183D70);

                  sub_1005011C0(v0 + 16);
                  sub_1000095E8(v0 + 152, &qword_1011842B0);

                  sub_1001F4464(v73, v1, v74, v94, v95, v96, v97);
                }

                else
                {
                  sub_1001F4464(v73, v1, v74, v94, v95, v96, v97);

                  sub_1005011C0(v0 + 16);
                  sub_1000095E8(v0 + 152, &qword_1011842B0);
                }

                (*(*(v0 + 1376) + 8))(*(v0 + 1384), *(v0 + 1368));
              }

              else
              {
                sub_1001F4410(v0 + 936);
                if (!*&v98[v99])
                {
LABEL_56:
                  __break(1u);
                  return;
                }

                MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.setter();
                sub_1001F4464(v73, v1, v74, v75, v77, v96, v78);
                sub_1005011C0(v0 + 16);
                sub_1000095E8(v0 + 152, &qword_1011842B0);
              }

              goto LABEL_14;
            }

            v89 = *(v0 + 96);
            *(v0 + 616) = *(v0 + 80);
            *(v0 + 632) = v89;
            v90 = *(v0 + 128);
            *(v0 + 648) = *(v0 + 112);
            *(v0 + 664) = v90;
            v91 = *(v0 + 32);
            *(v0 + 552) = *(v0 + 16);
            *(v0 + 568) = v91;
            v92 = *(v0 + 64);
            *(v0 + 584) = *(v0 + 48);
            *(v0 + 600) = v92;
            sub_100502200(v0 + 552, v0 + 680);

            sub_1005011C0(v0 + 16);
            sub_1000095E8(v0 + 152, &qword_1011842B0);
          }

LABEL_15:
          v20 = *(v0 + 1360);
          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v21, v22))
          {
            v33 = *(v0 + 1360);

LABEL_29:
            v58 = *(v0 + 1392);
            v59 = *(v0 + 1360);
            v60 = [v59 navigationItem];
            sub_100009F78(0, &qword_101181580);
            v61 = static UIBarButtonItem.loading.getter();
            [v60 setRightBarButtonItem:v61 animated:1];

            v62 = type metadata accessor for TaskPriority();
            (*(*(v62 - 8) + 56))(v58, 1, 1, v62);
            v63 = v59;
            v64 = static MainActor.shared.getter();
            v65 = swift_allocObject();
            v65[2] = v64;
            v65[3] = &protocol witness table for MainActor;
            v65[4] = v63;
            sub_1001F4CB8(0, 0, v58, &unk_100EDDE98, v65);

            goto LABEL_30;
          }

          v23 = swift_slowAlloc();
          v100[0] = swift_slowAlloc();
          *v23 = 136316674;
          if (*&v4[v99])
          {

            v24 = dispatch thunk of MusicLibraryPlaylistEditViewModel.name.getter();
            v26 = v25;

            *(v0 + 1296) = v24;
            *(v0 + 1304) = v26;
            sub_10010FC20(&qword_1011815E0);
            v27 = String.init<A>(describing:)();
            v29 = sub_1000105AC(v27, v28, v100);

            *(v23 + 4) = v29;
            *(v23 + 12) = 2080;
            v1 = *(v0 + 1360);
            if (*&v4[v99])
            {

              v30 = dispatch thunk of MusicLibraryPlaylistEditViewModel.isVisiblePlaylist.getter();

              if (v30 == 2 || (v30 & 1) == 0)
              {
                v31 = 0xE500000000000000;
                v32 = 0x65736C6166;
              }

              else
              {
                v31 = 0xE400000000000000;
                v32 = 1702195828;
              }

              v34 = sub_1000105AC(v32, v31, v100);

              *(v23 + 14) = v34;
              *(v23 + 22) = 2080;
              v1 = *(v0 + 1360);
              if (*&v4[v99])
              {

                v35 = dispatch thunk of MusicLibraryPlaylistEditViewModel.userImage.getter();

                *(v0 + 1344) = v35;
                sub_10010FC20(&qword_10119EF30);
                v36 = String.init<A>(describing:)();
                v38 = sub_1000105AC(v36, v37, v100);

                *(v23 + 24) = v38;
                *(v23 + 32) = 2080;
                v1 = *(v0 + 1360);
                if (*&v4[v99])
                {

                  v39 = dispatch thunk of MusicLibraryPlaylistEditViewModel.description.getter();
                  v41 = v40;

                  *(v0 + 1312) = v39;
                  *(v0 + 1320) = v41;
                  v42 = String.init<A>(describing:)();
                  v44 = sub_1000105AC(v42, v43, v100);

                  *(v23 + 34) = v44;
                  *(v23 + 42) = 2080;
                  v1 = *(v0 + 1360);
                  if (*&v4[v99])
                  {

                    v45 = MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.getter();
                    v47 = v46;

                    *(v0 + 1328) = v45;
                    *(v0 + 1336) = v47;
                    v48 = String.init<A>(describing:)();
                    v50 = sub_1000105AC(v48, v49, v100);

                    *(v23 + 44) = v50;
                    *(v23 + 52) = 2048;
                    v1 = *(v0 + 1360);
                    if (*&v4[v99])
                    {

                      v51 = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

                      v52 = *(v51 + 16);

                      *(v23 + 54) = v52;
                      *(v23 + 62) = 2080;
                      v53 = *&v4[v99];
                      v4 = *(v0 + 1360);
                      if (v53)
                      {

                        dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();

                        type metadata accessor for Playlist.Entry();
                        v54 = Array.description.getter();
                        v56 = v55;

                        v57 = sub_1000105AC(v54, v56, v100);

                        *(v23 + 64) = v57;
                        _os_log_impl(&_mh_execute_header, v21, v22, "🔒 Will save playlist with:\n    - name=%s\n    - isVisible=%s\n    - userImage=%s\n    - description=%s\n    - rawCoverArtworkRecipe=%s\n    - %ld entries=%s", v23, 0x48u);
                        swift_arrayDestroy();

                        goto LABEL_29;
                      }

                      goto LABEL_54;
                    }

LABEL_53:

                    __break(1u);
LABEL_54:

                    __break(1u);
                    goto LABEL_55;
                  }

LABEL_52:

                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:

                __break(1u);
                goto LABEL_52;
              }

LABEL_50:

              __break(1u);
              goto LABEL_51;
            }

LABEL_49:

            __break(1u);
            goto LABEL_50;
          }

LABEL_48:
          v93 = *(v0 + 1360);

          __break(1u);
          goto LABEL_49;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_30:

  v66 = *(v0 + 8);

  v66();
}

uint64_t sub_1006DD994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for Locale();
  v4[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[4] = swift_task_alloc();
  sub_10010FC20(&unk_101181520);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_1006DDB28, v7, v6);
}

void sub_1006DDB28()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController);
  v0[14] = v1;
  if (v1)
  {
    v4 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_1006DDBFC;
    v3 = v0[9];

    v4(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006DDBFC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1006DE18C;
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);

    v3 = v2[12];
    v4 = v2[13];
    v5 = sub_1006DDD34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006DDD34()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource);
  v0[17] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1006DDF08;

    return sub_10081BB60();
  }

  else
  {

    v4 = v0[5];
    v5 = v0[2];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_1001F4CB8(0, 0, v4, &unk_100EDDF58, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1006DDF08()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_1006DE048, v4, v3);
}

uint64_t sub_1006DE048()
{

  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = v2;
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_1001F4CB8(0, 0, v1, &unk_100EDDF58, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006DE18C()
{

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error committing playlist changes with error=%@", v4, 0xCu);
    sub_1000095E8(v5, &unk_101183D70);
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  v30 = v0[2];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() actionWithTitle:v12 style:0 handler:0];

  [v11 addAction:v13];
  sub_100009F78(0, &qword_10119EF38);
  _StringGuts.grow(_:)(25);

  (*(v8 + 16))(v7, v30 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v9);
  Playlist.id.getter();
  (*(v8 + 8))(v7, v9);
  v14 = MusicItemID.description.getter();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 96;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19 = sub_1006E1288(_swiftEmptyArrayStorage);
  v20 = static UIAlertAction.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0xD000000000000017, 0x8000000100E55550, 0xD000000000000016, 0x8000000100E55570, _swiftEmptyArrayStorage, v19, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);

  if (v20)
  {
    [v11 addAction:v20];
  }

  v21 = v0[5];
  v22 = v0[2];
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = v22;
  v25 = v11;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v25;
  sub_1001F4CB8(0, 0, v21, &unk_100EDDF48, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1006DE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DE788, v6, v5);
}

uint64_t sub_1006DE788()
{

  sub_1006DC494();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006DE7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006DE884, v7, v6);
}

uint64_t sub_1006DE884()
{
  v1 = v0[3];
  v2 = v0[2];

  [v2 presentViewController:v1 animated:1 completion:0];
  [v2 setEditing:1 animated:1];
  v3 = v0[1];

  return v3();
}

void sub_1006DE91C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isEditing])
  {
    goto LABEL_13;
  }

  if (sub_1006D65D8())
  {
    v9 = 1;
  }

  else
  {
    v9 = v0[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges];
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_101219770);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v11, v12, "🏮Cancel button called, hasChanges=%{BOOL}d", v13, 8u);
  }

  if (v9)
  {
    (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v4);
    Playlist.name.getter();
    (*(v5 + 8))(v8, v4);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v14 = String._bridgeToObjectiveC()();

    v15 = String._bridgeToObjectiveC()();

    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:0];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    v18 = v1;
    v19 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_1006E1814;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010BB308;
    v20 = _Block_copy(aBlock);

    v21 = objc_opt_self();
    v22 = [v21 actionWithTitle:v19 style:2 handler:v20];
    _Block_release(v20);

    [v16 addAction:v22];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v21 actionWithTitle:v23 style:1 handler:0];

    [v16 addAction:v24];
    v25 = [v16 popoverPresentationController];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1006D20F4();
      [v26 setBarButtonItem:v27];
    }

    [v18 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
LABEL_13:

    sub_1006DC494();
  }
}

void sub_1006DEEF8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    UIEdgeInsets.vertical.getter();
    [v3 additionalSafeAreaInsets];
    UIEdgeInsets.vertical.getter();
    v9 = static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(2u, a1, a2, a3 & 1, 0);
    v11 = v10;
    [v3 preferredContentSize];
    if (v9 != v13 || v11 != v12)
    {
      [v3 setPreferredContentSize:{v9, v11}];
      v15 = [v3 navigationController];
      if (v15)
      {
        v16 = v15;
        [v15 setPreferredContentSize:{v9, v11}];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1006DF074()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIKeyboardWillShowNotification, 0, 1, 1, sub_1006E17D0, v4);

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v1[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIKeyboardWillHideNotification, 0, 1, 1, sub_1006E17D8, v5);
  }
}

void sub_1006DF21C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    KeyboardAvoidance.init(notification:)(v5, v19);
    if (v20 != 2)
    {
      v23 = v19[2];
      v24 = v19[3];
      v25 = v19[4];
      v21 = v19[0];
      v22 = v19[1];
      v26 = v20;
      v8 = *&v7[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView];
      if (v8)
      {
        v9 = swift_allocObject();
        v10 = v24;
        *(v9 + 48) = v23;
        *(v9 + 64) = v10;
        *(v9 + 80) = v25;
        *(v9 + 96) = v26;
        v11 = v22;
        *(v9 + 16) = v21;
        *(v9 + 32) = v11;
        *(v9 + 104) = v7;
        v12 = swift_allocObject();
        *(v12 + 16) = v7;
        *(v12 + 24) = v8;
        v13 = v24;
        *(v12 + 64) = v23;
        *(v12 + 80) = v13;
        *(v12 + 96) = v25;
        *(v12 + 112) = v26;
        v14 = v22;
        *(v12 + 32) = v21;
        *(v12 + 48) = v14;
        v15 = v8;
        v16 = v7;
        v17 = v15;
        KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_1006E31EC, v9, sub_1006E1808, v12);

        return;
      }

      KeyboardAvoidance.animateContentScrollView(in:)(v7);
    }
  }
}

void sub_1006DF454(uint64_t a1, char *a2, void *a3)
{
  v41 = 1;
  sub_1006D2BA8();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v44 == 1)
  {
    v5 = sub_1006D1794();
    [a3 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [a3 superview];
    [v5 convertRect:v14 fromView:{v7, v9, v11, v13}];
    v40 = v15;
    v17 = v16;

    v18 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView;
    [*&a2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] adjustedContentInset];
    v20 = v19;
    v21 = [a2 view];
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    v39 = v17 - v20;
    [v21 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v48.origin.x = v24;
    v48.origin.y = v26;
    v48.size.width = v28;
    v48.size.height = v30;
    Width = CGRectGetWidth(v48);
    [*&a2[v18] adjustedContentInset];
    v41 = 0;
    if (qword_10117F800 != -1)
    {
      v38 = v32;
      swift_once();
      v32 = v38;
    }

    *&v33 = v40;
    *(&v33 + 1) = v39;
    v34 = v32 + *&qword_101218EC8;
  }

  else
  {
    v33 = 0uLL;
    Width = 0.0;
    v34 = 0.0;
  }

  v44 = v33;
  v45 = Width;
  v46 = v34;
  v47 = v41;
  KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(a2, &v44, v42);
  if ((v43 & 1) == 0)
  {
    v36 = *v42;
    v35 = *&v42[1];
    v37 = sub_1006D1794();
    [v37 setContentOffset:1 animated:{v36, v35}];
  }
}

void sub_1006DF6D0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(v3 + 16))(v5, a1, v2);
    KeyboardAvoidance.init(notification:)(v5, v13);
    if (v14 == 2)
    {
    }

    else
    {
      v17 = v13[2];
      v18 = v13[3];
      v19 = v13[4];
      v15 = v13[0];
      v16 = v13[1];
      v20 = v14;
      v8 = swift_allocObject();
      v9 = v18;
      *(v8 + 48) = v17;
      *(v8 + 64) = v9;
      *(v8 + 80) = v19;
      *(v8 + 96) = v20;
      v10 = v16;
      *(v8 + 16) = v15;
      *(v8 + 32) = v10;
      *(v8 + 104) = v7;
      v11 = v7;
      KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_1006E17E0, v8, 0, 0);
    }
  }
}

id sub_1006DF8B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistEditingViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006DFAFC()
{
  type metadata accessor for Playlist();
  if (v0 <= 0x3F)
  {
    sub_1006E0700(319, &qword_10119EC80, &qword_10119EC88, &unk_100EDDAF8, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1006E2F7C(319, &qword_10119EC90, _s8MetadataO4ViewVMa, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1006E0700(319, &qword_10119EC98, qword_10119ECA0, &unk_100EDDB00, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1006DFD34(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = _s8MetadataO4ViewVMa(0);
  __chkstk_darwin(v7 - 8);
  sub_1006E1C24(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_allocWithZone(sub_10010FC20(&qword_10119EFD8));
  v10 = UIHostingController.init(rootView:)();
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 invalidateIntrinsicContentSize];

  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v13 = [v10 parentViewController];
  if (v13 && (v14 = v13, sub_100009F78(0, &qword_101183D40), v15 = a2, v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16 & 1) != 0))
  {
    v17 = 1;
  }

  else
  {
    [a2 addChildViewController:v10];
    v17 = 0;
  }

  v18 = [v3 subviews];
  sub_100009F78(0, &qword_101181620);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = [v10 view];
  if (!v20)
  {
    goto LABEL_14;
  }

  v21 = v20;

  v26 = v21;
  __chkstk_darwin(v22);
  *(&v25 - 2) = &v26;
  v23 = sub_10044B140(sub_1006E1C88, (&v25 - 4), v19);

  v24 = v10;
  if ((v23 & 1) == 0)
  {
    v24 = [v10 view];

    if (v24)
    {
      UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v24, 0);
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    return;
  }

LABEL_10:

  if ((v17 & 1) == 0)
  {
    [v10 didMoveToParentViewController:a2];
  }
}

id sub_1006E0038(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PlaylistEditingViewController.HeaderView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1006E00FC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaylistEditingViewController.HeaderView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1006E01C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistEditingViewController.HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006E0250()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006E02C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006E0338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1006E03AC()
{
  v1 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__isPresentingPicker;
  v2 = sub_10010FC20(&unk_101189E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__selectedTracks;
  v4 = sub_10010FC20(&qword_10119B4B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__suggestedSongsViewModel;
  v6 = sub_10010FC20(&unk_10119EF20);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist, &unk_1011814D0);

  return swift_deallocClassInstance();
}

void sub_1006E0534()
{
  sub_100008E30();
  if (v0 <= 0x3F)
  {
    sub_1006E0700(319, &qword_10119B390, &qword_10119ED90, &unk_100ECF7A0, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_1006E2F7C(319, &qword_10119ED98, &type metadata accessor for MusicSuggestedSongsViewModel, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_1006E2F7C(319, &qword_10119EDA0, &type metadata accessor for Playlist, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1006E0700(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1006E0764@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1006E07A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_1011814D0);
}

uint64_t sub_1006E0818(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10055F0D4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006E0894@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10010FC20(&qword_10119EEF0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v20 - v4);
  v6 = sub_10010FC20(&qword_10119EEF8);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  __chkstk_darwin(v6);
  v29 = &v20 - v8;
  v9 = type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource(0);
  v25 = type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource;
  sub_1006E1788(&unk_10119EF00, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource);

  v24 = v9;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v21 = a1;
  v22 = v35;
  v23 = v36;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v5 = v34;
  v10 = enum case for MusicPicker.Reason.editingPlaylist(_:);
  v11 = type metadata accessor for MusicPicker.Reason();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_10010FC20(&qword_101180F00);
  v14 = type metadata accessor for Track();
  v18 = sub_10011881C();
  v19 = sub_1006E1788(&qword_1011950F8, &type metadata accessor for Track);
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  sub_1000095E8(v5, &qword_10119EEF0);
  v35 = v21;
  v30 = v13;
  v31 = v14;
  v32 = v18;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1006E1788(&unk_10119EEE0, v25);
  v15 = v26;
  v16 = v29;
  View.musicPickerUserExperienceObserver<A>(_:)();

  return (*(v27 + 8))(v16, v15);
}

uint64_t sub_1006E0D14@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1006E0D94()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006E0E08@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1006E0E88()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1006E0FD0(uint64_t a1)
{
  result = sub_1006E1788(&unk_10119EEE0, type metadata accessor for PlaylistEditingViewController.MusicPickerDataSource);
  *(a1 + 8) = result;
  return result;
}

void sub_1006E1028(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Playlist();
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  v8 = objc_allocWithZone(type metadata accessor for PlaylistEditingViewController(0));
  v9 = a2;
  v10 = sub_1006E13A0(v6, a2);

  v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
  [v11 setModalPresentationStyle:2];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v11, 0, 1, 0, 0);
}

uint64_t sub_1006E1178@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1006E11F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_1006E1288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&unk_10119EF40);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10002BC44(v7, v8);
      result = sub_10000F8B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1006E13A0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cancelNavigationBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___doneNavigationBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription] = 0;
  v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges] = 0;
  v7 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage] = 0;
  v8 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  v9 = sub_10010FC20(&qword_10119EC88);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
  v11 = _s8MetadataO4ViewVMa(0);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  v13 = sub_10010FC20(qword_10119ECA0);
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver] = 0;
  v14 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist;
  v15 = type metadata accessor for Playlist();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v2[v14], a1, v15);
  *&v2[v7] = a2;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for PlaylistEditingViewController(0);
  v17 = a2;
  v18 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v19 = String._bridgeToObjectiveC()();

  [v18 setTitle:v19];

  (*(v16 + 8))(a1, v15);
  return v18;
}

uint64_t sub_1006E1788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006E1838(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DD994(a1, v4, v5, v6);
}

uint64_t sub_1006E18EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006DE7EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1006E19AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DE6F0(a1, v4, v5, v6);
}

uint64_t sub_1006E1A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1006DA354(a1, v4, v5, v7, v6);
}

uint64_t sub_1006E1B30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006DAB1C(a1, v4, v5, v6);
}

uint64_t sub_1006E1C24(uint64_t a1, uint64_t a2)
{
  v4 = _s8MetadataO4ViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1006E1CA8()
{
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___mainLayout) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cancelNavigationBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___doneNavigationBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___deleteToolBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___addToolBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___metadataViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___musicPickerHostingView) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_musicPickerSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editController) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_editControllerEntriesSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataTitleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_hasTracklistChanges) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_currentUserUploadImage) = 0;
  v1 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___headerRegistration;
  v2 = sub_10010FC20(&qword_10119EC88);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController_metadataView;
  v4 = _s8MetadataO4ViewVMa(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC5Music29PlaylistEditingViewController____lazy_storage___cellRegistration;
  v6 = sub_10010FC20(qword_10119ECA0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillShowNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_keyboardWillHideNotificationObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006E1EDC()
{
  v1 = type metadata accessor for Playlist.EditableComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118D240);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  (*(v6 + 16))(v8, v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5, v10);
  Playlist.editableComponents.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    sub_1000095E8(v12, &unk_10118D240);
    v13 = 0;
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
    v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v14 = *(v2 + 8);
    v14(v4, v1);
    v14(v12, v1);
  }

  return v13 & 1;
}

uint64_t sub_1006E2168()
{
  v1 = type metadata accessor for Playlist.EditableComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_10118D240);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v16 - v11;
  if ([v0 isEditing])
  {
    (*(v6 + 16))(v8, v0 + OBJC_IVAR____TtC5Music29PlaylistEditingViewController_playlist, v5);
    Playlist.editableComponents.getter();
    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 48))(v12, 1, v1) != 1)
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_1006E1788(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v14 = *(v2 + 8);
      v14(v4, v1);
      v14(v12, v1);
      return v13 & 1;
    }

    sub_1000095E8(v12, &unk_10118D240);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1006E2408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v5 = type metadata accessor for Playlist();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_10010FC20(&qword_10119B4B8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_10010FC20(&unk_101189E60);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__isPresentingPicker;
  LOBYTE(v37) = 0;
  Published.init(initialValue:)();
  v19 = v14;
  v20 = v32;
  (*(v15 + 32))(v4 + v18, v17, v19);
  v21 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource__selectedTracks;
  v37 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_10119ED90);
  Published.init(initialValue:)();
  v22 = v10;
  v23 = v33;
  (*(v11 + 32))(v4 + v21, v13, v22);
  v24 = OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist;
  v25 = *(v23 + 56);
  v25(v4 + OBJC_IVAR____TtCC5Music29PlaylistEditingViewControllerP33_CBF7D4EB2DE8D68004B7790E133CB40421MusicPickerDataSource_playlist, 1, 1, v5);
  v26 = *(v23 + 16);
  v26(v9, v20, v5);
  v25(v9, 0, 1, v5);
  v27 = v34;
  swift_beginAccess();
  sub_10006B010(v9, v4 + v24, &unk_1011814D0);
  swift_endAccess();
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    v26(v31, v20, v5);
    v28 = MusicSuggestedSongsViewModel.__allocating_init(playlist:)();
  }

  dispatch thunk of MusicSuggestedSongsViewModel.playlistEditViewModel.setter();
  swift_beginAccess();
  v36 = v28;
  type metadata accessor for MusicSuggestedSongsViewModel();
  Published.init(initialValue:)();
  swift_endAccess();
  (*(v23 + 8))(v20, v5);
  return v4;
}

uint64_t sub_1006E2810(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1006E2874(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1006D38D0(v8, a1, v4, v5, v6, v7);
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_1006E29C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1006D2380(a1, v4, v5, v6);
}

uint64_t sub_1006E2AAC(void (*a1)(void))
{
  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_1006E2B0C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1006CD550(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1006E2C2C(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10119F040) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_1006CE4A0(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_1006E2D44(uint64_t *a1)
{
  v3 = *(sub_10010FC20(&unk_10119F040) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1006CF02C(a1, v4);
}

unint64_t sub_1006E2DEC()
{
  result = qword_10119F0A0;
  if (!qword_10119F0A0)
  {
    sub_1001109D0(&qword_10118C2B0);
    sub_1006E1788(&unk_1011A4730, &type metadata accessor for Playlist.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F0A0);
  }

  return result;
}

void sub_1006E2EC8()
{
  type metadata accessor for Playlist.Entry();
  if (v0 <= 0x3F)
  {
    sub_1006E2F7C(319, &qword_10119F120, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006E2F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1006E2FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1006E305C()
{
  result = qword_10119F1B0;
  if (!qword_10119F1B0)
  {
    sub_1001109D0(&qword_10119F1A0);
    sub_100501E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F1B0);
  }

  return result;
}

unint64_t sub_1006E30E8()
{
  result = qword_10119F220;
  if (!qword_10119F220)
  {
    sub_1001109D0(&unk_10119F170);
    sub_100020674(&qword_10119F1C8, &qword_10119F168);
    sub_100020674(&qword_10119F1D0, &qword_10119F150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F220);
  }

  return result;
}

unint64_t sub_1006E3204()
{
  result = qword_10119F230;
  if (!qword_10119F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F230);
  }

  return result;
}

uint64_t sub_1006E3258()
{
  sub_1005FF400();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1006E3294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_1001109D0(&qword_10119F2C0);
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for _ConditionalContent();
  v85 = *(v5 - 8);
  __chkstk_darwin(v5);
  v84 = &v78 - v6;
  v90 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v97 = &v78 - v11;
  v89 = v12;
  v13 = type metadata accessor for _ConditionalContent();
  v88 = *(v13 - 8);
  __chkstk_darwin(v13);
  v87 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v91 = &v78 - v16;
  v17 = type metadata accessor for UserInterfaceSizeClass();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v78 - v21;
  v23 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v23 - 8);
  v25 = &v78 - v24;
  v95 = v13;
  v26 = type metadata accessor for _ConditionalContent();
  v93 = *(v26 - 8);
  v94 = v26;
  __chkstk_darwin(v26);
  v92 = &v78 - v27;
  v28 = v2;
  sub_10056CAE4(v25);
  v29 = v98;
  if ((*(v98 + 48))(v25, 1, v17) == 1)
  {
    sub_1006E3D6C(a1, 0);
    v30 = *(a1 + 24);
    v31 = sub_1006E4100();
    v129 = v30;
    v130 = v31;
    WitnessTable = swift_getWitnessTable();
    v33 = v97;
    sub_100663950(v9, v4, WitnessTable);
    v34 = *(v90 + 8);
    v34(v9, v4);
    sub_100663950(v33, v4, WitnessTable);
    v127 = WitnessTable;
    v128 = WitnessTable;
    v125 = swift_getWitnessTable();
    v126 = WitnessTable;
    v35 = v95;
    swift_getWitnessTable();
    v36 = v92;
    sub_100653970(v9, v35, v4);
    v34(v9, v4);
    v34(v97, v4);
    v37 = v36;
  }

  else
  {
    v80 = v4;
    v81 = a1;
    v86 = v28;
    v38 = v9;
    v39 = v89;
    (*(v29 + 32))(v22, v25, v17);
    (*(v29 + 16))(v19, v22, v17);
    v40 = *(v29 + 88);
    v83 = v17;
    v41 = v40(v19, v17);
    v82 = v22;
    if (v41 == enum case for UserInterfaceSizeClass.compact(_:))
    {
      v42 = v38;
      v43 = v81;
      sub_1006E3D6C(v81, 0);
      v44 = *(v43 + 24);
      v45 = sub_1006E4100();
      v86 = v44;
      v105 = v44;
      v106 = v45;
      v46 = v80;
      v47 = swift_getWitnessTable();
      v48 = v97;
      sub_100663950(v38, v46, v47);
      v49 = *(v90 + 8);
      v49(v38, v46);
      sub_100663950(v48, v46, v47);
      v50 = v84;
      sub_100653970(v42, v46, v46);
      v103 = v47;
      v104 = v47;
      swift_getWitnessTable();
      sub_100653878(v50, v39);
      (*(v85 + 8))(v50, v39);
      v49(v42, v46);
      v49(v48, v46);
    }

    else
    {
      v79 = v19;
      v51 = (v90 + 8);
      v52 = v39;
      v53 = v97;
      v55 = v80;
      v54 = v81;
      if (v41 == enum case for UserInterfaceSizeClass.regular(_:))
      {
        sub_1006E3D6C(v81, 1);
        v56 = *(v54 + 24);
        v57 = sub_1006E4100();
        v86 = v56;
        v101 = v56;
        v102 = v57;
        v58 = swift_getWitnessTable();
        sub_100663950(v38, v55, v58);
        v59 = *v51;
        (*v51)(v38, v55);
        sub_100663950(v53, v55, v58);
        v60 = v84;
        sub_100653878(v38, v55);
        v99 = v58;
        v100 = v58;
        swift_getWitnessTable();
        sub_100653878(v60, v52);
        (*(v85 + 8))(v60, v52);
        v59(v38, v55);
        v59(v53, v55);
      }

      else
      {
        sub_1006E3D6C(v81, 0);
        v61 = *(v54 + 24);
        v62 = sub_1006E4100();
        v86 = v61;
        v115 = v61;
        v116 = v62;
        v63 = swift_getWitnessTable();
        sub_100663950(v38, v55, v63);
        v64 = *v51;
        (*v51)(v38, v55);
        sub_100663950(v53, v55, v63);
        v113 = v63;
        v114 = v63;
        swift_getWitnessTable();
        sub_100653970(v38, v52, v55);
        v64(v38, v55);
        v64(v53, v55);
        (*(v98 + 8))(v79, v83);
      }
    }

    v65 = v95;
    v37 = v92;
    v66 = sub_1006E4100();
    v111 = v86;
    v112 = v66;
    v67 = swift_getWitnessTable();
    v109 = v67;
    v110 = v67;
    v107 = swift_getWitnessTable();
    v108 = v67;
    v68 = swift_getWitnessTable();
    v69 = v87;
    v70 = v91;
    sub_100663950(v91, v65, v68);
    sub_100653878(v69, v65);
    v71 = *(v88 + 8);
    v71(v69, v65);
    v72 = v70;
    v30 = v86;
    v71(v72, v65);
    (*(v98 + 8))(v82, v83);
  }

  v73 = sub_1006E4100();
  v123 = v30;
  v124 = v73;
  v74 = swift_getWitnessTable();
  v121 = v74;
  v122 = v74;
  v119 = swift_getWitnessTable();
  v120 = v74;
  v117 = swift_getWitnessTable();
  v118 = v74;
  v75 = v94;
  v76 = swift_getWitnessTable();
  sub_100663950(v37, v75, v76);
  return (*(v93 + 8))(v37, v75);
}

uint64_t sub_1006E3D6C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*v2)(v9, v6);
  swift_getKeyPath();
  v11[15] = a2;
  View.environment<A>(_:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1006E3E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  v4 = *(type metadata accessor for AdaptativeContainer() + 36);
  *(a3 + v4) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1006E3F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1006E3F74();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1006E3F74()
{
  result = qword_10119F238[0];
  if (!qword_10119F238[0])
  {
    sub_1001109D0(&unk_1011891F8);
    sub_1006E3204();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10119F238);
  }

  return result;
}

void sub_1006E4010()
{
  sub_10001F7E8();
  if (v0 <= 0x3F)
  {
    sub_100237820();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1006E4100()
{
  result = qword_10119F2C8;
  if (!qword_10119F2C8)
  {
    sub_1001109D0(&qword_10119F2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F2C8);
  }

  return result;
}

unint64_t sub_1006E42D0(void *a1, void *a2, unint64_t a3)
{
  v72 = a3;
  v74 = a1;
  v77 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v77);
  v76 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F7A0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v6 = sub_1000060E4(v5, qword_101218E00);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v10 = v9;
    v11 = os_log_type_enabled(v8, v9);
    v75 = v7;
    if (v11)
    {
      v12 = v6;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v79[0] = v14;
      *v13 = 136446210;
      v15 = v7;
      v16 = [v15 description];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000105AC(v17, v19, v79);

      *(v13 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v8, v10, "╭ NavigationStack for tab=%{public}s", v13, 0xCu);
      sub_10000959C(v14);

      v6 = v12;
    }

    v21 = v72;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v66 = v6;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v79[0] = v26;
      *v25 = 136446210;
      sub_100009F78(0, &qword_101183D40);
      v27 = Array.description.getter();
      v29 = sub_1000105AC(v27, v28, v79);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "| proposedViewControllers=%{public}s", v25, 0xCu);
      sub_10000959C(v26);
    }

    v30 = v75;
    v31 = v21;
    v79[0] = _swiftEmptyArrayStorage;
    if (v21 >> 62)
    {
      break;
    }

    a2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a2)
    {
      goto LABEL_23;
    }

LABEL_8:
    v32 = 0;
    v33 = v21 & 0xC000000000000001;
    v34 = v21 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v33)
      {
        v35 = sub_10004056C(v32, v31);
      }

      else
      {
        if (v32 >= *(v34 + 16))
        {
          goto LABEL_20;
        }

        v35 = *(v31 + 8 * v32 + 32);
      }

      v36 = v35;
      v37 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v78 = v35;
      if (sub_1006E4BA8(&v78, v30, v74))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v30 = v75;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 = v72;
      }

      else
      {
      }

      ++v32;
      if (v37 == a2)
      {
        v38 = v79[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  a2 = _CocoaArrayWrapper.endIndex.getter();
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_23:
  v38 = _swiftEmptyArrayStorage;
LABEL_24:
  v39 = [v74 traitCollection];
  v40 = [v39 userInterfaceIdiom];

  if (v40)
  {
    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      goto LABEL_47;
    }

    for (i = *(v38 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v42 = 0;
      v74 = (v38 & 0xC000000000000001);
      v65 = "LibraryView.Shows";
      v69 = 0x8000000100E3C290;
      v43 = &protocol witness table for UITraitOverrides;
      v68 = "LibraryView.Songs";
      v70 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_filtersToDownloadedContent;
      v71 = OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_selectedLibrary;
      v67 = "nt";
      v64[9] = "LibraryView.Playlists";
      v64[10] = "LibraryView.RecentlyAdded";
      v64[7] = "LibraryView.Albums";
      v64[8] = "LibraryView.Artists";
      v64[6] = "LibraryView.MadeForYou";
      v64[5] = "LibraryView.MusicVideos";
      v64[4] = "LibraryView.Genres";
      v64[3] = "LibraryView.Compilations";
      v64[2] = "LibraryView.Composers";
      v64[1] = "LibraryView.Downloaded";
      v72 = i;
      while (1)
      {
        if (v74)
        {
          v45 = sub_10004056C(v42, v38);
        }

        else
        {
          if (v42 >= *(v38 + 16))
          {
            goto LABEL_46;
          }

          v45 = *(v38 + 8 * v42 + 32);
        }

        v46 = v45;
        v47 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v48 = v38;
        v49 = v73;
        v50 = *(v73 + v71);

        UIViewController.traitOverrides.getter();
        v79[0] = v50;
        sub_100137E8C();
        v51 = v43;
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();
        v52 = *(v49 + v70);
        _s8FacetTabCMa();
        v53 = swift_dynamicCastClass();
        if (v53)
        {
          v54 = v68;
          v38 = v48;
          switch(*(v53 + OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier))
          {
            case 5:
              goto LABEL_41;
            case 0xB:
              v54 = v65;
LABEL_41:
              if ((v54 | 0x8000000000000000) != v69)
              {
                goto LABEL_42;
              }

              goto LABEL_30;
            default:
LABEL_42:
              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (((v55 | v52) & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_30;
          }
        }

        v38 = v48;
        if (v52)
        {
LABEL_30:
          v44 = sub_10010E29C(&off_10109C208);
        }

        else
        {
LABEL_43:
          v44 = &_swiftEmptySetSingleton;
        }

        UIViewController.traitOverrides.getter();
        v79[0] = v44;
        sub_100217F14();
        v43 = v51;
        dispatch thunk of UIMutableTraits.subscript.setter();
        UIViewController.traitOverrides.setter();

        ++v42;
        if (v47 == v72)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      ;
    }
  }

LABEL_48:

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v79[0] = v59;
    *v58 = 136446210;
    sub_100009F78(0, &qword_101183D40);
    v60 = Array.description.getter();
    v62 = sub_1000105AC(v60, v61, v79);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "╰ Returning effectiveViewControllers=%{public}s", v58, 0xCu);
    sub_10000959C(v59);
  }

  return v38;
}

uint64_t sub_1006E4BA8(void **a1, void *a2, void *a3)
{
  v5 = *a1;
  if (sub_1003FF32C())
  {
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000060E4(v6, qword_101218E00);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136446210;
      v12 = v7;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1000105AC(v14, v16, &v44);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "| ❌ viewController should be removed from stack: %{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    return 0;
  }

  type metadata accessor for MusicTab.Group();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    return 1;
  }

  v20 = v19;
  v21 = a2;
  v22 = [a3 selectedTab];
  if (v22)
  {
    v23 = v22;
    sub_100009F78(0, &qword_101181F70);
    v24 = v21;
    v25 = static NSObject.== infix(_:_:)();

    if (v25)
    {

      return 1;
    }
  }

  v26 = v5;
  v27 = [v21 viewController];
  if (!v27)
  {

    goto LABEL_19;
  }

  v28 = v27;
  sub_100009F78(0, &qword_101183D40);
  v29 = static NSObject.== infix(_:_:)();

  if ((v29 & 1) == 0)
  {
LABEL_19:

    return 1;
  }

  if (qword_10117F7A0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000060E4(v30, qword_101218E00);
  v31 = v26;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    buf = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *buf = 136446210;
    v34 = v31;
    v35 = [v34 description];
    v41 = v33;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_1000105AC(v36, v38, &v44);

    *(buf + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v41, "| ❌ viewController is not displayable: %{public}s", buf, 0xCu);
    sub_10000959C(v43);
  }

  v40 = (*((swift_isaMask & *v20) + 0x58))(a3);
  return v40 & 1;
}

id sub_1006E52A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v12);

  return v14;
}

void sub_1006E5330(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_facetsTabGroup);
  sub_100009F78(0, &qword_10118DF60);
  v4 = v3;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {

    sub_1003DCE8C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library3Tab_pinsTabGroup);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {

      sub_1003DB364();
    }

    else
    {
      if (qword_10117F7B0 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, qword_101218E30);
      v9 = a1;
      oslog = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v20 = v12;
        *v11 = 136446210;
        v13 = v9;
        v14 = [v13 description];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_1000105AC(v15, v17, &v20);

        *(v11 + 4) = v18;
        sub_10000959C(v12);
      }
    }
  }
}

void sub_1006E55A0(void *a1)
{
  v2 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for MusicPin();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Track();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6PinTabCMa(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin;
    v15 = v13;
    swift_beginAccess();
    (*(v6 + 16))(v8, v15 + v14, v5);
    v16 = a1;
    sub_1003121A8(v4);
    (*(v6 + 8))(v8, v5);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {

      sub_1006E6824(v4);
    }

    else
    {
      (*(v10 + 32))(v12, v4, v9);
      v17 = [v16 viewController];
      if (v17)
      {
        v18 = v17;
        ObjectType = swift_getObjectType();
        v20 = swift_conformsToProtocol2();
        if (v20)
        {
          (*(v20 + 56))(v12, ObjectType, v20);
        }

        (*(v10 + 8))(v12, v9);
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }
  }
}

id sub_1006E58A8(void *a1)
{
  v95 = a1;
  v2 = type metadata accessor for UICellConfigurationState();
  v92 = *(v2 - 8);
  __chkstk_darwin(v2);
  v91 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for UITabSidebarItem.Content();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90[1] = v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v104 = (v90 - v6);
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  __chkstk_darwin(v7);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v90 - v12;
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v90 - v19;
  v21 = [objc_opt_self() itemFromRequest:a1];
  UITabSidebarItem.defaultContentConfiguration()();
  v109 = v2;
  v110 = &protocol witness table for UICellConfigurationState;
  sub_10001C8B8(v108);
  UITabSidebarItem.configurationState.getter();
  v103 = v20;
  v22 = v15;
  v23 = v104;
  UIListContentConfiguration.updated(for:)();
  v24 = *(v22 + 8);
  v25 = v17;
  v26 = v105;
  v100 = v22 + 8;
  v101 = v14;
  v99 = v24;
  v24(v25, v14);
  sub_10000959C(v108);
  UITabSidebarItem.defaultBackgroundConfiguration()();
  v93 = v2;
  v109 = v2;
  v110 = &protocol witness table for UICellConfigurationState;
  v27 = v96;
  sub_10001C8B8(v108);
  UITabSidebarItem.configurationState.getter();
  v102 = v13;
  UIBackgroundConfiguration.updated(for:)();
  v28 = v10;
  v29 = v97;
  v30 = *(v106 + 8);
  v98 = v28;
  v30();
  sub_10000959C(v108);
  UITabSidebarItemRequest.content.getter();
  v31 = v27[11](v23, v29);
  if (v31 == enum case for UITabSidebarItem.Content.tab(_:))
  {
    v27[12](v23, v29);
    v32 = *v23;
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33 && v32)
    {
      v34 = v33;
      v94 = v30;
      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 16))(ObjectType, v34);
      v37 = v103;
      if (v36)
      {
        UITabSidebarItem.accessories.setter();
      }

      v38 = v91;
      UITabSidebarItem.configurationState.getter();
      (*(v34 + 24))(v37, v38, ObjectType, v34);

      v39 = v38;
      v40 = v37;
      (*(v92 + 8))(v39, v93);
      goto LABEL_24;
    }

    v40 = v103;
  }

  else
  {
    v94 = v30;
    if (v31 == enum case for UITabSidebarItem.Content.action(_:))
    {
      v27[12](v23, v29);
      v104 = *v23;
      v41 = [v104 identifier];
      v40 = v103;
      if (qword_10117FC90 != -1)
      {
        swift_once();
      }

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
      {
      }

      else
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v56 & 1) == 0)
        {

LABEL_24:
          v30 = v94;
          goto LABEL_25;
        }
      }

      v57 = [objc_opt_self() defaultMetrics];
      [v57 scaledValueForValue:28.0];
      v59 = v58;
      [v57 scaledValueForValue:28.0];

      v60 = UIListContentConfiguration.imageProperties.modify();
      v61 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
      *v62 = v59;
      v61(v107, 0);
      v60(v108, 0);
      v63 = objc_opt_self();
      v64 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
      [v64 scaledValueForValue:25.0];
      v66 = v65;

      v67 = [v63 systemFontOfSize:v66 weight:UIFontWeightLight];
      v96 = objc_opt_self();
      v68 = [v96 configurationWithFont:v67 scale:3];

      v69 = v68;
      v70 = v91;
      UITabSidebarItem.configurationState.getter();
      v71 = UICellConfigurationState.isEditing.getter();
      (*(v92 + 8))(v70, v93);
      v72 = objc_opt_self();
      v73 = &selRef_systemGrayColor;
      if ((v71 & 1) == 0)
      {
        v73 = &selRef_tintColor;
      }

      v74 = [v72 *v73];
      sub_10010FC20(&qword_101183990);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_100EBE270;
      *(v75 + 32) = v74;
      v76 = v21;
      v77 = objc_opt_self();
      v78 = v74;
      v97 = v22;
      v79 = v78;
      *(v75 + 40) = [v77 clearColor];
      v80 = v77;
      v21 = v76;
      *(v75 + 48) = [v80 tertiarySystemFillColor];
      sub_100009F78(0, &qword_101180C98);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v26 = v105;

      v82 = [v96 _configurationWithHierarchicalColors:isa];

      v83 = [v69 configurationByApplyingConfiguration:v82];
      v84 = v83;
      v85 = UIListContentConfiguration.imageProperties.modify();
      UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
      v85(v108, 0);

      v22 = v97;
      goto LABEL_24;
    }

    v40 = v103;
    if (qword_10117F7A0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000060E4(v46, qword_101218E00);
    v95 = v21;
    v47 = v21;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v108[0] = swift_slowAlloc();
      v51 = v108[0];
      *v50 = 136446210;
      LODWORD(v93) = v49;
      UITabSidebarItem.content.getter();
      v52 = String.init<A>(describing:)();
      v54 = v27;
      v55 = sub_1000105AC(v52, v53, v108);

      *(v50 + 4) = v55;
      v27 = v54;
      _os_log_impl(&_mh_execute_header, v48, v93, "Unhandled sidebar item content type %{public}s", v50, 0xCu);
      sub_10000959C(v51);
      v40 = v103;

      v26 = v105;
    }

    v30 = v94;
    v27[1](v104, v29);
    v21 = v95;
  }

LABEL_25:
  v86 = v101;
  v109 = v101;
  v110 = &protocol witness table for UIListContentConfiguration;
  v87 = sub_10001C8B8(v108);
  (*(v22 + 16))(v87, v40, v86);
  UITabSidebarItem.contentConfiguration.setter();
  v88 = v102;
  (*(v106 + 16))(v98, v102, v26);
  UITabSidebarItem.backgroundConfiguration.setter();
  (v30)(v88, v26);
  v99(v40, v86);
  return v21;
}

uint64_t sub_1006E642C(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2 || !a1)
  {
    return 0;
  }

  v3 = v2;
  v4 = qword_10117F7A0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Building trailing swipe actions for tab=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  ObjectType = swift_getObjectType();
  v19 = (*(v3 + 32))(ObjectType, v3);

  return v19;
}

uint64_t sub_1006E6628(void *a1)
{
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2 || !a1)
  {
    return 0;
  }

  v3 = v2;
  v4 = qword_10117F7A0;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218E00);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446210;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000105AC(v14, v16, &v21);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Building context menu configuration for tab=%{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  ObjectType = swift_getObjectType();
  v19 = (*(v3 + 40))(ObjectType, v3);

  return v19;
}

uint64_t sub_1006E6824(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1006E688C()
{
  v0 = sub_10010FC20(&unk_10118CDC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&qword_101193C80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118CDD0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118CDC0);
    return 1;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118CDD0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_1006E6A78()
{
  v0 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&unk_101193AA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D1E0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846C0);
    return 1;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D1E0);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_1006E6C64()
{
  v0 = sub_10010FC20(&qword_10118D1B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&qword_10118D1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&qword_10118D1C8);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &qword_10118D1B8);
    return 1;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &qword_10118D1C8);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

BOOL sub_1006E6E50()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_101184700);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846E0);
    return 1;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_101184700);
    v8 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v4 + 8))(v6, v3);
  }

  return v8;
}

uint64_t sub_1006E703C()
{
  v0 = type metadata accessor for Artist();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Composer();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Genre();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F4654(v25, v14, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v20 = v24;
      (*(v24 + 32))(v5, v14, v3);
      v16 = Composer.name.getter();
      (*(v20 + 8))(v5, v3);
    }

    else
    {
      (*(v7 + 32))(v9, v14, v6);
      v16 = Genre.name.getter();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    v18 = v22;
    v17 = v23;
    (*(v22 + 32))(v2, v14, v23);
    v16 = Artist.name.getter();
    (*(v18 + 8))(v2, v17);
  }

  return v16;
}

id sub_1006E7454(uint64_t a1, int a2)
{
  v3 = v2;
  v51 = a2;
  v49 = a1;
  v4 = 0xD000000000000013;
  *&v52 = swift_getObjectType();
  v5 = _s6AlbumsVMa(0);
  __chkstk_darwin(v5 - 8);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s6AlbumsV5ScopeOMa(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  v16 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  v17 = sub_10010FC20(&unk_10118A650);
  v18 = *(*(v17 - 8) + 56);
  v18(&v3[v16], 1, 1, v17);
  v18(&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration], 1, 1, v17);
  v19 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  v20 = sub_10010FC20(&qword_101184578);
  (*(*(v20 - 8) + 56))(&v3[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  v22 = sub_10010FC20(&qword_101184588);
  (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] = 0;
  v23 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController;
  v24 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v23] = sub_10003AAD8(0xD00000000000001DLL, 0x8000000100E55670);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController] = 0;
  v25 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  v26 = type metadata accessor for Actions.MetricsReportingContext();
  v27 = &v3[v25];
  v28 = v49;
  (*(*(v26 - 8) + 56))(v27, 1, 1, v26);
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  sub_1006F4654(v28, &v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope], _s6AlbumsV5ScopeOMa);
  sub_1006F4654(v28, v15, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v30 = 0x8000000100E41720;
      sub_1006F46CC(v15, _s6AlbumsV5ScopeOMa);
      v4 = 0xD000000000000010;
    }

    else
    {
      sub_1006F46CC(v15, _s6AlbumsV5ScopeOMa);
      v30 = 0xED00007365726E65;
      v4 = 0x477972617262694CLL;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v30 = 0x8000000100E41700;
    sub_1006F46CC(v15, _s6AlbumsV5ScopeOMa);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v4 = 0x417972617262694CLL;
    v30 = 0xED0000736D75626CLL;
  }

  else
  {
    v30 = 0x8000000100E41740;
  }

  v31 = v52;
  v32 = v51;
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] = sub_10059A684(v4, v30, 0);
  sub_1006F4654(v28, v13, _s6AlbumsV5ScopeOMa);
  v33 = v32 & 1;
  v34 = v50;
  sub_1002884E4(v13, v33, v50);
  sub_10010FC20(&qword_101184618);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] = sub_1003A1E94(v34);
  v53.receiver = v3;
  v53.super_class = v31;
  v35 = objc_msgSendSuper2(&v53, "initWithNibName:bundle:", 0, 0);
  sub_1006E703C();
  v36 = String._bridgeToObjectiveC()();

  [v35 setTitle:v36];

  sub_1006F4654(v35 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope, v13, _s6AlbumsV5ScopeOMa);
  swift_storeEnumTagMultiPayload();
  v37 = sub_10028C5F4(v13, v10);
  sub_1006F46CC(v10, _s6AlbumsV5ScopeOMa);
  sub_1006F46CC(v13, _s6AlbumsV5ScopeOMa);
  if (v37)
  {
    v38 = 3;
  }

  else
  {
    v38 = 1;
  }

  UIViewController.playActivityFeatureIdentifier.setter(v38);
  sub_10010FC20(&unk_101182D80);
  v39 = swift_allocObject();
  v52 = xmmword_100EBC6B0;
  *(v39 + 16) = xmmword_100EBC6B0;
  v40 = sub_100217F14();
  *(v39 + 32) = &type metadata for LibraryFilterTrait;
  *(v39 + 40) = v40;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  v42 = sub_100137E8C();
  *(v41 + 32) = &type metadata for MusicLibraryTrait;
  *(v41 + 40) = v42;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v43 = [v35 traitCollection];

  v44 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(v41) = v45;

  if ((v41 & 1) == 0)
  {
    v46 = [v35 navigationItem];
    [v46 setLargeTitleDisplayMode:v44];
  }

  sub_1006F46CC(v28, _s6AlbumsV5ScopeOMa);
  return v35;
}

uint64_t sub_1006E7BC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v51.receiver = v0;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v3 = sub_1006E8204();
  v4 = sub_1006E85EC();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v9 = sub_1006F4734;
  v9[1] = v8;

  sub_100020438(v10);

  v11 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v12 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v11 = sub_1006E8B3C;
  v11[1] = 0;
  sub_100020438(v12);
  sub_1006E9010();
  v13 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = *(v13 + 16);
  *(v13 + 16) = sub_1006F473C;
  *(v13 + 24) = v14;

  sub_100020438(v15);

  v16 = *&v1[v5];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v16[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v19 = *&v16[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v18 = sub_1006F4748;
  v18[1] = v17;
  v20 = v16;

  sub_100020438(v19);

  v21 = sub_1006E935C();
  v22 = [v1 traitCollection];
  v23 = [v22 horizontalSizeClass];

  [*(v21 + 32) setHidesNavigationBarDuringPresentation:v23 == 1];

  sub_10010FC20(&unk_101182D80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v24 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v25 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = v25[2];
  v25[2] = sub_1006F4750;
  v25[3] = v26;

  sub_100020438(v27);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = v25[4];
  v25[4] = sub_1006F4758;
  v25[5] = v28;

  sub_100020438(v29);

  v30 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = *(v30 + 88);
  *(v30 + 88) = sub_1006F4760;
  *(v30 + 96) = v31;

  sub_100020438(v32);

  v33 = sub_10010FC20(&unk_10118A650);
  v47[3] = v33;
  v34 = sub_10001C8B8(v47);
  sub_1006EAC58(v34);
  v48[3] = v33;
  v35 = sub_10001C8B8(v48);
  sub_1006EAEDC(v35);
  v49[3] = sub_10010FC20(&qword_101184578);
  v36 = sub_10001C8B8(v49);
  sub_1006EB164(v36);
  v50[3] = sub_10010FC20(&qword_101184588);
  v37 = sub_10001C8B8(v50);
  sub_1006EB3DC(v37);
  swift_arrayDestroy();
  v38 = *&v1[v5];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v40 = swift_allocObject();
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 1;
  *(v40 + 96) = 0;
  v41 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v42 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v40 + 16) = v38;
  *(v40 + 24) = sub_1006F4768;
  *(v40 + 32) = v39;
  *(v40 + 40) = 0;
  v43 = *(v40 + 56);
  *(v40 + 64) = 0;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  v44 = v38;
  swift_retain_n();
  sub_100020438(v43);
  v45 = *(v40 + 72);
  *(v40 + 72) = 0;
  *(v40 + 80) = 0;
  sub_100020438(v45);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController] = v40;

  return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

id sub_1006E8204()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
LABEL_6:
    v42 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v44.receiver = v16;
    v44.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v44, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v43.receiver = v27;
    v43.super_class = v14;
    objc_msgSendSuper2(&v43, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = sub_1006ED700();
      v40 = UIView.withAccessibilityIdentifier(_:)(v38, v39);

      v41 = *&v1[v10];
      *&v1[v10] = v40;
      v12 = v40;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006E85EC()
{
  v1 = sub_1006E8204();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32);
  }

  v4 = *&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v3)
  {
    v7 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    if (v6 == 1)
    {
      v9 = objc_opt_self();
      v10 = [v9 fractionalWidthDimension:1.0];
      v11 = [v9 estimatedDimension:65.0];
      v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v13 = String._bridgeToObjectiveC()();

      v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:1];

      sub_10010FC20(&qword_101183990);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100EBC6C0;
      *(v15 + 32) = v14;
      sub_100009F78(0, &unk_1011913A0);
      v16 = v14;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setBoundarySupplementaryItems:isa];

      v18 = *(v8 + 16);
      *(v8 + 16) = v16;
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
    *(v20 + 80) = 0;
    *(v20 + 88) = v8;
    v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v26[4] = sub_1002193FC;
    v26[5] = v20;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 1107296256;
    v26[2] = sub_1005A63A8;
    v26[3] = &unk_1010BBA88;
    v22 = _Block_copy(v26);

    v23 = [v21 initWithSectionProvider:v22 configuration:v7];

    _Block_release(v22);

    return v23;
  }

  else
  {
    v25 = sub_10059B450(v4, v6 == 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    return v25;
  }
}

void sub_1006E89D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1006E8204();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v7 & 1) != 0 || *(*&v5[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32) == 1)
    {
      v8 = [objc_opt_self() currentTraitCollection];
      [v8 displayScale];
    }

    else
    {
      v9 = *&v5[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView];
      v10 = sub_100189858();

      (v10)(a1, a2);
    }
  }
}

unint64_t sub_1006E8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v4 = sub_10010FC20(&qword_1011815C0);
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_10010FC20(&qword_1011846D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Album();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_10010FC20(&unk_10118F1E0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1000089F8(a1, v32, &unk_101183F30);
  if (!v33)
  {
    sub_1000095E8(v32, &unk_101183F30);
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v21 = swift_dynamicCast();
  (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_7:
    sub_1000095E8(v16, &unk_101184720);
    v25 = type metadata accessor for Artwork();
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  (*(v18 + 32))(v20, v16, v17);
  v22 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v22 + 16))
  {
    (*(v8 + 16))(v10, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v24 = v29;
    MusicItemCollection.subscript.getter();
    (*(v28 + 8))(v6, v24);
    Album.artwork.getter();
    (*(v26 + 8))(v13, v27);
    return (*(v18 + 8))(v20, v17);
  }

  __break(1u);
  return result;
}

void sub_1006E9010()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_1006F2564();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_100395798();
  }

  v5 = sub_1006F24EC();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setHidden:v4 & 1];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v12 = *&v1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

void sub_1006E9240()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1006E8204();
    v3 = sub_1006E85EC();

    sub_100189E04(v3);
  }
}

void sub_1006E92C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v6 = sub_1006E8204();
      v7 = sub_1006E85EC();
      sub_100189E04(v7);
    }
  }
}

uint64_t sub_1006E935C()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1006E9400(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_10010FC20(&unk_10118F1E0);
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10010FC20(&unk_101184720);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v50 = &v45 - v20;
  __chkstk_darwin(v21);
  v55 = &v45 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v45 = v7;
  v46 = v18;
  v47 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  v49 = a3;
  RequestResponse.Revision.content.getter(v13);
  v23 = sub_10010FC20(&unk_101184700);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v13, 1, v23) == 1)
  {
    sub_1000095E8(v13, &unk_1011846E0);
    v25 = 1;
    v26 = v55;
    v28 = v51;
    v27 = v52;
  }

  else
  {
    v28 = v51;
    v27 = v52;
    v26 = v55;
    (v51[2])(v55, v13, v52);
    sub_1000095E8(v13, &unk_101184700);
    v25 = 0;
  }

  (v28[7])(v26, v25, 1, v27);
  v52 = sub_1006E8204();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v24(v10, 1, v23) == 1)
  {
    sub_1000095E8(v10, &unk_1011846E0);
    v51 = 0;
  }

  else
  {
    v30 = v45;
    (v28[2])(v45, v10, v27);
    sub_1000095E8(v10, &unk_101184700);
    v51 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v30, v27);
  }

  v31 = v50;
  sub_1000089F8(v26, v50, &unk_101184720);
  if ((v28[6])(v31, 1, v27) == 1)
  {
    sub_1000095E8(v31, &unk_101184720);
    v50 = 0;
  }

  else
  {
    v50 = MusicLibrarySectionedResponse.sections.getter();
    (v28[1])(v31, v27);
  }

  v32 = Strong;
  v33 = [*(sub_1006E935C() + 32) searchBar];
  LODWORD(v45) = [v33 isFirstResponder];

  v34 = v55;
  v35 = v46;
  sub_1000089F8(v55, v46, &unk_101184720);
  v36 = *(v53 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  v37[2] = v48;
  v37[3] = v38;
  v37[4] = v32;
  sub_10003D17C(v35, v37 + ((v36 + 40) & ~v36), &unk_101184720);
  v39 = v47;
  sub_1000089F8(v34, v47, &unk_101184720);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  sub_10003D17C(v39, v40 + ((v36 + 24) & ~v36), &unk_101184720);
  v41 = v32;

  v42 = sub_10010FC20(&qword_1011846D8);
  v43 = sub_1006F4854();
  v44 = v52;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v51, v50, 0, 0, 1, v45 ^ 1, sub_1006F4770, v37, sub_1006E9C68, 0, sub_1006E9CF8, 0, sub_1006F47E4, v40, 0, 0, v42, v43);

  return sub_1000095E8(v34, &unk_101184720);
}

uint64_t sub_1006E9AAC(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&unk_101184720);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController);
  sub_1000089F8(a4, v10, &unk_101184720);
  v12 = sub_10010FC20(&unk_10118F1E0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &unk_101184720);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v12;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  v15 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v18, v11 + v15, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_1006E9C68()
{
  type metadata accessor for Album();
  sub_1006F4908(&unk_101192760, &type metadata accessor for Album);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1006E9CF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicFavoriteStatus();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v46 - v6;
  v7 = type metadata accessor for Artwork();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  __chkstk_darwin(v7);
  v46 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v13 - 8);
  v50 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = Album.title.getter();
  v23 = v22;
  v53 = a2;
  if (v21 == Album.title.getter() && v23 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v26 = Album.artistName.getter();
  v28 = v27;
  if (v26 == Album.artistName.getter() && v28 == v29)
  {

    v30 = v51;
  }

  else
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = v51;
    if ((v31 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v51 = v3;
  Album.artwork.getter();
  Album.artwork.getter();
  v32 = *(v10 + 48);
  sub_1000089F8(v20, v12, &unk_101188920);
  sub_1000089F8(v17, &v12[v32], &unk_101188920);
  v33 = *(v52 + 48);
  if (v33(v12, 1, v30) == 1)
  {
    sub_1000095E8(v17, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    if (v33(&v12[v32], 1, v30) == 1)
    {
      sub_1000095E8(v12, &unk_101188920);
LABEL_17:
      v40 = v47;
      Album.favoriteStatus.getter();
      v41 = v48;
      Album.favoriteStatus.getter();
      v35 = static MusicFavoriteStatus.== infix(_:_:)();
      v42 = *(v49 + 8);
      v43 = v41;
      v44 = v51;
      v42(v43, v51);
      v42(v40, v44);
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v50;
  sub_1000089F8(v12, v50, &unk_101188920);
  if (v33(&v12[v32], 1, v30) == 1)
  {
    sub_1000095E8(v17, &unk_101188920);
    sub_1000095E8(v20, &unk_101188920);
    (*(v52 + 8))(v34, v30);
LABEL_14:
    sub_1000095E8(v12, &unk_101191420);
    goto LABEL_15;
  }

  v36 = v52;
  v37 = v46;
  (*(v52 + 32))(v46, &v12[v32], v30);
  sub_1006F4908(&unk_10118D3D0, &type metadata accessor for Artwork);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v36 + 8);
  v39(v37, v30);
  sub_1000095E8(v17, &unk_101188920);
  sub_1000095E8(v20, &unk_101188920);
  v39(v50, v30);
  sub_1000095E8(v12, &unk_101188920);
  if (v38)
  {
    goto LABEL_17;
  }

LABEL_15:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1006EA304(char *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101184720);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_10010FC20(&unk_10118F1E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  sub_1006E9010();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_101184700);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_1011846E0);
    v15 = 1;
  }

  else
  {
    (*(v11 + 16))(v13, v9, v10);
    sub_1000095E8(v9, &unk_101184700);
    v16 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v13, v10);
    v15 = !v16;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v17 = sub_1006E8204();
  [v17 setBouncesVertically:v15 & 1];

  [*&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v15 & 1];
  v18 = sub_1006E935C();
  sub_1000089F8(a2, v6, &unk_101184720);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_1000095E8(v6, &unk_101184720);
  }

  else
  {
    v19 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v11 + 8))(v6, v10);
    if (!v19)
    {
      v28 = *(v18 + 64);
      *(v18 + 64) = 1;
      if (v28)
      {
      }

      goto LABEL_12;
    }
  }

  v20 = (*(*&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v21 = v20[1];
  if (!v21)
  {
    v27 = *(v18 + 64);
    *(v18 + 64) = 0;
    if ((v27 & 1) == 0)
    {
    }

    goto LABEL_12;
  }

  v22 = *v20 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 != 0;
  v25 = *(v18 + 64);
  *(v18 + 64) = v24;
  if (v25 != v24)
  {
LABEL_12:
    sub_10043EAB8();
  }
}

void sub_1006EA6CC()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v5 = sub_10010FC20(&unk_101184700);
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
    {
      sub_1000095E8(v2, &unk_1011846E0);
      v6 = _swiftEmptyArrayStorage;
    }

    else
    {
      v6 = *&v2[*(v5 + 36)];

      sub_1000095E8(v2, &unk_101184700);
    }

    v7 = v6[2];

    v8 = sub_1006EA9D4();
    swift_getKeyPath();
    v14 = v8;
    sub_1006F4908(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 48);

    if ((v7 == 0) == v9)
    {
    }

    else
    {
      v10 = *&v4[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource];
      v11 = v7 == 0;
      if (((v7 == 0) ^ *(v10 + 48)))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v13[-16] = v10;
        v13[-8] = v11;
        v14 = v10;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v10 + 48) = v11;
      }
    }
  }
}

uint64_t sub_1006EA9D4()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1006F49A8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1006EAAF8(uint64_t a1, unint64_t a2)
{
  v4 = _s6AlbumsVMa(0);
  __chkstk_darwin(v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController);
    v9 = result;

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      a1 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = *(v8 + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_1006F4654(v11 + v12, v6, _s6AlbumsVMa);
    v13 = &v6[*(v4 + 28)];

    *v13 = a1;
    v13[1] = v10;
    sub_100378808(v6);
  }

  return result;
}

uint64_t sub_1006EAC58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1006EAEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1006EB164@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10119F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10119F3B0);
  v10 = sub_10010FC20(&qword_101184578);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10119F3B0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10119F3B0);
  return swift_endAccess();
}

uint64_t sub_1006EB3DC@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10010FC20(&qword_101192A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &qword_101192A50);
  v11 = sub_10010FC20(&qword_101184588);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000095E8(v9, &qword_101192A50);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v10, &qword_101192A50);
  return swift_endAccess();
}

uint64_t sub_1006EB67C(uint64_t a1)
{
  v2 = _s6AlbumsVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Album();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v31 = v14;
    v20 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController;

    sub_10037C8AC(a1, v10);

    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      sub_1000095E8(v10, &unk_101184730);
      return 0;
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      v21 = *(*&v19[v20] + 48);
      v22 = *(*v21 + 96);
      swift_beginAccess();
      sub_1006F4654(v21 + v22, v4, _s6AlbumsVMa);
      sub_100288ABC(v7);
      sub_1006F46CC(v4, _s6AlbumsVMa);
      v23 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v7, 1, v23) == 1)
      {
        sub_1000095E8(v7, &unk_10118CDB0);
        v25 = 0;
      }

      else
      {
        v25 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v24 + 8))(v7, v23);
      }

      v26 = sub_100799E1C(v25);
      v27 = sub_100797240(&off_10109C230, v26);

      v28 = v31;
      (*(v12 + 16))(v31, v17, v11);
      v29 = sub_10079BA94(v27, v28);

      (*(v12 + 8))(v17, v11);
      return v29;
    }
  }

  return result;
}

void sub_1006EBAE4(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v4 = sub_1006E8204();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_1006F472C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1007E9F28;
    v11[3] = &unk_1010BB920;
    v8 = _Block_copy(v11);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  type metadata accessor for ApplicationMainMenu();
  v9 = sub_100314AEC();
  if (v9)
  {
    v10 = v9;
    sub_1007CA9DC(v2, v9);
  }
}

uint64_t sub_1006EBC90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

uint64_t sub_1006EBD5C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
  sub_1006F4654(v9, v7, type metadata accessor for MetricsEvent.Page);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_1006F46CC(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_1006EC074()
{
  v0 = sub_10010FC20(&unk_10118D330);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = Strong;

  v6 = sub_1006E6E50();

  if (v6)
  {

LABEL_4:
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_1006EA9D4();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v8 + 1) = v0;
  v9 = sub_100020674(&unk_10118D340, &unk_10118D330);
  sub_10001C8B8(&v7);
  UIHostingConfiguration.margins(_:_:)();

  (*(v1 + 8))(v3, v0);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_1006EC270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&unk_10118F1E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&qword_1011846D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_101184700);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_1011846E0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_101184700);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1006EC62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760);
    v11 = _s8GridCellVMa(255);
    v12 = sub_1006F4908(&qword_10118D290, _s8GridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1006EC878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v46 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v40 - v6;
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = _s8GridCellVMa(0);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v16, &protocol witness table for Album, v12);
  v17 = sub_1006E8204();
  v18 = *&v17[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v18, 0, 0, 1, 0x3FF0000000000000, 0, 2, v48);
  v19 = Corner.medium.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = sub_10010FC20(&unk_101182950);
  (*(*(v23 - 8) + 56))(v9, 1, 11, v23);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v9, 0, 1, v48, v20, v21, v22, v15);
  v24 = sub_10034DFAC();
  v42 = v25;
  v43 = v24;
  v41 = sub_10034E12C();
  v27 = v26;
  v28 = v44;
  Album.favoriteStatus.getter();
  v29 = v4;
  v30 = v4;
  v31 = v46;
  (*(v2 + 104))(v30, enum case for MusicFavoriteStatus.favorited(_:), v46);
  v32 = static MusicFavoriteStatus.== infix(_:_:)();
  v33 = *(v2 + 8);
  v33(v29, v31);
  v33(v28, v31);
  Album.contentRating.getter();
  v34 = &v15[v13[5]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *&v15[v13[6]] = 0x3FF0000000000000;
  v35 = &v15[v13[7]];
  v36 = v42;
  *v35 = v43;
  *(v35 + 1) = v36;
  v37 = &v15[v13[8]];
  *v37 = v41;
  v37[1] = v27;
  v15[v13[9]] = v32 & 1;
  v15[v13[11]] = 0;
  v38 = v13[12];
  *&v15[v38] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_1006F4908(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1006F4908(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_1006F46CC(v15, _s8GridCellVMa);
}

void sub_1006ECD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v20[-4] = a3;
    v20[-3] = v15;
    v20[-2] = a5;
    v16 = v15;
    sub_10010FC20(&unk_1011847A0);
    v17 = _s8ListCellVMa(255);
    v18 = sub_1006F4908(&qword_10118D2E0, _s8ListCellVMa);
    v20[0] = v17;
    v20[1] = v18;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v19 = *(v8 + 8);
    v19(v10, v7);
    static Edge.Set.vertical.getter();
    v20[3] = v7;
    v20[4] = sub_100020674(&unk_1011847B0, &unk_10118D320);
    sub_10001C8B8(v20);
    UIHostingConfiguration.margins(_:_:)();
    v19(v13, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1006ED000@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v2 - 8);
  v67 = &v55[-v3];
  v64 = type metadata accessor for MusicFavoriteStatus();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v57 = &v55[-v7];
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55[-v12];
  v14 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = v16;
  v17 = _s8ListCellVMa(0);
  __chkstk_darwin(v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v20, &protocol witness table for Album, v13);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v71);
  v21 = Corner.small.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = sub_10010FC20(&unk_101182950);
  (*(*(v25 - 8) + 56))(v10, 1, 11, v25);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v13, v10, 0, 1, v71, v22, v23, v24, v16);
  v26 = sub_10034DFAC();
  v61 = v27;
  v62 = v26;
  v28 = sub_10034E12C();
  v59 = v29;
  v60 = v28;
  v30 = v57;
  Album.favoriteStatus.getter();
  v31 = v58;
  v32 = v64;
  (*(v4 + 104))(v58, enum case for MusicFavoriteStatus.favorited(_:), v64);
  v56 = static MusicFavoriteStatus.== infix(_:_:)();
  v33 = *(v4 + 8);
  v33(v31, v32);
  v33(v30, v32);
  Album.contentRating.getter();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  OptionalObservableObject.init(publisher:)(&v68);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v64 = OptionalObservableObject.init(publisher:)(&v68);
  v34 = static HierarchicalShapeStyle.primary.getter();
  *(v19 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v19 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v19 = v34;
  v19[40] = 0;
  v35 = &v19[v17[6]];
  v36 = v17[9];
  v37 = v17[10];
  v38 = type metadata accessor for ContentRating();
  (*(*(v38 - 8) + 56))(&v19[v37], 1, 1, v38);
  v58 = &v19[v17[11]];
  v39 = v17[14];
  *&v19[v39] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v40 = v63;
  sub_1006F4654(v63, &v19[v17[5]], type metadata accessor for ArtworkImage.Info);
  v35[1] = 0;
  v35[2] = 0;
  *v35 = 0;
  v41 = &v19[v17[7]];
  v42 = v61;
  *v41 = v62;
  v41[1] = v42;
  v43 = &v19[v17[8]];
  v44 = v59;
  *v43 = v60;
  v43[1] = v44;
  v19[v36] = v56 & 1;
  v45 = &v19[v37];
  v46 = v67;
  sub_100123348(v67, v45);
  v47 = &v19[v17[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v47 = ObservedObject.init(wrappedValue:)();
  v47[1] = v48;
  v49 = &v19[v17[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v50 = ObservedObject.init(wrappedValue:)();
  v52 = v51;

  sub_1000095E8(v46, &unk_10118D2F0);
  sub_1006F46CC(v40, type metadata accessor for ArtworkImage.Info);
  *v49 = v50;
  v49[1] = v52;
  v53 = v58;
  *v58 = 0;
  v53[1] = 0;
  sub_1006F4908(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1006F4908(&qword_10118D2E0, _s8ListCellVMa);

  View.artworkCaching(owner:)();

  return sub_1006F46CC(v19, _s8ListCellVMa);
}

unint64_t sub_1006ED700()
{
  v1 = type metadata accessor for Genre();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F4654(v0, v7, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v2 + 32))(v4, v7, v1);
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v16._countAndFlagsBits = 0x2E7972617262694CLL;
      v16._object = 0xEF2E7365726E6547;
      Genre.name.getter();
      v10 = String.removeSpaces()();

      String.append(_:)(v10);

      v11._countAndFlagsBits = 2003134806;
      v11._object = 0xE400000000000000;
      String.append(_:)(v11);
      v12 = AccessibilityIdentifier.init(name:)(v16);
      (*(v2 + 8))(v4, v1);
      return v12;
    }

    v14 = 0xD00000000000001ELL;
    v13 = 0x8000000100E55710;
LABEL_11:
    v12 = AccessibilityIdentifier.init(name:)(*&v14);
    sub_1006F46CC(v7, _s6AlbumsV5ScopeOMa);
    return v12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = 0x8000000100E556F0;
    v14 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor();
  }

  else
  {
    v9 = AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor();
  }

  v12 = *v9;

  return v12;
}

uint64_t sub_1006ED9C4@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1006F45C8(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryAlbumsList.unsafeMutableAddressor();
  sub_1006F4654(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_1006F4654(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_1006EE0D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v10 = *v9 == a2 && v9[1] == a3;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v11 != a3)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
LABEL_14:
        sub_1006EAEDC(v8);
        goto LABEL_15;
      }

      strcpy(v17, "Unknown kind=");
      v17[7] = -4864;
      v14._countAndFlagsBits = a2;
      v14._object = a3;
      String.append(_:)(v14);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_1006EAC58(v8);
LABEL_15:
  sub_100009F78(0, &unk_101184750);
  v15 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v15;
}

void *sub_1006EE434(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v4 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v4 - 8);
  v56 = &v50 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UICellAccessory.DisplayedState();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101184588);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = sub_10010FC20(&qword_101184578);
  v51 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v17 - 8);
  v59 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = &v50 - v20;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  sub_10037C8AC(a2, &v50 - v22);
  v61 = v2;
  v24 = sub_1006E8204();
  v25 = v24[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v25 & 1) != 0 || (*(*&v61[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_layoutVariantController] + 32))
  {
    v26 = v61;
    sub_1006EB3DC(v13);
    v27 = sub_1007F7A18(v13, a2, v23);
    (*(v11 + 8))(v13, v10);
    sub_10010FC20(&unk_101184740);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    v28 = v53;
    v29 = v55;
    (*(v53 + 104))(v9, enum case for UICellAccessory.DisplayedState.always(_:), v55);
    v30 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v30 - 8) + 56))(v56, 1, 1, v30);
    v31 = v54;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v57 + 8))(v31, v58);
    (*(v28 + 8))(v9, v29);
    UICollectionViewListCell.accessories.setter();
    v32 = [v26 traitCollection];
    v33 = [v32 userInterfaceIdiom];

    if (v33 != 6)
    {
      v34 = v27;
      [v34 directionalLayoutMargins];
      [v34 setDirectionalLayoutMargins:?];
    }

    v35 = v59;
    sub_1000089F8(v23, v59, &unk_101184730);
    v36 = type metadata accessor for Album();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v35, 1, v36) == 1)
    {
      sub_1000095E8(v35, &unk_101184730);
      v62 = 0u;
      v63 = 0u;
      v64 = 0;
    }

    else
    {
      *(&v63 + 1) = v36;
      v64 = &protocol witness table for Album;
      v38 = sub_10001C8B8(&v62);
      (*(v37 + 32))(v38, v35, v36);
    }
  }

  else
  {
    sub_1006EB164(v16);
    v39 = sub_1007F74DC(v16, a2, v23);
    (*(v51 + 8))(v16, v14);
    v40 = Corner.medium.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];
    v43 = *(v40 + 16);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = v42;
    *(v44 + 32) = v43;
    UICollectionViewCell.configurationUpdateHandler.setter();
    v45 = v52;
    sub_1000089F8(v23, v52, &unk_101184730);
    v46 = type metadata accessor for Album();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) == 1)
    {
      sub_1000095E8(v45, &unk_101184730);
      v62 = 0u;
      v63 = 0u;
      v64 = 0;
    }

    else
    {
      *(&v63 + 1) = v46;
      v64 = &protocol witness table for Album;
      v48 = sub_10001C8B8(&v62);
      (*(v47 + 32))(v48, v45, v46);
    }

    v27 = sub_1004F24B0(&v62);
  }

  sub_1000095E8(v23, &unk_101184730);
  sub_1000095E8(&v62, &qword_1011A3DD0);
  return v27;
}

BOOL sub_1006EED78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

void sub_1006EEE6C(void *a1, uint64_t a2)
{
  v104 = a1;
  v4 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v4 - 8);
  v90 = &v90 - v5;
  v6 = type metadata accessor for IndexPath();
  v101 = *(v6 - 8);
  v102 = v6;
  __chkstk_darwin(v6);
  v99 = v7;
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v8 - 8);
  v98 = &v90 - v9;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v97 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v90 - v13;
  __chkstk_darwin(v14);
  v105 = &v90 - v15;
  v93 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v93);
  v94 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v95 = &v90 - v18;
  __chkstk_darwin(v19);
  v92 = &v90 - v20;
  v21 = sub_10010FC20(&qword_10118CE70);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v90 - v23;
  v25 = _s6AlbumsVMa(0);
  __chkstk_darwin(v25);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v28 - 8);
  v30 = &v90 - v29;
  v31 = type metadata accessor for Album();
  __chkstk_darwin(v31);
  v91 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v106 = &v90 - v34;
  __chkstk_darwin(v35);
  v107 = &v90 - v36;
  __chkstk_darwin(v37);
  v108 = &v90 - v38;
  v110 = v2;
  v39 = *&v2[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v103 = a2;
  v40 = a2;
  v42 = v41;
  sub_10037C8AC(v40, v30);
  v43 = *(v42 + 48);
  v111 = v31;
  if (v43(v30, 1, v31) == 1)
  {
    sub_1000095E8(v30, &unk_101184730);
  }

  else
  {
    v109 = v42;
    v44 = v108;
    v45 = v111;
    (*(v42 + 32))(v108, v30, v111);
    v46 = *(v39 + 48);
    v47 = *(*v46 + 96);
    swift_beginAccess();
    sub_1006F4654(v46 + v47, v27, _s6AlbumsVMa);
    type metadata accessor for TitledSection();
    MusicLibrarySectionedRequest.init()();

    MusicLibrarySectionedRequest.library.setter();
    MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
    MusicLibrarySectionedRequest.filterItems(text:)(*&v27[*(v25 + 28)]);
    sub_1002897C8(v24);
    sub_100289CA8();
    sub_10028A010(v24);
    sub_1006F46CC(v27, _s6AlbumsVMa);
    LOBYTE(v46) = MusicLibrarySectionedRequest.includeOnlyDownloadedContent.getter();
    (*(v22 + 8))(v24, v21);
    v48 = *(v42 + 16);
    v49 = v107;
    v50 = v44;
    v51 = v45;
    v48(v107, v50, v45);
    v52 = sub_10010FC20(&qword_10118A430);
    v53 = *(v52 + 48);
    v54 = *(v52 + 64);
    v55 = v92;
    sub_1006F4654(&v110[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_scope], v92, _s6AlbumsV5ScopeOMa);
    v56 = _s6AlbumsV5ScopeOMa(0);
    (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
    *(v55 + v53) = v46 & 1;
    *(v55 + v54) = 0;
    swift_storeEnumTagMultiPayload();
    v57 = type metadata accessor for URL();
    v58 = v105;
    (*(*(v57 - 8) + 56))(v105, 1, 1, v57);
    v59 = v106;
    v48(v106, v49, v51);
    v60 = v95;
    sub_1006F4654(v55, v95, type metadata accessor for ContainerDetail.Source);
    v61 = v96;
    v62 = v109;
    sub_1000089F8(v58, v96, &qword_101183A20);
    v63 = v91;
    v48(v91, v59, v51);
    v64 = v94;
    sub_1006F4654(v60, v94, type metadata accessor for ContainerDetail.Source);
    v65 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v66 = v98;
    (*(*(v65 - 8) + 56))(v98, 1, 1, v65);
    v67 = v97;
    sub_1000089F8(v61, v97, &qword_101183A20);
    v68 = sub_1004E34D0(v63, v64, v66, v67);
    sub_1000095E8(v61, &qword_101183A20);
    sub_1006F46CC(v60, type metadata accessor for ContainerDetail.Source);
    v69 = *(v62 + 8);
    v70 = v111;
    v69(v106, v111);
    v71 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v72 = sub_100137F64(v68, v71);
    sub_1000095E8(v105, &qword_101183A20);
    sub_1006F46CC(v55, type metadata accessor for ContainerDetail.Source);
    v73 = v107;
    v109 = v62 + 8;
    v107 = v69;
    v69(v73, v70);
    v74 = v110;
    *&v72[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v110[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    sub_100009F78(0, &qword_101184710);
    v75 = objc_allocWithZone(UIZoomTransitionOptions);
    v76 = v72;
    v77 = [v75 init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v78 = v100;
    v79 = v101;
    v80 = v102;
    (*(v101 + 16))(v100, v103, v102);
    v81 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v82 = swift_allocObject();
    v83 = v104;
    *(v82 + 16) = v104;
    (*(v79 + 32))(v82 + v81, v78, v80);
    v84 = v83;
    v85 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    [v76 setPreferredTransition:v85];
    v86 = [v74 navigationController];
    if (v86)
    {
      v87 = v86;
      v88 = v90;
      UIViewController.traitOverrides.getter();
      v89 = type metadata accessor for UITraitOverrides();
      (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
      UINavigationController.push(_:traitOverrides:animated:)(v76, v88, 1);

      sub_1000095E8(v88, &unk_10119F3A0);
      (v107)(v108, v111);
    }

    else
    {
      (v107)(v108, v111);
    }
  }
}

uint64_t sub_1006EFADC(uint64_t a1)
{
  v2 = type metadata accessor for Album();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100735238(v5, 1);
}

unint64_t sub_1006EFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = a3;
  v123 = a4;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v131 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v128 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v129 = v8;
  v130 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v134 = &v113 - v10;
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v113 - v12;
  v14 = sub_10010FC20(&unk_1011845D0);
  v125 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v126 = v15;
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v113 - v17;
  v18 = _s6AlbumsVMa(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v21 - 8);
  v23 = &v113 - v22;
  v24 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v24 - 8);
  v121 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v124 = &v113 - v27;
  __chkstk_darwin(v28);
  v30 = &v113 - v29;
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  v34 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v34 - 8);
  v132 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v135 = &v113 - v37;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v39 = Strong;
  v117 = v13;
  v119 = v5;
  v120 = v4;
  sub_10010FC20(&unk_101183900);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100EBC6B0;
  v41 = type metadata accessor for Album();
  *(v40 + 56) = v41;
  *(v40 + 64) = &protocol witness table for Album;
  v42 = sub_10001C8B8((v40 + 32));
  (*(*(v41 - 8) + 16))(v42, v122, v41);
  v43 = [v39 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v118 = v151[0];
  v44 = *(*&v39[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] + 48);
  v45 = *(*v44 + 96);
  swift_beginAccess();
  sub_1006F4654(v44 + v45, v20, _s6AlbumsVMa);
  sub_100288ABC(v23);
  sub_1006F46CC(v20, _s6AlbumsVMa);
  PlaybackIntentDescriptor.IntentType.init(_:)(v23, v33);
  memset(v151, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v46 = qword_101218AD8;
  sub_1000089F8(v33, v30, &unk_1011838E0);
  v47 = v46;
  v48 = UIViewController.playActivityInformation.getter();
  v122 = v49;
  v116 = v50;
  v52 = v51;
  sub_1000089F8(v151, &v143, &unk_101183910);
  v133 = v39;
  if (*(&v144 + 1))
  {
    sub_100059A8C(&v143, &v147);
    v53 = v47;
    v54 = v117;
  }

  else
  {
    v115 = v48;
    *&v152 = v39;
    sub_100009F78(0, &qword_101183D40);
    v56 = v39;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v155, &v147);
      v53 = v47;
      v54 = v117;
    }

    else
    {
      v157 = 0;
      v155 = 0u;
      v156 = 0u;
      *&v147 = v56;
      v57 = v56;
      v58 = String.init<A>(reflecting:)();
      v148 = &type metadata for Player.CommandIssuerIdentity;
      v149 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v147 = v58;
      *(&v147 + 1) = v59;
      v53 = v47;
      v54 = v117;
      if (*(&v156 + 1))
      {
        sub_1000095E8(&v155, &unk_101183910);
      }
    }

    v48 = v115;
    if (*(&v144 + 1))
    {
      sub_1000095E8(&v143, &unk_101183910);
    }
  }

  v60 = v135;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v53, v30, v48, v122, v116, v52, &v147, v135);
  sub_1000095E8(v151, &unk_101183910);
  sub_1000095E8(v33, &unk_1011838E0);
  v61 = type metadata accessor for Actions.PlaybackContext();
  v62 = *(v61 - 8);
  (*(v62 + 56))(v60, 0, 1, v61);
  v63 = type metadata accessor for PlaylistContext();
  (*(*(v63 - 8) + 56))(v136, 1, 1, v63);
  v64 = type metadata accessor for IndexPath();
  v65 = *(v64 - 8);
  (*(v65 + 16))(v54, v123, v64);
  (*(v65 + 56))(v54, 0, 1, v64);
  v66 = v133;
  sub_100376EDC(v54, v151);
  sub_1000095E8(v54, &unk_10118BCE0);
  v67 = v134;
  sub_1006ED9C4(v134);
  v68 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  sub_100008FE4(v40 + 32, v150);

  sub_1000089F8(v151, &v143, &unk_1011845E0);
  if (v146 == 1)
  {
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v158 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v66, &v155, &v147);
    v69 = v132;
    if (v146 != 1)
    {
      sub_1000095E8(&v143, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v143, &v147);
    v69 = v132;
  }

  swift_getObjectType();
  v70 = swift_conformsToProtocol2();
  if (v70)
  {
    v117 = v70;
    v71 = v66;
    v122 = v66;
  }

  else
  {
    v122 = 0;
    v117 = 0;
  }

  v123 = swift_allocBox();
  v73 = v72;
  sub_1000089F8(v135, v69, &unk_10118AB20);
  v74 = *(v62 + 48);
  if (v74(v69, 1, v61) == 1)
  {
    v75 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v76 = v124;
    (*(*(v75 - 8) + 56))(v124, 1, 1, v75);
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
    v77 = v76;
    v78 = v121;
    sub_1000089F8(v77, v121, &unk_1011838E0);
    v116 = v53;
    v79 = UIViewController.playActivityInformation.getter();
    v114 = v81;
    v115 = v80;
    v83 = v82;
    sub_1000089F8(&v143, &v141, &unk_101183910);
    if (v142)
    {
      sub_100059A8C(&v141, &v152);
    }

    else
    {
      v140 = v66;
      sub_100009F78(0, &qword_101183D40);
      v84 = v66;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v137, &v152);
        v69 = v132;
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        *&v152 = v84;
        v85 = v84;
        v86 = String.init<A>(reflecting:)();
        *(&v153 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v154 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v152 = v86;
        *(&v152 + 1) = v87;
        v69 = v132;
        if (*(&v138 + 1))
        {
          sub_1000095E8(&v137, &unk_101183910);
        }
      }

      v66 = v133;
      v78 = v121;
      if (v142)
      {
        sub_1000095E8(&v141, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v116, v78, v79, v115, v114, v83, &v152, v73);
    sub_1000095E8(&v143, &unk_101183910);
    sub_1000095E8(v124, &unk_1011838E0);
    if (v74(v69, 1, v61) != 1)
    {
      sub_1000095E8(v69, &unk_10118AB20);
    }
  }

  else
  {
    sub_1006F45C8(v69, v73, type metadata accessor for Actions.PlaybackContext);
  }

  v88 = *(v61 + 28);
  sub_1000089F8(&v73[v88], &v152, &unk_101183910);
  if (*(&v153 + 1))
  {
    sub_100059A8C(&v152, &v143);
  }

  else
  {
    *&v143 = v66;
    v89 = v66;
    v90 = String.init<A>(reflecting:)();
    *(&v144 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v145 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v143 = v90;
    *(&v143 + 1) = v91;
    if (*(&v153 + 1))
    {
      sub_1000095E8(&v152, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100EBDC20;
  *(v92 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v92 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v92 + 32) = 0x4D747865746E6F43;
  *(v92 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v143, v92 + 72);
  v93 = static Player.CommandIssuer<>.combining(_:)();
  v95 = v94;

  sub_10000959C(&v143);
  *(&v144 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v145 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v143 = v93;
  *(&v143 + 1) = v95;
  sub_10006B010(&v143, &v73[v88], &unk_101183910);
  sub_100008FE4(v150, &v143);
  sub_10010FC20(&unk_10118AB50);
  v132 = String.init<A>(describing:)();
  v124 = v96;
  v121 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v150, &v141);
  sub_10012B7A8(&v147, &v143);
  v97 = v130;
  sub_1000089F8(v134, v130, &unk_1011838D0);
  v98 = v127;
  sub_1000089F8(v136, v127, &unk_1011845D0);
  v99 = (*(v128 + 80) + 160) & ~*(v128 + 80);
  v100 = (v129 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v102 = (*(v125 + 80) + v101 + 8) & ~*(v125 + 80);
  v129 = (v102 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v102 + v126 + 31) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  sub_100059A8C(&v141, v104 + 16);
  *(v104 + 56) = v118;
  sub_10012B828(&v143, v104 + 64);
  sub_10003D17C(v97, v104 + v99, &unk_1011838D0);
  *(v104 + v100) = v121;
  *(v104 + v101) = v123;
  sub_10003D17C(v98, v104 + v102, &unk_1011845D0);
  v105 = v104 + v129;
  v106 = v117;
  *v105 = v122;
  *(v105 + 8) = v106;
  *(v105 + 16) = 2;
  v107 = (v104 + v103);
  *v107 = variable initialization expression of Library.Context.playlistVariants;
  v107[1] = 0;
  swift_unknownObjectRetain();

  v108 = v131;
  UUID.init()();
  v109 = UUID.uuidString.getter();
  v111 = v110;
  (*(v119 + 8))(v108, v120);
  v159._countAndFlagsBits = v132;
  v159._object = v124;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v159, v109, v111, sub_1001CFB84, v104, &v152);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v147);
  sub_10000959C(v150);

  v55 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v147 = v152;
  sub_100015BB0(&v147);
  v143 = v153;
  sub_100015BB0(&v143);

  sub_1000095E8(v134, &unk_1011838D0);
  sub_1000095E8(v151, &unk_1011845E0);
  sub_1000095E8(v136, &unk_1011845D0);
  sub_1000095E8(v135, &unk_10118AB20);
  return v55;
}

id sub_1006F0E08(void *a1, void *a2, void *a3)
{
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v28 - v15;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0);
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v18(v8, 0, 1, v9);
    v28 = a1;
    v19 = *(v10 + 32);
    v19(v16, v8, v9);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v12, v16, v9);
    v21 = *(v10 + 80);
    v29 = a3;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    v24 = v28;
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    v19((v23 + v22), v12, v9);
    aBlock[4] = sub_1006F442C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010BB790;
    v25 = _Block_copy(aBlock);
    v26 = v24;

    [v29 addAnimations:v25];
    _Block_release(v25);
    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    v18(v8, 1, 1, v9);
    sub_1000095E8(v8, &unk_10118BCE0);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_1006F1150(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1006EEE6C(a2, a3);
  }
}

id sub_1006F125C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_1006F13BC()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_101184700);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_1011846E0);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_101184700);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DC7A4(v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

id sub_1006F174C()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v6 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1006F496C, v4);

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1006F1830()
{
  v0 = _s6AlbumsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1006E8204();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v7)
    {
      isa = 0;
    }

    else
    {

      isa = sub_100597E50().super.super.isa;
    }

    v19[4] = isa;
    v9 = *(*&v5[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController] + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_1006F4654(v9 + v10, v2, _s6AlbumsVMa);
    v11 = swift_allocObject();
    swift_weakInit();

    v12 = sub_100211A04(sub_100219544, v11).super.super.isa;

    sub_1006F46CC(v2, _s6AlbumsVMa);

    v13 = 0;
    v19[5] = v12;
    v18 = _swiftEmptyArrayStorage;
    while (v13 != 2)
    {
      v14 = v19[v13++ + 4];
      if (v14)
      {
        v15 = v14;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v18;
      }
    }

    sub_10010FC20(&qword_10118CE10);
    swift_arrayDestroy();
  }

  return v4;
}

objc_class *sub_1006F1AB8()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006F4950;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void sub_1006F1CBC(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v5 - 8);
  v7 = v31 - v6;
  v8 = _s6AlbumsVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v31[1] = v2;
    v32 = a1;
    v20 = *(*(Strong + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController) + 48);
    v21 = *(*v20 + 96);
    swift_beginAccess();
    sub_1006F4654(v20 + v21, v10, _s6AlbumsVMa);
    v22 = type metadata accessor for Album();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_100289108(v7, v13);
    sub_1000095E8(v7, &unk_101184730);
    sub_1006F46CC(v10, _s6AlbumsVMa);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1000095E8(v13, &unk_10118CDB0);
      v23 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      (*(v15 + 16))(v4, v17, v14);
      swift_storeEnumTagMultiPayload();
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      v33[0] = v19;
      v25 = v19;
      v26 = String.init<A>(reflecting:)();
      v33[3] = &type metadata for Player.CommandIssuerIdentity;
      v33[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v33[0] = v26;
      v33[1] = v27;
      v28 = v25;
      v29 = v32;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v34, 3, 0, 0, 1, 0, 1, v32, v19, v33);
      (*(v15 + 8))(v17, v14);
      v30 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }
  }

  else
  {
    v24 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
  }
}

objc_class *sub_1006F21A8()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580);

    v5 = SymbolButton.Intent.title.getter();
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006F49A8;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v15 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14);

    v16 = *(v11 + v1);
    *(v11 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_1006F23AC()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1006F1AB8();
    *(v4 + 40) = sub_1006F21A8();
    sub_100009F78(0, &qword_101181580);
    v6 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem);

    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v4, v7, v8).super.super.isa;
    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:v11 representativeItem:isa];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void *sub_1006F24EC()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_1006F23AC();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1006F2564()
{
  v1 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A6784();
    *(v4 + 40) = sub_1006F174C();
    sub_100009F78(0, &qword_101181580);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t type metadata accessor for LibraryAlbumsViewController()
{
  result = qword_10119F390;
  if (!qword_10119F390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006F2908()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_101184570, &qword_101184578);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_101184580, &qword_101184588);
      if (v2 <= 0x3F)
      {
        _s6AlbumsV5ScopeOMa(319);
        if (v3 <= 0x3F)
        {
          sub_1002114E8();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1006F2B00()
{
  v1 = v0;
  v2 = _s6AlbumsVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE260;
  v6 = sub_10031E9F8();
  isa = sub_100597E50().super.super.isa;
  v8 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v5 + 32) = v6;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = v9;
  v10 = sub_10031EA10();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v34[3] = v11;
  v34[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_1006F4654(v17 + v18, v4, _s6AlbumsVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v20.super.super.isa = sub_100211A04(sub_100217D1C, v19).super.super.isa;

  sub_1006F46CC(v4, _s6AlbumsVMa);

  if (v20.super.super.isa)
  {
    v21 = [(objc_class *)v20.super.super.isa children];

    v20.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v5 + 64) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = v20;
  v22 = sub_10031EA10();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v34[0] = v23;
  v34[1] = v25;
  v26._countAndFlagsBits = 0x7265746C69462ELL;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);
  v27 = String._bridgeToObjectiveC()();

  v28 = *(v16 + 48);
  v29 = *(*v28 + 96);
  swift_beginAccess();
  sub_1006F4654(v28 + v29, v4, _s6AlbumsVMa);
  v30 = swift_allocObject();
  swift_weakInit();

  v31 = sub_100397C74(sub_1006F34A0, v30);

  sub_1006F46CC(v4, _s6AlbumsVMa);

  if (v31)
  {
    v32 = [v31 children];

    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v27 = 0;
  }

  *(v5 + 96) = v27;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = v31;
  return v5;
}

void sub_1006F2EF4(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *(v5 + 16);
  v7 = (v5 + 16 + 16 * v6);
  while (v6)
  {
    --v6;
    v8 = *v7;
    v7 -= 2;
    if (v8 == a1)
    {
      if (qword_10117F580 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_101218A28);
      v10 = a1;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22[0] = v21;
        *v13 = 136446210;
        v14 = v10;
        v15 = [v14 description];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_1000105AC(v16, v18, v22);

        *(v13 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v11, v12, "Resign active submenuProvider=%{public}s", v13, 0xCu);
        sub_10000959C(v21);
      }

      swift_beginAccess();
      v20 = sub_1004F3F70(v6);
      swift_endAccess();

      sub_100059768();
      return;
    }
  }
}

uint64_t sub_1006F3114(char *a1)
{
  v2 = _s6AlbumsVMa(0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v7 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v8 = sub_10049CB78();

  v9 = *(v6 + 48);
  v10 = *(*v9 + 96);
  swift_beginAccess();
  sub_1006F4654(v9 + v10, v5, _s6AlbumsVMa);
  v5[8] = v8 & 1;
  return sub_100378808(v5);
}

uint64_t sub_1006F3250(char *a1)
{
  v2 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6AlbumsVMa(0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&a1[OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_responseController];
  v10 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v11 = v21[1];
  v12 = *(v9 + 48);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  sub_1006F4654(v12 + v13, v8, _s6AlbumsVMa);

  *v8 = v11;
  v14 = v8 + *(v5 + 36);
  v15 = *v14;
  if (v14[1])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100375F10(v16 | v15);
  if ((v17 & 0xFF00) == 0x200)
  {
    sub_1006F4654(v8 + *(v5 + 24), v4, _s6AlbumsV5ScopeOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload < 3)
    {
      sub_1006F46CC(v4, _s6AlbumsV5ScopeOMa);
LABEL_10:
      LOBYTE(v19) = 1;
      LOBYTE(v17) = 4;
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_10;
    }

    LOBYTE(v17) = 0;
    LOBYTE(v19) = 1;
  }

  else
  {
    v19 = (v17 >> 8) & 1;
  }

LABEL_11:
  *v14 = v17;
  v14[1] = v19;
  sub_10028ACDC(v16 | v15);
  return sub_100378808(v8);
}

uint64_t sub_1006F34A8(void *a1)
{
  v2 = sub_1006E8204();
  v3 = sub_1006E85EC();
  [v2 setCollectionViewLayout:v3];

  sub_1006E9010();
  v4 = sub_1006E935C();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];
}

uint64_t sub_1006F3564()
{
  v0 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_10118F1E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_101184700);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_1011846E0);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_101184700);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1006F3768(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&qword_1011815C0);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&qword_1011846D8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&unk_10118F1E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_101184700);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_1011846E0);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_101184700);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C140, &qword_1011815C0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

id sub_1006F3B84(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v20 = __chkstk_darwin(v16);
  v21 = &v44 - v17;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v58 = v13;
  v59 = v15;
  v22 = *(v15 + 16);
  v23 = *(v15 + 80);
  v61 = v18;
  v55 = v22;
  v56 = v19;
  (v22)(&v44 - v17, a1 + ((v23 + 32) & ~v23), v18, v20);
  sub_10037C8AC(v21, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v59 + 8))(v21, v61);
    sub_1000095E8(v4, &unk_101184730);
    return 0;
  }

  v50 = ~v23;
  v57 = v21;
  v25 = v6;
  v54 = *(v6 + 32);
  v45 = v23;
  v26 = v10;
  v27 = v6 + 32;
  v28 = v58;
  v54(v58, v4, v5);
  v48 = v27;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v53 = v25;
  v46 = *(v25 + 16);
  v46(v26, v28, v5);
  v29 = *(v25 + 80);
  v30 = v5;
  v47 = v29 | 7;
  v49 = swift_allocObject();
  v54((v49 + ((v29 + 16) & ~v29)), v26, v5);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v60;
  v32 = v30;
  v51 = v30;
  v46(v60, v28, v30);
  v33 = v56;
  v34 = v61;
  v55(v56, v57, v61);
  v35 = (v29 + 24) & ~v29;
  v36 = (v7 + v45 + v35) & v50;
  v37 = swift_allocObject();
  *(v37 + 16) = v44;
  v54((v37 + v35), v31, v32);
  v38 = v59;
  (*(v59 + 32))(v37 + v36, v33, v34);
  v39 = objc_opt_self();
  v66 = sub_1006F4490;
  v67 = v49;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010BB830;
  v40 = _Block_copy(&aBlock);

  v66 = sub_1006F44F0;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010BB858;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);
  (*(v53 + 8))(v58, v51);
  (*(v38 + 8))(v57, v61);

  return v43;
}

void sub_1006F41A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___gridCellRegistration;
  v6 = sub_10010FC20(&qword_101184578);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&qword_101184588);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___collectionView) = 0;
  v9 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v9) = sub_10003AAD8(0xD00000000000001DLL, 0x8000000100E55670);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___searchController) = 0;
  v11 = OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___actionMetricsReportingContext;
  v12 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music27LibraryAlbumsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006F442C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1006F1150(v2, v3, v4);
}

uint64_t sub_1006F4490()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1006EFADC(v2);
}

unint64_t sub_1006F44F0(uint64_t a1)
{
  v3 = *(type metadata accessor for Album() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1006EFB9C(a1, v7, v1 + v4, v8);
}

uint64_t sub_1006F45C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006F4654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006F46CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006F4770()
{
  v1 = *(sub_10010FC20(&unk_101184720) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1006E9AAC(v2, v3, v4, v5);
}

uint64_t sub_1006F47E4()
{
  v1 = *(sub_10010FC20(&unk_101184720) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1006EA304(v2, v3);
}

unint64_t sub_1006F4854()
{
  result = qword_10119F3C0[0];
  if (!qword_10119F3C0[0])
  {
    sub_1001109D0(&qword_1011846D8);
    sub_1006F4908(&unk_10118D190, &type metadata accessor for Album);
    result = swift_getWitnessTable();
    atomic_store(result, qword_10119F3C0);
  }

  return result;
}

uint64_t sub_1006F4908(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006F49AC()
{
  swift_getAssociatedTypeWitness();
  v1 = v0;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicItemState();
  swift_getWitnessTable();
  type metadata accessor for ObservedObject();
  if (v2 <= 0x3F && v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_1006F5528();
      if (v4 <= 0x3F)
      {
        sub_1006F558C(319, &qword_101197850, &type metadata accessor for State);
        if (v5 <= 0x3F)
        {
          sub_1006F558C(319, qword_10118F2D0, &type metadata accessor for Environment);
          if (v6 <= 0x3F)
          {
            sub_1006FA870(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1006F4BAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v3 - 8);
  v32 = *(v4 + 84);
  v31 = *(v5 + 84);
  if (v32 <= v31)
  {
    v6 = *(v5 + 84);
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v30 = type metadata accessor for GenericMusicItem();
  v7 = *(v30 - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 > v6)
  {
    v6 = v9;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v4 + 80);
  v14 = *(v4 + 64);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  if (v8)
  {
    v17 = 7;
  }

  else
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v7 + 80) & 0xF8 | 7;
  if (a2 <= v10)
  {
    goto LABEL_39;
  }

  v19 = *(v11 + 80) & 0xF8 | 7;
  v20 = v12 + ((v19 + ((((v17 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + ((v16 + v18 + ((v14 + v15 + ((v13 + 16) & ~v13)) & ~v15)) & ~v18) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v19) + 1;
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_20;
  }

  v24 = ((a2 - v10 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v24))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_39;
      }

LABEL_20:
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_39;
      }

LABEL_28:
      v25 = (v22 - 1) << v21;
      if (v20 > 3)
      {
        v25 = 0;
      }

      if (v20)
      {
        if (v20 > 3)
        {
          LODWORD(v20) = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v20) = *a1;
          }
        }

        else if (v20 == 1)
        {
          LODWORD(v20) = *a1;
        }

        else
        {
          LODWORD(v20) = *a1;
        }
      }

      return v10 + (v20 | v25) + 1;
    }

    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_28;
    }
  }

LABEL_39:
  if ((v6 & 0x80000000) != 0)
  {
    v27 = (a1 + v13 + 16) & ~v13;
    if (v32 == v10)
    {
      v28 = *(v4 + 48);
    }

    else
    {
      v27 = (v27 + v14 + v15) & ~v15;
      if (v31 != v10)
      {
        v29 = (*(v7 + 48))((v27 + v16 + v18) & ~v18, v8, v30);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }

      v28 = *(v5 + 48);
    }

    return v28(v27);
  }

  v26 = *(a1 + 1);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1006F4FE4(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v40 = v5;
  v6 = *(v4 - 8);
  v38 = *(v6 + 84);
  v39 = *(v5 + 84);
  if (v39 <= v38)
  {
    v7 = *(v6 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v36 = type metadata accessor for GenericMusicItem();
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  v37 = v10;
  if (v7 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = 0;
  v14 = *(type metadata accessor for ColorScheme() - 8);
  if (*(v14 + 64) <= 8uLL)
  {
    v15 = 8;
  }

  else
  {
    v15 = *(v14 + 64);
  }

  v16 = *(v5 + 80);
  v17 = *(v5 + 64);
  v18 = *(v6 + 80);
  v19 = *(v6 + 64);
  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = *(v8 + 64);
  if (!v9)
  {
    ++v21;
  }

  v22 = *(v14 + 80) & 0xF8 | 7;
  v23 = v15 + ((v22 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v19 + v20 + ((v17 + v18 + ((v16 + 16) & ~v16)) & ~v18)) & ~v20) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v22) + 1;
  if (a3 > v12)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v12 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v13 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v13 = v25;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v12 < a2)
  {
    v26 = ~v12 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> (8 * v23)) + 1;
      if (v23)
      {
        v28 = v26 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v28;
            if (v13 > 1)
            {
LABEL_65:
              if (v13 == 2)
              {
                *(a1 + v23) = v27;
              }

              else
              {
                *(a1 + v23) = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v13 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v28;
        *(a1 + 2) = BYTE2(v28);
      }

      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
      if (v13 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v13)
    {
      *(a1 + v23) = v27;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *(a1 + v23) = 0;
  }

  else if (v13)
  {
    *(a1 + v23) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if ((v11 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v29 = (a1 + v16 + 16) & ~v16;
  if (v39 == v12)
  {
    v30 = *(v40 + 56);
    v31 = a2;

LABEL_54:
    v30(v29, v31);
    return;
  }

  v29 = (v29 + v17 + v18) & ~v18;
  if (v38 == v12)
  {
    v30 = *(v6 + 56);
    v31 = a2;

    goto LABEL_54;
  }

  v32 = ((v29 + v19 + v20) & ~v20);
  if (v37 >= a2)
  {
    v35 = *(v8 + 56);

    v35(v32, a2 + 1, v9, v36);
  }

  else
  {
    v33 = (v21 + 7) & 0xFFFFFFF8;
    if (v33 != -8)
    {
      v34 = v32;
      bzero(v32, (v33 + 8));
      *v34 = ~v37 + a2;
    }
  }
}

void sub_1006F5528()
{
  if (!qword_10119F448)
  {
    sub_1001109D0(&unk_101189DA0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10119F448);
    }
  }
}

void sub_1006F558C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006F5624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a1;
  v112 = a2;
  v4 = a1 - 8;
  v110 = *(a1 - 8);
  __chkstk_darwin(a1);
  v108 = v5;
  v109 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for EnvironmentValues();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for ColorScheme();
  v104 = *(v107 - 8);
  __chkstk_darwin(v107);
  v90 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v84 - v9;
  __chkstk_darwin(v10);
  v85 = &v84 - v11;
  __chkstk_darwin(v12);
  v106 = &v84 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v99 = *(v14 - 8);
  v100 = v14;
  __chkstk_darwin(v14);
  v98 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v84 - v17;
  v103 = sub_10010FC20(&qword_10119F450) - 8;
  __chkstk_darwin(v103);
  v95 = &v84 - v18;
  v97 = sub_10010FC20(&qword_10119F458) - 8;
  __chkstk_darwin(v97);
  v113 = &v84 - v19;
  v101 = sub_10010FC20(&qword_10119F460);
  __chkstk_darwin(v101);
  v105 = &v84 - v20;
  v102 = type metadata accessor for MusicFavoriteStatus();
  v21 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = &v84 - v24;
  v91 = v4;
  v25 = *(v4 + 44);
  v26 = *(v4 + 24);
  v27 = *(v4 + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = *(AssociatedConformanceWitness + 16);
  v30 = swift_checkMetadataState();
  LOBYTE(v4) = v29(v30, AssociatedConformanceWitness);
  v31 = v91;
  v94 = (*(v27 + 56))(v2 + v25, v26, v27);
  v32 = v92;
  (*(AssociatedConformanceWitness + 24))(v30, AssociatedConformanceWitness);
  v33 = v93;
  v34 = v102;
  (*(v21 + 104))(v93, enum case for MusicFavoriteStatus.favorited(_:), v102);
  v35 = v32;
  v36 = v33;
  static MusicFavoriteStatus.== infix(_:_:)();
  v37 = *(v21 + 8);
  v37(v36, v34);
  v37(v35, v34);
  v38 = v3;
  v39 = v31;
  v40 = v38 + *(v31 + 56);
  v41 = *v40;
  v42 = *(v40 + 8);
  v115 = v41;
  v116 = v42;
  sub_10010FC20(&unk_101197960);
  State.wrappedValue.getter();
  LODWORD(v37) = v114;
  v43 = v95;
  sub_1006F6174(v38, v4 & 1, v26, v27, v95);
  v44 = (v43 + *(v103 + 60));
  v102 = v26;
  v103 = v27;
  sub_1006F6A48(v38, v37, v94 & 1, v26, v27, v44);
  v45 = *(**(v38 + 8) + 256);

  v47 = v96;
  v45(v46);

  v48 = v98;
  v49 = v99;
  v50 = v100;
  (*(v99 + 104))(v98, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v100);
  v51 = v48;
  LOBYTE(v48) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v52 = *(v49 + 8);
  v52(v51, v50);
  v52(v47, v50);
  if (v48)
  {
    v53 = 1.0;
  }

  else
  {
    v53 = 0.5;
  }

  v54 = v113;
  sub_10003D17C(v43, v113, &qword_10119F450);
  *(v54 + *(v97 + 44)) = v53;
  KeyPath = swift_getKeyPath();
  v56 = v38 + *(v39 + 60);
  v57 = *v56;
  if (*(v56 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v64 = v86;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000D8F20(v57, 0);
    (*(v87 + 8))(v64, v88);
    if (v115 != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v100 = KeyPath;
    v58 = v111;
    v65 = v85;
    sub_10056CEEC(v85);
    v66 = v104;
    v61 = *(v104 + 32);
    v67 = v90;
    v68 = v65;
    v62 = v107;
    v61(v90, v68, v107);
    v69 = (*(v66 + 88))(v67, v62);
    v60 = v105;
    v59 = v106;
    if (v69 == enum case for ColorScheme.light(_:))
    {
      v70 = v89;
      (*(v66 + 104))(v89, enum case for ColorScheme.dark(_:), v62);
    }

    else
    {
      v71 = *(v66 + 104);
      v70 = v89;
      if (v69 == enum case for ColorScheme.dark(_:))
      {
        (v71)(v89, enum case for ColorScheme.light(_:), v62);
      }

      else
      {
        v71(v89);
        (*(v66 + 8))(v90, v62);
      }
    }

    v61(v59, v70, v62);
    KeyPath = v100;
    goto LABEL_14;
  }

  if (v57)
  {
    goto LABEL_8;
  }

LABEL_6:
  v58 = v111;
  v59 = v106;
  sub_10056CEEC(v106);
  v60 = v105;
  v61 = *(v104 + 32);
  v62 = v107;
LABEL_14:
  v72 = (v60 + *(v101 + 36));
  v73 = sub_10010FC20(&qword_10118F360);
  v61(v72 + *(v73 + 28), v59, v62);
  *v72 = KeyPath;
  sub_10003D17C(v113, v60, &qword_10119F458);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v74 = *(*qword_101218AC8 + 456);
  v75 = sub_10010FC20(&qword_10119F468);
  v76 = v112;
  v74();
  v78 = v109;
  v77 = v110;
  (*(v110 + 16))(v109, v38, v58);
  v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v80 = swift_allocObject();
  v81 = v103;
  *(v80 + 16) = v102;
  *(v80 + 24) = v81;
  (*(v77 + 32))(v80 + v79, v78, v58);
  result = sub_10003D17C(v60, v76, &qword_10119F460);
  v83 = (v76 + *(v75 + 56));
  *v83 = sub_1006F9C60;
  v83[1] = v80;
  return result;
}

uint64_t sub_1006F6174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1006F6200(a5);
  v10 = sub_10010FC20(qword_10119F510);
  sub_1006F6658(a1, a3, a4, (a5 + *(v10 + 68)));
  return sub_1006F6900(a2, (a5 + *(v10 + 72)));
}

uint64_t sub_1006F6200@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = sub_10010FC20(&qword_1011831D0);
  __chkstk_darwin(v1 - 8);
  v3 = v40 - v2;
  v4 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v4 - 8);
  v6 = v40 - v5;
  v7 = type metadata accessor for Text.Suffix();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v46 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemCell();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 32);
  v11 = swift_checkMetadataState();
  v50[0] = v10(v11, AssociatedConformanceWitness);
  v50[1] = v12;
  sub_100009838();
  v13 = Text.init<A>(_:)();
  v43 = v14;
  v44 = v13;
  v45 = v15;
  v50[6] = v13;
  v50[7] = v14;
  v42 = v16 & 1;
  v51 = v16 & 1;
  v52 = v15;
  (*(AssociatedConformanceWitness + 72))(v11, AssociatedConformanceWitness);
  LOBYTE(v6) = TextBadge.init(for:isPlayable:)(v6, 1);
  static FavoriteBadgeConfiguration.default.getter(v50);
  TextBadge.view(favoriteBadgeConfiguration:)(v50, v6);
  v18 = v17;
  v20 = v19;
  v41 = v21;
  v40[1] = v22;
  sub_10028E664(v50);
  (*(AssociatedConformanceWitness + 24))(v11, AssociatedConformanceWitness);
  v23 = type metadata accessor for MusicFavoriteStatus();
  (*(*(v23 - 8) + 56))(v3, 0, 1, v23);
  v24 = TextBadge.init(for:)(v3);
  static FavoriteBadgeConfiguration.default.getter(v50);
  TextBadge.view(favoriteBadgeConfiguration:)(v50, v24);
  v26 = v25;
  v28 = v27;
  LOBYTE(v3) = v29;
  sub_10028E664(v50);
  v30 = static Text.+ infix(_:_:)();
  v32 = v31;
  LOBYTE(v6) = v33;
  sub_10011895C(v26, v28, v3 & 1);

  sub_10011895C(v18, v20, v41 & 1);

  v34 = v46;
  static Text.Suffix.alwaysVisible(_:)();
  sub_10011895C(v30, v32, v6 & 1);

  v35 = v49;
  View.textSuffix(_:)();
  (*(v47 + 8))(v34, v48);
  sub_10011895C(v44, v43, v42);

  v36 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10010FC20(&qword_101187818);
  v39 = (v35 + *(result + 36));
  *v39 = KeyPath;
  v39[1] = v36;
  return result;
}

uint64_t sub_1006F6658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  __chkstk_darwin(a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ItemCell();
  (*(v8 + 16))(v10, a1 + *(v11 + 40), a2);
  swift_getDynamicType();
  (*(v8 + 8))(v10, a2);
  result = (*(a3 + 48))(a2, a3);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (result)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = *(AssociatedConformanceWitness + 40);
    v19 = swift_checkMetadataState();
    v35 = v18(v19, AssociatedConformanceWitness);
    v36 = v20;
    sub_100009838();
    v21 = Text.init<A>(_:)();
    v23 = v22;
    LOBYTE(AssociatedConformanceWitness) = v24;
    static Font.caption.getter();
    v25 = Text.font(_:)();
    v27 = v26;
    v29 = v28;

    sub_10011895C(v21, v23, AssociatedConformanceWitness & 1);

    LODWORD(v35) = static HierarchicalShapeStyle.secondary.getter();
    v30 = v25;
    v13 = Text.foregroundStyle<A>(_:)();
    v14 = v31;
    LOBYTE(v23) = v32;
    v16 = v33;
    sub_10011895C(v30, v27, v29 & 1);

    v15 = v23 & 1;
  }

  *a4 = v13;
  a4[1] = v14;
  a4[2] = v15;
  a4[3] = v16;
  return result;
}

uint64_t sub_1006F6900@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    Image.init(systemName:)();
    v3 = Text.init(_:)();
    v5 = v4;
    v7 = v6;
    static Font.callout.getter();
    v8 = Text.font(_:)();
    v10 = v9;
    v12 = v11;

    sub_10011895C(v3, v5, v7 & 1);

    static HierarchicalShapeStyle.secondary.getter();
    v13 = Text.foregroundStyle<A>(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    sub_10011895C(v8, v10, v12 & 1);

    v20 = v17 & 1;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v20 = 0;
    v19 = 0;
  }

  *a2 = v13;
  a2[1] = v15;
  a2[2] = v20;
  a2[3] = v19;
  return result;
}

uint64_t sub_1006F6A48@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v36 = a3;
  v43 = a6;
  v10 = sub_10010FC20(&qword_10119F478);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v37 = (&v34 - v11);
  v12 = sub_10010FC20(&qword_10119F480);
  __chkstk_darwin(v12 - 8);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v39 = &v34 - v15;
  type metadata accessor for ItemCell();
  v16 = *(a5 + 32);
  v17 = v16(a4, a5);
  v18 = sub_100042A50(0, v17);

  v38 = a2;
  if (v18)
  {
    v19 = static Alignment.center.getter();
    v34 = v20;
    v35 = v19;
    sub_1006F6E88(a2 & 1, v36 & 1, a4, a5, v48);
    memcpy(v44, v48, sizeof(v44));
    memcpy(v45, v48, 0x108uLL);
    sub_1000089F8(v44, v47, &qword_10119F4A0);
    sub_1000095E8(v45, &qword_10119F4A0);
    memcpy(v46, v44, 0x108uLL);
    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    v47[0] = v35;
    v47[1] = v34;
    memcpy(&v47[2], v46, 0x108uLL);
    UIScreen.Dimensions.size.getter(v21);
    memcpy(v48, v47, 0x148uLL);
  }

  else
  {
    sub_1006F9CEC(v48);
  }

  v22 = v16(a4, a5);
  v23 = 1;
  v24 = sub_100042A50(1, v22);

  v25 = v39;
  if (v24)
  {
    v26 = static Alignment.leading.getter();
    v27 = v37;
    *v37 = v26;
    *(v27 + 8) = v28;
    v29 = sub_10010FC20(&qword_10119F498);
    sub_1006F7A04(a1, v38 & 1, v27 + *(v29 + 44));
    sub_1006F9D2C(v27, v25);
    v23 = 0;
  }

  (*(v40 + 56))(v25, v23, 1, v41);
  memcpy(v45, v48, sizeof(v45));
  v30 = v42;
  sub_1000089F8(v25, v42, &qword_10119F480);
  memcpy(v46, v45, sizeof(v46));
  v31 = v43;
  memcpy(v43, v45, 0x148uLL);
  v32 = sub_10010FC20(&qword_10119F488);
  sub_1000089F8(v30, v31 + *(v32 + 48), &qword_10119F480);
  sub_1000089F8(v46, v47, &qword_10119F490);
  sub_1000095E8(v25, &qword_10119F480);
  sub_1000095E8(v30, &qword_10119F480);
  memcpy(v47, v45, sizeof(v47));
  return sub_1000095E8(v47, &qword_10119F490);
}

void *sub_1006F6E88@<X0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v20 = a5;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006F7094(a1 & 1, a3, a4, v21);
  if (a2)
  {
    Image.init(systemName:)();
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v13 = Image.resizable(capInsets:resizingMode:)();

    (*(v10 + 8))(v12, v9);
    v14 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v16 = *(&v21[16] + 8);
    v17 = *(&v21[17] + 8);
    v18 = *(&v21[18] + 8);
  }

  else
  {
    v13 = 0;
    KeyPath = 0;
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *&v21[12] = v13;
  *(&v21[12] + 1) = KeyPath;
  *&v21[13] = v14;
  *(&v21[13] + 8) = v16;
  *(&v21[14] + 8) = v17;
  *(&v21[15] + 8) = v18;
  return memcpy(v20, v21, 0x108uLL);
}

double sub_1006F7094@<D0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for ItemCell();
  v9 = (*(a3 + 32))(a2, a3);
  v10 = sub_100042A50(1, v9);

  if ((v10 & 1) != 0 || (sub_1006F7668(v8) & 1) == 0)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v34 = *(AssociatedConformanceWitness + 48);
    v35 = swift_checkMetadataState();
    v36 = v34(v35, AssociatedConformanceWitness);
    if (v37)
    {
      HIDWORD(v38) = 0;
      v39 = 0xE000000000000000;
    }

    else
    {
      *&v84 = v36;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
    }

    DWORD1(v84) = HIDWORD(v38);
    *(&v84 + 1) = v39;
    sub_100009838();
    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    LODWORD(v84) = static HierarchicalShapeStyle.secondary.getter();
    v45 = Text.foregroundStyle<A>(_:)();
    v47 = v46;
    v49 = v48;
    sub_10011895C(v40, v42, v44 & 1);

    v50 = Text.monospacedDigit()();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_10011895C(v45, v47, v49 & 1);

    KeyPath = swift_getKeyPath();
    v58 = swift_getKeyPath();
    v81 = v54 & 1;
    v80 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v82[6] + 7) = *&v82[21];
    *(&v82[8] + 7) = *&v82[23];
    *(&v82[10] + 7) = *&v82[25];
    *(&v82[12] + 7) = v83;
    *(v82 + 7) = *&v82[15];
    *(&v82[2] + 7) = *&v82[17];
    *(&v82[4] + 7) = *&v82[19];
    v65 = v50;
    v66 = v52;
    LOBYTE(v67) = v54 & 1;
    v68 = v56;
    v69 = KeyPath;
    v70 = 0x3FE0000000000000;
    v71 = v58;
    v72 = 1;
    v73[0] = 0;
    v76 = *&v82[6];
    v75 = *&v82[4];
    v74 = *&v82[2];
    *&v73[1] = *v82;
    *&v79[15] = *(&v83 + 1);
    *v79 = *&v82[12];
    v78 = *&v82[10];
    v77 = *&v82[8];
    sub_1002D8E38(&v65);
    sub_10010FC20(&qword_10119F4A8);
    sub_10010FC20(&qword_10119F4B0);
    sub_1006F9D9C();
    sub_1006F9E28();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v11 = objc_opt_self();
    v12 = [v11 tintColor];
    v13 = [v11 labelColor];
    v14 = [v13 colorWithAlphaComponent:0.35];

    v15 = [v11 labelColor];
    v16 = [v15 colorWithAlphaComponent:0.2];

    v17 = [v11 labelColor];
    v18 = [v17 colorWithAlphaComponent:0.6];

    UIScreen.Dimensions.size.getter(v19);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v84) = 0;
    LOBYTE(v65) = a1 & 1;
    v66 = v21;
    v67 = v23;
    v68 = v25;
    v69 = v27;
    LOBYTE(v70) = v28;
    v71 = v29;
    v72 = v30;
    *v73 = v31;
    *&v73[8] = v32;
    v73[16] = 0;
    sub_1002D8E44(&v65);
    sub_10010FC20(&qword_10119F4A8);
    sub_10010FC20(&qword_10119F4B0);
    sub_1006F9D9C();
    sub_1006F9E28();
    _ConditionalContent<>.init(storage:)();
  }

  v59 = v93;
  a4[8] = v92;
  a4[9] = v59;
  a4[10] = v94[0];
  *(a4 + 169) = *(v94 + 9);
  v60 = v89;
  a4[4] = v88;
  a4[5] = v60;
  v61 = v91;
  a4[6] = v90;
  a4[7] = v61;
  v62 = v85;
  *a4 = v84;
  a4[1] = v62;
  result = *&v86;
  v64 = v87;
  a4[2] = v86;
  a4[3] = v64;
  return result;
}

uint64_t sub_1006F7668(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for GenericMusicItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  sub_10010FC20(&qword_10119F470);
  v31 = v1;
  State.wrappedValue.getter();
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = v8;
  }

  else
  {
    v27 = v12;
    v29 = v10;
    v30 = v15;
    v26 = *(v10 + 32);
    v26(v15, v8, v9);
    v28 = *(a1 + 36);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 80);
    v20 = swift_checkMetadataState();
    v19(v20, AssociatedConformanceWitness);
    if (v16(v5, 1, v9) != 1)
    {
      v22 = v27;
      v26(v27, v5, v9);
      sub_1006FBE4C(&qword_1011951D8, &type metadata accessor for GenericMusicItem);
      sub_1006FBE4C(&qword_10119F4F8, &type metadata accessor for GenericMusicItem);
      v23 = v30;
      v21 = static MusicItem<>.==~ infix(_:_:)();
      v24 = *(v29 + 8);
      v24(v22, v9);
      v24(v23, v9);
      return v21 & 1;
    }

    (*(v29 + 8))(v30, v9);
    v17 = v5;
  }

  sub_1000095E8(v17, &unk_101189DA0);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1006F7A04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v14 = a2;
  v13 = a1;
  v4 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for ItemCell();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 64);
  v9 = swift_checkMetadataState();
  v8(v9, AssociatedConformanceWitness);
  v10 = sub_10010FC20(&qword_10119F500);
  v11 = *(v10 + 40);
  *(a3 + v11) = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  sub_1000089F8(v6, a3, &unk_101188920);
  sub_1006F7BD8(v14 & 1, (a3 + *(v10 + 36)));
  return sub_1000095E8(v6, &unk_101188920);
}

uint64_t sub_1006F7BD8@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ItemCell();
  result = sub_1006F7668(v4);
  if (result)
  {
    static Color.black.getter();
    v35 = Color.opacity(_:)();

    v6 = static Alignment.center.getter();
    v33 = v7;
    v34 = v6;
    v8 = WaveformPlayIndicator.ColorPalette.overlay.unsafeMutableAddressor();
    v9 = v8[1];
    v10 = v8[2];
    v11 = v8[3];
    v12 = *v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v37[0]) = a1 & 1;
    v37[1] = v12;
    v37[2] = v13;
    v37[3] = v14;
    v37[4] = v15;
    LOBYTE(v38) = v16;
    v39 = v17;
    v40 = v19;
    v41 = v21;
    v42 = v23;
    LOBYTE(v43) = 0;
    v26 = v33;
    v25 = v34;
    v44 = v34;
    v45 = v33;
    v31 = v38;
    v32 = v37[0];
    v27 = v43;
    v46[0] = a1 & 1;
    v47 = v12;
    v48 = v13;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v53 = v19;
    v54 = v21;
    v55 = v23;
    v56 = 0;
    v57 = v34;
    v58 = v33;
    sub_1000089F8(v37, v36, &qword_10119F508);
    result = sub_1000095E8(v46, &qword_10119F508);
    v29 = v31;
    v28 = v32;
    v30 = v35;
  }

  else
  {
    v30 = 0;
    v28 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v29 = 0;
    v27 = 0;
    v25 = 0;
    v26 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
  }

  *a2 = v30;
  a2[1] = v28;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v29;
  a2[7] = v18;
  a2[8] = v20;
  a2[9] = v22;
  a2[10] = v24;
  a2[11] = v27;
  a2[12] = v25;
  a2[13] = v26;
  return result;
}

uint64_t sub_1006F7DB4(id *a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v20[-v9];
  v11 = *a1;
  if (*a1)
  {
    v12 = [*a1 tracklist];
    sub_1001CC118(v10);
  }

  else
  {
    v13 = type metadata accessor for GenericMusicItem();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = type metadata accessor for ItemCell();
  sub_1000089F8(v10, v6, &unk_101189DA0);
  sub_10010FC20(&qword_10119F470);
  State.wrappedValue.setter();
  sub_1000095E8(v10, &unk_101189DA0);
  if (v11)
  {
    v15 = [v11 state] != 2;
  }

  else
  {
    v15 = 1;
  }

  v16 = (a2 + *(v14 + 48));
  v17 = *v16;
  v18 = *(v16 + 1);
  v20[16] = v17;
  v21 = v18;
  v20[15] = v15;
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_1006F7FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  v16[4] = v5;
  v16[5] = v4;
  v17 = *(a1 + 32);
  v18 = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_100663950(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1006F81AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = *(a2 - 8);
  __chkstk_darwin(a1);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v43 = v27;
  v28 = type metadata accessor for Cell();
  sub_100663950(a1 + *(v28 + 52), a3, a5);
  v29 = a1;
  v30 = a4;
  sub_100663950(v29, a2, a4);
  (*(v17 + 16))(v20, v23, a3);
  v40 = v20;
  v31 = v36;
  (*(v11 + 16))(v36, v15, a2);
  v41 = v31;
  v39[0] = a3;
  v39[1] = a2;
  v37 = a5;
  v38 = v30;
  sub_1006769F4(&v40, 2uLL, v39);
  v32 = *(v11 + 8);
  v32(v15, a2);
  v33 = *(v17 + 8);
  v33(v23, a3);
  v32(v36, a2);
  return (v33)(v20, a3);
}

uint64_t sub_1006F8430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = *(a1 + 32);
  type metadata accessor for Optional();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  v16[4] = v4;
  v16[5] = v5;
  v16[6] = v3;
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v16[0];
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_100663950(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1006F8694@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a7;
  v39 = a6;
  v47 = a1;
  v49 = a8;
  v38 = a3;
  type metadata accessor for Optional();
  v37 = a2;
  swift_getTupleTypeMetadata2();
  v46 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v44 = &v37 - v17;
  v18 = type metadata accessor for Optional();
  v40 = *(v18 - 8);
  v19 = v40;
  __chkstk_darwin(v18);
  v50 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v41 = &v37 - v22;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v23 = a4;
  v24 = a5;
  v25 = v43;
  v65 = a6;
  v66 = v43;
  v26 = *(type metadata accessor for Title() + 72);
  v60[2] = v25;
  v42 = swift_getWitnessTable();
  v27 = v47;
  sub_100663950(v47 + v26, v18, v42);
  static HorizontalAlignment.leading.getter();
  v51 = v37;
  v52 = v38;
  v53 = v23;
  v54 = v24;
  v55 = v39;
  v56 = v25;
  v57 = v27;
  VStack.init(alignment:spacing:content:)();
  v28 = swift_getWitnessTable();
  v29 = v44;
  sub_100663950(v15, v13, v28);
  v30 = v48;
  v31 = *(v48 + 8);
  v31(v15, v13);
  v32 = *(v19 + 16);
  v33 = v50;
  v34 = v41;
  v32(v50, v41, v18);
  v61 = v33;
  (*(v30 + 16))(v15, v29, v13);
  v62 = v15;
  v60[0] = v18;
  v60[1] = v13;
  v58 = v42;
  v59 = v28;
  sub_1006769F4(&v61, 2uLL, v60);
  v31(v29, v13);
  v35 = *(v40 + 8);
  v35(v34, v18);
  v31(v15, v13);
  return (v35)(v50, v18);
}

uint64_t sub_1006F8AF8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a6;
  v35 = a7;
  v37 = a8;
  v38 = a5;
  v33 = a4;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  v17 = *(a2 - 1);
  __chkstk_darwin(v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v24 = v38;
  sub_100663950(a1, a2, v38);
  v42 = a2;
  v43 = a3;
  v25 = v34;
  v44 = v33;
  v45 = v24;
  v46 = v34;
  v47 = v35;
  v26 = *(type metadata accessor for Title() + 68);
  v41[2] = v25;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(a1 + v26, v11, WitnessTable);
  (*(v17 + 16))(v20, v23, a2);
  v42 = v20;
  v28 = v36;
  (*(v12 + 16))(v36, v16, v11);
  v43 = v28;
  v41[0] = a2;
  v41[1] = v11;
  v39 = v38;
  v40 = WitnessTable;
  sub_1006769F4(&v42, 2uLL, v41);
  v29 = *(v12 + 8);
  v29(v16, v11);
  v30 = *(v17 + 8);
  v30(v23, a2);
  v29(v28, v11);
  return (v30)(v20, a2);
}

uint64_t sub_1006F8DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = *(a1 + 24);
  type metadata accessor for Optional();
  v5 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for HStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v16 - v11;
  static VerticalAlignment.center.getter();
  v16[4] = v5;
  v16[5] = v4;
  v17 = *(a1 + 32);
  v18 = v2;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100663950(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_100663950(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1006F8FD8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v11 = type metadata accessor for ModifiedContent();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v35 = &v31 - v15;
  v16 = type metadata accessor for Optional();
  v31 = *(v16 - 8);
  v17 = v31;
  __chkstk_darwin(v16);
  v34 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v32 = &v31 - v20;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v21 = *(type metadata accessor for TrackNumber() + 52);
  v40[4] = a5;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(a1 + v21, v16, WitnessTable);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  v40[2] = a4;
  v40[3] = &protocol witness table for _FrameLayout;
  v22 = swift_getWitnessTable();
  v23 = v35;
  sub_100663950(v13, v11, v22);
  v24 = v36;
  v25 = *(v36 + 8);
  v25(v13, v11);
  v26 = *(v17 + 16);
  v27 = v34;
  v28 = v32;
  v26(v34, v32, v16);
  v41 = v27;
  (*(v24 + 16))(v13, v23, v11);
  v42 = v13;
  v40[0] = v16;
  v40[1] = v11;
  v38 = WitnessTable;
  v39 = v22;
  sub_1006769F4(&v41, 2uLL, v40);
  v25(v23, v11);
  v29 = *(v31 + 8);
  v29(v28, v16);
  v25(v13, v11);
  return (v29)(v27, v16);
}

uint64_t sub_1006F9338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v55 = a2;
  v3 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_10010FC20(&qword_10118F330);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v9 = *(a1 + 16);
  type metadata accessor for Optional();
  v68 = *(a1 + 24);
  v10 = v68;
  WitnessTable = swift_getWitnessTable();
  v49 = type metadata accessor for _OverlayModifier();
  v11 = type metadata accessor for ModifiedContent();
  v53 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  sub_1001109D0(&qword_101195B40);
  v52 = type metadata accessor for ModifiedContent();
  v50 = type metadata accessor for ModifiedContent();
  sub_1001109D0(&qword_10119F720);
  v14 = type metadata accessor for ModifiedContent();
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v44 - v17;
  v18 = v45;
  sub_1000089F8(v45, v5, &unk_101188920);
  ArtworkImage.init(_:)();
  v19 = &v8[*(sub_10010FC20(&unk_10118F340) + 36)];
  *v19 = 0x3FF0000000000000;
  *(v19 + 4) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v8[*(v6 + 36)];
  v21 = v70;
  *v20 = v69;
  *(v20 + 1) = v21;
  *(v20 + 2) = v71;
  v56 = v9;
  v57 = v10;
  v58 = v18;
  static Alignment.center.getter();
  v22 = sub_1006FBD04();
  View.overlay<A>(alignment:content:)();
  sub_1000095E8(v8, &qword_10118F330);
  v23 = sub_1006F9AE8();
  v24 = type metadata accessor for RoundedRectangle();
  v67[3] = v24;
  v67[4] = sub_1006FBE4C(&qword_101187830, &type metadata accessor for RoundedRectangle);
  v25 = sub_10001C8B8(v67);
  v26 = *(v24 + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  __asm { FMOV            V0.2D, #5.0 }

  *v25 = _Q0;
  v34 = swift_getWitnessTable();
  v65 = v22;
  v66 = v34;
  v35 = swift_getWitnessTable();
  v36 = v47;
  sub_10057F86C(v23, v67, v35, v47, 0.5);

  (*(v53 + 8))(v13, v11);
  sub_10000959C(v67);
  v37 = sub_100020674(&qword_101195B58, &qword_101195B40);
  v63 = v35;
  v64 = v37;
  v61 = swift_getWitnessTable();
  v62 = &protocol witness table for _CompositingGroupEffect;
  v38 = swift_getWitnessTable();
  v39 = sub_100020674(qword_10119F740, &qword_10119F720);
  v59 = v38;
  v60 = v39;
  v40 = swift_getWitnessTable();
  v41 = v51;
  sub_100663950(v36, v14, v40);
  v42 = *(v54 + 8);
  v42(v36, v14);
  sub_100663950(v41, v14, v40);
  return (v42)(v41, v14);
}

uint64_t sub_1006F99AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  v9 = *(type metadata accessor for Artwork() + 36);
  v12[1] = a3;
  WitnessTable = swift_getWitnessTable();
  sub_100663950(a1 + v9, v5, WitnessTable);
  sub_100663950(v8, v5, WitnessTable);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006F9AE8()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CEEC(v3);
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ColorScheme.light(_:))
  {
    static Color.black.getter();
  }

  else
  {
    if (v4 != enum case for ColorScheme.dark(_:))
    {
      static Color.black.getter();
      v5 = Color.opacity(_:)();

      (*(v1 + 8))(v3, v0);
      return v5;
    }

    static Color.white.getter();
  }

  v5 = Color.opacity(_:)();

  return v5;
}

uint64_t sub_1006F9C60(id *a1)
{
  v3 = *(type metadata accessor for ItemCell() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1006F7DB4(a1, v4);
}

_OWORD *sub_1006F9CEC(uint64_t a1)
{
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 208) = 1;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 216) = 0u;
  result = (a1 + 216);
  result[3] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  return result;
}

uint64_t sub_1006F9D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10119F478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006F9D9C()
{
  result = qword_10119F4B8;
  if (!qword_10119F4B8)
  {
    sub_1001109D0(&qword_10119F4A8);
    sub_10054727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4B8);
  }

  return result;
}

unint64_t sub_1006F9E28()
{
  result = qword_10119F4C0;
  if (!qword_10119F4C0)
  {
    sub_1001109D0(&qword_10119F4B0);
    sub_1006F9EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4C0);
  }

  return result;
}

unint64_t sub_1006F9EB4()
{
  result = qword_10119F4C8;
  if (!qword_10119F4C8)
  {
    sub_1001109D0(&qword_10119F4D0);
    sub_1006F9F6C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4C8);
  }

  return result;
}

unint64_t sub_1006F9F6C()
{
  result = qword_10119F4D8;
  if (!qword_10119F4D8)
  {
    sub_1001109D0(&qword_10119F4E0);
    sub_100020674(&qword_10119F4E8, &qword_10119F4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119F4D8);
  }

  return result;
}

void sub_1006FA024()
{
  sub_1006FA870(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      sub_1006FA870(319, &qword_1011878B0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1006FA124(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = type metadata accessor for Artwork();
  v6 = *(v5 - 8);
  v33 = v5;
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v32 = *(a3 + 16);
  v9 = *(v32 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v34 = v8;
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(type metadata accessor for ColorScheme() - 8);
  v14 = 8;
  if (*(v13 + 64) > 8uLL)
  {
    v14 = *(v13 + 64);
  }

  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v12;
  }

  if (v7)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = *(v6 + 64) + 1;
  }

  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  if (!v10)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v16 + v17;
  v20 = *(v13 + 80) & 0xF8 | 7;
  if (a2 <= v15)
  {
    goto LABEL_43;
  }

  v21 = v14 + ((v18 + v20 + (v19 & ~v17)) & ~v20) + 1;
  v22 = 8 * v21;
  if (v21 > 3)
  {
    goto LABEL_23;
  }

  v24 = ((a2 - v15 + ~(-1 << v22)) >> v22) + 1;
  if (HIWORD(v24))
  {
    v23 = *(a1 + v21);
    if (v23)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v24 <= 0xFF)
    {
      if (v24 < 2)
      {
        goto LABEL_43;
      }

LABEL_23:
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_43;
      }

LABEL_30:
      v25 = (v23 - 1) << v22;
      if (v21 > 3)
      {
        v25 = 0;
      }

      if (v21)
      {
        if (v21 <= 3)
        {
          v26 = v21;
        }

        else
        {
          v26 = 4;
        }

        if (v26 > 2)
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v27 = *a1;
          }
        }

        else if (v26 == 1)
        {
          v27 = *a1;
        }

        else
        {
          v27 = *a1;
        }
      }

      else
      {
        v27 = 0;
      }

      return v15 + (v27 | v25) + 1;
    }

    v23 = *(a1 + v21);
    if (*(a1 + v21))
    {
      goto LABEL_30;
    }
  }

LABEL_43:
  if (v34 == v15)
  {
    if (v7 >= 2)
    {
      v28 = (*(v6 + 48))(a1, v7, v33);
      goto LABEL_53;
    }

    return 0;
  }

  v29 = (a1 + v19) & ~v17;
  if (v11 == v15)
  {
    if (v10 >= 2)
    {
      v28 = (*(v9 + 48))(v29, v10, v32);
LABEL_53:
      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v31 = *(((v29 + v18 + v20) & ~v20) + v14);
  if (v31 >= 2)
  {
    return (v31 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1006FA444(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  v42 = v7;
  v43 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v41 = *(a4 + 16);
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = type metadata accessor for ColorScheme();
  v15 = v11;
  v16 = 0;
  v17 = *(v14 - 8);
  v18 = *(v17 + 64);
  if (v18 <= 8)
  {
    v18 = 8;
  }

  if (v13 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v13;
  }

  v20 = *(v7 + 64);
  if (!v8)
  {
    ++v20;
  }

  v21 = *(v10 + 80);
  v22 = v20 + v21;
  v23 = (v20 + v21) & ~v21;
  v24 = *(v10 + 64);
  if (!v15)
  {
    ++v24;
  }

  v25 = *(v17 + 80) & 0xF8 | 7;
  v26 = v18 + 1;
  v27 = ((v24 + v25 + v23) & ~v25) + v18 + 1;
  if (a3 > v19)
  {
    if (v27 <= 3)
    {
      v28 = ((a3 - v19 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v28))
      {
        v16 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v16 = v29;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  if (v19 < a2)
  {
    v30 = ~v19 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v33 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v33;
            if (v16 > 1)
            {
LABEL_62:
              if (v16 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v16 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v33;
        a1[2] = BYTE2(v33);
      }

      if (v16 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v27);
      *a1 = v30;
      v31 = 1;
      if (v16 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v16)
    {
      a1[v27] = v31;
    }

    return;
  }

  v32 = a1;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v27] = 0;
  }

  else if (v16)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v9 == v19)
  {
    v34 = v43;
    v35 = *(v42 + 56);
    v36 = a2 + 1;
    v15 = v8;
LABEL_50:

    v35(v32, v36, v15, v34);
    return;
  }

  v32 = (&a1[v22] & ~v21);
  if (v12 == v19)
  {
    v35 = *(v10 + 56);
    v36 = a2 + 1;
    v34 = v41;
    goto LABEL_50;
  }

  v37 = (&v32[v24 + v25] & ~v25);
  if (a2 > 0xFE)
  {
    if (v26 <= 3)
    {
      v38 = ~(-1 << (8 * v26));
    }

    else
    {
      v38 = -1;
    }

    if (v26)
    {
      v39 = v38 & (a2 - 255);
      if (v26 <= 3)
      {
        v40 = v26;
      }

      else
      {
        v40 = 4;
      }

      bzero(v37, v26);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          *v37 = v39;
          v37[2] = BYTE2(v39);
        }

        else
        {
          *v37 = v39;
        }
      }

      else if (v40 == 1)
      {
        *v37 = v39;
      }

      else
      {
        *v37 = v39;
      }
    }
  }

  else
  {
    v37[v18] = -a2;
  }
}