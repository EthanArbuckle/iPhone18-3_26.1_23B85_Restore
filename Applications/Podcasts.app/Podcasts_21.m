void PodcastsStateCoordinator.disableSubscription(onPodcastUUID:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [*&v3[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] mainOrPrivateContext];
  [v3 disableSubscriptionOnPodcastUUID:v5 from:a3 context:v6];
}

void PodcastsStateCoordinator.disableSubscription(onPodcastUUID:from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = v4;
  v9[6] = a3;
  v13[4] = sub_1002F90A0;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10000F038;
  v13[3] = &unk_1004EC4D8;
  v10 = _Block_copy(v13);
  v11 = a4;

  v12 = v4;

  [v11 performBlockAndWaitWithSave:v10];
  _Block_release(v10);
}

void sub_1002F33D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 podcastForUuid:v7];

  if (v8)
  {
    sub_1002F3480(v8, a5, a1);
  }
}

void sub_1002F3480(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  v60 = v13;
  if (os_log_type_enabled(v14, v13))
  {
    v54 = v14;
    v55 = v9;
    v57 = v7;
    v58 = v6;
    v59 = a3;
    v15 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v15 = 136315907;
    v16 = PodcastsStateChangeOrigin.description.getter();
    v18 = sub_1000153E0(v16, v17, &v64);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2081;
    v19 = [a1 title];
    v56 = a2;
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v62 = v21;
    v63 = v23;
    sub_100168088(&qword_100574230);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000153E0(v25, v26, &v64);

    *(v15 + 14) = v27;
    *(v15 + 22) = 2080;
    v28 = [a1 uuid];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v62 = v30;
    v63 = v32;
    v33 = String.init<A>(describing:)();
    v35 = sub_1000153E0(v33, v34, &v64);

    *(v15 + 24) = v35;
    *(v15 + 32) = 2081;
    v36 = MTPodcast.adamId.getter();
    a2 = v56;
    if (v37)
    {
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v62 = v36;
      sub_1000366D8();
      v38 = BinaryInteger.description.getter();
    }

    v24 = v59;
    v62 = v38;
    v63 = v39;
    v40 = String.init<A>(describing:)();
    v42 = sub_1000153E0(v40, v41, &v64);

    *(v15 + 34) = v42;
    v43 = v54;
    _os_log_impl(&_mh_execute_header, v54, v60, "Unfollowing podcast (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v10 + 8))(v12, v55);
    v7 = v57;
    v6 = v58;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v24 = a3;
  }

  sub_1002C76C4(a1, [a1 syncType], 1u, a2);
  [a1 applyDefaultUnfollowedShowSettings];
  v44 = v61;
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v46 = v45;
  (*(v7 + 8))(v44, v6);
  [a1 setLastRemovedFromUpNextDate:v46];
  v47 = [a1 nextEpisodeUuid];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      [a1 setNextEpisodeUuid:0];
      v53 = [v24 episodeForUuid:v48];

      if (!v53)
      {
        return;
      }

      [v53 setListenNowEpisode:0];
      v48 = v53;
    }
  }
}

void PodcastsStateCoordinator.disableSubscriptions(onPodcastUUIDs:from:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = v3;
  v7[5] = a2;
  v11[4] = sub_1002F90B8;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004EC528;
  v8 = _Block_copy(v11);
  v9 = a3;

  v10 = v3;

  [v9 performBlockAndWaitWithSave:v8];
  _Block_release(v8);
}

void sub_1002F3BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = kMTPodcastEntityName;
  v7 = objc_opt_self();
  v8 = v6;

  sub_10039B51C(v9);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v7 predicateForPodcastUuids:isa];

  v12 = [a1 objectsInEntity:v8 predicate:v11 sortDescriptors:0];
  if (!v12)
  {
    return;
  }

  sub_100009F1C(0, &qword_1005739D0);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = sub_10037F7EC(v13);

  if (!v14)
  {
    return;
  }

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_5:
      if (v15 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        sub_1002F3480(v17, a4, a1);
      }
    }
  }
}

void sub_1002F3EC0(void *a1, void *a2, char a3, int a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v91) = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v82 - v14;
  static Logger.podcastsStatesCoordination.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  LODWORD(v89) = v16;
  v18 = os_log_type_enabled(v17, v16);
  v90 = *&a2;
  if (v18)
  {
    v83 = v17;
    v85 = v12;
    v86 = v11;
    v87 = v6;
    v19 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v95 = v84;
    *v19 = 136316163;
    v93 = a2;
    LOBYTE(v94) = a3 & 1;
    sub_100168088(&unk_10057E2F0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v95);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v88 = a5;
    v23 = PodcastsStateChangeOrigin.description.getter();
    v25 = sub_1000153E0(v23, v24, &v95);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2081;
    v26 = [a1 title];
    v27 = a1;
    if (v26)
    {
      v28 = v26;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v93 = v29;
    v94 = v31;
    sub_100168088(&qword_100574230);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000153E0(v33, v34, &v95);

    *(v19 + 24) = v35;
    *(v19 + 32) = 2080;
    v36 = [a1 uuid];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v93 = v38;
    v94 = v40;
    v41 = String.init<A>(describing:)();
    v43 = sub_1000153E0(v41, v42, &v95);

    *(v19 + 34) = v43;
    *(v19 + 42) = 2081;
    v93 = [a1 storeTrackId];
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = sub_1000153E0(v44, v45, &v95);

    *(v19 + 44) = v46;
    v47 = v83;
    _os_log_impl(&_mh_execute_header, v83, v89, "Bookmarking episode on timestamp %s (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v19, 0x34u);
    swift_arrayDestroy();

    v11 = v86;
    v89 = *(v85 + 8);
    v89(v15, v86);
    v32 = v87;
    a5 = v88;
  }

  else
  {

    v89 = *(v12 + 8);
    v89(v15, v11);
    v27 = a1;
    v32 = v6;
  }

  v48 = v92;
  if (a3)
  {
    [v27 markAsBookmarked];
  }

  else
  {
    [v27 markAsBookmarkedOnTimestamp:v90];
  }

  v49 = [v27 podcast];
  if (v49)
  {
    v50 = v49;
    sub_1002C76C4(v49, [v27 bookmarksSyncType], 2u, a5);
  }

  if (v91)
  {
    v51 = [v27 uuid];
    if (v51)
    {
      v88 = a5;
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = [v27 managedObjectContext];
      if (v56)
      {
        v57 = v56;
        if (([v27 isDownloaded] & 1) == 0 && objc_msgSend(v27, "isEntitled"))
        {
          static Logger.podcastsStatesCoordination.getter();
          v58 = static os_log_type_t.default.getter();
          v59 = Logger.logObject.getter();
          if (os_log_type_enabled(v59, v58))
          {
            LODWORD(v90) = v58;
            v91 = v59;
            v86 = v11;
            v87 = v32;
            v60 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v95 = v85;
            *v60 = 136381187;
            v61 = [v27 title];
            v62 = v27;
            if (v61)
            {
              v63 = v61;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;
            }

            else
            {
              v64 = 0;
              v66 = 0;
            }

            v93 = v64;
            v94 = v66;
            sub_100168088(&qword_100574230);
            v67 = String.init<A>(describing:)();
            v69 = sub_1000153E0(v67, v68, &v95);

            *(v60 + 4) = v69;
            *(v60 + 12) = 2080;
            v70 = [v62 uuid];
            if (v70)
            {
              v71 = v70;
              v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v74 = v73;
            }

            else
            {
              v72 = 0;
              v74 = 0;
            }

            v93 = v72;
            v94 = v74;
            v75 = String.init<A>(describing:)();
            v77 = sub_1000153E0(v75, v76, &v95);

            *(v60 + 14) = v77;
            *(v60 + 22) = 2081;
            v93 = [v62 storeTrackId];
            v78 = dispatch thunk of CustomStringConvertible.description.getter();
            v80 = sub_1000153E0(v78, v79, &v95);

            *(v60 + 24) = v80;
            v81 = v91;
            _os_log_impl(&_mh_execute_header, v91, LOBYTE(v90), "Automatically downloading recently saved episode %{private}s uuid: %s, adamID: %{private}s.", v60, 0x20u);
            swift_arrayDestroy();

            v89(v92, v86);
          }

          else
          {

            v89(v48, v11);
          }

          PodcastsStateCoordinator.downloadEpisode(withUUID:isFromSaving:from:in:)(v53, v55, 1, v88, v57);
        }
      }

      else
      {
      }
    }
  }
}

void PodcastsStateCoordinator.unsafeRemoveEpisodeFromBookmarks(episode:from:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v38 = v5;
    v39 = v2;
    v11 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v11 = 136315907;
    v40 = a2;
    v12 = PodcastsStateChangeOrigin.description.getter();
    v14 = sub_1000153E0(v12, v13, &v43);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2081;
    v15 = [a1 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v41 = v17;
    v42 = v19;
    sub_100168088(&qword_100574230);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v43);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    v23 = [a1 uuid];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v41 = v25;
    v42 = v27;
    v28 = String.init<A>(describing:)();
    v30 = sub_1000153E0(v28, v29, &v43);

    *(v11 + 24) = v30;
    *(v11 + 32) = 2081;
    v41 = [a1 storeTrackId];
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = sub_1000153E0(v31, v32, &v43);

    *(v11 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v10, v9, "Removing Bookmark for episode (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v11, 0x2Au);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v38);
    a2 = v40;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  [a1 markAsUnbookmarked];
  v34 = [a1 podcast];
  if (v34)
  {
    v35 = v34;
    sub_1002C76C4(v34, [a1 bookmarksSyncType], 3u, a2);
  }
}

BOOL sub_1002F4AEC()
{
  v0 = *(EpisodeStateChanges.updated.getter() + 16);

  return v0 != 0;
}

uint64_t sub_1002F4B20@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeStateChanges.updated.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002F4B4C()
{
  sub_100168088(&qword_10057E220);
  sub_100009FAC(&qword_10057E308, &qword_10057E220);
  return Sequence.publisher.getter();
}

void sub_1002F4BE0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002F4C44(a1);
  }
}

uint64_t sub_1002F4C44(uint64_t a1)
{
  v2 = sub_100168088(&unk_100575CE0);
  __chkstk_darwin(v2 - 8);
  v80 = &v69 - v3;
  v4 = type metadata accessor for PodcastStateModel();
  v86 = *(v4 - 8);
  v87 = v4;
  v5 = __chkstk_darwin(v4);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v6;
  __chkstk_darwin(v5);
  v83 = &v69 - v7;
  v8 = type metadata accessor for EpisodeStateModel();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v82 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v84 = v17;
  v85 = v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  static Logger.podcastsStatesCoordination.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = *(v9 + 16);
  v25(v16, a1, v8);
  v81 = a1;
  v73 = v25;
  v74 = v9 + 16;
  v25(v14, a1, v8);
  v26 = Logger.logObject.getter();
  v72 = v24;
  v27 = os_log_type_enabled(v26, v24);
  v79 = v9;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    aBlock[0] = v70;
    *v28 = 136380931;
    EpisodeStateModel.ids.getter();
    sub_1002FA480();
    v29 = Set.description.getter();
    v71 = v21;
    v30 = v29;
    v69 = v26;
    v32 = v31;

    v33 = *(v9 + 8);
    v33(v16, v8);
    v34 = v30;
    v35 = v84;
    v21 = v71;
    v36 = sub_1000153E0(v34, v32, aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 1024;
    LODWORD(v36) = EpisodeStateModel.isDownloaded.getter() & 1;
    v75 = v33;
    v33(v14, v8);
    *(v28 + 14) = v36;
    v37 = v69;
    _os_log_impl(&_mh_execute_header, v69, v72, "Update on download state of episode with IDs: %{private}s; isDownloaded: %{BOOL}d.", v28, 0x12u);
    sub_100004590(v70);

    v38 = *(v85 + 8);
    v38(v23, v35);
  }

  else
  {
    v39 = *(v9 + 8);
    v39(v14, v8);

    v75 = v39;
    v39(v16, v8);
    v38 = *(v85 + 8);
    v38(v23, v84);
  }

  v40 = v81;
  v41 = (EpisodeStateModel.isDownloaded.getter() & 1) == 0;
  v42 = v80;
  EpisodeStateModel.podcastStateModel.getter();
  v43 = (*(v86 + 48))(v42, 1, v87);
  v44 = v82;
  if (v43 == 1)
  {
    sub_1002FA418(v42);
    static Logger.podcastsStatesCoordination.getter();
    v73(v44, v40, v8);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v87 = v8;
      aBlock[0] = v48;
      *v47 = 136315395;
      v49 = sub_1002C99B4(v41, 4u);
      v51 = sub_1000153E0(v49, v50, aBlock);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2081;
      EpisodeStateModel.ids.getter();
      sub_1002FA480();
      v52 = Set.description.getter();
      v54 = v53;

      v75(v44, v87);
      v55 = sub_1000153E0(v52, v54, aBlock);

      *(v47 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "We can't process event %s because episode has no Podcast associated to it. Episode IDs: %{private}s.", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v75(v44, v8);
    }

    return (v38)(v21, v84);
  }

  else
  {
    v56 = v86;
    v84 = *(v86 + 32);
    v85 = v41;
    v57 = v83;
    v58 = v87;
    v84(v83, v42, v87);
    v82 = [*(v77 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider) mainOrPrivateContext];
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = v78;
    (*(v56 + 16))(v78, v57, v58);
    v61 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v62 = (v76 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v59;
    v84(v63 + v61, v60, v58);
    v64 = v82;
    *(v63 + v62) = v82;
    v65 = v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v65 = v85;
    *(v65 + 8) = 4;
    *(v63 + ((v62 + 31) & 0xFFFFFFFFFFFFFFF8)) = 3;
    aBlock[4] = sub_1002FA4D4;
    aBlock[5] = v63;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EC708;
    v66 = _Block_copy(aBlock);
    v67 = v64;

    [v67 performBlockAndWaitWithSave:v66];
    _Block_release(v66);

    return (*(v56 + 8))(v83, v58);
  }
}

void sub_1002F54E8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 episodeForUuid:v13];

  if (v14)
  {
    v15 = [v14 podcast];
    if (v15)
    {
      v21 = v15;
      sub_1002C76C4(v15, 0, 4u, a5);

      v16 = v21;

      return;
    }
  }

  static Logger.podcastsStatesCoordination.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(a2, a3, &v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Can't transition podcast to correct state because either the episode for %s was not found, or it has no associated podcast.", v19, 0xCu);
    sub_100004590(v20);
  }

  (*(v10 + 8))(v12, v9);
}

unint64_t sub_1002F574C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v75 = a2;
  v76 = a3;
  v77 = a1;
  v73 = a4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Transitioning podcasts to download state", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  result = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)();
  if (v4)
  {
    return result;
  }

  isUniquelyReferenced_nonNull_native = result;
  v72 = 0;
  if (result >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v78 = isUniquelyReferenced_nonNull_native;
    v80 = i;
    if (i)
    {
      v15 = 0;
      v79 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v74 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v16 = &_swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v79)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v74 + 16))
          {
            goto LABEL_77;
          }

          v17 = *(isUniquelyReferenced_nonNull_native + 8 * v15 + 32);
        }

        v18 = v17;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_72;
        }

        v20 = [v17 podcast];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 objectID];
          if ((v16 & 0xC000000000000001) != 0)
          {
            if (v16 >= 0)
            {
              v16 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v23 = v21;
            v24 = __CocoaDictionary.count.getter();
            if (__OFADD__(v24, 1))
            {
              goto LABEL_76;
            }

            v16 = sub_10025E6AC(v16, v24 + 1);
          }

          else
          {
            v25 = v21;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v82 = v16;
          v27 = sub_100202334(v22);
          v28 = *(v16 + 16);
          v29 = (v26 & 1) == 0;
          v30 = v28 + v29;
          if (__OFADD__(v28, v29))
          {
            goto LABEL_75;
          }

          v31 = v26;
          if (*(v16 + 24) >= v30)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100260990();
            }
          }

          else
          {
            sub_10025D5B4(v30, isUniquelyReferenced_nonNull_native);
            v32 = sub_100202334(v22);
            if ((v31 & 1) != (v33 & 1))
            {
              sub_100009F1C(0, &unk_100573F30);
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v27 = v32;
          }

          isUniquelyReferenced_nonNull_native = v78;
          v16 = v82;
          if (v31)
          {
            v34 = v82[7];
            v35 = v82;
            v36 = *(v34 + 8 * v27);
            *(v34 + 8 * v27) = v21;

            v16 = v35;
          }

          else
          {
            v82[(v27 >> 6) + 8] |= 1 << v27;
            *(*(v16 + 48) + 8 * v27) = v22;
            *(*(v16 + 56) + 8 * v27) = v21;

            v37 = *(v16 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_78;
            }

            *(v16 + 16) = v39;
          }
        }

        else
        {
        }

        ++v15;
        if (v19 == v80)
        {
          goto LABEL_33;
        }
      }
    }

    v16 = &_swiftEmptyDictionarySingleton;
LABEL_33:
    if ((v16 & 0xC000000000000001) != 0)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v44 = -1 << *(v16 + 32);
      v41 = ~v44;
      v40 = v16 + 64;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v42 = v46 & *(v16 + 64);
      v43 = v16;
    }

    v74 = v16;

    v47 = 0;
    v79 = v41;
    isUniquelyReferenced_nonNull_native = (v41 + 64) >> 6;
    if ((v43 & 0x8000000000000000) != 0)
    {
LABEL_46:
      if (!__CocoaDictionary.Iterator.next()())
      {
        v51 = v77;
        goto LABEL_50;
      }

      v55 = v54;
      swift_unknownObjectRelease();
      v81 = v55;
      sub_100009F1C(0, &qword_100573AC0);
      swift_dynamicCast();
      v53 = v82;
      v50 = v47;
      v52 = v42;
      v51 = v77;
      if (!v82)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }

    while (1)
    {
      v48 = v47;
      v49 = v42;
      v50 = v47;
      v51 = v77;
      if (!v42)
      {
        while (1)
        {
          v50 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v50 >= isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_50;
          }

          v49 = *(v40 + 8 * v50);
          ++v48;
          if (v49)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

LABEL_44:
      v52 = (v49 - 1) & v49;
      v53 = *(*(v43 + 56) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
      if (!v53)
      {
        break;
      }

LABEL_48:
      sub_1002C76C4(v53, 0, 4u, v76);

      v47 = v50;
      v42 = v52;
      if ((v43 & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_50:
    sub_1000319D8();
    [v51 saveInCurrentBlock];
    isUniquelyReferenced_nonNull_native = v80;
    if (!v80)
    {
      break;
    }

    v56 = 0;
    v57 = v78;
    v58 = v78 & 0xC000000000000001;
    v59 = v78 & 0xFFFFFFFFFFFFFF8;
    v60 = _swiftEmptyArrayStorage;
LABEL_52:
    v61 = v56;
    while (1)
    {
      if (v58)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= *(v59 + 16))
        {
          goto LABEL_74;
        }

        v62 = *(v57 + 8 * v61 + 32);
      }

      v63 = v62;
      v56 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v64 = [v62 uuid];
      if (v64)
      {
        v65 = v64;
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_100243134(0, *(v60 + 2) + 1, 1, v60);
        }

        v70 = *(v60 + 2);
        v69 = *(v60 + 3);
        if (v70 >= v69 >> 1)
        {
          v60 = sub_100243134((v69 > 1), v70 + 1, 1, v60);
        }

        *(v60 + 2) = v70 + 1;
        v71 = &v60[16 * v70];
        *(v71 + 4) = v66;
        *(v71 + 5) = v68;
        isUniquelyReferenced_nonNull_native = v80;
        v57 = v78;
        if (v56 != v80)
        {
          goto LABEL_52;
        }

        goto LABEL_68;
      }

      ++v61;
      if (v56 == isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_68;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_68:

  *v73 = v60;
  return result;
}

void sub_1002F5E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = String._bridgeToObjectiveC()();
  v11 = [a1 episodeForUuid:v7];

  if (v11)
  {
    v8 = [v11 podcast];
    if (v8)
    {
      v9 = v8;
      sub_1002C76C4(v8, 1, 4u, a5);

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }
  }
}

uint64_t sub_1002F5F00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10016AAC8(_swiftEmptyArrayStorage);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_9:
    v9 &= v9 - 1;

    v13 = String._bridgeToObjectiveC()();

    v14 = [a2 episodeForUuid:v13];

    if (v14)
    {
      v15 = [v14 podcast];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 uuid];
        if (v17)
        {
          v45 = v17;
          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v48 = v18;

          v46 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v6;
          v20 = sub_10000F9A8(v47, v48);
          v21 = *(v6 + 16);
          v22 = (v19 & 1) == 0;
          v23 = v21 + v22;
          if (__OFADD__(v21, v22))
          {
            goto LABEL_40;
          }

          if (*(v6 + 24) >= v23)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v19 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v30 = v19;
              sub_100260AF4();
              if ((v30 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

LABEL_21:

            v6 = v50;
            v27 = v50[7];
            v28 = v20;
            v29 = *(v27 + 8 * v20);
            *(v27 + 8 * v28) = v46;
          }

          else
          {
            v24 = v19;
            sub_10025D828(v23, isUniquelyReferenced_nonNull_native);
            v25 = sub_10000F9A8(v47, v48);
            if ((v24 & 1) != (v26 & 1))
            {
              goto LABEL_42;
            }

            v20 = v25;
            if (v24)
            {
              goto LABEL_21;
            }

LABEL_23:
            v6 = v50;
            v50[(v20 >> 6) + 8] |= 1 << v20;
            v31 = (v50[6] + 16 * v20);
            *v31 = v47;
            v31[1] = v48;
            *(v50[7] + 8 * v20) = v46;

            v32 = v50[2];
            v33 = __OFADD__(v32, 1);
            v34 = v32 + 1;
            if (v33)
            {
              goto LABEL_41;
            }

            v50[2] = v34;
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

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v35 = 1 << *(v6 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v6 + 64);
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  while (v37)
  {
    v40 = v39;
LABEL_33:
    v41 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v42 = *(*(v6 + 56) + ((v40 << 9) | (8 * v41)));
    sub_1002C76C4(v42, 1, 4u, a4);
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
    }

    v37 = *(v6 + 64 + 8 * v40);
    ++v39;
    if (v37)
    {
      v39 = v40;
      goto LABEL_33;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void PodcastsStateCoordinator.removeDownload(forEpisodeWithUUID:from:shouldAllowAutomaticRedownloads:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v35 = a5;
  v36 = a6;
  LODWORD(v8) = a4;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v34 = v8;
    v8 = v17;
    v18 = swift_slowAlloc();
    v33 = v7;
    aBlock[0] = v18;
    *v8 = 136315394;
    v19 = PodcastsStateChangeOrigin.description.getter();
    v21 = sub_1000153E0(v19, v20, aBlock);
    v32 = v11;
    v22 = a1;
    v23 = a2;
    v24 = v21;

    *(v8 + 4) = v24;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000153E0(v22, v23, aBlock);
    _os_log_impl(&_mh_execute_header, v16, v15, "Removing download (origin: %s) for episode with UUID: %s.", v8, 0x16u);
    swift_arrayDestroy();
    v7 = v33;

    LOBYTE(v8) = v34;

    (*(v12 + 8))(v14, v32);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v25 = *(v7 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway);
  v26 = String._bridgeToObjectiveC()();
  v27 = swift_allocObject();
  v29 = v35;
  v28 = v36;
  *(v27 + 16) = v35;
  *(v27 + 24) = v28;
  aBlock[4] = sub_1002FA5A4;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F6638;
  aBlock[3] = &unk_1004EC578;
  v30 = _Block_copy(aBlock);
  sub_100013CB4(v29);

  [v25 removeDownload:v26 shouldAllowAutomaticRedownloads:v8 & 1 completion:v30];
  _Block_release(v30);
}

void sub_1002F65BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = [objc_opt_self() defaultCenter];
  [v6 postNotificationName:PFMediaDownloadWasDeletedNotification object:0];

  if (a5)
  {
    a5();
  }
}

uint64_t sub_1002F6638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a3 = v9;
  }

  else
  {
    v8 = 0;
  }

  v4(v5, v7, v8, a3);
}

uint64_t PodcastsStateCoordinator.insertNewImplicitFollowIfNeeded(for:from:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EpisodePlayerItem();
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastPlayerItem();
  __chkstk_darwin();
  v10 = type metadata accessor for PlayerItem();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_10021C6D8(v14);
  sub_10021C844(v14, v9);
  PlayerItem.init(podcast:episode:)();
  PodcastsStateCoordinator.insertNewImplicitFollowIfNeeded(for:from:completion:)(v13, a2, a3, a4);
  return (*(v11 + 8))(v13, v10);
}

void sub_1002F6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9 = String._bridgeToObjectiveC()();
    if (a5)
    {
LABEL_3:
      v10 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v10;
  (*(a6 + 16))(a6, a1, v9);
}

void sub_1002F6B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a2;
  v78 = a3;
  v79 = a4;
  v70 = type metadata accessor for EpisodePlayerItem();
  v68 = *(v70 - 8);
  __chkstk_darwin();
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayerItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v75 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  __chkstk_darwin();
  v13 = &v59 - v12;
  v74 = v14;
  __chkstk_darwin();
  v16 = &v59 - v15;
  v69 = type metadata accessor for Logger();
  v72 = *(v69 - 8);
  __chkstk_darwin();
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v19 = static os_log_type_t.default.getter();
  v80 = v8;
  v21 = *(v8 + 16);
  v20 = v8 + 16;
  v21(v16, a1, v7);
  v21(v13, a1, v7);
  v73 = v21;
  v21(v11, a1, v7);
  v71 = v18;
  v22 = Logger.logObject.getter();
  v67 = v19;
  if (os_log_type_enabled(v22, v19))
  {
    v23 = swift_slowAlloc();
    v66 = a1;
    v24 = v23;
    v65 = swift_slowAlloc();
    v81 = v65;
    *v24 = 136381187;
    PlayerItem.episode.getter();
    v25 = EpisodePlayerItem.title.getter();
    v27 = v26;
    v63 = v11;
    isa = v68[1].isa;
    v64 = v20;
    (isa)(v6, v70);
    aBlock = v25;
    v83 = v27;
    v62 = sub_100168088(&qword_100574230);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v68 = v22;
    v31 = *(v80 + 8);
    v31(v16, v7);
    v32 = v31;
    v60 = v31;
    v33 = sub_1000153E0(v28, v30, &v81);

    *(v24 + 4) = v33;
    *(v24 + 12) = 2049;
    PlayerItem.episode.getter();
    v34 = EpisodePlayerItem.adamID.getter();
    v35 = v70;
    v36 = isa;
    (isa)(v6, v70);
    v32(v13, v7);
    *(v24 + 14) = v34;
    *(v24 + 22) = 2081;
    v37 = v63;
    PlayerItem.episode.getter();
    v38 = EpisodePlayerItem.guid.getter();
    v40 = v39;
    v36(v6, v35);
    aBlock = v38;
    v83 = v40;
    v41 = String.init<A>(describing:)();
    v43 = v42;
    v60(v37, v7);
    v44 = sub_1000153E0(v41, v43, &v81);

    *(v24 + 24) = v44;
    v45 = v68;
    _os_log_impl(&_mh_execute_header, v68, v67, "Inserting new Implicit Follow if needed for currently playing episode: %{private}s, adamID: %{private}lld, guid: %{private}s.", v24, 0x20u);
    swift_arrayDestroy();

    a1 = v66;
  }

  else
  {
    v46 = *(v80 + 8);
    v46(v13, v7);

    v46(v11, v7);
    v46(v16, v7);
  }

  (*(v72 + 8))(v71, v69);
  v47 = [*(v76 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider) privateQueueContext];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = v75;
  v73(v75, a1, v7);
  v50 = v80;
  v51 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v52 = (v74 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  *(v53 + 24) = v47;
  (*(v50 + 32))(v53 + v51, v49, v7);
  v54 = v78;
  *(v53 + v52) = v77;
  v55 = (v53 + ((v52 + 15) & 0xFFFFFFFFFFFFFFF8));
  v56 = v79;
  *v55 = v54;
  v55[1] = v56;
  v86 = sub_1002FA378;
  v87 = v53;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_10000F038;
  v85 = &unk_1004EC690;
  v57 = _Block_copy(&aBlock);
  v58 = v47;

  [v58 performBlock:v57];
  _Block_release(v57);
}

void PodcastsStateCoordinator.unsafeEpisodePlayedBeyondThresholdForFirstTime(_:from:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  if (!a1)
  {
    static Logger.podcastsStatesCoordination.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v56 = v16;
      *v15 = 136315138;
      v17 = PodcastsStateChangeOrigin.description.getter();
      v19 = sub_1000153E0(v17, v18, &v56);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "We can't transition podcast for nil MTEpisode; Origin: %s.", v15, 0xCu);
      sub_100004590(v16);
    }

    v20 = *(v5 + 8);
    v21 = v7;
    goto LABEL_13;
  }

  v10 = a1;
  v11 = [v10 podcast];
  if (v11)
  {
    v55 = v11;
    sub_1002C76C4(v11, 5, 4u, a2);

    v12 = v55;

    return;
  }

  static Logger.podcastsStatesCoordination.getter();
  v22 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v23, v24))
  {

    v20 = *(v5 + 8);
    v21 = v9;
LABEL_13:
    v20(v21, v4);
    return;
  }

  v55 = v4;
  v25 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v58 = v54;
  *v25 = 136381443;
  v26 = [v22 title];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v56 = v28;
  v57 = v30;
  sub_100168088(&qword_100574230);
  v31 = String.init<A>(describing:)();
  v33 = sub_1000153E0(v31, v32, &v58);

  *(v25 + 4) = v33;
  *(v25 + 12) = 2080;
  v34 = [v22 uuid];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v56 = v36;
  v57 = v38;
  v39 = String.init<A>(describing:)();
  v41 = sub_1000153E0(v39, v40, &v58);

  *(v25 + 14) = v41;
  *(v25 + 22) = 2081;
  v56 = [v22 storeTrackId];
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = sub_1000153E0(v42, v43, &v58);

  *(v25 + 24) = v44;
  *(v25 + 32) = 2081;
  v45 = [v22 guid];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0;
  }

  v56 = v47;
  v57 = v49;
  v50 = String.init<A>(describing:)();
  v52 = sub_1000153E0(v50, v51, &v58);

  *(v25 + 34) = v52;
  _os_log_impl(&_mh_execute_header, v23, v24, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v25, 0x2Au);
  swift_arrayDestroy();

  (*(v5 + 8))(v9, v55);
}

char *sub_1002F7818(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v107 = a6;
  v108 = a5;
  v106 = a4;
  v105 = type metadata accessor for Logger();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PodcastPlayerItem();
  v100 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EpisodePlayerItem();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v95 - v16;
  __chkstk_darwin();
  v18 = &v95 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v109 = result;
  if (result)
  {
    PlayerItem.episode.getter();
    v20 = EpisodePlayerItem.adamID.getter();
    v22 = *(v13 + 8);
    v21 = v13 + 8;
    v101 = v22;
    v102 = v12;
    v22(v18, v12);
    v23 = [a2 episodeForStoreTrackID:v20];
    if (v23)
    {
      v24 = v23;
      v100 = a2;
      static Logger.podcastsStatesCoordination.getter();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v97 = v27;
        v98 = v26;
        v28 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v112 = v96;
        *v28 = 136381443;
        v29 = [v25 title];
        if (v29)
        {
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0;
        }

        v110 = v31;
        v111 = v33;
        sub_100168088(&qword_100574230);
        v56 = String.init<A>(describing:)();
        v58 = sub_1000153E0(v56, v57, &v112);

        *(v28 + 4) = v58;
        *(v28 + 12) = 2080;
        v59 = [v25 uuid];
        v99 = v21;
        if (v59)
        {
          v60 = v59;
          v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
        }

        else
        {
          v61 = 0;
          v63 = 0;
        }

        v110 = v61;
        v111 = v63;
        v64 = String.init<A>(describing:)();
        v66 = sub_1000153E0(v64, v65, &v112);

        *(v28 + 14) = v66;
        *(v28 + 22) = 2081;
        v110 = [v25 storeTrackId];
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = sub_1000153E0(v67, v68, &v112);

        *(v28 + 24) = v69;
        *(v28 + 32) = 2081;
        v70 = [v25 guid];
        if (v70)
        {
          v71 = v70;
          v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v73;
        }

        else
        {
          v72 = 0;
          v74 = 0;
        }

        v50 = v102;
        v110 = v72;
        v111 = v74;
        v75 = String.init<A>(describing:)();
        v77 = sub_1000153E0(v75, v76, &v112);

        *(v28 + 34) = v77;
        v78 = v98;
        _os_log_impl(&_mh_execute_header, v98, v97, "Abort new Implicit Follow insertion: Episode already in the DB: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v28, 0x2Au);
        swift_arrayDestroy();

        (*(v103 + 8))(v8, v105);
        v49 = v109;
      }

      else
      {

        (*(v103 + 8))(v8, v105);
        v49 = v109;
        v50 = v102;
      }

      v79 = [v25 podcast];
      v80 = v100;
      if (v79)
      {
        v81 = v79;

        sub_1002C76C4(v81, 3, 4u, v106);
      }

      [v80 saveInCurrentBlock];
      v82 = v104;
      PlayerItem.episode.getter();
      v83 = EpisodePlayerItem.adamID.getter();
      v101(v82, v50);
      v84 = [v25 uuid];
      if (v84)
      {
        v85 = v84;
        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v87;
      }

      else
      {
        v86 = 0;
        v88 = 0;
      }

      v89 = [v25 podcast];
      if (v89 && (v90 = v89, v91 = [v89 uuid], v90, v91))
      {
        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;
      }

      else
      {
        v92 = 0;
        v94 = 0;
      }

      v108(v83, v86, v88, v92, v94);
    }

    else
    {
      v99 = v21;
      PlayerItem.podcast.getter();
      v34 = PodcastPlayerItem.adamID.getter();
      v35 = v100[1];
      v35(v11, v9);
      v36 = [a2 podcastForStoreId:v34];
      if (!v36)
      {
        v37 = *&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 24];
        v105 = *&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 32];
        v104 = sub_1000044A0(&v109[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore], v37);
        PlayerItem.podcast.getter();
        v36 = dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)();
        v35(v11, v9);
      }

      v38 = v109;

      v25 = v36;
      sub_1002C76C4(v25, 3, 4u, v106);

      sub_1000044A0(&v38[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore], *&v38[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 24]);
      PlayerItem.episode.getter();
      v39 = dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertEpisode(in:for:asPartOf:)();
      v40 = v18;
      v42 = v101;
      v41 = v102;
      v101(v40, v102);
      [a2 saveInCurrentBlock];
      PlayerItem.episode.getter();
      v43 = EpisodePlayerItem.adamID.getter();
      v42(v15, v41);
      v44 = [v39 uuid];
      if (v44)
      {
        v45 = v44;
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v51 = [v25 uuid];
      if (v51)
      {
        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v108(v43, v46, v48, v53, v55);

      v49 = v39;
    }
  }

  return result;
}

uint64_t PodcastsStateCoordinator.unsafeDidBumpLastDatePlayed(for:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = type metadata accessor for Podcasts();
  v64[3] = v14;
  v64[4] = sub_1000170B0(&qword_1005742C0, &type metadata accessor for Podcasts);
  v15 = sub_10000E680(v64);
  (*(*(v14 - 8) + 104))(v15, enum case for Podcasts.simplifiedSyncDirtyHandling(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100004590(v64);
  if (v14)
  {
    v61 = v7;
    v16 = v4;
    v17 = v8;
    static Logger.podcastsStatesCoordination.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = a1;
    v20 = Logger.logObject.getter();
    v62 = v18;
    if (os_log_type_enabled(v20, v18))
    {
      v58 = v20;
      v59 = v5;
      v60 = v2;
      v21 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v64[0] = v56;
      *v21 = 136381955;
      v22 = [v19 title];
      v57 = v17;
      v55 = v16;
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
      }

      else
      {
        v26 = 0xEA00000000003E65;
        v24 = 0x6C746974206F6E3CLL;
      }

      v31 = 0x3E7974706D653CLL;
      v32 = sub_1000153E0(v24, v26, v64);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;
      v33 = [v19 uuid];
      v34 = v61;
      if (v33)
      {
        v35 = v33;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v37 = 0xE700000000000000;
      }

      v38 = sub_1000153E0(v31, v37, v64);

      *(v21 + 14) = v38;
      *(v21 + 22) = 2080;
      v63 = [v19 managedObjectContext];
      sub_100168088(&qword_1005737C8);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000153E0(v39, v40, v64);

      *(v21 + 24) = v41;
      *(v21 + 32) = 2049;
      v42 = [v19 storeCollectionId];

      *(v21 + 34) = v42;
      *(v21 + 42) = 2081;
      v43 = [v19 feedURL];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v47 = 0xE700000000000000;
        v45 = 0x3E7974706D653CLL;
      }

      v48 = sub_1000153E0(v45, v47, v64);

      *(v21 + 44) = v48;
      *(v21 + 52) = 2081;
      [v19 lastDatePlayed];
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_1000170B0(&unk_10057E290, &type metadata accessor for Date);
      v49 = v55;
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v59 + 8))(v34, v49);
      v53 = sub_1000153E0(v50, v52, v64);

      *(v21 + 54) = v53;
      v54 = v58;
      _os_log_impl(&_mh_execute_header, v58, v62, "Change detected in lastDatePlayed of podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s. New lastDatePlayed = %{private}s", v21, 0x3Eu);
      swift_arrayDestroy();

      (*(v9 + 8))(v13, v57);
    }

    else
    {

      (*(v9 + 8))(v13, v17);
    }

    return sub_1002C76C4(v19, 9, 4u, 4);
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
    }

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1002F88D0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1002F8964(void *a1, uint64_t a2)
{
  v74 = a1;
  v3 = type metadata accessor for RemoteNonFollowedShow();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v67 - v7;
  __chkstk_darwin();
  v10 = &v67 - v9;
  v11 = type metadata accessor for Logger();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin();
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = *(v4 + 16);
  v15(v10, a2, v3);
  v15(v8, a2, v3);
  v77 = a2;
  v15(v6, a2, v3);
  v16 = v74;
  v17 = Logger.logObject.getter();
  LODWORD(v74) = v14;
  if (os_log_type_enabled(v17, v14))
  {
    v70 = v10;
    v71 = v17;
    v72 = v4;
    v73 = v3;
    v18 = v8;
    v19 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78 = v69;
    *v19 = 136382467;
    v20 = [v16 title];
    v68 = v13;
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xEA00000000003E65;
      v22 = 0x6C746974206F6E3CLL;
    }

    v27 = v72;
    v28 = sub_1000153E0(v22, v24, &v78);

    *(v19 + 4) = v28;
    *(v19 + 12) = 2080;
    v29 = [v16 uuid];
    v30 = v6;
    if (v29)
    {
      v31 = v29;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v34 = 0xE90000000000003ELL;
      v32 = 0x64697575206F6E3CLL;
    }

    v35 = v18;
    v36 = sub_1000153E0(v32, v34, &v78);

    *(v19 + 14) = v36;
    *(v19 + 22) = 2049;
    v37 = [v16 storeCollectionId];

    *(v19 + 24) = v37;
    *(v19 + 32) = 2081;
    v38 = [v16 feedURL];
    v39 = v73;
    if (v38)
    {
      v40 = v38;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xE700000000000000;
      v41 = 0x3E7974706D653CLL;
    }

    v44 = sub_1000153E0(v41, v43, &v78);

    *(v19 + 34) = v44;
    *(v19 + 42) = 2049;
    [v16 lastDatePlayed];
    *(v19 + 44) = v45;
    *(v19 + 52) = 2049;
    v46 = v70;
    v47 = RemoteNonFollowedShow.storeCollectionId.getter();
    v48 = *(v27 + 8);
    v48(v46, v39);
    *(v19 + 54) = v47;
    *(v19 + 62) = 2081;
    v49 = RemoteNonFollowedShow.feedURL.getter();
    v51 = v50;
    v48(v35, v39);
    v52 = sub_1000153E0(v49, v51, &v78);

    *(v19 + 64) = v52;
    *(v19 + 72) = 2049;
    v53 = RemoteNonFollowedShow.lastDatePlayed.getter();
    LOBYTE(v51) = v54;
    v48(v30, v39);
    v55 = *&v53;
    if (v51)
    {
      v55 = 0.0;
    }

    *(v19 + 74) = v55;
    v56 = v71;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v71, v74, "Updating local podcast %{private}s, uuid: %s, adamID: %{private}lld, feedURL: %{private}s, lastDatePlayed: %{private}f; For remote NonFollowedShow with adamID: %{private}lld, feedURL: %{private}s, lastDatePlayed: %{private}f.", v19, 0x52u);
    swift_arrayDestroy();

    (*(v75 + 8))(v68, v76);
  }

  else
  {
    v25 = *(v4 + 8);
    v25(v10, v3);

    v25(v6, v3);
    v25(v8, v3);
    (*(v75 + 8))(v13, v76);
    v26 = v16;
  }

  v78 = RemoteNonFollowedShow.unknownSyncProperties.getter();
  sub_100168088(&qword_10057E2E0);
  sub_100009FAC(&qword_10057E2E8, &qword_10057E2E0);
  v57 = Collection.isNotEmpty.getter();

  if (v57)
  {
    v58 = RemoteSyncTypeWithUnknownSyncProperties.encodeUnknownSyncProperties()();
    if (v59 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v61 = v58;
      v62 = v59;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001F6D60(v61, v62);
    }

    [v26 setImplicitFollowsUnknownSyncProperties:isa];
  }

  else
  {
    [v26 setImplicitFollowsUnknownSyncProperties:0];
  }

  result = RemoteNonFollowedShow.lastDatePlayed.getter();
  if ((v64 & 1) == 0)
  {
    v65 = *&result;
    result = [v26 lastDatePlayed];
    if (v66 < v65)
    {
      return [v26 setLastDatePlayed:v65];
    }
  }

  return result;
}

void sub_1002F9030()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[6];
  v4 = String._bridgeToObjectiveC()();
  [v1 unsafeEnableSubscriptionOnPodcastUUID:v4 from:v2 context:v3];
}

uint64_t sub_1002F90C4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v56 = a2;
  v57 = a3;
  v60 = type metadata accessor for EpisodePlayerItem();
  v62 = *(v60 - 8);
  __chkstk_darwin();
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlayerItem();
  v64 = *(v8 - 8);
  __chkstk_darwin();
  v63 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v52 - v10;
  __chkstk_darwin();
  v13 = v52 - v12;
  v14 = type metadata accessor for Logger();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin();
  v65 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PodcastPlayerItem();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  v61 = a4;
  _Block_copy(a4);
  PlayerItem.podcast.getter();
  LOBYTE(a4) = PodcastPlayerItem.isSubscribeable.getter();
  (*(v17 + 8))(v19, v16);
  if (a4)
  {
    sub_1002F6B1C(a1, v56, sub_1002FA304, v20);
  }

  else
  {
    v57 = v20;
    static Logger.podcastsStatesCoordination.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = *(v64 + 16);
    v22(v13, a1, v8);
    v22(v11, a1, v8);
    v22(v63, a1, v8);
    v23 = Logger.logObject.getter();
    if (os_log_type_enabled(v23, v21))
    {
      v24 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v68 = v55;
      *v24 = 136381187;
      PlayerItem.episode.getter();
      v25 = EpisodePlayerItem.title.getter();
      v54 = v21;
      v27 = v26;
      v56 = a1;
      v53 = v23;
      v52[0] = *(v62 + 8);
      v28 = v60;
      (v52[0])(v7, v60);
      v66 = v25;
      v67 = v27;
      v52[1] = sub_100168088(&qword_100574230);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v64 = *(v64 + 8);
      (v64)(v13, v8);
      v32 = sub_1000153E0(v29, v31, &v68);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2049;
      v33 = v24;
      PlayerItem.episode.getter();
      v34 = EpisodePlayerItem.adamID.getter();
      v35 = v52[0];
      (v52[0])(v7, v28);
      v36 = v11;
      v37 = v28;
      (v64)(v36, v8);
      v38 = v33;
      *(v33 + 14) = v34;
      *(v33 + 22) = 2081;
      v39 = v63;
      PlayerItem.episode.getter();
      v40 = EpisodePlayerItem.guid.getter();
      v42 = v41;
      v35(v7, v37);
      v43 = v62;
      v66 = v40;
      v67 = v42;
      v44 = String.init<A>(describing:)();
      v46 = v45;
      (v64)(v39, v8);
      v47 = sub_1000153E0(v44, v46, &v68);

      *(v38 + 24) = v47;
      v48 = v53;
      _os_log_impl(&_mh_execute_header, v53, v54, "Skip inserting new Implicit Follow for currently playing episode because the show is Not Subscribeable -- i.e. from a news diggest or some other type of 'fake' show: %{private}s, adamID: %{private}lld, guid: %{private}s.", v38, 0x20u);
      swift_arrayDestroy();

      (*(v58 + 8))(v65, v59);
    }

    else
    {
      v49 = *(v64 + 8);
      v49(v11, v8);

      v49(v63, v8);
      v49(v13, v8);
      (*(v58 + 8))(v65, v59);
      v37 = v60;
      v43 = v62;
    }

    PlayerItem.episode.getter();
    v50 = EpisodePlayerItem.adamID.getter();
    (*(v43 + 8))(v7, v37);
    (*(v61 + 2))(v61, v50, 0, 0);
  }
}

void sub_1002F9768(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v127 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v120 - v11;
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v120 - v14;
  if (!a2)
  {
    v16 = [a1 podcast];
    if (v16)
    {
      v17 = v16;
      sub_1002C76C4(v16, 6, 4u, a3);

      a2 = 0;
    }

    else
    {
      v126 = v3;
      static Logger.podcastsStatesCoordination.getter();
      v18 = a1;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v121 = v20;
        v122 = v19;
        v123 = 0;
        v128 = v9;
        v21 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v131 = v120;
        *v21 = 136381443;
        v22 = [v18 title];
        if (v22)
        {
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v124 = a3;
        v129 = v24;
        v130 = v26;
        sub_100168088(&qword_100574230);
        v27 = String.init<A>(describing:)();
        v29 = sub_1000153E0(v27, v28, &v131);

        *(v21 + 4) = v29;
        *(v21 + 12) = 2080;
        v30 = [v18 uuid];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v129 = v32;
        v130 = v34;
        v35 = String.init<A>(describing:)();
        v37 = sub_1000153E0(v35, v36, &v131);

        *(v21 + 14) = v37;
        *(v21 + 22) = 2081;
        v129 = [v18 storeTrackId];
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = sub_1000153E0(v38, v39, &v131);

        *(v21 + 24) = v40;
        *(v21 + 32) = 2081;
        v41 = [v18 guid];
        if (v41)
        {
          v42 = v41;
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0;
        }

        a3 = v124;
        v4 = v126;
        v129 = v43;
        v130 = v45;
        v46 = String.init<A>(describing:)();
        v48 = sub_1000153E0(v46, v47, &v131);

        *(v21 + 34) = v48;
        v49 = v122;
        _os_log_impl(&_mh_execute_header, v122, v121, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v21, 0x2Au);
        swift_arrayDestroy();

        v9 = v128;
        (*(v128 + 8))(v15, v8);
        a2 = v123;
      }

      else
      {

        (*(v9 + 8))(v15, v8);
        v4 = v126;
      }
    }
  }

  static Logger.podcastsStatesCoordination.getter();
  v50 = static os_log_type_t.default.getter();
  v51 = Logger.logObject.getter();
  if (os_log_type_enabled(v51, v50))
  {
    v126 = v4;
    v124 = a3;
    v128 = v9;
    v52 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *v52 = 134219267;
    v123 = a2;
    *(v52 + 4) = a2;
    *(v52 + 12) = 2081;
    v53 = [a1 title];
    v125 = v8;
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v129 = v55;
    v130 = v57;
    sub_100168088(&qword_100574230);
    v59 = String.init<A>(describing:)();
    v61 = sub_1000153E0(v59, v60, &v131);

    *(v52 + 14) = v61;
    *(v52 + 22) = 2080;
    v62 = [a1 uuid];
    if (v62)
    {
      v63 = v62;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    v129 = v64;
    v130 = v66;
    v67 = String.init<A>(describing:)();
    v69 = sub_1000153E0(v67, v68, &v131);

    *(v52 + 24) = v69;
    *(v52 + 32) = 2081;
    v129 = [a1 storeTrackId];
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = sub_1000153E0(v70, v71, &v131);

    *(v52 + 34) = v72;
    *(v52 + 42) = 2081;
    v73 = [a1 guid];
    if (v73)
    {
      v74 = v73;
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v129 = v75;
    v130 = v77;
    v78 = String.init<A>(describing:)();
    v80 = sub_1000153E0(v78, v79, &v131);

    *(v52 + 44) = v80;
    *(v52 + 52) = 2080;
    a3 = v124;
    v81 = PodcastsStateChangeOrigin.description.getter();
    v83 = sub_1000153E0(v81, v82, &v131);

    *(v52 + 54) = v83;
    _os_log_impl(&_mh_execute_header, v51, v50, "Marking as playState = %lld episode: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.; From origin: %s.", v52, 0x3Eu);
    swift_arrayDestroy();

    v9 = v128;
    v58 = *(v128 + 8);
    v8 = v125;
    v58(v12, v125);
    v4 = v126;
    a2 = v123;
  }

  else
  {

    v58 = *(v9 + 8);
    v58(v12, v8);
  }

  [*(v4 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_library) setPlayState:a2 fromContextActions:1 manually:1 forUserActionOnEpisode:a1 saveChanges:1];
  if (a2 == 2)
  {
    v84 = [a1 podcast];
    if (v84)
    {
      v85 = v84;
      sub_1002C76C4(v84, 7, 4u, a3);
    }

    else
    {
      v86 = v127;
      static Logger.podcastsStatesCoordination.getter();
      v87 = a1;
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v128 = v9;
        v125 = v8;
        v90 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *v90 = 136381443;
        v91 = [v87 title];
        if (v91)
        {
          v92 = v91;
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;
        }

        else
        {
          v93 = 0;
          v95 = 0;
        }

        v129 = v93;
        v130 = v95;
        sub_100168088(&qword_100574230);
        v98 = String.init<A>(describing:)();
        v100 = sub_1000153E0(v98, v99, &v131);

        *(v90 + 4) = v100;
        *(v90 + 12) = 2080;
        v101 = [v87 uuid];
        if (v101)
        {
          v102 = v101;
          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;
        }

        else
        {
          v103 = 0;
          v105 = 0;
        }

        v129 = v103;
        v130 = v105;
        v106 = String.init<A>(describing:)();
        v108 = sub_1000153E0(v106, v107, &v131);

        *(v90 + 14) = v108;
        *(v90 + 22) = 2081;
        v129 = [v87 storeTrackId];
        v109 = dispatch thunk of CustomStringConvertible.description.getter();
        v111 = sub_1000153E0(v109, v110, &v131);

        *(v90 + 24) = v111;
        *(v90 + 32) = 2081;
        v112 = [v87 guid];
        if (v112)
        {
          v113 = v112;
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;
        }

        else
        {
          v114 = 0;
          v116 = 0;
        }

        v129 = v114;
        v130 = v116;
        v117 = String.init<A>(describing:)();
        v119 = sub_1000153E0(v117, v118, &v131);

        *(v90 + 34) = v119;
        _os_log_impl(&_mh_execute_header, v88, v89, "We can't transition podcast. MTEpisode without an associated podcast: %{private}s, uuid: %s, adamID: %{private}s, guid: %{private}s.", v90, 0x2Au);
        swift_arrayDestroy();

        v96 = v127;
        v97 = v125;
      }

      else
      {

        v96 = v86;
        v97 = v8;
      }

      v58(v96, v97);
    }
  }
}

uint64_t _s8Podcasts0A16StateCoordinatorC014currentPodcastB11Description4fromS2S_tF_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 mainOrPrivateContext];

  sub_100168088(&qword_10057E2D8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (v3 > 2u)
  {
    return 0x65726F7473;
  }

  if (!v3)
  {
    return 0x6465776F6C6C6F66;
  }

  if (v3 == 1)
  {
    return 0x7972617262696CLL;
  }

  return 0xD000000000000012;
}

uint64_t sub_1002FA30C()
{

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_1002FA378()
{
  v1 = *(type metadata accessor for PlayerItem() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1002F7818(v4, v5, v0 + v2, v6, v8, v9);
}

uint64_t sub_1002FA418(uint64_t a1)
{
  v2 = sub_100168088(&unk_100575CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002FA480()
{
  result = qword_10057E300;
  if (!qword_10057E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E300);
  }

  return result;
}

void sub_1002FA4D4()
{
  v1 = *(type metadata accessor for PodcastStateModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v0 + v4);
  v10 = *(v7 + 8);

  sub_1002C82C8(v6, v0 + v2, v5, v8, v10, v9);
}

void *sub_1002FA5D0(objc_class *a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100574040);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v142 = (&v109 - v9);
  v10 = __chkstk_darwin(v8);
  v117 = &v109 - v11;
  __chkstk_darwin(v10);
  v143 = &v109 - v12;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 playState];
  result = [v2 duration];
  *&v19 = v19;
  v20 = *&v19 * 1000.0;
  if (COERCE_INT(fabs(*&v19 * 1000.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_87;
  }

  if (v20 <= -9.2234e18)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v20 >= 9.2234e18)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v21 = [v2 bestSummary];
  v141 = v13;
  v133 = a1;
  if (v21 || (v21 = [v2 itemDescriptionWithoutHTML]) != 0)
  {
    v22 = v21;
    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v23;
  }

  else
  {
    v116 = 0;
    v131 = 0;
  }

  v24 = objc_opt_self();
  [v24 legacyPlayCountForPlayState:v17 playCount:{objc_msgSend(v2, "playCount")}];
  [v24 hasBeenPlayedForPlayState:v17];
  v25 = [objc_opt_self() validatedIdNumberFromStoreId:{objc_msgSend(v2, "storeTrackId")}];
  v26 = v25;
  v109 = v7;
  if (v25)
  {
    v134 = [v25 longLongValue];
  }

  else
  {
    v134 = 0;
  }

  v27 = [v2 podcast];
  v140 = v14;
  if (v27)
  {
    v28 = v27;
    v129 = [v27 storeCollectionId];
  }

  else
  {
    v129 = [v2 storeTrackId];
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v29 = [v2 podcast];
  if (v29 && (v30 = v29, v31 = [v29 title], v30, v31))
  {
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v32;
  }

  else
  {
    v115 = 0;
    v128 = 0;
  }

  v33 = [v2 title];
  if (v33)
  {
    v34 = v33;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v35;
  }

  else
  {
    v114 = 0;
    v127 = 0;
  }

  [v2 byteSize];
  v130 = Int64._bridgeToObjectiveC()().super.super.isa;
  v36 = [v2 guid];
  if (v36)
  {
    v37 = v36;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v38;
  }

  else
  {
    v113 = 0;
    v126 = 0;
  }

  result = [v2 playhead];
  v40 = v39 * 1000.0;
  if ((LODWORD(v40) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_89;
  }

  if (v40 <= -9.2234e18)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (v40 >= 9.2234e18)
  {
LABEL_91:
    __break(1u);
    return result;
  }

  v125 = Int._bridgeToObjectiveC()().super.super.isa;
  v41 = [v2 podcast];
  if (v41 && (v42 = v41, v43 = [v41 title], v42, v43))
  {
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v44;
  }

  else
  {
    v112 = 0;
    v123 = 0;
  }

  v45 = v140;
  [v2 video];
  v124 = Bool._bridgeToObjectiveC()().super.super.isa;
  v46 = [v2 podcast];
  if (v46 && (v47 = v46, v48 = [v46 feedURL], v47, v48))
  {
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v49;
  }

  else
  {
    v111 = 0;
    v122 = 0;
  }

  v50 = [v2 podcast];
  if (v50)
  {
    v51 = v50;
    [v50 storeCollectionId];

    v139 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v139 = 0;
  }

  [v2 pubDate];
  v138 = Double._bridgeToObjectiveC()().super.super.isa;
  v52 = [v2 podcast];
  if (v52 && (v53 = v52, v54 = [v52 author], v53, v54))
  {
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;
  }

  else
  {
    v110 = 0;
    v56 = 0;
  }

  v57.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  v136 = Int64._bridgeToObjectiveC()().super.super.isa;
  v135 = Bool._bridgeToObjectiveC()().super.super.isa;
  if (v26)
  {
    v134 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v134 = 0;
  }

  v58 = v141;
  v137 = v57.super.super.isa;
  if (v133)
  {
    [(objc_class *)v133 longLongValue];
    v133 = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v133 = 0;
  }

  v59 = [v2 objectID];
  v60 = [v59 URIRepresentation];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v118 = URL.absoluteString.getter();
  v61 = v45[1];
  v121 = v45 + 1;
  v119 = v61;
  v61(v16, v58);
  v62 = [v2 assetURL];
  v120 = v56;
  if (!v62)
  {
    goto LABEL_50;
  }

  v63 = v62;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = v117;
  URL.init(string:)();

  if ((v45[6])(v64, 1, v58) == 1)
  {
    sub_1001FDD40(v64);
LABEL_50:
    v65 = 1;
    goto LABEL_52;
  }

  (v45[4])(v143, v64, v58);
  v65 = 0;
LABEL_52:
  v66 = v45[7];
  v67 = 1;
  v66(v143, v65, 1, v58);
  v68 = [v2 podcast];
  if (v68)
  {
    v69 = v68;
    v70 = [v68 imageURL];

    v71 = v143;
    if (!v70)
    {
LABEL_56:
      v67 = 1;
      goto LABEL_59;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = v109;
    URL.init(string:)();

    if ((v45[6])(v72, 1, v58) == 1)
    {
      sub_1001FDD40(v72);
      goto LABEL_56;
    }

    (v45[4])(v142, v72, v58);
    v67 = 0;
  }

  else
  {
    v71 = v143;
  }

LABEL_59:
  v66(v142, v67, 1, v58);
  v73.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
  if (v128)
  {
    v117 = String._bridgeToObjectiveC()();
  }

  else
  {
    v117 = 0;
  }

  v74 = v131;
  v75 = v126;
  v76 = v123;
  if (v127)
  {
    v143 = String._bridgeToObjectiveC()();

    if (v75)
    {
LABEL_64:
      v131 = String._bridgeToObjectiveC()();

      goto LABEL_67;
    }
  }

  else
  {
    v143 = 0;
    if (v126)
    {
      goto LABEL_64;
    }
  }

  v131 = 0;
LABEL_67:
  v77 = v122;
  if (v76)
  {
    v129 = String._bridgeToObjectiveC()();
  }

  else
  {
    v129 = 0;
  }

  v78 = v120;
  if (v74)
  {
    v128 = String._bridgeToObjectiveC()();
  }

  else
  {
    v128 = 0;
  }

  if (!v77)
  {
    v79 = 0;
    if (v78)
    {
      goto LABEL_75;
    }

LABEL_77:
    v80 = 0;
    goto LABEL_78;
  }

  v79 = String._bridgeToObjectiveC()();

  if (!v78)
  {
    goto LABEL_77;
  }

LABEL_75:
  v80 = String._bridgeToObjectiveC()();

LABEL_78:
  v81 = String._bridgeToObjectiveC()();

  v82 = v141;
  v83 = v140[6];
  if (v83(v71, 1, v141) == 1)
  {
    v85 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v84);
    v86 = v71;
    v85 = v87;
    v119(v86, v82);
  }

  v88 = v142;
  if (v83(v142, 1, v82) == 1)
  {
    v90 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v89);
    v90 = v91;
    v119(v88, v82);
  }

  v141 = v90;
  v92 = objc_allocWithZone(MediaLibraryItem);
  v107 = v90;
  v108 = v73.super.super.isa;
  v105 = v81;
  v106 = v85;
  v142 = v73.super.super.isa;
  v123 = v80;
  v104 = v80;
  v103 = v79;
  v93 = v79;
  v94 = v124;
  v127 = v81;
  v95 = v128;
  v96 = v129;
  v97 = isa;
  v98 = v117;
  v99 = v143;
  v100 = v130;
  v126 = v85;
  v101 = v131;
  v102 = v125;
  v140 = [v92 initWithDateAccessed:isa album:v117 title:v143 fileSize:v130 externalGuid:v131 bookmarkTimeMillis:v125 seriesName:v129 itemDescription:v128 hasVideo:v124 feedUrl:v103 playlistId:v139 dateReleased:v138 artist:v104 totalTimeMillis:v137 playCount:v136 hasBeenPlayed:v135 serpentId:v134 activeDsid:v133 statsDownloadIdentifier:v105 itemFilePath:v106 artworkUrl:v107 artworkTokenId:v108];

  return v140;
}

uint64_t sub_1002FB2BC(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  sub_100168088(&unk_100573A80);
  v2[38] = swift_task_alloc();
  v3 = type metadata accessor for MediaIdentifier();
  v2[39] = v3;
  v2[40] = *(v3 - 8);
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for PlaybackIntent();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();

  return _swift_task_switch(sub_1002FB410, 0, 0);
}

uint64_t sub_1002FB410()
{
  v1 = v0[37];
  v0[2] = v0;
  v0[3] = sub_1002FB524;
  v2 = swift_continuation_init();
  v0[17] = sub_100168088(&unk_10057E310);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002FBF10;
  v0[13] = &unk_1004EC730;
  v0[14] = v2;
  [v1 load:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002FB524()
{

  return _swift_task_switch(sub_1002FB604, 0, 0);
}

uint64_t sub_1002FB604()
{
  v1 = v0[37];
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  v3 = (v2 + 16);
  v0[22] = sub_1002FC06C;
  v0[23] = v2;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1002FBFF4;
  v0[21] = &unk_1004EC780;
  v4 = _Block_copy(v0 + 18);
  v5 = v0[23];

  [v1 enumerateObjectsUsingBlock:v4];
  _Block_release(v4);
  type metadata accessor for NetworkMediaManifest();
  if (swift_dynamicCastClass())
  {
    swift_beginAccess();
    v5 = *v3;
    v6 = (*v3 & 0xFFFFFFFFFFFFFF8);
    if (*v3 >> 62)
    {
LABEL_74:
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v81 = _swiftEmptyArrayStorage;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= v6[2])
        {
          goto LABEL_71;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v12 = IMPlayerItem.adamID.getter();
      v14 = v13;

      ++v8;
      if ((v14 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1002433B0(0, *(v81 + 2) + 1, 1, v81);
        }

        v16 = *(v81 + 2);
        v15 = *(v81 + 3);
        if (v16 >= v15 >> 1)
        {
          v81 = sub_1002433B0((v15 > 1), v16 + 1, 1, v81);
        }

        *(v81 + 2) = v16 + 1;
        *&v81[8 * v16 + 32] = v12;
        v8 = v11;
      }
    }

    v17 = &enum case for MediaIdentifier.episodes(_:);
    goto LABEL_100;
  }

  v18 = [v0[37] currentItem];
  v19 = &selRef_defaultInstance;
  if (!v18 || (v20 = v18, v21 = [v18 episodeUuid], v20, v19 = &selRef_defaultInstance, !v21))
  {
LABEL_78:
    swift_beginAccess();
    v53 = *v3;
    v54 = *v3 & 0xFFFFFFFFFFFFFF8;
    if (*v3 >> 62)
    {
LABEL_105:
      v55 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v55 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v55)
    {
      v56 = 0;
      v81 = _swiftEmptyArrayStorage;
      do
      {
        v57 = v56;
        while (1)
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v57 >= *(v54 + 16))
            {
              goto LABEL_104;
            }

            v58 = v53[v57 + 4];
          }

          v59 = v58;
          v56 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v60 = [v58 v19[310]];
          if (v60)
          {
            break;
          }

          ++v57;
          if (v56 == v55)
          {
            goto LABEL_98;
          }
        }

        v61 = v60;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_100243134(0, *(v81 + 2) + 1, 1, v81);
        }

        v66 = *(v81 + 2);
        v65 = *(v81 + 3);
        if (v66 >= v65 >> 1)
        {
          v81 = sub_100243134((v65 > 1), v66 + 1, 1, v81);
        }

        *(v81 + 2) = v66 + 1;
        v67 = &v81[16 * v66];
        *(v67 + 4) = v62;
        *(v67 + 5) = v64;
        v19 = &selRef_defaultInstance;
      }

      while (v56 != v55);
    }

    else
    {
      v81 = _swiftEmptyArrayStorage;
    }

LABEL_98:

    goto LABEL_99;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v22;

  swift_beginAccess();
  v23 = *v3;
  if (*v3 >> 62)
  {
LABEL_76:
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24)
    {
      goto LABEL_22;
    }

    goto LABEL_77;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_22:

  v25 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_76;
      }

      v26 = v23[v25 + 4];
    }

    v6 = v26;
    v27 = [v26 v19[310]];
    if (!v27)
    {

      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_72;
      }

      goto LABEL_37;
    }

    v5 = v27;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v28 == v80 && v30 == v82;
    if (v31)
    {
      break;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      goto LABEL_40;
    }

    v33 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_37:
    ++v25;
    v19 = &selRef_defaultInstance;
    if (v33 == v24)
    {

      goto LABEL_77;
    }
  }

LABEL_40:

  result = swift_beginAccess();
  v35 = *v3;
  v36 = v35 >> 62;
  if (v35 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v25)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v5 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v25)
    {
LABEL_113:
      __break(1u);
      return result;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v5)
    {
      goto LABEL_42;
    }

    __break(1u);
    goto LABEL_110;
  }

  v5 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < v25)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

LABEL_42:
  if ((v35 & 0xC000000000000001) == 0 || v5 == v25)
  {

    if (!v36)
    {
      goto LABEL_48;
    }

    goto LABEL_50;
  }

  if (v25 >= v5)
  {
    goto LABEL_111;
  }

  sub_1001AD650();

  v37 = v25;
  do
  {
    v38 = (v37 + 1);
    _ArrayBuffer._typeCheckSlowPath(_:)(v37);
    v37 = v38;
  }

  while (v5 != v38);
  if (!v36)
  {
LABEL_48:
    v39 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
    goto LABEL_51;
  }

LABEL_50:

  _CocoaArrayWrapper.subscript.getter();
  v39 = v40;
  v25 = v41;
  v5 = v42 >> 1;
LABEL_51:
  swift_endAccess();
  swift_unknownObjectRetain();
  if (v25 != v5)
  {
    v81 = _swiftEmptyArrayStorage;
    v43 = v25;
LABEL_55:
    if (v43 >= v25)
    {
      if (v43 <= v5)
      {
        v44 = v5;
      }

      else
      {
        v44 = v43;
      }

      while (v44 != v43)
      {
        v6 = (v43 + 1);
        v45 = *(v39 + 8 * v43);
        v46 = [v45 episodeUuid];
        if (v46)
        {
          v47 = v46;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v78 = v49;
          v79 = v48;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_100243134(0, *(v81 + 2) + 1, 1, v81);
          }

          v51 = *(v81 + 2);
          v50 = *(v81 + 3);
          if (v51 >= v50 >> 1)
          {
            v81 = sub_100243134((v50 > 1), v51 + 1, 1, v81);
          }

          *(v81 + 2) = v51 + 1;
          v52 = &v81[16 * v51];
          *(v52 + 4) = v79;
          *(v52 + 5) = v78;
          v31 = v5 - 1 == v43++;
          if (v31)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        ++v43;
        if (v5 == v6)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_73;
  }

  v81 = _swiftEmptyArrayStorage;
LABEL_53:
  swift_unknownObjectRelease_n();
LABEL_99:
  v17 = &enum case for MediaIdentifier.localEpisodes(_:);
LABEL_100:
  v68 = v0[43];
  v69 = v0[44];
  v70 = v0[41];
  v71 = v0[42];
  v72 = v0[39];
  v73 = v0[40];
  v74 = v0[38];
  v75 = v0[36];
  *v70 = v81;
  (*(v73 + 104))(v70, *v17, v72);
  v76 = type metadata accessor for EpisodeListSettings();
  (*(*(v76 - 8) + 56))(v74, 1, 1, v76);
  static Set<>.default.getter();
  PlaybackIntent.init(id:baseListSettings:options:)();
  (*(v68 + 32))(v75, v69, v71);
  (*(v68 + 56))(v75, 0, 1, v71);

  v77 = v0[1];

  return v77();
}

uint64_t sub_1002FBF10(uint64_t a1)
{
  v1 = *sub_1000044A0((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1002FBF44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return swift_endAccess();
  }

  return result;
}

void sub_1002FBFF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

id sub_1002FC074()
{
  v1 = OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue;
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(NSOperationQueue) init];
    [v4 setMaxConcurrentOperationCount:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1002FC0FC()
{
  v1 = &v0[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input];
  if (v0[OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8])
  {
    goto LABEL_15;
  }

  v2 = v0;
  if (*(*v1 + 16))
  {
    v3 = OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage;
    sub_100009F1C(0, &qword_1005748A0);
    v102 = *&v0[v3];
    swift_unknownObjectRetain();
    v4 = static OS_os_log.downloads.getter();
    v5 = sub_100168088(&qword_10057E3B0);
    v6 = objc_allocWithZone(v5);
    v7 = &v6[*((swift_isaMask & *v6) + 0x198)];
    *v7 = 0;
    v7[8] = 2;
    v8 = &v6[*((swift_isaMask & *v6) + 0x1A8)];
    *v8 = sub_1002FCEA0;
    v8[1] = 0;
    *&v6[*((swift_isaMask & *v6) + 0x1A0)] = v102;
    *&v6[*((swift_isaMask & *v6) + 0x1B0)] = v4;
    v114.receiver = v6;
    v114.super_class = v5;
    v9 = objc_msgSendSuper2(&v114, "init");
    v10 = *v1;
    v11 = v9 + *((swift_isaMask & *v9) + 0x198);
    v12 = v1[8];
    swift_beginAccess();
    v13 = *v11;
    *v11 = v10;
    v14 = v11[8];
    v11[8] = v12;
    sub_10003B668(v10, v12);
    sub_10003B684(v13, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = sub_100168088(&qword_10057E3B8);
    v17 = objc_allocWithZone(v16);
    v18 = &v17[*((swift_isaMask & *v17) + 0x180)];
    *v18 = 0;
    v18[8] = 2;
    v19 = &v17[*((swift_isaMask & *v17) + 0x188)];
    *v19 = sub_1002FE148;
    v19[1] = v15;
    v113.receiver = v17;
    v113.super_class = v16;
    v20 = v2;
    v21 = objc_msgSendSuper2(&v113, "init");
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = sub_100168088(&unk_10057E3C0);
    v24 = objc_allocWithZone(v23);
    v25 = &v24[*((swift_isaMask & *v24) + 0x180)];
    *v25 = 0;
    v25[8] = 2;
    v26 = &v24[*((swift_isaMask & *v24) + 0x188)];
    *v26 = sub_1002FE150;
    v26[1] = v22;
    v112.receiver = v24;
    v112.super_class = v23;
    v27 = objc_msgSendSuper2(&v112, "init");
    v28 = swift_allocObject();
    *(v28 + 16) = v20;
    v29 = sub_100168088(&qword_100574420);
    v30 = objc_allocWithZone(v29);
    v31 = &v30[*((swift_isaMask & *v30) + 0x180)];
    *v31 = 0;
    v31[8] = 2;
    v32 = &v30[*((swift_isaMask & *v30) + 0x188)];
    *v32 = sub_1002FE158;
    v32[1] = v28;
    v111.receiver = v30;
    v111.super_class = v29;
    v33 = v20;
    v101.receiver = objc_msgSendSuper2(&v111, "init");
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    v35 = sub_100168088(&unk_10057A690);
    v36 = objc_allocWithZone(v35);
    v37 = &v36[*((swift_isaMask & *v36) + 0x180)];
    *v37 = 0;
    v37[8] = 2;
    v38 = &v36[*((swift_isaMask & *v36) + 0x188)];
    *v38 = sub_1002FE160;
    v38[1] = v34;
    v110.receiver = v36;
    v110.super_class = v35;
    v33;
    v100 = objc_msgSendSuper2(&v110, "init");
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = (v9 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    v41 = *(v9 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    *v40 = sub_10027B824;
    v40[1] = v39;

    sub_1000112B4(v41);

    ObjectType = swift_getObjectType();
    v43 = swift_conformsToProtocol2();
    if (v43)
    {
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 24) = v44;
      swift_unknownObjectWeakInit();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v45;
      v48 = *(v44 + 72);
      v49 = v9;

      v48(sub_1000319D0, v47, ObjectType, v44);

      v109.receiver = v21;
      v109.super_class = type metadata accessor for BaseOperation();
      v101.super_class = v109.super_class;
      objc_msgSendSuper2(&v109, "addDependency:", v49);

      v99 = v49;
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = &v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      v52 = *&v21[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
      *v51 = sub_10027B824;
      v51[1] = v50;

      sub_1000112B4(v52);

      v53 = swift_getObjectType();
      v54 = swift_conformsToProtocol2();
      if (v54)
      {
        v55 = v54;
        v56 = swift_allocObject();
        *(v56 + 24) = v55;
        swift_unknownObjectWeakInit();
        v57 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v58 = swift_allocObject();
        *(v58 + 16) = v57;
        *(v58 + 24) = v56;
        v59 = *(v55 + 72);
        v60 = v21;

        v59(sub_10003B6A0, v58, v53, v55);

        v108.receiver = v27;
        v108.super_class = v101.super_class;
        objc_msgSendSuper2(&v108, "addDependency:", v60);

        v98 = v60;
        v61 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v62 = &v27[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        v63 = *&v27[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
        *v62 = sub_100182704;
        v62[1] = v61;

        sub_1000112B4(v63);

        v64 = swift_getObjectType();
        v65 = swift_conformsToProtocol2();
        if (v65)
        {
          v66 = v65;
          v67 = swift_allocObject();
          *(v67 + 24) = v66;
          swift_unknownObjectWeakInit();
          v68 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v69 = swift_allocObject();
          *(v69 + 16) = v68;
          *(v69 + 24) = v67;
          v70 = *(v66 + 72);
          v71 = v27;

          v70(sub_10003B6A0, v69, v64, v66);

          v107 = v101;
          objc_msgSendSuper2(&v107, "addDependency:", v71);

          v97 = v71;
          v72 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73 = (v101.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          v74 = *(v101.receiver + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
          *v73 = sub_100182704;
          v73[1] = v72;

          sub_1000112B4(v74);

          v75 = swift_getObjectType();
          v76 = swift_conformsToProtocol2();
          if (v76)
          {
            v77 = v76;
            v78 = swift_allocObject();
            *(v78 + 24) = v77;
            swift_unknownObjectWeakInit();
            v79 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v80 = swift_allocObject();
            *(v80 + 16) = v79;
            *(v80 + 24) = v78;
            v81 = *(v77 + 72);
            v82 = v101.receiver;
            v83 = v100;

            v81(sub_10003B6A0, v80, v75, v77);

            v106.receiver = v83;
            v106.super_class = v101.super_class;
            objc_msgSendSuper2(&v106, "addDependency:", v82);

            v84 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v85 = &v83[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            v86 = *&v83[OBJC_IVAR____TtC8Podcasts13BaseOperation_onError];
            *v85 = sub_1002FE17C;
            v85[1] = v84;

            sub_1000112B4(v86);

            v87 = sub_1002FC074();
            sub_100168088(&unk_100574680);
            v88 = swift_allocObject();
            *(v88 + 16) = xmmword_1004007F0;
            *(v88 + 32) = v99;
            *(v88 + 40) = v98;
            *(v88 + 48) = v97;
            *(v88 + 56) = v82;
            *(v88 + 64) = v83;
            sub_100009F1C(0, &unk_10057A6A0);
            v89 = v99;
            v90 = v98;
            v91 = v97;
            v92 = v82;
            v93 = v83;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v87 addOperations:isa waitUntilFinished:0];

            return;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v95 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  v96 = *&v2[OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler];
  if (v96)
  {
    v105 = sub_100168088(&qword_100578BE0);
    v103 = 0;
    v104 = 0;

    v96(&v103);
    sub_1000112B4(v96);
    sub_100004590(&v103);
  }

  sub_10003172C();
}

void sub_1002FCEA0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  v11 = *(v7 + 16);
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = *(v6 + 16);

  v14 = v12(v13);

  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v14;
  v15[4] = sub_100183820;
  v15[5] = v8;
  v18[4] = sub_10027B89C;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000F038;
  v18[3] = &unk_1004ECB90;
  v16 = _Block_copy(v18);

  v17 = v14;

  [v17 performBlock:v16];
  _Block_release(v16);
}

void sub_1002FD0B4(uint64_t *a1, void (*a2)(void ***), uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = *(v6 + 16);
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v10;
  os_log(_:dso:log:_:_:)();

  if (!*(v6 + 16))
  {

    static os_log_type_t.default.getter();
    v18 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    aBlock = v6;
    LOBYTE(v29) = 0;
    a2(&aBlock);
    return;
  }

  static os_log_type_t.default.getter();
  v11 = static OS_os_log.restore.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  v13 = *(v6 + 16);
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  *(v12 + 32) = v13;
  os_log(_:dso:log:_:_:)();

  v14 = *(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_episodeStorage);
  v15 = *(v6 + 16);
  if (v15)
  {
    v27 = sub_1002440D4(*(v6 + 16), 0);
    v16 = sub_1002FE644(&aBlock, v27 + 4, v15, v6);

    sub_1000319D8();
    if (v16 != v15)
    {
      __break(1u);
      return;
    }

    v17 = v27;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = swift_allocObject();
  v19[2] = sub_10002DD38;
  v19[3] = v7;
  v19[4] = v6;
  v20 = *(v14 + 16);

  v22 = v20(v21);

  v23 = swift_allocObject();
  v23[2] = v17;
  v23[3] = v22;
  v23[4] = sub_1002FE7A4;
  v23[5] = v19;
  v32 = sub_1002FE7B4;
  v33 = v23;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10000F038;
  v31 = &unk_1004ECB18;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  [v25 performBlock:v24];
  _Block_release(v24);
}

uint64_t sub_1002FD478(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return a3(a5, 0);
  }

  sub_100217988();
  v7 = swift_allocError();
  *v8 = a1;
  swift_errorRetain();
  a3(v7, 1);
}

void sub_1002FD51C(uint64_t *a1, void (*a2)(void ***), uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v7 = v6;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8 = *(v5 + 16);
  if (!v8)
  {

    v9 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_4;
    }

LABEL_7:

    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v20 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    aBlock = 0;
    LOBYTE(v23) = 0;
    a2(&aBlock);
    return;
  }

  v21 = v6;
  v9 = sub_1002440D4(v8, 0);
  v10 = sub_1002FE644(&aBlock, v9 + 4, v8, v5);

  sub_1000319D8();
  if (v10 != v8)
  {
    __break(1u);
    return;
  }

  v7 = v21;
  if (!v9[2])
  {
    goto LABEL_7;
  }

LABEL_4:
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v11 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  v13 = v9[2];
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  *(v12 + 32) = v13;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_downloadsManager);
    v16 = Strong;
    swift_unknownObjectRetain();

    sub_10039B51C(v9);

    isa = Set._bridgeToObjectiveC()().super.isa;

    v18 = swift_allocObject();
    *(v18 + 16) = sub_1002FE810;
    *(v18 + 24) = v7;
    v26 = sub_1002FE79C;
    v27 = v18;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1002FD9A8;
    v25 = &unk_1004ECA78;
    v19 = _Block_copy(&aBlock);

    [v15 restoreDownloadedEpisodes:isa completion:v19];
    swift_unknownObjectRelease();
    _Block_release(v19);
  }

  else
  {
  }
}

uint64_t sub_1002FD8A8(uint64_t a1, uint64_t (*a2)(void, void))
{
  if (*(a1 + 16))
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v4 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100400790;
    v6 = *(a1 + 16);
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = v6;
    os_log(_:dso:log:_:_:)();
  }

  return a2(0, 0);
}

uint64_t sub_1002FD9A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t sub_1002FDA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = (a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input);
  if (*(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8) || (v11 = *(*v10 + 16), *(v9 + 56) = &type metadata for Int, *(v9 + 64) = &protocol witness table for Int, *(v9 + 32) = v11, os_log(_:dso:log:_:_:)(), v8, , sub_1000044A0((a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary), *(a4 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary + 24)), v10[8]))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v12 = *v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10002DD30;
    *(v13 + 24) = v7;

    dispatch thunk of MediaLibraryClientProtocol.deleteEpisodes(identifiers:completion:)();

    return sub_10003B684(v12, 0);
  }

  return result;
}

void sub_1002FDC80(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  v5 = *(a1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  if (v5)
  {
    v8 = sub_100168088(&qword_100578BE0);
    v6 = 0;
    v7 = 0;

    v5(&v6);
    sub_1000112B4(v5);
    sub_100004590(&v6);
  }

  sub_10003172C();
  *a2 = 0;
  *(a2 + 8) = 0;
}

void sub_1002FDD94(uint64_t a1)
{
  static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100400790;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100022C18();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v9)
    {
      v14 = sub_100168088(&qword_100578BE0);
      v12 = a1;
      v13 = 1;
      sub_100013CB4(v9);
      swift_errorRetain();
      v9(&v12);
      sub_1000112B4(v9);
      sub_100004590(&v12);
    }

    v10 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
    v11 = *&v8[OBJC_IVAR____TtC8Podcasts13BaseOperation_lock];
    swift_errorRetain();
    [v11 lock];
    *&v8[OBJC_IVAR____TtC8Podcasts13BaseOperation__error] = a1;
    swift_errorRetain();

    [*&v8[v10] unlock];

    sub_10003172C();
  }
}

void sub_1002FDFD4()
{
  sub_10003B684(*(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input + 8));
  sub_100004590(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_mediaLibrary);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation____lazy_storage___serialQueue);
}

id sub_1002FE04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RestoreDownloadedEpisodesOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002FE128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts34RestoreDownloadedEpisodesOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_10003B668(v3, v4);
}

id sub_1002FE184(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  sub_100009F1C(0, &qword_1005747D0);
  sub_100276194();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      sub_100009F1C(0, &qword_1005747D0);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1002FE3A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for MediaLibraryPid();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1002FE644(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002FE7C0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002FE81C(__int128 *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3 = [objc_opt_self() mainBundle];
  v15._object = 0x800000010046EAF0;
  v4._object = 0x800000010046EAD0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0x1000000000000016;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v15);

  *(v1 + 72) = v6;
  *(v1 + 88) = xmmword_10040BD00;
  v7 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v8 = enum case for MetricsLabel.removeEpisodeFromLibrary(_:);
  v9 = type metadata accessor for MetricsLabel();
  (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
  v10 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_contextActionType;
  v11 = enum case for ContextActionType.removeEpisodeFromLibrary(_:);
  v12 = type metadata accessor for ContextActionType();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v1 + v10, v11, v12);
  (*(v13 + 56))(v1 + v10, 0, 1, v12);
  sub_100184658(a1, v1 + 32);
  return v1;
}

uint64_t sub_1002FE9CC()
{
  v1 = v0;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v3 = (v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InteractionContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(v0 + 24))
  {
    return 0;
  }

  dispatch thunk of ContextActionsConfiguration.context.getter();

  InteractionContext.page.getter();
  v10 = *(v7 + 8);
  v10(v9, v6);
  v11 = InteractionContext.Page.isEpisodePage.getter();
  sub_10027F15C(v5, &type metadata accessor for InteractionContext.Page);
  if (*(v0 + 24))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    v10(v9, v6);
    v12 = InteractionContext.Page.isUnfollowedLibraryShow.getter();
    sub_10027F15C(v5, &type metadata accessor for InteractionContext.Page);
    if (((v12 | v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v11 & 1) == 0)
  {
    return 0;
  }

  v13 = *(v1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v13 + v14, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10027F15C(v3, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  v16 = *v3;

  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 mainOrPrivateContext];

  v44 = _swiftEmptyArrayStorage;
  v19 = v16[2];
  if (!v19)
  {
    v34 = 0;
    goto LABEL_18;
  }

  v36[1] = v13;
  v37 = v16;
  v21 = v16[4];
  v20 = v16[5];
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = v21;
  v22[4] = v20;
  v22[5] = &v44;

  v36[0] = v18;
  v23 = v18;
  sub_1000112B4(0);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002FF700;
  *(v24 + 24) = v22;
  v42 = sub_10002D7F0;
  v43 = v24;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_10002D904;
  v41 = &unk_1004ECCA0;
  v25 = _Block_copy(&aBlock);

  [v23 performBlockAndWait:v25];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if ((v25 & 1) == 0)
  {
    v26 = v19 - 1;
    if (v19 != 1)
    {
      v27 = v37 + 7;
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        v30 = swift_allocObject();
        v30[2] = v23;
        v30[3] = v29;
        v30[4] = v28;
        v30[5] = &v44;

        v31 = v23;
        sub_1000112B4(sub_1002FF700);
        v32 = swift_allocObject();
        *(v32 + 16) = sub_1002FF700;
        *(v32 + 24) = v30;
        v42 = sub_10002D7F0;
        v43 = v32;
        aBlock = _NSConcreteStackBlock;
        v39 = 1107296256;
        v40 = sub_10002D904;
        v41 = &unk_1004ECCA0;
        v33 = _Block_copy(&aBlock);

        [v31 performBlockAndWait:v33];
        _Block_release(v33);
        LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

        if (v31)
        {
          goto LABEL_19;
        }

        v27 += 2;
      }

      while (--v26);
    }

    v34 = sub_1002FF700;
    v18 = v36[0];
LABEL_18:

    v35 = v44[2];

    sub_1000112B4(v34);
    return v35 != 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1002FEFC8(void *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v8 = String._bridgeToObjectiveC()();
  v16 = [a1 episodeForUuid:v8];

  if (v16)
  {
    if (([v16 isDownloaded] & 1) != 0 || objc_msgSend(v16, "isBookmarked") || (objc_msgSend(v16, "isBookmarksMigrationRecoveredEpisode") & 1) == 0)
    {
    }

    else
    {
      v9 = *a4;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_100243134(0, *(v9 + 2) + 1, 1, v9);
        *a4 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v16;
      if (v12 >= v11 >> 1)
      {
        *a4 = sub_100243134((v11 > 1), v12 + 1, 1, v9);
        v13 = v16;
      }

      v14 = *a4;
      *(v14 + 2) = v12 + 1;
      v15 = &v14[16 * v12];
      *(v15 + 4) = a2;
      *(v15 + 5) = a3;
    }
  }
}

void sub_1002FF138()
{
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = v0[2];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v3 + v4, v2);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10027F15C(v2, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {

      sub_1000044A0(v0 + 4, v0[7]);
      dispatch thunk of LibraryActionControllerProtocol.removeRecoveredEpisodes(with:)();
    }
  }
}

uint64_t sub_1002FF264()
{

  sub_100004590(v0 + 32);

  v1 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001C2B94(v0 + OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_contextActionType);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoveFromLibraryEpisodeContextAction()
{
  result = qword_10057E408;
  if (!qword_10057E408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FF38C()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002FF480@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts37RemoveFromLibraryEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002FF510(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1002FF570(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002FF5D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002FF634(uint64_t a1)
{
  result = sub_1002FF6BC(&qword_10057E568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FF678(uint64_t a1)
{
  result = sub_1002FF6BC(&unk_10057E570);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FF6BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoveFromLibraryEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002FF7B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeDownloadStateControllerProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002FF8A4()
{
  v1 = v0;
  v2 = sub_100168088(&qword_10057D398);
  __chkstk_darwin(v2 - 8);
  v4 = &v21[-v3];
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.navigation.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Storefront change detected, re-running storefront bootstrap.", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  *(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph) = static Dependencies.allDependencies()();

  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v21[7] = 1;
  sub_1000090B0();
  AnyHashable.init<A>(_:)();
  type metadata accessor for BaseObjectGraph();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009104(v22, &unk_10057E698);
  v12 = (v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner);
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectRelease();
  v13 = type metadata accessor for PPTViewControllerProxy();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_10002C62C(v4, v1 + v14);
  swift_endAccess();
  v15 = (v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController);
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectRelease();
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 delegate];

  if (!v17)
  {
  }

  if ([v17 respondsToSelector:"window"])
  {
    v18 = [v17 window];
    swift_unknownObjectRelease();
    if (v18)
    {
      v19 = sub_10001DB48();
      [v18 setRootViewController:v19];
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1002FFC58(void *a1)
{
  v58 = a1;
  v56 = type metadata accessor for NSFastEnumerationIterator();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v57 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for URL();
  v61 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 stringForKey:v9];

  if (!v10)
  {
    return;
  }

  v11 = [v7 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 stringForKey:v12];

  if (!v13)
  {
    return;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_100301FEC(v4);
  v16 = v61;
  if ((*(v61 + 48))(v4, 1, v5) == 1)
  {

    sub_100009104(v4, &qword_100574040);
    return;
  }

  v17 = v59;
  (*(v16 + 32))(v59, v4, v5);
  v18 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 contentsAtPath:v19];

  if (!v20)
  {
    (*(v16 + 8))(v17, v5);
    goto LABEL_34;
  }

  v51 = v5;
  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = objc_opt_self();
  v52 = v21;
  v53 = v23;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v67 = 0;
  v26 = [v24 propertyListWithData:isa options:1 format:0 error:&v67];

  v27 = v67;
  if (!v26)
  {
LABEL_37:
    v46 = v27;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001B944(v69, &v67);
  sub_100009F1C(0, &qword_10057A450);
  v28 = swift_dynamicCast();
  v29 = v57;
  if (!v28)
  {
    sub_1001F6D74(v52, v53);

    sub_100004590(v69);
    (*(v16 + 8))(v17, v51);
    return;
  }

  v60 = v15;
  v50 = *&v66[0];
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!v68)
  {
    goto LABEL_33;
  }

  v30 = _swiftEmptyArrayStorage;
  v31 = &qword_10057E7C0;
  v32 = &type metadata for String;
  v33 = &protocol witness table for AnyHashable;
  do
  {
    v49 = v30;
    while (1)
    {
      sub_10016B7CC(&v67, v66);
      sub_100009F1C(0, v31);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v34 = v33;
      v35 = v64;
      *&v64 = 0x656D614E74736574;
      *(&v64 + 1) = 0xE800000000000000;
      v36 = [v35 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v36)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
      }

      v66[0] = v64;
      v66[1] = v65;
      v33 = v34;
      if (!*(&v65 + 1))
      {
        sub_100009104(v66, &unk_1005783D0);
LABEL_12:

        goto LABEL_13;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v37 = v32;
      v38 = v31;
      v40 = v62;
      v39 = v63;
      if ((v54 != v62 || v60 != v63) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v41 = String._bridgeToObjectiveC()();
      *&v66[0] = 0;
      v27 = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
      if (!*&v66[0])
      {
        __break(1u);
        goto LABEL_37;
      }

      v42 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v58 runTest:v41 options:v42];

      v31 = v38;
      v32 = v37;
      v33 = v34;
LABEL_13:
      NSFastEnumerationIterator.next()();
      if (!v68)
      {
        goto LABEL_33;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_100243134(0, *(v49 + 2) + 1, 1, v49);
    }

    v44 = *(v49 + 2);
    v43 = *(v49 + 3);
    v48 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v49 = sub_100243134((v43 > 1), v44 + 1, 1, v49);
    }

    v30 = v49;
    *(v49 + 2) = v48;
    v45 = &v30[16 * v44];
    *(v45 + 4) = v40;
    *(v45 + 5) = v39;
    NSFastEnumerationIterator.next()();
    v31 = v38;
    v32 = v37;
    v33 = v34;
  }

  while (v68);
LABEL_33:
  sub_1001F6D74(v52, v53);

  (*(v55 + 8))(v29, v56);
  sub_100004590(v69);
  (*(v61 + 8))(v59, v51);
LABEL_34:
}

id sub_100300658@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v27 = a2;
  v2 = sub_100168088(&qword_10057E778);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = sub_100168088(&qword_10057E780);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateForNotSubscribedAndNotHiddenAndNotImplicitlyFollowed];
  v11 = [v9 predicateForPodcastsWithLibraryEpisodes];
  v12 = [v10 AND:v11];

  v13 = [v9 predicateForSubscribedAndNotHidden];
  v14 = [v13 OR:v12];

  result = [v9 sortDescriptorsForSortType:1];
  if (result)
  {
    v16 = result;
    sub_100009F1C(0, &qword_10057B1F0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = [*(v23 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0);
    v18 = static OS_dispatch_queue.main.getter();
    type metadata accessor for ShowInfo();
    sub_100009F1C(0, &qword_100573AC0);
    static FetchedResultsListPublisher.unsafeUnlimitedListPublisher(identifier:entityName:predicate:sortDescriptors:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();

    __chkstk_darwin(v19);
    swift_getKeyPath();
    sub_100009FAC(&qword_10057E788, &qword_10057E778);
    Publisher.map<A>(_:)();

    (*(v3 + 8))(v5, v2);
    sub_100009FAC(&unk_10057E790, &qword_10057E780);
    v20 = v26;
    v21 = Publisher.eraseToAnyPublisher()();
    result = (*(v25 + 8))(v8, v20);
    *v27 = v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100300AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    [a1 addedDate];
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    result = (*(v5 + 8))(v7, v4);
    v13 = v11 * 1000.0;
    if (COERCE__INT64(fabs(v11 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v13 > -9.22337204e18)
    {
      if (v13 < 9.22337204e18)
      {
        [a1 storeCollectionId];
        v17[1] = AdamID.init(rawValue:)();
        sub_1000366D8();
        BinaryInteger.description.getter();
        ShowInfo.init(adamId:deviceShowId:followTime:)();
        v14 = type metadata accessor for ShowInfo();
        return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v15 = type metadata accessor for ShowInfo();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, 1, 1, v15);
}

BOOL sub_100300D2C()
{
  type metadata accessor for ShowInfo();
  sub_10002C074(&unk_100581820, &type metadata accessor for ShowInfo);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100300DB8(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v3 = type metadata accessor for MetricsPipeline();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100577768);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v40 = &v35 - v6;
  v7 = sub_100168088(&qword_10057E760);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v41 = type metadata accessor for MetricsFieldsContext();
  v10 = *(v41 - 8);
  v11 = __chkstk_darwin(v41);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v35 - v15;
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  v19 = type metadata accessor for FollowMetricsEvent.FollowType();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MetricsData();
  result = __chkstk_darwin(v23);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v28 = *(v20 + 104);
    v36 = v25;
    v37 = result;
    v28(v22, enum case for FollowMetricsEvent.FollowType.followedShows(_:), v19);
    static FollowMetricsEvent.makeData(followType:shows:)();
    (*(v20 + 8))(v22, v19);
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v48 = static PageContextTracker.shared.getter();
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v38 + 8))(v9, v39);

    v29 = *(v10 + 8);
    v30 = v41;
    v29(v13, v41);
    type metadata accessor for MetricsActivity();
    v31 = static MetricsActivity.shared.getter();
    v32 = MetricsActivity.currentPageFields.getter();

    v48 = v32;
    v33 = v40;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880);
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v42 + 8))(v33, v43);

    v29(v16, v30);
    v34 = v44;
    dispatch thunk of BaseFlowController.metricsPipeline.getter();
    MetricsPipeline.process(_:using:)();

    (*(v46 + 8))(v34, v47);
    v29(v18, v30);
    return (*(v36 + 8))(v27, v37);
  }

  return result;
}

uint64_t sub_1003012EC@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_100304498(v2);

  *a1 = v3;
  return result;
}

uint64_t sub_100301334@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = *a2;
  a3[1] = v3;
}

void *sub_100301374@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  if (*result)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    if (v4[2] <= v3[2] >> 3)
    {
      v7 = *result;

      sub_10036DCA8(v4);
      v6 = v7;
    }

    else
    {

      v6 = sub_10036E680(v4, v3);
    }

    if (v3[2] <= v4[2] >> 3)
    {
      sub_10036DCA8(v3);
      result = v4;
    }

    else
    {
      result = sub_10036E680(v3, v4);
    }

    *a2 = v6;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_100301454(uint64_t *a1, uint64_t a2)
{
  v111 = a2;
  v110 = type metadata accessor for MetricsPipeline();
  v3 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100168088(&qword_100577768);
  v5 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v78 - v6;
  v106 = sub_100168088(&qword_10057E760);
  v7 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v78 - v8;
  v104 = type metadata accessor for MetricsFieldsContext();
  v9 = *(v104 - 8);
  v10 = __chkstk_darwin(v104);
  v103 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v102 = &v78 - v13;
  __chkstk_darwin(v12);
  v101 = &v78 - v14;
  v100 = type metadata accessor for FollowMetricsEvent.FollowType();
  v15 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for MetricsData();
  v17 = *(v98 - 8);
  __chkstk_darwin(v98);
  v112 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ShowInfo();
  v19 = __chkstk_darwin(v97);
  v81 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v83 = &v78 - v22;
  v23 = *a1;
  v85 = a1[1];
  v24 = *(v23 + 56);
  v80 = v23 + 56;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v79 = (v25 + 63) >> 6;
  v95 = v21 + 16;
  LODWORD(v82) = enum case for FollowMetricsEvent.FollowType.follow(_:);
  v96 = v21;
  v93 = v21 + 32;
  v94 = (v15 + 104);
  v92 = (v15 + 8);
  v91 = (v7 + 8);
  v90 = (v9 + 8);
  v89 = (v5 + 8);
  v88 = (v3 + 8);
  v87 = (v17 + 8);
  v84 = v23;

  v29 = 0;
  v86 = xmmword_100400790;
  v30 = v90;
  if (v27)
  {
    while (1)
    {
      v31 = v29;
LABEL_9:
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = v96;
      v33 = v97;
      v35 = v83;
      (*(v96 + 16))(v83, *(v84 + 48) + *(v96 + 72) * (v32 | (v31 << 6)), v97);
      v37 = v99;
      v36 = v100;
      (*v94)(v99, v82, v100);
      sub_100168088(&qword_10057E768);
      v38 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v86;
      (*(v34 + 32))(v39 + v38, v35, v33);
      static FollowMetricsEvent.makeData(followType:shows:)();

      (*v92)(v37, v36);
      v40 = v103;
      MetricsFieldsContext.init()();
      type metadata accessor for PageContextTracker();
      v113 = static PageContextTracker.shared.getter();
      v41 = v105;
      static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
      v42 = v102;
      MetricsFieldsContext.addingValue<A>(_:forProperty:)();
      (*v91)(v41, v106);

      v43 = *v30;
      v44 = v40;
      v45 = v104;
      (*v30)(v44, v104);
      type metadata accessor for MetricsActivity();
      v46 = static MetricsActivity.shared.getter();
      v47 = MetricsActivity.currentPageFields.getter();

      v113 = v47;
      v48 = v107;
      static MetricsFieldsContext.Property<A>.pageFields.getter();
      sub_100168088(&qword_100574880);
      v49 = v101;
      MetricsFieldsContext.addingValue<A>(_:forProperty:)();
      (*v89)(v48, v108);

      v43(v42, v45);
      v50 = v109;
      dispatch thunk of BaseFlowController.metricsPipeline.getter();
      v51 = v112;
      MetricsPipeline.process(_:using:)();

      (*v88)(v50, v110);
      v43(v49, v45);
      result = (*v87)(v51, v98);
      if (!v27)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v31 >= v79)
    {
      break;
    }

    v27 = *(v80 + 8 * v31);
    ++v29;
    if (v27)
    {
      v29 = v31;
      goto LABEL_9;
    }
  }

  v52 = *(v85 + 56);
  v83 = (v85 + 56);
  v53 = 1 << *(v85 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & v52;
  v82 = (v53 + 63) >> 6;
  LODWORD(v84) = enum case for FollowMetricsEvent.FollowType.unfollow(_:);

  for (i = 0; v55; result = (*v87)(v77, v98))
  {
    v57 = i;
LABEL_19:
    v58 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v60 = v96;
    v59 = v97;
    v61 = v81;
    (*(v96 + 16))(v81, *(v85 + 48) + *(v96 + 72) * (v58 | (v57 << 6)), v97);
    v63 = v99;
    v62 = v100;
    (*v94)(v99, v84, v100);
    sub_100168088(&qword_10057E768);
    v64 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v86;
    (*(v60 + 32))(v65 + v64, v61, v59);
    static FollowMetricsEvent.makeData(followType:shows:)();

    (*v92)(v63, v62);
    v66 = v103;
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v113 = static PageContextTracker.shared.getter();
    v67 = v105;
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    v68 = v102;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*v91)(v67, v106);

    v69 = *v90;
    v70 = v66;
    v71 = v104;
    (*v90)(v70, v104);
    type metadata accessor for MetricsActivity();
    v72 = static MetricsActivity.shared.getter();
    v73 = MetricsActivity.currentPageFields.getter();

    v113 = v73;
    v74 = v107;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880);
    v75 = v101;
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*v89)(v74, v108);

    v69(v68, v71);
    v76 = v109;
    dispatch thunk of BaseFlowController.metricsPipeline.getter();
    v77 = v112;
    MetricsPipeline.process(_:using:)();

    (*v88)(v76, v110);
    v69(v75, v71);
  }

  while (1)
  {
    v57 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v57 >= v82)
    {
    }

    v55 = *&v83[8 * v57];
    ++i;
    if (v55)
    {
      i = v57;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_100301FEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  sub_100009F1C(0, &qword_10057BC40);
  v11 = static UITraitCollection.interfaceIdiomIsMac.getter();
  v12 = [objc_opt_self() mainBundle];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 resourceURL];

    if (v14)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    }

    else
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    }

    sub_1001B8A3C(v7, v10);
    type metadata accessor for URL();
    v20 = *(v15 - 8);
    if ((*(v20 + 48))(v10, 1, v15) == 1)
    {
      sub_100009104(v10, &qword_100574040);
      return (*(v20 + 56))(a1, 1, 1, v15);
    }

    else
    {
      URL.appendingPathComponent(_:)();
      (*(v20 + 8))(v10, v15);
      return (*(v20 + 56))(a1, 0, 1, v15);
    }
  }

  else
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v13 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    }

    else
    {
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    }

    return sub_1001B8A3C(v4, a1);
  }
}

uint64_t sub_1003023A0(unint64_t a1, uint64_t a2)
{
  v56 = a2;
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v3 = type metadata accessor for OSLogger();
  v52 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for FlowDestinationPageHeader();
  v48 = *(v49 - 8);
  __chkstk_darwin();
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v46 = *(v8 - 8);
  __chkstk_darwin();
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowDestination();
  v45 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ActionMetricsBehavior();
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v18 = [v14 isDebugUrl:v16];

  if (v18)
  {
    [v14 showDebugUI];
  }

  else
  {
    type metadata accessor for PodcastsURLScheme();
    if (!static PodcastsURLScheme.commandType(for:)() || (type metadata accessor for PodcastsURLOpenCommand(), v19 = swift_dynamicCastClass(), , !v19))
    {
      if (!*(v57 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
      {
        static OSLogger.actions.getter();
        sub_100168088(&unk_10057E660);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_100400790;
        LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v25._object = 0x800000010046EE00;
        v25._countAndFlagsBits = 0xD000000000000013;
        LogMessage.StringInterpolation.appendLiteral(_:)(v25);
        v26 = type metadata accessor for URL();
        v61[3] = v26;
        v27 = sub_10000E680(v61);
        (*(*(v26 - 8) + 16))(v27, a1, v26);
        LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
        sub_100009104(v61, &unk_1005783D0);
        v28._countAndFlagsBits = 0xD00000000000001ALL;
        v28._object = 0x800000010046CEC0;
        LogMessage.StringInterpolation.appendLiteral(_:)(v28);
        LogMessage.init(stringInterpolation:)();
        Logger.error(_:)();

        (*(v52 + 8))(v5, v3);
        return 0;
      }

      v20 = *(v57 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner + 8);
      sub_100168088(&qword_10057E670);
      swift_unknownObjectRetain();
      BaseObjectGraph.inject<A>(_:)();
      sub_10033D904(a1, &v58);
      if (v59)
      {
        sub_100184658(&v58, v60);
        swift_getObjectType();
        v21 = v54;
        v22 = v53;
        v23 = v55;
        (*(v54 + 104))(v53, enum case for ActionMetricsBehavior.notProcessed(_:), v55);
        ActionRunner.perform(_:withMetrics:asPartOf:)();
        swift_unknownObjectRelease();

        (*(v21 + 8))(v22, v23);
        sub_100004590(v60);
        v24 = v61;
      }

      else
      {
        v57 = v20;
        sub_100009104(&v58, &qword_100578C20);
        sub_100168088(&unk_1005747F0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100400790;
        v31 = *(sub_100168088(&qword_10057E678) + 48);
        v32 = type metadata accessor for URL();
        (*(*(v32 - 8) + 16))(v12, a1, v32);
        v33 = enum case for FlowOrigin.external(_:);
        v34 = type metadata accessor for FlowOrigin();
        (*(*(v34 - 8) + 104))(&v12[v31], v33, v34);
        (*(v45 + 104))(v12, enum case for FlowDestination.unknown(_:), v10);
        (*(v46 + 104))(v47, enum case for FlowPresentationContext.infer(_:), v8);
        sub_100168088(&qword_1005742B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007C0;
        v36 = static Link.Presentation.textFollowsTintColor.getter();
        *(inited + 32) = v36;
        v37 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
        *(inited + 33) = v37;
        Link.Presentation.init(rawValue:)();
        Link.Presentation.init(rawValue:)();
        if (Link.Presentation.init(rawValue:)() != v36)
        {
          Link.Presentation.init(rawValue:)();
        }

        Link.Presentation.init(rawValue:)();
        if (Link.Presentation.init(rawValue:)() != v37)
        {
          Link.Presentation.init(rawValue:)();
        }

        (*(v48 + 104))(v50, enum case for FlowDestinationPageHeader.standard(_:), v49);
        static ActionMetrics.notInstrumented.getter();
        v38 = type metadata accessor for FlowAction();
        swift_allocObject();
        v39 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
        *(v30 + 56) = v38;
        *(v30 + 64) = sub_10002C074(&unk_10057A0D0, &type metadata accessor for FlowAction);
        *(v30 + 32) = v39;
        Link.Presentation.init(rawValue:)();
        static ActionMetrics.notInstrumented.getter();
        v40 = type metadata accessor for TabChangeAction();
        swift_allocObject();
        v41 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
        swift_getObjectType();
        v60[3] = v40;
        v60[4] = sub_10002C074(&qword_10057ADD0, &type metadata accessor for TabChangeAction);
        v60[0] = v41;
        v42 = v54;
        v43 = v53;
        v44 = v55;
        (*(v54 + 104))(v53, enum case for ActionMetricsBehavior.notProcessed(_:), v55);

        ActionRunner.perform(_:withMetrics:asPartOf:)();

        swift_unknownObjectRelease();

        (*(v42 + 8))(v43, v44);
        sub_100004590(v61);
        v24 = v60;
      }

      sub_100004590(v24);
    }
  }

  return 1;
}

void sub_100303068()
{
  v0 = type metadata accessor for MetricsData();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    static WelcomeSheetMetricsEvent.makeData()();
    MetricsController.process(_:)();
    (*(v1 + 8))(v3, v0);
    if (qword_100572848 != -1)
    {
      swift_once();
    }

    ForegroundSyncUtil.startCloudSyncAfterPrivacy()();
  }
}

void sub_1003031A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_100303314(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v9 = v7(v8, a2, a3, a4);

  return v9;
}

id sub_100303384(void *a1)
{
  v3 = type metadata accessor for FlowPresentationHints();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowDestination();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 state];
  if (result == 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8Podcasts11AppDelegate_flowController))
    {
      swift_getObjectType();
      (*(v8 + 104))(v11, enum case for FlowDestination.debugSettings(_:), v7);
      swift_unknownObjectRetain();
      static FlowPresentationHints.default.getter();
      dispatch thunk of FlowController.show(destination:hints:referrer:)();
      swift_unknownObjectRelease();
      (*(v4 + 8))(v6, v3);
      return (*(v8 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_1003035E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030364C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003036B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100303718()
{
  v18 = v0;

  static Logger.downloads.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[10];
    v4 = v0[5];
    v16 = v0[6];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[3] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000153E0(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to start cache delete observer: %s", v6, 0xCu);
    sub_100004590(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10030390C()
{
  v1 = type metadata accessor for Logger();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = type metadata accessor for ContinuousPlaybackAllowedObserver();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_100303A34;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v2, v2);
}

uint64_t sub_100303A34()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100303DA0, v4, v3);
  }

  else
  {
    v2[10] = v2[2];
    v7 = (&async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe() + async function pointer to dispatch thunk of ContinuousPlaybackAllowedObserver.observe());
    v5 = swift_task_alloc();
    v2[11] = v5;
    *v5 = v2;
    v5[1] = sub_100303BD8;

    return v7();
  }
}

uint64_t sub_100303BD8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100303D38, v1, v0);
}

uint64_t sub_100303D38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100303DA0()
{

  static Logger.settings.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to observe ContinuousPlaybackAllowed with error: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100303FC8()
{
  v1 = type metadata accessor for StorageAnalyticsResponder();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  __chkstk_darwin();
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppExitMetricsEvent.ExitKind();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;

  BaseObjectGraph.inject<A>(_:)();

  (*(v6 + 104))(v8, enum case for AppExitMetricsEvent.ExitKind.taskSwitch(_:), v5);
  v13 = [objc_opt_self() sharedApplication];
  sub_10020B430(v8, v12, v13);

  (*(v6 + 8))(v8, v5);
  v14 = v18;

  v15 = v19;
  BaseObjectGraph.inject<A>(_:)();
  StorageAnalyticsResponder.endObserving()();

  (*(v20 + 8))(v4, v15);
  result = (*(v10 + 8))(v12, v9);
  *(v14 + OBJC_IVAR____TtC8Podcasts11AppDelegate_appHasBeenInBackground) = 1;
  return result;
}

uint64_t sub_1003042A4()
{
  v0 = type metadata accessor for AppExitMetricsEvent.ExitKind();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for MetricsPipeline();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  BaseObjectGraph.inject<A>(_:)();

  (*(v1 + 104))(v3, enum case for AppExitMetricsEvent.ExitKind.quit(_:), v0);
  v8 = [objc_opt_self() sharedApplication];
  sub_10020B430(v3, v7, v8);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100304498(uint64_t a1)
{
  v2 = type metadata accessor for ShowInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10002C074(&qword_10057E770, &type metadata accessor for ShowInfo);
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
      sub_10038EB7C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100304634()
{
  v1 = type metadata accessor for ActionMetricsBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  result = NSUserActivity.stateRestorationNavigationTab.getter();
  if (result != 19)
  {
    v6 = result;
    sub_100304FEC(result);
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    v7 = type metadata accessor for TabChangeAction();
    swift_allocObject();
    v8 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    if (*(v0 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
    {
      v9 = v8;
      swift_getObjectType();
      v11[3] = v7;
      v11[4] = sub_10002C074(&qword_10057ADD0, &type metadata accessor for TabChangeAction);
      v11[0] = v9;
      (*(v2 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v1);
      swift_unknownObjectRetain();

      ActionRunner.perform(_:withMetrics:asPartOf:)();

      swift_unknownObjectRelease();

      sub_100305000(v6);
      (*(v2 + 8))(v4, v1);
      return sub_100004590(v11);
    }

    else
    {

      return sub_100305000(v6);
    }
  }

  return result;
}

uint64_t sub_1003048D8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59 = a1;
  v5 = type metadata accessor for MetricsActivity.PageReferrer();
  v60 = *(v5 - 8);
  __chkstk_darwin();
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v9;
  __chkstk_darwin();
  v61 = &v50 - v10;
  __chkstk_darwin();
  v12 = &v50 - v11;
  __chkstk_darwin();
  v14 = &v50 - v13;
  if (*(a2 + 16))
  {
    v15 = sub_100202D0C(UIApplicationOpenURLOptionsSourceApplicationKey);
    if (v16)
    {
      sub_10001B944(*(a2 + 56) + 32 * v15, v64);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v18 = v62;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v63;
      }

      else
      {
        v19 = 0;
      }

      v55 = v19;
      v56 = v18;
      if (!*(a2 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v55 = 0;
      v56 = 0;
      if (!*(a2 + 16))
      {
        goto LABEL_16;
      }
    }

    v20 = sub_100202D0C(UIApplicationOpenURLOptionsAnnotationKey);
    if (v21)
    {
      sub_10001B944(*(a2 + 56) + 32 * v20, v64);
      sub_100168088(&qword_100574880);
      if (swift_dynamicCast())
      {
        v22 = v62;
        goto LABEL_17;
      }
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

LABEL_16:
  v22 = 0;
LABEL_17:
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v25(v14, 1, 1, v23);
  if (!v22)
  {
    v25(v12, 1, 1, v23);
    sub_100009104(v12, &qword_100574040);
    goto LABEL_34;
  }

  v52 = v14;
  v53 = v8;
  v54 = v3;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (*(v22 + 16))
  {
    v29 = v26;
    v51 = v5;

    v30 = sub_10000F9A8(v29, v28);
    v32 = v31;

    if (v32)
    {
      sub_10001B944(*(v22 + 56) + 32 * v30, v64);

      v33 = swift_dynamicCast();
      v25(v12, v33 ^ 1u, 1, v23);
      v34 = (*(v24 + 48))(v12, 1, v23);
      v8 = v53;
      if (v34 != 1)
      {
        v14 = v52;
        sub_100009104(v52, &qword_100574040);

        (*(v24 + 32))(v14, v12, v23);
        v25(v14, 0, 1, v23);
        v5 = v51;
        v3 = v54;
        goto LABEL_34;
      }

      sub_100009104(v12, &qword_100574040);
      v5 = v51;
      goto LABEL_26;
    }

    v5 = v51;
  }

  else
  {
  }

  v8 = v53;
  v25(v12, 1, 1, v23);
  sub_100009104(v12, &qword_100574040);
LABEL_26:
  v3 = v54;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v22 + 16))
  {
    v37 = sub_10000F9A8(v35, v36);
    v39 = v38;

    if (v39)
    {
      sub_10001B944(*(v22 + 56) + 32 * v37, v64);

      v40 = swift_dynamicCast();
      v14 = v52;
      if (v40)
      {
        v41 = v61;
        URL.init(string:)();

        sub_100009104(v14, &qword_100574040);
        sub_1001B8A3C(v41, v14);
      }

      v8 = v53;
      v3 = v54;
    }

    else
    {

      v8 = v53;
      v3 = v54;
      v14 = v52;
    }
  }

  else
  {

    v14 = v52;
  }

LABEL_34:
  v42 = v61;
  v43 = v59;
  (*(v24 + 16))(v61, v59, v23);
  v25(v42, 0, 1, v23);
  sub_1001BB0E0(v14, v57);
  sub_1001BB0E0(v42, v8);
  v44 = v58;
  MetricsActivity.PageReferrer.init(app:externalURL:openURL:)();
  sub_100009104(v42, &qword_100574040);
  type metadata accessor for MetricsActivity();
  v45 = static MetricsActivity.shared.getter();
  MetricsActivity.firstPageEventWithReferrer.setter();

  v46 = static MetricsActivity.shared.getter();
  MetricsActivity.beginActiveCrossfireReferral(_:)();

  v47 = static MetricsActivity.shared.getter();
  MetricsActivity.setupWidgetData(_:)();

  v48 = *(v3 + OBJC_IVAR____TtC8Podcasts11AppDelegate_objectGraph);

  LOBYTE(v47) = sub_1003023A0(v43, v48);

  (*(v60 + 8))(v44, v5);
  sub_100009104(v14, &qword_100574040);
  return v47 & 1;
}

uint64_t sub_100304FEC(uint64_t result)
{
  if ((result - 1) >= 0x12)
  {
  }

  return result;
}

uint64_t sub_100305000(uint64_t result)
{
  if (result != 19)
  {
    return sub_10002ACE0(result);
  }

  return result;
}

uint64_t sub_100305010@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();
  *a1 = result;
  return result;
}

void sub_100305090()
{
  v1 = *(type metadata accessor for AppEnterMetricsEvent.EnterKind() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MetricsPipeline() - 8);
  sub_10020AFD4(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_10030518C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10021A620;

  return sub_10030390C();
}

id sub_100305280()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(NSOperationQueue) init];
    [v3 setMaxConcurrentOperationCount:1];
    v4 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_100305300(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v36 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      static os_log_type_t.default.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v20 = a5;
      v21 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)();

      v22 = [objc_opt_self() sharedApplication];
      v23 = String._bridgeToObjectiveC()();
      v41 = sub_1003061EC;
      v42 = v6;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10000F038;
      v40 = &unk_1004ED0E8;
      v24 = _Block_copy(&aBlock);

      v25 = [v22 beginBackgroundTaskWithName:v23 expirationHandler:v24];
      _Block_release(v24);

      v6[7] = v25;
      sub_100305D20(v25, v36, v20);
    }

    else
    {
      v35 = v17;
      v27 = swift_allocObject();
      v34 = v12;
      v28 = v27;
      *(v27 + 16) = v36;
      *(v27 + 24) = a5;
      sub_100009F1C(0, &qword_1005729D0);

      v36 = static OS_dispatch_queue.main.getter();
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = swift_allocObject();
      v30[2] = a1;
      v30[3] = v29;
      v30[4] = a2;
      v30[5] = a3;
      v30[6] = sub_1003061B4;
      v30[7] = v28;
      v41 = sub_1003061C8;
      v42 = v30;
      aBlock = _NSConcreteStackBlock;
      v38 = 1107296256;
      v39 = sub_10000F038;
      v40 = &unk_1004ED0C0;
      v31 = _Block_copy(&aBlock);
      sub_1003061D8(a1, a2);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1001D293C();
      sub_100168088(&unk_100575CD0);
      sub_100182E30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = v36;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);

      (*(v34 + 8))(v14, v11);
      (*(v16 + 8))(v19, v35);
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v26 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    v36(1);
  }
}

void sub_100305820(uint64_t a1)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v2 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  v3 = [objc_opt_self() sharedApplication];
  [v3 endBackgroundTask:*(a1 + 56)];
}

uint64_t sub_1003058F4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(uint64_t))
{
  if ((a3 & 0x100) != 0)
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v7 = static OS_os_log.restore.getter();
    sub_100168088(&unk_100574670);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100400790;
    sub_100030C30();
    v9 = Error.localizedDescription.getter();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100022C18();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)();

    v6 = 0;
  }

  else
  {
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v5 = static OS_os_log.restore.getter();
    os_log(_:dso:log:_:_:)();

    v6 = 1;
  }

  return a4(v6);
}

uint64_t sub_100305A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v11 = static OS_os_log.restore.getter();
  sub_100168088(&unk_100574670);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100400790;
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  *(v12 + 32) = a1;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = a5;
    v14[5] = a6;

    sub_1001FDE18(a1, sub_1003061F4, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100305C30(char a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v9 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  return a2((a1 & 1) == 0, a4, a5);
}

void sub_100305D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  v9 = swift_allocObject();
  *(v9 + 2) = v4;
  *(v9 + 3) = a2;
  *(v9 + 4) = a3;
  *(v9 + 5) = a1;
  v10 = sub_100168088(&qword_100574420);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[*((swift_isaMask & *v11) + 0x180)];
  *v12 = 0;
  v12[8] = 2;
  v13 = &v11[*((swift_isaMask & *v11) + 0x188)];
  *v13 = sub_100306190;
  v13[1] = v9;
  v19.receiver = v11;
  v19.super_class = v10;

  v14 = objc_msgSendSuper2(&v19, "init");
  v15 = sub_100305280();
  sub_100168088(&unk_100574680);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1004007B0;
  *(v16 + 32) = v14;
  sub_100009F1C(0, &unk_10057A6A0);
  v17 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 addOperations:isa waitUntilFinished:{0, v19.receiver, v19.super_class}];
}

uint64_t sub_100305F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a7;

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v11 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  sub_10027A0B4(0, sub_10030619C, v10);
}

void sub_100306030(uint64_t a1, uint64_t a2, __int16 a3, void (*a4)(BOOL), uint64_t a5, uint64_t a6)
{
  a4((a3 & 0x100) == 0);
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v7 = static OS_os_log.restore.getter();
  os_log(_:dso:log:_:_:)();

  if (UIBackgroundTaskInvalid != a6)
  {
    v8 = [objc_opt_self() sharedApplication];
    [v8 endBackgroundTask:a6];
  }
}

uint64_t sub_100306140()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1003061D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t CarPlayBootstrap.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t CarPlayBootstrap.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_100306240()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_100306298();
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100306298()
{
  v0 = qword_100593598;
  if (qword_100593598)
  {
    v1 = qword_100593598;
  }

  else
  {
    v2 = [objc_allocWithZone(type metadata accessor for AppDelegate()) init];
    v1 = v2;
    if (!qword_100593598)
    {
      qword_100593598 = v2;
      v1 = v2;
    }
  }

  v3 = objc_opt_self();
  v4 = v0;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (v6)
  {
    if ([v6 respondsToSelector:"window"])
    {
      v7 = [v6 window];
      swift_unknownObjectRelease();
      if (v7)
      {
        v8 = sub_10001DB48();
        [v7 setRootViewController:v8];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v1;
}

uint64_t sub_1003063C4@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v78 = type metadata accessor for PlayQueueItemActionImplementation();
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100168088(&qword_10057AC60);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = v69 - v2;
  v72 = sub_100168088(&qword_10057AC68);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = v69 - v3;
  v4 = sub_100168088(&qword_10057AC70);
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v69 - v5;
  v7 = sub_100168088(&qword_10057AB40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = v69 - v11;
  __chkstk_darwin(v12);
  v98 = v69 - v13;
  __chkstk_darwin(v14);
  v97 = v69 - v15;
  __chkstk_darwin(v16);
  v87 = v69 - v17;
  __chkstk_darwin(v18);
  v86 = v69 - v19;
  __chkstk_darwin(v20);
  v96 = v69 - v21;
  __chkstk_darwin(v22);
  v95 = v69 - v23;
  __chkstk_darwin(v24);
  v94 = v69 - v25;
  __chkstk_darwin(v26);
  v88 = v69 - v27;
  __chkstk_darwin(v28);
  v89 = v69 - v29;
  __chkstk_darwin(v30);
  v90 = v69 - v31;
  __chkstk_darwin(v32);
  v92 = v69 - v33;
  __chkstk_darwin(v34);
  v93 = v69 - v35;
  __chkstk_darwin(v36);
  v38 = v69 - v37;
  __chkstk_darwin(v39);
  v41 = v69 - v40;
  __chkstk_darwin(v42);
  v44 = v69 - v43;
  v85 = v69 - v43;
  v100[3] = type metadata accessor for SyncTaskScheduler();
  v100[4] = &protocol witness table for SyncTaskScheduler;
  sub_10000E680(v100);
  SyncTaskScheduler.init()();
  v45 = type metadata accessor for BaseObjectGraph();
  ClosureActionImplementation.init(scheduler:)();
  ActionDispatcher.init()();
  v69[0] = *(v8 + 16);
  (v69[0])(v44, v41, v7);
  sub_100009FAC(&qword_10057ADE0, &qword_10057AC70);
  ActionDispatcher.add<A>(_:)();
  v46 = *(v8 + 8);
  v81 = v8 + 8;
  v46(v41, v7);
  (*(v70 + 8))(v6, v4);
  v47 = v71;
  CompoundActionImplementation.init()();
  ActionDispatcher.init()();
  v84 = v41;
  v48 = v69[0];
  (v69[0])(v41, v38, v7);
  sub_100009FAC(&qword_10057ADE8, &qword_10057AC68);
  v49 = v72;
  ActionDispatcher.add<A>(_:)();
  v50 = v38;
  v51 = v81;
  v46(v38, v7);
  (*(v73 + 8))(v47, v49);
  v52 = v74;
  EmptyActionImplementation.init()();
  v53 = v93;
  ActionDispatcher.init()();
  v83 = v50;
  (v48)(v50, v53, v7);
  sub_100009FAC(&qword_10057ADF0, &qword_10057AC60);
  v54 = v75;
  ActionDispatcher.add<A>(_:)();
  v55 = v53;
  v46(v53, v7);
  (*(v76 + 8))(v52, v54);
  v56 = v92;
  ActionDispatcher.init()();
  (v48)(v55, v56, v7);
  sub_1001BB014();
  ActionDispatcher.add<A>(_:)();
  v57 = v56;
  v46(v56, v7);
  v58 = v90;
  ActionDispatcher.init()();
  (v48)(v57, v58, v7);
  sub_1002033F8();
  ActionDispatcher.add<A>(_:)();
  v59 = v58;
  v46(v58, v7);
  v60 = v89;
  v82 = v45;
  ActionDispatcher.init()();
  (v48)(v59, v60, v7);
  sub_1003082B4();
  ActionDispatcher.add<A>(_:)();
  v46(v60, v7);
  v61 = v88;
  ActionDispatcher.init()();
  (v48)(v60, v61, v7);
  sub_10029072C();
  ActionDispatcher.add<A>(_:)();
  v46(v61, v7);
  sub_100168088(&qword_10057AE00);
  sub_100009FAC(&qword_10057AE08, &qword_10057AE00);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE10);
  sub_100009FAC(&qword_10057AE18, &qword_10057AE10);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE20);
  sub_100009FAC(&qword_10057AE28, &qword_10057AE20);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE30);
  sub_100009FAC(&qword_10057AE38, &qword_10057AE30);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  v62 = v77;
  PlayQueueItemActionImplementation.init()();
  v63 = v87;
  ActionDispatcher.init()();
  (v48)(v86, v63, v7);
  sub_100308308();
  v64 = v78;
  ActionDispatcher.add<A>(_:)();
  v46(v63, v7);
  (*(v79 + 8))(v62, v64);
  sub_100168088(&qword_10057AE48);
  sub_100009FAC(&qword_10057AE50, &qword_10057AE48);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE58);
  sub_100009FAC(&qword_10057AE60, &qword_10057AE58);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE68);
  sub_100009FAC(&qword_10057AE70, &qword_10057AE68);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057AE78);
  sub_100009FAC(&qword_10057AE80, &qword_10057AE78);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057E9F0);
  sub_100009FAC(&qword_10057E9F8, &qword_10057E9F0);
  static ActionDispatcher.Builder<>.buildExpression<A>(_:)();
  sub_100168088(&qword_10057ADF8);
  v65 = *(v51 + 64);
  v66 = (*(v51 + 72) + 32) & ~*(v51 + 72);
  v79 = swift_allocObject();
  v67 = v79 + v66;
  (v48)(v79 + v66, v85, v7);
  (v48)(v67 + v65, v84, v7);
  v76 = 2 * v65;
  (v48)(v67 + 2 * v65, v83, v7);
  v78 = 3 * v65;
  (v48)(v67 + 3 * v65, v93, v7);
  (v48)(v67 + 4 * v65, v92, v7);
  v77 = 5 * v65;
  (v48)(v67 + 5 * v65, v90, v7);
  v75 = v67 + 6 * v65;
  v48();
  v74 = 7 * v65;
  (v48)(v67 + 7 * v65, v88, v7);
  (v48)(v67 + 8 * v65, v94, v7);
  v73 = 9 * v65;
  (v48)(v67 + 9 * v65, v95, v7);
  v72 = v67 + 10 * v65;
  v48();
  v71 = (v67 + 11 * v65);
  v48();
  v70 = v67 + 12 * v65;
  v48();
  v69[3] = v67 + 13 * v65;
  v48();
  v69[2] = v67 + 14 * v65;
  v48();
  v69[1] = 16 * v65;
  (v48)(v67 + 15 * v65, v99, v7);
  (v48)(v67 + 16 * v65, v91, v7);
  ActionDispatcher.init()();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  ActionDispatcher.add(contentsOf:)();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46(v91, v7);
  v46(v99, v7);
  v46(v98, v7);
  v46(v97, v7);
  v46(v87, v7);
  v46(v86, v7);
  v46(v96, v7);
  v46(v95, v7);
  v46(v94, v7);
  v46(v88, v7);
  v46(v89, v7);
  v46(v90, v7);
  v46(v92, v7);
  v46(v93, v7);
  v46(v83, v7);
  v46(v84, v7);
  return (v46)(v85, v7);
}

uint64_t sub_100307584(uint64_t a1)
{
  v38 = a1;
  v44 = *v1;
  v2 = sub_100168088(&qword_10057AB40);
  v42 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v36 - v5;
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for OSSignpostID();
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  static OSSignposter.bootstrap.getter();
  OSSignposter.logHandle.getter();
  v19 = v18;
  OSSignpostID.init(log:)();
  v20 = *(v7 + 8);
  v36 = v6;
  v20(v12, v6);
  static OSSignposter.bootstrap.getter();
  v21 = OSSignposter.logHandle.getter();
  v22 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v23 = swift_slowAlloc();
    v37 = v13;
    v24 = v23;
    *v23 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v25, "CarPlayBootstrap", "", v24, 2u);
    v13 = v37;
  }

  v26 = v43;
  v27 = *(v43 + 16);
  v39 = v19;
  v27(v15, v19, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v37 = OSSignpostIntervalState.init(id:isOpen:)();
  v20(v9, v36);
  v28 = sub_100306240();

  sub_100009F1C(0, &qword_100575D00);
  v45 = v38;
  BaseObjectGraph.satisfying<A>(_:with:)();

  BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100168088(&qword_10057DDA0);
  v29 = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  v45 = v29;
  BaseObjectGraph.satisfying<A>(_:with:)();

  v30 = v40;
  sub_1003063C4(v40);
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  v32 = v41;
  v31 = v42;
  (*(v42 + 16))(v41, v30, v2);
  ActionDispatcher.targetQueue.setter();
  v33 = *(v31 + 8);
  v33(v30, v2);
  BaseObjectGraph.satisfying<A>(_:with:)();

  v33(v32, v2);
  sub_100168088(&qword_10057A160);
  *(swift_allocObject() + 16) = v44;
  BaseObjectGraph.satisfying<A>(_:with:)();

  type metadata accessor for FreezableContentSubject();
  swift_allocObject();
  v45 = FreezableContentSubject.init(initialState:)();
  v34 = BaseObjectGraph.satisfying<A>(_:with:)();

  sub_100307BA4("CarPlayBootstrap", 16, 2);

  (*(v26 + 8))(v39, v13);
  return v34;
}

uint64_t sub_100307BA4(const char *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v27 = a1;
  v3 = type metadata accessor for OSSignpostError();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.bootstrap.getter();
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v23 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v10;
  if ((v26 & 1) == 0)
  {
    if (v27)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      v17 = v24;
      v16 = v25;
      if ((*(v24 + 88))(v5, v25) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v5, v16);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v23, v20, v27, v18, v19, 2u);

      v10 = v22;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v27 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v27 & 0xFFFFF800) != 0xD800)
  {
    if (v27 >> 16 <= 0x10)
    {
      v27 = &v28;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100307EE8(double *a1@<X8>)
{
  sub_100009F1C(0, &qword_100575D00);
  BaseObjectGraph.inject<A>(_:)();
  v2 = [v6 carTraitCollection];
  [v2 displayScale];
  v4 = v3;

  v5 = 2.0;
  if (v4 > 0.0)
  {
    v5 = v4;
  }

  *a1 = v5;
}

uint64_t sub_100307F90@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NativeIntentDispatcher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_10057A160);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  NativeIntentDispatcher.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_10000E680(a1);
  (*(v3 + 16))();
  sub_1003081DC(v8, v7);
  NativeIntentDispatcher.next.setter();
  (*(v3 + 8))(v5, v2);
  return sub_10030824C(v8);
}

uint64_t CarPlayBootstrap.start(with:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = sub_100307584(a1);
    *(v1 + 16) = v2;
  }

  return v2;
}

uint64_t CarPlayBootstrap.deinit()
{

  return v0;
}

uint64_t CarPlayBootstrap.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003081DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057AEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030824C(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057AEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003082B4()
{
  result = qword_10057E9E8;
  if (!qword_10057E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E9E8);
  }

  return result;
}

unint64_t sub_100308308()
{
  result = qword_10057AE40;
  if (!qword_10057AE40)
  {
    type metadata accessor for PlayQueueItemActionImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057AE40);
  }

  return result;
}

uint64_t sub_100308360()
{

  v1 = OBJC_IVAR____TtC8Podcasts28PlayNextPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayNextPodcastContextAction()
{
  result = qword_10057EA28;
  if (!qword_10057EA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100308468()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_100308514@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28PlayNextPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10030858C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playPodcastNext(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100308664(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1003086C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_100308724(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100308784(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100318730(a1, WitnessTable);
}

uint64_t sub_1003087D8(uint64_t a1)
{
  result = sub_1003088A4(&qword_10057EB20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10030881C(uint64_t a1)
{
  result = sub_1003088A4(&qword_10057EB28);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100308860(uint64_t a1)
{
  result = sub_1003088A4(&unk_10057EB30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003088A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayNextPodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100308914()
{
  result = qword_10057EBE0;
  if (!qword_10057EBE0)
  {
    type metadata accessor for PlayStationIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EBE0);
  }

  return result;
}

uint64_t sub_10030896C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for TaskPriority();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackController();
  v6 = swift_task_alloc();
  v3[10] = v6;
  *v6 = v3;
  v6[1] = sub_100308A80;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v5, v5);
}

uint64_t sub_100308A80()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100308F38;
  }

  else
  {
    v2 = sub_100308B94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100308B94()
{
  v1 = v0[4];
  v2 = v0[2];
  v0[12] = v2;
  *v1 = v2;
  v3 = sub_100168088(&unk_1005738E0);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100308C60;

  return BaseObjectGraph.inject<A>(_:)(v0 + 3, v3, v3);
}

uint64_t sub_100308C60()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100308FDC;
  }

  else
  {
    v2 = sub_100308D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100308D74()
{
  v1 = v0[14];
  swift_getObjectType();
  j___sScTss5NeverORszABRs_rlE15currentPriorityScPvgZ();
  v2 = NSManagedObjectContextProvider.managedObjectContext(for:)();
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  if (v1)
  {
    swift_unknownObjectRelease();

    v7 = type metadata accessor for PlayStationIntent();
    (*(*(v7 - 8) + 8))(v5, v7);
    (*(v4 + 8))(v3, v6);
  }

  else
  {
    v9 = v2;
    v10 = v0[4];
    (*(v4 + 8))(v0[9], v0[7]);
    swift_unknownObjectRelease();

    *(v10 + 8) = v9;
    v11 = *(type metadata accessor for PlayStationIntentImplementation() + 24);
    v12 = type metadata accessor for PlayStationIntent();
    (*(*(v12 - 8) + 32))(v10 + v11, v5, v12);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100308F38()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for PlayStationIntent();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100308FDC()
{
  v1 = *(v0 + 48);

  v2 = type metadata accessor for PlayStationIntent();
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100309088()
{
  v1[2] = v0;
  sub_100168088(&unk_100573A80);
  v1[3] = swift_task_alloc();
  sub_100168088(&qword_10057EBF0);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for MediaIdentifier();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for PlaybackIntent();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = type metadata accessor for StationEntity();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10030927C, 0, 0);
}

uint64_t sub_10030927C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  type metadata accessor for PlayStationIntentImplementation();
  PlayStationIntent.station.getter();
  v4 = StationEntity.uuid.getter();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[13];
    v9 = v0[11];
    PlayStationIntent.station.getter();
    v10 = StationEntity.objectID.getter();
    v0[15] = v10;
    v7(v8, v9);
    if (v10)
    {
      v11 = v0[4];
      PlayStationIntent.firstEpisode.getter();
      v12 = type metadata accessor for EpisodeEntity();
      v13 = *(v12 - 8);
      v14 = (*(v13 + 48))(v11, 1, v12);
      v15 = v0[4];
      if (v14 == 1)
      {
        sub_100309A04(v0[4]);
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = EpisodeEntity.uuid.getter();
        v17 = v21;
        (*(v13 + 8))(v15, v12);
      }

      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v25 = v0[3];
      *v23 = v4;
      v23[1] = v6;
      v23[2] = v16;
      v23[3] = v17;
      (*(v22 + 104))(v23, enum case for MediaIdentifier.station(_:), v24);
      v26 = type metadata accessor for EpisodeListSettings();
      (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
      static Set<>.default.getter();
      PlaybackIntent.init(id:baseListSettings:options:)();
      v27 = swift_task_alloc();
      v0[16] = v27;
      *v27 = v0;
      v27[1] = sub_1003095B4;
      v28 = v0[10];

      return PlaybackController.performIntent(_:whenPossible:)(v28, 0);
    }
  }

  sub_1003099B0();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_1003095B4(void *a1)
{
  *(*v2 + 136) = v1;

  if (v1)
  {
    v4 = sub_1003097A4;
  }

  else
  {

    v4 = sub_1003096D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003096D0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1003097A4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100309874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10021A620;

  return sub_10030896C(a1, a2, a3);
}

uint64_t sub_100309924()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_100309088();
}

unint64_t sub_1003099B0()
{
  result = qword_10057EBF8;
  if (!qword_10057EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EBF8);
  }

  return result;
}

uint64_t sub_100309A04(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057EBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100309A80()
{
  result = qword_10057EC08;
  if (!qword_10057EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057EC08);
  }

  return result;
}

id AccessAppDelegate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessAppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100309B78(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_100309D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedApplication];
  v5 = [v4 delegate];

  if (!v5)
  {
    goto LABEL_7;
  }

  if (([v5 respondsToSelector:"window"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v5 window];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_7:

    return 0;
  }

  v7 = [v6 rootViewController];

  result = 0;
  if (v7)
  {
    type metadata accessor for NowPlayingTabController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100309EA4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  sub_10016A31C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 openURL:v7 options:isa completionHandler:0];

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10030A104(void *a1, char a2)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v4 = type metadata accessor for FlowDestinationPageHeader();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin();
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowPresentationContext();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = v30 - v10;
  v11 = type metadata accessor for FlowDestination();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_10057BC40);
  if ((static UITraitCollection.interfaceIdiomIsMac.getter() & 1) == 0)
  {
    type metadata accessor for FlowAction();
    (*(v7 + 104))(v9, enum case for FlowPresentationContext.showDetail(_:), v6);
    v27 = FlowAction.init(station:presentationContext:)(a1, v9);
    if (!v27)
    {
      v28 = _swiftEmptyArrayStorage;
      v17 = 7;
      goto LABEL_14;
    }

    v26 = v27;
    v17 = 7;
    goto LABEL_11;
  }

  type metadata accessor for StationDetail();
  v15 = a1;
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  if (result)
  {
    v17 = result;

    if ((a2 & 1) == 0)
    {
      v28 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v18 = StationDetail.uuid.getter();
    v20 = v19;

    *v14 = v18;
    v14[1] = v20;
    (*(v12 + 104))(v14, enum case for FlowDestination.stationSettings(_:), v11);
    v21 = [objc_opt_self() mainBundle];
    v37._object = 0xE000000000000000;
    v22._object = 0x800000010046F680;
    v22._countAndFlagsBits = 0xD000000000000010;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    v30[1] = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v37)._countAndFlagsBits;

    (*(v7 + 104))(v31, enum case for FlowPresentationContext.presentModalFormSheet(_:), v6);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    LOBYTE(v18) = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v18;
    v25 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v25;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v18)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v25)
    {
      Link.Presentation.init(rawValue:)();
    }

    (*(v32 + 104))(v34, enum case for FlowDestinationPageHeader.standard(_:), v33);
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v26 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
LABEL_11:
    sub_100168088(&unk_100574680);
    v28 = swift_allocObject();
    *(v28 + 1) = xmmword_1004007B0;
    v28[4] = v26;
LABEL_14:
    sub_1001A5564(v28);

    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v29 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    memset(v36, 0, sizeof(v36));
    sub_10030CDE8(v29, v36, 0, v35, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

    sub_10002ACE0(v17);
    return sub_100009104(v36, &unk_1005783D0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030AA54()
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  sub_100004428(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits, &v5);
  v1 = *(&v6 + 1);
  v2 = v7;
  sub_1000044A0(&v5, *(&v6 + 1));
  (*(v2 + 16))(v1, v2);
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  sub_100004590(&v5);
  v5 = 0u;
  v6 = 0u;

  sub_10030CDE8(v3, &v5, 0, v0, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  sub_100009104(&v5, &unk_1005783D0);
}

uint64_t sub_10030ACC4(void *a1)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v2 = a1;
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v3 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  memset(v5, 0, sizeof(v5));
  sub_10030CDE8(v3, v5, 0, v2, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  sub_100009104(v5, &unk_1005783D0);
}

uint64_t sub_10030B1AC()
{
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin();
  v1 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  sub_100009F1C(0, &qword_1005729D0);
  v23 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v15 = *(v10 + 8);
  v15(v12, v9);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v24;
  aBlock[4] = sub_10030D3D4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004ED4A8;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v23;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v1, v20);
  (*(v26 + 8))(v4, v27);
  return (v15)(v14, v9);
}

void sub_10030B614(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    goto LABEL_10;
  }

  if (([v6 respondsToSelector:"window"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v7 = [v6 window];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_10:

LABEL_12:
    sub_10030B8A0();
    return;
  }

  v8 = [v7 rootViewController];

  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = [v8 presentedViewController];

  if (!v9)
  {
    goto LABEL_12;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    goto LABEL_12;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v10 = static OS_os_log.iTunesMigration.getter();
  os_log(_:dso:log:_:_:)();

  swift_getObjectType();
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  dispatch thunk of UserAcknowledgementRequiring.deferUntilAcknowledged(_:)();
}

void sub_10030B8A0()
{
  v1 = type metadata accessor for FlowPresentationContext();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowPresentationHints();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled) = 0;
    (*(v10 + 104))(v13, enum case for FlowDestination.migration(_:), v9, v11);
    (*(v2 + 104))(v4, enum case for FlowPresentationContext.presentModalCard(_:), v1);
    FlowPresentationHints.init(context:animate:)();
    static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v15 = v0;
    v16 = static OS_os_log.iTunesMigration.getter();
    os_log(_:dso:log:_:_:)();

    v17 = *(v15 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 sharedApplication];
    v21 = [v20 delegate];

    if (v21)
    {
      if (([v21 respondsToSelector:"window"] & 1) == 0)
      {

LABEL_13:
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v22 = [v21 window];
      swift_unknownObjectRelease();
      if (v22)
      {
        v23 = [v22 rootViewController];

        if (!v23)
        {
          goto LABEL_14;
        }

        v24 = UIResponder.nearestFlowController.getter();

        if (!v24)
        {
          goto LABEL_14;
        }

        swift_getObjectType();
        dispatch thunk of FlowController.show(destination:hints:referrer:)();
        goto LABEL_13;
      }
    }

LABEL_14:
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v13, v9);
    return;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v26 = static OS_os_log.iTunesMigration.getter();
  os_log(_:dso:log:_:_:)();
  v14 = v26;
}

void sub_10030BCF8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v33 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v35 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v0[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled] = 1;
  v12 = *&v0[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate];
  v13 = objc_opt_self();
  v36 = v12;
  v14 = [v13 sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
LABEL_9:
    v28 = v36;

    return;
  }

  if ([v15 respondsToSelector:"window"])
  {
    v16 = [v15 window];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [v16 rootViewController];

      if (!v17)
      {
        return;
      }

      v36 = [v17 presentedViewController];

      if (!v36)
      {
        return;
      }

      type metadata accessor for MigrationViewController();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = v18;
        v30 = v0;
        dispatch thunk of MigrationViewController.isAcknowledgementRequired.setter();
        static os_log_type_t.default.getter();
        sub_100009F1C(0, &qword_1005748A0);
        v20 = static OS_os_log.iTunesMigration.getter();
        os_log(_:dso:log:_:_:)();

        sub_100009F1C(0, &qword_1005729D0);
        v31 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v21 = *(v35 + 8);
        v35 += 8;
        v32 = v21;
        v21(v9, v7);
        v22 = swift_allocObject();
        v23 = v30;
        *(v22 + 16) = v30;
        *(v22 + 24) = v19;
        aBlock[4] = sub_10030CDE0;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F038;
        aBlock[3] = &unk_1004ED458;
        v24 = _Block_copy(aBlock);
        v25 = v23;
        v26 = v36;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
        sub_100168088(&unk_100575CD0);
        sub_100182E30();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v27 = v31;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v24);

        (*(v34 + 8))(v3, v1);
        (*(v33 + 8))(v6, v4);
        v32(v11, v7);
        return;
      }
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10030C2C0(uint64_t a1, void *a2)
{
  v4 = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v4)
  {
    Link.Presentation.init(rawValue:)();
  }

  type metadata accessor for DismissAction();
  swift_allocObject();
  v5 = DismissAction.init(title:animationBehavior:presentationStyle:)();
  v8[3] = type metadata accessor for MigrationViewController();
  v6 = [a2 view];
  sub_10030CDE8(v5, v8, v6, a1, &type metadata accessor for DismissAction, &qword_10057EEC8, &type metadata accessor for DismissAction);

  return sub_100009104(v8, &unk_1005783D0);
}

uint64_t sub_10030C448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin();
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057EEB8);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static UTType.folder.getter();
  v14 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initForOpeningContentTypes:isa];

  [v16 setDelegate:v3];
  [v16 setAllowsMultipleSelection:0];
  v17 = &v3[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection];
  v18 = *&v3[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection];
  *v17 = v25;
  *(v17 + 1) = a2;

  sub_1000112B4(v18);
  sub_100009F1C(0, &qword_1005729D0);
  v19 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v16;
  aBlock[4] = sub_10030CDD8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004ED408;
  v21 = _Block_copy(aBlock);
  v22 = v3;
  v23 = v16;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E584(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);
  return (*(v26 + 8))(v13, v27);
}

void sub_10030C8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v4 = objc_opt_self();
  v10 = v3;
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    goto LABEL_6;
  }

  if ([v6 respondsToSelector:"window"])
  {
    v7 = [v6 window];
    swift_unknownObjectRelease();
    if (v7)
    {
      v9 = [v7 rootViewController];

      if (!v9)
      {
        return;
      }

      [v9 presentViewController:a2 animated:1 completion:0];
      v8 = v9;
      goto LABEL_7;
    }

LABEL_6:
    v8 = v10;
LABEL_7:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_10030CAF0(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v5 = &v11 - v4;
  sub_1001BB0E0(a1, &v11 - v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = 0;
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(v7 + 8))(v5, v6);
  }

  (*(a2 + 16))(a2, v9);
}

id sub_10030CD40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10030CDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, void (*a7)(uint64_t))
{
  v41 = a3;
  v42 = a4;
  v40 = a2;
  v11 = type metadata accessor for ActionOutcome();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin();
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin();
  v13 = type metadata accessor for OSLogger();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin();
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetricsBehavior();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057BB60);
  v20 = __chkstk_darwin();
  v22 = &v34 - v21;
  v45 = a5(0, v20);
  v23 = sub_10000E584(a6, a7);
  v24 = *(v42 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate);
  v46 = v23;
  v44[0] = a1;
  if (*(v24 + OBJC_IVAR____TtC8Podcasts11AppDelegate_urlActionRunner))
  {
    type metadata accessor for ActionRunnerOptions();
    swift_retain_n();

    swift_unknownObjectRetain();
    BaseObjectGraph.__allocating_init(_:)();
    v25 = type metadata accessor for InteractionContext();
    (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
    ActionRunnerOptions.withActionOrigin(context:sender:view:)();

    sub_100009104(v22, &unk_10057BB60);
    swift_getObjectType();
    (*(v17 + 104))(v19, enum case for ActionMetricsBehavior.fromAction(_:), v16);
    v26 = ActionRunner.perform(_:withMetrics:asPartOf:)();

    swift_unknownObjectRelease();

    (*(v17 + 8))(v19, v16);
  }

  else
  {

    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v27._object = 0x800000010046F5B0;
    v27._countAndFlagsBits = 0xD000000000000012;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    v28 = v45;
    v29 = sub_1000044A0(v44, v45);
    v43[3] = v28;
    v30 = sub_10000E680(v43);
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    LogMessage.StringInterpolation.appendInterpolation(sensitive:)();
    sub_100009104(v43, &unk_1005783D0);
    v31._countAndFlagsBits = 0xD00000000000001ALL;
    v31._object = 0x800000010046CEC0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v31);
    LogMessage.init(stringInterpolation:)();
    v32 = v36;
    Logger.error(_:)();

    (*(v35 + 8))(v15, v32);
    sub_100168088(&unk_100578110);
    (*(v38 + 104))(v37, enum case for ActionOutcome.unsupported(_:), v39);
    v26 = Promise.__allocating_init(value:)();
  }

  sub_100004590(v44);
  return v26;
}

void sub_10030D400()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v14 - v4;
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() searchUrlForSearchText:v7];

  if (v8)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v5, v3, v0);
    v9 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    sub_10016A31C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10000E584(&qword_100573120, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openURL:v12 options:isa completionHandler:0];

    (*(v1 + 8))(v5, v0);
  }
}

uint64_t sub_10030D638()
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v0 = type metadata accessor for FlowDestinationPageHeader();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowPresentationContext();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FlowDestination();
  v8 = __chkstk_darwin();
  (*(v10 + 104))(v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowDestination.downloadingEpisodes(_:), v8);
  (*(v5 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v4);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v12 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v12;
  v13 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v13;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v12)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v13)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v1 + 104))(v3, enum case for FlowDestinationPageHeader.standard(_:), v0);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v14 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  memset(v17, 0, sizeof(v17));
  sub_10030CDE8(v14, v17, 0, v16[1], &type metadata accessor for FlowAction, &unk_10057A0D0, &type metadata accessor for FlowAction);

  return sub_100009104(v17, &unk_1005783D0);
}

uint64_t sub_10030D9F8(void (*a1)(char *, void, uint64_t), void *a2, int a3)
{
  v46 = a3;
  v42 = a1;
  v5 = type metadata accessor for FlowDestinationPageHeader();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin();
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FlowPresentationContext();
  v9 = *(v51 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v11;
  v50 = v8;
  if (a2 && (v19 = [a2 uuid]) != 0)
  {
    v20 = v19;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v48 = 0;
    v22 = 0;
  }

  v47 = v3;
  sub_100168088(&unk_10057AB00);

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(&v53, *(&v54 + 1));
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  sub_100004590(&v53);
  if (v22)
  {
    LOBYTE(v53) = 1;
    v52 = 1;
    *v18 = v48;
    *(v18 + 1) = v22;
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    *(v18 + 2) = 0;
    v18[40] = 1;
    *(v18 + 6) = 0;
    v18[56] = 1;
    (*(v15 + 104))(v18, enum case for FlowDestination.episodeDetails(_:), v14);
    v23 = *(v9 + 104);
    v23(v13, enum case for FlowPresentationContext.infer(_:), v51);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v25 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v25;
    v26 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v26;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v25)
    {
      Link.Presentation.init(rawValue:)();
    }

    v42 = v23;

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v26)
    {
      Link.Presentation.init(rawValue:)();
    }

    v27 = v49;
    (*(v43 + 104))(v45, enum case for FlowDestinationPageHeader.standard(_:), v44);
    static ActionMetrics.notInstrumented.getter();
    v28 = type metadata accessor for FlowAction();
    swift_allocObject();
    v29 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    if (v46)
    {
      v30 = objc_opt_self();
      v31 = String._bridgeToObjectiveC()();
      v32 = [v30 playEpisodeUuid:v31];

      v33 = v51;
      if (!v32)
      {
      }

      v34 = [objc_opt_self() defaultInstance];
      [v34 playManifest:v32 reason:3];

      v42(v27, enum case for FlowPresentationContext.showDetail(_:), v33);
      goto LABEL_17;
    }

    v35 = v42;
    v36 = v51;
  }

  else
  {
    v28 = type metadata accessor for FlowAction();
    v35 = *(v9 + 104);
    v27 = v49;
    v36 = v51;
    v35(v49, enum case for FlowPresentationContext.infer(_:), v51);
    v37 = v42;
    v38 = v50;
    static ActionMetrics.notInstrumented.getter();
    result = FlowAction.init(podcast:presentationContext:actionMetrics:)(v37, v27, v38);
    if (!result)
    {
      return result;
    }

    v29 = result;
  }

  v35(v27, enum case for FlowPresentationContext.showDetail(_:), v36);
LABEL_17:
  dispatch thunk of FlowAction.presentationContext.setter();
  sub_100168088(&unk_1005747F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100400790;
  type metadata accessor for FlowAction();
  *(v40 + 56) = v28;
  *(v40 + 64) = sub_10000E584(&unk_10057A0D0, &type metadata accessor for FlowAction);
  *(v40 + 32) = v29;
  swift_retain_n();
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v41 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  v53 = 0u;
  v54 = 0u;
  sub_10030CDE8(v41, &v53, 0, v47, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  return sub_100009104(&v53, &unk_1005783D0);
}

void sub_10030E15C(char *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v45 = a5;
  LODWORD(v39) = a4;
  v48 = a2;
  v49 = a3;
  v40 = a1;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowDestinationPageHeader();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin();
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FlowPresentationContext();
  v10 = *(v47 - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = &v38 - v13;
  v14 = type metadata accessor for FlowDestination();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v5;
  sub_100168088(&unk_10057AB00);

  BaseObjectGraph.inject<A>(_:)();

  sub_1000044A0(&v51, *(&v52 + 1));
  dispatch thunk of EpisodeControllerProtocol.dismissNowPlaying(animated:completion:)();
  v18 = v49;
  sub_100004590(&v51);
  if (v18)
  {
    v40 = v12;
    LOBYTE(v51) = 1;
    v50 = 1;
    *v17 = v48;
    *(v17 + 1) = v18;
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    *(v17 + 2) = 0;
    v17[40] = 1;
    *(v17 + 6) = 0;
    v17[56] = 1;
    (*(v15 + 104))(v17, enum case for FlowDestination.episodeDetails(_:), v14);
    v19 = v47;
    v39 = *(v10 + 104);
    v39(v41, enum case for FlowPresentationContext.infer(_:), v47);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;

    v21 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v21;
    v22 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v22;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v21)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v22)
    {
      Link.Presentation.init(rawValue:)();
    }

    v12 = v40;
    (*(v42 + 104))(v44, enum case for FlowDestinationPageHeader.standard(_:), v43);
    static ActionMetrics.notInstrumented.getter();
    v23 = type metadata accessor for FlowAction();
    swift_allocObject();
    v24 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    if (v45)
    {
      v25 = objc_opt_self();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 playEpisodeUuid:v26];

      v28 = v39;
      if (!v27)
      {

        return;
      }

      v29 = [objc_opt_self() defaultInstance];
      [v29 playManifest:v27 reason:3];
    }

    else
    {
      v28 = v39;
    }

    goto LABEL_12;
  }

  v23 = type metadata accessor for FlowAction();
  v28 = *(v10 + 104);
  v19 = v47;
  v28(v12, enum case for FlowPresentationContext.infer(_:), v47);
  v30 = v40;
  static ActionMetrics.notInstrumented.getter();
  v31 = FlowAction.init(podcast:presentationContext:actionMetrics:)(v30, v12, v7);
  if (v31)
  {
    v24 = v31;
LABEL_12:
    v28(v12, enum case for FlowPresentationContext.showDetail(_:), v19);
    dispatch thunk of FlowAction.presentationContext.setter();
    sub_100168088(&unk_1005747F0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100400790;
    type metadata accessor for FlowAction();
    *(v32 + 56) = v23;
    *(v32 + 64) = sub_10000E584(&unk_10057A0D0, &type metadata accessor for FlowAction);
    *(v32 + 32) = v24;
    swift_retain_n();
    Link.Presentation.init(rawValue:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v33 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
    v51 = 0u;
    v52 = 0u;
    sub_10030CDE8(v33, &v51, 0, v46, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

    sub_100009104(&v51, &unk_1005783D0);
    return;
  }

  if (v39)
  {
    v34 = [objc_allocWithZone(MTEpisodeUnavailableUtil) init];
    v35 = [v30 title];
    if (v35)
    {
      v36 = v35;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v37 = String._bridgeToObjectiveC()();

    [v34 showDialogForReason:3 podcastTitle:v37 completion:0];
  }
}

void sub_10030E928()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    if ([v1 respondsToSelector:"window"])
    {
      v2 = [v1 window];
      swift_unknownObjectRelease();
      v1 = [v2 rootViewController];
    }

    else
    {
      swift_unknownObjectRelease();
      v1 = 0;
    }
  }

  v3 = [v1 tabBarController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 selectedViewController];
  if (!v5)
  {

LABEL_10:
    return;
  }

  v6 = v5;
  v7 = [v5 tabBarItem];

  if (v7)
  {
    [v7 tag];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10030EAA0(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  sub_100004428(v2 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits, &v9);
  v4 = *(&v10 + 1);
  v5 = v11;
  sub_1000044A0(&v9, *(&v10 + 1));
  (*(v5 + 16))(v4, v5);
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  sub_100004590(&v9);
  v9 = 0u;
  v10 = 0u;

  sub_10030CDE8(v6, &v9, 0, v2, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  v7 = sub_100009104(&v9, &unk_1005783D0);
  if (a2)
  {
    a2(v7);
  }
}