id specialized static PegasusACEConverters.makeShowMapPoints(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  __chkstk_darwin(v0);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(SALocalSearchShowMapPoints) init];
  Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.language.getter();
  v14 = String._bridgeToObjectiveC()();

  [v13 setLanguage:v14];

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemDestination.getter())
  {
    [v13 setShowDirections:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showDirections.getter() & 1];
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.directionType.getter();
    specialized static PegasusACEConverters.makeDirectionsType(_:)(v12);
    v16 = v15;
    (*(v9 + 8))(v12, v8);
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();

      [v13 setDirectionsType:v17];
    }

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v18 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    v19 = *(v4 + 8);
    v19(v7, v3);
    [v13 setItemSource:v18];

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemDestination.getter();
    v20 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    v19(v7, v3);
    [v13 setItemDestination:v20];

    v21 = [objc_allocWithZone(SALocalSearchCarRouteOptions) init];
    [v21 setAvoidTolls:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.avoidTolls.getter() & 1];
    [v21 setAvoidHighways:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.avoidHighways.getter() & 1];
    [v13 setCarRouteOptions:v21];
  }

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter())
  {
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v22 = specialized static PegasusACEConverters.makeActionableMapItem(params:)();
    (*(v4 + 8))(v7, v3);
    [v13 setItemSource:v22];

    [v13 setShowTraffic:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showTraffic.getter() & 1];
    [v13 setSuppressNavigation:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.shouldSuppressNavigation.getter() & 1];
    [v13 setSearchAlongRoute:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isSearchAlongRoute.getter() & 1];
    [v13 setChainResultSet:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isChainResultSet.getter() & 1];
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.regionOfInterestRadiusInMiles.getter();
    v24 = [objc_allocWithZone(NSNumber) initWithDouble:v23];
    [v13 setRegionOfInterestRadiusInMiles:v24];
  }

  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasSearchItems.getter())
  {
    v25 = v29;
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.searchItems.getter();
    v26 = specialized static PegasusACEConverters.makeMapItemList(params:)();
    (*(v30 + 8))(v25, v31);
    [v13 setSearchItems:v26];

    [v13 setSearchAlongRoute:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isSearchAlongRoute.getter() & 1];
    [v13 setItemSource:0];
    [v13 setItemDestination:0];
    [v13 setSuppressNavigation:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.shouldSuppressNavigation.getter() & 1];
    [v13 setChainResultSet:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.isChainResultSet.getter() & 1];
    [v13 setShowDirections:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showDirections.getter() & 1];
    [v13 setShowTraffic:Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.showTraffic.getter() & 1];
  }

  return v13;
}

id specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)()
{
  v0 = [objc_allocWithZone(SAUIAudioDescription) init];
  v1 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bitsPerChannel.getter()];
  [v0 setBitsPerChannel:v1];

  v2 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bytesPerFrame.getter()];
  [v0 setBytesPerFrame:v2];

  v3 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.bytesPerPacket.getter()];
  [v0 setBytesPerPacket:v3];

  v4 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.channelsPerFrame.getter()];
  [v0 setChannelsPerFrame:v4];

  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioDescription and conformance Apple_Parsec_Siri_V2alpha_AudioDescription, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription);
  Message.textFormatString()();
  v5 = String._bridgeToObjectiveC()();

  [v0 setFormat:v5];

  v6 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.formatFlags.getter()];
  [v0 setFormatFlags:v6];

  v7 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.formatID.getter()];
  [v0 setFormatID:v7];

  v8 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.framesPerPacket.getter()];
  [v0 setFramesPerPacket:v8];

  v9 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_AudioDescription.reserved.getter()];
  [v0 setReserved:v9];

  Apple_Parsec_Siri_V2alpha_AudioDescription.sampleRate.getter();
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  [v0 setSampleRate:v11];

  return v0;
}

id specialized static PegasusACEConverters.makeAudioData(audioData:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SAUIAudioData) init];
  v6 = Apple_Parsec_Siri_V2alpha_AudioData.audioBuffer.getter();
  v8 = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v6, v8);
  [v5 setAudioBuffer:isa];

  if (Apple_Parsec_Siri_V2alpha_AudioData.hasDecoderStreamDescription.getter())
  {
    Apple_Parsec_Siri_V2alpha_AudioData.decoderStreamDescription.getter();
    v10 = specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)();
    (*(v1 + 8))(v4, v0);
    [v5 setDecoderStreamDescription:v10];
  }

  if (Apple_Parsec_Siri_V2alpha_AudioData.hasPlayerStreamDescription.getter())
  {
    Apple_Parsec_Siri_V2alpha_AudioData.playerStreamDescription.getter();
    v11 = specialized static PegasusACEConverters.makeAudioDescription(audioDescription:)();
    (*(v1 + 8))(v4, v0);
    [v5 setPlayerStreamDescription:v11];
  }

  return v5;
}

id specialized static PegasusACEConverters.makeSayIt(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioData();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SAUISayIt) init];
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.message.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 setMessage:v6];

  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.dialogIdentifier.getter();
  v7 = String._bridgeToObjectiveC()();

  [v5 setDialogIdentifier:v7];

  v8 = [objc_allocWithZone(NSNumber) initWithBool:Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.getter() & 1];
  [v5 setListenAfterSpeaking:v8];

  [v5 setRepeatable:Apple_Parsec_Siri_V2alpha_SayItBuilderParams.isRepeatable.getter() & 1];
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioDataURL.getter();
  v9 = String._bridgeToObjectiveC()();

  [v5 setAudioDataUrl:v9];

  [v5 setCanUseServerTTS:1];
  if (Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasAudioData.getter())
  {
    Apple_Parsec_Siri_V2alpha_SayItBuilderParams.audioData.getter();
    v10 = specialized static PegasusACEConverters.makeAudioData(audioData:)();
    (*(v1 + 8))(v4, v0);
    [v5 setAudioData:v10];
  }

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setCoordinationOptions:isa];

  return v5;
}

id specialized static PegasusACEConverters.makeLocalSearchMapItem(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = *(v26 + 64);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(SALocalSearchMapItem) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.label.getter();
  v14 = String._bridgeToObjectiveC()();

  [v13 setLabel:v14];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.spokenName.getter();
  v15 = String._bridgeToObjectiveC()();

  [v13 setSpokenName:v15];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v16 = specialized static PegasusACEConverters.makeLocation(params:)();
  (*(v9 + 8))(v12, v8);
  [v13 setLocation:v16];

  v17 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v19 = v18;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v17, v19);
  [v13 setPlaceData2:isa];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  specialized static PegasusACEConverters.makeMapItemType(detailType:)(v7);
  (*(v4 + 8))(v7, v25);
  v21 = String._bridgeToObjectiveC()();

  [v13 setDetailType:v21];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  specialized static PegasusACEConverters.makeDirectionRole(role:)(v3);
  (*(v26 + 8))(v3, v27);
  v22 = String._bridgeToObjectiveC()();

  [v13 setDirectionRole:v22];

  return v13;
}

id specialized static PegasusACEConverters.makeAppPunchOut(params:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);
  (*(v10 + 16))(v13, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v36 = a1;
    v20 = v19;
    v38 = v19;
    *v18 = 136315138;
    v21 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.punchOutUri.getter();
    v23 = v22;
    (*(v10 + 8))(v13, v9);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v38);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_0, v15, v16, "PegasusViewFactory: makeAppPunchOut %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    a1 = v36;

    v8 = v37;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v25 = [objc_allocWithZone(SAUIAppPunchOut) init];
  Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.punchOutUri.getter();
  URL.init(string:)();

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v8, v6, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v29 = 0;
  if ((*(v27 + 48))(v6, 1, v26) != 1)
  {
    URL._bridgeToObjectiveC()(v28);
    v29 = v30;
    (*(v27 + 8))(v6, v26);
  }

  [v25 setPunchOutUri:v29];

  Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.appDisplayName.getter();
  v31 = String._bridgeToObjectiveC()();

  [v25 setAppDisplayName:v31];

  closure #1 in static PegasusACEConverters.makeAppPunchOut(params:)(a1, v8);
  if (v32)
  {
    v33 = String._bridgeToObjectiveC()();
  }

  else
  {
    v33 = 0;
  }

  [v25 setBundleId:v33];

  outlined destroy of Any?(v8, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  return v25;
}

id specialized static PegasusACEConverters.makeShowLocalSearchResult(params:)(uint64_t a1)
{
  v43[1] = a1;
  v1 = type metadata accessor for UUID();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v46 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v43 - v10;
  __chkstk_darwin(v9);
  v47 = v43 - v12;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TimeZone();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_allocWithZone(NSDateFormatter) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setDateFormat:v24];

  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v19 + 8))(v22, v18);
  [v23 setTimeZone:isa];

  static Locale.current.getter();
  v26 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v17, v13);
  [v23 setLocale:v26];

  Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.extSessionGuidCreatedTimestamp.getter();
  v27 = String._bridgeToObjectiveC()();

  v28 = [v23 dateFromString:v27];

  if (v28)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v11, v29, 1, v30);
  v32 = v47;
  outlined init with take of Date?(v11, v47);
  v33 = [objc_allocWithZone(SALocalSearchShowLocalSearchResult) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v44 + 8))(v4, v45);
  v34 = String._bridgeToObjectiveC()();

  [v33 setAceId:v34];

  v35 = v46;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v32, v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v36 = 0;
  if ((*(v31 + 48))(v35, 1, v30) != 1)
  {
    v36 = Date._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v35, v30);
  }

  [v33 setExtSessionGuidCreatedTimestamp:v36];

  Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.extSessionGuid.getter();
  v37 = String._bridgeToObjectiveC()();

  [v33 setExtSessionGuid:v37];

  v38 = Apple_Parsec_Siri_V2alpha_ShowLocalSearchResultBuilderParams.placeData.getter();
  v40 = v39;
  v41 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v38, v40);
  [v33 setRawData:v41];

  outlined destroy of Any?(v32, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v33;
}

void *specialized static PegasusACEConverters.makeAppPunchOut(cmdBuilder:)(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t (*a4)(char *), const char *a5)
{
  v47 = a5;
  v48 = a3;
  v45 = a4;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v44 - v16;
  v18 = a2(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v44 - v21;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v17, 1, v23) == 1)
  {
    outlined destroy of Any?(v17, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
LABEL_10:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.information);
    v35 = *(v8 + 16);
    v35(v13, a1, v7);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315138;
      v35(v46, v13, v7);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      (*(v8 + 8))(v13, v7);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v49);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_0, v36, v37, v47, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    return 0;
  }

  v25 = (*(v24 + 88))(v17, v23);
  if (v25 != *v48)
  {
    (*(v24 + 8))(v17, v23);
    goto LABEL_10;
  }

  (*(v24 + 96))(v17, v23);
  (*(v19 + 32))(v22, v17, v18);
  v26 = v45(v22);
  v27 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = v26;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v32 = String._bridgeToObjectiveC()();

    [v31 setAceId:v32];
  }

  (*(v19 + 8))(v22, v18);
  return v26;
}

uint64_t specialized static PegasusACEConverters.makeInputOrigin(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InputOrigin();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.homeButton(_:))
  {
    v8 = &SAInputOriginHomeButtonValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.remoteButton(_:))
  {
    v8 = &SAInputOriginRemoteButtonValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.remoteAppButton(_:))
  {
    v8 = &SAInputOriginRemoteAppButtonValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.assistantSpeechButton(_:))
  {
    v8 = &SAInputOriginAssistantSpeechButtonValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.assistantTextInput(_:))
  {
    v8 = &SAInputOriginAssistantTextInputValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.priorRequest(_:))
  {
    v8 = &SAInputOriginPriorRequestValue;
  }

  else
  {
    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.voiceTrigger(_:))
    {
      goto LABEL_14;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.serverGenerated(_:))
    {
      v8 = &SAInputOriginServerGeneratedValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.motionGesture(_:))
    {
      v8 = &SAInputOriginMotionGestureValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.raiseToSpeak(_:))
    {
      v8 = &SAInputOriginRaiseToSpeakValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.clientGenerated(_:))
    {
      v8 = &SAInputOriginClientGeneratedValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.tapToRefresh(_:))
    {
      v8 = &SAInputOriginTapToRefreshValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.backgroundRefresh(_:))
    {
      v8 = &SAInputOriginBackgroundRefreshValue;
      goto LABEL_27;
    }

    if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.bluetoothVoiceTrigger(_:))
    {
LABEL_14:
      v8 = &SAInputOriginBluetoothVoiceTriggerValue;
    }

    else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.bluetoothDoubleTap(_:))
    {
      v8 = &SAInputOriginBluetoothDoubleTapValue;
    }

    else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.triggerlessFollowup(_:))
    {
      v8 = &SAInputOriginTriggerlessFollowupValue;
    }

    else
    {
      if (v7 != enum case for Apple_Parsec_Siri_V2alpha_InputOrigin.dialogButtonTap(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }

      v8 = &SAInputOriginDialogButtonTapValue;
    }
  }

LABEL_27:
  v9 = *v8;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id specialized static PegasusACEConverters.makeStartRequest(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_InputOrigin();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SAStartRequest) init];
  [v5 setEyesFree:Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.eyesFree.getter() & 1];
  Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.utterance.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 setUtterance:v6];

  Apple_Parsec_Siri_V2alpha_StartRequestBuilderParams.inputOrigin.getter();
  specialized static PegasusACEConverters.makeInputOrigin(from:)(v4);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();

    [v5 setInputOrigin:v9];
  }

  return v5;
}

id specialized static PegasusACEConverters.makeShowPlaceDetails(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of Any?(v3, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v10 + 88))(v3, v9) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showPlaceDetails(_:))
  {
    (*(v10 + 8))(v3, v9);
    return 0;
  }

  (*(v10 + 96))(v3, v9);
  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_allocWithZone(SALocalSearchShowPlaceDetails) init];
  [v11 setItemIndex:Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.itemIndex.getter()];
  v12 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v11;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v17 = String._bridgeToObjectiveC()();

    [v16 setAceId:v17];
  }

  (*(v5 + 8))(v8, v4);
  return v11;
}

void *specialized static PegasusACEConverters.makeStartRequest(cmdBuilder:)(uint64_t a1, uint64_t (*a2)(void), _DWORD *a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = a2(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    outlined destroy of Any?(v10, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v17 + 88))(v10, v16) != *a3)
  {
    (*(v17 + 8))(v10, v16);
    return 0;
  }

  (*(v17 + 96))(v10, v16);
  (*(v12 + 32))(v15, v10, v11);
  v18 = a4(v15);
  v19 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = v18;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v24 = String._bridgeToObjectiveC()();

    [v23 setAceId:v24];
  }

  (*(v12 + 8))(v15, v11);
  return v18;
}

id specialized static PegasusACEConverters.makePushOff(params:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "PegasusACEConverters: In makePushOff static function helper", v3, 2u);
  }

  v70 = [objc_allocWithZone(SAInitiateHandoffOnCompanion) init];
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v4, v5, "PegasusACEConverters: Setting up success callback", v6, 2u);
  }

  v74 = [objc_allocWithZone(SAResultCallback) init];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "PegasusACEConverters: successCallback initialized", v9, 2u);
  }

  [v74 setCode:SAResultCallbackAnySuccessCodeValue];
  v10 = [objc_allocWithZone(SAUIAddViews) init];
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "PegasusACEConverters: successView initialized", v13, 2u);
  }

  v14 = SAUIDialogPhaseSummaryValue;
  [v10 setDialogPhase:SAUIDialogPhaseSummaryValue];
  v15 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "PegasusACEConverters: successAssistantView initialized", v18, 2u);
  }

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessage.getter();
  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];

  v20 = v15;
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessage.getter();
  v21 = String._bridgeToObjectiveC()();

  [v20 setSpeakableText:v21];

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.pushOffMessageCatID.getter();
  v22 = String._bridgeToObjectiveC()();

  [v20 setDialogIdentifier:v22];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_B9BD0;
  v72 = v20;
  *(v23 + 32) = v20;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setViews:isa];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_B9BD0;
  *(v25 + 32) = v10;
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v74 setCommands:v26];

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "PegasusACEConverters: Setting up failure callback", v29, 2u);
  }

  v30 = [objc_allocWithZone(SAResultCallback) init];
  [v30 setCode:SAResultCallbackAnyErrorCodeValue];
  v31 = [objc_allocWithZone(SAUIAddViews) init];
  [v31 setDialogPhase:v14];
  v32 = [objc_allocWithZone(SAUIAssistantUtteranceView) init];
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.getter();
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  v34 = v32;
  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessage.getter();
  v35 = String._bridgeToObjectiveC()();

  [v34 setSpeakableText:v35];

  Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.companionUnavailableMessageCatID.getter();
  v36 = String._bridgeToObjectiveC()();

  [v34 setDialogIdentifier:v36];

  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_B9BD0;
  *(v37 + 32) = v34;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v31 setViews:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_B9BD0;
  *(v39 + 32) = v31;
  v73 = v31;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v30 setCommands:v40];

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "PegasusACEConverters: Setting callbacks", v43, 2u);
  }

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_BC310;
  *(v44 + 32) = v30;
  *(v44 + 40) = v74;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v45 = v70;
  v71 = v30;
  v75 = v74;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setCallbacks:v46];

  v47 = objc_allocWithZone(SKIDirectInvocationPayload);
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 initWithIdentifier:v48];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B8690;
  AnyHashable.init<A>(_:)();
  v51 = Apple_Parsec_Siri_V2alpha_PushOffBuilderParams.query.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v51;
  *(inited + 80) = v52;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v53 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v49 setUserData:v53];

  v54 = objc_opt_self();
  v55 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  v56 = [v54 runSiriKitExecutorCommandWithContext:v55 payload:v49];

  v57 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v57 encodeObject:v56 forKey:NSKeyedArchiveRootObjectKey];
  v58 = [objc_allocWithZone(SASessionHandoffPayload) init];
  v59 = [v57 encodedData];
  v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v60, v62);
  [v58 setSessionHandoffData:v63];

  [v45 setHandoffPayload:v58];
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v64 = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  [v45 setIsSiriXRequest:v64];

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_0, v65, v66, "PegasusACEConverters: returning from makePushOff helper", v67, 2u);
  }

  return v45;
}

void specialized static PegasusACEConverters.makePushOff(cmdBuilder:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PushOffBuilderParams();
  v54 = *(v52 - 8);
  v14 = v54[8];
  __chkstk_darwin(v52);
  v53 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.information);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "PegasusACEConverters: In makePushOff static function", v19, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    outlined destroy of Any?(v13, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    goto LABEL_17;
  }

  if ((*(v21 + 88))(v13, v20) == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.pushOff(_:))
  {
    (*(v21 + 96))(v13, v20);
    v22 = v52;
    (v54[4])(v53, v13, v52);
    v23 = specialized static PegasusACEConverters.makePushOff(params:)();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "PegasusACEConverters: Was able to get pushOff object from helper", v26, 2u);
    }

    v27 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v29 = v28;

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = v23;
      Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
      v32 = String._bridgeToObjectiveC()();

      [v31 setAceId:v32];

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v33, v34))
      {

        goto LABEL_25;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = 136315138;
      v37 = [v31 aceId];

      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v55);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v33, v34, "PegasusACEConverters: pushOff aceID %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
    }

    else
    {
      v33 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v50))
      {
LABEL_23:

LABEL_25:
        (v54[1])(v53, v22);
        return;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v33, v50, "PegasusACEConverters: Was unable to get aceID from SiriCommandBuilder", v51, 2u);
    }

    goto LABEL_23;
  }

  (*(v21 + 8))(v13, v20);
LABEL_17:
  v42 = *(v3 + 16);
  v42(v9, a1, v2);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = v54;
    *v45 = 136315138;
    v42(v7, v9, v2);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    (*(v3 + 8))(v9, v2);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v55);

    *(v45 + 4) = v49;
    _os_log_impl(&dword_0, v43, v44, "PegasusACEConverters: Unexpected type for app punch out %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {

    (*(v3 + 8))(v9, v2);
  }
}

id specialized static PegasusACEConverters.makeRecordLocationActivity(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(SARecordLocationActivity) init];
  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.location.getter();
  v14 = specialized static PegasusACEConverters.makeLocation(params:)();
  (*(v9 + 8))(v12, v8);
  [v13 setLocation:v14];

  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.sourceType.getter();
  (*(v1 + 104))(v5, enum case for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType.default(_:), v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType, &type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v15(v7, v0);
  v16 = String._bridgeToObjectiveC()();

  [v13 setSourceType:v16];

  return v13;
}

id specialized static PegasusACEConverters.makePhoneCall(params:)()
{
  v0 = [objc_allocWithZone(SAPhone) init];
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setNumber:v1];

  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setLabel:v2];

  v3 = [objc_allocWithZone(SAPersonAttribute) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setDataType:v4];

  [v3 setTypedData:v0];
  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.phoneNumber.getter();
  v5 = String._bridgeToObjectiveC()();

  [v3 setData:v5];

  Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
  v6 = String._bridgeToObjectiveC()();

  [v3 setDisplayText:v6];

  v7 = [objc_allocWithZone(SAPhoneCall) init];
  [v7 setCallRecipient:v3];

  return v7;
}

void *specialized static PegasusACEConverters.makeSwitchProfile(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of Any?(v3, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v10 + 88))(v3, v9) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.switchProfile(_:))
  {
    (*(v10 + 8))(v3, v9);
    return 0;
  }

  (*(v10 + 96))(v3, v9);
  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_allocWithZone(SAProfileSwitch) init];
  Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = v11;
  [v11 setSharedUserId:v12];

  v14 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v13;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v19 = String._bridgeToObjectiveC()();

    [v18 setAceId:v19];
  }

  (*(v5 + 8))(v8, v4);
  return v13;
}

id specialized static PegasusACEConverters.makeUnlockDevice(params:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v52 - v8;
  v10 = [objc_allocWithZone(SAUIUnlockDevice) init];
  v11 = Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.successCommands.getter();
  v63 = &_swiftEmptyArrayStorage;
  v12 = *(v11 + 16);
  v53 = v10;
  v56 = v3;
  if (v12)
  {
    v52[1] = a1;
    v52[2] = v11;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v58 = v14;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    *&v57 = *(v13 + 56);
    v16 = (v13 - 8);
    v54 = xmmword_B9BD0;
    v55 = v13;
    for (i = v14(v9, v15, v2); ; i = v58(v9, v15, v2))
    {
      v18 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter(i);
      if (!v18)
      {
        goto LABEL_4;
      }

      v19 = v18;
      v60 = &OBJC_PROTOCOL___SAClientBoundCommand;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        v59 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v20 = swift_dynamicCastObjCProtocolConditional();
        if (!v20)
        {

          v13 = v55;
LABEL_4:
          (*v16)(v9, v2);
          goto LABEL_5;
        }

        v21 = v20;
        v22 = objc_allocWithZone(SASendCommands);
        v23 = v19;
        v24 = [v22 init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v25 = swift_allocObject();
        *(v25 + 16) = v54;
        *(v25 + 32) = v21;
        v26 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v24 setCommands:isa];

        v13 = v55;
      }

      (*v16)(v9, v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v28 = v13;
        v29 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v28;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
      v15 += v57;
      if (!--v12)
      {

        v10 = v53;
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setSuccessCommands:v31];

  v32 = Apple_Parsec_Siri_V2alpha_UnlockDeviceBuilderParams.failureCommands.getter();
  v63 = &_swiftEmptyArrayStorage;
  v33 = *(v32 + 16);
  if (!v33)
  {

    goto LABEL_31;
  }

  *&v54 = v30;
  v58 = *(v56 + 16);
  v34 = *(v56 + 80);
  v55 = v32;
  v35 = v32 + ((v34 + 32) & ~v34);
  v36 = *(v56 + 72);
  v37 = (v56 + 8);
  v57 = xmmword_B9BD0;
  v56 += 16;
  for (j = v58(v7, v35, v2); ; j = v58(v7, v35, v2))
  {
    v39 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter(j);
    if (!v39)
    {
      goto LABEL_19;
    }

    v40 = v39;
    v62 = &OBJC_PROTOCOL___SAClientBoundCommand;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v61 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v41 = swift_dynamicCastObjCProtocolConditional();
      if (!v41)
      {

LABEL_19:
        (*v37)(v7, v2);
        goto LABEL_20;
      }

      v42 = v41;
      v43 = objc_allocWithZone(SASendCommands);
      v44 = v40;
      v45 = [v43 init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = v57;
      *(v46 + 32) = v42;
      v47 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      v48 = Array._bridgeToObjectiveC()().super.isa;

      [v45 setCommands:v48];
    }

    (*v37)(v7, v2);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v63 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v49 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    v35 += v36;
    if (!--v33)
    {
      break;
    }
  }

  v10 = v53;
LABEL_31:
  v50 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setFailureCommands:v50];

  return v10;
}

id specialized static PegasusACEConverters.makeUnlockDeviceWithWatch(params:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v48 - v8;
  v10 = [objc_allocWithZone(SAUIUnlockDeviceWithWatch) init];
  v11 = Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams.successCommands.getter();
  v59 = &_swiftEmptyArrayStorage;
  v12 = *(v11 + 16);
  v49 = v10;
  v52 = v3;
  if (v12)
  {
    v48[1] = a1;
    v48[2] = v11;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v54 = v14;
    v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    *&v53 = *(v13 + 56);
    v16 = (v13 - 8);
    v50 = xmmword_B9BD0;
    v51 = v13;
    for (i = v14(v9, v15, v2); ; i = v54(v9, v15, v2))
    {
      v18 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter(i);
      if (!v18)
      {
        goto LABEL_4;
      }

      v19 = v18;
      v56 = &OBJC_PROTOCOL___SAClientBoundCommand;
      if (!swift_dynamicCastObjCProtocolConditional())
      {
        v55 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v20 = swift_dynamicCastObjCProtocolConditional();
        if (!v20)
        {

          v13 = v51;
LABEL_4:
          (*v16)(v9, v2);
          goto LABEL_5;
        }

        v21 = v20;
        v22 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v23 = swift_allocObject();
        *(v23 + 16) = v50;
        *(v23 + 32) = v21;
        v24 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v22 setCommands:isa];

        v13 = v51;
      }

      (*v16)(v9, v2);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v59 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v26 = v13;
        v27 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v26;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_5:
      v15 += v53;
      if (!--v12)
      {

        v10 = v49;
        goto LABEL_16;
      }
    }
  }

LABEL_16:
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setSuccessCommands:v29];

  v30 = Apple_Parsec_Siri_V2alpha_UnlockDeviceWithWatchBuilderParams.failureCommands.getter();
  v59 = &_swiftEmptyArrayStorage;
  v31 = *(v30 + 16);
  if (!v31)
  {

    goto LABEL_31;
  }

  *&v50 = v28;
  v54 = *(v52 + 16);
  v32 = *(v52 + 80);
  v51 = v30;
  v33 = v30 + ((v32 + 32) & ~v32);
  v34 = *(v52 + 72);
  v35 = (v52 + 8);
  v53 = xmmword_B9BD0;
  v52 += 16;
  for (j = v54(v7, v33, v2); ; j = v54(v7, v33, v2))
  {
    v37 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter(j);
    if (!v37)
    {
      goto LABEL_19;
    }

    v38 = v37;
    v58 = &OBJC_PROTOCOL___SAClientBoundCommand;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      v57 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v39 = swift_dynamicCastObjCProtocolConditional();
      if (!v39)
      {

LABEL_19:
        (*v35)(v7, v2);
        goto LABEL_20;
      }

      v40 = v39;
      v41 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v42 = swift_allocObject();
      *(v42 + 16) = v53;
      *(v42 + 32) = v40;
      v43 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      v44 = Array._bridgeToObjectiveC()().super.isa;

      [v41 setCommands:v44];
    }

    (*v35)(v7, v2);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v59 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v45 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_20:
    v33 += v34;
    if (!--v31)
    {
      break;
    }
  }

  v10 = v49;
LABEL_31:
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setFailureCommands:v46];

  return v10;
}

id specialized static PegasusACEConverters.makeOpenLink(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    outlined destroy of Any?(v7, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v14 + 88))(v7, v13) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.openLink(_:))
  {
    (*(v14 + 8))(v7, v13);
    return 0;
  }

  (*(v14 + 96))(v7, v13);
  (*(v9 + 32))(v12, v7, v8);
  v15 = [objc_allocWithZone(SAUIOpenLink) init];
  Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams.ref.getter();
  URL.init(string:)();

  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v19 = 0;
  if ((*(v17 + 48))(v3, 1, v16) != 1)
  {
    URL._bridgeToObjectiveC()(v18);
    v19 = v20;
    (*(v17 + 8))(v3, v16);
  }

  [v15 setRef:v19];

  v21 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = v15;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v26 = String._bridgeToObjectiveC()();

    [v25 setAceId:v26];
  }

  (*(v9 + 8))(v12, v8);
  return v15;
}

void *specialized static PegasusACEConverters.makeSetSiriAuthorizationForApp(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of Any?(v3, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v10 + 88))(v3, v9) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.setSiriAuthorizationForApp(_:))
  {
    (*(v10 + 8))(v3, v9);
    return 0;
  }

  (*(v10 + 96))(v3, v9);
  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_allocWithZone(SASettingSetSiriAuthorizationForApp) init];
  Apple_Parsec_Siri_V2alpha_SetSiriAuthorizationForAppBuilderParams.appBundleID.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = v11;
  [v11 setBundleId:v12];

  v14 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v13;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v19 = String._bridgeToObjectiveC()();

    [v18 setAceId:v19];
  }

  (*(v5 + 8))(v8, v4);
  return v13;
}

id specialized static PegasusACEConverters.makeEndNavigation(cmdBuilder:)(uint64_t a1, int *a2, Class *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v21 - v7;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  v11 = (*(v10 + 88))(v8, v9);
  v12 = *a2;
  (*(v10 + 8))(v8, v9);
  if (v11 != v12)
  {
    return 0;
  }

  v13 = [objc_allocWithZone(*a3) init];
  v14 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = v13;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v19 = String._bridgeToObjectiveC()();

    [v18 setAceId:v19];
  }

  return v13;
}

void *specialized static PegasusACEConverters.makeSearchMarketplace(cmdBuilder:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    outlined destroy of Any?(v3, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    return 0;
  }

  if ((*(v10 + 88))(v3, v9) != enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.searchMarketplace(_:))
  {
    (*(v10 + 8))(v3, v9);
    return 0;
  }

  (*(v10 + 96))(v3, v9);
  (*(v5 + 32))(v8, v3, v4);
  v11 = [objc_allocWithZone(SAAppsSearchMarketplace) init];
  Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.marketplace.getter();
  v12 = String._bridgeToObjectiveC()();

  [v11 setMarketplace:v12];

  Apple_Parsec_Siri_V2alpha_SearchMarketplaceParams.keyword.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = v11;
  [v11 setKeyword:v13];

  v15 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = v14;
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v20 = String._bridgeToObjectiveC()();

    [v19 setAceId:v20];
  }

  (*(v5 + 8))(v8, v4);
  return v14;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RunPommesRequestFlow.__allocating_init(pommesResponse:identifiedUser:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  outlined init with take of IdentifiedUser?(a2, v9 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  outlined init with take of SiriSuggestionsBroker(a3, v9 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v10 = v9 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  *(v10 + 40) = 2;
  return v9;
}

uint64_t RunPommesRequestFlow.init(pommesResponse:identifiedUser:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *(v3 + 16) = a1;
  outlined init with take of IdentifiedUser?(a2, v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  outlined init with take of SiriSuggestionsBroker(a3, v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v5 = v3 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 40) = 2;
  return v3;
}

uint64_t outlined init with take of IdentifiedUser?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of IdentifiedUser?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RunPommesRequestFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  result = outlined init with copy of RunPommesRequestFlow.State(v1 + v3, v7);
  if (v8)
  {
    if (v8 == 1)
    {
      *a1 = *&v7[0];
    }

    else
    {
      lazy protocol witness table accessor for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError();
      result = swift_allocError();
      *v6 = 0xD00000000000002DLL;
      v6[1] = 0x80000000000C0A00;
      *a1 = result;
    }

    v5 = 1;
  }

  else
  {
    result = outlined init with take of SiriSuggestionsBroker(v7, a1);
    v5 = 0;
  }

  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError()
{
  result = lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError;
  if (!lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunPommesRequestFlow.InvalidStateError and conformance RunPommesRequestFlow.InvalidStateError);
  }

  return result;
}

uint64_t RunPommesRequestFlow.execute()(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for ExternalActivationRequest();
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v10 = type metadata accessor for IdentifiedUser();
  v2[38] = v10;
  v11 = *(v10 - 8);
  v2[39] = v11;
  v12 = *(v11 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(RunPommesRequestFlow.execute(), 0, 0);
}

uint64_t RunPommesRequestFlow.execute()()
{
  v1 = v0[30];
  v2 = [objc_allocWithZone(SARDRunPOMMESRequest) init];
  v0[41] = v2;
  v3 = *(v1 + 16);
  v4 = PommesResponse.asrRecognition.getter();
  if (v4)
  {

    v5 = &SARDRequestTypeSPEECHValue;
  }

  else
  {
    v5 = &SARDRequestTypeTEXTValue;
  }

  v6 = *v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String._bridgeToObjectiveC()();

  [v2 setRequestType:v7];

  v8 = PommesResponse.asrRecognition.getter();
  [v2 setRecognition:v8];

  PommesResponse.searchRequestUtterance.getter();
  v9 = String._bridgeToObjectiveC()();

  [v2 setUtterance:v9];

  PommesResponse.responseVariantResult.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[38];
  v13 = v0[39];
  v14 = v0[37];
  v15 = v0[30];
  [v2 setResponseVariantResult:v11];

  outlined init with copy of IdentifiedUser?(v15 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser, v14);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    outlined destroy of IdentifiedUser?(v0[37]);
    PommesResponse.sharedUserId.getter();
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v2 setUserId:v17];
  }

  else
  {
    (*(v0[39] + 32))(v0[40], v0[37], v0[38]);
    IdentifiedUser.sharedUserId.getter();
    if (v18)
    {
      v19 = String._bridgeToObjectiveC()();
    }

    else
    {
      v19 = 0;
    }

    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[38];
    [v2 setUserId:v19];

    [v2 setUserIdentityClassification:SAUserIdentityClassificationConfidentValue];
    v23 = IdentifiedUser.selectedUserAttributes.getter();
    [v2 setSelectedUserAttributes:v23];

    (*(v21 + 8))(v20, v22);
  }

  v24 = PommesResponse.encodedNLUserParses.getter();
  if (v25 >> 60 != 15)
  {
    v26 = v24;
    v27 = v25;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 setNlUserParses:isa];

    outlined consume of Data?(v26, v27);
  }

  v29 = PommesResponse.encodedNLFallbackParse.getter();
  if (v30 >> 60 != 15)
  {
    v31 = v29;
    v32 = v30;
    v33 = Data._bridgeToObjectiveC()().super.isa;
    [v2 setNlFallbackParse:v33];

    outlined consume of Data?(v31, v32);
  }

  v35 = v0[35];
  v34 = v0[36];
  v36 = v0[33];
  v37 = v0[34];
  v38 = [objc_allocWithZone(SAStartLocalRequest) init];
  v0[42] = v38;
  v39 = v38;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v35 + 8))(v34, v37);
  v40 = String._bridgeToObjectiveC()();

  [v39 setAceId:v40];

  [v39 setRefId:0];
  v41 = v2;
  v42 = [v39 aceId];

  [v41 setRefId:v42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_B9BD0;
  *(v43 + 32) = v41;
  v44 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v39 setClientBoundCommands:v45];

  v46 = [objc_allocWithZone(AFRequestInfo) init];
  v0[43] = v46;
  [v46 setStartLocalRequest:v39];
  [v46 setActivationEvent:7];
  [v46 setOptions:0];
  v47 = v46;
  ExternalActivationRequest.init(requestInfo:flowActivity:)();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v0[44] = __swift_project_value_buffer(v48, static Logger.information);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v49, v50, "Publishing ExternalActivationRequest from RunPommesRequestFlow", v51, 2u);
  }

  v53 = v0[32];
  v52 = v0[33];
  v55 = v0[30];
  v54 = v0[31];

  v56 = (v55 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher);
  v57 = *(v55 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher + 24);
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v0[17] = v54;
  v0[18] = &protocol witness table for ExternalActivationRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(v53 + 16))(boxed_opaque_existential_1, v52, v54);
  v60 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v61 = swift_task_alloc();
  v0[45] = v61;
  *v61 = v0;
  v61[1] = RunPommesRequestFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 14, v57, v58);
}

{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v6 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = RunPommesRequestFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 112));
    v4 = RunPommesRequestFlow.execute();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  *(v0 + 88) = v3;
  *(v0 + 96) = &protocol witness table for ExternalActivationRequest;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  (*(v2 + 32))(boxed_opaque_existential_1, v1, v3);
  *(v0 + 104) = 0;
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  outlined assign with take of RunPommesRequestFlow.State(v0 + 64, v4 + v6);
  swift_endAccess();
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v9 = *(v0 + 320);
  v10 = *(v0 + 328);
  v12 = *(v0 + 288);
  v11 = *(v0 + 296);
  v13 = *(v0 + 264);
  v14 = *(v0 + 232);
  static ExecuteResponse.complete()();

  v15 = *(v0 + 8);

  return v15();
}

{
  v27 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 112));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 368);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 192);
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to publish AceOutput from RunPommesRequestFlow with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 368);
  *(v0 + 56) = 1;
  v15 = OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state;
  swift_beginAccess();
  outlined assign with take of RunPommesRequestFlow.State(v0 + 16, v14 + v15);
  swift_endAccess();
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 320);
  v19 = *(v0 + 328);
  v21 = *(v0 + 288);
  v20 = *(v0 + 296);
  v22 = *(v0 + 264);
  v23 = *(v0 + 232);
  static ExecuteResponse.complete()();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t outlined destroy of IdentifiedUser?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow14IdentifiedUserVSgMd, &_s11SiriKitFlow14IdentifiedUserVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RunPommesRequestFlow.execute(completion:)()
{
  type metadata accessor for RunPommesRequestFlow();
  lazy protocol witness table accessor for type RunPommesRequestFlow and conformance RunPommesRequestFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RunPommesRequestFlow.InvalidStateError()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RunPommesRequestFlow.deinit()
{
  outlined destroy of IdentifiedUser?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher));
  outlined destroy of RunPommesRequestFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state);
  return v0;
}

uint64_t RunPommesRequestFlow.__deallocating_deinit()
{
  outlined destroy of IdentifiedUser?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_identifiedUser);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_outputPublisher));
  outlined destroy of RunPommesRequestFlow.State(v0 + OBJC_IVAR____TtC21InformationFlowPlugin20RunPommesRequestFlow_state);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance RunPommesRequestFlow(uint64_t a1)
{
  v4 = *(**v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t type metadata accessor for RunPommesRequestFlow()
{
  result = type metadata singleton initialization cache for RunPommesRequestFlow;
  if (!type metadata singleton initialization cache for RunPommesRequestFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RunPommesRequestFlow and conformance RunPommesRequestFlow()
{
  result = lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow;
  if (!lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow)
  {
    type metadata accessor for RunPommesRequestFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunPommesRequestFlow and conformance RunPommesRequestFlow);
  }

  return result;
}

void type metadata completion function for RunPommesRequestFlow()
{
  type metadata accessor for IdentifiedUser?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for IdentifiedUser?()
{
  if (!lazy cache variable for type metadata for IdentifiedUser?)
  {
    type metadata accessor for IdentifiedUser();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IdentifiedUser?);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RunPommesRequestFlow.InvalidStateError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for RunPommesRequestFlow.InvalidStateError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21InformationFlowPlugin016RunPommesRequestB0C5State33_64756BB0B454E557F97EA22C3AC45B02LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RunPommesRequestFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RunPommesRequestFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RunPommesRequestFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t USOParse.userConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for USOParse();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UserParse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  USOParse.userParse.getter();
  v20 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v10 + 8))(v13, v9);
  if (*(v20 + 16))
  {
    (*(v15 + 16))(v18, v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);

    if (Siri_Nlu_External_UserDialogAct.hasRejected.getter())
    {
      (*(v15 + 8))(v18, v14);
      v21 = enum case for ConfirmationResponse.rejected(_:);
      v22 = type metadata accessor for ConfirmationResponse();
      v23 = *(v22 - 8);
      v24 = v48;
      (*(v23 + 104))(v48, v21, v22);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }

    v42 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
    (*(v15 + 8))(v18, v14);
    if (v42)
    {
      v43 = enum case for ConfirmationResponse.confirmed(_:);
      v22 = type metadata accessor for ConfirmationResponse();
      v23 = *(v22 - 8);
      v24 = v48;
      (*(v23 + 104))(v48, v43, v22);
      return (*(v23 + 56))(v24, 0, 1, v22);
    }
  }

  else
  {
    v25 = v19;
    v27 = v46;
    v26 = v47;
    v28 = v6;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.information);
    v30 = *(v27 + 16);
    v31 = v8;
    v32 = v26;
    v30(v8, v25, v26);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v31;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      v30(v28, v35, v32);
      v38 = String.init<A>(describing:)();
      v40 = v39;
      (*(v27 + 8))(v35, v32);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v49);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_0, v33, v34, "Invalid USOParse while looking for user confirmation. Parse has no UDAs: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    else
    {

      (*(v27 + 8))(v31, v26);
    }
  }

  v45 = type metadata accessor for ConfirmationResponse();
  return (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
}

uint64_t Input.userCancelled.getter()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for USOParse();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Parse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for Parse.directInvocation(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v1 + 32))(v4, v14, v0);
    v16 = Parse.DirectInvocation.identifier.getter();
    v18 = v17;
    v19 = static SiriKitDirectInvocationPayloads.cancel.getter();
    v20 = [v19 identifier];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (v16 == v21 && v18 == v23)
    {
      v25 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v1 + 8))(v4, v0);
  }

  else if (v15 == enum case for Parse.uso(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v6 + 32))(v9, v14, v5);
    v25 = USOParse.userCancelled.getter();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t Input.userConfirmationResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = type metadata accessor for Parse.DirectInvocation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for USOParse();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Parse();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 != enum case for Parse.directInvocation(_:))
  {
    if (v16 == enum case for Parse.uso(_:))
    {
      (*(v12 + 96))(v15, v11);
      (*(v7 + 32))(v10, v15, v6);
      USOParse.userConfirmationResponse.getter(v42);
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v37 = type metadata accessor for ConfirmationResponse();
      (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
      return (*(v12 + 8))(v15, v11);
    }
  }

  (*(v12 + 96))(v15, v11);
  (*(v2 + 32))(v5, v15, v1);
  v17 = Parse.DirectInvocation.identifier.getter();
  v19 = v18;
  v20 = static SiriKitDirectInvocationPayloads.reject.getter();
  v21 = [v20 identifier];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v22 == v17 && v24 == v19)
  {

    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_13:
    (*(v2 + 8))(v5, v1);

    v33 = enum case for ConfirmationResponse.rejected(_:);
    v34 = type metadata accessor for ConfirmationResponse();
    v35 = *(v34 - 8);
    v36 = v42;
    (*(v35 + 104))(v42, v33, v34);
    return (*(v35 + 56))(v36, 0, 1, v34);
  }

  v27 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v28 = [v27 identifier];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v29 == v17 && v31 == v19)
  {

    (*(v2 + 8))(v5, v1);
LABEL_18:
    v39 = enum case for ConfirmationResponse.confirmed(_:);
    v34 = type metadata accessor for ConfirmationResponse();
    v35 = *(v34 - 8);
    v36 = v42;
    (*(v35 + 104))(v42, v39, v34);
    return (*(v35 + 56))(v36, 0, 1, v34);
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  (*(v2 + 8))(v5, v1);
  if (v38)
  {
    goto LABEL_18;
  }

  v40 = type metadata accessor for ConfirmationResponse();
  return (*(*(v40 - 8) + 56))(v42, 1, 1, v40);
}

uint64_t USOParse.userCancelled.getter()
{
  v1 = type metadata accessor for USOParse();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v0;
  USOParse.userParse.getter();
  v19 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v9 + 8))(v12, v8);
  if (*(v19 + 16))
  {
    (*(v14 + 16))(v17, v19 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

    v20 = Siri_Nlu_External_UserDialogAct.hasCancelled.getter();
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    v21 = v18;
    v23 = v40;
    v22 = v41;
    v24 = v5;

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.information);
    v26 = *(v23 + 16);
    v27 = v7;
    v28 = v22;
    v26(v7, v21, v22);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v27;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      v26(v24, v31, v28);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      (*(v23 + 8))(v31, v28);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v42);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_0, v29, v30, "Invalid USOParse while looking for user cancellation. Parse has no UDAs: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {

      (*(v23 + 8))(v27, v22);
    }

    v20 = 0;
  }

  return v20 & 1;
}

unint64_t static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.information);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "CommandFactory: make direct & delayed commands", v11, 2u);
  }

  v24[1] = type metadata accessor for PerformanceUtil();
  v12 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v12);
  Date.init()();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  v22 = &v20;
  v23 = v13;
  v21 = partial apply for closure #1 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  v20 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v14 = *(v4 + 8);
  v14(v7, v3);
  v25 = v29;
  v15 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v15);
  v24[0] = v3;
  Date.init()();
  v22 = &v20;
  v23 = v13;
  v21 = partial apply for closure #2 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  v20 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v14(v7, v3);
  v16 = v29;
  v17 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v17);
  Date.init()();
  v22 = &v20;
  v23 = v13;
  v21 = partial apply for closure #3 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:);
  v20 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v14(v7, v24[0]);
  v18 = v29;
  v28 = v25;
  specialized Array.append<A>(contentsOf:)(v16, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  specialized Array.append<A>(contentsOf:)(v18, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  return v28;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for RREntity);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &type metadata accessor for URLQueryItem);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
}

{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(&dword_10 + v13) + 32, (*(&dword_18 + v13) >> 1) - *(&dword_10 + v13), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *static CommandFactory.makeCommands(forComponent:)(uint64_t a1)
{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_ButtonViewComponent.commands.getter);
}

{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.siriCommandBuilder.getter);
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asClientBoundAceCommand.getter()
{
  result = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
  if (result)
  {
    v1 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {
      v2 = swift_dynamicCastObjCProtocolConditional();
      if (v2)
      {
        v3 = v2;
        v4 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_B9BD0;
        *(v5 + 32) = v3;
        v6 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v4 setCommands:isa];

        return v4;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t *Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v92 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v83 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v89 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v83 - v15;
  v17 = __chkstk_darwin(v14);
  v90 = &v83 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v83 - v20;
  __chkstk_darwin(v19);
  v23 = &v83 - v22;
  v91 = v0;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.information);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "InfoViewFactory component missing type", v27, 2u);
    }

    return 0;
  }

  v87 = v1;
  v88 = v2;
  (*(v10 + 32))(v23, v8, v9);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = __swift_project_value_buffer(v29, static Logger.information);
  v31 = *(v10 + 16);
  v31(v21, v23, v9);
  v86 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v85 = v16;
    v35 = v34;
    v36 = swift_slowAlloc();
    v84 = v23;
    v37 = v36;
    v93 = v36;
    *v35 = 136315138;
    v38 = v31;
    v31(v90, v21, v9);
    v39 = String.init<A>(describing:)();
    v40 = v10;
    v83 = v10;
    v41 = v39;
    v43 = v42;
    v44 = v21;
    v45 = *(v40 + 8);
    v45(v44, v9);
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v93);
    v31 = v38;

    *(v35 + 4) = v46;
    _os_log_impl(&dword_0, v32, v33, "Translating command to Ace: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v23 = v84;

    v16 = v85;

    v47 = v83;
  }

  else
  {

    v48 = v21;
    v45 = *(v10 + 8);
    v45(v48, v9);
    v47 = v10;
  }

  v31(v16, v23, v9);
  v49 = (*(v47 + 88))(v16, v9);
  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.recordLocationActivity(_:))
  {
    type metadata accessor for PerformanceUtil();
    v50 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v50);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24SARecordLocationActivityCSgMd, &_sSo24SARecordLocationActivityCSgMR);
    v80 = partial apply for closure #8 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
LABEL_49:
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (v88[1])(v51, v87);
    v45(v23, v9);
    v28 = v93;
    v45(v16, v9);
    return v28;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.appPunchOut(_:))
  {
    type metadata accessor for PerformanceUtil();
    v52 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v52);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SAUIAppPunchOutCSgMd, &_sSo15SAUIAppPunchOutCSgMR);
    v80 = partial apply for closure #1 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.startRequest(_:))
  {
    type metadata accessor for PerformanceUtil();
    v53 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v53);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14SAStartRequestCSgMd, &_sSo14SAStartRequestCSgMR);
    v80 = partial apply for closure #6 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showMapPoints(_:))
  {
    type metadata accessor for PerformanceUtil();
    v54 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v54);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SALocalSearchShowMapPointsCSgMd, &_sSo26SALocalSearchShowMapPointsCSgMR);
    v80 = partial apply for closure #4 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.phoneCall(_:))
  {
    type metadata accessor for PerformanceUtil();
    v55 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v55);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SAPhoneCallCSgMd, &_sSo11SAPhoneCallCSgMR);
    v80 = partial apply for closure #11 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.extendCurrentTts(_:))
  {
    type metadata accessor for PerformanceUtil();
    v56 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v56);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAUIExtendCurrentTTSCSgMd, &_sSo20SAUIExtendCurrentTTSCSgMR);
    v80 = partial apply for closure #12 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.setSiriAuthorizationForApp(_:))
  {
    type metadata accessor for PerformanceUtil();
    v57 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v57);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35SASettingSetSiriAuthorizationForAppCSgMd, &_sSo35SASettingSetSiriAuthorizationForAppCSgMR);
    v80 = partial apply for closure #14 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.sayIt(_:))
  {
    type metadata accessor for PerformanceUtil();
    v58 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v58);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9SAUISayItCSgMd, &_sSo9SAUISayItCSgMR);
    v80 = partial apply for closure #2 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showPlaceDetails(_:))
  {
    type metadata accessor for PerformanceUtil();
    v59 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v59);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29SALocalSearchShowPlaceDetailsCSgMd, &_sSo29SALocalSearchShowPlaceDetailsCSgMR);
    v80 = partial apply for closure #3 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.unlockDevice(_:))
  {
    type metadata accessor for PerformanceUtil();
    v60 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v60);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SAUIUnlockDeviceCSgMd, &_sSo16SAUIUnlockDeviceCSgMR);
    v80 = partial apply for closure #15 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.openLink(_:))
  {
    type metadata accessor for PerformanceUtil();
    v61 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v61);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12SAUIOpenLinkCSgMd, &_sSo12SAUIOpenLinkCSgMR);
    v80 = partial apply for closure #17 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.navigationEnd(_:))
  {
    type metadata accessor for PerformanceUtil();
    v62 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v62);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo26SALocalSearchNavigationEndCSgMd, &_sSo26SALocalSearchNavigationEndCSgMR);
    v80 = partial apply for closure #7 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.unlockDeviceWithWatch(_:))
  {
    type metadata accessor for PerformanceUtil();
    v63 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v63);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25SAUIUnlockDeviceWithWatchCSgMd, &_sSo25SAUIUnlockDeviceWithWatchCSgMR);
    v80 = partial apply for closure #16 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.cancelCurrentTts(_:))
  {
    type metadata accessor for PerformanceUtil();
    v64 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v64);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAUICancelCurrentTTSCSgMd, &_sSo20SAUICancelCurrentTTSCSgMR);
    v80 = partial apply for closure #13 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.switchProfile(_:))
  {
    type metadata accessor for PerformanceUtil();
    v65 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v65);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SAProfileSwitchCSgMd, &_sSo15SAProfileSwitchCSgMR);
    v80 = partial apply for closure #10 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.pushOff(_:))
  {
    type metadata accessor for PerformanceUtil();
    v66 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v66);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo28SAInitiateHandoffOnCompanionCSgMd, &_sSo28SAInitiateHandoffOnCompanionCSgMR);
    v80 = partial apply for closure #9 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.searchMarketplace(_:))
  {
    type metadata accessor for PerformanceUtil();
    v67 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v67);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23SAAppsSearchMarketplaceCSgMd, &_sSo23SAAppsSearchMarketplaceCSgMR);
    v80 = partial apply for closure #18 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  if (v49 == enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showLocalSearchResult(_:))
  {
    type metadata accessor for PerformanceUtil();
    v68 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v68);
    v51 = v92;
    Date.init()();
    v81 = &v79;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo022SALocalSearchShowLocalB6ResultCSgMd, &_sSo022SALocalSearchShowLocalB6ResultCSgMR);
    v80 = partial apply for closure #5 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter;
    v79 = 2;
    goto LABEL_49;
  }

  v31(v89, v23, v9);
  v70 = Logger.logObject.getter();
  LODWORD(v91) = static os_log_type_t.error.getter();
  v92 = v70;
  if (os_log_type_enabled(v70, v91))
  {
    v71 = swift_slowAlloc();
    v87 = v71;
    v88 = swift_slowAlloc();
    v93 = v88;
    *v71 = 136315138;
    v72 = v89;
    v31(v90, v89, v9);
    v73 = String.init<A>(describing:)();
    v75 = v74;
    v90 = (v47 + 8);
    v85 = v45;
    v45(v72, v9);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v93);

    v77 = v87;
    *(v87 + 1) = v76;
    v78 = v92;
    _os_log_impl(&dword_0, v92, v91, "Unknown (future?) command type: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v88);

    (v85)(v23, v9);
  }

  else
  {

    v45(v89, v9);
    v45(v23, v9);
  }

  v45(v16, v9);
  return 0;
}

uint64_t closure #2 in static CommandFactory.makeCommands(forDirectExecution:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SAResultCallback) init];
  UUID.init()();
  UUID.uuidString.getter();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v7 = String._bridgeToObjectiveC()();

  [v5 setAceId:v7];

  [v5 setCode:SAResultCallbackAnySuccessCodeValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v5 setCommands:isa];

  v9 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  v6(v4, v0);
  v10 = String._bridgeToObjectiveC()();

  [v9 setAceId:v10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  v16 = xmmword_B9BD0;
  *(v11 + 16) = xmmword_B9BD0;
  *(v11 + 32) = v5;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v12 = v5;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setCallbacks:v13];

  v14 = swift_allocObject();
  *(v14 + 16) = v16;
  *(v14 + 32) = v9;

  return v14;
}

id static CommandFactory.wrapMapCommandsIfNecessary(_:callback:)(unint64_t a1, uint64_t (*a2)(void))
{
  v17[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v16 = a2;
      v5 = 0;
      a2 = NSArray_ptr;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            a2 = v16;
            v9 = v17[0];
            if ((v17[0] & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_26;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v8 = *(v17[0] + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
        if (v7 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_26:
    v15 = _CocoaArrayWrapper.endIndex.getter();

    if (v15)
    {
      goto LABEL_21;
    }

    return a2(a1);
  }

  v10 = *(v9 + 16);

  if (!v10)
  {
    return a2(a1);
  }

LABEL_21:
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v11 = dispatch thunk of CurrentDevice.isCarPlay.getter();

  if (v11)
  {
    return a2(a1);
  }

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v13 = dispatch thunk of CurrentDevice.isEyesFree.getter();

  if ((v13 & 1) == 0)
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v14 = dispatch thunk of DeviceState.isEyesFree.getter();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    if ((v14 & 1) == 0)
    {
      return a2(a1);
    }
  }

  return specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(a1);
}

uint64_t closure #1 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v15 - v11;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v15 - v11, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMd, &_s10PegasusAPI50Apple_Parsec_Siri_V2alpha_DirectExecutionComponentVSgMR);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result == 1)
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v14 = specialized static CommandFactory.makeCommands(forDirectExecution:)();
    result = (*(v5 + 8))(v8, v4);
  }

  *a2 = v14;
  return result;
}

uint64_t partial apply for closure #2 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Sequence.flatMap<A>(_:)(*(v1 + 16));
  *a1 = result;
  return result;
}

double specialized closure #5 in static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v6, v2);
  v8 = String._bridgeToObjectiveC()();

  [v7 setAceId:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  v14 = xmmword_B9BD0;
  *(v9 + 16) = xmmword_B9BD0;
  *(v9 + 32) = a1;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
  v10 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setCallbacks:isa];

  v12 = swift_allocObject();
  result = *&v14;
  *(v12 + 16) = v14;
  *(v12 + 32) = v7;
  return result;
}

id specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(unint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
LABEL_29:
    v46 = &_swiftEmptyArrayStorage;
    v47 = &_swiftEmptyArrayStorage;
    goto LABEL_30;
  }

LABEL_3:
  v44 = v3;
  v45 = v2;
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  while (!v8)
  {
    if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (!v6)
      {
        goto LABEL_29;
      }

      goto LABEL_3;
    }

    v9 = *(a1 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v2 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

LABEL_9:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(v49 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v7;
    if (v2 == v6)
    {
      goto LABEL_14;
    }
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
  v2 = (v7 + 1);
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v11 = 0;
  v47 = v49;
  v49 = &_swiftEmptyArrayStorage;
  while (2)
  {
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      goto LABEL_20;
    }

    if (v11 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_27;
    }

    v12 = *(a1 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
LABEL_20:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = *(v49 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v11;
      if (v13 == v6)
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_25:
  v46 = v49;
  v3 = v44;
  v2 = v45;
LABEL_30:
  v14 = [objc_allocWithZone(SAResultCallback) init];
  v15 = v48;
  UUID.init()();
  UUID.uuidString.getter();
  v16 = *(v3 + 8);
  v16(v15, v2);
  v17 = String._bridgeToObjectiveC()();

  [v14 setAceId:v17];

  [v14 setCode:SAResultCallbackAnySuccessCodeValue];
  v18 = [objc_allocWithZone(SARequestCompleted) init];
  UUID.init()();
  UUID.uuidString.getter();
  v16(v15, v2);
  v19 = String._bridgeToObjectiveC()();

  [v18 setAceId:v19];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_B9BD0;
  *(v20 + 32) = v18;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v48 = v14;
  [v14 setCommands:isa];

  v23 = v47;
  v45 = v21;
  if ((v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
  {
LABEL_51:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v23 = v47;
    v24 = v36;
    if (v36)
    {
      goto LABEL_33;
    }

LABEL_52:
    v49 = v46;
    specialized Array.append<A>(contentsOf:)(v23);
    v37 = v49;
    v49 = &_swiftEmptyArrayStorage;
    if (v37 >> 62)
    {
LABEL_71:
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (v38)
      {
LABEL_54:
        v39 = 0;
        v40 = &_swiftEmptyArrayStorage;
        do
        {
          v41 = v39;
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v41 >= *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_70;
              }

              v42 = *(v37 + 8 * v41 + 32);
              swift_unknownObjectRetain();
              v39 = v41 + 1;
              if (__OFADD__(v41, 1))
              {
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v41;
            if (v39 == v38)
            {
              goto LABEL_73;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v43 = *(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v40 = v49;
        }

        while (v39 != v38);
        goto LABEL_73;
      }
    }

    else
    {
      v38 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
      if (v38)
      {
        goto LABEL_54;
      }
    }

    v40 = &_swiftEmptyArrayStorage;
LABEL_73:

    return v40;
  }

  v24 = *(v47 + 16);
  if (!v24)
  {
    goto LABEL_52;
  }

LABEL_33:
  v25 = 0;
  v47 = v23 & 0xC000000000000001;
  v26 = v23;
  while (1)
  {
    if (v47)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v25 >= *(v23 + 16))
      {
        goto LABEL_50;
      }

      v28 = *(v23 + 8 * v25 + 32);
      swift_unknownObjectRetain();
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v30 = [v28 callbacks];
    if (!v30)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
      v31 = Array._bridgeToObjectiveC()().super.isa;
      [v28 setCallbacks:v31];
      v30 = v31;
    }

    result = [v28 callbacks];
    if (!result)
    {
      break;
    }

    v33 = result;
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v34;
    v35 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v49 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v49 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v49)
    {
      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    [v28 setCallbacks:v27.super.isa];
    swift_unknownObjectRelease();

    ++v25;
    v23 = v26;
    if (v29 == v24)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
  return result;
}

void *specialized static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(uint64_t a1, _UNKNOWN **a2)
{
  v201 = type metadata accessor for DeviceClass();
  v205 = *(v201 - 8);
  v4 = *(v205 + 64);
  __chkstk_darwin(v201);
  v195 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
  v6 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v199);
  v200 = &v192 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v196 = &v192 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v206 = &v192 - v13;
  __chkstk_darwin(v12);
  *&v207 = &v192 - v14;
  v214 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v15 = *(v214 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v214);
  v197 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v204 = &v192 - v20;
  v21 = __chkstk_darwin(v19);
  v198 = &v192 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v192 - v24;
  __chkstk_darwin(v23);
  v27 = &v192 - v26;
  v213 = type metadata accessor for UUID();
  v208 = *(v213 - 8);
  v28 = v208[8];
  __chkstk_darwin(v213);
  v212 = (&v192 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v192 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v192 - v36;
  v38 = type metadata accessor for CATOption();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v40 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.hasRenderedDialog.getter();
  v209 = v15;
  v203 = a1;
  if ((v40 & 1) != 0 || (v41 = *(Apple_Parsec_Siri_V2alpha_DelayedActionComponent.layoutExperiences.getter() + 16), , v41))
  {
    if (a2)
    {
      v42 = a2;
    }

    else
    {
      static Device.current.getter();
      type metadata accessor for CommonCATs();
      static CATOption.defaultMode.getter();
      v43 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v42 = swift_allocObject();
      v44 = [objc_opt_self() sharedPreferences];
      v45 = type metadata accessor for PommesServerFallbackPreferences();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      swift_allocObject();
      v48 = PommesServerFallbackPreferences.init(_:)();
      v42[11] = v45;
      v42[12] = &protocol witness table for PommesServerFallbackPreferences;
      v42[8] = v48;
      outlined init with take of OutputPublisherAsync(v221, v42 + 3);
      v42[2] = v43;
    }

    v49 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.layoutExperiences.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR);
    v50 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent() - 8);
    v51 = *(v50 + 72);
    v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_B8690;
    Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.getter();
    v54 = type metadata accessor for DialogPhase();
    (*(*(v54 - 8) + 56))(v37, 1, 1, v54);
    v55 = type metadata accessor for PommesCandidateId();
    (*(*(v55 - 8) + 56))(v33, 1, 1, v55);
    v56 = (*(*v42 + 19))(v49, v53, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, 0, v37, 0, 0, v33);

    outlined destroy of Any?(v33, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    outlined destroy of Any?(v37, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);

    v215 = v56;
    v211 = v42;
    if (v56 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
      if (v57)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v57 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
      if (v57)
      {
LABEL_8:
        if (v57 >= 1)
        {
          v58 = 0;
          v59 = v215 & 0xC000000000000001;
          v60 = v208 + 1;
          while (1)
          {
            if (v59)
            {
              v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v63 = *(v215 + 8 * v58 + 32);
            }

            v64 = v63;
            v65 = [v64 aceId];
            if (v65)
            {
              v66 = v65;
              v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v69 = v68;

              v70 = v67 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = 0;
              v69 = 0xE000000000000000;
            }

            v71 = HIBYTE(v69) & 0xF;
            if ((v69 & 0x2000000000000000) == 0)
            {
              v71 = v70;
            }

            if (v71)
            {
              v72 = [v64 aceId];
              if (!v72)
              {
                v62 = 0;
                goto LABEL_12;
              }

              v73 = v72;
              static String._unconditionallyBridgeFromObjectiveC(_:)();
            }

            else
            {
              v61 = v212;
              UUID.init()();
              UUID.uuidString.getter();
              (*v60)(v61, v213);
            }

            v62 = String._bridgeToObjectiveC()();

LABEL_12:
            ++v58;
            [v64 setAceId:v62];

            if (v57 == v58)
            {
              goto LABEL_27;
            }
          }
        }

        __break(1u);
        goto LABEL_153;
      }
    }

LABEL_27:

    v15 = v209;
  }

  else
  {
    v215 = &_swiftEmptyArrayStorage;
  }

  v74 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.delayMilliseconds.getter();
  v75 = v214;
  if (!v74)
  {
    v94 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
    v221[0] = &_swiftEmptyArrayStorage;
    v95 = *(v94 + 16);
    if (!v95)
    {

      v102 = &_swiftEmptyArrayStorage;
      goto LABEL_59;
    }

    v98 = *(v15 + 16);
    v96 = v15 + 16;
    v97 = v98;
    v99 = (*(v96 + 64) + 32) & ~*(v96 + 64);
    v194 = v94;
    v100 = v94 + v99;
    v211 = *(v96 + 56);
    v101 = (v96 - 8);
    v102 = &_swiftEmptyArrayStorage;
    v202 = xmmword_B9BD0;
    v210 = v98;
    while (1)
    {
      v103 = v214;
      v97(v25, v100, v214);
      v104 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (v104)
      {
        v105 = v104;
        v219 = &OBJC_PROTOCOL___SAClientBoundCommand;
        v106 = swift_dynamicCastObjCProtocolConditional();
        if (v106)
        {
          goto LABEL_52;
        }

        v218 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v107 = swift_dynamicCastObjCProtocolConditional();
        if (v107)
        {
          v108 = v107;
          v106 = [objc_allocWithZone(SASendCommands) init];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v109 = swift_allocObject();
          *(v109 + 16) = v202;
          *(v109 + 32) = v108;
          v110 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v106 setCommands:isa];

          v97 = v210;
LABEL_52:
          Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
          v112 = String._bridgeToObjectiveC()();

          [v106 setAceId:v112];

          (*v101)(v25, v214);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v113 = *(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v102 = v221[0];
          goto LABEL_47;
        }

        v103 = v214;
        v97 = v210;
      }

      (*v101)(v25, v103);
LABEL_47:
      v100 += v211;
      if (!--v95)
      {

        goto LABEL_59;
      }
    }
  }

  v76 = [objc_allocWithZone(SAUIDelayedActionCommand) init];
  v77 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
  v221[0] = &_swiftEmptyArrayStorage;
  v78 = *(v77 + 16);
  if (v78)
  {
    v193 = v76;
    v80 = *(v15 + 16);
    v79 = v15 + 16;
    v211 = v80;
    v81 = (*(v79 + 64) + 32) & ~*(v79 + 64);
    v194 = v77;
    v82 = v77 + v81;
    v210 = *(v79 + 56);
    v83 = (v79 - 8);
    v202 = xmmword_B9BD0;
    v80(v27, v77 + v81, v75);
    while (1)
    {
      v84 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (!v84)
      {
        goto LABEL_32;
      }

      v85 = v84;
      v217 = &OBJC_PROTOCOL___SAClientBoundCommand;
      v86 = swift_dynamicCastObjCProtocolConditional();
      if (!v86)
      {
        v216 = &OBJC_PROTOCOL___SAServerBoundCommand;
        v87 = swift_dynamicCastObjCProtocolConditional();
        if (!v87)
        {

          v75 = v214;
LABEL_32:
          (*v83)(v27, v75);
          goto LABEL_33;
        }

        v88 = v87;
        v86 = [objc_allocWithZone(SASendCommands) init];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v89 = swift_allocObject();
        *(v89 + 16) = v202;
        *(v89 + 32) = v88;
        v90 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
        v91 = Array._bridgeToObjectiveC()().super.isa;

        [v86 setCommands:v91];

        v75 = v214;
      }

      Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
      v92 = String._bridgeToObjectiveC()();

      [v86 setAceId:v92];

      (*v83)(v27, v75);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v93 = *(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_33:
      v82 += v210;
      if (!--v78)
      {

        v76 = v193;
        goto LABEL_56;
      }

      (v211)(v27, v82, v75);
    }
  }

LABEL_56:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v114 = Array._bridgeToObjectiveC()().super.isa;

  [v76 setCommands:v114];

  v115 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:Apple_Parsec_Siri_V2alpha_DelayedActionComponent.delayMilliseconds.getter()];
  [v76 setTimerValue:v115];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_B9BD0;
  *(v102 + 32) = v76;
LABEL_59:
  v42 = v201;
  v116 = v200;
  v117 = v207;
  v118 = v206;
  v210 = type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.deviceClass.getter();

  v119 = v205;
  (*(v205 + 104))(v118, enum case for DeviceClass.homePod(_:), v42);
  (*(v119 + 56))(v118, 0, 1, v42);
  v120 = *(v199 + 48);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v117, v116, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v118, v116 + v120, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v37 = *(v119 + 48);
  v121 = (v37)(v116, 1, v42);
  v211 = v102;
  v122 = v102 >> 62;
  if (v121 == 1)
  {
    outlined destroy of Any?(v118, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined destroy of Any?(v117, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if ((v37)(v116 + v120, 1, v42) == 1)
    {
      outlined destroy of Any?(v116, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      goto LABEL_78;
    }
  }

  else
  {
    v117 = v196;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v116, v196, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if ((v37)(v116 + v120, 1, v42) != 1)
    {
LABEL_77:
      v127 = v205;
      v128 = v195;
      (*(v205 + 32))(v195, v116 + v120, v42);
      lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass();
      v129 = dispatch thunk of static Equatable.== infix(_:_:)();
      v130 = *(v127 + 8);
      v37 = (v127 + 8);
      v130(v128, v42);
      outlined destroy of Any?(v206, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      outlined destroy of Any?(v207, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      v130(v117, v42);
      outlined destroy of Any?(v116, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
      if (v129)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

    outlined destroy of Any?(v206, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined destroy of Any?(v207, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    (*(v205 + 8))(v117, v42);
  }

  outlined destroy of Any?(v116, &_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
LABEL_65:
  if (v122)
  {
    goto LABEL_150;
  }

  v123 = *(&dword_10 + (v211 & 0xFFFFFFFFFFFFFF8));
  if (v123)
  {
    goto LABEL_67;
  }

LABEL_78:
  while (2)
  {
    if (v122)
    {
LABEL_114:
      v122 = v211;
      v120 = _CocoaArrayWrapper.endIndex.getter();
      v25 = v215;
      if (v120)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v122 = v211;
      v120 = *(&dword_10 + (v211 & 0xFFFFFFFFFFFFFF8));
      v25 = v215;
      if (v120)
      {
LABEL_80:
        if (v120 < 1)
        {
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v131 = 0;
        v132 = v208 + 1;
        do
        {
          if ((v122 & 0xC000000000000001) != 0)
          {
            v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v135 = *(v122 + 8 * v131 + 32);
            swift_unknownObjectRetain();
          }

          v136 = [v135 aceId];
          if (v136)
          {
            v137 = v136;
            v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v140 = v139;

            v141 = v138 & 0xFFFFFFFFFFFFLL;
          }

          else
          {
            v141 = 0;
            v140 = 0xE000000000000000;
          }

          v142 = HIBYTE(v140) & 0xF;
          if ((v140 & 0x2000000000000000) == 0)
          {
            v142 = v141;
          }

          if (v142)
          {
            v143 = [v135 aceId];
            if (!v143)
            {
              v134 = 0;
              goto LABEL_84;
            }

            v144 = v143;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v133 = v212;
            UUID.init()();
            UUID.uuidString.getter();
            (*v132)(v133, v213);
          }

          v134 = String._bridgeToObjectiveC()();

LABEL_84:
          ++v131;
          [v135 setAceId:v134];
          swift_unknownObjectRelease();
        }

        while (v120 != v131);
      }
    }

    v42 = [objc_allocWithZone(SAResultCallback) init];
    v169 = v212;
    UUID.init()();
    UUID.uuidString.getter();
    (v208[1])(v169, v213);
    v170 = String._bridgeToObjectiveC()();

    [v42 setAceId:v170];

    [v42 setCode:SAResultCallbackAnySuccessCodeValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v171 = Array._bridgeToObjectiveC()().super.isa;
    [v42 setCommands:v171];

    v37 = (v25 >> 62);
    if (v25 >> 62)
    {
      v172 = _CocoaArrayWrapper.endIndex.getter();
      if (v172)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v172 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v172)
      {
LABEL_117:
        v173 = __OFSUB__(v172, 1);
        v174 = v172 - 1;
        if (v173)
        {
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if ((v25 & 0xC000000000000001) != 0)
        {
LABEL_155:
          v175 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_122:
          v176 = v175;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v177 = swift_allocObject();
          *(v177 + 16) = xmmword_B9BD0;
          *(v177 + 32) = v42;
          type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAResultCallback, SAResultCallback_ptr);
          v178 = v42;
          v179 = Array._bridgeToObjectiveC()().super.isa;

          [v176 setCallbacks:v179];

          if (v37)
          {
            type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

            v180 = _bridgeCocoaArray<A>(_:)();

            swift_bridgeObjectRelease_n();
            return v180;
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
          }

          return v25;
        }

        if ((v174 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v174 < *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)))
        {
          v175 = *(v25 + 8 * v174 + 32);
          goto LABEL_122;
        }

        __break(1u);
        goto LABEL_158;
      }
    }

    v181 = &_swiftEmptyArrayStorage;
    v221[0] = &_swiftEmptyArrayStorage;
    if (!v120)
    {
LABEL_139:
      if ((v181 & 0x8000000000000000) == 0 && (v181 & 0x4000000000000000) == 0)
      {
        v185 = *(v181 + 16);

        if (!v185)
        {
          goto LABEL_143;
        }

        goto LABEL_142;
      }

LABEL_158:
      v191 = _CocoaArrayWrapper.endIndex.getter();

      if (!v191)
      {
        goto LABEL_143;
      }

LABEL_142:
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      v186 = dispatch thunk of CurrentDevice.isCarPlay.getter();

      if ((v186 & 1) == 0)
      {
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        v188 = dispatch thunk of CurrentDevice.isEyesFree.getter();

        if (v188 & 1) != 0 || (static Device.current.getter(), __swift_project_boxed_opaque_existential_1(v221, v221[3]), v189 = dispatch thunk of DeviceState.isEyesFree.getter(), __swift_destroy_boxed_opaque_existential_0Tm(v221), (v189))
        {
          v187 = specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(v122);
          goto LABEL_147;
        }
      }

LABEL_143:
      specialized closure #5 in static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(v42);
LABEL_147:
      v25 = v187;

      return v25;
    }

    v215 = v42;
    v182 = 0;
    v42 = (v122 & 0xC000000000000001);
    v117 = v122 & 0xFFFFFFFFFFFFFF8;
    while (v42)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v184 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
LABEL_137:
        __break(1u);
LABEL_138:
        v181 = v221[0];
        v42 = v215;
        goto LABEL_139;
      }

LABEL_133:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = *(v221[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v182;
      if (v184 == v120)
      {
        goto LABEL_138;
      }
    }

    if (v182 < *(&dword_10 + (v122 & 0xFFFFFFFFFFFFFF8)))
    {
      v183 = *(v122 + 8 * v182 + 32);
      swift_unknownObjectRetain();
      v184 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_137;
      }

      goto LABEL_133;
    }

    __break(1u);
LABEL_150:
    v123 = _CocoaArrayWrapper.endIndex.getter();
    if (!v123)
    {
      continue;
    }

    break;
  }

LABEL_67:
  v124 = 0;
  v125 = v211 & 0xC000000000000001;
  v37 = (v211 & 0xFFFFFFFFFFFFFF8);
  v42 = NSArray_ptr;
  while (1)
  {
    if (v125)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v116 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      if (v124 >= *(v37 + 2))
      {
        __break(1u);
        goto LABEL_114;
      }

      v126 = *(v211 + 8 * v124 + 32);
      swift_unknownObjectRetain();
      v116 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_76;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v124;
    if (v116 == v123)
    {
      goto LABEL_78;
    }
  }

  swift_unknownObjectRelease();
  v145 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
  v221[0] = &_swiftEmptyArrayStorage;
  v147 = *(v145 + 16);
  if (v147)
  {
    v148 = *(v209 + 16);
    v149 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v206 = v145;
    v150 = v145 + v149;
    v213 = *(v209 + 72);
    v25 = &_swiftEmptyArrayStorage;
    *&v146 = 136315138;
    v207 = v146;
    v212 = (v209 + 8);
    v151 = (v209 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v209 += 16;
    v210 = v151;
    v152 = v214;
    v153 = v198;
    v148(v198, v145 + v149, v214);
    while (1)
    {
      v155 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
      if (v155)
      {
        v156 = v155;
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
        v157 = String._bridgeToObjectiveC()();

        [v156 setAceId:v157];

        (*v212)(v153, v152);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v221[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v168 = *(&dword_10 + (v221[0] & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = v221[0];
      }

      else
      {
        v215 = v25;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v158 = type metadata accessor for Logger();
        __swift_project_value_buffer(v158, static Logger.information);
        v159 = v204;
        v148(v204, v153, v152);
        v160 = Logger.logObject.getter();
        v161 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          v220 = v208;
          *v162 = v207;
          v163 = v148;
          v148(v197, v159, v152);
          v164 = String.init<A>(describing:)();
          v166 = v165;
          v154 = *v212;
          (*v212)(v159, v214);
          v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v166, &v220);
          v152 = v214;

          *(v162 + 4) = v167;
          v148 = v163;
          _os_log_impl(&dword_0, v160, v161, "Unable to generate Ace command from builder: %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v208);
          v153 = v198;
        }

        else
        {

          v154 = *v212;
          (*v212)(v159, v152);
        }

        v25 = v215;
        v154(v153, v152);
      }

      v150 += v213;
      if (!--v147)
      {
        break;
      }

      v148(v153, v150, v152);
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v25;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent() - 8);
  v4 = &_swiftEmptyArrayStorage;
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &_sSaySo13SABaseCommandCGMd;
  while (1)
  {
    v7 = specialized static CommandFactory.makeCommands(forDelayedAction:viewFactory:)(v32 + v31 * v2, 0);
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]();
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, _sSaySo13SABaseCommandCGMR);
        v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v8);
        v24 = v5;
        v25 = *v23;
        (v22)(v36, 0);
        *(v20 + 8 * i) = v25;
        v5 = v24;
      }
    }

    else
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent() - 8);
  v4 = &_swiftEmptyArrayStorage;
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &_sSaySo13SABaseCommandCGMd;
  while (1)
  {
    v7 = specialized static CommandFactory.makeCommands(forSayItComponent:)();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]();
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v5, _sSaySo13SABaseCommandCGMR);
        v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v36, i, v8);
        v24 = v5;
        v25 = *v23;
        (v22)(v36, 0);
        *(v20 + 8 * i) = v25;
        v5 = v24;
      }
    }

    else
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized static CommandFactory.makeCommands(forSayItComponent:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.information);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "SayItComponent is deprecated - we expect a command builder with SayItBuilderParams instead. Translating.", v8, 2u);
  }

  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.init()();
  Apple_Parsec_Siri_V2alpha_SayItComponent.message.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.message.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.dialogIdentifier.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.dialogIdentifier.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.hasListenAfterSpeaking_p.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.setter();
  Apple_Parsec_Siri_V2alpha_SayItComponent.isRepeatable.getter();
  Apple_Parsec_Siri_V2alpha_SayItBuilderParams.isRepeatable.setter();
  v9 = specialized static PegasusACEConverters.makeSayIt(params:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_B9BD0;
  *(v10 + 32) = v9;
  (*(v1 + 8))(v4, v0);
  return v10;
}

void *specialized static CommandFactory.makeCommands(forComponent:)(uint64_t a1)
{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_ButtonViewComponent.commands.getter);
}

{
  return specialized static CommandFactory.makeCommands(forComponent:)(a1, &Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.siriCommandBuilder.getter);
}

void *specialized static CommandFactory.makeCommands(forComponent:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(v6);
  v36 = _swiftEmptyArrayStorage;
  v10 = *(v9 + 16);
  if (!v10)
  {

    return _swiftEmptyArrayStorage;
  }

  v13 = *(v4 + 16);
  v12 = v4 + 16;
  v11 = v13;
  v14 = *(v12 + 64);
  v30[1] = v9;
  v15 = v9 + ((v14 + 32) & ~v14);
  v33 = *(v12 + 56);
  v16 = (v12 - 8);
  v17 = _swiftEmptyArrayStorage;
  v31 = xmmword_B9BD0;
  v32 = v12;
  v13(v8, v15, v3);
  while (1)
  {
    v18 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v18)
    {
      goto LABEL_4;
    }

    v19 = v18;
    v35 = &OBJC_PROTOCOL___SAClientBoundCommand;
    v20 = swift_dynamicCastObjCProtocolConditional();
    if (!v20)
    {
      v21 = v11;
      v34 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (!v22)
      {

LABEL_4:
        (*v16)(v8, v3);
        goto LABEL_5;
      }

      v23 = v22;
      v20 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = v31;
      *(v24 + 32) = v23;
      v25 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v20 setCommands:isa];

      v11 = v21;
    }

    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v27 = String._bridgeToObjectiveC()();

    [v20 setAceId:v27];

    (*v16)(v8, v3);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v28 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v17 = v36;
LABEL_5:
    v15 += v33;
    if (!--v10)
    {
      break;
    }

    v11(v8, v15, v3);
  }

  return v17;
}

void *partial apply for closure #18 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusACEConverters.makeSearchMarketplace(cmdBuilder:)();
  *a1 = result;
  return result;
}

id partial apply for closure #17 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusACEConverters.makeOpenLink(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #16 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeUnlockDeviceWithWatch(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #15 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeUnlockDevice(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #14 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusACEConverters.makeSetSiriAuthorizationForApp(cmdBuilder:)();
  *a1 = result;
  return result;
}

id partial apply for closure #13 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeCancelCurrentTTS(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id partial apply for closure #12 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeExtendCurrentTTS(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #11 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makePhoneCall(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #10 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusACEConverters.makeSwitchProfile(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #8 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeRecordLocationActivity(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id partial apply for closure #7 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeEndNavigation(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #6 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeStartRequest(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #5 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeShowLocalSearchResult(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #4 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeShowMapPoints(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id partial apply for closure #3 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = specialized static PegasusACEConverters.makeShowPlaceDetails(cmdBuilder:)();
  *a1 = result;
  return result;
}

void *partial apply for closure #2 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeSayIt(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

void *partial apply for closure #1 in Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter@<X0>(void *a1@<X8>)
{
  result = specialized static PegasusACEConverters.makeAppPunchOut(cmdBuilder:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t specialized static CommandFactory.makeCommands(forDirectExecution:)()
{
  v60 = type metadata accessor for UUID();
  v0 = *(v60 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v60);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Apple_Parsec_Siri_V2alpha_DirectExecutionComponent.siriCommandBuilder.getter();
  v64[0] = &_swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (!v9)
  {

    v15 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_47;
    }

LABEL_15:
    v28 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_48:
    v47 = &_swiftEmptyArrayStorage;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_49:
    if ((v47 & 0x4000000000000000) != 0)
    {
LABEL_58:
      v54 = _CocoaArrayWrapper.endIndex.getter();

      if (!v54)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v48 = *(v47 + 16);

      if (!v48)
      {
        goto LABEL_52;
      }
    }

    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    v49 = dispatch thunk of CurrentDevice.isCarPlay.getter();

    if ((v49 & 1) == 0)
    {
      static SiriEnvironment.default.getter();
      SiriEnvironment.currentDevice.getter();

      v51 = dispatch thunk of CurrentDevice.isEyesFree.getter();

      if (v51 & 1) != 0 || (static Device.current.getter(), __swift_project_boxed_opaque_existential_1(v64, v64[3]), v52 = dispatch thunk of DeviceState.isEyesFree.getter(), __swift_destroy_boxed_opaque_existential_0Tm(v64), (v52))
      {
        v50 = specialized static CommandFactory.wrapMapCommandsWithResultCallBack(clientBoundCommands:)(v15);
        goto LABEL_56;
      }
    }

LABEL_52:
    v50 = closure #2 in static CommandFactory.makeCommands(forDirectExecution:)();
LABEL_56:
    v53 = v50;

    return v53;
  }

  v55 = v0;
  v56 = v8;
  v12 = *(v4 + 16);
  v10 = v4 + 16;
  v11 = v12;
  v13 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v61 = *(v10 + 56);
  v14 = (v10 - 8);
  v15 = &_swiftEmptyArrayStorage;
  v57 = xmmword_B9BD0;
  v58 = v10;
  v12(v7, v13, v3);
  while (1)
  {
    v16 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.asBaseAceCommand.getter();
    if (!v16)
    {
      goto LABEL_4;
    }

    v17 = v16;
    v63 = &OBJC_PROTOCOL___SAClientBoundCommand;
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (!v18)
    {
      v19 = v11;
      v62 = &OBJC_PROTOCOL___SAServerBoundCommand;
      v20 = swift_dynamicCastObjCProtocolConditional();
      if (!v20)
      {

LABEL_4:
        (*v14)(v7, v3);
        goto LABEL_5;
      }

      v21 = v20;
      v18 = [objc_allocWithZone(SASendCommands) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = v57;
      *(v22 + 32) = v21;
      v23 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAServerBoundCommand_pMd, &_sSo20SAServerBoundCommand_pMR);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 setCommands:isa];

      v11 = v19;
    }

    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v25 = String._bridgeToObjectiveC()();

    [v18 setAceId:v25];

    (*v14)(v7, v3);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (v64[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v64[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v26 = *(&dword_10 + (v64[0] & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = v64[0];
LABEL_5:
    v13 += v61;
    if (!--v9)
    {
      break;
    }

    v11(v7, v13, v3);
  }

  v0 = v55;
  if (!(v15 >> 62))
  {
    goto LABEL_15;
  }

LABEL_47:
  result = _CocoaArrayWrapper.endIndex.getter();
  v28 = result;
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_16:
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v30)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v15 + 8 * v29 + 32);
        swift_unknownObjectRetain();
      }

      v34 = [v33 aceId];
      if (v34)
      {
        v35 = v34;
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = v36 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = 0;
        v38 = 0xE000000000000000;
      }

      v40 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v40 = v39;
      }

      if (v40)
      {
        v41 = [v33 aceId];
        if (!v41)
        {
          v32 = 0;
          goto LABEL_20;
        }

        v42 = v41;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v31 = v59;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v0 + 8))(v31, v60);
      }

      v32 = String._bridgeToObjectiveC()();

LABEL_20:
      ++v29;
      [v33 setAceId:v32];
      swift_unknownObjectRelease();

      if (v28 == v29)
      {
        v43 = 0;
        v64[0] = &_swiftEmptyArrayStorage;
        while (1)
        {
          if (v30)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v43 >= *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              goto LABEL_58;
            }

            v44 = *(v15 + 8 * v43 + 32);
            swift_unknownObjectRetain();
            v45 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
LABEL_43:
              __break(1u);
LABEL_44:
              v47 = v64[0];
              if ((v64[0] & 0x8000000000000000) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_58;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v46 = *(v64[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          ++v43;
          if (v45 == v28)
          {
            goto LABEL_44;
          }
        }
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass()
{
  result = lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass;
  if (!lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass)
  {
    type metadata accessor for DeviceClass();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SABaseCommand] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A]);
  }

  return result;
}

unint64_t GenericResultSetParamBuilder.patternParameters(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[0] = v8;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a4, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v15 = v8;
  v10 = specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  *&v12 = v10;
  specialized Dictionary._Variant.updateValue(_:forKey:)(&v12, a2, a3, v14);
  outlined destroy of Any?(v14);
  return v15;
}

InformationFlowPlugin::GenericResultSetParamBuilder __swiftcall GenericResultSetParamBuilder.init(parameters:items:itemsFieldName:)(Swift::OpaquePointer parameters, Swift::OpaquePointer items, Swift::String itemsFieldName)
{
  countAndFlagsBits = itemsFieldName._countAndFlagsBits;
  object = itemsFieldName._object;
  rawValue = parameters._rawValue;
  v8 = items._rawValue;
  result.items._rawValue = v8;
  result.parameters._rawValue = rawValue;
  result.itemsFieldName._object = object;
  result.itemsFieldName._countAndFlagsBits = countAndFlagsBits;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v8 = v6;
  v52 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v45 = a1;
  v46 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v47 = v11;
  v48 = 0;
  v49 = v14 & v12;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(&v43);
  v15 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
LABEL_5:
    outlined consume of Set<String>.Iterator._Variant();
  }

  while (1)
  {
    v17 = v43;
    v41 = v43;
    v42 = v15;
    outlined init with take of Any(&v44, v40);
    v18 = *v8;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v15);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    v24 = v19;
    if (v18[3] < v23)
    {
      break;
    }

    if (a4)
    {
      if (v19)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v24)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v30 = *v8;
    *(*v8 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v31 = (v30[6] + 16 * v20);
    *v31 = v17;
    v31[1] = v15;
    outlined init with take of Any(v40, (v30[7] + 32 * v20));
    v32 = v30[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_22;
    }

    v30[2] = v34;
LABEL_6:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v15 = *(&v43 + 1);
    a4 = 1;
    if (!*(&v43 + 1))
    {
      goto LABEL_5;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, a4 & 1);
  v25 = *v8;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v15);
  if ((v24 & 1) != (v27 & 1))
  {
    goto LABEL_23;
  }

  v20 = v26;
  if ((v24 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v28 = *v8;
  outlined init with copy of Any(*(*v8 + 56) + 32 * v20, v38);
  a5(v39, v38, v40);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);

    v29 = (v28[7] + 32 * v20);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    outlined init with take of Any(v39, v29);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  v38[0] = v7;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    outlined consume of Set<String>.Iterator._Variant();
  }

LABEL_24:
  *&v39[0] = 0;
  *(&v39[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v35._object = 0x80000000000C1010;
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v35);
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 39;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static GenericResultSetParamBuilder.fieldName(for:)(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000000000C1030), (v3 & 1) != 0) && (outlined init with copy of Any(*(a1 + 56) + 32 * v2, v15), (swift_dynamicCast() & 1) != 0))
  {
    v4 = v13;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.information);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v15);
      v10 = "Found custom item field name set in Parameters %s";
LABEL_12:
      _os_log_impl(&dword_0, v6, v7, v10, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v4 = 0x736D657469;
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.information);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x736D657469, 0xE500000000000000, v15);
      v10 = "No Custom field name found. Defaulting to %s";
      goto LABEL_12;
    }
  }

  return v4;
}

uint64_t specialized GenericResultSetParamBuilder.init(parameters:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = v2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v27 = v2;
  v4 = specialized static GenericResultSetParamBuilder.fieldName(for:)(a1);
  v6 = v5;
  v7 = v4;
  specialized Dictionary._Variant.removeValue(forKey:)(v4, v5, v25);
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
    if (swift_dynamicCast())
    {

      v8 = *(v24 + 16);
      if (v8)
      {
        v25[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
        v9 = 32;
        v10 = v25[0];
        do
        {
          v11 = *(v24 + v9);
          v25[0] = v10;
          v12 = *(v10 + 16);
          v13 = *(v10 + 24);

          if (v12 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1);
            v10 = v25[0];
          }

          *(v10 + 16) = v12 + 1;
          *(v10 + 8 * v12 + 32) = v11;
          v9 += 8;
          --v8;
        }

        while (v8);
      }

      return v7;
    }
  }

  else
  {
    outlined destroy of Any?(v25);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v25);

    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v25);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_0, v15, v16, "GenericResultSet initialized with empty item list at %s, %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0x736D657469;
}

void *specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      v5 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v5 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v4;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t _s21InformationFlowPlugin28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI026Apple_Parsec_Siri_V2alpha_pL8ResponseV0P11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA0dE6ActionO0kW0V_Tt2g5(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v82 = a1;
  v4 = type metadata accessor for SportsResolverMetrics();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  __chkstk_darwin(v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v83 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v91 = &v76 - v19;
  __chkstk_darwin(v18);
  v21 = &v76 - v20;
  v22 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v79 = *(v22 - 8);
  v80 = v22;
  v23 = *(v79 + 64);
  v24 = __chkstk_darwin(v22);
  v78 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v76 - v26;
  v28 = type metadata accessor for SportsResolverConfig();
  v87 = *(v28 - 8);
  v88 = v28;
  v29 = *(v87 + 64);
  v30 = __chkstk_darwin(v28);
  v81 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v92 = &v76 - v32;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v21, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v21, 1, v33);
  v84 = v7;
  if (v36 == 1)
  {
    outlined destroy of Any?(v21, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v37 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v34 + 8))(v21, v33);
    if (*(v37 + 16))
    {
      v77 = v17;
      v38 = a2;
      v39 = v79;
      v40 = v80;
      (*(v79 + 16))(v27, v37 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v80);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      v41 = v39;
      a2 = v38;
      v17 = v77;
      (*(v41 + 8))(v27, v40);
    }

    else
    {
    }
  }

  SportsResolverConfig.init(intentTypeName:bundleId:)();
  v42 = v91;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v91, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v43, v44))
  {

    outlined destroy of Any?(v42, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v47 = v85;
    v46 = v86;
    v48 = v88;
    v49 = v89;
    v50 = v87;
    v51 = v82;
    goto LABEL_15;
  }

  v45 = swift_slowAlloc();
  v93[0] = swift_slowAlloc();
  *v45 = 136315394;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v42, v17, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  if (v35(v17, 1, v33) == 1)
  {
    outlined destroy of Any?(v17, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
LABEL_13:
    v58 = 0xE700000000000000;
    v47 = v85;
    v46 = v86;
    v50 = v87;
    v56 = 0x6E776F6E6B6E75;
    goto LABEL_14;
  }

  v52 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  (*(v34 + 8))(v17, v33);
  if (!*(v52 + 16))
  {

    goto LABEL_13;
  }

  v54 = v78;
  v53 = v79;
  v55 = v80;
  (*(v79 + 16))(v78, v52 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v80);

  v56 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
  v58 = v57;
  (*(v53 + 8))(v54, v55);
  v47 = v85;
  v46 = v86;
  v50 = v87;
LABEL_14:
  outlined destroy of Any?(v91, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v93);

  *(v45 + 4) = v59;
  *(v45 + 12) = 2080;
  v51 = v82;
  v60 = specialized SportsPersonalizationSelection<A>.debugDescription.getter(v82);
  v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v93);

  *(v45 + 14) = v62;
  _os_log_impl(&dword_0, v43, v44, "Logging sports personalization metrics: intent=%s selection=%s", v45, 0x16u);
  swift_arrayDestroy();

  v48 = v88;
  v49 = v89;
LABEL_15:
  v63 = v83;
  v64 = v84;
  if (v51 == 2)
  {
    v65 = 1;
  }

  else
  {
    (*(v50 + 16))(v81, v92, v48);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    v65 = 0;
  }

  (*(v47 + 56))(v49, v65, 1, v46);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v49, v63, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  if ((*(v47 + 48))(v63, 1, v46) == 1)
  {
    outlined destroy of Any?(v49, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v50 + 8))(v92, v48);
    return outlined destroy of Any?(v63, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  else
  {
    (*(v47 + 32))(v64, v63, v46);
    SportsResolverMetrics.logSportsMetric()();
    if (v67)
    {
      v68 = v48;
      swift_errorRetain();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v93[0] = v72;
        *v71 = 136315138;
        swift_getErrorValue();
        v73 = Error.localizedDescription.getter();
        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v93);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_0, v69, v70, "Logging sports metrics failed with: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v72);

        (*(v47 + 8))(v64, v46);
        outlined destroy of Any?(v89, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
        return (*(v87 + 8))(v92, v88);
      }

      else
      {

        (*(v47 + 8))(v64, v46);
        outlined destroy of Any?(v49, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
        return (*(v50 + 8))(v92, v68);
      }
    }

    else
    {
      (*(v47 + 8))(v64, v46);
      outlined destroy of Any?(v49, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
      return (*(v50 + 8))(v92, v48);
    }
  }
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v12 = &v19 - v11;
  v13 = *(a2 + 16);
  if (v13)
  {
    v19 = v10;
    v20 = v9;
    v21 = a3;
    v14 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v14, v12, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v16 = a1(v12);
      if (v3)
      {
        return outlined destroy of Any?(v12, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      }

      if (v16)
      {
        break;
      }

      outlined destroy of Any?(v12, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v14 += v15;
      if (!--v13)
      {
        v17 = 1;
        a3 = v21;
        goto LABEL_10;
      }
    }

    a3 = v21;
    outlined init with take of GenAIPartner?(v12, v21, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
    v17 = 0;
LABEL_10:
    v10 = v19;
    v9 = v20;
  }

  else
  {
    v17 = 1;
  }

  return (*(v10 + 56))(a3, v17, 1, v9);
}

uint64_t SportsPersonalizationEntryPoint.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 40) = type metadata accessor for SportsResolver();
  *(v0 + 48) = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  SportsResolver.init()();
  *(v0 + 80) = &type metadata for Features;
  *(v0 + 88) = &protocol witness table for Features;
  *(v0 + 56) = 1;
  v1 = type metadata accessor for IntentDonator();
  v2 = swift_allocObject();
  *(v0 + 120) = v1;
  *(v0 + 128) = &protocol witness table for IntentDonator;
  *(v0 + 96) = v2;
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.init()()
{
  v5 = type metadata accessor for SportsResolver();
  v6 = &protocol witness table for SportsResolver;
  __swift_allocate_boxed_opaque_existential_1(&v4);
  SportsResolver.init()();
  outlined init with take of SiriSuggestionsBroker(&v4, v0 + 16);
  *(v0 + 80) = &type metadata for Features;
  *(v0 + 88) = &protocol witness table for Features;
  *(v0 + 56) = 1;
  v1 = type metadata accessor for IntentDonator();
  v2 = swift_allocObject();
  *(v0 + 120) = v1;
  *(v0 + 128) = &protocol witness table for IntentDonator;
  *(v0 + 96) = v2;
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.__allocating_init(inferenceApi:featureToggle:intentDonator:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v6 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v6 + 56);
  v7 = *(a3 + 16);
  *(v6 + 96) = *a3;
  *(v6 + 112) = v7;
  *(v6 + 128) = *(a3 + 32);
  return v6;
}

uint64_t SportsPersonalizationEntryPoint.init(inferenceApi:featureToggle:intentDonator:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  outlined init with take of SiriSuggestionsBroker(a1, v3 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v3 + 56);
  v6 = *(a3 + 16);
  *(v3 + 96) = *a3;
  *(v3 + 112) = v6;
  *(v3 + 128) = *(a3 + 32);
  return v3;
}

uint64_t SportsPersonalizationEntryPoint.flowFor(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse.PegasusResult();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Parse();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  Input.parse.getter();
  v21 = (*(v14 + 88))(v20, v13);
  if (v21 == enum case for Parse.pegasusResults(_:))
  {
    v55 = v18;
    v57 = a1;
    v58 = v14;
    v22 = *(v14 + 96);
    v59 = v13;
    v22(v20, v13);
    v62 = v9;
    v63 = v8;
    (*(v9 + 32))(v12, v20, v8);
    type metadata accessor for PerformanceUtil();
    v23 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v23);
    v56 = v2;
    Date.init()();
    v52 = &v50;
    v53 = &type metadata for SportsPersonalizationResult;
    v51 = partial apply for closure #1 in SportsPersonalizationEntryPoint.flowFor(input:);
    LOBYTE(v50) = 2;
    v48 = "flowFor(input:)";
    v49 = 15;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v24 = v65;
    v61 = *(v64 + 8);
    v61(v7, v65);
    v25 = v66;
    v26 = v67;
    v27 = static PerformanceUtil.shared.getter();
    v60 = &v54;
    __chkstk_darwin(v27);
    v64 = v25;
    v50 = v25;
    Date.init()();
    v52 = &v48;
    v53 = (&type metadata for () + 8);
    v51 = partial apply for closure #2 in SportsPersonalizationEntryPoint.flowFor(input:);
    LOBYTE(v50) = 2;
    v49 = 15;
    v48 = "flowFor(input:)";
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    v61(v7, v24);
    if (v26 != 3)
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.information);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      v31 = os_log_type_enabled(v29, v30);
      v33 = v58;
      v32 = v59;
      v34 = v56;
      if (v31)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_0, v29, v30, "Donating pegasusResults parse in SportsPersonalizationEntryPoint", v35, 2u);
      }

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v34 + 96, &v66, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      if (v68)
      {
        v36 = v55;
        Input.parse.getter();
        SportsIntentDonator.donateIfNeeded(parse:)(v36);
        (*(v33 + 8))(v36, v32);
        outlined destroy of SportsIntentDonator(&v66);
      }

      else
      {
        outlined destroy of Any?(&v66, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      }
    }

    (*(v62 + 8))(v12, v63);
    return v64;
  }

  else
  {
    if (v21 == enum case for Parse.pommesResponse(_:))
    {
      v37 = v18;
      v38 = *(v14 + 8);
      v38(v20, v13);
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.information);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v40, v41, "Donating pommesResponse parse in SportsPersonalizationEntryPoint", v42, 2u);
      }

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v2 + 96, &v66, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      if (v68)
      {
        Input.parse.getter();
        SportsIntentDonator.donateIfNeeded(parse:)(v37);
        v38(v37, v13);
        outlined destroy of SportsIntentDonator(&v66);
      }

      else
      {
        outlined destroy of Any?(&v66, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
      }
    }

    else
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.information);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "Parse not supported in SportsPersonalizationEntryPoint", v46, 2u);
      }

      (*(v14 + 8))(v20, v13);
    }

    return 0;
  }
}

uint64_t closure #2 in SportsPersonalizationEntryPoint.flowFor(input:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v16 - v10;
  Parse.PegasusResult.response.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  (*(v4 + 8))(v7, v3);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.information);
  _s21InformationFlowPlugin28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI026Apple_Parsec_Siri_V2alpha_pL8ResponseV0P11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA0dE6ActionO0kW0V_Tt2g5(0x1000302u >> (8 * a2), v11, v14);
  return outlined destroy of Any?(v11, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
}

uint64_t SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(void (*a1)(char *, char *, char *))
{
  v305 = a1;
  v303 = *v1;
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v301 = *(v2 - 8);
  v302 = v2;
  v3 = *(v301 + 8);
  __chkstk_darwin(v2);
  v289 = &v242 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v298 = (&v242 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v299 = &v242 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v300 = &v242 - v12;
  v258 = type metadata accessor for PluginAction();
  v257 = *(v258 - 8);
  v13 = *(v257 + 64);
  v14 = __chkstk_darwin(v258);
  v251 = &v242 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v256 = &v242 - v16;
  v260 = type metadata accessor for Input();
  v255 = *(v260 - 8);
  v17 = *(v255 + 64);
  v18 = __chkstk_darwin(v260);
  v250 = &v242 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v253 = &v242 - v20;
  v254 = type metadata accessor for Parse();
  v252 = *(v254 - 8);
  v21 = *(v252 + 64);
  v22 = __chkstk_darwin(v254);
  v249 = &v242 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v259 = &v242 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v261 = &v242 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v277 = &v242 - v29;
  v273 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v272 = *(v273 - 8);
  v30 = *(v272 + 64);
  __chkstk_darwin(v273);
  v271 = &v242 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v263 = *(v264 - 8);
  v32 = *(v263 + 64);
  __chkstk_darwin(v264);
  v262 = &v242 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v248 = &v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v274 = &v242 - v39;
  __chkstk_darwin(v38);
  v285 = &v242 - v40;
  v276 = type metadata accessor for Parse.PegasusResult();
  v275 = *(v276 - 8);
  v41 = *(v275 + 64);
  v42 = __chkstk_darwin(v276);
  v265 = &v242 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v286 = &v242 - v44;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v281 = *(v282 - 8);
  v45 = *(v281 + 64);
  __chkstk_darwin(v282);
  v268 = &v242 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMR);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v280 = &v242 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v279 = &v242 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v283 = &v242 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v288 = &v242 - v56;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v57 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v291 = &v242 - v58;
  v293 = type metadata accessor for SportsItem();
  v295 = *(v293 - 8);
  v59 = *(v295 + 64);
  v60 = __chkstk_darwin(v293);
  v266 = &v242 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin(v60);
  v278 = &v242 - v63;
  __chkstk_darwin(v62);
  v294 = &v242 - v64;
  v65 = type metadata accessor for Date();
  v296 = *(v65 - 8);
  v297 = v65;
  v66 = *(v296 + 64);
  __chkstk_darwin(v65);
  v304 = &v242 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = __chkstk_darwin(v68);
  v284 = &v242 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v71);
  v74 = &v242 - v73;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v76 = *(v75 - 8);
  v77 = *(v76 + 8);
  v78 = __chkstk_darwin(v75);
  v80 = &v242 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __chkstk_darwin(v78);
  v270 = &v242 - v82;
  v83 = __chkstk_darwin(v81);
  v269 = &v242 - v84;
  v85 = __chkstk_darwin(v83);
  v267 = &v242 - v86;
  v87 = __chkstk_darwin(v85);
  v287 = &v242 - v88;
  __chkstk_darwin(v87);
  v90 = &v242 - v89;
  v91 = v1[10];
  v92 = v1[11];
  v292 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 7, v91);
  if ((*(v92 + 8))(v91, v92))
  {
    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v243 = v69;
    v93 = *(v69 + 8);
    v244 = v74;
    v246 = v69 + 8;
    v245 = v93;
    v93(v74, v68);
    v94 = specialized static SportsPersonalizationEntryPoint.isSupportedPersonalizationInstruction(instruction:)(v90);
    v95 = *(v76 + 1);
    v242 = v90;
    v247 = v95;
    v95(v90, v75);
    if (v94)
    {
      v96 = v76;
      v301 = v76 + 8;
      v302 = v75;
      v300 = v68;
      type metadata accessor for PerformanceUtil();
      v97 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v97);
      v98 = v304;
      Date.init()();
      v240 = &v238;
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtGSgMd, &_sSay13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtGSgMR);
      v239 = partial apply for closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:);
      v238 = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      v99 = *(v296 + 8);
      v100 = v98;
      v101 = v297;
      v99(v100, v297);
      v102 = v306;
      if (!v306)
      {
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        __swift_project_value_buffer(v131, static Logger.information);
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v132, v133))
        {
          v134 = swift_slowAlloc();
          *v134 = 0;
          _os_log_impl(&dword_0, v132, v133, "Request doesn't have a supported (SportsEntity -> Instruction) mapping. Not performing sports personalization...", v134, 2u);

          return 0;
        }

        return 0;
      }

      v299 = v99;
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      v303 = __swift_project_value_buffer(v103, static Logger.information);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_0, v104, v105, "Got a request that is applicable for sports personalization via alternative selection. Will attempt to select an alternative", v106, 2u);
      }

      v107 = static PerformanceUtil.shared.getter();
      v298 = &v242;
      __chkstk_darwin(v107);
      v108 = v304;
      Date.init()();
      v240 = &v238;
      v241 = v290;
      v239 = partial apply for closure #3 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:);
      v238 = 2;
      v109 = v291;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (v299)(v108, v101);
      v110 = v295;
      v111 = v293;
      if ((*(v295 + 48))(v109, 1, v293) == 1)
      {

        outlined destroy of Any?(v109, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_0, v112, v113, "Inference was unable to recommend an alternative. Will use original instruction", v114, 2u);

          return 0;
        }

        return 0;
      }

      v299 = v102;
      v141 = v294;
      (*(v110 + 32))(v294, v109, v111);
      v142 = *(v110 + 16);
      v143 = v278;
      v142(v278, v141, v111);
      v144 = Logger.logObject.getter();
      v145 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v304 = v96;
        v298 = 0;
        v148 = v147;
        v306 = v147;
        *v146 = 136315138;
        v142(v266, v143, v111);
        v149 = String.init<A>(describing:)();
        v151 = v150;
        v152 = *(v110 + 8);
        v152(v143, v111);
        v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, &v306);

        *(v146 + 4) = v153;
        _os_log_impl(&dword_0, v144, v145, "Got a recommended alternative entity: %s", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v148);
        v96 = v304;
      }

      else
      {

        v152 = *(v110 + 8);
        v154 = (v152)(v143, v111);
      }

      v155 = v288;
      v156 = v302;
      v157 = v283;
      v158 = v299;
      __chkstk_darwin(v154);
      v240 = v294;
      v159 = v279;
      specialized Sequence.first(where:)(partial apply for closure #4 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:), v158, v279);

      v160 = v159;
      v161 = v280;
      outlined init with take of GenAIPartner?(v160, v280, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtSgMR);
      v162 = 1;
      v163 = v282;
      if ((*(v281 + 48))(v161, 1, v282) != 1)
      {
        v164 = v268;
        outlined init with take of GenAIPartner?(v161, v268, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        (*(v96 + 4))(v155, v164 + *(v163 + 48), v156);
        v165 = type metadata accessor for SportsPersonalizationEntity();
        (*(*(v165 - 8) + 8))(v164, v165);
        v162 = 0;
      }

      (*(v96 + 7))(v155, v162, 1, v156);
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v155, v157, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      if ((*(v96 + 6))(v157, 1, v156) == 1)
      {
        outlined destroy of Any?(v157, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v166, v167))
        {
          v168 = swift_slowAlloc();
          *v168 = 0;
          _os_log_impl(&dword_0, v166, v167, "Unable to map the recommended sports item back to an alternative. This is unexpected. Will continue with original instruction", v168, 2u);
        }

        outlined destroy of Any?(v155, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        v152(v294, v111);
        return 0;
      }

      v299 = v152;
      v169 = v287;
      (*(v96 + 4))(v287, v157, v156);
      v170 = v267;
      v298 = *(v96 + 2);
      (v298)(v267, v169, v156);
      v171 = Logger.logObject.getter();
      v172 = static os_log_type_t.debug.getter();
      v173 = os_log_type_enabled(v171, v172);
      v304 = v96 + 16;
      if (v173)
      {
        v174 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v306 = v175;
        *v174 = 136315138;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
        v176 = Message.debugDescription.getter();
        v178 = v177;
        v247(v170, v302);
        v179 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v176, v178, &v306);
        v156 = v302;

        *(v174 + 4) = v179;
        _os_log_impl(&dword_0, v171, v172, "Reforming intent to use alternative instruction: %s", v174, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v175);
      }

      else
      {

        v247(v170, v156);
      }

      v180 = v300;
      v181 = v243;
      v182 = v242;
      v183 = v244;
      Parse.PegasusResult.response.getter();
      v305 = *(v181 + 16);
      v184 = v284;
      v305(v284, v183, v180);
      v185 = v298;
      (v298)(v182, v287, v156);
      v186 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.modify();
      v188 = *v187;
      *v187 = _swiftEmptyArrayStorage;

      v186(&v306, 0);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.setter();
      (v185)(v269, v182, v156);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
      v189 = v182;
      v190 = v247;
      v247(v189, v156);
      v245(v183, v180);
      v305(v183, v184, v180);
      Parse.PegasusResult.init(pegasusResponse:)();
      v191 = v270;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
      v192 = v271;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.clientDrivenExperience.getter();
      v190(v191, v156);
      v193 = Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.components.getter();
      (*(v272 + 8))(v192, v273);
      if (*(v193 + 16))
      {
        v194 = v263;
        v195 = v262;
        v196 = v264;
        (*(v263 + 16))(v262, v193 + ((*(v194 + 80) + 32) & ~*(v194 + 80)), v264);

        v197 = v285;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v194 + 8))(v195, v196);
        v198 = 0;
      }

      else
      {

        v198 = 1;
        v197 = v285;
      }

      v199 = v277;
      v200 = v299;
      v201 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
      v202 = *(v201 - 8);
      (*(v202 + 56))(v197, v198, 1, v201);
      v203 = v274;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v197, v274, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v204 = *(v202 + 48);
      if (v204(v203, 1, v201) == 1)
      {
        outlined destroy of Any?(v203, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        v205 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
        (*(*(v205 - 8) + 56))(v199, 1, 1, v205);
LABEL_57:
        v226 = v275;
        v227 = v265;
        v228 = v286;
        v229 = v276;
        (*(v275 + 16))(v265, v286, v276);
        v230 = type metadata accessor for InformationPassthroughFlow(0);
        v231 = *(v230 + 48);
        v232 = *(v230 + 52);
        v233 = swift_allocObject();
        (*(v226 + 32))(v233 + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884326InformationPassthroughFlow_result, v227, v229);
        v306 = v233;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type InformationPassthroughFlow and conformance InformationPassthroughFlow, type metadata accessor for InformationPassthroughFlow);
        v223 = Flow.eraseToAnyFlow()();

        outlined destroy of Any?(v285, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        (*(v226 + 8))(v228, v229);
        v245(v284, v300);
        v190(v287, v302);
        outlined destroy of Any?(v288, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        outlined destroy of Any?(v199, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        (v200)(v294, v293);
        return v223;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
      v199 = v277;
      v206 = *(v202 + 8);
      v206(v203, v201);
      v207 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
      v208 = *(v207 - 8);
      if ((*(v208 + 48))(v199, 1, v207) == 1)
      {
        goto LABEL_57;
      }

      v209 = v261;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v199, v261, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      if ((*(v208 + 88))(v209, v207) == enum case for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent.videoClientComponent(_:))
      {
LABEL_53:
        (*(v208 + 8))(v261, v207);
        outlined destroy of Any?(v199, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        v210 = v259;
        (*(v275 + 16))(v259, v286, v276);
        v211 = v252;
        v212 = v254;
        (*(v252 + 104))(v210, enum case for Parse.pegasusResults(_:), v254);
        (*(v211 + 16))(v249, v210, v212);
        v213 = v253;
        Input.init(parse:)();
        v214 = v255;
        (*(v255 + 16))(v250, v213, v260);
        v215 = v256;
        PluginAction.init(flowHandlerId:input:)();
        v216 = v257;
        v217 = v251;
        v218 = v258;
        (*(v257 + 16))(v251, v215, v258);
        v219 = type metadata accessor for ReformerFlow(0);
        v220 = *(v219 + 48);
        v221 = *(v219 + 52);
        v222 = swift_allocObject();
        (*(v216 + 32))(v222 + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884312ReformerFlow_pluginAction, v217, v218);
        v306 = v222;
        lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type ReformerFlow and conformance ReformerFlow, type metadata accessor for ReformerFlow);
        v223 = Flow.eraseToAnyFlow()();

        (*(v216 + 8))(v215, v218);
        (*(v214 + 8))(v213, v260);
        (*(v211 + 8))(v259, v212);
        outlined destroy of Any?(v285, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        (*(v275 + 8))(v286, v276);
        v245(v284, v300);
        v247(v287, v302);
        outlined destroy of Any?(v288, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
        (v299)(v294, v293);
        return v223;
      }

      v224 = v206;
      v225 = v248;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v285, v248, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      if (v204(v225, 1, v201) == 1)
      {
        outlined destroy of Any?(v225, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      }

      else
      {
        v234 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v236 = v235;
        v224(v225, v201);
        if (v234 == 0xD000000000000029 && 0x80000000000C12D0 == v236)
        {

          v199 = v277;
          goto LABEL_53;
        }

        v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v199 = v277;
        if (v237)
        {
          goto LABEL_53;
        }
      }

      (*(v208 + 8))(v261, v207);
      v190 = v247;
      goto LABEL_57;
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    __swift_project_value_buffer(v120, static Logger.information);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.debug.getter();
    v123 = os_log_type_enabled(v121, v122);
    v124 = v244;
    if (v123)
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_0, v121, v122, "Primary instruction is unambiguous, not performing any sports personalization...", v125, 2u);
    }

    Parse.PegasusResult.response.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    v245(v124, v68);
    v126 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    v247(v80, v75);
    v127 = v302;
    if (*(v126 + 16))
    {
      v128 = v301;
      v129 = v299;
      (*(v301 + 2))(v299, v126 + ((v301[80] + 32) & ~v301[80]), v302);
      v130 = 0;
    }

    else
    {
      v130 = 1;
      v128 = v301;
      v129 = v299;
    }

    (*(v128 + 7))(v129, v130, 1, v127);
    v135 = v298;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v129, v298, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    if ((*(v128 + 6))(v135, 1, v127) == 1)
    {
      outlined destroy of Any?(v129, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      v136 = type metadata accessor for SportsPersonalizationEntity();
      v137 = v300;
      (*(*(v136 - 8) + 56))(v300, 1, 1, v136);
    }

    else
    {
      v138 = v289;
      (*(v128 + 4))(v289, v135, v127);
      v137 = v300;
      closure #1 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(v138, v303);
      (*(v128 + 1))(v138, v127);
      outlined destroy of Any?(v129, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    }

    v139 = type metadata accessor for SportsPersonalizationEntity();
    v140 = (*(*(v139 - 8) + 48))(v137, 1, v139) != 1;
    outlined destroy of Any?(v137, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
    return 0;
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    __swift_project_value_buffer(v116, static Logger.information);
    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_0, v117, v118, "Sports personalization feature is disabled, will not try to choose an alternative instruction...", v119, 2u);
    }

    return 0;
  }
}

uint64_t closure #1 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v11 = a1;
  v12 = a2;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t static SportsPersonalizationEntryPoint.makeSportsEntity(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for SportsItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v45 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  if (one-time initialization token for information != -1)
  {
LABEL_37:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static Logger.information);
  v24 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(a1, v23);
  if (v24)
  {
    v43 = v24;
    v44 = v19;
    v25 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    if (v25)
    {
      v26 = v25;
      SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
      v19 = (v26 & 0xFFFFFFFFFFFFFF8);
      v41 = v10;
      v42 = a2;
      v39 = v21;
      v40 = v8;
      v37 = v12;
      v38 = v11;
      if (v26 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        v21 = (v26 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a1 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
        v21 = (v26 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
LABEL_6:
          v12 = 0;
          v46 = v26 & 0xC000000000000001;
          do
          {
            if (v46)
            {
              v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v27 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              if (v12 >= *(v21 + 2))
              {
                __break(1u);
                goto LABEL_37;
              }

              v10 = *(v26 + 8 * v12 + 32);

              v27 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                goto LABEL_31;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            v19 = v47;
            if (!v47)
            {
              goto LABEL_7;
            }

            v11 = specialized static SportsProperty.from(entity:)();
            v8 = v28;
            a2 = v29;

            if (a2 <= 3u)
            {
              if (a2 > 1u)
              {
                if (a2 == 2)
                {
                  outlined copy of SportsProperty(v11, v8, 2u);
                  v19 = v45;
                  SportsItem.league.setter();

                  outlined consume of SportsProperty?(v11, v8, 2u);
                }

                else
                {
                  outlined copy of SportsProperty(v11, v8, 3u);
                  v19 = v45;
                  SportsItem.leagueQId.setter();

                  outlined consume of SportsProperty?(v11, v8, 3u);
                }
              }

              else if (a2)
              {
                outlined copy of SportsProperty(v11, v8, 1u);
                v19 = v45;
                SportsItem.teamQId.setter();

                outlined consume of SportsProperty?(v11, v8, 1u);
              }

              else
              {
                outlined copy of SportsProperty(v11, v8, 0);
                v19 = v45;
                SportsItem.team.setter();

                outlined consume of SportsProperty?(v11, v8, 0);
              }

              goto LABEL_8;
            }

            if (a2 <= 5u)
            {
              if (a2 == 4)
              {
                outlined copy of SportsProperty(v11, v8, 4u);
                v19 = v45;
                SportsItem.sport.setter();

                outlined consume of SportsProperty?(v11, v8, 4u);
              }

              else
              {
                outlined copy of SportsProperty(v11, v8, 5u);
                v19 = v45;
                SportsItem.sportQId.setter();

                outlined consume of SportsProperty?(v11, v8, 5u);
              }

              goto LABEL_8;
            }

            if (a2 == 6)
            {
              outlined copy of SportsProperty(v11, v8, 6u);
              v19 = v45;
              SportsItem.athlete.setter();

              outlined consume of SportsProperty?(v11, v8, 6u);
              goto LABEL_8;
            }

            if (a2 == 7)
            {
              outlined copy of SportsProperty(v11, v8, 7u);
              v19 = v45;
              SportsItem.athleteQId.setter();

              outlined consume of SportsProperty?(v11, v8, 7u);
            }

            else
            {
LABEL_7:
            }

LABEL_8:
            ++v12;
          }

          while (v27 != a1);
        }
      }

      v34 = v37;
      v33 = v38;
      v21 = v39;
      (*(v37 + 32))(v39, v45, v38);
      (*(v34 + 56))(v21, 0, 1, v33);
      v10 = v41;
      a2 = v42;
      v8 = v40;
    }

    else
    {
      (*(v12 + 56))(v21, 1, 1, v11);
    }

    static PersonalizationLevel.from(uso:)(v10);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v21, v44, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v10, v8, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

    outlined destroy of Any?(v10, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    outlined destroy of Any?(v21, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v35 = type metadata accessor for SportsPersonalizationEntity();
    return (*(*(v35 - 8) + 56))(a2, 0, 1, v35);
  }

  else
  {
LABEL_32:
    v30 = type metadata accessor for SportsPersonalizationEntity();
    v31 = *(*(v30 - 8) + 56);

    return v31(a2, 1, 1, v30);
  }
}

uint64_t closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.PegasusResult.response.getter();
  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  (*(v3 + 8))(v6, v2);
  v8 = static SportsPersonalizationEntryPoint.makeEntityInstructionMapping(alternatives:)(v7);

  *a1 = v8;
  return result;
}

void *static SportsPersonalizationEntryPoint.makeEntityInstructionMapping(alternatives:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v72 = *(v2 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v2);
  v70 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v81 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v79 = &v57 - v13;
  v14 = type metadata accessor for SportsPersonalizationEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v69 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v67 = *(v18 - 8);
  v68 = v18;
  v19 = *(v67 + 64);
  v20 = __chkstk_darwin(v18);
  v66 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v80 = &v57 - v22;
  v84 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v23 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v26 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v57 = v27;
  if (v27)
  {
    v29 = *(v25 + 16);
    v28 = v25 + 16;
    v30 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v71 = v72 + 16;
    v76 = (v72 + 56);
    v77 = v29;
    v31 = *(v28 + 56);
    v74 = (v72 + 48);
    v75 = v31;
    v63 = (v72 + 32);
    v62 = (v72 + 8);
    v61 = (v15 + 56);
    v73 = (v15 + 48);
    v60 = (v15 + 32);
    v59 = (v28 + 16);
    v82 = _swiftEmptyArrayStorage;
    v58 = (v28 - 8);
    v78 = v14;
    v65 = v2;
    v83 = v28;
    v64 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29(v26, v30, v84);
    while (1)
    {
      v32 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      if (*(v32 + 16))
      {
        (*(v72 + 16))(v10, v32 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v2);
        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      (*v76)(v10, v33, 1, v2);
      v34 = v81;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v10, v81, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      if ((*v74)(v34, 1, v2) == 1)
      {
        outlined destroy of Any?(v10, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
        v35 = v79;
        (*v61)(v79, 1, 1, v14);
      }

      else
      {
        v36 = v70;
        (*v63)(v70, v34, v2);
        v37 = v10;
        v38 = v2;
        v39 = v79;
        static SportsPersonalizationEntryPoint.makeSportsEntity(entity:)(v36, v79);
        v35 = v39;
        v2 = v38;
        v10 = v37;
        v40 = v36;
        v14 = v78;
        (*v62)(v40, v2);
        outlined destroy of Any?(v37, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      }

      if ((*v73)(v35, 1, v14) == 1)
      {
        (*v58)(v26, v84);
        outlined destroy of Any?(v35, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
      }

      else
      {
        v41 = v26;
        v42 = v10;
        v43 = v35;
        v44 = *v60;
        v45 = v69;
        (*v60)(v69, v43, v14);
        v46 = *(v68 + 48);
        v47 = v66;
        v44(v66, v45, v14);
        (*v59)(v47 + v46, v41, v84);
        outlined init with take of GenAIPartner?(v47, v80, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        v48 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        }

        v50 = v48[2];
        v49 = v48[3];
        v10 = v42;
        if (v50 >= v49 >> 1)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v48);
        }

        v48[2] = v50 + 1;
        v51 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v82 = v48;
        outlined init with take of GenAIPartner?(v80, v48 + v51 + *(v67 + 72) * v50, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
        v14 = v78;
        v2 = v65;
        v26 = v64;
      }

      v30 += v75;
      if (!--v27)
      {
        break;
      }

      v77(v26, v30, v84);
    }
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  result = v82;
  if (v82[2] != v57)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.information);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "One or more alternative instruction did not have a single sports entity. Will ignore alternatives...", v56, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t closure #3 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v7 = *(v6 - 8);
  v35 = v6;
  v36 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = v30 - v11;
  v12 = type metadata accessor for SportsPersonalizationEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OutputPublisherAsync(a1 + 16, v38);
  v17 = v39;
  v18 = v40;
  v19 = __swift_project_boxed_opaque_existential_1(v38, v39);
  v20 = *(a2 + 16);
  if (v20)
  {
    v30[1] = v19;
    v30[2] = v18;
    v30[3] = v17;
    v30[4] = a3;
    v41 = _swiftEmptyArrayStorage;
    v37 = v20;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v41;
    v22 = a2 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v31 = *(v36 + 72);
    v32 = v13;
    do
    {
      v23 = v34;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v22, v34, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v24 = v33;
      outlined init with take of GenAIPartner?(v23, v33, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
      v25 = *(v35 + 48);
      v36 = *(v13 + 32);
      (v36)(v16, v24, v12);
      v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
      (*(*(v26 - 8) + 8))(v24 + v25, v26);
      v41 = v21;
      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v28 + 1, 1);
        v21 = v41;
      }

      v21[2] = v28 + 1;
      (v36)(v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, v16, v12);
      v22 += v31;
      --v37;
    }

    while (v37);
  }

  dispatch thunk of SportsInferenceQuerying.makeRecommendation(entities:)();

  return __swift_destroy_boxed_opaque_existential_0Tm(v38);
}

uint64_t closure #4 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = v24 - v10;
  v12 = type metadata accessor for SportsItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v11, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMd, &_s13SiriInference27SportsPersonalizationEntityV_10PegasusAPI013Apple_Parsec_a9_V2alpha_aF8ResponseV0A11InstructionVtMR);
  v17 = *(v8 + 56);
  SportsPersonalizationEntity.sportsItem.getter();
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    outlined destroy of Any?(v6, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v18 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v18 - 8) + 8))(v11, v18);
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v19 - 8) + 8))(&v11[v17], v19);
    v20 = 0;
  }

  else
  {
    (*(v13 + 32))(v16, v6, v12);
    v21 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v21 - 8) + 8))(v11, v21);
    v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
    (*(*(v22 - 8) + 8))(&v11[v17], v22);
    v20 = static SportsItem.partiallyEqual(lhs:rhs:)();
    (*(v13 + 8))(v16, v12);
  }

  return v20 & 1;
}

uint64_t SportsPersonalizationEntryPoint.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of Any?(v0 + 96, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);
  return v0;
}

uint64_t SportsPersonalizationEntryPoint.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  outlined destroy of Any?(v0 + 96, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMd, &_s21InformationFlowPlugin19SportsIntentDonatorVSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FlowEntryPoint.flowFor(input:) in conformance SportsPersonalizationEntryPoint()
{
  v2 = (*(**v0 + 120))();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t ReformerFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(ReformerFlow.execute(), 0, 0);
}

uint64_t ReformerFlow.execute()()
{
  v16 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    type metadata accessor for PluginAction();
    lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type PluginAction and conformance PluginAction, &type metadata accessor for PluginAction);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "Redirecting parse: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = v0[2];
  v12 = v0[3];
  static ExecuteResponse.redirect(nextPluginAction:)();
  v13 = v0[1];

  return v13();
}

uint64_t protocol witness for Flow.execute() in conformance ReformerFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return ReformerFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance ReformerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ReformerFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t InformationPassthroughFlow.execute()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for KnowledgeFallbackHelper();
  v2[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for Parse.PegasusResult();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(InformationPassthroughFlow.execute(), 0, 0);
}

uint64_t InformationPassthroughFlow.execute()()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  (*(v0[9] + 16))(v1, v0[4] + OBJC_IVAR____TtC21InformationFlowPluginP33_65CFA3A7C2969752B966336CF3E7884326InformationPassthroughFlow_result, v0[8]);
  v6 = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v7 = v4[5];
  v8 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + v4[6]) = xmmword_B86A0;
  *(v2 + v4[7]) = xmmword_B86A0;
  outlined init with copy of KnowledgeFallbackHelper(v2, v3, type metadata accessor for KnowledgeFallbackHelper);
  v9 = _s21InformationFlowPlugin0a7RoutingB0C6result38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperAC0g3KitB05ParseO13PegasusResultV_SbAA09KnowledgemN9Providing_ptcfCTf4nnen_nAA0smN0V_Tt2g5(v1, v6, v3);
  _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(v2, type metadata accessor for KnowledgeFallbackHelper);
  v0[2] = v9;
  type metadata accessor for InformationRoutingFlow(0);
  lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow);
  static ExecuteResponse.complete<A>(next:)();

  v10 = v0[1];

  return v10();
}

uint64_t ReformerFlow.__deallocating_deinit(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = a2(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance InformationPassthroughFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for Flow.onAsync(input:) in conformance InformationPassthroughFlow;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance ReformerFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = *v5;
  a5(0);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t protocol witness for Flow.execute() in conformance InformationPassthroughFlow(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return InformationPassthroughFlow.execute()(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance InformationPassthroughFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InformationPassthroughFlow(0);

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t partial apply for closure #1 in SportsPersonalizationEntryPoint.flowFor(input:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(v3);
  *a1 = result;
  *(a1 + 8) = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type SportsInactionReason and conformance SportsInactionReason()
{
  result = lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason;
  if (!lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SportsInactionReason and conformance SportsInactionReason);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SportsPersonalizationAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for SportsPersonalizationAction(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for SportsPersonalizationAction(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationAction.SelectionMetric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for SportsPersonalizationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for ReformerFlow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s21InformationFlowPlugin0a7RoutingB0C6result38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperAC0g3KitB05ParseO13PegasusResultV_SbAA09KnowledgemN9Providing_ptcfCTf4nnen_nAA0smN0V_Tt2g5(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for CATOption();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for InformationRoutingFlow.State(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v41[3] = type metadata accessor for KnowledgeFallbackHelper();
  v41[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  outlined init with take of KnowledgeFallbackHelper(a3, boxed_opaque_existential_1);
  v13 = type metadata accessor for Parse.PegasusResult();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of OutputPublisherAsync(v41, v40);
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v15 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v16 = swift_allocObject();
  v17 = [objc_opt_self() sharedPreferences];
  v18 = type metadata accessor for PommesServerFallbackPreferences();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = PommesServerFallbackPreferences.init(_:)();
  v16[11] = v18;
  v16[12] = &protocol witness table for PommesServerFallbackPreferences;
  v16[8] = v21;
  outlined init with take of SiriSuggestionsBroker(v37, (v16 + 3));
  v16[2] = v15;
  type metadata accessor for ExperienceSelector();
  v22 = swift_allocObject();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  v23 = type metadata accessor for InformationRoutingFlow(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0;
  outlined init with copy of KnowledgeFallbackHelper(v11, v26 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(v39, v26 + 56);
  outlined init with copy of OutputPublisherAsync(v38, v26 + 16);
  *(v26 + 96) = v16;
  *(v26 + 104) = v22;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v37, v27);
  swift_endAccess();
  *(v26 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = a2;
  outlined init with copy of OutputPublisherAsync(v40, v26 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  v28 = type metadata accessor for AnalyticsComponentIdGenerator();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  v31 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  (*(v14 + 8))(a1, v13);
  outlined destroy of Any?(v37, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(v11, type metadata accessor for InformationRoutingFlow.State);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  *(v26 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v34;
  return v26;
}

uint64_t _s21InformationFlowPlugin23KnowledgeFallbackHelperVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type InformationRoutingFlow and conformance InformationRoutingFlow(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static SportsPersonalizationEntryPoint.isSupportedPersonalizationInstruction(instruction:)(uint64_t a1)
{
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v44 = *(v40 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v42 = *(v46 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v38 = *(v43 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v43);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  v18 = result;
  v19 = 0;
  v20 = *(result + 16);
  v21 = (v13 + 8);
  do
  {
    v41 = v20 != v19;
    if (v20 == v19)
    {
      break;
    }

    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v13 + 16))(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v12);
    if (Apple_Parsec_Siri_Context_ResultEntity.name.getter() == 0x6769626D61736944 && v23 == 0xEE006E6F69746175)
    {

      (*v21)(v16, v12);
      break;
    }

    ++v19;
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = (*v21)(v16, v12);
  }

  while ((v22 & 1) == 0);

  v24 = v36;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v25 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.components.getter();
  (*(v38 + 8))(v24, v43);
  result = v25;
  v26 = 0;
  v47 = *(v25 + 16);
  v27 = v48;
  v42 += 8;
  v43 = v49 + 16;
  v38 = v44 + 8;
  v44 = v49 + 8;
  v28 = v37;
  while (1)
  {
    if (v47 == v26)
    {

      return v41;
    }

    if (v26 >= *(result + 16))
    {
      goto LABEL_19;
    }

    v29 = result;
    (*(v49 + 16))(v28, result + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v26, v27);
    v30 = v45;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.catDialog.getter();
    Apple_Parsec_Siri_V2alpha_CatDialogComponent.catID.getter();
    (*v42)(v30, v46);
    v31 = String.lowercased()();

    v51 = v31;
    strcpy(v50, "disambiguation");
    v50[15] = -18;
    lazy protocol witness table accessor for type String and conformance String();
    v32 = StringProtocol.contains<A>(_:)();

    if (v32)
    {
      break;
    }

    ++v26;
    v33 = v39;
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
    Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    (*v38)(v33, v40);
    v34 = String.lowercased()();

    v51 = v34;
    strcpy(v50, "disambiguation");
    v50[15] = -18;
    v35 = StringProtocol.contains<A>(_:)();
    v27 = v48;

    (*v44)(v28, v27);
    result = v29;
    if (v35)
    {

      return 1;
    }
  }

  (*v44)(v28, v27);
  return 1;
}

uint64_t partial apply for closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return closure #2 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)(a1);
}

uint64_t outlined copy of SportsProperty(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SportsPersonalizationEntryPoint.makePersonalizedSportsExperience(result:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return static SportsPersonalizationEntryPoint.makeSportsEntity(entity:)(v2, a1);
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = type metadata accessor for CATOption();
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v11 = type metadata accessor for GenerativeAssistantSettingsProvider.LLMProvider();
  v3[32] = v11;
  v12 = *(v11 - 8);
  v3[33] = v12;
  v13 = *(v12 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(RegionUnavailabilityOutputGenerator.generateOutput(), 0, 0);
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()()
{
  v1 = objc_allocWithZone(NSBundle);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithPath:v2];
  *(v0 + 280) = v3;

  if (v3)
  {
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    type metadata accessor for GenerativeAssistantSettingsProvider();
    static GenerativeAssistantSettingsProvider.shared.getter();
    dispatch thunk of GenerativeAssistantSettingsProvider.llm()();

    v8 = GenerativeAssistantSettingsProvider.LLMProvider.localizedDisplayName()();
    (*(v5 + 8))(v4, v7);
    type metadata accessor for CATDialog();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_B8690;
    *(inited + 32) = 0xD000000000000013;
    v10 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000000000BF9A0;
    *(inited + 48) = v8;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    *(v0 + 288) = v11;
    swift_setDeallocating();
    outlined destroy of Any?(v10, &_sSS_yptMd, &_sSS_yptMR);
    type metadata accessor for CATGlobals();
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    v12 = CATGlobals.__allocating_init()();
    *(v0 + 296) = v12;
    static CATOption.defaultMode.getter();
    v13 = async function pointer to static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)[1];
    v14 = swift_task_alloc();
    *(v0 + 304) = v14;
    *v14 = v0;
    v14[1] = RegionUnavailabilityOutputGenerator.generateOutput();
    v15 = *(v0 + 248);

    return static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)(v3, 0xD00000000000003ALL, 0x80000000000C13C0, v11, v12, v0 + 96, v15);
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.information);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "GenerativeAssistantActions framework is not available", v19, 2u);
    }

    lazy protocol witness table accessor for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    v21 = *(v0 + 272);
    v22 = *(v0 + 248);
    v23 = *(v0 + 224);
    v24 = *(v0 + 200);

    v25 = *(v0 + 8);

    return v25();
  }
}

{
  v1 = v0[40];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v6 = type metadata accessor for GenerativeResultModels();
  v0[41] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v0[42] = v7;
  v9 = *(v7 + 64) + 15;
  v10 = swift_task_alloc();
  v0[43] = v10;

  GenerativeSearchWebButtonSnippetModel.init(query:)();
  (*(v8 + 104))(v10, enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:), v6);
  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  static GenerativeAssistantSettingsUserDefaults.setRegionUnavailablityDialogShown(_:)();
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v11 = type metadata accessor for ResponseFactory();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v0[44] = ResponseFactory.init()();
  v0[20] = v6;
  v0[21] = lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(v8 + 16))(boxed_opaque_existential_1, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  v0[45] = v15;
  *(v15 + 16) = xmmword_B9BD0;
  *(v15 + 32) = v1;
  v16 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + 1);
  v22 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:));
  v17 = v1;
  v18 = swift_task_alloc();
  v0[46] = v18;
  *v18 = v0;
  v18[1] = RegionUnavailabilityOutputGenerator.generateOutput();
  v19 = v0[28];
  v20 = v0[22];

  return v22(v20, v0 + 17, v15, v19);
}

{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 136));

  return _swift_task_switch(RegionUnavailabilityOutputGenerator.generateOutput(), 0, 0);
}

{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 272);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v7 = *(v0 + 224);
  v9 = *(v0 + 208);
  v12 = *(v0 + 200);

  (*(v8 + 8))(v7, v9);
  (*(v2 + 8))(v1, v3);

  v10 = *(v0 + 8);

  return v10();
}

{

  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t RegionUnavailabilityOutputGenerator.generateOutput()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 240);
  v7 = *v2;
  *(v4 + 312) = v1;

  v8 = (v6 + 8);
  v9 = *(v4 + 288);
  v10 = *(v4 + 248);
  v11 = *(v4 + 232);

  if (v1)
  {
    (*v8)(v10, v11);
    outlined destroy of Any?(v4 + 96, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v12 = RegionUnavailabilityOutputGenerator.generateOutput();
  }

  else
  {
    *(v4 + 320) = a1;
    (*v8)(v10, v11);
    outlined destroy of Any?(v4 + 96, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v12 = RegionUnavailabilityOutputGenerator.generateOutput();
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t closure #1 in RegionUnavailabilityOutputGenerator.generateOutput()()
{
  OutputGenerationManifest.canUseServerTTS.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  return OutputGenerationManifest.responseViewId.setter();
}

unint64_t lazy protocol witness table accessor for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError()
{
  result = lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError;
  if (!lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError;
  if (!lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegionUnavailabilityOutputGenerator.OutputGeneratorError and conformance RegionUnavailabilityOutputGenerator.OutputGeneratorError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenerativeResultModels and conformance GenerativeResultModels()
{
  result = lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels;
  if (!lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels)
  {
    type metadata accessor for GenerativeResultModels();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenerativeResultModels and conformance GenerativeResultModels);
  }

  return result;
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = async function pointer to SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 56) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:), 0, 0);
}

uint64_t OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)()
{
  v1 = *(v0 + 32);
  v2 = dispatch thunk of PommesResponse.experiences.getter();
  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v13 = v2;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  v2 = v13;
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(v2, v3, v4, v5, v6);
    }

    v7 = *(v2 + 32);
  }

  v8 = v7;

  type metadata accessor for GenericExperience();
  v9 = swift_dynamicCastClass();

  if (!v9)
  {
LABEL_12:
    v15 = async function pointer to SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)[1];
    v16 = swift_task_alloc();
    *(v0 + 40) = v16;
    v6 = lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy();
    *v16 = v0;
    v16[1] = OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:);
    v4 = *(v0 + 56);
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = &type metadata for OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;

    return SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(v2, v3, v4, v5, v6);
  }

  v10 = *(v0 + 16);
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = *(v0 + 8);

  return v11();
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

unint64_t lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy()
{
  result = lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;
  if (!lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy);
  }

  return result;
}

uint64_t OverrideGuardFlowStrategy.makeErrorResponse(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(OverrideGuardFlowStrategy.makeErrorResponse(error:), 0, 0);
}

uint64_t OverrideGuardFlowStrategy.makeErrorResponse(error:)()
{
  v1 = v0[4];
  v2 = dispatch thunk of PommesResponse.experiences.getter();
  if (!(v2 >> 62))
  {
    if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v12 = v2;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  v2 = v12;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(v2, v3, v4, v5);
    }

    v6 = *(v2 + 32);
  }

  v7 = v6;

  type metadata accessor for GenericExperience();
  v8 = swift_dynamicCastClass();

  if (!v8)
  {
LABEL_12:
    v14 = async function pointer to SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)[1];
    v15 = swift_task_alloc();
    v0[5] = v15;
    v5 = lazy protocol witness table accessor for type OverrideGuardFlowStrategy.DefaultGuardFlowStrategy and conformance OverrideGuardFlowStrategy.DefaultGuardFlowStrategy();
    *v15 = v0;
    v15[1] = OverrideGuardFlowStrategy.makeErrorResponse(error:);
    v2 = v0[2];
    v3 = v0[3];
    v4 = &type metadata for OverrideGuardFlowStrategy.DefaultGuardFlowStrategy;

    return SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:)(v2, v3, v4, v5);
  }

  v9 = v0[2];
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  v10 = v0[1];

  return v10();
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(OverrideGuardFlowStrategy.makeErrorResponse(error:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:) in conformance OverrideGuardFlowStrategy(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return OverrideGuardFlowStrategy.makeFailureResponse(deviceState:requestingPreciseLocation:)(a1, a2, a3, v8);
}

uint64_t protocol witness for SiriLocationAccessGuardFlowStrategy.makeErrorResponse(error:) in conformance OverrideGuardFlowStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return OverrideGuardFlowStrategy.makeErrorResponse(error:)(a1, a2, v6);
}

uint64_t getEnumTagSinglePayload for OverrideGuardFlowStrategy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OverrideGuardFlowStrategy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RenderPegasusFlow.__allocating_init(pegasusResult:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a7;
  v33 = a6;
  v32 = a5;
  v28 = a4;
  v31 = a3;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PegasusExperience();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v34 = a4;
  v35 = a1;
  v19 = a1;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v11 + 8))(v14, v10);
  outlined init with copy of OutputPublisherAsync(a2, v38);
  static SiriKitEventSender.current.getter();
  type metadata accessor for PegasusFlowEventLogger();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  outlined init with take of SiriSuggestionsBroker(v37, v20 + 24);
  *(v20 + 64) = 0x54746E6572727543;
  *(v20 + 72) = 0xEB000000006B7361;
  *(v20 + 80) = 2;
  v21 = v29;
  v22 = outlined init with copy of OutputPublisherAsync(v29, v37);
  v23 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v22);
  v36[3] = type metadata accessor for PommesSystemAppChecking();
  v36[4] = &protocol witness table for PommesSystemAppChecking;
  __swift_allocate_boxed_opaque_existential_1(v36);
  PommesSystemAppChecking.init()();
  v24 = type metadata accessor for AppResolutionStrategyHelpers();
  v25 = (*(v30 + 224))(v18, 0, v38, v31, v32, v20, v37, v23, v36, v24, &protocol witness table for AppResolutionStrategyHelpers);

  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  v26 = type metadata accessor for Parse.PegasusResult();
  (*(*(v26 - 8) + 8))(v19, v26);
  return v25;
}

void *RenderPegasusFlow.__allocating_init(pommesResponse:outputPublisher:informationViewFactory:experienceSelector:renderComponentFlowFactory:pegasusPatternFlowFactory:aceServiceInvoker:appChecking:responseProducerType:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, unint64_t a9, void *a10)
{
  v74 = a8;
  v75 = a7;
  v68 = a6;
  v73 = a5;
  v72 = a3;
  v76 = a9;
  v71 = a10;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PegasusExperience();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v67 = a4;
  v77 = a4;
  v78 = a1;
  Date.init()();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v66 = 0;

  (*(v14 + 8))(v17, v13);
  v69 = a2;
  outlined init with copy of OutputPublisherAsync(a2, v81);
  v22 = a1;
  static SiriKitEventSender.current.getter();
  type metadata accessor for PegasusFlowEventLogger();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  outlined init with copy of OutputPublisherAsync(v80, v23 + 24);
  v24 = v22;
  v25 = PommesResponse.metadataDomainName.getter();
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_0Tm(v80);
  *(v23 + 64) = v25;
  *(v23 + 72) = v27;
  *(v23 + 80) = 1;
  outlined init with copy of OutputPublisherAsync(v75, v80);
  v28 = outlined init with copy of OutputPublisherAsync(v74, v79);
  v29 = default argument 7 of RenderPegasusFlow.init(experience:pommesResponse:outputPublisher:informationViewFactory:renderComponentFlowFactory:flowTaskLogger:aceServiceInvoker:pegasusPatternFlowFactory:appChecking:responseProducerType:)(v28);
  v30 = v70[28];
  v31 = v72;

  v32 = v73;

  v33 = v30(v21, a1, v81, v31, v32, v23, v80, v29, v79, v76, v71);

  v71 = v24;
  v34 = dispatch thunk of PommesResponse.experiences.getter();
  v35 = v34;
  if (v34 >> 62)
  {
    goto LABEL_40;
  }

  v36 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v70 = v33;
  if (v36)
  {
    v37 = 0;
    v76 = v35 & 0xC000000000000001;
    v33 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v76)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_35;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v36 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v41 = dispatch thunk of Experience.associatedEntities.getter();

      v42 = *(v41 + 16);
      v43 = v33[2];
      v44 = v43 + v42;
      if (__OFADD__(v43, v42))
      {
        goto LABEL_36;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v44 <= v33[3] >> 1)
      {
        if (*(v41 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v43 <= v44)
        {
          v46 = v43 + v42;
        }

        else
        {
          v46 = v43;
        }

        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v46, 1, v33, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, _ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, &type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity);
        if (*(v41 + 16))
        {
LABEL_20:
          v47 = (v33[3] >> 1) - v33[2];
          v48 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
          if (v47 < v42)
          {
            goto LABEL_38;
          }

          v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
          v50 = *(v48 + 72);
          swift_arrayInitWithCopy();

          if (v42)
          {
            v51 = v33[2];
            v52 = __OFADD__(v51, v42);
            v53 = v51 + v42;
            if (v52)
            {
              goto LABEL_39;
            }

            v33[2] = v53;
          }

          goto LABEL_6;
        }
      }

      if (v42)
      {
        goto LABEL_37;
      }

LABEL_6:
      ++v37;
      if (v40 == v36)
      {
        goto LABEL_26;
      }
    }
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_26:

  v54 = v70;
  v55 = v66;
  RenderPegasusFlow.addReferenceResolutionEntities(from:)(v33);
  if (v55)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.information);
    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v81[0] = v60;
      *v59 = 136315138;
      v80[0] = v55;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v61 = String.init<A>(describing:)();
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, v81);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_0, v57, v58, "Could not add RR entities from POMMES response: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
    }
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  __swift_destroy_boxed_opaque_existential_0Tm(v69);
  return v54;
}