unint64_t sub_100208684(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ModernPage();
  __chkstk_darwin(v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageContent();
  __chkstk_darwin(v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1001AD1FC(v12, &type metadata accessor for PageContent);
      return 0;
    }

    else
    {
      sub_1001AD194(v12, v5, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator();
      swift_allocObject();

      v21 = sub_1002442DC(v20);

      v26[1] = v21;
      v22 = BaseObjectGraph.satisfying<A>(_:with:)();
      v23 = sub_100207EF8(v22, v5);
      v24 = v23;
      if (v23 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1001AD1FC(v5, &type metadata accessor for ModernPage);
      if (v25)
      {
        return v24;
      }

      else
      {

        return 0;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to load the store show store page: %@", v17, 0xCu);
      sub_100009104(v18, &qword_100575B20);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100208A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100208AC8()
{
  v1 = sub_100168088(&qword_1005775C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = *(v0 + 64);
  if (v17)
  {
    v24 = v7;
    v18 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_10020ADB8(v17 + v18, v13, type metadata accessor for EpisodeContextActionDataType);
    sub_10020ACF0(v13, v16, type metadata accessor for EpisodeContextActionDataType);
    sub_10020ADB8(v16, v10, type metadata accessor for EpisodeContextActionDataType);
    sub_100208DAC(v10, v3);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v20 = v24;
      sub_10020ACF0(v3, v24, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      sub_10020A5AC(v25);
      v21 = PodcastState.isSubscribed.getter();
      sub_1001C3794(v25);
      sub_10020AD58(v20, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      sub_10020AD58(v16, type metadata accessor for EpisodeContextActionDataType);
      v19 = v21 ^ 1;
      return v19 & 1;
    }

    sub_10020AD58(v16, type metadata accessor for EpisodeContextActionDataType);
    sub_100009104(v3, &qword_1005775C0);
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100208DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for ShowOffer();
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_1005775C0);
  __chkstk_darwin(v6 - 8);
  v54 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v54 - v9;
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for EpisodeOffer();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v23 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = a1;
  sub_10020ADB8(a1, v22, type metadata accessor for EpisodeContextActionDataType);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v27 = v23;
      if (*(*v22 + 16) == 1)
      {
        (*(v14 + 16))(v16, *v22 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

        (*(v14 + 32))(v19, v16, v13);
        EpisodeOffer.showOffer.getter();
        sub_100209A80(v5, v12);
        sub_10020AD58(v58, type metadata accessor for EpisodeContextActionDataType);
        (*(v14 + 8))(v19, v13);
        v26 = v59;
        if ((*(v23 + 48))(v12, 1, v59))
        {
          sub_100009104(v12, &qword_1005775C0);
          goto LABEL_45;
        }

        v52 = v12;
LABEL_33:
        v46 = v56;
        sub_10020ACF0(v52, v56, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
        v35 = v57;
        goto LABEL_35;
      }

      sub_10020AD58(v58, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
      v38 = *v22;

      v39 = *(v38 + 16);

      v27 = v23;
      if (v39 == 1)
      {
        v29 = v58;
        v40 = sub_100398A94();
        v26 = v59;
        if (v40)
        {
          v41 = v40;
          v42 = [v40 podcastUuid];

          if (v42)
          {
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            sub_10020AD58(v29, type metadata accessor for EpisodeContextActionDataType);
            v46 = v56;
            *v56 = v43;
            v46[1] = v45;
            swift_storeEnumTagMultiPayload();
            v35 = v57;
            goto LABEL_35;
          }
        }

        goto LABEL_42;
      }

      sub_10020AD58(v58, type metadata accessor for EpisodeContextActionDataType);
    }

    v36 = 1;
    v37 = v57;
    v26 = v59;
    return (*(v27 + 56))(v37, v36, 1, v26);
  }

  if (result == 2)
  {
    v47 = *v22;
    v26 = v59;
    v27 = v23;
    if (*v22 >> 62)
    {
      v53 = _CocoaArrayWrapper.endIndex.getter();
      v29 = v58;
      if (v53 != 1)
      {
        goto LABEL_44;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v29 = v58;
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
      {
        goto LABEL_44;
      }
    }

    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v48 = *(v47 + 32);
    }

    v49 = v48;

    v50 = v55;
    sub_100209D1C(v49, v55);
    sub_10020AD58(v29, type metadata accessor for EpisodeContextActionDataType);
    if ((*(v23 + 48))(v50, 1, v26))
    {
      sub_100009104(v50, &qword_1005775C0);
LABEL_45:
      v36 = 1;
      v37 = v57;
      return (*(v27 + 56))(v37, v36, 1, v26);
    }

    v52 = v50;
    goto LABEL_33;
  }

  v26 = v59;
  v27 = v23;
  if (result != 3)
  {
    sub_10020AD58(v58, type metadata accessor for EpisodeContextActionDataType);
    v51 = v22;
LABEL_43:
    sub_10020AD58(v51, type metadata accessor for EpisodeContextActionDataType);
    goto LABEL_45;
  }

  v28 = *v22;
  v29 = v58;
  if (*v22 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {

LABEL_42:
        v51 = v29;
        goto LABEL_43;
      }

      goto LABEL_6;
    }

LABEL_44:
    sub_10020AD58(v29, type metadata accessor for EpisodeContextActionDataType);

    goto LABEL_45;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_44;
  }

LABEL_6:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v31 = v30;

    v32 = MPCPlayerResponseItem.podcastEpisode.getter();

    if (v32)
    {
      v33 = v54;
      sub_10020A0A8(v32, v54);
      sub_10020AD58(v29, type metadata accessor for EpisodeContextActionDataType);
      v34 = (*(v23 + 48))(v33, 1, v26);
      v35 = v57;
      if (v34)
      {
        sub_100009104(v33, &qword_1005775C0);
        v36 = 1;
        v37 = v35;
        return (*(v27 + 56))(v37, v36, 1, v26);
      }

      v46 = v56;
      sub_10020ACF0(v33, v56, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
LABEL_35:
      sub_10020ACF0(v46, v35, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      v37 = v35;
      v36 = 0;
      return (*(v27 + 56))(v37, v36, 1, v26);
    }

    goto LABEL_42;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v28 + 32);
    goto LABEL_9;
  }

LABEL_50:
  __break(1u);
  return result;
}

void sub_1002095B8()
{
  v1 = sub_100168088(&qword_1005775C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  v17 = *(v0 + 64);
  if (v17)
  {
    v20 = v0;
    v18 = v4;
    v19 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_10020ADB8(v17 + v19, v13, type metadata accessor for EpisodeContextActionDataType);
    sub_10020ACF0(v13, v16, type metadata accessor for EpisodeContextActionDataType);
    sub_10020ADB8(v16, v10, type metadata accessor for EpisodeContextActionDataType);
    sub_100208DAC(v10, v3);
    if ((*(v5 + 48))(v3, 1, v18) == 1)
    {
      sub_10020AD58(v16, type metadata accessor for EpisodeContextActionDataType);
      sub_100009104(v3, &qword_1005775C0);
    }

    else
    {
      sub_10020ACF0(v3, v7, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      sub_100209884((v20 + 16));

      sub_10020AD58(v7, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      sub_10020AD58(v16, type metadata accessor for EpisodeContextActionDataType);
    }
  }
}

uint64_t sub_100209884(void *a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  __chkstk_darwin(v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10020ADB8(v2, v9, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100168088(&qword_1005775C8);
    sub_1001B8A3C(&v9[*(v10 + 48)], v6);
    sub_1000044A0(a1, a1[3]);
    v11 = dispatch thunk of LibraryActionControllerProtocol.subscribe(feedUrl:adamId:location:explicit:displaySuccessHUD:)();

    sub_100009104(v6, &qword_100574040);
  }

  else
  {
    sub_1000044A0(a1, a1[3]);
    v11 = dispatch thunk of LibraryActionControllerProtocol.subscribe(podcast:displaySuccessHUD:)();
  }

  return v11;
}

uint64_t sub_100209A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  ShowOffer.adamId.getter();
  if (AdamID.isEmpty.getter())
  {
    v7 = type metadata accessor for ShowOffer();
    (*(*(v7 - 8) + 8))(a1, v7);
    v8 = *(v22 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_100168088(&qword_1005775C8);
    *v6 = ShowOffer.adamId.getter();
    ShowOffer.feedUrl.getter();
    if (ShowOffer.contentRating.getter() == 2)
    {
      v11 = 0;
    }

    else
    {
      v12 = ContentRating.rawValue.getter();
      v14 = v13;
      v11 = 1;
      if (v12 != ContentRating.rawValue.getter() || v14 != v15)
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v16 = (v6 + *(v10 + 80));
    *(v6 + *(v10 + 64)) = v11 & 1;
    v17 = ShowOffer.dzcPageLocation.getter();
    v19 = v18;
    v20 = type metadata accessor for ShowOffer();
    (*(*(v20 - 8) + 8))(a1, v20);
    *v16 = v17;
    v16[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_10020ACF0(v6, a2, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
    return (*(v22 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_100209D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1;
  [v10 podcastStoreId];
  v11 = AdamID.init(rawValue:)();
  if ((AdamID.isEmpty.getter() & 1) == 0)
  {
    v14 = sub_100168088(&qword_1005775C8);
    v15 = v14[12];
    *v9 = v11;
    v16 = [v10 podcastFeedUrl];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      v18 = type metadata accessor for URL();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v6, 1, v18) != 1)
      {
        (*(v19 + 32))(v9 + v15, v6, v18);
        (*(v19 + 56))(v9 + v15, 0, 1, v18);
        goto LABEL_10;
      }

      sub_100009104(v6, &qword_100574040);
    }

    v20 = type metadata accessor for URL();
    (*(*(v20 - 8) + 56))(v9 + v15, 1, 1, v20);
LABEL_10:
    v21 = v14[16];
    v22 = (v9 + v14[20]);
    v23 = [v10 isExplicit];

    *(v9 + v21) = v23;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    *v22 = v24;
    v22[1] = v26;
    swift_storeEnumTagMultiPayload();
    sub_10020ACF0(v9, a2, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
    return (*(v28 + 56))(a2, 0, 1, v7);
  }

  v12 = *(v28 + 56);

  return v12(a2, 1, 1, v7);
}

uint64_t sub_10020A0A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for URL();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  v50 = *(v14 - 8);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = [a1 podcast];
  if (v18)
  {
    v19 = v18;
    v20 = MPModelObject.adamID.getter();
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      v26 = sub_100168088(&qword_1005775C8);
      v45 = *(v26 + 48);
      v46 = v26;
      *v17 = v20;
      v27 = [a1 podcast];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 feedURL];

        v30 = v49;
        if (v29)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v31 = v48;
          v32 = *(v48 + 56);
          v32(v10, 0, 1, v30);
        }

        else
        {
          v31 = v48;
          v32 = *(v48 + 56);
          v32(v10, 1, 1, v49);
        }

        sub_1001B8A3C(v10, v13);
        v33 = *(v31 + 48);
        if (v33(v13, 1, v30))
        {
          sub_100009104(v13, &qword_100574040);
        }

        else
        {
          (*(v31 + 16))(v5, v13, v30);
          sub_100009104(v13, &qword_100574040);
          v48 = URL.absoluteString.getter();
          (*(v31 + 8))(v5, v30);
          v34 = v47;
          URL.init(string:)();

          if (v33(v34, 1, v30) != 1)
          {
            v43 = v45;
            (*(v31 + 32))(v17 + v45, v34, v30);
            v35 = v17 + v43;
            v36 = 0;
            goto LABEL_16;
          }

          sub_100009104(v34, &qword_100574040);
        }
      }

      else
      {
        v30 = v49;
        v32 = *(v48 + 56);
      }

      v35 = v17 + v45;
      v36 = 1;
LABEL_16:
      v32(v35, v36, 1, v30);
      v37 = *(v46 + 64);
      v38 = (v17 + *(v46 + 80));
      *(v17 + v37) = [a1 isExplicitEpisode];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      *v38 = v39;
      v38[1] = v41;
      swift_storeEnumTagMultiPayload();
      v42 = v51;
      sub_10020ACF0(v17, v51, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
      return (*(v50 + 56))(v42, 0, 1, v14);
    }
  }

  v23 = v51;
  v24 = *(v50 + 56);

  return v24(v23, 1, 1, v14);
}

double sub_10020A5AC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer();
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10020ADB8(v1, v5, type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(sub_100168088(&qword_1005775C8) + 48);

    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 2;
    dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    dispatch thunk of PodcastStateMachine.currentState.getter();
    v10 = v12;
    v11 = v13;
    v7 = v14;

    sub_100009104(&v5[v6], &qword_100574040);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 2;
    dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();

    dispatch thunk of PodcastStateMachine.currentState.getter();
    v10 = v12;
    v11 = v13;
    v7 = v14;
  }

  result = *&v10;
  v9 = v11;
  *a1 = v10;
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_10020A748()
{
  sub_100004590(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10020A7D4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x535F574F4C4C4F46;
  v1._object = 0xEB00000000574F48;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10020A898@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.subscribe(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10020A90C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.subscribeEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10020A9E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_10020AA80(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_10020AB18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_10020AB78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_10020ABDC(uint64_t a1)
{
  result = sub_10020AC64(&unk_100582250);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10020AC20(uint64_t a1)
{
  result = sub_10020AC64(&qword_1005775B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10020AC64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SubscribeEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SubscribeEpisodeContextAction.SubscribeOffer()
{
  result = qword_100577640;
  if (!qword_100577640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10020ACF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AD58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020ADB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10020AE20()
{
  sub_10020AE8C(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10020AE8C(uint64_t a1)
{
  if (!qword_100577650)
  {
    __chkstk_darwin(a1);
    sub_100168310(&qword_100574040);
    sub_100168310(&qword_100574230);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100577650);
    }
  }
}

void sub_10020AFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577768);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = v31 - v5;
  v34 = sub_100168088(&qword_10057E760);
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = v31 - v7;
  v38 = type metadata accessor for MetricsFieldsContext();
  v9 = *(v38 - 8);
  __chkstk_darwin(v38);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v31 - v13;
  __chkstk_darwin(v15);
  v17 = v31 - v16;
  v18 = type metadata accessor for MetricsData();
  __chkstk_darwin(v18);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != 1 || *(v2 + 17) == 1)
  {
    v32 = v20;
    v33 = v19;
    static AppEnterMetricsEvent.makeData(enterKind:)();
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v23 = static PageContextTracker.shared.getter();
    v31[1] = a2;
    v39[0] = v23;
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v6 + 8))(v8, v34);

    v24 = *(v9 + 8);
    v25 = v38;
    v24(v11, v38);
    type metadata accessor for MetricsActivity();
    v26 = static MetricsActivity.shared.getter();
    v27 = MetricsActivity.currentPageFields.getter();

    v39[0] = v27;
    v28 = v35;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880);
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v36 + 8))(v28, v37);

    v24(v14, v25);
    MetricsPipeline.process(_:using:)();
    v29 = sub_10002BD04();

    v30 = static OS_dispatch_queue.main.getter();
    v39[3] = v29;
    v39[4] = &protocol witness table for OS_dispatch_queue;
    v39[0] = v30;
    Promise.always(on:perform:)();

    v24(v17, v25);
    (*(v32 + 8))(v22, v33);
    sub_100004590(v39);
  }
}

void sub_10020B430(void (*a1)(char *, uint64_t), uint64_t a2, char *a3)
{
  v74 = a3;
  v75 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v9 = *(v78 - 8);
  __chkstk_darwin();
  v79 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for MetricsPipeline();
  v11 = *(v77 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v76 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  __chkstk_darwin();
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v59 - v17;
  type metadata accessor for MetricsData();
  __chkstk_darwin();
  __chkstk_darwin();
  if ((*(v3 + 17) & 1) == 0)
  {
    v68 = v18;
    v73 = &v59 - v19;
    v67 = v21;
    v23 = v20;
    v66 = v22;
    v24 = swift_allocObject();
    v72 = v9;
    *(v24 + 16) = 0;
    v25 = (v24 + 16);
    *(v24 + 24) = 1;
    v61 = a2;
    v26 = v24;
    v27 = swift_allocObject();
    v70 = v5;
    *(v27 + 2) = v3;
    *(v27 + 3) = v26;
    v28 = v74;
    *(v27 + 4) = v74;
    v65 = v12;
    v29 = v27;
    v71 = v6;

    v60 = v11;
    v30 = v26;
    v69 = v26;

    v31 = v28;
    v74 = v8;
    v32 = v31;
    v33 = String._bridgeToObjectiveC()();
    v34 = swift_allocObject();
    v64 = sub_10020C13C;
    *(v34 + 16) = sub_10020C13C;
    *(v34 + 24) = v29;
    v59 = v29;
    v87 = sub_10002D7F8;
    v88 = v34;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v62 = &v85;
    v85 = sub_10000F038;
    v86 = &unk_1004E4F68;
    v35 = _Block_copy(&aBlock);

    v36 = [v32 beginBackgroundTaskWithName:v33 expirationHandler:v35];
    _Block_release(v35);

    swift_beginAccess();
    *v25 = v36;
    *(v30 + 24) = 0;
    v37 = v73;
    static AppExitMetricsEvent.makeData(exitKind:)();
    sub_10002BD04();
    v63 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v38 = *(v82 + 8);
    v82 += 8;
    v75 = v38;
    v38(v16, v81);
    v39 = v60;
    v41 = v76;
    v40 = v77;
    (*(v60 + 16))(v76, v61, v77);
    v42 = v23;
    v43 = v67;
    v44 = v68;
    (*(v23 + 16))(v67, v37, v68);
    v45 = v39;
    v46 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v47 = (v65 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v48 = (v66 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    (*(v45 + 32))(v49 + v46, v41, v40);
    v50 = v44;
    (*(v42 + 32))(v49 + v47, v43, v44);
    v51 = (v49 + v48);
    v52 = v59;
    *v51 = v64;
    v51[1] = v52;
    v87 = sub_10020C148;
    v88 = v49;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_10000F038;
    v86 = &unk_1004E4FB8;
    v53 = _Block_copy(&aBlock);

    v54 = v79;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100009FAC(&qword_10057D390, &unk_100575CD0);
    v55 = v74;
    v56 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v80;
    v58 = v63;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v53);

    (*(v71 + 8))(v55, v56);
    (*(v72 + 8))(v54, v78);
    v75(v57, v81);
    (*(v42 + 8))(v73, v50);
  }
}

uint64_t sub_10020BC34(_BYTE *a1, uint64_t a2, void *a3)
{
  objc_sync_enter(a1);
  swift_beginAccess();
  if ((*(a2 + 24) & 1) == 0)
  {
    [a3 endBackgroundTask:*(a2 + 16)];
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    a1[17] = 1;
  }

  return objc_sync_exit(a1);
}

id sub_10020BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v31 = a2;
  v32 = a1;
  v4 = sub_100168088(&qword_100577768);
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin();
  v6 = &v27 - v5;
  v28 = sub_100168088(&qword_10057E760);
  v7 = *(v28 - 8);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v33 = type metadata accessor for MetricsFieldsContext();
  v10 = *(v33 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v27 - v13;
  __chkstk_darwin();
  v16 = &v27 - v15;
  result = [objc_opt_self() flushImmediately];
  if (result)
  {
    sub_100168088(&qword_100577770);
    v27 = Promise<A>.init(_:)();
    MetricsFieldsContext.init()();
    type metadata accessor for PageContextTracker();
    v36[0] = static PageContextTracker.shared.getter();
    static MetricsFieldsContext.Property<A>.pageContextTracker.getter();
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v7 + 8))(v9, v28);

    v18 = *(v10 + 8);
    v19 = v12;
    v20 = v33;
    v18(v19, v33);
    type metadata accessor for MetricsActivity();
    v21 = static MetricsActivity.shared.getter();
    v22 = MetricsActivity.currentPageFields.getter();

    v36[0] = v22;
    static MetricsFieldsContext.Property<A>.pageFields.getter();
    sub_100168088(&qword_100574880);
    MetricsFieldsContext.addingValue<A>(_:forProperty:)();
    (*(v29 + 8))(v6, v30);

    v18(v14, v20);
    MetricsPipeline.process(_:using:)();
    sub_100009FAC(&qword_100577778, &qword_100577770);
    Promise.join<A>(with:)();
    v23 = swift_allocObject();
    v24 = v35;
    *(v23 + 16) = v34;
    *(v23 + 24) = v24;
    v25 = sub_10002BD04();

    v26 = static OS_dispatch_queue.main.getter();
    v36[3] = v25;
    v36[4] = &protocol witness table for OS_dispatch_queue;
    v36[0] = v26;
    Promise.always(on:perform:)();

    v18(v16, v20);
    return sub_100004590(v36);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10020C148()
{
  v1 = *(type metadata accessor for MetricsPipeline() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MetricsData() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_10020BCCC(v0 + v2, v0 + v5, v7, v8);
}

uint64_t sub_10020C258@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100577840);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - v9;
  v11 = a1[6];
  v26 = a1[5];
  v27 = v11;
  v28 = a1[7];
  v12 = a1[4];
  v24 = a1[3];
  v25 = v12;
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v26 = v30[2];
  v27 = v30[3];
  v28 = v30[4];
  v29 = v31;
  v24 = v30[0];
  v25 = v30[1];
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(v30, &qword_100577810);
  v19 = a1;
  v20 = v22;
  v21 = v23;
  type metadata accessor for MTPodcastShowType(0);
  sub_100168088(&qword_100577848);
  sub_10020DE6C(&qword_100577798, type metadata accessor for MTPodcastShowType);
  sub_10020DE00(&qword_100577850, &qword_100577848);
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  sub_100009FAC(&qword_100577858, &qword_100577840);
  v13 = v16;
  View.pickerStyle<A>(_:)();
  (*(v17 + 8))(v6, v13);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10020C5B4()
{
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  sub_10020DB40(v1);
  sub_100168088(&qword_100577860);
  type metadata accessor for MTPodcastShowType(0);
  sub_100009FAC(&qword_100577868, &qword_100577860);
  sub_10020DE6C(&qword_100577870, type metadata accessor for MTPodcastShowType);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10020C71C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10020C80C()
{
  LocalizedStringKey.init(stringLiteral:)();
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_100009104(v1, &qword_100577810);
  type metadata accessor for MTPodcastHidesPlayedEpisodes(0);
  sub_100168088(&qword_100577818);
  sub_10020DE6C(&qword_1005777A0, type metadata accessor for MTPodcastHidesPlayedEpisodes);
  sub_10020DE00(&qword_100577820, &qword_100577818);
  return Picker<>.init<A>(_:selection:content:currentValueLabel:)();
}

uint64_t sub_10020CA34(uint64_t a1)
{
  v2 = type metadata accessor for ShowSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  v8 = static MTPodcastHidesPlayedEpisodes.allCases;
  swift_getKeyPath();
  sub_10020DCB0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10020DD14(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_100168088(&qword_100577790);
  sub_100009FAC(&qword_100577838, &qword_100577790);
  sub_10020DE6C(&qword_1005777A0, type metadata accessor for MTPodcastHidesPlayedEpisodes);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10020CC38@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ShowSettingsView();
  AppStorage.wrappedValue.getter();
  if (v3 == 2 || v3 == 1 || !v3)
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 24) = v7;
  }

  else
  {
    type metadata accessor for MTPodcastHidesPlayedEpisodes(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10020CD64@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v12[0] = v7;
  v12[1] = v8;
  sub_10020DB40(v12);
  v2 = v13;
  type metadata accessor for ShowSettingsView();
  AppStorage.wrappedValue.getter();
  if (v2 > 2)
  {
    sub_100168088(&qword_100577828);
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  return result;
}

uint64_t sub_10020CEC8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for AccessibilityActionKind();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_1005777A8);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = a1[6];
  v28 = a1[5];
  v29 = v12;
  v30 = a1[7];
  v13 = a1[4];
  v26 = a1[3];
  v27 = v13;
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  sub_10020D154(v8);
  sub_10020DB40(v31);
  v14 = Text.init(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  v22 = &v11[*(v9 + 36)];
  sub_100168088(&qword_1005777B8);
  OpenURLAction.init(handler:)();
  *v22 = KeyPath;
  *v11 = v14;
  *(v11 + 1) = v16;
  v11[16] = v18 & 1;
  *(v11 + 3) = v20;
  static AccessibilityActionKind.default.getter();
  sub_10020DB94();
  View.accessibilityAction(_:_:)();
  (*(v3 + 8))(v5, v25);
  return sub_100009104(v11, &qword_1005777A8);
}

uint64_t sub_10020D154@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for AttributedString.InterpolationOptions();
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v31 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v5 - 8);
  v28 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v35 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v35);
  v24[1] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_1005777D0);
  __chkstk_darwin(v11 - 8);
  v13 = v24 - v12;
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for AttributedString();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin(v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  v26 = type metadata accessor for Locale();
  v18 = *(v26 - 8);
  v25 = *(v18 + 56);
  v27 = v18 + 56;
  v25(v13, 1, 1, v26);
  v36 = _swiftEmptyArrayStorage;
  v24[3] = sub_10020DE6C(&qword_1005777D8, &type metadata accessor for AttributedString.FormattingOptions);
  v24[2] = sub_100168088(&qword_1005777E0);
  v24[4] = sub_100009FAC(&qword_1005777E8, &qword_1005777E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  URL.init(string:)();
  sub_1001BB0E0(v9, v28);
  sub_10020DC4C();
  AttributedString.subscript.setter();
  sub_100009104(v9, &qword_100574040);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD000000000000050;
  v19._object = 0x80000001004698E0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v36 = _swiftEmptyArrayStorage;
  sub_10020DE6C(&qword_1005777F8, &type metadata accessor for AttributedString.InterpolationOptions);
  sub_100168088(&qword_100577800);
  sub_100009FAC(&qword_100577808, &qword_100577800);
  v21 = v31;
  v20 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:options:)();
  (*(v33 + 8))(v21, v20);
  v22._countAndFlagsBits = 46;
  v22._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  String.LocalizationValue.init(stringInterpolation:)();
  v25(v13, 1, 1, v26);
  v36 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  return (*(v29 + 8))(v17, v30);
}

uint64_t sub_10020D79C(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.openURL.setter();
}

uint64_t sub_10020D864()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 openGlobalSettings];

  return static OpenURLAction.Result.handled.getter();
}

void sub_10020D8CC()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 openGlobalSettings];
}

uint64_t static MTPodcastHidesPlayedEpisodes.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MTPodcastHidesPlayedEpisodes.allCases = a1;
}

uint64_t sub_10020DA1C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MTPodcastHidesPlayedEpisodes.allCases;
}

unint64_t sub_10020DB94()
{
  result = qword_1005777C0;
  if (!qword_1005777C0)
  {
    sub_100168310(&qword_1005777A8);
    sub_100009FAC(&qword_1005777C8, &qword_1005777B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005777C0);
  }

  return result;
}

unint64_t sub_10020DC4C()
{
  result = qword_1005777F0;
  if (!qword_1005777F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005777F0);
  }

  return result;
}

uint64_t sub_10020DCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020DD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020DD78@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ShowSettingsView();

  return sub_10020CC38(a1, a2);
}

uint64_t sub_10020DE00(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020DE6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ImplicitFollowsDecayCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ImplicitFollowsDecayCoordinator.delegate.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10020DFE4;
}

uint64_t ImplicitFollowsDecayCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  ImplicitFollowsDecayCoordinator.init()();
  return v0;
}

uint64_t sub_10020E020()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10020E080();
  }

  return result;
}

void sub_10020E080()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = Logger.logObject.getter();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, v6, "Triggering new check for Max Implicit Follows limit.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 integerForKey:kMTImplicitlyFollowedShowsLimit];

  aBlock[4] = sub_10020ED4C;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100038258;
  aBlock[3] = &unk_1004E5110;
  v11 = _Block_copy(aBlock);

  [v10 asyncValueWithCompletion:v11];
  _Block_release(v11);
}

void sub_10020E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &aBlock - v10;
  if (a3)
  {
    swift_errorRetain();
    static Logger.podcastsStatesCoordination.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = _convertErrorToNSError(_:)();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to fetch implicit followed shows limit from the bag: %@", v14, 0xCu);
      sub_100009104(v15, &qword_100575B20);
    }

    else
    {
    }

    (*(v6 + 8))(v11, v5);
  }

  else if (a1 && (aBlock = 0, LOBYTE(v30) = 1, static Int._conditionallyBridgeFromObjectiveC(_:result:)(), (v30 & 1) == 0))
  {
    v20 = aBlock;
    v21 = [objc_opt_self() predicateForImplicitlyFollowedPodcasts];
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 privateQueueContext];

    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v21;
    v25[5] = v20;
    v33 = sub_10020ED54;
    v34 = v25;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10000F038;
    v32 = &unk_1004E5160;
    v26 = _Block_copy(&aBlock);
    v27 = v23;
    v28 = v21;

    [v27 performBlock:v26];
    _Block_release(v26);
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to cast value for implicitly followed shows limit from the bag to an Int", v19, 2u);
    }

    (*(v6 + 8))(v9, v5);
  }
}

void *sub_10020E690(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = kMTPodcastEntityName;
    v17 = [a2 countOfObjectsInEntity:kMTPodcastEntityName predicate:a3];
    if (v17 <= a4)
    {
      static Logger.podcastsStatesCoordination.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = Logger.logObject.getter();
      if (os_log_type_enabled(v33, v32))
      {
        v34 = swift_slowAlloc();
        *v34 = 134218240;
        *(v34 + 4) = v17;
        *(v34 + 12) = 2048;
        *(v34 + 14) = a4;
        _os_log_impl(&_mh_execute_header, v33, v32, "Not proceeding with eviction of implicitly followed shows -- Count of implicitly followed shows: %ld is not over the limit: %ld", v34, 0x16u);
      }

      else
      {
      }

      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      v36 = v8;
      v37 = a2;
      sub_100168088(&unk_100574680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007B0;
      result = [objc_allocWithZone(NSSortDescriptor) initWithKey:kPodcastLastDatePlayed ascending:1];
      *(inited + 32) = result;
      v19 = __OFSUB__(v17, a4);
      v20 = &v17[-a4];
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v21 = v16;
        sub_1001A523C(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        isa = Array._bridgeToObjectiveC()().super.isa;

        v23 = [v37 objectsInEntity:v21 predicate:a3 sortDescriptors:isa returnsObjectsAsFaults:0 limit:v20];

        if (v23)
        {
          sub_100009F1C(0, &qword_1005739D0);
          v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = sub_10037F7EC(v24);

          if (v25)
          {
            static Logger.podcastsStatesCoordination.getter();
            v26 = static os_log_type_t.default.getter();
            v27 = Logger.logObject.getter();
            if (os_log_type_enabled(v27, v26))
            {
              v28 = swift_slowAlloc();
              *v28 = 134217984;
              *(v28 + 4) = v20;
              _os_log_impl(&_mh_execute_header, v27, v26, "Implicitly followed shows over the limit. Proceeding to evict %ld shows.", v28, 0xCu);
            }

            (*(v36 + 8))(v13, v7);
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v29 = v15[6];
              ObjectType = swift_getObjectType();
              v31 = v37;
              (*(v29 + 8))(v15, v25, v37, ObjectType, v29);

              swift_unknownObjectRelease();
            }

            else
            {

              v31 = v37;
            }

            [v31 saveInCurrentBlock];
          }
        }
      }
    }
  }

  return result;
}

uint64_t ImplicitFollowsDecayCoordinator.deinit()
{

  sub_100184228(v0 + 40);
  return v0;
}

uint64_t ImplicitFollowsDecayCoordinator.__deallocating_deinit()
{

  sub_100184228(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t (*sub_10020EBD8(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10020ED68;
}

void sub_10020EC70(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
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

unint64_t sub_10020ECF8()
{
  result = qword_1005778A0;
  if (!qword_1005778A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005778A0);
  }

  return result;
}

uint64_t sub_10020ED6C()
{
  v1 = v0;
  type metadata accessor for LegacyDownload();
  swift_allocObject();
  sub_1001C1FE0();
  v3 = v2;
  v4 = type metadata accessor for DownloadJob(0);
  v5 = (v1 + v4[5]);
  v6 = v5[1];
  *(v3 + 64) = *v5;
  *(v3 + 72) = v6;

  v7 = v1 + v4[9];
  v8 = *(v7 + 24);
  *(v3 + 16) = *(v7 + 16);
  *(v3 + 24) = v8;

  if ((*(v7 + 40) & 1) == 0)
  {
    v9 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v7 + 32)];
    v10 = *(v3 + 40);
    *(v3 + 40) = v9;
  }

  if ((*(v7 + 56) & 1) == 0)
  {
    v11 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v7 + 48)];
    v12 = *(v3 + 32);
    *(v3 + 32) = v11;
  }

  v13 = (v1 + v4[10]);
  v14 = v13[3];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      *(v3 + 88) = 0;
      return v3;
    }

    if (v14 == 4)
    {
      v15 = 5;
      goto LABEL_18;
    }
  }

  else
  {
    if (v14 == 1)
    {
      v15 = 1;
      goto LABEL_18;
    }

    if (v14 == 2)
    {
      v15 = 4;
LABEL_18:
      *(v3 + 88) = v15;
      return v3;
    }
  }

  v16 = *(v13 + 24);
  v18 = v13[4];
  v17 = *(v13 + 5);
  v19 = *v13;
  *(v3 + 120) = v13[2];
  *(v3 + 128) = v14;

  v20 = 2;
  if ((v16 & 0x100) != 0)
  {
    v20 = 3;
  }

  *(v3 + 80) = v19;
  *(v3 + 88) = v20;
  v21 = 0.0;
  if ((v16 & 1) == 0)
  {
    v21 = v17;
  }

  *(v3 + 96) = v18;
  *(v3 + 104) = v21;
  return v3;
}

__n128 sub_10020EF18@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for DownloadJob(0);
  v9 = v4 + *(v8 + 40);
  if (*(v9 + 24) == 3)
  {
    static os_log_type_t.error.getter();
    sub_1001FE728();
    v10 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100400790;
    v39 = 0;
    v40 = 0xE000000000000000;
    v12 = *(v9 + 48);
    v13 = *(v9 + 16);
    v37[0] = *v9;
    v37[1] = v13;
    v37[2] = *(v9 + 32);
    v38 = v12;
    _print_unlocked<A, B>(_:_:)();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100022C18();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    os_log(_:dso:log:_:_:)();

    sub_100210DEC(v4, a3, type metadata accessor for DownloadJob);
  }

  else
  {
    v15 = v8;
    v32 = *(a1 + 48);
    v35 = *(a1 + 32);
    v36 = *(a1 + 40);
    v16 = type metadata accessor for UUID();
    if (a2)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v31 = v17;
    v33 = *(a1 + 16);
    v34 = *a1;
    (*(*(v16 - 8) + 16))(a3, v4, v16);
    v18 = (v4 + v15[5]);
    v19 = v18[1];
    v30 = *v18;
    v20 = v4 + v15[8];
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    v24 = *(v4 + v15[7]);
    sub_100210DEC(v4 + v15[9], a3 + v15[9], type metadata accessor for EpisodeMetadata);
    v25 = v15[6];
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 16))(a3 + v25, v4 + v25, v26);
    *(a3 + v15[7]) = v24;
    v27 = a3 + v15[8];
    *v27 = v22;
    *(v27 + 8) = v21;
    *(v27 + 16) = v23;
    v28 = (a3 + v15[5]);
    *v28 = v30;
    v28[1] = v19;
    v29 = a3 + v15[10];
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    LOBYTE(v39) = v32 & 1;

    sub_100210DB4(a1, v37);
    sub_10018276C(0, 0, 0, 1);
    result = v34;
    *v29 = v34;
    *(v29 + 16) = v33;
    *(v29 + 32) = v35;
    *(v29 + 40) = v36;
    *(v29 + 48) = v31 & 0xFFFE | v32 & 1;
  }

  return result;
}

BOOL sub_10020F220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v2 == 2)
    {
      return v3 == 2;
    }

    return (v3 - 5) < 0xFFFFFFFFFFFFFFFCLL;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      return v3 == 4;
    }

    return (v3 - 5) < 0xFFFFFFFFFFFFFFFCLL;
  }

  return v3 == 3;
}

Swift::Int sub_10020F2AC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000219B0(&unk_100577210, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10020F334()
{
  type metadata accessor for UUID();
  sub_1000219B0(&unk_100577210, &type metadata accessor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10020F3B8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000219B0(&unk_100577210, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10020F43C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6F65646976;
  }

  else
  {
    v2 = 0x6F69647561;
  }

  if (*a2)
  {
    v3 = 0x6F65646976;
  }

  else
  {
    v3 = 0x6F69647561;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10020F4BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F52C()
{
  String.hash(into:)();
}

Swift::Int sub_10020F580()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F5EC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DEDF0, *a1);

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

void sub_10020F64C(uint64_t *a1@<X8>)
{
  v2 = 0x6F69647561;
  if (*v1)
  {
    v2 = 0x6F65646976;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

void sub_10020F680()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (*(v0 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v8 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
  }

  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 72))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = *(v0 + 48);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
    if (*(v0 + 72))
    {
LABEL_11:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (*(v0 + 88))
      {
        goto LABEL_12;
      }

LABEL_16:
      Hasher._combine(_:)(0);
      if (*(v0 + 104))
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 88))
  {
    goto LABEL_16;
  }

LABEL_12:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (*(v0 + 104))
  {
LABEL_13:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_18;
  }

LABEL_17:
  Hasher._combine(_:)(0);
LABEL_18:
  v10 = type metadata accessor for EpisodeMetadata(0);
  type metadata accessor for URL();
  sub_1000219B0(&qword_100577AF0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();

  v11 = v0 + v10[13];
  if (*(v11 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v12 = *v11;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v12);
  }

  v13 = v0 + v10[14];
  if (*(v13 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v14 = *v13;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v14);
  }

  sub_1001A46D8(v0 + v10[15], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_1000219B0(&qword_100577AF8, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }
}

Swift::Int sub_10020FB08()
{
  Hasher.init(_seed:)();
  sub_10020F680();
  return Hasher._finalize()();
}

Swift::Int sub_10020FB4C()
{
  Hasher.init(_seed:)();
  sub_10020F680();
  return Hasher._finalize()();
}

uint64_t sub_10020FB8C(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 32))();
  if (!v3)
  {
    return 0x6E776F6E6B6E755BLL;
  }

  return result;
}

BOOL sub_10020FBDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  __chkstk_darwin(a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = *(v4 + 16);
  v11(&v25 - v9, v2, a1, v8);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v12, v10, a1);
  }

  v13 = _convertErrorToNSError(_:)();

  v14 = [v13 domain];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  (v11)(v6, v2, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v4 + 8))(v6, a1);
  }

  else
  {
    swift_allocError();
    (*(v4 + 32))(v22, v6, a1);
  }

  v23 = _convertErrorToNSError(_:)();

  v24 = [v23 code];

  return v24 == -999;
}

id sub_10020FEB8()
{
  v1 = [*v0 progress];

  return v1;
}

uint64_t sub_10020FF00()
{
  v1 = [*v0 taskDescription];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

BOOL sub_10020FF6C()
{
  v1 = [*v0 error];
  if (v1)
  {
    v2 = v1;
    swift_getErrorValue();
    v3 = sub_10020FBDC(v5);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t sub_100210034(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  return v5;
}

uint64_t NSURLSessionTaskState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6574656C706D6F63;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6E696C65636E6163;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x65646E6570737573;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E696E6E7572;
  }
}

uint64_t sub_100210190()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6574656C706D6F63;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6E696C65636E6163;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x65646E6570737573;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x676E696E6E7572;
  }
}

uint64_t sub_100210290(uint64_t a1)
{
  v1 = *(a1 + 24);
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

__n128 sub_1002102B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002102D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 50))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 3;
  if (v5 >= 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100210334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 4;
    }
  }

  return result;
}

double sub_100210390(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

unint64_t sub_1002103E4()
{
  result = qword_100577AE0;
  if (!qword_100577AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577AE0);
  }

  return result;
}

id sub_100210480()
{
  v1 = v0;
  v2 = [v0 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_1000219B0(&qword_1005730D0, type metadata accessor for ProgressUserInfoKey);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();
  v5 = v4;
  if (!*(v3 + 16) || (v6 = sub_100202D0C(v4), (v7 & 1) == 0))
  {

    return 0;
  }

  sub_10001B944(*(v3 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = _findStringSwitchCase(cases:string:)(&off_1004DE4C0, v12);

  if (v8)
  {
    return 0;
  }

  result = [v1 localizedAdditionalDescription];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

BOOL sub_100210614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_100168088(&qword_100577B00);
  v12 = __chkstk_darwin(v11);
  v14 = &v59 - v13;
  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*a1 != *a2 || v15 != v16)
    {
      v17 = v12;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v19 != v20)
    {
      v21 = v12;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(a1 + 72);
  v26 = *(a2 + 72);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    if (*(a1 + 64) != *(a2 + 64) || v25 != v26)
    {
      v27 = v12;
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v26)
  {
    return 0;
  }

  v29 = *(a1 + 88);
  v30 = *(a2 + 88);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    if (*(a1 + 80) != *(a2 + 80) || v29 != v30)
    {
      v31 = v12;
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v12 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  v33 = *(a1 + 104);
  v34 = *(a2 + 104);
  if (v33)
  {
    if (!v34)
    {
      return 0;
    }

    v35 = v12;
    if ((*(a1 + 96) != *(a2 + 96) || v33 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v35 = v12;
    if (v34)
    {
      return 0;
    }
  }

  v36 = type metadata accessor for EpisodeMetadata(0);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v37 = v36[12];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38)
  {
    v40 = 0x6F65646976;
  }

  else
  {
    v40 = 0x6F69647561;
  }

  if (v39)
  {
    v41 = 0x6F65646976;
  }

  else
  {
    v41 = 0x6F69647561;
  }

  if (v40 == v41)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = v36[13];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  v48 = v36[14];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = *(a2 + v48 + 8);
  if (v50)
  {
    if (!v52)
    {
      return 0;
    }
  }

  else
  {
    if (*v49 != *v51)
    {
      LOBYTE(v52) = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  v53 = v36[15];
  v54 = *(v35 + 48);
  sub_1001A46D8(a1 + v53, v14);
  sub_1001A46D8(a2 + v53, &v14[v54]);
  v55 = *(v5 + 48);
  if (v55(v14, 1, v4) != 1)
  {
    sub_1001A46D8(v14, v10);
    if (v55(&v14[v54], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_75;
    }

    (*(v5 + 32))(v7, &v14[v54], v4);
    sub_1000219B0(&qword_100577B08, &type metadata accessor for Date);
    v57 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58 = *(v5 + 8);
    v58(v7, v4);
    v58(v10, v4);
    sub_100009104(v14, &qword_100574760);
    return (v57 & 1) != 0;
  }

  if (v55(&v14[v54], 1, v4) != 1)
  {
LABEL_75:
    sub_100009104(v14, &qword_100577B00);
    return 0;
  }

  sub_100009104(v14, &qword_100574760);
  return 1;
}

BOOL sub_100210BCC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DownloadJob(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = v4[8];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = *(a1 + v10 + 16);
  v14 = a2 + v10;
  v15 = *(v14 + 16);
  v16 = v11 == *v14 && v12 == *(v14 + 8);
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13)
  {
    v17 = 1936484398;
  }

  else
  {
    v17 = 0x7261646E6174732ELL;
  }

  if (v13)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE900000000000064;
  }

  if (v15)
  {
    v19 = 1936484398;
  }

  else
  {
    v19 = 0x7261646E6174732ELL;
  }

  if (v15)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE900000000000064;
  }

  if (v17 == v19 && v18 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_100210614(a1 + v4[9], a2 + v4[9]))
  {
    return 0;
  }

  v23 = v4[10];
  v24 = *(a1 + v23 + 24);
  v25 = *(a2 + v23 + 24);
  if (v24 <= 2)
  {
    if (v24 != 1)
    {
      if (v24 == 2)
      {
        return v25 == 2;
      }

      return (v25 - 5) < 0xFFFFFFFFFFFFFFFCLL;
    }

    return v25 == 1;
  }

  if (v24 == 3)
  {
    return v25 == 3;
  }

  if (v24 == 4)
  {
    return v25 == 4;
  }

  return (v25 - 5) < 0xFFFFFFFFFFFFFFFCLL;
}

uint64_t sub_100210DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_100210E98(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100210EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100210F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t *DownloadConsistency.application.unsafeMutableAddressor()
{
  if (qword_100572790 != -1)
  {
    swift_once();
  }

  return &static DownloadConsistency.application;
}

id static DownloadConsistency.application.getter()
{
  if (qword_100572790 != -1)
  {
    swift_once();
  }

  v1 = static DownloadConsistency.application;

  return v1;
}

id InterestSyncProcessor.init()()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(type metadata accessor for InterestSyncStorage()) init];
  v9 = [objc_allocWithZone(type metadata accessor for CloudSyncBugReporter()) init];
  v10 = objc_allocWithZone(type metadata accessor for InterestSyncProcessor());
  v11 = sub_1002138B0(v8, v9, v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v12 = v11;
  static OSSignposter.cloudSync.getter();
  (*(v1 + 16))(v3, v12 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostID, v0);
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v22 = v5;
    v16 = v0;
    v17 = v4;
    v18 = v15;
    *v15 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v19, "InterestSyncProcessor.created", "", v18, 2u);
    v4 = v17;
    v0 = v16;
    v5 = v22;
  }

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t type metadata accessor for InterestSyncProcessor()
{
  result = qword_100577B98;
  if (!qword_100577B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id InterestSyncProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterestSyncProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Bool __swiftcall InterestSyncProcessor.hasLocalChanges()()
{
  v1 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  sub_100004428(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  sub_1000044A0(v5, v6);
  LOBYTE(v2) = (*(v3 + 16))(v2, v3);
  sub_100004590(v5);
  return v2 & 1;
}

Swift::String_optional __swiftcall InterestSyncProcessor.version(forGetTransaction:key:)(MZKeyValueStoreTransaction *forGetTransaction, Swift::String key)
{
  v2 = sub_100213A18(key._countAndFlagsBits, key._object);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void sub_100211758(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v36 = a4;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for Logger();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostError();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for OSSignpostID();
  v12 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v19 = &v30[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v4 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostState))
  {
    v32 = v17;
    v33 = a3;
    v34 = v4;

    static OSSignposter.cloudSync.getter();
    v20 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v31 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v21 = v35;
      if ((*(v35 + 88))(v11, v9) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v11, v9);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v31, v24, "InterestSyncProcessor.finish", v22, v23, 2u);
    }

    (*(v12 + 8))(v14, v37);
    (*(v16 + 8))(v19, v32);
    a3 = v33;
  }

  sub_1002133EC(v38, v39);
  static Logger.cloudSync.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = Logger.logObject.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v26, v25, "[Interests] Cleaning up neutral interests after successful transaction.", v27, 2u);
  }

  (*(v40 + 8))(v8, v41);
  v28 = [objc_opt_self() sharedInstance];
  if (v28)
  {
    v29 = v28;
    [v28 cleanUpNeutralInterests];

    if (a3)
    {
      a3(0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100211F30(void (*a1)(void, __n128), uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for OSSignpostError();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for OSSignpostID();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostState))
  {
    v22 = a1;

    static OSSignposter.cloudSync.getter();
    v15 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v21 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v16 = v23;
      if ((*(v23 + 88))(v6, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v6, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v21, v19, "InterestSyncProcessor.reschedule", v17, v18, 2u);
    }

    (*(v7 + 8))(v9, v24);
    (*(v11 + 8))(v14, v10);
    a1 = v22;
  }

  if (a1)
  {
    a1(1, v12);
  }
}

Swift::Void __swiftcall InterestSyncProcessor.transaction(_:didProcessResponseWithDomainVersion:)(MZKeyValueStoreTransaction *_, Swift::String_optional didProcessResponseWithDomainVersion)
{
  object = didProcessResponseWithDomainVersion.value._object;
  countAndFlagsBits = didProcessResponseWithDomainVersion.value._countAndFlagsBits;
  v5 = v2 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_100010C38(v5, v6);
  v8 = *(v7 + 96);

  v8(countAndFlagsBits, object, v6, v7);
  swift_endAccess();
}

uint64_t sub_100212570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  __chkstk_darwin(v11);
  v13 = &v55 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  v56 = v7;
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  v18 = os_log_type_enabled(v17, v16);
  v57 = v5;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v55 = v10;
    v21 = v20;
    v62[0] = v20;
    *v19 = 136380675;
    type metadata accessor for RemoteInterest();
    v22 = Array.description.getter();
    v24 = v15;
    v25 = a3;
    v26 = sub_1000153E0(v22, v23, v62);

    *(v19 + 4) = v26;
    a3 = v25;
    v15 = v24;
    _os_log_impl(&_mh_execute_header, v17, v16, "[Interests] Inserting or updating Interests for remote list %{private}s.", v19, 0xCu);
    sub_100004590(v21);

    v27 = *(v58 + 8);
    v10 = v55;
    v27(v13, v57);
  }

  else
  {

    v27 = *(v58 + 8);
    v27(v13, v5);
  }

  v28 = sub_100212B44(a2, a3);
  v29 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  sub_100004428(v15 + v29, v62);
  v30 = v63;
  v31 = v64;
  sub_1000044A0(v62, v63);
  v32 = (*(v31 + 136))(v28, a3, v30, v31);

  sub_100004590(v62);
  if (v32)
  {
    if (v32 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_8;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      static Logger.cloudSync.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = v10;
      v35 = Logger.logObject.getter();
      if (os_log_type_enabled(v35, v33))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v61 = v56;
        *v36 = 136315651;
        sub_100004428(v15 + v29, v62);
        v55 = v34;
        v37 = v63;
        v38 = v64;
        sub_1000044A0(v62, v63);
        v39 = (*(v38 + 40))(v37, v38);
        v41 = v40;
        sub_100004590(v62);
        v59 = v39;
        v60 = v41 & 1;
        sub_100168088(&unk_10057E2F0);
        v42 = String.init<A>(describing:)();
        v44 = sub_1000153E0(v42, v43, &v61);

        *(v36 + 4) = v44;
        *(v36 + 12) = 2160;
        *(v36 + 14) = 1752392040;
        *(v36 + 22) = 2081;
        type metadata accessor for MTInterest();
        v45 = Array.description.getter();
        v47 = sub_1000153E0(v45, v46, &v61);

        *(v36 + 24) = v47;
        _os_log_impl(&_mh_execute_header, v35, v33, "[Interests] Removing Interests only local and before timestamp %s: %{private,mask.hash}s.", v36, 0x20u);
        swift_arrayDestroy();

        v48 = v55;
      }

      else
      {

        v48 = v34;
      }

      v27(v48, v57);
      sub_100004428(v15 + v29, v62);
      v49 = v63;
      v50 = v64;
      sub_1000044A0(v62, v63);
      (*(v50 + 144))(v32, v49, v50);

      return sub_100004590(v62);
    }
  }

  v51 = v56;
  static Logger.cloudSync.getter();
  v52 = static os_log_type_t.default.getter();
  v53 = Logger.logObject.getter();
  if (os_log_type_enabled(v53, v52))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v53, v52, "[Interests], We didn't find any interests which are not present in the cloud and which are older than the last sync date. We are done.", v54, 2u);
  }

  else
  {
  }

  return (v27)(v51, v57);
}

char *sub_100212B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v82 = type metadata accessor for Logger();
  v6 = *(v82 - 8);
  __chkstk_darwin(v82);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  v92 = type metadata accessor for RemoteInterest();
  v12 = *(v92 - 8);
  __chkstk_darwin(v92);
  v77 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = &v74 - v15;
  __chkstk_darwin(v16);
  v80 = &v74 - v17;
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  v21 = *(a1 + 16);
  if (v21)
  {
    v83 = v11;
    v76 = v8;
    v22 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
    v23 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    swift_beginAccess();
    v24 = v23;
    v91 = a2;
    v27 = *(v12 + 16);
    v25 = v12 + 16;
    v26 = v27;
    v85 = *(v25 + 56);
    v89 = (v25 - 8);
    v81 = (v6 + 8);
    v28 = _swiftEmptyArrayStorage;
    *&v29 = 134218242;
    v78 = v29;
    v87 = v20;
    v88 = v3;
    v86 = v25;
    v90 = v22;
    v93 = v27;
    while (1)
    {
      v96 = v28;
      v97 = v21;
      v95 = v24;
      v26(v20);
      v31 = RemoteInterest.adamID.getter();
      sub_100004428(v3 + v22, v98);
      v32 = v99;
      v33 = v100;
      sub_1000044A0(v98, v99);
      v34 = *(v33 + 152);
      v94 = v31;
      v35 = v34(v31, v91, v32, v33);
      sub_100004590(v98);
      if (v35)
      {
        break;
      }

      v84 = 0;
      v40 = v83;
      static Logger.cloudSync.getter();
      v41 = v80;
      v42 = v92;
      v93(v80, v20, v92);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v41;
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v98[0] = v47;
        *v46 = v78;
        v39 = v94;
        *(v46 + 4) = v94;
        *(v46 + 12) = 2080;
        v93(v79, v45, v42);
        v48 = String.init<A>(describing:)();
        v50 = v49;
        v51 = *v89;
        (*v89)(v45, v42);
        v52 = sub_1000153E0(v48, v50, v98);
        v53 = v91;

        *(v46 + 14) = v52;
        v3 = v88;
        _os_log_impl(&_mh_execute_header, v43, v44, "[Interests] Received Interest from sync which doesn't exist in this device. We must insert it. AdamID: %lld, remote interest: %s", v46, 0x16u);
        sub_100004590(v47);

        v54 = *v81;
        (*v81)(v83, v82);
      }

      else
      {

        v51 = *v89;
        (*v89)(v41, v42);
        v54 = *v81;
        (*v81)(v40, v82);
        v53 = v91;
        v3 = v88;
        v39 = v94;
      }

      v35 = v84;
      sub_100004428(v3 + v90, v98);
      v55 = v99;
      v56 = v100;
      sub_1000044A0(v98, v99);
      v20 = v87;
      v57 = (*(v56 + 120))(v87, v53, v55, v56);
      if (v57)
      {

        sub_100004590(v98);
        goto LABEL_13;
      }

      v84 = v54;
      v94 = v51;
      sub_100004590(v98);
      v61 = v76;
      static Logger.cloudSync.getter();
      v62 = v77;
      v64 = v92;
      v63 = v93;
      v93(v77, v20, v92);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v98[0] = v75;
        *v67 = v78;
        *(v67 + 4) = v39;
        *(v67 + 12) = 2080;
        v63(v79, v62, v64);
        v68 = String.init<A>(describing:)();
        v70 = v69;
        v71 = v94;
        v94(v62, v64);
        v72 = sub_1000153E0(v68, v70, v98);
        v20 = v87;

        *(v67 + 14) = v72;
        v3 = v88;
        _os_log_impl(&_mh_execute_header, v65, v66, "[Interests] Unable to insert a new interest from sync. AdamID: %lld, remote interest: %s", v67, 0x16u);
        sub_100004590(v75);

        v84(v61, v82);
        v71(v20, v64);
      }

      else
      {

        v30 = v94;
        v94(v62, v64);
        v84(v61, v82);
        v30(v20, v64);
      }

      v28 = v96;
LABEL_5:
      v24 = v95 + v85;
      v21 = v97 - 1;
      v22 = v90;
      v26 = v93;
      if (v97 == 1)
      {
        return v28;
      }
    }

    sub_100004428(v3 + v22, v98);
    v36 = v100;
    sub_1000044A0(v98, v99);
    v37 = *(v36 + 128);
    v38 = v35;
    v37();

    sub_100004590(v98);
    v39 = v94;
LABEL_13:
    v28 = v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_10024339C(0, *(v28 + 2) + 1, 1, v28);
    }

    v20 = v87;
    v3 = v88;
    v58 = v92;
    v60 = *(v28 + 2);
    v59 = *(v28 + 3);
    if (v60 >= v59 >> 1)
    {
      v28 = sub_10024339C((v59 > 1), v60 + 1, 1, v28);
    }

    (*v89)(v20, v58);
    *(v28 + 2) = v60 + 1;
    *&v28[8 * v60 + 32] = v39;
    goto LABEL_5;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002133EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSinceReferenceDate.getter();
  v15 = v14;
  (*(v11 + 8))(v13, v10);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v34 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35[0] = v20;
    v35[1] = a1;
    *v19 = 136315394;
    v35[2] = a2;

    sub_100168088(&qword_100574230);
    v21 = String.init<A>(describing:)();
    v33 = v6;
    v23 = sub_1000153E0(v21, v22, v35);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v16, "[Interests] Bumping InterestSync version: %s, interestLastSyncTimestamp: %f, isInterestSyncDirty = false.", v19, 0x16u);
    sub_100004590(v20);

    (*(v34 + 8))(v9, v33);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = v3 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  v25 = *(v24 + 24);
  v26 = *(v24 + 32);
  sub_100010C38(v24, v25);
  v27 = *(v26 + 72);

  v27(a1, a2, v25, v26);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  sub_100010C38(v24, v28);
  (*(v29 + 24))(0, v28, v29);
  v30 = *(v24 + 24);
  v31 = *(v24 + 32);
  sub_100010C38(v24, v30);
  (*(v31 + 48))(v15, 0, v30, v31);
  return swift_endAccess();
}

uint64_t sub_1002137E0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002138B0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for OSSignposter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for InterestSyncStorage();
  v15[4] = &protocol witness table for InterestSyncStorage;
  v15[0] = a1;
  static OSSignposter.interests.getter();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  (*(v7 + 8))(v9, v6);
  *&a3[OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostState] = 0;
  sub_100004428(v15, &a3[OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage]);
  *&a3[OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_cloudSyncBugReporter] = a2;
  v10 = type metadata accessor for InterestSyncProcessor();
  v14.receiver = a3;
  v14.super_class = v10;
  v11 = objc_msgSendSuper2(&v14, "init");
  sub_100004590(v15);
  return v11;
}

uint64_t sub_100213A18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v5 = type metadata accessor for Logger();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v48 = type metadata accessor for OSSignposter();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v44 = *(v9 + 16);
  v45 = v8;
  v44(v13, v2 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostID, v8);

  v16 = OSSignposter.logHandle.getter();
  v42 = static os_signpost_type_t.begin.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    v41 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v40 = v2;
    v20 = v19;
    v52[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1000153E0(v43, a2, v52);
    v21 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v42, v21, "InterestSyncProcessor.GET", "%s", v18, 0xCu);
    sub_100004590(v20);
    v3 = v40;

    v7 = v41;
  }

  v22 = v45;
  v44(v47, v13, v45);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v13, v22);
  (*(v46 + 8))(v15, v48);
  *(v3 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostState) = v23;

  v24 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  sub_100004428(v3 + v24, v52);
  v25 = v53;
  v26 = v54;
  sub_1000044A0(v52, v53);
  v27 = (*(v26 + 64))(v25, v26);
  v29 = v28;
  sub_100004590(v52);
  static Logger.cloudSync.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = Logger.logObject.getter();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    v33 = v7;
    v34 = swift_slowAlloc();
    v51 = v34;
    *v32 = 136315138;
    v52[0] = v27;
    v52[1] = v29;

    sub_100168088(&qword_100574230);
    v35 = String.init<A>(describing:)();
    v37 = sub_1000153E0(v35, v36, &v51);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v30, "[Interests] Version for Get transaction: %s", v32, 0xCu);
    sub_100004590(v34);

    (*(v49 + 8))(v33, v50);
  }

  else
  {

    (*(v49 + 8))(v7, v50);
  }

  return v27;
}

unsigned __int8 *sub_100213F38(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v91 = a1;
  v7 = type metadata accessor for Logger();
  v89 = *(v7 - 8);
  v90 = v7;
  __chkstk_darwin(v7);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v94 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v85 - v13;
  v95 = type metadata accessor for OSSignposter();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignposter.cloudSync.getter();
  v92 = *(v10 + 16);
  v92(v14, v3 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostID, v9);

  v17 = OSSignposter.logHandle.getter();
  v87 = static os_signpost_type_t.begin.getter();

  v18 = OS_os_log.signpostsEnabled.getter();
  v88 = a3;
  v86 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v85 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v98[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000153E0(v91, a2, v98);
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v87, v22, "InterestSyncProcessor.SET", "%s", v20, 0xCu);
    sub_100004590(v21);

    v4 = v85;
  }

  v92(v94, v14, v9);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v23 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v10 + 8))(v14, v9);
  (*(v93 + 8))(v16, v95);
  *(v4 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_signpostState) = v23;

  v24 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  sub_100004428(v4 + v24, v98);
  v25 = v99;
  v26 = v100;
  sub_1000044A0(v98, v99);
  v27 = (*(v26 + 112))(v25, v26);
  sub_100004590(v98);
  if (*(v27 + 16))
  {
    goto LABEL_4;
  }

  sub_100004428(v4 + v24, v98);
  v42 = v99;
  v43 = v100;
  sub_1000044A0(v98, v99);
  v44 = (*(v43 + 64))(v42, v43);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    result = sub_100004590(v98);
    v49 = HIBYTE(v47) & 0xF;
    v50 = v46 & 0xFFFFFFFFFFFFLL;
    if ((v47 & 0x2000000000000000) != 0)
    {
      v51 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v51 = v46 & 0xFFFFFFFFFFFFLL;
    }

    if (v51)
    {
      if ((v47 & 0x1000000000000000) != 0)
      {
        v53 = sub_100311A9C(v46, v47, 10);
        v78 = v84;
        goto LABEL_78;
      }

      if ((v47 & 0x2000000000000000) != 0)
      {
        v98[0] = v46;
        v98[1] = v47 & 0xFFFFFFFFFFFFFFLL;
        if (v46 == 43)
        {
          if (v49)
          {
            if (--v49)
            {
              v53 = 0;
              v70 = v98 + 1;
              while (1)
              {
                v71 = *v70 - 48;
                if (v71 > 9)
                {
                  break;
                }

                v72 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  break;
                }

                v53 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  break;
                }

                ++v70;
                if (!--v49)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_76;
          }

LABEL_90:
          __break(1u);
          return result;
        }

        if (v46 != 45)
        {
          if (v49)
          {
            v53 = 0;
            v75 = v98;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              v75 = (v75 + 1);
              if (!--v49)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

        if (v49)
        {
          if (--v49)
          {
            v53 = 0;
            v64 = v98 + 1;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v53;
              if ((v53 * 10) >> 64 != (10 * v53) >> 63)
              {
                break;
              }

              v53 = v66 - v65;
              if (__OFSUB__(v66, v65))
              {
                break;
              }

              ++v64;
              if (!--v49)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }
      }

      else
      {
        if ((v46 & 0x1000000000000000) != 0)
        {
          result = ((v47 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v52 = *result;
        if (v52 == 43)
        {
          if (v50 >= 1)
          {
            v49 = v50 - 1;
            if (v50 != 1)
            {
              v53 = 0;
              if (result)
              {
                v67 = result + 1;
                while (1)
                {
                  v68 = *v67 - 48;
                  if (v68 > 9)
                  {
                    goto LABEL_76;
                  }

                  v69 = 10 * v53;
                  if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                  {
                    goto LABEL_76;
                  }

                  v53 = v69 + v68;
                  if (__OFADD__(v69, v68))
                  {
                    goto LABEL_76;
                  }

                  ++v67;
                  if (!--v49)
                  {
                    goto LABEL_77;
                  }
                }
              }

              goto LABEL_68;
            }

            goto LABEL_76;
          }

          goto LABEL_89;
        }

        if (v52 != 45)
        {
          if (v50)
          {
            v53 = 0;
            if (result)
            {
              while (1)
              {
                v73 = *result - 48;
                if (v73 > 9)
                {
                  goto LABEL_76;
                }

                v74 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_76;
                }

                v53 = v74 + v73;
                if (__OFADD__(v74, v73))
                {
                  goto LABEL_76;
                }

                ++result;
                if (!--v50)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_68;
          }

LABEL_76:
          v53 = 0;
          LOBYTE(v49) = 1;
          goto LABEL_77;
        }

        if (v50 >= 1)
        {
          v49 = v50 - 1;
          if (v50 != 1)
          {
            v53 = 0;
            if (result)
            {
              v54 = result + 1;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  goto LABEL_76;
                }

                v56 = 10 * v53;
                if ((v53 * 10) >> 64 != (10 * v53) >> 63)
                {
                  goto LABEL_76;
                }

                v53 = v56 - v55;
                if (__OFSUB__(v56, v55))
                {
                  goto LABEL_76;
                }

                ++v54;
                if (!--v49)
                {
                  goto LABEL_77;
                }
              }
            }

LABEL_68:
            LOBYTE(v49) = 0;
LABEL_77:
            v97 = v49;
            v78 = v49;
LABEL_78:

            if ((v78 & 1) == 0 && v53 >= 11)
            {
              v79 = *(v4 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_cloudSyncBugReporter);
              sub_100004428(v4 + v24, v98);
              v80 = v99;
              v81 = v100;
              sub_1000044A0(v98, v99);
              (*(v81 + 64))(v80, v81);
              if (v82)
              {
                v83 = String._bridgeToObjectiveC()();
              }

              else
              {
                v83 = 0;
              }

              sub_100004590(v98);
              [v79 reportInterestSyncIssue:0 version:v83 userInfo:0];
            }

            goto LABEL_4;
          }

          goto LABEL_76;
        }

        __break(1u);
      }

      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }
  }

  else
  {
    sub_100004590(v98);
  }

LABEL_4:
  v28 = v96;
  static Logger.cloudSync.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v98[0] = swift_slowAlloc();
    *v31 = 136315394;
    sub_100168088(&qword_100574880);
    v32 = Array.description.getter();
    v34 = v24;
    v35 = v27;
    v36 = v4;
    v37 = sub_1000153E0(v32, v33, v98);

    *(v31 + 4) = v37;
    v4 = v36;
    v27 = v35;
    v24 = v34;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1000153E0(v91, v86, v98);
    _os_log_impl(&_mh_execute_header, v30, v29, "[Interests] Providing data for SET transaction. interests: %s, key: %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v89 + 8))(v96, v90);
  }

  else
  {

    (*(v89 + 8))(v28, v90);
  }

  sub_100004428(v4 + v24, v98);
  v38 = v99;
  v39 = v100;
  sub_1000044A0(v98, v99);
  (*(v39 + 64))(v38, v39);
  if (v40)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v57 = v88;
  sub_100004590(v98);
  v58 = v41;
  *v57 = v41;
  v59 = [objc_allocWithZone(MZKeyValueStoreNode) init];
  sub_1001A543C(v27);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 setArrayValue:isa];

  v61 = [v59 value];
  if (v61)
  {
    v62 = v61;
    v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v63;
}

void sub_100214970(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v10 = sub_100168088(&qword_100577BA8);
  __chkstk_darwin(v10 - 8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = type metadata accessor for RemoteInterest();
  v69 = *(v15 - 8);
  __chkstk_darwin(v15);
  v77 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v63 - v18;
  v19 = [objc_allocWithZone(MZKeyValueStoreNode) init];
  v20 = a2;
  v21 = v19;
  isa = 0;
  if (v20 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v21 setValue:isa];

  if ([v21 hasData])
  {
    v23 = [v21 arrayValue];
    if (v23 && (v24 = v23, v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v24, v26 = sub_10037FDD4(v25), , v26))
    {
      v28 = v26;
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    v45 = v67;
    v63 = v21;
    v76 = v28[2];
    if (v76)
    {
      v46 = 0;
      v74 = v28 + 4;
      v79 = (v69 + 56);
      v70 = v4 + 8;
      v72 = (v69 + 32);
      v73 = (v69 + 48);
      *&v27 = 136380675;
      v65 = v27;
      v78 = _swiftEmptyArrayStorage;
      v66 = v9;
      v71 = v14;
      v75 = v28;
      while (v46 < v28[2])
      {

        RemoteInterest.init(dictionary:)();
        (*v79)(v45, 0, 1, v15);
        sub_100215A08(v45, v14);
        if ((*v73)(v14, 1, v15) == 1)
        {
          sub_1002159A0(v14);
        }

        else
        {
          v47 = *v72;
          v48 = v68;
          (*v72)(v68, v14, v15);
          v47(v77, v48, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_100243908(0, *(v78 + 2) + 1, 1, v78);
          }

          v50 = *(v78 + 2);
          v49 = *(v78 + 3);
          if (v50 >= v49 >> 1)
          {
            v78 = sub_100243908(v49 > 1, v50 + 1, 1, v78);
          }

          v51 = v77;
          v52 = v78;
          *(v78 + 2) = v50 + 1;
          v47(&v52[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v50], v51, v15);
        }

        ++v46;
        v28 = v75;
        if (v76 == v46)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v78 = _swiftEmptyArrayStorage;
LABEL_23:

      v53 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
      v54 = v64;
      swift_beginAccess();
      sub_100004428(v54 + v53, aBlock);
      v55 = v81;
      v56 = v82;
      sub_1000044A0(aBlock, v81);
      v57 = (*(v56 + 1))(v55, v56);
      sub_100004590(aBlock);
      v58 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v59 = swift_allocObject();
      v60 = v78;
      v59[2] = v58;
      v59[3] = v60;
      v59[4] = v57;
      v82 = sub_100215A78;
      v83 = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      v81 = &unk_1004E54B8;
      v61 = _Block_copy(aBlock);
      v62 = v57;

      [v62 performBlockAndWaitWithSave:v61];
      _Block_release(v61);
    }
  }

  else
  {
    static Logger.cloudSync.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v79 = v3;
      v32 = v31;
      v33 = v21;
      v34 = swift_slowAlloc();
      v86 = v34;
      *v32 = 136315138;
      v35 = OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
      v36 = v64;
      swift_beginAccess();
      sub_100004428(v36 + v35, aBlock);
      v37 = v81;
      v38 = v82;
      sub_1000044A0(aBlock, v81);
      v39 = (*(v38 + 8))(v37, v38);
      v41 = v40;
      sub_100004590(aBlock);
      v84 = v39;
      v85 = v41;
      sub_100168088(&qword_100574230);
      v42 = String.init<A>(describing:)();
      v44 = sub_1000153E0(v42, v43, &v86);

      *(v32 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v30, v29, "[Interests] Empty remote Interests key for current version %s. Nothing to merge.", v32, 0xCu);
      sub_100004590(v34);

      (*(v4 + 8))(v6, v79);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_1002152E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v30 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v26 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v25 = a5;
    v21 = a6;
    v22 = a7;
    v23 = v20;
    v31 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v27, v28, &v31);
    _os_log_impl(&_mh_execute_header, v17, v16, "[Interests] Updating local cache after GET transaction for key %s", v19, 0xCu);
    sub_100004590(v23);
    a7 = v22;
    a6 = v21;
    a5 = v25;

    a8 = v26;
  }

  (*(v13 + 8))(v15, v12);
  sub_100214970(v29, v30);
  sub_100211758(a5, a6, a7, a8);
}

void sub_1002154C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v28 = a1;
  v29 = a2;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = Logger.logObject.getter();
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v27 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v26 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = v20;
    v30 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000153E0(v28, v29, &v30);
    _os_log_impl(&_mh_execute_header, v17, v16, "[Interests] Successful SET transaction for key %s, marking everything as synced and finishing normally.", v19, 0xCu);
    sub_100004590(v24);
    a6 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v26;
  }

  (*(v13 + 8))(v15, v12);
  sub_100211758(a3, a4, a5, a6);
}

uint64_t sub_1002156A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, __n128), uint64_t a8)
{
  v9 = v8;
  v34 = a3;
  v35 = a4;
  v36 = a1;
  v37 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v33 = a5;
    v21 = v20;
    v22 = swift_slowAlloc();
    v32 = a6;
    v23 = a7;
    v24 = a8;
    v25 = v22;
    v38[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000153E0(v34, v35, v38);
    _os_log_impl(&_mh_execute_header, v19, v18, "[Interests] Failure on SET transaction for key %s, Bookkeeper copy has diverged from local copy, we must merge both.", v21, 0xCu);
    sub_100004590(v25);
    a8 = v24;
    a7 = v23;
    a6 = v32;

    a5 = v33;
  }

  (*(v15 + 8))(v17, v14);
  sub_100214970(v36, v37);
  sub_100211F30(a7, a8);
  v26 = v9 + OBJC_IVAR____TtC8Podcasts21InterestSyncProcessor_interestSyncStorage;
  swift_beginAccess();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  sub_100010C38(v26, v27);
  v29 = *(v28 + 72);

  v29(a5, a6, v27, v28);
  return swift_endAccess();
}

uint64_t sub_1002158F4()
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t sub_1002159A0(uint64_t a1)
{
  v2 = sub_100168088(&qword_100577BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100215A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577BA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100215A84@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ShowOffer();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001A1560(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001A1560(v12, v6);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    v9 = v6;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
LABEL_3:
      sub_100216D6C(v9, type metadata accessor for PodcastContextActionDataType.Kind);
      (*(v14 + 56))(a1, 1, 1, v13);
      return sub_100216D6C(v12, type metadata accessor for PodcastContextActionDataType);
    }
  }

  else
  {
    sub_1001A1560(v12, v9);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_3;
    }
  }

  v18 = *(v14 + 32);
  v18(v16, v9, v13);
  sub_100216D6C(v12, type metadata accessor for PodcastContextActionDataType);
  v18(a1, v16, v13);
  return (*(v14 + 56))(a1, 0, 1, v13);
}

uint64_t sub_100215D14()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v2);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&aBlock[-1] - v6);
  __chkstk_darwin(v8);
  v10 = &aBlock[-1] - v9;
  v11 = [objc_opt_self() sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  sub_1001A1560(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001A1560(v10, v4);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    v7 = v4;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    sub_100216D6C(v7, type metadata accessor for PodcastContextActionDataType.Kind);
    sub_100216D6C(v10, type metadata accessor for PodcastContextActionDataType);
    return 0;
  }

  sub_1001A1560(v10, v7);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15 = v7;
  v13 = *v7;
  v14 = v15[1];
  sub_100216D6C(v10, type metadata accessor for PodcastContextActionDataType);
  v24 = 0;
  v16 = swift_allocObject();
  v16[2] = &v24;
  v16[3] = v12;
  v16[4] = v13;
  v16[5] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100216DCC;
  *(v17 + 24) = v16;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E5530;
  v18 = _Block_copy(aBlock);
  v19 = v12;

  [v19 performBlockAndWait:v18];

  _Block_release(v18);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    v21 = v24;

    return v21;
  }

  __break(1u);
  return result;
}

void sub_100216030(void **a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 podcastForUuid:v4];

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_1002160A8()
{
  v1 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ShowOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v0 + v8, v3);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = ShowOffer.adamId.getter();
    (*(v5 + 8))(v7, v4);
    return v9;
  }

  else
  {
    v13 = v3;
    v12 = *v3;
    v11 = v13[1];
    v14 = [*(v0 + 16) mainOrPrivateContext];
    __chkstk_darwin(v14);
    *(&v16 - 4) = v15;
    *(&v16 - 3) = v12;
    *(&v16 - 2) = v11;
    NSManagedObjectContext.performAndWait<A>(_:)();

    return v16;
  }
}

uint64_t sub_1002162AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 podcastForUuid:v4];

  if (v5 && (v6 = MTPodcast.adamId.getter(), v8 = v7, v5, (v8 & 1) == 0))
  {
    result = v6;
  }

  else
  {
    result = static AdamID.empty.getter();
  }

  *a2 = result;
  return result;
}

uint64_t sub_100216334()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100577EA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v50 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v50);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v42 - v8;
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ShowOffer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  v49 = v21;
  v52 = v1;
  sub_1001A1560(v1 + v21, v14);
  sub_100215A84(v4);
  sub_100216D6C(v14, type metadata accessor for PodcastContextActionDataType);
  if ((*(v16 + 48))(v4, 1, v15) == 1)
  {
    return sub_100009104(v4, &qword_100577EA0);
  }

  v43 = v6;
  v23 = *(v16 + 32);
  v23(v20, v4, v15);
  result = ShowOffer.adamId.getter();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = result;
  v42 = v11;
  v55 = 0;
  v56 = 0;
  v54 = 2;
  v25 = v52;
  v26 = [*(v52 + 16) mainOrPrivateContext];
  v46 = v23;
  v47 = v26;
  v44 = v20;
  v45 = v16;
  v27 = v51;
  (*(v16 + 16))(v51, v20, v15);
  v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v29 = (v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  v51 = v15;
  v46(v31 + v28, v27, v15);
  *(v31 + v29) = v25;
  *(v31 + v30) = &v55;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v54;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100216DD8;
  *(v32 + 24) = v31;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E55A8;
  v33 = _Block_copy(aBlock);

  v34 = v47;
  [v47 performBlockAndWait:v33];

  _Block_release(v33);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v35 = v56;
  if (v56 && v54 != 2 && (v54 & 1) == 0)
  {
    v36 = v55;
    v37 = v48;
    v38 = v49;
    sub_1001A1560(v25 + v49, v48);
    v39 = v43;
    sub_1001A15C4(v37, v43);
    swift_getEnumCaseMultiPayload();
    v40 = v42;
    *v42 = v36;
    *(v40 + 8) = v35;
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    sub_100216D6C(v39, type metadata accessor for PodcastContextActionDataType);
    swift_beginAccess();
    sub_100216E80(v40, v25 + v38);
    v41 = swift_endAccess();
    sub_100216334(v41);
    sub_100216D6C(v40, type metadata accessor for PodcastContextActionDataType);
  }

  (*(v45 + 8))(v44, v51);
}

void sub_1002168DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  ShowOffer.feedUrl.getter();
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100009104(v10, &qword_100574040);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v12 + 8))(v10, v11);
  }

  type metadata accessor for CoreDataFetcher();
  v13 = [*(a3 + 16) mainOrPrivateContext];
  v14 = static CoreDataFetcher.fetchPodcast(adamId:feedUrl:with:)();

  if (v14)
  {
    v15 = [v14 uuid];
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

    *a4 = v17;
    a4[1] = v19;

    v20 = [v14 hidden];

    *a5 = v20;
  }
}

uint64_t sub_100216AE4()
{
  swift_unknownObjectRelease();
  sub_100216D6C(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type, type metadata accessor for PodcastContextActionDataType);
  sub_100216EF0(*(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 8), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 16), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 24), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 32), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 40), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 48), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 56), *(v0 + OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_groupedEpisodeListType + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_100216BBC()
{
  result = type metadata accessor for PodcastContextActionDataType(319);
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

uint64_t sub_100216C80()
{
  result = type metadata accessor for PodcastContextActionDataType.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100216D00()
{
  result = type metadata accessor for ShowOffer();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100216D6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100216DD8()
{
  v1 = *(type metadata accessor for ShowOffer() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  sub_1002168DC(v8, v0 + v2, v5, v6, v7);
}

uint64_t sub_100216E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100216EF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 != 255)
  {
    sub_10019C0A4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

__n128 sub_100216F18(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100216F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_100216FA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100217020()
{

  v1 = OBJC_IVAR____TtC8Podcasts30AddToQueuePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AddToQueuePodcastContextAction()
{
  result = qword_100577ED0;
  if (!qword_100577ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100217128()
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

uint64_t sub_1002171D4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x51206F7420646441;
  v1._object = 0xEC00000065756575;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100217294@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30AddToQueuePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10021730C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.addPodcastToQueue(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1002173E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_100217444(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002174A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_100217504(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100318730(a1, WitnessTable);
}

uint64_t sub_100217558(uint64_t a1)
{
  result = sub_100217624(&unk_100582280);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10021759C(uint64_t a1)
{
  result = sub_100217624(&qword_100577FC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002175E0(uint64_t a1)
{
  result = sub_100217624(&qword_100577FD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100217624(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddToQueuePodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002176A0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002176E8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100217738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10021778C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1002177A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1002177D4(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1002177F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100217838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021787C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1002178A8()
{
  result = qword_100581780;
  if (!qword_100581780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581780);
  }

  return result;
}

unint64_t sub_100217988()
{
  result = qword_10057A6F0;
  if (!qword_10057A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A6F0);
  }

  return result;
}

uint64_t sub_1002179DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
    return swift_errorRetain();
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100217A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100219C08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001BAAC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10001BAAC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001BAAC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100217CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100219C08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001BAAC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100168088(&qword_100578108);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001BAAC(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001BAAC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100168088(&qword_100578108);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100217F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100219C08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001BAAC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100168088(&unk_100578110);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001BAAC(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001BAAC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100168088(&unk_100578110);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10021826C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100219C08(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001BAAC(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100168088(&qword_100578100);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10001BAAC(a3);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001BAAC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100168088(&qword_100578100);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id CarPlaySceneDelegate.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___CarPlaySceneDelegate_coordinator] = 0;
  *&v0[OBJC_IVAR___CarPlaySceneDelegate_connectTask] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

Swift::Void __swiftcall CarPlaySceneDelegate.templateApplicationScene(_:didConnect:)(CPTemplateApplicationScene _, CPInterfaceController didConnect)
{
  type metadata accessor for MainActor();
  v5 = v2;
  isa = didConnect.super.isa;
  sub_100218B84(sub_100218880, &v4);
}

uint64_t sub_1002186AC(uint64_t a1, void *a2)
{
  v4 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = [objc_opt_self() sharedInstance];
  [v7 beginObserving];

  type metadata accessor for CarPlaySceneCoordinator();
  v8 = swift_allocObject();
  type metadata accessor for CarPlayBootstrap();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = 0;
  *(a1 + OBJC_IVAR___CarPlaySceneDelegate_coordinator) = v8;
  v10 = a2;

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v8;
  *(a1 + OBJC_IVAR___CarPlaySceneDelegate_connectTask) = sub_100217A04(0, 0, v6, &unk_1004056B8, v13);
}

uint64_t sub_10021889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100218934, v6, v5);
}

uint64_t sub_100218934()
{
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v0[6] = v1;
    *v1 = v0;
    v1[1] = sub_100218A04;

    return CarPlaySceneCoordinator.connect()();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100218A04()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100218B24, v3, v2);
}

uint64_t sub_100218B24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100218B84(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10021A3BC();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x8000000100469E70;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CarPlaySceneDelegate.templateApplicationScene(_:didDisconnectInterfaceController:)(CPTemplateApplicationScene _, CPInterfaceController didDisconnectInterfaceController)
{
  type metadata accessor for MainActor();
  v4 = v2;
  sub_100218B84(sub_100218FDC, &v3);
}

void sub_100218E14(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR___CarPlaySceneDelegate_connectTask;
  if (*(a1 + OBJC_IVAR___CarPlaySceneDelegate_connectTask))
  {

    Task.cancel()();
  }

  *(a1 + v5) = 0;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = *(a1 + OBJC_IVAR___CarPlaySceneDelegate_coordinator);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_100217CC4(0, 0, v4, &unk_1004056A8, v9);

  v10 = [objc_opt_self() sharedInstance];
  [v10 endObserving];
}

uint64_t sub_100218FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100219090, v6, v5);
}

uint64_t sub_100219090()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100219170;

    return CarPlaySceneCoordinator.disconnect()();
  }

  else
  {

    **(v0 + 16) = *(v0 + 24) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100219170()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100219290, v3, v2);
}

uint64_t sub_100219290()
{

  **(v0 + 16) = *(v0 + 24) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002193A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_100219438, v6, v5);
}

uint64_t sub_100219438()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100219518;

    return CarPlaySceneCoordinator.didBecomeActive()();
  }

  else
  {

    **(v0 + 16) = *(v0 + 24) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100219518()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10021A63C, v3, v2);
}

uint64_t sub_100219638(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_1002193A0(a1, v4, v5, v6);
}

uint64_t sub_10021972C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(v3 + OBJC_IVAR___CarPlaySceneDelegate_coordinator);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100217CC4(0, 0, v7, a3, v11);
}

uint64_t sub_100219854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1002198EC, v6, v5);
}

uint64_t sub_1002198EC()
{
  if (*(v0 + 24))
  {
    v1 = swift_task_alloc();
    *(v0 + 56) = v1;
    *v1 = v0;
    v1[1] = sub_100219518;

    return CarPlaySceneCoordinator.didEnterBackground()();
  }

  else
  {

    **(v0 + 16) = *(v0 + 24) == 0;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1002199CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_100219854(a1, v4, v5, v6);
}

void sub_100219AC4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *&a1[OBJC_IVAR___CarPlaySceneDelegate_coordinator];
  type metadata accessor for MainActor();

  v12 = a1;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  sub_100217CC4(0, 0, v9, a5, v14);
}

uint64_t sub_100219C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100219C78(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100219D6C;

  return v5(v2 + 32);
}

uint64_t sub_100219D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100219E80(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100219F74;

  return v5(v2 + 16);
}

uint64_t sub_100219F74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10021A0A4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10021A640;

  return v5(v2 + 16);
}

uint64_t sub_10021A198(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10021A620;

  return sub_10021A0A4(a1, v4);
}

uint64_t sub_10021A250(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10021A620;

  return sub_100219C78(a1, v4);
}

uint64_t sub_10021A308(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10021A620;

  return sub_100218FF8(a1, v4, v5, v6);
}

uint64_t sub_10021A3E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_10021889C(a1, v4, v5, v6);
}

uint64_t sub_10021A498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10021A620;

  return sub_100219E80(a1, v4);
}

uint64_t sub_10021A550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_100219E80(a1, v4);
}

uint64_t sub_10021A644@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_100004428(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100004590(v9);
      }

      if (v8)
      {
        return sub_100184658(v9, a3);
      }

      result = sub_100004590(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_10021A6FC(uint64_t a1)
{
  v2 = static os_log_type_t.debug.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v3 = static OS_os_log.downloads.getter();
  sub_100004428(a1, v20);
  sub_100004428(a1, v17);
  if (!os_log_type_enabled(v3, v2))
  {

    sub_100004590(v17);
    sub_100004590(v20);
    return;
  }

  v4 = 0xE900000000000064;
  v5 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v5 = 136446466;
  v6 = v21;
  v7 = v22;
  sub_1000044A0(v20, v21);
  v8 = (*(v7 + 56))(v6, v7);
  v10 = v9;
  sub_100004590(v20);
  v11 = sub_1000153E0(v8, v10, &v23);

  *(v5 + 4) = v11;
  *(v5 + 12) = 2080;
  v12 = v18;
  v13 = v19;
  sub_1000044A0(v17, v18);
  v14 = (*(v13 + 8))(v12, v13);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v4 = 0xE900000000000067;
      v15 = 0x6E696C65636E6163;
      goto LABEL_13;
    }

    if (v14 == 3)
    {
      v15 = 0x6574656C706D6F63;
      goto LABEL_13;
    }

LABEL_10:
    v4 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E75;
    goto LABEL_13;
  }

  if (!v14)
  {
    v4 = 0xE700000000000000;
    v15 = 0x676E696E6E7572;
    goto LABEL_13;
  }

  if (v14 != 1)
  {
    goto LABEL_10;
  }

  v15 = 0x65646E6570737573;
LABEL_13:
  sub_100004590(v17);
  v16 = sub_1000153E0(v15, v4, &v23);

  *(v5 + 14) = v16;
  _os_log_impl(&_mh_execute_header, v3, v2, "Syncing task %{public}s state: %s", v5, 0x16u);
  swift_arrayDestroy();
}

uint64_t sub_10021A9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1000044A0(a1, v6);
  if (((*(v7 + 64))(v6, v7) & 1) != 0 && (v8 = a1[3], v9 = a1[4], sub_1000044A0(a1, v8), (*(v9 + 8))(v8, v9) == 3))
  {
    v10 = static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v11 = static OS_os_log.downloads.getter();
    sub_100004428(a1, v28);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31 = v26;
      *v12 = 134349314;
      v14 = v29;
      v13 = v30;
      sub_1000044A0(v28, v29);
      v15 = (*(v13 + 24))(v14, v13);
      sub_100004590(v28);
      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      v17 = *(a2 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier);
      v16 = *(a2 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 8);
      if (*(a2 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16))
      {
        v18 = 1936484398;
      }

      else
      {
        v18 = 0x7261646E6174732ELL;
      }

      if (*(a2 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_sessionIdentifier + 16))
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE900000000000064;
      }

      v27._countAndFlagsBits = v17;
      v27._object = v16;

      v20._countAndFlagsBits = v18;
      v20._object = v19;
      String.append(_:)(v20);

      String.append(_:)(v27);

      v21 = sub_1000153E0(0x496E6F6973736553, 0xEB00000000203A44, &v31);

      *(v12 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v11, v10, "Not adding restored pipeline for task id: %{public}ld, session id: %{public}s because task was cancelled", v12, 0x16u);
      sub_100004590(v26);
    }

    else
    {
      sub_100004590(v28);
    }

    result = 0;
    v25 = 1;
  }

  else
  {
    v22 = a1[3];
    v23 = a1[4];
    sub_1000044A0(a1, v22);
    result = (*(v23 + 24))(v22, v23);
    v25 = 0;
  }

  *a3 = result;
  *(a3 + 8) = v25;
  return result;
}

void sub_10021AC84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10021A644(sub_10021B544, *(a2 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_tasks), &v36);
  if (!v37)
  {
    sub_10021B564(&v36);
LABEL_7:
    sub_1001BE270(a1, a3);
    return;
  }

  sub_100184658(&v36, v38);
  v5 = v39;
  v6 = v40;
  sub_1000044A0(v38, v39);
  if ((*(v6 + 8))(v5, v6) != 1)
  {
    sub_100004590(v38);
    goto LABEL_7;
  }

  static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v7 = static OS_os_log.downloads.getter();
  sub_100168088(&unk_100574670);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004007E0;
  v9 = v39;
  v10 = v40;
  sub_1000044A0(v38, v39);
  v11 = (*(v10 + 104))(v9, v10);
  *(v8 + 56) = &type metadata for Int64;
  *(v8 + 64) = &protocol witness table for Int64;
  *(v8 + 32) = v11;
  v12 = v39;
  v13 = v40;
  sub_1000044A0(v38, v39);
  v14 = (*(v13 + 96))(v12, v13);
  *(v8 + 96) = &type metadata for Int64;
  *(v8 + 104) = &protocol witness table for Int64;
  *(v8 + 72) = v14;
  v15 = v39;
  v16 = v40;
  sub_1000044A0(v38, v39);
  v17 = (*(v16 + 16))(v15, v16);
  v18 = [v17 localizedAdditionalDescription];

  if (v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v8 + 136) = &type metadata for String;
    *(v8 + 144) = sub_100022C18();
    *(v8 + 112) = v19;
    *(v8 + 120) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = v39;
    v23 = v40;
    sub_1000044A0(v38, v39);
    v24 = (*(v23 + 16))(v22, v23);
    v25 = [v24 totalUnitCount];
    v26 = [v24 completedUnitCount];
    v27 = sub_100210480();
    v29 = v28;
    [v24 fractionCompleted];
    v31 = v30;
    v32 = NSProgress.estimatedTimeRemaining.getter();
    v34 = v33;

    sub_1001BE270(a1, a3);
    LOBYTE(v36) = v34 & 1;
    LOWORD(v24) = v34 & 1 | 0x100;
    v35 = a3 + *(type metadata accessor for DownloadJob(0) + 40);
    sub_10018276C(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24));
    *v35 = v25;
    *(v35 + 8) = v26;
    *(v35 + 16) = v27;
    *(v35 + 24) = v29;
    *(v35 + 32) = v31;
    *(v35 + 40) = v32;
    *(v35 + 48) = v24;
    sub_100004590(v38);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10021B000(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DownloadJob(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v12 = static OS_os_log.downloads.getter();
  sub_1001BE270(a2, v10);
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v26 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[6] = a1;
    v16 = v15;
    v27[0] = v15;
    *v14 = 136446210;
    sub_1001BE270(v10, v8);
    v17 = String.init<A>(describing:)();
    v25 = v11;
    v19 = v18;
    sub_1001BE660(v10);
    v20 = sub_1000153E0(v17, v19, v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v25, "Mapping job to dict with job: %{public}s", v14, 0xCu);
    sub_100004590(v16);
  }

  else
  {

    sub_1001BE660(v10);
  }

  v21 = sub_1001BE270(a2, v8);
  __chkstk_darwin(v21);
  *&v24[-16] = a2;
  sub_10021A644(sub_10021B618, v22, v27);
  return sub_100286BB8(v27, v8);
}

BOOL sub_10021B284(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000044A0(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  return v5 == *(a2 + *(type metadata accessor for DownloadJob(0) + 28));
}

void sub_10021B304(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  if (v4)
  {
    v9 = sub_100168088(&qword_100578198);
    v7 = a1;
    v8 = 1;
    sub_100013CB4(v4);
    swift_errorRetain();
    v4(&v7);
    sub_1000112B4(v4);
    sub_100004590(&v7);
  }

  v5 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  v6 = *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
  swift_errorRetain();
  [v6 lock];
  *(a2 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = a1;
  swift_errorRetain();

  [*(a2 + v5) unlock];

  sub_10003172C();
}

void sub_10021B440()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts25SyncDownloadJobsOperation_operationQueue);
}

id sub_10021B4A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncDownloadJobsOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10021B4E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021B564(uint64_t a1)
{
  v2 = sub_100168088(&unk_1005817B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CoreDataDownloadLibrary.downloadedAssets(for:)(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005781A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  *(swift_allocObject() + 16) = a1;

  sub_100168088(&qword_100575B80);
  v6 = NSManagedObjectContext.performAndPublish<A>(_:)();

  v9[1] = v6;
  sub_100168088(&qword_1005781B0);
  sub_100168088(&qword_1005781B8);
  sub_100009FAC(&qword_1005781C0, &qword_1005781B0);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_1005781C8, &qword_1005781A8);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_10021B860(uint64_t *a1@<X8>)
{
  v3 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  sub_100168088(&unk_100574680);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100405740;
  v5 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v7 = [v5 predicateForEpisodeUuids:isa];

  *(v4 + 32) = v7;
  *(v4 + 40) = [v5 predicateForDownloaded:1 excludeHidden:1];
  sub_100009F1C(0, &qword_1005751F0);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() andPredicateWithSubpredicates:v8];

  [v3 setPredicate:v9];
  sub_100009F1C(0, &qword_100573660);
  v10 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {
    *a1 = v10;
  }
}

void sub_10021BA50(unint64_t *a1@<X0>, char **a2@<X8>)
{
  v29 = a2;
  v3 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v42 = type metadata accessor for DownloadedAsset();
  v34 = *(v42 - 8);
  __chkstk_darwin(v42);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v29 - v14;
  v15 = *a1;
  if (v15 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v38 = v11;
    v11 = 0;
    v45 = v15 & 0xFFFFFFFFFFFFFF8;
    v46 = v15 & 0xC000000000000001;
    v43 = (v7 + 48);
    v30 = (v7 + 16);
    v35 = (v7 + 8);
    v36 = (v7 + 32);
    v39 = (v7 + 56);
    v40 = (v34 + 32);
    v44 = _swiftEmptyArrayStorage;
    v31 = v15;
    v37 = i;
    while (1)
    {
      if (v46)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v45 + 16))
        {
          goto LABEL_23;
        }

        v17 = *(v15 + 8 * v11 + 32);
      }

      v7 = v17;
      v18 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v19 = [v17 assetURL];
      if (v19)
      {
        v20 = v19;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URL.init(string:)();
        swift_bridgeObjectRelease_n();
        if ((*v43)(v5, 1, v6) != 1)
        {
          v21 = v38;
          (*v36)(v38, v5, v6);
          v22 = [v7 uuid];
          if (v22)
          {
            v23 = v22;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            (*v30)(v33, v21, v6);
            v24 = v32;
            DownloadedAsset.init(episodeUuid:fileURL:)();

            (*v35)(v21, v6);
            v25 = *v40;
            (*v40)(v41, v24, v42);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_100243A40(0, *(v44 + 2) + 1, 1, v44);
            }

            i = v37;
            v27 = *(v44 + 2);
            v26 = *(v44 + 3);
            v7 = (v27 + 1);
            v15 = v31;
            if (v27 >= v26 >> 1)
            {
              v44 = sub_100243A40(v26 > 1, v27 + 1, 1, v44);
            }

            v28 = v44;
            *(v44 + 2) = v7;
            v25(&v28[((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27], v41, v42);
          }

          else
          {
            (*v35)(v21, v6);

            i = v37;
          }

          goto LABEL_6;
        }
      }

      else
      {

        (*v39)(v5, 1, 1, v6);
      }

      sub_100009104(v5, &qword_100574040);
LABEL_6:
      ++v11;
      if (v18 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_26:
  *v29 = v44;
}

uint64_t sub_10021BF8C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a2 removeDownloadAssetsForEpisodeUuids:isa];

  *a3 = v5;
}

uint64_t sub_10021C00C(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005781A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  *(swift_allocObject() + 16) = a1;

  sub_100168088(&qword_100575B80);
  v6 = NSManagedObjectContext.performAndPublish<A>(_:)();

  v9[1] = v6;
  sub_100168088(&qword_1005781B0);
  sub_100168088(&qword_1005781B8);
  sub_100009FAC(&qword_1005781C0, &qword_1005781B0);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_1005781C8, &qword_1005781A8);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10021C240(uint64_t a1, void *a2, void *a3)
{
  v34 = a2;
  v5 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_100168088(&qword_1005781D0);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v30 = sub_100168088(&qword_1005781D8);
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v29 - v11;
  v13 = sub_100168088(&qword_1005781E0);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v35 = a1;

  sub_100168088(&qword_1005781E8);
  Just.init(_:)();
  v35 = a3;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = sub_100009F1C(0, &qword_1005729D0);
  v19 = sub_100009FAC(&qword_1005781F0, &qword_1005781D0);
  v20 = sub_1000179F8();
  v21 = a3;
  Publisher.receiveAndSubscribe<A>(on:options:)();
  sub_100009104(v7, &qword_100575C10);

  (*(v29 + 8))(v10, v8);
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = v34;
  v24 = v23;
  v35 = v8;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  v25 = v30;
  Publisher.tryMap<A>(_:)();

  (*(v33 + 8))(v12, v25);
  sub_100009FAC(&qword_1005781F8, &qword_1005781E0);
  v26 = v31;
  v27 = Publisher.eraseToAnyPublisher()();
  (*(v32 + 8))(v16, v26);
  return v27;
}

void sub_10021C6D8(void *a1)
{
  v7 = a1;
  [v7 podcastStoreId];
  v1 = [v7 podcastFeedUrl];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3 = [v7 author];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = [v7 podcastDisplayType];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [v7 isNotSubscribeable];

  PodcastPlayerItem.init(adamID:feedURL:title:displayType:isSubscribeable:)();
}

void sub_10021C844(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = a1;
  v25 = [v11 episodeStoreId];
  v12 = [v11 title];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v15;
    v24 = v14;
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v16 = [v11 subtitle];
  if (v16)
  {
    v17 = v16;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v22 = 0;
  }

  v18 = [v11 episodeGuid];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = [v11 pubDate];

  if (v20)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 56))(v8, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v8, 1, 1, v3);
  }

  sub_1001A4668(v8, v10);
  if ((*(v4 + 48))(v10, 1, v3))
  {
    sub_1001A4748(v10);
  }

  else
  {
    (*(v4 + 16))(v6, v10, v3);
    sub_1001A4748(v10);
    Date.timeIntervalSinceReferenceDate.getter();
    (*(v4 + 8))(v6, v3);
  }

  EpisodePlayerItem.init(adamID:title:subtitle:guid:pubDate:)();
}

void sub_10021CB70(uint64_t a1)
{
  v3 = [objc_opt_self() sharedInstance];
  *(v1 + 104) = _swiftEmptyArrayStorage;
  *(v1 + 96) = v3;
  v31 = objc_opt_self();
  v4 = [v31 _applePodcastsFoundationSharedUserDefaults];
  v5 = [v4 BOOLForKey:?];

  *(v1 + 88) = v5;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v1 + 16) = 0x6F7369704577656ELL;
  *(v1 + 24) = 0xEB00000000736564;
  *(v1 + 32) = [objc_allocWithZone(MTDynamicTypeConstant) initWithDefaultConstant:UIFontTextStyleBody textStyle:64.0];
  v6 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v32 = objc_opt_self();
  v8 = [v32 groupWithTitle:v6 footerText:0 settings:isa];

  if (v8)
  {
    *(v1 + 40) = v8;
    v38 = _swiftEmptyArrayStorage;
    v34 = v1;
    v35 = *(a1 + 16);
    v33 = _swiftEmptyArrayStorage;

    v9 = 0;
LABEL_3:
    v10 = 40 * v9;
    while (v35 != v9)
    {
      if (v9 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      ++v9;
      v36 = v10 + 40;
      v11 = a1 + v10;
      v12 = *(v11 + 64);
      v13 = *(v11 + 32);
      v14 = *(v11 + 40);
      v15 = objc_opt_self();
      swift_bridgeObjectRetain_n();

      v16 = String._bridgeToObjectiveC()();
      v17 = String._bridgeToObjectiveC()();
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = v13;
      v19[4] = v14;
      aBlock[4] = sub_10021E68C;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002016BC;
      aBlock[3] = &unk_1004E5F58;
      v20 = _Block_copy(aBlock);

      v21 = [v15 switchSettingWithTitle:v16 initialValue:v12 identifier:v17 changeHandler:v20];
      _Block_release(v20);

      v10 = v36;
      if (v21)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v33 = v38;
        goto LABEL_3;
      }
    }

    v22 = [objc_opt_self() mainBundle];
    v39._object = 0xE000000000000000;
    v23._object = 0x8000000100469FF0;
    v23._countAndFlagsBits = 0xD000000000000031;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    v39._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v39);

    sub_1001A5228(v33);
    v25 = String._bridgeToObjectiveC()();
    v26 = Array._bridgeToObjectiveC()().super.isa;

    v27 = [v32 groupWithTitle:v25 footerText:0 settings:v26];

    if (!v27)
    {
      goto LABEL_14;
    }

    v28 = *(v34 + 40);
    *(v34 + 40) = v27;

    v29 = [v31 _applePodcastsFoundationSharedUserDefaults];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = NSUserDefaults.BOOLPublisher(forKey:)();

    aBlock[0] = v30;
    swift_allocObject();
    swift_weakInit();
    sub_100168088(&unk_1005783E0);
    sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_100168088(&unk_1005783F0);
    sub_100009FAC(&unk_10057A070, &unk_1005783F0);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  else
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_10021D1AC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 88);
    *(result + 88) = v1;
    if (v1 != v3)
    {
      sub_10021DF58();
      sub_10021D404();
    }
  }

  return result;
}

void sub_10021D230(void *a1, id a2)
{
  v3 = [a2 identifier];
  if (v3)
  {
    v4 = v3;
    [a1 setArtworkKey:v3];

    [a1 setMaximumNumberOfTextLines:2];
    v5 = [a1 textLabel];
    if (v5)
    {
      v6 = v5;
      [v5 setAdjustsFontSizeToFitWidth:0];
    }

    v7 = [a1 traitCollection];
    v8 = UITraitCollection.interfaceIdiomIsMac.getter();

    if (v8)
    {
      v9 = [a1 textLabel];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_opt_self() systemFontOfSize:14.0];
        [v10 setFont:v11];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10021D398(void *a1)
{
  v3 = *(v1 + 88);
  v4 = String._bridgeToObjectiveC()();
  [a1 setEnabled:v3 forGroupWithIdentifier:v4];
}

void sub_10021D404()
{
  v1 = v0;
  v2 = objc_opt_self();

  sub_10039B51C(v3);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v2 predicateForPodcastUuids:isa];

  v6 = *(v1 + 96);
  swift_getObjectType();
  v7 = v5;
  swift_unknownObjectRetain();
  v8 = sub_10021E250(v7, _swiftEmptyArrayStorage, v6);

  swift_unknownObjectRelease();
  v34 = v8[2];
  if (!v34)
  {
LABEL_36:
    v29 = 0;
    goto LABEL_38;
  }

  v9 = 0;
  v32 = v1;
  v33 = v8 + 4;
  v31 = v8;
  while (1)
  {
    if (v9 >= v8[2])
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v11 = &v33[5 * v9];
    v36 = *v11;
    v37 = v11[1];
    v12 = *(v11 + 32);
    v13 = *(v1 + 40);

    v14 = [v13 groupSettings];
    if (!v14)
    {
      goto LABEL_44;
    }

    v15 = v14;
    sub_10021E1F8();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = v9;
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        break;
      }

      goto LABEL_3;
    }

    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      break;
    }

LABEL_3:

    v8 = v31;
    v1 = v32;
    v10 = v35;
    if (v12)
    {
      goto LABEL_37;
    }

LABEL_4:
    v9 = v10 + 1;
    if (v9 == v34)
    {
      goto LABEL_36;
    }
  }

  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v22 = [v19 identifier];
    if (!v22)
    {
      goto LABEL_10;
    }

    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == v36 && v26 == v37)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_24;
    }

LABEL_10:

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_3;
    }
  }

LABEL_24:

  v8 = v31;
  v1 = v32;
  v10 = v35;
  if ([v20 value])
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v38 = 0u;
    v39 = 0u;
  }

  v41 = v38;
  v42 = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast())
    {

      if (v12 == v40)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else
  {
    sub_100009104(&v41, &unk_1005783D0);
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  v29 = 1;
LABEL_38:
  swift_beginAccess();
  sub_10021E418(v1 + 48, &v41);
  if (*(&v42 + 1))
  {
    sub_100004428(&v41, &v38);
    sub_100009104(&v41, &qword_100576010);
    v30 = *sub_1000044A0(&v38, *(&v39 + 1));

    sub_1001D2714(v29, v30, v8, v1);
    swift_bridgeObjectRelease_n();

    sub_100004590(&v38);
  }

  else
  {

    sub_100009104(&v41, &qword_100576010);
  }
}

void sub_10021D8CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 64;
    do
    {

      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v8 = String._bridgeToObjectiveC()();
      v9 = String._bridgeToObjectiveC()();
      [a1 setValue:isa forSettingWithIdentifier:v8 inGroup:v9];

      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v10 = *(a3 + 88);
  v11 = String._bridgeToObjectiveC()();
  [a1 setEnabled:v10 forGroupWithIdentifier:v11];
}

uint64_t sub_10021D9E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100168088(&qword_100574690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100400790;
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;

    sub_10021DD50(v8, a1 & 1);
  }

  return result;
}

void sub_10021DAAC(void *a1, uint64_t a2, unint64_t a3, char **a4)
{
  sub_100168088(&qword_100574690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v10;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v11;
  v12 = kMTPodcastEntityName;
  sub_1001A523C(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1001A5128(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [a1 objectDictionariesInEntity:v12 predicate:a2 sortDescriptors:isa propertiesToFetch:v14 includeObjectId:0];

  if (v15)
  {
    sub_100168088(&qword_100574880);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
    v18 = *(v16 + 16);
    v15 = _swiftEmptyArrayStorage;
LABEL_3:
    v19 = v17;
    while (1)
    {
      if (v18 == v19)
      {

        goto LABEL_13;
      }

      if (v19 >= *(v16 + 16))
      {
        break;
      }

      v17 = v19 + 1;

      sub_10021E488(v20, &v30);
      v21 = v31;
      v19 = v17;
      if (v31)
      {
        v29 = a4;
        v22 = v30;
        v23 = v32;
        v24 = v33;
        v28 = v34;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100243A68(0, *(v15 + 2) + 1, 1, v15);
        }

        v26 = *(v15 + 2);
        v25 = *(v15 + 3);
        if (v26 >= v25 >> 1)
        {
          v15 = sub_100243A68((v25 > 1), v26 + 1, 1, v15);
        }

        *(v15 + 2) = v26 + 1;
        v27 = &v15[40 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v21;
        *(v27 + 6) = v23;
        *(v27 + 7) = v24;
        v27[64] = v28 & 1;
        a4 = v29;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    *a4 = v15;
  }
}

void sub_10021DD50(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v5;
  *(v6 + 32) = a2;
  v9[4] = sub_10021E244;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F038;
  v9[3] = &unk_1004E5E68;
  v7 = _Block_copy(v9);

  v8 = v5;

  [v8 performBlockAndWaitWithSave:v7];
  _Block_release(v7);
  sub_10021D404();
}

uint64_t sub_10021DE90(uint64_t result, void *a2, char a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 40;
    do
    {

      v7 = String._bridgeToObjectiveC()();
      v8 = [a2 podcastForUuid:v7];

      if (v8)
      {
        [v8 setNotifications:a3 & 1];
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

char *sub_10021DF58()
{
  v1 = [*(v0 + 40) groupSettings];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  sub_10021E1F8();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_19:

    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    result = sub_1001A7364(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v6 = 0;
    v17 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      result = [v8 identifier];
      if (!result)
      {
        goto LABEL_22;
      }

      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1001A7364((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      ++v6;
      if (v7 == v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10021E114()
{
  swift_unknownObjectRelease();
}

uint64_t sub_10021E144()
{

  sub_100009104(v0 + 48, &qword_100576010);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10021E1F8()
{
  result = qword_1005747E0;
  if (!qword_1005747E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005747E0);
  }

  return result;
}

void *sub_10021E250(void *a1, uint64_t a2, id a3)
{
  v14 = 0;
  v5 = [a3 mainOrPrivateContext];
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001D2994;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004E5EE0;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  [v9 performBlockAndWait:v8];
  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v12 = v14;
    if (v14)
    {
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    return v12;
  }

  return result;
}

uint64_t sub_10021E418(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100576010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021E488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_12:

    v10 = 0;
    v9 = 0;
    v17 = 0;
    v16 = 0;
    v24 = 0;
    goto LABEL_13;
  }

  v6 = sub_10000F9A8(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10001B944(*(a1 + 56) + 32 * v6, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = v25;
  v9 = v26;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_15:

    goto LABEL_12;
  }

  v13 = sub_10000F9A8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_10001B944(*(a1 + 56) + 32 * v13, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v25;
  v16 = v26;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    goto LABEL_17;
  }

  v20 = sub_10000F9A8(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_17:

    goto LABEL_15;
  }

  sub_10001B944(*(a1 + 56) + 32 * v20, v27);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v24 = v25;
LABEL_13:
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v24;
  return result;
}

__n128 sub_10021E6A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10021E6B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10021E6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10021E760(uint64_t a1, uint64_t a2, int a3, char a4, int a5)
{
  v46 = a3;
  v10 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = dispatch thunk of LegacyLockup.playAction.getter();
  if (!v22)
  {
    return 0;
  }

  v40 = v22;
  v42 = a5;
  v43 = v5;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v45 = aBlock[0];
  sub_100168088(&unk_100578420);
  BaseObjectGraph.inject<A>(_:)();
  sub_100168088(&unk_10057A4A0);
  BaseObjectGraph.inject<A>(_:)();
  v23 = a1;
  LibraryEpisodeLockup.uuid.getter();
  EpisodeStateController.stateMachine(for:)();

  dispatch thunk of EpisodeStateMachine.currentState.getter();

  LegacyLockup.title.getter();
  v25 = v24;
  v41 = v21;
  sub_1001A433C(v48, a2, a4 & 1);
  v44 = v23;
  v26 = sub_10021EE80();
  if (v25)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = String._bridgeToObjectiveC()();

  v28 = [v29 initWithText:v27 detailText:v30 image:0 accessoryImage:v26 accessoryType:0];

  if (v46)
  {
    LegacyLockup.artwork.getter();
    CarPlayPageLoadCoordinator.loadImage(for:into:)(v18, v28);
    sub_10021F030(v18);
  }

  v31 = v41;
  v32 = sub_1001A44D0();
  if ((v33 & 1) == 0)
  {
    [v28 setPlaybackProgress:*&v32];
  }

  *(v12 + 3) = type metadata accessor for Action();
  *(v12 + 4) = sub_100036A24();
  *v12 = v40;
  v12[40] = 0;
  v34 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v35 = *(*(v34 - 8) + 56);
  v35(v12, 0, 1, v34);
  v35(v15, 1, 1, v34);
  v36 = type metadata accessor for CarPlayTemplateInfo(0);
  v37 = *(v36 + 20);

  sub_1001FBB44(v12, v15);
  v15[v37] = v42;
  (*(*(v36 - 8) + 56))(v15, 0, 1, v36);
  sub_1001D2AD4(v15);
  aBlock[4] = sub_10021F098;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  aBlock[3] = &unk_1004E6008;
  v38 = _Block_copy(aBlock);

  [v28 setHandler:v38];
  _Block_release(v38);

  sub_10021F0A0(v31);
  sub_100004590(v48);
  return v28;
}

uint64_t sub_10021EC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_10023EE80(0, 0, v10, &unk_1004058B0, v13);
}

void sub_10021EDD0()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:-1 scale:16.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  qword_100578400 = v2;
}

uint64_t sub_10021EE80()
{
  v0 = type metadata accessor for EpisodeDownloadState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100573D90);
  BaseObjectGraph.inject<A>(_:)();
  LibraryEpisodeLockup.uuid.getter();
  EpisodeStateController.stateMachine(for:)();

  dispatch thunk of EpisodeStateMachine.currentState.getter();
  if (EpisodeDownloadState.isDownloadedEpisode.getter())
  {
    if (qword_100572798 != -1)
    {
      swift_once();
    }

    v4 = qword_100578400;
    v5 = qword_100578400;

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    (*(v1 + 8))(v3, v0);

    return 0;
  }

  return v4;
}

uint64_t sub_10021F030(uint64_t a1)
{
  v2 = sub_100168088(&unk_100578C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021F0A0(uint64_t a1)
{
  v2 = type metadata accessor for EpisodePlayState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021F0FC(uint64_t a1)
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

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

void sub_10021F1D0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v25 = v6;
  v26 = v4;
  v27 = v5;
  v10 = *(Strong + 64);
  v11 = *(Strong + 24);
  v28 = *(Strong + 32);
  v29 = *(Strong + 40);
  v12 = *(Strong + 48);
  v13 = *(Strong + 56);
  sub_1001D871C(v11, v28, v29, v12, v13, v10);

  if (v10 <= 1)
  {
    v14 = 4;
    if (!v10)
    {
      v14 = v10;
    }

    goto LABEL_5;
  }

  if (v10 != 2)
  {
LABEL_14:
    sub_100370B38();
    return;
  }

  if (v29 | v28 | v11 | v12 | v13)
  {
    v15 = v29 | v28 | v12 | v13;
    if (v11 != 1 || v15)
    {
      if (v15)
      {
        v20 = 0;
      }

      else
      {
        v20 = v11 == 2;
      }

      v14 = 5;
      if (!v20)
      {
        v14 = 6;
      }
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_5:
  if (!v8)
  {
    if (!v14)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_10021FDD4(a2);
        sub_1001D8688(v11, v28, v29, v12, v13, v10);

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v8 != 1)
  {
    if (v25 | v26 | v3 | v27 | v7)
    {
      v16 = v25 | v26 | v27 | v7;
      if (v3 != 1 || v16)
      {
        if (v16)
        {
          v21 = 0;
        }

        else
        {
          v21 = v3 == 2;
        }

        v22 = 5;
        if (!v21)
        {
          v22 = 6;
        }

        if (v14 != v22)
        {
          goto LABEL_38;
        }
      }

      else if (v14 != 3)
      {
        goto LABEL_38;
      }

      goto LABEL_25;
    }

    if (v14 == 2)
    {
      goto LABEL_25;
    }

LABEL_38:
    _StringGuts.grow(_:)(76);
    v23._object = 0x800000010046A130;
    v23._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v23);
    _print_unlocked<A, B>(_:_:)();
    v24._countAndFlagsBits = 0xD000000000000028;
    v24._object = 0x800000010046A160;
    String.append(_:)(v24);
    _print_unlocked<A, B>(_:_:)();
    sub_100370B38();

    v17 = v11;
    v18 = v28;
    v19 = v29;
    goto LABEL_39;
  }

  if (v14 != 4)
  {
    goto LABEL_38;
  }

LABEL_25:
  v17 = v11;
  v18 = v28;
  v19 = v29;
LABEL_39:
  sub_1001D8688(v17, v18, v19, v12, v13, v10);
}

uint64_t sub_10021F4DC(_OWORD *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10002BD04();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v13 = a1[1];
  *(v12 + 24) = *a1;
  *(v12 + 16) = v11;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(a1 + 25);
  aBlock[4] = sub_100220524;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E6140;
  v14 = _Block_copy(aBlock);
  sub_1001D79C8(a1, v16);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_10021F7A4(uint64_t a1, uint64_t a2)
{
  v39 = *(a2 + 16);
  v40 = *a2;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 32);
    v8 = *(Strong + 40);
    v9 = *(Strong + 48);
    v10 = *(Strong + 56);
    v11 = *(Strong + 64);
    v38 = *(Strong + 24);
    sub_1001D871C(v38, v7, v8, v9, v10, v11);

    if (v11 != 255)
    {
      sub_1001D8688(v38, v7, v8, v9, v10, v11);
      sub_100370B38();
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {
    v20 = *(&v40 + 1);
    v19 = v40;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10021FDD4(a2);
    }

    return;
  }

  v13 = *(v12 + 24);
  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  v16 = *(v12 + 48);
  v17 = *(v12 + 56);
  *(v12 + 24) = v40;
  *(v12 + 40) = v39;
  *(v12 + 56) = v4;
  v18 = *(v12 + 64);
  *(v12 + 64) = v5;
  sub_1001D79C8(a2, &aBlock);
  sub_1001D8688(v13, v14, v15, v16, v17, v18);

  v19 = *a2;
  v20 = *(a2 + 8);
  v5 = *(a2 + 40);
  if (!*(a2 + 40))
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v5 != 1)
  {
    v25 = *(a2 + 24);
    v24 = *(a2 + 32);
    v26 = *(a2 + 16);
    if (v20 | v19 | v24 | v25 | v26)
    {
      v27 = v24 | v20 | v25 | v26;
      if (v19 != 1 || v27)
      {
        if (v19 != 2 || v27)
        {
          swift_beginAccess();
          v35 = swift_weakLoadStrong();
          if (!v35)
          {
            return;
          }

          v36 = *(v35 + 16);
          swift_unknownObjectRetain();

          if (!v36)
          {
            return;
          }

          v45 = sub_10022054C;
          v46 = a1;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_10000F038;
          v44 = &unk_1004E6168;
          v30 = _Block_copy(&aBlock);

          [v36 showSubscriptionRequired:v30];
        }

        else
        {
          swift_beginAccess();
          v33 = swift_weakLoadStrong();
          if (!v33)
          {
            return;
          }

          v34 = *(v33 + 16);
          swift_unknownObjectRetain();

          if (!v34)
          {
            return;
          }

          v45 = sub_10022054C;
          v46 = a1;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_10000F038;
          v44 = &unk_1004E6190;
          v30 = _Block_copy(&aBlock);

          [v34 showEpisodeRestricted:v30];
        }
      }

      else
      {
        swift_beginAccess();
        v28 = swift_weakLoadStrong();
        if (!v28)
        {
          return;
        }

        v29 = *(v28 + 16);
        swift_unknownObjectRetain();

        if (!v29)
        {
          return;
        }

        v45 = sub_10022054C;
        v46 = a1;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_10000F038;
        v44 = &unk_1004E61E0;
        v30 = _Block_copy(&aBlock);

        [v29 showGenericAlert:v30];
      }
    }

    else
    {
      swift_beginAccess();
      v31 = swift_weakLoadStrong();
      if (!v31)
      {
        return;
      }

      v32 = *(v31 + 16);
      swift_unknownObjectRetain();

      if (!v32)
      {
        return;
      }

      v45 = sub_10022054C;
      v46 = a1;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10000F038;
      v44 = &unk_1004E6208;
      v30 = _Block_copy(&aBlock);

      [v32 showNoInternet:v30];
    }

    swift_unknownObjectRelease();
    _Block_release(v30);
    return;
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = *(v21 + 16);
    swift_unknownObjectRetain();

    if (v22)
    {
      if (v20)
      {
        v23 = String._bridgeToObjectiveC()();
      }

      else
      {
        v23 = 0;
      }

      v45 = sub_10022054C;
      v46 = a1;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10000F038;
      v44 = &unk_1004E61B8;
      v37 = _Block_copy(&aBlock);

      [v22 showEpisodeFeedDeleted:v23 onDismiss:v37];
      swift_unknownObjectRelease();
      _Block_release(v37);
    }
  }
}

void sub_10021FDD4(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    object = *(a1 + 8);
    v2 = *(a1 + 16);
    v37 = *(a1 + 24);
    v38 = *a1;
    v36 = *(a1 + 32);
    v3 = objc_opt_self();

    v4 = [v3 mainBundle];
    v5._countAndFlagsBits = 0xD000000000000015;
    v47._object = 0xE000000000000000;
    v5._object = 0x800000010046A0A0;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v47);

    sub_100168088(&unk_100574670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100400790;
    v8 = *(v2 + 16);
    *(v7 + 56) = &type metadata for Int;
    *(v7 + 64) = &protocol witness table for Int;
    *(v7 + 32) = v8;
    static String.localizedStringWithFormat(_:_:)();

    v9 = *(v2 + 16);
    v10 = [v3 mainBundle];
    if (v9 < 2)
    {
      v20._countAndFlagsBits = 0xD000000000000017;
      v50._object = 0xE000000000000000;
      v20._object = 0x800000010046A0C0;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v50._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v10, v21, v50);

      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100400790;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = sub_100022C18();
      countAndFlagsBits = v38;
      if (!object)
      {
        v24 = [v3 mainBundle];
        v51._object = 0xE000000000000000;
        v25._object = 0x800000010046A0E0;
        v25._countAndFlagsBits = 0xD000000000000028;
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        v51._countAndFlagsBits = 0;
        v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v51);
        countAndFlagsBits = v27._countAndFlagsBits;
        object = v27._object;
      }

      *(v22 + 32) = countAndFlagsBits;
      *(v22 + 40) = object;
    }

    else
    {
      v11._countAndFlagsBits = 0xD00000000000001ELL;
      v48._object = 0xE000000000000000;
      v11._object = 0x800000010046A110;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v48._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v48);

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004007C0;
      v14 = *(v2 + 16) - 1;
      *(v13 + 56) = &type metadata for Int;
      *(v13 + 64) = &protocol witness table for Int;
      *(v13 + 32) = v14;
      *(v13 + 96) = &type metadata for String;
      *(v13 + 104) = sub_100022C18();
      v15 = v38;
      if (!object)
      {
        v16 = [v3 mainBundle];
        v49._object = 0xE000000000000000;
        v17._object = 0x800000010046A0E0;
        v17._countAndFlagsBits = 0xD000000000000028;
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        v49._countAndFlagsBits = 0;
        v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v49);
        v15 = v19._countAndFlagsBits;
        object = v19._object;
      }

      *(v13 + 72) = v15;
      *(v13 + 80) = object;
    }

    static String.localizedStringWithFormat(_:_:)();

    v28 = *(v39 + 16);
    if (v28)
    {
      swift_unknownObjectRetain();
      v29 = String._bridgeToObjectiveC()();

      v30 = String._bridgeToObjectiveC()();

      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      v32[2] = v37;
      v32[3] = v36;
      v32[4] = v2;
      v32[5] = v31;
      v44 = sub_1002204FC;
      v45 = v32;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_10000F038;
      v43 = &unk_1004E60C8;
      v33 = _Block_copy(&aBlock);
      sub_100013CB4(v37);

      v34 = swift_allocObject();
      swift_weakInit();
      v44 = sub_100220508;
      v45 = v34;
      aBlock = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_10000F038;
      v43 = &unk_1004E60F0;
      v35 = _Block_copy(&aBlock);

      [v28 showOrUpdateNetworkErrorAlert:v29 body:v30 onRetry:v33 onDismiss:v35];
      swift_unknownObjectRelease();
      _Block_release(v35);
      _Block_release(v33);
    }

    else
    {
    }
  }
}

uint64_t sub_100220390(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1(a3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 24);
    v4 = *(result + 32);
    v6 = *(result + 40);
    v7 = *(result + 48);
    v8 = *(result + 56);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    v9 = *(result + 64);
    *(result + 64) = -1;
    sub_1001D8688(v5, v4, v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_10022042C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 24);
    v1 = *(result + 32);
    v3 = *(result + 40);
    v4 = *(result + 48);
    v5 = *(result + 56);
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    v6 = *(result + 64);
    *(result + 64) = -1;
    sub_1001D8688(v2, v1, v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_1002204B0()
{
  swift_unknownObjectRelease();
  sub_1001D8688(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

id NonFollowedShowsSyncProcessor.init()()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(type metadata accessor for NonFollowedShowsSyncStorage()) init];
  v9 = [objc_allocWithZone(type metadata accessor for CloudSyncBugReporter()) init];
  v10 = objc_allocWithZone(type metadata accessor for NonFollowedShowsSyncProcessor());
  v11 = sub_1002249AC(v8, v9, v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v12 = v11;
  static OSSignposter.cloudSync.getter();
  (*(v1 + 16))(v3, v12 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostID, v0);
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v22 = v5;
    v16 = v0;
    v17 = v4;
    v18 = v15;
    *v15 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v19, "NonFollowedShowsSyncProcessor.created", "", v18, 2u);
    v4 = v17;
    v0 = v16;
    v5 = v22;
  }

  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t type metadata accessor for NonFollowedShowsSyncProcessor()
{
  result = qword_100578578;
  if (!qword_100578578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id NonFollowedShowsSyncProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NonFollowedShowsSyncProcessor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Bool __swiftcall NonFollowedShowsSyncProcessor.hasLocalChanges()()
{
  v1 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  sub_1000044A0(v5, v6);
  LOBYTE(v2) = (*(v3 + 112))(v2, v3);
  sub_100004590(v5);
  return v2 & 1;
}

Swift::String_optional __swiftcall NonFollowedShowsSyncProcessor.version(forGetTransaction:key:)(MZKeyValueStoreTransaction *forGetTransaction, Swift::String key)
{
  v2 = sub_100224B14(key._countAndFlagsBits, key._object);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

void sub_100220C94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v74 = &v68 - v14;
  v15 = sub_100168088(&qword_100578588);
  __chkstk_darwin(v15 - 8);
  v73 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v84 = &v68 - v18;
  v19 = type metadata accessor for RemoteNonFollowedShow();
  v76 = *(v19 - 8);
  __chkstk_darwin(v19);
  v83 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v75 = &v68 - v22;
  v23 = [objc_allocWithZone(MZKeyValueStoreNode) init];
  v24 = a2;
  v25 = v23;
  isa = 0;
  if (v24 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v25 setValue:isa];

  if ([v25 hasData])
  {
    v27 = [v25 arrayValue];
    if (v27 && (v28 = v27, v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v28, v30 = sub_10037FDD4(v29), , v30))
    {
      v32 = v30;
    }

    else
    {

      v32 = _swiftEmptyArrayStorage;
    }

    v68 = a3;
    v69 = a4;
    v70 = v5;
    v71 = v25;
    v82 = v32[2];
    if (v82)
    {
      v48 = v10;
      v49 = 0;
      v80 = v32 + 4;
      v86 = (v76 + 56);
      v77 = v48 + 8;
      v79 = (v76 + 48);
      v78 = (v76 + 32);
      *&v31 = 136380675;
      v72 = v31;
      v85 = _swiftEmptyArrayStorage;
      v50 = v73;
      v81 = v32;
      while (v49 < v32[2])
      {

        RemoteNonFollowedShow.init(dictionary:)();
        (*v86)(v50, 0, 1, v19);
        v51 = v84;
        sub_100226188(v50, v84);
        if ((*v79)(v51, 1, v19) == 1)
        {
          sub_100226120(v51);
        }

        else
        {
          v52 = *v78;
          v53 = v75;
          (*v78)(v75, v51, v19);
          v52(v83, v53, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_100243B84(0, *(v85 + 2) + 1, 1, v85);
          }

          v55 = *(v85 + 2);
          v54 = *(v85 + 3);
          if (v55 >= v54 >> 1)
          {
            v85 = sub_100243B84(v54 > 1, v55 + 1, 1, v85);
          }

          v56 = v85;
          *(v85 + 2) = v55 + 1;
          v52(&v56[((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v55], v83, v19);
        }

        ++v49;
        v32 = v81;
        if (v82 == v49)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v85 = _swiftEmptyArrayStorage;
LABEL_23:

      v57 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
      v58 = v70;
      swift_beginAccess();
      sub_100004428(v58 + v57, aBlock);
      v59 = v88;
      v60 = v89;
      sub_1000044A0(aBlock, v88);
      v61 = (*(v60 + 1))(v59, v60);
      sub_100004590(aBlock);
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v64 = v85;
      v63[2] = v62;
      v63[3] = v64;
      v65 = v68;
      v63[4] = v61;
      v63[5] = v65;
      v63[6] = v69;
      v89 = sub_1002261F8;
      v90 = v63;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      v88 = &unk_1004E62F8;
      v66 = _Block_copy(aBlock);

      v67 = v61;

      [v67 performBlockAndWaitWithSave:v66];
      _Block_release(v66);
    }
  }

  else
  {
    static Logger.cloudSync.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = Logger.logObject.getter();
    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v86 = v9;
      v36 = v35;
      v37 = swift_slowAlloc();
      v93 = v37;
      *v36 = 136315138;
      v38 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
      swift_beginAccess();
      sub_100004428(v5 + v38, aBlock);
      v39 = v10;
      v40 = v88;
      v41 = v89;
      sub_1000044A0(aBlock, v88);
      v42 = (*(v41 + 8))(v40, v41);
      v44 = v43;
      sub_100004590(aBlock);
      v91 = v42;
      v92 = v44;
      sub_100168088(&qword_100574230);
      v45 = String.init<A>(describing:)();
      v47 = sub_1000153E0(v45, v46, &v93);

      *(v36 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v34, v33, "[NonFollowedShows] Empty remote Implicit Follows key for current version %s. Nothing to merge.", v36, 0xCu);
      sub_100004590(v37);

      (*(v39 + 8))(v12, v86);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_100221660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v28 = a4;
  v29 = a1;
  v30 = a2;
  v6 = type metadata accessor for OSSignpostError();
  v26 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = type metadata accessor for OSSignpostID();
  v9 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for OSSignposter();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v4 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState))
  {
    v24 = a3;
    v25 = v4;

    static OSSignposter.cloudSync.getter();
    v16 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v23 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v17 = v26;
      if ((*(v26 + 88))(v8, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v17 + 8))(v8, v6);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v23, v20, "NonFollowedShowsSyncProcessor.finish", v18, v19, 2u);
    }

    (*(v9 + 8))(v11, v27);
    (*(v13 + 8))(v15, v12);
    a3 = v24;
  }

  result = sub_100224610(v29, v30);
  if (a3)
  {
    return a3(0);
  }

  return result;
}

void sub_100221CFC(void (*a1)(void, __n128), uint64_t a2)
{
  v25 = a2;
  v4 = type metadata accessor for OSSignpostError();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for OSSignpostID();
  v7 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignposter();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_signpostState))
  {
    v22 = a1;

    static OSSignposter.cloudSync.getter();
    v15 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v21 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {

      checkForErrorAndConsumeState(state:)();

      v16 = v23;
      if ((*(v23 + 88))(v6, v4) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v16 + 8))(v6, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v21, v19, "NonFollowedShowsSyncProcessor.reschedule", v17, v18, 2u);
    }

    (*(v7 + 8))(v9, v24);
    (*(v11 + 8))(v14, v10);
    a1 = v22;
  }

  if (a1)
  {
    a1(1, v12);
  }
}

Swift::Void __swiftcall NonFollowedShowsSyncProcessor.transaction(_:didProcessResponseWithDomainVersion:)(MZKeyValueStoreTransaction *_, Swift::String_optional didProcessResponseWithDomainVersion)
{
  object = didProcessResponseWithDomainVersion.value._object;
  countAndFlagsBits = didProcessResponseWithDomainVersion.value._countAndFlagsBits;
  v5 = v2 + OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  sub_100010C38(v5, v6);
  v8 = *(v7 + 96);

  v8(countAndFlagsBits, object, v6, v7);
  swift_endAccess();
}

uint64_t sub_10022233C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v66 = a5;
  v67 = v14;
  v70 = v9;
  static Logger.cloudSync.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = Logger.logObject.getter();
  v22 = os_log_type_enabled(v21, v20);
  v68 = v10;
  v65 = a4;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v74[0] = v24;
    *v23 = 136380675;
    type metadata accessor for RemoteNonFollowedShow();
    v25 = Array.description.getter();
    v64 = a3;
    v27 = sub_1000153E0(v25, v26, v74);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v20, "[NonFollowedShows] Inserting or updating Implicit Follows for remote list %{private}s.", v23, 0xCu);
    sub_100004590(v24);

    v28 = v10;
    a3 = v64;
  }

  else
  {

    v28 = v10;
  }

  v29 = *(v28 + 8);
  v30 = v70;
  v29(v17, v70);
  v31 = a2;
  v32 = v19;
  sub_100222940(v31, a3);
  v34 = v33;
  v35 = a3;
  v36 = OBJC_IVAR____TtC8Podcasts29NonFollowedShowsSyncProcessor_nonFollowedShowsSyncStorage;
  swift_beginAccess();
  sub_100004428(v19 + v36, v74);
  v37 = v75;
  v38 = v76;
  sub_1000044A0(v74, v75);
  v39 = (*(v38 + 128))(v34, v35, v37, v38);
  sub_100004590(v74);
  if (v39)
  {
    if (v39 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v40 = *(v34 + 16);

        v41 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_9;
      }
    }

    else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v34 + 16);

      v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
      sub_100224018(v40, v41, v65, v66);
      v42 = v67;
      static Logger.cloudSync.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = Logger.logObject.getter();
      if (os_log_type_enabled(v44, v43))
      {
        v45 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v73 = v69;
        *v45 = 136315395;
        sub_100004428(v32 + v36, v74);
        v46 = v75;
        v47 = v76;
        sub_1000044A0(v74, v75);
        v48 = (*(v47 + 40))(v46, v47);
        v50 = v49;
        sub_100004590(v74);
        v71 = v48;
        v72 = v50 & 1;
        sub_100168088(&unk_10057E2F0);
        v51 = String.init<A>(describing:)();
        v53 = sub_1000153E0(v51, v52, &v73);

        *(v45 + 4) = v53;
        *(v45 + 12) = 2081;
        sub_100226208();
        v54 = Array.description.getter();
        v56 = sub_1000153E0(v54, v55, &v73);

        *(v45 + 14) = v56;
        _os_log_impl(&_mh_execute_header, v44, v43, "[NonFollowedShows] Removing Implicit Follows only local and before timestamp %s: %{private}s.", v45, 0x16u);
        swift_arrayDestroy();

        v57 = v67;
      }

      else
      {

        v57 = v42;
      }

      v29(v57, v70);
      sub_100004428(v32 + v36, v74);
      v58 = v75;
      v59 = v76;
      sub_1000044A0(v74, v75);
      (*(v59 + 152))(v39, v58, v59);

      return sub_100004590(v74);
    }
  }

  v60 = v69;
  static Logger.cloudSync.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = Logger.logObject.getter();
  if (os_log_type_enabled(v62, v61))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v62, v61, "[NonFollowedShows] We didn't find any local Implicit Follow which is not present in cloud and which is older than last sync date. We are done.", v63, 2u);
  }

  else
  {
  }

  return (v29)(v60, v30);
}