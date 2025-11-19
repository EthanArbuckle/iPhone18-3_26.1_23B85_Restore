uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011ABEE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = *(v1 + *(v6 + 32));
  sub_1000089F8(a1, v5, &qword_1011ABEE0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    v8 = v7;
    sub_1000095E8(v5, &qword_1011ABEE0);
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *&v5[*(v6 + 32)];
    v8 = v10;
    v11 = v7;
    sub_100A21D2C(v5, type metadata accessor for NowPlaying.TrackMetadata);
    if (v7)
    {
      if (v10)
      {
        if ([v11 isArtworkVisuallyIdenticalToCatalog:v8])
        {
          v9 = 1;
        }

        else
        {
          sub_100009F78(0, &qword_1011AAEA0);
          v9 = static NSObject.== infix(_:_:)();
        }
      }

      else
      {
        v9 = 0;
        v8 = v11;
      }

      goto LABEL_13;
    }

    if (v10)
    {
LABEL_3:
      v9 = 0;
LABEL_13:

      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1011A6A30 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = sub_1000060E4(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100A1EF10()
{
  v0 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100006080(v14, static NowPlaying.TrackMetadata.notPlaying);
  v15 = sub_1000060E4(v14, static NowPlaying.TrackMetadata.notPlaying);
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21(&v15[v23], 1, 1, v10);
  v24 = v14[8];
  *&v15[v24] = 0;
  v15[v14[9]] = 1;
  *v15 = 0x79616C705F746F6ELL;
  *(v15 + 1) = 0xEB00000000676E69;
  *(v15 + 2) = 0;
  sub_100A21CC4(v13, &v15[v14[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A1DCB8(v22, &v15[v23]);
  v25 = *&v15[v24];
  *&v15[v24] = 0;
}

void sub_100A1F2E4()
{
  v0 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v0 - 8);
  v28 = &v26 - v1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  sub_100006080(v14, static NowPlaying.TrackMetadata.loading);
  v15 = sub_1000060E4(v14, static NowPlaying.TrackMetadata.loading);
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v4 + 16);
  v27 = v3;
  v16(v7, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  (*(v4 + 8))(v9, v27);
  *v13 = v18;
  v13[1] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = *(v11 + 56);
  v22 = v28;
  v21(v28, 1, 1, v10);
  v23 = v14[7];
  v21((v15 + v23), 1, 1, v10);
  v24 = v14[8];
  *(v15 + v24) = 0;
  *(v15 + v14[9]) = 1;
  strcpy(v15, "i_am_loading");
  *(v15 + 13) = 0;
  *(v15 + 14) = -5120;
  *(v15 + 16) = 0;
  sub_100A21CC4(v13, v15 + v14[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A1DCB8(v22, v15 + v23);
  v25 = *(v15 + v24);
  *(v15 + v24) = 0;
}

uint64_t sub_100A1F6B4(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return sub_1000060E4(v3, a2);
}

uint64_t sub_100A1F72C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = sub_1000060E4(v5, a2);
  return sub_100A21C5C(v6, a3, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v67) = a3;
  v74 = a2;
  v76 = a4;
  v5 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v5 - 8);
  v73 = &v63 - v6;
  v75 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v75);
  v69 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AttributedString();
  v70 = *(v72 - 8);
  v10 = __chkstk_darwin(v72);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v63 - v12;
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v63 - v19;
  String.LocalizationValue.init(stringLiteral:)();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v22 = qword_101219808;
  static Locale.current.getter();
  v23 = v22;
  v24 = String.init(localized:table:bundle:locale:comment:)();
  v64 = v25;
  v65 = v24;
  v26 = *(v15 + 8);
  v26(v20, v14);
  String.LocalizationValue.init(stringLiteral:)();
  v21(v18, v20, v14);
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  v26(v20, v14);
  v30 = [a1 route];
  v31 = a1;
  if (v30)
  {
    v32 = v30;
    v33 = [v30 routeName];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = [a1 representedBundleDisplayName];
  if (!v37)
  {
    if (v67)
    {
      goto LABEL_11;
    }

LABEL_12:

    v42 = v64;

    v36 = v42;
    v41 = v65;
    v34 = v65;
    goto LABEL_13;
  }

  v38 = v37;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if ((v67 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v40)
  {
LABEL_11:

    v42 = v64;

    v41 = v65;
    goto LABEL_13;
  }

  v36 = v29;
  v34 = v27;
  v42 = v64;
  v41 = v65;
LABEL_13:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v43 = [v31 representedBundleID];
  if (!v43)
  {
    v43 = [v31 bundleID];
    if (!v43)
    {
      v66 = 0xD000000000000013;
      v67 = 0x8000000100E607E0;
      v71 = v31;
      if (v36)
      {
        goto LABEL_16;
      }

LABEL_18:
      v34 = v41;
      goto LABEL_19;
    }
  }

  v44 = v43;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v45;

  v71 = v31;
  if (!v36)
  {
    goto LABEL_18;
  }

LABEL_16:

  v42 = v36;
LABEL_19:
  v46 = v70;
  v47 = v68;
  v48 = v72;
  (*(v70 + 16))(v68, v77, v72);
  v49 = v75;
  v50 = v69;
  v51 = &v69[*(v75 + 24)];
  *v51 = v34;
  v51[1] = v42;
  v52 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v53 = v73;
  (*(v46 + 32))(v73, v47, v48);
  swift_storeEnumTagMultiPayload();
  v54 = *(*(v52 - 8) + 56);
  v54(v53, 0, 1, v52);
  v55 = v49[7];
  v54(v50 + v55, 1, 1, v52);
  v56 = v49[8];
  *(v50 + v49[9]) = 1;
  v57 = v67;
  *v50 = v66;
  v50[1] = v57;
  v58 = v74;
  v50[2] = v74;
  v59 = v58;
  sub_100A1DCB8(v53, v50 + v55);
  *(v50 + v56) = 0;
  v60 = v76;
  sub_100A21CC4(v50, v76, type metadata accessor for NowPlaying.TrackMetadata);
  v61 = v71;
  LOBYTE(v51) = [v71 isSystemMusicPath];

  result = (*(v46 + 8))(v77, v48);
  *(v60 + v49[9]) = v51;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10010FC20(&qword_1011A7BF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  v13 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v13 - 8);
  v75 = &v67 - v14;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v73 = *(v15 - 8);
  v74 = v15;
  v16 = __chkstk_darwin(v15);
  v78 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = (&v67 - v18);
  v20 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v21 = *(v20 - 1);
  __chkstk_darwin(v20);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v79 = a2;
    v80 = a3;
    v76 = v20;
    v77 = a4;
    v24 = a1;
    v25 = [v24 metadataObject];
    if (v25)
    {
      v70 = v25;
      v26 = [v25 innermostModelObject];
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      v69 = a5;
      v71 = v21;
      v72 = v27;
      v28 = v80;
      if (v27)
      {

        if (v79 && (v29 = [v79 items], v30 = objc_msgSend(v29, "firstSection"), v29, v30) && (v31 = objc_msgSend(v30, "metadataObject"), v30, v31))
        {
          v32 = [v31 anyObject];

          v33 = v74;
          if (v32)
          {
            objc_opt_self();
            v67 = v32;
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {
            }
          }
        }

        else
        {
          v32 = 0;
          v33 = v74;
        }

        v68 = a1;
        if (v28)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v32, v28, v77);
        }

        else
        {
          *v19 = MPModelSong.nowPlayingTitle(from:)(v32);
          v19[1] = v38;
        }

        swift_storeEnumTagMultiPayload();
        v39 = [v24 queueItemIdentifier];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v40;

        sub_100A21C5C(v19, v78, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v41 = v32;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_1010C8308, v32, v12);
        v42 = type metadata accessor for AttributedString();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v12, 1, v42) == 1)
        {
          sub_1000095E8(v12, &qword_1011A7BF8);
          v44 = 1;
          v45 = v75;
        }

        else
        {
          v45 = v75;
          (*(v43 + 32))(v75, v12, v42);
          swift_storeEnumTagMultiPayload();
          v44 = 0;
        }

        v46 = v33;
        v47 = *(v73 + 56);
        v47(v45, v44, 1, v46);
        v48 = [v72 artworkCatalog];

        sub_100020438(v80);
        sub_100A21D2C(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v20 = v76;
        v49 = v76[7];
        v47(v23 + v49, 1, 1, v46);
        v50 = v20[8];
        *(v23 + v20[9]) = 1;
        v52 = v67;
        v51 = v68;
        *v23 = v74;
        v23[1] = v52;
        v23[2] = v51;
        sub_100A21CC4(v78, v23 + v20[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_100A1DCB8(v45, v23 + v49);
        *(v23 + v50) = v48;
        a5 = v69;
      }

      else
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = v35;
          v37 = v26;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v36, v24, v23);

          sub_100020438(v28);
          v20 = v76;
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          v20 = v76;
          if (!v54)
          {

            if (qword_1011A6A40 != -1)
            {
              swift_once();
            }

            v57 = type metadata accessor for Logger();
            sub_1000060E4(v57, qword_1011ABEC0);
            v58 = v70;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = v24;
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v82 = v63;
              *v62 = 136315138;
              v81 = [v58 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v64 = String.init<A>(describing:)();
              v66 = sub_100010678(v64, v65, &v82);
              a5 = v69;

              *(v62 + 4) = v66;
              _os_log_impl(&_mh_execute_header, v59, v60, "Unexpected metadataObject type %s", v62, 0xCu);
              sub_10000959C(v63);

              sub_100020438(v80);
            }

            else
            {

              sub_100020438(v80);
            }

            v34 = 1;
            goto LABEL_23;
          }

          v55 = v54;
          v56 = v26;
          NowPlaying.TrackMetadata.init(movie:item:)(v55, v24, v23);

          sub_100020438(v80);
        }
      }

      sub_100A21CC4(v23, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v34 = 0;
LABEL_23:
      v21 = v71;
      return (*(v21 + 56))(a5, v34, 1, v20);
    }

    sub_100020438(v80);
    v34 = 1;
    v20 = v76;
  }

  else
  {
    sub_100020438(a3);

    v34 = 1;
  }

  return (*(v21 + 56))(a5, v34, 1, v20);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_10010FC20(&qword_1011A7BF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (&v38 - v21);
  v42 = v20;
  v43 = a4;
  if (v20)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v20, a4);
  }

  else
  {
    *v22 = MPModelSong.nowPlayingTitle(from:)(a2);
    v22[1] = v23;
  }

  swift_storeEnumTagMultiPayload();
  v44 = a3;
  v24 = [a3 queueItemIdentifier];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v26;
  v40 = v25;

  sub_100A21C5C(v22, v45, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v41 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_1010C8330, a2, v12);
  v27 = type metadata accessor for AttributedString();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    sub_1000095E8(v12, &qword_1011A7BF8);
    v29 = 1;
  }

  else
  {
    (*(v28 + 32))(v15, v12, v27);
    swift_storeEnumTagMultiPayload();
    v29 = 0;
  }

  v30 = *(v17 + 56);
  v30(v15, v29, 1, v16);
  v31 = [a1 artworkCatalog];

  sub_100020438(v42);
  sub_100A21D2C(v22, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v32 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v33 = v32[7];
  v30(a5 + v33, 1, 1, v16);
  v34 = v32[8];
  *(a5 + v32[9]) = 1;
  v35 = v39;
  *a5 = v40;
  a5[1] = v35;
  v36 = v45;
  a5[2] = v44;
  sub_100A21CC4(v36, a5 + v32[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v15, a5 + v33);
  *(a5 + v34) = v31;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v6 - 8);
  v50 = &v45 - v7;
  v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10010FC20(&qword_1011A7BF8);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v51 = a2;
  v22 = [a2 queueItemIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v24;
  v46 = v23;

  v47 = a1;
  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v16 + 16))(v19, v21, v15);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v30 = qword_101219808;
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v31;
    (*(v16 + 8))(v21, v15);
  }

  v32 = type metadata accessor for AttributedString();
  v33 = *(v32 - 8);
  (*(v33 + 56))(v13, 1, 1, v32);
  v34 = v47;
  v35 = [v47 artworkCatalog];

  *v10 = v27;
  v10[1] = v29;
  v36 = v49;
  swift_storeEnumTagMultiPayload();
  if ((*(v33 + 48))(v13, 1, v32) == 1)
  {
    sub_1000095E8(v13, &qword_1011A7BF8);
    v37 = 1;
    v38 = v50;
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v13, v32);
    swift_storeEnumTagMultiPayload();
    v37 = 0;
  }

  v39 = *(v48 + 56);
  v39(v38, v37, 1, v36);
  v40 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v41 = v40[7];
  v39(a3 + v41, 1, 1, v36);
  v42 = v40[8];
  *(a3 + v40[9]) = 1;
  v43 = v45;
  *a3 = v46;
  a3[1] = v43;
  a3[2] = v51;
  sub_100A21CC4(v10, a3 + v40[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v38, a3 + v41);
  *(a3 + v42) = v35;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = [a2 queueItemIdentifier];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v19;
  v38 = v18;

  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v11 + 16))(v14, v16, v10);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v25 = qword_101219808;
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v24 = v26;
    (*(v11 + 8))(v16, v10);
  }

  v27 = [a1 artworkCatalog];

  v28 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v29 = (a3 + v28[6]);
  *v29 = v22;
  v29[1] = v24;
  v30 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v31 = *(*(v30 - 8) + 56);
  v31(v8, 1, 1, v30);
  v32 = v28[7];
  v31(a3 + v32, 1, 1, v30);
  v33 = v28[8];
  *(a3 + v28[9]) = 1;
  v34 = v37;
  *a3 = v38;
  a3[1] = v34;
  a3[2] = a2;
  result = sub_100A1DCB8(v8, a3 + v32);
  *(a3 + v33) = v27;
  return result;
}

uint64_t sub_100A213B4()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011ABEC0);
  sub_1000060E4(v0, qword_1011ABEC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100A21434(uint64_t a1, uint64_t a2)
{
  String.append(_:)(*&a1);

  return Logger.init(subsystem:category:)();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for AttributedString();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v26 - v11);
  v13 = sub_10010FC20(&qword_1011AC060);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_100A21C5C(a1, &v26 - v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21C5C(a2, v17, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100A21C5C(v15, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v22 = *v12;
    v21 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v17 && v21 == v17[1])
      {
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) == 0)
        {
          sub_100A21D2C(v15, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_100A21D2C(v15, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_1000095E8(v15, &qword_1011AC060);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_100A21C5C(v15, v9, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v9, v27);
    goto LABEL_7;
  }

  v18 = v27;
  (*(v4 + 32))(v6, v17, v27);
  v19 = static AttributedString.== infix(_:_:)();
  v20 = *(v4 + 8);
  v20(v6, v18);
  v20(v9, v18);
  sub_100A21D2C(v15, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v19 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_10010FC20(&qword_1011ABEE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_10010FC20(&qword_1011AC058);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(a1 + *(v17 + 24), a2 + *(v17 + 24)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = v10;
  v28 = v17;
  v29 = v6;
  v18 = *(v17 + 28);
  v19 = *(v14 + 48);
  sub_1000089F8(a1 + v18, v16, &qword_1011ABED8);
  sub_1000089F8(a2 + v18, &v16[v19], &qword_1011ABED8);
  v20 = *(v8 + 48);
  if (v20(v16, 1, v7) == 1)
  {
    if (v20(&v16[v19], 1, v7) == 1)
    {
      sub_1000095E8(v16, &qword_1011ABED8);
LABEL_14:
      v25 = v29;
      sub_100A21C5C(a2, v29, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v28 - 8) + 56))(v25, 0, 1);
      v21 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v25);
      sub_1000095E8(v25, &qword_1011ABEE0);
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_1000089F8(v16, v13, &qword_1011ABED8);
  if (v20(&v16[v19], 1, v7) == 1)
  {
    sub_100A21D2C(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_10:
    sub_1000095E8(v16, &qword_1011AC058);
    goto LABEL_11;
  }

  v23 = v27;
  sub_100A21CC4(&v16[v19], v27, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v24 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v13, v23);
  sub_100A21D2C(v23, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21D2C(v13, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v16, &qword_1011ABED8);
  if (v24)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_100A21C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A21CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100A21D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100A21DB4()
{
  sub_100A21F08(319, &qword_1011ABF50, &qword_1011ABF58);
  if (v0 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v1 <= 0x3F)
    {
      sub_100A21EB0();
      if (v2 <= 0x3F)
      {
        sub_100A21F08(319, &qword_1011ABF68, &unk_1011ABF70);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100A21EB0()
{
  if (!qword_1011ABF60)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011ABF60);
    }
  }
}

void sub_100A21F08(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100009F78(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100A21F60()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100A21FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static Edge.Set.top.getter();
  sub_10010FC20(&qword_1011AC070);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_10010FC20(&qword_1011AC078);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(sub_10010FC20(&qword_1011AC080) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_100A224A8();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = sub_10010FC20(&qword_1011AC088);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_100A2291C;
  v22[1] = v20;
}

uint64_t sub_100A22168()
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  State.init(wrappedValue:)();
  return ModifiedContent.init(content:modifier:)();
}

unint64_t sub_100A22300()
{
  result = qword_1011AC068;
  if (!qword_1011AC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC068);
  }

  return result;
}

CGFloat sub_100A223AC()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000160B4(&v5), (v3 & 1) == 0))
  {

    sub_10001621C(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_10000DD18(*(v1 + 56) + 32 * v2, &v6);
  sub_10001621C(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_100011E58(&v6);
    return 0.0;
  }

  _s3__C6CGRectVMa_0(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_100A224A8()
{
  v0 = sub_10010FC20(&qword_1011AC090);
  v1 = *(v0 - 8);
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  v31 = &v28 - v2;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011AC098);
  v30 = *(v7 - 8);
  v8 = v30;
  __chkstk_darwin(v7);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v28 = &v28 - v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_100A2298C();
  Publisher.map<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v16 = v29;
  Publisher.map<A>(_:)();
  v14(v6, v3);
  sub_10010FC20(&qword_1011AC0A8);
  v17 = *(v30 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC20;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v22 = v28;
  v21(v20, v28, v7);
  v21(v20 + v17, v16, v7);
  sub_100020674(&qword_1011AC0B0, &qword_1011AC098);
  v23 = v31;
  Publishers.MergeMany.init(_:)();
  sub_100020674(&qword_1011AC0B8, &qword_1011AC090);
  v24 = v32;
  v25 = Publisher.eraseToAnyPublisher()();
  (*(v33 + 8))(v23, v24);
  v26 = *(v8 + 8);
  v26(v16, v7);
  v26(v22, v7);
  return v25;
}

unint64_t sub_100A2298C()
{
  result = qword_1011AC0A0;
  if (!qword_1011AC0A0)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC0A0);
  }

  return result;
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  sub_10003BE8C(v5, v2);
  return (*(v3 + 8))(a1, v2);
}

uint64_t OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_100A23628(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.output.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin(v2);
  KeyPath = swift_getKeyPath();
  v3[4] = KeyPath;
  __chkstk_darwin(KeyPath);
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_100A2375C(a1);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
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
  type metadata accessor for Optional();
  v5 = type metadata accessor for Published.Publisher();
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
  OptionalObservableObject.$output.getter();
  return sub_100A22F5C;
}

void sub_100A22F5C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100A2375C(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_100A2375C(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Published();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - v9;
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5);
  property wrapper backing initializer of OptionalObservableObject.output(v12);
  (*(v7 + 32))(v2 + v13, v10, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 24))
  {
    v18 = *(a1 + 16);
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 32);
LABEL_8:
    v19 = *(a1 + 16);
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 32);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_10000954C(&v21, v15);

    v17 = Publisher.sink(receiveCompletion:receiveValue:)();

    if (*(a1 + 24))
    {
      sub_10000959C(a1);
    }

    goto LABEL_11;
  }

  sub_100008FE4(a1, v14);
  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  sub_100008FE4(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 24);
  if (v16)
  {
    sub_10000959C(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      sub_10000959C(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_100A2335C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v10 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  sub_100A23628(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + *(*v0 + 96);
  if (*(v3 + 24))
  {
    sub_10000959C(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100A235E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OptionalObservableObject();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100A23628(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return static Published.subscript.setter();
}

uint64_t sub_100A2375C(uint64_t a1)
{
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1, v3);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t sub_100A23890()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(a1, a2, a3);
  return v6;
}

uint64_t sub_100A239B4(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      sub_10002705C();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100A23D14, v5);
    }

    else
    {
      (*(result + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_100A23AD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100A23C94(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2 & 1);
  }

  return result;
}

uint64_t sub_100A23D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1008B9918(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1008B63F4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1008BACE8();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100A6C29C(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100A23EE0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_100016270(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1008B9AE4(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_1000095E8(a1, &qword_1011ABB20);
    sub_100A6B964(a2, v6);

    sub_1000095E8(v6, &qword_1011ABB20);
  }
}

uint64_t sub_100A23F94(uint64_t a1, uint64_t a2)
{
  v5 = sub_10010FC20(&unk_1011AC220);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_1000095E8(a1, &unk_1011AC220);
    sub_100A6BA04(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1000095E8(v7, &unk_1011AC220);
  }

  else
  {
    sub_1008BDD2C(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1008B9C34(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100A241A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10010FC20(&unk_1011AE080);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_10010FC20(&qword_1011A85A0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v17 - v11;
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_1000095E8(a1, &unk_1011AE080);
    sub_100A6BCEC(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1000095E8(v7, &unk_1011AE080);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_1008BA110(v12, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

id sub_100A243D4()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1008BD7C4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_100A24450()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1008BD7C4(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_1011A6A48 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

uint64_t static PushNotificationObserver.shared.getter()
{
  if (qword_1011A6A48 != -1)
  {
    swift_once();
  }
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  sub_10010FC20(&unk_1011AC220);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100A2466C, v5, 0);
}

uint64_t sub_100A2466C()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    v10 = *(v9 + 24);

    UUID.init()();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_1008BDDF4(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_100A23F94(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      sub_100A260E4(*(v1 + 120));
      v12 = v11;
      sub_100344B48(v11);
      sub_100A25224();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v12 _setEnabledTopics:isa];
    }

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 120) = v16;
    *v16 = v0;
    v16[1] = sub_100A248CC;

    return sub_100A25C28();
  }
}

uint64_t sub_100A248CC()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_100A249DC, v1, 0);
}

uint64_t sub_100A249DC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v10 = *(v9 + 24);

  UUID.init()();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_1008BDDF4(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_100A23F94(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    sub_100A260E4(*(v6 + 120));
    v12 = v11;
    sub_100344B48(v11);
    sub_100A25224();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 _setEnabledTopics:isa];
  }

  v14 = *(v0 + 8);

  return v14();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011AC220);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  (*(v8 + 16))(v10, a1 + *(v11 + 24), v7);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_beginAccess();
  sub_100A23F94(v6, v10);
  swift_endAccess();
  v13 = (v2 + 120);
  v12 = *(v2 + 120);
  if (v12)
  {
    sub_100A260E4(*(v2 + 120));
    v14 = v12;
    sub_100344B48(v12);
    sub_100A25224();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v16 = *v13;
    if (*v13)
    {
      [v16 setDelegate:0];
      v16 = *v13;
      if (*v13)
      {
        [v16 shutdown];
        v16 = *v13;
      }
    }

    *v13 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    sub_100344B48(v16);
  }
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  if (a4)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v4;
    v12[5] = a2;
    v12[6] = a3;
    v12[7] = a4;

    sub_100969440(0, 0, v10, &unk_100EF6608, v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A24FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100A24FC8, 0, 0);
}

uint64_t sub_100A24FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_100A24FF0, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100A24FF0()
{
  sub_100A256BC(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void *sub_100A25224()
{
  v59 = sub_10010FC20(&qword_1011AC3E0);
  __chkstk_darwin(v59);
  v58 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v57 = &v49 - v3;
  __chkstk_darwin(v4);
  v56 = &v49 - v5;
  __chkstk_darwin(v6);
  v55 = &v49 - v7;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v8 = *(*(v0 + 112) + 16);
  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v63 = _swiftEmptyArrayStorage;

  sub_100015C24(0, v8, 0);
  v11 = v10;
  v9 = v63;
  v12 = v11 + 64;
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v16 = *(v11 + 36);
  v50 = v11 + 72;
  v51 = v8;
  v52 = v16;
  v53 = v11 + 64;
  v54 = v11;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v11 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_25;
    }

    if (v16 != *(v11 + 36))
    {
      goto LABEL_26;
    }

    v60 = v15;
    v61 = 1 << v14;
    v19 = v59;
    v20 = *(v59 + 48);
    v21 = *(v11 + 48);
    v22 = type metadata accessor for UUID();
    v23 = *(v22 - 8);
    v24 = v23;
    v25 = v21 + *(v23 + 72) * v14;
    v26 = *(v23 + 16);
    v62 = v9;
    v27 = v55;
    v26(v55, v25, v22);
    v28 = *(v11 + 56);
    v29 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
    sub_1008BDDF4(v28 + *(*(v29 - 8) + 72) * v14, &v27[v20]);
    v30 = *(v24 + 32);
    v31 = v56;
    v30(v56, v27, v22);
    sub_1008BDD2C(&v27[v20], v31 + *(v19 + 48));
    v32 = v57;
    sub_100A26E38(v31, v57);
    v33 = *(v19 + 48);
    v34 = v58;
    v35 = &v58[v33];
    v30(v58, v32, v22);
    v36 = v32 + v33;
    v9 = v62;
    sub_1008BDD2C(v36, v34 + v33);
    v37 = *v35;
    v38 = *(v35 + 1);

    sub_1000095E8(v34, &qword_1011AC3E0);
    result = sub_1000095E8(v31, &qword_1011AC3E0);
    v63 = v9;
    v40 = v9[2];
    v39 = v9[3];
    if (v40 >= v39 >> 1)
    {
      result = sub_100015C24((v39 > 1), v40 + 1, 1);
      v9 = v63;
    }

    v9[2] = v40 + 1;
    v41 = &v9[2 * v40];
    v41[4] = v37;
    v41[5] = v38;
    v11 = v54;
    v17 = 1 << *(v54 + 32);
    if (v14 >= v17)
    {
      goto LABEL_27;
    }

    v12 = v53;
    v42 = *(v53 + 8 * v18);
    if ((v42 & v61) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v16) = v52;
    if (v52 != *(v54 + 36))
    {
      goto LABEL_29;
    }

    v43 = v42 & (-2 << (v14 & 0x3F));
    if (v43)
    {
      v17 = __clz(__rbit64(v43)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v44 = v18 << 6;
      v45 = v18 + 1;
      v46 = (v50 + 8 * v18);
      while (v45 < (v17 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          result = sub_1000D8F7C(v14, v52, 0);
          v17 = __clz(__rbit64(v47)) + v44;
          goto LABEL_5;
        }
      }

      result = sub_1000D8F7C(v14, v52, 0);
    }

LABEL_5:
    v15 = v60 + 1;
    v14 = v17;
    if (v60 + 1 == v51)
    {

      return v9;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_100A256BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v56 = a1;
  v5 = type metadata accessor for PushNotificationObserver.RegisteredHandler();
  v51 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v39 - v9;
  v55 = type metadata accessor for UUID();
  v10 = *(v55 - 8);
  __chkstk_darwin(v55);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&qword_1011AC3D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  swift_beginAccess();
  v18 = *(v3 + 112);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v40 = (v19 + 63) >> 6;
  v43 = v10 + 32;
  v44 = v10 + 16;
  v49 = v10;
  v22 = (v10 + 8);
  v23 = v18 + 64;
  v53 = v18;
  v54 = v22;

  v25 = 0;
  v52 = a2;
  v46 = v14;
  v47 = v7;
  v45 = v17;
  v42 = v23;
  while (v21)
  {
    v26 = v25;
LABEL_16:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v30 = v29 | (v26 << 6);
    v31 = v53;
    v32 = v49;
    (*(v49 + 16))(v48, *(v53 + 48) + *(v49 + 72) * v30, v55);
    v33 = *(v31 + 56);
    v34 = v50;
    sub_1008BDDF4(v33 + *(v51 + 72) * v30, v50);
    v35 = sub_10010FC20(&qword_1011AC3E0);
    v36 = *(v35 + 48);
    v14 = v46;
    (*(v32 + 32))();
    sub_1008BDD2C(v34, &v14[v36]);
    (*(*(v35 - 8) + 56))(v14, 0, 1, v35);
    a2 = v52;
    v7 = v47;
    v17 = v45;
    v23 = v42;
LABEL_17:
    sub_100A26CA4(v14, v17);
    v37 = sub_10010FC20(&qword_1011AC3E0);
    if ((*(*(v37 - 8) + 48))(v17, 1, v37) == 1)
    {
    }

    sub_1008BDD2C(&v17[*(v37 + 48)], v7);
    if (*v7 == v56 && *(v7 + 1) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      (*(v7 + 2))(v56, a2, v41);
    }

    sub_10072B45C(v7);
    result = (*v54)(v17, v55);
  }

  if (v40 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v40;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v40)
    {
      v38 = sub_10010FC20(&qword_1011AC3E0);
      (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
      v21 = 0;
      v25 = v28;
      goto LABEL_17;
    }

    v21 = *(v23 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *sub_100A25B90(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return sub_100344B48(v9);
}

uint64_t sub_100A25C28()
{
  *(v1 + 32) = v0;
  v2 = sub_100A26EA8();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_100A25D14;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x8000000100E60920, sub_100A261F8, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_100A25D14()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100A25E24, v1, 0);
}

uint64_t sub_100A25E24()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10002705C();

      v5 = static OS_dispatch_queue.main.getter();
      v6 = objc_allocWithZone(APSConnection);
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  sub_100A260E4(v11);
  sub_100344B48(v11);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_100A25B90(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  sub_100344B48(v9);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler()
{
  result = qword_1011AC310;
  if (!qword_1011AC310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100A260E4(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_100A26124(uint64_t a1)
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
  v10[1] = sub_100008F30;

  return sub_100A24FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A261F8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC3F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = *(v3 + 16);
  v10(v8, a1, v2);
  v10(v5, v8, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v8, v2);
  v13 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  sub_10010FC20(&qword_1011A9F70);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v14 = v23;
  if (v23)
  {
    sub_100A26558(v23);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v15 = swift_allocObject();
    v22[1] = v13;
    v16 = v15;
    swift_weakInit();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    swift_weakAssign();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = sub_100A26EFC;
    v18[3] = v12;
    v18[4] = v17;
    v18[5] = v16;
    v19 = *(v16 + 24);
    *(v16 + 24) = sub_1009613A8;
    *(v16 + 32) = v18;

    sub_100020438(v19);

    __chkstk_darwin(v20);
    v22[-2] = v9;
    v22[-1] = v16;
    UnfairLock.locked<A>(_:)(sub_1009613B4);
    sub_10000679C(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100A26558(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000160B4(&v10), (v5 & 1) == 0))
  {

    sub_10001621C(&v10);
    goto LABEL_8;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v4, v12);
  sub_10001621C(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  sub_10010FC20(&qword_1011AC3F8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_100344B48(*(v0 + 120));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_100344B48(*(v0 + 120));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100A267EC()
{
  result = sub_10001F838();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100A26880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100A269C0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100A26BE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100A26C30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100A26CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A26D14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100A26D64(uint64_t a1)
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
  v10[1] = sub_10002F3F4;

  return sub_100A24FA4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100A26E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100A26EA8()
{
  result = qword_1011AC3E8;
  if (!qword_1011AC3E8)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC3E8);
  }

  return result;
}

uint64_t sub_100A26EFC(void *a1)
{
  sub_10010FC20(&qword_1011AC3F8);

  return sub_100A26558(a1);
}

uint64_t Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a5;
  v72 = a6;
  v77 = a4;
  v69 = a9;
  v70 = a3;
  v74 = a2;
  v13 = sub_10010FC20(&qword_1011A8660);
  v65 = *(v13 - 8);
  v76 = *(v65 + 64);
  v14 = __chkstk_darwin(v13 - 8);
  v68 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v75 = &v57 - v17;
  v18 = *(a7 - 8);
  v19 = __chkstk_darwin(v16);
  v67 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v62 = &v57 - v22;
  v24 = v23;
  v64 = v23;
  __chkstk_darwin(v21);
  v26 = &v57 - v25;
  v27 = a8;
  v73 = a8;
  sub_100A2828C(a7, a9);
  v58 = *(v18 + 16);
  v63 = a1;
  v58(v26, a1, a7);
  v28 = *(v18 + 80);
  v29 = (v28 + 32) & ~v28;
  v60 = v28 | 7;
  v30 = v24 + 7;
  v31 = (v24 + 7 + v29) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  *(v32 + 24) = v27;
  v59 = *(v18 + 32);
  v61 = v18 + 32;
  v33 = v32 + v29;
  v34 = v32;
  v66 = v32;
  v59(v33, v26, a7);
  v35 = v74;
  *(v34 + v31) = v74;
  v36 = v62;
  v58(v62, a1, a7);
  sub_1000089F8(v77, v75, &qword_1011A8660);
  v37 = (v28 + 40) & ~v28;
  v38 = (v30 + v37) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v65 + 80);
  v40 = swift_allocObject();
  v41 = v73;
  v40[2] = a7;
  v40[3] = v41;
  v40[4] = v35;
  v42 = v59;
  v59(v40 + v37, v36, a7);
  sub_10012B828(v70, v40 + v38);
  sub_10003D17C(v75, v40 + ((v38 + v39 + 96) & ~v39), &qword_1011A8660);
  v43 = v68;
  sub_10003D17C(v77, v68, &qword_1011A8660);
  v44 = v67;
  v42(v67, v63, a7);
  v45 = (v39 + 48) & ~v39;
  v46 = (v76 + v28 + v45) & ~v28;
  v47 = swift_allocObject();
  v48 = v73;
  *(v47 + 2) = a7;
  *(v47 + 3) = v48;
  v49 = v72;
  *(v47 + 4) = v71;
  *(v47 + 5) = v49;
  sub_10003D17C(v43, &v47[v45], &qword_1011A8660);
  v42(&v47[v46], v44, a7);
  v50 = type metadata accessor for Actions.Pin.Context(0);
  v51 = v69;
  v52 = (v69 + v50[5]);
  v53 = v66;
  *v52 = sub_100A29828;
  v52[1] = v53;
  v54 = (v51 + v50[6]);
  *v54 = &unk_100EF6778;
  v54[1] = v40;
  v55 = (v51 + v50[7]);
  *v55 = &unk_100EF6788;
  v55[1] = v47;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A2F7E8(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = sub_10010FC20(&qword_1011A8678);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_100A278D0;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EF6790;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EF6798;
  v6[1] = 0;
  return result;
}

uint64_t Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a5;
  v56 = a6;
  v57 = a4;
  v52 = a3;
  v59 = a2;
  v54 = a9;
  v11 = *(a7 - 8);
  v12 = __chkstk_darwin(a1);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = &v44 - v15;
  v17 = v16;
  v50 = v16;
  __chkstk_darwin(v14);
  v19 = &v44 - v18;
  v21 = v20;
  v58 = v20;
  sub_100A2828C(v22, v23);
  v47 = *(v11 + 16);
  v47(v19, v21, a7);
  v49 = *(v11 + 80);
  v24 = (v49 + 40) & ~v49;
  v25 = swift_allocObject();
  v53 = v25;
  *(v25 + 2) = a7;
  *(v25 + 3) = a8;
  v26 = v59;
  *(v25 + 4) = v59;
  v45 = *(v11 + 32);
  v46 = v11 + 32;
  v45(v25 + v24, v19, a7);
  v27 = v48;
  v47(v48, v58, a7);
  v28 = swift_allocObject();
  *(v28 + 2) = a7;
  *(v28 + 3) = a8;
  *(v28 + 4) = v26;
  v29 = v27;
  v30 = v45;
  v45(&v28[v24], v29, a7);
  sub_10012B828(v52, &v28[(v24 + v17 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v31 = v51;
  v30(v51, v58, a7);
  v32 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v33 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v34 = (*(v32 + 64) + v49 + v33) & ~v49;
  v35 = swift_allocObject();
  *(v35 + 2) = a7;
  *(v35 + 3) = a8;
  v36 = v56;
  *(v35 + 4) = v55;
  *(v35 + 5) = v36;
  sub_10003D17C(v57, &v35[v33], &qword_1011A8660);
  v30(&v35[v34], v31, a7);
  v37 = type metadata accessor for Actions.Unpin.Context(0);
  v39 = v53;
  v38 = v54;
  v40 = (v54 + v37[5]);
  *v40 = sub_100A2DFC0;
  v40[1] = v39;
  v41 = (v38 + v37[6]);
  *v41 = &unk_100EF67A8;
  v41[1] = v28;
  v42 = (v38 + v37[7]);
  *v42 = &unk_100EF67B8;
  v42[1] = v35;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100A2F7E8(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = sub_10010FC20(&qword_1011A8670);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_100A27B20;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_100EF67C0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_100EF67C8;
  v6[1] = 0;
  return result;
}

uint64_t sub_100A27908()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27A24()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27B98()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A27CB4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPin.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v9 = updated - 8;
  __chkstk_darwin(updated);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A2F7E8(a1, v11, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v9 + 28), v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v12 != enum case for MusicPin.Action.play(_:))
    {
      if (v12 == enum case for MusicPin.Action.shuffle(_:))
      {
        v13 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v13 = 44;
    goto LABEL_8;
  }

  v13 = 46;
LABEL_8:
  sub_100A33818(v11, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = sub_10010FC20(&qword_1011AC400);
  *(a2 + result[9]) = v13;
  *(a2 + result[11]) = 0x4014000000000000;
  v15 = (a2 + result[10]);
  *v15 = sub_100A28014;
  v15[1] = 0;
  v16 = (a2 + result[12]);
  *v16 = &unk_100EF67D0;
  v16[1] = 0;
  v17 = (a2 + result[13]);
  *v17 = &unk_100EF67D8;
  v17[1] = 0;
  return result;
}

uint64_t sub_100A28070()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB254;

  return v5();
}

uint64_t sub_100A2818C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_1008DB844;

  return v5();
}

uint64_t sub_100A2828C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v95 = type metadata accessor for MusicPin();
  v93 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v92 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v94 = &v92 - v5;
  v105 = type metadata accessor for RecentlyAddedMusicItem();
  v98 = *(v105 - 8);
  v6 = __chkstk_darwin(v105);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v97 = &v92 - v9;
  __chkstk_darwin(v8);
  v99 = &v92 - v10;
  v102 = type metadata accessor for Playlist.Entry.InternalItem();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Playlist.Entry();
  v104 = *(v110 - 8);
  v12 = __chkstk_darwin(v110);
  v103 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v92 - v14;
  v112 = type metadata accessor for Track();
  v109 = *(v112 - 8);
  v15 = __chkstk_darwin(v112);
  v107 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v108 = &v92 - v18;
  __chkstk_darwin(v17);
  v111 = &v92 - v19;
  v116 = type metadata accessor for Song();
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Playlist();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MusicVideo();
  v118 = *(v23 - 8);
  v119 = v23;
  __chkstk_darwin(v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Artist();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Album();
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v37;
  (*(v37 + 16))(v36, v120, a1);
  if (swift_dynamicCast())
  {
    v38 = v121;
    (*(v31 + 32))(v121, v34, v30);
    v39 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v40 = *v39;
    v41 = type metadata accessor for MusicPin.Item();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38, v40, v41);
    (*(v42 + 56))(v38, 0, 1, v41);
    return (*(v122 + 8))(v36, a1);
  }

  v43 = v121;
  if (swift_dynamicCast())
  {
    v44 = v43;
    (*(v27 + 32))(v43, v29, v26);
    v45 = enum case for MusicPin.Item.artist(_:);
    v46 = type metadata accessor for MusicPin.Item();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v44, v45, v46);
    (*(v47 + 56))(v44, 0, 1, v46);
    return (*(v122 + 8))(v36, a1);
  }

  v49 = v119;
  if (swift_dynamicCast())
  {
    v38 = v43;
    (*(v118 + 32))(v43, v25, v49);
    v39 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v50 = v117;
  v38 = v43;
  if (swift_dynamicCast())
  {
    (*(v115 + 32))(v43, v22, v50);
    v39 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v51 = v114;
  v52 = v116;
  if (swift_dynamicCast())
  {
    (*(v113 + 32))(v38, v51, v52);
    v39 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v53 = v111;
  v54 = v112;
  if (swift_dynamicCast())
  {
    v56 = v108;
    v55 = v109;
    (*(v109 + 32))(v108, v53, v54);
    v57 = v107;
    (*(v55 + 16))(v107, v56, v54);
    v58 = (*(v55 + 88))(v57, v54);
    if (v58 == enum case for Track.song(_:))
    {
      (*(v55 + 96))(v57, v54);
      (*(v113 + 32))(v38, v57, v52);
LABEL_16:
      v59 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v77 = *v59;
      v78 = type metadata accessor for MusicPin.Item();
      v79 = *(v78 - 8);
      (*(v79 + 104))(v38, v77, v78);
      (*(v79 + 56))(v38, 0, 1, v78);
      goto LABEL_30;
    }

    if (v58 != enum case for Track.musicVideo(_:))
    {
      v80 = type metadata accessor for MusicPin.Item();
      (*(*(v80 - 8) + 56))(v38, 1, 1, v80);
      v81 = *(v55 + 8);
      v81(v57, v54);
      v81(v56, v54);
      return (*(v122 + 8))(v36, a1);
    }

    (*(v55 + 96))(v57, v54);
    (*(v118 + 32))(v38, v57, v49);
LABEL_28:
    v59 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v60 = v106;
  v54 = v110;
  if (swift_dynamicCast())
  {
    v56 = v103;
    v55 = v104;
    (*(v104 + 32))(v103, v60, v54);
    v61 = v100;
    Playlist.Entry.internalItem.getter();
    v62 = v101;
    v63 = v102;
    v64 = (*(v101 + 88))(v61, v102);
    if (v64 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v64 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v118 + 32))(v38, v61, v119);
        goto LABEL_28;
      }

      if (v64 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v62 + 96))(v61, v63);
        (*(v113 + 32))(v38, v61, v116);
        goto LABEL_16;
      }

      if (v64 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v64 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v90 = type metadata accessor for MusicPin.Item();
        (*(*(v90 - 8) + 56))(v38, 1, 1, v90);
        (*(v62 + 8))(v61, v63);
        goto LABEL_30;
      }
    }

    (*(v62 + 8))(v61, v63);
    v65 = type metadata accessor for MusicPin.Item();
    (*(*(v65 - 8) + 56))(v38, 1, 1, v65);
LABEL_30:
    (*(v55 + 8))(v56, v54);
    return (*(v122 + 8))(v36, a1);
  }

  v66 = v99;
  v67 = v105;
  if (swift_dynamicCast())
  {
    v68 = v98;
    v69 = v97;
    (*(v98 + 32))(v97, v66, v67);
    v70 = v96;
    (*(v68 + 16))(v96, v69, v67);
    v71 = (*(v68 + 88))(v70, v67);
    if (v71 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v31 + 32))(v38, v70, v30);
      v72 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v73 = *v72;
      v74 = v69;
      v75 = type metadata accessor for MusicPin.Item();
      v76 = *(v75 - 8);
      (*(v76 + 104))(v38, v73, v75);
      (*(v76 + 56))(v38, 0, 1, v75);
      (*(v68 + 8))(v74, v67);
      return (*(v122 + 8))(v36, a1);
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v118 + 32))(v38, v70, v119);
      v72 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v68 + 96))(v70, v67);
      (*(v115 + 32))(v38, v70, v117);
      v72 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v71 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v71 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v87 = *(v68 + 8);
      v87(v70, v67);
      v88 = type metadata accessor for MusicPin.Item();
      (*(*(v88 - 8) + 56))(v38, 1, 1, v88);
    }

    else
    {
      v91 = type metadata accessor for MusicPin.Item();
      (*(*(v91 - 8) + 56))(v38, 1, 1, v91);
      v87 = *(v68 + 8);
      v87(v70, v67);
    }

    v87(v69, v67);
    return (*(v122 + 8))(v36, a1);
  }

  v82 = v94;
  v83 = v95;
  if (swift_dynamicCast())
  {
    v84 = v93;
    v85 = v92;
    (*(v93 + 32))(v92, v82, v83);
    MusicPin.item.getter();
    (*(v84 + 8))(v85, v83);
    v86 = type metadata accessor for MusicPin.Item();
    (*(*(v86 - 8) + 56))(v38, 0, 1, v86);
  }

  else
  {
    v89 = type metadata accessor for MusicPin.Item();
    (*(*(v89 - 8) + 56))(v38, 1, 1, v89);
  }

  return (*(v122 + 8))(v36, a1);
}

uint64_t sub_100A29424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v36 = a2;
  v33 = type metadata accessor for MusicLibrary.PinAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011AC670);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10010FC20(&qword_1011A8858);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  __chkstk_darwin(v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v15 + 16);
  v34 = a1;
  v22(v17, a1, a3);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v14, 1, 1, v18);
    sub_1000095E8(v14, &qword_1011A8858);
    goto LABEL_5;
  }

  v24(v14, 0, 1, v18);
  (*(v19 + 32))(v21, v14, v18);
  v25 = Album.childrenAddStatus(_:)(v36);
  (*(v19 + 8))(v21, v18);
  if (v25 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.pin.getter();
    v27 = v33;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v35 + 8))(v7, v27);
    v26 = sub_100A29890();
    (*(v30 + 8))(v10, v31);
    return v26;
  }

  return 0x206C616974726150;
}

uint64_t sub_100A29890()
{
  v1 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v29 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - v5;
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_1011AC670);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = *(v10 + 16);
  v28 = v0;
  v15(&v26 - v13, v0, v9);
  v16 = (*(v10 + 88))(v14, v9);
  if (v16 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v16 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v38[0] = 0xD000000000000019;
      *(&v38[0] + 1) = 0x8000000100E5BAC0;
      v15(v27, v28, v9);
      v22._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v22);

      v21 = *&v38[0];
      (*(v10 + 8))(v14, v9);
      return v21;
    }

    return 0;
  }

  (*(v10 + 96))(v14, v9);
  v17 = v29;
  (*(v29 + 32))(v8, v14, v1);
  v18 = *(v17 + 16);
  v18(v6, v8, v1);
  v19 = (*(v17 + 88))(v6, v1);
  v20 = v8;
  if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v17 + 8))(v8, v1);
      return 0x2079646165726C41;
    }

    if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (qword_1011A6820 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v38[4] = v34;
        v38[5] = v35;
        v38[6] = v36;
        v38[7] = v37;
        v38[0] = v30;
        v38[1] = v31;
        v38[2] = v32;
        v38[3] = v33;
        sub_100014984(v38);
        if ((WORD4(v38[0]) & 0x100) != 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = 0xD000000000000016;
        }
      }

      else
      {
        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD00000000000001CLL;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0xD000000000000018;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x6C20646572616853;
        }

        if (v19 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v17 + 8))(v8, v1);
          return 0x4C206E6920746F4ELL;
        }

        v21 = 0x206E776F6E6B6E55;
        if (v19 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v38[0] = 0;
          *(&v38[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          *&v38[0] = 0x206E776F6E6B6E55;
          *(&v38[0] + 1) = 0xEF206E6F73616572;
          v18(v26, v20, v1);
          v24._countAndFlagsBits = String.init<A>(describing:)();
          String.append(_:)(v24);

          v21 = *&v38[0];
          v25 = *(v17 + 8);
          v25(v20, v1);
          v25(v6, v1);
          return v21;
        }
      }

      (*(v17 + 8))(v20, v1);
      return v21;
    }

    (*(v17 + 8))(v8, v1);
    return 0;
  }

  v21 = 0xD000000000000010;
  (*(v17 + 8))(v20, v1);
  return v21;
}

uint64_t sub_100A29FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = type metadata accessor for MusicLibrary.InternalError();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  type metadata accessor for Locale();
  v6[78] = swift_task_alloc();
  v11 = type metadata accessor for String.LocalizationValue();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6[83] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = type metadata accessor for MusicPin.Action();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = type metadata accessor for MusicLibrary.PinAction();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = sub_10010FC20(&qword_1011AC670);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_100A2A450, 0, 0);
}

uint64_t sub_100A2A450()
{
  v1 = v0[103];
  v2 = v0[101];
  v34 = v0[100];
  v35 = v0[102];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  static MusicLibraryAction<>.pin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v3, v5);
  (*(v2 + 16))(v35, v1, v34);
  v6 = (*(v2 + 88))(v35, v34);
  if (v6 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v7 = v0[102];
    v8 = v0[87];
    v9 = v0[86];
    v10 = v0[85];
    v11 = v0[84];
    (*(v0[101] + 96))(v7, v0[100]);
    (*(v10 + 32))(v8, v7, v11);
    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 88))(v9, v11);
    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v0[118] = type metadata accessor for MainActor();
      v0[119] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v16 = sub_100A2B3CC;
      v17 = v13;
      v18 = v15;
LABEL_10:

      return _swift_task_switch(v16, v17, v18);
    }

    if (v12 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v28;
      v0[113] = v27;
      v0[114] = v28;
      v16 = sub_100A2AF6C;
      v17 = v27;
      goto LABEL_10;
    }

    v29 = v0 + 87;
    v30 = v0 + 85;
    v31 = v0 + 84;
    (*(v0[85] + 8))(v0[86], v0[84]);
    goto LABEL_15;
  }

  if (v6 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v29 = v0 + 102;
    v30 = v0 + 101;
    v31 = v0 + 100;
LABEL_15:
    (*(*v30 + 8))(*v29, *v31);
    (*(v0[101] + 8))(v0[103], v0[100]);

    v32 = v0[1];

    return v32();
  }

  v19 = v0[96];
  v20 = enum case for MusicPin.Action.navigate(_:);
  v21 = type metadata accessor for MusicPin.Action();
  (*(*(v21 - 8) + 104))(v19, v20, v21);
  v22 = swift_task_alloc();
  v0[104] = v22;
  *v22 = v0;
  v22[1] = sub_100A2A944;
  v23 = v0[96];
  v24 = v0[68];
  v25 = v0[67];
  v26 = v0[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v26, v23, v25, v24);
}

uint64_t sub_100A2A944()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100A2BC0C;
  }

  else
  {
    v5 = sub_100A2AAB4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100A2AAB4()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = type metadata accessor for MainActor();
  *(v0 + 856) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2AB5C, v2, v1);
}

uint64_t sub_100A2AB5C()
{
  v1 = *(v0 + 744);

  sub_1009E0F34(v1, 0);
  sub_10093B238(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_100A2ABF4, 0, 0);
}

uint64_t sub_100A2ABF4()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  sub_10010FC20(&qword_1011A7F28);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    sub_10000954C((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      sub_10000959C(v0 + 448);
    }

    else
    {
      sub_10000959C(v0 + 448);
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_1000095E8(v0 + 448, &unk_1011AD930);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2AD6C, v8, v7);
}

uint64_t sub_100A2AD6C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(sub_100A2AE04, 0, 0);
}

uint64_t sub_100A2AE04()
{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2AF6C()
{
  v1 = v0[65];
  v2 = static MainActor.shared.getter();
  v0[115] = v2;
  v3 = swift_task_alloc();
  v0[116] = v3;
  *(v3 + 16) = 7;
  *(v3 + 24) = v1;
  *(v3 + 32) = 0;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = sub_100A2B080;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 122, v2, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E5ABB0, sub_1008D09E4, v3, &type metadata for Bool);
}

uint64_t sub_100A2B080()
{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(sub_100A2B1E0, v3, v2);
}

uint64_t sub_100A2B1E0()
{

  return _swift_task_switch(sub_100A2B248, 0, 0);
}

uint64_t sub_100A2B248()
{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2B3CC()
{

  sub_10097F360(0, v0 + 280);

  return _swift_task_switch(sub_100A2B440, 0, 0);
}

uint64_t sub_100A2B440()
{
  *(v0 + 960) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2B4CC, v2, v1);
}

uint64_t sub_100A2B4CC()
{
  v1 = *(v0 + 520);

  v2 = sub_10093F41C(v0 + 280, 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1011A6AC8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011AE4E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = sub_100A8F4C0;
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_100A90460;
    *(v0 + 376) = &unk_1010D9C00;
    v13 = _Block_copy((v0 + 352));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_10012B7A8(v11, v0 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_10012B828(v0 + 16, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_1008D9CA4, v15);
    sub_100020438(v5);

    sub_100344A84(v0 + 280);
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 312), 1, 0, 0);

    sub_100344A84(v0 + 280);
  }

  return _swift_task_switch(sub_100A33AB0, 0, 0);
}

uint64_t sub_100A2B7B4()
{
  v1 = *(v0 + 520);

  v2 = sub_10093F41C(v0 + 208, 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = qword_1011A6AC8;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011AE4E0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deferring presentation…", v10, 2u);
    }

    v11 = *(v0 + 520);

    v12 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = sub_100A8F4C0;
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_100A90460;
    *(v0 + 424) = &unk_1010D9C78;
    v13 = _Block_copy((v0 + 400));
    v14 = [v12 initWithTimeout:v13 interruptionHandler:10.0];
    _Block_release(v13);

    sub_10012B7A8(v11, v0 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_10012B828(v0 + 112, v15 + 24);
    *(v15 + 120) = v3;
    *(v15 + 128) = v4;
    *(v15 + 129) = 1;
    *(v15 + 136) = 0;
    *(v15 + 144) = 0;
    v16 = v14;
    v17 = v3;
    v5(v11, v17, sub_1008D9CA4, v15);
    sub_100020438(v5);

    sub_100344A84(v0 + 208);
    v18 = sub_100A2BA9C;
  }

  else
  {
    sub_100A8D9A0(v2, *(v0 + 240), 1, 0, 0);

    sub_100344A84(v0 + 208);
    v18 = sub_100A33AB4;
  }

  return _swift_task_switch(v18, 0, 0);
}

uint64_t sub_100A2BA9C()
{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100A2BC0C()
{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      type metadata accessor for MusicLibrary();
      static MusicLibrary.shared.getter();
      MusicLibrary.pinsObserver.getter();

      v5 = dispatch thunk of MusicLibraryPinsObserver.maximumPinCount.getter();

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0xD000000000000035;
      v6._object = 0x8000000100E60960;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v51 = v5;
      *(v0 + 496) = v5;
      sub_100A338D8();
      v7 = BinaryInteger.formatted()();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x8000000100E609A0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      v41 = *(v3 + 16);
      v41(v2, v1, v4);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 656);
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v43 = *(v0 + 720);
      v44 = *(v0 + 616);
      v46 = *(v0 + 712);
      v45 = *(v0 + 600);
      v47 = *(v0 + 592);
      v48 = *(v0 + 584);
      v49 = *(v0 + 576);
      v37 = *(v0 + 528);
      v38 = *(v0 + 704);
      v36 = *(v0 + 512);
      v13 = qword_101219808;
      v52 = *(v0 + 536);
      static Locale.current.getter();
      v14 = v13;
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v35 = v15;
      v16 = *(v11 + 8);
      v16(v9, v12);
      v34 = v16;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v17 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v18;
      v40 = v17;
      v16(v9, v12);
      sub_10010FC20(&qword_1011A7C00);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBC6B0;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v20;
      v34(v9, v12);
      (*(v38 + 16))(v43, v36, v52);
      sub_1000089F8(v37, v44, &qword_1011A8660);
      v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
      v22 = (v46 + *(v45 + 80) + v21) & ~*(v45 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v52;
      *(v23 + 32) = v53;
      *(v23 + 40) = v35;
      *(v23 + 48) = v51;
      (*(v38 + 32))(v23 + v21, v43, v52);
      sub_10003D17C(v44, v23 + v22, &qword_1011A8660);

      UUID.init()();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v48 + 8))(v47, v49);
      *(v19 + 32) = v24;
      *(v19 + 40) = v26;
      *(v19 + 48) = v50;
      *(v19 + 56) = v42;
      *(v19 + 64) = 2;
      *(v19 + 72) = &unk_100EF68C0;
      *(v19 + 80) = v23;
      *(v0 + 208) = v40;
      *(v0 + 216) = v39;
      *(v0 + 224) = v53;
      *(v0 + 232) = v35;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v19;
      *(v0 + 272) = 0;
      type metadata accessor for MainActor();
      *(v0 + 968) = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100A2B7B4, v28, v27);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);

  (*(v30 + 8))(v29, v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100A2C344()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A29FCC(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = sub_10010FC20(&qword_1011A8660);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v40 - v7;
  v9 = sub_10010FC20(&qword_1011AC408);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v43 = objc_opt_self();
  v13 = [v43 standardUserDefaults];
  v14 = sub_10099D4CC();
  v15 = sub_10000988C();
  v44 = v14;
  v42 = v15;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    sub_1000095E8(&aBlock, &qword_1011ABB20);
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  sub_100A2F870();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v16 = dispatch thunk of Collection.distance(from:to:)();
  (*(v10 + 8))(v12, v9);
  if (v16 >= 2)
  {
    v17 = [objc_opt_self() sharedCloudController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v19 & 1) == 0)
      {
        sub_1000089F8(a3, v8, &qword_1011A8660);
        v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v21 = swift_allocObject();
        *(v21 + 16) = v41;
        *(v21 + 24) = a2;
        sub_10003D17C(v8, v21 + v20, &qword_1011A8660);

        sub_1009826E8(sub_100A32EE0, v21, v51);

        v22 = sub_10093F41C(v51, 0, 1);
        v23 = v22;
        v24 = v52;
        v25 = v45;
        v26 = *(v45 + 80);
        if (v26)
        {
          v27 = qword_1011A6AC8;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          sub_1000060E4(v28, qword_1011AE4E0);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = sub_100A8F4C0;
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = sub_100A90460;
          v48 = &unk_1010D98D8;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          sub_10012B7A8(v25, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          sub_10012B828(&aBlock, v35 + 24);
          *(v35 + 120) = v23;
          *(v35 + 128) = v24;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v23;
          v26(v25, v37, sub_1008D9BB8, v35);
          sub_100020438(v26);
        }

        else
        {
          sub_100A8D9A0(v22, v52, 1, 0, 0);
        }

        sub_100344A84(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &_s4KeysON);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100A2CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  sub_10010FC20(&qword_1011A8660);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(sub_100A2CBD8, 0, 0);
}

uint64_t sub_100A2CBD8()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  _StringGuts.grow(_:)(79);
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x8000000100E60960;
  String.append(_:)(v6);
  *(v0 + 416) = v5;
  sub_100A338D8();
  v7 = BinaryInteger.formatted()();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x8000000100E609A0;
  String.append(_:)(v8);
  (*(v2 + 16))(v1, v4, v3);
  sub_10010FC20(&qword_1011A7F28);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    sub_10000954C((v0 + 376), v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v14 = 0xEB000000006D6574;
      v13 = 0x497972617262694CLL;
    }

    sub_10000959C(v0 + 376);
  }

  else
  {
    v14 = 0xEB000000006D6574;
    v13 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    sub_1000095E8(v0 + 376, &unk_1011AD930);
  }

  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x8000000100E609C0;
  *(v0 + 56) = v16;
  *(v0 + 64) = v15;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &off_1010C8358;
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x8000000100E609C0;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &off_1010C8358;
  *(v0 + 216) = v13;
  *(v0 + 224) = v14;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  sub_10095272C(v0 + 16, v0 + 256);
  sub_100952764(v0 + 136);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 472);
  sub_1000089F8(*(v0 + 456), v17, &qword_1011A8660);
  v18 = type metadata accessor for Actions.MetricsReportingContext();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = *(v0 + 472);
  if (v19 == 1)
  {
    sub_1000095E8(*(v0 + 472), &qword_1011A8660);
  }

  else
  {

    sub_10093B238(v20, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v0 + 16);

  sub_100952764(v0 + 16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100A2CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100A2D1CC, 0, 0);
}

uint64_t sub_100A2D1CC()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100A33818(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A2D4D8, v19, v18);
  }
}

uint64_t sub_100A2D4D8()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100A33818(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_1009369D8, 0, 0);
}

uint64_t sub_100A2DC8C()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A2CFB4(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_100A2DE04()
{
  v0 = type metadata accessor for MusicLibrary.UnpinAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011AC668);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.unpin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, v0);
  v8 = sub_100A2E000();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100A2E000()
{
  v1 = type metadata accessor for MusicLibrary.UnpinAction.UnsupportedReason();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v29 = &v26 - v6;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_1011AC668);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(v10 + 16);
  v28 = v0;
  v16(&v26 - v14, v0, v9);
  v17 = (*(v10 + 88))(v15, v9);
  if (v17 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v15, v9);
    (*(v2 + 32))(v8, v15, v1);
    v18 = *(v2 + 16);
    v19 = v29;
    v18(v29, v8, v1);
    v20 = (*(v2 + 88))(v19, v1);
    if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6E6E695020746F4ELL;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v1);
      return 0x6C20646572616853;
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unknown(_:))
    {
      v21 = 0x206E776F6E6B6E55;
      (*(v2 + 8))(v8, v1);
    }

    else if (v20 == enum case for MusicLibrary.UnpinAction.UnsupportedReason.unsupportedType(_:))
    {
      v21 = 0xD000000000000010;
      (*(v2 + 8))(v8, v1);
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      v30 = 0x206E776F6E6B6E55;
      v31 = 0xEF206E6F73616572;
      v18(v27, v8, v1);
      v24._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v24);

      v21 = v30;
      v25 = *(v2 + 8);
      v25(v8, v1);
      v25(v29, v1);
    }
  }

  else if (v17 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v30 = 0xD000000000000019;
    v31 = 0x8000000100E5BAC0;
    v16(v13, v28, v9);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v21 = v30;
    (*(v10 + 8))(v15, v9);
  }

  return v21;
}

uint64_t sub_100A2E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = sub_100A2E600;

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t sub_100A2E600()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100A2E74C, 0, 0);
  }
}

uint64_t sub_100A2E74C()
{
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A2E7EC, v2, v1);
}

uint64_t sub_100A2E7EC()
{
  v1 = *(v0 + 32);

  sub_1009E0F34(v1, 0);
  sub_10093B238(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100A2E888()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100A2E514(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t sub_100A2E998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  sub_10010FC20(&qword_1011A7F08);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_100A2EBB0, 0, 0);
}

uint64_t sub_100A2EBB0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  sub_1000089F8(*(v0 + 88), v4, &qword_1011A8660);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 232), &qword_1011A8660);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    sub_100A33818(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 272) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 280) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v7, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v15;
    *(v0 + 320) = v16;
    *(v0 + 336) = v17;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100A2EEBC, v19, v18);
  }
}

uint64_t sub_100A2EEBC()
{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_10093B238(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_10093B238(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    sub_1000089F8(v36 + v14[6], *(v0 + 208), &qword_1011A77F0);
    sub_10093B238(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  sub_10003D17C(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &qword_1011A77F0);
  sub_1000089F8(v37, v38, &qword_1011A7F08);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_10093B238(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_10093B238(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_10093B238(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_10093B238(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100A33818(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_10093B238(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0);

  return _swift_task_switch(sub_10093B298, 0, 0);
}

uint64_t sub_100A2F670()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100008F30;

  return sub_100A2E998(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t sub_100A2F7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A2F870()
{
  result = qword_1011AC410;
  if (!qword_1011AC410)
  {
    sub_1001109D0(&qword_1011AC408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC410);
  }

  return result;
}

uint64_t Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a5;
  v85 = a6;
  v86 = a4;
  v92 = a3;
  v89 = a2;
  v9 = type metadata accessor for MusicPin.Action();
  v10 = *(v9 - 8);
  v78 = *(v10 + 64);
  __chkstk_darwin(v9);
  v94 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v71 - v13;
  __chkstk_darwin(v14);
  v88 = &v71 - v15;
  v16 = type metadata accessor for MusicPin();
  v87 = v16;
  v96 = *(v16 - 8);
  v17 = v96;
  v93 = *(v96 + 64);
  __chkstk_darwin(v16);
  v95 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v71 - v20;
  v22 = __chkstk_darwin(v21);
  v24 = &v71 - v23;
  v25 = *(v17 + 16);
  v82 = a7;
  v90 = a1;
  v25(a7, a1, v16, v22);
  v76 = v25;
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v26 = *(v10 + 16);
  v27 = (a7 + *(updated + 20));
  v28 = v89;
  v97 = v9;
  v29 = v26;
  v75 = v26;
  v26(v27, v89, v9);
  (v25)(v24, a1, v16);
  v29(v88, v28, v9);
  v30 = v96;
  v79 = *(v96 + 80);
  v31 = *(v10 + 80);
  v32 = v10;
  v33 = (v79 + 24) & ~v79;
  v74 = v33;
  v34 = (v93 + v31 + v33) & ~v31;
  v91 = v79 | v31 | 7;
  v35 = v78;
  v36 = swift_allocObject();
  v37 = v92;
  *(v36 + 16) = v92;
  v73 = *(v30 + 32);
  v96 = v30 + 32;
  v38 = v36 + v33;
  v39 = v36;
  v80 = v36;
  v40 = v24;
  v41 = v87;
  v73(v38, v40, v87);
  v42 = *(v32 + 32);
  v71 = v32 + 32;
  v72 = v42;
  v43 = v39 + v34;
  v44 = v97;
  v42(v43, v88, v97);
  v45 = v77;
  v76(v77, v90, v41);
  v46 = v81;
  v47 = v89;
  v75(v81, v89, v44);
  v48 = swift_allocObject();
  v88 = v48;
  *(v48 + 16) = v37;
  v49 = v45;
  v50 = v87;
  v51 = v73;
  v73(v48 + v74, v49, v87);
  v52 = v48 + v34;
  v53 = v46;
  v54 = v97;
  v55 = v72;
  v72(v52, v53, v97);
  v55(v94, v47, v54);
  v51(v95, v90, v50);
  v56 = v51;
  v57 = (v31 + 32) & ~v31;
  v58 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v59 = (v57 + v35 + *(v58 + 80)) & ~*(v58 + 80);
  v60 = (*(v58 + 64) + v79 + v59) & ~v79;
  v61 = swift_allocObject();
  v62 = v85;
  *(v61 + 16) = v84;
  *(v61 + 24) = v62;
  v55((v61 + v57), v94, v97);
  sub_10003D17C(v86, v61 + v59, &qword_1011A8660);
  v56(v61 + v60, v95, v50);
  v63 = v82;
  v64 = updated;
  v65 = (v82 + *(updated + 24));
  v66 = v80;
  *v65 = sub_100A32F60;
  v65[1] = v66;
  v67 = (v63 + *(v64 + 28));
  v68 = v88;
  *v67 = &unk_100EF67F8;
  v67[1] = v68;
  v69 = (v63 + *(v64 + 32));
  *v69 = &unk_100EF6808;
  v69[1] = v61;
}

uint64_t sub_100A2FE88()
{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction();
  v1 = *(updated - 8);
  __chkstk_darwin(updated);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_1011AC658);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  static MusicLibraryAction<>.update(pinAction:)();
  type metadata accessor for MusicPin();
  sub_100A33880();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v1 + 8))(v3, updated);
  v8 = sub_100A30054();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100A30054()
{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction.UnsupportedReason();
  v2 = *(updated - 8);
  __chkstk_darwin(updated);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v31 - v5;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_10010FC20(&qword_1011AC658);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v17 = *(v10 + 16);
  v33 = v0;
  v17(&v31 - v15, v0, v9, v14);
  v18 = (*(v10 + 88))(v16, v9);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v10 + 96))(v16, v9);
    (*(v2 + 32))(v8, v16, updated);
    v19 = *(v2 + 16);
    v20 = v34;
    v19(v34, v8, updated);
    v21 = (*(v2 + 88))(v20, updated);
    v22 = updated;
    v23 = v2;
    if (v21 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.notPinned(_:))
    {
      (*(v2 + 8))(v8, v22);
      return 0x6E6E695020746F4ELL;
    }

    else if (v21 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.sharedLibrary(_:))
    {
      (*(v2 + 8))(v8, v22);
      return 0x6C20646572616853;
    }

    else if (v21 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedAction(_:))
    {
      (*(v2 + 8))(v8, v22);
      return 0xD000000000000012;
    }

    else if (v21 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unsupportedType(_:))
    {
      (*(v2 + 8))(v8, v22);
      return 0xD000000000000010;
    }

    else if (v21 == enum case for MusicLibrary.UpdatePinAction.UnsupportedReason.unknown(_:))
    {
      (*(v2 + 8))(v8, v22);
      return 0x206E776F6E6B6E55;
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      v27 = v22;
      _StringGuts.grow(_:)(17);

      v35 = 0x206E776F6E6B6E55;
      v36 = 0xEF206E6F73616572;
      v19(v32, v8, v27);
      v28._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v28);

      v29 = v35;
      v30 = *(v23 + 8);
      v30(v8, v27);
      v30(v34, v27);
      return v29;
    }
  }

  else if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    return 0;
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v35 = 0xD000000000000019;
    v36 = 0x8000000100E5BAC0;
    (v17)(v12, v33, v9);
    v25._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v25);

    v26 = v35;
    (*(v10 + 8))(v16, v9);
    return v26;
  }
}

uint64_t sub_100A305A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002F3F4;

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t sub_100A30658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin.Action();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(sub_100A308D8, 0, 0);
}

uint64_t sub_100A308D8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    (*(v4 + 16))(v2, *(v0 + 88), v3);
    v5 = (*(v4 + 88))(v2, v3);
    if (v5 == enum case for MusicPin.Action.navigate(_:))
    {
      v6 = 46;
LABEL_9:
      v1(v6);
      goto LABEL_10;
    }

    if (v5 != enum case for MusicPin.Action.play(_:))
    {
      if (v5 == enum case for MusicPin.Action.shuffle(_:))
      {
        v6 = 45;
        goto LABEL_9;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    }

    v6 = 44;
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v9, &qword_1011A8660);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  sub_100A33818(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = sub_1008ABC54();
  *(v0 + 296) = v16;
  (*(v13 + 16))(v12, v15, v14);
  v17 = (*(v13 + 88))(v12, v14);
  if (v17 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v17 != enum case for MusicPin.Action.play(_:))
    {
      if (v17 == enum case for MusicPin.Action.shuffle(_:))
      {
        v18 = 46;
        goto LABEL_21;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

    v18 = 45;
    goto LABEL_21;
  }

  v18 = 47;
LABEL_21:
  *(v0 + 362) = v18;
  v19 = *(v0 + 216);
  v20 = type metadata accessor for URL();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  sub_10010FC20(&qword_1011A8868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = sub_1008AB360();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = sub_1008AC260(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  sub_1008DB7F0(inited + 32);
  type metadata accessor for MainActor();
  *(v0 + 352) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A30D2C, v29, v28);
}

uint64_t sub_100A30D2C()
{
  v83 = *(v0 + 360);
  v76 = *(v0 + 328);
  v81 = *(v0 + 362);
  v79 = *(v0 + 296);
  v77 = *(v0 + 344);
  v78 = *(v0 + 288);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_10093B238(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_10093B238(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000089F8(v39 + v15[6], *(v0 + 200), &qword_1011A77F0);
    sub_10093B238(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0);
  sub_1000089F8(v40, v41, &qword_1011A7F08);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_10093B238(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_10093B238(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_10093B238(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_10093B238(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_100A33818(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  v66 = *(v0 + 344);
  v68 = *(v0 + 328);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 360);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100344B1C(v68, v67, v66, v73, SBYTE1(v73));
  sub_10093B238(v72, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v71, &qword_1011A77F0);

  return _swift_task_switch(sub_100A31510, 0, 0);
}

uint64_t sub_100A31510()
{
  sub_10093B238(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  v10 = sub_10010FC20(&qword_1011AC418);
  __chkstk_darwin(v10 - 8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v23[-v14];
  sub_1000089F8(v1, &v23[-v14], &qword_1011AC418);
  v16 = type metadata accessor for MusicPin.Item();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v15, v12, &qword_1011AC418);
  v20 = (*(v17 + 88))(v12, v16);
  if (v20 != enum case for MusicPin.Item.album(_:) && v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
  {
    (*(v17 + 8))(v12, v16);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v18 = qword_101219808;
    static Locale.current.getter();
    v19 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v9, v3);
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v21 = qword_101219808;
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  (*(v17 + 8))(v12, v16);
LABEL_13:
  sub_1000095E8(v15, &qword_1011AC418);
  return v19;
}

uint64_t (*Actions.Pin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_1008D04DC;
}

uint64_t (*sub_100A31C08())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return sub_1008D0A40;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v23[-v8];
  v10 = sub_10010FC20(&qword_1011AC418);
  __chkstk_darwin(v10 - 8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v23[-v14];
  sub_1000089F8(v1, &v23[-v14], &qword_1011AC418);
  v16 = type metadata accessor for MusicPin.Item();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v15, v12, &qword_1011AC418);
  v20 = (*(v17 + 88))(v12, v16);
  if (v20 != enum case for MusicPin.Item.album(_:) && v20 != enum case for MusicPin.Item.artist(_:) && v20 != enum case for MusicPin.Item.musicVideo(_:) && v20 != enum case for MusicPin.Item.playlist(_:) && v20 != enum case for MusicPin.Item.song(_:))
  {
    (*(v17 + 8))(v12, v16);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v18 = qword_101219808;
    static Locale.current.getter();
    v19 = String.init(localized:table:bundle:locale:comment:)();
    (*(v4 + 8))(v9, v3);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v21 = qword_101219808;
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  (*(v17 + 8))(v12, v16);
LABEL_10:
  sub_1000095E8(v15, &qword_1011AC418);
  return v19;
}

uint64_t (*Actions.Unpin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_1008D0A40;
}

uint64_t (*sub_100A3225C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return sub_1008D0A40;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  MusicPin.item.getter();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = type metadata accessor for MusicPin.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = static MusicPin.Action.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100A324CC()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100A325B8()
{
  v0 = type metadata accessor for MusicPin.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  v4 = static MusicPin.Action.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPin.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for Album();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v6 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = type metadata accessor for Artist();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = type metadata accessor for MusicVideo();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = type metadata accessor for Playlist();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v6 != enum case for MusicPin.Item.song(_:))
    {
      v17 = type metadata accessor for GenericMusicItem();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v12 = type metadata accessor for Song();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  v13 = *v8;
  v14 = type metadata accessor for GenericMusicItem();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t sub_100A32A80(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28 = a4;
  v26 = a2;
  v27 = a1;
  v5 = sub_10010FC20(&qword_1011A8660);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v10 + 16))(v12, v15, v9);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v16 = qword_101219808;
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  (*(v10 + 8))(v15, v9);
  strcpy(v44, "DownloadPins");
  HIBYTE(v44[6]) = 0;
  v44[7] = -5120;
  v45 = 1;
  v46 = 0xD000000000000016;
  v47 = 0x8000000100E5DDD0;
  v20 = 0x497972617262694CLL;
  if (a3)
  {
    v20 = v26;
  }

  v21 = 0xEB000000006D6574;
  if (a3)
  {
    v21 = a3;
  }

  v48 = v17;
  v49 = v19;
  v22 = 0x776F4E20746F4ELL;
  if (v27)
  {
    v22 = 0x6E4F206E727554;
  }

  v50 = 0xD00000000000003CLL;
  v51 = 0x8000000100E5DDF0;
  v52 = &off_1010C8388;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = 0xE700000000000000;
  v57 = (v27 & 1) == 0;
  strcpy(v30, "DownloadPins");
  HIBYTE(v30[6]) = 0;
  v30[7] = -5120;
  v31 = 1;
  v32 = 0xD000000000000016;
  v33 = 0x8000000100E5DDD0;
  v34 = v17;
  v35 = v19;
  v36 = 0xD00000000000003CLL;
  v37 = 0x8000000100E5DDF0;
  v38 = &off_1010C8388;
  v39 = v20;
  v40 = v21;
  v41 = v22;
  v42 = 0xE700000000000000;
  v43 = v57;

  sub_10095272C(v44, &v29);
  sub_100952764(v30);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  sub_1000089F8(v28, v7, &qword_1011A8660);
  v23 = type metadata accessor for Actions.MetricsReportingContext();
  if ((*(*(v23 - 8) + 48))(v7, 1, v23) == 1)
  {
    sub_1000095E8(v7, &qword_1011A8660);
  }

  else
  {

    sub_10093B238(v7, type metadata accessor for Actions.MetricsReportingContext);
  }

  _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(v44);

  return sub_100952764(v44);
}

uint64_t sub_100A32EE0(int a1)
{
  v3 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100A32A80(a1, v4, v5, v6);
}

uint64_t sub_100A32F60()
{
  type metadata accessor for MusicPin();
  type metadata accessor for MusicPin.Action();

  return sub_100A2FE88();
}

uint64_t sub_100A33030()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MusicPin.Action();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100A33180()
{
  v2 = *(type metadata accessor for MusicPin() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MusicPin.Action() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10002F3F4;

  return sub_100A305A8(v7, v0 + v3, v0 + v6);
}

uint64_t sub_100A332B4()
{
  v2 = *(type metadata accessor for MusicPin.Action() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPin() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_100008F30;

  return sub_100A30658(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

void sub_100A33494()
{
  if (!qword_1011AC4E8)
  {
    type metadata accessor for MusicPin.Item();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AC4E8);
    }
  }
}

uint64_t sub_100A33510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&qword_1011AC418);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100A335EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10010FC20(&qword_1011AC418);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100A336B0()
{
  sub_100A33494();
  if (v0 <= 0x3F)
  {
    sub_10001F838();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100A33774()
{
  result = type metadata accessor for MusicPin();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicPin.Action();
    if (v2 <= 0x3F)
    {
      result = sub_10001F838();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100A33818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100A33880()
{
  result = qword_1011AC660;
  if (!qword_1011AC660)
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC660);
  }

  return result;
}

unint64_t sub_100A338D8()
{
  result = qword_1011AC678;
  if (!qword_1011AC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC678);
  }

  return result;
}

uint64_t sub_100A3392C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(sub_10010FC20(&qword_1011A8660) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002F3F4;

  return sub_100A2CADC(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  sub_10000FB18(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000CD9C(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10000FB18(a3, a4);
}

void (*MPCPlaybackEngine.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = [v1 playerID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = sub_10000CD9C(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return sub_100A33DC0;
}

void sub_100A33DC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    sub_10000FB18(v5, v3);

    v3 = v2[3];
  }

  else
  {
    sub_10000FB18(*(*a1 + 16), v3);
  }

  free(v2);
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (qword_1011A6A50 != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (qword_1011A6A50 != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_101219CD8;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100A3404C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100A340A8()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100A340E4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100A3413C()
{
  sub_10010FC20(&qword_1011AAC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  sub_10000C0A4(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011AAC28);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  sub_100009F78(0, &qword_1011AC8D0);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (qword_1011A6A58 != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (qword_1011A6A58 != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id sub_100A34380()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011AC8C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v22 - v7;
  v9 = [v1 tracklist];
  v10 = [v9 playingItem];

  if (v10)
  {
    v11 = [v10 metadataObject];

    if (!v11)
    {
      return 0;
    }

    v12 = [v1 tracklist];
    v13 = [v12 playingItemIndexPath];

    if (v13)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    }

    else
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    }

    sub_100A36D44(v4, v8);
    type metadata accessor for IndexPath();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v8, 1, v14) != 1)
    {
      v17 = IndexPath.section.getter();
      (*(v16 + 8))(v8, v14);
      v18 = [v1 tracklist];
      v19 = [v18 items];

      v20 = [v19 sectionAtIndex:v17];
      v21 = [v20 metadataObject];

      [v1 state];
      return v21;
    }

    sub_100A36DB4(v8);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = sub_100A34380();
  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [v5 identifiers];
  v11 = [a1 identifiers];
  v12 = [v10 intersectsSet:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (!a2)
    {

      return 0;
    }

    v13 = a2;
    v14 = v7;
    v15 = v13;
    v7 = v14;
    if ([v7 type] != 2 || (v16 = objc_msgSend(v7, "album")) == 0)
    {

      goto LABEL_14;
    }

    v17 = v16;
    v18 = [v16 identifiers];
    v19 = [v15 identifiers];
    v20 = [v18 intersectsSet:v19];

    if (v20)
    {

      return v9;
    }

LABEL_9:

LABEL_14:
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return v9;
}

{
  v4 = sub_100A34380();
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = [v5 innermostModelObject];
    v11 = [v10 identifiers];

    v12 = [v8 identifiers];
    v13 = [v11 unionSet:v12];

    v14 = [a1 identifiers];
    LODWORD(v12) = [v13 intersectsSet:v14];

    if (v12)
    {
      if (!v7)
      {
        v9 = 0;
        v7 = v8;
        goto LABEL_12;
      }

      v7 = v7;
      if ([v7 type] != 4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
      {

        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v15 identifiers];
      v18 = [a2 identifiers];
      v19 = [v17 intersectsSet:v18];

      if (v19)
      {

        v7 = v8;
LABEL_12:

        return v9;
      }
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  return 0;
}

uint64_t MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  result = [v1 playingItem];
  if (result)
  {
    v10 = result;
    [result duration];
    if (v20[56] == 1)
    {
LABEL_3:

      return 0;
    }

    v11 = [v1 playingItemIndexPath];
    if (v11)
    {
      v12 = v11;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v8, v6, v2);
      v13 = [v1 items];
      v14 = [v13 sectionAtIndex:IndexPath.section.getter()];

      v15 = [v14 metadataObject];
      if (v15)
      {
        v16 = [v15 innermostModelObject];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 type] == 4)
          {
            (*(v3 + 8))(v8, v2);

            goto LABEL_3;
          }

          v19 = [v18 subtype];

          (*(v3 + 8))(v8, v2);
          if (v19 == 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v8, v2);
        }

        return 1;
      }

      (*(v3 + 8))(v8, v2);
    }

    return 1;
  }

  return result;
}

id MPCPlayerResponseTracklist.currentPlayEvent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &aBlock[-1] - v7;
  result = [v1 playingItemIndexPath];
  if (result)
  {
    v10 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v11 = [v1 items];
    v12 = [v11 sectionAtIndex:IndexPath.section.getter()];

    v13 = [v12 metadataObject];
    if (v13)
    {
      v22 = 0;
      v14 = [v13 identifiers];
      __chkstk_darwin(v14);
      *(&v20 - 2) = v13;
      *(&v20 - 1) = &v22;
      v15 = objc_allocWithZone(MPModelPlayEvent);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_100A36C9C;
      *(v16 + 24) = &v20 - 4;
      aBlock[4] = sub_1002CF914;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006BD7C;
      aBlock[3] = &unk_1010D9CF0;
      v17 = _Block_copy(aBlock);

      v18 = [v15 initWithIdentifiers:v14 block:v17];

      _Block_release(v17);
      (*(v3 + 8))(v8, v2);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else if (v22 == 1)
      {

        return 0;
      }

      else
      {
        return v18;
      }
    }

    else
    {
      (*(v3 + 8))(v8, v2);
      return 0;
    }
  }

  return result;
}

void sub_100A35094(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v10 = [a2 anyObject];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v5 setPlaylist:v7];
      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v5 setArtist:v8];
      goto LABEL_10;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v5 setRadioStation:v9];
      goto LABEL_10;
    }

LABEL_14:
    *a3 = 1;
    return;
  }

  [v5 setAlbum:v6];
LABEL_10:
}

id MPCVocalsControlCommand.isTrulyActive.getter()
{
  result = [v0 isActive];
  if (result)
  {
    return ([v0 isDisabled] ^ 1);
  }

  return result;
}

id MPCPlayerResponse.VideoContext.__allocating_init(playerResponse:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 videoOutput];
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      sub_100009F78(0, &qword_1011AAEA0);
      if (swift_dynamicCastMetatype())
      {
        type metadata accessor for MPCPlayerResponse.VideoContext();
        v2 = swift_allocObject();
        MPCPlayerResponse.VideoContext.init(output:)(v4);
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.__allocating_init(output:)(void *a1)
{
  v2 = swift_allocObject();
  MPCPlayerResponse.VideoContext.init(output:)(a1);
  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.init(output:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding) = 0;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output) = a1;
  v4 = a1;
  [v4 videoBounds];
  swift_beginAccess();
  _s3__C6CGRectVMa_0(0);
  Published.init(initialValue:)();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  sub_10010FC20(&unk_1011A9FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = sub_10010FC20(&qword_1011AC708);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = sub_10010FC20(&unk_1011AC710);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, sub_100A36CBC, v8);

  *(v2 + v3) = v10;

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100A356E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
    swift_beginAccess();
    [*(v1 + v2) videoBounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(v1 + v2) isReadyForDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    if (!CGRectEqualToRect(v15, v14))
    {
      v16.origin.x = v4;
      v16.origin.y = v6;
      v16.size.width = v8;
      v16.size.height = v10;
      Width = CGRectGetWidth(v16);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (vabdd_f64(Width, CGRectGetWidth(v14)) > 1.0)
      {
        v17.origin.x = v4;
        v17.origin.y = v6;
        v17.size.width = v8;
        v17.size.height = v10;
        Height = CGRectGetHeight(v17);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (vabdd_f64(Height, CGRectGetHeight(v14)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v14.origin.x) = LOBYTE(v4);

          static Published.subscript.setter();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 == LOBYTE(v14.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100A35A38@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A35AB8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*MPCPlayerResponse.VideoContext.isReadyForDisplay.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011AC720);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100A35F0C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100A35F8C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*MPCPlayerResponse.VideoContext.videoBounds.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC730);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AC728);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$videoBounds.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011AC730);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011AC728);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

void sub_100A36374(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MPCPlayerResponse.VideoContext.output.getter()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MPCPlayerResponse.VideoContext.output.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t MPCPlayerResponse.VideoContext.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_10010FC20(&qword_1011AC728);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = sub_10010FC20(&qword_1011AC728);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), sub_100009F78(0, &qword_1011AAEA0), swift_dynamicCastMetatype()))
    {
      type metadata accessor for MPCPlayerResponse.VideoContext();
      v4 = swift_allocObject();
      MPCPlayerResponse.VideoContext.init(output:)(v3);
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t _sSo17MPCPlaybackEngineC9MusicCoreE13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100190304(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        sub_100009F78(0, &qword_1011AC8D8);
        v12 = a8;
        v13 = a4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _sSo17MPCPlayerResponseC9MusicCoreE12VideoContextC2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011AAEA0);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = CGRectEqualToRect(v12, v12);
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v12.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return LOBYTE(v12.origin.x);
}

unint64_t sub_100A36CC8()
{
  result = qword_1011AC740;
  if (!qword_1011AC740)
  {
    sub_1001109D0(&qword_1011AC748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC740);
  }

  return result;
}

uint64_t sub_100A36D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AC8C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A36DB4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

void sub_100A36EB4(void *a1, char a2)
{
  v5 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(v2 + 48);
  v32 = v8;
  if ((a2 & 1) == 0)
  {
    if (v8)
    {
      v11 = [v8 tracklist];
      v12 = [v11 playingItem];

      if (!a1)
      {
        v13 = 0;
        if (!v12)
        {
          v12 = 0;
          v14 = 0;
LABEL_24:
          if ((sub_100A372E8(v12, v14) & 1) == 0)
          {

LABEL_30:
            v29 = *(v2 + 48);
            *(v2 + 48) = a1;
            v30 = a1;

            return;
          }

          v13 = v14;
LABEL_26:
          static TaskPriority.userInitiated.getter();
          v25 = type metadata accessor for TaskPriority();
          (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
          v26 = swift_allocObject();
          *(v26 + 16) = &unk_100EF6DA8;
          *(v26 + 24) = v2;

          v27 = static Task<>.delayed(by:priority:task:)(v7, &unk_100EF6DB8, v26, &type metadata for () + 8, 1.0);

          sub_1000095E8(v7, &qword_1011A7F00);
          v28 = *(v2 + 56);
          *(v2 + 56) = v27;
          if (v28)
          {

            sub_10010FC20(&qword_1011AB640);
            Task.cancel()();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v15 = [a1 tracklist];
    v13 = [v15 playingItem];

    if (!v12)
    {
      v19 = 0;
      v17 = 0;
      v14 = 0;
      if (!v13)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v16 = [v12 contentItemIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (!v13)
    {
      v14 = 0;
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v20 = [v13 contentItemIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v19)
    {
      if (v23)
      {
        if (v17 == v21 && v19 == v23)
        {

          v14 = v13;
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v13;
          if ((v24 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v14 = v13;
      if (!v23)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v9 = a1;
  v10 = v32;
}

uint64_t sub_100A37284(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100A36EB4(v1, 0);
  }

  return result;
}

uint64_t sub_100A372E8(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_100A37430(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A374C8, v3, v2);
}

uint64_t sub_100A374C8()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    sub_100A3753C(2);
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_100A3753C(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101219D38);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v18[7] = a1;
      v12 = String.init<A>(describing:)();
      v14 = sub_100010678(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[📸] Set Needs Snapshot for Reason=%{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v2;
    *(v17 + 40) = a1;
    sub_100969440(0, 0, v6, &unk_100EF6DD0, v17);
  }
}

uint64_t sub_100A377B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A37850, v7, v6);
}

uint64_t sub_100A37850()
{
  v1 = *(v0 + 32);

  sub_10005D6A0(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100A37964()
{
  result = qword_1011AC9D8;
  if (!qword_1011AC9D8)
  {
    sub_1001109D0(&qword_1011AD040);
    sub_10001C070(&qword_1011AC9E0, &qword_1011AC9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AC9D8);
  }

  return result;
}

uint64_t sub_100A37A1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return sub_100A37430(v0);
}

uint64_t sub_100A37AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1006B9D38(a1, v4);
}

uint64_t sub_100A37B64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100A377B4(a1, v4, v5, v6, v7);
}

unint64_t sub_100A37C3C()
{
  result = qword_1011ACA00;
  if (!qword_1011ACA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ACA00);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(sub_100A37D8C, v7, v6);
}

uint64_t sub_100A37D8C()
{
  v35 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  v0[27] = v4;
  v0[28] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v7 = v0[16];
  v8 = type metadata accessor for Logger();
  v0[29] = sub_1000060E4(v8, static Logger.playbackController);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[16];
    v13 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_100010678(v4, v6, &v34);
    *(v13 + 12) = 2082;
    v14 = v12;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100010678(v16, v18, &v34);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v0[19];
  v21 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v24 = v0[16];
  v23 = v0[17];
  if (v22)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v24;

    sub_1001DFD48(v23);
    static Published.subscript.getter();

    v26 = v0[14];
    if (v26)
    {
    }
  }

  else
  {
    v27 = v24;
    sub_1001DFD48(v23);
  }

  v28 = v0[16];
  v29 = v0[17];
  MPCPlaybackIntent.isInGroupSession.setter();
  v0[5] = &type metadata for Player.InsertCommand;
  v0[6] = &protocol witness table for Player.InsertCommand;
  v0[2] = v28;
  v0[3] = v29;
  v30 = v28;
  sub_1001DFD48(v29);
  v0[30] = static MainActor.shared.getter();
  v32 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[31] = v32;
  v0[32] = v31;

  return _swift_task_switch(sub_100A380DC, v32, v31);
}

uint64_t sub_100A380DC()
{
  v1 = v0[16];
  sub_10010FC20(&unk_1011ACA30);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4((v0 + 2), v2 + 32);
  v0[34] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_100A381D8;
  v4 = v0[18];

  return sub_100A43F80(v2, 0x10000, 1, 0, v1, v4);
}

uint64_t sub_100A381D8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100A38494;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100A38350;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A38350()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_100A383BC, v1, v2);
}

uint64_t sub_100A383BC()
{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  sub_10000959C((v0 + 2));
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(sub_100A389F8, v2, v3);
}

uint64_t sub_100A38494()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_100A384F8, v1, v2);
}

uint64_t sub_100A384F8()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_100A3855C, v1, v2);
}

uint64_t sub_100A3855C()
{
  v33 = v0;
  v1 = *(v0 + 296);
  sub_10000959C(v0 + 16);
  *(v0 + 120) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 code];

    if (v5 == 3)
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = sub_100010678(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = sub_100010678(0xD00000000000001FLL, 0x8000000100E60B40, v32);
        _os_log_impl(&_mh_execute_header, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = sub_100A38B90;
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return sub_100A3B22C(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_100010678(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = String.init<A>(describing:)();
      v27 = sub_100010678(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    sub_100A516D8();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    sub_100309AD8(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    sub_100309AD8(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100A389F8()
{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_100010678(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    sub_10000959C(v9);

    sub_100309AD8(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    sub_100309AD8(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100A38B90()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_100A53DB8;
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = sub_100A38CD4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A38CD4()
{
  v2 = v0[16];
  v1 = v0[17];

  sub_100A5172C();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  sub_100309AD8(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for CocoaError.Code();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(sub_100A38FF4, v8, v7);
}

uint64_t sub_100A38FF4()
{
  v38 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  sub_100065164(v5, v6, v7);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v0[37] = v8;
  v0[38] = v9;
  (*(v2 + 8))(v1, v3);
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v11 = v0[30];
  v12 = v0[15];
  v13 = type metadata accessor for Logger();
  v0[39] = v13;
  v0[40] = sub_1000060E4(v13, static Logger.playbackController);
  sub_100A51780(v12, v11, type metadata accessor for PlaybackIntentDescriptor);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[30];
  if (v16)
  {
    v18 = v0[29];
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_100010678(v8, v10, &v37);
    *(v19 + 12) = 2082;
    sub_100A51780(v17, v18, type metadata accessor for PlaybackIntentDescriptor);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_100A51DF4(v17, type metadata accessor for PlaybackIntentDescriptor);
    v23 = sub_100010678(v20, v22, &v37);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100A51DF4(v17, type metadata accessor for PlaybackIntentDescriptor);
  }

  sub_100A51780(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v0[24];
    v27 = v0[21];
    v28 = v0[22];
    (*(v28 + 32))(v26, v25, v27);
    v29 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v28 + 8))(v26, v27);
  }

  else
  {
    v29 = *v25;
  }

  v30 = v0[17];
  v31 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v30 + v31))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v32 = v0[9];
    if (v32)
    {
    }
  }

  MPCPlaybackIntent.isInGroupSession.setter();

  v33 = swift_task_alloc();
  v0[41] = v33;
  *v33 = v0;
  v33[1] = sub_100A39434;
  v34 = v0[16];
  v35 = v0[15];

  return sub_100A3C668(v35, v8, v10, v34);
}

uint64_t sub_100A39434()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_100A39F34;
  }

  else
  {
    v5 = sub_100A39570;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100A39570()
{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100010678(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = sub_100A398CC;

    return sub_100A42A14(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  sub_100A51780(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    sub_100A51DF4(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = sub_100A39BD8;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_100A398CC()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_100A399EC, v3, v2);
}

uint64_t sub_100A399EC()
{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  sub_100A51780(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    sub_100A51DF4(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_100A39BD8;

  return MusicPlaybackIntentDescriptor.donate()();
}

uint64_t sub_100A39BD8()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100A3A888;
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_100A39CF4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100A39CF4()
{
  v18 = v0;

  if (qword_1011A6A70 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v0[39], static Logger.siriIntents);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = sub_100010678(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100A39F34()
{
  v65 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      sub_100A5181C(v2, 0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      sub_100A517E8(v2, 0);
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 304);
      if (v28)
      {
        v30 = *(v0 + 296);
        v31 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = sub_100010678(v30, v29, v64);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2082;
        *(v0 + 104) = v2;
        sub_100A51840(v2);
        v33 = String.init<A>(describing:)();
        v35 = sub_100010678(v33, v34, v64);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v31, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v2, 0);
      }

      else
      {

        sub_100A517E8(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        v56 = os_log_type_enabled(v18, v55);
        v57 = *(v0 + 304);
        if (v56)
        {
          v58 = *(v0 + 296);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v64[0] = v60;
          *v59 = 136446210;
          v61 = sub_100010678(v58, v57, v64);

          *(v59 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v18, v55, "❌ Intent id=%{public}s) — Missing player", v59, 0xCu);
          sub_10000959C(v60);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == 2)
      {

        goto LABEL_9;
      }
    }

    sub_100A517E8(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v15 = sub_100010678(v12, v11, v64);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      sub_10000959C(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v36))
    {
      v37 = *(v0 + 336);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = sub_100010678(v39, v38, v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2082;
      *(v0 + 96) = v37;
      swift_errorRetain();
      v42 = String.init<A>(describing:)();
      v44 = sub_100010678(v42, v43, v64);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v8, v36, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    sub_100A5181C(v16, 1);
    v18 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    sub_100A517E8(v16, 1);
    v46 = os_log_type_enabled(v18, v45);
    v47 = *(v0 + 304);
    if (!v46)
    {

      sub_100A517E8(v16, 1);
      goto LABEL_33;
    }

    v48 = *(v0 + 296);
    v49 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v49 = 136446466;
    v50 = sub_100010678(v48, v47, v64);

    *(v49 + 4) = v50;
    *(v49 + 12) = 2082;
    sub_10010FC20(&qword_1011ACA60);
    v51 = Array.description.getter();
    v53 = v52;
    sub_100A517E8(v16, 1);
    v54 = sub_100010678(v51, v53, v64);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v18, v45, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v49, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != 1)
  {
    sub_100A517E8(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v64[0] = v24;
  *v23 = 136446210;
  v25 = sub_100010678(v22, v21, v64);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  sub_10000959C(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_100A3A888()
{
  v17 = v0;

  if (qword_1011A6A70 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640);
    v10 = String.init<A>(describing:)();
    v12 = sub_100010678(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    sub_10000959C(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return sub_100A3AC24;
}

void sub_100A3AC24(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    sub_1000237E4(v6);
  }

  else
  {
    sub_1000237E4(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100A3AD98, v7, v6);
}

{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_100A43D98;

  return sub_100A43F80(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t sub_100A3AD98()
{
  v1 = v0[2];
  sub_10010FC20(&unk_1011ACA30);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(v1, v2 + 32);
  v0[12] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_100A3AE90;
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return sub_100A43F80(v2, 0x10000, 1, v5, v6, v4);
}

uint64_t sub_100A3AE90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = sub_100A3B164;
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = sub_100A3B008;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100A3B008()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100A3B074, v1, v2);
}

uint64_t sub_100A3B074()
{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100A3B164()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100A3B1C8, v1, v2);
}

uint64_t sub_100A3B1C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A3B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(sub_100A3B2F4, 0, 0);
}

uint64_t sub_100A3B2F4()
{
  v12 = v0;
  if (qword_1011A6A60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = sub_1000060E4(v1, static Logger.playbackController);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_100010678(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    sub_10000959C(v7);
  }

  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(sub_100A3B4BC, v9, v8);
}

uint64_t sub_100A3B4BC()
{
  v1 = static MainActor.shared.getter();
  *(v0 + 288) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100A3B550, v2, v4);
}

uint64_t sub_100A3B550()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_100A3B604;
  v2 = swift_continuation_init();
  sub_100A47364(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100A3B604()
{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100A3B710, v3, v2);
}

uint64_t sub_100A3B710()
{

  return _swift_task_switch(sub_100A3B778, 0, 0);
}

uint64_t sub_100A3B778()
{
  v37 = v0;
  if (*(v0 + 154) == 1)
  {
    v1 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v2 = v1[3];
    v3 = v1[4];
    sub_10000954C(v1, v2);
    *(v0 + 296) = (*(v3 + 40))(v2, v3);
    v4 = swift_task_alloc();
    *(v0 + 304) = v4;
    *v4 = v0;
    v4[1] = sub_100A3BD64;

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  sub_100A5172C();
  v6 = swift_allocError();
  *v7 = 2;
  *(v7 + 8) = 3;
  swift_willThrow();
  *(v0 + 160) = v6;
  swift_errorRetain();
  sub_10010FC20(&qword_1011AB640);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 144);
    v9 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      sub_100A5181C(v8, 0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      sub_100A517E8(v8, 0);
      if (os_log_type_enabled(v28, v29))
      {
        v31 = *(v0 + 192);
        v30 = *(v0 + 200);
        v32 = swift_slowAlloc();
        v36[0] = swift_slowAlloc();
        *v32 = 136446466;
        *(v32 + 4) = sub_100010678(v31, v30, v36);
        *(v32 + 12) = 2082;
        *(v0 + 176) = v8;
        sub_100A51840(v8);
        v33 = String.init<A>(describing:)();
        v35 = sub_100010678(v33, v34, v36);

        *(v32 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v32, 0x16u);
        swift_arrayDestroy();

        sub_100A517E8(v8, 0);
      }

      else
      {

        sub_100A517E8(v8, 0);
      }

      goto LABEL_18;
    }

    if (v9 == 3 && v8 == 2)
    {

      goto LABEL_12;
    }

    sub_100A517E8(*(v0 + 144), v9);
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_100A52FE8(&qword_1011ACA58, &type metadata accessor for CocoaError.Code);
  v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v11 + 8))(v10, v12);
  if (v13)
  {
LABEL_12:

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 192);
      v16 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_100010678(v17, v16, v36);
      _os_log_impl(&_mh_execute_header, v14, v15, "Intent id=%{public}s) — User cancelled", v18, 0xCu);
      sub_10000959C(v19);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v20))
  {
    v22 = *(v0 + 192);
    v21 = *(v0 + 200);
    v23 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v23 = 136446466;
    *(v23 + 4) = sub_100010678(v22, v21, v36);
    *(v23 + 12) = 2082;
    *(v0 + 168) = v6;
    swift_errorRetain();
    v24 = String.init<A>(describing:)();
    v26 = sub_100010678(v24, v25, v36);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v20, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v23, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}