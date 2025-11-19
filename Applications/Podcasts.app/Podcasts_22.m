uint64_t sub_10030EC70(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v4 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  memset(v7, 0, sizeof(v7));
  sub_10030CDE8(v4, v7, 0, v2, &type metadata accessor for TabChangeAction, &qword_10057ADD0, &type metadata accessor for TabChangeAction);

  v5 = sub_100009104(v7, &unk_1005783D0);
  if (a2)
  {
    a2(v5);
  }
}

void sub_10030EFEC(uint64_t a1)
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v4 = &v17 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 16);
    v17(v9, v10, v5, v7);
    static os_log_type_t.default.getter();
    v18 = v1;
    sub_100009F1C(0, &qword_1005748A0);
    v11 = static OS_os_log.iTunesMigration.getter();
    sub_100168088(&unk_100574670);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100400790;
    v13 = URL.path.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100022C18();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    os_log(_:dso:log:_:_:)();

    v16 = *(v18 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection);
    if (v16)
    {
      (v17)(v4, v9, v5);
      (*(v6 + 56))(v4, 0, 1, v5);

      v16(v4);
      sub_1000112B4(v16);
      sub_100009104(v4, &qword_100574040);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_10030F298()
{
  v1 = v0;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v3 = &v7 - v2;
  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v4 = static OS_os_log.iTunesMigration.getter();
  os_log(_:dso:log:_:_:)();

  v5 = *(v1 + OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection);
  if (v5)
  {
    v6 = type metadata accessor for URL();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

    v5(v3);
    sub_1000112B4(v5);
    sub_100009104(v3, &qword_100574040);
  }
}

uint64_t sub_10030F434@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v53 - v6;
  v8 = type metadata accessor for PodcastsURLEpisodeParameters();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin();
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v53 - v10;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = type metadata accessor for CLSContextMetadata();
  v57 = *(v14 - 8);
  v58 = v14;
  __chkstk_darwin();
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v53 - v17;
  v19 = sub_1003107B8(&ServerPodcastBase.id.getter);
  if (v20 & 1) != 0 || ([objc_opt_self() isEmpty:v19])
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v63[0] = v25;
      *v24 = 136315138;
      v26 = ServerPodcastBase.id.getter();
      v28 = sub_1000153E0(v26, v27, v63);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Show has empty or invalid store ID - %s", v24, 0xCu);
      sub_100004590(v25);
    }

    (*(v3 + 8))(v5, v2);
    return (*(v57 + 56))(v59, 1, 1, v58);
  }

  if (!ServerPodcastBase.attributes.getter() || (v53 = PodcastAttributes.name.getter(), v31 = v30, , !v31))
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v43 = v1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v43;
      *v47 = v43;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find title for show - %@", v46, 0xCu);
      sub_100009104(v47, &qword_100575B20);
    }

    (*(v3 + 8))(v7, v2);
    return (*(v57 + 56))(v59, 1, 1, v58);
  }

  v32 = ServerPodcastBase.id.getter();
  v34 = v33;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v16[40] = 1;
  *(v16 + 6) = 0;
  v35 = v58;
  v36 = v58[9];
  v37 = type metadata accessor for URL();
  (*(*(v37 - 8) + 56))(&v16[v36], 1, 1, v37);
  v38 = &v16[v35[10]];
  *v38 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
  v38[1] = 0;
  *&v16[v35[11]] = 0;
  *v16 = 0;
  *(v16 + 1) = v32;
  v39 = v53;
  *(v16 + 2) = v34;
  *(v16 + 3) = v39;
  *(v16 + 4) = v31;
  sub_100310F08(v63, v60);
  v40 = v61;
  if (v61)
  {
    v41 = v62;
    sub_1000044A0(v60, v61);
    v42 = sub_1002267B4(v40, v41);
    sub_100009104(v63, &qword_1005785B0);
    sub_100004590(v60);
  }

  else
  {
    sub_100009104(v63, &qword_1005785B0);
    sub_100009104(v60, &qword_1005785B0);
    v42 = 0;
  }

  *&v16[v35[12]] = v42;
  sub_100310F78(v16, v18);
  v18[40] = 0;
  PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)();
  sub_1003107B8(&ServerPodcastBase.id.getter);
  PodcastsURLEpisodeParameters.storeCollectionId.setter();
  type metadata accessor for PodcastsURLScheme();
  v49 = v55;
  v50 = v56;
  (*(v55 + 16))(v54, v11, v56);
  type metadata accessor for PodcastsURLShowCommand();
  swift_allocObject();
  PodcastsURLShowCommand.init(params:)();
  static PodcastsURLScheme.buildURL(for:)();

  (*(v49 + 8))(v11, v50);
  sub_1001FDDA8(v13, &v18[v35[9]]);
  v51 = &v18[v35[10]];

  *v51 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
  v51[1] = 0;
  v52 = v59;
  sub_100310FDC(v18, v59);
  (*(v57 + 56))(v52, 0, 1, v35);
  return sub_100311040(v18);
}

void sub_10030FBBC(uint64_t a1@<X8>)
{
  v2 = dispatch thunk of ServerPodcastEpisode.relationships.getter();
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = PodcastEpisodeRelationships.podcast.getter();

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = PodcastRelationshipContainer.data.getter();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

LABEL_5:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_8:
    v7 = v6;

    *(a1 + 24) = type metadata accessor for ServerPodcastBase();
    *(a1 + 32) = &off_1004ED5C0;
    *a1 = v7;
    return;
  }

  __break(1u);
}

uint64_t sub_10030FCA4()
{
  result = dispatch thunk of ServerPodcastEpisode.relationships.getter();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = PodcastEpisodeRelationships.podcast.getter();

  if (!v2)
  {
    return 0;
  }

  v3 = PodcastRelationshipContainer.data.getter();

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_8:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030FD64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  __chkstk_darwin();
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v87 - v7;
  __chkstk_darwin();
  v10 = &v87 - v9;
  __chkstk_darwin();
  v89 = &v87 - v11;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v88 = &v87 - v12;
  v95 = type metadata accessor for CLSContextMetadata();
  v93 = *(v95 - 8);
  __chkstk_darwin();
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v87 - v15;
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v18 = &v87 - v17;
  v19 = type metadata accessor for Date();
  v90 = *(v19 - 8);
  __chkstk_darwin();
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1003107B8(&ServerPodcastEpisode.id.getter);
  if (v23 & 1) != 0 || ([objc_opt_self() isEmpty:v22])
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v24 = v1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v99[0] = v28;
      *v27 = 136315138;
      v29 = ServerPodcastEpisode.id.getter();
      v31 = sub_1000153E0(v29, v30, v99);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Episode has empty or invalid store ID - %s", v27, 0xCu);
      sub_100004590(v28);
    }

    (*(v92 + 8))(v6, v91);
    return (*(v93 + 56))(v94, 1, 1, v95);
  }

  v33 = sub_10030FCA4();
  if (!v33)
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v50 = v1;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v99[0] = v54;
      *v53 = 136315138;
      v55 = v50;
      v56 = [v55 description];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_1000153E0(v57, v59, v99);

      *(v53 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v51, v52, "Unable to find podcast for episode - %s", v53, 0xCu);
      sub_100004590(v54);
    }

    (*(v92 + 8))(v8, v91);
    return (*(v93 + 56))(v94, 1, 1, v95);
  }

  ServerPodcastEpisode.attributes.getter();
  v34 = PodcastEpisodeAttributes.name.getter();
  v36 = v35;

  if (!v36)
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v61 = v1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v99[0] = v42;
      *v41 = 136315138;
      v62 = v61;
      v63 = [v62 description];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      v67 = sub_1000153E0(v64, v66, v99);

      *(v41 + 4) = v67;
      v49 = "Unable to find title for episode - %s";
      goto LABEL_17;
    }

LABEL_18:

    (*(v92 + 8))(v10, v91);
    return (*(v93 + 56))(v94, 1, 1, v95);
  }

  ServerPodcastEpisode.attributes.getter();
  PodcastEpisodeAttributes.releaseDateResolved.getter();

  v37 = v90;
  if ((*(v90 + 48))(v18, 1, v19) == 1)
  {

    sub_100009104(v18, &qword_100574760);
    sub_1001FE728();
    v10 = v89;
    static OS_os_log.classKit.getter();
    v38 = v2;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v99[0] = v42;
      *v41 = 136315138;
      v43 = v38;
      v44 = [v43 description];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = sub_1000153E0(v45, v47, v99);

      *(v41 + 4) = v48;
      v49 = "Unable to resolve release date for episode - %s";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v39, v40, v49, v41, 0xCu);
      sub_100004590(v42);

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  (*(v37 + 32))(v21, v18, v19);
  v92 = ServerPodcastEpisode.id.getter();
  v69 = v68;
  sub_10030FBBC(v99);
  v14[40] = 1;
  *(v14 + 6) = 0;
  v70 = v95;
  v71 = *(v95 + 36);
  v72 = type metadata accessor for URL();
  (*(*(v72 - 8) + 56))(&v14[v71], 1, 1, v72);
  v73 = &v14[*(v70 + 40)];
  *v73 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
  v73[1] = 0;
  *&v14[*(v70 + 44)] = 0;
  *v14 = 14;
  *(v14 + 1) = v92;
  *(v14 + 2) = v69;
  *(v14 + 3) = v34;
  *(v14 + 4) = v36;
  sub_100310F08(v99, v96);
  v74 = v97;
  if (v97)
  {
    v75 = v98;
    sub_1000044A0(v96, v97);
    v76 = sub_1002267B4(v74, v75);
    sub_100009104(v99, &qword_1005785B0);
    sub_100004590(v96);
  }

  else
  {
    sub_100009104(v99, &qword_1005785B0);
    sub_100009104(v96, &qword_1005785B0);
    v76 = 0;
  }

  v77 = v95;
  *&v14[*(v95 + 48)] = v76;
  sub_100310F78(v14, v16);
  ServerPodcastEpisode.attributes.getter();
  v78 = PodcastEpisodeAttributes.episodeNumber.getter();
  v80 = v79;

  if (v80)
  {
    v81 = 0;
  }

  else
  {
    v81 = v78;
  }

  *(v16 + 6) = v81;
  v82 = v88;
  sub_100310AC4(v88);
  sub_1001FDDA8(v82, &v16[v77[9]]);
  v83 = &v16[v77[10]];

  *v83 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
  v83[1] = 0;
  Date.timeIntervalSince1970.getter();
  v85 = v84;
  (*(v90 + 8))(v21, v19);
  *&v16[v77[11]] = v85;
  v86 = v94;
  sub_100310FDC(v16, v94);
  (*(v93 + 56))(v86, 0, 1, v77);
  return sub_100311040(v16);
}

uint64_t sub_1003107B8(uint64_t (*a1)(void))
{
  result = a1();
  v3 = HIBYTE(v2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((v2 & 0x1000000000000000) == 0)
  {
    if ((v2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = v2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          v4 = v3 - 1;
          if (v3 != 1)
          {
            v7 = 0;
            v17 = v28 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                break;
              }

              v7 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v4)
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
        if (v3)
        {
          v7 = 0;
          v22 = v28;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v3)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v3)
      {
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v7 = 0;
          v11 = v28 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            v13 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              break;
            }

            ++v11;
            if (!--v4)
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
        result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v4 = v27;
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (--v4)
          {
            v7 = 0;
            if (result)
            {
              v14 = (result + 1);
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_61;
                }

                v16 = 10 * v7;
                if ((v7 * 10) >> 64 != (10 * v7) >> 63)
                {
                  goto LABEL_61;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_61;
                }

                ++v14;
                if (!--v4)
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

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v20 = *result - 48;
              if (v20 > 9)
              {
                goto LABEL_61;
              }

              v21 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v21 + v20;
              if (__OFADD__(v21, v20))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v7 = 0;
        LOBYTE(v4) = 1;
        goto LABEL_62;
      }

      if (v4 >= 1)
      {
        if (--v4)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_61;
              }

              v10 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_61;
              }

              v7 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_61;
              }

              ++v8;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v4) = 0;
LABEL_62:
          v29 = v4;
          v25 = v4;
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

  v29 = 0;
  v7 = sub_10031109C(result, v2, 10);
  v25 = v26;
LABEL_63:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100310AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PodcastsURLEpisodeParameters();
  v37 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v35 - v11;
  v13 = sub_10030FCA4();
  if (v13 && (v36 = v12, v14 = v7, v15 = v8, v16 = v5, v17 = v4, v18 = a1, v19 = v13, sub_1003107B8(&ServerPodcastBase.id.getter), v21 = v20, v19, a1 = v18, v4 = v17, v5 = v16, v22 = v15, v7 = v14, v2 = v1, v23 = v36, (v21 & 1) == 0))
  {
    PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)();
    PodcastsURLEpisodeParameters.storeCollectionId.setter();
    sub_1003107B8(&ServerPodcastEpisode.id.getter);
    PodcastsURLEpisodeParameters.storeTrackId.setter();
    type metadata accessor for PodcastsURLScheme();
    v34 = v37;
    (*(v37 + 16))(v10, v23, v22);
    type metadata accessor for PodcastsURLShowCommand();
    swift_allocObject();
    PodcastsURLShowCommand.init(params:)();
    static PodcastsURLScheme.buildURL(for:)();

    return (*(v34 + 8))(v23, v22);
  }

  else
  {
    sub_1001FE728();
    static OS_os_log.classKit.getter();
    v24 = v2;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = v28;
      *v27 = 136315138;
      v29 = ServerPodcastEpisode.id.getter();
      v31 = sub_1000153E0(v29, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to build share URL, unknown show for episode - %s", v27, 0xCu);
      sub_100004590(v28);
    }

    (*(v5 + 8))(v7, v4);
    v32 = type metadata accessor for URL();
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }
}

uint64_t sub_100310F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_1005785B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100310F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100310FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLSContextMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100311040(uint64_t a1)
{
  v2 = type metadata accessor for CLSContextMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_10031109C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100311628();
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
      result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100311628()
{
  v0 = String.subscript.getter();
  v4 = sub_1003116A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1003116A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100022DC0(v9, 0), v12 = sub_100311800(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

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
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100311800(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_100311A20(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
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

    result = sub_100311A20(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

uint64_t sub_100311A20(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
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
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
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

void sub_100311AA0(uint64_t a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 88) = a1;
  *(v1 + 16) = 0x7550726576726573;
  *(v1 + 24) = 0xEA00000000006873;
  v2 = objc_allocWithZone(MTDynamicTypeConstant);

  *(v1 + 32) = [v2 initWithDefaultConstant:UIFontTextStyleBody textStyle:44.0];
  v3 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = objc_opt_self();
  v6 = [v5 groupWithTitle:v3 footerText:0 settings:isa];

  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v1 + 40) = v6;
  v7 = objc_opt_self();
  swift_retain_n();
  v8 = [v7 mainBundle];
  v28._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x800000010046F7D0;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v28);

  v11 = objc_allocWithZone(NSAttributedString);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithString:v12];

  sub_100168088(&unk_1005747C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100400790;
  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 loadingSettingWithIdentifier:v16];

  if (!v17)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v14 + 56) = sub_10021E1F8();
  *(v14 + 32) = v17;
  v18 = String._bridgeToObjectiveC()();
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v5 groupWithTitle:v18 footerText:v13 settings:v19];

  if (v20)
  {

    v21 = *(v1 + 40);
    *(v1 + 40) = v20;

    v22 = swift_allocObject();
    swift_weakInit();
    v23 = objc_allocWithZone(IMFetchPushNotificationSettingsService);

    v24 = [v23 init];
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1003125FC;
    *(v25 + 24) = v22;
    aBlock[4] = sub_100312604;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100331314;
    aBlock[3] = &unk_1004ED6A0;
    v26 = _Block_copy(aBlock);

    [v24 performDataRequestWithCompletion:v26];
    _Block_release(v26);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100311ED0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100311F30(a1);
  }

  return result;
}

void sub_100311F30(uint64_t a1)
{
  if (a1)
  {
    v3 = v1[11];
    v4 = *(v3 + 16);
    if (v4)
    {
      v45[0] = _swiftEmptyArrayStorage;

      specialized ContiguousArray.reserveCapacity(_:)();
      v5 = 0;
      v40 = objc_opt_self();
      while (v5 < *(v3 + 16))
      {
        v6 = *(v3 + 32 + v5);
        v7 = [objc_opt_self() mainBundle];
        v38 = 0xE000000000000000;
        if (v6)
        {
          v8 = 0xD00000000000002DLL;
          v9 = "SettingsSwitchCellIdentifier";
        }

        else
        {
          v8 = 0xD000000000000030;
          v9 = "TINGS_PUSH_SECTION_FOOTER";
        }

        v10 = v9 | 0x8000000000000000;
        v11._countAndFlagsBits = 0;
        v11._object = 0xE000000000000000;
        v12 = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v7, v11, *(&v38 - 1));

        v13 = String._bridgeToObjectiveC()();

        swift_beginAccess();
        v14 = *(a1 + 16);
        if (*(v14 + 16) && (v15 = sub_100202384(v6), (v16 & 1) != 0))
        {
          v17 = *(*(v14 + 56) + v15);
        }

        else
        {
          v17 = 0;
        }

        swift_endAccess();
        v18 = String._bridgeToObjectiveC()();
        v19 = swift_allocObject();
        *(v19 + 16) = a1;
        *(v19 + 24) = v6;
        v43 = sub_1003125F0;
        v44 = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1002016BC;
        v42 = &unk_1004ED628;
        v20 = _Block_copy(aBlock);

        v21 = [v40 switchSettingWithTitle:v13 initialValue:v17 identifier:v18 changeHandler:v20];
        _Block_release(v20);

        if (!v21)
        {
          goto LABEL_24;
        }

        ++v5;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v4 == v5)
        {
          v22 = v45[0];
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_18:
    v27 = [objc_opt_self() mainBundle];
    v46._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0xD000000000000029;
    v28._object = 0x800000010046F7D0;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v46);

    v30 = objc_allocWithZone(NSAttributedString);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v30 initWithString:v31];

    sub_1001A5228(v22);
    v33 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [objc_opt_self() groupWithTitle:v33 footerText:v32 settings:isa];

    if (!v35)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v1 = v39;
    v26 = v39[5];
    v39[5] = v35;
  }

  else
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = Array._bridgeToObjectiveC()().super.isa;
    v25 = [objc_opt_self() groupWithTitle:v23 footerText:0 settings:v24];

    if (!v25)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v26 = v1[5];
    v1[5] = v25;
  }

  swift_beginAccess();
  sub_10021E418((v1 + 6), aBlock);
  if (v42)
  {
    sub_100004428(aBlock, v45);
    sub_10023A524(aBlock);
    sub_1000044A0(v45, v45[3]);
    sub_100168088(&qword_100574690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    v37 = v1[3];
    *(inited + 32) = v1[2];
    *(inited + 40) = v37;

    sub_1001CFA04(inited, 100);
    swift_setDeallocating();
    sub_1002D23B8(inited + 32);
    sub_100004590(v45);
  }

  else
  {
    sub_10023A524(aBlock);
  }
}

uint64_t sub_1003124C4(char a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10025F4D0(a1, a3 & 1, isUniquelyReferenced_nonNull_native);
  *(a2 + 16) = v8;
  swift_endAccess();
  return sub_10032FB3C(UInt64.int64Representation.getter, 0);
}

uint64_t sub_100312574()
{

  sub_10023A524(v0 + 48);

  return swift_deallocClassInstance();
}

void *CarPlaySceneCoordinator.__allocating_init(interfaceController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for CarPlayBootstrap();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v2[2] = v3;
  v2[3] = a1;
  v2[4] = 0;
  return v2;
}

uint64_t CarPlaySceneCoordinator.connect()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100312764, v4, v3);
}

uint64_t sub_100312764()
{
  if (*(v0[2] + 32))
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v0[10] = sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting restrictions controller observers...", v5, 2u);
    }

    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];

    v9 = *(v8 + 8);
    v0[11] = v9;
    v9(v6, v7);
    type metadata accessor for RestrictionsController();
    v10 = static RestrictionsController.shared.getter();
    RestrictionsController.startListening()();

    v11 = swift_task_alloc();
    v0[12] = v11;
    *v11 = v0;
    v11[1] = sub_100312930;

    return sub_100313950();
  }
}

uint64_t sub_100312930()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_100312ADC;
  }

  else
  {
    v5 = sub_100312A6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100312A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100312ADC()
{

  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to transition to next scene phase: %@", v3, 0xCu);
    sub_100186264(v4);
  }

  else
  {
  }

  (*(v0 + 88))(*(v0 + 40), *(v0 + 24));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t CarPlaySceneCoordinator.disconnect()()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100312D08, v3, v2);
}

uint64_t sub_100312D08()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + 32);
  if (v2 >= 4)
  {
    v3 = *&v2[OBJC_IVAR____TtC8Podcasts17CarPlayController_nowPlayingController];
    v4 = *(v0 + 16);
    v5 = *(v3 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
    v6 = v2;
    [v5 removeObserver:v3];
    [*(v4 + 24) setDelegate:0];
    sub_1003178B4(v2);
    v7 = *(v1 + 32);
    *(v1 + 32) = 0;
    sub_1003178B4(v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t CarPlaySceneCoordinator.didBecomeActive()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100312ED8, v4, v3);
}

uint64_t sub_100312ED8()
{
  v1 = v0[3];
  if (*(v1 + 32) >= 4uLL && (v2 = *(*(v1 + 16) + 16), (v0[10] = v2) != 0))
  {
    v3 = sub_100168088(&qword_10057ABC0);

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_100313008;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v3, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100313008()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1003131D4;
  }

  else
  {
    v5 = sub_100313144;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100313144()
{

  [*(v0 + 16) syncEverything];

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003131D4()
{

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to inject sync controller instance: %@", v3, 0xCu);
    sub_100186264(v4);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v6 = v0[1];

  return v6();
}

uint64_t CarPlaySceneCoordinator.didEnterBackground()()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100313478, v4, v3);
}

uint64_t sub_100313478()
{
  v1 = v0[3];
  if (*(v1 + 32) >= 4uLL && (v2 = *(*(v1 + 16) + 16), (v0[10] = v2) != 0))
  {
    v3 = type metadata accessor for FreezableContentSubject();

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_10031359C;

    return BaseObjectGraph.inject<A>(_:)(v0 + 2, v3, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10031359C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10031375C;
  }

  else
  {
    v5 = sub_1003136D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003136D8()
{

  FreezableContentSubject.unfreeze()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031375C()
{

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to un-freeze content: %@", v3, 0xCu);
    sub_100186264(v4);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v6 = v0[1];

  return v6();
}

void *CarPlaySceneCoordinator.init(interfaceController:)(uint64_t a1)
{
  type metadata accessor for CarPlayBootstrap();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v1[2] = v3;
  v1[3] = a1;
  v1[4] = 0;
  return v1;
}

uint64_t sub_100313950()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v4;
  v1[15] = v3;

  return _swift_task_switch(sub_100313A98, v4, v3);
}

uint64_t sub_100313A98()
{
  static Task<>.checkCancellation()();
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {

        sub_100009F1C(0, &qword_1005748A0);
        static OS_os_log.carPlay.getter();
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.error.getter();
        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 48);
        v17 = *(v0 + 24);
        v18 = *(v0 + 32);
        if (!v15)
        {
          goto LABEL_23;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "Attempted to bootstrap CarPlay app more than once!";
        goto LABEL_22;
      }

LABEL_20:

      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.carPlay.getter();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      v21 = os_log_type_enabled(v13, v14);
      v18 = *(v0 + 32);
      v16 = *(v0 + 40);
      v17 = *(v0 + 24);
      if (!v21)
      {
        goto LABEL_23;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "CarPlay scene is already connected.";
LABEL_22:
      _os_log_impl(&_mh_execute_header, v13, v14, v20, v19, 2u);

LABEL_23:

      (*(v18 + 8))(v16, v17);

      v22 = *(v0 + 8);

      return v22();
    }

    *(v0 + 224) = sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Starting bootstrap phase...", v34, 2u);
    }

    v35 = *(v0 + 64);
    v36 = *(v0 + 24);
    v37 = *(v0 + 32);

    v38 = *(v37 + 8);
    *(v0 + 232) = v38;
    v38(v35, v36);
    v39 = *(v2 + 32);
    *(v2 + 32) = 3;
    sub_1003178B4(v39);
    v40 = swift_task_alloc();
    *(v0 + 240) = v40;
    *v40 = v0;
    v40[1] = sub_100314BFC;

    return sub_100317078();
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *(v0 + 176) = sub_100009F1C(0, &qword_1005748A0);
        static OS_os_log.carPlay.getter();
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, v5, "Starting migration phase...", v6, 2u);
        }

        v7 = *(v0 + 80);
        v8 = *(v0 + 24);
        v9 = *(v0 + 32);

        v10 = *(v9 + 8);
        *(v0 + 184) = v10;
        v10(v7, v8);
        v11 = *(v2 + 32);
        *(v2 + 32) = 2;
        sub_1003178B4(v11);
        if (qword_100572708 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (*(v0 + 264) == 1)
        {
          v12 = swift_task_alloc();
          *(v0 + 192) = v12;
          *v12 = v0;
          v12[1] = sub_100314840;

          return sub_100315F38();
        }

        static OS_os_log.carPlay.getter();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&_mh_execute_header, v41, v42, "Finished migration phase.", v43, 2u);
        }

        v44 = *(v0 + 184);
        v45 = *(v0 + 72);
        v46 = *(v0 + 24);

        v44(v45, v46);
        v47 = swift_task_alloc();
        *(v0 + 208) = v47;
        *v47 = v0;
        v48 = sub_100314AC0;
        goto LABEL_41;
      }

      goto LABEL_20;
    }

    *(v0 + 128) = sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Starting welcome phase...", v25, 2u);
    }

    v26 = *(v0 + 96);
    v27 = *(v0 + 24);
    v28 = *(v0 + 32);

    v29 = *(v28 + 8);
    *(v0 + 136) = v29;
    v29(v26, v27);
    v30 = *(v2 + 32);
    *(v2 + 32) = 1;
    sub_1003178B4(v30);
    if (![objc_opt_self() carPlayShouldShowWelcome])
    {
      static OS_os_log.carPlay.getter();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Finished welcome phase.", v51, 2u);
      }

      v52 = *(v0 + 136);
      v53 = *(v0 + 88);
      v54 = *(v0 + 24);

      v52(v53, v54);
      v47 = swift_task_alloc();
      *(v0 + 160) = v47;
      *v47 = v0;
      v48 = sub_10031463C;
LABEL_41:
      v47[1] = v48;

      return sub_100313950();
    }

    v31 = swift_task_alloc();
    *(v0 + 144) = v31;
    *v31 = v0;
    v31[1] = sub_1003143BC;

    return sub_1003152A4();
  }
}

uint64_t sub_1003143BC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_100314EBC;
  }

  else
  {
    v5 = sub_1003144F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003144F8()
{
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished welcome phase.", v3, 2u);
  }

  v4 = v0[17];
  v5 = v0[11];
  v6 = v0[3];

  v4(v5, v6);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_10031463C;

  return sub_100313950();
}

uint64_t sub_10031463C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_100314F84;
  }

  else
  {
    v5 = sub_100314778;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100314778()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100314840()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10031504C;
  }

  else
  {
    v5 = sub_10031497C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10031497C()
{
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished migration phase.", v3, 2u);
  }

  v4 = v0[23];
  v5 = v0[9];
  v6 = v0[3];

  v4(v5, v6);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_100314AC0;

  return sub_100313950();
}

uint64_t sub_100314AC0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_100315114;
  }

  else
  {
    v5 = sub_100317F28;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100314BFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1003151DC;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_100314D24;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100314D24()
{
  v1 = v0[32];
  v2 = v0[2];

  [*(v2 + 24) setDelegate:v1];
  static OS_os_log.carPlay.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished bootstrap phase.", v5, 2u);
  }

  v6 = v0[29];
  v7 = v0[7];
  v8 = v0[3];
  v9 = v0[2];

  v6(v7, v8);
  v10 = *(v9 + 32);
  *(v9 + 32) = v1;
  sub_1003178B4(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100314EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100314F84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10031504C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100315114()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003151DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003152A4()
{
  v1[36] = v0;
  v2 = sub_100168088(&qword_10057F0E0);
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[44] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[45] = v5;
  v1[46] = v4;

  return _swift_task_switch(sub_10031540C, v5, v4);
}

uint64_t sub_10031540C()
{
  v0[47] = sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting welcome template...", v3, 2u);
  }

  v4 = v0[43];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[36];

  v8 = *(v6 + 8);
  v0[48] = v8;
  v8(v4, v5);
  v9 = *(v7 + 24);
  v0[49] = v9;
  v10 = sub_100317A6C();
  v0[50] = v10;
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_100315614;
  v11 = swift_continuation_init();
  v12 = sub_100168088(&qword_100575028);
  v0[51] = v12;
  v0[25] = v12;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BAE40;
  v0[21] = &unk_1004ED758;
  v0[22] = v11;
  [v9 presentTemplate:v10 animated:1 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100315614()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 416) = v2;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  if (v2)
  {
    v5 = sub_100315D88;
  }

  else
  {
    v5 = sub_100315744;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100315744()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = NSNotificationCenter.notifications(named:object:)();

  *(v0 + 280) = v2;
  type metadata accessor for NSNotificationCenter.Notifications();
  type metadata accessor for Name(0);
  sub_100317D40();
  AsyncMapSequence.init(_:transform:)();
  v3 = swift_task_alloc();
  *(v0 + 424) = v3;
  v4 = sub_100009FAC(&qword_10057F0F0, &qword_10057F0E0);
  *v3 = v0;
  v3[1] = sub_1003158BC;
  v5 = *(v0 + 296);

  return AsyncSequence.first()(v0 + 272, v5, v4);
}

uint64_t sub_1003158BC()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  (*(*(v2 + 304) + 8))(*(v2 + 312), *(v2 + 296));
  if (v0)
  {
    v3 = *(v2 + 360);
    v4 = *(v2 + 368);
    v5 = sub_100315E20;
  }

  else
  {

    v3 = *(v2 + 360);
    v4 = *(v2 + 368);
    v5 = sub_100315A08;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100315A08()
{
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dismissing welcome template...", v3, 2u);
  }

  v4 = v0[51];
  v5 = v0[48];
  v10 = v0[49];
  v6 = v0[42];
  v7 = v0[40];

  v5(v6, v7);
  v0[10] = v0;
  v0[15] = v0 + 449;
  v0[11] = sub_100315BCC;
  v8 = swift_continuation_init();
  v0[33] = v4;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BAE40;
  v0[29] = &unk_1004ED780;
  v0[30] = v8;
  [v10 dismissTemplateAnimated:1 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100315BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 368);
  v4 = *(v1 + 360);
  if (v2)
  {
    v5 = sub_100315EA8;
  }

  else
  {
    v5 = sub_100315CFC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100315CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100315D88()
{
  v1 = *(v0 + 400);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100315E20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100315EA8()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100315F38()
{
  v1[37] = v0;
  v2 = sub_100168088(&qword_10057F100);
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v3 = sub_100168088(&qword_10057F108);
  v1[41] = v3;
  v1[42] = *(v3 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v4 = sub_100168088(&unk_100580450);
  v1[45] = v4;
  v1[46] = *(v4 - 8);
  v1[47] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[48] = v5;
  v1[49] = *(v5 - 8);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = type metadata accessor for MainActor();
  v1[53] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[54] = v7;
  v1[55] = v6;

  return _swift_task_switch(sub_100316180, v7, v6);
}

uint64_t sub_100316180()
{
  v0[56] = sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting migration template...", v3, 2u);
  }

  v4 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v7 = v0[37];

  v8 = *(v6 + 8);
  v0[57] = v8;
  v8(v4, v5);
  v9 = *(v7 + 24);
  v0[58] = v9;
  v10 = sub_100317DB0();
  v0[59] = v10;
  v0[2] = v0;
  v0[7] = v0 + 65;
  v0[3] = sub_100316388;
  v11 = swift_continuation_init();
  v12 = sub_100168088(&qword_100575028);
  v0[60] = v12;
  v0[25] = v12;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BAE40;
  v0[21] = &unk_1004ED7D0;
  v0[22] = v11;
  [v9 presentTemplate:v10 animated:1 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100316388()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);
  if (v2)
  {
    v5 = sub_100316EF0;
  }

  else
  {
    v5 = sub_1003164B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003164B8()
{
  if (qword_100572708 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);
  swift_beginAccess();
  sub_100168088(&qword_1005737C0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100009FAC(&unk_100580460, &unk_100580450);
  Publisher<>.values.getter();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100316610, 0, 0);
}

uint64_t sub_100316610()
{
  (*(v0[42] + 16))(v0[43], v0[44], v0[41]);
  sub_100009FAC(&qword_10057F110, &qword_10057F108);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_100009FAC(&qword_10057F118, &qword_10057F100);
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_100316754;
  v3 = v0[38];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 521, v3, v1);
}

uint64_t sub_100316754()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[39];
    v3 = v2[40];
    v5 = v2[38];

    (*(v4 + 8))(v3, v5);
    v6 = UInt64.int64Representation.getter;
  }

  else
  {
    v6 = sub_100316894;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100316894()
{
  v1 = *(v0 + 521);
  *(v0 + 523) = v1;
  if (v1 == 2)
  {
    v2 = *(v0 + 352);
    v3 = *(v0 + 328);
    v4 = *(v0 + 336);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    (*(v4 + 8))(v2, v3);
    v5 = *(v0 + 432);
    v6 = *(v0 + 440);
    v7 = sub_100316B48;
  }

  else
  {
    *(v0 + 504) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v7 = sub_100316988;
    v5 = v8;
    v6 = v10;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100316988()
{

  return _swift_task_switch(sub_1003169F0, 0, 0);
}

uint64_t sub_1003169F0()
{
  if (*(v0 + 523))
  {
    v1 = sub_100009FAC(&qword_10057F118, &qword_10057F100);
    v2 = swift_task_alloc();
    *(v0 + 496) = v2;
    *v2 = v0;
    v2[1] = sub_100316754;
    v3 = *(v0 + 304);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 521, v3, v1);
  }

  else
  {
    v4 = *(v0 + 352);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    (*(v6 + 8))(v4, v5);
    v7 = *(v0 + 432);
    v8 = *(v0 + 440);

    return _swift_task_switch(sub_100316B48, v7, v8);
  }
}

uint64_t sub_100316B48()
{
  static OS_os_log.carPlay.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dismissing migration template...", v3, 2u);
  }

  v4 = v0[60];
  v5 = v0[57];
  v10 = v0[58];
  v6 = v0[50];
  v7 = v0[48];

  v5(v6, v7);
  v0[10] = v0;
  v0[15] = v0 + 522;
  v0[11] = sub_100316D0C;
  v8 = swift_continuation_init();
  v0[33] = v4;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BAE40;
  v0[29] = &unk_1004ED7F8;
  v0[30] = v8;
  [v10 dismissTemplateAnimated:1 completion:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100316D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 512) = v2;
  v3 = *(v1 + 440);
  v4 = *(v1 + 432);
  if (v2)
  {
    v5 = sub_100316FB8;
  }

  else
  {
    v5 = sub_100316E3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100316E3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100316EF0()
{
  v1 = *(v0 + 472);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100316FB8()
{

  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100317078()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;
  v1[10] = v3;

  return _swift_task_switch(sub_100317178, v4, v3);
}

uint64_t sub_100317178()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = sub_100307584(*(v1 + 24));
    *(v2 + 16) = v3;
  }

  v0[11] = v3;
  sub_100009F1C(0, &qword_1005748A0);

  static OS_os_log.carPlay.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting CoreData processors...", v6, 2u);
  }

  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];

  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_100009F1C(0, &qword_10057F120);
  v11 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v11 startProcessorsForCarPlay];

  sub_100009F1C(0, &qword_10057F128);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v12 startIfNeeded];

  v13 = [objc_opt_self() sharedInstance];
  [v13 startObserving];

  static OS_os_log.carPlay.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting content sync...", v16, 2u);
  }

  v17 = v0[6];
  v18 = v0[4];

  v10(v17, v18);
  v19 = sub_100168088(&qword_10057ABC0);
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_10031749C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v19, v19);
}

uint64_t sub_10031749C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10031769C;
  }

  else
  {
    v5 = sub_1003175D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003175D8()
{
  v1 = *(v0 + 88);

  [*(v0 + 16) syncEverything];
  v2 = objc_allocWithZone(type metadata accessor for CarPlayController());
  v3 = sub_1001C42FC(v1);
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10031769C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100317728(uint64_t *a1)
{
  *a1 = Notification.name.getter();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t CarPlaySceneCoordinator.deinit()
{

  sub_1003178B4(*(v0 + 32));
  return v0;
}

uint64_t CarPlaySceneCoordinator.__deallocating_deinit()
{

  sub_1003178B4(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_100317808(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100317840(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1003178B4(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_1003178E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100317900(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100317954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_1003179C0()
{
  v0 = [objc_opt_self() defaultService];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    [v1 openApplication:v2 completion:0];
  }
}

id sub_100317A6C()
{
  sub_100168088(&qword_100574690);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100400790;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v20._object = 0x800000010046F8E0;
  v3._object = 0x800000010046F8C0;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x1000000000000061;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v20);

  *(v0 + 32) = v5;
  sub_100168088(&unk_100574680);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004007B0;
  v7 = [v1 mainBundle];
  v21._object = 0xE700000000000000;
  v8._countAndFlagsBits = 0x5F59414C50524143;
  v8._object = 0xEF5353494D534944;
  v21._countAndFlagsBits = 0x7373696D736944;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v21);

  v10 = objc_allocWithZone(CPAlertAction);
  v11 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1003179C0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004ED7A8;
  v12 = _Block_copy(aBlock);
  v13 = [v10 initWithTitle:v11 style:1 handler:v12];

  _Block_release(v12);

  *(v6 + 32) = v13;
  v14 = objc_allocWithZone(CPAlertTemplate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F1C(0, &qword_10057F0F8);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithTitleVariants:isa actions:v16];

  return v17;
}

unint64_t sub_100317D40()
{
  result = qword_10057F0E8;
  if (!qword_10057F0E8)
  {
    type metadata accessor for NSNotificationCenter.Notifications();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057F0E8);
  }

  return result;
}

uint64_t sub_100317D98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100317DB0()
{
  sub_100168088(&qword_100574690);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100400790;
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0x800000010046F9B0;
  v2._object = 0x800000010046F990;
  v10._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  *(v0 + 32) = v4;
  v5 = objc_allocWithZone(CPAlertTemplate);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_100009F1C(0, &qword_10057F0F8);
  v7 = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 initWithTitleVariants:isa actions:v7];

  return v8;
}

uint64_t sub_100317F2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100317F80(a1, WitnessTable);
}

uint64_t sub_100317F80(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PlaybackController.QueueCommand.Location();
  v58 = *(v60 - 8);
  __chkstk_darwin();
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  v14 = __chkstk_darwin();
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(a2 + 8) + 16);
  v61 = a1;
  v62 = v2;
  result = v17(a1, v14);
  if (!result)
  {
    return result;
  }

  v19 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  v20 = result;
  swift_beginAccess();
  sub_1001A1560(v20 + v19, v16);

  v21 = sub_100215D14();
  result = sub_1001A1628(v16);
  if (!v21)
  {
    return result;
  }

  v56 = v12;
  v22 = sub_100318B38(v21, v61, a2);
  v23 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFFF8;
  if (v22 >> 62)
  {
LABEL_29:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_5;
    }

LABEL_31:
  }

  v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_31;
  }

LABEL_5:
  v50 = v21;
  v51 = v8;
  v52 = v10;
  v53 = v9;
  v54 = v6;
  v55 = v5;
  if (v25)
  {
    v21 = 0;
    v10 = v23 & 0xC000000000000001;
    v57 = _swiftEmptyArrayStorage;
    v8 = &selRef_updateSearchableIndexWithReason_searchableIndex_entityLoadingBlock_completion_;
    do
    {
      v5 = v21;
      while (1)
      {
        if (v10)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v24 + 16))
          {
            goto LABEL_28;
          }

          v26 = *(v23 + 8 * v5 + 32);
        }

        v6 = v26;
        v21 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v27 = [v26 uuid];
        if (v27)
        {
          break;
        }

        ++v5;
        if (v21 == v25)
        {
          goto LABEL_23;
        }
      }

      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v30;

      v9 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_100243134(0, *(v57 + 2) + 1, 1, v57);
      }

      v6 = *(v57 + 2);
      v31 = *(v57 + 3);
      if (v6 >= v31 >> 1)
      {
        v57 = sub_100243134((v31 > 1), v6 + 1, 1, v57);
      }

      v32 = v57;
      *(v57 + 2) = v6 + 1;
      v33 = &v32[16 * v6];
      v34 = v49;
      *(v33 + 4) = v29;
      *(v33 + 5) = v34;
    }

    while (v21 != v25);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

LABEL_23:

  v35 = v61;
  v36 = (*(a2 + 16))(v61, a2);
  (*(a2 + 24))(v35, a2);
  dispatch thunk of PlaybackController.queueController.getter();

  v37 = *(v58 + 104);
  v38 = (v58 + 8);
  if (v36)
  {
    v40 = v59;
    v39 = v60;
    v37(v59, enum case for PlaybackController.QueueCommand.Location.queueHead(_:), v60);
    dispatch thunk of PlaybackController.QueueController.addToQueue(uuids:location:)();

    (*v38)(v40, v39);
    sub_100009F1C(0, &qword_1005729D0);
    v41 = static OS_dispatch_queue.main.getter();
    v67 = sub_100319074;
    v68 = 0;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10000F038;
    v66 = &unk_1004ED820;
    v42 = _Block_copy(&aBlock);
    v43 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100182E30();
    v44 = v51;
    v45 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v42);
  }

  else
  {
    v47 = v59;
    v46 = v60;
    v37(v59, enum case for PlaybackController.QueueCommand.Location.queueTail(_:), v60);
    dispatch thunk of PlaybackController.QueueController.addToQueue(uuids:location:)();

    (*v38)(v47, v46);
    sub_100009F1C(0, &qword_1005729D0);
    v41 = static OS_dispatch_queue.main.getter();
    v67 = sub_100319068;
    v68 = 0;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10000F038;
    v66 = &unk_1004ED848;
    v48 = _Block_copy(&aBlock);
    v43 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100182E30();
    v44 = v51;
    v45 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v48);
  }

  (*(v54 + 8))(v44, v45);
  return (*(v52 + 8))(v43, v53);
}

uint64_t sub_100318730(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    (*(a2 + 24))(a1, a2);
    dispatch thunk of PlaybackController.queueController.getter();

    v4 = dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_100318850(a1, a2);
}

uint64_t sub_1003187FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100317F80(a1, WitnessTable);
}

uint64_t sub_100318850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastContextActionDataType(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(a2 + 8) + 16))(a1, v5);
  if (result)
  {
    v9 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    v10 = result;
    swift_beginAccess();
    sub_1001A1560(v10 + v9, v7);

    v11 = sub_100215D14();
    sub_1001A1628(v7);
    if (v11)
    {
      v12 = [v11 uuid];
      if (v12)
      {

        v21 = 0;
        v13 = [objc_opt_self() sharedInstance];
        v14 = [v13 mainOrPrivateContext];

        v15 = swift_allocObject();
        *(v15 + 16) = &v21;
        *(v15 + 24) = v11;
        v16 = swift_allocObject();
        *(v16 + 16) = sub_100319708;
        *(v16 + 24) = v15;
        aBlock[4] = sub_10002D950;
        aBlock[5] = v16;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002D904;
        aBlock[3] = &unk_1004ED9B0;
        v17 = _Block_copy(aBlock);
        v18 = v11;

        [v14 performBlockAndWait:v17];

        _Block_release(v17);
        LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

        if (v18)
        {
          __break(1u);
        }

        else
        {
          v19 = v21;

          return v19;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_100318AE4(BOOL *a1, id a2)
{
  v3 = [a2 smartPlayEpisode];
  v4 = v3;
  if (v3)
  {
  }

  *a1 = v4 != 0;
}

uint64_t sub_100318B38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EpisodeListSettings();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  v44 = _swiftEmptyArrayStorage;
  v13 = (*(*(a3 + 8) + 16))(a2);
  if (!v13 || (v39 = *(v13 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType), v15 = *(v13 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 32), v14 = *(v13 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 48), v16 = *(v13 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 16), v43 = *(v13 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 64), v41 = v15, v42 = v14, v40 = v16, sub_100272514(&v39, &aBlock), , v43 == 255))
  {
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = &v44;
    v27[4] = v12;
    v28 = swift_allocObject();
    v25 = sub_100319604;
    *(v28 + 16) = sub_100319604;
    *(v28 + 24) = v27;
    *&v47 = sub_10002D7F0;
    *(&v47 + 1) = v28;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v46 = sub_10002D904;
    *(&v46 + 1) = &unk_1004ED8C0;
    v29 = _Block_copy(&aBlock);
    v30 = v12;
    v31 = a1;

    [v30 performBlockAndWait:v29];

    _Block_release(v29);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
    aBlock = v39;
    v46 = v40;
    v47 = v41;
    v48 = v42;
    v49 = v43;
    v37[2] = v41;
    v37[3] = v42;
    v38 = v43;
    v37[0] = v39;
    v37[1] = v40;
    sub_10019BB44(v37, v36);
    MTPodcast.episodeSortType.getter();
    EpisodeListType.pubDateLimit.getter();
    EpisodeListType.hidePlayedEpisodes.getter();
    EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
    v17 = v34;
    v18 = v35;
    (*(v34 + 16))(v8, v10, v35);
    v19 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v12;
    (*(v17 + 32))(v20 + v19, v8, v18);
    *(v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = &v44;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_100319610;
    *(v21 + 24) = v20;
    v36[4] = sub_10002D950;
    v36[5] = v21;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 1107296256;
    v36[2] = sub_10002D904;
    v36[3] = &unk_1004ED938;
    v22 = _Block_copy(v36);
    v23 = v12;

    [v23 performBlockAndWait:v22];
    _Block_release(v22);

    sub_1003196A0(&v39);
    (*(v17 + 8))(v10, v18);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      v25 = 0;
      v26 = sub_100319610;
LABEL_7:
      v32 = v44;
      sub_1000112B4(v26);
      sub_1000112B4(v25);
      return v32;
    }
  }

  __break(1u);
  return result;
}

void sub_100319080(unsigned int *a1)
{
  type metadata accessor for HUDViewController.HUDType();
  v2 = __chkstk_darwin();
  (*(v4 + 104))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *a1, v2);
  v5 = objc_allocWithZone(type metadata accessor for HUDViewController());
  v6 = HUDViewController.init(type:)();
  dispatch thunk of HUDViewController.present()();
}

void sub_10031915C(void *a1, uint64_t a2, void *a3)
{
  v5 = kMTEpisodeEntityName;
  v6 = EpisodeListSettings.predicate.getter();
  EpisodeListSettings.sort.getter();
  v7 = EpisodeSortType.descriptors.getter();
  sub_1001A523C(v7);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [a1 objectsInEntity:v5 predicate:v6 sortDescriptors:isa];

  if (v9)
  {
    sub_100009F1C(0, &qword_1005739D0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = sub_10037F7E0(v10);

    if (v11)
    {
      *a3 = v11;
    }
  }
}

void sub_1003192A0(void *a1, void *a2, void *a3)
{
  v6 = [a1 smartPlayEpisode];
  if (v6)
  {
    v25 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = [a1 uuid];
    if (v7)
    {
      v8 = v7;
      if ([a1 isSerialShowTypeInFeed] && (v9 = objc_opt_self(), v10 = objc_msgSend(v9, "predicateForSeasonNumber:", objc_msgSend(v25, "seasonNumber")), v11 = objc_msgSend(v9, "predicateForEpisodesWithEpisodeNumbersGreaterThan:", objc_msgSend(v25, "episodeNumber")), v12 = objc_msgSend(v10, "AND:", v11), v10, v11, v13 = objc_msgSend(v9, "predicateForAllEpisodesOnPodcastUuid:", v8), v8, v14 = objc_msgSend(v12, "AND:", v13), v12, v13, v15 = objc_msgSend(v9, "predicateForEntitledEpisodes"), v16 = objc_msgSend(v14, "AND:", v15), v14, v15, v17 = kMTEpisodeEntityName, v8 = v16, v18 = objc_msgSend(v9, "sortDescriptorsForEpisodeNumberAscending:", 1), sub_100009F1C(0, &qword_10057B1F0), v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v18, sub_1001A523C(v19), , isa = Array._bridgeToObjectiveC()().super.isa, , v21 = objc_msgSend(a3, "objectsInEntity:predicate:sortDescriptors:", v17, v8, isa), v17, v8, isa, v21) && (sub_100009F1C(0, &qword_1005739D0), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v23 = sub_10037F7E0(v22), , v23))
      {
        sub_1001C40A4(v23);
        v24 = v8;
      }

      else
      {
        v24 = v25;
        v25 = v8;
      }
    }
  }
}

void sub_100319610()
{
  v1 = *(type metadata accessor for EpisodeListSettings() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10031915C(v3, v0 + v2, v4);
}

uint64_t sub_1003196A0(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.fetchHasLibraryEpisodesInPodcast(withUUID:)(Swift::String withUUID)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predicateForLibraryEpisodesOnPodcastUuid:v3];

  v5 = [v1 hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v4];
  return v5;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSManagedObjectContext.fetchHasPlayedEpisodesInPodcast(withUUID:)(Swift::String withUUID)
{
  v2 = objc_opt_self();
  v3 = [v2 predicateForHasAnyVisualPlayState];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 predicateForAllEpisodesOnPodcastUuid:v4];

  v6 = [v3 AND:v5];
  v7 = [v1 hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v6];

  return v7;
}

uint64_t sub_100319964(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  sub_100182568(v6, a3);
  sub_1001825CC(v6, a3);
  return a4();
}

id DataMigrator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void _s8Podcasts12DataMigratorC7migrateyyFZ_0()
{
  v110 = type metadata accessor for OSSignpostError();
  v0 = *(v110 - 8);
  __chkstk_darwin();
  v105 = &v104 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v104 - v2;
  v121 = type metadata accessor for OSSignpostID();
  v3 = *(v121 - 8);
  __chkstk_darwin();
  v106 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v104 - v5;
  __chkstk_darwin();
  v113 = &v104 - v7;
  v8 = __chkstk_darwin();
  v114 = (&v104 - v9);
  if (qword_100572838 != -1)
  {
LABEL_68:
    swift_once();
  }

  v122 = off_10057F208;
  v120 = *(off_10057F208 + 2);
  if (!v120)
  {
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v122 + 4);
  v112 = &v3[2];
  v119 = &v3[1];
  v108 = (v0 + 88);
  v109 = enum case for OSSignpostError.doubleEnd(_:);
  v107 = (v0 + 8);
  v8.n128_u64[0] = 136315138;
  v116 = v8;
  v115 = v6;
  while (1)
  {
    if (v10 >= v122[2])
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    sub_100004428(v12, &v131);
    v23 = v132;
    v24 = v133;
    sub_1000044A0(&v131, v132);
    if (((*(v24 + 16))(v23, v24) & 1) == 0)
    {
      if (qword_100572830 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      v0 = sub_1001825CC(v39, qword_10057F1F0);
      sub_100004428(&v131, v128);
      v3 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v40))
      {
        v13 = swift_slowAlloc();
        v118 = v11;
        v14 = v6;
        v15 = v12;
        v16 = v13;
        v17 = swift_slowAlloc();
        v127 = v17;
        *v16 = v116.n128_u32[0];
        v18 = v129;
        v19 = v130;
        sub_1000044A0(v128, v129);
        (*(v19 + 8))(v18, v19);
        v20 = StaticString.description.getter();
        v0 = v21;
        sub_100004590(v128);
        v22 = sub_1000153E0(v20, v0, &v127);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v3, v40, "[%s] Migration not required, skipping.", v16, 0xCu);
        sub_100004590(v17);

        v12 = v15;
        v6 = v14;
        v11 = v118;
      }

      else
      {

        sub_100004590(v128);
      }

      goto LABEL_5;
    }

    v117 = v12;
    v3 = v114;
    if (qword_100572830 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_1001825CC(v25, qword_10057F1F0);
    sub_100004428(&v131, v128);
    v118 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v127 = v30;
      *v29 = v116.n128_u32[0];
      v31 = v129;
      v32 = v130;
      sub_1000044A0(v128, v129);
      v33 = *(v32 + 8);
      v34 = v32;
      v6 = v115;
      v33(v31, v34);
      v35 = StaticString.description.getter();
      v37 = v36;
      sub_100004590(v128);
      v38 = sub_1000153E0(v35, v37, &v127);

      *(v29 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "[%s] Preparing to perform migration step", v29, 0xCu);
      sub_100004590(v30);
    }

    else
    {

      sub_100004590(v128);
    }

    if (qword_100572828 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for OSSignposter();
    sub_1001825CC(v41, qword_10057F1D8);
    v42 = v132;
    v43 = v133;
    sub_1000044A0(&v131, v132);
    v44 = (*(v43 + 8))(v42, v43);
    v46 = v45;
    static OSSignpostID.exclusive.getter();
    v47 = OSSignposter.logHandle.getter();
    v48 = static os_signpost_type_t.begin.getter();
    v0 = v47;
    if (OS_os_log.signpostsEnabled.getter())
    {
      if (v46)
      {
        if (HIDWORD(v44))
        {
          goto LABEL_62;
        }

        if ((v44 & 0xFFFFF800) == 0xD800)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          return;
        }

        if (v44 > 0x10FFFF)
        {
          goto LABEL_64;
        }

        v44 = &v123;
      }

      else if (!v44)
      {
        goto LABEL_63;
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, v48, v50, v44, "", v49, 2u);
    }

    v51 = v3;
    v52 = v121;
    (*v112)(v113, v3, v121);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v3 = *v119;
    (*v119)(v51, v52);
    v53 = v132;
    v54 = v133;
    sub_1000044A0(&v131, v132);
    (*(v54 + 24))(v53, v54);
    if (v11)
    {
      break;
    }

    v55 = v132;
    v56 = v133;
    sub_1000044A0(&v131, v132);
    v57 = (*(v56 + 8))(v55, v56);
    v59 = v58;
    v60 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v61 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      if (v59)
      {
        v0 = v110;
        if (HIDWORD(v57))
        {
          goto LABEL_66;
        }

        if ((v57 & 0xFFFFF800) == 0xD800)
        {
          goto LABEL_70;
        }

        if (v57 > 0x10FFFF)
        {
          goto LABEL_67;
        }

        v57 = &v124;
      }

      else
      {
        v0 = v110;
        if (!v57)
        {
          goto LABEL_65;
        }
      }

      v62 = v111;
      checkForErrorAndConsumeState(state:)();

      v63 = (*v108)(v62, v0);
      v64 = "[Error] Interval already ended";
      if (v63 != v109)
      {
        (*v107)(v111, v0);
        v64 = "SUCCESS";
      }

      v65 = swift_slowAlloc();
      *v65 = 0;
      v66 = v115;
      v67 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, v61, v67, v57, v64, v65, 2u);
      v6 = v66;
    }

    (v3)(v6, v121);
    sub_100004428(&v131, v128);
    v0 = v118;
    v3 = Logger.logObject.getter();
    v68 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v127 = v70;
      *v69 = v116.n128_u32[0];
      v71 = v129;
      v72 = v130;
      sub_1000044A0(v128, v129);
      v73 = *(v72 + 8);
      v74 = v72;
      v6 = v115;
      v73(v71, v74);
      v75 = StaticString.description.getter();
      v0 = v76;
      sub_100004590(v128);
      v77 = sub_1000153E0(v75, v0, &v127);

      *(v69 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v3, v68, "[%s] Finished running migration step", v69, 0xCu);
      sub_100004590(v70);
    }

    else
    {

      sub_100004590(v128);
    }

    v12 = v117;
LABEL_5:
    ++v10;
    sub_100004590(&v131);
    v12 += 40;
    if (v120 == v10)
    {
      return;
    }
  }

  v78 = v132;
  v79 = v133;
  sub_1000044A0(&v131, v132);
  v80 = (*(v79 + 8))(v78, v79);
  v82 = v81;
  v83 = OSSignposter.logHandle.getter();
  v84 = v106;
  OSSignpostIntervalState.signpostID.getter();
  v85 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (v82)
    {
      goto LABEL_48;
    }

    v84 = v106;
    v86 = v110;
    v87 = v105;
    if (!v80)
    {
      __break(1u);
LABEL_48:
      v84 = v106;
      v86 = v110;
      v87 = v105;
      if (HIDWORD(v80))
      {
        goto LABEL_71;
      }

      if ((v80 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_73;
      }

      if (v80 > 0x10FFFF)
      {
        goto LABEL_72;
      }

      v80 = &v125;
    }

    checkForErrorAndConsumeState(state:)();

    v88 = (*v108)(v87, v86);
    if (v88 == v109)
    {
      v89 = "[Error] Interval already ended";
    }

    else
    {
      (*v107)(v87, v86);
      v89 = "ERROR";
    }

    v90 = swift_slowAlloc();
    *v90 = 0;
    v91 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, v85, v91, v80, v89, v90, 2u);
  }

  (v3)(v84, v121);
  sub_100004428(&v131, v128);
  swift_errorRetain();
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v94 = 136315394;
    v95 = v129;
    v96 = v130;
    sub_1000044A0(v128, v129);
    (*(v96 + 8))(v95, v96);
    v97 = StaticString.description.getter();
    v99 = v98;
    sub_100004590(v128);
    v100 = sub_1000153E0(v97, v99, &v127);

    *(v94 + 4) = v100;
    *(v94 + 12) = 2080;
    v126 = v11;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v101 = String.init<A>(describing:)();
    v103 = sub_1000153E0(v101, v102, &v127);

    *(v94 + 14) = v103;
    _os_log_impl(&_mh_execute_header, v92, v93, "[%s] Failed migration. Ending migrator with error: %s", v94, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100004590(v128);
  }

  sub_100004590(&v131);
}

uint64_t sub_10031A920()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v4 = v12 - v3;
  sub_100168088(&unk_100578B20);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v6;
  v8[4] = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_10040C850;
  *(v9 + 24) = v8;

  v12[1] = Future<>.init(priority:unwrapping:)();
  sub_10031AD08();
  v10 = Publisher.eraseToAnyPublisher()();

  return v10;
}

uint64_t sub_10031AAD4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10031AB6C, v4, v3);
}

uint64_t sub_10031AB6C()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_10031AD6C(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10031AC00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{

  return a2(v2, a1, 7);
}

uint64_t sub_10031AC60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_10031AAD4(v2, v3);
}

unint64_t sub_10031AD08()
{
  result = qword_100578B30;
  if (!qword_100578B30)
  {
    sub_100168310(&unk_100578B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100578B30);
  }

  return result;
}

uint64_t sub_10031AD6C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator();
  swift_allocObject();

  sub_1002442DC(v3);

  v4 = BaseObjectGraph.satisfying<A>(_:with:)();
  if (a2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1001AA70C();
    v9 = sub_1002C4D28(v4, v7, 10);

    ++v6;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v8;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00);
      v10 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_18;
    }

LABEL_24:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithItems:isa];

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;

  return v14;
}

uint64_t sub_10031B084()
{
  v1 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v12[0] = v2, type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_10057D070), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_100009104(&v9, &qword_10057D068);
  }

  if (!*(&v10 + 1))
  {
    return sub_100009104(&v9, &qword_10057D068);
  }

  sub_1000109E4(&v9, v12);
  v3 = v13;
  sub_1000044A0(v12, v13);
  v4 = sub_1001ED800(v3);
  if ((v5 & 1) == 0)
  {
    v6 = v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID;
    *v6 = v4;
    *(v6 + 8) = 0;
    InterestStateController.stateMachine(for:)();
    v7 = InterestStateMachine.currentState.getter();

    *(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) = v7;
  }

  return sub_100004590(v12);
}

uint64_t sub_10031B1D0()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v34 = type metadata accessor for MetricsData();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UndoSuggestLessInterestAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  result = swift_beginAccess();
  if (*(v0 + v18))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) == 0)
    {
      v32 = *(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID);
      v20 = v32;
      sub_100168088(&unk_10057DC50);
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100400790;
      *&v39 = v20;
      sub_1000366D8();

      v27[2] = BinaryInteger.description.getter();
      v28 = v6;
      v21 = static MetricsTargetType.button.getter();
      v29 = v3;
      v27[1] = v21;
      v27[0] = static MetricsActionType.undoSuggestLess.getter();
      v27[3] = v15;
      static MetricsActionContext.contextual.getter();
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v45 = v39;
      sub_100009104(&v45, &unk_100574650);
      v44 = v40;
      sub_100009104(&v44, &unk_100573A90);
      v43 = v41;
      sub_100009104(&v43, &unk_100574660);
      sub_100037470(v42);

      sub_100009104(v9, &qword_100574040);
      v23 = v28;
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v36 + 8))(v23, v37);
      (*(v10 + 8))(v12, v34);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      UndoSuggestLessInterestAction.init(adamID:actionMetrics:)();
      v24 = v33;
      v38[3] = v33;
      v38[4] = sub_10031BDF4(&qword_10057F3E8, &type metadata accessor for UndoSuggestLessInterestAction);
      v25 = sub_10000E680(v38);
      v26 = v35;
      (*(v35 + 16))(v25, v17, v24);
      ContextActionsConfiguration.perform(_:)();

      (*(v26 + 8))(v17, v24);
      return sub_100004590(v38);
    }
  }

  return result;
}

uint64_t sub_10031B7E0()
{

  v1 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UndoSuggestLessContextAction()
{
  result = qword_10057F320;
  if (!qword_10057F320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031B928()
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

uint64_t sub_10031BA34()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468400;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001004683E0;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000011;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10031BAE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10031BB7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_10031B084();
}

uint64_t sub_10031BC2C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_10031BCEC()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) == 4)
  {
    v1 = 0;
  }

  else
  {
    v2 = InterestState.rawValue.getter();
    v4 = v3;
    if (v2 == InterestState.rawValue.getter() && v4 == v5)
    {
      v1 = 1;
    }

    else
    {
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v1 & 1;
}

uint64_t sub_10031BD9C(uint64_t a1)
{
  result = sub_10031BDF4(&unk_1005822F0, type metadata accessor for UndoSuggestLessContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10031BDF4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10031BE3C()
{
  v1 = *(v0 + 88);
  v2 = [v1 buttonLabel];
  v3 = sub_10031C21C();
  v5 = v4;
  v6 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v15);

  v9 = String._bridgeToObjectiveC()();

  [v2 setText:v9];

  [v1 fittingSize];
  if (v11 != 0.0 || v10 != 0.0)
  {
    return v10;
  }

  v12 = *(v0 + 32);

  [v12 currentConstant];
  return result;
}

void sub_10031BF98()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_10027C5A4();
}

uint64_t sub_10031BFF0(char a1)
{
  if (a1)
  {
    v2 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v4 = [objc_opt_self() groupWithTitle:v2 footerText:0 settings:isa];

    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  sub_10031C2F8();
  v4 = v5;
LABEL_5:
  v6 = *(v1 + 40);
  *(v1 + 40) = v4;

  swift_beginAccess();
  sub_10021E418(v1 + 48, v9);
  if (!v10)
  {
    return sub_10023A524(v9);
  }

  sub_100004428(v9, v8);
  sub_10023A524(v9);
  sub_1000044A0(v8, v8[3]);
  sub_1001CFA04(&off_1004DEED8, 100);
  sub_1002D23B8(&unk_1004DEEF8);
  return sub_100004590(v8);
}

unint64_t sub_10031C140()
{
  v0 = 0xD000000000000032;
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = [v1 currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      return 0xD000000000000030;
    }
  }

  return v0;
}

unint64_t sub_10031C21C()
{
  v0 = 0xD000000000000031;
  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = [v1 currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      return 0xD00000000000002FLL;
    }
  }

  return v0;
}

void sub_10031C2F8()
{
  v0 = sub_10031C140();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v26._object = 0xE000000000000000;
  v5._countAndFlagsBits = v0;
  v5._object = v2;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v26);

  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 footerAttributedString:v8];

  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  v11 = objc_opt_self();
  v12 = sub_10031C21C();
  v14 = v13;
  v15 = [v3 mainBundle];
  v27._object = 0xE000000000000000;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v27);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10031BF98;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EDB10;
  v20 = _Block_copy(aBlock);
  v21 = [v11 appThemeButtonSettingWithTitle:v18 identifier:v19 changeHandler:v20];
  _Block_release(v20);

  if (v21)
  {
    *(inited + 32) = v21;
    v22 = v9;
    sub_1001A5228(inited);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v24 = [v7 groupWithTitle:0 footerText:v22 settings:isa];

    if (v24)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t *DebouncedAutoDownloadProcessor.sharedInstance.unsafeMutableAddressor()
{
  if (qword_100572840 != -1)
  {
    swift_once();
  }

  return &static DebouncedAutoDownloadProcessor.sharedInstance;
}

id static DebouncedAutoDownloadProcessor.sharedInstance.getter()
{
  if (qword_100572840 != -1)
  {
    swift_once();
  }

  v1 = static DebouncedAutoDownloadProcessor.sharedInstance;

  return v1;
}

uint64_t DebouncedAutoDownloadProcessor.isRunning.getter()
{
  v1 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DebouncedAutoDownloadProcessor.isRunning.setter(char a1)
{
  v3 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DebouncedAutoDownloadProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebouncedAutoDownloadProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10031C940()
{
  v1 = (v0 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction____lazy_storage___title);
  if (*(v0 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction____lazy_storage___title + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_10031C9BC(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

unint64_t sub_10031C9BC(uint64_t a1)
{
  sub_100168088(&qword_100576948);
  __chkstk_darwin();
  v3 = &v13 - v2;
  v4 = type metadata accessor for KCURadar.ReportContent();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
  swift_beginAccess();
  sub_10031E590(a1 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100009104(v3, &qword_100576948);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v14 = 0xD000000000000017;
    v15 = 0x800000010046FE10;
    v10._countAndFlagsBits = KCURadar.ReportContent.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x6361626465654620;
    v11._object = 0xE90000000000006BLL;
    String.append(_:)(v11);
    v9 = v14;
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

uint64_t sub_10031CBE0()
{
  type metadata accessor for InteractionContext.Page();
  __chkstk_darwin();
  v2 = &v13[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for InteractionContext();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100576948);
  __chkstk_darwin();
  v8 = &v13[-v7];
  if (*(v0 + 16) && (v9 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent, swift_beginAccess(), sub_10031E590(v0 + v9, v8), v10 = type metadata accessor for KCURadar.ReportContent(), LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10), sub_100009104(v8, &qword_100576948), v9 != 1))
  {
    swift_beginAccess();
    v11 = *(v0 + 24);
    if (v11)
    {

      dispatch thunk of ContextActionsConfiguration.context.getter();

      InteractionContext.page.getter();
      (*(v4 + 8))(v6, v3);
      LOBYTE(v11) = InteractionContext.Page.isTranscriptView.getter();
      sub_10027F15C(v2, &type metadata accessor for InteractionContext.Page);
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_10031CE40()
{
  sub_100168088(&qword_100576948);
  __chkstk_darwin();
  v2 = &v28[-v1];
  result = swift_beginAccess();
  if (*(v0 + 24))
  {
    type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + qword_1005766D0);
      v6 = v4;

      v7 = [v5 string];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = (v0 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_selectedText);
      *v11 = v8;
      v11[1] = v10;

      v12 = v0 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp;
      *v12 = *(v6 + qword_1005766D8);
      *(v12 + 8) = 0;
      v13 = qword_100593298;
      v14 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
      swift_beginAccess();
      sub_10031E6C4(v6 + v13, v0 + v14);
      swift_endAccess();
    }

    else
    {
      type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
      result = swift_dynamicCastClass();
      if (result)
      {
        v15 = v0;

        v16 = NowPlayingTranscriptSelectionContextActionConfiguration.selectedText.getter();
        if (v16)
        {
          v17 = v16;
          v18 = [v16 string];

          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        v22 = (v15 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_selectedText);
        *v22 = v19;
        v22[1] = v21;

        started = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
        v24 = v15 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp;
        *v24 = started;
        *(v24 + 8) = v25 & 1;
        NowPlayingTranscriptSelectionContextActionConfiguration.reportContent.getter();

        v26 = type metadata accessor for KCURadar.ReportContent();
        (*(*(v26 - 8) + 56))(v2, 0, 1, v26);
        v27 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
        swift_beginAccess();
        sub_10031E654(v2, v15 + v27);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_10031D0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v105 = a1;
  v101 = type metadata accessor for ShowOffer();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for EpisodeOffer();
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v87 - v6;
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100576948);
  __chkstk_darwin();
  v10 = &v87 - v9;
  v11 = type metadata accessor for KCURadar.ReportContent();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v103 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v87 - v14;
  v16 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent;
  swift_beginAccess();
  sub_10031E590(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100009104(v10, &qword_100576948);
    sub_10031E600();
    swift_allocError();
    *v17 = 4;
    return swift_willThrow();
  }

  (*(v12 + 32))(v15, v10, v11);
  v19 = v105;
  if (!v105)
  {
    sub_10031E600();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();
    return (*(v12 + 8))(v15, v11);
  }

  v95 = v12;
  v96 = v15;
  v20 = *(v2 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp);
  v21 = *(v2 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_timestamp + 8);
  v22 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v19 + v22, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v36 = *v8;

      if (*(v36 + 16))
      {
        v94 = v21;
        v93 = v20;

        v37 = [objc_opt_self() sharedInstance];
        v38 = [v37 mainQueueContext];

        v39 = String._bridgeToObjectiveC()();

        v40 = [v38 episodeForUuid:v39];

        if (v40)
        {
          v41 = [v40 podcast];
          if (v41 && (v42 = v41, v43 = [v41 title], v42, v43))
          {
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v91 = v45;
            v92 = v44;
          }

          else
          {
            v91 = 0;
            v92 = 0;
          }

          v66 = [v40 title];
          if (v66)
          {
            v67 = v66;
            v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v90 = v68;
          }

          else
          {
            v99 = 0;
            v90 = 0;
          }

          v79 = [v40 podcast];
          v88 = v11;
          if (v79)
          {
            v80 = v79;
            [v79 storeCollectionId];

            v89 = AdamID.init(rawValue:)();
          }

          else
          {
            v89 = 0;
          }

          [v40 storeTrackId];
          v101 = AdamID.init(rawValue:)();
          [v40 parsePriceType];

          goto LABEL_59;
        }

        sub_10031E600();
        swift_allocError();
        v73 = 1;
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v56 = *v8;
    if (*(*v8 + 16))
    {
      v94 = v21;
      v93 = v20;
      v88 = v11;
      v57 = v100;
      v58 = v102;
      (*(v100 + 16))(v5, v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v102);

      v59 = v97;
      (*(v57 + 32))(v97, v5, v58);
      v60 = v98;
      EpisodeOffer.showOffer.getter();
      v61 = ShowOffer.title.getter();
      v91 = v62;
      v92 = v61;
      v63 = *(v99 + 8);
      v64 = v101;
      v63(v60, v101);
      v99 = EpisodeOffer.title.getter();
      v90 = v65;
      EpisodeOffer.showOffer.getter();
      v89 = ShowOffer.adamId.getter();
      v63(v60, v64);
      v101 = EpisodeOffer.contentId.getter();
      EpisodeOffer.priceType.getter();
      (*(v57 + 8))(v59, v58);
LABEL_59:
      v84 = v95;
      v85 = v96;
      v86 = v88;
      (*(v95 + 16))(v103, v96, v88);
      KCURadar.init(showTitle:episodeTitle:showAdamID:episodeAdamID:hostedOrRSS:timestamp:reportContent:)();

      return (*(v84 + 8))(v85, v86);
    }

    goto LABEL_63;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v46 = *v8;
    if (*v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_63;
      }
    }

    else
    {
      result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_63;
      }
    }

    v94 = v21;
    if ((v46 & 0xC000000000000001) != 0)
    {

      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_70;
      }

      v47 = *(v46 + 32);

      v48 = v47;
    }

    v49 = v48;

    v50 = v49;
    v51 = [v50 author];
    if (v51)
    {
      v52 = v51;
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v54;
      v92 = v53;
    }

    else
    {
      v91 = 0;
      v92 = 0;
    }

    v74 = [v50 title];
    v88 = v11;
    if (v74)
    {
      v75 = v74;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v76;
    }

    else
    {
      v99 = 0;
      v90 = 0;
    }

    v93 = v20;
    [v50 podcastStoreId];
    v89 = AdamID.init(rawValue:)();
    v77 = IMPlayerItem.adamID.getter();
    v78 = [v50 priceType];

    v101 = v77;
    if (v78)
    {
      MTEpisodePriceTypeFromPersistentString();
    }

    goto LABEL_59;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_10031E600();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();
    (*(v95 + 8))(v96, v11);
    return sub_10027F15C(v8, type metadata accessor for EpisodeContextActionDataType);
  }

  v24 = *v8;
  if (*v8 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_63:

LABEL_64:

LABEL_65:
    sub_10031E600();
    swift_allocError();
    v73 = 2;
LABEL_66:
    *v72 = v73;
    swift_willThrow();

    return (*(v95 + 8))(v96, v11);
  }

LABEL_9:
  if ((v24 & 0xC000000000000001) != 0)
  {

    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);

    v26 = v25;
LABEL_12:
    v27 = v26;

    v28 = MPCPlayerResponseItem.podcastEpisode.getter();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 author];
      if (v30 && (v31 = v30, v32 = [v30 name], v31, v32))
      {
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v34;
        v92 = v33;
      }

      else
      {
        v91 = 0;
        v92 = 0;
      }

      v69 = [v29 title];
      if (v69)
      {
        v70 = v69;
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v71;
      }

      else
      {
        v99 = 0;
        v90 = 0;
      }

      v94 = v21;
      v81 = [v29 podcast];
      v93 = v20;
      v88 = v11;
      if (v81)
      {
        v82 = v81;
        v89 = MPModelObject.adamID.getter();
      }

      else
      {
        v89 = 0;
      }

      v83 = v29;
      v101 = MPModelObject.adamID.getter();

      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_10031DD6C()
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v0 = type metadata accessor for KCURadar();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10031D0F0(v4, v3);

  KCURadar.prompt()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10031DFFC()
{

  v1 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_reportContent, &qword_100576948);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptionErrorTTRContextAction()
{
  result = qword_10057F5D0;
  if (!qword_10057F5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031E14C()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001ED530();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10031E248@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts34TranscriptionErrorTTRContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10031E2C0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.transcriptionErrorRadar(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10031E3A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10031E400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10031E460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10031E4C4(uint64_t a1)
{
  result = sub_10031E54C(&qword_10057BEE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10031E508(uint64_t a1)
{
  result = sub_10031E54C(&qword_10057F760);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10031E54C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TranscriptionErrorTTRContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10031E590(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10031E600()
{
  result = qword_10057F768;
  if (!qword_10057F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057F768);
  }

  return result;
}

uint64_t sub_10031E654(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576948);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031E6C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576948);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TranscriptionErrorTTRContextAction.BuildURLError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptionErrorTTRContextAction.BuildURLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10031E888()
{
  result = qword_10057F770;
  if (!qword_10057F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057F770);
  }

  return result;
}

uint64_t *ForegroundSyncUtil.shared.unsafeMutableAddressor()
{
  if (qword_100572848 != -1)
  {
    swift_once();
  }

  return &static ForegroundSyncUtil.shared;
}

id static ForegroundSyncUtil.shared.getter()
{
  if (qword_100572848 != -1)
  {
    swift_once();
  }

  v1 = static ForegroundSyncUtil.shared;

  return v1;
}

uint64_t sub_10031E988()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.interests.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[Categories Sync] Forcing categories sync on storefront change.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return CategoriesSyncUtil.syncCategories(forced:completionHandler:)();
}

Swift::Void __swiftcall ForegroundSyncUtil.syncEverythingIfNeeded()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR___MTForegroundSyncUtil_needsSyncing))
  {

    sub_10031F500();
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.cloudSync.getter();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "[Foreground Sync] Not syncing. Already synced.", v7, 2u);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t ForegroundSyncUtil.lastExpectedFeedsUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ForegroundSyncUtil.lastExpectedFeedsUpdateDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MTForegroundSyncUtil_lastExpectedFeedsUpdateDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

Swift::Void __swiftcall ForegroundSyncUtil.startCloudSyncAfterPrivacy()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v18 = *(v5 - 8);
  v19 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Foreground Sync] Initiating cloud sync after privacy acknowledgement.", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_10031FDAC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EDC88;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v21 = &_swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v20 + 8))(v4, v2);
  (*(v18 + 8))(v7, v19);
}

id sub_10031F498()
{
  v1 = OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter;
  v2 = *(v0 + OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter);
  }

  else
  {
    v4 = sub_10031FE00(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10031F500()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___MTForegroundSyncUtil_needsSyncing] = 0;
  v12[1] = *&v0[OBJC_IVAR___MTForegroundSyncUtil_workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10031FE90;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EDE18;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000E5CC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_10031F7C8(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.cloudSync.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[Foreground Sync] Syncing BookKeeper and UPP.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  [*(a1 + OBJC_IVAR___MTForegroundSyncUtil_syncController) syncEverything];
  sub_100009F1C(0, &qword_100573DE0);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v20 = sub_100045224;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100045040;
  v19 = &unk_1004EDE40;
  v10 = _Block_copy(&aBlock);
  [v9 updateAllPodcastsNeedingRetry:v10];
  _Block_release(v10);

  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 batchFeedFetchIsEnabled];

  v13 = *(a1 + OBJC_IVAR___MTForegroundSyncUtil_workQueue);
  v20 = sub_10031FAE0;
  v21 = 0;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100038258;
  v19 = &unk_1004EDE68;
  v14 = _Block_copy(&aBlock);
  [v12 asyncValueOnQueue:v13 withCompletion:v14];
  _Block_release(v14);

  return CategoriesSyncUtil.syncCategories(forced:completionHandler:)();
}

void sub_10031FAE0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Podcasts();
  v10 = v5;
  v11 = sub_10000E5CC(&qword_1005742C0, &type metadata accessor for Podcasts);
  v6 = sub_10000E680(v9);
  (*(*(v5 - 8) + 104))(v6, enum case for Podcasts.batchFeedFetch(_:), v5);
  LOBYTE(v5) = isFeatureEnabled(_:)();
  sub_100004590(v9);
  if ((v5 & 1) != 0 && !a3 && a1)
  {
    if ([a1 BOOLValue])
    {
      sub_100009F1C(0, &qword_100573DE0);
      v7 = [swift_getObjCClassFromMetadata() sharedInstance];
      v11 = sub_10031FC8C;
      v12 = 0;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 1107296256;
      v9[2] = sub_100045040;
      v10 = &unk_1004EDE90;
      v8 = _Block_copy(v9);
      [v7 updateAllMediaAPIPodcastsWithSource:24 started:v8];
      _Block_release(v8);
    }
  }
}

id ForegroundSyncUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForegroundSyncUtil();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10031FDAC()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___MTForegroundSyncUtil_syncController;
  [*(v1 + OBJC_IVAR___MTForegroundSyncUtil_syncController) syncEverything];
  v3 = *(v1 + v2);

  return [v3 startUPPSyncTimerAfterPrivacy];
}

uint64_t sub_10031FE00(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSDateFormatter) init];
  v3 = OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter;
  v4 = *(a1 + OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter);
  *(a1 + OBJC_IVAR___MTForegroundSyncUtil____lazy_storage___formatter) = v2;

  v5 = sub_10031F498();
  [v5 setDateStyle:2];

  [*(a1 + v3) setTimeStyle:2];
  return *(a1 + v3);
}

uint64_t sub_10031FEB0()
{
  v30 = type metadata accessor for KCURadar.ReportContent();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100168088(&qword_10057F8C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v31 = type metadata accessor for KCURadar();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  result = swift_beginAccess();
  if (!*(v0 + 16))
  {
    return result;
  }

  dispatch thunk of ContextActionsConfiguration.previewModel.getter();
  if (!v33)
  {

    sub_100009104(v32, &qword_100576490);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    return sub_100009104(&v34, &qword_100578DE8);
  }

  sub_100168088(&qword_1005748C0);
  sub_100168088(&qword_10057BC10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_11;
  }

  if (!*(&v35 + 1))
  {
LABEL_11:

    return sub_100009104(&v34, &qword_100578DE8);
  }

  sub_1000109E4(&v34, v37);
  dispatch thunk of ContextActionsConfiguration.context.getter();
  InteractionContext.page.getter();
  (*(v8 + 8))(v10, v7);
  sub_1001B847C(v16, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 19)
  {
    if (EnumCaseMultiPayload == 20 || EnumCaseMultiPayload == 25)
    {
      ContextActionsConfiguration.objectGraph.getter();
      type metadata accessor for PlaybackController();
      BaseObjectGraph.inject<A>(_:)();

      v19 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
      if (v19)
      {
        v20 = v19;
        v26 = MPModelObject.adamID.getter();

        goto LABEL_22;
      }

LABEL_21:
      v26 = 0;
      goto LABEL_22;
    }

LABEL_18:
    sub_1001B84E0(v13);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v26 = *v13;

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_18;
  }

  v26 = InteractionContext.Page.adamID.getter();
LABEL_22:
  sub_1000044A0(v37, v38);
  dispatch thunk of ReferenceLinkModel.timeframe.getter();
  v21 = type metadata accessor for ReferenceLinkTimeframe();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v5, 1, v21) == 1)
  {
    sub_100009104(v5, &qword_10057F8C8);
  }

  else
  {
    ReferenceLinkTimeframe.start.getter();
    (*(v22 + 8))(v5, v21);
  }

  sub_100168088(&unk_10057F8D0);
  sub_1000044A0(v37, v38);
  *v2 = dispatch thunk of ReferenceLinkModel._id.getter();
  v2[1] = v23;
  sub_1000044A0(v37, v38);
  dispatch thunk of ReferenceLinkModel.url.getter();
  (*(v28 + 104))(v2, enum case for KCURadar.ReportContent.link(_:), v30);
  v24 = v27;
  KCURadar.init(showTitle:episodeTitle:showAdamID:episodeAdamID:hostedOrRSS:timestamp:reportContent:)();
  KCURadar.prompt()();

  (*(v29 + 8))(v24, v31);
  sub_1001B84E0(v16);
  return sub_100004590(v37);
}

uint64_t sub_100320510()
{

  v1 = OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReferenceLinkKCUContextAction()
{
  result = qword_10057F820;
  if (!qword_10057F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100320630()
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

uint64_t sub_10032073C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003207CC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

unint64_t sub_100320830(uint64_t a1)
{
  result = sub_100320858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100320858()
{
  result = qword_100582300;
  if (!qword_100582300)
  {
    type metadata accessor for ReferenceLinkKCUContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582300);
  }

  return result;
}

void sub_1003208B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v91 = a3;
  v89 = a2;
  v93 = a1;
  v5 = type metadata accessor for ArtworkModel();
  v86 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v7 - 8);
  v88 = (&v82 - v8);
  v9 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v9 - 8);
  v87 = &v82 - v10;
  v11 = sub_100168088(&qword_10057F8E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v82 - v12;
  v101 = _s16ShowImageRowItemVMa_0();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v82 - v16);
  __chkstk_darwin(v18);
  v20 = &v82 - v19;
  if (a4 >> 62)
  {
    goto LABEL_48;
  }

  v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v100 = v17;
  v22 = _swiftEmptyArrayStorage;
  v97 = a4;
  if (v21)
  {
    v23 = 0;
    v24 = a4 & 0xC000000000000001;
    v25 = a4 & 0xFFFFFFFFFFFFFF8;
    v17 = (v98 + 48);
    v99 = v20;
    do
    {
      if (v24)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_47;
        }

        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v21 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      sub_100321584(v13);
      if ((*v17)(v13, 1, v101) == 1)
      {
        sub_100009104(v13, &qword_10057F8E0);
      }

      else
      {
        sub_100322410(v13, v20, _s16ShowImageRowItemVMa_0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_100243DD0(0, v22[2] + 1, 1, v22);
        }

        v28 = v22[2];
        v27 = v22[3];
        if (v28 >= v27 >> 1)
        {
          v22 = sub_100243DD0(v27 > 1, v28 + 1, 1, v22);
        }

        v22[2] = v28 + 1;
        v20 = v99;
        sub_100322410(v99, v22 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 9) * v28, _s16ShowImageRowItemVMa_0);
        a4 = v97;
      }

      ++v23;
    }

    while (v26 != v21);
  }

  v31 = sub_10023E34C(CPMaximumNumberOfGridImages, v22);
  v92 = v32;
  v33 = v30 >> 1;
  if (v30 >> 1 == v29)
  {

    swift_unknownObjectRelease();
    return;
  }

  v34 = v29;
  v35 = v30;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v95 = aBlock;
  aBlock = _swiftEmptyArrayStorage;
  v36 = *(v101 + 28);
  v99 = objc_opt_self();
  v37 = v33 - v34;
  if (v33 <= v34)
  {
    __break(1u);
    goto LABEL_50;
  }

  v84 = v33;
  v82 = v35;
  v83 = v31;
  v38 = v100;
  v39 = v100 + v36;
  v40 = *(v98 + 9);
  v98 = "defaultCoverImage";
  v94 = "CarPlayLoadArtwork";
  v90 = v34;
  v41 = v40;
  v42 = v92 + v34 * v40;
  do
  {
    sub_100322584(v42, v38, _s16ShowImageRowItemVMa_0);
    [v99 maximumImageSize];
    v43 = v39[64];
    if (v43 == 255)
    {
      v52 = String._bridgeToObjectiveC()();
      v51 = [objc_opt_self() imageNamed:v52];

      if (!v51)
      {
LABEL_23:
        v38 = v100;
        sub_1003225EC(v100, _s16ShowImageRowItemVMa_0);
        goto LABEL_24;
      }
    }

    else
    {
      v44 = *(v39 + 7);
      sub_1002448C4(v44, v39[64]);
      static CGSize.* infix(_:_:)();
      v46 = v45;
      v48 = v47;
      v49 = Color.color.getter();
      v50 = objc_opt_self();
      v51 = [v50 imageWithSolidColor:v49 atSize:{v46, v48}];

      if (v51)
      {
        sub_1002448D8(v44, v43);
      }

      else
      {
        v53 = String._bridgeToObjectiveC()();
        v51 = [v50 imageNamed:v53];
        sub_1002448D8(v44, v43);

        if (!v51)
        {
          goto LABEL_23;
        }
      }
    }

    v38 = v100;
    v54 = objc_allocWithZone(CPListImageRowItemRowElement);
    v55 = String._bridgeToObjectiveC()();
    [v54 initWithImage:v51 title:v55 subtitle:0];

    sub_1003225EC(v38, _s16ShowImageRowItemVMa_0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_24:
    v42 += v41;
    --v37;
  }

  while (v37);
  v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v57 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_10057F8E8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59 = [v56 initWithText:v57 elements:isa allowsMultipleLines:0];

  v60 = v84 - v90;
  if (__OFSUB__(v84, v90))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    return;
  }

  if (!v60)
  {
    v69 = v59;
    v62 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

  aBlock = _swiftEmptyArrayStorage;
  v61 = v59;
  sub_1001A7650(0, v60 & ~(v60 >> 63), 0);
  if (v60 < 0)
  {
    goto LABEL_51;
  }

  v62 = aBlock;
  v63 = v92 + v90 * v41;
  v64 = v86;
  v65 = v85;
  do
  {
    v66 = v96;
    sub_100322584(v63, v96, _s16ShowImageRowItemVMa_0);
    sub_100322584(v66 + *(v101 + 28), v65, &type metadata accessor for ArtworkModel);
    sub_1003225EC(v66, _s16ShowImageRowItemVMa_0);
    aBlock = v62;
    v68 = v62[2];
    v67 = v62[3];
    if (v68 >= v67 >> 1)
    {
      sub_1001A7650(v67 > 1, v68 + 1, 1);
      v64 = v86;
      v62 = aBlock;
    }

    v62[2] = (v68 + 1);
    sub_100322410(v65, v62 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v68, &type metadata accessor for ArtworkModel);
    v63 += v41;
    --v60;
  }

  while (v60);
LABEL_45:
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v62, v59);

  v70 = v88;
  *v88 = v97;
  v71 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v72 = *(*(v71 - 8) + 56);
  v72(v70, 0, 1, v71);
  v73 = v87;
  v72(v87, 1, 1, v71);
  v74 = type metadata accessor for CarPlayTemplateInfo(0);
  v75 = *(v74 + 20);
  sub_1001FBB44(v70, v73);
  *(v73 + v75) = 0;
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  sub_1001D2AD4(v73);
  v76 = v93;
  v106 = sub_100322478;
  v107 = v93;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100372F30;
  v105 = &unk_1004EDF28;
  v77 = _Block_copy(&aBlock);

  [v59 setHandler:v77];
  _Block_release(v77);
  v78 = swift_allocObject();
  v79 = v92;
  v78[2] = v83;
  v78[3] = v79;
  v80 = v82;
  v78[4] = v90;
  v78[5] = v80;
  v78[6] = v76;
  v106 = sub_100322480;
  v107 = v78;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1002B1CD0;
  v105 = &unk_1004EDF78;
  v81 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v59 setListImageRowHandler:v81];
  _Block_release(v81);

  swift_unknownObjectRelease();
}

uint64_t sub_100321584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v2 - 8);
  v47 = &v39 - v3;
  v4 = type metadata accessor for ArtworkModel();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_10057CF40);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = type metadata accessor for FlowDestination();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s16ShowImageRowItemVMa_0();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = LegacyLockup.title.getter();
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v16;
  v19 = v17;
  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_13:

    goto LABEL_14;
  }

  dispatch thunk of LegacyLockup.clickAction.getter();
  if (v52)
  {
    v44 = a1;
    v21 = sub_100168088(&unk_10057BB70);
    v22 = type metadata accessor for FlowAction();
    if ((swift_dynamicCast() & 1) == 0 || (v41 = v22, v42 = v21, v40 = Action.title.getter(), v24 = v23, , (v43 = v24) == 0))
    {

      v27 = 1;
      a1 = v44;
      goto LABEL_15;
    }

    dispatch thunk of LegacyLockup.clickAction.getter();
    if (v52)
    {
      if (swift_dynamicCast())
      {
        dispatch thunk of FlowAction.destination.getter();

        v25 = v48;
        v26 = (*(v49 + 48))(v8, 1, v48);
        a1 = v44;
        if (v26 != 1)
        {
          (*(v49 + 32))(v12, v8, v25);
          v8 = v47;
          LegacyLockup.artwork.getter();
          if ((v46[6])(v8, 1, v4) != 1)
          {
            v46 = &type metadata accessor for ArtworkModel;
            v31 = v45;
            sub_100322410(v8, v45, &type metadata accessor for ArtworkModel);
            *v15 = v18;
            v15[1] = v19;
            v32 = v43;
            v15[2] = v40;
            v15[3] = v32;
            v33 = v50;
            v34 = v15 + *(v50 + 24);
            v35 = sub_100168088(&unk_100575B10);
            v36 = *(v35 + 48);
            v37 = &v34[*(v35 + 64)];
            FlowDestination.pageDestinationURL.getter();
            *&v34[v36] = FlowDestination.pageDestinationPage.getter();
            v38 = LegacyLockup.adamId.getter();

            (*(v49 + 8))(v12, v48);
            *v37 = v38;
            v37[8] = 0;
            a1 = v44;
            type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
            swift_storeEnumTagMultiPayload();
            sub_100322410(v31, v15 + *(v33 + 28), v46);
            sub_100322410(v15, a1, _s16ShowImageRowItemVMa_0);
            v28 = v33;
            v27 = 0;
            return (*(v13 + 56))(a1, v27, 1, v28);
          }

          (*(v49 + 8))(v12, v48);

          v30 = &unk_100578C10;
          goto LABEL_23;
        }

LABEL_22:
        v30 = &qword_10057CF40;
LABEL_23:
        sub_100009104(v8, v30);
        goto LABEL_14;
      }
    }

    else
    {

      sub_100009104(v51, &qword_100578C20);
    }

    a1 = v44;
    (*(v49 + 56))(v8, 1, 1, v48);
    goto LABEL_22;
  }

  sub_100009104(v51, &qword_100578C20);
LABEL_14:
  v27 = 1;
LABEL_15:
  v28 = v50;
  return (*(v13 + 56))(a1, v27, 1, v28);
}

uint64_t sub_100321BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  sub_10023EE80(0, 0, v10, &unk_10040CE10, v13);
}

void sub_100321CFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v54 = a6;
  v59 = a3;
  v60 = a4;
  v12 = type metadata accessor for Logger();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v15 - 8);
  v58 = &v53 - v16;
  v17 = type metadata accessor for CarPlayTemplateInfo(0);
  v57 = *(v17 - 8);
  __chkstk_darwin(v17);
  v53 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v22 - 8);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v53 - v26;
  v28 = _s16ShowImageRowItemVMa_0();
  __chkstk_darwin(v28);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Attempted to select list image row item with invalid index!", v51, 2u);
    }

    v52 = (*(v55 + 8))(v14, v56);
    v59(v52);
  }

  else
  {
    v56 = a9;
    sub_100322584(v54 + *(v29 + 72) * a2, &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), _s16ShowImageRowItemVMa_0);
    v32 = objc_allocWithZone(CPListImageRowItem);
    v33 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &unk_10057F8E8);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v35 = [v32 initWithText:v33 elements:isa allowsMultipleLines:0];

    sub_100322584(&v31[*(v28 + 24)], v21, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v36 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v37 = *(*(v36 - 8) + 56);
    v37(v21, 0, 1, v36);
    v37(v27, 1, 1, v36);
    v38 = *(v17 + 20);
    sub_1001FBB44(v21, v27);
    v27[v38] = 0;
    v39 = v57;
    (*(v57 + 56))(v27, 0, 1, v17);
    sub_1001D2D08(v27, v24);
    v40 = (*(v39 + 48))(v24, 1, v17);
    v41 = 0;
    if (v40 != 1)
    {
      sub_100322584(v24, v53, type metadata accessor for CarPlayTemplateInfo);
      v41 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1003225EC(v24, type metadata accessor for CarPlayTemplateInfo);
    }

    [v35 setUserInfo:v41];
    swift_unknownObjectRelease();
    sub_100009104(v27, &unk_100578410);
    v42 = v58;
    static TaskPriority.userInitiated.getter();
    v43 = type metadata accessor for TaskPriority();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    type metadata accessor for MainActor();
    v44 = v56;

    v45 = v35;
    v46 = v60;

    v47 = static MainActor.shared.getter();
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = &protocol witness table for MainActor;
    v48[4] = v44;
    v48[5] = v45;
    v48[6] = v59;
    v48[7] = v46;
    sub_10023EE80(0, 0, v42, &unk_10040CDF8, v48);

    sub_1003225EC(v31, _s16ShowImageRowItemVMa_0);
  }
}

uint64_t _s16ShowImageRowItemVMa_0()
{
  result = qword_10057F950;
  if (!qword_10057F950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100322410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003224B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100322584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003225EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10032264C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100322748()
{
  result = type metadata accessor for CarPlayTemplateInfo.TemplateType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ArtworkModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003227DC()
{

  swift_unknownObjectRelease();
  sub_10019C0A4(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_100322874()
{
  v1 = v0;
  v31 = *v0;
  v33 = sub_100168088(&qword_10057FA60);
  v35 = *(v33 - 8);
  __chkstk_darwin();
  v30 = v26 - v2;
  v34 = sub_100168088(&qword_10057FA68);
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v32 = v26 - v3;
  v4 = sub_100168088(&qword_10057FA70);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - v6;
  v27 = sub_100168088(&qword_10057FA78);
  v8 = *(v27 - 8);
  __chkstk_darwin();
  v10 = v26 - v9;
  v11 = v0[3];
  v26[0] = v0[4];
  v26[1] = v11;
  swift_getObjectType();
  v26[2] = v0[14];
  [objc_opt_self() maximumItemCount];
  v37 = dispatch thunk of LibraryDataProviderProtocol.episodeListShelfPublisher(episodeSettingsPublisher:pageSize:)();
  *&v41 = v37;
  swift_getKeyPath();
  v28 = sub_100168088(&qword_10057FA80);
  v29 = sub_100009FAC(&qword_10057FA88, &qword_10057FA80);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_10057FA90, &qword_10057FA70);
  Publisher<>.removeDuplicates()();
  (*(v5 + 8))(v7, v4);
  sub_100009FAC(&qword_10057FA98, &qword_10057FA78);
  v12 = v27;
  Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v10, v12);
  type metadata accessor for ModernEpisodesPresenter();
  v13 = *(v0 + 7);
  v14 = *(v0 + 11);
  v43 = *(v0 + 9);
  v44 = v14;
  v45 = *(v0 + 104);
  v41 = *(v0 + 5);
  v42 = v13;
  v38[9] = static ModernEpisodesPresenter.hasHiddenPlayedEpisodesPublisher(episodeListType:episodeSettingsPublisher:libraryDataProvider:lockupCountPublisher:)();
  *&v39[0] = v37;
  v38[0] = v0[15];

  sub_100168088(&qword_100574B10);
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  v15 = v30;
  Publishers.CombineLatest3.init(_:_:_:)();
  v16 = v0[2];
  v17 = *(v1 + 7);
  v18 = *(v1 + 11);
  v39[2] = *(v1 + 9);
  v39[3] = v18;
  v40 = *(v1 + 104);
  v39[0] = *(v1 + 5);
  v39[1] = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 40) = *(v1 + 7);
  *(v19 + 56) = *(v1 + 9);
  *(v19 + 72) = *(v1 + 11);
  *(v19 + 88) = *(v1 + 104);
  *(v19 + 24) = *(v1 + 5);
  *(v19 + 96) = v31;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1003234D8;
  *(v20 + 24) = v19;

  sub_10019BB44(v39, v38);
  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_10057FAA0, &qword_10057FA60);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  v21 = v32;
  v22 = v33;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v35 + 8))(v15, v22);
  sub_100009FAC(&qword_10057FAB0, &qword_10057FA68);
  v23 = v34;
  v24 = Publisher.eraseToAnyPublisher()();

  (*(v36 + 8))(v21, v23);
  return v24;
}

uint64_t sub_100323048(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v25 = a2;
  v8 = sub_100168088(&unk_10057FAC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v24 - v11;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v14 = &v24 - v13;
  v24 = sub_100168088(&unk_100578B20);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v9 + 32))(v18 + v16, v12, v8);
  v19 = v18 + v17;
  v20 = *(a4 + 48);
  *(v19 + 32) = *(a4 + 32);
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a4 + 64);
  v21 = *(a4 + 16);
  *v19 = *a4;
  *(v19 + 16) = v21;
  *(v19 + 65) = v25;
  *(v18 + ((v17 + 73) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_10040CF38;
  *(v22 + 24) = v18;

  sub_10019BB44(a4, v27);
  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_1003232D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100323370, v6, v5);
}

uint64_t sub_100323370()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  sub_100168088(&unk_10057FAC0);
  FRPOutput.content.getter();
  v4 = *(v0 + 16);
  v5 = sub_100323C10(v3, v4, v2, v1);
  v7 = v6;
  v9 = v8;
  sub_100324050(v4);
  v10 = *(v0 + 8);

  return v10(v5, v7, v9);
}

uint64_t sub_100323458()
{
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&qword_10057FA58, &qword_100574B10);
  return Subject<>.send()();
}

uint64_t sub_1003234E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_100168088(&qword_10057FAB8);
  result = v5(a1, *(a1 + *(v6 + 64)));
  *a2 = result;
  return result;
}

uint64_t sub_100323544()
{
  v2 = *(sub_100168088(&unk_10057FAC0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 65);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1001AB9B8;

  return sub_1003232D0(v4, v0 + v3, v5, v6);
}

uint64_t sub_100323678(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *(v2 + 120) = CurrentValueSubject.init(_:)();
  *(v2 + 16) = a1;
  sub_100168088(&unk_100575CF0);

  BaseObjectGraph.inject<A>(_:)();
  v5 = v10[1];
  *(v2 + 24) = v10[0];
  *(v2 + 32) = v5;
  v6 = *a2;
  *(v2 + 56) = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v2 + 72) = *(a2 + 32);
  *(v2 + 88) = v7;
  *(v2 + 104) = *(a2 + 64);
  *(v2 + 40) = v6;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10019BB44(a2, v10);
  v8 = dispatch thunk of LibraryDataProviderProtocol.episodeListSettingsPublisher(listType:)();
  swift_unknownObjectRelease();
  *(v2 + 112) = v8;
  return v2;
}

uint64_t sub_100323788(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = _swiftEmptyArrayStorage;
  if (!*(a2 + 16))
  {
    return v3;
  }

  type metadata accessor for ModernShelf();
  result = ModernShelf.items.getter();
  v7 = result;
  v35 = _swiftEmptyArrayStorage;
  v8 = *(result + 16);
  if (!v8)
  {
    goto LABEL_48;
  }

  v9 = 0;
  v10 = result + 32;
  v31 = *(result + 16);
  v28 = v8 - 1;
  v29 = result + 32;
  do
  {
    v30 = v3;
    v11 = v10 + 40 * v9;
    v12 = v9;
    v13 = v31;
    while (1)
    {
      if (v12 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100004428(v11, v34);
      sub_100004428(v34, v33);
      sub_100168088(&qword_1005748E0);
      type metadata accessor for LibraryEpisodeLockup();
      if (swift_dynamicCast())
      {
        break;
      }

      type metadata accessor for LibraryShowLockup();
      if (swift_dynamicCast())
      {
        v47 = 6;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0;
        v52 = 10;

        v16 = static EpisodeListType.== infix(_:_:)();

        if (v16)
        {
          sub_1001AA70C();
          v36[0] = LibraryShowLockup.uuid.getter();
          v36[1] = v17;
          v36[2] = 3;
          v37 = 2;
          v38 = 8;
          v18 = sub_100271D14(a1, v32, v36, 9);

          goto LABEL_42;
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v46 = 10;
        if (static EpisodeListType.== infix(_:_:)())
        {
          sub_1001AA70C();
          v39[0] = LibraryShowLockup.uuid.getter();
          v39[1] = v26;
          v39[2] = 2;
          v40 = 2;
          v41 = 8;
          v18 = sub_100271D14(a1, v32, v39, 7);
          v13 = v31;

          goto LABEL_42;
        }
      }

      sub_100004590(v33);
      result = sub_100004590(v34);
LABEL_7:
      ++v12;
      v11 += 40;
      if (v13 == v12)
      {
        v3 = v30;
        goto LABEL_48;
      }
    }

    v14 = *(a3 + 64);
    if (v14 > 7)
    {
      v19 = a3[2];
      if (v14 == 8)
      {
        if (a3[3] == 2)
        {
          if (v19 == 3)
          {
            v27 = 9;
          }

          else
          {
            v27 = 0;
          }

          if (v19 == 2)
          {
            v15 = 7;
          }

          else
          {
            v15 = v27;
          }

          goto LABEL_41;
        }

LABEL_40:
        v15 = 0;
        goto LABEL_41;
      }

      if (v14 != 10)
      {
        goto LABEL_40;
      }

      v20 = a3[7];
      v21 = *a3;
      v22 = a3[1];
      v23 = a3[3] | v19;
      v24 = a3[6] | a3[5] | a3[4];
      if (v23 | *a3 | v20 | v24 | v22)
      {
        v25 = v23 | v20 | v24 | v22;
        if (v21 != 1 || v25)
        {
          if (v21 != 5 || v25)
          {
            if (v21 != 6 || v25)
            {
              goto LABEL_40;
            }

            v15 = 9;
          }

          else
          {
            v15 = 8;
          }
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 7;
      }
    }

    else if (v14 == 5)
    {
      v15 = 13;
    }

    else
    {
      if (v14 != 6)
      {
        goto LABEL_40;
      }

      v15 = 2;
    }

LABEL_41:
    sub_1001AA70C();
    v18 = sub_10021E760(a1, v32, 1, 0, v15);
LABEL_42:

    sub_100004590(v33);
    result = sub_100004590(v34);
    if (!v18)
    {
      goto LABEL_7;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v9 = v12 + 1;
    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v35;
    v10 = v29;
  }

  while (v28 != v12);
LABEL_48:

  return v3;
}

uint64_t sub_100323C10(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = type metadata accessor for ContentUnavailablePage.Presentation();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_10057FAD0);
  __chkstk_darwin();
  v12 = &v27 - v11;
  v13 = *(type metadata accessor for ContentUnavailablePage() - 8);
  __chkstk_darwin();
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      return 0;
    }

    v29 = a4;
    v28 = v8;
    v30 = v14;
    type metadata accessor for CarPlayPageLoadCoordinator();
    swift_allocObject();

    v18 = sub_1002442DC(v17);

    v31 = v18;
    v32 = v18;
    v19 = BaseObjectGraph.satisfying<A>(_:with:)();
    v20 = sub_100323788(v19, a2, a3);
    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100168088(&unk_100574A00);
        v21 = _bridgeCocoaArray<A>(_:)();
        goto LABEL_8;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = v20;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_8:

      v22 = objc_allocWithZone(CPListSection);
      sub_1001AA058(v21);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v24 = [v22 initWithItems:isa];

      sub_100168088(&unk_100574680);
      a2 = swift_allocObject();
      *(a2 + 16) = xmmword_1004007B0;
      *(a2 + 32) = v24;

      return a2;
    }

    type metadata accessor for ModernEpisodesPresenter();
    static ModernEpisodesPresenter.contentUnavailablePage(for:hasHiddenPlayedEpisodes:)();
    if ((*(v13 + 48))(v12, 1, v30) == 1)
    {

      sub_100324060(v12);
      return 0;
    }

    else
    {
      v25 = v30;
      (*(v13 + 32))(v16, v12, v30);
      ContentUnavailablePage.presentation.getter();
      a2 = ContentUnavailablePage.Presentation.description.getter();

      (*(v28 + 8))(v10, v7);
      (*(v13 + 8))(v16, v25);
    }
  }

  return a2;
}

unint64_t sub_100324050(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100324060(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057FAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003240C8()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 reportBrowse:v1];
}

uint64_t sub_100324114()
{
  v0 = sub_100168088(&qword_10057FAD8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v17 = sub_100168088(&qword_10057FAE0);
  __chkstk_darwin(v17);
  v5 = &v15 - v4;
  v6 = sub_100168088(&qword_10057FAE8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  type metadata accessor for ShowSettingsView();
  v10 = AppStorage.wrappedValue.getter();
  if (v18 == 1 && (v10 = AppStorage.wrappedValue.getter(), (v18 & 1) == 0))
  {
    v16 = &v15;
    __chkstk_darwin(v10);
    sub_100324AA0();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v19 = v12;
    v20 = v13 & 1;
    v21 = v14;
    sub_100168088(&qword_10057FB08);
    sub_100009FAC(&qword_10057FB00, &qword_10057FB08);
    Section<>.init(footer:content:)();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100324CEC();
    sub_100324DB0();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = v6;
    __chkstk_darwin(v10);
    sub_100168088(&qword_10057C1C8);
    sub_100009FAC(&qword_10057FAF0, &qword_10057C1C8);
    Section<>.init(content:)();
    (*(v1 + 16))(v5, v3, v0);
    swift_storeEnumTagMultiPayload();
    sub_100324CEC();
    sub_100324DB0();
    _ConditionalContent<>.init(storage:)();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_100324580@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100168088(&qword_1005761F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v33 - v7;
  v9 = sub_100168088(&qword_10057FB18);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v36 = LocalizedStringKey.init(stringLiteral:)();
  v35 = v16;
  v33[3] = v17;
  v34 = v18;
  v19 = a1[6];
  v41 = a1[5];
  v42 = v19;
  v43 = a1[7];
  v20 = a1[3];
  v40 = a1[4];
  v39 = v20;
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v41 = v45[2];
  v42 = v45[3];
  v43 = v45[4];
  v44 = v46;
  v39 = v45[0];
  v40 = v45[1];
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(v45, &qword_100577810);
  Toggle<>.init(_:isOn:)();
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = 1;
  v23 = &v15[*(sub_100168088(&qword_10057FB20) + 36)];
  *v23 = KeyPath;
  v23[1] = sub_100324E74;
  v23[2] = v22;
  v24 = static Color.secondary.getter();
  v25 = swift_getKeyPath();
  v26 = &v15[*(v10 + 44)];
  *v26 = v25;
  v26[1] = v24;
  sub_1003249B4();
  Button<>.init(_:action:)();
  sub_100324E8C(v15, v12);
  v27 = *(v4 + 16);
  v28 = v37;
  v27(v37, v8, v3);
  v29 = v38;
  sub_100324E8C(v12, v38);
  v30 = sub_100168088(&qword_10057FB28);
  v27((v29 + *(v30 + 48)), v28, v3);
  v31 = *(v4 + 8);
  v31(v8, v3);
  sub_100009104(v15, &qword_10057FB18);
  v31(v28, v3);
  return sub_100009104(v12, &qword_10057FB18);
}

uint64_t sub_1003249B4()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    v3 = [v0 currentDevice];
    [v3 userInterfaceIdiom];
  }

  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_100324AA0()
{
  v0 = objc_opt_self();
  v1 = [v0 currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    v3 = [v0 currentDevice];
    [v3 userInterfaceIdiom];
  }

  return LocalizedStringKey.init(stringLiteral:)();
}

uint64_t sub_100324B8C()
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(&v1, &qword_100577810);
  return Toggle<>.init(_:isOn:)();
}

unint64_t sub_100324CEC()
{
  result = qword_10057FAF8;
  if (!qword_10057FAF8)
  {
    sub_100168310(&qword_10057FAE8);
    sub_100009FAC(&qword_10057FB00, &qword_10057FB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057FAF8);
  }

  return result;
}

unint64_t sub_100324DB0()
{
  result = qword_10057FB10;
  if (!qword_10057FB10)
  {
    sub_100168310(&qword_10057FAD8);
    sub_100009FAC(&qword_10057FAF0, &qword_10057C1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057FB10);
  }

  return result;
}

uint64_t sub_100324E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057FB18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100324F00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for LegacyChannelLockup();
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        ++v4;
        static MetricsDataConfiguration.default.getter();
        sub_100357920(v6, 1, &v7);
        v13 = v7;
        sub_100009104(&v13, &unk_100574650);
        v12 = v8;
        sub_100009104(&v12, &unk_100573A90);
        v11 = v9;
        sub_100009104(&v11, &unk_100574660);
        sub_100037470(v10);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v2 != v4);
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_1003250A8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10032519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v50 = a5;
  v54 = a4;
  v55 = a3;
  v51 = a2;
  v52 = a1;
  v40 = type metadata accessor for Logger();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for EpisodeListSettings();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v53 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v44 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_playerController] = 0;
  v49 = OBJC_IVAR____TtC8Podcasts13WidgetManager_workQueue;
  v41 = sub_100009F1C(0, &qword_1005729D0);
  v43 = "Podcasts.WidgetManager";
  static DispatchQoS.userInitiated.getter();
  v45 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v17 = *(v13 + 104);
  v46 = v13 + 104;
  v48 = v17;
  v17(v15);
  *v58 = &_swiftEmptyArrayStorage;
  v42 = sub_1000183DC(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v6[v49] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = OBJC_IVAR____TtC8Podcasts13WidgetManager_refreshQueue;
  static DispatchQoS.userInitiated.getter();
  v48(v15, v45, v47);
  *v58 = &_swiftEmptyArrayStorage;
  v19 = v50;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v51;
  v21 = v52;
  *&v6[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_waitToReloadUntilSave] = 0;
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_seenEpisodeUUIDs] = &_swiftEmptySetSingleton;
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_subscriptions] = &_swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask] = 0;
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_observerTokens] = &_swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC8Podcasts13WidgetManager_playerSubscriptions] = &_swiftEmptyArrayStorage;
  v22 = OBJC_IVAR____TtC8Podcasts13WidgetManager_lastPlayedInfo;
  PlayedInfo = type metadata accessor for WidgetLastPlayedInfo();
  (*(*(PlayedInfo - 8) + 56))(&v7[v22], 1, 1, PlayedInfo);
  v24 = &v7[OBJC_IVAR____TtC8Podcasts13WidgetManager_libraryDataProvider];
  *v24 = v21;
  *(v24 + 1) = v20;
  sub_100004428(v55, &v7[OBJC_IVAR____TtC8Podcasts13WidgetManager_imageProvider]);
  sub_100004428(v54, &v7[OBJC_IVAR____TtC8Podcasts13WidgetManager_bucketingStrategy]);
  *&v7[OBJC_IVAR____TtC8Podcasts13WidgetManager_imageUpdateThrottleInterval] = a6;
  *&v7[OBJC_IVAR____TtC8Podcasts13WidgetManager_playbackController] = v19;
  v25 = type metadata accessor for WidgetManager();
  v57.receiver = v7;
  v57.super_class = v25;
  swift_unknownObjectRetain();

  v26 = objc_msgSendSuper2(&v57, "init");
  swift_getObjectType();
  *v58 = 0;
  *&v58[2] = v62;
  v59 = v63;
  *v60 = *v64;
  *&v60[14] = *&v64[14];
  v61 = 6;
  v27 = v26;
  v28 = v53;
  EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
  result = static WidgetConstants.upNextMaxNumberOfEpisodesToLoad.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = *&v27[OBJC_IVAR____TtC8Podcasts13WidgetManager_workQueue];
    v31 = dispatch thunk of LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:queue:)();

    (*(v36 + 8))(v28, v37);
    v56 = v31;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100168088(&qword_100574100);
    sub_100009FAC(&qword_10057FCB8, &qword_100574100);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_100168088(&unk_1005783F0);
    sub_100009FAC(&unk_10057A070, &unk_1005783F0);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();

    sub_100018D30();
    sub_10001972C();
    v32 = v38;
    static Logger.widget.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "WidgetManager initialized", v35, 2u);
    }

    swift_unknownObjectRelease();

    sub_100004590(v54);
    sub_100004590(v55);
    (*(v39 + 8))(v32, v40);
    return v27;
  }

  return result;
}

uint64_t sub_100325AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a7;
  *(v7 + 228) = a6;
  *(v7 + 24) = a4;
  sub_100168088(&qword_100578010);
  *(v7 + 48) = swift_task_alloc();
  v8 = type metadata accessor for OSSignposter();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  v9 = type metadata accessor for ArtworkRequest();
  *(v7 + 80) = v9;
  v10 = *(v9 - 8);
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 + 64);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v11 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 120) = v11;
  *(v7 + 128) = *(v11 - 8);
  *(v7 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100325C84, 0, 0);
}

uint64_t sub_100325C84()
{
  sub_100009F1C(0, &qword_1005735F0);
  v1 = static MTDB.shared.getter();
  v2 = NSManagedObjectContextProvider.privateManagedObjectContext.getter();
  *(v0 + 144) = v2;
  v3 = v2;
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 228);

  v10 = swift_allocObject();
  *(v0 + 152) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
  v3;
  sub_100327C8C(v8, v7, v9);
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  v12 = sub_100168088(&qword_10057FCB0);
  *v11 = v0;
  v11[1] = sub_100325EAC;
  v13 = *(v0 + 136);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v13, sub_100327CB0, v10, v12);
}

uint64_t sub_100325EAC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v3 = sub_100326708;
  }

  else
  {
    v3 = sub_100326030;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100326030()
{
  v1 = *(v0 + 16);
  *(v0 + 176) = v1;
  v2 = *(v1 + 16);
  *(v0 + 184) = v2;
  if (v2)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v4 + 80);
    *(v0 + 224) = v5;
    *(v0 + 192) = *(v4 + 72);
    v6 = *(v4 + 16);
    v7 = (v5 + 32) & ~v5;
    *(v0 + 200) = v6;
    *(v0 + 208) = 0;
    v8 = *(v0 + 112);
    v18 = *(v0 + 104);
    v19 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    v20 = *(v0 + 40);
    v6(v8, v1 + v7, v9);
    static OSSignposter.widget.getter();
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v6(v18, v8, v9);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    (*(v4 + 32))(v12 + v7, v18, v9);
    *(v12 + v19) = v20;
    v13 = v20;
    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1003262CC;

    return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF();
  }

  else
  {

    v15 = *(v0 + 144);
    sub_10001972C();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1003262CC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  sub_100009104(v4, &qword_100578010);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100326450, 0, 0);
}

uint64_t sub_100326450()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 208) + 1;
  (*(*(v0 + 88) + 8))(*(v0 + 112), *(v0 + 80));
  if (v2 == v1)
  {

    v3 = *(v0 + 144);
    sub_10001972C();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 200);
    v7 = *(v0 + 208) + 1;
    *(v0 + 208) = v7;
    v8 = *(v0 + 112);
    v18 = *(v0 + 104);
    v9 = *(v0 + 88);
    v10 = *(v0 + 80);
    v17 = *(v0 + 48);
    v19 = *(v0 + 40);
    v11 = (*(v0 + 224) + 32) & ~*(v0 + 224);
    v12 = (*(v0 + 96) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6(v8, *(v0 + 176) + v11 + *(v0 + 192) * v7, v10);
    static OSSignposter.widget.getter();
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
    v6(v18, v8, v10);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    (*(v9 + 32))(v14 + v11, v18, v10);
    *(v14 + v12) = v19;
    v15 = v19;
    v16 = swift_task_alloc();
    *(v0 + 216) = v16;
    *v16 = v0;
    v16[1] = sub_1003262CC;

    return __s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF();
  }
}

uint64_t sub_100326708()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003267B0(void *a1@<X8>)
{
  v3 = NSManagedObjectContext.episode(for:)();
  if (!v1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v3 podcast];

      if (v5)
      {
        v6 = MTPodcast.standardArtworkRequests.getter();
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    *a1 = v6;
  }
}

uint64_t sub_10032684C()
{

  sub_100326BB4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003268F0()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100326960@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_100573AC0);
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v21 = a1;
    if (result >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      v7 = &_swiftEmptyArrayStorage;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

LABEL_10:
        v10 = v8;
        v11 = MTPodcast.standardArtworkRequests.getter();

        v12 = *(v11 + 16);
        v13 = v7[2];
        v14 = v13 + v12;
        if (__OFADD__(v13, v12))
        {
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v14 <= v7[3] >> 1)
        {
          if (*(v11 + 16))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v13 <= v14)
          {
            v16 = v13 + v12;
          }

          else
          {
            v16 = v13;
          }

          v7 = sub_100036414(isUniquelyReferenced_nonNull_native, v16, 1, v7);
          if (*(v11 + 16))
          {
LABEL_19:
            v17 = (v7[3] >> 1) - v7[2];
            type metadata accessor for ArtworkRequest();
            if (v17 < v12)
            {
              goto LABEL_29;
            }

            swift_arrayInitWithCopy();

            if (v12)
            {
              v18 = v7[2];
              v19 = __OFADD__(v18, v12);
              v20 = v18 + v12;
              if (v19)
              {
                goto LABEL_30;
              }

              v7[2] = v20;
            }

            goto LABEL_6;
          }
        }

        if (v12)
        {
          goto LABEL_28;
        }

LABEL_6:
        ++v6;
        if (v9 == i)
        {
          goto LABEL_33;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v8 = *(v4 + 8 * v6 + 32);
      v9 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_10;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v7 = &_swiftEmptyArrayStorage;
LABEL_33:

    *v21 = v7;
  }

  return result;
}

uint64_t sub_100326BB4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.widget.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finished prefetching widget artwork", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC8Podcasts13WidgetManager_artworkPrefetchTask) = 0;

  return sub_10001972C();
}

id sub_100326D10()
{
  v1 = OBJC_IVAR____TtC8Podcasts13WidgetManager_observerTokens;
  swift_beginAccess();
  v9 = v0;
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      v7 = [objc_opt_self() defaultCenter];
      [v7 removeObserver:v5];
      swift_unknownObjectRelease();

      ++v4;
    }

    while (v6 != v3);
  }

  v10.receiver = v9;
  v10.super_class = type metadata accessor for WidgetManager();
  return objc_msgSendSuper2(&v10, "dealloc");
}

uint64_t sub_100326FA8(uint64_t a1)
{
  v2 = type metadata accessor for OSSignposter();
  __chkstk_darwin(v2 - 8);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v5 - 8);
  v37 = v36 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_10057FCA0);
  __chkstk_darwin(v11 - 8);
  v13 = v36 - v12;
  v14 = type metadata accessor for WidgetNowPlayingInfo();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WidgetNowPlayingInfo.loadFromDefaults()();
  sub_1000183DC(&qword_10057FCA8, &type metadata accessor for WidgetNowPlayingInfo);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    static WidgetNowPlayingInfo.saveToDefaults(info:)();
    (*(v15 + 16))(v13, v17, v14);
    (*(v15 + 56))(v13, 0, 1, v14);
    v18 = WidgetNowPlayingInfo.shouldTriggerWidgetUpdateFrom(oldInfo:)();
    sub_100009104(v13, &qword_10057FCA0);
    if (v18)
    {
      static Logger.widget.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v36[1] = v4;
      if (v21)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "nowPlayingInfo changed enough to trigger refresh", v22, 2u);
      }

      (*(v8 + 8))(v10, v7);
      WidgetNowPlayingInfo.logInfo()();
      sub_10001972C();
      v23 = WidgetNowPlayingInfo.currentEpisodeID.getter();
      if (v25 != -1)
      {
        v26 = v23;
        v27 = v24;
        v28 = v25;
        v29 = v37;
        static TaskPriority.userInitiated.getter();
        v30 = type metadata accessor for TaskPriority();
        (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
        static OSSignposter.widget.getter();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = 0;
        *(v31 + 32) = v26;
        *(v31 + 40) = v27;
        *(v31 + 48) = v28;
        v32 = v38;
        *(v31 + 56) = v38;
        sub_100327C78(v26, v27, v28);
        v33 = v32;
        _sScT18PodcastsFoundations5Error_pRs_rlE8priority10signposter4name5blockScTyxsAB_pGScPSg_2os12OSSignposterVs12StaticStringVxyYaKYAcntcfC();

        sub_1001CEA54(v26, v27, v28);
      }
    }
  }

  v34 = *(v15 + 8);
  v34(a1, v14);
  return (v34)(v17, v14);
}

void sub_100327470(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_1003274F4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Podcasts13WidgetManager_waitToReloadUntilSave;
  if (*(a1 + OBJC_IVAR____TtC8Podcasts13WidgetManager_waitToReloadUntilSave) == 1)
  {
    static Logger.widget.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Received save notification after Timeline change", v10, 2u);
    }

    (*(v3 + 8))(v6, v2);
    *(a1 + v7) = 0;
    return sub_10001972C();
  }

  return result;
}

uint64_t sub_100327654()
{
  v0 = sub_100168088(&qword_100574760);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - v5;
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = type metadata accessor for WidgetNowPlayingInfo();
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.widget.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = v8;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "App is quiting", v18, 2u);
    v8 = v23;
  }

  (*(v13 + 8))(v15, v12);
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(v8, 1, 1, v19);
  v20(v6, 1, 1, v19);
  v20(v3, 1, 1, v19);
  WidgetNowPlayingInfo.init(currentEpisodeID:isPlaying:predictedStartDate:predictedCompletionDate:timeRemaining:duration:showPlayerArtworkUntilDate:)();
  sub_100326FA8(v11);
  return sub_100019800();
}

void sub_100327990()
{
  if (!qword_10057FC80)
  {
    type metadata accessor for WidgetLastPlayedInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10057FC80);
    }
  }
}

uint64_t sub_1003279E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100327AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057FC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100327B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057FC98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100327BA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10021A620;

  return sub_100325AB8(a1, v4, v5, v6, v7, v9, v8);
}

id sub_100327C78(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100327C8C(result, a2, a3);
  }

  return result;
}

id sub_100327C8C(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100327CD4(uint64_t a1)
{
  v4 = *(type metadata accessor for ArtworkRequest() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_100039DB4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100327E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = type metadata accessor for ShowOffer();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v26 - v12;
  __chkstk_darwin();
  v15 = &v26 - v14;
  if (a1)
  {
    v16 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(a1 + v16, v13);
    sub_1001A15C4(v13, v15);
    sub_1001A1560(v15, v11);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v7 + 32))(v9, v11, v6);
      ShowOffer.storeUrl.getter();
      (*(v7 + 8))(v9, v6);
      return sub_1001C3734(v15, type metadata accessor for PodcastContextActionDataType);
    }

    else
    {
      sub_1001C3734(v11, type metadata accessor for PodcastContextActionDataType.Kind);
      v20 = sub_100215D14();
      if (v20)
      {
        v21 = v20;
        v22 = [v20 shareURL];

        if (v22)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v23 = 0;
        }

        else
        {
          v23 = 1;
        }

        sub_1001C3734(v15, type metadata accessor for PodcastContextActionDataType);
        v25 = type metadata accessor for URL();
        (*(*(v25 - 8) + 56))(v5, v23, 1, v25);
        return sub_1001B8A3C(v5, a2);
      }

      else
      {
        sub_1001C3734(v15, type metadata accessor for PodcastContextActionDataType);
        v24 = type metadata accessor for URL();
        return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
      }
    }
  }

  else
  {
    v18 = type metadata accessor for URL();
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

uint64_t sub_100328264()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_shareLink;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v7, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1001FDD40(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v9 = [objc_opt_self() generalPasteboard];
  URL.absoluteString.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setString:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10032844C()
{

  v1 = OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001FDD40(v0 + OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_shareLink);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyLinkPodcastContextAction()
{
  result = qword_10057FCE8;
  if (!qword_10057FCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100328564()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_100012E4C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100328654@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003286CC@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.copyPodcastLink(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1003287A8()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v6 - v1;

  sub_100327E70(v3, v2);

  v4 = OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_shareLink;
  swift_beginAccess();
  sub_1001FDDA8(v2, v0 + v4);
  return swift_endAccess();
}

uint64_t sub_10032886C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1003288CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10032892C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10032898C(uint64_t a1)
{
  result = sub_100328A14(&qword_10057FE10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003289D0(uint64_t a1)
{
  result = sub_100328A14(&qword_10057FE18);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100328A14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CopyLinkPodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100328A58()
{
  v1 = v0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_file);
  v4 = v3;
  v15 = 0;
  v5 = [v2 removeItemAtURL:v3 error:&v15];

  if (v5)
  {
    v6 = v15;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v7 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v7)
    {
      v17 = sub_100168088(&qword_100578BE0);
      v15 = 0;
      v16 = 0;

      v7(&v15);
      sub_100037470(v7);
      sub_100004590(&v15);
    }

    sub_10003172C();
  }

  else
  {
    v8 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    sub_1001FE728();
    v9 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();

    v14 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v14)
    {
      v17 = sub_100168088(&qword_100578BE0);
      v15 = 0;
      v16 = 0;

      v14(&v15);
      sub_100037470(v14);
      sub_100004590(&v15);
    }

    sub_10003172C();
  }
}

uint64_t sub_100328D84()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input + 8));

  v1 = OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_file;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for DeleteFileOperation()
{
  result = qword_10057FE68;
  if (!qword_10057FE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100328EFC()
{
  result = type metadata accessor for URL();
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

uint64_t sub_100328FAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts19DeleteFileOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

BOOL sub_100328FCC()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
  swift_beginAccess();
  sub_100010430(v0 + v3, v2, &qword_100574040);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
  sub_100009104(v2, &qword_100574040);
  return v5;
}

id sub_1003290DC()
{
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v2 = &v8 - v1;
  result = sub_10032929C();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (!*(v0 + 16))
    {

      v7 = type metadata accessor for PresentationSource();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      return sub_100009104(v2, &unk_10057BB90);
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v5 = type metadata accessor for PresentationSource();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {

      return sub_100009104(v2, &unk_10057BB90);
    }

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v6 + 8))(v2, v5);
  }

  return result;
}

id sub_10032929C()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v36 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = (*(*v0 + 240))(v7);
  result = 0;
  if (v10)
  {
    v12 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
    swift_beginAccess();
    sub_100010430(v0 + v12, v2, &qword_100574040);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100009104(v2, &qword_100574040);
      return 0;
    }

    else
    {
      (*(v4 + 32))(v9, v2, v3);
      v13 = *(v4 + 16);
      v13(v6, v9, v3);
      v14 = v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle;
      v15 = *(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
      v16 = *(v14 + 8);

      v17 = sub_10032A6F4(v6, v15, v16);
      v38 = v4;
      if (v17)
      {
        v18 = v17;
        sub_100168088(&unk_1005747C0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_100400790;
        *(v19 + 56) = type metadata accessor for ShareOtherContextAction.ActivityItemProvider(0);
        *(v19 + 32) = v18;
      }

      else
      {
        sub_100168088(&unk_1005747C0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_100400790;
        *(v20 + 56) = v3;
        v21 = sub_10000E680((v20 + 32));
        v13(v21, v9, v3);
      }

      v22 = objc_allocWithZone(UIActivityViewController);
      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_10032A978();
      v24 = Array._bridgeToObjectiveC()().super.isa;
      v37 = [v22 initWithActivityItems:isa applicationActivities:v24];

      sub_100168088(&unk_1005800D0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_10040D320;
      *(v25 + 32) = UIActivityTypePrint;
      *(v25 + 40) = UIActivityTypeAssignToContact;
      *(v25 + 48) = UIActivityTypeAddToReadingList;
      *(v25 + 56) = UIActivityTypePostToFlickr;
      *(v25 + 64) = UIActivityTypePostToVimeo;
      *(v25 + 72) = UIActivityTypeSaveToCameraRoll;
      v26 = UIActivityTypeCreateReminder;
      *(v25 + 80) = UIActivityTypeCreateReminder;
      v27 = UIActivityTypePrint;
      v28 = UIActivityTypeAssignToContact;
      v29 = UIActivityTypeAddToReadingList;
      v30 = UIActivityTypePostToFlickr;
      v31 = UIActivityTypePostToVimeo;
      v32 = UIActivityTypeSaveToCameraRoll;
      v33 = v26;
      *(v25 + 88) = String._bridgeToObjectiveC()();
      type metadata accessor for ActivityType(0);
      v34 = Array._bridgeToObjectiveC()().super.isa;

      v35 = v37;
      [v37 setExcludedActivityTypes:v34];

      (*(v38 + 8))(v9, v3);
      return v35;
    }
  }

  return result;
}

id sub_100329718()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v23 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = (*(*v0 + 240))(v7);
  result = 0;
  if (v10)
  {
    v12 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
    swift_beginAccess();
    sub_100010430(v0 + v12, v2, &qword_100574040);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100009104(v2, &qword_100574040);
      return 0;
    }

    (*(v4 + 32))(v9, v2, v3);
    v13 = (v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
    v14 = *(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle + 8);
    if (v14)
    {
      v15 = *v13;
      v16 = *(v4 + 16);
      v16(v6, v9, v3);

      v17 = sub_10032A6F4(v6, v15, v14);
      if (v17)
      {
        v18 = v17;
        goto LABEL_9;
      }
    }

    else
    {
      v16 = *(v4 + 16);
    }

    v16(v6, v9, v3);
    v18 = sub_10032A6F4(v6, 0, 0xE000000000000000);
    if (!v18)
    {
LABEL_10:
      (*(v4 + 8))(v9, v3);
      return v18;
    }

LABEL_9:
    v19 = objc_opt_self();
    sub_100168088(&unk_1005747C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100400790;
    *(v20 + 56) = type metadata accessor for ShareOtherContextAction.ActivityItemProvider(0);
    *(v20 + 32) = v18;
    v21 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v19 mt_configurationWithActivityItems:isa];

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100329A54()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v13[-v1];
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for OtherContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      v5 = qword_100593318;
      v6 = type metadata accessor for URL();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v4 + v5, v6);
      (*(v7 + 56))(v2, 0, 1, v6);
      v8 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
      swift_beginAccess();

      sub_1001FDDA8(v2, v0 + v8);
      swift_endAccess();
      v9 = v4 + qword_100593320;
      v11 = *(v4 + qword_100593320);
      v10 = *(v9 + 8);

      v12 = (v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
      *v12 = v11;
      v12[1] = v10;
    }
  }

  return result;
}