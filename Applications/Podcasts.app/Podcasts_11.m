void sub_1001F1B38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_100009F1C(0, &qword_10057A130);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  (*(a2 + 16))(a2);
}

uint64_t sub_1001F1C2C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequest.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v14 - v7;
  v9 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  (*(v3 + 104))(v5, enum case for MediaRequest.ContentType.podcastEpisode(_:), v2);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14[3] == v14[1] && v14[4] == v14[2])
  {
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);

  if (v11)
  {
  }

  return 0;
}

uint64_t sub_1001F1F0C()
{
  v1 = v0;
  v2 = type metadata accessor for MediaRequest.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
  swift_beginAccess();
  (*(v3 + 16))(v8, v1 + v9, v2);
  (*(v3 + 104))(v5, enum case for MediaRequest.ContentType.podcast(_:), v2);
  sub_1001F6DC8(&qword_100576A00, &type metadata accessor for MediaRequest.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v16[3] == v16[1] && v16[4] == v16[2])
  {
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = *(v3 + 8);
    v12(v5, v2);
    v12(v8, v2);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(v1 + OBJC_IVAR___MTNetworkMediaManifest_initialIds);
  if (v13 && *(v13 + 16))
  {
    v14 = *(v13 + 32);

    return v14;
  }

  return 0;
}

void sub_1001F2190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    static String.Encoding.utf8.getter();
    v8 = String.data(using:allowLossyConversion:)();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    if (v10 >> 60 != 15)
    {
      v11 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      v26[0] = 0;
      v13 = [v11 JSONObjectWithData:isa options:0 error:v26];

      if (v13)
      {
        v14 = v26[0];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100168088(&qword_1005769E0);
        if (swift_dynamicCast())
        {
          type metadata accessor for MediaRequestResponseParser();
          type metadata accessor for ServerPodcastStation();
          sub_1001F6DC8(&qword_1005769F8, &type metadata accessor for ServerPodcastStation);
          v15 = static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)();

          if (v15)
          {
            if (v15 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_8;
              }
            }

            else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_8:
              if ((v15 & 0xC000000000000001) != 0)
              {
                v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                }

                v16 = *(v15 + 32);
              }

              v17 = v16;

              v18 = v17;
              sub_1001F5C7C(v18);

              sub_100009F1C(0, &qword_10057A130);
              v19 = Array._bridgeToObjectiveC()().super.isa;

              [v2 setItems:v19];

              v20 = _MTLogCategoryPlayback();
              if (!v20)
              {
                __break(1u);
                return;
              }

              v21 = v20;

              v25[3] = static os_log_type_t.default.getter();
              sub_100168088(&unk_100574670);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_100400790;
              v23 = sub_1001F564C();
              *(v22 + 56) = sub_100168088(&qword_100573BD8);
              *(v22 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8);
              *(v22 + 32) = v23;
              os_log(_:dso:log:type:_:)();

              goto LABEL_14;
            }
          }

          sub_1001F6D60(v8, v10);

          return;
        }
      }

      else
      {
        v24 = v26[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

LABEL_14:
      sub_1001F6D60(v8, v10);
    }
  }
}

void *sub_1001F260C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  static String.Encoding.utf8.getter();
  v8 = String.data(using:allowLossyConversion:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34[0] = 0;
  v13 = [v11 JSONObjectWithData:isa options:0 error:v34];

  if (!v13)
  {
    v28 = v34[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return sub_1001F6D60(v8, v10);
  }

  v14 = v34[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100168088(&qword_1005769E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for MediaRequestResponseParser();
  v15 = static MediaRequestResponseParser.parsePodcastEpisodeResponse(_:)();
  v16 = v15;
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_17:
    sub_1001F6D60(v8, v10);

    return _swiftEmptyArrayStorage;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_7:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v18 podcast:0];
  if (!v19)
  {

LABEL_15:
    sub_1001F6D60(v8, v10);
    return _swiftEmptyArrayStorage;
  }

  v20 = v19;
  v33 = v18;
  v32 = sub_100168088(&unk_100574680);
  v21 = swift_allocObject();
  v31 = xmmword_1004007B0;
  *(v21 + 16) = xmmword_1004007B0;
  *(v21 + 32) = v20;
  sub_100009F1C(0, &qword_10057A130);
  v30 = v20;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setItems:v22];

  result = _MTLogCategoryPlayback();
  if (result)
  {
    v24 = result;

    static os_log_type_t.default.getter();
    sub_100168088(&unk_100574670);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100400790;
    v26 = sub_1001F564C();
    *(v25 + 56) = sub_100168088(&qword_100573BD8);
    *(v25 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8);
    *(v25 + 32) = v26;
    os_log(_:dso:log:type:_:)();

    v27 = swift_allocObject();
    *(v27 + 16) = v31;
    *(v27 + 32) = v33;

    sub_1001F6D60(v8, v10);
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001F2BCC(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for PriceType();
  v84 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100168088(&qword_1005769D0);
  __chkstk_darwin(v87);
  v88 = &v66 - v5;
  v6 = sub_100168088(&qword_1005769D8);
  __chkstk_darwin(v6 - 8);
  v86 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  __chkstk_darwin(v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for String.Encoding();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return;
  }

  static String.Encoding.utf8.getter();
  v18 = String.data(using:allowLossyConversion:)();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  if (v20 >> 60 == 15)
  {
    return;
  }

  v21 = objc_opt_self();
  v22 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v91[0] = 0;
  v24 = [v21 JSONObjectWithData:isa options:0 error:v91];

  v25 = v18;
  if (!v24)
  {
    v43 = v91[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_1001F6D60(v18, v22);
    return;
  }

  v26 = v91[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100168088(&qword_1005769E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = v18;
LABEL_25:
    sub_1001F6D60(v42, v22);
    return;
  }

  v83 = v2;
  v27 = v90;
  type metadata accessor for MediaRequestResponseParser();
  type metadata accessor for ServerPodcast();
  sub_1001F6DC8(&qword_1005769E8, &type metadata accessor for ServerPodcast);
  v28 = static MediaRequestResponseParser.parseContainerResponse<A>(containerType:_:)();

  if (!v28)
  {
LABEL_48:
    sub_1001F6D60(v25, v22);

    return;
  }

  if (!(v28 >> 62))
  {
    v29 = v83;
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

  v65 = _CocoaArrayWrapper.endIndex.getter();
  v29 = v83;
  if (!v65)
  {
LABEL_47:

    goto LABEL_48;
  }

LABEL_8:
  v82 = v25;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v30 = *(v28 + 32);
  }

  v31 = v30;

  v32 = v31;
  sub_1001F5E0C(v32);

  sub_100009F1C(0, &qword_10057A130);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setItems:v33];

  v25 = v32;
  if (!ServerPodcastBase.relationships.getter() || (v34 = PodcastRelationships.channel.getter(), , !v34))
  {
LABEL_20:

    goto LABEL_21;
  }

  v29 = PodcastChannelRelationshipContainer.data.getter();

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_53:

    goto LABEL_21;
  }

LABEL_52:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_53;
  }

LABEL_15:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v35 = *(v29 + 32);
  }

  v36 = v35;

  ServerChannel.attributes.getter();

  v37 = ChannelAttributes.isSubscribed.getter();

  if (v37 == 2 || (v37 & 1) != 0)
  {
    goto LABEL_20;
  }

  v44 = ServerPodcastBase.attributes.getter();

  if (!v44)
  {
    goto LABEL_21;
  }

  v45 = PodcastAttributes.offers.getter();
  v46 = v83;
  v47 = v45;

  if (!v47)
  {
    goto LABEL_21;
  }

  v48 = v47 & 0xFFFFFFFFFFFFFF8;
  v71 = v47 & 0xFFFFFFFFFFFFFF8;
  if (v47 >> 62)
  {
    v49 = _CocoaArrayWrapper.endIndex.getter();
    v48 = v71;
    if (v49)
    {
      goto LABEL_30;
    }

LABEL_59:
    v64 = 1;
    goto LABEL_60;
  }

  v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v49)
  {
    goto LABEL_59;
  }

LABEL_30:
  v50 = 0;
  v79 = v47 & 0xC000000000000001;
  v75 = (v84 + 104);
  v74 = enum case for PriceType.psub(_:);
  v73 = (v84 + 56);
  v72 = (v84 + 48);
  v67 = (v84 + 32);
  v68 = (v84 + 8);
  v77 = v25;
  v78 = v27;
  v76 = v47;
  v70 = v49;
  while (1)
  {
    if (v79)
    {
      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v50 >= *(v48 + 16))
      {
        goto LABEL_57;
      }
    }

    v80 = v50 + 1;
    v81 = v50;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_56;
    }

    v54 = v53;
    dispatch thunk of PodcastShowOffer.typeResolved.getter();
    v55 = v89;
    (*v75)(v10, v74, v89);
    (*v73)(v10, 0, 1, v55);
    v56 = v88;
    v57 = *(v87 + 48);
    sub_100010430(v13, v88, &qword_1005769D8);
    v84 = v57;
    v58 = v56 + v57;
    v59 = v55;
    sub_100010430(v10, v58, &qword_1005769D8);
    v60 = *v72;
    if ((*v72)(v56, 1, v55) == 1)
    {

      sub_100009104(v10, &qword_1005769D8);
      sub_100009104(v13, &qword_1005769D8);
      v51 = v60(v56 + v84, 1, v55) == 1;
      v52 = v56;
      if (!v51)
      {
        goto LABEL_45;
      }

      sub_100009104(v56, &qword_1005769D8);
      v46 = v83;
      v25 = v77;
      goto LABEL_34;
    }

    v69 = v54;
    v61 = v86;
    sub_100010430(v56, v86, &qword_1005769D8);
    if (v60(v56 + v84, 1, v55) == 1)
    {
      break;
    }

    v62 = v85;
    (*v67)(v85, v56 + v84, v55);
    sub_1001F6DC8(&qword_1005769F0, &type metadata accessor for PriceType);
    LODWORD(v84) = dispatch thunk of static Equatable.== infix(_:_:)();

    v63 = *v68;
    (*v68)(v62, v59);
    sub_100009104(v10, &qword_1005769D8);
    sub_100009104(v13, &qword_1005769D8);
    v63(v86, v59);
    sub_100009104(v56, &qword_1005769D8);
    v46 = v83;
    v25 = v77;
    if ((v84 & 1) == 0)
    {
      v64 = 0;
      goto LABEL_60;
    }

LABEL_34:
    v50 = v81 + 1;
    v48 = v71;
    if (v80 == v70)
    {
      goto LABEL_59;
    }
  }

  sub_100009104(v10, &qword_1005769D8);
  sub_100009104(v13, &qword_1005769D8);
  (*v68)(v61, v55);
  v52 = v56;
LABEL_45:
  sub_100009104(v52, &qword_1005769D0);
  v64 = 0;
  v46 = v83;
  v25 = v77;
LABEL_60:

  *(v46 + OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription) = v64;
LABEL_21:
  v38 = _MTLogCategoryPlayback();
  if (v38)
  {
    v39 = v38;

    static os_log_type_t.default.getter();
    sub_100168088(&unk_100574670);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100400790;
    v41 = sub_1001F564C();
    *(v40 + 56) = sub_100168088(&qword_100573BD8);
    *(v40 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8);
    *(v40 + 32) = v41;
    os_log(_:dso:log:type:_:)();

    v42 = v82;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1001F3784(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a1;
  a5(v7, v9);

  return 1;
}

void sub_1001F392C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers;
    swift_beginAccess();
    v10 = *&v8[v9];
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 40;
      do
      {
        v13 = *(v12 - 8);
        if (v13)
        {

          v13(v14);
          sub_1000112B4(v13);
        }

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    *&v8[v9] = _swiftEmptyArrayStorage;

    v8[OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress] = 0;
    if (a1)
    {
      v15 = sub_1001F47F8(a1);
    }

    v8[OBJC_IVAR___MTNetworkMediaManifest_hasOnlyPaidEpisodesWithoutSubscription] = a2 & 1;
    if (a4)
    {
      a4(v15);
    }
  }
}

id sub_1001F3A80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v92 = a8;
  v93 = a7;
  v91 = a9;
  v94 = a10;
  v20 = type metadata accessor for PriceType();
  v90 = *(v20 - 1);
  __chkstk_darwin(v20);
  v22 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100168088(&qword_1005769D0);
  __chkstk_darwin(v23);
  v25 = v88 - v24;
  v26 = sub_100168088(&qword_1005769D8);
  __chkstk_darwin(v26 - 8);
  v28 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v88 - v30;
  __chkstk_darwin(v32);
  v34 = v88 - v33;
  if (!a5)
  {
    if (!a1)
    {
      goto LABEL_90;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_5:
    result = _MTLogCategoryPlayback();
    if (result)
    {
      v36 = result;
      static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_100400790;
      v38 = _convertErrorToNSError(_:)();
      *(v37 + 56) = sub_100009F1C(0, &qword_100573598);
      *(v37 + 64) = sub_1001F6F40();
      *(v37 + 32) = v38;
      os_log(_:dso:log:type:_:)();

      if (a6)
      {
        return (a6)(0, 0);
      }

      return result;
    }

    goto LABEL_101;
  }

LABEL_9:
  v39 = sub_10037FC18(a1);
  if (!v39)
  {
    goto LABEL_15;
  }

  if (!v39[2])
  {

LABEL_15:
    v45 = sub_10037FDBC(a1);
    if (!v45)
    {
      goto LABEL_90;
    }

    v34 = v45;
    v89 = a6;
    v95 = _swiftEmptyArrayStorage;
    a6 = v45 & 0xFFFFFFFFFFFFFF8;
    if (v45 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v25 = (v34 & 0xC000000000000001);
    v90 = _swiftEmptyArrayStorage;
    if (!v23)
    {
LABEL_19:
      swift_beginAccess();
      v46 = v90;

      sub_1001C4074(v47);
      swift_endAccess();
      result = _MTLogCategoryPlayback();
      if (result)
      {
        v48 = result;

        static os_log_type_t.default.getter();
        sub_100168088(&unk_100574670);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_100400790;
        a6 = v89;
        if (v46 >> 62)
        {
          v50 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v50 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v49 + 56) = &type metadata for Int;
        *(v49 + 64) = &protocol witness table for Int;
        *(v49 + 32) = v50;
        os_log(_:dso:log:type:_:)();
        goto LABEL_89;
      }

      goto LABEL_103;
    }

    while (1)
    {
      if (v25)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(a6 + 16))
        {
          goto LABEL_57;
        }

        v51 = *(v34 + 8 * a1 + 32);
      }

      v22 = v51;
      v31 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        if (_CocoaArrayWrapper.endIndex.getter() <= 0)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }

      v52 = dispatch thunk of ServerPodcastEpisode.relationships.getter();
      if (v52)
      {
        v53 = v52;
        v28 = PodcastEpisodeRelationships.podcast.getter();

        if (v28)
        {
          break;
        }
      }

      v20 = 0;
LABEL_24:
      v28 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v22 podcast:v20];

      ++a1;
      if (v28)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v90 = v95;
        a1 = v31;
        if (v23 == v31)
        {
          goto LABEL_19;
        }
      }

      else if (v23 == a1)
      {
        goto LABEL_19;
      }
    }

    v54 = PodcastRelationshipContainer.data.getter();

    if (v54 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_34;
      }
    }

    else if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_34:
      if ((v54 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v55 = *(v54 + 32);
      }

      v20 = v55;
      goto LABEL_45;
    }

    v20 = 0;
LABEL_45:

    goto LABEL_24;
  }

  v41 = v39[4];
  v40 = v39[5];
  v88[3] = v39;
  type metadata accessor for ServerPodcast();
  v42 = swift_dynamicCastClass();
  if (!v42)
  {
    swift_unknownObjectRetain();
    goto LABEL_85;
  }

  v88[1] = v42;
  v88[2] = v40;
  v43 = v92;
  swift_beginAccess();
  LOBYTE(v43) = *(v43 + 16);
  swift_unknownObjectRetain();
  if ((v43 & 1) == 0)
  {
    swift_unknownObjectRetain();
    v56 = ServerPodcastBase.attributes.getter();
    v89 = a6;
    if (v56)
    {
      v57 = PodcastAttributes.offers.getter();
      v88[0] = v41;
      v58 = v57;

      v59 = v58;
      v41 = v88[0];
      if (v59)
      {
        v60 = v59 & 0xFFFFFFFFFFFFFF8;
        if (v59 >> 62)
        {
          v62 = v59;
          v63 = _CocoaArrayWrapper.endIndex.getter();
          v59 = v62;
          v41 = v88[0];
          if (v63)
          {
            goto LABEL_52;
          }
        }

        else if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_52:
          if ((v59 & 0xC000000000000001) != 0)
          {
            v88[0] = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v60 + 16))
            {
              __break(1u);
              goto LABEL_97;
            }

            v88[0] = *(v59 + 32);
          }

          dispatch thunk of PodcastShowOffer.typeResolved.getter();

          v61 = v90;
LABEL_66:
          (v61[13])(v31, enum case for PriceType.psub(_:), v20);
          (v61[7])(v31, 0, 1, v20);
          v64 = *(v23 + 48);
          sub_100010430(v34, v25, &qword_1005769D8);
          v88[0] = v64;
          sub_100010430(v31, &v25[v64], &qword_1005769D8);
          v65 = v61[6];
          if (v65(v25, 1, v20) == 1)
          {
            sub_100009104(v31, &qword_1005769D8);
            sub_100009104(v34, &qword_1005769D8);
            if (v65(&v25[v88[0]], 1, v20) == 1)
            {
              sub_100009104(v25, &qword_1005769D8);
              a6 = v89;
LABEL_73:
              if (ServerPodcastBase.relationships.getter())
              {
                v69 = PodcastRelationships.channel.getter();

                if (v69)
                {
                  v23 = PodcastChannelRelationshipContainer.data.getter();

                  if (!(v23 >> 62))
                  {
                    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_98;
                  }

LABEL_97:
                  result = _CocoaArrayWrapper.endIndex.getter();
                  if (result)
                  {
LABEL_77:
                    if ((v23 & 0xC000000000000001) != 0)
                    {
                      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        __break(1u);
LABEL_101:
                        __break(1u);
                        goto LABEL_102;
                      }

                      v70 = *(v23 + 32);
                    }

                    v71 = v70;

                    ServerChannel.attributes.getter();

                    v72 = ChannelAttributes.isSubscribed.getter();

                    swift_unknownObjectRelease();
                    if (v72 != 2)
                    {
                      v44 = v72 ^ 1;
                      goto LABEL_84;
                    }

LABEL_83:
                    v44 = 0;
                    goto LABEL_84;
                  }

LABEL_98:
                  swift_unknownObjectRelease();

                  goto LABEL_83;
                }
              }

LABEL_82:
              swift_unknownObjectRelease();
              goto LABEL_83;
            }
          }

          else
          {
            sub_100010430(v25, v28, &qword_1005769D8);
            v66 = v88[0];
            if (v65(&v25[v88[0]], 1, v20) != 1)
            {
              v67 = v90;
              (v90[4])(v22, &v25[v66], v20);
              sub_1001F6DC8(&qword_1005769F0, &type metadata accessor for PriceType);
              LODWORD(v88[0]) = dispatch thunk of static Equatable.== infix(_:_:)();
              v68 = v67[1];
              v68(v22, v20);
              sub_100009104(v31, &qword_1005769D8);
              sub_100009104(v34, &qword_1005769D8);
              v68(v28, v20);
              sub_100009104(v25, &qword_1005769D8);
              a6 = v89;
              if ((v88[0] & 1) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_73;
            }

            sub_100009104(v31, &qword_1005769D8);
            sub_100009104(v34, &qword_1005769D8);
            (v90[1])(v28, v20);
          }

          sub_100009104(v25, &qword_1005769D0);
          a6 = v89;
          goto LABEL_82;
        }
      }
    }

    v61 = v90;
    (v90[7])(v34, 1, 1, v20);
    goto LABEL_66;
  }

  v44 = 1;
LABEL_84:
  v73 = v92;
  swift_beginAccess();
  *(v73 + 16) = v44 & 1;
LABEL_85:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v74 = sub_1001F5F9C();
  swift_unknownObjectRelease();
  swift_beginAccess();

  sub_1001C4074(v75);
  swift_endAccess();
  result = _MTLogCategoryPlayback();
  if (!result)
  {
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    return result;
  }

  v48 = result;

  static os_log_type_t.default.getter();
  sub_100168088(&unk_100574670);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1004007C0;
  v77 = [v41 id];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  *(v76 + 56) = &type metadata for String;
  *(v76 + 64) = sub_100022C18();
  *(v76 + 32) = v78;
  *(v76 + 40) = v80;
  if (v74 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    *(v76 + 96) = &type metadata for Int;
    *(v76 + 104) = &protocol witness table for Int;
    *(v76 + 72) = i;
    os_log(_:dso:log:type:_:)();
    swift_unknownObjectRelease();
LABEL_89:

LABEL_90:
    v76 = a12;
    swift_beginAccess();
    v82 = *(*(a12 + 16) + 16);
    v48 = (a11 + v82);
    if (!__OFADD__(a11, v82))
    {
      break;
    }

    __break(1u);
LABEL_94:
    ;
  }

  v83 = v94;
  swift_beginAccess();
  v84 = *(v83 + 16);
  v85 = v92;
  swift_beginAccess();
  v86 = a6;
  v87 = *(v85 + 16);

  sub_1001EF530(v48, a13, a14, a15, a16, a17, v84, v87, v86, v93);
}

uint64_t sub_1001F47F8(uint64_t a1)
{
  v2 = v1;
  result = _MTLogCategoryPlayback();
  if (!result)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    return result;
  }

  v5 = result;
  static os_log_type_t.default.getter();
  v6 = sub_100168088(&unk_100574670);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100400790;
  v8 = a1 >> 62;
  v99 = v2;
  if (a1 >> 62)
  {
    goto LABEL_105;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v7 + 56) = &type metadata for Int;
    *(v7 + 64) = &protocol witness table for Int;
    *(v7 + 32) = v9;
    os_log(_:dso:log:type:_:)();

    if (!v9)
    {
      return v9;
    }

    v97 = v9;
    v9 = &selRef_isPartiallyPlayedBackCatalogItem;
    result = [v2 items];
    if (!result)
    {
      goto LABEL_181;
    }

    v10 = result;
    v5 = sub_100009F1C(0, &qword_10057A130);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v99;
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v12)
    {
      break;
    }

    v98 = v8;
    v13 = &selRef_application_willFinishLaunchingWithOptions_;
    v14 = [v2 currentIndex];
    result = [v2 items];
    if (!result)
    {
      goto LABEL_182;
    }

    v15 = result;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v99;
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v98;
    if (v17 >= 1 && v14 < v17)
    {
      result = _MTLogCategoryPlayback();
      if (!result)
      {
        goto LABEL_183;
      }

      v12 = result;
      static os_log_type_t.default.getter();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100400790;
      v9 = &selRef_isPartiallyPlayedBackCatalogItem;
      result = [v2 items];
      if (!result)
      {
        goto LABEL_184;
      }

      v18 = result;
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v19 >> 62))
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_18;
      }

LABEL_111:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v99;
LABEL_18:

      v21 = [v2 currentIndex];
      if ((v21 & 0x8000000000000000) != 0)
      {
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
        v52 = _CocoaArrayWrapper.endIndex.getter();
        if (!v52)
        {
          goto LABEL_118;
        }

LABEL_66:
        v23 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v23)
        {
          goto LABEL_170;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          goto LABEL_171;
        }

        if ((v53 & 0x8000000000000000) == 0)
        {
          if (v53 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_173;
          }

          v54 = *(v12 + 8 * v53 + 32);
          goto LABEL_71;
        }

        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
        goto LABEL_175;
      }

      v22 = v20 - v21;
      if (__OFSUB__(v20, v21))
      {
        goto LABEL_113;
      }

      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v23)
      {
        goto LABEL_114;
      }

      *(v8 + 56) = &type metadata for Int;
      *(v8 + 64) = &protocol witness table for Int;
      *(v8 + 32) = v24;
      os_log(_:dso:log:type:_:)();

      v25 = [v2 currentIndex];
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_115;
      }

      v26 = v25;
      result = [v2 *(v9 + 664)];
      if (!result)
      {
        goto LABEL_186;
      }

      v27 = result;
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_157:
        __break(1u);
LABEL_158:
        v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_78;
      }

      if (v28 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          goto LABEL_191;
        }

        if (_CocoaArrayWrapper.endIndex.getter() < v29)
        {
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < v29)
      {
        goto LABEL_161;
      }

      if (v29 < 0)
      {
        goto LABEL_163;
      }

      v30 = v6;

      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = 0;
        do
        {
          v32 = v31 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v31);
          v31 = v32;
        }

        while (v29 != v32);
      }

      if (v28 >> 62)
      {
        v34 = _CocoaArrayWrapper.subscript.getter();
        v35 = v43;
        v33 = v44;
        v36 = v45;
      }

      else
      {
        v33 = 0;
        v34 = v28 & 0xFFFFFFFFFFFFFF8;
        v35 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
        v36 = (2 * v29) | 1;
      }

      v6 = v30;
      v2 = v99;
      if ((v36 & 1) == 0)
      {
LABEL_53:
        sub_1002750B4(v34, v35, v33, v36);
        v9 = v98;
        v13 = &selRef_application_willFinishLaunchingWithOptions_;
        goto LABEL_59;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v46 = swift_dynamicCastClass();
      if (!v46)
      {
        swift_unknownObjectRelease();
        v46 = _swiftEmptyArrayStorage;
      }

      v47 = v46[2];

      if (__OFSUB__(v36 >> 1, v33))
      {
        __break(1u);
      }

      else if (v47 == (v36 >> 1) - v33)
      {
        v48 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v2 = v99;
        v9 = v98;
        v13 = &selRef_application_willFinishLaunchingWithOptions_;
        if (!v48)
        {
LABEL_59:
          swift_unknownObjectRelease();
        }

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v2 setItems:isa];

        goto LABEL_61;
      }

      swift_unknownObjectRelease_n();
      v2 = v99;
      goto LABEL_53;
    }

LABEL_61:
    v12 = [v2 v13[439]];
    v50 = NSNotFound.getter();
    if ((v50 & 0x8000000000000000) == 0 && v12 == v50)
    {
      result = [v2 items];
      if (!result)
      {
        goto LABEL_185;
      }

      v51 = result;
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v12 >> 62))
      {
        v52 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          goto LABEL_66;
        }

LABEL_118:

        v56 = 0;
        v57 = 0;
        v58 = a1 & 0xFFFFFFFFFFFFFF8;
        if (!v9)
        {
          goto LABEL_79;
        }

        goto LABEL_119;
      }

      goto LABEL_117;
    }

    v59 = [v2 v13[439]];
    if ((v59 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v60 = v59;
    result = [v2 items];
    if (!result)
    {
      goto LABEL_187;
    }

    v61 = result;
    v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v62 & 0xC000000000000001) != 0)
    {
      goto LABEL_158;
    }

    if (v60 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_162;
    }

    v63 = *(v62 + 8 * v60 + 32);
LABEL_78:
    v64 = v63;

    v56 = [v64 episodeStoreId];

    v57 = 1;
    v9 = v98;
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v98)
    {
LABEL_79:
      v7 = *(v58 + 16);
      if (v7)
      {
        goto LABEL_80;
      }

      goto LABEL_120;
    }

LABEL_119:
    while (1)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      if (v7)
      {
        break;
      }

LABEL_120:
      v8 = 0;
LABEL_121:
      v77 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_157;
      }

      if (v77 >= v97)
      {
        return 0;
      }

      v78 = *&v99[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount];
      v23 = __OFADD__(v77, v78);
      v79 = v77 + v78;
      if (v23)
      {
        goto LABEL_164;
      }

      if (v97 >= v79)
      {
        v9 = v79;
      }

      else
      {
        v9 = v97;
      }

      if (v9 < v77)
      {
        goto LABEL_165;
      }

      if (v98)
      {
        v80 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v80 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v80 < v77)
      {
        goto LABEL_166;
      }

      if (v77 < 0)
      {
        goto LABEL_167;
      }

      if (v98)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result < v9)
      {
        goto LABEL_168;
      }

      if ((a1 & 0xC000000000000001) == 0 || v77 == v9)
      {

        if (!v98)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v77 >= v9)
        {
          __break(1u);
          goto LABEL_180;
        }

        v81 = v8 + 1;
        do
        {
          v82 = v81 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v81);
          v81 = v82;
        }

        while (v9 != v82);
        if (!v98)
        {
LABEL_144:
          v83 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v84 = (2 * v9) | 1;
          goto LABEL_147;
        }
      }

      _CocoaArrayWrapper.subscript.getter();
      v83 = v85;
      v77 = v86;
      v84 = v87;
LABEL_147:
      result = [v99 items];
      if (!result)
      {
        goto LABEL_188;
      }

      v88 = result;
      v89 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v90 = swift_unknownObjectRetain();
      sub_1001CCA5C(v90, v83, v77, v84);
      swift_unknownObjectRelease();
      if (v89)
      {
        v91.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v91.super.isa = 0;
      }

      [v99 setItems:v91.super.isa];

      [v99 postLoadedAdditionalItemsNotification];
      [v99 postManifestDidChangeNotification];
      result = _MTLogCategoryPlayback();
      if (!result)
      {
        goto LABEL_189;
      }

      a1 = result;
      v5 = static os_log_type_t.default.getter();
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_100400790;
      v23 = __OFSUB__(v84 >> 1, v77);
      v9 = (v84 >> 1) - v77;
      if (!v23)
      {
        *(v92 + 56) = &type metadata for Int;
        *(v92 + 64) = &protocol witness table for Int;
        *(v92 + 32) = v9;
        os_log(_:dso:log:type:_:)();

        result = _MTLogCategoryPlayback();
        if (!result)
        {
          goto LABEL_190;
        }

        v93 = result;
        static os_log_type_t.default.getter();
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_100400790;
        v95 = sub_1001F564C();
        *(v94 + 56) = sub_100168088(&qword_100573BD8);
        *(v94 + 64) = sub_100009FAC(&qword_1005769C8, &qword_100573BD8);
        *(v94 + 32) = v95;
        os_log(_:dso:log:type:_:)();
        swift_unknownObjectRelease();

        return v9;
      }

LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_71:
      v55 = v54;

      v56 = [v55 episodeStoreId];

      v57 = 1;
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v9)
      {
        goto LABEL_79;
      }
    }

LABEL_80:
    v96 = v6;
    v8 = 0;
    v9 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v9)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

        v65 = *(a1 + 8 * v8 + 32);
      }

      v66 = v65;
      v67 = [v65 episodeStoreId];

      if (v67 == v56)
      {
        v68 = v57;
      }

      else
      {
        v68 = 0;
      }

      if (v68)
      {
        goto LABEL_92;
      }

      v69 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      ++v8;
      if (v69 == v7)
      {
        v8 = 0;
LABEL_92:
        v6 = v96;
        goto LABEL_121;
      }
    }

    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v99;
  }

  v37 = *&v2[OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount];
  v23 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v23)
  {
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v38 >= v97)
  {
    v9 = v97;
  }

  else
  {
    v9 = v38;
  }

  if (v9 < 0)
  {
    goto LABEL_109;
  }

  if (v8)
  {
    if (a1 < 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_174;
    }

    v39 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v39 < v9)
  {
    goto LABEL_110;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {

    if (v9)
    {
      v40 = 0;
      do
      {
        v41 = v40 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v40);
        v40 = v41;
      }

      while (v9 != v41);
    }

    if (!v8)
    {
LABEL_50:
      v6 = 0;
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
      v42 = a1 + 32;
      v12 = (2 * v9) | 1;
      goto LABEL_96;
    }
  }

  else
  {

    if (!v8)
    {
      goto LABEL_50;
    }
  }

  a1 = _CocoaArrayWrapper.subscript.getter();
  v6 = v70;
  v12 = v71;
  if ((v71 & 1) == 0)
  {
LABEL_95:
    sub_1002750B4(a1, v42, v6, v12);
    v72 = v99;
    goto LABEL_101;
  }

LABEL_96:
  v2 = v42;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = _swiftEmptyArrayStorage;
  }

  v74 = v73[2];

  if (__OFSUB__(v12 >> 1, v6))
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  if (v74 != (v12 >> 1) - v6)
  {
LABEL_176:
    swift_unknownObjectRelease();
    v42 = v2;
    goto LABEL_95;
  }

  v75 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v72 = v99;
  if (!v75)
  {
LABEL_101:
    swift_unknownObjectRelease();
  }

  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v72 setItems:v76];

  return v9;
}

unint64_t sub_1001F5550()
{
  v1 = [v0 currentIndex];
  v2 = [v0 count];
  result = [v0 count];
  if (v2 >= 1 && v1 < v2)
  {
    v5 = result;
    result = [v0 currentIndex];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v6 = v5 - result;
      if (!__OFSUB__(v5, result))
      {
        result = v6 - 1;
        if (!__OFSUB__(v6, 1))
        {
          return result;
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

char *sub_1001F564C()
{
  result = [v0 items];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_100009F1C(0, &qword_10057A130);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_4:
  result = sub_1001A73C8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      v8 = [v6 episodeStoreId];

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1001A73C8((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      _swiftEmptyArrayStorage[v10 + 4] = v8;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

id sub_1001F5848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkMediaManifest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001F5934(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a1)
  {
    v21 = a1;
    v5 = [v21 uuid];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      sub_100168088(&unk_100574670);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100400790;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100022C18();
      *(v10 + 32) = v7;
      *(v10 + 40) = v9;
      sub_100009F1C(0, &qword_1005748A0);

      v11 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v12 = objc_allocWithZone(MTEpisodeManifest);
      v13 = String._bridgeToObjectiveC()();

      v20 = [v12 initWithEpisodeUuid:v13];

      a4(v20);
      v14 = v20;
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0);
      v19 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      a4(0);
      v14 = v21;
    }
  }

  else
  {
    sub_100168088(&unk_100574670);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100400790;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100022C18();
    *(v17 + 32) = a2;
    *(v17 + 40) = a3;
    sub_100009F1C(0, &qword_1005748A0);

    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    a4(0);
  }
}

void *sub_1001F5C7C(void *a1)
{
  v1 = a1;
  v2 = dispatch thunk of ServerPodcastStation.episodes.getter();
  if (v2)
  {
    v3 = v2;
    v12 = v1;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v7 podcast:{0, v12}];

      ++v6;
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v9;
      }
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F5E0C(void *a1)
{
  v1 = a1;
  v2 = dispatch thunk of ServerPodcast.episodes.getter();
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_20:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    while (v5 != v6)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v7 podcast:v1];

      ++v6;
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v9;
      }
    }
  }

  else
  {
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F5F9C()
{
  type metadata accessor for ServerPodcast();
  v0 = swift_dynamicCastClass();
  if (!v0)
  {
    type metadata accessor for ServerPodcastStation();
    v11 = swift_dynamicCastClass();
    result = _swiftEmptyArrayStorage;
    if (!v11)
    {
      return result;
    }

    swift_unknownObjectRetain();
    v13 = dispatch thunk of ServerPodcastStation.episodes.getter();
    if (v13)
    {
      v1 = v13;
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      v4 = v1 & 0xC000000000000001;
      while (v3 != v15)
      {
        if (v4)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v14 + 16))
          {
            goto LABEL_38;
          }

          v16 = *(v1 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v19 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v16 podcast:0];

        ++v15;
        if (v19)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v15 = v18;
        }
      }

      goto LABEL_33;
    }

LABEL_32:
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  v1 = v0;
  swift_unknownObjectRetain();
  v2 = dispatch thunk of ServerPodcast.episodes.getter();
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_39:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_36;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = [objc_allocWithZone(MTPlayerItem) initWithPodcastEpisode:v7 podcast:v1];

    ++v6;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v9;
    }
  }

LABEL_33:
  swift_unknownObjectRelease();

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001F62C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___MTNetworkMediaManifest_manifestWorkQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1001F6E10;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4248;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_100013CB4(a1);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1001F6DC8(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1001F65A8(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for MediaRequest.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress))
  {
    if (a1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2;
      v10 = sub_10002D7F0;
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v22 = OBJC_IVAR___MTNetworkMediaManifest_inProgressRefreshHandlers;
    swift_beginAccess();
    v23 = *(v2 + v22);
    sub_100013CB4(a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v22) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1002437D4(0, v23[2] + 1, 1, v23);
      *(v2 + v22) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1002437D4((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = v10;
    v27[5] = v9;
    *(v2 + v22) = v23;
    return swift_endAccess();
  }

  else
  {
    *(v2 + OBJC_IVAR___MTNetworkMediaManifest_refreshInProgress) = 1;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = a2;

    sub_100013CB4(a1);
    v13 = sub_1001F5550();
    v14 = OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount;
    if (v13 >= *(v2 + OBJC_IVAR___MTNetworkMediaManifest_forwardItemCount))
    {
      sub_1001F392C(0, 0, v11, a1);
    }

    else
    {

      v15 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_initialIds);
      swift_getObjectType();
      if (v15)
      {
        v16 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController);
        v17 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v17, v5);
        v18 = *(v2 + v14);
        v19 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit);

        v20 = v16;

        sub_1001EF530(0, v15, v20, v8, v18, v19, _swiftEmptyArrayStorage, 0, sub_1001F6E3C, v12);
      }

      else
      {
        v28 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_mediaRequestController);
        v29 = OBJC_IVAR___MTNetworkMediaManifest_contentType;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v29, v5);
        v30 = *(v2 + v14);
        v31 = *(v2 + OBJC_IVAR___MTNetworkMediaManifest_episodeFetchLimit);

        v32 = v28;
        sub_1001EF530(0, _swiftEmptyArrayStorage, v32, v8, v30, v31, _swiftEmptyArrayStorage, 0, sub_1001F6E3C, v12);
      }

      return (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_1001F69FC(void *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  sub_100009F1C(0, &qword_1005748A0);
  _Block_copy(a2);
  v5 = a1;
  v6 = static OS_os_log.default.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v26 = v4;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136446210;
    v10 = [v5 itemIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE500000000000000;
      v12 = 0x3E4C494E3CLL;
    }

    v15 = sub_1000153E0(v12, v14, &v27);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "NetworkMediaManifest: Attempting to restore activity with identifier: %{public}s", v8, 0xCu);
    sub_100004590(v9);

    v4 = v26;
  }

  else
  {
  }

  v16 = [v5 itemIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v5 containerIdentifier];
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    type metadata accessor for CoreDataFetcher();
    v25 = swift_allocObject();
    v25[2] = v18;
    v25[3] = v20;
    v25[4] = sub_1001F6D40;
    v25[5] = v4;

    static CoreDataFetcher.fetchEpisode(for:on:completion:)();
  }

  else
  {
    v23 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    a2[2](a2, 0);
  }
}

uint64_t sub_1001F6D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001F6D74(a1, a2);
  }

  return a1;
}

uint64_t sub_1001F6D74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1001F6DC8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1001F6E48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(type metadata accessor for MediaRequest.ContentType() - 8);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001F3A80(a1, a2, a3, a4, a5, v5[2], v5[3], v5[4], v5[5], v5[6], v5[7], v5[8], v5[9], v5[10], v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1001F6F40()
{
  result = qword_100576A38;
  if (!qword_100576A38)
  {
    sub_100009F1C(255, &qword_100573598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576A38);
  }

  return result;
}

uint64_t sub_1001F6FB4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001F6FFC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t CategoryIngester.__deallocating_deinit()
{
  sub_100004590(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1001F7098(uint64_t a1, unsigned __int8 a2, __int16 a3, uint64_t a4)
{
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      if ((a3 & 1) == 0)
      {
LABEL_20:
        result = 1;
        if (a4 != 1)
        {
          v8 = a1;
          sub_100168088(&qword_100576AF8);
          v9 = swift_allocObject();
          result = 1;
          *(v9 + 16) = xmmword_100400790;
          *(v9 + 32) = v8;
          *(v9 + 40) = 1;
        }

        return result;
      }

      if ((a3 & 0x100) == 0)
      {
        result = 2;
        if (a4 != 1)
        {
          v12 = a1;
          sub_100168088(&qword_100576AF8);
          v13 = swift_allocObject();
          result = 2;
          *(v13 + 16) = xmmword_1004007C0;
          *(v13 + 32) = 1;
          *(v13 + 40) = 2;
          *(v13 + 48) = v12;
          *(v13 + 56) = 1;
        }

        return result;
      }

      if (a4 != 1)
      {
        sub_100168088(&qword_100576AF8);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100400790;
        *(v15 + 32) = a1;
        *(v15 + 40) = 1;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return 1;
      }

      if (a1 > 4)
      {
        if ((a1 == 5 || a1 == 6) && (a3 & 0x100) != 0)
        {
          return 1;
        }

        return 1;
      }

      if (a1 != 1 && a1 != 2 || (a3 & 1) == 0)
      {
        return 1;
      }

      if ((a3 & 0x100) == 0)
      {
        return 2;
      }
    }

    return 3;
  }

  if (a2)
  {
    if (a2 != 2)
    {
      return 1;
    }

    goto LABEL_20;
  }

  if ((a3 & 0x100) != 0)
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8);
      v11 = swift_allocObject();
      result = 0;
      *(v11 + 16) = xmmword_100400790;
      *(v11 + 32) = a1;
      *(v11 + 40) = 0;
    }

    else
    {
      return 0;
    }
  }

  else if (a4)
  {
    sub_100168088(&qword_100576AF8);
    v7 = swift_allocObject();
    result = 0;
    *(v7 + 16) = xmmword_1004007C0;
    *(v7 + 32) = a1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1001F7344(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v21 = &v46 - v20;
  if (!a2)
  {
    if (!a4)
    {
      return 0;
    }

    sub_100168088(&qword_100576AF8);
    v26 = swift_allocObject();
    v27 = 0;
    *(v26 + 16) = xmmword_1004007E0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 2;
    *(v26 + 48) = a1;
    *(v26 + 56) = 0;
    goto LABEL_15;
  }

  if (a2 != 2)
  {
    if (a2 == 4)
    {
      if (a1 <= 6)
      {
        if (a1)
        {
          if (a1 != 4)
          {
            return 2;
          }

          return 3;
        }

        if ((a3 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_26;
      }

      switch(a1)
      {
        case 7:
          if (a3)
          {
            return 3;
          }

          break;
        case 8:
          if (a4 != 2)
          {
            v37 = v19;
            static Logger.podcastsStatesCoordination.getter();
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v38, v39))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v47 = v41;
              *v40 = 136315138;
              v42 = PodcastsStateChangeOrigin.description.getter();
              v44 = sub_1000153E0(v42, v43, &v47);

              *(v40 + 4) = v44;
              sub_100004590(v41);
            }

            (*(v9 + 8))(v14, v37);
          }

          return 2;
        case 9:
          v28 = v19;
          static Logger.podcastsStatesCoordination.getter();
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v27 = 2;
            v31 = swift_slowAlloc();
            *v31 = 0;

            (*(v9 + 8))(v11, v28);
            return v27;
          }

          (*(v9 + 8))(v11, v28);
          break;
      }
    }

    return 2;
  }

  if (a3)
  {
    if (a4 == 1)
    {
LABEL_26:
      v33 = v19;
      static Logger.podcastsStatesCoordination.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v36, 2u);
      }

      (*(v9 + 8))(v17, v33);
      return 1;
    }

    v22 = v19;
    static Logger.podcastsStatesCoordination.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v25, 2u);
    }

    (*(v9 + 8))(v21, v22);
    sub_100168088(&qword_100576AF8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1004007E0;
    *(v26 + 32) = 0;
    *(v26 + 40) = 2;
    *(v26 + 48) = a1;
    v27 = 1;
    *(v26 + 56) = 1;
LABEL_15:
    *(v26 + 64) = 4;
    *(v26 + 72) = 2;
    return v27;
  }

  v27 = 1;
  if (a4 != 1)
  {
    sub_100168088(&qword_100576AF8);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1004007C0;
    *(v32 + 32) = a1;
    *(v32 + 40) = 1;
    *(v32 + 48) = 4;
    *(v32 + 56) = 2;
  }

  return v27;
}

uint64_t sub_1001F794C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  if (a2)
  {
    if (a2 == 2)
    {
      v16 = 1;
      if (a4 != 1)
      {
        sub_100168088(&qword_100576AF8);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_100400790;
        *(v17 + 32) = a1;
        *(v17 + 40) = 1;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return 3;
      }

      if (a1 <= 4)
      {
        if (!a1)
        {
          return 1;
        }

        if (a1 == 3)
        {
          return 2;
        }

        return 3;
      }

      if (a1 == 5)
      {
        v20 = v13;
        static Logger.podcastsStatesCoordination.getter();
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v16 = 2;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Somehow we end up with an Implicit Follow that does NOT have any play state, that doesn't make sense.", v23, 2u);

          (*(v9 + 8))(v15, v20);
        }

        else
        {

          (*(v9 + 8))(v15, v20);
          return 2;
        }
      }

      else
      {
        if (a1 != 6)
        {
          return 3;
        }

        if (a3)
        {
          return 2;
        }

        else
        {
          v24 = v13;
          static Logger.podcastsStatesCoordination.getter();
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v25, v26, "The show has play state but for some reason it's in Store state. This doesn't make any sense, with playState a show should be at least Implicitly Followed. Figure out what's going on.", v27, 2u);
          }

          (*(v9 + 8))(v11, v24);
          return 2;
        }
      }
    }
  }

  else if (a4)
  {
    sub_100168088(&qword_100576AF8);
    v18 = swift_allocObject();
    v16 = 0;
    *(v18 + 16) = xmmword_100400790;
    *(v18 + 32) = a1;
    *(v18 + 40) = 0;
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_1001F7D14(uint64_t a1, char a2, __int16 a3, uint64_t a4)
{
  if (a2 == 3 || a2 == 2)
  {
    if (a4 != 1)
    {
      sub_100168088(&qword_100576AF8);
      v7 = swift_allocObject();
      result = 0;
      *(v7 + 16) = xmmword_100400790;
      *(v7 + 32) = a1;
      *(v7 + 40) = 1;
      return result;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return 0;
  }

  if (a3)
  {
    if ((a3 & 0x100) != 0)
    {
      if (a4)
      {
        sub_100168088(&qword_100576AF8);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_100400790;
        *(v9 + 32) = a1;
        *(v9 + 40) = 0;
      }

      return 3;
    }

    else
    {
      result = 2;
      if (a4)
      {
        sub_100168088(&qword_100576AF8);
        v6 = swift_allocObject();
        result = 2;
        *(v6 + 16) = xmmword_1004007E0;
        *(v6 + 32) = a1;
        *(v6 + 40) = 0;
        *(v6 + 48) = 1;
        *(v6 + 56) = 2;
        *(v6 + 64) = 0;
        *(v6 + 72) = 2;
      }
    }
  }

  else if ((a3 & 0x100) != 0)
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100400790;
      *(v10 + 32) = a1;
      *(v10 + 40) = 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      sub_100168088(&qword_100576AF8);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004007C0;
      *(v8 + 32) = a1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 2;
    }

    return 1;
  }

  return result;
}

_BYTE *sub_1001F7F3C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v98 = a5;
  v99 = a3;
  v100 = a4;
  v7 = type metadata accessor for Logger();
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v101 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PodcastStateModel();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v95 = &v84[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v84[-v12];
  PodcastStateModel.uuid.getter();
  v14 = objc_opt_self();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 predicateForLibraryEpisodesOnPodcastUuid:v15];

  v17 = kMTEpisodeEntityName;
  v94 = [a2 hasAnyObjectsInEntity:kMTEpisodeEntityName satisfyingPredicate:v16];

  PodcastStateModel.uuid.getter();
  v18 = [v14 predicateForHasAnyVisualPlayState];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v14 predicateForAllEpisodesOnPodcastUuid:v19];

  v21 = [v18 AND:v20];
  v22 = v103;

  v23 = [a2 hasAnyObjectsInEntity:v17 satisfyingPredicate:v21];

  v24 = *(v22 + 16);
  v24(v13, a1, v9);
  v25 = v102;
  v26 = PodcastStateModel.sanitizedState()();
  if (v25)
  {
    (*(v22 + 8))(v13, v9);
  }

  else
  {
    v93 = a1;
    v27 = v95;
    v28 = v98;
    v91 = v94 ^ 1;
    v92 = v23 ^ 1;
    v29 = v22 + 8;
    v30 = *(v22 + 8);
    v31 = v26;
    v103 = v29;
    v90 = v30;
    v30(v13, v9);
    v89 = v31;
    if (v31 > 1u)
    {
      if (v31 == 2)
      {
        v33 = sub_1001F7344(v99, v100, v92, v28);
      }

      else
      {
        v33 = sub_1001F794C(v99, v100, v92, v28);
      }
    }

    else if (v31)
    {
      if (v23)
      {
        v36 = 0;
      }

      else
      {
        v36 = 256;
      }

      v33 = sub_1001F7098(v99, v100, v36 | v91, v28);
    }

    else
    {
      if (v23)
      {
        v32 = 0;
      }

      else
      {
        v32 = 256;
      }

      v33 = sub_1001F7D14(v99, v100, v32 | v91, v28);
    }

    v13 = v33;
    v102 = v34;
    v94 = v35;
    v37 = v101;
    static Logger.podcastsStatesCoordination.getter();
    v38 = static os_log_type_t.default.getter();
    v24(v27, v93, v9);
    v39 = Logger.logObject.getter();
    LODWORD(v93) = v38;
    if (os_log_type_enabled(v39, v38))
    {
      v87 = v39;
      v88 = 0;
      v40 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v108 = v86;
      *v40 = 136382211;
      v41 = PodcastStateModel.id.getter();
      v43 = v42;
      v45 = v44;
      v46 = PodcastIdentifier.description.getter();
      v85 = v13;
      v47 = v46;
      v49 = v48;
      sub_1001F876C(v41, v43, v45);
      v90(v27, v9);
      v50 = sub_1000153E0(v47, v49, &v108);

      *(v40 + 4) = v50;
      *(v40 + 12) = 2080;
      LOBYTE(v106) = v89;
      sub_1001F8788();
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = sub_1000153E0(v51, v52, &v108);

      *(v40 + 14) = v53;
      *(v40 + 22) = 2080;
      v54 = sub_1002C99B4(v99, v100);
      v56 = sub_1000153E0(v54, v55, &v108);

      *(v40 + 24) = v56;
      *(v40 + 32) = 2080;
      LOBYTE(v106) = v91;
      sub_1001F87DC();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      v59 = sub_1000153E0(v57, v58, &v108);

      *(v40 + 34) = v59;
      *(v40 + 42) = 2080;
      LOBYTE(v106) = v92;
      sub_1001F8830();
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = sub_1000153E0(v60, v61, &v108);

      *(v40 + 44) = v62;
      *(v40 + 52) = 2080;
      v63 = PodcastsStateChangeOrigin.description.getter();
      v65 = sub_1000153E0(v63, v64, &v108);

      *(v40 + 54) = v65;
      *(v40 + 62) = 2080;
      v66 = 0x697469736E617254;
      if (v94)
      {
        v66 = 0x3A6E6F28706F6F6CLL;
      }

      v67 = 0xEF203A6F74286E6FLL;
      if (v94)
      {
        v67 = 0xE900000000000020;
      }

      v106 = v66;
      v107 = v67;
      object = 0xE100000000000000;
      v105._countAndFlagsBits = 46;
      v105._object = 0xE100000000000000;
      v69 = v85;
      v104 = v85;
      v70 = v102;

      v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v71);

      String.append(_:)(v105);

      if (v70)
      {
        v105._countAndFlagsBits = 0x746365666665202CLL;
        v105._object = 0xEB00000000203A73;

        v72 = Array.description.getter();
        v74 = v73;

        v75._countAndFlagsBits = v72;
        v75._object = v74;
        String.append(_:)(v75);

        v76._countAndFlagsBits = 41;
        v76._object = 0xE100000000000000;
        String.append(_:)(v76);
        countAndFlagsBits = v105._countAndFlagsBits;
        object = v105._object;
      }

      else
      {
        countAndFlagsBits = 41;
      }

      v79 = v96;
      v78 = v97;
      v80 = object;
      String.append(_:)(*&countAndFlagsBits);

      v81 = sub_1000153E0(v106, v107, &v108);

      *(v40 + 64) = v81;
      v82 = v87;
      _os_log_impl(&_mh_execute_header, v87, v93, "Show with %{private}s; State: .%s; Event: (.%s, .%s, .%s, from: .%s) ==> %s", v40, 0x48u);
      swift_arrayDestroy();

      (*(v79 + 8))(v101, v78);
      return v69;
    }

    else
    {

      v90(v27, v9);
      (*(v96 + 8))(v37, v97);
    }
  }

  return v13;
}

uint64_t sub_1001F876C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_1001F8788()
{
  result = qword_100576AE0;
  if (!qword_100576AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AE0);
  }

  return result;
}

unint64_t sub_1001F87DC()
{
  result = qword_100576AE8;
  if (!qword_100576AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AE8);
  }

  return result;
}

unint64_t sub_1001F8830()
{
  result = qword_100576AF0;
  if (!qword_100576AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576AF0);
  }

  return result;
}

uint64_t Migration.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts9Migration_date;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001F8AC8()
{
  if (*v0)
  {
    return 0x7364697575;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1001F8AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7364697575 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001F8BDC(uint64_t a1)
{
  v2 = sub_1001F8F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F8C18(uint64_t a1)
{
  v2 = sub_1001F8F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for Migration()
{
  result = qword_100576B68;
  if (!qword_100576B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Migration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100168088(&qword_100576B08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000044A0(a1, a1[3]);
  sub_1001F8F44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for Date();
  sub_1001F9384(&qword_100576B18, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC8Podcasts9Migration_uuids);
    v10[15] = 1;
    sub_100168088(&qword_10057C9C0);
    sub_1001F93CC(&qword_100576B20);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1001F8F44()
{
  result = qword_100576B10;
  if (!qword_100576B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576B10);
  }

  return result;
}

id Migration.init(from:)(void *a1)
{
  v3 = v1;
  v18 = type metadata accessor for Date();
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_100576B28);
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v14 - v8;
  sub_1000044A0(a1, a1[3]);
  sub_1001F8F44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004590(a1);
    type metadata accessor for Migration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v7;
    v10 = v16;
    LOBYTE(v21) = 0;
    sub_1001F9384(&qword_100576B30, &type metadata accessor for Date);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v10 + 32))(&v1[OBJC_IVAR____TtC8Podcasts9Migration_date], v6, v18);
    sub_100168088(&qword_10057C9C0);
    v20 = 1;
    sub_1001F93CC(&qword_100576B38);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v1[OBJC_IVAR____TtC8Podcasts9Migration_uuids] = v21;
    v13 = type metadata accessor for Migration();
    v19.receiver = v1;
    v19.super_class = v13;
    v3 = objc_msgSendSuper2(&v19, "init");
    (*(v15 + 8))(v9, v11);
    sub_100004590(a1);
  }

  return v3;
}

uint64_t sub_1001F9384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001F93CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(&qword_10057C9C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001F9438@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Migration());
  result = Migration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001F94B4()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100009F1C(0, &qword_1005729D0);
  static DispatchQoS.unspecified.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_1001F9384(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100576B00 = result;
  return result;
}

uint64_t sub_1001F9718(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 118;
  v36 = 0xE100000000000000;
  v34 = a1;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6974617267696D2DLL;
  v19._object = 0xEA00000000006E6FLL;
  String.append(_:)(v19);
  v31 = v16;
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v20 = *(v8 + 8);
  v32 = v7;
  v20(v10, v7);
  Date.init()();
  v21 = type metadata accessor for Migration();
  v22 = objc_allocWithZone(v21);
  (*(v4 + 16))(&v22[OBJC_IVAR____TtC8Podcasts9Migration_date], v6, v3);
  *&v22[OBJC_IVAR____TtC8Podcasts9Migration_uuids] = v30;
  v33.receiver = v22;
  v33.super_class = v21;

  v23 = objc_msgSendSuper2(&v33, "init");
  (*(v4 + 8))(v6, v3);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v35 = v23;
  sub_1001F9384(&unk_100576BC0, type metadata accessor for Migration);
  v24 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v26 = v25;
  Data.write(to:options:)();
  sub_1001F6D74(v24, v26);

  v27 = v32;
  v20(v13, v32);
  return (v20)(v31, v27);
}

id BookmarksMigrationRegistry.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookmarksMigrationRegistry();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001F9CDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void _s8Podcasts26BookmarksMigrationRegistryC08registerC02of2atySaySSG_SitFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v17 = v10;
    if (qword_100572760 != -1)
    {
      swift_once();
    }

    v16[1] = qword_100576B00;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    aBlock[4] = sub_1001FA8F8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E4568;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v18 = _swiftEmptyArrayStorage;
    sub_1001F9384(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0);
    sub_100015E58(&qword_10057D390, &unk_100575CD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v17);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v17 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v15 = v17;
  }
}

uint64_t _s8Podcasts26BookmarksMigrationRegistryC19migrationRegistered2atAA0C0CSgSi_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = 118;
  v22 = 0xE100000000000000;
  v20[1] = a1;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6974617267696D2DLL;
  v14._object = 0xEA00000000006E6FLL;
  String.append(_:)(v14);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v16 = Data.init(contentsOf:options:)();
  v18 = v17;
  type metadata accessor for Migration();
  sub_1001F9384(&qword_100576BB8, type metadata accessor for Migration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1001F6D74(v16, v18);

  v15(v8, v2);
  v15(v11, v2);
  return v21;
}

uint64_t _s8Podcasts26BookmarksMigrationRegistryC06deletecD02atySi_tFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = [objc_opt_self() sharedDocumentsDirectory];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v27[0] = 118;
  v27[1] = 0xE100000000000000;
  v26[2] = a1;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6974617267696D2DLL;
  v14._object = 0xEA00000000006E6FLL;
  String.append(_:)(v14);
  URL.appendingPathComponent(_:)();

  URL.appendingPathExtension(_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v16 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v27[0] = 0;
  LODWORD(v12) = [v16 removeItemAtURL:v18 error:v27];

  if (v12)
  {
    v20 = v27[0];
  }

  else
  {
    v21 = v27[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    sub_100168088(&unk_100574670);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100400790;
    v23 = _convertErrorToNSError(_:)();
    *(v22 + 56) = sub_100009F1C(0, &qword_100573598);
    *(v22 + 64) = sub_1001F6F40();
    *(v22 + 32) = v23;
    sub_100009F1C(0, &qword_1005748A0);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  v15(v8, v2);
  return (v15)(v11, v2);
}

uint64_t sub_1001FA744()
{
  result = type metadata accessor for Date();
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

unint64_t sub_1001FA7F4()
{
  result = qword_100576BA0;
  if (!qword_100576BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BA0);
  }

  return result;
}

unint64_t sub_1001FA84C()
{
  result = qword_100576BA8;
  if (!qword_100576BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BA8);
  }

  return result;
}

unint64_t sub_1001FA8A4()
{
  result = qword_100576BB0;
  if (!qword_100576BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100576BB0);
  }

  return result;
}

void sub_1001FA904(unint64_t a1, void *a2, int a3)
{
  v34 = a3;
  v33 = a2;
  v5 = *v3;
  v38 = swift_isaMask & *v3;
  v35 = v3;
  v6 = *((swift_isaMask & v5) + 0x50);
  v7 = type metadata accessor for Optional();
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v30 = a1;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return;
  }

  while (1)
  {
    v11 = 0;
    v31 = v10;
    v32 = v30 & 0xC000000000000001;
    v28 = v30 + 32;
    v29 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_4:
    if (v32)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (!v12)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (v11 < *(v29 + 16))
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      return;
    }
  }

  v40 = *(v28 + 8 * v11);
  swift_unknownObjectRetain();
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_10:
  v39 = v33;
  if (v34)
  {
    v39 = [v40 phase];
  }

  v37 = v13;
  v14 = qword_100576BD0;
  v15 = v35;
  swift_beginAccess();
  v16 = *(v15 + v14);
  if ((v16 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v16 = v41;
    v17 = v42;
    v19 = v43;
    v18 = v44;
    v20 = v45;
  }

  else
  {
    v21 = -1 << *(v16 + 32);
    v17 = v16 + 56;
    v19 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v16 + 56);

    v18 = 0;
  }

  v36 = v19;
  while (2)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      if (!v20)
      {
        v27 = v18;
        while (1)
        {
          v24 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v24 >= ((v19 + 64) >> 6))
          {
            goto LABEL_31;
          }

          v20 = *(v17 + 8 * v24);
          ++v27;
          if (v20)
          {
            v18 = v24;
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

      v24 = v18;
LABEL_20:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = *(v6 - 8);
      (*(v26 + 16))(v9, *(v16 + 48) + *(v26 + 72) * (v25 | (v24 << 6)), v6);
      goto LABEL_21;
    }

    if (__CocoaSet.Iterator.next()())
    {
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v26 = *(v6 - 8);
LABEL_21:
      (*(v26 + 56))(v9, 0, 1, v6);
      (*(*(v38 + 88) + 16))(v39, v40, v6);
      (*(v26 + 8))(v9, v6);
      continue;
    }

    break;
  }

LABEL_31:
  swift_unknownObjectRelease();
  (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
  sub_1000319D8();
  v11 = v37;
  if (v37 != v31)
  {
    goto LABEL_4;
  }
}

void sub_1001FAD8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_1001FAE10(uint64_t a1, void *a2, int a3)
{
  sub_100168088(&unk_100574680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007B0;
  *(inited + 32) = a1;
  swift_unknownObjectRetain();
  sub_1001FA904(inited, a2, a3);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_1001FAEE0(void *a1)
{
  sub_100168088(&unk_100576C80);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  sub_1001FAED4(v2);
}

id sub_1001FAF50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadManagerObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001FAFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100404108, v12);
}

uint64_t sub_1001FB128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v7[6] = type metadata accessor for MainActor();
  v7[7] = static MainActor.shared.getter();
  v8 = type metadata accessor for CarPlayController();
  v9 = swift_task_alloc();
  v7[8] = v9;
  *v9 = v7;
  v9[1] = sub_1001FB1FC;

  return BaseObjectGraph.inject<A>(_:)(v7 + 2, v8, v8);
}

uint64_t sub_1001FB1FC()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001FB3F4;
  }

  else
  {
    v4 = sub_1001FB358;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001FB358()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1001CB60C(v3, v1, v2, v4, ObjectType);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FB3F4()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001FB458(uint64_t a1, void *a2)
{
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v6 = v40 - v5;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v8 = v40 - v7;
  sub_100168088(&qword_100576C90);
  __chkstk_darwin();
  v10 = v40 - v9;
  type metadata accessor for ArtworkModel();
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 metadataObject];
  if (result)
  {
    v15 = result;
    v16 = [result podcastEpisode];

    if (!v16)
    {
      return 0;
    }

    v17 = [v16 title];
    if (!v17)
    {

      return 0;
    }

    v18 = v17;
    v41 = a1;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {

      return 0;
    }

    v40[2] = v2;
    MPModelPodcastEpisode.showArtworkData.getter();
    v23 = type metadata accessor for NowPlayingArtwork.Data();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v10, 1, v23) == 1)
    {

      sub_1001FBA78(v10);
      return 0;
    }

    if ((*(v24 + 88))(v10, v23) != enum case for NowPlayingArtwork.Data.model(_:))
    {

      (*(v24 + 8))(v10, v23);
      return 0;
    }

    (*(v24 + 96))(v10, v23);
    sub_1001FBAE0(v10, v13);
    type metadata accessor for CarPlayPageLoadCoordinator();
    BaseObjectGraph.inject<A>(_:)();
    v40[1] = aBlock[0];
    v25 = [v16 podcast];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 author];

      if (v27)
      {
        v28 = [v27 name];

        if (v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          v28 = v30;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v31 = String._bridgeToObjectiveC()();

    if (v28)
    {
      v32 = String._bridgeToObjectiveC()();
    }

    else
    {
      v32 = 0;
    }

    v33 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v31 detailText:v32 image:0 accessoryImage:0 accessoryType:0];

    CarPlayPageLoadCoordinator.loadImage(for:into:)(v13, v33);
    [v33 setExplicitContent:{objc_msgSend(v16, "isExplicitEpisode")}];
    *v6 = a2;
    v6[40] = 1;
    v34 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    swift_storeEnumTagMultiPayload();
    v35 = *(*(v34 - 8) + 56);
    v35(v6, 0, 1, v34);
    v35(v8, 1, 1, v34);
    v36 = type metadata accessor for CarPlayTemplateInfo(0);
    v37 = *(v36 + 20);
    v38 = a2;
    sub_1001FBB44(v6, v8);
    v8[v37] = 12;
    (*(*(v36 - 8) + 56))(v8, 0, 1, v36);
    sub_1001D2AD4(v8);
    aBlock[4] = sub_1001FBBB4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100372F30;
    aBlock[3] = &unk_1004E4648;
    v39 = _Block_copy(aBlock);

    [v33 setHandler:v39];

    _Block_release(v39);

    sub_1001A0664(v13);
    return v33;
  }

  return result;
}

uint64_t sub_1001FBA78(uint64_t a1)
{
  v2 = sub_100168088(&qword_100576C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FBAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FBB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_100575AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001FBBBC(uint64_t a1)
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

BOOL sub_1001FBC90()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 16) && (, dispatch thunk of ContextActionsConfiguration.context.getter(), , InteractionContext.page.getter(), (*(v6 + 8))(v8, v5), v9 = InteractionContext.Page.isShowPage.getter(), sub_1001B84E0(v4), (v9 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return *(v1 + 24) != 0;
  }
}

void sub_1001FBE08()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for URL();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreviewingPresentationHint();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShowOffer();
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = v0[3];
  if (v20)
  {
    swift_beginAccess();
    if (v0[2])
    {
      v41 = v10;

      v21 = ContextActionsConfiguration.objectGraph.getter();

      if (!v0[2])
      {
        goto LABEL_7;
      }

      v42 = v21;

      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

      v22 = type metadata accessor for PresentationSource();
      if ((*(*(v22 - 8) + 48))(v19, 1, v22))
      {

        v23 = &unk_10057BB90;
        v24 = v19;
LABEL_6:
        sub_100009104(v24, v23);
        return;
      }

      v25 = PresentationSource.viewController.getter();
      sub_100009104(v19, &unk_10057BB90);
      if (v25)
      {
        v40 = v25;
        v26 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
        swift_beginAccess();
        sub_1001A1560(v20 + v26, v13);
        type metadata accessor for PodcastContextActionDataType.Kind(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = v43;
          (*(v43 + 32))(v16, v13, v14);
          ShowOffer.storeUrl.getter();
          (*(v27 + 8))(v16, v14);
          v29 = v44;
          v28 = v45;
          v30 = (*(v44 + 48))(v4, 1, v45);
          v31 = v41;
          if (v30 == 1)
          {

            v23 = &qword_100574040;
            v24 = v4;
            goto LABEL_6;
          }

          (*(v29 + 32))(v7, v4, v28);
          v37 = v1[7];
          v43 = v1[8];
          sub_1000044A0(v1 + 4, v37);
          v38 = v46;
          (*(v46 + 104))(v31, enum case for PreviewingPresentationHint.push(_:), v47);
          v39 = v40;
          dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v38 + 8))(v31, v47);
          (*(v29 + 8))(v7, v28);
        }

        else
        {
          v32 = v1[7];
          v45 = v1[8];
          sub_1000044A0(v1 + 4, v32);
          v34 = v46;
          v33 = v47;
          v35 = v41;
          (*(v46 + 104))(v41, enum case for PreviewingPresentationHint.push(_:), v47);
          v36 = v40;
          dispatch thunk of EpisodeControllerProtocol.presentShowPage(asPartOf:for:from:presentationHint:suppressMetrics:)();

          (*(v34 + 8))(v35, v33);
        }
      }

      else
      {
LABEL_7:
      }
    }
  }
}

uint64_t sub_1001FC420()
{

  sub_100004590(v0 + 32);
  v1 = OBJC_IVAR____TtC8Podcasts28GoToShowPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GoToShowPodcastContextAction()
{
  result = qword_100576CC0;
  if (!qword_100576CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FC528()
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

uint64_t sub_1001FC5D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468210;
  v1._countAndFlagsBits = 0x6853206F74206F47;
  v1._object = 0xEA0000000000776FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001FC6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28GoToShowPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FC71C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.presentPodcast(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001FC834(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_1001FC8D8(uint64_t a1)
{
  result = sub_1001FC960(&qword_100576D60);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC91C(uint64_t a1)
{
  result = sub_1001FC960(&qword_100576D68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FC960(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GoToShowPodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001FC9A4()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v26 - v12;
  sub_100353EF8(v11);

  v15 = sub_1001FCD50(v14);

  if (v15)
  {
    v16 = [v15 shortURL];
    if (v16)
    {
      v17 = v16;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    }

    sub_1001B8A3C(v6, v9);
    type metadata accessor for URL();
    v20 = *(v18 - 8);
    if ((*(v20 + 48))(v9, 1, v18) != 1)
    {

      (*(v20 + 32))(v13, v9, v18);
      (*(v20 + 56))(v13, 0, 1, v18);
      goto LABEL_14;
    }

    v21 = [v15 shareURL];
    if (v21)
    {
      v22 = v21;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
      v15 = v22;
    }

    else
    {
      v23 = 1;
    }

    (*(v20 + 56))(v3, v23, 1, v18);
    sub_1001B8A3C(v3, v13);
  }

  else
  {
    v18 = type metadata accessor for URL();
    v19 = *(*(v18 - 8) + 56);
    v19(v9, 1, 1, v18);
    v19(v13, 1, 1, v18);
  }

  type metadata accessor for URL();
  if ((*(*(v18 - 8) + 48))(v9, 1, v18) != 1)
  {
    sub_1001FDD40(v9);
  }

LABEL_14:
  v24 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink;
  swift_beginAccess();
  sub_1001FDDA8(v13, v0 + v24);
  return swift_endAccess();
}

uint64_t sub_1001FCD50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EpisodeOffer();
  v64 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v13);
  v15 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  if (!a1)
  {
    return 0;
  }

  v63 = v2;
  v22 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v21;
  sub_1001EAFE4(v23, v18);
  sub_1001EB048(v18, v21, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(v21, v15);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      if (result != 3)
      {
        sub_1001EB048(v15, v6, type metadata accessor for EpisodeContextActionDataType.Reference);
        sub_1003979DC();
        v50 = v49;
        v51 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v49 selectedReferenceTime:0.0 selectedPlayerTime:0.0 currentPlayerTime:0.0];

        sub_1001EB0B0(v6, type metadata accessor for EpisodeContextActionDataType.Reference);
        sub_1001EB0B0(v24, type metadata accessor for EpisodeContextActionDataType);
        return v51;
      }

      v26 = sub_10039779C(*v15);

      if (v26 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_7;
        }
      }

      else
      {
        result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_7:
          if ((v26 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_10;
          }

          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v27 = *(v26 + 32);
LABEL_10:
            v28 = v27;

            if (*(v63 + 40))
            {
              v29 = 0.0;
            }

            else
            {
              v29 = *(v63 + 32);
            }

            if (*(v63 + 56))
            {
              v30 = 0.0;
            }

            else
            {
              v30 = *(v63 + 48);
            }

            [v28 playhead];
            v32 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v28 selectedReferenceTime:v29 selectedPlayerTime:v30 currentPlayerTime:v31];

            goto LABEL_57;
          }

          goto LABEL_70;
        }
      }

      goto LABEL_59;
    }

    v41 = *v15;
    if (*v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v42 = v63;
      if (result)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v42 = v63;
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:
        if ((v41 & 0xC000000000000001) != 0)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (*(v42 + 40))
          {
            v37 = 0.0;
          }

          else
          {
            v37 = *(v42 + 32);
          }

          if (*(v42 + 56))
          {
            v38 = 0.0;
          }

          else
          {
            v38 = *(v42 + 48);
          }

          v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_70:
            __break(1u);
            return result;
          }

          v37 = *(v42 + 32);
          v43 = v42;
          v44 = *(v42 + 40);
          v38 = *(v43 + 48);
          v45 = *(v43 + 56);
          v36 = *(v41 + 32);
          if (v45)
          {
            v38 = 0.0;
          }

          if (v44)
          {
            v37 = 0.0;
          }

          v46 = *(v41 + 32);
        }

        v47 = v46;

        [v47 playhead];
        v40 = v48;

        v24 = v21;
LABEL_56:
        v32 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v36 selectedReferenceTime:v37 selectedPlayerTime:v38 currentPlayerTime:v40];

LABEL_57:
        sub_1001EB0B0(v24, type metadata accessor for EpisodeContextActionDataType);
        return v32;
      }
    }

    v40 = 0.0;
    if (*(v42 + 40))
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v42 + 32);
    }

    v38 = *(v42 + 48);
    v60 = *(v42 + 56);

    v36 = 0;
    v61 = v60 == 0;
    v24 = v21;
    if (!v61)
    {
      v38 = 0.0;
    }

    goto LABEL_56;
  }

  if (!result)
  {
    v33 = *v15;

    if (!*(v33 + 16))
    {
LABEL_59:
      sub_1001EB0B0(v21, type metadata accessor for EpisodeContextActionDataType);

      return 0;
    }

    v34 = objc_opt_self();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v34 mediaItemForEpisodeWithUUID:v35];

    if (v36)
    {
      if (*(v63 + 40))
      {
        v37 = 0.0;
      }

      else
      {
        v37 = *(v63 + 32);
      }

      if (*(v63 + 56))
      {
        v38 = 0.0;
      }

      else
      {
        v38 = *(v63 + 48);
      }

      [v36 playhead];
      v40 = v39;
      goto LABEL_56;
    }

LABEL_49:
    sub_1001EB0B0(v21, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  if (!*(*v15 + 16))
  {

    goto LABEL_49;
  }

  v52 = v63;
  v53 = v64;
  (*(v64 + 16))(v9, *v15 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v7);

  (*(v53 + 32))(v12, v9, v7);
  v54 = sub_100294534();
  if (!v54)
  {
    (*(v53 + 8))(v12, v7);
    goto LABEL_49;
  }

  if (*(v52 + 40))
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *(v52 + 32);
  }

  if (*(v52 + 56))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = *(v52 + 48);
  }

  v57 = v54;
  [v54 playhead];
  v59 = [objc_allocWithZone(MTShareUtilDataSource) initWithPlayerItem:v57 selectedReferenceTime:v55 selectedPlayerTime:v56 currentPlayerTime:v58];

  (*(v53 + 8))(v12, v7);
  sub_1001EB0B0(v24, type metadata accessor for EpisodeContextActionDataType);
  return v59;
}

uint64_t sub_1001FD4E0()
{
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1001FDD40(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [objc_opt_self() generalPasteboard];
  URL.absoluteString.getter();
  v11 = String._bridgeToObjectiveC()();

  [v10 setString:v11];

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001FD6C8()
{

  v1 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1001FDD40(v0 + OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CopyLinkEpisodeContextAction()
{
  result = qword_100576D98;
  if (!qword_100576D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001FD7E0()
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

uint64_t sub_1001FD8D8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x80000001004692A0;
  v1._countAndFlagsBits = 0x6E694C2079706F43;
  v1._object = 0xE90000000000006BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000012;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001FD988()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1001FD9B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FDA30@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.copyEpisodeLink(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001FDB10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001FDB70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001FDBD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001FDC30(uint64_t a1)
{
  result = sub_1001FDCFC(&unk_100582230);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDC74(uint64_t a1)
{
  result = sub_1001FDCFC(&qword_100576F00);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDCB8(uint64_t a1)
{
  result = sub_1001FDCFC(&qword_100576F08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FDCFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CopyLinkEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001FDD40(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001FDDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1001FDE18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v68 = a3;
  v69 = a1;
  v4 = type metadata accessor for FlowPresentationHints();
  v60 = *(v4 - 8);
  v61 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FlowDestination();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v78._object = 0xE000000000000000;
  v9._object = 0x80000001004692F0;
  v9._countAndFlagsBits = 0xD000000000000025;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v78._countAndFlagsBits = 0;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v78);
  countAndFlagsBits = v11._countAndFlagsBits;

  v12 = [v7 mainBundle];
  v79._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000002ELL;
  v13._object = 0x8000000100469320;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v79._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v79);

  v71 = sub_100168088(&unk_100574670);
  v15 = swift_allocObject();
  v70 = xmmword_100400790;
  *(v15 + 16) = xmmword_100400790;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();
  v17 = v16;

  v18 = [v7 mainBundle];
  v80._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000033;
  v19._object = 0x8000000100469350;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v80._countAndFlagsBits = 0;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v80);
  v63 = v21._countAndFlagsBits;

  v22 = [v7 mainBundle];
  v81._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000036;
  v23._object = 0x8000000100469390;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v81);
  object = v25._object;
  v66 = v25._countAndFlagsBits;

  countAndFlagsBits = v11._object;
  v26 = String._bridgeToObjectiveC()();
  v62 = v17;
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:1];

  v29 = swift_allocObject();
  v31 = v67;
  v30 = v68;
  *(v29 + 16) = v67;
  *(v29 + 24) = v30;

  v63 = v21._object;
  v32 = String._bridgeToObjectiveC()();
  v76 = sub_1001FE6D0;
  v77 = v29;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_1002E8240;
  v75 = &unk_1004E4840;
  v33 = _Block_copy(&aBlock);

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  [v28 addAction:v35];
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v30;

  v37 = String._bridgeToObjectiveC()();
  v76 = sub_1001FE6FC;
  v77 = v36;
  aBlock = _NSConcreteStackBlock;
  v73 = 1107296256;
  v74 = sub_1002E8240;
  v75 = &unk_1004E4890;
  v38 = _Block_copy(&aBlock);

  v39 = [v34 actionWithTitle:v37 style:0 handler:v38];
  _Block_release(v38);

  [v28 addAction:v39];
  static os_log_type_t.default.getter();
  sub_1001FE728();
  v40 = static OS_os_log.restore.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = v70;
  *(v41 + 56) = &type metadata for Int;
  *(v41 + 64) = &protocol witness table for Int;
  *(v41 + 32) = v69;
  os_log(_:dso:log:_:_:)();

  if (UIApp)
  {
    v42 = UIApp;

    v43 = UIResponder.nearestFlowController.getter();

    if (v43)
    {
      v44 = v56;
      *v56 = v28;
      v45 = v57;
      v46 = v59;
      (*(v57 + 104))(v44, enum case for FlowDestination.viewController(_:), v59);
      swift_getObjectType();
      v47 = v28;
      v48 = v58;
      static FlowPresentationHints.default.getter();
      dispatch thunk of FlowController.show(destination:hints:referrer:)();

      swift_unknownObjectRelease();
      (*(v60 + 8))(v48, v61);
      (*(v45 + 8))(v44, v46);
    }

    else
    {
      v49 = [objc_opt_self() sharedApplication];
      v50 = [v49 delegate];

      if (v50)
      {
        if ([v50 respondsToSelector:"window"])
        {
          v51 = [v50 window];
          swift_unknownObjectRelease();
          v50 = [v51 rootViewController];
        }

        else
        {
          swift_unknownObjectRelease();
          v50 = 0;
        }
      }

      v52 = [v50 presentedViewController];
      if (!v52)
      {
        v53 = v50;
        v52 = v50;
      }

      static os_log_type_t.error.getter();
      v54 = static OS_os_log.restore.getter();
      os_log(_:dso:log:_:_:)();

      if (v52)
      {
        v55 = v52;
        [v55 presentViewController:v28 animated:1 completion:0];
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1001FE728()
{
  result = qword_1005748A0;
  if (!qword_1005748A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005748A0);
  }

  return result;
}

void sub_1001FE774()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[10];
    type metadata accessor for EpisodeOfferStateCenter();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v0[3] = v3;
  }
}

uint64_t sub_1001FE7F8()
{
  if (*(v0 + 24) && *(v0 + 16))
  {

    if ((sub_100396F64() & 1) == 0)
    {
      result = sub_1001EA484();
      v2 = result;
      v3 = *(result + 16);
      if (v3)
      {
        v4 = 0;
        v5 = result + 48;
        v6 = _swiftEmptyArrayStorage;
        v19 = result + 48;
        do
        {
          v20 = v6;
          v7 = (v5 + 24 * v4);
          v8 = v4;
          while (1)
          {
            if (v8 >= *(v2 + 16))
            {
              __break(1u);
              return result;
            }

            v9 = *(v7 - 2);
            v10 = *(v7 - 1);
            v4 = v8 + 1;
            v11 = *v7;
            sub_100200164(v9, v10, *v7);
            if (static ModernEpisodeDownloadState.== infix(_:_:)())
            {
              break;
            }

            result = sub_10020017C(v9, v10, v11);
            v7 += 24;
            ++v8;
            if (v3 == v4)
            {
              v6 = v20;
              goto LABEL_19;
            }
          }

          v6 = v20;
          result = swift_isUniquelyReferenced_nonNull_native();
          v22 = v20;
          if ((result & 1) == 0)
          {
            result = sub_1001A7598(0, v20[2] + 1, 1);
            v6 = v20;
          }

          v13 = v6[2];
          v12 = v6[3];
          v14 = v13 + 1;
          if (v13 >= v12 >> 1)
          {
            v21 = v13 + 1;
            v18 = v6[2];
            result = sub_1001A7598((v12 > 1), v13 + 1, 1);
            v13 = v18;
            v14 = v21;
            v6 = v22;
          }

          v6[2] = v14;
          v15 = &v6[3 * v13];
          v15[4] = v9;
          v15[5] = v10;
          *(v15 + 48) = v11;
          v5 = v19;
        }

        while (v3 - 1 != v8);
      }

      else
      {
        v6 = _swiftEmptyArrayStorage;
      }

LABEL_19:

      v16 = v6[2];

      if (v16)
      {
        v17 = sub_100397D28();

        return v17;
      }
    }
  }

  else
  {
    *(v0 + 128) = 0;
  }

  return 0;
}

void sub_1001FEA14()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v2);
  v4 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v64 - v9);
  __chkstk_darwin(v11);
  v13 = &v64 - v12;
  v14 = v0[2];
  if (!v14)
  {
    return;
  }

  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(&v14[v15], v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      sub_1001EB0B0(v13, type metadata accessor for EpisodeContextActionDataType);
      sub_1000044A0(v0 + 5, v0[8]);
      sub_1003982E0(0);
      dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
    }

    else
    {

      sub_1001EB0B0(v13, type metadata accessor for EpisodeContextActionDataType);
      sub_1000044A0(v0 + 5, v0[8]);
      sub_100398118(0);
      dispatch thunk of LibraryActionControllerProtocol.download(episodes:)();
    }

    return;
  }

  v67 = v0;
  if (EnumCaseMultiPayload == 2)
  {

    sub_1001EB0B0(v13, type metadata accessor for EpisodeContextActionDataType);
    sub_1001EAFE4(&v14[v15], v10);
    v27 = swift_getEnumCaseMultiPayload();
    v65 = v14;
    if (v27 != 2)
    {
      sub_1001EB0B0(v10, type metadata accessor for EpisodeContextActionDataType);
      v37 = _swiftEmptyArrayStorage;
      goto LABEL_64;
    }

    v18 = *v10;
    v71[0] = _swiftEmptyArrayStorage;
    if (!(v18 >> 62))
    {
      v28 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_27;
      }

      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v13, v4);
    type metadata accessor for RestrictionsController();

    if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || *(v4 + *(v2 + 28)) == 2)
    {
      goto LABEL_40;
    }

    v39 = ContentRating.rawValue.getter();
    v41 = v40;
    if (v39 == ContentRating.rawValue.getter() && v41 == v42)
    {
    }

    else
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
LABEL_40:
        sub_100200068((v0 + 11), &v68);
        if (v69)
        {
          sub_1000109E4(&v68, v71);
          sub_1000044A0(v71, v72);
          sub_100168088(&unk_10057A0B0);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_100400790;
          *(v33 + 32) = *v4;
          dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

          sub_100004428((v0 + 5), &v68);
          v34 = swift_allocObject();
          sub_1000109E4(&v68, v34 + 16);
          v35 = sub_10002BD04();
          v36 = static OS_dispatch_queue.main.getter();
          v69 = v35;
          v70 = &protocol witness table for OS_dispatch_queue;
          *&v68 = v36;
          Promise.then(perform:orCatchError:on:)();

          sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100004590(&v68);
          sub_100004590(v71);
        }

        else
        {
          sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);

          sub_1002000D8(&v68);
        }

        return;
      }
    }

    sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType.Reference);

    return;
  }

  sub_1001EB0B0(v13, type metadata accessor for EpisodeContextActionDataType);
  sub_1001EAFE4(&v14[v15], v7);
  v17 = swift_getEnumCaseMultiPayload();
  v65 = v14;
  if (v17 == 3)
  {
    v18 = *v7;
    v71[0] = _swiftEmptyArrayStorage;
    if (v18 >> 62)
    {
      goto LABEL_78;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v20 = 0;
      v1 = (v18 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v24 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v24)
        {
          v25 = v24;
          if (([v24 isExplicitEpisode] & 1) == 0)
          {

LABEL_20:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_10;
          }

          type metadata accessor for RestrictionsController();
          v26 = static RestrictionsController.isExplicitContentAllowed.getter();

          if (v26)
          {
            goto LABEL_20;
          }
        }

LABEL_10:
        ++v20;
        if (v23 == i)
        {
          v38 = v71[0];
          v1 = v67;
          goto LABEL_80;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (!v28)
        {
          break;
        }

LABEL_27:
        v29 = 0;
        v1 = &selRef_handleNotification_;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v29 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_59;
            }

            v30 = *(v18 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if ([v30 isExplicit] & 1) == 0 || (type metadata accessor for RestrictionsController(), (static RestrictionsController.isExplicitContentAllowed.getter()))
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v29;
          if (v32 == v28)
          {
            v37 = v71[0];
            goto LABEL_63;
          }
        }

        __break(1u);
      }

LABEL_62:
      v37 = _swiftEmptyArrayStorage;
LABEL_63:

LABEL_64:
      if (v37 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v18 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_97;
        }
      }

      if (v18 >= 1)
      {
        v45 = 0;
        v66 = xmmword_100400790;
        v46 = v67;
        do
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v50 = *(v37 + 8 * v45 + 32);
          }

          v51 = v50;
          sub_100200068((v46 + 11), v71);
          if (v72)
          {
            sub_1000044A0(v71, v72);
            sub_100168088(&unk_10057A0B0);
            v47 = swift_allocObject();
            *(v47 + 16) = v66;
            [v51 episodeStoreId];
            *(v47 + 32) = AdamID.init(rawValue:)();
            dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

            swift_allocObject();
            swift_weakInit();
            v48 = sub_10002BD04();
            v49 = static OS_dispatch_queue.main.getter();
            v69 = v48;
            v70 = &protocol witness table for OS_dispatch_queue;
            *&v68 = v49;
            Promise.then(perform:orCatchError:on:)();

            sub_100004590(&v68);
            sub_100004590(v71);
          }

          else
          {

            sub_1002000D8(v71);
          }

          ++v45;
        }

        while (v18 != v45);
LABEL_97:

        return;
      }

      __break(1u);
LABEL_78:
      ;
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_80:
  }

  else
  {
    sub_1001EB0B0(v7, type metadata accessor for EpisodeContextActionDataType);
    v38 = _swiftEmptyArrayStorage;
  }

  if (v38 >> 62)
  {
    v52 = _CocoaArrayWrapper.endIndex.getter();
    if (!v52)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v52 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_97;
    }
  }

  if (v52 >= 1)
  {
    v53 = 0;
    v66 = xmmword_100400790;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v54 = *(v38 + 8 * v53 + 32);
      }

      v55 = v54;
      v56 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (!v56 || (v57 = v56, v58 = MPModelObject.adamID.getter(), v60 = v59, v57, (v60 & 1) != 0))
      {
      }

      else
      {
        sub_100200068((v1 + 11), v71);
        if (v72)
        {
          sub_1000044A0(v71, v72);
          sub_100168088(&unk_10057A0B0);
          v61 = swift_allocObject();
          *(v61 + 16) = v66;
          *(v61 + 32) = v58;
          dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();
          v1 = v67;

          swift_allocObject();
          swift_weakInit();
          v62 = sub_10002BD04();
          v63 = static OS_dispatch_queue.main.getter();
          v69 = v62;
          v70 = &protocol witness table for OS_dispatch_queue;
          *&v68 = v63;
          Promise.then(perform:orCatchError:on:)();

          sub_100004590(&v68);
          sub_100004590(v71);
        }

        else
        {

          sub_1002000D8(v71);
        }
      }

      ++v53;
    }

    while (v52 != v53);
    goto LABEL_97;
  }

  __break(1u);
}

uint64_t sub_1001FF58C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(v1 + 16))
    {
      v3 = result;
      v4 = type metadata accessor for EpisodeOffer();
      v5 = *(v4 - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_1000044A0((v3 + 40), *(v3 + 64));
      sub_100168088(&qword_10057BBA0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100400790;
      (*(v5 + 16))(v7 + v6, v1 + v6, v4);
      dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1001FF6F0(uint64_t result, void *a2)
{
  v2 = *result;
  if (*(*result + 16))
  {
    v4 = type metadata accessor for EpisodeOffer();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_1000044A0(a2, a2[3]);
    sub_100168088(&qword_10057BBA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100400790;
    (*(v5 + 16))(v7 + v6, v2 + v6, v4);
    dispatch thunk of LibraryActionControllerProtocol.download(episodeOffers:)();
  }

  return result;
}

uint64_t sub_1001FF83C()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v12._object = 0xE000000000000000;
  v3._object = 0x80000001004694D0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12)._countAndFlagsBits;

  v6 = [v1 mainBundle];
  v13._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000027;
  v7._object = 0x80000001004694F0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v13)._countAndFlagsBits;

  if (*(v0 + 16))
  {

    v10 = sub_1003987E8();

    if (v10 != 1)
    {
      countAndFlagsBits = v9;
    }
  }

  return countAndFlagsBits;
}

uint64_t sub_1001FF98C()
{

  sub_100004590(v0 + 40);

  sub_1002000D8(v0 + 88);
  v1 = OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DownloadEpisodeContextAction()
{
  result = qword_100576FE8;
  if (!qword_100576FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001FFAAC()
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

uint64_t sub_1001FFB98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001FFC10@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.downloadEpisode(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

double sub_1001FFCF0@<D0>(uint64_t a1@<X8>)
{
  sub_1001FFF1C(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001FFD30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001FFD90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001FFDF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001FFE50(uint64_t a1)
{
  result = sub_1001FFED8(&unk_1005821B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FFE94(uint64_t a1)
{
  result = sub_1001FFED8(&qword_100577160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001FFED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DownloadEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1001FFF1C@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [objc_opt_self() mainBundle];
  v8._object = 0xE800000000000000;
  v8._countAndFlagsBits = 0x64616F6C6E776F44;
  v4._object = 0x80000001004694B0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8);

  *a1 = v2;
  result = 3.82472648e228;
  *(a1 + 8) = xmmword_1004043C0;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100200004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100200068(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002000D8(uint64_t a1)
{
  v2 = sub_100168088(&qword_100577168);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100200164(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_10020017C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t KeyProcessorPair.key.getter()
{
  v1 = *(v0 + OBJC_IVAR___MTKeyProcessorPair_key);

  return v1;
}

id KeyProcessorPair.__allocating_init(key:processor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___MTKeyProcessorPair_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___MTKeyProcessorPair_processor] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id KeyProcessorPair.init(key:processor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___MTKeyProcessorPair_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___MTKeyProcessorPair_processor] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

char *MultiKeySyncProcessor.init(keysAndProcessors:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_26:
    v23 = _swiftEmptyArrayStorage;
    *&v1[OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys] = _swiftEmptyArrayStorage;

LABEL_27:
    v43 = v23;
    sub_100168088(&qword_100577188);
    sub_100168088(&qword_100577190);
    sub_100201EEC();
    *&v2[OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey] = Dictionary.init<A>(probablyUniqueKeysWithValues:)();
    v42.receiver = v2;
    v42.super_class = ObjectType;
    return objc_msgSendSuper2(&v42, "init");
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  result = sub_1001A7364(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v40 = ObjectType;
    v41 = v1;
    v7 = v43;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = *(v9 + OBJC_IVAR___MTKeyProcessorPair_key);
        v11 = *(v9 + OBJC_IVAR___MTKeyProcessorPair_key + 8);

        swift_unknownObjectRelease();
        v43 = v7;
        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001A7364((v12 > 1), v13 + 1, 1);
          v7 = v43;
        }

        ++v8;
        v7[2] = v13 + 1;
        v14 = &v7[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = v5;
      do
      {
        v17 = (*v15 + OBJC_IVAR___MTKeyProcessorPair_key);
        v19 = *v17;
        v18 = v17[1];
        v43 = v7;
        v21 = v7[2];
        v20 = v7[3];

        if (v21 >= v20 >> 1)
        {
          sub_1001A7364((v20 > 1), v21 + 1, 1);
          v7 = v43;
        }

        v7[2] = v21 + 1;
        v22 = &v7[2 * v21];
        v22[4] = v19;
        v22[5] = v18;
        ++v15;
        --v16;
      }

      while (v16);
    }

    *&v41[OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys] = v7;
    v43 = _swiftEmptyArrayStorage;
    sub_1001A7718(0, v5 & ~(v5 >> 63), 0);
    v23 = _swiftEmptyArrayStorage;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v26 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_key);
        v27 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_key + 8);
        v28 = *(v25 + OBJC_IVAR___MTKeyProcessorPair_processor);

        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v43 = v23;
        v30 = v23[2];
        v29 = v23[3];
        if (v30 >= v29 >> 1)
        {
          sub_1001A7718((v29 > 1), v30 + 1, 1);
          v23 = v43;
        }

        ++v24;
        v23[2] = v30 + 1;
        v31 = &v23[3 * v30];
        v31[4] = v26;
        v31[5] = v27;
        v31[6] = v28;
      }

      while (v5 != v24);
    }

    else
    {
      v32 = 32;
      do
      {
        v33 = *(a1 + v32);
        v35 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_key);
        v34 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_key + 8);
        v36 = *(v33 + OBJC_IVAR___MTKeyProcessorPair_processor);
        v43 = v23;
        v38 = v23[2];
        v37 = v23[3];

        swift_unknownObjectRetain();
        if (v38 >= v37 >> 1)
        {
          sub_1001A7718((v37 > 1), v38 + 1, 1);
          v23 = v43;
        }

        v23[2] = v38 + 1;
        v39 = &v23[3 * v38];
        v39[4] = v35;
        v39[5] = v34;
        v39[6] = v36;
        v32 += 8;
        --v5;
      }

      while (v5);
    }

    ObjectType = v40;
    v2 = v41;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *MultiKeySyncProcessor.dirtyKeys.getter()
{
  v0 = sub_100200B54();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*&v5[OBJC_IVAR___MTKeyProcessorPair_processor] hasLocalChanges])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = v1 & 0xC000000000000001;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_14:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v8 = _swiftEmptyArrayStorage[2];
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_30:

    return _swiftEmptyArrayStorage;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_17:
  result = sub_1001A7364(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v12 = v11;
      v14 = *&v11[OBJC_IVAR___MTKeyProcessorPair_key];
      v13 = *&v11[OBJC_IVAR___MTKeyProcessorPair_key + 8];

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001A7364((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v14;
      v17[5] = v13;
    }

    while (v8 != v10);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void *sub_100200B54()
{
  v1 = *(v0 + OBJC_IVAR___MTMultiKeySyncProcessor_orderedKeys);
  result = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  v3 = *(v1 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = v0;
  v5 = 0;
  v6 = OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey;
  v7 = v1 + 40;
  do
  {
    v19 = result;
    v8 = (v7 + 16 * v5);
    v9 = v5;
    while (1)
    {
      if (v9 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v4 + v6);
      if (*(v10 + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      v8 += 2;
      if (v3 == v9)
      {
        return v19;
      }
    }

    v12 = *(v8 - 1);
    v11 = *v8;

    v13 = sub_10000F9C0(v12, v11, sub_10000FA44);
    if ((v14 & 1) == 0)
    {

      goto LABEL_5;
    }

    v15 = *(*(v10 + 56) + 8 * v13);
    v16 = type metadata accessor for KeyProcessorPair();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR___MTKeyProcessorPair_key];
    *v18 = v12;
    v18[1] = v11;
    *&v17[OBJC_IVAR___MTKeyProcessorPair_processor] = v15;
    v20.receiver = v17;
    v20.super_class = v16;
    swift_unknownObjectRetain();
    result = objc_msgSendSuper2(&v20, "init");
    if (!result)
    {
      goto LABEL_5;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v5 = v9 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v21;
    v7 = v1 + 40;
  }

  while (v3 - 1 != v9);
  return result;
}

Class sub_100200D24(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

char *MultiKeySyncProcessor.cleanKeys.getter()
{
  v0 = sub_100200B54();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_28;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = OBJC_IVAR___MTKeyProcessorPair_processor;
      if (([*&v5[OBJC_IVAR___MTKeyProcessorPair_processor] hasLocalChanges] & 1) != 0 || (objc_msgSend(*&v6[v8], "requiresNextGetTransaction") & 1) == 0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_15:

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v9 = _swiftEmptyArrayStorage[2];
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_31:

    return _swiftEmptyArrayStorage;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_18:
  result = sub_1001A7364(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = _swiftEmptyArrayStorage[v11 + 4];
      }

      v13 = v12;
      v15 = *&v12[OBJC_IVAR___MTKeyProcessorPair_key];
      v14 = *&v12[OBJC_IVAR___MTKeyProcessorPair_key + 8];

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1001A7364((v16 > 1), v17 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v17 + 1;
      v18 = &_swiftEmptyArrayStorage[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
    }

    while (v9 != v11);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t MultiKeySyncProcessor.processor(for:)(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey) + 16) && (sub_10000F9C0(a1, a2, sub_10000FA44), (v3 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002011F0(SEL *a1)
{
  v3 = *(v1 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  for (i = 0; v6; i |= result)
  {
    v11 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    result = [*(*(v3 + 56) + ((v11 << 9) | (8 * v12))) *a1];
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return i & 1;
    }

    v6 = *(v3 + 64 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MultiKeySyncProcessor.version(forGetTransaction:key:)(MZKeyValueStoreTransaction *forGetTransaction, Swift::String key)
{
  v3 = *(v2 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (*(v3 + 16) && (v5 = sub_10000F9C0(key._countAndFlagsBits, key._object, sub_10000FA44), (v6 & 1) != 0) && (v7 = *(*(v3 + 56) + 8 * v5), swift_unknownObjectRetain(), v8 = String._bridgeToObjectiveC()(), v9 = [v7 versionForGetTransaction:forGetTransaction key:v8], v8, swift_unknownObjectRelease(), v9))
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = v12;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t MultiKeySyncProcessor.data(forSetTransaction:key:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_10000F9C0(a2, a3, sub_10000FA44);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v5 + 56) + 8 * v8);
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dataForSetTransaction:a1 key:v11 version:a4];

  swift_unknownObjectRelease();
  if (!v12)
  {
    return 0;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v13;
}

uint64_t sub_1002016BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1002018E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSString a7, void *a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v12 = *(v11 + OBJC_IVAR___MTMultiKeySyncProcessor_processorsByKey);
  if (*(v12 + 16))
  {
    v17 = sub_10000F9C0(a4, a5, sub_10000FA44);
    if (v18)
    {
      v19 = *(*(v12 + 56) + 8 * v17);
      swift_unknownObjectRetain();
      if (a3 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      v21 = String._bridgeToObjectiveC()();
      if (a7)
      {
        a7 = String._bridgeToObjectiveC()();
      }

      if (a8)
      {
        v22[4] = a8;
        v22[5] = a9;
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 1107296256;
        v22[2] = sub_1002016BC;
        v22[3] = a10;
        a8 = _Block_copy(v22);
      }

      [v19 *a11];
      swift_unknownObjectRelease();
      _Block_release(a8);
    }
  }
}

Swift::Void __swiftcall MultiKeySyncProcessor.transaction(_:didProcessResponseWithDomainVersion:)(MZKeyValueStoreTransaction *_, Swift::String_optional didProcessResponseWithDomainVersion)
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();

  SyncKeysRepository.podcastsDomainVersion.setter();
}

unint64_t sub_100201EEC()
{
  result = qword_100577198;
  if (!qword_100577198)
  {
    sub_100168310(&qword_100577190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577198);
  }

  return result;
}

unint64_t sub_100201F98(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100202A40(a1, v2);
}

unint64_t sub_100202028(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1002023F0(a1, v4);
}

unint64_t sub_10020206C(uint64_t a1)
{
  type metadata accessor for MediaRequest.ContentType();
  sub_100202CC0(&unk_100579CA0, &type metadata accessor for MediaRequest.ContentType);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1002024B8(a1, v2);
}

unint64_t sub_100202104(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100202CC0(&unk_100577210, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100202678(a1, v2);
}

unint64_t sub_1002021B8(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_100577208);
}

unint64_t sub_100202208(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_100577200);
}

unint64_t sub_100202258(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &qword_1005748F0);
}

unint64_t sub_1002022A8(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  EpisodeStateIdentifier.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100202B44(a1, a2, a3 & 1, v6);
}

unint64_t sub_100202334(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return sub_100202974(a1, v4, &unk_100573F30);
}

unint64_t sub_100202384(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100202C48(a1 & 1, v2);
}

unint64_t sub_1002023F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10016BE40(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10016BE9C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1002024B8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for MediaRequest.ContentType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_100202CC0(&qword_100577220, &type metadata accessor for MediaRequest.ContentType);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100202678(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    v37 = a1 + 24;
    v38 = v8 + 24;
    do
    {
      sub_1001BE270(*(v2 + 48) + v12 * v10, v8);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      v13 = v5[5];
      v14 = *&v8[v13];
      v15 = *&v8[v13 + 8];
      v16 = (a1 + v13);
      v17 = v14 == *v16 && v15 == v16[1];
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_4;
      }

      if ((static Date.== infix(_:_:)() & 1) == 0 || *&v8[v5[7]] != *(a1 + v5[7]))
      {
        goto LABEL_4;
      }

      v18 = v5[8];
      v19 = *&v8[v18];
      v20 = *&v8[v18 + 8];
      v21 = v8[v18 + 16];
      v22 = a1 + v18;
      v23 = *(v22 + 16);
      if (v19 != *v22 || v20 != *(v22 + 8))
      {
        v25 = *(v22 + 16);
        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = v25;
        if ((v26 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (v21)
      {
        v27 = 1936484398;
      }

      else
      {
        v27 = 0x7261646E6174732ELL;
      }

      if (v21)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE900000000000064;
      }

      if (v23)
      {
        v29 = 1936484398;
      }

      else
      {
        v29 = 0x7261646E6174732ELL;
      }

      if (v23)
      {
        v30 = 0xE400000000000000;
      }

      else
      {
        v30 = 0xE900000000000064;
      }

      if (v27 == v29 && v28 == v30)
      {
      }

      else
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!sub_100210614(&v8[v5[9]], a1 + v5[9]))
      {
        goto LABEL_4;
      }

      v32 = v5[10];
      v33 = *&v38[v32];
      v34 = *(v37 + v32);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          if (v34 == 3)
          {
LABEL_50:
            sub_1001BE660(v8);
            return v10;
          }
        }

        else
        {
          if (v33 != 4)
          {
LABEL_3:
            if ((v34 - 1) >= 4)
            {
              goto LABEL_50;
            }

            goto LABEL_4;
          }

          if (v34 == 4)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v33 == 1)
      {
        if (v34 == 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v33 != 2)
        {
          goto LABEL_3;
        }

        if (v34 == 2)
        {
          goto LABEL_50;
        }
      }

LABEL_4:
      sub_1001BE660(v8);
      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100202974(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_100009F1C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100202A40(uint64_t a1, uint64_t a2)
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

unint64_t sub_100202B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      sub_1001C1A3C(*v8, v10, v11);
      v12 = static EpisodeStateIdentifier.== infix(_:_:)();
      sub_1001C1A4C(v9, v10, v11);
      if (v12)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_100202C48(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100202CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CarPlayCyclePlaybackRateActionImplementation.perform(_:asPartOf:)(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for PlaybackController.TransportCommand();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_100202E40;

  return BaseObjectGraph.inject<A>(_:)(v1 + 7, v3, v3);
}

uint64_t sub_100202E40()
{
  v2 = *v1;
  v2[15] = v0;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[16] = v4;
  v2[17] = v3;
  if (v0)
  {
    v5 = sub_1002032E0;
  }

  else
  {
    v5 = sub_100202FA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100202FA0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[18] = v0[7];
  *v1 = 256;
  (*(v2 + 104))(v1, enum case for PlaybackController.TransportCommand.increasePlaybackSpeed(_:), v3);
  v0[5] = v3;
  v0[6] = &protocol witness table for PlaybackController.TransportCommand;
  v4 = sub_10000E680(v0 + 2);
  (*(v2 + 16))(v4, v1, v3);
  v7 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1002030C4;

  return (v7)(v0 + 2, 0);
}

uint64_t sub_1002030C4(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_10020334C;
  }

  else
  {

    sub_100004590(v4 + 16);
    v5 = *(v4 + 128);
    v6 = *(v4 + 136);
    v7 = sub_1002031F0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002031F0()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = type metadata accessor for ActionOutcome();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002032E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020334C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));

  v4 = v0[1];

  return v4();
}

unint64_t sub_1002033F8()
{
  result = qword_100577228;
  if (!qword_100577228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577228);
  }

  return result;
}

uint64_t sub_10020344C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001C51C;

  return CarPlayCyclePlaybackRateActionImplementation.perform(_:asPartOf:)(a1);
}

unint64_t sub_1002034F0()
{
  result = qword_100577230;
  if (!qword_100577230)
  {
    type metadata accessor for CarPlayCyclePlaybackRateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577230);
  }

  return result;
}

uint64_t sub_100203548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100203658();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

uint64_t initializeBufferWithCopyOfBuffer for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarPlayCyclePlaybackRateActionImplementation.PerformError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10020360C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100203628(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_100203658()
{
  result = qword_100577238;
  if (!qword_100577238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100577238);
  }

  return result;
}

void NowPlayingTabController.perform(testCase:runner:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PerformanceTestCase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = PerformanceTestCase.name.getter();
  v10 = v8;
  if (v9 == 0xD000000000000016 && 0x80000001004696B0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 0xD00000000000001FLL && 0x80000001004696D0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v7, v4);
    *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v13 = v2;
    v14 = sub_100204EF8;
LABEL_8:
    sub_100204C6C(v14, v12);

    return;
  }

  if (v9 == 0xD00000000000001BLL && 0x80000001004696F0 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v9 == 0xD000000000000024 && 0x8000000100469710 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v15, v7, v4);
    *(v12 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v16 = v2;
    v14 = sub_100204224;
    goto LABEL_8;
  }

  if (UIApp)
  {
    v17 = UIApp;

    PerformanceTestCase.name.getter();
    v18 = String._bridgeToObjectiveC()();

    v21 = String._bridgeToObjectiveC()();
    [v17 failedTest:v18 withFailure:v21];

    v19 = v21;
  }

  else
  {
    __break(1u);
  }
}

void sub_100203A48(uint64_t a1, void *a2)
{
  v4 = sub_100168088(&unk_100577240);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (UIApp)
  {
    v7 = UIApp;
    PerformanceTestCase.name.getter();
    v8 = String._bridgeToObjectiveC()();

    [v7 startedTest:v8];

    v9 = (*((swift_isaMask & *a2) + 0x158))();
    if (v9)
    {
      if (object_getClass(v9) == _TtC8Podcasts19NowPlayingBootstrap)
      {
        v10 = type metadata accessor for NowPlayingHostedContentID();
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
        sub_10002B22C();

        dispatch thunk of NowPlayingViewModel.updateContentSelection(_:animated:)();
        swift_unknownObjectRelease();

        sub_100204FB0(v6);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_100203C30(a1, 0, 5);
  }

  else
  {
    __break(1u);
  }
}

void sub_100203C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (a2 < a3)
  {
    v34 = a2;
    v35 = a3;
    v36 = v3;
    if (UIApp)
    {
      v10 = UIApp;
      v11 = String._bridgeToObjectiveC()();
      PerformanceTestCase.name.getter();
      v12 = String._bridgeToObjectiveC()();

      [v10 startedSubTest:v11 forTest:v12];

      v13 = UIApp;
      if (UIApp)
      {
        v32 = *(v8 + 16);
        v32(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
        v14 = *(v8 + 80);
        v15 = swift_allocObject();
        v33 = *(v8 + 32);
        v33(v15 + ((v14 + 16) & ~v14), &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        aBlock[4] = sub_100205018;
        aBlock[5] = v15;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000F038;
        aBlock[3] = &unk_1004E4BB8;
        v16 = _Block_copy(aBlock);
        v17 = v13;

        [v17 installCACommitCompletionBlock:v16];
        _Block_release(v16);

        v18 = v36;
        if ((*((swift_isaMask & *v36) + 0x158))())
        {
          v30 = v19;
          ObjectType = swift_getObjectType();
          v32(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
          v20 = (v14 + 24) & ~v14;
          v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
          v22 = swift_allocObject();
          *(v22 + 16) = v18;
          v33(v22 + v20, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
          v23 = v35;
          *(v22 + v21) = v34;
          *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
          v24 = v30;
          v25 = *(v30 + 8);
          v26 = v18;
          v25(1, sub_100205044, v22, ObjectType, v24);

          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!UIApp)
  {
    goto LABEL_12;
  }

  v27 = UIApp;
  PerformanceTestCase.name.getter();
  v36 = String._bridgeToObjectiveC()();

  [v27 finishedTest:v36];

  v28 = v36;
}

void sub_100204034(uint64_t a1, void *a2)
{
  v4 = sub_100168088(&unk_100577240);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  if (UIApp)
  {
    v7 = UIApp;
    PerformanceTestCase.name.getter();
    v8 = String._bridgeToObjectiveC()();

    [v7 startedTest:v8];

    v9 = (*((swift_isaMask & *a2) + 0x158))();
    if (v9)
    {
      if (object_getClass(v9) == _TtC8Podcasts19NowPlayingBootstrap)
      {
        static NowPlayingHostedContentID.queue.getter();
        v10 = type metadata accessor for NowPlayingHostedContentID();
        (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
        sub_10002B22C();

        dispatch thunk of NowPlayingViewModel.updateContentSelection(_:animated:)();
        swift_unknownObjectRelease();

        sub_100204FB0(v6);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_100203C30(a1, 0, 5);
  }

  else
  {
    __break(1u);
  }
}

void sub_10020423C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIApp)
  {
    v10 = UIApp;
    v11 = String._bridgeToObjectiveC()();
    PerformanceTestCase.name.getter();
    v12 = String._bridgeToObjectiveC()();

    [v10 finishedSubTest:v11 forTest:v12 waitForCommit:1];

    (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = (v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    (*(v7 + 32))(v16 + v13, v9, v6);
    *(v16 + v14) = a2;
    v17 = v20;
    *(v16 + v15) = v19;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v18 = a2;
    sub_100204C6C(sub_10020507C, v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_100204438(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v7 = type metadata accessor for PerformanceTestCase();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v10 = UIApp;
  v11 = String._bridgeToObjectiveC()();
  v35 = a1;
  PerformanceTestCase.name.getter();
  v12 = String._bridgeToObjectiveC()();

  [v10 startedSubTest:v11 forTest:v12];

  v13 = UIApp;
  if (!UIApp)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v14 = *(v8 + 16);
  v14(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v7);
  v15 = *(v8 + 80);
  v16 = swift_allocObject();
  v31 = *(v8 + 32);
  v31(v16 + ((v15 + 16) & ~v15), &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_10020511C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4C80;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  [v18 installCACommitCompletionBlock:v17];
  _Block_release(v17);

  v19 = v34;
  if ((*((swift_isaMask & *v34) + 0x158))())
  {
    v29 = v20;
    ObjectType = swift_getObjectType();
    v14(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v7);
    v21 = (v15 + 24) & ~v15;
    v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    v31(v23 + v21, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v24 = v33;
    *(v23 + v22) = v32;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v25 = v29;
    v26 = *(v29 + 16);
    v27 = v19;
    v26(1, sub_1002052C0, v23, ObjectType, v25);

    swift_unknownObjectRelease();
  }
}

void sub_1002047C8()
{
  if (!UIApp)
  {
    __break(1u);
    goto LABEL_7;
  }

  v0 = UIApp;
  v1 = String._bridgeToObjectiveC()();
  PerformanceTestCase.name.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 finishedSubTest:v1 forTest:v2];

  if (!UIApp)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = UIApp;
  v4 = String._bridgeToObjectiveC()();
  PerformanceTestCase.name.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 startedSubTest:v4 forTest:v5];
}

uint64_t sub_1002048F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v21 = a6;
  v9 = type metadata accessor for PerformanceTestCase();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a2, v9, v12);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v14, v13, v9);
  *(v17 + v15) = a1;
  *(v17 + v16) = a3;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  v18 = a1;
  sub_100204C6C(v21, v17);
}

void sub_100204A64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  v6 = type metadata accessor for PerformanceTestCase();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (UIApp)
  {
    v9 = UIApp;
    v10 = String._bridgeToObjectiveC()();
    PerformanceTestCase.name.getter();
    v11 = String._bridgeToObjectiveC()();

    [v9 finishedSubTest:v10 forTest:v11 waitForCommit:1];

    (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v13 = swift_allocObject();
    v14 = v17;
    *(v13 + 2) = v16;
    *(v13 + 3) = v14;
    *(v13 + 4) = a2;
    (*(v7 + 32))(&v13[v12], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v15 = a2;
    sub_100204C6C(sub_10020550C, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100204C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  sub_10002BD04();
  v15[0] = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E4D20;
  _Block_copy(aBlock);
  v15[1] = _swiftEmptyArrayStorage;
  sub_1001D293C();

  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  DispatchWorkItem.init(flags:block:)();

  v13 = v15[0];
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v12)(v11, v5);
}

uint64_t sub_100204F10(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_100204FB0(uint64_t a1)
{
  v2 = sub_100168088(&unk_100577240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100205094()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002051E8()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002052E0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PerformanceTestCase() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1002048F0(*(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_100205390()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100205454(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PerformanceTestCase() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v6, v7, v8);
}

uint64_t sub_10020550C()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v4 = *(v1 - 8);
  result = v1 - 8;
  v3 = v4;
  v5 = *(v0 + 16);
  if (v5 < *(v0 + 24))
  {
    return sub_100203C30(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)), v5 + 1);
  }

  return result;
}

id sub_100205590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewControllerProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002055C8()
{
  sub_1001D4C68(2, 0xD000000000000018, 0x8000000100465C70, v2);
  v0 = objc_allocWithZone(sub_100168088(&qword_1005772D8));
  return UIHostingController.init(rootView:)();
}

void sub_100205638()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = objc_allocWithZone(MTiOSPlaylistSettingsViewController);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithPlaylistUuid:v4 library:v2];

  if (v5)
  {
    [v5 setDelegate:v1];
  }

  else
  {
    __break(1u);
  }
}

id sub_1002056F8(uint64_t a1)
{
  v1 = [objc_opt_self() defaultViewControllerWithLibraryActionControllerBridge:a1];

  return v1;
}

uint64_t sub_100205748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowSettingsView();
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100205938();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v8 = [ObjCClassFromMetadata sharedInstance];
  v9 = sub_100021698();
  v16[3] = &type metadata for ShowSettingsController;
  v16[4] = &off_1004E9A68;
  v10 = swift_allocObject();
  v16[0] = v10;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = v9;

  v11 = v8;
  sub_100262390(v16, v6);
  v12 = objc_allocWithZone(sub_100168088(&unk_1005772E0));
  v13 = UIHostingController.init(rootView:)();

  return v13;
}

char *sub_100205890(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MTNotificationSettingsViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = (*&v4[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController] + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid);
  *v6 = a1;
  v6[1] = a2;
  swift_bridgeObjectRetain_n();

  return v4;
}

unint64_t sub_100205938()
{
  result = qword_100573E00;
  if (!qword_100573E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100573E00);
  }

  return result;
}

uint64_t sub_100205984()
{
  sub_100168088(&qword_100574690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  *(inited + 32) = static String.pageHighlightShelfID.getter();
  *(inited + 40) = v1;
  *(inited + 48) = static String.loadingShelfID.getter();
  *(inited + 56) = v2;
  v3 = sub_10016B918(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_1005772F0 = v3;
  return result;
}

uint64_t sub_100205A24()
{
  sub_100168088(&qword_100577470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004007C0;
  v1 = type metadata accessor for LegacyEpisodeLockup();
  v2 = sub_100208A80(&qword_100577478, &type metadata accessor for LegacyEpisodeLockup);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for ShowHeader();
  result = sub_100208A80(&unk_100577480, &type metadata accessor for ShowHeader);
  *(v0 + 48) = v3;
  *(v0 + 56) = result;
  off_1005772F8 = v0;
  return result;
}

uint64_t sub_100205B00()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_pageURL, &qword_100574040);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarPlayStoreShowProvider()
{
  result = qword_100577348;
  if (!qword_100577348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205C00()
{
  sub_100012E4C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100205CA4()
{
  v1 = v0;
  v25 = *v0;
  v2 = v25;
  v26 = sub_100168088(&unk_100578D90);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v6 = sub_100168088(&unk_100577400);
  v7 = *(v6 - 8);
  v29 = v6;
  v30 = v7;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v32 = sub_100168088(&unk_100578DA0);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v27 = &v24 - v10;
  v31 = sub_100168088(&unk_100577410);
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v24 - v11;
  v35 = StorePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v2;
  sub_100168088(&unk_100578DB0);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0);
  Publisher.removeDuplicates(by:)();

  v35 = *(v0 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_updatePlayStateSubject);
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&unk_100577420, &unk_100578D90);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  v12 = v26;
  Publisher.combineLatest<A>(_:)();
  (*(v3 + 8))(v5, v12);
  v13 = v0[2];
  v14 = *(v1 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_smartPlayButtonController);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100206794;
  *(v16 + 24) = v15;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100577430);
  sub_100009FAC(&unk_100578DC0, &unk_100577400);
  sub_100009FAC(&unk_100577440, &unk_100577430);
  v17 = v27;
  v18 = v29;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v30 + 8))(v9, v18);
  sub_100009FAC(&unk_100578DD0, &unk_100578DA0);
  v19 = v28;
  v20 = v32;
  Publisher.compactMap<A>(_:)();
  (*(v34 + 8))(v17, v20);
  sub_100009FAC(&unk_100577450, &unk_100577410);
  v21 = v31;
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v33 + 8))(v19, v21);
  return v22;
}

uint64_t sub_1002062D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PageContent();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v10 - 8);
  v12 = v19 - v11;
  type metadata accessor for SmartPlayButtonController();
  v19[1] = a3;
  v13 = BaseObjectGraph.satisfying<A>(_:with:)();
  sub_100168088(&unk_100577430);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1001AB84C(a1, v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  sub_1001AD194(v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, &type metadata accessor for PageContent);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_100404838;
  *(v17 + 24) = v16;
  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_100206500(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100206598, v4, v3);
}

uint64_t sub_100206598()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_100208684(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100206608(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001AB680;

  return v5();
}

uint64_t sub_1002066F4@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100206724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 16);
  *(a2 + 16) = v4;
  return sub_1002067A0(v3, v2, v4);
}

uint64_t sub_1002067A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1002067B4(result, a2, a3);
  }

  return result;
}

uint64_t sub_1002067B4(uint64_t result, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 3:

    case 2:

    case 1:

      return sub_100013CB4(result);
  }

  return result;
}

uint64_t sub_100206830()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001AB9B8;

  return sub_100206500(v4, v0 + v3);
}

uint64_t sub_100206938(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_100206608(a1, v4);
}

uint64_t sub_1002069F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a2;
  v20 = type metadata accessor for SmartPlayPlatformContext();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SmartPlayContext();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_updatePlayStateSubject;
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *(v3 + v14) = CurrentValueSubject.init(_:)();
  *(v3 + 16) = a1;
  v15 = v17;
  sub_100010430(v17, v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_pageURL, &qword_100574040);
  sub_100010430(v15, v13, &qword_100574040);
  type metadata accessor for StorePageProvider();
  swift_allocObject();

  swift_retain_n();
  *(v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_provider) = StorePageProvider.init(asPartOf:pageURL:page:)();
  (*(v8 + 104))(v10, enum case for SmartPlayContext.showPage(_:), v18);
  (*(v5 + 104))(v7, enum case for SmartPlayPlatformContext.carPlay(_:), v20);
  type metadata accessor for SmartPlayButtonController();
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC8Podcasts24CarPlayStoreShowProvider_smartPlayButtonController) = SmartPlayButtonController.init(button:context:platform:objectGraph:)();
  StorePageProvider.viewDidLoad()();
  sub_100009104(v15, &qword_100574040);
  return v3;
}

uint64_t sub_100206CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v4 - 8);
  v70 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = &v61 - v7;
  __chkstk_darwin(v8);
  v10 = &v61 - v9;
  v73 = type metadata accessor for ModernShelf();
  v69 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v61 - v13;
  v14 = type metadata accessor for PageContent();
  __chkstk_darwin(v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v61 - v18;
  v20 = type metadata accessor for ModernPage();
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v61 - v24;
  sub_1001AB84C(a1, v19);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v42 = v19;
LABEL_13:
    sub_1001AD1FC(v42, &type metadata accessor for PageContent);
    v43 = 0;
    return v43 & 1;
  }

  sub_1001AD194(v19, v25, &type metadata accessor for ModernPage);
  sub_1001AB84C(a2, v16);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v25, &type metadata accessor for ModernPage);
    v42 = v16;
    goto LABEL_13;
  }

  sub_1001AD194(v16, v22, &type metadata accessor for ModernPage);
  v26 = *(v20 + 24);
  v63 = v25;
  v27 = *&v25[v26];
  v28 = *(v27 + 16);
  v29 = _swiftEmptyArrayStorage;
  v64 = v22;
  if (v28)
  {
    v62 = v20;
    v74 = _swiftEmptyArrayStorage;
    sub_1001A7738(0, v28, 0);
    v29 = v74;
    v30 = *(v69 + 16);
    v31 = v27 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v65 = *(v69 + 72);
    v66 = v30;
    v67 = v69 + 16;
    v32 = (v69 + 8);
    do
    {
      (v66)(v71, v31, v73);
      ModernShelf.header.getter();
      v33 = type metadata accessor for Header();
      v34 = *(v33 - 8);
      v35 = 0;
      v36 = 0;
      if ((*(v34 + 48))(v10, 1, v33) != 1)
      {
        v37 = v68;
        sub_100010430(v10, v68, &qword_100577490);
        v35 = Header.title.getter();
        v36 = v38;
        (*(v34 + 8))(v37, v33);
      }

      sub_100009104(v10, &qword_100577490);
      (*v32)(v71, v73);
      v74 = v29;
      v40 = v29[2];
      v39 = v29[3];
      if (v40 >= v39 >> 1)
      {
        sub_1001A7738((v39 > 1), v40 + 1, 1);
        v29 = v74;
      }

      v29[2] = v40 + 1;
      v41 = &v29[2 * v40];
      v41[4] = v35;
      v41[5] = v36;
      v31 += v65;
      --v28;
    }

    while (v28);
    v26 = *(v62 + 24);
    v22 = v64;
  }

  v44 = *&v22[v26];
  v45 = *(v44 + 16);
  v46 = _swiftEmptyArrayStorage;
  if (v45)
  {
    v74 = _swiftEmptyArrayStorage;
    sub_1001A7738(0, v45, 0);
    v46 = v74;
    v71 = *(v69 + 16);
    v47 = v44 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v48 = *(v69 + 72);
    v69 += 16;
    v66 = (v69 - 8);
    v67 = v48;
    do
    {
      (v71)(v72, v47, v73);
      ModernShelf.header.getter();
      v49 = v70;
      v50 = type metadata accessor for Header();
      v51 = *(v50 - 8);
      v52 = 0;
      v53 = 0;
      if ((*(v51 + 48))(v49, 1, v50) != 1)
      {
        v54 = v68;
        sub_100010430(v49, v68, &qword_100577490);
        v55 = Header.title.getter();
        v49 = v70;
        v52 = v55;
        v53 = v56;
        (*(v51 + 8))(v54, v50);
      }

      sub_100009104(v49, &qword_100577490);
      (*v66)(v72, v73);
      v74 = v46;
      v58 = v46[2];
      v57 = v46[3];
      if (v58 >= v57 >> 1)
      {
        sub_1001A7738((v57 > 1), v58 + 1, 1);
        v46 = v74;
      }

      v46[2] = v58 + 1;
      v59 = &v46[2 * v58];
      v59[4] = v52;
      v59[5] = v53;
      v47 += v67;
      --v45;
    }

    while (v45);
    v22 = v64;
  }

  v43 = sub_100195FAC(v29, v46);

  sub_1001AD1FC(v22, &type metadata accessor for ModernPage);
  sub_1001AD1FC(v63, &type metadata accessor for ModernPage);
  return v43 & 1;
}

uint64_t sub_100207400(uint64_t a1)
{
  v45 = type metadata accessor for ModernShelf.ItemPresentation();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = __chkstk_darwin(v10);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v39 = v12;
  v40 = v6;
  v41 = &v38 - v11;
  v16 = *(v6 + 16);
  v15 = v6 + 16;
  v17 = (v2 + 8);
  v43 = (v15 - 8);
  v44 = v16;
  v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v42 = *(v15 + 56);
  while (1)
  {
    v19 = v5;
    v44(v8, v18, v5, v13);
    ModernShelf.itemPresentation.getter();
    ModernShelf.ItemPresentation.itemKind.getter();
    (*v17)(v4, v45);
    v20 = ModernShelf.ItemKind.rawValue.getter();
    v22 = v21;
    if (v20 == ModernShelf.ItemKind.rawValue.getter() && v22 == v23)
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_9;
    }

    v5 = v19;
    (*v43)(v8, v19);
    v18 += v42;
    if (!--v14)
    {
      return 0;
    }
  }

LABEL_9:
  v26 = v39;
  v27 = *(v40 + 32);
  v28 = v19;
  v27(v39, v8, v19);
  v29 = v41;
  v27(v41, v26, v19);
  result = ModernShelf.items.getter();
  v31 = result;
  v32 = *(result + 16);
  v33 = result + 32;
  if (v32)
  {
    v34 = 0;
    v35 = result + 32;
    while (1)
    {
      sub_100004428(v35, v46);
      sub_100168088(&qword_1005748E0);
      type metadata accessor for ShowHeader();
      result = swift_dynamicCast();
      if (result)
      {
        v36 = v47;

        if (v36)
        {
          break;
        }
      }

      ++v34;
      v35 += 40;
      if (v32 == v34)
      {
        goto LABEL_15;
      }
    }

    v32 = v34;
  }

LABEL_15:
  v37 = *(v31 + 16);
  if (v32 == v37)
  {
    v25 = 0;
LABEL_20:

    (*v43)(v29, v28);
    return v25;
  }

  if (v32 >= v37)
  {
    __break(1u);
  }

  else
  {
    sub_100004428(v33 + 40 * v32, v46);
    sub_100168088(&qword_1005748E0);
    type metadata accessor for ShowHeader();
    result = swift_dynamicCast();
    if (result)
    {
      v25 = v47;
      if (v47)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100207818(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v48) = a4;
  v49 = a3;
  v53 = a1;
  v52 = type metadata accessor for ModernShelf();
  v6 = __chkstk_darwin(v52);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v50 = *(v11 + 56);
    v51 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v52;
      v16 = v11;
      v51(v8, v13, v52, v6);
      v17 = ModernShelf.items.getter();
      (*v14)(v8, v15);
      v18 = *(v17 + 16);
      v19 = v10[2];
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v20 <= v10[3] >> 1)
      {
        if (*(v17 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v10 = sub_100243520(isUniquelyReferenced_nonNull_native, v22, 1, v10);
        if (*(v17 + 16))
        {
LABEL_14:
          if ((v10[3] >> 1) - v10[2] < v18)
          {
            goto LABEL_45;
          }

          sub_100168088(&qword_1005748E0);
          swift_arrayInitWithCopy();

          if (v18)
          {
            v23 = v10[2];
            v24 = __OFADD__(v23, v18);
            v25 = v23 + v18;
            if (v24)
            {
              goto LABEL_46;
            }

            v10[2] = v25;
          }

          goto LABEL_4;
        }
      }

      if (v18)
      {
        goto LABEL_43;
      }

LABEL_4:
      v13 += v50;
      --v9;
      v11 = v16;
    }

    while (v9);
  }

  v57 = _swiftEmptyArrayStorage;
  v26 = v10[2];
  if (v26)
  {
    v27 = (v10 + 4);
    v16 = _swiftEmptyArrayStorage;
    LOBYTE(v18) = BYTE4(v48);
    do
    {
      sub_100004428(v27, v56);
      sub_1000109E4(v56, v54);
      sub_100168088(&qword_1005748E0);
      type metadata accessor for LegacyEpisodeLockup();
      if ((swift_dynamicCast() & 1) != 0 && v55)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v57;
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
    LOBYTE(v18) = BYTE4(v48);
  }

  *&v56[0] = _swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
    goto LABEL_47;
  }

  v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v28)
  {
LABEL_30:
    v29 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v29 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v28 = _CocoaArrayWrapper.endIndex.getter();
          if (!v28)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v31 = LegacyLockup.adamId.getter();
      if ((v18 & 1) != 0 || v31 != v49)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v29;
    }

    while (v30 != v28);
  }

  v32 = *&v56[0];
  *&v56[0] = _swiftEmptyArrayStorage;
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
LABEL_69:
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *(v32 + 16);
  }

  v34 = 0;
  v52 = _swiftEmptyArrayStorage;
  while (v33 != v34)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v34 >= *(v32 + 16))
      {
        goto LABEL_68;
      }

      v35 = *(v32 + 8 * v34 + 32);

      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }

    sub_100009F1C(0, &qword_100577460);
    v37 = sub_100355C6C(v53, v35, 0, 10);

    ++v34;
    if (v37)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v56[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = *&v56[0];
      v34 = v36;
    }
  }

  v38 = v52;
  if (v52 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00);
      v39 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_66;
    }

LABEL_72:

    return 0;
  }

  if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_72;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v39 = v38;
LABEL_66:

  v40 = [objc_opt_self() mainBundle];
  v58._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0x5345444F53495045;
  v41._object = 0xE800000000000000;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v58);

  v43 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v39);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v45 = String._bridgeToObjectiveC()();

  v46 = [v43 initWithItems:isa header:v45 sectionIndexTitle:0];

  return v46;
}

void *sub_100207EF8(unint64_t a1, uint64_t a2)
{
  v51 = a1;
  v50 = type metadata accessor for EpisodeOffer();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ModernShelf.ItemPresentation();
  v5 = *(v63 - 8);
  __chkstk_darwin(v63);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ModernShelf();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v14 = _swiftEmptyArrayStorage;
  v61 = *(v13 + 16);
  if (v61)
  {
    v15 = 0;
    v60 = v8 + 16;
    v57 = (v8 + 8);
    v16 = (v5 + 8);
    v52 = (v8 + 32);
    v17 = v56;
    v54 = v8;
    v59 = v13;
    while (v15 < *(v13 + 16))
    {
      v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v62 = *(v8 + 72);
      (*(v8 + 16))(v12, v13 + v18 + v62 * v15, v17);
      if (ModernShelf.hideFromCarPlay.getter())
      {
        (*v57)(v12, v17);
      }

      else
      {
        v55 = v18;
        v58 = v14;
        if (qword_100572778 != -1)
        {
          swift_once();
        }

        v19 = off_1005772F0;
        v20 = ModernShelf.id.getter();
        v22 = v21;
        if (v19[2] && (v23 = v20, Hasher.init(_seed:)(), String.hash(into:)(), v24 = Hasher._finalize()(), v25 = -1 << *(v19 + 32), v2 = v24 & ~v25, ((*(v19 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) != 0))
        {
          v26 = ~v25;
          while (1)
          {
            v27 = (v19[6] + 16 * v2);
            v28 = *v27 == v23 && v27[1] == v22;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v2 = (v2 + 1) & v26;
            if (((*(v19 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:

          if (qword_100572780 != -1)
          {
            swift_once();
          }

          v17 = off_1005772F8;
          v29 = (off_1005772F8 + 32);
          v8 = -*(off_1005772F8 + 2);
          v30 = -1;
          while (v8 + v30 != -1)
          {
            if (++v30 >= v17[2])
            {
              __break(1u);
              goto LABEL_50;
            }

            v31 = v29 + 2;
            v2 = *v29;
            ModernShelf.itemPresentation.getter();
            ModernShelf.ItemPresentation.itemKind.getter();
            (*v16)(v7, v63);
            v32 = ModernShelf.ItemKind.modelType.getter();
            v29 = v31;
            if (v2 == v32)
            {
              v33 = *v52;
              (*v52)(v53, v12, v56);
              v14 = v58;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v14;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1001A7758(0, v14[2] + 1, 1);
                v14 = v65;
              }

              v36 = v14[2];
              v35 = v14[3];
              if (v36 >= v35 >> 1)
              {
                sub_1001A7758(v35 > 1, v36 + 1, 1);
                v14 = v65;
              }

              v14[2] = (v36 + 1);
              v17 = v56;
              v33(v14 + v55 + v36 * v62, v53, v56);
              goto LABEL_31;
            }
          }
        }

        v17 = v56;
        (*v57)(v12, v56);
        v14 = v58;
LABEL_31:
        v8 = v54;
      }

      ++v15;
      v13 = v59;
      if (v15 == v61)
      {
        goto LABEL_32;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_32:
  v37 = sub_100207400(v14);
  if (!v37)
  {

    return _swiftEmptyArrayStorage;
  }

  v38 = v37;
  v64 = _swiftEmptyArrayStorage;
  if (ShowHeader.primaryButtonAction.getter())
  {
    type metadata accessor for PlayAction();
    v39 = swift_dynamicCastClass();
    v2 = v51;
    if (v39)
    {

      v40 = v48;
      PlayAction.episodeOffer.getter();

      v7 = EpisodeOffer.contentId.getter();
      (*(v49 + 8))(v40, v50);
      LODWORD(v8) = 0;
    }

    else
    {

      v7 = 0;
      LODWORD(v8) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 1;
    v2 = v51;
  }

  sub_100009F1C(0, &unk_100575B00);
  v42 = sub_1002CA624(v2, v38, 10);
  v17 = v42;
  if (v42)
  {
    v16 = v14;
    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_41:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v41 = v64;
      v14 = v16;
      goto LABEL_43;
    }

LABEL_51:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_41;
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_43:
  v44 = sub_100207818(v2, v14, v7, v8);

  if (v44)
  {
    v45 = v44;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v64;
  }

  else
  {
  }

  return v41;
}