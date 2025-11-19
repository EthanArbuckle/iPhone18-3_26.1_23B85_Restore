uint64_t sub_1003733C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ActionMetrics();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100373464()
{
  result = type metadata accessor for ActionMetrics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003734F0@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v37 = sub_100168088(&qword_100581AC8);
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v30 - v5;
  v35 = type metadata accessor for ShowAutoDownloadPickerLink();
  v40 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = a1[6];
  v63 = a1[5];
  v64 = v10;
  v65 = a1[7];
  v11 = a1[4];
  v61 = a1[3];
  v62 = v11;
  sub_100168088(&qword_1005777B0);
  State.projectedValue.getter();
  swift_getKeyPath();
  v63 = v57[2];
  v64 = v57[3];
  v65 = v57[4];
  v66 = v58;
  v61 = v57[0];
  v62 = v57[1];
  v33 = sub_100168088(&qword_100577810);
  Binding.subscript.getter();

  sub_10037425C(v57);
  type metadata accessor for ShowSettingsView();
  v12 = a1[6];
  v46 = a1[5];
  v47 = v12;
  v48 = a1[7];
  v13 = a1[4];
  v44 = a1[3];
  v45 = v13;

  State.wrappedValue.getter();
  v59[2] = v52;
  v59[3] = v53;
  v60 = v54;
  v59[0] = v50;
  v59[1] = v51;
  sub_10020DB40(v59);
  v31 = v9;
  ShowAutoDownloadPickerLink.init(autoDownloadOption:openGlobalSettingsBlock:uuid:isSerialShow:)();
  LocalizedStringKey.init(stringLiteral:)();
  v32 = v14;
  v15 = a1[6];
  v46 = a1[5];
  v47 = v15;
  v48 = a1[7];
  v16 = a1[4];
  v44 = a1[3];
  v45 = v16;
  State.projectedValue.getter();
  swift_getKeyPath();
  v46 = v63;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v44 = v61;
  v45 = v62;
  Binding.subscript.getter();

  sub_10037425C(&v61);
  v55 = v50;
  v56 = v51;
  v43 = a1;
  v42 = a1;
  type metadata accessor for MTPodcastDeletePlayed(0);
  sub_100168088(&qword_100581AD0);
  sub_1003742D4();
  sub_10037432C();
  v17 = v39;
  Picker<>.init<A>(_:selection:content:currentValueLabel:)();
  v18 = *(v40 + 16);
  v19 = v34;
  v20 = v35;
  v18(v34, v9, v35);
  v21 = *(v41 + 16);
  v22 = v36;
  v23 = v17;
  v24 = v37;
  v21(v36, v23, v37);
  v25 = v38;
  v18(v38, v19, v20);
  v26 = sub_100168088(&qword_100581AE8);
  v21(&v25[*(v26 + 48)], v22, v24);
  v27 = *(v41 + 8);
  v27(v39, v24);
  v28 = *(v40 + 8);
  v28(v31, v20);
  v27(v22, v24);
  return (v28)(v19, v20);
}

void sub_100373A40()
{
  v0 = [objc_opt_self() sharedApplication];
  _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0();
}

uint64_t sub_100373A98(uint64_t a1)
{
  v2 = type metadata accessor for ShowSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  v8 = static MTPodcastDeletePlayed.allCases;
  swift_getKeyPath();
  sub_10020DCB0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10020DD14(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  sub_100168088(&qword_100581AC0);
  sub_100374428(&qword_100581AF8);
  sub_1003742D4();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100373C5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ShowSettingsView();
  AppStorage.wrappedValue.getter();
  if (v3 <= 1 || v3 == 0xFFFFFFFF)
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
    type metadata accessor for MTPodcastDeletePlayed(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100373D8C@<X0>(uint64_t a1@<X8>)
{
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  v12[2] = v9;
  v13 = v10;
  v14 = v11;
  v12[0] = v7;
  v12[1] = v8;
  sub_10020DB40(v12);
  v2 = v13;
  type metadata accessor for ShowSettingsView();
  AppStorage.wrappedValue.getter();
  if (v2 < 2 || v2 == 0xFFFFFFFF)
  {
    LocalizedStringKey.init(stringLiteral:)();
    result = Text.init(_:tableName:bundle:comment:)();
    *a1 = result;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    sub_100168088(&qword_100581AF0);
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100373EE0()
{
  v1 = v0[6];
  v26 = v0[5];
  v27 = v1;
  v28 = v0[7];
  v2 = v0[4];
  v24 = v0[3];
  v25 = v2;
  sub_100168088(&qword_1005777B0);
  State.wrappedValue.getter();
  v29[2] = v21;
  v29[3] = v22;
  v30 = v23;
  v29[0] = v19;
  v29[1] = v20;
  sub_10020DB40(v29);
  if (MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter())
  {
    v3 = v0[6];
    v26 = v0[5];
    v27 = v3;
    v28 = v0[7];
    v4 = v0[4];
    v24 = v0[3];
    v25 = v4;
    State.wrappedValue.getter();
    v21 = v16;
    v22 = v17;
    v23 = v18;
    v19 = v14;
    v20 = v15;
    sub_10020DB40(&v19);
    if (v20 == 1 && os_feature_enabled_serial_sort_auto_downloads())
    {
      v5 = "DOWNLOAD_FOOTER_ON_WITH_DEVICE";
      v6 = [objc_opt_self() mainBundle];
      v13 = 0xE000000000000000;
      v7 = 0xD000000000000025;
    }

    else
    {
      v5 = "DOWNLOAD_FOOTER_OFF";
      v6 = [objc_opt_self() mainBundle];
      v13 = 0xE000000000000000;
      v7 = 0xD00000000000001ELL;
    }

    v8 = v5 | 0x8000000000000000;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v13 = 0xE000000000000000;
    v8 = 0x8000000100472490;
    v7 = 0xD000000000000013;
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v6, v9, *(&v13 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t static MTPodcastDeletePlayed.allCases.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MTPodcastDeletePlayed.allCases = a1;
}

uint64_t sub_10037420C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MTPodcastDeletePlayed.allCases;
}

uint64_t sub_10037425C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100577810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003742D4()
{
  result = qword_100581AD8;
  if (!qword_100581AD8)
  {
    type metadata accessor for MTPodcastDeletePlayed(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581AD8);
  }

  return result;
}

unint64_t sub_10037432C()
{
  result = qword_100581AE0;
  if (!qword_100581AE0)
  {
    sub_100168310(&qword_100581AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581AE0);
  }

  return result;
}

uint64_t sub_1003743A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ShowSettingsView();

  return sub_100373C5C(a1, a2);
}

uint64_t sub_100374428(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(&qword_100581AC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100374478@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v5 = &v39 - v4;
  v6 = type metadata accessor for CLSContextMetadata();
  v40 = *(v6 - 1);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v39 - v9;
  if (([objc_opt_self() isEmpty:{objc_msgSend(v1, "storeTrackId")}] & 1) != 0 || (v11 = objc_msgSend(v1, "title")) == 0)
  {
    v21 = *(v40 + 56);

    return v21(a1, 1, 1, v6);
  }

  else
  {
    v12 = v11;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v44[0] = [v2 storeTrackId];
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = [v2 podcast];
    v19 = v18;
    if (v18)
    {
      v18 = sub_100009F1C(0, &qword_100573AC0);
      v20 = &off_1004EF7C0;
    }

    else
    {
      v20 = 0;
      v44[1] = 0;
      v44[2] = 0;
    }

    v44[0] = v19;
    v44[3] = v18;
    v44[4] = v20;
    v8[40] = 1;
    *(v8 + 6) = 0;
    v23 = v6[9];
    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(&v8[v23], 1, 1, v24);
    v25 = &v8[v6[10]];
    *v25 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
    v25[1] = 0;
    *&v8[v6[11]] = 0;
    *v8 = 14;
    *(v8 + 1) = v15;
    v26 = v39;
    *(v8 + 2) = v17;
    *(v8 + 3) = v26;
    *(v8 + 4) = v14;
    sub_100310F08(v44, v41);
    v27 = v42;
    if (v42)
    {
      v28 = v43;
      sub_1000044A0(v41, v42);
      v27 = sub_1002267B4(v27, v28);
      sub_1002268BC(v44);
      sub_100004590(v41);
    }

    else
    {
      sub_1002268BC(v44);
      sub_1002268BC(v41);
    }

    *&v8[v6[12]] = v27;
    sub_100310F78(v8, v10);
    *(v10 + 6) = [v2 episodeNumber];
    sub_100374910(v5);
    sub_1001FDDA8(v5, &v10[v6[9]]);
    v29 = [v2 uuid];
    if (v29)
    {
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34 = CLSContextThumbnailMaximumAllowedDimension;
      v35 = swift_allocObject();
      *(v35 + 16) = v31;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      *(v35 + 40) = v34;
      v36 = sub_100374DFC;
    }

    else
    {
      v36 = variable initialization expression of MTNotificationSettingsPresentationController.activePresentedSettingsViewController;
      v35 = 0;
    }

    v37 = &v10[v6[10]];

    *v37 = v36;
    *(v37 + 1) = v35;
    [v2 pubDate];
    *&v10[v6[11]] = v38;
    sub_100310FDC(v10, a1);
    (*(v40 + 56))(a1, 0, 1, v6);
    return sub_100311040(v10);
  }
}

uint64_t sub_100374910@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PodcastsURLEpisodeParameters();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v23 - v13;
  v15 = [v1 podcast];
  if (v15)
  {
    v16 = v15;
    [v15 storeCollectionId];

    PodcastsURLEpisodeParameters.init(podcastUuid:episodeUuid:storeCollectionId:storeTrackId:)();
    PodcastsURLEpisodeParameters.storeCollectionId.setter();
    [v2 storeTrackId];
    PodcastsURLEpisodeParameters.storeTrackId.setter();
    type metadata accessor for PodcastsURLScheme();
    (*(v9 + 16))(v11, v14, v8);
    type metadata accessor for PodcastsURLShowCommand();
    swift_allocObject();
    PodcastsURLShowCommand.init(params:)();
    static PodcastsURLScheme.buildURL(for:)();

    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.classKit.getter();
    v18 = v1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 storeTrackId];

      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to build share URL, unknown show for episode - %lld", v21, 0xCu);
    }

    else
    {

      v19 = v18;
    }

    (*(v5 + 8))(v7, v4);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
  }
}

id sub_100374C88(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 artworkForEpisodeUuid:v5 size:0 triggerDownload:{a1, a2}];

  v7 = [v6 CGImage];
  return v7;
}

id sub_100374D88@<X0>(void *a1@<X8>)
{
  result = [*v1 podcast];
  v4 = result;
  if (result)
  {
    result = sub_100009F1C(0, &qword_100573AC0);
    v5 = &off_1004EF7C0;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_100374E08()
{
  type metadata accessor for AssetDownloadStatus();
  __chkstk_darwin();
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100376360(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      v6 = type metadata accessor for URL();
      (*(*(v6 - 8) + 8))(v2, v6);
      return 0x64616F6C6E776F44;
    }

    else
    {
      return 0x64656C65636E6143;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100261604(v2);
    return 0x73736572676F7250;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v8 = 0x202C64656C696146;
    v9 = 0xEF3A20726F727265;
    swift_getErrorValue();
    v4._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v4);

    return v8;
  }
}

uint64_t sub_100374FDC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *sub_1000044A0((v1 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config), *(v1 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24));
  v7 = 0xD000000000000033;
  v8 = "bytes";
  v9 = "ts.downloads.episodes.restore";
  v10 = 0xD00000000000002FLL;
  if (v6 == 2)
  {
    v10 = 0xD00000000000002DLL;
  }

  else
  {
    v9 = "ts.downloads.episodes.headers";
  }

  if (v6)
  {
    v7 = 0xD00000000000002DLL;
    v8 = "sodes.userInitiated";
  }

  if (v6 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  if (v6 <= 1)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  static Logger.downloads.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 136446210;
    strcpy(v26, "ConfigType: ");
    BYTE5(v26[1]) = 0;
    HIWORD(v26[1]) = -5120;
    v27 = v17;

    v18._object = (v12 | 0x8000000000000000);
    v18._countAndFlagsBits = v11;
    String.append(_:)(v18);

    v19 = sub_1000153E0(v26[0], v26[1], &v27);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "Invalidating downloader for %{public}s", v16, 0xCu);
    sub_100004590(v17);

    result = (*(v3 + 8))(v5, v25);
  }

  else
  {

    result = (*(v3 + 8))(v5, v2);
  }

  v21 = *(v0 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_urlSession);
  if (v21)
  {
    v22 = v21;

    [v22 invalidateAndCancel];

    v23 = *(v1 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
    ObjectType = swift_getObjectType();
    return (*(*(v23 + 8) + 72))(ObjectType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003752CC@<X0>(uint64_t a1@<X0>, int a2@<W2>, int64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a3;
  v48 = a2;
  v52 = a1;
  v50 = type metadata accessor for Logger();
  v7 = *(v50 - 8);
  __chkstk_darwin();
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v11 = &v45[-v10];
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v45[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = v5;
  v16 = *sub_1000044A0((v5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config), *(v5 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24));
  v17 = 0xD000000000000033;
  v18 = "bytes";
  v19 = "ts.downloads.episodes.restore";
  v20 = 0xD00000000000002FLL;
  if (v16 == 2)
  {
    v20 = 0xD00000000000002DLL;
  }

  else
  {
    v19 = "ts.downloads.episodes.headers";
  }

  if (v16)
  {
    v17 = 0xD00000000000002DLL;
    v18 = "sodes.userInitiated";
  }

  v21 = v16 <= 1;
  if (v16 <= 1)
  {
    v22 = v17;
  }

  else
  {
    v22 = v20;
  }

  v51 = v22;
  if (v21)
  {
    v23 = v18;
  }

  else
  {
    v23 = v19;
  }

  v24 = v23 | 0x8000000000000000;

  DownloadableURLOptions.url.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_100009104(v11, &qword_100574040);
    static Logger.downloads.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to download because no url was provided.", v27, 2u);
    }

    result = (*(v7 + 8))(v9, v50);
    v30 = v51;
    v29 = v52;
    *(v52 + 32) = 0;
    *v29 = 0u;
    v29[1] = 0u;
LABEL_21:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = v30;
    *(a5 + 24) = v24;
    *(a5 + 32) = 0;
    return result;
  }

  (*(v13 + 32))(v15, v11, v12);
  v31 = objc_allocWithZone(NSMutableURLRequest);
  URL._bridgeToObjectiveC()(v32);
  v34 = v33;
  v35 = [v31 initWithURL:v33];

  [v35 setAllowsCellularAccess:v48 & 1];
  [v35 setNonAppInitiated:DownloadableURLOptions.nonAppInitiated.getter() & 1];
  result = *(v49 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_urlSession);
  if (result)
  {
    v36 = [result downloadTaskWithRequest:v35];
    if (v46)
    {
      v37 = NSURLSessionTransferSizeUnknown;
    }

    else
    {
      v37 = v47;
    }

    v38 = v36;
    [v38 setCountOfBytesClientExpectsToReceive:v37];
    v30 = v51;
    v54 = v51;
    v55 = v24;

    v39._countAndFlagsBits = 0x7261646E6174732ELL;
    v39._object = 0xE900000000000064;
    String.append(_:)(v39);

    v40._countAndFlagsBits = 46;
    v40._object = 0xE100000000000000;
    String.append(_:)(v40);
    v53 = [v38 taskIdentifier];
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v41);

    v42 = String._bridgeToObjectiveC()();

    [v38 setTaskDescription:v42];

    v43 = sub_100009F1C(0, &unk_100581CF0);
    v44 = v52;
    *(v52 + 24) = v43;
    v44[4] = &off_1004E5188;

    *v44 = v38;
    result = (*(v13 + 8))(v15, v12);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_100375850()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.downloads.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Calling Background URLSession completion handler.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler);
    v9 = Strong;
    sub_100013CB4(v8);

    if (v8)
    {
      v8();
      sub_1000112B4(v8);
    }
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = (v10 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler);
    v12 = *(v10 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler);
    *v11 = 0;
    v11[1] = 0;
    v13 = v10;
    sub_1000112B4(v12);
    v14 = *&v13[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8];
    ObjectType = swift_getObjectType();
    (*(*(v14 + 8) + 56))(0, 0, ObjectType);
  }
}

id sub_100375CCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetsDownloader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AssetDownloadStatus()
{
  result = qword_100581C80;
  if (!qword_100581C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100375DD0()
{
  sub_100375E58();
  if (v0 <= 0x3F)
  {
    sub_100375EA0();
    if (v1 <= 0x3F)
    {
      sub_100375F20();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100375E58()
{
  if (!qword_100581C90)
  {
    v0 = sub_10001206C();
    if (!v1)
    {
      atomic_store(v0, &qword_100581C90);
    }
  }
}

void sub_100375EA0()
{
  if (!qword_100581CA0)
  {
    sub_100009F1C(255, &qword_100581CA8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100581CA0);
    }
  }
}

void sub_100375F20()
{
  if (!qword_100581CB0)
  {
    __chkstk_darwin();
    type metadata accessor for URL();
    sub_100168310(&unk_100575218);
    sub_100168310(&unk_100581CC0);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_100581CB0);
    }
  }
}

uint64_t sub_100376054(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  *v5 = a1;
  v5[1] = a2;
  sub_100013CB4(a1);
  sub_1000112B4(v6);
  v7 = *(v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v7 + 8) + 16))(a1, a2, ObjectType);
}

void sub_1003760E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v28 = a7;
  *&v29 = a6;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isHLSPlaylist()())
  {
    v20 = *(v9 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
    ObjectType = swift_getObjectType();
    (*(*(v20 + 8) + 40))(&v30, a1, a2, a3, a4 & 1, a5 & 1, v29, v28 & 1, ObjectType, *(v20 + 8));
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
  }

  else
  {
    type metadata accessor for DownloadableURLOptions();
    (*(v17 + 16))(v19, a2, v16);
    v26 = DownloadableURLOptions.__allocating_init(_:nonAppInitiated:)();
    sub_1003752CC(a1, a5 & 1, v29, v28 & 1, &v30);
    v29 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;

    v22 = v29;
  }

  *a8 = v22;
  *(a8 + 16) = v23;
  *(a8 + 24) = v24;
  *(a8 + 32) = v25;
}

uint64_t sub_1003762C8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_backgroundCompletionHandler);
  *v5 = a1;
  v5[1] = a2;
  sub_100013CB4(a1);
  sub_1000112B4(v6);
  v7 = *(v2 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_fairPlayAssetsDownloader + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v7 + 8) + 56))(a1, a2, ObjectType);
}

uint64_t sub_100376360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDownloadStatus();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003763C4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.downloads.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = v5;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Downloader finished processing URLSession events.", v13, 2u);
    v5 = v20;
  }

  (*(v8 + 8))(v10, v7);
  sub_100009F1C(0, &qword_1005729D0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003782C8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F13A0;
  v16 = _Block_copy(aBlock);

  v17 = v21;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v17, v4);
}

uint64_t sub_100376790(void *a1, uint64_t a2)
{
  v109 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v109 - 8);
  __chkstk_darwin();
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v108 = *(v7 - 8);
  __chkstk_darwin();
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for AssetDownloadStatus();
  __chkstk_darwin();
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v105 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v97 - v14;
  __chkstk_darwin();
  v17 = &v97 - v16;
  if (!a2)
  {
    static Logger.downloads.getter();
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v104 = v11;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      v29 = [v24 taskDescription];
      if (v29)
      {
        v103 = v28;
        v30 = v7;
        v31 = v6;
        v32 = v29;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v6 = v31;
        v7 = v30;
        v28 = v103;
      }

      else
      {
        v33 = 0x6E776F6E6B6E755BLL;
        v35 = 0xEC0000005D646920;
      }

      v77 = sub_1000153E0(v33, v35, aBlock);

      *(v27 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v25, v26, "Download task completed successfully. Nothing to call at this point. Task: %{public}s", v27, 0xCu);
      sub_100004590(v28);

      (*(v105 + 8))(v13, v104);
    }

    else
    {

      (*(v105 + 8))(v13, v11);
    }

    goto LABEL_53;
  }

  v104 = v11;
  v99 = v10;
  v101 = v6;
  v102 = v4;
  swift_errorRetain();
  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 domain];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v37 = _convertErrorToNSError(_:)();
  v38 = [v37 code];

  if (v38 == -999)
  {
    static Logger.downloads.getter();
    swift_errorRetain();
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    v42 = os_log_type_enabled(v40, v41);
    v98 = v39;
    if (v42)
    {
      v100 = v7;
      v43 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v43 = 136446466;
      swift_getErrorValue();
      v44 = Error.localizedDescription.getter();
      v46 = sub_1000153E0(v44, v45, aBlock);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      v47 = [v39 taskDescription];
      if (v47)
      {
        v48 = v47;
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = v50;
      }

      else
      {
        v49 = 0x6E776F6E6B6E755BLL;
        v51 = 0xEC0000005D646920;
      }

      v78 = sub_1000153E0(v49, v51, aBlock);

      *(v43 + 14) = v78;
      _os_log_impl(&_mh_execute_header, v40, v41, "Download failed with error cancelled. %{public}s for task %{public}s", v43, 0x16u);
      swift_arrayDestroy();

      (*(v105 + 8))(v17, v104);
      v6 = v101;
      v7 = v100;
    }

    else
    {

      (*(v105 + 8))(v17, v104);
      v6 = v101;
    }

    v79 = v106;
    v80 = *(v106 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
    v4 = v102;
    if (v80)
    {
      v105 = *(v106 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler + 8);
      v111 = sub_100009F1C(0, &qword_1005748F0);
      v112 = &off_1004E5188;
      v81 = v98;
      aBlock[0] = v98;
      v82 = *sub_1000044A0((v79 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config), *(v79 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24));
      v83 = 0xD000000000000033;
      v84 = "bytes";
      v85 = "ts.downloads.episodes.restore";
      v86 = 0xD00000000000002FLL;
      if (v82 == 2)
      {
        v86 = 0xD00000000000002DLL;
      }

      else
      {
        v85 = "ts.downloads.episodes.headers";
      }

      if (v82)
      {
        v83 = 0xD00000000000002DLL;
        v84 = "sodes.userInitiated";
      }

      if (v82 <= 1)
      {
        v87 = v83;
      }

      else
      {
        v87 = v86;
      }

      if (v82 <= 1)
      {
        v88 = v84;
      }

      else
      {
        v88 = v85;
      }

      v89 = v99;
      swift_storeEnumTagMultiPayload();
      v90 = v81;
      sub_100013CB4(v80);
      v80(aBlock, v87, v88 | 0x8000000000000000, 0, v89);

      sub_1000112B4(v80);

      sub_100261604(v89);
      sub_100004590(aBlock);
      goto LABEL_53;
    }

LABEL_52:

    goto LABEL_53;
  }

LABEL_13:
  static Logger.downloads.getter();
  swift_errorRetain();
  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  v55 = os_log_type_enabled(v53, v54);
  v100 = v7;
  if (v55)
  {
    v56 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v56 = 136446466;
    swift_getErrorValue();
    v57 = Error.localizedDescription.getter();
    v59 = sub_1000153E0(v57, v58, aBlock);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2082;
    v60 = [v52 taskDescription];
    if (v60)
    {
      v61 = v60;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
    }

    else
    {
      v62 = 0x6E776F6E6B6E755BLL;
      v64 = 0xEC0000005D646920;
    }

    v6 = v101;
    v65 = sub_1000153E0(v62, v64, aBlock);

    *(v56 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v53, v54, "Download failed with generic error %{public}s for task %{public}s", v56, 0x16u);
    swift_arrayDestroy();

    (*(v105 + 8))(v15, v104);
    v7 = v100;
  }

  else
  {

    (*(v105 + 8))(v15, v104);
    v6 = v101;
  }

  v66 = v106;
  v67 = *(v106 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  v4 = v102;
  if (!v67)
  {
    goto LABEL_52;
  }

  v111 = sub_100009F1C(0, &qword_1005748F0);
  v112 = &off_1004E5188;
  aBlock[0] = v52;
  v68 = *sub_1000044A0((v66 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config), *(v66 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24));
  v69 = 0xD000000000000033;
  v70 = "bytes";
  v71 = "ts.downloads.episodes.restore";
  v72 = 0xD00000000000002FLL;
  if (v68 == 2)
  {
    v72 = 0xD00000000000002DLL;
  }

  else
  {
    v71 = "ts.downloads.episodes.headers";
  }

  if (v68)
  {
    v69 = 0xD00000000000002DLL;
    v70 = "sodes.userInitiated";
  }

  if (v68 <= 1)
  {
    v73 = v69;
  }

  else
  {
    v73 = v72;
  }

  if (v68 <= 1)
  {
    v74 = v70;
  }

  else
  {
    v74 = v71;
  }

  v75 = v99;
  *v99 = a2;
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v76 = v52;
  sub_100013CB4(v67);
  v67(aBlock, v73, v74 | 0x8000000000000000, 0, v75);

  sub_1000112B4(v67);

  sub_100261604(v75);
  sub_100004590(aBlock);
  v7 = v100;
LABEL_53:
  sub_100009F1C(0, &qword_1005729D0);
  v91 = static OS_dispatch_queue.main.getter();
  v92 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = sub_1003782A8;
  v113 = v92;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  v111 = &unk_1004F1378;
  v93 = _Block_copy(aBlock);

  v94 = v107;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001D293C();
  sub_100168088(&unk_100575CD0);
  sub_100182E30();
  v95 = v109;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v93);

  (*(v4 + 8))(v6, v95);
  return (*(v108 + 8))(v94, v7);
}

void sub_100377420(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  __chkstk_darwin();
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v88 - v10;
  v92 = type metadata accessor for AssetDownloadStatus();
  *&v12 = __chkstk_darwin().n128_u64[0];
  v93 = (&v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 response];
  if (!v14)
  {
LABEL_8:
    static Logger.downloads.getter();
    v29 = a1;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v94 = v6;
      v91 = v3;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v98[0] = v33;
      *v32 = 136446210;
      v34 = [v29 taskDescription];
      if (v34)
      {
        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;
      }

      else
      {
        v36 = 0x6E776F6E6B6E755BLL;
        v38 = 0xEC0000005D646920;
      }

      v3 = v91;
      v56 = sub_1000153E0(v36, v38, v98);

      *(v32 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v30, v31, "Invalid response. Can't get HTTPURLResponse from URLSessionDownloadTask.response task: %{public}s.", v32, 0xCu);
      sub_100004590(v33);

      (*(v7 + 8))(v9, v94);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v57 = *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
    if (!v57)
    {
      return;
    }

    v99 = sub_100009F1C(0, &unk_100581CF0);
    v100 = &off_1004E5188;
    v98[0] = v29;
    v58 = *sub_1000044A0(&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config], *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24]);
    if (v58 > 1)
    {
      if (v58 != 2)
      {
        v60 = "ts.downloads.episodes.headers";
        v59 = 0xD00000000000002FLL;
        goto LABEL_37;
      }

      v61 = "com.apple.podcasts.downloads.episodes.headers";
    }

    else
    {
      if (!v58)
      {
        v59 = 0xD000000000000033;
        v60 = "bytes";
LABEL_37:
        sub_100168088(&qword_1005796A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100400790;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v63;
        *(inited + 48) = 0xD000000000000050;
        *(inited + 56) = 0x8000000100472600;
        v64 = v29;
        sub_100013CB4(v57);
        v65 = NSURLErrorDomain;
        sub_10016A444(inited);
        swift_setDeallocating();
        sub_100009104(inited + 32, &qword_100581D00);
        v66 = objc_allocWithZone(NSError);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v68 = [v66 initWithDomain:v65 code:-1011 userInfo:isa];

        v69 = v93;
        *v93 = v68;
        swift_storeEnumTagMultiPayload();
        v57(v98, v59, v60 | 0x8000000000000000, 0, v69);

        sub_1000112B4(v57);
        v55 = v69;
LABEL_55:
        sub_100261604(v55);
        sub_100004590(v98);
        return;
      }

      v61 = "com.apple.podcasts.downloads.episodes.restore";
    }

    v60 = (v61 - 32);
    v59 = 0xD00000000000002DLL;
    goto LABEL_37;
  }

  v94 = v14;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_8;
  }

  v16 = v15;
  if ([v15 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    static Logger.downloads.getter();
    v17 = a1;
    v18 = v94;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v91 = v18;
    if (v21)
    {
      v94 = v6;
      v22 = v17;
      v23 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v98[0] = v89;
      *v23 = 134349314;
      *(v23 + 4) = [v16 statusCode];

      *(v23 + 12) = 2082;
      v90 = v22;
      v24 = [v22 taskDescription];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0x6E776F6E6B6E755BLL;
        v28 = 0xEC0000005D646920;
      }

      v71 = sub_1000153E0(v26, v28, v98);

      *(v23 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v19, v20, "Download failed. Server response statusCode: %{public}ld. Task: %{public}s", v23, 0x16u);
      sub_100004590(v89);

      (*(v7 + 8))(v11, v94);
      v18 = v91;
      v17 = v90;
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v72 = *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
    if (!v72)
    {

      return;
    }

    v99 = sub_100009F1C(0, &unk_100581CF0);
    v100 = &off_1004E5188;
    v98[0] = v17;
    v73 = *sub_1000044A0(&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config], *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24]);
    if (v73 > 1)
    {
      if (v73 != 2)
      {
        v74 = "ts.downloads.episodes.headers";
        v76 = 0xD00000000000002FLL;
        goto LABEL_53;
      }

      v75 = "com.apple.podcasts.downloads.episodes.headers";
    }

    else
    {
      if (!v73)
      {
        v94 = 0xD000000000000033;
        v74 = "bytes";
LABEL_54:
        sub_100168088(&qword_1005796A0);
        v77 = swift_initStackObject();
        *(v77 + 16) = xmmword_100400790;
        *(v77 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v77 + 40) = v78;
        v96 = 0;
        v97 = 0xE000000000000000;
        v79 = v17;
        sub_100013CB4(v72);
        v80 = NSURLErrorDomain;
        _StringGuts.grow(_:)(47);

        v96 = 0xD00000000000002DLL;
        v97 = 0x8000000100472660;
        v95 = [v16 statusCode];
        v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v81);

        v82 = v96;
        v83 = v97;
        *(v77 + 72) = &type metadata for String;
        *(v77 + 48) = v82;
        *(v77 + 56) = v83;
        sub_10016A444(v77);
        swift_setDeallocating();
        sub_100009104(v77 + 32, &qword_100581D00);
        v84 = objc_allocWithZone(NSError);
        v85 = Dictionary._bridgeToObjectiveC()().super.isa;

        v86 = [v84 initWithDomain:v80 code:-1011 userInfo:v85];

        v87 = v93;
        *v93 = v86;
        swift_storeEnumTagMultiPayload();
        v72(v98, v94, v74 | 0x8000000000000000, 0, v87);

        sub_1000112B4(v72);

        v55 = v87;
        goto LABEL_55;
      }

      v75 = "com.apple.podcasts.downloads.episodes.restore";
    }

    v74 = (v75 - 32);
    v76 = 0xD00000000000002DLL;
LABEL_53:
    v94 = v76;
    goto LABEL_54;
  }

  v39 = *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler];
  if (v39)
  {
    v99 = sub_100009F1C(0, &unk_100581CF0);
    v100 = &off_1004E5188;
    v98[0] = a1;
    v40 = *sub_1000044A0(&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config], *&v3[OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24]);
    v41 = 0xD000000000000033;
    v42 = "bytes";
    v43 = "ts.downloads.episodes.restore";
    v44 = 0xD00000000000002FLL;
    if (v40 == 2)
    {
      v44 = 0xD00000000000002DLL;
    }

    else
    {
      v43 = "ts.downloads.episodes.headers";
    }

    if (v40)
    {
      v41 = 0xD00000000000002DLL;
      v42 = "sodes.userInitiated";
    }

    v45 = v40 <= 1;
    if (v40 <= 1)
    {
      v46 = v41;
    }

    else
    {
      v46 = v44;
    }

    v91 = v46;
    if (v45)
    {
      v47 = v42;
    }

    else
    {
      v47 = v43;
    }

    v48 = sub_100168088(&unk_100579C80);
    v49 = v93;
    v50 = v93 + v48[12];
    v51 = v48[16];
    v52 = v48[20];
    v53 = type metadata accessor for URL();
    (*(*(v53 - 8) + 16))(v49, a2, v53);
    *v50 = 0;
    v50[8] = 1;
    sub_100013CB4(v39);
    *(v49 + v51) = [a1 countOfBytesReceived];
    *(v49 + v52) = v16;
    swift_storeEnumTagMultiPayload();
    v54 = v94;
    v39(v98, v91, v47 | 0x8000000000000000, 0, v49);

    sub_1000112B4(v39);

    v55 = v49;
    goto LABEL_55;
  }

  v70 = v94;
}

void sub_100378028(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AssetDownloadStatus();
  __chkstk_darwin();
  v8 = (&v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *sub_1000044A0((v3 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config), *(v3 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_config + 24));
  v10 = 0xD000000000000033;
  v11 = "bytes";
  v12 = "ts.downloads.episodes.restore";
  v13 = 0xD00000000000002FLL;
  if (v9 == 2)
  {
    v13 = 0xD00000000000002DLL;
  }

  else
  {
    v12 = "ts.downloads.episodes.headers";
  }

  if (v9)
  {
    v10 = 0xD00000000000002DLL;
    v11 = "sodes.userInitiated";
  }

  if (v9 <= 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  if (v9 <= 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v22 = [a1 progress];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  [v22 setUserInfoObject:v16 forKey:v17];

  v18 = *(v3 + OBJC_IVAR____TtC8Podcasts16AssetsDownloader_statusUpdateHandler);
  if (v18)
  {
    v23[3] = sub_100009F1C(0, &unk_100581CF0);
    v23[4] = &off_1004E5188;
    v23[0] = a1;
    *v8 = v22;
    v8[1] = a3;
    v8[2] = a2;
    swift_storeEnumTagMultiPayload();
    sub_100013CB4(v18);
    v19 = a1;
    v20 = v22;
    v18(v23, v14, v15 | 0x8000000000000000, 0, v8);
    sub_1000112B4(v18);

    sub_100261604(v8);
    sub_100004590(v23);
  }

  else
  {

    v21 = v22;
  }
}

uint64_t CarPlayCyclePlaybackRateAction.init(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ActionMetrics();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CarPlayCyclePlaybackRateAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionMetrics();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for CarPlayCyclePlaybackRateAction()
{
  result = qword_100581D60;
  if (!qword_100581D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100378418()
{
  result = type metadata accessor for ActionMetrics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100378494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1001B9C88;

  return (sub_10037854C)(a2, a3);
}

uint64_t sub_10037854C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = type metadata accessor for EpisodeEntity();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for ShowEntity();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  ShowLatestCatalogEpisodesIntent = type metadata accessor for FetchShowLatestCatalogEpisodesIntent();
  v2[17] = ShowLatestCatalogEpisodesIntent;
  v2[18] = *(ShowLatestCatalogEpisodesIntent - 8);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for FetchShowLatestLocalEpisodesIntent();
  v2[21] = swift_task_alloc();
  v6 = sub_100168088(&qword_10057A160);
  v7 = swift_task_alloc();
  v2[22] = v7;
  *v7 = v2;
  v7[1] = sub_100378750;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v6, v6);
}

uint64_t sub_100378750()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10037901C;
  }

  else
  {
    v2 = sub_100378864;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100378864()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[5];
  v4 = v0[6];
  sub_1000044A0(v0 + 2, v3);
  FetchShowLatestEpisodesIntent.show.getter();
  *(v1 + *(v2 + 20)) = FetchShowLatestEpisodesIntent.limit.getter();
  v5 = swift_task_alloc();
  v0[24] = v5;
  v6 = sub_100379238(&qword_10057B1E0, type metadata accessor for FetchShowLatestLocalEpisodesIntent);
  *v5 = v0;
  v5[1] = sub_100378988;
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v7, v9, v8, v6, v3, v4);
}

uint64_t sub_100378988()
{
  v2 = *(*v1 + 168);
  *(*v1 + 200) = v0;

  sub_1003791DC(v2);
  if (v0)
  {
    v3 = sub_1003790AC;
  }

  else
  {
    v3 = sub_100378AB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100378AB8()
{
  v1 = v0[7];
  if (*(v1 + 16))
  {
    sub_100004590((v0 + 2));

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];

    v7 = v0[5];
    v13 = v0[6];
    sub_1000044A0(v0 + 2, v7);
    FetchShowLatestEpisodesIntent.show.getter();
    ShowEntity.adamID.getter();
    (*(v4 + 8))(v5, v6);
    FetchShowLatestEpisodesIntent.limit.getter();
    FetchShowLatestCatalogEpisodesIntent.init(adamID:limit:extendedTypes:)();
    v8 = swift_task_alloc();
    v0[26] = v8;
    v9 = sub_100379238(&qword_100581DA0, &type metadata accessor for FetchShowLatestCatalogEpisodesIntent);
    *v8 = v0;
    v8[1] = sub_100378CCC;
    v10 = v0[19];
    v11 = v0[17];
    v12 = v0[10];

    return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 8, v10, v12, v11, v9, v7, v13);
  }
}

uint64_t sub_100378CCC()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100379144;
  }

  else
  {
    v5 = sub_100378E3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

size_t sub_100378E3C()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_1001A7848(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[12];
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    EpisodeEntity.init(mediaObject:)();
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_1001A7848(v7 > 1, v8 + 1, 1);
    }

    v9 = v0[13];
    v10 = v0[11];
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    (*(v5 + 32))(_swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v9, v10);
  }

  while (v2 != v4);
LABEL_13:

  sub_100004590((v0 + 2));

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_10037901C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003790AC()
{
  sub_100004590(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100379144()
{
  sub_100004590(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003791DC(uint64_t a1)
{
  ShowLatestLocalEpisodesIntent = type metadata accessor for FetchShowLatestLocalEpisodesIntent();
  (*(*(ShowLatestLocalEpisodesIntent - 8) + 8))(a1, ShowLatestLocalEpisodesIntent);
  return a1;
}

uint64_t sub_100379238(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003792C8()
{
  sub_100379674(319, &unk_100581E10, type metadata accessor for CarPlayTemplateInfo.TemplateType, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10037938C()
{
  sub_100379524();
  if (v0 <= 0x3F)
  {
    sub_100379554();
    if (v1 <= 0x3F)
    {
      sub_1003795B8();
      if (v2 <= 0x3F)
      {
        sub_1003795E8();
        if (v3 <= 0x3F)
        {
          sub_100379674(319, &qword_100581EE8, &type metadata accessor for Showcase, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            type metadata accessor for StationDetail();
            if (v5 <= 0x3F)
            {
              sub_100379674(319, &qword_100581EF0, &type metadata accessor for LegacyEpisodeLockup, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_1003796D8();
                if (v7 <= 0x3F)
                {
                  sub_100379674(319, &unk_100581F00, &type metadata accessor for LegacyLockup, &type metadata accessor for Array);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void *sub_100379524()
{
  result = qword_100581EC0;
  if (!qword_100581EC0)
  {
    result = &type metadata for EpisodeListType;
    atomic_store(&type metadata for EpisodeListType, &qword_100581EC0);
  }

  return result;
}

void sub_100379554()
{
  if (!qword_100581EC8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100581EC8);
    }
  }
}

void *sub_1003795B8()
{
  result = qword_100581ED0;
  if (!qword_100581ED0)
  {
    result = &type metadata for ShowListPresenter.Kind;
    atomic_store(&type metadata for ShowListPresenter.Kind, &qword_100581ED0);
  }

  return result;
}

void sub_1003795E8()
{
  if (!qword_100581ED8)
  {
    sub_100168310(&qword_100581EE0);
    sub_100168310(&qword_100574040);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100581ED8);
    }
  }
}

void sub_100379674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1003796D8()
{
  if (!qword_100581EF8)
  {
    sub_100168310(&qword_100574040);
    sub_100168310(&qword_100581EE0);
    sub_100168310(&qword_1005785A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100581EF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for CarPlayTemplateInfo.PlaybackSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CarPlayTemplateInfo.PlaybackSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003798D8(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x654E7055656D6F68;
      break;
    case 3:
      result = 0x4577654E656D6F68;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 9:
      result = 0x537972617262696CLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 7824750;
      break;
    case 11:
      result = 0x6979616C50776F6ELL;
      break;
    case 12:
      result = 0x4E676E6979616C70;
      break;
    case 13:
      result = 0x736E6F6974617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100379A8C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1003798D8(*a1);
  v5 = v4;
  if (v3 == sub_1003798D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100379B14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003798D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100379B78()
{
  sub_1003798D8(*v0);
  String.hash(into:)();
}

Swift::Int sub_100379BCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1003798D8(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100379C2C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100379CE0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100379C5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1003798D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100379C8C()
{
  result = qword_100581F30;
  if (!qword_100581F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100581F30);
  }

  return result;
}

unint64_t sub_100379CE0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF3E0, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

void *sub_100379D2C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100379DE4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100472740;
  v1._object = 0x8000000100472710;
  v4._countAndFlagsBits = 0xD000000000000030;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100581F40 = v3;
}

uint64_t sub_100379E9C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100379F10()
{
  v39 = *v0;
  v1 = type metadata accessor for ObserverQueue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100582008);
  v6 = *(v5 - 8);
  v34 = v5;
  v35 = v6;
  __chkstk_darwin();
  v32 = &v32 - v7;
  v38 = sub_100168088(&qword_100582010);
  v42 = *(v38 - 8);
  __chkstk_darwin();
  v33 = &v32 - v8;
  v9 = sub_100168088(&qword_100582018);
  v10 = *(v9 - 8);
  v43 = v9;
  v44 = v10;
  __chkstk_darwin();
  v36 = &v32 - v11;
  v12 = sub_100168088(&qword_100582020);
  v13 = *(v12 - 8);
  v40 = v12;
  v41 = v13;
  __chkstk_darwin();
  v37 = &v32 - v14;
  swift_getObjectType();
  v15 = v0[5];
  StationDetail.uuid.getter();
  dispatch thunk of LibraryDataProviderProtocol.fetchStationDetailObserver(with:)();

  (*(v2 + 104))(v4, enum case for ObserverQueue.main(_:), v1);
  sub_100009FAC(&qword_100582028, &qword_100582030);
  v16 = Promise<A>.observerPublisher(receiveOn:)();

  (*(v2 + 8))(v4, v1);
  v45 = v16;
  sub_100168088(&qword_100582038);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100400790;
  *(v17 + 32) = v15;

  sub_100168088(&qword_100582040);
  sub_100009FAC(&unk_100582048, &qword_100582040);
  v18 = v32;
  Publisher.prepend(_:)();

  v45 = v0[6];
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&qword_100582058, &qword_100582008);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  v20 = v33;
  v19 = v34;
  Publisher.combineLatest<A>(_:)();
  (*(v35 + 8))(v18, v19);
  v21 = v0[2];
  v22 = swift_allocObject();
  v23 = v39;
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10037AA70;
  *(v24 + 24) = v22;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_100582060, &qword_100582010);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  v25 = v36;
  v26 = v38;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v42 + 8))(v20, v26);
  sub_100009FAC(&qword_100582070, &qword_100582018);
  v27 = v37;
  v28 = v43;
  Publisher.prepend(_:)();
  (*(v44 + 8))(v25, v28);
  sub_100009FAC(&unk_100582078, &qword_100582020);
  v29 = v40;
  v30 = Publisher.eraseToAnyPublisher()();
  (*(v41 + 8))(v27, v29);
  return v30;
}

uint64_t sub_10037A644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_100168088(&unk_100578B20);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_10040FDE8;
  *(v10 + 24) = v9;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_10037A7A4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10037A83C, v4, v3);
}

uint64_t sub_10037A83C()
{
  v1 = v0[4];

  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    type metadata accessor for CarPlayPageLoadCoordinator();
    swift_allocObject();

    v4 = sub_1002442DC(v3);

    v0[2] = v4;
    v5 = BaseObjectGraph.satisfying<A>(_:with:)();
    v6 = sub_10037B434(v5, v2);
    if (v6)
    {
      v7 = v6;
      sub_100168088(&unk_100574680);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1004007B0;
      *(v8 + 32) = v7;

      v9 = 3;
    }

    else
    {
      if (qword_100572880 != -1)
      {
        swift_once();
      }

      v10 = *(&xmmword_100581F40 + 1);
      v8 = xmmword_100581F40;

      v9 = 2;
      v4 = v10;
    }
  }

  else
  {
    if (qword_100572880 != -1)
    {
      swift_once();
    }

    v4 = *(&xmmword_100581F40 + 1);
    v8 = xmmword_100581F40;

    v9 = 2;
  }

  v11 = v0[1];

  return v11(v8, v4, v9);
}

uint64_t sub_10037AA78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10037AAAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_10037A7A4(v2, v3);
}

uint64_t sub_10037AB54(uint64_t a1, char *a2)
{
  v67 = a1;
  sub_100168088(&qword_100573A78);
  __chkstk_darwin();
  v6 = &v56 - v5;
  sub_100168088(&unk_100573A80);
  __chkstk_darwin();
  v8 = &v56 - v7;
  if (StationDetail.grouped.getter())
  {
    v9 = dispatch thunk of StationDetail.visibleShows.getter();
    if (!v9)
    {
      v58 = sub_100379D2C(_swiftEmptyArrayStorage, sub_100245200, sub_1001CB468);
      v65 = v22;
      goto LABEL_33;
    }

    v2 = v9;
    v10 = (v9 & 0xFFFFFFFFFFFFFF8);
    v3 = v9 >> 62;
    if (!(v9 >> 62))
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= 0xC8)
      {
        v12 = 200;
      }

      else
      {
        v12 = v11;
      }

      if (v11 >= v12)
      {
LABEL_8:
        if ((v2 & 0xC000000000000001) != 0)
        {
          if (v12)
          {
            type metadata accessor for StationShow();

            v13 = 0;
            do
            {
              v8 = (v13 + 1);
              _ArrayBuffer._typeCheckSlowPath(_:)(v13);
              v13 = v8;
            }

            while (v12 != v8);
            if (v3)
            {
              goto LABEL_32;
            }
          }

          else
          {

            if (v3)
            {
LABEL_32:

              v58 = _CocoaArrayWrapper.subscript.getter();
              v65 = v27;
              v3 = v28;
              v30 = v29;

              v20 = v3;
              v21 = v30;
LABEL_33:
              v59 = _swiftEmptyArrayStorage;
              v74 = _swiftEmptyArrayStorage;
              v31 = v21 >> 1;
              if (v20 != v21 >> 1)
              {
                v57 = v31 - 1;
                v59 = _swiftEmptyArrayStorage;
                v32 = v20;
                v64 = a2;
                v63 = v20;
                v62 = v21 >> 1;
                do
                {
                  v33 = v32;
                  v10 = &v78;
                  v60 = v32;
                  while (1)
                  {
                    if (v32 < v20 || v33 >= v31)
                    {
LABEL_59:
                      __break(1u);
                      goto LABEL_60;
                    }

                    v66 = v33 + 1;
                    v61 = v33;

                    v34 = StationDetail.uuid.getter();
                    v36 = v35;
                    v37 = StationShow.uuid.getter();
                    v39 = v38;
                    v8 = StationDetail.title.getter();
                    v41 = v40;
                    StationShow.podcast.getter();
                    v42 = Podcast.uuid.getter();
                    v44 = v43;

                    *&v69 = v34;
                    *(&v69 + 1) = v36;
                    *&v70 = v37;
                    *(&v70 + 1) = v39;
                    *&v71 = v8;
                    *(&v71 + 1) = v41;
                    *&v72 = v42;
                    *(&v72 + 1) = v44;
                    v75 = v69;
                    v76 = v70;
                    v77 = v71;
                    v78 = v72;
                    sub_1001AA70C();
                    v3 = dispatch thunk of StationShow.modernLockup.getter();
                    v79 = 5;
                    sub_10037B544(&v69, v68);
                    v45 = sub_100271D14(v67, v3, &v75, 0);
                    v2 = &qword_100582088;
                    sub_100009104(&v69, &qword_100582088);
                    sub_100009104(&v69, &qword_100582088);

                    if (v45)
                    {
                      break;
                    }

                    v33 = v66;
                    v31 = v62;
                    a2 = v64;
                    v20 = v63;
                    v10 = &v78;
                    v32 = v60;
                    if (v62 == v66)
                    {
                      goto LABEL_57;
                    }
                  }

                  v32 = v66;
                  v3 = v61;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v2 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v59 = v74;
                  a2 = v64;
                  v20 = v63;
                  v31 = v62;
                }

                while (v57 != v3);
              }

              goto LABEL_57;
            }
          }
        }

        else
        {
        }

        v20 = 0;
        v58 = v2 & 0xFFFFFFFFFFFFFF8;
        v65 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        v21 = 2 * v12;
        goto LABEL_33;
      }

      goto LABEL_77;
    }

LABEL_60:
    if (v2 < 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = v10;
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
LABEL_70:
      if (v12 >= 0xC8)
      {
        v54 = 200;
      }

      else
      {
        v54 = v12;
      }

      if (v12 >= 0)
      {
        v12 = v54;
      }

      else
      {
        v12 = 200;
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v12)
      {
        goto LABEL_8;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    __break(1u);
  }

  else
  {
    v14 = dispatch thunk of StationDetail.episodes.getter();
    if (!v14)
    {
      v65 = sub_100379D2C(_swiftEmptyArrayStorage, sub_100245200, sub_1001CB2C4);
      v66 = v24;
      v26 = v25;
      goto LABEL_48;
    }

    v2 = v14;
    v15 = v14 & 0xFFFFFFFFFFFFFF8;
    a2 = (v14 >> 62);
    if (!(v14 >> 62))
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 0xC8)
      {
        v17 = 200;
      }

      else
      {
        v17 = result;
      }

      if (result < v17)
      {
        goto LABEL_85;
      }

LABEL_20:
      if ((v2 & 0xC000000000000001) != 0)
      {
        if (v17)
        {
          v3 = type metadata accessor for Episode();

          v18 = 0;
          do
          {
            v19 = v18 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v18);
            v18 = v19;
          }

          while (v17 != v19);
          if (a2)
          {
            goto LABEL_47;
          }
        }

        else
        {

          if (a2)
          {
LABEL_47:

            v65 = _CocoaArrayWrapper.subscript.getter();
            v66 = v46;
            v26 = v47;
            v49 = v48;

            v23 = v49;
LABEL_48:
            v59 = _swiftEmptyArrayStorage;
            v73 = _swiftEmptyArrayStorage;
            a2 = (v23 >> 1);
            v50 = v26;
LABEL_49:
            v10 = v50;
            while (a2 != v10)
            {
              if (v50 < v26 || v10 >= a2)
              {
                __break(1u);
                goto LABEL_59;
              }

              v2 = (v10 + 1);
              sub_1001AA70C();
              v51 = type metadata accessor for EpisodeListSettings();
              (*(*(v51 - 8) + 56))(v8, 1, 1, v51);
              v52 = type metadata accessor for SectionContext();
              (*(*(v52 - 8) + 56))(v6, 1, 1, v52);

              static MetricsDataConfiguration.default.getter();
              v3 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
              v69 = v75;
              sub_100009104(&v69, &unk_100574650);
              v68[0] = v76;
              sub_100009104(v68, &unk_100573A90);
              v74 = *(&v76 + 1);
              sub_100009104(&v74, &unk_100574660);
              sub_100037470(v77);
              sub_100009104(v6, &qword_100573A78);
              sub_100009104(v8, &unk_100573A80);
              v53 = sub_10021E760(v67, v3, 1, 0, 13);

              v10 = v2;
              if (v53)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v3 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v59 = v73;
                v50 = v2;
                goto LABEL_49;
              }
            }

LABEL_57:
            swift_unknownObjectRelease();
            return v59;
          }
        }
      }

      else
      {
      }

      v26 = 0;
      v65 = v2 & 0xFFFFFFFFFFFFFF8;
      v66 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v23 = 2 * v17;
      goto LABEL_48;
    }
  }

  if (v2 < 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v15;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_70;
  }

LABEL_78:
  if (v12 >= 0xC8)
  {
    v55 = 200;
  }

  else
  {
    v55 = v12;
  }

  if (v12 >= 0)
  {
    v17 = v55;
  }

  else
  {
    v17 = 200;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v17)
  {
    goto LABEL_20;
  }

LABEL_85:
  __break(1u);
  return result;
}

id sub_10037B434(uint64_t a1, char *a2)
{
  v2 = sub_10037AB54(a1, a2);
  if (v2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100168088(&unk_100574A00);
      v3 = _bridgeCocoaArray<A>(_:)();
      goto LABEL_4;
    }

LABEL_7:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v3 = v2;

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_4:

  v4 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v3);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa];

  return v6;
}

uint64_t sub_10037B544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100582088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037B5B4()
{
  sub_100168088(&qword_1005821E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100402720;
  type metadata accessor for ShareEpisodeContextAction();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v2 = OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel;
  v3 = enum case for MetricsLabel.share(_:);
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 104);
  v6 = v1 + v2;
  v7 = v4;
  v5(v6, v3);
  v8 = sub_10037F124(&qword_1005821F0, type metadata accessor for ShareEpisodeContextAction);
  *(v0 + 32) = v1;
  *(v0 + 40) = v8;
  type metadata accessor for SharePodcastContextAction();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  v32 = v7;
  (v5)(v9 + OBJC_IVAR____TtC8Podcasts25SharePodcastContextAction_metricsLabel, v3, v7);
  v33 = v5;
  v10 = sub_10037F124(&qword_1005821F8, type metadata accessor for SharePodcastContextAction);
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  type metadata accessor for ShareOtherContextAction(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
  v13 = type metadata accessor for URL();
  v34 = *(*(v13 - 8) + 56);
  v34(v11 + v12, 1, 1, v13);
  v14 = (v11 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
  *v14 = 0;
  v14[1] = 0;
  *(v11 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_attributes) = 0;
  v15 = (v11 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_systemImageName);
  *v15 = 0xD000000000000013;
  v15[1] = 0x800000010046AC80;
  v31 = enum case for MetricsLabel.shareOther(_:);
  (v5)(v11 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_metricsLabel);
  v16 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_contextActionType;
  v17 = enum case for ContextActionType.shareSheetURL(_:);
  v30 = enum case for ContextActionType.shareSheetURL(_:);
  v18 = type metadata accessor for ContextActionType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v20(v11 + v16, v17, v18);
  v21 = *(v19 + 56);
  v21(v11 + v16, 0, 1, v18);
  v22 = sub_10037F124(&unk_100582200, type metadata accessor for ShareOtherContextAction);
  *(v0 + 64) = v11;
  *(v0 + 72) = v22;
  type metadata accessor for ShareCategoryContextAction();
  v23 = swift_allocObject();
  v24 = v23 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_categoryAdamID;
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  *(v23 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_managedContextProvider) = v35;
  *(v23 + 16) = 0;
  v34(v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link, 1, 1, v13);
  v25 = (v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_attributes) = 0;
  v26 = (v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_systemImageName);
  *v26 = 0xD000000000000013;
  v26[1] = 0x800000010046AC80;
  (v33)(v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_metricsLabel, v31, v32);
  v27 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_contextActionType;
  v20(v23 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_contextActionType, v30, v18);
  v21(v23 + v27, 0, 1, v18);
  v28 = sub_10037F124(&unk_100582210, type metadata accessor for ShareCategoryContextAction);
  *(v0 + 80) = v23;
  *(v0 + 88) = v28;
  return v0;
}

uint64_t sub_10037BA9C()
{
  sub_100168088(&qword_100579468);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10040FE00;
  sub_100004428((v0 + 15), v163);
  v2 = v0[21];
  v159 = v2;
  type metadata accessor for PlayEpisodeContextAction();
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0;
  v4 = OBJC_IVAR____TtC8Podcasts24PlayEpisodeContextAction_state;
  v5 = type metadata accessor for EpisodePlayState();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  sub_1000109E4(v163, (v3 + 32));
  *(v3 + 9) = v2;
  v6 = sub_10037F124(&qword_10057B838, type metadata accessor for PlayEpisodeContextAction);
  *(v1 + 32) = v3;
  *(v1 + 40) = v6;
  type metadata accessor for OpenEpisodeContextAction();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = OBJC_IVAR____TtC8Podcasts24OpenEpisodeContextAction_metricsLabel;
  v9 = enum case for MetricsLabel.select(_:);
  v151 = enum case for MetricsLabel.select(_:);
  v10 = type metadata accessor for MetricsLabel();
  v11 = *(*(v10 - 8) + 104);
  v11(v7 + v8, v9, v10);
  v12 = sub_10037F124(&unk_100582220, type metadata accessor for OpenEpisodeContextAction);
  *(v1 + 48) = v7;
  *(v1 + 56) = v12;
  v13 = v0;
  sub_100004428((v0 + 4), v163);
  v14 = v0[3];
  sub_100004428((v0 + 23), v161);
  type metadata accessor for DownloadEpisodeContextAction();
  v15 = swift_allocObject();
  *(v15 + 128) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = 0;
  v11(v15 + OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel, enum case for MetricsLabel.downloadEpisode(_:), v10);
  sub_1000109E4(v163, v15 + 40);
  *(v15 + 80) = v14;
  v153 = v14;
  v16 = v161[1];
  *(v15 + 88) = v161[0];
  *(v15 + 104) = v16;
  *(v15 + 120) = v162;
  v17 = sub_10037F124(&unk_1005821B0, type metadata accessor for DownloadEpisodeContextAction);
  *(v1 + 64) = v15;
  *(v1 + 72) = v17;
  v18 = v13[22];
  v157 = v18;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for RemoveDownloadContextAction();
  v19 = swift_allocObject();
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  v11(v19 + OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel, enum case for MetricsLabel.removeDownload(_:), v10);
  *(v19 + 64) = v18;
  *(v19 + 16) = v14;
  sub_1000109E4(v163, v19 + 24);
  v20 = sub_10037F124(&qword_10057B6B8, type metadata accessor for RemoveDownloadContextAction);
  *(v1 + 80) = v19;
  *(v1 + 88) = v20;
  v21 = v13[28];
  type metadata accessor for PlayNextEpisodeContextAction();
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[4] = 0;
  v11(v22 + OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel, enum case for MetricsLabel.playEpisodeNext(_:), v10);
  v22[2] = v21;
  v23 = sub_10037F124(&qword_100575000, type metadata accessor for PlayNextEpisodeContextAction);
  *(v1 + 96) = v22;
  *(v1 + 104) = v23;
  type metadata accessor for AddToQueueEpisodeContextAction();
  v24 = swift_allocObject();
  v24[3] = 0;
  v24[4] = 0;
  v11(v24 + OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel, enum case for MetricsLabel.addToQueueEpisode(_:), v10);
  v24[2] = v21;
  v25 = sub_10037F124(&qword_1005821E0, type metadata accessor for AddToQueueEpisodeContextAction);
  *(v1 + 112) = v24;
  *(v1 + 120) = v25;
  type metadata accessor for RemoveFromQueueContextAction();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 48) = xmmword_100403760;
  *(v26 + 64) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = v21;
  v27 = sub_10037F124(&qword_10057C710, type metadata accessor for RemoveFromQueueContextAction);
  *(v1 + 128) = v26;
  *(v1 + 136) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 48) = xmmword_100403760;
  *(v28 + 64) = 0;
  *(v28 + 32) = 1;
  *(v28 + 40) = v21;
  *(v1 + 144) = v28;
  *(v1 + 152) = v27;
  swift_retain_n();
  sub_100004428((v13 + 4), v163);
  sub_100004428((v13 + 23), v161);
  type metadata accessor for MarkEpisodeContextAction();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 136) = 1;
  *(v29 + 32) = 0;
  *(v29 + 40) = v159;

  sub_1000109E4(v163, v29 + 48);
  sub_1000109E4(v161, v29 + 88);
  *(v29 + 128) = v21;
  v30 = sub_10037F124(&unk_1005821D0, type metadata accessor for MarkEpisodeContextAction);
  *(v1 + 160) = v29;
  *(v1 + 168) = v30;
  sub_100004428((v13 + 4), v163);
  sub_100004428((v13 + 23), v161);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 136) = 1;
  *(v31 + 32) = 1;
  *(v31 + 40) = v159;

  sub_1000109E4(v163, v31 + 48);
  sub_1000109E4(v161, v31 + 88);
  *(v31 + 128) = v21;
  v147 = v21;
  *(v1 + 176) = v31;
  *(v1 + 184) = v30;
  type metadata accessor for CopyLinkEpisodeContextAction();
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = 0;
  *(v32 + 40) = 1;
  *(v32 + 48) = 0;
  *(v32 + 56) = 1;
  *(v32 + 64) = xmmword_10040FE10;
  *(v32 + 80) = 0xE400000000000000;
  v149 = enum case for MetricsLabel.copy(_:);
  (v11)(v32 + OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_metricsLabel);
  v33 = OBJC_IVAR____TtC8Podcasts28CopyLinkEpisodeContextAction_shareLink;
  v156 = type metadata accessor for URL();
  v155 = *(*(v156 - 8) + 56);
  v155(v32 + v33, 1, 1, v156);
  v34 = sub_10037F124(&unk_100582230, type metadata accessor for CopyLinkEpisodeContextAction);
  *(v1 + 192) = v32;
  *(v1 + 200) = v34;
  sub_100004428((v13 + 15), v163);
  type metadata accessor for GoToEpisodeContextAction();
  v35 = swift_allocObject();
  *(v35 + 56) = 0;
  *(v35 + 64) = 0;
  v154 = objc_opt_self();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v36 = [v154 mainBundle];
  v164._object = 0x80000001004727D0;
  v37._countAndFlagsBits = 0x50455F4F545F4F47;
  v37._object = 0xED000045444F5349;
  v164._countAndFlagsBits = 0xD00000000000001CLL;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v164);

  *(v35 + 72) = v39;
  *(v35 + 88) = xmmword_10040FE20;
  *(v35 + 104) = 0xEB00000000657261;
  v148 = enum case for MetricsLabel.navigate(_:);
  v40 = v10;
  (v11)(v35 + OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_metricsLabel);
  v41 = OBJC_IVAR____TtC8Podcasts24GoToEpisodeContextAction_contextActionType;
  v42 = enum case for ContextActionType.goToEpisode(_:);
  v43 = type metadata accessor for ContextActionType();
  v44 = *(v43 - 8);
  v158 = *(v44 + 104);
  v158(v35 + v41, v42, v43);
  v160 = *(v44 + 56);
  v160(v35 + v41, 0, 1, v43);
  sub_1000109E4(v163, v35 + 16);
  v45 = sub_10037F124(&qword_10057B930, type metadata accessor for GoToEpisodeContextAction);
  *(v1 + 208) = v35;
  *(v1 + 216) = v45;
  sub_100004428((v13 + 15), v163);
  type metadata accessor for EpisodePresentPodcastContextAction();
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  v11(v46 + OBJC_IVAR____TtC8Podcasts34EpisodePresentPodcastContextAction_metricsLabel, v151, v40);
  sub_1000109E4(v163, v46 + 32);
  v47 = sub_10037F124(&unk_100582240, type metadata accessor for EpisodePresentPodcastContextAction);
  *(v1 + 224) = v46;
  *(v1 + 232) = v47;
  type metadata accessor for ViewTranscriptContextAction();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer;
  v50 = type metadata accessor for EpisodeOffer();
  (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
  *(v48 + OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration) = 0;
  v51 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
  v52 = type metadata accessor for TranscriptRequestInformation();
  (*(*(v52 - 8) + 56))(v48 + v51, 1, 1, v52);
  v53 = sub_10037F124(&qword_10057BED8, type metadata accessor for ViewTranscriptContextAction);
  *(v1 + 240) = v48;
  *(v1 + 248) = v53;
  sub_100004428((v13 + 4), v163);
  v54 = v13[14];
  type metadata accessor for SubscribeEpisodeContextAction();
  v55 = swift_allocObject();
  v55[8] = 0;
  v55[9] = 0;
  sub_1000109E4(v163, (v55 + 2));
  v55[7] = v54;
  v56 = sub_10037F124(&unk_100582250, type metadata accessor for SubscribeEpisodeContextAction);
  *(v1 + 256) = v55;
  *(v1 + 264) = v56;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for SubscribePodcastContextAction();
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v11(v57 + OBJC_IVAR____TtC8Podcasts29SubscribePodcastContextAction_metricsLabel, enum case for MetricsLabel.subscribe(_:), v40);
  sub_1000109E4(v163, (v57 + 4));
  v57[9] = v54;
  v152 = v54;
  v58 = sub_10037F124(&qword_10057C140, type metadata accessor for SubscribePodcastContextAction);
  *(v1 + 272) = v57;
  *(v1 + 280) = v58;
  sub_100004428((v13 + 4), v163);
  sub_100004428((v13 + 9), v161);
  type metadata accessor for UnsubscribePodcastContextAction();
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v11(v59 + OBJC_IVAR____TtC8Podcasts31UnsubscribePodcastContextAction_metricsLabel, enum case for MetricsLabel.unsubscribe(_:), v40);
  sub_1000109E4(v163, (v59 + 4));
  v59[9] = v54;
  sub_1000109E4(v161, (v59 + 10));
  v60 = sub_10037F124(&unk_100582260, type metadata accessor for UnsubscribePodcastContextAction);
  *(v1 + 288) = v59;
  *(v1 + 296) = v60;
  sub_100004428((v13 + 15), v163);
  type metadata accessor for GoToShowPodcastContextAction();
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  v11(v61 + OBJC_IVAR____TtC8Podcasts28GoToShowPodcastContextAction_metricsLabel, v148, v40);
  sub_1000109E4(v163, v61 + 32);
  v62 = sub_10037F124(&qword_100576D60, type metadata accessor for GoToShowPodcastContextAction);
  *(v1 + 304) = v61;
  *(v1 + 312) = v62;
  type metadata accessor for SettingsPodcastContextAction();
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  v11(v63 + OBJC_IVAR____TtC8Podcasts28SettingsPodcastContextAction_metricsLabel, enum case for MetricsLabel.settingsPodcast(_:), v40);
  v64 = sub_10037F124(&unk_100582270, type metadata accessor for SettingsPodcastContextAction);
  *(v1 + 320) = v63;
  *(v1 + 328) = v64;
  type metadata accessor for PlayNextPodcastContextAction();
  v65 = swift_allocObject();
  v65[3] = 0;
  v65[4] = 0;
  v11(v65 + OBJC_IVAR____TtC8Podcasts28PlayNextPodcastContextAction_metricsLabel, enum case for MetricsLabel.playPodcastNext(_:), v40);
  v65[2] = v147;
  v66 = sub_10037F124(&qword_10057EB20, type metadata accessor for PlayNextPodcastContextAction);
  *(v1 + 336) = v65;
  *(v1 + 344) = v66;
  type metadata accessor for AddToQueuePodcastContextAction();
  v67 = swift_allocObject();
  v67[3] = 0;
  v67[4] = 0;
  v11(v67 + OBJC_IVAR____TtC8Podcasts30AddToQueuePodcastContextAction_metricsLabel, enum case for MetricsLabel.addToQueuePodcast(_:), v40);
  v67[2] = v147;
  v68 = sub_10037F124(&unk_100582280, type metadata accessor for AddToQueuePodcastContextAction);
  *(v1 + 352) = v67;
  *(v1 + 360) = v68;
  type metadata accessor for CopyLinkPodcastContextAction();
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 40) = xmmword_10040FE30;
  v11(v69 + OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_metricsLabel, v149, v40);
  v155(v69 + OBJC_IVAR____TtC8Podcasts28CopyLinkPodcastContextAction_shareLink, 1, 1, v156);
  v70 = sub_10037F124(&qword_10057FE10, type metadata accessor for CopyLinkPodcastContextAction);
  *(v1 + 368) = v69;
  *(v1 + 376) = v70;
  type metadata accessor for ReportConcernContextAction();
  v71 = swift_allocObject();
  *(v71 + 16) = 0;
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 40) = -1;
  *(v71 + 48) = 0;
  *(v71 + 56) = 0;
  *(v71 + 64) = 0xD000000000000016;
  *(v71 + 72) = 0x800000010046D090;
  v11(v71 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_metricsLabel, enum case for MetricsLabel.reportPodcast(_:), v40);
  v72 = OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType;
  v158(v71 + OBJC_IVAR____TtC8Podcasts26ReportConcernContextAction_contextActionType, enum case for ContextActionType.report(_:), v43);
  v160(v71 + v72, 0, 1, v43);
  v73 = sub_10037F124(&qword_100582290, type metadata accessor for ReportConcernContextAction);
  *(v1 + 384) = v71;
  *(v1 + 392) = v73;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for MarkAllAsPlayedContextAction();
  v74 = swift_allocObject();
  *(v74 + 56) = 0;
  *(v74 + 64) = 0;
  *(v74 + 72) = 0;
  swift_retain_n();
  v75 = [v154 mainBundle];
  v165._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0xD000000000000012;
  v76._object = 0x80000001004727F0;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v165._countAndFlagsBits = 0;
  v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v165);

  *(v74 + 80) = v78;
  *(v74 + 96) = xmmword_10040FE40;
  *(v74 + 112) = 0x8000000100467240;
  v11(v74 + OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_metricsLabel, enum case for MetricsLabel.markAllEpisodesAsPlayed(_:), v40);
  v79 = OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_contextActionType;
  v158(v74 + OBJC_IVAR____TtC8Podcasts28MarkAllAsPlayedContextAction_contextActionType, enum case for ContextActionType.markAllEpisodesAsPlayed(_:), v43);
  v160(v74 + v79, 0, 1, v43);
  sub_1000109E4(v163, v74 + 16);
  v80 = sub_10037F124(&qword_100580DC0, type metadata accessor for MarkAllAsPlayedContextAction);
  *(v1 + 400) = v74;
  *(v1 + 408) = v80;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for MarkAllAsUnplayedContextAction();
  v81 = swift_allocObject();
  *(v81 + 56) = 0;
  *(v81 + 64) = 0;
  *(v81 + 72) = 0;
  v82 = [v154 mainBundle];
  v166._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000014;
  v83._object = 0x8000000100472810;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v166._countAndFlagsBits = 0;
  v85 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, 0, v82, v84, v166);

  *(v81 + 80) = v85;
  *(v81 + 96) = xmmword_10040FE50;
  *(v81 + 112) = 0x8000000100467220;
  v11(v81 + OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_metricsLabel, enum case for MetricsLabel.markAllEpisodesAsUnplayed(_:), v40);
  v86 = OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_contextActionType;
  v158(v81 + OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_contextActionType, enum case for ContextActionType.markAllEpisodesAsUnplayed(_:), v43);
  v160(v81 + v86, 0, 1, v43);
  sub_1000109E4(v163, v81 + 16);
  v87 = sub_10037F124(&unk_1005822A0, type metadata accessor for MarkAllAsUnplayedContextAction);
  *(v1 + 416) = v81;
  *(v1 + 424) = v87;
  v150 = v13[20];
  type metadata accessor for BookmarkEpisodeContextAction();
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  *(v88 + 32) = 0;
  *(v88 + 40) = xmmword_100402AC0;
  v11(v88 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_metricsLabel, enum case for MetricsLabel.bookmarkEpisode(_:), v40);
  v89 = OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_contextActionType;
  v158(v88 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_contextActionType, enum case for ContextActionType.bookmarkEpisode(_:), v43);
  v160(v88 + v89, 0, 1, v43);
  *(v88 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_bookmarksController) = v150;
  v90 = sub_10037F124(&unk_1005821C0, type metadata accessor for BookmarkEpisodeContextAction);
  *(v1 + 432) = v88;
  *(v1 + 440) = v90;
  type metadata accessor for RemoveEpisodeFromBookmarksContextAction();
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  *(v91 + 24) = 0;
  swift_retain_n();
  v92 = [v154 mainBundle];
  v167._object = 0xE000000000000000;
  v93._countAndFlagsBits = 0xD00000000000001BLL;
  v93._object = 0x80000001004727B0;
  v94._countAndFlagsBits = 0;
  v94._object = 0xE000000000000000;
  v167._countAndFlagsBits = 0;
  v95 = NSLocalizedString(_:tableName:bundle:value:comment:)(v93, 0, v92, v94, v167);

  *(v91 + 32) = v95;
  *(v91 + 48) = xmmword_10040FE60;
  *(v91 + 64) = 0xEE006873616C732ELL;
  v11(v91 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel, enum case for MetricsLabel.removeEpisodeFromBookmarks(_:), v40);
  v96 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType;
  v158(v91 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType, enum case for ContextActionType.removeEpisodeFromBookmarks(_:), v43);
  v160(v91 + v96, 0, 1, v43);
  *(v91 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_bookmarksController) = v150;
  v97 = sub_10037F124(&qword_10057B1A0, type metadata accessor for RemoveEpisodeFromBookmarksContextAction);
  *(v1 + 448) = v91;
  *(v1 + 456) = v97;
  type metadata accessor for CopyLinkOtherContextAction();
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v155(v98 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_link, 1, 1, v156);
  *(v98 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_attributes) = 0;
  *(v98 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_systemImageName) = xmmword_10040FE30;
  v11(v98 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_metricsLabel, enum case for MetricsLabel.copyLinkOther(_:), v40);
  v99 = OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_contextActionType;
  v158(v98 + OBJC_IVAR____TtC8Podcasts26CopyLinkOtherContextAction_contextActionType, enum case for ContextActionType.copyOtherLink(_:), v43);
  v160(v98 + v99, 0, 1, v43);
  v100 = sub_10037F124(&qword_1005803B8, type metadata accessor for CopyLinkOtherContextAction);
  *(v1 + 464) = v98;
  *(v1 + 472) = v100;
  sub_100004428((v13 + 4), v163);
  sub_100004428((v13 + 9), v161);
  type metadata accessor for RemoveAllDownloadsFromShowContextAction();
  v101 = swift_allocObject();
  *(v101 + 104) = 0;
  *(v101 + 112) = 0;
  v102 = [v154 mainBundle];
  v168._object = 0x800000010046CA60;
  v103._object = 0x8000000100472830;
  v103._countAndFlagsBits = 0xD000000000000010;
  v104._countAndFlagsBits = 0;
  v104._object = 0xE000000000000000;
  v168._countAndFlagsBits = 0xD000000000000010;
  v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v103, 0, v102, v104, v168);

  *(v101 + 120) = v105;
  *(v101 + 136) = xmmword_10040FE70;
  *(v101 + 152) = 0xEC000000656C6372;
  v11(v101 + OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_metricsLabel, enum case for MetricsLabel.removeAllDownloadsFromShow(_:), v40);
  v106 = OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_contextActionType;
  v158(v101 + OBJC_IVAR____TtC8Podcasts39RemoveAllDownloadsFromShowContextAction_contextActionType, enum case for ContextActionType.removeAllDownloadsFromShow(_:), v43);
  v160(v101 + v106, 0, 1, v43);
  sub_1000109E4(v163, v101 + 16);
  sub_1000109E4(v161, v101 + 56);
  *(v101 + 96) = v152;
  v107 = sub_10037F124(&unk_1005822B0, type metadata accessor for RemoveAllDownloadsFromShowContextAction);
  *(v1 + 480) = v101;
  *(v1 + 488) = v107;
  sub_100004428((v13 + 9), v163);
  sub_100004428((v13 + 4), v161);
  type metadata accessor for RemovePodcastContextAction();
  v108 = swift_allocObject();
  *(v108 + 96) = 0;
  *(v108 + 104) = 0;
  *(v108 + 112) = xmmword_10040FE70;
  *(v108 + 128) = 0xEC000000656C6372;
  v11(v108 + OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_metricsLabel, enum case for MetricsLabel.removeShowFromLibrary(_:), v40);
  v109 = OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_contextActionType;
  v158(v108 + OBJC_IVAR____TtC8Podcasts26RemovePodcastContextAction_contextActionType, enum case for ContextActionType.removeShowFromLibrary(_:), v43);
  v160(v108 + v109, 0, 1, v43);
  sub_1000109E4(v163, v108 + 16);
  sub_1000109E4(v161, v108 + 56);
  v110 = sub_10037F124(&qword_10057C850, type metadata accessor for RemovePodcastContextAction);
  *(v1 + 496) = v108;
  *(v1 + 504) = v110;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for HidePlayedEpisodesPodcastContextAction();
  v111 = swift_allocObject();
  *(v111 + 56) = 0;
  *(v111 + 64) = 0;
  *(v111 + 72) = 0;
  v112 = OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_contextActionType;
  v158(v111 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_contextActionType, enum case for ContextActionType.hidePlayedEpisodes(_:), v43);
  v160(v111 + v112, 0, 1, v43);
  *(v111 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_attributes) = 0;
  *(v111 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_systemImageName) = xmmword_10040FE80;
  v11(v111 + OBJC_IVAR____TtC8Podcasts38HidePlayedEpisodesPodcastContextAction_metricsLabel, enum case for MetricsLabel.hidePlayedEpisodes(_:), v40);
  sub_1000109E4(v163, v111 + 16);
  v113 = sub_10037F124(&unk_1005822C0, type metadata accessor for HidePlayedEpisodesPodcastContextAction);
  *(v1 + 512) = v111;
  *(v1 + 520) = v113;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for RemoveFromLibraryEpisodeContextAction();
  swift_allocObject();
  v114 = sub_1002FE81C(v163);
  v115 = sub_10037F124(&qword_10057E568, type metadata accessor for RemoveFromLibraryEpisodeContextAction);
  *(v1 + 528) = v114;
  *(v1 + 536) = v115;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for RemoveFromUpNextEpisodeContextAction();
  swift_allocObject();
  v116 = sub_10027E874(v163);
  v117 = sub_10037F124(&qword_10057A898, type metadata accessor for RemoveFromUpNextEpisodeContextAction);
  *(v1 + 544) = v116;
  *(v1 + 552) = v117;
  sub_100004428((v13 + 4), v163);
  type metadata accessor for RemoveFromStationContextAction();
  v118 = swift_allocObject();
  v118[10] = 0;
  v118[11] = 0;
  v118[9] = v157;
  v118[2] = 0;
  v118[3] = v153;
  sub_1000109E4(v163, (v118 + 4));
  v119 = sub_10037F124(&unk_1005821A0, type metadata accessor for RemoveFromStationContextAction);
  *(v1 + 560) = v118;
  *(v1 + 568) = v119;
  type metadata accessor for FavoriteContextAction();
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_10040FE90;
  *(v120 + 32) = 0xE400000000000000;
  v11(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_metricsLabel, enum case for MetricsLabel.favorite(_:), v40);
  v121 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType;
  v158(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, enum case for ContextActionType.favorite(_:), v43);
  v160(v120 + v121, 0, 1, v43);
  v122 = v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID;
  *v122 = 0;
  *(v122 + 8) = 1;
  *(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestState) = 4;
  *(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration) = 0;
  *(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestContentKind) = 5;
  type metadata accessor for InterestRepository();
  BaseObjectGraph.inject<A>(_:)();
  *(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestRepository) = *&v163[0];
  type metadata accessor for InterestStateController();
  BaseObjectGraph.inject<A>(_:)();
  *(v120 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestStateController) = *&v163[0];
  v123 = sub_10037F124(&unk_1005822D0, type metadata accessor for FavoriteContextAction);
  *(v1 + 576) = v120;
  *(v1 + 584) = v123;
  type metadata accessor for UndoFavoriteContextAction();
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_10040FEA0;
  *(v124 + 32) = 0xEA00000000006873;
  v11(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_metricsLabel, enum case for MetricsLabel.undoFavorite(_:), v40);
  v125 = OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType;
  v158(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_contextActionType, enum case for ContextActionType.undoFavorite(_:), v43);
  v160(v124 + v125, 0, 1, v43);
  v126 = v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_adamID;
  *v126 = 0;
  *(v126 + 8) = 1;
  *(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestState) = 4;
  *(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_configuration) = 0;
  BaseObjectGraph.inject<A>(_:)();
  *(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestRepository) = *&v163[0];
  BaseObjectGraph.inject<A>(_:)();
  *(v124 + OBJC_IVAR____TtC8Podcasts25UndoFavoriteContextAction_interestStateController) = *&v163[0];
  v127 = sub_10037F124(&qword_1005810D8, type metadata accessor for UndoFavoriteContextAction);
  *(v1 + 592) = v124;
  *(v1 + 600) = v127;
  type metadata accessor for ManageFavoriteCategoriesContextAction();
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_10040FEB0;
  *(v128 + 32) = 0xEB0000000074656CLL;
  v11(v128 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_metricsLabel, enum case for MetricsLabel.favoriteCategories(_:), v40);
  v129 = OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType;
  v158(v128 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_contextActionType, enum case for ContextActionType.favoriteCategories(_:), v43);
  v160(v128 + v129, 0, 1, v43);
  *(v128 + OBJC_IVAR____TtC8Podcasts37ManageFavoriteCategoriesContextAction_configuration) = 0;
  v130 = sub_10037F124(&unk_1005822E0, type metadata accessor for ManageFavoriteCategoriesContextAction);
  *(v1 + 608) = v128;
  *(v1 + 616) = v130;
  type metadata accessor for SuggestLessContextAction();
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_10040FEC0;
  *(v131 + 32) = 0xEF6E776F6473626DLL;
  v11(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_metricsLabel, enum case for MetricsLabel.suggestLess(_:), v40);
  v132 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType;
  v158(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, enum case for ContextActionType.suggestLess(_:), v43);
  v160(v131 + v132, 0, 1, v43);
  v133 = v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID;
  *v133 = 0;
  *(v133 + 8) = 1;
  *(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestState) = 4;
  *(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration) = 0;
  BaseObjectGraph.inject<A>(_:)();
  *(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestRepository) = *&v163[0];
  BaseObjectGraph.inject<A>(_:)();
  *(v131 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestStateController) = *&v163[0];
  v134 = sub_10037F124(&qword_10057DA68, type metadata accessor for SuggestLessContextAction);
  *(v1 + 624) = v131;
  *(v1 + 632) = v134;
  type metadata accessor for UndoSuggestLessContextAction();
  v135 = swift_allocObject();
  *(v135 + 16) = xmmword_10040FEC0;
  *(v135 + 32) = 0xEF6E776F6473626DLL;
  v11(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_metricsLabel, enum case for MetricsLabel.undoSuggestLess(_:), v40);
  v136 = OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType;
  v158(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_contextActionType, enum case for ContextActionType.undoSuggestLess(_:), v43);
  v160(v135 + v136, 0, 1, v43);
  v137 = v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_adamID;
  *v137 = 0;
  *(v137 + 8) = 1;
  *(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestState) = 4;
  *(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_configuration) = 0;
  BaseObjectGraph.inject<A>(_:)();
  *(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestRepository) = *&v163[0];
  BaseObjectGraph.inject<A>(_:)();
  *(v135 + OBJC_IVAR____TtC8Podcasts28UndoSuggestLessContextAction_interestStateController) = *&v163[0];
  v138 = sub_10037F124(&unk_1005822F0, type metadata accessor for UndoSuggestLessContextAction);
  *(v1 + 640) = v135;
  *(v1 + 648) = v138;
  type metadata accessor for OpenReferenceLinkContextAction();
  v139 = swift_allocObject();
  *(v139 + 16) = 0;
  v140 = enum case for MetricsLabel.referenceLink(_:);
  v11(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_metricsLabel, enum case for MetricsLabel.referenceLink(_:), v40);
  v141 = OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType;
  v158(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_contextActionType, enum case for ContextActionType.referenceLink(_:), v43);
  v160(v139 + v141, 0, 1, v43);
  *(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_attributes) = 0;
  v155(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_link, 1, 1, v156);
  *(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_destination) = xmmword_10040FED0;
  *(v139 + OBJC_IVAR____TtC8Podcasts30OpenReferenceLinkContextAction_record) = 0;
  v142 = sub_10037F124(&qword_1005797A8, type metadata accessor for OpenReferenceLinkContextAction);
  *(v1 + 656) = v139;
  *(v1 + 664) = v142;
  type metadata accessor for ReferenceLinkKCUContextAction();
  v143 = swift_allocObject();
  *(v143 + 16) = 0;
  *(v143 + 24) = 0;
  *(v143 + 32) = xmmword_1004093F0;
  v11(v143 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_metricsLabel, v140, v40);
  v144 = OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType;
  v158(v143 + OBJC_IVAR____TtC8Podcasts29ReferenceLinkKCUContextAction_contextActionType, enum case for ContextActionType.kcuErrorRadar(_:), v43);
  v160(v143 + v144, 0, 1, v43);
  v145 = sub_10037F124(&qword_100582300, type metadata accessor for ReferenceLinkKCUContextAction);
  *(v1 + 672) = v143;
  *(v1 + 680) = v145;
  return v1;
}

uint64_t sub_10037E09C()
{
  sub_100168088(&qword_100579468);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100402720;
  v2 = *(v0 + 168);
  sub_100004428(v0 + 32, v17);
  sub_100004428(v0 + 184, v16);
  v3 = *(v0 + 224);
  type metadata accessor for MarkEpisodeContextAction();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 136) = 1;
  *(v4 + 32) = 0;
  *(v4 + 40) = v2;
  sub_1000109E4(v17, v4 + 48);
  sub_1000109E4(v16, v4 + 88);
  *(v4 + 128) = v3;
  v5 = sub_10037F124(&unk_1005821D0, type metadata accessor for MarkEpisodeContextAction);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  sub_100004428(v0 + 32, v17);
  sub_100004428(v0 + 184, v16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 136) = 1;
  *(v6 + 32) = 1;
  *(v6 + 40) = v2;
  sub_1000109E4(v17, v6 + 48);
  sub_1000109E4(v16, v6 + 88);
  *(v6 + 128) = v3;
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;
  type metadata accessor for PlayNextEpisodeContextAction();
  v7 = swift_allocObject();
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  v8 = OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel;
  v9 = enum case for MetricsLabel.playEpisodeNext(_:);
  v10 = type metadata accessor for MetricsLabel();
  v11 = *(*(v10 - 8) + 104);
  v11(&v7[v8], v9, v10);
  *(v7 + 2) = v3;
  v12 = sub_10037F124(&qword_100575000, type metadata accessor for PlayNextEpisodeContextAction);
  *(v1 + 64) = v7;
  *(v1 + 72) = v12;
  type metadata accessor for AddToQueueEpisodeContextAction();
  v13 = swift_allocObject();
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  v11(&v13[OBJC_IVAR____TtC8Podcasts30AddToQueueEpisodeContextAction_metricsLabel], enum case for MetricsLabel.addToQueueEpisode(_:), v10);
  *(v13 + 2) = v3;
  v14 = sub_10037F124(&qword_1005821E0, type metadata accessor for AddToQueueEpisodeContextAction);
  *(v1 + 80) = v13;
  *(v1 + 88) = v14;
  swift_retain_n();
  swift_retain_n();
  return v1;
}

uint64_t sub_10037E364()
{
  v1 = v0;
  sub_100168088(&qword_100579468);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100401B10;
  v3 = *(v0 + 176);
  v4 = *(v0 + 24);
  sub_100004428(v0 + 32, v39);
  type metadata accessor for RemoveFromStationContextAction();
  v5 = swift_allocObject();
  v5[10] = 0;
  v5[11] = 0;
  v5[9] = v3;
  v5[2] = 0;
  v5[3] = v4;
  sub_1000109E4(v39, (v5 + 4));
  v6 = sub_10037F124(&unk_1005821A0, type metadata accessor for RemoveFromStationContextAction);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  sub_100004428(v1 + 32, v39);
  type metadata accessor for RemoveFromUpNextEpisodeContextAction();
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  v7 = sub_10027E874(v39);
  v8 = sub_10037F124(&qword_10057A898, type metadata accessor for RemoveFromUpNextEpisodeContextAction);
  *(v2 + 48) = v7;
  *(v2 + 56) = v8;
  sub_100004428(v1 + 32, v39);
  sub_100004428(v1 + 184, v37);
  type metadata accessor for DownloadEpisodeContextAction();
  v9 = swift_allocObject();
  *(v9 + 128) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  v10 = OBJC_IVAR____TtC8Podcasts28DownloadEpisodeContextAction_metricsLabel;
  v11 = enum case for MetricsLabel.downloadEpisode(_:);
  v12 = type metadata accessor for MetricsLabel();
  v13 = *(*(v12 - 8) + 104);
  v13(v9 + v10, v11, v12);
  sub_1000109E4(v39, v9 + 40);
  *(v9 + 80) = v4;
  v14 = v37[1];
  *(v9 + 88) = v37[0];
  *(v9 + 104) = v14;
  *(v9 + 120) = v38;
  v15 = sub_10037F124(&unk_1005821B0, type metadata accessor for DownloadEpisodeContextAction);
  *(v2 + 64) = v9;
  *(v2 + 72) = v15;
  sub_100004428(v1 + 32, v39);
  type metadata accessor for RemoveDownloadContextAction();
  v16 = swift_allocObject();
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  v13(v16 + OBJC_IVAR____TtC8Podcasts27RemoveDownloadContextAction_metricsLabel, enum case for MetricsLabel.removeDownload(_:), v12);
  v36 = v13;
  *(v16 + 64) = v3;
  *(v16 + 16) = v4;
  sub_1000109E4(v39, v16 + 24);
  v17 = sub_10037F124(&qword_10057B6B8, type metadata accessor for RemoveDownloadContextAction);
  *(v2 + 80) = v16;
  *(v2 + 88) = v17;
  v18 = *(v1 + 160);
  type metadata accessor for BookmarkEpisodeContextAction();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = 0;
  *(v19 + 40) = xmmword_100402AC0;
  v13(v19 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_metricsLabel, enum case for MetricsLabel.bookmarkEpisode(_:), v12);
  v20 = OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_contextActionType;
  v21 = enum case for ContextActionType.bookmarkEpisode(_:);
  v22 = type metadata accessor for ContextActionType();
  v23 = *(v22 - 8);
  v35 = *(v23 + 104);
  v35(v19 + v20, v21, v22);
  v24 = *(v23 + 56);
  v24(v19 + v20, 0, 1, v22);
  *(v19 + OBJC_IVAR____TtC8Podcasts28BookmarkEpisodeContextAction_bookmarksController) = v18;
  v25 = sub_10037F124(&unk_1005821C0, type metadata accessor for BookmarkEpisodeContextAction);
  *(v2 + 96) = v19;
  *(v2 + 104) = v25;
  type metadata accessor for RemoveEpisodeFromBookmarksContextAction();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v27 = objc_opt_self();
  swift_retain_n();
  v28 = [v27 mainBundle];
  v40._object = 0xE000000000000000;
  v29._object = 0x80000001004727B0;
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v40._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v40);

  *(v26 + 32) = v31;
  *(v26 + 48) = xmmword_10040FE60;
  *(v26 + 64) = 0xEE006873616C732ELL;
  v36(v26 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_metricsLabel, enum case for MetricsLabel.removeEpisodeFromBookmarks(_:), v12);
  v32 = OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType;
  v35(v26 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_contextActionType, enum case for ContextActionType.removeEpisodeFromBookmarks(_:), v22);
  v24(v26 + v32, 0, 1, v22);
  *(v26 + OBJC_IVAR____TtC8Podcasts39RemoveEpisodeFromBookmarksContextAction_bookmarksController) = v18;
  v33 = sub_10037F124(&qword_10057B1A0, type metadata accessor for RemoveEpisodeFromBookmarksContextAction);
  *(v2 + 112) = v26;
  *(v2 + 120) = v33;
  return v2;
}

uint64_t sub_10037E934(uint64_t a1, uint64_t a2)
{
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v6 = &v29 - v5;
  v7 = type metadata accessor for PerformableContextActions();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for PerformableContextActions.share(_:))
  {
    type metadata accessor for ShareEpisodeContextAction();
    v13 = swift_allocObject();
    *(v13 + 24) = 0;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    v14 = OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel;
    v15 = enum case for MetricsLabel.share(_:);
    v16 = type metadata accessor for MetricsLabel();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v13 + v14, v15, v16);
    sub_1001DFF14(a2);
    v18 = sub_1003541CC();
    if (!v18)
    {
      swift_setDeallocating();

      (*(v17 + 8))(v13 + OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel, v16);
      return swift_deallocClassInstance();
    }

    v19 = v18;
    swift_beginAccess();
    if (!*(v13 + 24))
    {

      v28 = type metadata accessor for PresentationSource();
      (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      return sub_10037F0BC(v6);
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v20 = type metadata accessor for PresentationSource();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {

      return sub_10037F0BC(v6);
    }

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
    swift_setDeallocating();

    (*(v17 + 8))(v13 + OBJC_IVAR____TtC8Podcasts25ShareEpisodeContextAction_metricsLabel, v16);
    swift_deallocClassInstance();

    return (*(v21 + 8))(v6, v20);
  }

  else if (v12 == enum case for PerformableContextActions.presentPodcast(_:))
  {
    sub_100004428(v2 + 120, v30);
    type metadata accessor for EpisodePresentPodcastContextAction();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    v23 = OBJC_IVAR____TtC8Podcasts34EpisodePresentPodcastContextAction_metricsLabel;
    v24 = enum case for MetricsLabel.select(_:);
    v25 = type metadata accessor for MetricsLabel();
    v26 = *(v25 - 8);
    (*(v26 + 104))(v22 + v23, v24, v25);
    sub_1000109E4(v30, v22 + 32);
    sub_1001DFBF8(a2);
    sub_1003B0E9C();
    swift_setDeallocating();

    sub_100004590(v22 + 32);
    (*(v26 + 8))(v22 + OBJC_IVAR____TtC8Podcasts34EpisodePresentPodcastContextAction_metricsLabel, v25);
    return swift_deallocClassInstance();
  }

  else
  {
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_10037EEB0()
{

  sub_100004590(v0 + 32);
  sub_100004590(v0 + 72);

  sub_100004590(v0 + 120);

  sub_100004590(v0 + 184);

  return v0;
}

uint64_t sub_10037EF20()
{
  sub_10037EEB0();

  return swift_deallocClassInstance();
}

uint64_t sub_10037EFE4()
{
  sub_100168088(&qword_100582188);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100400790;
  v1 = type metadata accessor for ContextMenuLockupPreviewProvider();
  v2 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_10037F124(&unk_100582190, type metadata accessor for ContextMenuLockupPreviewProvider);
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_10037F0BC(uint64_t a1)
{
  v2 = sub_100168088(&unk_10057BB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037F124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037F17C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1001B9C88;

  return sub_10037F228(a2);
}

uint64_t sub_10037F228(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for ShowEntity.ShowEntityQuery();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10037F2E8, 0, 0);
}

uint64_t sub_10037F2E8()
{
  ShowEntity.ShowEntityQuery.init()();
  FetchShowEntitiesIntent.contentIDs.getter();
  v1 = Array<A>.group()();
  v3 = v2;
  v5 = v4;

  v0[6] = v1;
  v0[7] = v3;
  v0[8] = v5;
  v6 = *(v1 + 16);
  if (v6)
  {
    sub_1001A788C(0, v6, 0);
    v7 = (v1 + 32);
    v8 = _swiftEmptyArrayStorage[2];
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = _swiftEmptyArrayStorage[3];
      if (v8 >= v11 >> 1)
      {
        sub_1001A788C((v11 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      _swiftEmptyArrayStorage[v8++ + 4] = v9;
      --v6;
    }

    while (v6);
  }

  v12 = sub_10039B764(_swiftEmptyArrayStorage);
  v0[9] = v12;

  v14 = sub_10039B51C(v13);
  v0[10] = v14;

  v15 = swift_task_alloc();
  v0[11] = v15;
  v16 = sub_10037F798(&unk_100582310, &type metadata accessor for ShowEntity.ShowEntityQuery);
  *v15 = v0;
  v15[1] = sub_10037F4D8;
  v17 = v0[3];

  return LibraryEntityQuery.findAndPrepareEntities(for:adamIDs:uuids:)(v3, v12, v14, v17, v16);
}

uint64_t sub_10037F4D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_10037F6EC;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_10037F664;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10037F664()
{
  v1 = v0[13];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10037F6EC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10037F798(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10037F7F8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_10037F990(uint64_t a1, void (*a2)(void))
{
  v8 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_100004428(i, v7);
    sub_100168088(&qword_1005748E0);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

void *sub_10037FAA4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10037FC18(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_1001A76F8(0, v3 & ~(v3 >> 63), 0);
  v4 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v3 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (!v8 || !v6)
      {

        swift_unknownObjectRelease();
        return 0;
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        v13 = v8;
        sub_1001A76F8((v9 > 1), v10 + 1, 1);
        v8 = v13;
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

void *sub_10037FDD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_1001A75F0(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10001B944(i, v9);
      sub_100168088(&qword_100574880);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001A75F0((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10037FEFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for MTInterest();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100380060(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1001A75F0(0, i & ~(i >> 63), 0);
    v4 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v6 = v5;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  return 0;
}

void *sub_100380228(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003803A0()
{
  v0 = type metadata accessor for ShowOffer();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (EpisodeOffer.contentRating.getter() != 2)
  {
    v5 = ContentRating.rawValue.getter();
    v7 = v6;
    if (v5 == ContentRating.rawValue.getter() && v7 == v8)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

LABEL_16:
    type metadata accessor for RestrictionsController();
    v4 = static RestrictionsController.isExplicitContentAllowed.getter() ^ 1;
    return v4 & 1;
  }

LABEL_2:
  EpisodeOffer.showOffer.getter();
  if (ShowOffer.contentRating.getter() != 2)
  {
    v9 = ContentRating.rawValue.getter();
    v11 = v10;
    if (v9 == ContentRating.rawValue.getter() && v11 == v12)
    {

      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v1 + 8))(v3, v0);
      v4 = 0;
      if ((v14 & 1) == 0)
      {
        return v4 & 1;
      }
    }

    goto LABEL_16;
  }

  (*(v1 + 8))(v3, v0);
  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1003805C8()
{
  v0 = DeviceCapacityMonitor.CapacityLevel.rawValue.getter();
  result = DeviceCapacityMonitor.CapacityLevel.rawValue.getter();
  if (v0 != result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1000044A0((result + 112), *(result + 136));
      dispatch thunk of PodcastsStateCoordinatorProtocol.cancelAllDownloads(userInitiated:from:)();
    }
  }

  return result;
}

uint64_t sub_100380664()
{
  v1 = v0;
  if ((*(v0 + 240) & 1) == 0)
  {
    v2 = *(v0 + 232);
    type metadata accessor for DeviceCapacityMonitor();
    v3 = static DeviceCapacityMonitor.shared.getter();
    DeviceCapacityMonitor.removeCapacityChangeObserver(with:)(v2);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100004590(v1 + 112);
  sub_100004590(v1 + 152);
  sub_100004590(v1 + 192);

  sub_100004590(v1 + 256);

  return v1;
}

uint64_t sub_100380724()
{
  sub_100380664();

  return swift_deallocClassInstance();
}

uint64_t sub_100380758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100380778, 0, 0);
}

uint64_t sub_100380778()
{
  v1 = *(*(v0 + 24) + 296);
  *(v0 + 32) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_100380860;

    return PlaybackController.pause()();
  }

  else
  {
    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100380860()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = sub_10039454C;
  }

  else
  {

    v2 = sub_1003809A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003809F0(void *a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return Promise.resolve(_:)();
  }

  sub_100391378(a1);
}

id sub_100380A70(void *a1, _BYTE *a2, void *a3)
{
  if ([a1 isAuthenticatedDark])
  {
    [a1 setAuthenticatedDark:0];
  }

  [a1 resetGoDarkWithReason:3];
  if (a3)
  {
    result = [a3 saveInCurrentBlock];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_100380AF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7)
{
  v38 = a2;
  v34 = a4;
  v36 = a3;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v12 = &v34 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100390F04();
  sub_100168088(&qword_1005827C0);
  v17 = Promise.__allocating_init()();
  if ((a6 & 1) != 0 && (type metadata accessor for RestrictionsController(), (static RestrictionsController.isExplicitContentAllowed.getter() & 1) == 0))
  {
    v32 = static RestrictionsController.shared.getter();

    RestrictionsController.presentAlertIfNeeded(_:presentationCompletion:actionCompletion:)();
  }

  else
  {
    v35 = a7;
    sub_100009F1C(0, &qword_100582850);
    v18 = [swift_getObjCClassFromMetadata() sharedInstance];
    v19 = [objc_allocWithZone(MTAddPodcastParams) init];
    sub_100010430(a1, v12, &qword_100574040);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100009104(v12, &qword_100574040);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      URL.absoluteString.getter();
      v20 = String._bridgeToObjectiveC()();

      [v19 setUrl:v20];

      (*(v14 + 8))(v16, v13);
    }

    v21 = v37;
    v22 = v36;
    if (a5)
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v19 setLocation:v23];

    if ((v22 & 1) != 0 || (v24 = objc_allocWithZone(NSNumber), (v25 = [v24 initWithUnsignedLongLong:v38]) == 0))
    {
      v28 = 0;
    }

    else
    {
      v26 = v25;
      v27 = [v25 longLongValue];

      v28 = v27;
    }

    [v19 setStoreCollectionId:v28];
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v17;
    *(v30 + 24) = v29;
    *(v30 + 32) = v35 & 1;
    aBlock[4] = sub_10039437C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002016BC;
    aBlock[3] = &unk_1004F23B8;
    v31 = _Block_copy(aBlock);

    [v19 setCompletion:v31];
    _Block_release(v31);
    [v18 subscribeToPodcastWithParams:v19];
    if ((v22 & 1) == 0)
    {
      sub_1000044A0((v21 + 192), *(v21 + 216));
      dispatch thunk of InterestRepositoryProtocol.undoSuggestLess(forAdamID:)();
    }
  }

  return v17;
}

uint64_t sub_100380F78(char a1, uint64_t a2, uint64_t a3, char a4)
{
  Promise.resolve(_:)();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100381660(a1 & 1, a4 & 1);
  }

  return result;
}

void sub_100380FF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      type metadata accessor for RestrictionsController();
      v12 = a1;
      if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || ([v12 isExplicit] & 1) == 0)
      {
        v14 = [v12 managedObjectContext];
        if (v14)
        {
          v15 = v14;
          sub_1000044A0(v11 + 14, v11[17]);
          dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeEnableSubscription(onPodcastUUID:from:context:)();
          Promise.resolve(_:)();
          sub_1000044A0(v11 + 24, v11[27]);
          [v12 storeCollectionId];
          AdamID.init(rawValue:)();
          dispatch thunk of InterestRepositoryProtocol.undoSuggestLess(forAdamID:)();
          sub_100009F1C(0, &qword_10057BC40);
          if ((static UITraitCollection.interfaceIdiomIsMac.getter() & 1) != 0 || (swift_getObjectType(), (dispatch thunk of MTNotificationManagerProtocol.canPromptForNotificationPermissionsWithPreWarmSheet()() & 1) == 0))
          {
            if (a6)
            {
              sub_100381700();
            }
          }

          swift_getObjectType();
          dispatch thunk of MTNotificationManagerProtocol.requestNotificationPermissionsWithPreWarmSheetIfNeeded()();
        }

        else
        {
          sub_100168088(&qword_1005796A0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100400790;
          *(inited + 32) = 1684632949;
          *(inited + 72) = &type metadata for String;
          *(inited + 40) = 0xE400000000000000;
          *(inited + 48) = a4;
          *(inited + 56) = a5;

          sub_10016A444(inited);
          swift_setDeallocating();
          sub_100009104(inited + 32, &qword_100581D00);
          v21 = objc_allocWithZone(NSError);
          v22 = String._bridgeToObjectiveC()();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v24 = [v21 initWithDomain:v22 code:42 userInfo:isa];

          v25 = v24;
          Promise.reject(_:)();
        }
      }

      else
      {
        v13 = static RestrictionsController.shared.getter();

        RestrictionsController.presentAlertIfNeeded(_:presentationCompletion:actionCompletion:)();
      }
    }

    else
    {
      v16 = objc_allocWithZone(NSError);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 initWithDomain:v17 code:42 userInfo:0];

      v19 = v18;
      Promise.reject(_:)();
    }
  }
}

void sub_1003813C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a1;
    v9 = [v8 managedObjectContext];
    if (v9)
    {
      v10 = v9;
      sub_1000044A0((a5 + 112), *(a5 + 136));
      dispatch thunk of PodcastsStateCoordinatorProtocol.disableSubscription(onPodcastUUID:from:context:)();
      Promise.resolve(_:)();
    }

    else
    {
      sub_100168088(&qword_1005796A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100400790;
      *(inited + 32) = 1684632949;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = a3;
      *(inited + 56) = a4;

      sub_10016A444(inited);
      swift_setDeallocating();
      sub_100009104(inited + 32, &qword_100581D00);
      v15 = objc_allocWithZone(NSError);
      v16 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [v15 initWithDomain:v16 code:42 userInfo:isa];

      v19 = v18;
      Promise.reject(_:)();
    }
  }

  else
  {
    v11 = objc_allocWithZone(NSError);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithDomain:v12 code:42 userInfo:0];

    v20 = v13;
    Promise.reject(_:)();
  }
}

uint64_t sub_100381660(char a1, char a2)
{
  sub_100009F1C(0, &qword_10057BC40);
  result = static UITraitCollection.interfaceIdiomIsMac.getter();
  if ((result & 1) != 0 || (swift_getObjectType(), result = dispatch thunk of MTNotificationManagerProtocol.canPromptForNotificationPermissionsWithPreWarmSheet()(), (result & 1) == 0))
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }

    if (a2)
    {
      sub_100381700();
    }

    goto LABEL_8;
  }

  if (a1)
  {
LABEL_8:
    swift_getObjectType();
    return dispatch thunk of MTNotificationManagerProtocol.requestNotificationPermissionsWithPreWarmSheetIfNeeded()();
  }

  return result;
}

uint64_t sub_100381700()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005729D0);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100394374;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F2368;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100394420(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

void sub_1003819F8()
{
  v0 = type metadata accessor for HUDViewController.HUDType();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    (*(v1 + 104))(v3, enum case for HUDViewController.HUDType.following(_:), v0);
    v4 = objc_allocWithZone(type metadata accessor for HUDViewController());
    v5 = HUDViewController.init(type:)();
    dispatch thunk of HUDViewController.present()();
  }
}

uint64_t sub_100381B30()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v1 = &v8 - v0;
  sub_100168088(&qword_1005827C0);
  v2 = Promise.__allocating_init()();
  result = ShowOffer.adamId.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    ShowOffer.feedUrl.getter();
    v4 = type metadata accessor for URL();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v1, 1, v4) == 1)
    {
      sub_100009104(v1, &qword_100574040);
    }

    else
    {
      URL.absoluteString.getter();
      (*(v5 + 8))(v1, v4);
    }

    type metadata accessor for CoreDataFetcher();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v2;

    static CoreDataFetcher.fetchPodcast(adamId:feedUrl:completion:)();

    return v2;
  }

  return result;
}

uint64_t sub_100381D44(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003915FC(a1);
  }

  return result;
}

void sub_100381DD4(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v2 = a1;
      v3 = [v2 managedObjectContext];
      [v2 setEpisodeLimit:&_mh_execute_header];
      if (v3)
      {
        [v3 saveInCurrentBlock];
      }

      Promise.resolve(_:)();
    }

    else
    {
      v4 = objc_allocWithZone(NSError);
      v5 = String._bridgeToObjectiveC()();
      v6 = [v4 initWithDomain:v5 code:42 userInfo:0];

      v2 = v6;
      Promise.reject(_:)();
    }
  }
}

void sub_100381F40(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 podcastForUuid:v2];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v3)
    {
      v3 = v3;
      v4 = [v3 managedObjectContext];
      [v3 setEpisodeLimit:&_mh_execute_header];
      if (v4)
      {
        [v4 saveInCurrentBlock];
      }

      Promise.resolve(_:)();
    }

    else
    {
      v5 = objc_allocWithZone(NSError);
      v6 = String._bridgeToObjectiveC()();
      v7 = [v5 initWithDomain:v6 code:42 userInfo:0];

      v3 = v7;
      Promise.reject(_:)();
    }
  }
}

uint64_t sub_1003820E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100168088(&qword_1005827C0);
  v11 = Promise.__allocating_init()();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v12;
  v13[6] = v11;
  v17[4] = a5;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = a6;
  v14 = _Block_copy(v17);
  v15 = a1;

  [v15 performBlock:v14];
  _Block_release(v14);
  return v11;
}

void sub_100382230(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 podcastForUuid:v2];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003915FC(v3);
  }
}

uint64_t sub_1003822D8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v10 = result;

      v11 = a1;
      sub_100391794(v11, a4, v10, a2);
    }
  }

  else
  {
    v12 = enum case for FeedUpdateError.missingPodcast(_:);
    updated = type metadata accessor for FeedUpdateError();
    v14 = *(updated - 8);
    (*(v14 + 104))(v8, v12, updated);
    (*(v14 + 56))(v8, 0, 2, updated);
    Promise.resolve(_:)();
    return sub_1003935B0(v8);
  }

  return result;
}

uint64_t sub_100382468(uint64_t a1, uint64_t a2, char a3)
{
  sub_100168088(&unk_1005827C8);
  v4 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = a3;

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  v9[3] = type metadata accessor for SyncTaskScheduler();
  v9[4] = &protocol witness table for SyncTaskScheduler;
  sub_10000E680(v9);
  SyncTaskScheduler.init()();
  sub_100168088(&qword_1005827C0);
  sub_100009FAC(&qword_100582848, &qword_1005827C0);
  v7 = Promise.flatMap<A>(on:_:)();

  sub_100004590(v9);
  return v7;
}

uint64_t sub_100382618(uint64_t a1)
{
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100394240(a1, v3);
  updated = type metadata accessor for FeedUpdateError();
  v5 = (*(*(updated - 8) + 48))(v3, 2, updated);
  if (!v5)
  {
    sub_1003935B0(v3);
    goto LABEL_5;
  }

  if (v5 == 1)
  {
LABEL_5:
    sub_100168088(&qword_1005827C0);
    v7[15] = 0;
    return Promise.__allocating_init(value:)();
  }

  sub_100168088(&qword_1005827C0);
  v7[14] = 1;
  return Promise.__allocating_init(value:)();
}

void sub_10038272C(void *a1, uint64_t a2)
{
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v9 = enum case for FeedUpdateError.missingPodcast(_:);
    updated = type metadata accessor for FeedUpdateError();
    v11 = *(updated - 8);
    (*(v11 + 104))(v5, v9, updated);
    (*(v11 + 56))(v5, 0, 2, updated);
    Promise.resolve(_:)();
LABEL_7:
    sub_1003935B0(v5);
    return;
  }

  v6 = a1;
  if (([v6 isImplicitlyFollowed] & 1) == 0)
  {
    v12 = enum case for FeedUpdateError.notImplicitlyFollowed(_:);
    v13 = type metadata accessor for FeedUpdateError();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v5, v12, v13);
    (*(v14 + 56))(v5, 0, 2, v13);
    Promise.resolve(_:)();

    goto LABEL_7;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_100391FA0(v6, 65, v8, a2);
  }

  else
  {
  }
}

uint64_t sub_10038297C(uint64_t a1, char a2, void (*a3)(void *))
{
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    *v7 = a1;
    v8 = enum case for FeedUpdateError.feedUpdaterInternalError(_:);
    updated = type metadata accessor for FeedUpdateError();
    v10 = *(updated - 8);
    (*(v10 + 104))(v7, v8, updated);
    (*(v10 + 56))(v7, 0, 2, updated);
    swift_errorRetain();
  }

  else
  {
    v11 = type metadata accessor for FeedUpdateError();
    (*(*(v11 - 8) + 56))(v7, 2, 2, v11);
  }

  a3(v7);
  return sub_1003935B0(v7);
}

uint64_t sub_100382B08(void *a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  v73 = a8;
  v74 = a3;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v22 = &v63[-v21];
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  if (!a2)
  {
    v29 = v18;
    v71 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v72 = a4;
    v68 = a6;
    v69 = v20;
    v30 = v74;
    v70 = a7;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      updated = type metadata accessor for FeedUpdateError();
      v45 = v71;
      (*(*(updated - 8) + 56))(v71, 1, 2, updated);
      v30(v45);
LABEL_20:
      v28 = v45;
      return sub_1003935B0(v28);
    }

    v67 = Strong;
    v32 = sub_100009F1C(0, &qword_1005748A0);
    v33 = v22;
    static OS_os_log.feedUpdate.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = Logger.logObject.getter();
    v36 = os_log_type_enabled(v35, v34);
    v66 = v29;
    if (v36)
    {
      v64 = v34;
      v65 = v32;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v75 = *&v38;
      *v37 = 136315138;
      v39 = v17;
      if (a1)
      {
        v40 = [a1 description];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
      }

      else
      {
        v43 = 0xE500000000000000;
        v41 = 0x3E6C696E3CLL;
      }

      v48 = v69;
      v50 = sub_1000153E0(v41, v43, &v75);

      *(v37 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v35, v64, "Bag time threshold loaded with value of %s seconds", v37, 0xCu);
      sub_100004590(v38);

      v46 = *(v66 + 8);
      v46(v33, v39);
      v30 = v74;
      v47 = v70;
      v49 = v68;
      if (!a1)
      {
        goto LABEL_13;
      }
    }

    else
    {

      v46 = *(v29 + 8);
      v39 = v17;
      v46(v33, v17);
      v48 = v69;
      v47 = v70;
      v49 = v68;
      if (!a1)
      {
        goto LABEL_13;
      }
    }

    v75 = 0.0;
    v76 = 1;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();
    if (v76 != 1)
    {
      v52 = v75;
      goto LABEL_15;
    }

LABEL_13:
    [v49 libraryShowFetchThresholdDefaultValue];
    v52 = v51;
LABEL_15:
    [v47 timeIntervalSinceNow];
    v54 = fabs(v53);
    if (v52 < v54)
    {
      v55 = *(v67 + 24);
      ObjectType = swift_getObjectType();
      v57 = *(v55 + 24);
      swift_unknownObjectRetain();
      v57(v73, a9, a10 & 1, 1, 8, a11, a12, ObjectType, v55);

      return swift_unknownObjectRelease();
    }

    static OS_os_log.feedUpdate.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134218240;
      *(v61 + 4) = v54;
      *(v61 + 12) = 2048;
      *(v61 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v59, v60, "Skipping feed update because last one happened %f seconds ago, which is less than the min interval provided by MAPI %f seconds", v61, 0x16u);
    }

    v46(v48, v39);
    v62 = type metadata accessor for FeedUpdateError();
    v45 = v71;
    (*(*(v62 - 8) + 56))(v71, 1, 2, v62);
    v30(v45);

    goto LABEL_20;
  }

  *&v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)] = a2;
  v24 = enum case for FeedUpdateError.bagIntervalFetchFailure(_:);
  v25 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for FeedUpdateError();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v25, v24, v26);
  (*(v27 + 56))(v25, 0, 2, v26);
  swift_errorRetain();
  v74(v25);
  v28 = v25;
  return sub_1003935B0(v28);
}

uint64_t sub_10038313C()
{
  sub_100168088(&qword_1005827C0);
  v1 = Promise.__allocating_init()();
  v2 = [objc_opt_self() defaultCenter];
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);

  NSNotificationCenter.weakObserver(for:using:)();

  v6 = sub_100009F1C(0, &qword_1005729D0);

  v9[3] = v6;
  v9[4] = &protocol witness table for OS_dispatch_queue;
  v9[0] = static OS_dispatch_queue.main.getter();
  Promise.always(on:perform:)();

  sub_100004590(v9);
  v7 = *(v3 + 40);

  v7(sub_1003945E8, v1, ObjectType, v3);

  return v1;
}

void sub_1003832F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v50 = type metadata accessor for NSFastEnumerationIterator();
  v49 = *(v50 - 8);
  __chkstk_darwin();
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v46 - v12;
  if (a1)
  {
    v46[1] = a5;
    v56 = &_swiftEmptySetSingleton;
    v14 = a1;
    v15 = [v14 podcasts];
    v48 = a4;
    v47 = v14;
    if (v15)
    {
      v46[0] = v15;
      NSOrderedSet.makeIterator()();
      NSFastEnumerationIterator.next()();
      while (v54)
      {
        sub_10016B7CC(&v53, v52);
        sub_100009F1C(0, &qword_100573AC0);
        if (swift_dynamicCast())
        {
          v20 = v51;
          v21 = [v51 uuid];
          if (v21)
          {
            v16 = v21;
            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            sub_10038E7E0(v52, v17, v19);
          }

          else
          {
          }
        }

        NSFastEnumerationIterator.next()();
      }

      (*(v49 + 8))(v13, v50);

      a4 = v48;
      v14 = v47;
    }

    v22 = [v14 settings];
    if (v22)
    {
      v23 = v22;
      NSOrderedSet.makeIterator()();
      NSFastEnumerationIterator.next()();
      while (v54)
      {
        sub_10016B7CC(&v53, v52);
        sub_100009F1C(0, &qword_100574028);
        if (swift_dynamicCast())
        {
          v24 = v51;
          v25 = [v51 podcast];
          if (v25 && (v26 = v25, v27 = [v25 uuid], v26, v27))
          {
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            [v24 setNeedsUpdate:1];
            sub_10038E7E0(v52, v28, v30);
          }

          else
          {
          }
        }

        NSFastEnumerationIterator.next()();
      }

      (*(v49 + 8))(v11, v50);

      a4 = v48;
      v14 = v47;
    }

    v31 = [objc_opt_self() defaultCenter];
    v32 = @"MTFeedUpdateDidEndUpdatingAllFeeds";

    NSNotificationCenter.weakObserver(for:using:)();

    v33 = sub_100009F1C(0, &qword_1005729D0);

    v34 = static OS_dispatch_queue.main.getter();
    v54 = v33;
    v55 = &protocol witness table for OS_dispatch_queue;
    *&v53 = v34;
    Promise.always(on:perform:)();

    sub_100004590(&v53);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = *(Strong + 24);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v38 = v56;
      v39 = *(v36 + 32);

      v39(v38, 1, 9, sub_10039358C, a4, ObjectType, v36);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_100168088(&qword_1005796A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    *(inited + 32) = 0x556E6F6974617473;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEB00000000646975;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    sub_10016A444(inited);
    swift_setDeallocating();
    sub_100009104(inited + 32, &qword_100581D00);
    v41 = objc_allocWithZone(NSError);
    v42 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v44 = [v41 initWithDomain:v42 code:42 userInfo:isa];

    v45 = v44;
    Promise.reject(_:)();
  }
}

uint64_t sub_1003839C8()
{
  result = Promise.isResolved.getter();
  if ((result & 1) == 0)
  {
    return Promise.resolve(_:)();
  }

  return result;
}

uint64_t sub_100383A08(uint64_t result)
{
  if (!result)
  {
    result = Promise.isResolved.getter();
    if ((result & 1) == 0)
    {
      return Promise.resolve(_:)();
    }
  }

  return result;
}

void *sub_100383A50(void *result, uint64_t updated, char a3)
{
  if (result)
  {
    v5 = result;
    v6 = MTPodcast.episodeUserFilter.getter();
    if (v7 == -1 || (v8 = v6, v9 = v7, v10 = static EpisodeUserFilter.== infix(_:_:)(), sub_10039354C(v8, v9), (v10 & 1) == 0))
    {
      sub_1001A05DC(updated, a3);
    }

    else
    {
      updated = EpisodeUserFilter.flipUpdateState.getter();
      a3 = v11;
    }

    sub_1001A05DC(updated, a3);
    MTPodcast.episodeUserFilter.setter();
    v12 = [v5 managedObjectContext];
    [v12 saveInCurrentBlock];

    return sub_10019C1BC(updated, a3);
  }

  return result;
}

void sub_100383B50(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    [v4 setShowTypeSetting:a2];
    v3 = [v4 managedObjectContext];
    [v3 saveInCurrentBlock];
  }
}

uint64_t sub_100383BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 playlistForUuid:v6];

  if (v7)
  {
    [v7 setContainerOrder:StationSortOrder.playlistContainerOrder.getter()];
    v8 = 1;
    [v7 setNeedsUpdate:1];
  }

  else
  {
    v8 = 0;
  }

  result = swift_beginAccess();
  *(a4 + 16) = v8;
  return result;
}

void sub_100383C9C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v27) = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v30 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NSFastEnumerationIterator();
  v26 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = String._bridgeToObjectiveC()();
  v28 = a1;
  v31 = [a1 playlistForUuid:v14];

  if (v31)
  {
    v15 = [v31 defaultSettings];
    if (v15)
    {
      v16 = v15;
      v24 = v8;
      v25 = v6;
      [v15 setShowPlayedEpisodes:(v27 & 1) == 0];
      [v31 setNeedsUpdate:1];
      v17 = [v31 settings];
      if (v17)
      {
        v18 = v17;
        v27 = v5;
        NSOrderedSet.makeIterator()();
        NSFastEnumerationIterator.next()();
        while (v36)
        {
          sub_10016B7CC(&aBlock, &v33);
          sub_100009F1C(0, &qword_100574028);
          if (swift_dynamicCast())
          {
            v19 = v32;
            [v32 takeValuesFromDefaultSettings:v16];
          }

          NSFastEnumerationIterator.next()();
        }

        (*(v26 + 8))(v13, v11);

        v5 = v27;
      }

      [v28 saveInCurrentBlock];
      sub_100009F1C(0, &qword_1005729D0);
      v20 = static OS_dispatch_queue.main.getter();
      v37 = sub_1003841C4;
      v38 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v35 = sub_10000F038;
      v36 = &unk_1004F17B0;
      v21 = _Block_copy(&aBlock);
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100394420(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
      sub_100168088(&unk_100575CD0);
      sub_100009FAC(&qword_10057D390, &unk_100575CD0);
      v22 = v30;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();

      _Block_release(v21);
      (*(v25 + 8))(v22, v5);
      (*(v29 + 8))(v10, v24);
    }

    else
    {
      v23 = v31;
    }
  }
}

void sub_1003841C4()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isPlaylistSyncDirty.setter();
}

uint64_t sub_100384220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = v8;
  v12[8] = v11;
  v17[4] = sub_10039422C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10000F038;
  v17[3] = &unk_1004F2228;
  v13 = _Block_copy(v17);
  v14 = v10;

  [v14 performBlockAndWaitWithSave:v13];

  _Block_release(v13);
  swift_beginAccess();
  v15 = *(v8 + 16);

  return v15;
}

uint64_t sub_1003843F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 playlistForUuid:v10];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [a1 episodeForUuid:v12];

  if (!v13)
  {

LABEL_6:
    v17 = 0;
    goto LABEL_9;
  }

  [v11 removeEpisode:v13];
  [v11 setNeedsUpdate:1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + 64);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v15 + 8))(a2, a3, a1, ObjectType, v15);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v17 = 1;
LABEL_9:
  result = swift_beginAccess();
  *(a6 + 16) = v17;
  return result;
}

void sub_10038459C(void *a1)
{
  if (a1)
  {
    v8 = a1;
    MTPodcast.adamId.getter();
    if ((v1 & 1) == 0)
    {
      sub_1000366D8();
      BinaryInteger.description.getter();
      Promise.resolve(_:)();

      return;
    }

    v2 = objc_allocWithZone(NSError);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithDomain:v3 code:42 userInfo:0];

    Promise.reject(_:)();
  }

  else
  {
    v5 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithDomain:v6 code:42 userInfo:0];

    v8 = v7;
    Promise.reject(_:)();
  }
}

void sub_100384728(void *a1)
{
  if (a1)
  {
    v11 = a1;
    v1 = [v11 podcast];
    if (v1)
    {
      v2 = v1;
      MTPodcast.adamId.getter();
      v4 = v3;

      if ((v4 & 1) == 0)
      {
        sub_1000366D8();
        BinaryInteger.description.getter();
        Promise.resolve(_:)();

        return;
      }
    }

    v5 = objc_allocWithZone(NSError);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithDomain:v6 code:42 userInfo:0];

    Promise.reject(_:)();
  }

  else
  {
    v8 = objc_allocWithZone(NSError);
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 initWithDomain:v9 code:42 userInfo:0];

    v11 = v10;
    Promise.reject(_:)();
  }
}

void sub_1003848D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a4;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v18 = a11;
  v12 = type metadata accessor for MetricsData();
  v16 = *(v12 - 8);
  v17 = v12;
  __chkstk_darwin();
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a10)
  {
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  static MetricsTargetType.button.getter();
  if (!a8)
  {
LABEL_3:
  }

LABEL_4:
  type metadata accessor for ClickMetricsEvent();

  static ClickMetricsEvent.makeClickEvent(targetId:actionType:targetType:channelAdamId:pageId:pageType:location:)();

  if (*(v23 + 104))
  {

    dispatch thunk of MetricsEvent.metricsData.getter();
    MetricsController.process(_:)();

    (*(v16 + 8))(v14, v17);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v23 = static OS_os_log.metrics.getter();
    os_log(_:dso:log:_:_:)();

    v15 = v23;
  }
}

uint64_t sub_100384B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a3;
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v29 = a9;
  v12 = *(sub_100168088(&qword_100582838) - 8);
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_100168088(&qword_100582840);
  Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchEpisode(with:completion:)();

  v15 = swift_allocObject();
  swift_weakInit();
  sub_100010430(a11, v14, &qword_100582838);
  v16 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v28;
  v17[2] = v15;
  v17[3] = v18;
  v19 = v30;
  v20 = v31;
  v17[4] = a4;
  v17[5] = v19;
  v21 = v32;
  v22 = v33;
  v17[6] = v20;
  v17[7] = v21;
  v23 = v29;
  v17[8] = v22;
  v17[9] = v23;
  v17[10] = a10;
  sub_100393FDC(v14, v17 + v16);
  v24 = sub_100009F1C(0, &qword_1005729D0);

  v25 = static OS_dispatch_queue.main.getter();
  v34[3] = v24;
  v34[4] = &protocol witness table for OS_dispatch_queue;
  v34[0] = v25;
  Promise.then(perform:orCatchError:on:)();

  return sub_100004590(v34);
}

uint64_t sub_100384DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a3;
  v32 = a7;
  v33 = a8;
  v30 = a5;
  v31 = a6;
  v29 = a9;
  v12 = *(sub_100168088(&qword_100582838) - 8);
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_100168088(&qword_100582840);
  Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  v15 = swift_allocObject();
  swift_weakInit();
  sub_100010430(a11, v14, &qword_100582838);
  v16 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v17 = swift_allocObject();
  v18 = v28;
  v17[2] = v15;
  v17[3] = v18;
  v19 = v30;
  v20 = v31;
  v17[4] = a4;
  v17[5] = v19;
  v21 = v32;
  v22 = v33;
  v17[6] = v20;
  v17[7] = v21;
  v23 = v29;
  v17[8] = v22;
  v17[9] = v23;
  v17[10] = a10;
  sub_100393FDC(v14, v17 + v16);
  v24 = sub_100009F1C(0, &qword_1005729D0);

  v25 = static OS_dispatch_queue.main.getter();
  v34[3] = v24;
  v34[4] = &protocol witness table for OS_dispatch_queue;
  v34[0] = v25;
  Promise.then(perform:orCatchError:on:)();

  return sub_100004590(v34);
}

uint64_t sub_100385044(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a7;
  v28 = a6;
  v14 = type metadata accessor for MetricsData();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v26 = a3;
    v27 = a4;
    v23 = v15;
    v24 = v14;
    if (a10)
    {
      v25 = a9;
    }

    else
    {
      v25 = static MetricsTargetType.button.getter();
    }

    if (!a8)
    {

      v30 = v18;
    }

    type metadata accessor for ClickMetricsEvent();

    static ClickMetricsEvent.makeClickEvent(targetId:actionType:targetType:channelAdamId:pageId:pageType:location:)();

    if (*(v20 + 104))
    {

      dispatch thunk of MetricsEvent.metricsData.getter();
      MetricsController.process(_:)();

      return (*(v23 + 8))(v17, v24);
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v21 = static OS_os_log.metrics.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  return result;
}

void sub_1003852C8()
{
  v0 = static os_log_type_t.error.getter();
  sub_100009F1C(0, &qword_1005748A0);
  log = static OS_os_log.metrics.getter();
  if (os_log_type_enabled(log, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136315138;
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = sub_1000153E0(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&_mh_execute_header, log, v0, "%s", v1, 0xCu);
    sub_100004590(v2);
  }

  else
  {
  }
}

void sub_100385420(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v5 = objc_opt_self();
    v6 = a1 + 40;
    do
    {

      v7 = [v5 sharedInstance];
      v8 = [v7 mainOrPrivateContext];

      sub_1000044A0((v3 + 112), *(v3 + 136));
      dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisode(withUUID:isFromSaving:from:in:)();

      v6 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_100385514(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 importContext];

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = v3;
  v8[4] = sub_100393FC8;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000F038;
  v8[3] = &unk_1004F2188;
  v6 = _Block_copy(v8);

  v7 = v3;

  [v7 performBlock:v6];
  _Block_release(v6);
}

void sub_100385668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      v10 = type metadata accessor for CoreDataFetcher();
      v12 = *(v6 + 16);
      v11 = v6 + 16;
      v30 = v12;
      v31 = v10;
      v13 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v14 = *(v11 + 56);
      v32 = v11;
      v28 = (v11 - 8);
      v29 = v14;
      v15 = _swiftEmptyArrayStorage;
      v12(v8, v13, v5);
      while (1)
      {
        v16 = a3;
        v17 = static CoreDataFetcher.unsafeFindOrCreateStoreEpisode(for:in:)();
        v18 = [v17 uuid];
        if (v18)
        {
          v19 = v18;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          (*v28)(v8, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_100243134(0, *(v15 + 2) + 1, 1, v15);
          }

          v23 = *(v15 + 2);
          v22 = *(v15 + 3);
          if (v23 >= v22 >> 1)
          {
            v15 = sub_100243134((v22 > 1), v23 + 1, 1, v15);
          }

          *(v15 + 2) = v23 + 1;
          v24 = &v15[16 * v23];
          *(v24 + 4) = v34;
          *(v24 + 5) = v21;
        }

        else
        {
          (*v28)(v8, v5);
        }

        v13 += v29;
        --v9;
        a3 = v16;
        if (!v9)
        {
          break;
        }

        v30(v8, v13, v5);
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v25 = *(v15 + 2);
    if (v25)
    {
      v26 = 0;
      v27 = v15 + 40;
      while (v26 < *(v15 + 2))
      {
        ++v26;
        sub_1000044A0((Strong + 112), *(Strong + 136));

        dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisode(withUUID:isFromSaving:from:in:)();

        v27 += 16;
        if (v25 == v26)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

id sub_100385960(uint64_t a1)
{
  result = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:a1];
  if (result)
  {
    v3 = result;
    v4 = [objc_msgSend(*(v1 + 32) "downloadManager")];
    swift_unknownObjectRelease();
    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000044A0((v1 + 112), *(v1 + 136));
      dispatch thunk of PodcastsStateCoordinatorProtocol.cancelDownload(forEpisodeWithUUID:userInitiated:from:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v5 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100400790;
      v7 = [v3 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *(v6 + 56) = &type metadata for String;
      *(v6 + 64) = sub_100022C18();
      *(v6 + 32) = v8;
      *(v6 + 40) = v10;
      os_log(_:dso:log:_:_:)();

      v3 = v5;
    }
  }

  return result;
}

uint64_t sub_100385B48(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v15 = 0;
  v16 = 0;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 mainOrPrivateContext];

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = &v15;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100393FBC;
  *(v6 + 24) = v5;
  v14[4] = sub_10002D950;
  v14[5] = v6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10002D904;
  v14[3] = &unk_1004F2138;
  v7 = _Block_copy(v14);
  v8 = v4;

  [v8 performBlockAndWait:v7];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v16)
  {
    sub_1000044A0((v1 + 112), *(v1 + 136));

    dispatch thunk of PodcastsStateCoordinatorProtocol.removeDownload(forEpisodeWithUUID:from:shouldAllowAutomaticRedownloads:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v9 = static OS_os_log.downloads.getter();
    sub_100168088(&unk_100574670);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100400790;
    v14[0] = v2;
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100022C18();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100385E28(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = [objc_opt_self() predicateForEpisodeStoreTrackId:a1];
  v6 = [a2 objectInEntity:kMTEpisodeEntityName predicate:v5];
  if (!v6)
  {
LABEL_7:

    goto LABEL_8;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 uuid];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_8:
  v11 = 0;
  v13 = 0;
LABEL_9:
  *a3 = v11;
  a3[1] = v13;
}

void sub_100385F3C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 episodeForUuid:v6];

  if (v7)
  {
    v8 = [v7 isBookmarked];

    *a4 = v8;
  }
}

uint64_t sub_100385FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for BookmarkEpisodeIntent();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100386084, 0, 0);
}

uint64_t sub_100386084()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = v0;
    sub_1001A77CC(0, v3, 0);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 24 * v4 + 48;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = _swiftEmptyArrayStorage[3];

      if (v4 >= v9 >> 1)
      {
        sub_1001A77CC((v9 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      v10 = _swiftEmptyArrayStorage + v5;
      *(v10 - 2) = v8;
      *(v10 - 1) = v7;
      *v10 = 2;
      v5 += 24;
      v6 += 2;
      ++v4;
      --v3;
    }

    while (v3);
    v1 = v20;
  }

  v11 = v1[2];
  BookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v12 = v11[35];
  v13 = v11[36];
  sub_1000044A0(v11 + 32, v12);
  v14 = v11[31];
  v15 = swift_task_alloc();
  v1[9] = v15;
  v16 = sub_100394420(&unk_1005827B0, &type metadata accessor for BookmarkEpisodeIntent);
  *v15 = v1;
  v15[1] = sub_100386264;
  v17 = v1[8];
  v18 = v1[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v17, v14, v18, v16, v12, v13);
}

uint64_t sub_100386264()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100394554;
  }

  else
  {
    v2 = sub_100386378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386378()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  sub_100388BBC(1, v3, v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100386428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 144) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for BookmarkEpisodeIntent();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  EpisodeOfferContentIDsIntent = type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntent();
  *(v8 + 80) = EpisodeOfferContentIDsIntent;
  *(v8 + 88) = *(EpisodeOfferContentIDsIntent - 8);
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_10038654C, 0, 0);
}

uint64_t sub_10038654C()
{
  v1 = v0[4];

  FindOrCreateEpisodeOfferContentIDsIntent.init(episodeOffers:)();
  v2 = v1[35];
  v3 = v1[36];
  sub_1000044A0(v1 + 32, v2);
  v4 = v1[31];
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = sub_100394420(&qword_1005827A8, &type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntent);
  *v5 = v0;
  v5[1] = sub_100386670;
  v7 = v0[12];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v7, v4, v8, v6, v2, v3);
}

uint64_t sub_100386670()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100394548;
  }

  else
  {
    v2 = sub_100386784;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386784()
{
  v1 = v0[4];
  BookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v2 = v1[35];
  v3 = v1[36];
  sub_1000044A0(v1 + 32, v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_100394420(&unk_1005827B0, &type metadata accessor for BookmarkEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_100386890;
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v7, v6, v8, v5, v2, v3);
}

uint64_t sub_100386890()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100394544;
  }

  else
  {
    v2 = sub_1003869A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003869A4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 144);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_100388BBC(1, v6, v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100386AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for UnbookmarkEpisodeIntent();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100386B78, 0, 0);
}

uint64_t sub_100386B78()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  if (v3)
  {
    v20 = v0;
    sub_1001A77CC(0, v3, 0);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 24 * v4 + 48;
    v6 = (v2 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = _swiftEmptyArrayStorage[3];

      if (v4 >= v9 >> 1)
      {
        sub_1001A77CC((v9 > 1), v4 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      v10 = _swiftEmptyArrayStorage + v5;
      *(v10 - 2) = v8;
      *(v10 - 1) = v7;
      *v10 = 2;
      v5 += 24;
      v6 += 2;
      ++v4;
      --v3;
    }

    while (v3);
    v1 = v20;
  }

  v11 = v1[2];
  UnbookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v12 = v11[35];
  v13 = v11[36];
  sub_1000044A0(v11 + 32, v12);
  v14 = v11[31];
  v15 = swift_task_alloc();
  v1[9] = v15;
  v16 = sub_100394420(&qword_100582830, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v15 = v1;
  v15[1] = sub_100386D58;
  v17 = v1[8];
  v18 = v1[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v16, v17, v14, v18, v16, v12, v13);
}

uint64_t sub_100386D58()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100386F1C;
  }

  else
  {
    v2 = sub_100386E6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386E6C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  sub_100388BBC(0, v3, v2, v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100386F1C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100386F9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v12 = type metadata accessor for Logger();
  v33 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v11;
    v18 = v17;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v18 = 136315138;
    type metadata accessor for EpisodeOffer();
    v19 = Array.description.getter();
    v31 = a2;
    v21 = sub_1000153E0(v19, v20, &v34);
    v29 = v12;
    v22 = a1;
    v23 = v5;
    v24 = a3;
    v25 = v21;
    LOBYTE(a2) = v31;

    *(v18 + 4) = v25;
    a3 = v24;
    v5 = v23;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "LibraryActionController.removeEpisodesFromBookmarks() - for episode offers %s", v18, 0xCu);
    sub_100004590(v30);

    v11 = v32;

    (*(v33 + 8))(v14, v29);
  }

  else
  {

    (*(v33 + 8))(v14, v12);
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = a1;
  *(v27 + 40) = v5;
  *(v27 + 48) = a2 & 1;
  *(v27 + 56) = a3;
  *(v27 + 64) = a4;

  sub_100013CB4(a3);
  sub_10023EE80(0, 0, v11, &unk_100410468, v27);
}

uint64_t sub_1003872C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 144) = a6;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for UnbookmarkEpisodeIntent();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  EpisodeOfferContentIDsIntent = type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntent();
  *(v8 + 80) = EpisodeOfferContentIDsIntent;
  *(v8 + 88) = *(EpisodeOfferContentIDsIntent - 8);
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1003873E4, 0, 0);
}

uint64_t sub_1003873E4()
{
  v1 = v0[4];

  FindOrCreateEpisodeOfferContentIDsIntent.init(episodeOffers:)();
  v2 = v1[35];
  v3 = v1[36];
  sub_1000044A0(v1 + 32, v2);
  v4 = v1[31];
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = sub_100394420(&qword_1005827A8, &type metadata accessor for FindOrCreateEpisodeOfferContentIDsIntent);
  *v5 = v0;
  v5[1] = sub_100387508;
  v7 = v0[12];
  v8 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v7, v4, v8, v6, v2, v3);
}

uint64_t sub_100387508()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1003879C4;
  }

  else
  {
    v2 = sub_10038761C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038761C()
{
  v1 = v0[4];
  UnbookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v2 = v1[35];
  v3 = v1[36];
  sub_1000044A0(v1 + 32, v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = sub_100394420(&qword_100582830, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_100387728;
  v6 = v0[13];
  v7 = v0[9];
  v8 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v7, v6, v8, v5, v2, v3);
}

uint64_t sub_100387728()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100387918;
  }

  else
  {
    v2 = sub_10038783C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038783C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 144);
  (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  sub_100388BBC(0, v6, v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100387918()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003879C4()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100387A7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v39 = a5;
  v40 = a6;
  v10 = v8;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v16 = &v35 - v15;
  v17 = type metadata accessor for Logger();
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin();
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v16;
    v23 = v22;
    v24 = swift_slowAlloc();
    v38 = a8;
    v36 = v24;
    v44 = v24;
    *v23 = 136315138;
    v25 = Array.description.getter();
    v39 = a4;
    v27 = a2;
    v28 = a1;
    v29 = v10;
    v30 = a3;
    v31 = sub_1000153E0(v25, v26, &v44);
    a4 = v39;

    *(v23 + 4) = v31;
    a3 = v30;
    v10 = v29;
    a1 = v28;
    a2 = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, v40, v23, 0xCu);
    sub_100004590(v36);
    a8 = v38;

    v16 = v37;
  }

  (*(v41 + 8))(v19, v42);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v10;
  *(v33 + 40) = a1;
  *(v33 + 48) = a2 & 1;
  *(v33 + 56) = a3;
  *(v33 + 64) = a4;

  sub_100013CB4(a3);
  sub_10023EE80(0, 0, v16, a8, v33);
}

uint64_t sub_100387D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for UnbookmarkEpisodeIntent();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100387E38, 0, 0);
}

uint64_t sub_100387E38()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1001A77CC(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      v3 += 8;
      v4 = AdamID.init(rawValue:)();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        v8 = v4;
        sub_1001A77CC((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[3 * v6];
      v7[4] = v4;
      v7[5] = 0;
      *(v7 + 48) = 0;
      --v2;
    }

    while (v2);
  }

  v9 = v0[2];
  UnbookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v10 = v9[35];
  v11 = v9[36];
  sub_1000044A0(v9 + 32, v10);
  v12 = v9[31];
  v13 = swift_task_alloc();
  v0[9] = v13;
  v14 = sub_100394420(&qword_100582830, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v13 = v0;
  v13[1] = sub_100387FF8;
  v15 = v0[8];
  v16 = v0[6];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v14, v15, v12, v16, v14, v10, v11);
}

uint64_t sub_100387FF8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100394554;
  }

  else
  {
    v2 = sub_1003945F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038810C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v8 = v23 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[0] = a3;
    v16 = a4;
    v17 = v15;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000153E0(v24, a2, &v25);
    _os_log_impl(&_mh_execute_header, v13, v14, "LibraryActionController.removeEpisodesFromBookmarks() - for podcast UUID %s", v17, 0xCu);
    sub_100004590(v18);

    a4 = v16;
    a3 = v23[0];
  }

  (*(v10 + 8))(v12, v9);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v21 = v23[1];
  v20[4] = v24;
  v20[5] = a2;
  v20[6] = v21;
  v20[7] = a3;
  v20[8] = a4;

  sub_100013CB4(a3);
  sub_10023EE80(0, 0, v8, &unk_100410448, v20);
}

uint64_t sub_1003883CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for UnbookmarkEpisodeIntent();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  ShowEpisodesIntent = type metadata accessor for FindShowEpisodesIntent();
  v8[11] = ShowEpisodesIntent;
  v8[12] = *(ShowEpisodesIntent - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1003884F0, 0, 0);
}

uint64_t sub_1003884F0()
{
  v1 = v0[5];
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predicateForBookmarkedEpisodesOnPodcastUuid:v3];

  FindShowEpisodesIntent.init(showIdentifier:predicate:limit:sortDescriptors:)();
  v5 = v1[35];
  v6 = v1[36];
  sub_1000044A0(v1 + 32, v5);
  v7 = v1[31];
  v0[14] = v7;
  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = sub_100394420(&qword_100582828, &type metadata accessor for FindShowEpisodesIntent);
  *v8 = v0;
  v8[1] = sub_10038867C;
  v10 = v0[13];
  v11 = v0[11];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 2, v10, v7, v11, v9, v5, v6);
}

uint64_t sub_10038867C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100388B34;
  }

  else
  {
    v2 = sub_100388790;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100388790()
{
  v1 = v0[5];
  UnbookmarkEpisodeIntent.init(episodeIdentifiers:)();
  v2 = v1[35];
  v3 = v1[36];
  sub_1000044A0(v1 + 32, v2);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_100394420(&qword_100582830, &type metadata accessor for UnbookmarkEpisodeIntent);
  *v4 = v0;
  v4[1] = sub_10038889C;
  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[8];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v5, v7, v6, v8, v5, v2, v3);
}

uint64_t sub_10038889C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100388A88;
  }

  else
  {
    v2 = sub_1003889B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003889B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_100388BBC(0, 0, v4, v5);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100388A88()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100388B34()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100388BBC(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin();
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100009F1C(0, &qword_1005729D0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 17) = a1;
  *(v15 + 24) = v14;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  aBlock[4] = sub_100393BC0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F2020;
  v16 = _Block_copy(aBlock);
  sub_100013CB4(a3);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100394420(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v20);
}

void sub_100388EFC(char a1, char a2, uint64_t a3, void (*a4)(uint64_t, __n128))
{
  v7 = type metadata accessor for HUDViewController.HUDType();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_8;
    }

    v12 = &enum case for HUDViewController.HUDType.addedToBookmarks(_:);
  }

  else
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_8;
    }

    v12 = &enum case for HUDViewController.HUDType.removedFromBookmarks(_:);
  }

  (*(v8 + 104))(v11, *v12, v7);
  v13 = objc_allocWithZone(type metadata accessor for HUDViewController());
  v14 = HUDViewController.init(type:)();
  dispatch thunk of HUDViewController.present()();

LABEL_8:
  if (a4)
  {
    a4(1, v9);
  }
}

void sub_100389068(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    [v8 setFetchLimit:a1];
  }

  [v9 setPredicate:a3];
  sub_100009F1C(0, &qword_1005742A0);
  v10 = NSManagedObjectContext.count<A>(for:)();

  *a4 = v10;
}

void sub_100389150(void *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a1;
  v9[4] = sub_100393BB4;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F038;
  v9[3] = &unk_1004F1FD0;
  v6 = _Block_copy(v9);
  v7 = v3;
  v8 = a1;

  [v7 performBlock:v6];
  _Block_release(v6);
}

void sub_1003892A0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = kMTEpisodeEntityName;
    v8 = _swiftEmptyArrayStorage;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = [a2 objectsInEntity:v7 predicate:a3 sortDescriptors:isa];

    if (v10)
    {
      sub_100009F1C(0, &qword_1005739D0);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = sub_10037F7F8(v11);

      if (v12)
      {
        v8 = v12;
      }
    }

    if (v8 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_7:
        if (v13 < 1)
        {
          __break(1u);
          return;
        }

        v14 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v15 = *(v8 + 8 * v14 + 32);
          }

          v16 = v15;
          ++v14;
          sub_1000044A0((v6 + 112), *(v6 + 136));
          dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeRemoveFromRecoveredEpisodesIfNeeded(episode:)();
        }

        while (v13 != v14);
      }
    }

    [a2 saveInCurrentBlock];
  }
}

void sub_100389488(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v4 setPredicate:a1];
  sub_100009F1C(0, &qword_1005742A0);
  v5 = NSManagedObjectContext.count<A>(for:)();

  *a2 = v5;
}

void sub_100389544(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v25._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000034;
  v5._object = 0x8000000100472A50;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  v7 = [v3 mainBundle];
  v26._object = 0xE000000000000000;
  v8._object = 0x8000000100472A90;
  v8._countAndFlagsBits = 0xD00000000000001BLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v26);

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:0];

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = 0;
  v13[4] = a2;

  v14 = a2;
  v15 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10039455C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004F1F80;
  v16 = _Block_copy(aBlock);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v11 addAction:v18];
  v19 = [v3 mainBundle];
  v27._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x6C65636E6143;
  v20._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v27);

  v22 = String._bridgeToObjectiveC()();

  v23 = [v17 actionWithTitle:v22 style:1 handler:0];

  [v11 addAction:v23];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
}

void sub_1003898B0(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v25._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000036;
  v5._object = 0x80000001004729F0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  v7 = [v3 mainBundle];
  v26._object = 0xE000000000000000;
  v8._object = 0x8000000100472A30;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v26);

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v10 message:0 preferredStyle:0];

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = 2;
  v13[4] = a2;

  v14 = a2;
  v15 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100393B68;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E8240;
  aBlock[3] = &unk_1004F1F30;
  v16 = _Block_copy(aBlock);

  v17 = objc_opt_self();
  v18 = [v17 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v11 addAction:v18];
  v19 = [v3 mainBundle];
  v27._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0x6C65636E6143;
  v20._object = 0xE600000000000000;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v27);

  v22 = String._bridgeToObjectiveC()();

  v23 = [v17 actionWithTitle:v22 style:1 handler:0];

  [v11 addAction:v23];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
}

uint64_t sub_100389C20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10038A270(a3, a4);
  }

  return result;
}

uint64_t sub_100389C94(void *a1)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v16._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v4._object = 0x8000000100472A50;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v6 = [v2 mainBundle];
  v17._object = 0xE000000000000000;
  v7._object = 0x8000000100472A90;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = a1;
  v12 = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v12)
  {
    Link.Presentation.init(rawValue:)();
  }

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for ClosureAction();
  swift_allocObject();
  v13 = ClosureAction.init(title:presentationStyle:actionMetrics:closure:)();

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;
  type metadata accessor for SheetAction();
  swift_allocObject();
  return SheetAction.init(title:sheetTitle:message:actions:cancellable:)();
}

uint64_t sub_100389F48(void *a1)
{
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v16._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000036;
  v4._object = 0x80000001004729F0;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v6 = [v2 mainBundle];
  v17._object = 0xE000000000000000;
  v7._object = 0x8000000100472A30;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v17);

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = a1;
  v12 = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v12)
  {
    Link.Presentation.init(rawValue:)();
  }

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for ClosureAction();
  swift_allocObject();
  v13 = ClosureAction.init(title:presentationStyle:actionMetrics:closure:)();

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;
  type metadata accessor for SheetAction();
  swift_allocObject();
  return SheetAction.init(title:sheetTitle:message:actions:cancellable:)();
}

uint64_t sub_10038A1FC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10038A270(a3, a2);
  }

  return result;
}

void sub_10038A270(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() predicateForVisuallyPlayed:a1 != 0];
  v7 = [a2 AND:v6];

  v8 = *(v3 + 296);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = dispatch thunk of PlaybackController.nowPlayingItem.getter();

  if (!v9)
  {
    v8 = 0;
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = MPModelObject.uuid.getter();
  v11 = v10;

LABEL_6:
  v12 = [objc_opt_self() sharedInstance];
  v13 = [v12 privateQueueContext];

  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v8;
  v14[6] = v11;
  v14[7] = v3;
  v18[4] = sub_100393A44;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10000F038;
  v18[3] = &unk_1004F1E68;
  v15 = _Block_copy(v18);
  v16 = v7;
  v17 = v13;

  [v17 performBlock:v15];
  _Block_release(v15);
}

void sub_10038A45C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a4;
  v40 = a3;
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = type metadata accessor for NSFastEnumerationIterator();
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v15 setPredicate:a1];
  [v15 setReturnsObjectsAsFaults:0];
  [v15 setFetchBatchSize:50];
  sub_100009F1C(0, &qword_100573660);
  v38 = a2;
  NSManagedObjectContext.fetch<A>(_:)();
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (v44)
  {
    isa = v16.super.isa;
    v35 = v15;
    v32 = v11;
    v33 = a6;
    v17 = 0;
    v18 = 0;
    do
    {
      sub_10016B7CC(&v43, &v42);
      swift_dynamicCast();
      v19 = v41;
      v20 = [objc_opt_self() sharedInstance];
      if (!v20)
      {
        goto LABEL_28;
      }

      v21 = v20;
      [v20 setPlayState:v40 fromContextActions:1 manually:1 forUserActionOnEpisode:v19 saveChanges:0];

      v22 = [v19 uuid];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (a5)
        {
          if (v24 == v39 && v26 == a5)
          {

            v18 = 1;
            v27 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_27;
            }
          }

          else
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v18 |= v28;
            v27 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
LABEL_27:
              __break(1u);
LABEL_28:
              __break(1u);
              return;
            }
          }
        }

        else
        {

          v27 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        v18 |= a5 == 0;
        v27 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_27;
        }
      }

      if (__ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v27, 1) <= 0x51EB851EB851EB8uLL)
      {
        [v38 saveInCurrentBlock];
      }

      NSFastEnumerationIterator.next()();
      ++v17;
    }

    while (v44);
    (*(v36 + 8))(v14, v37);
    [v38 saveInCurrentBlock];
    v16.super.isa = isa;
    v15 = v35;
    if ((v18 & 1) != 0 && !v40)
    {
      v29 = type metadata accessor for TaskPriority();
      v30 = v32;
      (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v33;

      sub_10023F140(0, 0, v30, &unk_100410430, v31);

      return;
    }
  }

  else
  {
    (*(v36 + 8))(v14, v37);
    [v38 saveInCurrentBlock];
  }
}

uint64_t sub_10038A938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10038A958, 0, 0);
}

uint64_t sub_10038A958()
{
  v1 = *(*(v0 + 24) + 296);
  *(v0 + 32) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_10038AA40;

    return PlaybackController.pause()();
  }

  else
  {
    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_10038AA40()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10038AB88;
  }

  else
  {

    v2 = sub_10038AB5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038AB88()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10038ABEC(void *a1, char a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 privateQueueContext];

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v2;
  *(v7 + 40) = a2;
  v11[4] = sub_100393A28;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004F1DC8;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v6;

  [v10 performBlock:v8];
  _Block_release(v8);
}

uint64_t sub_10038AD2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v6 - 8);
  __chkstk_darwin();
  v39 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  __chkstk_darwin();
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NSFastEnumerationIterator();
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
  [v11 setPredicate:a1];
  [v11 setReturnsObjectsAsFaults:0];
  sub_100009F1C(0, &qword_100573660);
  v36 = v11;
  NSManagedObjectContext.fetch<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v34 = isa;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  for (i = _swiftEmptyArrayStorage; v46; a3 = v30)
  {
    while (1)
    {
      sub_10016B7CC(&aBlock, &v43);
      swift_dynamicCast();
      v14 = v42;
      v15 = [v42 uuid];
      if (v15)
      {
        break;
      }

      NSFastEnumerationIterator.next()();
      if (!v46)
      {
        goto LABEL_10;
      }
    }

    v30 = a3;
    v31 = v6;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_100243134(0, *(i + 2) + 1, 1, i);
    }

    v20 = *(i + 2);
    v19 = *(i + 3);
    if (v20 >= v19 >> 1)
    {
      i = sub_100243134((v19 > 1), v20 + 1, 1, i);
    }

    *(i + 2) = v20 + 1;
    v21 = &i[16 * v20];
    v22 = v29;
    *(v21 + 4) = v17;
    *(v21 + 5) = v22;
    NSFastEnumerationIterator.next()();
    v6 = v31;
  }

LABEL_10:
  (*(v32 + 8))(v10, v33);
  sub_100009F1C(0, &qword_1005729D0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = i;
  *(v24 + 24) = a3;
  *(v24 + 32) = v35 & 1;
  v47 = sub_100393A38;
  v48 = v24;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v45 = sub_10000F038;
  v46 = &unk_1004F1E18;
  v25 = _Block_copy(&aBlock);

  v26 = v37;
  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_100394420(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  v27 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v41 + 8))(v27, v6);
  return (*(v38 + 8))(v26, v40);
}

uint64_t sub_10038B31C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = result + 40;
    do
    {
      sub_1000044A0((a2 + 112), *(a2 + 136));

      dispatch thunk of PodcastsStateCoordinatorProtocol.removeDownload(forEpisodeWithUUID:from:shouldAllowAutomaticRedownloads:)();

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_10038B3C0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 && (v3 = [a1 title]) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_10038B428(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v15 = 2;
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = &v15;
  v7[5] = v2;
  v7[6] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100393A18;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10002D950;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F1D78;
  v9 = _Block_copy(aBlock);
  v10 = v6;

  [v10 performBlockAndWait:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13 & 1;
  }

  return result;
}

void sub_10038B5EC(void *a1, uint64_t a2, BOOL *a3, uint64_t a4, uint64_t a5)
{
  v7 = [a1 podcastForStoreId:a2];
  if (v7)
  {
    v14 = v7;
    v8 = [v7 uuid];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_10039301C(v10, v12, a5);

      *a3 = v13;
    }

    else
    {
    }
  }
}

id sub_10038B6CC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 episodeForStoreTrackID:{a2, v6}];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 podcast];
    if (v11)
    {
      v12 = v11;
      Date.init()();
      Date.timeIntervalSinceReferenceDate.getter();
      v14 = v13;
      (*(v5 + 8))(v8, v4);
      [v12 setLastDismissedEpisodeUpsellBannerDate:v14];
    }

    else
    {
    }
  }

  return [a1 saveInCurrentBlock];
}

uint64_t sub_10038B820(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v8 = type metadata accessor for Logger();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v27 - v11;
  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 predicateForDownloadedEpisodesOnPodcastUuid:v14];

  sub_10038ABEC(v15, a4);
  v16 = String._bridgeToObjectiveC()();
  v17 = [v13 predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:v16];

  sub_100389150(v17);
  if (a3)
  {
    static Logger.podcastsStatesCoordination.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1000153E0(a1, a2, &v30);
      _os_log_impl(&_mh_execute_header, v18, v19, "removeShowFromLibrary and all bookmarks for podcasts %s", v20, 0xCu);
      sub_100004590(v21);
    }

    (*(v28 + 8))(v12, v29);
    return sub_10038810C(a1, a2, 0, 0);
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1000153E0(a1, a2, &v30);
      _os_log_impl(&_mh_execute_header, v23, v24, "removeShowFromLibrary wihtout removing bookmarks for podcasts %s", v25, 0xCu);
      sub_100004590(v26);
    }

    return (*(v28 + 8))(v10, v29);
  }
}

uint64_t sub_10038BB94()
{
  type metadata accessor for StoreReviewPromptController();
  static StoreReviewPromptController.shared.getter();
  dispatch thunk of StoreReviewPromptController.didFollowShow()();
}

uint64_t sub_10038BC04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  v7 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v8 = a2;
  if (v7)
  {
    v9 = a1 + 40;
    do
    {

      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 episodeForUuid:v10];

      if (v11)
      {
        sub_1000044A0((a3 + 112), *(a3 + 136));
        dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeMark(_:as:in:from:)();
      }

      v9 += 16;
      --v7;
    }

    while (v7);
  }

  v12 = [v8 saveInCurrentBlock];
  if (a5)
  {
    a5(v12);
  }
}

void sub_10038BD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 mainOrPrivateContext];

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v16;
  v17[4] = v10;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  v20[4] = a6;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10000F038;
  v20[3] = a7;
  v18 = _Block_copy(v20);

  v19 = v16;

  sub_100013CB4(a3);

  [v19 performBlock:v18];
  _Block_release(v18);
}

id sub_10038BEDC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id))
{
  v6 = *(a1 + 16);
  if (v6)
  {
    type metadata accessor for CoreDataFetcher();
    v9 = *(type metadata accessor for EpisodeOffer() - 8);
    v10 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    do
    {
      v12 = static CoreDataFetcher.unsafeFindOrCreateStoreEpisode(for:in:)();
      sub_1000044A0((a3 + 112), *(a3 + 136));
      dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeMark(_:as:in:from:)();

      v10 += v11;
      --v6;
    }

    while (v6);
  }

  result = [a2 saveInCurrentBlock];
  if (a5)
  {
    return a5(result);
  }

  return result;
}

void sub_10038C018(void *a1, uint64_t a2)
{
  v23 = type metadata accessor for Date();
  v4 = *(v23 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = kMTEpisodeEntityName;
  v8 = _swiftEmptyArrayStorage;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v10 = [a1 objectsInEntity:v7 predicate:a2 sortDescriptors:isa];

  if (v10)
  {
    sub_100009F1C(0, &qword_1005739D0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = sub_10037F7F8(v11);

    if (v12)
    {
      v8 = v12;
    }
  }

  if (!(v8 >> 62))
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_16:

LABEL_17:
    [a1 saveInCurrentBlock];
    return;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v13 >= 1)
  {
    v22 = a1;
    v14 = 0;
    v15 = (v4 + 8);
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v8 + 8 * v14 + 32);
      }

      v17 = v16;
      [v16 setListenNowEpisode:{0, v22}];
      v18 = [v17 podcast];
      if (v18)
      {
        v19 = v18;
        Date.init()();
        Date.timeIntervalSinceReferenceDate.getter();
        v21 = v20;
        (*v15)(v6, v23);
        [v19 setLastRemovedFromUpNextDate:v21];

        v17 = v19;
      }

      ++v14;
    }

    while (v13 != v14);

    a1 = v22;
    goto LABEL_17;
  }

  __break(1u);
}

void sub_10038C2BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a1;
  v11[4] = sub_1003938DC;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002355D0;
  v11[3] = &unk_1004F1C60;
  v9 = _Block_copy(v11);

  v10 = a1;

  [v6 reportAConcernURLWithCompletion:v9];
  _Block_release(v9);
}

uint64_t sub_10038C400(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v53 = a1;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v9 = &v43 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100582810);
  __chkstk_darwin();
  v15 = (&v43 - v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1003938E8();
    v21 = swift_allocError();
    *v22 = 0;
    *v15 = v21;
    swift_storeEnumTagMultiPayload();
    a3(v15);
    return sub_100009104(v15, &qword_100582810);
  }

  v17 = Strong;
  v51 = a3;
  v18 = [a5 title];
  if (v18)
  {
    v19 = v18;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v20;
  }

  else
  {
    v47 = 0;
    v46 = 0;
  }

  v23 = MPModelObject.adamID.getter();
  v50 = a4;
  if (v24)
  {
    v45 = 0;
    v44 = 0;
  }

  else
  {
    *&v60[0] = v23;
    sub_1000366D8();
    v45 = BinaryInteger.description.getter();
    v44 = v25;
  }

  v26 = [a5 podcast];
  v49 = v13;
  v48 = v11;
  if (v26 && (v27 = v26, v28 = [v26 title], v27, v28))
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a5 podcast];
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = v32;
  v34 = MPModelObject.adamID.getter();
  v36 = v35;

  if (v36)
  {
    v32 = 0;
LABEL_16:
    v37 = 0;
    goto LABEL_18;
  }

  *&v60[0] = v34;
  sub_1000366D8();
  v32 = BinaryInteger.description.getter();
LABEL_18:
  *&v54 = v47;
  *(&v54 + 1) = v46;
  *&v55 = v45;
  *(&v55 + 1) = v44;
  *&v56 = v29;
  *(&v56 + 1) = v31;
  *&v57 = v32;
  *(&v57 + 1) = v37;
  v58 = 0u;
  memset(v59, 0, 24);
  v59[24] = 1;
  v60[0] = v54;
  v60[1] = v55;
  *&v61[9] = *&v59[9];
  v60[4] = 0u;
  *v61 = 0u;
  v60[2] = v56;
  v60[3] = v57;
  sub_1000044A0((v17 + 152), *(v17 + 176));
  sub_1002362E0(v60, v53, v9);
  sub_10039393C(&v54);
  v38 = v48;
  if ((*(v48 + 48))(v9, 1, v10) == 1)
  {
    sub_100009104(v9, &qword_100574040);
    sub_1003938E8();
    v39 = swift_allocError();
    *v40 = 1;
    *v15 = v39;
    swift_storeEnumTagMultiPayload();
    v51(v15);

    return sub_100009104(v15, &qword_100582810);
  }

  v42 = v52;
  (*(v38 + 32))(v52, v9, v10);
  (*(v38 + 16))(v15, v42, v10);
  swift_storeEnumTagMultiPayload();
  v51(v15);

  sub_100009104(v15, &qword_100582810);
  return (*(v38 + 8))(v42, v10);
}

uint64_t sub_10038C9B0()
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = *v0;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_100217CC4(0, 0, v2, &unk_100410420, v5);
}

uint64_t sub_10038CABC(uint64_t a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_10019BB44(a1, v8);
  type metadata accessor for MTEpisodePubDateLimit(0);
  sub_100394420(&unk_1005827F0, type metadata accessor for MTEpisodePubDateLimit);
  v6 = NSUserDefaults.queryPublisher<A>(_:)();

  return v6;
}

uint64_t sub_10038CBC4(uint64_t a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_10019BB44(a1, v8);
  sub_100393754();
  v6 = NSUserDefaults.queryPublisher<A>(_:)();

  return v6;
}

uint64_t sub_10038CC94(uint64_t a1)
{
  v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v3 = swift_allocObject();
  v4 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a1 + 64);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  sub_10019BB44(a1, v8);
  v6 = NSUserDefaults.queryPublisher<A>(_:)();

  return v6;
}

uint64_t sub_10038CD8C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_100168088(&qword_1005827C0);
  v6 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v5;

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  return v6;
}

uint64_t sub_10038CE58(uint64_t a1, uint64_t a2, char a3)
{
  sub_100390F04();
  sub_100168088(&qword_1005827C0);
  v6 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  return v6;
}

uint64_t sub_10038D054()
{
  sub_100168088(&qword_1005827C0);
  v0 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  return v0;
}

uint64_t sub_10038D160(uint64_t a1, uint64_t a2, char a3)
{
  sub_100168088(&unk_1005827C8);
  v4 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = a3;

  static CoreDataFetcher.fetchPodcast(with:completion:)();

  return v4;
}

uint64_t sub_10038D280()
{
  sub_100168088(&unk_1005827C8);
  v0 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;

  static CoreDataFetcher.fetchPodcast(adamId:feedUrl:completion:)();

  return v0;
}

uint64_t sub_10038D390(uint64_t a1, uint64_t a2)
{
  sub_100168088(&qword_1005827C0);
  v4 = Promise.__allocating_init()();
  type metadata accessor for CoreDataFetcher();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;

  static CoreDataFetcher.fetchStation(with:completion:)();

  return v4;
}

uint64_t sub_10038D494()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = NSUserDefaults.showListSortType.getter();

  return v1;
}

void sub_10038D4E4()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  NSUserDefaults.showListSortType.setter();
}

uint64_t sub_10038D554(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for CoreDataFetcher();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  sub_1001A05DC(a3, a4);
  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

uint64_t sub_10038D604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CoreDataFetcher();
  *(swift_allocObject() + 16) = a3;
  static CoreDataFetcher.fetchPodcast(with:completion:)();
}

void sub_10038D6AC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [objc_opt_self() sharedInstance];
  if (v5)
  {
    v6 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v6 *a4];
  }

  else
  {
    __break(1u);
  }
}

id sub_10038D760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v8 = result;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 *a6];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10038D8F8(uint64_t a1)
{
  *(*v1 + 104) = a1;
}

void sub_10038D944()
{
  v1 = *v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  sub_1000044A0((v1 + 112), *(v1 + 136));
  dispatch thunk of PodcastsStateCoordinatorProtocol.downloadEpisode(withUUID:isFromSaving:from:in:)();
}

void sub_10038DB40()
{
  v1 = [*(*v0 + 32) downloadManager];
  v2 = String._bridgeToObjectiveC()();
  [v1 resumeOrPauseEpisodeDownloadWithUuid:v2];
  swift_unknownObjectRelease();
}

uint64_t sub_10038DC64(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  ObjectType = swift_getObjectType();
  return (*(v5 + 8))(a1, a2, ObjectType, v5);
}

uint64_t sub_10038DCC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *v4;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v11;
  *(v13 + 40) = a1;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;

  sub_100013CB4(a3);
  sub_10023EE80(0, 0, v10, &unk_1004103E0, v13);
}

uint64_t sub_10038DE10(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = *v4;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = v11;
  *(v13 + 48) = a2;
  *(v13 + 56) = a3;
  *(v13 + 64) = a4;

  sub_100013CB4(a3);
  sub_10023EE80(0, 0, v10, &unk_1004103D0, v13);
}

void sub_10038DFE8()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:v1];

  sub_100389150(v2);
}

void sub_10038E080()
{
  v0 = objc_opt_self();

  sub_10039B51C(v1);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v3 = [v0 predicateForEpisodeUuids:isa];

  sub_100389150(v3);
}

void sub_10038E234(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 predicateForDownloadedEpisodesOnPodcastUuid:v5];

  sub_10038ABEC(v6, a3);
}

void sub_10038E2DC()
{
  v0 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:0];
  sub_10038ABEC(v0, 0);
}

uint64_t sub_10038E380()
{
  v0 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:0];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v4;
}

uint64_t sub_10038E558()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 predicateForPodcastUUID:v1];

  type metadata accessor for CoreDataFetcher();
  static CoreDataFetcher.performAndWaitOnPodcast<A>(with:block:)();

  return v4;
}

void sub_10038E6A4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  type metadata accessor for HUDViewController.HUDType();
  v4 = __chkstk_darwin();
  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *a3, v4);
  v7 = objc_allocWithZone(type metadata accessor for HUDViewController());
  v8 = HUDViewController.init(type:)();
  dispatch thunk of HUDViewController.present()();
}

void sub_10038E7A8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_10038E7E0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10038F9DC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10038E930(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for MTCategory();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100291F44(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_10038F244(v20 + 1, &qword_10057B9E8);
    }

    v18 = v8;
    sub_100294074();

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for MTCategory();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1000142A4(v18, v13, isUniquelyReferenced_nonNull_native, &qword_10057B9E8, &unk_100408E90, &type metadata accessor for MTCategory);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10038EB7C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShowInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100394420(&qword_10057E770, &type metadata accessor for ShowInfo);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100394420(&unk_100581820, &type metadata accessor for ShowInfo);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10038FB5C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10038EE94(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  v8 = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10038FE00(a2, v10, isUniquelyReferenced_nonNull_native, a3);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10038EF94()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_1005817A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10038F244(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100168088(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_10038F464()
{
  v1 = v0;
  v35 = type metadata accessor for ShowInfo();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100168088(&unk_100582860);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100394420(&qword_10057E770, &type metadata accessor for ShowInfo);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10038F7C0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100168088(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    v26 = v3;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    if (v9 >= 64)
    {
      bzero((v4 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v3 = v26;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

Swift::Int sub_10038F9DC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10038EF94();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10038FF3C();
      goto LABEL_16;
    }

    sub_1003906C4();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10038FB5C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ShowInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10038F464();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10039035C();
      goto LABEL_12;
    }

    sub_1003908FC();
  }

  v12 = *v3;
  sub_100394420(&qword_10057E770, &type metadata accessor for ShowInfo);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100394420(&unk_100581820, &type metadata accessor for ShowInfo);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10038FE00(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10038F7C0(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100390594(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100390C18(v6 + 1, a4);
  }

  v9 = *v4;
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10038FF3C()
{
  v1 = v0;
  sub_100168088(&qword_1005817A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100390098()
{
  v1 = v0;
  sub_100168088(&qword_100582880);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10039021C(uint64_t *a1)
{
  v2 = v1;
  sub_100168088(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_10039035C()
{
  v1 = v0;
  v2 = type metadata accessor for ShowInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100582860);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_100390594(uint64_t *a1)
{
  v2 = v1;
  sub_100168088(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1003906C4()
{
  v1 = v0;
  v2 = *v0;
  sub_100168088(&qword_1005817A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003908FC()
{
  v1 = v0;
  v32 = type metadata accessor for ShowInfo();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100168088(&unk_100582860);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100394420(&qword_10057E770, &type metadata accessor for ShowInfo);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100390C18(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_100168088(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_24;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }

  return result;
}

BOOL sub_100390E00(char a1, void *a2)
{
  v3 = [objc_opt_self() predicateForVisuallyPlayed:a1 & 1];
  v4 = [a2 AND:v3];

  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v8 > 0;
}

uint64_t sub_100390F04()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v3 = *(v9 - 8);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005729D0);
  v6 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10038BB94;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F1B48;
  v7 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100394420(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v10 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v9);
}

void sub_1003911CC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 privateQueueContext];

  v2 = objc_opt_self();

  sub_10039B51C(v3);

  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v2 predicateForEpisodeUuids:isa];

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v10[4] = sub_100391370;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10000F038;
  v10[3] = &unk_1004F1620;
  v7 = _Block_copy(v10);
  v8 = v1;
  v9 = v5;

  [v8 performBlock:v7];
  _Block_release(v7);
}

void sub_100391378(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 managedObjectContext];
    v16 = 0;
    if (!v2)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_9;
    }

    v3 = swift_allocObject();
    v3[2] = v1;
    v3[3] = &v16;
    v3[4] = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1003936D0;
    *(v4 + 24) = v3;
    aBlock[4] = sub_10002D950;
    aBlock[5] = v4;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002D904;
    aBlock[3] = &unk_1004F1AA8;
    v5 = _Block_copy(aBlock);
    v6 = v2;
    v7 = v1;
    v8 = v6;

    [v8 performBlockAndWait:v5];

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      v9 = sub_1003936D0;
      v10 = v16;
LABEL_9:
      LOBYTE(aBlock[0]) = v10;
      Promise.resolve(_:)();

      sub_1000112B4(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    v11 = objc_allocWithZone(NSError);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithDomain:v12 code:42 userInfo:0];

    v14 = v13;
    Promise.reject(_:)();
  }
}

void sub_1003915FC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 managedObjectContext];
    v3 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v4 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

    if (v4 == &_mh_execute_header)
    {
      v5 = static MTPodcastEpisodeLimit.defaultOption.getter();
    }

    else
    {
      v5 = 0x100000001;
    }

    [v1 setEpisodeLimit:v5];
    if (v2)
    {
      [v2 saveInCurrentBlock];
    }

    Promise.resolve(_:)();
  }

  else
  {
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithDomain:v7 code:42 userInfo:0];

    v9 = v8;
    Promise.reject(_:)();
  }
}

void sub_100391794(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = [a1 uuid];
  if (!v12)
  {
    v17 = enum case for FeedUpdateError.missingPodcastUUID(_:);
    updated = type metadata accessor for FeedUpdateError();
    v19 = *(updated - 8);
    (*(v19 + 104))(v11, v17, updated);
    (*(v19 + 56))(v11, 0, 2, updated);
    Promise.resolve(_:)();
    sub_1003935B0(v11);
    goto LABEL_21;
  }

  v13 = v12;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v14;

  v15 = swift_allocObject();
  *(v15 + 16) = j___s9JetEngine7PromiseC7resolveyyxF;
  *(v15 + 24) = a4;
  if (!(a2 >> 6))
  {
    if (a2)
    {
      v20 = 23;
    }

    else
    {
      v20 = 3;
    }

    v21 = *(v48 + 24);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 16);

    v23(v46, v47, 1, v20, sub_1003945D0, v15, ObjectType, v21);

LABEL_12:

    goto LABEL_21;
  }

  if (a2 >> 6 != 1)
  {
    v24 = *(v48 + 24);
    v25 = swift_getObjectType();
    v26 = *(v24 + 16);

    v26(v46, v47, 0, 8, sub_1003945D0, v15, v25, v24);

    goto LABEL_12;
  }

  v44 = a2;
  v16 = kPodcastUpdatedDate;

  if ([a1 valueForKey:v16])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  aBlock = v54;
  v50 = v55;
  if (*(&v55 + 1))
  {
    sub_100009F1C(0, &unk_1005827D8);
    if (swift_dynamicCast())
    {
      v43 = v53;
      v27 = sub_100009F1C(0, &qword_1005729D0);
      v42[2] = "er";
      v42[3] = v27;
      static DispatchQoS.userInitiated.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      v42[1] = sub_100394420(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0);
      sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v45 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
      v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v29 = [objc_opt_self() sharedInstance];
      v30 = [v29 doubleForKey:kLibraryShowFetchThreshold];
      v31 = [v30 asyncValuePromiseOnQueue:v28];

      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = j___s9JetEngine7PromiseC7resolveyyxF;
      *(v33 + 24) = a4;
      *(v33 + 32) = v32;
      *(v33 + 40) = v29;
      v34 = v43;
      v36 = v46;
      v35 = v47;
      *(v33 + 48) = v43;
      *(v33 + 56) = v36;
      *(v33 + 64) = v35;
      *(v33 + 72) = v44 & 1;
      *(v33 + 80) = sub_1003945D0;
      *(v33 + 88) = v15;
      v51 = sub_1003945EC;
      v52 = v33;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v50 = sub_100335CA4;
      *(&v50 + 1) = &unk_1004F1A08;
      v37 = _Block_copy(&aBlock);

      v38 = v29;
      v39 = v34;

      [v31 addFinishBlock:v37];

      _Block_release(v37);

      return;
    }
  }

  else
  {
    sub_100009104(&aBlock, &unk_1005783D0);
  }

  v40 = *(v48 + 24);
  v41 = swift_getObjectType();
  (*(v40 + 24))(v46, v47, v44 & 1, 1, 8, sub_1003945D0, v15, v41, v40);

LABEL_21:
}

void sub_100391FA0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v7 - 8);
  __chkstk_darwin();
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  type metadata accessor for FeedUpdateResult();
  __chkstk_darwin();
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = [a1 uuid];
  if (!v12)
  {
    v17 = enum case for FeedUpdateError.missingPodcastUUID(_:);
    updated = type metadata accessor for FeedUpdateError();
    v19 = *(updated - 8);
    (*(v19 + 104))(v11, v17, updated);
    (*(v19 + 56))(v11, 0, 2, updated);
    Promise.resolve(_:)();
    sub_1003935B0(v11);
    goto LABEL_21;
  }

  v13 = v12;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v14;

  v15 = swift_allocObject();
  *(v15 + 16) = j_j___s9JetEngine7PromiseC7resolveyyxF;
  *(v15 + 24) = a4;
  if (!(a2 >> 6))
  {
    if (a2)
    {
      v20 = 23;
    }

    else
    {
      v20 = 3;
    }

    v21 = *(v48 + 24);
    ObjectType = swift_getObjectType();
    v23 = *(v21 + 16);

    v23(v46, v47, 1, v20, sub_10039360C, v15, ObjectType, v21);

LABEL_12:

    goto LABEL_21;
  }

  if (a2 >> 6 != 1)
  {
    v24 = *(v48 + 24);
    v25 = swift_getObjectType();
    v26 = *(v24 + 16);

    v26(v46, v47, 0, 8, sub_10039360C, v15, v25, v24);

    goto LABEL_12;
  }

  v44 = a2;
  v16 = kPodcastUpdatedDate;

  if ([a1 valueForKey:v16])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
  }

  aBlock = v54;
  v50 = v55;
  if (*(&v55 + 1))
  {
    sub_100009F1C(0, &unk_1005827D8);
    if (swift_dynamicCast())
    {
      v43 = v53;
      v27 = sub_100009F1C(0, &qword_1005729D0);
      v42[2] = "er";
      v42[3] = v27;
      static DispatchQoS.userInitiated.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      v42[1] = sub_100394420(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_100168088(&unk_1005729E0);
      sub_100009FAC(&qword_1005743C0, &unk_1005729E0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v45 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
      v28 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v29 = [objc_opt_self() sharedInstance];
      v30 = [v29 doubleForKey:kLibraryShowFetchThreshold];
      v31 = [v30 asyncValuePromiseOnQueue:v28];

      v32 = swift_allocObject();
      swift_weakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = j_j___s9JetEngine7PromiseC7resolveyyxF;
      *(v33 + 24) = a4;
      *(v33 + 32) = v32;
      *(v33 + 40) = v29;
      v34 = v43;
      v36 = v46;
      v35 = v47;
      *(v33 + 48) = v43;
      *(v33 + 56) = v36;
      *(v33 + 64) = v35;
      *(v33 + 72) = v44 & 1;
      *(v33 + 80) = sub_10039360C;
      *(v33 + 88) = v15;
      v51 = sub_100393618;
      v52 = v33;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v50 = sub_100335CA4;
      *(&v50 + 1) = &unk_1004F1968;
      v37 = _Block_copy(&aBlock);

      v38 = v29;
      v39 = v34;

      [v31 addFinishBlock:v37];

      _Block_release(v37);

      return;
    }
  }

  else
  {
    sub_100009104(&aBlock, &unk_1005783D0);
  }

  v40 = *(v48 + 24);
  v41 = swift_getObjectType();
  (*(v40 + 24))(v46, v47, v44 & 1, 1, 8, sub_10039360C, v15, v41, v40);

LABEL_21:
}

uint64_t sub_1003927AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v5 = type metadata accessor for StationSortOrder();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  (*(v6 + 16))(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = v20;
  *(v12 + 2) = v10;
  *(v12 + 3) = v13;
  *(v12 + 4) = a2;
  *(v12 + 5) = v8;
  (*(v6 + 32))(&v12[v11], &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1003934D0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004F1828;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  [v15 performBlockAndWaitWithSave:v14];
  _Block_release(v14);
  swift_beginAccess();
  if (*(v8 + 16) == 1)
  {
    type metadata accessor for SyncKeysRepository();
    v16 = static SyncKeysRepository.shared.getter();
    SyncKeysRepository.isPlaylistSyncDirty.setter();
  }

  v17 = *(v8 + 16);

  return v17;
}

void sub_100392A38(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  v11[4] = sub_1003934C0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000F038;
  v11[3] = &unk_1004F1788;
  v9 = _Block_copy(v11);
  v10 = v7;

  [v10 performBlock:v9];
  _Block_release(v9);
}

uint64_t sub_100392B78(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100393468;
  *(v7 + 24) = v6;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F1738;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  [v9 performBlockAndWait:v8];

  _Block_release(v8);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

BOOL sub_100392D34()
{
  v0 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:0];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v4 > 0;
}

uint64_t sub_100392E1C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 *a3];

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v10;
}

BOOL sub_100392F18(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 *a3];

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v10 > 0;
}

BOOL sub_10039301C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 predicateForPartiallyPlayedInLastTwoMonths];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 predicateForAllEpisodesOnPodcastUuid:v6];

  v8 = [v5 AND:v7];
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  NSManagedObjectContext.performAndWait<A>(_:)();
  return v12 >= a3;
}

void sub_10039316C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v7[4] = sub_10039328C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10000F038;
  v7[3] = &unk_1004F1670;
  v5 = _Block_copy(v7);
  v6 = v3;

  [v6 performBlock:v5];
  _Block_release(v5);
}

uint64_t sub_1003932B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_100386428(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_10039338C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_100385FBC(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100393474(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1003934D0()
{
  type metadata accessor for StationSortOrder();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return sub_100383BD8(v1, v2, v3, v4);
}

uint64_t sub_10039354C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_10019C1BC(a1, a2);
  }

  return a1;
}

uint64_t sub_1003935B0(uint64_t a1)
{
  updated = type metadata accessor for FeedUpdateResult();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_10039362C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1003936F8@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.hidePlayedEpisodes.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100393728@<X0>(_BYTE *a1@<X8>)
{
  result = EpisodeListType.sortTypeFromUserDefaults.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100393754()
{
  result = qword_1005827E8;
  if (!qword_1005827E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005827E8);
  }

  return result;
}

uint64_t sub_1003937A8()
{
  sub_10019C0A4(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1003937FC@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeListType.pubDateLimit.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100393828(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_100380758(a1, v4, v5, v6);
}

unint64_t sub_1003938E8()
{
  result = qword_100582818;
  if (!qword_100582818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582818);
  }

  return result;
}

uint64_t sub_1003939A8()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100393A74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_10038A938(a1, v4, v5, v6);
}

uint64_t sub_100393B74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100393BD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_1003883CC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100393CB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_100387D70(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100393D8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_1003872C0(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100393E68(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(v2[4]);
  a2(v2[5]);
  if (v2[7])
  {
  }

  return _swift_deallocObject(v2, 72, 7);
}

uint64_t sub_100393EE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10021A620;

  return sub_100386AB0(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_100393FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100582838);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100394054()
{
  v1 = *(sub_100168088(&qword_100582838) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for ChildAndParentLocation();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100394240(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateResult();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1003942BC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003943B0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100394420(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100394484()
{
  result = qword_100582888;
  if (!qword_100582888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582888);
  }

  return result;
}

void sub_100394694(void *a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    if (a1)
    {
      v4 = v3;
      ObjectType = swift_getObjectType();
      v6 = swift_allocObject();
      *(v6 + 24) = v4;
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      v9 = *(v4 + 72);
      v10 = a1;

      v9(sub_1000319D0, v8, ObjectType, v4);

      v11.receiver = v1;
      v11.super_class = type metadata accessor for BaseOperation();
      objc_msgSendSuper2(&v11, "addDependency:", v10);
    }
  }
}

id sub_10039486C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003948B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1003949C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_100394B84()
{
  result = qword_100582978;
  if (!qword_100582978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582978);
  }

  return result;
}

uint64_t sub_100394BD8(uint64_t a1)
{
  sub_100394C10(a1);
}

id sub_100394C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  [*(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock) lock];
  *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = a1;
  swift_errorRetain();

  v4 = *(v1 + v3);

  return [v4 unlock];
}

uint64_t sub_100394C8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10003172C();
  }

  static os_log_type_t.debug.getter();
  return os_log(_:dso:log:_:_:)();
}

id sub_100394D10()
{
  static os_log_type_t.debug.getter();
  os_log(_:dso:log:_:_:)();
  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts14GroupOperation_queue);

  return [v1 setSuspended:0];
}

void sub_100394DB0()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts14GroupOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts14GroupOperation_input + 8));

  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts14GroupOperation_log);
}

uint64_t sub_100394EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts14GroupOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts14GroupOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

void sub_100394EC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PodcastsP33_176443A13D08CABECD6433E0302173B315FinishOperation_block);

  v1(v2);

  sub_10003172C();
}

id sub_100394F88(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100394FF8(unint64_t a1, char a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC8Podcasts14GroupOperation_input];
  *v7 = 0;
  v7[8] = 2;
  v8 = [objc_allocWithZone(NSOperationQueue) init];
  v9 = OBJC_IVAR____TtC8Podcasts14GroupOperation_queue;
  *&v3[OBJC_IVAR____TtC8Podcasts14GroupOperation_queue] = v8;
  if (a2)
  {
    [v8 setMaxConcurrentOperationCount:1];
    v8 = *&v3[v9];
  }

  [v8 setSuspended:1];
  *&v3[OBJC_IVAR____TtC8Podcasts14GroupOperation_log] = a3;
  v42.receiver = v3;
  v42.super_class = type metadata accessor for GroupOperation();
  v10 = a3;
  v11 = objc_msgSendSuper2(&v42, "init");
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;
  v14 = type metadata accessor for FinishOperation();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8PodcastsP33_176443A13D08CABECD6433E0302173B315FinishOperation_block];
  *v16 = sub_10039539C;
  v16[1] = v13;
  v41.receiver = v15;
  v41.super_class = v14;
  v31 = v10;
  v17 = v11;
  v37 = objc_msgSendSuper2(&v41, "init");
  v38 = v17;
  v36 = OBJC_IVAR____TtC8Podcasts14GroupOperation_queue;
  [*&v17[OBJC_IVAR____TtC8Podcasts14GroupOperation_queue] addOperation:?];
  if (!(a1 >> 62))
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_17:

    return v38;
  }

LABEL_16:
  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_5:
  v19 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v32 = v18;
  v33 = a1;
  while (1)
  {
    if (v35)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *(v34 + 16))
      {
        goto LABEL_15;
      }

      v20 = *(a1 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v39 = v19 + 1;
    ObjectType = swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    v24 = result;
    v25 = swift_allocObject();
    *(v25 + 24) = v24;
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    v28 = *(v24 + 72);
    v29 = v21;

    v28(sub_1000319D0, v27, ObjectType, v24);

    v30 = type metadata accessor for BaseOperation();
    v40.receiver = v37;
    v40.super_class = v30;
    objc_msgSendSuper2(&v40, "addDependency:", v29);

    [*&v38[v36] addOperation:v29];
    ++v19;
    a1 = v33;
    if (v39 == v32)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

id sub_1003953A8()
{
  v47 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v47);
  v45 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v43 = &v43 - v3;
  __chkstk_darwin(v4);
  v44 = &v43 - v5;
  __chkstk_darwin(v6);
  v48 = &v43 - v7;
  v8 = type metadata accessor for InteractionContext.Origin();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100168088(&qword_100582B00);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for InteractionContext();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100168088(&qword_100582B08);
  __chkstk_darwin(v18 - 8);
  v49 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  swift_beginAccess();
  v50 = v0;
  if (*(v0 + 24))
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.origin.getter();
    (*(v15 + 8))(v17, v14);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v9 + 56);
  v27(v25, v26, 1, v8);
  (*(v9 + 104))(v22, enum case for InteractionContext.Origin.store(_:), v8);
  v27(v22, 0, 1, v8);
  v28 = *(v11 + 48);
  sub_100010430(v25, v13, &qword_100582B08);
  sub_100010430(v22, &v13[v28], &qword_100582B08);
  v29 = *(v9 + 48);
  if (v29(v13, 1, v8) == 1)
  {
    sub_100009104(v22, &qword_100582B08);
    sub_100009104(v25, &qword_100582B08);
    if (v29(&v13[v28], 1, v8) == 1)
    {
      sub_100009104(v13, &qword_100582B08);
      return 0;
    }
  }

  else
  {
    v30 = v49;
    sub_100010430(v13, v49, &qword_100582B08);
    if (v29(&v13[v28], 1, v8) != 1)
    {
      v36 = v46;
      (*(v9 + 32))(v46, &v13[v28], v8);
      sub_100396F1C(&unk_100582B10, &type metadata accessor for InteractionContext.Origin);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v9 + 8);
      v38(v36, v8);
      sub_100009104(v22, &qword_100582B08);
      sub_100009104(v25, &qword_100582B08);
      v38(v30, v8);
      sub_100009104(v13, &qword_100582B08);
      if (v37)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_100009104(v22, &qword_100582B08);
    sub_100009104(v25, &qword_100582B08);
    (*(v9 + 8))(v30, v8);
  }

  sub_100009104(v13, &qword_100582B00);
LABEL_10:
  v31 = *(v50 + 16);
  if (v31)
  {
    v32 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    v33 = v48;
    sub_1001A1560(v31 + v32, v48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v33;
      v35 = v43;
    }

    else
    {
      v34 = v33;
      v35 = v44;
    }

    sub_1001A1560(v34, v35);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1001C3734(v35, type metadata accessor for PodcastContextActionDataType.Kind);
      sub_1001C3734(v33, type metadata accessor for PodcastContextActionDataType);
    }

    else
    {

      sub_1001C3734(v35, type metadata accessor for PodcastContextActionDataType.Kind);
      sub_1001C3734(v33, type metadata accessor for PodcastContextActionDataType);
      v39 = v45;
      sub_1001A1560(v31 + v32, v45);
      v40 = sub_100215D14();
      sub_1001C3734(v39, type metadata accessor for PodcastContextActionDataType);
      if (v40)
      {
        v41 = [v40 subscribed];

        return v41;
      }
    }
  }

  return 0;
}

void sub_100395B0C()
{
  v1 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v82 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for OSLogger();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ActionMetricsBehavior();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v5 - 8);
  v77 = &v70 - v6;
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v76 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FlowDestinationPageHeader();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v75 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for FlowPresentationContext();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = &v70 - v12;
  v88 = type metadata accessor for FlowPresentationHints();
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for FlowDestination();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v70 - v16);
  v18 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v18 - 8);
  v20 = &v70 - v19;
  v21 = type metadata accessor for PresentationSource();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v25);
  v27 = (&v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v0 + 16);
  if (!v28)
  {
    return;
  }

  v29 = v0;
  v71 = v24;
  v30 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v28 + v30, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = type metadata accessor for PodcastContextActionDataType;
LABEL_6:
    sub_1001C3734(v27, v31);
    return;
  }

  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = type metadata accessor for PodcastContextActionDataType.Kind;
    goto LABEL_6;
  }

  v32 = *v27;
  v33 = v27[1];
  swift_beginAccess();
  if (!*(v0 + 24))
  {

    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_12;
  }

  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v34 = v22;
  v35 = v21;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

LABEL_12:
    sub_100009104(v20, &unk_10057BB90);
    return;
  }

  v36 = v71;
  (*(v22 + 32))(v71, v20, v21);
  v37 = PresentationSource.viewController.getter();
  if (!v37)
  {
    (*(v22 + 8))(v36, v21);

    return;
  }

  v38 = v37;
  v39 = [v37 traitCollection];
  v40 = UITraitCollection.interfaceIdiomIsMac.getter();

  if (v40)
  {
    v41 = v38;
    v42 = UIResponder.nearestFlowController.getter();
    v44 = v43;

    if (!v42)
    {
      (*(v34 + 8))(v71, v35);

      return;
    }

    swift_getObjectType();
    v89 = v44;
    *v17 = v32;
    v17[1] = v33;
    v45 = v90;
    v46 = v91;
    (*(v90 + 104))(v17, enum case for FlowDestination.podcastSettings(_:), v91);
    (*(v92 + 104))(v85, enum case for FlowPresentationContext.presentModalPageSheet(_:), v93);
    v47 = v86;
    FlowPresentationHints.init(context:animate:)();
    dispatch thunk of FlowController.show(destination:hints:referrer:)();

    swift_unknownObjectRelease();
    (*(v87 + 8))(v47, v88);
    (*(v45 + 8))(v17, v46);
    goto LABEL_33;
  }

  if (!*(v29 + 24))
  {
LABEL_32:
    v63 = v81;
    static OSLogger.actions.getter();
    sub_100168088(&unk_10057E660);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_100400790;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v64._countAndFlagsBits = 0xD00000000000002ELL;
    v64._object = 0x8000000100472D70;
    LogMessage.StringInterpolation.appendLiteral(_:)(v64);
    v96 = &type metadata for String;
    v95[0] = v32;
    v95[1] = v33;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_100009104(v95, &unk_1005783D0);
    v65._object = 0x800000010046CEC0;
    v65._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v65);
    LogMessage.init(stringInterpolation:)();
    v66 = v84;
    Logger.error(_:)();

    (*(v83 + 8))(v63, v66);
LABEL_33:
    (*(v34 + 8))(v71, v35);
    return;
  }

  ContextActionsConfiguration.objectGraph.getter();

  v48 = v38;
  v49 = UIResponder.nearestActionRunner.getter();
  v51 = v50;

  if (!v49)
  {

    goto LABEL_32;
  }

  v87 = v51;
  v88 = v48;
  v52 = v89;
  *v89 = v32;
  v52[1] = v33;
  (*(v90 + 104))();
  (*(v92 + 104))(v72, enum case for FlowPresentationContext.presentPopover(_:), v93);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v54 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v54;
  v55 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v55;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v54)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  v56 = Link.Presentation.init(rawValue:)();
  v57 = v77;
  if (v56 != v55)
  {
    Link.Presentation.init(rawValue:)();
  }

  (*(v73 + 104))(v75, enum case for FlowDestinationPageHeader.standard(_:), v74);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  v58 = static Link.Presentation.textFollowsTintColor.getter();
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v58)
  {
    Link.Presentation.init(rawValue:)();
  }

  v59 = type metadata accessor for PopoverAction();
  swift_allocObject();
  v60 = PopoverAction.init(title:presentationStyle:flowAction:)();
  PresentationSource.popoverSource.getter();
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v61 = type metadata accessor for InteractionContext();
  (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
  sub_100010430(v98, v95, &unk_1005783D0);
  if (v96)
  {
    sub_100396ED0();
    if (swift_dynamicCast())
    {
      v62 = v94;
    }

    else
    {
      v62 = 0;
    }
  }

  else
  {
    sub_100009104(v95, &unk_1005783D0);
    v62 = 0;
  }

  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(v57, &unk_10057BB60);
  swift_getObjectType();
  v96 = v59;
  v97 = sub_100396F1C(&qword_100582AF0, &type metadata accessor for PopoverAction);
  v95[0] = v60;
  v67 = v79;
  v68 = v78;
  v69 = v80;
  (*(v79 + 104))(v78, enum case for ActionMetricsBehavior.notProcessed(_:), v80);

  ActionRunner.perform(_:withMetrics:asPartOf:)();

  swift_unknownObjectRelease();

  (*(v67 + 8))(v68, v69);
  sub_100009104(v98, &unk_1005783D0);
  (*(v34 + 8))(v71, v35);
  sub_100004590(v95);
}

uint64_t sub_100396A74()
{

  v1 = OBJC_IVAR____TtC8Podcasts28SettingsPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsPodcastContextAction()
{
  result = qword_100582A50;
  if (!qword_100582A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100396B74()
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

uint64_t sub_100396C10()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x73676E6974746553;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100396CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28SettingsPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100396D34@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.settings(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100396E20(uint64_t a1)
{
  result = sub_100396F1C(&unk_100582270, type metadata accessor for SettingsPodcastContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100396E78(uint64_t a1)
{
  result = sub_100396F1C(&qword_100582AE8, type metadata accessor for SettingsPodcastContextAction);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100396ED0()
{
  result = qword_100582AF8;
  if (!qword_100582AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100582AF8);
  }

  return result;
}

uint64_t sub_100396F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100396F64()
{
  v1 = type metadata accessor for EpisodeOffer();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v8, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v17 = *v7;
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v26[1] = v2 + 16;
      while (v19 < *(v17 + 16))
      {
        (*(v2 + 16))(v4, v17 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19, v1);
        v21 = EpisodeOffer.mediaType.getter();
        (*(v2 + 8))(v4, v1);
        if (v21 == 3)
        {
LABEL_19:

          return 0;
        }

        v22 = EpisodeMediaType.rawValue.getter();
        v24 = v23;
        if (v22 == EpisodeMediaType.rawValue.getter() && v24 == v25)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (v18 == ++v19)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_23;
    }

LABEL_18:

    return 1;
  }

  if (result)
  {
    sub_1001EB0B0(v7, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  v10 = *v7;

  v27 = 1;
  v11 = v10 + 40;
  v12 = -*(v10 + 16);
  v13 = -1;
  while (1)
  {
    v14 = v12 + v13 == -1;
    if (v12 + v13 == -1)
    {
LABEL_7:

      return v14;
    }

    if (++v13 >= *(v10 + 16))
    {
      break;
    }

    v15 = v11 + 16;
    v16 = type metadata accessor for CoreDataFetcher();
    __chkstk_darwin(v16);
    v26[-2] = &v27;

    static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

    v11 = v15;
    if ((v27 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1003972E0(char **a1@<X8>)
{
  v3 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v1 + v9, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = *v8;
    if (EnumCaseMultiPayload)
    {
      v26 = &enum case for BookmarksControllerEpisodeData.episodeOffers(_:);
    }

    else
    {

      v26 = &enum case for BookmarksControllerEpisodeData.localEpisodes(_:);
    }

    goto LABEL_54;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v41 = a1;
    v1 = *v8;
    v12 = *v8 & 0xFFFFFFFFFFFFFF8;
    if (*v8 >> 62)
    {
LABEL_50:
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    v42 = _swiftEmptyArrayStorage;
    while (v27 != v28)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *(v12 + 16))
        {
          goto LABEL_47;
        }

        v29 = *(v1 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v32 = [v29 episodeStoreId];
      v33 = [objc_opt_self() isNotEmpty:v32];

      ++v28;
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_10024339C(0, *(v42 + 2) + 1, 1, v42);
        }

        v35 = *(v42 + 2);
        v34 = *(v42 + 3);
        if (v35 >= v34 >> 1)
        {
          v42 = sub_10024339C((v34 > 1), v35 + 1, 1, v42);
        }

        v36 = v42;
        *(v42 + 2) = v35 + 1;
        *&v36[8 * v35 + 32] = v32;
        v28 = v31;
      }
    }

LABEL_53:

    v26 = &enum case for BookmarksControllerEpisodeData.storeIds(_:);
    a1 = v41;
    v25 = v42;
    goto LABEL_54;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v41 = a1;
    v11 = *v8;
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_6:
        v14 = 0;
        v42 = _swiftEmptyArrayStorage;
        while (1)
        {
          v15 = v14;
          while (1)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_49;
              }

              v16 = *&v11[8 * v15 + 32];
            }

            v17 = v16;
            v14 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v1 = v16;
            v18 = MPCPlayerResponseItem.podcastEpisode.getter();
            if (v18)
            {
              break;
            }

LABEL_9:
            ++v15;
            if (v14 == v13)
            {
              goto LABEL_53;
            }
          }

          v19 = v18;
          v1 = MPModelObject.adamID.getter();
          v21 = v20;

          if (v21)
          {
            goto LABEL_9;
          }

          if (v1 < 0)
          {
            goto LABEL_56;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_10024339C(0, *(v42 + 2) + 1, 1, v42);
          }

          v23 = *(v42 + 2);
          v22 = *(v42 + 3);
          if (v23 >= v22 >> 1)
          {
            v42 = sub_10024339C((v22 > 1), v23 + 1, 1, v42);
          }

          v24 = v42;
          *(v42 + 2) = v23 + 1;
          *&v24[8 * v23 + 32] = v1;
          if (v14 == v13)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

  sub_100200004(v8, v5);
  sub_100168088(&qword_100574828);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100400790;
  if ((*v5 & 0x8000000000000000) == 0)
  {
    v25 = v37;
    *(v37 + 32) = *v5;
    sub_1001EB0B0(v5, type metadata accessor for EpisodeContextActionDataType.Reference);
    v26 = &enum case for BookmarksControllerEpisodeData.storeIds(_:);
LABEL_54:
    *a1 = v25;
    v38 = *v26;
    v39 = type metadata accessor for BookmarksControllerEpisodeData();
    (*(*(v39 - 8) + 104))(a1, v38, v39);
    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
}

void *sub_10039779C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_25:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_24;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = MPCPlayerResponseItem.podcastEpisode.getter();

    ++v4;
    if (v8)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v7;
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_16;
    }

LABEL_27:

    return _swiftEmptyArrayStorage;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_16:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v9 & 0x8000000000000000) == 0)
  {
    sub_100009F1C(0, &qword_10057A130);
    v11 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = _swiftEmptyArrayStorage[v11 + 4];
      }

      ++v11;
      IMPlayerItem.init(modelObject:includeArtworkCatalog:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v11);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void sub_1003979DC()
{
  v1 = v0;
  v2 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_100168088(&unk_100582DE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = [objc_allocWithZone(MTPlayerItem) init];
  v9 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  v10 = type metadata accessor for CropCode();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v8;
  ArtworkModel.config(_:mode:format:crop:retainAspectRatio:)();
  sub_100009104(v7, &unk_100582DE0);
  dispatch thunk of LegacyArtworkLoaderConfig.url.getter();

  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    URL._bridgeToObjectiveC()(v14);
    v15 = v16;
    (*(v13 + 8))(v4, v12);
  }

  [v11 setArtworkUrl:v15];

  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v11 setEpisodeStoreId:?];
    URL._bridgeToObjectiveC()(*(v9 + 32));
    v18 = v17;
    [v11 setEpisodeShareUrl:v17];

    if (*(v1 + *(v9 + 28)) == 2)
    {
      v19 = 0;
    }

    else
    {
      v20 = ContentRating.rawValue.getter();
      v22 = v21;
      v19 = 1;
      if (v20 != ContentRating.rawValue.getter() || v22 != v23)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    [v11 setIsExplicit:v19 & 1];
    v24 = String._bridgeToObjectiveC()();
    [v11 setTitle:v24];
  }
}

BOOL sub_100397D28()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v6 = (&v26 - v5);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v10, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1001EB0B0(v9, type metadata accessor for EpisodeContextActionDataType);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = sub_1003982E0(1)[2];
    }

    else
    {
      v17 = sub_100398118(1)[2];
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1001EAFE4(v0 + v10, v6);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v12 = *v6;
      v26 = _swiftEmptyArrayStorage;
      if (v12 >> 62)
      {
        goto LABEL_39;
      }

      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_20;
      }

      goto LABEL_42;
    }

    v24 = v6;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      return 0;
    }

    sub_1001EAFE4(v0 + v10, v3);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v12 = *v3;
      v26 = _swiftEmptyArrayStorage;
      if (v12 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (v13)
        {
LABEL_7:
          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v14;
            if (v16 == v13)
            {
LABEL_31:
              v23 = v26;
              goto LABEL_43;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v18 = _CocoaArrayWrapper.endIndex.getter();
            if (!v18)
            {
              break;
            }

LABEL_20:
            v19 = 0;
            while (1)
            {
              if ((v12 & 0xC000000000000001) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v20 = *(v12 + 8 * v19 + 32);
              }

              v21 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              if ([v20 isExplicit])
              {
                type metadata accessor for RestrictionsController();
                static RestrictionsController.isExplicitContentAllowed.getter();
              }

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              ++v19;
              if (v21 == v18)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
          }
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_7;
        }
      }

LABEL_42:
      v23 = _swiftEmptyArrayStorage;
LABEL_43:

      v25 = v23;
      goto LABEL_44;
    }

    v24 = v3;
  }

  sub_1001EB0B0(v24, type metadata accessor for EpisodeContextActionDataType);
  v25 = _swiftEmptyArrayStorage;
LABEL_44:
  if (v25 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_46:

  return v17 != 0;
}

void *sub_100398118(char a1)
{
  v3 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v3);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v1 + v6, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EB0B0(v5, type metadata accessor for EpisodeContextActionDataType);
    return _swiftEmptyArrayStorage;
  }

  v8 = *v5;

  v16 = _swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (!v9)
  {

    return _swiftEmptyArrayStorage;
  }

  v10 = type metadata accessor for CoreDataFetcher();
  v11 = a1 & 1;
  v15[1] = v8;
  v12 = (v8 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    __chkstk_darwin(v10);
    LOBYTE(v15[-4]) = v11;
    v15[-3] = &v16;
    v15[-2] = v13;
    v15[-1] = v14;

    static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

    v12 += 2;
    --v9;
  }

  while (v9);

  return v16;
}

void *sub_1003982E0(int a1)
{
  v34 = a1;
  v38 = type metadata accessor for ShowOffer();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = type metadata accessor for EpisodeOffer();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  v9 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v1 + v12, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001EB0B0(v11, type metadata accessor for EpisodeContextActionDataType);
    return _swiftEmptyArrayStorage;
  }

  result = *v11;
  v43 = *(*v11 + 16);
  if (!v43)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_29:

    return v15;
  }

  v14 = 0;
  v41 = v4 + 16;
  v35 = (v2 + 8);
  v36 = (v4 + 8);
  v39 = (v4 + 32);
  v15 = _swiftEmptyArrayStorage;
  v42 = result;
  while (v14 < result[2])
  {
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    (*(v4 + 16))(v8, result + v16 + v17 * v14, v44);
    if (EpisodeOffer.contentRating.getter() != 2)
    {
      v19 = ContentRating.rawValue.getter();
      v21 = v20;
      if (v19 == ContentRating.rawValue.getter() && v21 == v22)
      {

LABEL_19:
        type metadata accessor for RestrictionsController();
        if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) == 0 && (v34 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_21;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_19;
      }
    }

    v18 = v37;
    EpisodeOffer.showOffer.getter();
    if (ShowOffer.contentRating.getter() == 2)
    {
      (*v35)(v18, v38);
    }

    else
    {
      v23 = ContentRating.rawValue.getter();
      v25 = v24;
      if (v23 == ContentRating.rawValue.getter() && v25 == v26)
      {

        (*v35)(v18, v38);
        goto LABEL_19;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v35)(v18, v38);
      if (v28)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    if (EpisodeOffer.isEntitledOffer.getter())
    {
      v29 = *v39;
      (*v39)(v40, v8, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001A74B8(0, v15[2] + 1, 1);
        v15 = v45;
      }

      v32 = v15[2];
      v31 = v15[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001A74B8(v31 > 1, v32 + 1, 1);
        v15 = v45;
      }

      v15[2] = v32 + 1;
      v29(v15 + v16 + v32 * v17, v40, v44);
      goto LABEL_5;
    }

LABEL_4:
    (*v36)(v8, v44);
LABEL_5:
    ++v14;
    result = v42;
    if (v43 == v14)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003987E8()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1001EB0B0(v6, type metadata accessor for EpisodeContextActionDataType);
      v10 = sub_10039AC4C();
    }

    else
    {
      sub_1001EB0B0(v6, type metadata accessor for EpisodeContextActionDataType);
      v10 = sub_10039A980();
    }

    v9 = v10[2];
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    if (*v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_14:

    return v9;
  }

  sub_100200004(v6, v3);
  type metadata accessor for RestrictionsController();
  if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || v3[*(v1 + 28)] == 2)
  {
    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
  }

  else
  {
    v12 = ContentRating.rawValue.getter();
    v14 = v13;
    if (v12 == ContentRating.rawValue.getter() && v14 == v15)
    {

      sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
      return 0;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
    if (v17)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100398A94()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v2);
  v4 = (&aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  sub_1001EAFE4(v1, v4);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1001EB0B0(v4, type metadata accessor for EpisodeContextActionDataType);
    return 0;
  }

  v8 = *v4;

  if (!v8[2])
  {

    return 0;
  }

  v10 = v8[4];
  v9 = v8[5];

  v18 = 0;
  v11 = swift_allocObject();
  v11[2] = &v18;
  v11[3] = v6;
  v11[4] = v10;
  v11[5] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10039B2E0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F2870;
  v13 = _Block_copy(aBlock);
  v14 = v6;

  [v14 performBlockAndWait:v13];

  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = v18;

    return v15;
  }

  return result;
}

uint64_t sub_100398D08()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ShowOffer();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EpisodeOffer();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v16, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v31 = v42;
    if (EnumCaseMultiPayload)
    {
      v38 = *v15;
      if (*(*v15 + 16))
      {
        v39 = v41;
        (*(v41 + 16))(v9, v38 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v7);

        (*(v39 + 32))(v12, v9, v7);
        v24 = EpisodeOffer.contentId.getter();
        EpisodeOffer.showOffer.getter();
        ShowOffer.adamId.getter();
        (*(v31 + 8))(v6, v4);
        (*(v39 + 8))(v12, v7);
        return v24;
      }
    }

    else
    {
      v32 = *v15;

      if (*(v32 + 16))
      {

        type metadata accessor for CoreDataFetcher();
        sub_100168088(&unk_100582DD0);
        static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

        return v43;
      }
    }

    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = *v15;
    if (*v15 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_35;
      }
    }

    else
    {
      result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_35;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v34 = *(v33 + 32);
    }

    v35 = v34;

    v23 = v35;
    v36 = IMPlayerItem.adamID.getter();
    if (v37)
    {
      v36 = static AdamID.empty.getter();
    }

    v24 = v36;
    [v23 podcastStoreId];

    AdamID.init(rawValue:)();
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v15, v3);
    v24 = *v3;
    static AdamID.empty.getter();
    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
    return v24;
  }

  v18 = *v15;
  if (*v15 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_35:

    goto LABEL_36;
  }

  result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_6:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v21 = v20;

    v22 = MPCPlayerResponseItem.podcastEpisode.getter();

    if (v22)
    {
      v23 = v22;
      v24 = MPModelObject.adamID.getter();
      v26 = v25;

      if (v26)
      {
        v24 = static AdamID.empty.getter();
      }

      v27 = [v23 podcast];
      if (!v27 || (v28 = v27, MPModelObject.adamID.getter(), v30 = v29, v28, (v30 & 1) != 0))
      {
        static AdamID.empty.getter();
      }

LABEL_26:

      return v24;
    }

LABEL_36:
    v24 = static AdamID.empty.getter();
    static AdamID.empty.getter();
    return v24;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 32);
    goto LABEL_9;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_100399278()
{
  v1 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EpisodeOffer();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (*(*v10 + 16))
      {
        (*(v5 + 16))(v7, *v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

        v28 = EpisodeOffer.contentId.getter();
        (*(v5 + 8))(v7, v4);
        return v28;
      }
    }

    else
    {
      v21 = *v10;

      if (*(v21 + 16))
      {

        type metadata accessor for CoreDataFetcher();
        static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

        return v29;
      }
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v22 = *v10;
    if (*v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_30;
      }
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v23 = *(v22 + 32);
    }

    v24 = v23;

    v25 = IMPlayerItem.adamID.getter();
    v27 = v26;

    if (v27)
    {
      return static AdamID.empty.getter();
    }

    return v25;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_100200004(v10, v3);
    v25 = *v3;
    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
    return v25;
  }

  v13 = *v10;
  if (*v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_30:

    return static AdamID.empty.getter();
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_9:
    v16 = v15;

    v17 = MPCPlayerResponseItem.podcastEpisode.getter();

    if (v17)
    {
      v18 = MPModelObject.adamID.getter();
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        return v18;
      }
    }

    return static AdamID.empty.getter();
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100399650@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v2);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  PodcastsReferenceLink.content.getter();
  sub_1001CEA68(v5, v6, v7);
  v8 = ContentKind.rawValue.getter();
  v10 = v9;
  if (v8 == ContentKind.rawValue.getter() && v10 == v11)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  PodcastsReferenceLink.content.getter();
  v16 = v13;
  if (!v15)
  {
    PodcastsReferenceLink.artwork.getter();
    v20 = PodcastsReferenceLink.title.getter();
    v22 = v21;
    v23 = PodcastsReferenceLink.contentRating.getter();
    PodcastsReferenceLink.shareURL.getter();
    *v4 = v16;
    v24 = (v4 + *(v2 + 24));
    *v24 = v20;
    v24[1] = v22;
    *(v4 + *(v2 + 28)) = v23;
    sub_100200004(v4, a1);
    v25 = type metadata accessor for EpisodeContextActionDataType(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v25 - 8) + 56))(a1, 0, 1, v25);
  }

  sub_1001CEA68(v13, v14, v15);
LABEL_7:
  v17 = type metadata accessor for EpisodeContextActionDataType(0);
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, 1, 1, v17);
}

void sub_100399890(void **a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 episodeForUuid:v4];

  v6 = *a1;
  *a1 = v5;
}

uint64_t sub_100399908()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v5 - 8);
  v97 = &v84 - v6;
  v98 = type metadata accessor for EpisodeOffer();
  v7 = *(v98 - 1);
  __chkstk_darwin(v98);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v10);
  v12 = (&v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = &v84 - v14;
  v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v1 + v16, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    sub_100200004(v15, v4);
    v70 = [*(v1 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider) mainOrPrivateContext];
    __chkstk_darwin(v70);
    sub_100168088(&qword_100574230);
    NSManagedObjectContext.performAndWait<A>(_:)();
    v71 = v100;
    if (v100)
    {
      v72 = v99;
      sub_100168088(&qword_100574690);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100400790;
      *(v73 + 32) = v72;
      *(v73 + 40) = v71;
      *v12 = v73;
      v12[1] = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_10039B2F4(v12, v1 + v16);
      v74 = swift_endAccess();
      sub_100399908(v74);

      sub_1001EB0B0(v12, type metadata accessor for EpisodeContextActionDataType);
    }

    else
    {
    }

    v81 = type metadata accessor for EpisodeContextActionDataType.Reference;
    goto LABEL_54;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v75 = type metadata accessor for EpisodeContextActionDataType;
      v76 = v15;
      return sub_1001EB0B0(v76, v75);
    }

    v18 = *v15;
    v19 = *(*v15 + 16);
    if (v19)
    {
      v84 = v10;
      v85 = v16;
      v86 = v12;
      v87 = v1;
      type metadata accessor for CoreDataFetcher();
      v21 = *(v7 + 16);
      v20 = (v7 + 16);
      v22 = v20[64];
      v94 = v18;
      v23 = v18 + ((v22 + 32) & ~v22);
      v95 = *(v20 + 7);
      v96 = v21;
      v97 = v20;
      v24 = v20 - 8;
      v25 = _swiftEmptyArrayStorage;
      do
      {
        v27 = v98;
        (v96)(v9, v23, v98);
        v28 = static CoreDataFetcher.episodeUuid(for:)();
        v30 = v29;
        (*v24)(v9, v27);
        if (v30)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_100243134(0, *(v25 + 2) + 1, 1, v25);
          }

          v32 = *(v25 + 2);
          v31 = *(v25 + 3);
          if (v32 >= v31 >> 1)
          {
            v25 = sub_100243134((v31 > 1), v32 + 1, 1, v25);
          }

          *(v25 + 2) = v32 + 1;
          v26 = &v25[16 * v32];
          *(v26 + 4) = v28;
          *(v26 + 5) = v30;
        }

        v23 += v95;
        --v19;
      }

      while (v19);

      v12 = v86;
      v1 = v87;
      v16 = v85;
      if (*(v25 + 2))
      {
        goto LABEL_48;
      }
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_48:
        *v12 = v25;
        v12[1] = 0;
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_10039B2F4(v12, v1 + v16);
        v77 = swift_endAccess();
        sub_100399908(v77);
        v75 = type metadata accessor for EpisodeContextActionDataType;
        v76 = v12;
        return sub_1001EB0B0(v76, v75);
      }
    }
  }

  v33 = *v15;
  v34 = *v15 >> 62;
  v85 = v16;
  v86 = v12;
  v84 = v10;
  if (v34)
  {
    v82 = v33;
    v83 = _CocoaArrayWrapper.endIndex.getter();
    v33 = v82;
    v35 = v83;
  }

  else
  {
    v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v97;
  v87 = v1;
  if (!v35)
  {
    v42 = _swiftEmptyArrayStorage;
LABEL_50:

    if (!*(v42 + 2))
    {
    }

    v4 = v86;
    *v86 = v42;
    v4[1] = 0;
    swift_storeEnumTagMultiPayload();
    v78 = v87;
    v79 = v85;
    swift_beginAccess();
    sub_10039B2F4(v4, v78 + v79);
    v80 = swift_endAccess();
    sub_100399908(v80);
    v81 = type metadata accessor for EpisodeContextActionDataType;
LABEL_54:
    v75 = v81;
    v76 = v4;
    return sub_1001EB0B0(v76, v75);
  }

  v37 = v33;
  v93 = objc_opt_self();
  result = type metadata accessor for CoreDataFetcher();
  v92 = result;
  if (v35 >= 1)
  {
    v39 = 0;
    v40 = *(v87 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider);
    v41 = v37;
    v88 = v37 & 0xC000000000000001;
    v89 = v40;
    v42 = _swiftEmptyArrayStorage;
    v43 = &selRef_defaultInstance;
    v90 = v35;
    v91 = v37;
    do
    {
      v96 = v42;
      if (v88)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v41 + 8 * v39 + 32);
      }

      v46 = v45;
      v47 = [v89 mainOrPrivateContext];
      v48 = v46;
      v49 = [v48 v43[306]];
      if ([v93 isNotEmpty:v49])
      {
        v95 = [v48 v43[306]];
      }

      else
      {
        v95 = 0;
      }

      v98 = v47;
      v50 = [v48 episodeGuid];
      if (v50)
      {
        v51 = v50;
        v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v94 = 0;
      }

      v52 = [v48 title];
      if (v52)
      {
        v53 = v52;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v54 = [v48 pubDate];
      if (v54)
      {
        v55 = v54;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = 0;
      }

      else
      {
        v56 = 1;
      }

      v57 = type metadata accessor for Date();
      (*(*(v57 - 8) + 56))(v36, v56, 1, v57);
      v58 = [v48 podcastUuid];

      if (v58)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v59 = v98;
      v60 = v97;
      v61 = static CoreDataFetcher.fetchEpisode(contentId:guid:title:pubDate:podcastUuid:with:)();

      sub_100009104(v60, &qword_100574760);
      if (v61)
      {
        v62 = [v61 uuid];
        v44 = v90;
        v42 = v96;
        v43 = &selRef_defaultInstance;
        if (v62)
        {
          v63 = v62;
          v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_100243134(0, *(v42 + 2) + 1, 1, v42);
          }

          v68 = *(v42 + 2);
          v67 = *(v42 + 3);
          if (v68 >= v67 >> 1)
          {
            v42 = sub_100243134((v67 > 1), v68 + 1, 1, v42);
          }

          *(v42 + 2) = v68 + 1;
          v69 = &v42[16 * v68];
          *(v69 + 4) = v64;
          *(v69 + 5) = v66;
        }

        else
        {
        }
      }

      else
      {

        v44 = v90;
        v42 = v96;
        v43 = &selRef_defaultInstance;
      }

      ++v39;
      v36 = v97;
      v41 = v91;
    }

    while (v44 != v39);
    goto LABEL_50;
  }

  __break(1u);
  return result;
}

void sub_10039A294(uint64_t *a1@<X8>)
{
  v2 = NSManagedObjectContext.episode(for:)();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 uuid];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_10039A33C()
{
  sub_1001EB0B0(v0 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type, type metadata accessor for EpisodeContextActionDataType);
  v1 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint;
  v2 = type metadata accessor for PreviewingPresentationHint();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10039A434()
{
  result = type metadata accessor for EpisodeContextActionDataType(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PreviewingPresentationHint();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_10039A534()
{
  sub_10039A614();
  if (v0 <= 0x3F)
  {
    sub_10039A6A0();
    if (v1 <= 0x3F)
    {
      sub_10039A6F8(319, &unk_100582CE0, &qword_10057A130);
      if (v2 <= 0x3F)
      {
        sub_10039A6F8(319, &qword_100582CF0, &unk_100582CF8);
        if (v3 <= 0x3F)
        {
          type metadata accessor for EpisodeContextActionDataType.Reference(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10039A614()
{
  if (!qword_100582CC0)
  {
    sub_100168310(&qword_10057C9C0);
    sub_100168310(&qword_100582CD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100582CC0);
    }
  }
}

void sub_10039A6A0()
{
  if (!qword_100582CD8)
  {
    type metadata accessor for EpisodeOffer();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100582CD8);
    }
  }
}

void sub_10039A6F8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100009F1C(255, a3);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10039A798()
{
  type metadata accessor for ArtworkModel();
  if (v0 <= 0x3F)
  {
    sub_10039A84C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10039A84C()
{
  if (!qword_100582D90)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100582D90);
    }
  }
}

void sub_10039A89C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = MTEpisode.adamID.getter();
    if (v5)
    {
      v4 = static AdamID.empty.getter();
    }

    *a2 = v4;
    v6 = [v3 podcast];
    if (!v6 || (v7 = v6, v8 = MTPodcast.adamId.getter(), v10 = v9, v7, (v10 & 1) != 0))
    {
      v8 = static AdamID.empty.getter();
    }

    a2[1] = v8;
  }

  else
  {
    *a2 = static AdamID.empty.getter();
    a2[1] = static AdamID.empty.getter();
  }
}

uint64_t sub_10039A948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1 || (result = MTEpisode.adamID.getter(), (v4 & 1) != 0))
  {
    result = static AdamID.empty.getter();
  }

  *a2 = result;
  return result;
}

void *sub_10039A980()
{
  v1 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v4, v3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EB0B0(v3, type metadata accessor for EpisodeContextActionDataType);
    return _swiftEmptyArrayStorage;
  }

  v6 = *v3;

  v12 = _swiftEmptyArrayStorage;
  v7 = *(v6 + 16);
  if (!v7)
  {

    return _swiftEmptyArrayStorage;
  }

  v8 = type metadata accessor for CoreDataFetcher();
  v9 = (v6 + 40);
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    __chkstk_darwin(v8);
    *(&v12 - 4) = &v12;
    *(&v12 - 3) = v10;
    *(&v12 - 2) = v11;

    static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

    v9 += 2;
    --v7;
  }

  while (v7);

  return v12;
}

void sub_10039AB38(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v14 = a1;
    if ([v14 isRestricted])
    {
    }

    else
    {
      v7 = *a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_100243134(0, *(v7 + 2) + 1, 1, v7);
        *a2 = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        *a2 = sub_100243134((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
      }

      v12 = *a2;
      *(v12 + 2) = v10 + 1;
      v13 = &v12[16 * v10];
      *(v13 + 4) = a3;
      *(v13 + 5) = a4;
    }
  }
}

void *sub_10039AC4C()
{
  v34 = type metadata accessor for ShowOffer();
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for EpisodeOffer();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v0 + v12, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001EB0B0(v11, type metadata accessor for EpisodeContextActionDataType);
    return _swiftEmptyArrayStorage;
  }

  result = *v11;
  v38 = *(*v11 + 16);
  if (!v38)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_27:

    return v15;
  }

  v14 = 0;
  v36 = v4 + 16;
  v32 = (v4 + 8);
  v33 = (v1 + 8);
  v39 = (v4 + 32);
  v15 = _swiftEmptyArrayStorage;
  v35 = v3;
  v37 = result;
  while (v14 < result[2])
  {
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = *(v4 + 72);
    (*(v4 + 16))(v8, result + v16 + v17 * v14, v41);
    if (EpisodeOffer.contentRating.getter() == 2)
    {
      goto LABEL_8;
    }

    v18 = ContentRating.rawValue.getter();
    v20 = v19;
    if (v18 == ContentRating.rawValue.getter() && v20 == v21)
    {

      goto LABEL_19;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
LABEL_8:
      EpisodeOffer.showOffer.getter();
      if (ShowOffer.contentRating.getter() == 2)
      {
        (*v33)(v3, v34);
LABEL_20:
        v28 = *v39;
        (*v39)(v40, v8, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001A74B8(0, v15[2] + 1, 1);
          v15 = v42;
        }

        v31 = v15[2];
        v30 = v15[3];
        if (v31 >= v30 >> 1)
        {
          sub_1001A74B8(v30 > 1, v31 + 1, 1);
          v15 = v42;
        }

        v15[2] = v31 + 1;
        v28(v15 + v16 + v31 * v17, v40, v41);
        v3 = v35;
        goto LABEL_5;
      }

      v22 = ContentRating.rawValue.getter();
      v24 = v23;
      if (v22 == ContentRating.rawValue.getter() && v24 == v25)
      {

        (*v33)(v3, v34);
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v33)(v3, v34);
        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_19:
    type metadata accessor for RestrictionsController();
    if (static RestrictionsController.isExplicitContentAllowed.getter())
    {
      goto LABEL_20;
    }

    (*v32)(v8, v41);
LABEL_5:
    ++v14;
    result = v37;
    if (v38 == v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void sub_10039B130(void *a1, char a2, char **a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = v9;
    v20 = v9;
    if ((a2 & 1) != 0 || (v11 = [v9 isRestricted], v10 = v20, (v11 & 1) == 0))
    {
      if ([v10 isEntitled])
      {
        v12 = *a3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_100243134(0, *(v12 + 2) + 1, 1, v12);
          *a3 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v16 = v20;
        if (v15 >= v14 >> 1)
        {
          v19 = sub_100243134((v14 > 1), v15 + 1, 1, v12);
          v16 = v20;
          *a3 = v19;
        }

        v17 = *a3;
        *(v17 + 2) = v15 + 1;
        v18 = &v17[16 * v15];
        *(v18 + 4) = a4;
        *(v18 + 5) = a5;
      }

      else
      {
      }
    }

    else
    {

      _objc_release_x2();
    }
  }
}

id sub_10039B294(id result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    result = [result isDownloadable];
    if (result)
    {
      *v2 = 0;
    }
  }

  return result;
}

uint64_t sub_10039B2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall MTLibrary.removeEpisodes(with:)(Swift::OpaquePointer with)
{
  v2 = *(with._rawValue + 2);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1001A7364(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v5 = with._rawValue + 32;
    do
    {
      v5 += 8;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1001A7364((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v14;
      }

      v3[2] = v9 + 1;
      v10 = &v3[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
      --v2;
    }

    while (v2);
  }

  sub_10039B51C(v3);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v1 removeDownloadAssetsForEpisodeUuids:isa];
}

uint64_t sub_10039B51C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10038E7E0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10039B5B4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for MTCategory();
    sub_10039B70C();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10038E930(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_10039B70C()
{
  result = qword_10057D950;
  if (!qword_10057D950)
  {
    type metadata accessor for MTCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D950);
  }

  return result;
}

uint64_t sub_10039B78C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

id InterestSyncStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InterestSyncStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t InterestSyncStorage.isInterestSyncDirty.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  v1 = SyncKeysRepository.isInterestSyncDirty.getter();

  return v1 & 1;
}

void InterestSyncStorage.isInterestSyncDirty.setter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isInterestSyncDirty.setter();
}

void (*InterestSyncStorage.isInterestSyncDirty.modify(uint64_t a1))()
{
  *a1 = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.isInterestSyncDirty.getter();

  *(a1 + 8) = v3 & 1;
  return sub_10039BA54;
}

void sub_10039BA54()
{
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isInterestSyncDirty.setter();
}

uint64_t InterestSyncStorage.interestLastSyncTimestamp.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.interestLastSyncTimestamp.getter();

  return Sync;
}

void InterestSyncStorage.interestLastSyncTimestamp.setter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestLastSyncTimestamp.setter();
}

uint64_t (*sub_10039BB70(uint64_t *a1))()
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
  *(v2 + 32) = InterestSyncStorage.interestLastSyncTimestamp.modify(v2);
  return sub_1001A5C4C;
}

void (*InterestSyncStorage.interestLastSyncTimestamp.modify(uint64_t a1))()
{
  *(a1 + 16) = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.interestLastSyncTimestamp.getter();
  v5 = v4;

  *a1 = Sync;
  *(a1 + 8) = v5 & 1;
  return sub_10039BC50;
}

void sub_10039BC50()
{
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestLastSyncTimestamp.setter();
}

uint64_t (*sub_10039BD1C(uint64_t **a1))()
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
  v2[4] = InterestSyncStorage.syncVersion.modify(v2);
  return sub_1001A90C0;
}

void (*InterestSyncStorage.syncVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.interestSyncVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_10039BDF4;
}

uint64_t sub_10039BE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for SyncKeysRepository();
  v4 = static SyncKeysRepository.shared.getter();
  v5 = a3();

  return v5;
}

uint64_t sub_10039BE94(uint64_t (*a1)(void))
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = a1();

  return v3;
}

void sub_10039BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  a5(a1, a2);
}

void sub_10039BF94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v6 = static SyncKeysRepository.shared.getter();
  a3(a1, a2);
}

uint64_t (*sub_10039C00C(uint64_t **a1))()
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
  v2[4] = InterestSyncStorage.podcastsDomainVersion.modify(v2);
  return sub_1001A90C0;
}

void (*InterestSyncStorage.podcastsDomainVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.podcastsDomainVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_10039C0E4;
}

void sub_10039C0FC(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }

  else
  {
    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }
}

uint64_t InterestSyncStorage.fetchAllInterests()()
{
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v106 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = &v94 - v2;
  v112 = type metadata accessor for Date();
  v4 = *(v112 - 8);
  __chkstk_darwin();
  v101 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v94 - v6;
  kMTInterestEntityName.getter();
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithEntityName:v8];

  v10 = [objc_opt_self() truePredicate];
  [v9 setPredicate:v10];

  sub_100168088(&unk_1005747C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100402720;
  v12 = kInterestAdamID.getter();
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = kInterestInterestValue.getter();
  *(v11 + 88) = &type metadata for String;
  *(v11 + 64) = v14;
  *(v11 + 72) = v15;
  Updated = kInterestLastUpdatedDate.getter();
  *(v11 + 120) = &type metadata for String;
  *(v11 + 96) = Updated;
  *(v11 + 104) = v17;
  v18 = kInterestUnknownSyncProperties.getter();
  *(v11 + 152) = &type metadata for String;
  *(v11 + 128) = v18;
  *(v11 + 136) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setPropertiesToFetch:isa];

  [v9 setResultType:2];
  v114 = v0;
  v115 = v9;
  v95 = v9;
  sub_100168088(&qword_100579278);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v21 = *&v118[0];
  v22 = *(*&v118[0] + 16);
  v23 = _swiftEmptyArrayStorage;
  if (v22)
  {
    v119 = _swiftEmptyArrayStorage;
    sub_1001A75F0(0, v22, 0);
    v24 = v119;
    result = sub_100168088(&unk_100572CA0);
    v100 = result;
    v26 = 0;
    v99 = (v21 + 32);
    v104 = (v4 + 32);
    v103 = (v4 + 8);
    v98 = v4;
    v109 = v3;
    v97 = v21;
    v96 = v22;
    v108 = (v4 + 56);
    v27 = v3;
    while (v26 < *(v21 + 16))
    {
      v107 = v24;
      v102 = v26 + 1;
      v28 = v99[v26];
      v29 = static _DictionaryStorage.copy(original:)();
      v30 = v108;
      v31 = v112;
      v32 = v29;
      v33 = v28 + 64;
      v34 = 1 << *(v28 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v28 + 8);
      v37 = (v34 + 63) >> 6;
      v110 = v29 + 64;
      v111 = v28;

      for (i = 0; v36; v32[2] = v54)
      {
        v39 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
LABEL_14:
        v42 = v39 | (i << 6);
        v43 = *(v111 + 7);
        v44 = (*(v111 + 6) + 16 * v42);
        v45 = v44[1];
        v113 = *v44;
        sub_10001B944(v43 + 32 * v42, v118);
        sub_10001B944(v118, &v116);

        v46 = swift_dynamicCast();
        v47 = *v30;
        if (v46)
        {
          (v47)(v27, 0, 1, v31);
          v48 = v105;
          (*v104)(v105, v27, v31);
          Date.timeIntervalSinceReferenceDate.getter();
          v31 = v112;
          v117 = &type metadata for Double;
          *&v116 = v49;
          v50 = v48;
          v30 = v108;
          (*v103)(v50, v112);
          sub_100004590(v118);
        }

        else
        {
          (v47)(v27, 1, 1, v31);
          sub_1001A4748(v27);
          sub_10016B7CC(v118, &v116);
        }

        *(v110 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        v51 = (v32[6] + 16 * v42);
        *v51 = v113;
        v51[1] = v45;
        result = sub_10016B7CC(&v116, (v32[7] + 32 * v42));
        v52 = v32[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_58;
        }
      }

      v40 = i;
      while (1)
      {
        i = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          goto LABEL_57;
        }

        if (i >= v37)
        {
          break;
        }

        v41 = *&v33[8 * i];
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v36 = (v41 - 1) & v41;
          goto LABEL_14;
        }
      }

      v24 = v107;
      v119 = v107;
      v56 = v107[2];
      v55 = v107[3];
      if (v56 >= v55 >> 1)
      {
        result = sub_1001A75F0((v55 > 1), v56 + 1, 1);
        v24 = v119;
      }

      v24[2] = v56 + 1;
      v24[v56 + 4] = v32;
      v26 = v102;
      v4 = v98;
      v21 = v97;
      if (v102 == v96)
      {

        v23 = _swiftEmptyArrayStorage;
        v57 = v24[2];
        if (!v57)
        {
          goto LABEL_47;
        }

        goto LABEL_24;
      }
    }

    goto LABEL_60;
  }

  v24 = _swiftEmptyArrayStorage;
  v57 = _swiftEmptyArrayStorage[2];
  if (v57)
  {
LABEL_24:
    v119 = _swiftEmptyArrayStorage;
    sub_1001A75F0(0, v57, 0);
    v58 = v119;
    result = sub_100168088(&unk_100572CA0);
    v102 = result;
    v59 = 0;
    v100 = v24 + 4;
    v108 = (v4 + 32);
    v105 = (v4 + 8);
    v107 = v24;
    v99 = v57;
    v109 = (v4 + 56);
LABEL_25:
    if (v59 >= v24[2])
    {
      goto LABEL_61;
    }

    v104 = v58;
    v103 = (v59 + 1);
    v60 = v100[v59];
    v61 = static _DictionaryStorage.copy(original:)();
    v62 = v109;
    v63 = v106;
    v64 = v61;
    v65 = v60 + 64;
    v66 = 1 << *(v60 + 32);
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    else
    {
      v67 = -1;
    }

    v68 = v67 & *(v60 + 64);
    v69 = (v66 + 63) >> 6;
    v110 = v61 + 64;
    v111 = v60;

    v70 = 0;
    if (v68)
    {
      while (1)
      {
        v71 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
LABEL_36:
        v74 = v71 | (v70 << 6);
        v75 = *(v111 + 7);
        v76 = (*(v111 + 6) + 16 * v74);
        v77 = v76[1];
        v113 = *v76;
        sub_10001B944(v75 + 32 * v74, v118);
        sub_10001B944(v118, &v116);

        v78 = v112;
        v79 = swift_dynamicCast();
        v80 = *v62;
        if (v79)
        {
          v80(v63, 0, 1, v78);
          v81 = v101;
          (*v108)(v101, v63, v78);
          Date.timeIntervalSinceReferenceDate.getter();
          v63 = v106;
          v117 = &type metadata for Double;
          *&v116 = v82;
          v83 = v81;
          v62 = v109;
          (*v105)(v83, v78);
          sub_100004590(v118);
        }

        else
        {
          v80(v63, 1, 1, v78);
          sub_1001A4748(v63);
          sub_10016B7CC(v118, &v116);
        }

        *(v110 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
        v84 = (v64[6] + 16 * v74);
        *v84 = v113;
        v84[1] = v77;
        result = sub_10016B7CC(&v116, (v64[7] + 32 * v74));
        v85 = v64[2];
        v53 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v53)
        {
          break;
        }

        v64[2] = v86;
        if (!v68)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
LABEL_31:
      v72 = v70;
      while (1)
      {
        v70 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v70 >= v69)
        {

          v58 = v104;
          v119 = v104;
          v88 = v104[2];
          v87 = v104[3];
          if (v88 >= v87 >> 1)
          {
            result = sub_1001A75F0((v87 > 1), v88 + 1, 1);
            v58 = v119;
          }

          v58[2] = v88 + 1;
          v58[v88 + 4] = v64;
          v59 = v103;
          v24 = v107;
          if (v103 != v99)
          {
            goto LABEL_25;
          }

          v23 = _swiftEmptyArrayStorage;
          v89 = v58[2];
          if (!v89)
          {
            goto LABEL_48;
          }

          goto LABEL_50;
        }

        v73 = *(v65 + 8 * v70);
        ++v72;
        if (v73)
        {
          v71 = __clz(__rbit64(v73));
          v68 = (v73 - 1) & v73;
          goto LABEL_36;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

LABEL_47:

  v89 = _swiftEmptyArrayStorage[2];
  if (v89)
  {
LABEL_50:
    *&v118[0] = _swiftEmptyArrayStorage;
    sub_1001A75F0(0, v89, 0);
    type metadata accessor for RemoteInterest();
    v90 = 32;
    v23 = *&v118[0];
    do
    {

      v91 = Dictionary<>.flatteningUnknownSyncProperties<A>(for:)();

      *&v118[0] = v23;
      v93 = v23[2];
      v92 = v23[3];
      if (v93 >= v92 >> 1)
      {
        sub_1001A75F0((v92 > 1), v93 + 1, 1);
        v23 = *&v118[0];
      }

      v23[2] = v93 + 1;
      v23[v93 + 4] = v91;
      v90 += 8;
      --v89;
    }

    while (v89);
  }

  else
  {
LABEL_48:
  }

  return v23;
}

void static InterestSyncStorage.resetInterestSync()()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestLastSyncTimestamp.setter();

  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestSyncVersion.setter();

  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isInterestSyncDirty.setter();
}

uint64_t sub_10039CE0C@<X0>(void *a1@<X8>)
{
  sub_100009F1C(0, &qword_10057E7C0);
  v2 = NSManagedObjectContext.fetch<A>(_:)();
  v3 = sub_100380060(v2);

  v5 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

void sub_10039CEBC(void *a1, void *a2)
{
  [a1 adamID];
  AdamID.init(rawValue:)();
  v4 = NSManagedObjectContext.unsafeCategory(forAdamID:)();
  if (v4)
  {
    v5 = v4;
    v6 = &selRef_setCategory_;
    goto LABEL_9;
  }

  v7 = [a1 adamID];
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = [a2 channelForStoreId:v7];
  if (v8)
  {
    v5 = v8;
    v6 = &selRef_setChannel_;
    goto LABEL_9;
  }

  v9 = [a1 adamID];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v10 = [a2 podcastForStoreId:v9];
  if (!v10)
  {
    return;
  }

  v5 = v10;
  v6 = &selRef_setPodcast_;
LABEL_9:
  v11 = v5;
  [a1 *v6];
  [v11 setInterest:a1];
}

void _s8Podcasts19InterestSyncStorageC017unsafeUpdateLocalB8IfNeeded3for06remoteB02iny0A10Foundation10MTInterestC_AH06RemoteB0VSo22NSManagedObjectContextCtF_0(void *a1, uint64_t a2, void *a3)
{
  v64 = a3;
  v5 = type metadata accessor for RemoteInterest();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v62 = &v55 - v9;
  __chkstk_darwin();
  v61 = &v55 - v10;
  v11 = type metadata accessor for Logger();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin();
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v55 - v14;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = COERCE_DOUBLE(RemoteInterest.interestValueUpdatedDate.getter());
  if (v20)
  {
    static Logger.cloudSync.getter();
    (*(v6 + 16))(v8, a2, v5);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v24 = RemoteInterest.adamID.getter();
      (*(v6 + 8))(v8, v5);
      *(v23 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, v22, "[Interests] Remote interest doesn't have an interestValueUpdatedDate. We cannot determine which interestValue to use. Not syncing this interest: %lld", v23, 0xCu);
    }

    else
    {
      (*(v6 + 8))(v8, v5);
    }

    (*(v65 + 8))(v13, v66);
  }

  else
  {
    v25 = *&v19;
    v26 = [a1 lastUpdatedDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v28 = v27;
    v31 = *(v16 + 8);
    v30 = v16 + 8;
    v29 = v31;
    v31(v18, v15);
    v32 = a1;
    if (v28 < v25)
    {
      RemoteInterest.interestValue.getter();
      v34 = v33;
      [a1 interestValue];
      if (v34 != v35)
      {
        v58 = v29;
        v59 = v30;
        v60 = v15;
        static Logger.cloudSync.getter();
        v36 = *(v6 + 16);
        v37 = v61;
        v38 = v5;
        v36(v61, a2, v5);
        v39 = v62;
        v36(v62, a2, v38);
        v40 = v32;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v56 = v32;
          v57 = a2;
          v55 = v41;
          v44 = v37;
          v45 = v43;
          *v43 = 134218496;
          v46 = RemoteInterest.adamID.getter();
          v47 = v42;
          v48 = *(v6 + 8);
          v48(v44, v38);
          *(v45 + 1) = v46;
          *(v45 + 6) = 2048;
          [v40 interestValue];
          *(v45 + 14) = v49;
          *(v45 + 11) = 2048;
          RemoteInterest.interestValue.getter();
          v51 = v50;
          v48(v39, v38);
          *(v45 + 3) = v51;
          v52 = v55;
          _os_log_impl(&_mh_execute_header, v55, v47, "[Interests] Remote interestValue is more recent than the local version, and the value is different. Updating the interestValue for %lld from %f to %f", v45, 0x20u);
          v32 = v56;
        }

        else
        {
          v53 = *(v6 + 8);
          v53(v37, v38);

          v53(v39, v38);
        }

        (*(v65 + 8))(v63, v66);
        RemoteInterest.interestValue.getter();
        [v40 setInterestValue:?];
        static Date.now.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v58(v18, v60);
        [v40 setLastUpdatedDate:isa];
      }
    }

    sub_10039CEBC(v32, v64);
  }
}

uint64_t _s8Podcasts19InterestSyncStorageC015unsafeInsertNewB03for2in0A10Foundation10MTInterestCSgAG06RemoteB0V_So22NSManagedObjectContextCtF_0(uint64_t a1, void *a2)
{
  v35 = a1;
  v3 = type metadata accessor for RemoteInterest();
  v33 = *(v3 - 8);
  __chkstk_darwin();
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v31 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  kMTInterestEntityName.getter();
  v13 = String._bridgeToObjectiveC()();

  v34 = a2;
  v14 = [v12 insertNewObjectForEntityForName:v13 inManagedObjectContext:a2];

  type metadata accessor for MTInterest();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v22 = v31;

    static Logger.cloudSync.getter();
    v24 = v32;
    v23 = v33;
    (*(v33 + 16))(v32, v35, v3);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = RemoteInterest.adamID.getter();
      (*(v23 + 8))(v24, v3);
      *(v27 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cannot create MTInterest for adamID: %lld. Unable to favorite interest.", v27, 0xCu);
    }

    else
    {
      (*(v23 + 8))(v24, v3);
    }

    (*(v22 + 8))(v7, v5);
    return 0;
  }

  v16 = v15;
  result = RemoteInterest.adamID.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    [v16 setAdamID:result];
    RemoteInterest.interestValue.getter();
    [v16 setInterestValue:?];
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v8);
    [v16 setLastUpdatedDate:isa];

    v36 = RemoteInterest.unknownSyncProperties.getter();
    sub_100168088(&qword_10057E2E0);
    sub_10039DED0();
    LOBYTE(isa) = Collection.isNotEmpty.getter();

    if (isa)
    {
      v19 = RemoteSyncTypeWithUnknownSyncProperties.encodeUnknownSyncProperties()();
      if (v20 >> 60 == 15)
      {
        v21 = 0;
      }

      else
      {
        v29 = v19;
        v30 = v20;
        v21 = Data._bridgeToObjectiveC()().super.isa;
        sub_1001F6D60(v29, v30);
      }

      [v16 setUnknownSyncProperties:v21];
    }

    else
    {
      [v16 setUnknownSyncProperties:0];
    }

    sub_10039CEBC(v16, v34);
    return v16;
  }

  __break(1u);
  return result;
}

id sub_10039DA38()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.interestLastSyncTimestamp.getter();
  v10 = v9;

  if (v10)
  {
    static Logger.cloudSync.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, v11, "[NonFollowedShows] We never synced before, so there are no old Implicit Follows to clean up.", v13, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v14 = [objc_opt_self() falsePredicate];

    return v14;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    kInterestLastUpdatedDate.getter();
    v16 = String._bridgeToObjectiveC()();

    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [objc_opt_self() predicateForDateKey:v16 isLessThanDate:isa];

    type metadata accessor for MTInterest();
    v19 = static MTInterest.predicateForInterests(excludingAdamIDs:)();
    v20 = [v19 AND:v18];

    (*(v5 + 8))(v7, v4);
    return v20;
  }
}

void *_s8Podcasts19InterestSyncStorageC039unsafeInterestsOnlyInLocalAndBeforeLastC016excludingAdamIDs2inSay0A10Foundation10MTInterestCGSgSays5Int64VG_So22NSManagedObjectContextCtF_0(uint64_t a1, void *a2)
{
  v3 = sub_10039DA38();
  kMTInterestEntityName.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [a2 objectsInEntity:v4 predicate:v5 sortDescriptors:isa];

  if (v7)
  {
    sub_100009F1C(0, &qword_1005739D0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10037FEFC(v8);
  }

  return v7;
}

void _s8Podcasts19InterestSyncStorageC29unsafeRemoveInterestsIfNeeded3forySay0A10Foundation10MTInterestCG_tF_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 setInterestValue:0.0];
    }
  }
}

unint64_t sub_10039DED0()
{
  result = qword_10057E2E8;
  if (!qword_10057E2E8)
  {
    sub_100168310(&qword_10057E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057E2E8);
  }

  return result;
}

uint64_t sub_10039DF48@<X0>(uint64_t a1@<X8>)
{
  v11[0] = a1;
  v1 = type metadata accessor for ShowLockupStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_100582FD8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v11 - v7;
  swift_getObjectType();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = -1;
  ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)();
  v9 = dispatch thunk of LibraryDataProviderProtocol.showsPaginatedPublisher(listType:sortBy:lockupStyle:pageSize:)();
  (*(v2 + 8))(v4, v1);
  v11[1] = v9;
  sub_100168088(&qword_100574180);
  sub_100168088(&qword_100573AA0);
  sub_100009FAC(&qword_100582FE0, &qword_100574180);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_100582FE8, &qword_100582FD8);
  Publisher.removeDuplicates(by:)();
  return (*(v6 + 8))(v8, v5);
}

char *sub_10039E25C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_1001A7578(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v7 = LegacyLockup.adamId.getter();

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1001A7578((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v7;
    }
  }

  if (v3 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_23:
    v15 = sub_100195F50(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

    return (v15 & 1);
  }

  result = sub_1001A7578(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    for (j = 0; j != v10; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v12 = LegacyLockup.adamId.getter();

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1001A7578((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      _swiftEmptyArrayStorage[v14 + 4] = v12;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10039E4B4()
{
  v0 = sub_100168088(&qword_100582FA0);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v8 - v2;
  type metadata accessor for TabMenuProvider();
  v4 = objc_opt_self();

  v5 = [v4 standardUserDefaults];
  TabMenuProvider.__allocating_init(asPartOf:userDefaults:interfaceMode:)();
  v6 = dispatch thunk of TabMenuProvider.libraryPublisher.getter();

  v8[1] = v6;
  sub_100168088(&qword_100582FA8);
  sub_100168088(&qword_100582FB0);
  sub_100009FAC(&qword_100582FB8, &qword_100582FA8);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_100582FC0, &qword_100582FA0);
  sub_10039FCA4();
  Publisher<>.removeDuplicates()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10039E6E8@<X0>(void *a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for TabMenu.Item();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v18 - v5;
  result = TabMenu.Section.items.getter();
  v8 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v9 = 0;
    v20 = (v2 + 8);
    v24 = (v2 + 32);
    v25 = v2 + 16;
    v10 = _swiftEmptyArrayStorage;
    v22 = v4;
    v23 = v1;
    v21 = result;
    while (v9 < *(v8 + 16))
    {
      v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v12 = *(v2 + 72);
      (*(v2 + 16))(v6, v8 + v11 + v12 * v9, v1);
      if (TabMenu.Item.enabled.getter())
      {
        v13 = *v24;
        (*v24)(v4, v6, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001A795C(0, v10[2] + 1, 1);
          v10 = v27;
        }

        v16 = v10[2];
        v15 = v10[3];
        if (v16 >= v15 >> 1)
        {
          sub_1001A795C(v15 > 1, v16 + 1, 1);
          v10 = v27;
        }

        v10[2] = v16 + 1;
        v17 = v10 + v11 + v16 * v12;
        v4 = v22;
        v1 = v23;
        result = (v13)(v17, v22, v23);
        v8 = v21;
      }

      else
      {
        result = (*v20)(v6, v1);
      }

      if (v26 == ++v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_13:

    *v19 = v10;
  }

  return result;
}

void sub_10039E94C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100472EE0;
  v1._object = 0x8000000100472EB0;
  v4._countAndFlagsBits = 0xD00000000000004CLL;
  v1._countAndFlagsBits = 0xD000000000000024;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100582E20 = v3;
}

uint64_t sub_10039EA28()
{
  v55 = *v0;
  sub_100168088(&qword_100575C10);
  __chkstk_darwin();
  v56 = v39 - v1;
  v50 = sub_100168088(&qword_100582EE0);
  __chkstk_darwin();
  v43 = v39 - v2;
  v49 = sub_100168088(&qword_100582EE8);
  __chkstk_darwin();
  v41 = v39 - v3;
  v4 = type metadata accessor for ObserverQueue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_100582EF0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v39 - v10;
  v39[2] = sub_100168088(&qword_100582EF8);
  __chkstk_darwin();
  v39[1] = v39 - v12;
  v44 = sub_100168088(&qword_100582F00);
  v46 = *(v44 - 8);
  __chkstk_darwin();
  v14 = v39 - v13;
  v15 = sub_100168088(&qword_100582F08);
  v16 = *(v15 - 8);
  v47 = v15;
  v48 = v16;
  __chkstk_darwin();
  v40 = v39 - v17;
  v51 = sub_100168088(&qword_100582F10);
  v54 = *(v51 - 8);
  __chkstk_darwin();
  v42 = v39 - v18;
  v19 = sub_100168088(&qword_100582F18);
  v20 = *(v19 - 8);
  v52 = v19;
  v53 = v20;
  __chkstk_darwin();
  v45 = v39 - v21;
  swift_getObjectType();
  LibraryDataProviderProtocol.fetchShowCountObserver()();
  (*(v5 + 104))(v7, enum case for ObserverQueue.main(_:), v4);
  sub_100009FAC(&qword_100582F20, &qword_100582F28);
  v22 = Promise<A>.observerPublisher(receiveOn:)();

  (*(v5 + 8))(v7, v4);
  v57 = v22;
  sub_100168088(&qword_100582F30);
  sub_100009FAC(&qword_100582F38, &qword_100582F30);
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_100582F40, &qword_100582EF0);
  Publisher<>.removeDuplicates()();
  (*(v9 + 8))(v11, v8);
  sub_10039DF48(v41);
  sub_10039E4B4();
  sub_100009FAC(&qword_100582F48, &qword_100582EF8);
  sub_100009FAC(&qword_100582F50, &qword_100582EE8);
  sub_100009FAC(&unk_100582F58, &qword_100582EE0);
  Publishers.CombineLatest3.init(_:_:_:)();
  v23 = v0[2];
  v24 = swift_allocObject();
  v25 = v55;
  *(v24 + 16) = v23;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10039F758;
  *(v26 + 24) = v24;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_100582F68, &qword_100582F00);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  v27 = v40;
  v28 = v44;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v46 + 8))(v14, v28);
  sub_100009FAC(&unk_100582F78, &qword_100582F08);
  v29 = v42;
  v30 = v47;
  Publisher.prepend(_:)();
  (*(v48 + 8))(v27, v30);
  sub_100009F1C(0, &qword_1005729D0);
  v31 = static OS_dispatch_queue.main.getter();
  v57 = v31;
  v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v33 = v56;
  (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  sub_100009FAC(&unk_100582F88, &qword_100582F10);
  sub_1000179F8();
  v34 = v45;
  v35 = v51;
  Publisher.receive<A>(on:options:)();
  sub_10039F79C(v33);

  (*(v54 + 8))(v29, v35);
  sub_100009FAC(&qword_100582F98, &qword_100582F18);
  v36 = v52;
  v37 = Publisher.eraseToAnyPublisher()();
  (*(v53 + 8))(v34, v36);
  return v37;
}

uint64_t sub_10039F454(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v11 = &v16 - v10;
  sub_100168088(&unk_100578B20);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a4;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1004109B8;
  *(v14 + 24) = v13;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_10039F5D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039F670, v6, v5);
}

uint64_t sub_10039F670()
{
  v1 = *(v0 + 48);

  if (v1)
  {
    if (qword_100572888 != -1)
    {
      swift_once();
    }

    v2 = xmmword_100582E20;

    v4 = v2;
    v5 = 2;
  }

  else
  {
    v4 = sub_10039F8C0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  v6 = *(v0 + 8);

  return v6(v4, v3, v5);
}

uint64_t sub_10039F760@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_10039F79C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100575C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039F804()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1001AB9B8;

  return sub_10039F5D0(v2, v3, v4, v5);
}

uint64_t sub_10039F8C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for CarPlayPageLoadCoordinator();
  swift_allocObject();

  sub_1002442DC(v5);

  v6 = BaseObjectGraph.satisfying<A>(_:with:)();
  v7 = _swiftEmptyArrayStorage;
  sub_100009F1C(0, &qword_100574B50);

  v8 = sub_100345270(v6, a3);
  if (v8)
  {
    v9 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = _swiftEmptyArrayStorage;
  }

  v10 = objc_opt_self();

  v11 = [v10 mainBundle];
  v27._object = 0x8000000100472F50;
  v12._object = 0x8000000100472F30;
  v12._countAndFlagsBits = 0xD000000000000010;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000010;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v27);

  v15 = sub_1002D2500(v6, v14._countAndFlagsBits, v14._object, 2, a2);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = _swiftEmptyArrayStorage;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {

    sub_100168088(&unk_100574A00);
    v26 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v7 = v26;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100168088(&unk_100574A00);
    if (swift_dynamicCastMetatype() || (v24 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_11:
    }

    else
    {
      v25 = v18 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v25 += 8;
        if (!--v24)
        {
          goto LABEL_11;
        }
      }

      v7 = (v18 | 1);
    }
  }

  v19 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v7);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v19 initWithItems:isa];

  sub_100168088(&unk_100574680);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1004007B0;
  *(v22 + 32) = v21;

  return v22;
}

unint64_t sub_10039FCA4()
{
  result = qword_100582FC8;
  if (!qword_100582FC8)
  {
    sub_100168310(&qword_100582FB0);
    sub_10039FD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582FC8);
  }

  return result;
}

unint64_t sub_10039FD28()
{
  result = qword_100582FD0;
  if (!qword_100582FD0)
  {
    type metadata accessor for TabMenu.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100582FD0);
  }

  return result;
}

uint64_t sub_10039FDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return _swift_task_switch(sub_10039FE14, 0, 0);
}

uint64_t sub_10039FE14()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = type metadata accessor for OpenTranscriptIntent();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  (*(v5 + 16))(v3, v2, v4);
  v6 = type metadata accessor for OpenTranscriptIntentImplementation();
  v0[16] = v6;
  *(v3 + *(v6 + 36)) = v1;
  v7 = type metadata accessor for PlaybackController();

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10039FF48;

  return BaseObjectGraph.inject<A>(_:)(v0 + 9, v7, v7);
}

uint64_t sub_10039FF48()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_1003A0934;
  }

  else
  {
    v2 = sub_1003A0064;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A0064()
{
  *(v0[11] + *(v0[16] + 20)) = v0[9];
  v1 = type metadata accessor for NowPlayingBootstrap();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1003A0128;

  return BaseObjectGraph.inject<A>(_:)(v0 + 10, v1, v1);
}

uint64_t sub_1003A0128()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_1003A06B4;
  }

  else
  {
    v2 = sub_1003A0244;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A0244()
{
  *(v0[11] + *(v0[16] + 24)) = v0[10];
  v1 = sub_100168088(&qword_10057A160);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1003A0310;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_1003A0310()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_1003A0780;
  }

  else
  {
    v2 = sub_1003A042C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A042C()
{
  sub_1000109E4((v0 + 16), *(v0 + 88) + *(*(v0 + 128) + 28));
  v1 = sub_100168088(&qword_100574580);
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1003A0500;

  return BaseObjectGraph.inject<A>(_:)(v0 + 56, v1, v1);
}

uint64_t sub_1003A0500()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1003A0850;
  }

  else
  {
    v2 = sub_1003A0630;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A0630()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  (*(*(v0 + 120) + 8))(*(v0 + 104), *(v0 + 112));
  *(v2 + *(v1 + 32)) = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003A06B4()
{
  v1 = *(v0[15] + 8);
  v1(v0[13], v0[14]);
  v2 = v0[20];
  v1(v0[11], v0[14]);

  if (!v2)
  {
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A0780()
{
  v1 = *(v0[15] + 8);
  v1(v0[13], v0[14]);
  v2 = v0[20];
  v1(v0[11], v0[14]);

  if (!v2)
  {
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A0850()
{
  v1 = *(v0[15] + 8);
  v1(v0[13], v0[14]);
  v2 = v0[20];
  v1(v0[11], v0[14]);

  if (!v2)
  {
  }

  sub_100004590(v0[11] + *(v0[16] + 28));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A0934()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = *(v0[15] + 8);
  v3(v0[13], v1);
  v3(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A09D4()
{
  v1[5] = v0;
  sub_100168088(&unk_100577240);
  v1[6] = swift_task_alloc();
  sub_100168088(&qword_10057BB28);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for EpisodeEntity();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for TranscriptRequestInformation();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1003A0B94, v5, v4);
}

uint64_t sub_1003A0B94()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  OpenTranscriptIntent.episode.getter();
  EpisodeEntity.transcriptRequestInformation.getter();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[7];

    sub_100009104(v7, &qword_10057BB28);
    sub_1003A2838();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[7], v0[11]);
    sub_1003A1424();
    if (v10)
    {
      v11 = swift_task_alloc();
      v0[17] = v11;
      *v11 = v0;
      v11[1] = sub_1003A0DF0;

      return sub_1003A1654();
    }

    else
    {
      v12 = swift_task_alloc();
      v0[19] = v12;
      *v12 = v0;
      v12[1] = sub_1003A10D8;
      v13 = v0[13];

      return sub_1003A1BCC(v13);
    }
  }
}

uint64_t sub_1003A0DF0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1003A12C4;
  }

  else
  {
    v5 = sub_1003A0F2C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003A0F2C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[6];

  type metadata accessor for OpenTranscriptIntentImplementation();
  v5 = NowPlayingHostedContentID.transcript.unsafeMutableAddressor();
  swift_beginAccess();
  v6 = type metadata accessor for NowPlayingHostedContentID();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  sub_10002B22C();

  dispatch thunk of NowPlayingViewModel.updateContentSelection(_:animated:)();

  sub_100009104(v4, &unk_100577240);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A10D8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1003A1374;
  }

  else
  {
    v5 = sub_1003A1214;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003A1214()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A12C4()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A1374()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1003A1424()
{
  v0 = type metadata accessor for EpisodeEntity();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  type metadata accessor for OpenTranscriptIntentImplementation();
  v6 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v6)
  {
    v7 = v6;
    v8 = MPModelObject.uuid.getter();
    v10 = v9;

    if (v10)
    {
      OpenTranscriptIntent.episode.getter();
      v11 = EpisodeEntity.uuid.getter();
      v13 = v12;
      (*(v1 + 8))(v5, v0);
      if (v13)
      {
        if (v8 == v11 && v10 == v13)
        {

          return;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {

          return;
        }
      }

      else
      {
      }
    }

    v16 = v7;
    v17 = MPModelObject.adamID.getter();
    v19 = v18;

    if (v19)
    {

      return;
    }

    if (v17 < 0)
    {
      __break(1u);
    }

    else
    {
      OpenTranscriptIntent.episode.getter();
      v20 = EpisodeEntity.adamID.getter();

      (*(v1 + 8))(v3, v0);
      if ((v20 & 0x8000000000000000) == 0)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003A1654()
{
  v1[7] = v0;
  v2 = type metadata accessor for ActionMetricsBehavior();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for ActionOutcome();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v5;
  v1[16] = v4;

  return _swift_task_switch(sub_1003A17A4, v5, v4);
}

uint64_t sub_1003A17A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = type metadata accessor for PresentNowPlayingAction();
  swift_allocObject();
  v5 = PresentNowPlayingAction.init()();
  v0[17] = v5;
  type metadata accessor for OpenTranscriptIntentImplementation();
  swift_getObjectType();
  v0[5] = v4;
  v0[6] = sub_1003A288C(&qword_100580578, &type metadata accessor for PresentNowPlayingAction);
  v0[2] = v5;
  (*(v2 + 104))(v1, enum case for ActionMetricsBehavior.notProcessed(_:), v3);

  v0[18] = ActionRunner.perform(_:withMetrics:asPartOf:)();
  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1003A1974;
  v7 = v0[13];

  return Promise.then()(v7);
}

uint64_t sub_1003A1974()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];
    v5 = sub_1003A1B38;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v3 = v2[15];
    v4 = v2[16];
    v5 = sub_1003A1AAC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003A1AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A1B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A1BCC(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for ActionMetricsBehavior();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for ActionOutcome();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  type metadata accessor for ActionMetrics();
  v2[20] = swift_task_alloc();
  v5 = type metadata accessor for FlowDestinationPageHeader();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for FlowPresentationContext();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  sub_100168088(&qword_100574E18);
  v2[27] = swift_task_alloc();
  type metadata accessor for PageMetrics();
  v2[28] = swift_task_alloc();
  v7 = type metadata accessor for TranscriptRequestInformation();
  v2[29] = v7;
  v2[30] = *(v7 - 8);
  v2[31] = swift_task_alloc();
  v8 = type metadata accessor for FlowDestination();
  v2[32] = v8;
  v2[33] = *(v8 - 8);
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v10;
  v2[37] = v9;

  return _swift_task_switch(sub_1003A1F1C, v10, v9);
}

uint64_t sub_1003A1F1C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[31];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v7 = v0[25];
  v23 = v0[26];
  v20 = v0[32];
  v21 = v0[24];
  v8 = v0[12];
  sub_100168088(&unk_1005747F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100400790;
  (*(v4 + 16))(v3, v8, v5);
  static PageMetrics.notInstrumented.getter();
  v9 = type metadata accessor for EpisodeOffer();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  type metadata accessor for TranscriptDetail();
  swift_allocObject();
  *v1 = TranscriptDetail.init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)();
  (*(v2 + 104))(v1, enum case for FlowDestination.episodeDetailTranscript(_:), v20);
  (*(v7 + 104))(v23, enum case for FlowPresentationContext.pushDetail(_:), v21);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  LOBYTE(v1) = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v1;
  v11 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v11;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v1)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v11)
  {
    Link.Presentation.init(rawValue:)();
  }

  v12 = v0[15];
  v22 = v0[16];
  v24 = v0[14];
  (*(v0[22] + 104))(v0[23], enum case for FlowDestinationPageHeader.standard(_:), v0[21]);
  static ActionMetrics.notInstrumented.getter();
  v13 = type metadata accessor for FlowAction();
  swift_allocObject();
  v14 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  *(v25 + 56) = v13;
  *(v25 + 64) = sub_1003A288C(&unk_10057A0D0, &type metadata accessor for FlowAction);
  *(v25 + 32) = v14;
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  v15 = type metadata accessor for TabChangeAction();
  swift_allocObject();
  v16 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  v0[38] = v16;
  type metadata accessor for OpenTranscriptIntentImplementation();
  swift_getObjectType();
  v0[5] = v15;
  v0[6] = sub_1003A288C(&qword_10057ADD0, &type metadata accessor for TabChangeAction);
  v0[2] = v16;
  (*(v12 + 104))(v22, enum case for ActionMetricsBehavior.notProcessed(_:), v24);

  v0[39] = ActionRunner.perform(_:withMetrics:asPartOf:)();
  (*(v12 + 8))(v22, v24);
  sub_100004590((v0 + 2));
  v17 = swift_task_alloc();
  v0[40] = v17;
  *v17 = v0;
  v17[1] = sub_1003A23D4;
  v18 = v0[19];

  return Promise.then()(v18);
}

uint64_t sub_1003A23D4()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1003A2600;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v3 = v2[36];
    v4 = v2[37];
    v5 = sub_1003A250C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003A250C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A2600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A26FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10021A620;

  return sub_10039FDF0(a1, a2, a3);
}

uint64_t sub_1003A27AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001C51C;

  return sub_1003A09D4();
}

unint64_t sub_1003A2838()
{
  result = qword_1005830B8;
  if (!qword_1005830B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005830B8);
  }

  return result;
}

uint64_t sub_1003A288C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003A2904()
{
  result = qword_1005830C0[0];
  if (!qword_1005830C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1005830C0);
  }

  return result;
}

id sub_1003A29C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundTaskManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id MTFeedUpdateManager.statusManager.getter()
{
  result = [v0 feedManager];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1003A2A5C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5)
{
  v25[1] = a5;
  v26 = a4;
  v30 = a3;
  v33 = a2;
  type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v25[0] = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = v25 - v7;
  v27 = sub_10016AADC(_swiftEmptyArrayStorage);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v28 = xmmword_1004007C0;
  v32 = v12;
  v29 = a1 + 56;
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

    while (1)
    {
      v13 = v14;
LABEL_12:
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v17 = (*(a1 + 48) + ((v13 << 10) | (16 * v16)));
      v19 = *v17;
      v18 = v17[1];

      v20 = String._bridgeToObjectiveC()();
      v21 = [v33 episodeForUuid:v20];

      if (v21)
      {
        break;
      }

      static os_log_type_t.info.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v15 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)();

      v14 = v13;
      v12 = v32;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    sub_1003A3588(v19, v18, v21, v33, v31);
    v22 = v25[0];
    sub_10033C788(v31, v25[0]);
    v23 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v23;
    sub_10025F5FC(v22, v19, v18, isUniquelyReferenced_nonNull_native);

    v27 = v34;
    v8 = v29;
    v12 = v32;
  }

LABEL_7:
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      v26(v27);

      return;
    }

    v11 = *(v8 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003A2E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v21 = a3;
  sub_100168088(&qword_100583368);
  __chkstk_darwin();
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = *(v3 + 16);

  v12 = v10(v11);

  v13 = sub_100168088(&unk_1005817E0);
  v14 = *(v13 - 8);
  (*(v14 + 56))(v9, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = v9;
  v15[6] = v4;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003A6180;
  *(v16 + 24) = v15;
  aBlock[4] = sub_10002D7F0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  aBlock[3] = &unk_1004F2C58;
  v17 = _Block_copy(aBlock);
  v18 = v12;

  [v18 performBlockAndWait:v17];
  _Block_release(v17);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v20 = v22;
    sub_1003A6190(v9, v22);
    result = (*(v14 + 48))(v20, 1, v13);
    if (result != 1)
    {

      sub_100010498(v20, v21, &unk_1005817E0);
      sub_100009104(v9, &qword_100583368);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003A313C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100583368);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 episodeForUuid:v10];

  if (v11)
  {
    sub_1003A3588(a2, a3, v11, a1, v9);

    v14 = sub_100168088(&unk_1005817E0);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    return sub_1003A6200(v9, a4);
  }

  else
  {
    sub_100009104(a4, &qword_100583368);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 2;
    v12 = sub_100168088(&unk_1005817E0);
    swift_storeEnumTagMultiPayload();
    v13 = *(*(v12 - 8) + 56);

    return v13(a4, 0, 1, v12);
  }
}

void sub_1003A3588(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v113 = a5;
  v124 = a4;
  v128 = a2;
  v129 = a3;
  v127 = a1;
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v6 = &v108[-v5];
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v115 = &v108[-v7];
  v8 = type metadata accessor for URL();
  v117 = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin();
  v114 = &v108[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v116 = &v108[-v10];
  v11 = type metadata accessor for BugReportFrequency();
  v123 = *(v11 - 8);
  __chkstk_darwin();
  v126 = &v108[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for BugReport.Domain();
  v120 = *(v13 - 8);
  v121 = v13;
  __chkstk_darwin();
  v15 = &v108[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = type metadata accessor for BugReport.ErrorKind();
  v16 = *(v119 - 8);
  __chkstk_darwin();
  v18 = &v108[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for PodcastsSystem();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin().n128_u64[0];
  v23 = &v108[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([v129 isDownloaded])
  {
    v112 = v6;
    static os_log_type_t.error.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v125 = v11;
    v24 = static OS_os_log.downloads.getter();
    os_log(_:dso:log:_:_:)();

    sub_100004428(v122 + 32, v131);
    v111 = v133;
    v122 = v132;
    v110 = sub_1000044A0(v131, v132);
    (*(v20 + 104))(v23, enum case for PodcastsSystem.downloads(_:), v19);
    (*(v16 + 104))(v18, enum case for BugReport.ErrorKind.duplicateDownloads(_:), v119);
    (*(v120 + 104))(v15, enum case for BugReport.Domain.podcasts(_:), v121);
    v25 = objc_allocWithZone(type metadata accessor for BugReport());
    v26 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    v27 = v123;
    (*(v123 + 104))(v126, enum case for BugReportFrequency.daily(_:), v125);
    sub_100168088(&qword_100573618);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007A0;
    v130[0] = 0xD000000000000013;
    v130[1] = 0x8000000100473060;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    v29 = v128;
    *(inited + 72) = v127;
    *(inited + 80) = v29;
    strcpy(v130, "PodcastAdamID");
    HIWORD(v130[1]) = -4864;

    AnyHashable.init<A>(_:)();
    v30 = v129;
    v31 = [v129 podcast];
    if (v31)
    {
      v32 = v31;
      [v31 storeCollectionId];
      v130[0] = AdamID.init(rawValue:)();
      sub_1000366D8();
      v33 = BinaryInteger.description.getter();
      v35 = v34;

      v36 = (inited + 144);
      *(inited + 168) = &type metadata for String;
      if (v35)
      {
        *v36 = v33;
        goto LABEL_7;
      }
    }

    else
    {
      v36 = (inited + 144);
      *(inited + 168) = &type metadata for String;
    }

    *v36 = 0x49434550534E553CLL;
    v35 = 0xED00003E44454946;
LABEL_7:
    *(inited + 152) = v35;
    strcpy(v130, "PodcastsUUID");
    BYTE5(v130[1]) = 0;
    HIWORD(v130[1]) = -5120;
    AnyHashable.init<A>(_:)();
    v37 = [v30 podcastUuid];
    if (v37)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = (inited + 216);
      *(inited + 240) = &type metadata for String;
      if (v41)
      {
        *v42 = v39;
        goto LABEL_12;
      }
    }

    else
    {
      v42 = (inited + 216);
      *(inited + 240) = &type metadata for String;
    }

    *v42 = 0x49434550534E553CLL;
    v41 = 0xED00003E44454946;
LABEL_12:
    *(inited + 224) = v41;
    strcpy(v130, "EpisodeAdamID");
    HIWORD(v130[1]) = -4864;
    AnyHashable.init<A>(_:)();
    v43 = [v30 storeTrackId];
    *(inited + 312) = &type metadata for Int64;
    *(inited + 288) = v43;
    v130[0] = 0xD000000000000013;
    v130[1] = 0x8000000100473080;
    AnyHashable.init<A>(_:)();
    v44 = [v124 name];
    if (v44)
    {
      v45 = v44;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = (inited + 360);
      *(inited + 384) = &type metadata for String;
      if (v48)
      {
        *v49 = v46;
        v50 = v126;
LABEL_17:
        *(inited + 368) = v48;
        sub_10016A0DC(inited);
        swift_setDeallocating();
        sub_100168088(&qword_100578590);
        swift_arrayDestroy();
        dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

        (*(v27 + 8))(v50, v125);
        sub_100004590(v131);
        v6 = v112;
        goto LABEL_18;
      }
    }

    else
    {
      v49 = (inited + 360);
      *(inited + 384) = &type metadata for String;
    }

    v50 = v126;
    *v49 = 0x49434550534E553CLL;
    v48 = 0xED00003E44454946;
    goto LABEL_17;
  }

LABEL_18:
  v51 = v129;
  if ([v129 feedDeleted])
  {
    sub_1002178A8();
    swift_allocError();
    v52 = v128;
    *v53 = v127;
    *(v53 + 8) = v52;
    *(v53 + 16) = 1;

LABEL_34:
    swift_willThrow();
    return;
  }

  if ([v51 isRestricted])
  {
    sub_1002178A8();
    swift_allocError();
    v54 = v128;
    *v55 = v127;
    *(v55 + 8) = v54;
    *(v55 + 16) = 0;

    goto LABEL_34;
  }

  if (([v51 isExternalType] & 1) != 0 || (objc_msgSend(v51, "isMedia") & 1) == 0)
  {
    sub_1002178A8();
    swift_allocError();
    *v65 = xmmword_100410C90;
LABEL_33:
    *(v65 + 16) = 3;
    goto LABEL_34;
  }

  v56 = [v51 enclosureURL];
  if (!v56)
  {
LABEL_32:
    sub_1002178A8();
    swift_allocError();
    *v65 = 0;
    *(v65 + 8) = 0;
    goto LABEL_33;
  }

  v57 = v56;
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

    goto LABEL_32;
  }

  v62 = v115;
  URL.init(string:)();

  v64 = v117;
  v63 = v118;
  if ((*(v117 + 48))(v62, 1, v118) == 1)
  {
    sub_100009104(v62, &qword_100574040);
    goto LABEL_32;
  }

  v126 = *(v64 + 32);
  v127 = v64 + 32;
  (v126)(v116, v62, v63);
  v66 = v51;
  v67 = [v51 podcast];
  if (!v67)
  {
    goto LABEL_38;
  }

  v68 = v67;
  [v67 storeCollectionId];
  AdamID.init(rawValue:)();
  if (AdamID.isEmpty.getter())
  {

LABEL_38:
    v69 = 0;
    LODWORD(v124) = 1;
    goto LABEL_41;
  }

  [v68 storeCollectionId];
  v69 = AdamID.init(rawValue:)();

  if (v69 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  LODWORD(v124) = 0;
LABEL_41:
  v128 = MTEpisode.adamID.getter();
  v125 = v69;
  if (v70 & 1) != 0 || (AdamID.isEmpty.getter())
  {
    v128 = 0;
    LODWORD(v123) = 1;
  }

  else
  {
    if (v128 < 0)
    {
LABEL_78:
      __break(1u);
      return;
    }

    LODWORD(v123) = 0;
  }

  (*(v64 + 16))(v114, v116, v63);
  v71 = [v51 isAudio];
  [v51 duration];
  v73 = v72;
  if (v72 > 0.0)
  {
    [v51 duration];
    if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v74 > -9.22337204e18)
    {
      if (v74 < 9.22337204e18)
      {
        v122 = v74;
        goto LABEL_52;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v122 = 0;
LABEL_52:
  v75 = [v51 byteSize];
  if (v75 < 1)
  {
    v121 = 0;
  }

  else
  {
    v121 = [v51 byteSize];
  }

  v76 = [v51 guid];
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v79;
    v120 = v78;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v80 = [v51 podcast];
  if (v80 && (v81 = v80, v82 = [v80 title], v81, v82))
  {
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v83;
  }

  else
  {
    v115 = 0;
    v112 = 0;
  }

  v84 = [v51 podcast];
  if (v84 && (v85 = v84, v86 = [v84 feedURL], v85, v86))
  {
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v88;
    v111 = v87;
  }

  else
  {
    v110 = 0;
    v111 = 0;
  }

  v109 = v71 ^ 1;
  v89 = [v66 podcast];
  if (v89 && (v90 = v89, v91 = [v89 updatedFeedURL], v90, v91))
  {
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;
  }

  else
  {
    v92 = 0;
    v94 = 0;
  }

  v95 = [v66 lastCacheDeletePurge];
  if (v95)
  {
    v96 = v95;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = 0;
  }

  else
  {
    v97 = 1;
  }

  v98 = v118;
  (*(v117 + 8))(v116, v118);
  v99 = type metadata accessor for Date();
  (*(*(v99 - 8) + 56))(v6, v97, 1, v99);
  v100 = type metadata accessor for EpisodeMetadata(0);
  v101 = v113;
  (v126)(v113 + v100[11], v114, v98);
  *(v101 + v100[12]) = v109;
  v102 = v101 + v100[13];
  *v102 = v121;
  *(v102 + 8) = v75 < 1;
  *v101 = 0;
  *(v101 + 8) = 0;
  v103 = v119;
  *(v101 + 16) = v120;
  *(v101 + 24) = v103;
  *(v101 + 32) = v128;
  *(v101 + 40) = v123;
  *(v101 + 48) = v125;
  *(v101 + 56) = v124;
  v105 = v111;
  v104 = v112;
  *(v101 + 64) = v115;
  *(v101 + 72) = v104;
  v106 = v110;
  *(v101 + 80) = v105;
  *(v101 + 88) = v106;
  *(v101 + 96) = v92;
  *(v101 + 104) = v94;
  v107 = v101 + v100[14];
  *v107 = v122;
  *(v107 + 8) = v73 <= 0.0;
  sub_100010498(v6, v101 + v100[15], &qword_100574760);
}

void sub_1003A4464(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, uint64_t), uint64_t a6, uint64_t a7, double a8)
{
  v47 = a7;
  v50 = a6;
  v51 = a5;
  v52 = type metadata accessor for URL();
  v13 = *(v52 - 8);
  v14 = __chkstk_darwin(v52);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = type metadata accessor for Logger();
  v48 = *(v19 - 8);
  v49 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v46 = a2;
  v25 = String._bridgeToObjectiveC()();
  v26 = [a1 episodeForUuid:v25];

  v27 = (v13 + 16);
  if (v26)
  {
    v45 = a1;
    static Logger.database.getter();
    (*v27)(v18, a4, v52);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = a4;
      v31 = v30;
      v53 = swift_slowAlloc();
      *v31 = 136315650;
      *(v31 + 4) = sub_1000153E0(v46, a3, &v53);
      *(v31 + 12) = 2080;
      v32 = URL.absoluteString.getter();
      v34 = v33;
      (*(v13 + 8))(v18, v52);
      v35 = sub_1000153E0(v32, v34, &v53);

      *(v31 + 14) = v35;
      *(v31 + 22) = 2048;
      *(v31 + 24) = a8;
      _os_log_impl(&_mh_execute_header, v28, v29, "Updating episode %s with assetURL %s at downloadDate %f", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v18, v52);
    }

    (*(v48 + 8))(v24, v49);
    URL.absoluteString.getter();
    v43 = String._bridgeToObjectiveC()();

    [v26 setAssetURL:v43];

    [v26 setByteSize:v47];
    [v26 setDownloadDate:a8];
    [v45 saveInCurrentBlock];
    v51(0, 0);
  }

  else
  {
    static Logger.database.getter();
    (*v27)(v16, a4, v52);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v38 = 136315650;
      *(v38 + 4) = sub_1000153E0(v46, a3, &v53);
      *(v38 + 12) = 2080;
      v39 = URL.absoluteString.getter();
      v41 = v40;
      (*(v13 + 8))(v16, v52);
      v42 = sub_1000153E0(v39, v41, &v53);

      *(v38 + 14) = v42;
      *(v38 + 22) = 2048;
      *(v38 + 24) = a8;
      _os_log_impl(&_mh_execute_header, v36, v37, "Failed to locate episode %s to update with assetURL %s at downloadDate %f", v38, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v13 + 8))(v16, v52);
    }

    (*(v48 + 8))(v22, v49);
    v51(0, 1);
  }
}

void sub_1003A4A00(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v11 = type metadata accessor for MediaLibraryPid();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = String._bridgeToObjectiveC()();
  v16 = [a1 episodeForUuid:v15];

  if (v16)
  {
    v24 = a2;
    v26 = a1;
    v17 = static os_log_type_t.default.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v18 = static OS_os_log.downloads.getter();
    (*(v12 + 16))(v14, a6, v11);
    v25 = v17;
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v23 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 134218242;
      v22 = MediaLibraryPid.value.getter();
      (*(v12 + 8))(v14, v11);
      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1000153E0(v24, a3, &v28);
      _os_log_impl(&_mh_execute_header, v18, v25, "Updating MTEpisode with media library persistent id %lld. EpisodeUUID %s.", v20, 0x16u);
      sub_100004590(v21);
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    [v16 setPersistentID:MediaLibraryPid.value.getter()];
    [v26 saveInCurrentBlock];
    v27(0, 0);
  }

  else
  {
    v27(0, 1);
  }
}

uint64_t sub_1003A4CD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 episodeForUuid:v6];

  if (!v7)
  {
    return a4(0, 0, 1);
  }

  v8 = [v7 podcast];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = [v8 title];

  if (!v10)
  {
    v8 = 0;
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v8 = v11;
LABEL_8:
  a4(v8, v13, 0);
}

uint64_t sub_1003A4DF4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 episodeForUuid:v6];

  if (!v7)
  {
    return a4(0, 0, 1);
  }

  v8 = [v7 title];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  a4(v10, v12, 0);
}

uint64_t sub_1003A4EF4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = type metadata accessor for URL();
  v31 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_100573650);
  __chkstk_darwin(v14);
  v16 = (v29 - v15);
  v17 = String._bridgeToObjectiveC()();
  v18 = [a1 episodeForUuid:v17];

  if (v18)
  {
    v29[1] = a5;
    v30 = a4;
    v19 = [v18 assetURL];
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      v21 = v31;
      if ((*(v31 + 48))(v10, 1, v11) != 1)
      {
        (*(v21 + 32))(v13, v10, v11);
        (*(v21 + 16))(v16, v13, v11);
        swift_storeEnumTagMultiPayload();
        v30(v16);

        sub_100009104(v16, &qword_100573650);
        return (*(v21 + 8))(v13, v11);
      }

      sub_100009104(v10, &qword_100574040);
    }

    sub_100168088(&qword_1005796A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v23;
    *(inited + 48) = 0xD000000000000018;
    *(inited + 56) = 0x80000001004731F0;
    sub_10016A444(inited);
    swift_setDeallocating();
    sub_100009104(inited + 32, &qword_100581D00);
    v24 = objc_allocWithZone(NSError);
    v25 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v27 = [v24 initWithDomain:v25 code:1 userInfo:isa];

    *v16 = v27;
    swift_storeEnumTagMultiPayload();
    v30(v16);
  }

  else
  {
    *v16 = 0;
    swift_storeEnumTagMultiPayload();
    a4(v16);
  }

  return sub_100009104(v16, &qword_100573650);
}

void sub_1003A5350(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t))
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a1 episodeForUuid:v6];

  if (v7)
  {
    [v7 setAssetURL:0];
    [v7 setByteSize:0];
    [a1 saveInCurrentBlock];
    a4(0, 0);
  }

  else
  {
    a4(0, 1);
  }
}

uint64_t sub_1003A5440(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  v23 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v21 = a1 + 40;
LABEL_2:
  v8 = v7 + 16 * v4;
  while (1)
  {
    if (v6 == v4)
    {
      if (v5 >> 62)
      {
        goto LABEL_24;
      }

      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

    if (v4 >= v6)
    {
      break;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_21;
    }

    v10 = String._bridgeToObjectiveC()();
    v11 = [a2 episodeForUuid:v10];

    ++v4;
    v8 += 16;
    if (v11)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v23;
      v4 = v9;
      v7 = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (!v12)
    {
      break;
    }

LABEL_12:
    v13 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setAssetURL:0];
      [v15 setByteSize:0];

      ++v13;
      if (v16 == v12)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_25:

  v23 = 0;
  if ([a2 save:&v23])
  {
    v17 = v23;
    return a3(0, 0);
  }

  else
  {
    v19 = v23;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    a3(v20, 1);
  }
}

void sub_1003A56F4(uint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v87 = a4;
  v88 = a3;
  v89 = a2;
  v5 = type metadata accessor for MediaLibraryPid();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v85 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v84 = &v83 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v83 - v12;
  v14 = __chkstk_darwin(v11);
  v86 = &v83 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = *(a1 + 16);
  v20 = _swiftEmptyArrayStorage;
  v96 = v16;
  v90 = v6;
  if (v19)
  {
    v23 = *(v6 + 16);
    v21 = v6 + 16;
    v22 = v23;
    v92 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v93 = v23;
    v24 = a1 + v92;
    v25 = *(v21 + 56);
    v91 = (v21 - 8);
    v94 = v13;
    v95 = v21 + 16;
    do
    {
      (v22)(v18, v24, v5);
      if (MediaLibraryPid.isValid.getter())
      {
        v26 = *v95;
        (*v95)(v13, v18, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001A7804(0, v20[2] + 1, 1);
          v20 = v97;
        }

        v29 = v20[2];
        v28 = v20[3];
        if (v29 >= v28 >> 1)
        {
          sub_1001A7804(v28 > 1, v29 + 1, 1);
          v20 = v97;
        }

        v20[2] = v29 + 1;
        v30 = v20 + v92 + v29 * v25;
        v13 = v94;
        v5 = v96;
        v26(v30, v94, v96);
        v22 = v93;
      }

      else
      {
        (*v91)(v18, v5);
      }

      v24 += v25;
      --v19;
    }

    while (v19);
  }

  v97 = _swiftEmptyArrayStorage;
  v31 = v20[2];
  if (v31)
  {
    v95 = *(v90 + 16);
    v32 = v20 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v33 = *(v90 + 72);
    v34 = (v90 + 8);
    v94 = _swiftEmptyArrayStorage;
    v35 = v86;
    v36 = v96;
    (v95)(v86, v32, v96);
    while (1)
    {
      v37 = [objc_allocWithZone(NSNumber) initWithLongLong:MediaLibraryPid.value.getter()];
      (*v34)(v35, v36);
      if (v37)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v94 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v94 = v97;
      }

      v32 += v33;
      if (!--v31)
      {
        break;
      }

      (v95)(v35, v32, v36);
    }
  }

  v38 = objc_opt_self();
  sub_100009F1C(0, &qword_1005742A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v40 = [v38 predicateForPersistentIds:isa];

  v41 = [v89 objectsInEntity:kMTEpisodeEntityName predicate:v40 sortDescriptors:0];
  if (!v41 || (v42 = v41, sub_100009F1C(0, &qword_1005739D0), v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v42, v44 = sub_10037F7E0(v43), , !v44))
  {
    sub_100168088(&qword_1005796A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v78;
    *(inited + 48) = 0xD000000000000032;
    *(inited + 56) = 0x8000000100473180;
    sub_10016A444(inited);
    swift_setDeallocating();
    sub_100009104(inited + 32, &qword_100581D00);
    v79 = objc_allocWithZone(NSError);
    v80 = String._bridgeToObjectiveC()();
    v81 = Dictionary._bridgeToObjectiveC()().super.isa;

    v82 = [v79 initWithDomain:v80 code:2 userInfo:v81];

    v88(v82, 1);
    return;
  }

  v94 = v40;
  v95 = sub_10016ADEC(_swiftEmptyArrayStorage);
  v45 = v44 & 0xFFFFFFFFFFFFFF8;
  if (!(v44 >> 62))
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v90;
    if (v46)
    {
      goto LABEL_23;
    }

LABEL_46:

    v88(v95, 0);

    return;
  }

LABEL_50:
  v46 = _CocoaArrayWrapper.endIndex.getter();
  v47 = v90;
  if (!v46)
  {
    goto LABEL_46;
  }

LABEL_23:
  v48 = 0;
  v92 = v47 + 40;
  v93 = (v47 + 32);
  while (2)
  {
    v49 = v48;
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v49 >= *(v45 + 16))
        {
          goto LABEL_49;
        }

        v51 = *(v44 + 8 * v49 + 32);
      }

      v52 = v51;
      v48 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v53 = [v51 uuid];
      if (v53)
      {
        break;
      }

LABEL_26:
      static os_log_type_t.error.getter();
      sub_100009F1C(0, &qword_1005748A0);
      v50 = static OS_os_log.downloads.getter();
      os_log(_:dso:log:_:_:)();

      ++v49;
      if (v48 == v46)
      {
        goto LABEL_46;
      }
    }

    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (!sub_1003A6270([v52 persistentID]))
    {

      goto LABEL_26;
    }

    v91 = v45;
    [v52 persistentID];
    v58 = v84;
    MediaLibraryPid.init(_:)();
    v59 = *v93;
    (*v93)(v85, v58, v96);
    v60 = v95;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v97 = v60;
    v62 = sub_10000F9A8(v55, v57);
    v64 = v60[2];
    v65 = (v63 & 1) == 0;
    v66 = __OFADD__(v64, v65);
    v67 = v64 + v65;
    if (v66)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v60[3] >= v67)
    {
      if ((v61 & 1) == 0)
      {
        v95 = v62;
        v71 = v63;
        sub_100261190();
        v72 = v71;
        v62 = v95;
        v69 = v90;
        if (v72)
        {
          goto LABEL_41;
        }

LABEL_43:
        v73 = v97;
        *(v97 + 8 * (v62 >> 6) + 64) |= 1 << v62;
        v74 = (v73[6] + 16 * v62);
        *v74 = v55;
        v74[1] = v57;
        v59((v73[7] + *(v69 + 72) * v62), v85, v96);

        v75 = v73[2];
        v66 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (!v66)
        {
          v95 = v73;
          v73[2] = v76;
LABEL_45:
          v45 = v91;
          if (v48 != v46)
          {
            continue;
          }

          goto LABEL_46;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_40:
      v69 = v90;
      if (v63)
      {
LABEL_41:
        v70 = v62;

        v95 = v97;
        (*(v69 + 40))(*(v97 + 56) + *(v69 + 72) * v70, v85, v96);

        goto LABEL_45;
      }

      goto LABEL_43;
    }

    break;
  }

  LODWORD(v95) = v63;
  sub_10025E0D0(v67, v61);
  v62 = sub_10000F9A8(v55, v57);
  v68 = v63 & 1;
  LOBYTE(v63) = v95;
  if ((v95 & 1) == v68)
  {
    goto LABEL_40;
  }

LABEL_54:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1003A6058(void *a1, uint64_t a2, uint64_t a3, objc_class *a4, void (*a5)(void *, uint64_t))
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 episodeForUuid:v8];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = sub_1002FA5D0(a4);
  if (!v10)
  {

LABEL_7:
    a5(0, 1);
    return;
  }

  v11 = v10;
  a5(v10, 0);
}

uint64_t sub_1003A6140()
{

  sub_100004590(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1003A6190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100583368);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A6200(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100583368);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A6288(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1003A62A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1003A62F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1003A6348(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

char *sub_1003A63FC(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController] = 0;
  v6 = &v3[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_newEpisodeNotifcationGroupInitialHighlightedPodcastUuid];
  v7 = type metadata accessor for MTNotificationSettingsSectionedViewController();
  *v6 = 0;
  *(v6 + 1) = 0;
  v8 = [objc_allocWithZone(v7) init];
  *&v3[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController] = v8;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v21.receiver = v3;
  v21.super_class = type metadata accessor for MTNotificationSettingsViewController();
  v10 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v9, a3);

  *(*&v10[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController] + OBJC_IVAR____TtC8Podcasts45MTNotificationSettingsSectionedViewController_delegate + 8) = &off_1004F2D10;
  swift_unknownObjectWeakAssign();
  v11 = v10;
  v12 = [v11 navigationItem];
  v13 = [objc_opt_self() mainBundle];
  v22._object = 0xED0000736E6F6974;
  v22._countAndFlagsBits = 0x6163696669746F4ELL;
  v14._object = 0x8000000100473290;
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v22);

  v16 = String._bridgeToObjectiveC()();

  [v12 setTitle:v16];

  v17 = [v11 navigationItem];
  [v17 setLargeTitleDisplayMode:2];

  v18 = [v11 navigationItem];
  v19 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v11 action:"dismissButtonTappedFrom:"];

  [v18 setRightBarButtonItem:v19];
  return v11;
}

Swift::Void __swiftcall MTNotificationSettingsViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MTNotificationSettingsViewController();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_sectionedContentViewController];
  v2 = *&v0[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController];
  *&v0[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController] = v1;
  v3 = v1;
  sub_1003A6B64(v2);
}

Swift::Void __swiftcall MTNotificationSettingsViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTNotificationSettingsViewController();
  objc_msgSendSuper2(&v3, "viewWillAppear:", a1);
  sub_1001CF2A0();
}

Swift::Void __swiftcall MTNotificationSettingsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTNotificationSettingsViewController();
  objc_msgSendSuper2(&v3, "viewDidAppear:", a1);
  if (qword_1005727E8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall MTNotificationSettingsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTNotificationSettingsViewController();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", a1);
  if (qword_1005727E8 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
}

void sub_1003A6B64(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC8Podcasts36MTNotificationSettingsViewController_contentViewController];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

LABEL_5:
    v27 = v4;
    [v27 willMoveToParentViewController:v2];
    v9 = [v27 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        [v11 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;

        [v10 setFrame:{v14, v16, v18, v20}];
        v21 = [v27 view];
        if (v21)
        {
          v22 = v21;
          [v21 setAutoresizingMask:18];

          [v2 addChildViewController:v27];
          v23 = [v2 view];
          if (v23)
          {
            v24 = v23;
            v25 = [v27 view];
            if (v25)
            {
              v26 = v25;
              [v24 addSubview:v25];

              [v27 didMoveToParentViewController:v2];
              [v2 addChildViewController:v27];

              return;
            }

LABEL_19:
            __break(1u);
            return;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v5 = a1;
  if (!v4 || (sub_1003A6F18(), v6 = v4, v5 = v5, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    v8 = v5;
    [v8 willMoveToParentViewController:0];
    [v8 removeFromParentViewController];
    [v8 didMoveToParentViewController:0];

    v4 = *&v2[v3];
    if (v4)
    {
      goto LABEL_5;
    }
  }
}

id MTNotificationSettingsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MTNotificationSettingsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003A6F18()
{
  result = qword_1005745E0;
  if (!qword_1005745E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005745E0);
  }

  return result;
}

uint64_t sub_1003A6F88()
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
  *(v9 + 16) = &unk_100410EE8;
  *(v9 + 24) = v8;

  v12[1] = Future<>.init(priority:unwrapping:)();
  sub_10031AD08();
  v10 = Publisher.eraseToAnyPublisher()();

  return v10;
}

uint64_t sub_1003A713C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A71D4, v4, v3);
}

uint64_t sub_1003A71D4()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1003A7310(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1003A7268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_1003A713C(v2, v3);
}

uint64_t sub_1003A7310(uint64_t a1, unint64_t a2)
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
    v9 = sub_1002BDD58(v4, v7, 10);

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

uint64_t sub_1003A7628()
{
  v0 = sub_100168088(&unk_100578410);
  __chkstk_darwin(v0 - 8);
  v2 = v25 - v1;
  v3 = sub_100168088(&unk_100575AE0);
  __chkstk_darwin(v3 - 8);
  v5 = (v25 - v4);
  sub_1001D29AC(v2);
  v6 = type metadata accessor for CarPlayTemplateInfo(0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6))
  {
    sub_100009104(v2, &unk_100578410);
    v7 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
LABEL_4:
    v9 = &unk_100575AE0;
    v10 = v5;
LABEL_5:
    sub_100009104(v10, v9);
    goto LABEL_6;
  }

  sub_1003A7A68(v2, v5);
  sub_100009104(v2, &unk_100578410);
  v8 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10027258C(v5);
    goto LABEL_6;
  }

  v13 = v5[1];
  v32 = *v5;
  v33[0] = v13;
  *(v33 + 9) = *(v5 + 25);
  v14 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v14)
  {
    v15 = v14;
    MPModelObject.uuid.getter();
  }

  v16 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v16)
  {
    v17 = v16;
    MPModelObject.adamID.getter();
  }

  sub_1001CC734(&v32, v30);
  if (v31)
  {
    sub_1001CC8A0(&v32);

    sub_1001CC8A0(v30);
    goto LABEL_6;
  }

  sub_1000109E4(v30, v29);
  sub_100004428(v29, &v27);
  sub_100168088(&unk_10057BB70);
  sub_100168088(&qword_100583458);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_100004590(v29);
    sub_1001CC8A0(&v32);
    v9 = &unk_100583460;
    v10 = v25;
    goto LABEL_5;
  }

  sub_1000109E4(v25, v28);
  sub_1000044A0(v28, v28[3]);
  v18 = dispatch thunk of PlayEpisodeActionModel.episodeIdentifier.getter();
  if (v20 != -1)
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
    v24 = static EpisodeStateIdentifier.generateIdsFrom(uuid:adamID:)();

    v11 = sub_1002D495C(v21, v22, v23 & 1, v24);
    sub_1003A7AD8(v21, v22, v23);

    sub_100004590(v29);
    sub_1001CC8A0(&v32);
    sub_100004590(v28);
    return v11 & 1;
  }

  sub_100004590(v29);
  sub_1001CC8A0(&v32);
  sub_100004590(v28);
LABEL_6:
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1003A7A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_100575AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A7AD8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001C1A4C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1003A7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_1003A7BE4;

  return sub_1003A7F90();
}

uint64_t sub_1003A7BE4()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1003A7D20, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1003A7D20()
{
  v20 = v0;
  static Logger.modernPlayback.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[3];
    v17 = v0[4];
    v18 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v5 = 136315394;
    v0[2] = *v4;
    sub_100168088(&qword_100583540);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000153E0(v8, v9, &v19);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Error migrating old player queue: %@", v5, 0x16u);
    sub_100009104(v6, &qword_100575B20);

    sub_100004590(v7);

    (*(v3 + 8))(v18, v17);
  }

  else
  {
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003A7F90()
{
  v1[33] = v0;
  v2 = type metadata accessor for MediaIdentifier();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v3 = type metadata accessor for PlaybackIntent.Option();
  v1[39] = v3;
  v1[40] = *(v3 - 8);
  v1[41] = swift_task_alloc();
  v4 = type metadata accessor for PlaybackController.QueueCommand();
  v1[42] = v4;
  v1[43] = *(v4 - 8);
  v1[44] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[45] = v5;
  v1[46] = *(v5 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  sub_100168088(&qword_1005791C8);
  v1[51] = swift_task_alloc();
  v6 = type metadata accessor for PlaybackIntent();
  v1[52] = v6;
  v1[53] = *(v6 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_1003A8258, 0, 0);
}

uint64_t sub_1003A8258()
{
  v1 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  [v1 setBool:1 forKey:kMTSuccessfullyMigratedLegacyPlaybackQueue];

  v2 = [objc_opt_self() _loadActivityForRestoration];
  v0[58] = v2;
  if (v2)
  {
    v3 = v2;
    sub_100009F1C(0, &qword_100583570);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1003A8520;
    v5 = swift_continuation_init();
    v0[17] = sub_100168088(&qword_100583578);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1003AA698;
    v0[13] = &unk_1004F2D90;
    v0[14] = v5;
    [ObjCClassFromMetadata restoreActivity:v3 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_1003AB9C8();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1003A8520()
{

  return _swift_task_switch(sub_1003A8600, 0, 0);
}

uint64_t sub_1003A8600()
{
  v1 = v0[28];
  v0[59] = v1;
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[60] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[61] = v3;
      *v3 = v0;
      v3[1] = sub_1003A8800;
      v4 = v0[51];

      return sub_1002FB2BC(v4);
    }
  }

  v6 = v0[58];
  sub_1003AB9C8();
  swift_allocError();
  *v7 = 1;
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003A8800()
{

  return _swift_task_switch(sub_1003A88FC, 0, 0);
}

uint64_t sub_1003A88FC()
{
  v81 = v0;
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[59];
  if (v4 == 1)
  {
    v6 = v0[58];
    sub_100009104(v3, &qword_1005791C8);
    sub_1003AB9C8();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }

  else
  {
    (*(v2 + 32))(v0[57], v3, v1);
    static Logger.modernPlayback.getter();
    v10 = v5;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[59];
      v14 = v0[60];
      v15 = v0[46];
      v75 = v0[45];
      v77 = v0[50];
      v16 = v0[33];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v80[0] = v18;
      *v17 = 136315394;
      v0[32] = *v16;
      sub_100168088(&qword_100583540);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000153E0(v19, v20, v80);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      v22 = [v14 count];

      *(v17 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%s] Loaded manifest with %ld items", v17, 0x16u);
      sub_100004590(v18);

      v23 = *(v15 + 8);
      v23(v77, v75);
    }

    else
    {
      v24 = v0[59];
      v25 = v0[50];
      v26 = v0[45];
      v27 = v0[46];

      v23 = *(v27 + 8);
      v23(v25, v26);
    }

    v76 = v23;
    v0[62] = v23;
    v28 = v0[56];
    v78 = v0[53];
    v71 = v0[52];
    v73 = v0[55];
    v67 = v0[44];
    v68 = v0[43];
    v69 = v0[42];
    v66 = v0[41];
    v30 = v0[39];
    v29 = v0[40];
    sub_100168088(&qword_10057A0A8);
    v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100400790;
    v33 = *(v29 + 104);
    v33(v32 + v31, enum case for PlaybackIntent.Option.ignoreContinuousPlaybackSetting(_:), v30);
    sub_10016BA80(v32);
    swift_setDeallocating();
    v34 = *(v29 + 8);
    v34(v32 + v31, v30);
    swift_deallocClassInstance();
    PlaybackIntent.replacingOptions(_:)();

    v33(v66, enum case for PlaybackIntent.Option.startPlayback(_:), v30);
    PlaybackIntent.subtracingOption(_:)();
    v34(v66, v30);
    v35 = enum case for PlaybackController.QueueCommand.replace(_:);
    v36 = *(v68 + 104);
    v0[63] = v36;
    v0[64] = (v68 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v36(v67, v35, v69);
    static Logger.modernPlayback.getter();
    v37 = *(v78 + 16);
    v37(v73, v28, v71);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[55];
    if (v40)
    {
      v42 = v0[53];
      v70 = v0[54];
      v43 = v0[52];
      v72 = v0[45];
      v74 = v0[49];
      v44 = v0[33];
      v45 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v45 = 136315394;
      v0[31] = *v44;
      sub_100168088(&qword_100583540);
      v46 = String.init<A>(describing:)();
      v48 = sub_1000153E0(v46, v47, v80);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v37(v70, v41, v43);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      v52 = *(v42 + 8);
      v52(v41, v43);
      v53 = sub_1000153E0(v49, v51, v80);

      *(v45 + 14) = v53;
      _os_log_impl(&_mh_execute_header, v38, v39, "[%s] Created intent from legacy queue with %s Sending to engine when available.", v45, 0x16u);
      swift_arrayDestroy();

      v54 = v72;
      v55 = v74;
    }

    else
    {
      v56 = v0[52];
      v57 = v0[53];
      v58 = v0[49];
      v59 = v0[45];

      v52 = *(v57 + 8);
      v52(v41, v56);
      v55 = v58;
      v54 = v59;
    }

    v76(v55, v54);
    v0[65] = v52;
    v61 = v0[43];
    v60 = v0[44];
    v62 = v0[42];
    v0[66] = *(v0[33] + 16);
    v0[21] = v62;
    v0[22] = &protocol witness table for PlaybackController.QueueCommand;
    v63 = sub_10000E680(v0 + 18);
    (*(v61 + 16))(v63, v60, v62);
    v79 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
    v64 = swift_task_alloc();
    v0[67] = v64;
    *v64 = v0;
    v64[1] = sub_1003A9104;
    v65.n128_u64[0] = 5.0;

    return (v79)(v0 + 18, 0, v65);
  }
}

uint64_t sub_1003A9104(void *a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_1003A9EE4;
  }

  else
  {

    sub_100004590(v4 + 144);
    v5 = sub_1003A9234;
  }

  return _swift_task_switch(v5, 0, 0);
}

char *sub_1003A9234()
{
  v59 = v0;
  result = sub_1003AACCC();
  *(v0 + 552) = result;
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *(v0 + 280);
    v4 = *(v3 + 80);
    *(v0 + 592) = v4;
    *(v0 + 596) = enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    *(v0 + 600) = enum case for PlaybackController.QueueCommand.addItemToQueue(_:);
    *(v0 + 560) = v2;
    if (v2 > *(result + 2))
    {
      __break(1u);
    }

    else
    {
      v5 = *(v3 + 16);
      v7 = *(v0 + 296);
      v6 = *(v0 + 304);
      v8 = *(v0 + 272);
      v5(v6, &result[((v4 + 32) & ~v4) + *(v3 + 72) * (v2 - 1)], v8);
      static Logger.modernPlayback.getter();
      v9 = v7;
      v10 = v5;
      v5(v9, v6, v8);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 496);
      v15 = *(v0 + 384);
      v54 = v10;
      v55 = *(v0 + 360);
      v16 = *(v0 + 296);
      if (v13)
      {
        v50 = *(v0 + 288);
        v53 = *(v0 + 496);
        v52 = *(v0 + 384);
        v18 = *(v0 + 272);
        v17 = *(v0 + 280);
        v19 = *(v0 + 264);
        v51 = v12;
        v20 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v20 = 136315394;
        *(v0 + 240) = *v19;
        sub_100168088(&qword_100583540);
        v21 = String.init<A>(describing:)();
        v23 = sub_1000153E0(v21, v22, &v58);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v10(v50, v16, v18);
        v24 = String.init<A>(describing:)();
        v26 = v25;
        v27 = *(v17 + 8);
        v27(v16, v18);
        v28 = sub_1000153E0(v24, v26, &v58);

        *(v20 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v11, v51, "[%s] Appending %s to hard queue", v20, 0x16u);
        swift_arrayDestroy();

        v53(v52, v55);
      }

      else
      {
        v29 = *(v0 + 272);
        v30 = *(v0 + 280);

        v27 = *(v30 + 8);
        v27(v16, v29);
        v14(v15, v55);
      }

      *(v0 + 568) = v27;
      v31 = *(v0 + 600);
      v32 = *(v0 + 596);
      v33 = *(v0 + 504);
      v34 = *(v0 + 336);
      v35 = *(v0 + 304);
      v36 = *(v0 + 272);
      *(v0 + 208) = v34;
      *(v0 + 216) = &protocol witness table for PlaybackController.QueueCommand;
      v37 = sub_10000E680((v0 + 184));
      v38 = *(sub_100168088(&qword_100583580) + 48);
      v54(v37, v35, v36);
      v39 = type metadata accessor for PlaybackController.QueueCommand.Location();
      (*(*(v39 - 8) + 104))(v37 + v38, v32, v39);
      v33(v37, v31, v34);
      v56 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
      v40 = swift_task_alloc();
      *(v0 + 576) = v40;
      *v40 = v0;
      v40[1] = sub_1003A97F4;
      v41.n128_u64[0] = 5.0;

      return (v56)(v0 + 184, 0, v41);
    }
  }

  else
  {
    v42 = *(v0 + 520);
    v43 = *(v0 + 472);
    v44 = *(v0 + 448);
    v57 = *(v0 + 456);
    v45 = *(v0 + 416);
    v46 = *(v0 + 344);
    v47 = *(v0 + 352);
    v48 = *(v0 + 336);

    (*(v46 + 8))(v47, v48);
    v42(v44, v45);
    v42(v57, v45);

    v49 = *(v0 + 8);

    return v49();
  }

  return result;
}

uint64_t sub_1003A97F4(void *a1)
{
  v4 = *v2;
  *(*v2 + 584) = v1;

  if (v1)
  {

    v5 = sub_1003AA2AC;
  }

  else
  {

    sub_100004590(v4 + 184);
    v5 = sub_1003A992C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A992C()
{
  v60 = v0;
  v1 = *(v0 + 560);
  result = (*(v0 + 568))(*(v0 + 304), *(v0 + 272));
  if (v1 == 1)
  {
    v43 = *(v0 + 520);
    v44 = *(v0 + 472);
    v45 = *(v0 + 448);
    v58 = *(v0 + 456);
    v46 = *(v0 + 416);
    v47 = *(v0 + 344);
    v48 = *(v0 + 352);
    v49 = *(v0 + 336);

    (*(v47 + 8))(v48, v49);
    v43(v45, v46);
    v43(v58, v46);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    v3 = *(v0 + 560);
    *(v0 + 560) = v3 - 1;
    v4 = *(v0 + 552);
    if (v3 - 1 > *(v4 + 16))
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + 296);
      v5 = *(v0 + 304);
      v7 = *(v0 + 272);
      v8 = *(v0 + 280);
      v9 = *(v8 + 16);
      v9(v5, v4 + ((*(v0 + 592) + 32) & ~*(v0 + 592)) + *(v8 + 72) * (v3 - 2), v7);
      static Logger.modernPlayback.getter();
      v10 = v7;
      v11 = v9;
      v9(v6, v5, v10);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 496);
      v16 = *(v0 + 384);
      v55 = v9;
      v56 = *(v0 + 360);
      v17 = *(v0 + 296);
      if (v14)
      {
        v51 = *(v0 + 288);
        v54 = *(v0 + 496);
        v53 = *(v0 + 384);
        v19 = *(v0 + 272);
        v18 = *(v0 + 280);
        v52 = v13;
        v20 = *(v0 + 264);
        v21 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v21 = 136315394;
        *(v0 + 240) = *v20;
        sub_100168088(&qword_100583540);
        v22 = String.init<A>(describing:)();
        v24 = sub_1000153E0(v22, v23, &v59);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        v11(v51, v17, v19);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        v28 = *(v18 + 8);
        v28(v17, v19);
        v29 = sub_1000153E0(v25, v27, &v59);

        *(v21 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v12, v52, "[%s] Appending %s to hard queue", v21, 0x16u);
        swift_arrayDestroy();

        v54(v53, v56);
      }

      else
      {
        v30 = *(v0 + 272);
        v31 = *(v0 + 280);

        v28 = *(v31 + 8);
        v28(v17, v30);
        v15(v16, v56);
      }

      *(v0 + 568) = v28;
      v32 = *(v0 + 600);
      v33 = *(v0 + 596);
      v34 = *(v0 + 504);
      v35 = *(v0 + 336);
      v36 = *(v0 + 304);
      v37 = *(v0 + 272);
      *(v0 + 208) = v35;
      *(v0 + 216) = &protocol witness table for PlaybackController.QueueCommand;
      v38 = sub_10000E680((v0 + 184));
      v39 = *(sub_100168088(&qword_100583580) + 48);
      v55(v38, v36, v37);
      v40 = type metadata accessor for PlaybackController.QueueCommand.Location();
      (*(*(v40 - 8) + 104))(v38 + v39, v33, v40);
      v34(v38, v32, v35);
      v57 = &async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:) + async function pointer to dispatch thunk of PlaybackController.performWhenAvailable(_:options:timeout:);
      v41 = swift_task_alloc();
      *(v0 + 576) = v41;
      *v41 = v0;
      v41[1] = sub_1003A97F4;
      v42.n128_u64[0] = 5.0;

      return (v57)(v0 + 184, 0, v42);
    }
  }

  return result;
}

uint64_t sub_1003A9EE4()
{
  v33 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  v1(v2, v3);
  sub_100004590(v0 + 144);
  static Logger.modernPlayback.getter();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 464);
    v29 = *(v0 + 456);
    v31 = *(v0 + 520);
    v26 = *(v0 + 472);
    v27 = *(v0 + 416);
    v28 = *(v0 + 496);
    v24 = *(v0 + 360);
    v25 = *(v0 + 376);
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v8 = 136315394;
    *(v0 + 232) = *v7;
    sub_100168088(&qword_100583540);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000153E0(v11, v12, &v32);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%s] Failed to set playback intent from legacy queue %@", v8, 0x16u);
    sub_100009104(v9, &qword_100575B20);

    sub_100004590(v10);

    v28(v25, v24);
    v15 = v27;
    v16 = v29;
  }

  else
  {
    v17 = *(v0 + 496);
    v18 = *(v0 + 472);
    v30 = *(v0 + 456);
    v31 = *(v0 + 520);
    v19 = *(v0 + 416);
    v20 = *(v0 + 376);
    v21 = *(v0 + 360);

    v17(v20, v21);
    v16 = v30;
    v15 = v19;
  }

  v31(v16, v15);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1003AA2AC()
{
  v36 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 336);
  (*(v0 + 568))(*(v0 + 304), *(v0 + 272));
  (*(v5 + 8))(v4, v6);
  v1(v2, v3);
  sub_100004590(v0 + 184);
  static Logger.modernPlayback.getter();

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 464);
    v32 = *(v0 + 456);
    v34 = *(v0 + 520);
    v29 = *(v0 + 472);
    v30 = *(v0 + 416);
    v31 = *(v0 + 496);
    v27 = *(v0 + 360);
    v28 = *(v0 + 376);
    v10 = *(v0 + 264);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v11 = 136315394;
    *(v0 + 232) = *v10;
    sub_100168088(&qword_100583540);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000153E0(v14, v15, &v35);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%s] Failed to set playback intent from legacy queue %@", v11, 0x16u);
    sub_100009104(v12, &qword_100575B20);

    sub_100004590(v13);

    v31(v28, v27);
    v18 = v30;
    v19 = v32;
  }

  else
  {
    v20 = *(v0 + 496);
    v21 = *(v0 + 472);
    v33 = *(v0 + 456);
    v34 = *(v0 + 520);
    v22 = *(v0 + 416);
    v23 = *(v0 + 376);
    v24 = *(v0 + 360);

    v20(v23, v24);
    v19 = v33;
    v18 = v22;
  }

  v34(v19, v18);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003AA698(uint64_t a1, void *a2)
{
  v3 = sub_1000044A0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

void sub_1003AA6FC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100583560);
  __chkstk_darwin();
  v7 = &v41 - v6;
  v8 = type metadata accessor for URLTrackIdentifier();
  v45 = *(v8 - 8);
  __chkstk_darwin();
  v48 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() unarchivedIdentifiers];
  if (v10)
  {
    v43 = v3;
    v11 = v10;
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *(v12 + 16);
    v49 = v8;
    if (v13)
    {
      v41 = v1;
      v42 = v2;
      v44 = v5;
      v14 = 0;
      v46 = (v45 + 32);
      v47 = (v45 + 48);
      v15 = v12 + 40;
      v16 = _swiftEmptyArrayStorage;
      while (v14 < *(v12 + 16))
      {
        v17 = v12;

        URLTrackIdentifier.init(string:)();
        v18 = v49;
        if ((*v47)(v7, 1, v49) == 1)
        {
          sub_100009104(v7, &qword_100583560);
        }

        else
        {
          v19 = *v46;
          (*v46)(v48, v7, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100244084(0, v16[2] + 1, 1, v16);
          }

          v20 = v16;
          v21 = v16[2];
          v22 = v20;
          v23 = v20[3];
          if (v21 >= v23 >> 1)
          {
            v22 = sub_100244084(v23 > 1, v21 + 1, 1, v22);
          }

          v22[2] = v21 + 1;
          v24 = v22 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v21;
          v16 = v22;
          v19(v24, v48, v49);
          v12 = v17;
        }

        ++v14;
        v15 += 16;
        if (v13 == v14)
        {
          v25 = *(v12 + 16);
          v1 = v41;
          v2 = v42;
          v5 = v44;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v25 = 0;
      v16 = _swiftEmptyArrayStorage;
LABEL_16:
      if (v25 == v16[2])
      {
      }

      else
      {
        static Logger.modernPlayback.getter();

        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = v1;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 136315650;
          v50 = *v28;
          v51[0] = v30;
          sub_100168088(&qword_100583540);
          v31 = String.init<A>(describing:)();
          v33 = sub_1000153E0(v31, v32, v51);

          *(v29 + 4) = v33;
          v44 = v5;
          *(v29 + 12) = 2080;
          v34 = Array.description.getter();
          v36 = v35;

          v37 = sub_1000153E0(v34, v36, v51);

          *(v29 + 14) = v37;
          *(v29 + 22) = 2080;
          v38 = Array.description.getter();
          v40 = sub_1000153E0(v38, v39, v51);

          *(v29 + 24) = v40;
          _os_log_impl(&_mh_execute_header, v26, v27, "[%s] Not all track identifiers were converted. \nBefore: %s. \nAfter: %s", v29, 0x20u);
          swift_arrayDestroy();

          (*(v43 + 8))(v44, v2);
        }

        else
        {

          (*(v43 + 8))(v5, v2);
        }
      }
    }
  }
}

void *sub_1003AACCC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v93 = *(v2 - 1);
  v94 = v2;
  __chkstk_darwin();
  v92 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MediaIdentifier();
  v78 = *(v90 - 8);
  __chkstk_darwin();
  v5 = (v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v70 = (v68 - v6);
  __chkstk_darwin();
  v72 = (v68 - v7);
  __chkstk_darwin();
  v79 = (v68 - v8);
  v9 = type metadata accessor for URLTrackIdentifier.ArgumentKey();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for URLTrackIdentifier();
  v13 = *(v95 - 8);
  __chkstk_darwin();
  v80 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003AA6FC();
  v16 = v15;
  v97 = v15;
  sub_100168088(&qword_100583530);
  sub_1003AB974(&qword_100583538, &qword_100583530);
  if (Collection.isNotEmpty.getter())
  {
    v69 = v5;
    v17 = *(v16 + 16);
    if (v17)
    {
      v88 = v12;
      v89 = v9;
      v77 = 0;
      v19 = *(v13 + 16);
      v18 = v13 + 16;
      v86 = v19;
      v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
      v68[1] = v16;
      v21 = v16 + v20;
      v85 = *(v18 + 56);
      v84 = enum case for URLTrackIdentifier.ArgumentKey.episodeUUID(_:);
      v22 = (v10 + 104);
      v82 = (v10 + 8);
      v73 = enum case for MediaIdentifier.episodes(_:);
      v76 = (v78 + 104);
      v75 = v78 + 32;
      v87 = v18;
      v81 = (v18 - 8);
      v74 = enum case for URLTrackIdentifier.ArgumentKey.storeTrackID(_:);
      v23 = _swiftEmptyArrayStorage;
      v71 = enum case for MediaIdentifier.localEpisodes(_:);
      v94 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage;
      v25 = v80;
      v83 = (v10 + 104);
      do
      {
        v92 = v17;
        v93 = v24;
        v26 = v23;
        v86(v25, v21, v95);
        v27 = *v22;
        v28 = v88;
        v29 = v89;
        (*v22)(v88, v84, v89);
        v30 = v25;
        v91 = URLTrackIdentifier.valueForArgument(_:)();
        v32 = v31;
        v33 = *v82;
        (*v82)(v28, v29);
        if (v32)
        {
          v34 = v94;
          v97 = v94;
          sub_100168088(&qword_100583548);
          sub_1003AB974(&qword_100583550, &qword_100583548);
          if (Collection.isNotEmpty.getter())
          {
            *v79 = v34;
            (*v76)();

            v23 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1002440AC(0, v26[2] + 1, 1, v26);
            }

            v24 = v93;
            v36 = v23[2];
            v35 = v23[3];
            if (v36 >= v35 >> 1)
            {
              v23 = sub_1002440AC(v35 > 1, v36 + 1, 1, v23);
            }

            v23[2] = v36 + 1;
            (*(v78 + 32))(v23 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v36, v79, v90);

            v94 = _swiftEmptyArrayStorage;
          }

          else
          {
            v23 = v26;
            v24 = v93;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_100243134(0, *(v24 + 2) + 1, 1, v24);
          }

          v43 = *(v24 + 2);
          v42 = *(v24 + 3);
          if (v43 >= v42 >> 1)
          {
            v24 = sub_100243134((v42 > 1), v43 + 1, 1, v24);
          }

          v44 = v80;
          (*v81)(v80, v95);
          *(v24 + 2) = v43 + 1;
          v45 = &v24[16 * v43];
          *(v45 + 4) = v91;
          *(v45 + 5) = v32;
          v25 = v44;
        }

        else
        {
          v27(v28, v74, v29);
          URLTrackIdentifier.valueForArgument(_:)();
          v38 = v37;
          v33(v28, v29);
          v25 = v30;
          if (v38)
          {
            v39 = v77;
            v40 = static AdamID.parse(_:)();
            v23 = v26;
            if (v39)
            {

              v41 = static AdamID.empty.getter();

              v77 = 0;
            }

            else
            {
              v41 = v40;
              v77 = 0;
            }

            v24 = v93;
            v97 = v93;
            sub_100168088(&qword_10057C9C0);
            sub_1003AB974(&qword_100583558, &qword_10057C9C0);
            if (Collection.isNotEmpty.getter())
            {
              *v72 = v24;
              (*v76)();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v23 = sub_1002440AC(0, v26[2] + 1, 1, v26);
              }

              v47 = v23[2];
              v46 = v23[3];
              if (v47 >= v46 >> 1)
              {
                v23 = sub_1002440AC(v46 > 1, v47 + 1, 1, v23);
              }

              v23[2] = v47 + 1;
              (*(v78 + 32))(v23 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v47, v72, v90);

              v24 = _swiftEmptyArrayStorage;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1002433B0(0, *(v94 + 2) + 1, 1, v94);
            }

            v49 = *(v94 + 2);
            v48 = *(v94 + 3);
            if (v49 >= v48 >> 1)
            {
              v94 = sub_1002433B0((v48 > 1), v49 + 1, 1, v94);
            }

            (*v81)(v30, v95);
            v50 = v94;
            *(v94 + 2) = v49 + 1;
            *&v50[8 * v49 + 32] = v41;
          }

          else
          {
            (*v81)(v30, v95);
            v23 = v26;
            v24 = v93;
          }
        }

        v21 += v85;
        v17 = v92 - 1;
        v22 = v83;
      }

      while (v92 != 1);

      v59 = v94;
    }

    else
    {

      v59 = _swiftEmptyArrayStorage;
      v24 = _swiftEmptyArrayStorage;
      v23 = _swiftEmptyArrayStorage;
    }

    v97 = v59;
    sub_100168088(&qword_100583548);
    sub_1003AB974(&qword_100583550, &qword_100583548);
    v60 = Collection.isNotEmpty.getter();
    v61 = v69;
    if (v60)
    {
      v62 = v70;
      *v70 = v59;
      (*(v78 + 104))(v62, enum case for MediaIdentifier.episodes(_:), v90);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1002440AC(0, v23[2] + 1, 1, v23);
      }

      v64 = v23[2];
      v63 = v23[3];
      if (v64 >= v63 >> 1)
      {
        v23 = sub_1002440AC(v63 > 1, v64 + 1, 1, v23);
      }

      v23[2] = v64 + 1;
      (*(v78 + 32))(v23 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v64, v62, v90);
    }

    v97 = v24;
    sub_100168088(&qword_10057C9C0);
    sub_1003AB974(&qword_100583558, &qword_10057C9C0);
    if (Collection.isNotEmpty.getter())
    {
      *v61 = v24;
      (*(v78 + 104))(v61, enum case for MediaIdentifier.localEpisodes(_:), v90);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1002440AC(0, v23[2] + 1, 1, v23);
      }

      v66 = v23[2];
      v65 = v23[3];
      if (v66 >= v65 >> 1)
      {
        v23 = sub_1002440AC(v65 > 1, v66 + 1, 1, v23);
      }

      v23[2] = v66 + 1;
      (*(v78 + 32))(v23 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v66, v61, v90);
    }

    else
    {
    }
  }

  else
  {

    v51 = v92;
    static Logger.modernPlayback.getter();

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 136315138;
      v96 = *v1;
      v97 = v55;
      sub_100168088(&qword_100583540);
      v56 = String.init<A>(describing:)();
      v58 = sub_1000153E0(v56, v57, &v97);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "[%s] Hard queue is empty", v54, 0xCu);
      sub_100004590(v55);
    }

    (*(v93 + 8))(v51, v94);
    return _swiftEmptyArrayStorage;
  }

  return v23;
}

uint64_t sub_1003AB974(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_1003AB9C8()
{
  result = qword_100583568;
  if (!qword_100583568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100583568);
  }

  return result;
}

uint64_t sub_1003ABA1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C51C;

  return sub_1003A7AF4(a1, v4, v5, v6);
}

unint64_t sub_1003ABAE4()
{
  result = qword_1005835A8;
  if (!qword_1005835A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005835A8);
  }

  return result;
}

unint64_t sub_1003ABB60()
{
  sub_100168088(&qword_100573A78);
  __chkstk_darwin();
  v1 = &v12 - v0;
  sub_100168088(&unk_100573A80);
  __chkstk_darwin();
  v3 = &v12 - v2;
  type metadata accessor for EpisodeContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {
    dispatch thunk of ContextActionsConfiguration.previewModel.getter();
    if (*(&v13 + 1))
    {
      sub_100168088(&qword_1005748C0);
      type metadata accessor for LegacyEpisodeLockup();
      if (swift_dynamicCast())
      {
        return v17;
      }
    }

    else
    {
      sub_100009104(&v12, &qword_100576490);
    }
  }

  type metadata accessor for PodcastContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {
    dispatch thunk of ContextActionsConfiguration.previewModel.getter();
    if (*(&v13 + 1))
    {
      sub_100168088(&qword_1005748C0);
      type metadata accessor for LegacyLockup();
      if (swift_dynamicCast())
      {
        return v17 | 0x4000000000000000;
      }
    }

    else
    {
      sub_100009104(&v12, &qword_100576490);
    }
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    dispatch thunk of ContextActionsConfiguration.previewModel.getter();

    if (*(&v13 + 1))
    {
      sub_100168088(&qword_1005748C0);
      type metadata accessor for LegacyChannelLockup();
      if (swift_dynamicCast())
      {
        return v17 | 0x8000000000000000;
      }
    }

    else
    {
      sub_100009104(&v12, &qword_100576490);
    }
  }

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {
    v5 = objc_opt_self();

    v6 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
    v7 = [v5 findEpisodeFromModelObject:v6];

    if (v7)
    {
      type metadata accessor for Episode();
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
      v8 = v7;
      if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
      {
        v9 = type metadata accessor for EpisodeListSettings();
        (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
        v10 = type metadata accessor for SectionContext();
        (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
        static MetricsDataConfiguration.default.getter();
        v11 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();

        v17 = v12;
        sub_100009104(&v17, &unk_100574650);
        v16 = v13;
        sub_100009104(&v16, &unk_100573A90);
        v15 = *(&v13 + 1);
        sub_100009104(&v15, &unk_100574660);
        sub_100037470(v14);

        sub_100009104(v1, &qword_100573A78);
        sub_100009104(v3, &unk_100573A80);
        return v11;
      }
    }

    else
    {
    }
  }

  return 0xF000000000000007;
}

uint64_t sub_1003ABFE8()
{
  v0 = type metadata accessor for FlowDestination();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v5 = &v14 - v4;
  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();
  v6 = type metadata accessor for PresentationSource();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_100009104(v5, &unk_10057BB90);
  }

  else
  {
    v8 = PresentationSource.viewController.getter();
    sub_100009104(v5, &unk_10057BB90);
    if (v8)
    {
      v9 = v8;
      v10 = UIResponder.nearestFlowController.getter();

      if (v10)
      {
        v11 = sub_1003ABB60();
        if ((~v11 & 0xF000000000000007) != 0)
        {
          v12 = v11;
          swift_getObjectType();
          *v3 = v12;
          (*(v1 + 104))(v3, enum case for FlowDestination.contextMenuPreview(_:), v0);

          v13 = dispatch thunk of FlowController.viewController(for:referrer:)();
          swift_unknownObjectRelease();
          sub_1003AC258(v12);

          (*(v1 + 8))(v3, v0);
          return v13;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1003AC258(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

BOOL sub_1003AC270(uint64_t a1)
{
  v35 = a1;
  v2 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 16) lock];
  swift_beginAccess();
  v5 = *(v1 + 24);
  v31 = v1;
  if (v5 >> 62)
  {
LABEL_22:
    v32 = v5 & 0xFFFFFFFFFFFFFF8;
    v36 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = v5 & 0xFFFFFFFFFFFFFF8;
    v36 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v5 & 0xC000000000000001;
  v34 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;

  v6 = 0;
  do
  {
    v8 = v6;
    if (v36 == v6)
    {
      goto LABEL_15;
    }

    if (v33)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v8, 1))
      {
LABEL_14:
        __break(1u);
LABEL_15:

        sub_100168088(&unk_100574680);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1004007B0;
        *(inited + 32) = v35;
        v19 = v31;
        swift_beginAccess();

        sub_1001C40BC(inited);
        swift_endAccess();
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(v5 + 8 * v6 + 32);

      if (__OFADD__(v8, 1))
      {
        goto LABEL_14;
      }
    }

    v10 = *(v9 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v11 = &v4[*(v2 + 20)];
    v13 = *v11;
    v12 = *(v11 + 1);

    sub_1001BE660(v4);
    v14 = *(v35 + v34);
    OS_dispatch_queue.sync<A>(execute:)();

    v15 = &v4[*(v2 + 20)];
    v17 = *v15;
    v16 = *(v15 + 1);

    sub_1001BE660(v4);
    if (v13 == v17 && v12 == v16)
    {

      goto LABEL_17;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v8 + 1;
  }

  while ((v7 & 1) == 0);

LABEL_17:
  v20 = static os_log_type_t.error.getter();
  sub_1001FE728();
  v21 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v37[0] = v23;
    *v22 = 136446210;
    v24 = *(v35 + v34);
    OS_dispatch_queue.sync<A>(execute:)();

    v25 = &v4[*(v2 + 20)];
    v26 = *v25;
    v27 = v25[1];

    sub_1001BE660(v4);
    v28 = sub_1000153E0(v26, v27, v37);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v20, "Episode already exists in pipeline. %{public}s", v22, 0xCu);
    sub_100004590(v23);
  }

  v19 = v31;
LABEL_20:
  v29 = v36 == v8;
  [*(v19 + 16) unlock];
  return v29;
}

id sub_1003AC6C4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + 16) lock];
  swift_beginAccess();
  v8 = *(v2 + 24);
  v23 = v2;
  if (v8 >> 62)
  {
LABEL_23:
    v24 = v8 & 0xFFFFFFFFFFFFFF8;
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = v8 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v8 & 0xC000000000000001;

  v9 = 0;
  while (1)
  {
    if (v26 == v9)
    {

      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v27 = 0xD00000000000001ALL;
      v28 = 0x8000000100473400;
      v18._countAndFlagsBits = a1;
      v18._object = a2;
      String.append(_:)(v18);
      v19._countAndFlagsBits = 0x756F6620746F6E20;
      v19._object = 0xEA0000000000646ELL;
      String.append(_:)(v19);
      sub_100370B38();

      v20 = v23;
      return [*(v20 + 16) unlock];
    }

    if (v25)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v24 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = *(v8 + 8 * v9 + 32);
    }

    v11 = *(v10 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v12 = &v7[*(v5 + 20)];
    v14 = *v12;
    v13 = *(v12 + 1);

    sub_1001BE660(v7);
    if (v14 == a1 && v13 == a2)
    {
      break;
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_19;
    }

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_22;
    }
  }

LABEL_19:

  v20 = v23;
  swift_beginAccess();
  sub_1003AC9B0(v9);
  swift_endAccess();

  return [*(v20 + 16) unlock];
}

uint64_t sub_1003AC9B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1003ADB80(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1003ACA40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  LOBYTE(v5) = a4;
  v40 = a2;
  v41 = a3;
  v33 = a1;
  v39 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin(v39);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  [*(v4 + 16) lock];
  swift_beginAccess();
  v32 = v4;
  v8 = *(v4 + 24);
  v42[0] = &_swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_56;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v9)
  {
    v10 = 0;
    v11 = 0xE900000000000064;
    v38 = v8 & 0xC000000000000001;
    v36 = v9;
    v37 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v5)
    {
      v12 = 1936484398;
    }

    else
    {
      v12 = 0x7261646E6174732ELL;
    }

    if (v5)
    {
      v11 = 0xE400000000000000;
    }

    v34 = v11;
    v35 = v12;
    while (1)
    {
      if (v38)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          v25 = v42[0];
          goto LABEL_40;
        }
      }

      else
      {
        if (v10 >= *(v37 + 16))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v13 = *(v8 + 8 * v10 + 32);

        v5 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_37;
        }
      }

      v14 = *(v13 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v15 = v39;
      OS_dispatch_queue.sync<A>(execute:)();

      v16 = v7 + *(v15 + 32);
      v18 = *v16;
      v17 = *(v16 + 1);
      v19 = v16[16];

      sub_1001BE660(v7);
      v20 = v18 == v40 && v17 == v41;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v19)
        {
          v21 = 1936484398;
        }

        else
        {
          v21 = 0x7261646E6174732ELL;
        }

        if (v19)
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v22 = 0xE900000000000064;
        }

        if (v21 == v35 && v22 == v34)
        {

LABEL_34:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_12;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

LABEL_12:
      ++v10;
      if (v5 == v36)
      {
        goto LABEL_38;
      }
    }
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_40:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_43;
    }

LABEL_58:

    v27 = 0;
    goto LABEL_59;
  }

  v5 = *(v25 + 16);
  if (!v5)
  {
    goto LABEL_58;
  }

LABEL_43:
  v26 = 0;
  while ((v25 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_52;
    }

LABEL_47:
    v28 = *(v27 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    sub_100168088(&qword_100574900);
    OS_dispatch_queue.sync<A>(execute:)();

    v29 = v43;
    v7 = v44;
    sub_1000044A0(v42, v43);
    v30 = v7[3](v29, v7);
    sub_100004590(v42);
    if (v30 == v33)
    {
      goto LABEL_53;
    }

    ++v26;
    if (v8 == v5)
    {
      goto LABEL_58;
    }
  }

  if (v26 >= *(v25 + 16))
  {
    goto LABEL_55;
  }

  v27 = *(v25 + 8 * v26 + 32);

  v8 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

LABEL_59:
  [*(v32 + 16) unlock];
  return v27;
}

uint64_t sub_1003ACEB8(uint64_t a1)
{
  [*(v1 + 16) lock];
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata + 40) & 1) == 0 && *(v6 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata + 32) == a1)
      {

        goto LABEL_16;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  v6 = 0;
LABEL_16:
  [*(v1 + 16) unlock];
  return v6;
}

uint64_t sub_1003AD01C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003AD05C(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v27 = type metadata accessor for DownloadJob(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + 16) lock];
  swift_beginAccess();
  v22 = v2;
  v7 = *(v2 + 24);
  if (v7 >> 62)
  {
LABEL_21:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v25 = v7 & 0xFFFFFFFFFFFFFF8;
    v26 = v7 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:

LABEL_19:

          v19 = *(v10 + v3);
          OS_dispatch_queue.sync<A>(execute:)();

          v20 = sub_10020ED6C();

          sub_1001BE660(v6);
          [*(v22 + 16) unlock];
          return v20;
        }
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v10 = *(v7 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      v3 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v12 = *(v10 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v13 = v27;
      OS_dispatch_queue.sync<A>(execute:)();

      v14 = &v6[*(v13 + 20)];
      v16 = *v14;
      v15 = *(v14 + 1);

      sub_1001BE660(v6);
      if (v16 == v23 && v15 == v24)
      {
        goto LABEL_18;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_19;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  __break(1u);
  return result;
}

unint64_t sub_1003AD358(void *a1)
{
  v3 = type metadata accessor for DownloadJob(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 16) lock];
  v7 = [a1 episodeUuid];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    swift_beginAccess();
    v12 = *(v1 + 24);
    v23 = v1;
    if (v12 >> 62)
    {
LABEL_26:
      v24 = v12 & 0xFFFFFFFFFFFFFF8;
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = v12 & 0xFFFFFFFFFFFFFF8;
      v26 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v12 & 0xC000000000000001;

    v13 = 0;
    while (1)
    {
      if (v26 == v13)
      {

        v1 = v23;
        goto LABEL_19;
      }

      if (v25)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v24 + 16))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v14 = *(v12 + 8 * v13 + 32);
      }

      v15 = *(v14 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      OS_dispatch_queue.sync<A>(execute:)();

      v16 = &v6[*(v3 + 20)];
      v18 = *v16;
      v17 = *(v16 + 1);

      sub_1001BE660(v6);
      if (v18 == v9 && v17 == v11)
      {

        goto LABEL_22;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        break;
      }

      if (__OFADD__(v13++, 1))
      {
        goto LABEL_25;
      }
    }

LABEL_22:

    v1 = v23;
  }

  else
  {
LABEL_19:
    v13 = NSNotFound.getter();
  }

  [*(v1 + 16) unlock];
  return v13;
}

uint64_t sub_1003AD64C(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for DownloadJob(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 16) lock];
  result = swift_beginAccess();
  v8 = *(v1 + 24);
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v9 = *(v8 + 8 * a1 + 32);

LABEL_5:
    v10 = *(v9 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
    OS_dispatch_queue.sync<A>(execute:)();

    v11 = sub_10020ED6C();

    sub_1001BE660(v6);
    [*(v2 + 16) unlock];
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AD818()
{
  [*(v0 + 16) lock];
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [*(v0 + 16) unlock];
  return v2;
}

uint64_t sub_1003AD8D8(uint64_t a1, uint64_t a2)
{
  [*(v2 + 16) lock];
  swift_beginAccess();
  v5 = *(v2 + 24);
  if (v5 >> 62)
  {
LABEL_26:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v15 = v2;
    v7 = 0;
    v2 = v5 & 0xC000000000000001;
    v8 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v2)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v2 = v15;
          break;
        }
      }

      else
      {
        if (v7 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v5 + 8 * v7 + 32);

        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }
      }

      v11 = *(v9 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata + 8);
      if (v11 && (*(v9 + OBJC_IVAR____TtC8Podcasts11JobPipeline_metadata) == a1 ? (v12 = v11 == a2) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v2 = v5 & 0xC000000000000001;
        v8 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_20;
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage[2];
  }

  [*(v2 + 16) unlock];
  return v13;
}

uint64_t sub_1003ADB80(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id sub_1003ADBE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v37 = a2;
  v38 = a4;
  LOBYTE(v4) = a3;
  v36 = type metadata accessor for DownloadJob(0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v35 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + 16) lock];
  swift_beginAccess();
  v29[0] = a1;
  v8 = *(a1 + 24);
  if (v8 >> 62)
  {
LABEL_15:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v33 = v8 & 0xFFFFFFFFFFFFFF8;
    v34 = v8 & 0xC000000000000001;
    v30 = v4 & 1;
    v29[1] = v42;
    v32 = v8;
    v31 = v9;
    v11 = v36;
    do
    {
      if (v34)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_15;
        }

        v4 = *(v8 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_12;
        }
      }

      v40 = v12;
      v39 = OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue;
      v13 = *(v4 + OBJC_IVAR____TtC8Podcasts11JobPipeline_accessQueue);
      v14 = v35;
      OS_dispatch_queue.sync<A>(execute:)();

      v15 = (v14 + *(v11 + 20));
      v17 = *v15;
      v16 = v15[1];

      sub_1001BE660(v14);
      v18 = sub_100011218();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v17;
      *(v20 + 32) = v16;
      *(v20 + 40) = v30;
      v42[2] = sub_100370B28;
      v42[3] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v42[0] = sub_10000F038;
      v42[1] = &unk_1004F2EC0;
      v21 = _Block_copy(aBlock);

      [v18 addOperationWithBlock:v21];
      _Block_release(v21);

      v22 = *(v4 + v39);
      OS_dispatch_queue.sync<A>(execute:)();

      v23 = (v14 + *(v11 + 20));
      v24 = *v23;
      v25 = v23[1];

      sub_1001BE660(v14);
      v26 = v25;
      v27 = v31;
      sub_10038E7E0(aBlock, v24, v26);

      v8 = v32;

      ++v10;
    }

    while (v40 != v27);
  }

  return [*(v29[0] + 16) unlock];
}

uint64_t sub_1003ADF8C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v12 = v8;
      sub_100304FEC(v8);
      v9 = a1(&v12);
      sub_10002ACE0(v8);
      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1003AE034()
{
  v1 = v0;
  v334 = type metadata accessor for ValidateOperation.Result(0);
  __chkstk_darwin();
  v333 = &v289 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v324 = &v289 - v3;
  __chkstk_darwin();
  v301 = (&v289 - v4);
  v321 = sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v316 = &v289 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v313 = &v289 - v6;
  __chkstk_darwin();
  v308 = &v289 - v7;
  __chkstk_darwin();
  v298 = &v289 - v8;
  __chkstk_darwin();
  v304 = &v289 - v9;
  sub_100168088(&qword_100583808);
  __chkstk_darwin();
  v311 = &v289 - v10;
  v319 = type metadata accessor for UTType();
  v318 = *(v319 - 8);
  __chkstk_darwin();
  v310 = &v289 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v306 = &v289 - v12;
  v13 = sub_100168088(&qword_100573670);
  __chkstk_darwin();
  v332 = &v289 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v289 - v15;
  __chkstk_darwin();
  v328 = (&v289 - v17);
  __chkstk_darwin();
  v329 = (&v289 - v18);
  __chkstk_darwin();
  v322 = (&v289 - v19);
  __chkstk_darwin();
  v323 = &v289 - v20;
  __chkstk_darwin();
  v315 = (&v289 - v21);
  __chkstk_darwin();
  v317 = (&v289 - v22);
  __chkstk_darwin();
  v312 = (&v289 - v23);
  __chkstk_darwin();
  v314 = (&v289 - v24);
  __chkstk_darwin();
  v307 = (&v289 - v25);
  __chkstk_darwin();
  v309 = (&v289 - v26);
  __chkstk_darwin();
  v296 = (&v289 - v27);
  __chkstk_darwin();
  v300 = &v289 - v28;
  __chkstk_darwin();
  v297 = (&v289 - v29);
  __chkstk_darwin();
  v299 = (&v289 - v30);
  __chkstk_darwin();
  v302 = (&v289 - v31);
  __chkstk_darwin();
  v303 = (&v289 - v32);
  __chkstk_darwin();
  v326 = &v289 - v33;
  __chkstk_darwin();
  v327 = (&v289 - v34);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  __chkstk_darwin();
  v305 = &v289 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v330 = &v289 - v38;
  __chkstk_darwin();
  v337 = &v289 - v39;
  __chkstk_darwin();
  v41 = &v289 - v40;
  v42 = OBJC_IVAR____TtC8Podcasts17ValidateOperation_source;
  swift_beginAccess();
  v43 = *(v36 + 16);
  v43(v41, v0 + v42, v35);
  v44 = URL.isPackagedMedia()();
  v331 = v36;
  v335 = *(v36 + 8);
  v336 = v36 + 8;
  v335(v41, v35);
  if (v44)
  {
    v46 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension);
    v45 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension + 8);
    v47 = v333;
    v43(&v333[*(v334 + 20)], v1 + v42, v35);
    *v47 = v46;
    v47[1] = v45;
    sub_1003B0D38(v47, v16);
    swift_storeEnumTagMultiPayload();
    v48 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v48)
    {
      v342 = v13;
      v49 = sub_10000E680(&v340);
      sub_1003B0CC8(v16, v49);

      sub_100013CB4(v48);
      v48(&v340);
      sub_100037470(v48);
      sub_100004590(&v340);
    }

    else
    {
    }

    v82 = v332;
    sub_1003B0CC8(v16, v332);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v83 = *v82;
      v84 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v85 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
      swift_errorRetain();
      [v85 lock];
      *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v83;
      swift_errorRetain();

      [*(v1 + v84) unlock];
    }

    else
    {
      sub_100009104(v82, &qword_100573670);
    }

    sub_10003172C();
    sub_100009104(v16, &qword_100573670);
    return sub_1003B0D9C(v47);
  }

  v320 = v36 + 16;
  v294 = v43;
  v325 = v42;
  v333 = v13;
  v295 = v35;
  v50 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_response);
  if (v50)
  {
    v51 = v325;
    v52 = v295;
    v53 = v294;
    v294(v41, v1 + v325, v295);
    v55 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension);
    v54 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_originalExtension + 8);
    v329 = v50;
    v56 = v337;
    v293 = v55;
    v328 = v54;
    URL.appendingPathExtension(_:)();
    v57 = v335;
    v335(v41, v52);
    v53(v41, v1 + v51, v52);
    v58 = v330;
    v53(v330, v56, v52);
    v59 = type metadata accessor for MoveFileOperation(0);
    v60 = objc_allocWithZone(v59);
    v61 = &v60[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input];
    *v61 = 0;
    v61[8] = 2;
    v53(&v60[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination], v58, v52);
    v53(&v60[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source], v41, v52);
    v292 = sub_1001FE728();
    *&v60[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log] = static OS_os_log.default.getter();
    v339.receiver = v60;
    v339.super_class = v59;
    v291 = v59;
    v62 = objc_msgSendSuper2(&v339, "init");
    v57(v58, v52);
    v57(v41, v52);
    v332 = v62;
    sub_1002BF0A4();
    v63 = v325;
    swift_beginAccess();
    v64 = (v331 + 24);
    v290 = *(v331 + 24);
    v290(v1 + v63, v337, v52);
    swift_endAccess();
    v53(v41, v1 + v63, v52);
    LOBYTE(v62) = URL.isHLSPlaylist()();
    v57(v41, v52);
    if (v62)
    {
      static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100400790;
      v66 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
      v67 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
      *(v65 + 56) = &type metadata for String;
      *(v65 + 64) = sub_100022C18();
      *(v65 + 32) = v66;
      *(v65 + 40) = v67;

      os_log(_:dso:log:_:_:)();

      v340 = 0;
      v341 = 0xE000000000000000;
      _StringGuts.grow(_:)(114);
      v68._countAndFlagsBits = 0xD000000000000070;
      v68._object = 0x80000001004739B0;
      String.append(_:)(v68);
      v69._countAndFlagsBits = v66;
      v69._object = v67;
      String.append(_:)(v69);
      v70 = v340;
      v71 = v341;
      sub_100183BAC();
      v72 = swift_allocError();
      *v73 = v70;
      v73[1] = v71;
      v74 = v327;
      *v327 = v72;
      v75 = v333;
      swift_storeEnumTagMultiPayload();
      v76 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v76)
      {
        v342 = v75;
        v77 = sub_10000E680(&v340);
        sub_1003B0CC8(v74, v77);

        v76(&v340);
        sub_100037470(v76);
        sub_100004590(&v340);
      }

      v78 = v326;
      sub_1003B0CC8(v74, v326);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v79 = *v78;
        v80 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v81 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v81 lock];
        *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v79;
        swift_errorRetain();

        [*(v1 + v80) unlock];
      }

      else
      {
        sub_100009104(v78, &qword_100573670);
      }

      v111 = v335;
      sub_10003172C();

      sub_100009104(v74, &qword_100573670);
      return v111(v337, v52);
    }

    v327 = v1;
    v53(v41, v1 + v63, v52);
    v97 = objc_allocWithZone(AVURLAsset);
    URL._bridgeToObjectiveC()(v98);
    v100 = v99;
    v101 = [v97 initWithURL:v99 options:0];
    v102 = v52;
    v103 = v101;

    v57(v41, v102);
    if ([v103 isPlayable])
    {
      v104 = v324;
      v105 = v327;
      v53(&v324[*(v334 + 20)], v327 + v63, v102);
      v106 = v328;
      *v104 = v293;
      v104[1] = v106;
      v107 = v323;
      sub_1003B0D38(v104, v323);
      v108 = v333;
      swift_storeEnumTagMultiPayload();
      v109 = *(v105 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v109)
      {
        v342 = v108;
        v110 = sub_10000E680(&v340);
        sub_1003B0CC8(v107, v110);

        sub_100013CB4(v109);
        v109(&v340);
        sub_100037470(v109);
        sub_100004590(&v340);
      }

      else
      {
      }

      v128 = v322;
      sub_1003B0CC8(v107, v322);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v129 = *v128;
        v130 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v131 = *(v105 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v131 lock];
        *(v105 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v129;
        swift_errorRetain();

        [*(v105 + v130) unlock];
      }

      else
      {
        sub_100009104(v128, &qword_100573670);
      }

      sub_10003172C();

      sub_100009104(v107, &qword_100573670);
      sub_1003B0D9C(v104);
      return (v335)(v337, v295);
    }

    v112 = v327;
    v326 = v103;
    v113 = v329;
    v114 = [v113 MIMEType];
    if (!v114)
    {
      v132 = v102;
      static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_100400790;
      v135 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
      v134 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
      *(v133 + 56) = &type metadata for String;
      *(v133 + 64) = sub_100022C18();
      *(v133 + 32) = v135;
      *(v133 + 40) = v134;

      os_log(_:dso:log:_:_:)();

      v340 = 0;
      v341 = 0xE000000000000000;
      _StringGuts.grow(_:)(96);
      v136._countAndFlagsBits = 0xD00000000000005ELL;
      v136._object = 0x8000000100473520;
      String.append(_:)(v136);
      v137 = [v113 URL];

      if (v137)
      {
        v138 = v316;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v139 = 0;
        v140 = v333;
        v141 = v317;
      }

      else
      {
        v139 = 1;
        v140 = v333;
        v141 = v317;
        v138 = v316;
      }

      (*(v331 + 56))(v138, v139, 1, v132);
      v172._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v172);

      v173 = v340;
      v174 = v341;
      sub_100183BAC();
      v175 = swift_allocError();
      *v176 = v173;
      v176[1] = v174;
      *v141 = v175;
      swift_storeEnumTagMultiPayload();
      v177 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      v127 = v335;
      if (v177)
      {
        v342 = v140;
        v178 = sub_10000E680(&v340);
        sub_1003B0CC8(v141, v178);

        v177(&v340);
        sub_100037470(v177);
        sub_100004590(&v340);
      }

      v179 = v315;
      sub_1003B0CC8(v141, v315);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v180 = *v179;
        v181 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v182 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v182 lock];
        *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v180;
        swift_errorRetain();

        [*(v112 + v181) unlock];
      }

      else
      {
        sub_100009104(v179, &qword_100573670);
      }

      sub_10003172C();

      sub_100009104(v141, &qword_100573670);
      v183 = v337;
      v184 = v132;
      return v127(v183, v184);
    }

    v324 = v64;
    v329 = v113;
    v115 = v112;
    v116 = v114;
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    v120 = [objc_opt_self() audiovisualMIMETypes];
    v121 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v340 = v117;
    v341 = v119;
    __chkstk_darwin();
    *(&v289 - 2) = &v340;
    LOBYTE(v120) = sub_10003C0AC(sub_10003C238, (&v289 - 4), v121);

    if (v120)
    {

      static UTType.data.getter();
      v122 = v311;
      UTType.init(mimeType:conformingTo:)();
      v123 = v318;
      v124 = v319;
      if ((*(v318 + 48))(v122, 1, v319) == 1)
      {
        v125 = v117;
        sub_100009104(v122, &qword_100583808);
        v126 = v333;
        v127 = v335;
LABEL_60:
        static os_log_type_t.error.getter();
        sub_100168088(&unk_100574670);
        v196 = swift_allocObject();
        *(v196 + 16) = xmmword_1004007C0;
        *(v196 + 56) = &type metadata for String;
        v197 = sub_100022C18();
        *(v196 + 32) = v125;
        *(v196 + 40) = v119;
        v199 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
        v198 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
        *(v196 + 96) = &type metadata for String;
        *(v196 + 104) = v197;
        *(v196 + 64) = v197;
        *(v196 + 72) = v199;
        *(v196 + 80) = v198;

        os_log(_:dso:log:_:_:)();

        v340 = 0;
        v341 = 0xE000000000000000;
        _StringGuts.grow(_:)(110);
        v200._countAndFlagsBits = 0xD00000000000006CLL;
        v200._object = 0x8000000100473710;
        String.append(_:)(v200);
        v201 = v329;
        v202 = [v329 URL];

        if (v202)
        {
          v203 = v308;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v204 = 0;
          v205 = v326;
          v206 = v295;
          v207 = v309;
        }

        else
        {
          v204 = 1;
          v205 = v326;
          v206 = v295;
          v207 = v309;
          v203 = v308;
        }

        (*(v331 + 56))(v203, v204, 1, v206);
        v208._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v208);

        v209 = v340;
        v210 = v341;
        sub_100183BAC();
        v211 = swift_allocError();
        *v212 = v209;
        v212[1] = v210;
        *v207 = v211;
        swift_storeEnumTagMultiPayload();
        v213 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
        if (v213)
        {
          v342 = v126;
          v214 = sub_10000E680(&v340);
          sub_1003B0CC8(v207, v214);

          v213(&v340);
          sub_100037470(v213);
          sub_100004590(&v340);
        }

        v215 = v307;
        sub_1003B0CC8(v207, v307);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v216 = *v215;
          v217 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
          v218 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
          swift_errorRetain();
          [v218 lock];
          *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v216;
          swift_errorRetain();

          [*(v112 + v217) unlock];
        }

        else
        {
          sub_100009104(v215, &qword_100573670);
        }

        sub_10003172C();

        sub_100009104(v207, &qword_100573670);
LABEL_76:
        v183 = v337;
        v184 = v206;
        return v127(v183, v184);
      }

      v155 = v306;
      (*(v123 + 32))(v306, v122, v124);
      v156 = UTType.preferredFilenameExtension.getter();
      v127 = v335;
      if (!v157)
      {
        v125 = v117;
        (*(v123 + 8))(v155, v124);
        v126 = v333;
        goto LABEL_60;
      }

      v158 = v156;
      v159 = v157;
      if (v156 == v293 && v157 == v328 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        static os_log_type_t.error.getter();
        v160 = static OS_os_log.downloads.getter();
        sub_100168088(&unk_100574670);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_1004007C0;
        *(v161 + 56) = &type metadata for String;
        v162 = sub_100022C18();
        *(v161 + 32) = v117;
        *(v161 + 40) = v119;
        v164 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
        v163 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
        *(v161 + 96) = &type metadata for String;
        *(v161 + 104) = v162;
        *(v161 + 64) = v162;
        *(v161 + 72) = v164;
        *(v161 + 80) = v163;

        os_log(_:dso:log:_:_:)();

        v340 = 0;
        v341 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v165._countAndFlagsBits = 0xD000000000000038;
        v165._object = 0x80000001004738F0;
        String.append(_:)(v165);
        v166 = v329;
        v167 = [v329 URL];

        if (v167)
        {
          v168 = v304;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v169 = 0;
          v170 = v333;
          v171 = v326;
        }

        else
        {
          v169 = 1;
          v170 = v333;
          v171 = v326;
          v168 = v304;
        }

        v219 = v303;
        v206 = v295;
        (*(v331 + 56))(v168, v169, 1, v295);
        v220._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v220);

        v221 = v340;
        v222 = v341;
        sub_100183BAC();
        v223 = swift_allocError();
        *v224 = v221;
        v224[1] = v222;
        *v219 = v223;
        swift_storeEnumTagMultiPayload();
        v225 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
        if (v225)
        {
          v342 = v170;
          v226 = sub_10000E680(&v340);
          sub_1003B0CC8(v219, v226);

          v225(&v340);
          sub_100037470(v225);
          sub_100004590(&v340);
        }

        v227 = v302;
        sub_1003B0CC8(v219, v302);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v228 = *v227;
          v229 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
          v230 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
          swift_errorRetain();
          [v230 lock];
          *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v228;
          swift_errorRetain();

          [*(v112 + v229) unlock];
        }

        else
        {
          sub_100009104(v227, &qword_100573670);
        }

        v231 = v319;
        sub_10003172C();

        sub_100009104(v219, &qword_100573670);
        (*(v318 + 8))(v155, v231);
        goto LABEL_76;
      }

      v323 = v117;
      v328 = v119;
      v232 = v325;
      v233 = v295;
      v234 = v294;
      v294(v41, v112 + v325, v295);
      v235 = v305;
      v322 = v158;
      URL.appendingPathExtension(_:)();
      v127(v41, v233);
      v234(v41, v112 + v232, v233);
      v236 = v330;
      v234(v330, v235, v233);
      v237 = v291;
      v238 = objc_allocWithZone(v291);
      v239 = &v238[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input];
      *v239 = 0;
      v239[8] = 2;
      v234(&v238[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination], v236, v233);
      v234(&v238[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source], v41, v233);
      *&v238[OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log] = static OS_os_log.default.getter();
      v338.receiver = v238;
      v338.super_class = v237;
      v240 = objc_msgSendSuper2(&v338, "init");
      v241 = v236;
      v242 = v325;
      v243 = v335;
      v335(v241, v233);
      v243(v41, v233);
      sub_1002BF0A4();
      swift_beginAccess();
      v290(v112 + v242, v305, v233);
      swift_endAccess();
      v244 = objc_allocWithZone(AVURLAsset);
      URL._bridgeToObjectiveC()(v245);
      v247 = v246;
      v248 = [v244 initWithURL:v246 options:0];

      if ([v248 isPlayable])
      {

        v249 = v301;
        v294(v301 + *(v334 + 20), v112 + v242, v233);
        *v249 = v322;
        v249[1] = v159;
        v250 = v300;
        sub_1003B0D38(v249, v300);
        v251 = v333;
        swift_storeEnumTagMultiPayload();
        v252 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
        v253 = v326;
        if (v252)
        {
          v342 = v251;
          v254 = sub_10000E680(&v340);
          sub_1003B0CC8(v250, v254);

          v252(&v340);
          sub_100037470(v252);
          sub_100004590(&v340);
        }

        v255 = v296;
        sub_1003B0CC8(v250, v296);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v257 = v306;
        if (EnumCaseMultiPayload == 1)
        {
          v258 = *v255;
          v259 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
          v260 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
          swift_errorRetain();
          [v260 lock];
          *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v258;
          swift_errorRetain();

          [*(v112 + v259) unlock];
        }

        else
        {
          sub_100009104(v255, &qword_100573670);
        }

        v127 = v335;
        v206 = v295;
        sub_10003172C();

        sub_100009104(v300, &qword_100573670);
        sub_1003B0D9C(v301);
        v127(v305, v206);
        (*(v318 + 8))(v257, v319);
        goto LABEL_76;
      }

      static os_log_type_t.error.getter();
      v261 = static OS_os_log.downloads.getter();
      sub_100168088(&unk_100574670);
      v262 = swift_allocObject();
      *(v262 + 16) = xmmword_1004007C0;
      *(v262 + 56) = &type metadata for String;
      v263 = sub_100022C18();
      v264 = v328;
      *(v262 + 32) = v323;
      *(v262 + 40) = v264;
      v266 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
      v265 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
      *(v262 + 96) = &type metadata for String;
      *(v262 + 104) = v263;
      *(v262 + 64) = v263;
      *(v262 + 72) = v266;
      *(v262 + 80) = v265;

      os_log(_:dso:log:_:_:)();

      v340 = 0;
      v341 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v267._countAndFlagsBits = 0xD000000000000050;
      v267._object = 0x8000000100473800;
      String.append(_:)(v267);
      v268 = v329;
      v269 = [v329 URL];

      v270 = v326;
      if (v269)
      {
        v271 = v298;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v272 = 0;
        v273 = v333;
        v274 = v306;
      }

      else
      {
        v272 = 1;
        v273 = v333;
        v274 = v306;
        v271 = v298;
      }

      v275 = v295;
      (*(v331 + 56))(v271, v272, 1, v295);
      v276._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v276);

      v277 = v340;
      v278 = v341;
      sub_100183BAC();
      v279 = swift_allocError();
      *v280 = v277;
      v280[1] = v278;
      v281 = v299;
      *v299 = v279;
      swift_storeEnumTagMultiPayload();
      v282 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v282)
      {
        v342 = v273;
        v283 = sub_10000E680(&v340);
        sub_1003B0CC8(v281, v283);

        v282(&v340);
        sub_100037470(v282);
        sub_100004590(&v340);
      }

      v284 = v297;
      sub_1003B0CC8(v281, v297);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v285 = *v284;
        v286 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v287 = *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v287 lock];
        *(v112 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v285;
        swift_errorRetain();

        [*(v112 + v286) unlock];

        v281 = v299;
      }

      else
      {
        sub_100009104(v284, &qword_100573670);
      }

      v288 = v335;
      sub_10003172C();

      sub_100009104(v281, &qword_100573670);
      v288(v305, v275);
      (*(v318 + 8))(v274, v319);
      return (v288)(v337, v275);
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670);
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1004007C0;
      *(v142 + 56) = &type metadata for String;
      v143 = sub_100022C18();
      *(v142 + 32) = v117;
      *(v142 + 40) = v119;
      v145 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid);
      v144 = *(v112 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_episodeUuid + 8);
      *(v142 + 96) = &type metadata for String;
      *(v142 + 104) = v143;
      *(v142 + 64) = v143;
      *(v142 + 72) = v145;
      *(v142 + 80) = v144;

      os_log(_:dso:log:_:_:)();

      v340 = 0;
      v341 = 0xE000000000000000;
      _StringGuts.grow(_:)(105);
      v146._countAndFlagsBits = 0xD000000000000067;
      v146._object = 0x8000000100473600;
      String.append(_:)(v146);
      v147 = v329;
      v148 = [v329 URL];

      if (v148)
      {
        v149 = v313;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v150 = 0;
        v151 = v295;
        v152 = v333;
        v153 = v326;
        v154 = v314;
      }

      else
      {
        v150 = 1;
        v151 = v295;
        v152 = v333;
        v153 = v326;
        v154 = v314;
        v149 = v313;
      }

      (*(v331 + 56))(v149, v150, 1, v151);
      v185._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v185);

      v186 = v340;
      v187 = v341;
      sub_100183BAC();
      v188 = swift_allocError();
      *v189 = v186;
      v189[1] = v187;
      *v154 = v188;
      swift_storeEnumTagMultiPayload();
      v190 = *(v115 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (v190)
      {
        v342 = v152;
        v191 = sub_10000E680(&v340);
        sub_1003B0CC8(v154, v191);

        v190(&v340);
        sub_100037470(v190);
        sub_100004590(&v340);
      }

      v192 = v312;
      sub_1003B0CC8(v154, v312);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v193 = *v192;
        v194 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v195 = *(v115 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v195 lock];
        *(v115 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v193;
        swift_errorRetain();

        [*(v115 + v194) unlock];
      }

      else
      {
        sub_100009104(v192, &qword_100573670);
      }

      sub_10003172C();

      sub_100009104(v154, &qword_100573670);
      return (v335)(v337, v151);
    }
  }

  else
  {
    sub_100183BAC();
    v87 = swift_allocError();
    *v88 = 0xD00000000000002ELL;
    v88[1] = 0x8000000100473480;
    v89 = v329;
    *v329 = v87;
    v90 = v333;
    swift_storeEnumTagMultiPayload();
    v91 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (v91)
    {
      v342 = v90;
      v92 = sub_10000E680(&v340);
      sub_1003B0CC8(v89, v92);

      v91(&v340);
      sub_100037470(v91);
      sub_100004590(&v340);
    }

    v93 = v328;
    sub_1003B0CC8(v89, v328);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v94 = *v93;
      v95 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
      v96 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
      swift_errorRetain();
      [v96 lock];
      *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v94;
      swift_errorRetain();

      [*(v1 + v95) unlock];
    }

    else
    {
      sub_100009104(v93, &qword_100573670);
    }

    sub_10003172C();
    return sub_100009104(v89, &qword_100573670);
  }
}

void sub_1003B09AC()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_input + 8));
  v1 = OBJC_IVAR____TtC8Podcasts17ValidateOperation_source;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_origin, v2);

  v4 = *(v0 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_log);
}

uint64_t sub_1003B0BC8()
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

uint64_t sub_1003B0C88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts17ValidateOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

uint64_t sub_1003B0CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100573670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B0D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValidateOperation.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B0D9C(uint64_t a1)
{
  v2 = type metadata accessor for ValidateOperation.Result(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B0E20()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1003B0E9C()
{
  v1 = type metadata accessor for ShowOffer();
  v96 = *(v1 - 8);
  v97 = v1;
  __chkstk_darwin(v1);
  v95 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for EpisodeOffer();
  v94 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v98 = &v85 - v7;
  v8 = type metadata accessor for URL();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v85 - v11;
  __chkstk_darwin(v13);
  v92 = &v85 - v14;
  __chkstk_darwin(v15);
  v93 = &v85 - v16;
  __chkstk_darwin(v17);
  v91 = &v85 - v18;
  v19 = type metadata accessor for PreviewingPresentationHint();
  v100 = *(v19 - 8);
  __chkstk_darwin(v19);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v21);
  v23 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  v27 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v27 - 8);
  v29 = &v85 - v28;
  v103 = v0[2];
  if (v103)
  {
    swift_beginAccess();
    if (v0[3])
    {
      v86 = v12;
      v88 = v19;

      v30 = ContextActionsConfiguration.objectGraph.getter();

      v87 = v0;
      if (!v0[3])
      {
        goto LABEL_6;
      }

      v89 = v30;

      dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

      v31 = type metadata accessor for PresentationSource();
      if ((*(*(v31 - 8) + 48))(v29, 1, v31))
      {

        sub_100009104(v29, &unk_10057BB90);
        return;
      }

      v32 = PresentationSource.viewController.getter();
      sub_100009104(v29, &unk_10057BB90);
      if (!v32)
      {
LABEL_6:

LABEL_7:

        return;
      }

      v33 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      v34 = v103;
      swift_beginAccess();
      sub_1001EAFE4(v34 + v33, v26);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v59 = v88;
        if (EnumCaseMultiPayload)
        {
          if (*(*v26 + 16))
          {
            v77 = v94;
            (*(v94 + 16))(v5, *v26 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v3);

            v78 = v95;
            EpisodeOffer.showOffer.getter();
            (*(v77 + 8))(v5, v3);
            v79 = v98;
            ShowOffer.storeUrl.getter();
            (*(v96 + 8))(v78, v97);
            v81 = v101;
            v80 = v102;
            if ((*(v101 + 48))(v79, 1, v102) != 1)
            {
              v82 = v91;
              (*(v81 + 32))(v91, v79, v80);
              sub_1000044A0(v87 + 4, v87[7]);
              v84 = v99;
              v83 = v100;
              (*(v100 + 16))(v99, v103 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v59);
              dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

              (*(v83 + 8))(v84, v88);
              (*(v81 + 8))(v82, v102);
              return;
            }
          }

          else
          {

            v79 = v98;
            (*(v101 + 56))(v98, 1, 1, v102);
          }

          sub_100009104(v79, &qword_100574040);
          return;
        }

        sub_10027F15C(v26, type metadata accessor for EpisodeContextActionDataType);
        sub_1001EAFE4(v34 + v33, v23);
        v60 = sub_100398A94();
        sub_10027F15C(v23, type metadata accessor for EpisodeContextActionDataType);
        if (v60)
        {
          v61 = [v60 podcast];

          if (v61)
          {
            v62 = [v61 uuid];

            if (v62)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v63 = v87[7];
              v102 = v87[8];
              sub_1000044A0(v87 + 4, v63);
              v64 = v32;
              v66 = v99;
              v65 = v100;
              (*(v100 + 16))(v99, v103 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v59);
              dispatch thunk of EpisodeControllerProtocol.presentShowPage(asPartOf:for:from:presentationHint:suppressMetrics:)();

              (*(v65 + 8))(v66, v59);
              return;
            }
          }
        }

        goto LABEL_47;
      }

      v36 = v88;
      if (EnumCaseMultiPayload == 2)
      {
        v67 = *v26;
        if (*v26 >> 62)
        {
          v68 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v69 = v87;
        if (v68)
        {
          if ((v67 & 0xC000000000000001) != 0)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_57;
            }

            v70 = *(v67 + 32);
          }

          v71 = v70;

          v72 = [v71 podcastStoreId];

          v73 = [objc_opt_self() podcastUrlForStoreId:v72];
          if (v73)
          {
            v74 = v92;
            v75 = v73;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v55 = v101;
            v54 = v93;
            v52 = v32;
            (*(v101 + 32))(v93, v74, v102);
            v76 = v69[7];
            v98 = v69[8];
            sub_1000044A0(v69 + 4, v76);
            v57 = v99;
            v56 = v100;
            (*(v100 + 16))(v99, v103 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v36);
            v58 = v36;
            goto LABEL_39;
          }

          goto LABEL_47;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {

          sub_10027F15C(v26, type metadata accessor for EpisodeContextActionDataType);
          return;
        }

        v37 = *v26;
        if (*v26 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = v87;
        v40 = v86;
        if (v38)
        {
          if ((v37 & 0xC000000000000001) != 0)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
            v42 = v41;

            v43 = MPCPlayerResponseItem.podcastEpisode.getter();

            if (!v43 || (v44 = [v43 podcast], v43, !v44) || (v45 = MPModelObject.adamID.getter(), v47 = v46, v44, (v47 & 1) != 0))
            {
LABEL_47:

              goto LABEL_7;
            }

            if ((v45 & 0x8000000000000000) == 0)
            {
              v48 = [objc_opt_self() podcastUrlForStoreId:v45];
              v49 = v101;
              if (v48)
              {
                v50 = v90;
                v51 = v48;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v52 = v32;
                (*(v49 + 32))(v40, v50, v102);
                v53 = v39[7];
                v98 = v39[8];
                sub_1000044A0(v39 + 4, v53);
                v54 = v40;
                v55 = v49;
                v57 = v99;
                v56 = v100;
                v58 = v88;
                (*(v100 + 16))(v99, v103 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v88);
LABEL_39:
                dispatch thunk of EpisodeControllerProtocol.presentStorePage(asPartOf:for:from:presentationHint:suppressMetrics:)();

                (*(v56 + 8))(v57, v58);
                (*(v55 + 8))(v54, v102);
                return;
              }

              goto LABEL_47;
            }

LABEL_58:
            __break(1u);
            return;
          }

          if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v41 = *(v37 + 32);
            goto LABEL_19;
          }

LABEL_57:
          __break(1u);
          goto LABEL_58;
        }
      }
    }
  }
}

BOOL sub_1003B1B64()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v2);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for InteractionContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v12 = *(v0 + 24);
  if (v12)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v9 + 8))(v11, v8);
    LOBYTE(v12) = InteractionContext.Page.isShowPage.getter();
    sub_10027F15C(v7, &type metadata accessor for InteractionContext.Page);
  }

  result = 0;
  v14 = *(v1 + 16);
  if (v14 && (v12 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v14 + v15, v4);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v17 = *(*v4 + 16);
      }

      else
      {
        v18 = *v4;

        v17 = *(v18 + 16);
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
      {
        sub_10027F15C(v4, type metadata accessor for EpisodeContextActionDataType);
        return 0;
      }

      if (*v4 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    return v17 == 1;
  }

  return result;
}

uint64_t sub_1003B1E18()
{

  sub_100004590(v0 + 32);
  v1 = OBJC_IVAR____TtC8Podcasts34EpisodePresentPodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EpisodePresentPodcastContextAction()
{
  result = qword_1005838C8;
  if (!qword_1005838C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B1F20()
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

uint64_t sub_1003B1FC8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100468470;
  v1._countAndFlagsBits = 0x6853206F74206F47;
  v1._object = 0xEA0000000000776FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000021;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1003B2078@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts34EpisodePresentPodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1003B20F0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.episodeGoToShow(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1003B21DC(uint64_t a1)
{
  result = sub_1003B2264(&unk_100582240);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003B2220(uint64_t a1)
{
  result = sub_1003B2264(&qword_100583968);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003B2264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EpisodePresentPodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1003B22A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.AlertAction.Button();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v67 = v51 - v8;
  __chkstk_darwin(v9);
  v65 = v51 - v10;
  v11 = Models.AlertAction.title.getter();
  if (!v12)
  {
    v20 = type metadata accessor for Models.AlertAction();
    (*(*(v20 - 8) + 8))(a1, v20);

    return 0;
  }

  v13 = v12;
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (v64 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 = v11, v16 = *(Models.AlertAction.buttons.getter() + 16), , !v16) || (v17 = *(Models.AlertAction.buttons.getter() + 16), , ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), [ObjCClassFromMetadata maximumActionCount] < v17))
  {
    v19 = type metadata accessor for Models.AlertAction();
    (*(*(v19 - 8) + 8))(a1, v19);

    return 0;
  }

  v54 = ObjCClassFromMetadata;
  sub_100168088(&qword_100574690);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100400790;
  *(v22 + 32) = v15;
  *(v22 + 40) = v13;
  v23.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = Models.AlertAction.buttons.getter();
  v25 = *(v24 + 16);
  if (v25)
  {
    isa = v23.super.isa;
    v53 = a1;
    v69[4] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v27 = *(v5 + 16);
    v26 = v5 + 16;
    v63 = v27;
    v28 = *(v26 + 64);
    v29 = v26;
    v51[1] = v24;
    v30 = v24 + ((v28 + 32) & ~v28);
    v31 = *(v29 + 56);
    v61 = v29;
    v62 = v28;
    v59 = (v28 + 16) & ~v28;
    v60 = v31;
    v57 = (v29 + 16);
    v58 = (v6 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = v69;
    v55 = (v29 - 8);
    v32 = v65;
    v33 = v67;
    do
    {
      v34 = v63;
      v63(v32, v30, v4);
      v34(v33, v32, v4);
      v66 = objc_allocWithZone(CPAlertAction);

      Models.AlertAction.Button.title.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = Models.AlertAction.Button.role.getter();
      v38 = sub_100227994(v36, v37);
      v39 = v4;
      v40 = v64;
      v34(v64, v67, v39);
      v41 = v58;
      v42 = swift_allocObject();
      v43 = v40;
      v4 = v39;
      (*v57)(v42 + v59, v43, v39);
      *(v42 + v41) = a2;
      v69[2] = sub_1003B2894;
      v69[3] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v69[0] = sub_1002E8240;
      v69[1] = &unk_1004F2FA8;
      v44 = _Block_copy(aBlock);

      [v66 initWithTitle:v35 style:v38 handler:v44];
      v45 = v44;
      v32 = v65;
      _Block_release(v45);

      v33 = v67;
      v46 = *v55;
      (*v55)(v67, v39);
      v46(v32, v39);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v30 += v60;
      --v25;
    }

    while (v25);

    a1 = v53;
    v23.super.isa = isa;
  }

  else
  {
  }

  v47 = objc_allocWithZone(v54);
  sub_1003B2930();
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = [v47 initWithTitleVariants:v23.super.isa actions:v48];

  v50 = type metadata accessor for Models.AlertAction();
  (*(*(v50 - 8) + 8))(a1, v50);
  return v49;
}

uint64_t sub_1003B2894(uint64_t a1)
{
  v3 = *(type metadata accessor for Models.AlertAction.Button() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002274C4(a1, v1 + v4, v5);
}

unint64_t sub_1003B2930()
{
  result = qword_10057F0F8;
  if (!qword_10057F0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057F0F8);
  }

  return result;
}

void CarPlayDevice.init(asPartOf:)()
{
  sub_1003B2A14();
  BaseObjectGraph.inject<A>(_:)();
  v0 = [v1 carTraitCollection];
  [v0 displayScale];
}

unint64_t sub_1003B2A14()
{
  result = qword_100575D00;
  if (!qword_100575D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100575D00);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayString()()
{
  v0 = Date.verboseDisplayString()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Date.verboseDisplayStringWithoutTime()()
{
  v0 = Date.verboseDisplayStringWithoutTime()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall ShelfIDBuilder.build()()
{
  v0 = ShelfIDBuilder.build()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)()
{
  return dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)();
}

{
  return dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)();
}

Swift::String __swiftcall PFLocalizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = PFLocalizedString(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t EpisodeStateController.stateMachine(for:)()
{
  return EpisodeStateController.stateMachine(for:)();
}

{
  return EpisodeStateController.stateMachine(for:)();
}

uint64_t EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)()
{
  return EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
}

{
  return EpisodeStateController<>.modernEpisodeDownloadStateMachine(for:)();
}

uint64_t dispatch thunk of PodcastStateController.stateMachine(for:initialState:)()
{
  return dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
}

{
  return dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
}

uint64_t Publisher.combineLatest<A, B>(_:_:)()
{
  return Publisher.combineLatest<A, B>(_:_:)();
}

{
  return Publisher.combineLatest<A, B>(_:_:)();
}

uint64_t Publisher.map<A>(_:)()
{
  return Publisher.map<A>(_:)();
}

{
  return Publisher.map<A>(_:)();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t type metadata accessor for DismissAction()
{
  return type metadata accessor for DismissAction();
}

{
  return type metadata accessor for DismissAction();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

UIViewController_optional __swiftcall ContextActionsConfiguration.shareSheet()()
{
  v0 = ContextActionsConfiguration.shareSheet()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIViewController_optional __swiftcall ContextActionsConfiguration.previewViewController()()
{
  v0 = ContextActionsConfiguration.previewViewController()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall ContextActionsConfiguration.transcriptSelectionActions()()
{
  v0 = ContextActionsConfiguration.transcriptSelectionActions()();
  result._1._rawValue = v1;
  result._0._rawValue = v0;
  return result;
}

Swift::String __swiftcall localizedStringReferencingWiFi(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = localizedStringReferencingWiFi(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t BaseObjectGraph.satisfying<A>(_:with:)()
{
  return BaseObjectGraph.satisfying<A>(_:with:)();
}

{
  return BaseObjectGraph.satisfying<A>(_:with:)();
}

uint64_t MetricsFieldsContext.addingValue<A>(_:forProperty:)()
{
  return MetricsFieldsContext.addingValue<A>(_:forProperty:)();
}

{
  return MetricsFieldsContext.addingValue<A>(_:forProperty:)();
}

uint64_t NativeIntentDispatcher.register<A>(_:)()
{
  return NativeIntentDispatcher.register<A>(_:)();
}

{
  return NativeIntentDispatcher.register<A>(_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t NSManagedObjectContext.performAndWait<A>(_:)()
{
  return NSManagedObjectContext.performAndWait<A>(_:)();
}

{
  return NSManagedObjectContext.performAndWait<A>(_:)();
}

Swift::OpaquePointer_optional __swiftcall NSManagedObjectContext.unsafeCategories(for:)(Swift::OpaquePointer a1)
{
  v1 = NSManagedObjectContext.unsafeCategories(for:)(a1._rawValue);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return _CocoaArrayWrapper.subscript.getter();
}

{
  return _CocoaArrayWrapper.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}