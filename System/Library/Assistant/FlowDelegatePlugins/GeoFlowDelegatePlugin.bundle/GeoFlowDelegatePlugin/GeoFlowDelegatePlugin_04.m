unint64_t StandardMapData.makePunchoutURI(includeLabel:)(char a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_B89E0;
  *(v10 + 56) = &type metadata for Double;
  *(v10 + 64) = &protocol witness table for Double;
  *(v10 + 32) = a4;
  v11._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 44;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_B89E0;
  *(v13 + 56) = &type metadata for Double;
  *(v13 + 64) = &protocol witness table for Double;
  *(v13 + 32) = a5;
  v14 = String.init(format:_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  if ((a1 & 1) != 0 && (a2 || a3 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    v20._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 15729;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 1030515750;
    v22._object = 0xE400000000000000;
    String.append(_:)(v22);
  }

  else
  {
    v18._countAndFlagsBits = 1030515750;
    v18._object = 0xE400000000000000;
    String.append(_:)(v18);
  }

  return 0xD000000000000017;
}

uint64_t StandardMapData.makePunchoutURL(idiom:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for CharacterSet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = VRXIdiom.isWatchOS.getter();
  v21[0] = StandardMapData.makePunchoutURI(includeLabel:)((v15 & 1) == 0, a1, a2, a4, a5);
  v21[1] = v16;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v18 = v17;
  (*(v11 + 8))(v14, v10);

  if (v18)
  {
    URL.init(string:)();
  }

  else
  {
    v20 = type metadata accessor for URL();
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }
}

id static StandardMapData.blueTint.getter()
{
  v0 = [objc_allocWithZone(RFColor) init];
  [v0 setName:8];
  return v0;
}

uint64_t specialized StandardMapData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double specialized StandardMapData.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin15StandardMapDataV10CodingKeys33_0D80B973183C1DC534D1AF130BBBA50ELLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StandardMapData.CodingKeys and conformance StandardMapData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v11;
    v12[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StandardMapData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for StandardMapData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ParkingCommon.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t ParkingCommon.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[55] = a5;
  v6[56] = v5;
  v6[53] = a3;
  v6[54] = a4;
  v6[51] = a1;
  v6[52] = a2;
  v7 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v6[57] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v6[58] = v8;
  v9 = *(v8 - 8);
  v6[59] = v9;
  v10 = *(v9 + 64) + 15;
  v6[60] = swift_task_alloc();

  return _swift_task_switch(ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:), 0, 0);
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)()
{
  v1 = v0[56];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = (*(v3 + 128))(v2, v3);
  v0[61] = v4;
  v5 = v1[6];
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[62] = v7;
  v8 = *(*v4 + 152);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[63] = v10;
  *v10 = v0;
  v10[1] = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  v11 = v0[52];

  return v13(v11, v7);
}

{
  v83 = v0;
  v1 = *(v0 + 480);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  static os_log_type_t.default.getter();
  v76 = v3[2];
  os_log(_:dso:log:_:_:)();
  static DialogPhase.summary.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  OutputGenerationManifest.responseViewId.setter();
  v4 = v3[6];
  v5 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v4);
  v6 = (*(v5 + 128))(v4, v5);
  *(v0 + 208) = 0;
  *(v0 + 232) = &type metadata for GeoLabel;
  *(v0 + 240) = &protocol witness table for GeoLabel;
  *(v0 + 216) = 0;
  *(v0 + 224) = 2;
  v7 = (*(*v6 + 136))(v0 + 208);
  v9 = v8;
  LOBYTE(v4) = v10;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 208));
  if (v4)
  {
    outlined consume of Result<String, Error>(v7, v9, 1);
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v11 = *(v0 + 440);
  v72 = v9;
  v73 = v7;
  if (v11)
  {
    v12 = *(v0 + 432);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(v0 + 448);
      v15 = v14[6];
      v16 = v14[7];
      __swift_project_boxed_opaque_existential_1(v14 + 3, v15);
      v17 = *(v16 + 128);

      v18 = v17(v15, v16);
      *(v0 + 392) = &type metadata for GeoLabel;
      *(v0 + 400) = &protocol witness table for GeoLabel;
      *(v0 + 368) = v12;
      *(v0 + 376) = v11;
      *(v0 + 384) = 0;
      v19 = (*(*v18 + 136))(v0 + 368);
      v21 = v20;
      v23 = v22;

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      outlined consume of Result<String, Error>(v19, v21, 1);
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_10:
  v24 = *(v0 + 448);
  v25 = v24[6];
  v26 = v24[7];
  __swift_project_boxed_opaque_existential_1(v24 + 3, v25);
  v27 = (*(v26 + 128))(v25, v26);
  *(v0 + 272) = &type metadata for GeoLabel;
  *(v0 + 280) = &protocol witness table for GeoLabel;
  *(v0 + 248) = xmmword_BC400;
  *(v0 + 264) = 2;
  v28 = (*(*v27 + 136))(v0 + 248);
  v30 = v29;
  LOBYTE(v25) = v31;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 248));
  if (v25)
  {
    outlined consume of Result<String, Error>(v28, v30, 1);
    v74 = 0xE000000000000000;
    v75 = 0;
  }

  else
  {
    v74 = v30;
    v75 = v28;
  }

  v32 = *(v0 + 448);
  v33 = *(v0 + 424);
  v34 = v32[6];
  v35 = v32[7];
  __swift_project_boxed_opaque_existential_1(v32 + 3, v34);
  v36 = (*(v35 + 128))(v34, v35);
  v37 = CLPlacemark.makeDialogLocation()();
  *(v0 + 312) = &type metadata for GeoLabel;
  *(v0 + 320) = &protocol witness table for GeoLabel;
  *(v0 + 288) = v37;
  *(v0 + 296) = 0;
  *(v0 + 304) = 1;
  v38 = (*(*v36 + 136))(v0 + 288);
  v40 = v39;
  v42 = v41;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 288));
  if (v42)
  {
    outlined consume of Result<String, Error>(v38, v40, 1);
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  v43 = [*(v0 + 424) location];
  v44 = 0;
  v45 = 0;
  if (v43)
  {
    v46 = v43;
    [v43 coordinate];
    v45 = v47;
  }

  v48 = (v0 + 16);
  v49 = [*(v0 + 424) location];
  if (v49)
  {
    v50 = v49;
    [v49 coordinate];
    v44 = v51;
  }

  *(v0 + 16) = v19;
  *(v0 + 24) = v21;
  *(v0 + 32) = v38;
  *(v0 + 40) = v40;
  *(v0 + 48) = v73;
  *(v0 + 56) = v72;
  *(v0 + 64) = v45;
  *(v0 + 72) = v44;
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v82 = v54;
    *v53 = 136315138;
    v55 = *(v0 + 32);
    *(v0 + 80) = *v48;
    *(v0 + 96) = v55;
    v56 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v56;
    outlined init with copy of GeoParkedCar(v0 + 16, v0 + 144);
    v57 = String.init<A>(describing:)();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v82);

    *(v53 + 4) = v59;
    _os_log_impl(&dword_0, v76, v52, "RF: parking model car: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  v60 = *(v0 + 512);
  v78 = *v48;
  v79 = *(v0 + 32);
  v80 = *(v0 + 48);
  v81 = *(v0 + 64);
  v61 = type metadata accessor for ResponseFactory();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  *(v0 + 520) = ResponseFactory.init()();
  *(v0 + 352) = &type metadata for GeoDataModels;
  *(v0 + 360) = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
  v64 = swift_allocObject();
  *(v0 + 328) = v64;
  *(v64 + 16) = v78;
  *(v64 + 32) = v79;
  *(v64 + 48) = v80;
  *(v64 + 64) = v81;
  *(v64 + 80) = v75;
  *(v64 + 88) = v74;
  *(v64 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v65 = swift_allocObject();
  *(v0 + 528) = v65;
  *(v65 + 16) = xmmword_B8FB0;
  *(v65 + 32) = v60;
  v66 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
  v77 = (&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:));
  v67 = v60;
  v68 = swift_task_alloc();
  *(v0 + 536) = v68;
  *v68 = v0;
  v68[1] = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  v69 = *(v0 + 480);
  v70 = *(v0 + 408);

  return v77(v70, v0 + 328, v65, v69);
}

{
  v1 = *v0;
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 528);
  v4 = *(*v0 + 520);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 328));

  return _swift_task_switch(ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:), 0, 0);
}

{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);

  v6 = *(v0 + 8);

  return v6();
}

{
  v1 = v0[51];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[60];
  v3 = v0[57];

  v4 = v0[1];

  return v4();
}

uint64_t ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 504);
  v5 = *v2;
  *(*v2 + 512) = a1;

  v6 = *(v3 + 496);
  v7 = *(v3 + 488);
  if (v1)
  {

    v8 = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  }

  else
  {

    v8 = ParkingCommon.parkingRFView(dialog:parkingLocation:parkingNote:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t RetrieveParkingHandleIntentStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t CLLocation.makeDialogLocation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for DialogLocation.Builder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  DialogLocation.Builder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_B8FB0;
  v9 = type metadata accessor for DialogLocationValue.Builder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  DialogLocationValue.Builder.init()();
  v12 = type metadata accessor for DialogLocationAddress.Builder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  DialogLocationAddress.Builder.init()();
  v15 = [v0 shortDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.toSpeakableString.getter();

  v16 = type metadata accessor for SpeakableString();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  dispatch thunk of DialogLocationAddress.Builder.withFullThoroughfare(_:)();

  outlined destroy of SpeakableString?(v4);
  dispatch thunk of DialogLocationValue.Builder.withAddress(_:)();

  v17 = dispatch thunk of DialogLocationValue.Builder.build()();

  *(v8 + 32) = v17;
  dispatch thunk of DialogLocation.Builder.withValues(_:)();

  v18 = dispatch thunk of DialogLocation.Builder.build()();

  return v18;
}

uint64_t sub_65768()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  return v2;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v1 + 24);
  return v1;
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for SaveParkingLocation;
  v0[6] = &protocol witness table for SaveParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo27INSaveParkingLocationIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo27INSaveParkingLocationIntentCGMR);
  v2 = ParameterResolutionRecord.intent.getter();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance SaveParkingLocationUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SaveParkingLocationUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t GeoRCHFlowFactoryImpl.makeRCHFlow<A>(strategy:childProducers:resolvedApp:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v7 = *(a6 + 8);
  v27[0] = a6;
  v8 = *(v7 + 8);
  v27[1] = swift_getAssociatedTypeWitness();
  v9 = *(v7 + 16);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for RCHChildFlowProducersAsync();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v27 - v14;
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RCHFlowFactory();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v27 - v23;
  (*(v16 + 16))(v19, v28, a5);
  type metadata accessor for RCHChildFlowFactory();
  (*(v11 + 16))(v15, v29, v10);
  RCHChildFlowFactory.__allocating_init(producers:)();
  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v25 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:)();
  (*(v21 + 8))(v24, v20);
  return v25;
}

uint64_t UnsupportedRequestFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t UnsupportedRequestFlow.execute()(uint64_t a1)
{
  v1[17] = a1;
  v2 = type metadata accessor for TemplatingResult();
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v1[20] = *(v3 + 64);
  v1[21] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[22] = v4;
  v5 = async function pointer to static ErrorTemplates.genericErrorLegacy()[1];
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v1;
  v6[1] = UnsupportedRequestFlow.execute();

  return static ErrorTemplates.genericErrorLegacy()(v4);
}

uint64_t UnsupportedRequestFlow.execute()()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = UnsupportedRequestFlow.execute();
  }

  else
  {
    v3 = UnsupportedRequestFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 144);
  *(v0 + 40) = &type metadata for FlowHelperImpl;
  *(v0 + 48) = &protocol witness table for FlowHelperImpl;
  v6 = swift_allocObject();
  *(v0 + 16) = v6;
  outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v6 + 16);
  outlined init with copy of DeviceState(v6 + 144, v0 + 56);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of DeviceState(v0 + 16, v0 + 96);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v2, v5);
  outlined init with take of CATType((v0 + 96), v8 + ((v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = type metadata accessor for SimpleOutputFlowAsync();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 200) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  (*(v3 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v12 = async function pointer to SimpleOutputFlowAsync.execute()[1];
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  *v13 = v0;
  v13[1] = UnsupportedRequestFlow.execute();
  v14 = *(v0 + 136);

  return SimpleOutputFlowAsync.execute()(v14);
}

{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v8 = *v0;

  v4 = *(v1 + 176);
  v5 = *(v1 + 168);

  v6 = *(v8 + 8);

  return v6();
}

{
  v1 = v0[24];
  v2 = v0[17];
  static ExecuteResponse.complete()();

  v4 = v0[21];
  v3 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t UnsupportedRequestFlow.execute(completion:)()
{
  type metadata accessor for UnsupportedRequestFlow();
  lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t UnsupportedRequestFlow.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t sub_66A40()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t protocol witness for Flow.execute() in conformance UnsupportedRequestFlow(uint64_t a1)
{
  v4 = *(**v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance UnsupportedRequestFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsupportedRequestFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_66C8C()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

unint64_t lazy protocol witness table accessor for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow()
{
  result = lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow;
  if (!lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow)
  {
    type metadata accessor for UnsupportedRequestFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow);
  }

  return result;
}

uint64_t RetrieveParkingBaseRCHStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Parse();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:), 0, 0);
}

uint64_t RetrieveParkingBaseRCHStrategy.makeIntentFromParse(parse:currentIntent:)()
{
  v46 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[4];
    v3 = v1;
    v4 = static os_log_type_t.info.getter();
    v5 = *(v2 + 16);
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v45 = v7;
      *v6 = 136315138;
      v3 = v3;
      v8 = [v3 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v45);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_0, v5, v4, "makeIntentFromParse with current intent: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
    }

    goto LABEL_10;
  }

  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  (*(v14 + 16))(v13, v0[2], v15);
  v16 = (*(v14 + 88))(v13, v15);
  if (v16 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v17 = v0[7];
    (*(v0[6] + 96))(v17, v0[5]);
    v18 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));
    v19 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();

    v21 = v0[7];
    if (v20)
    {
      Parse.ServerConversion.siriKitIntent.getter();

      objc_opt_self();
      v3 = swift_dynamicCastObjCClassUnconditional();
      v22 = type metadata accessor for NLIntent();
      (*(*(v22 - 8) + 8))(v21, v22);
LABEL_10:
      v29 = v0[7];

      v30 = v0[1];

      return v30(v3);
    }

    type metadata accessor for RuntimeError();
    v36 = swift_allocObject();
    *(v36 + 16) = 0xD000000000000039;
    *(v36 + 24) = 0x80000000000C2800;
    _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
    swift_allocError();
    *v37 = v36;
    swift_willThrow();

    v38 = type metadata accessor for NLIntent();
    (*(*(v38 - 8) + 8))(v21, v38);
  }

  else
  {
    v24 = v0[6];
    v23 = v0[7];
    v25 = v0[5];
    if (v16 == enum case for Parse.pommesResponse(_:))
    {
      (*(v24 + 96))(v0[7], v0[5]);
      v26 = *v23;
      v27 = PommesResponse.firstGeoExperience.getter();
      if (v27)
      {
        v28 = v27;
        v3 = [objc_allocWithZone(INRetrieveParkingLocationIntent) init];

        goto LABEL_10;
      }

      v39 = v0[4];
      static os_log_type_t.error.getter();
      v40 = *(v39 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v41 = swift_allocObject();
      *(v41 + 16) = 0xD00000000000002BLL;
      *(v41 + 24) = 0x80000000000C2880;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v42 = v41;
      swift_willThrow();
    }

    else
    {
      v32 = v0[4];
      static os_log_type_t.error.getter();
      v33 = *(v32 + 16);
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v34 = swift_allocObject();
      *(v34 + 16) = 0xD000000000000049;
      *(v34 + 24) = 0x80000000000C27B0;
      _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, 255, type metadata accessor for RuntimeError);
      swift_allocError();
      *v35 = v34;
      swift_willThrow();
      (*(v24 + 8))(v23, v25);
    }
  }

  v43 = v0[7];

  v44 = v0[1];

  return v44();
}

uint64_t RetrieveParkingBaseRCHStrategy.actionForInput(input:)()
{
  v1 = type metadata accessor for Parse();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  Input.parse.getter();
  (*(v2 + 16))(v6, v8, v1);
  v9 = (*(v2 + 88))(v6, v1);
  if (v9 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v2 + 96))(v6, v1);
    v10 = *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    static ActionForInput.handle()();
    (*(v2 + 8))(v8, v1);
    v11 = type metadata accessor for NLIntent();
    return (*(*(v11 - 8) + 8))(v6, v11);
  }

  else if (v9 == enum case for Parse.pommesResponse(_:))
  {
    v13 = *(v2 + 8);
    v13(v6, v1);
    static os_log_type_t.info.getter();
    v14 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.handle()();
    return (v13)(v8, v1);
  }

  else
  {
    static os_log_type_t.error.getter();
    v15 = *(v0 + 16);
    os_log(_:dso:log:_:_:)();
    static ActionForInput.cancel()();
    v16 = *(v2 + 8);
    v16(v8, v1);
    return (v16)(v6, v1);
  }
}

uint64_t RetrieveParkingBaseRCHStrategy.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeIntentFromParse(parse:currentIntent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v10(a1, a2);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeParameterMetadata(intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();

  return RCHFlowStrategyAsync.makeParameterMetadata(intent:)(a1, ParkingBaseRCHStrategy, a3);
}

uint64_t protocol witness for RCHFlowStrategyAsync.makeErrorResponse(error:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to RCHFlowStrategyAsync.makeErrorResponse(error:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RCHFlowStrategyAsync.makeErrorResponse(error:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppDoesNotSupportIntentResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeAppNotFoundOnDeviceResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = async function pointer to ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)[1];
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v11 = v5;
  v11[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeDeviceIncompatibleResponse(app:intent:)(a1, a2, a3, ParkingBaseRCHStrategy, a5);
}

uint64_t protocol witness for ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return ResolveConfirmFlowStrategyAsync.makeErrorResponse(error:app:intent:)(a1, a2, a3, a4, ParkingBaseRCHStrategy, a6);
}

uint64_t protocol witness for RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = async function pointer to RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v13 = v6;
  v13[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return RouteConfirmIntentResponseFlowStrategyAsync.makeFailureConfirmingIntentResponse(app:intent:intentResponse:)(a1, a2, a3, a4, ParkingBaseRCHStrategy, a6);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance RetrieveParkingBaseRCHStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingBaseRCHStrategy = type metadata accessor for RetrieveParkingBaseRCHStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, ParkingBaseRCHStrategy, a4);
}

uint64_t _s21GeoFlowDelegatePlugin12RuntimeErrorCACs0F0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void __swiftcall GeoParkedCar.init(note:localizedAddress:locationInfo:)(GeoFlowDelegatePlugin::GeoParkedCar *__return_ptr retstr, Swift::String_optional note, Swift::String_optional localizedAddress, GeoFlowDelegatePlugin::StandardMapData locationInfo)
{
  retstr->note = note;
  retstr->localizedAddress = localizedAddress;
  retstr->locationInfo = locationInfo;
}

double GeoParkedCar.locationInfo.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = v0[6];
  v4 = *(v0 + 7);

  return v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoParkedCar.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702129518;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoParkedCar.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoParkedCar.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoParkedCar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoParkedCar.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 3);
    v18 = *(v3 + 2);
    v19 = v16;
    v17[15] = 2;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys);
  }

  return result;
}

double GeoParkedCar.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized GeoParkedCar.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t specialized GeoParkedCar.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702129518 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000C16A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized GeoParkedCar.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D9ParkedCarV10CodingKeys33_3580A397E012D408D7824454B79D4E58LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoParkedCar.CodingKeys and conformance GeoParkedCar.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v26 = v11;
  LOBYTE(v31[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v25 = v14;
  v36 = 2;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v34;
  v18 = v35;
  v19 = v26;
  *&v27 = v26;
  v20 = v25;
  *(&v27 + 1) = v13;
  *&v28 = v25;
  *(&v28 + 1) = v16;
  v29 = v34;
  v30 = v35;
  outlined init with copy of GeoParkedCar(&v27, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v31[0] = v19;
  v31[1] = v13;
  v31[2] = v20;
  v31[3] = v16;
  v32 = v17;
  v33 = v18;
  result = outlined destroy of GeoParkedCar(v31);
  v22 = v28;
  *a2 = v27;
  a2[1] = v22;
  v23 = v30;
  a2[2] = v29;
  a2[3] = v23;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoParkedCar(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoParkedCar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  TrafficIncidentUnsupportedValueStrategy.init(with:)(a1);
  return v2;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v3 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v3 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v3 + 32) = OS_os_log.init(subsystem:category:)();
  *(v3 + 16) = 1;
  *(v1 + 24) = v3;
  outlined init with take of CATType(a1, v1 + 32);
  return v1;
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for AceOutput();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v6 = *(v5 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v8 = type metadata accessor for TemplatingResult();
  v3[45] = v8;
  v9 = *(v8 - 8);
  v3[46] = v9;
  v10 = *(v9 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:), 0, 0);
}

char *TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v84 = v0;
  v1 = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v2 = ParameterResolutionRecord.result.getter();
  *(v0 + 392) = v2;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = *(v0 + 280);
  if (!v3)
  {

    static os_log_type_t.error.getter();
    v32 = *(v4 + 16);
    os_log(_:dso:log:_:_:)();
    type metadata accessor for RuntimeError();
    v33 = swift_allocObject();
    *(v33 + 16) = 0xD00000000000005CLL;
    *(v33 + 24) = 0x80000000000C2990;
    lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
LABEL_43:
    v71 = *(v0 + 376);
    v70 = *(v0 + 384);
    v73 = *(v0 + 344);
    v72 = *(v0 + 352);
    v75 = *(v0 + 328);
    v74 = *(v0 + 336);
    v77 = *(v0 + 312);
    v76 = *(v0 + 320);
    v78 = *(v0 + 304);

    v79 = *(v0 + 8);

    return v79();
  }

  v5 = v3;
  v6 = *(v4 + 16);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v83 = v9;
    *v8 = 136315138;
    *(v0 + 256) = [v5 unsupportedReason];
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v6;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v83);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v12, v7, "INReportIncidentIncidentTypeUnsupportedReason is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v14 = v2;
  if ([v5 unsupportedReason] == &dword_0 + 2)
  {
    v15 = [v5 alternatives];

    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = specialized _arrayConditionalCast<A, B>(_:)(v16);

    if (v17)
    {
      if (v17 >> 62)
      {
LABEL_47:
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      }

      v80 = v0;
      v81 = v14;
      if (v18)
      {
        v83 = &_swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          __break(1u);
          return result;
        }

        v0 = v18;
        v20 = 0;
        v21 = v83;
        do
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v22 = *(v17 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 localizedDisplayString];
          if (v24)
          {
            v25 = v24;
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v27;
          }

          else
          {

            v26 = 0;
            v28 = 0xE000000000000000;
          }

          v83 = v21;
          v30 = v21[2];
          v29 = v21[3];
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v21 = v83;
          }

          ++v20;
          v21[2] = v30 + 1;
          v31 = &v21[2 * v30];
          v31[4] = v26;
          v31[5] = v28;
        }

        while (v18 != v20);
      }

      else
      {

        v21 = &_swiftEmptyArrayStorage;
      }

      v48 = 0;
      v14 = v21[2];
      v17 = &_swiftEmptyArrayStorage;
LABEL_26:
      v49 = &v21[2 * v48 + 5];
      while (v14 != v48)
      {
        if (v48 >= v21[2])
        {
          __break(1u);
          goto LABEL_47;
        }

        v51 = *(v49 - 1);
        v50 = *v49;
        v49 += 2;
        ++v48;
        v52 = HIBYTE(v50) & 0xF;
        if ((v50 & 0x2000000000000000) == 0)
        {
          v52 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
            v17 = v83;
          }

          v0 = *(v17 + 16);
          v54 = *(v17 + 24);
          if (v0 >= v54 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v0 + 1, 1);
            v17 = v83;
          }

          *(v17 + 16) = v0 + 1;
          v55 = (v17 + 16 * v0);
          v55[4] = v51;
          v55[5] = v50;
          goto LABEL_26;
        }
      }

      if (*(v17 + 16))
      {
        v56 = v80[34];
        v57 = v80[35];
        v58 = v57[3];
        v80[20] = type metadata accessor for TrafficIncident(0);
        v80[21] = &protocol witness table for TrafficIncident;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80 + 17);
        v60 = ParameterResolutionRecord.intent.getter();
        v61 = specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(v60);

        *boxed_opaque_existential_0 = v17;
        *(boxed_opaque_existential_0 + 8) = v61 & 1;
        swift_storeEnumTagMultiPayload();
        v62 = v57[7];
        v63 = v57[8];
        __swift_project_boxed_opaque_existential_1(v57 + 4, v62);
        v64 = (*(v63 + 80))(v62, v63);
        v80[50] = v64;
        v65 = *(*v58 + 112);
        v82 = (v65 + *v65);
        v66 = v65[1];
        v67 = swift_task_alloc();
        v80[51] = v67;
        *v67 = v80;
        v67[1] = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
        v43 = v80[48];
        v44 = v80 + 17;
        v45 = v64;
        goto LABEL_39;
      }

      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v68 = swift_allocObject();
      *(v68 + 16) = 0xD000000000000042;
      *(v68 + 24) = 0x80000000000C2AC0;
      lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
      swift_allocError();
      *v69 = v68;
      swift_willThrow();

      v0 = v80;
    }

    else
    {
      static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)();
      type metadata accessor for RuntimeError();
      v46 = swift_allocObject();
      *(v46 + 16) = 0xD000000000000046;
      *(v46 + 24) = 0x80000000000C2A30;
      lazy protocol witness table accessor for type RuntimeError and conformance RuntimeError();
      swift_allocError();
      *v47 = v46;
      swift_willThrow();
    }

    goto LABEL_43;
  }

  v35 = *(v0 + 280);

  v36 = v35[3];
  *(v0 + 40) = type metadata accessor for TrafficIncident(0);
  *(v0 + 48) = &protocol witness table for TrafficIncident;
  __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  swift_storeEnumTagMultiPayload();
  v37 = v35[7];
  v38 = v35[8];
  __swift_project_boxed_opaque_existential_1(v35 + 4, v37);
  v39 = (*(v38 + 80))(v37, v38);
  *(v0 + 424) = v39;
  v40 = *(*v36 + 112);
  v82 = (v40 + *v40);
  v41 = v40[1];
  v42 = swift_task_alloc();
  *(v0 + 432) = v42;
  *v42 = v0;
  v42[1] = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v43 = *(v0 + 376);
  v44 = (v0 + 16);
  v45 = v39;
LABEL_39:

  return v82(v43, v44, v45);
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:)()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;
  *(*v1 + 416) = v0;

  v4 = *(v2 + 400);

  if (v0)
  {
    v5 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v5 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v51 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 216) = 0u;
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v6 = logObject;
  os_log(_:dso:log:_:_:)();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "sendCompletionViewOutputSuccess", v8, 2u);
  }

  v9 = *(v0 + 384);
  v10 = *(v0 + 352);
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 288);
  v14 = *(v0 + 296);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v15 = static os_log_type_t.info.getter();
  v16 = *(v14 + 16);
  v16(v12, v11, v13);
  v17 = os_log_type_enabled(v6, v15);
  v18 = *(v0 + 328);
  if (v17)
  {
    v19 = *(v0 + 320);
    v49 = v15;
    v21 = *(v0 + 288);
    v20 = *(v0 + 296);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136315138;
    v16(v19, v18, v21);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    (*(v20 + 8))(v18, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v50);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_0, v6, v49, "sendCompletionViewOutput dialog final output is: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 328), *(v0 + 288));
  }

  v28 = *(v0 + 384);
  v29 = *(v0 + 392);
  v30 = *(v0 + 360);
  v31 = *(v0 + 368);
  v32 = *(v0 + 352);
  v33 = *(v0 + 336);
  v34 = *(v0 + 288);
  v35 = *(v0 + 296);
  v36 = *(v0 + 264);
  v36[3] = v34;
  v36[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  (*(v35 + 32))(boxed_opaque_existential_0, v33, v34);

  outlined destroy of Mirror.DisplayStyle?(v0 + 216, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v32, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
  (*(v31 + 8))(v28, v30);
  v39 = *(v0 + 376);
  v38 = *(v0 + 384);
  v41 = *(v0 + 344);
  v40 = *(v0 + 352);
  v43 = *(v0 + 328);
  v42 = *(v0 + 336);
  v45 = *(v0 + 312);
  v44 = *(v0 + 320);
  v46 = *(v0 + 304);

  v47 = *(v0 + 8);

  return v47();
}

{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  v4 = *(v2 + 424);

  if (v0)
  {
    v5 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = TrafficIncidentUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v52 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  v3 = v2[7];
  v4 = v2[8];
  __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
  (*(v4 + 32))(v3, v4);
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  *(v0 + 96) = 0u;
  v6 = v0 + 96;
  *(v0 + 128) = 0;
  *(v0 + 112) = 0u;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v7 = logObject;
  os_log(_:dso:log:_:_:)();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "sendCompletionViewOutputSuccess", v9, 2u);
  }

  v10 = *(v0 + 376);
  v11 = *(v0 + 344);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 288);
  v15 = *(v0 + 296);
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v16 = static os_log_type_t.info.getter();
  v17 = *(v15 + 16);
  v17(v13, v12, v14);
  if (os_log_type_enabled(v7, v16))
  {
    v18 = *(v0 + 320);
    v50 = v16;
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = v23;
    *v22 = 136315138;
    v17(v18, v19, v21);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    v27 = v19;
    v6 = v0 + 96;
    (*(v20 + 8))(v27, v21);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v51);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_0, v7, v50, "sendCompletionViewOutput dialog final output is: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  }

  v29 = *(v0 + 392);
  v31 = *(v0 + 368);
  v30 = *(v0 + 376);
  v32 = *(v0 + 360);
  v33 = *(v0 + 344);
  v34 = *(v0 + 312);
  v35 = *(v0 + 288);
  v36 = *(v0 + 296);
  v37 = *(v0 + 264);
  v37[3] = v35;
  v37[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(v36 + 32))(boxed_opaque_existential_0, v34, v35);

  outlined destroy of Mirror.DisplayStyle?(v6, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v33, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v31 + 8))(v30, v32);
  v40 = *(v0 + 376);
  v39 = *(v0 + 384);
  v42 = *(v0 + 344);
  v41 = *(v0 + 352);
  v44 = *(v0 + 328);
  v43 = *(v0 + 336);
  v46 = *(v0 + 312);
  v45 = *(v0 + 320);
  v47 = *(v0 + 304);

  v48 = *(v0 + 8);

  return v48();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 416);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v10 = *(v0 + 304);

  v11 = *(v0 + 8);

  return v11();
}

{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 440);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v10 = *(v0 + 304);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t TrafficIncidentUnsupportedValueStrategy.makeUpdatedIntentForUnsupportedValue(resolveRecord:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMd, &_s11SiriKitFlow25ParameterResolutionRecordVySo22INReportIncidentIntentCGMR);
  v2 = ParameterResolutionRecord.intent.getter();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUnsupportedValueOutput(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeUpdatedIntentForUnsupportedValue(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for HandleFilterProtocolAsync.filterHandles(recipients:) in conformance ContactHandleResolver;

  return v8(a1);
}

uint64_t protocol witness for UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:) in conformance TrafficIncidentUnsupportedValueStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentUnsupportedValueStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return UnsupportedValueFlowStrategyAsync.makeLaunchAppWithIntentOutput(resolveRecord:)(a1, a2, v10, a4);
}

uint64_t static MapsAppProperties.getBundleID(idiom:)(uint64_t a1)
{
  if (a1 == 6)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t *TrafficIncidentUtils.siriSupportedIncidents.unsafeMutableAddressor()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  return &static TrafficIncidentUtils.siriSupportedIncidents;
}

uint64_t static TrafficIncidentUtils.sendCompletionViewOutput(result:snippets:device:listenAfterSpeaking:ttsEnabled:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)@<X0>(uint64_t a1@<X0>, int a2@<W3>, int a3@<W4>, uint64_t *a4@<X8>, uint64_t a5)
{
  v32 = a3;
  v33 = a2;
  v34 = a1;
  v35 = a4;
  v5 = type metadata accessor for AceOutput();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - v11;
  __chkstk_darwin(v10);
  v36 = &v29 - v13;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v31 = a5;
  v14 = logObject;
  os_log(_:dso:log:_:_:)();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v12;
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "sendCompletionViewOutputSuccess", v16, 2u);
    v12 = v29;
  }

  v17 = v36;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v18 = static os_log_type_t.info.getter();
  v19 = *(v6 + 16);
  v19(v12, v17, v5);
  if (os_log_type_enabled(v14, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37 = v21;
    *v20 = 136315138;
    v19(v30, v12, v5);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    (*(v6 + 8))(v12, v5);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v37);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v14, v18, "sendCompletionViewOutput dialog final output is: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  else
  {
    (*(v6 + 8))(v12, v5);
  }

  v26 = v35;
  v35[3] = v5;
  v26[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  return (*(v6 + 32))(boxed_opaque_existential_0, v36, v5);
}

uint64_t one-time initialization function for siriSupportedIncidents()
{
  result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21INTrafficIncidentTypeV_SayAEGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for siriSupportedIncidents);
  static TrafficIncidentUtils.siriSupportedIncidents = result;
  return result;
}

uint64_t static TrafficIncidentUtils.siriSupportedIncidents.getter()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TrafficIncidentUtils.siriSupportedIncidents.setter(uint64_t a1)
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TrafficIncidentUtils.siriSupportedIncidents = a1;
}

uint64_t (*static TrafficIncidentUtils.siriSupportedIncidents.modify())()
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return ShareETAPromptForContactStrategy.catService.modify;
}

uint64_t key path getter for static TrafficIncidentUtils.siriSupportedIncidents : TrafficIncidentUtils.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for siriSupportedIncidents != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static TrafficIncidentUtils.siriSupportedIncidents;
}

uint64_t key path setter for static TrafficIncidentUtils.siriSupportedIncidents : TrafficIncidentUtils.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for siriSupportedIncidents;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static TrafficIncidentUtils.siriSupportedIncidents = v1;
}

uint64_t static TrafficIncidentUtils.convertINTrafficIncidentToLocationSearchValue(incidentType:)(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 1;
  }

  else
  {
    return (0x40103020001uLL >> (8 * a1));
  }
}

uint64_t static TrafficIncidentUtils.sendCompletionViewOutput(result:snippets:device:listenAfterSpeaking:ttsEnabled:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, void (*a8)(char *, char *, uint64_t), uint64_t a9, void (*a10)(uint64_t *), uint64_t a11)
{
  v57 = a7;
  v58 = a8;
  v53 = a4;
  v54 = a6;
  v52 = a5;
  v55 = a3;
  v56 = a2;
  v12 = type metadata accessor for AceOutput();
  v60 = *(v12 - 8);
  v13 = *(v60 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v59 = &v48 - v18;
  __chkstk_darwin(v17);
  v63 = &v48 - v19;
  v20 = type metadata accessor for TemplatingResult();
  v62 = *(v20 - 8);
  v21 = *(v62 + 64);
  __chkstk_darwin(v20);
  v61 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v48 - v25);
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v27 = logObject;
  os_log(_:dso:log:_:_:)();
  outlined init with copy of Result<TemplatingResult, Error>(a1, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v26;
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v64[0] = v28;
    v65 = 1;
    swift_errorRetain();
    a10(v64);
  }

  else
  {
    v50 = a11;
    v51 = a10;
    v29 = v61;
    (*(v62 + 32))(v61, v26, v20);
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v27, v30, "sendCompletionViewOutputSuccess", v31, 2u);
    }

    v49 = v20;
    v32 = v63;
    static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v33 = static os_log_type_t.info.getter();
    v35 = v59;
    v34 = v60;
    v36 = *(v60 + 16);
    v36(v59, v32, v12);
    if (os_log_type_enabled(v27, v33))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v58 = v36;
      v39 = v38;
      v64[0] = v38;
      *v37 = 136315138;
      v58(v16, v35, v12);
      v40 = String.init<A>(describing:)();
      v42 = v41;
      LODWORD(v57) = v33;
      v43 = *(v34 + 8);
      v43(v35, v12);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v64);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_0, v27, v57, "sendCompletionViewOutput dialog final output is: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      v36 = v58;

      v29 = v61;
    }

    else
    {
      v43 = *(v34 + 8);
      v43(v35, v12);
    }

    v64[3] = v12;
    v64[4] = &protocol witness table for AceOutput;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
    v46 = v63;
    v36(boxed_opaque_existential_0, v63, v12);
    v65 = 0;
    v51(v64);
    v43(v46, v12);
    (*(v62 + 8))(v29, v49);
  }

  return outlined destroy of Result<Output, Error>(v64);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for INTrafficIncidentType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo21INTrafficIncidentTypeVGMd, &_ss11_SetStorageCySo21INTrafficIncidentTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(void *a1)
{
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v2 = [a1 type] - 1;
  if (v2 > 4)
  {
    return 0;
  }

  result = *&aAccidenthazard[8 * v2];
  v4 = *&aRoadwork_1[8 * v2 + 8];
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo21INTrafficIncidentTypeV_SayAEGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for INTrafficIncidentType(0);
  lazy protocol witness table accessor for type INTrafficIncidentType and conformance INTrafficIncidentType();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(uint64_t a1)
{
  v2 = (*(*a1 + 232))(a1);
  if (v3)
  {
    if (v2 == 0xD000000000000011 && v3 == 0x80000000000BFD10)
    {
    }

    else
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v2 = (*(*a1 + 184))(v2);
    if (v2 == 9)
    {
      return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
    }
  }

LABEL_10:
  if ((*(*a1 + 160))(v2) == 4)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v6 = (*(*a1 + 184))(v6);
  if (v6 == 9)
  {
    return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
  }

LABEL_15:
  v9 = (*(*a1 + 184))(v6);
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3u:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:3 localizedDisplayString:0];
      case 4u:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:5 localizedDisplayString:0];
      case 9u:
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        v10 = logObject;
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_0, v10, v11, "convertTrafficIncidentTypeFromNLIntent NLIntent incidentType is null", v12, 2u);
        }

        return 0;
      default:
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:0 localizedDisplayString:0];
    }
  }

  else
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:2 localizedDisplayString:0];
      }

      return 0;
    }

    return [objc_allocWithZone(INSupportedTrafficIncidentType) initWithType:1 localizedDisplayString:0];
  }
}

id specialized static TrafficIncidentUtils.makeSiriKitIntentWithUserLocation(locationSearchIntent:userLocation:)(uint64_t a1, id a2)
{
  v4 = specialized static TrafficIncidentUtils.convertIncidentTypeFromNLIntent(locationSearchIntent:)(a1);
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v5 = logObject;
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  if (v7)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 136315138;
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30INSupportedTrafficIncidentTypeCSgMd, &_sSo30INSupportedTrafficIncidentTypeCSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v33);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_0, v5, v6, "makeSiriKitIntentWithUserLocation incidentType is %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v14 = *(*a1 + 168);
  v15 = v14(v7);
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v15) == 0x7065527261656C63 && v16 == 0xEB0000000074726FLL)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v20 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v5, v20);
  if (v19)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v5, v20, "makeSiriKitIntentWithUserLocation isClear=true", v21, 2u);
  }

LABEL_14:
  v22 = v14(v19);
  if (LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(v22) == 0x526D7269666E6F63 && v23 == 0xED000074726F7065)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      v26 = 1;
      if (!a2)
      {
        goto LABEL_26;
      }

LABEL_25:
      a2 = [objc_opt_self() placemarkWithLocation:a2 name:0 postalAddress:0];
      goto LABEL_26;
    }
  }

  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_0, v5, v27, "makeSiriKitIntentWithUserLocation isUpdate=true", v28, 2u);
  }

  v26 = 0;
  if (a2)
  {
    goto LABEL_25;
  }

LABEL_26:
  v29.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  if (v26)
  {
    v30 = 0;
  }

  else
  {
    v30 = String._bridgeToObjectiveC()();
  }

  v31 = [objc_allocWithZone(INReportIncidentIntent) initWithIncidentType:v4 startTime:0 isClear:v29.super.super.isa userLocation:a2 additionalDetails:v30];

  return v31;
}

id specialized static TrafficIncidentUtils.isUpdateIntent(intent:)(void *a1)
{
  v2 = [a1 isClear];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3.super.super.isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  isa = v3.super.super.isa;
  if (v2)
  {
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return &dword_0 + 1;
    }
  }

  else
  {
  }

  result = [a1 additionalDetails];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v8 == 0x657461647075 && v10 == 0xE600000000000000)
    {

      return &dword_0 + 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return (v11 & 1);
    }
  }

  return result;
}

uint64_t outlined destroy of Result<Output, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, _ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type INTrafficIncidentType and conformance INTrafficIncidentType()
{
  result = lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType;
  if (!lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType)
  {
    type metadata accessor for INTrafficIncidentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INTrafficIncidentType and conformance INTrafficIncidentType);
  }

  return result;
}

Swift::String __swiftcall INPerson.getContactInitials()()
{
  v1 = v0;
  v2 = type metadata accessor for PersonNameComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v10 setStyle:4];
  v11 = [v1 nameComponents];
  if (v11)
  {
    v12 = v11;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v14 = [v10 stringFromPersonNameComponents:isa];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    (*(v3 + 8))(v9, v2);
    goto LABEL_22;
  }

  v18 = [v1 displayName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  v17 = 0xE000000000000000;
  if (v22)
  {
    v23 = [v1 displayName];
    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
    }

    v24 = [v10 personNameComponentsFromString:v23];

    if (v24)
    {
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v26 = [v10 stringFromPersonNameComponents:v25];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v27;

      (*(v3 + 8))(v7, v2);
LABEL_22:
      v33 = v15;
      v34 = v17;
      goto LABEL_24;
    }

    v30 = [v1 displayName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v31;
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v42 = v28;
  v43 = v29;
  lazy protocol witness table accessor for type String and conformance String();
  v32 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v42 = 0;
  v43 = 0xE000000000000000;
  v35 = *(v32 + 16);
  if (!v35)
  {
    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v36 = 0;
  v37 = (v32 + 56);
  while (v36 < *(v32 + 16))
  {
    if ((*(v37 - 2) ^ *(v37 - 3)) >= 0x4000)
    {
      v39 = *(v37 - 1);
      v38 = *v37;

      v40._countAndFlagsBits = Substring.subscript.getter();
      String.append(_:)(v40);
    }

    ++v36;
    v37 += 4;
    if (v35 == v36)
    {
      v15 = v42;
      v17 = v43;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

uint64_t GeoContact.init(index:id:displayName:initials:encodeBase64:shareLevel:imageStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  v13 = *(type metadata accessor for GeoContact() + 40);
  v14 = type metadata accessor for ImageElement.ImageStyle();
  v15 = *(*(v14 - 8) + 32);

  return v15(&a9[v13], a12, v14);
}

uint64_t type metadata accessor for GeoContact()
{
  result = type metadata singleton initialization cache for GeoContact;
  if (!type metadata singleton initialization cache for GeoContact)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeoContact.initials.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t GeoContact.encodeBase64.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t GeoContact.imageStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeoContact() + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoContact.imageStyle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GeoContact() + 40);
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GeoContact.image.getter()
{
  v1 = type metadata accessor for ImageElement.ImageStyle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageElement.Contact.Content();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 2);
  if (v10)
  {
    v11 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_B89E0;
    *(v12 + 32) = v11;
    *(v12 + 40) = v10;

    ImageElement.Contact.Avatar.init(contactIds:)();
    v13 = &enum case for ImageElement.Contact.Content.avatar(_:);
  }

  else
  {
    v14 = *(v0 + 6);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *(v0 + 5) & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = *(v0 + 6);

      ImageElement.Contact.Monogram.init(letters:)();
      v13 = &enum case for ImageElement.Contact.Content.monogram(_:);
    }

    else
    {
      ImageElement.Contact.Avatar.init(contactIds:)();
      v13 = &enum case for ImageElement.Contact.Content.avatar(_:);
    }
  }

  (*(v6 + 104))(v9, *v13, v5);
  v17 = type metadata accessor for GeoContact();
  (*(v2 + 16))(v20, &v0[*(v17 + 40)], v1);
  return ImageElement.Contact.init(_:imageStyle:)();
}

uint64_t GeoContact.app.getter()
{
  if ((*(v0 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t AppID.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C7070612E6D6F63;
  }
}

uint64_t GeoContact.supplamentalText.getter()
{
  v1 = 5459283;
  v2 = *(v0 + 72) & 0xFFFFFFFFFFFFFFFELL;
  if (v2 == 2)
  {
    v3 = 0x80000000000BFA00;
  }

  else
  {
    v3 = 0xEE007370614D2E65;
  }

  if (v2 == 2 && 0x80000000000BFA00 == v3)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoContact.CodingKeys()
{
  v1 = *v0;
  v2 = 0x7865646E69;
  v3 = 0x76654C6572616873;
  if (v1 != 5)
  {
    v3 = 0x7974536567616D69;
  }

  v4 = 0x736C616974696E69;
  if (v1 != 3)
  {
    v4 = 0x614265646F636E65;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoContact.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoContact.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoContact.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoContact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v23[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v23[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v15 = v3[4];
    v23[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v23[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[7];
    v19 = v3[8];
    v23[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[9];
    v23[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(type metadata accessor for GeoContact() + 40);
    v23[9] = 6;
    type metadata accessor for ImageElement.ImageStyle();
    lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GeoContact.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  v4 = v0[5];
  v5 = v0[6];
  String.hash(into:)();
  v6 = v0[7];
  v7 = v0[8];
  String.hash(into:)();
  Hasher._combine(_:)(v0[9]);
  v8 = *(type metadata accessor for GeoContact() + 40);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GeoContact.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  v4 = v0[5];
  v5 = v0[6];
  String.hash(into:)();
  v6 = v0[7];
  v7 = v0[8];
  String.hash(into:)();
  Hasher._combine(_:)(v0[9]);
  v8 = *(type metadata accessor for GeoContact() + 40);
  type metadata accessor for ImageElement.ImageStyle();
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t GeoContact.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for ImageElement.ImageStyle();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D7ContactV10CodingKeys33_6F6180F5035D676610853752EA1536D1LLOGMR);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v33);
  v10 = v28 - v9;
  v11 = type metadata accessor for GeoContact();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys();
  v34 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v17 = v7;
  v19 = v31;
  v18 = v32;
  v42 = 0;
  v20 = v33;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 1;
  v14[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14[2] = v21;
  v29 = v21;
  v40 = 2;
  v14[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[4] = v22;
  v28[1] = v22;
  v39 = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v28[0] = 0;
  v14[5] = v23;
  v14[6] = v24;
  v28[2] = v24;
  v38 = 4;
  v14[7] = KeyedDecodingContainer.decode(_:forKey:)();
  v14[8] = v25;
  v37 = 5;
  v14[9] = KeyedDecodingContainer.decode(_:forKey:)();
  v36 = 6;
  lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(&lazy protocol witness table cache variable for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle, &type metadata accessor for ImageElement.ImageStyle);
  v29 = v17;
  v26 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v26, v20);
  (*(v30 + 32))(v14 + *(v11 + 40), v29, v4);
  outlined init with copy of GeoContact(v14, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return outlined destroy of GeoContact(v14);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoContact()
{
  Hasher.init(_seed:)();
  GeoContact.hash(into:)();
  return Hasher._finalize()();
}

GeoFlowDelegatePlugin::AppID_optional __swiftcall AppID.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_AppID_messages;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_AppID_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppID(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v5 = 0xEE007370614D2E65;
  }

  else
  {
    v5 = 0x80000000000BFA00;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v7 = 0x80000000000BFA00;
  }

  else
  {
    v7 = 0xEE007370614D2E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AppID()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppID()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AppID@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AppID.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance AppID(unint64_t *a1@<X8>)
{
  v2 = 0x80000000000BFA00;
  v3 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEE007370614D2E65;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t specialized static GeoContact.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && v4 == v5;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v7 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[7] != a2[7] || a1[8] != a2[8]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[9] != a2[9])
  {
    return 0;
  }

  v8 = *(type metadata accessor for GeoContact() + 40);

  return static ImageElement.ImageStyle.== infix(_:_:)(a1 + v8, a2 + v8);
}

unint64_t lazy protocol witness table accessor for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoContact.CodingKeys and conformance GeoContact.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of GeoContact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeoContact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of GeoContact(uint64_t a1)
{
  v2 = type metadata accessor for GeoContact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ImageElement.ImageStyle and conformance ImageElement.ImageStyle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AppID and conformance AppID()
{
  result = lazy protocol witness table cache variable for type AppID and conformance AppID;
  if (!lazy protocol witness table cache variable for type AppID and conformance AppID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppID and conformance AppID);
  }

  return result;
}

uint64_t sub_6E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageElement.ImageStyle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_6E410(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageElement.ImageStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for GeoContact()
{
  type metadata accessor for String?();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageElement.ImageStyle();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t getEnumTagSinglePayload for GeoContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized GeoContact.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C616974696E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614265646F636E65 && a2 == 0xEC00000034366573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6572616873 && a2 == 0xEA00000000006C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7974536567616D69 && a2 == 0xEA0000000000656CLL)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t RetrieveParkingHandleIntentStrategy.__allocating_init(with:isPommes:)(__int128 *a1, char a2)
{
  v4 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v4 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v4 + 24);
  *(v4 + 64) = a2;
  return v4;
}

uint64_t RetrieveParkingHandleIntentStrategy.init(with:isPommes:)(__int128 *a1, char a2)
{
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  *(v2 + 64) = a2;
  return v2;
}

uint64_t RetrieveParkingHandleIntentStrategy.common.getter()
{
  outlined init with copy of DeviceState(v0 + 24, v4);
  v1 = *(v0 + 64);
  type metadata accessor for ParkingCommon();
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(v4, v2 + 24);
  *(v2 + 64) = v1;
  return v2;
}

uint64_t RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

uint64_t RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:)()
{
  v1 = *(v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo025INRetrieveParkingLocationD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo025INRetrieveParkingLocationD0CSo0ghiD8ResponseCGMR);
  v2 = IntentResolutionRecord.intentResponse.getter();
  v3 = [v2 parkingLocation];
  *(v0 + 240) = v3;

  if (v3)
  {
    v4 = [v3 location];
    *(v0 + 248) = v4;
    if (v4)
    {
      v5 = *(v0 + 224);
      v6 = CLLocation.makeDialogLocation()();
      *(v0 + 256) = v6;
      v7 = IntentResolutionRecord.intentResponse.getter();
      v8 = [v7 parkingNote];

      if (v8)
      {
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      *(v0 + 264) = v11;
      v22 = *(v0 + 224);
      v23 = (*(**(v0 + 232) + 112))();
      *(v0 + 272) = v23;
      *(v0 + 120) = &type metadata for RetrieveParkingLocation;
      *(v0 + 128) = &protocol witness table for RetrieveParkingLocation;
      *(v0 + 96) = v6;
      *(v0 + 104) = v9;
      *(v0 + 112) = v11;

      v24 = IntentResolutionRecord.intentResponse.getter();
      v25 = [v24 parkingNote];

      if (v25)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      *(v0 + 280) = v28;
      v29 = *(*v23 + 112);
      v33 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      *(v0 + 288) = v31;
      *v31 = v0;
      v31[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);

      return v33(v0 + 56, v0 + 96, v3, v26, v28);
    }

    v16 = *(**(v0 + 232) + 128);
    v32 = (v16 + *v16);
    v17 = v16[1];
    v14 = swift_task_alloc();
    *(v0 + 312) = v14;
    *v14 = v0;
    v15 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v12 = *(**(v0 + 232) + 128);
    v32 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v15 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  v14[1] = v15;
  v18 = *(v0 + 224);
  v19 = *(v0 + 232);
  v20 = *(v0 + 216);

  return v32(v20, v18);
}

{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *(*v0 + 280);
  v4 = *(*v0 + 272);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:), 0, 0);
}

{
  v28 = v0;
  v1 = *(v0 + 232);
  v2 = (v0 + 56);
  if (*(v0 + 80))
  {
    outlined init with take of CATType(v2, v0 + 16);
    v3 = static os_log_type_t.default.getter();
    v4 = v1[2];
    outlined init with copy of DeviceState(v0 + 16, v0 + 136);
    v5 = os_log_type_enabled(v4, v3);
    v6 = *(v0 + 256);
    v7 = *(v0 + 264);
    v8 = *(v0 + 240);
    v9 = *(v0 + 248);
    if (v5)
    {
      v25 = *(v0 + 240);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      outlined init with copy of DeviceState(v0 + 136, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
      v12 = String.init<A>(describing:)();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v27);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_0, v4, v3, "buildRFoutput: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {
      v23 = *(v0 + 256);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
    }

    outlined init with take of CATType((v0 + 16), *(v0 + 216));
    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    outlined destroy of Output?(v2);
    v16 = *(*v1 + 128);
    v26 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 296) = v18;
    *v18 = v0;
    v18[1] = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);

    return v26(v21, v19);
  }
}

{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];

  v5 = v0[1];

  return v5();
}

{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  else
  {
    v3 = RetrieveParkingHandleIntentStrategy.makeIntentHandledResponse(rchRecord:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(*v0 + 328);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{

  v1 = *(v0 + 320);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];

  v5 = v0[38];
  v6 = v0[1];

  return v6();
}

uint64_t outlined destroy of Output?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:), 0, 0);
}

uint64_t RetrieveParkingHandleIntentStrategy.makeFailureHandlingIntentResponse(rchRecord:)()
{
  v1 = v0[8];
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  v0[5] = &type metadata for RetrieveParkingLocation;
  v0[6] = &protocol witness table for RetrieveParkingLocation;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = SaveParkingLocationUnsupportedValueStrategy.makeUnsupportedValueOutput(resolveRecord:);
  v5 = v0[7];

  return FlowHelper.makeDialogOnlyOutput(model:)(v5, (v0 + 2), v3, v2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 128);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance RetrieveParkingHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  ParkingHandleIntentStrategy = type metadata accessor for RetrieveParkingHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, ParkingHandleIntentStrategy, a4);
}

unint64_t lazy protocol witness table accessor for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy)
  {
    type metadata accessor for RetrieveParkingHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RetrieveParkingHandleIntentStrategy and conformance RetrieveParkingHandleIntentStrategy);
  }

  return result;
}

unint64_t OntologyNode.javaClassName.getter()
{
  v0 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.first.getter(v0, v1);
  v3 = v2;

  if (v3)
  {
    v4 = Character.uppercased()();
    countAndFlagsBits = v4._countAndFlagsBits;
    object = v4._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  String.append(_:)(v7);

  v8 = dispatch thunk of OntologyNode.name.getter();
  specialized Collection.dropFirst(_:)(1, v8, v9);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  return 0xD000000000000012;
}

unint64_t TerminalNodeBoundedSemanticValue<>.javaValue.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  specialized BidirectionalCollection.dropLast(_:)(5, v0, v1, v2);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v3._countAndFlagsBits = 0x2E65756C61562ELL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v4 = String.uppercased()();

  String.append(_:)(v4);

  return 0xD000000000000012;
}

uint64_t OccupantIntentNode.asContactQuery.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v25 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v25 - v14;
  ContactQuery.init()();
  OccupantIntentNode.fullName.getter();
  ContactQuery.fullName.setter();
  if (ContactQuery.fullName.getter() || v16 != 0xE000000000000000)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  OccupantIntentNode.firstName.getter();
  ContactQuery.givenName.setter();
  OccupantIntentNode.lastName.getter();
  ContactQuery.familyName.setter();
LABEL_6:
  OccupantIntentNode.nickname.getter();
  ContactQuery.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v18 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v15, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    (*(v19 + 8))(v15, v18);
  }

  ContactQuery.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v20 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v11, 1, v20) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v11, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v21 + 8))(v11, v20);
  }

  ContactQuery.nameSuffix.setter();
  OccupantIntentNode.company.getter();
  ContactQuery.organizationName.setter();
  OccupantIntentNode.relationship.getter();
  v22 = type metadata accessor for ContactQuery();
  (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
  ContactRelationshipQuery.init(label:fromContact:)();
  v23 = type metadata accessor for ContactRelationshipQuery();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  return ContactQuery.relationship.setter();
}

uint64_t OccupantIntentNode.displayName.getter()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = OccupantIntentNode.fullName.getter();
  if (!v6)
  {
LABEL_6:
    v8 = OccupantIntentNode.firstName.getter();
    if (!v9)
    {
      return 0;
    }

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v20 = v8;
      v21 = v9;

      v11._countAndFlagsBits = 32;
      v11._object = 0xE100000000000000;
      String.append(_:)(v11);

      v13 = v20;
      v12 = v21;
      v14 = OccupantIntentNode.lastName.getter();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      v20 = v13;
      v21 = v12;

      v18._countAndFlagsBits = v16;
      v18._object = v17;
      String.append(_:)(v18);

      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v19 = StringProtocol.trimmingCharacters(in:)();
      (*(v1 + 8))(v4, v0);

      return v19;
    }

    else
    {

      return 0;
    }
  }

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_6;
  }

  return result;
}

id OccupantIntentNode.asINPerson.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v28 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for PersonNameComponents();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  PersonNameComponents.init()();
  OccupantIntentNode.lastName.getter();
  PersonNameComponents.familyName.setter();
  OccupantIntentNode.firstName.getter();
  PersonNameComponents.givenName.setter();
  OccupantIntentNode.nickname.getter();
  PersonNameComponents.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v17 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v11, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    v29 = v16;
    (*(v18 + 8))(v11, v17);
    v16 = v29;
  }

  PersonNameComponents.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v19 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v7, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v20 + 8))(v7, v19);
  }

  PersonNameComponents.nameSuffix.setter();
  v21 = [objc_allocWithZone(INPersonHandle) initWithValue:0 type:0 label:0];
  (*(v13 + 16))(v3, v16, v12);
  (*(v13 + 56))(v3, 0, 1, v12);
  OccupantIntentNode.displayName.getter();
  v23 = v22;
  isa = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v3, v12);
  }

  if (v23)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_allocWithZone(INPerson) initWithPersonHandle:v21 nameComponents:isa displayName:v25 image:0 contactIdentifier:0 customIdentifier:0];

  (*(v13 + 8))(v16, v12);
  return v26;
}

uint64_t specialized BidirectionalCollection.dropLast(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = String.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      a2 = 15;
    }

    else
    {
      a2 = v6;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t *LocationSearchIntent.confirmationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.confirmationNode;
}

uint64_t *LocationSearchIntent.nounNode.unsafeMutableAddressor()
{
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.nounNode;
}

uint64_t *LocationSearchIntent.verbNode.unsafeMutableAddressor()
{
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.verbNode;
}

uint64_t *LocationSearchIntent.referenceNode.unsafeMutableAddressor()
{
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.referenceNode;
}

uint64_t *LocationSearchIntent.incidentTypeNode.unsafeMutableAddressor()
{
  if (one-time initialization token for incidentTypeNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.incidentTypeNode;
}

uint64_t *LocationSearchIntent.domainNode.unsafeMutableAddressor()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.domainNode;
}

uint64_t LocationSearchIntent.__allocating_init(from:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  *(v5 + v6) = static LocationSearchIntent.domainNode;
  v7 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v8 = v5;
  v9 = type metadata accessor for NLIntent();
  (*(*(v9 - 8) + 32))(v8 + v7, a1, v9);

  return v8;
}

uint64_t LocationSearchIntent.__allocating_init(from:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  LocationSearchIntent.init(from:)(a1);
  return v5;
}

uint64_t LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x796669646F6DLL;
    v6 = 0x6574656C6564;
    if (a1 != 8)
    {
      v6 = 1819042147;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x526D7269666E6F63;
    if (a1 != 5)
    {
      v7 = 1684957542;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7958113;
    v2 = 0x72616853706F7473;
    v3 = 0x74726F706572;
    if (a1 != 3)
    {
      v3 = 0x7065527261656C63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6572616873;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t LocationSearchIntent.LocationSearchNounValue.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7958113;
  v2 = 6386789;
  if (a1 != 6)
  {
    v2 = 0x6574756F72;
  }

  v3 = 0x63696666617274;
  if (a1 != 4)
  {
    v3 = 0x746E656469636E69;
  }

  if (a1 <= 5u)
  {
    v2 = v3;
  }

  v4 = 0x65636E6174736964;
  if (a1 != 2)
  {
    v4 = 0x6F69746365726964;
  }

  if (a1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (a1 > 1u)
  {
    v1 = v4;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t LocationSearchIntent.LocationSearchIncidentTypeValue.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E656469636361;
    v6 = 0x6472617A6168;
    if (a1 != 2)
    {
      v6 = 0x68635F6465657073;
    }

    if (a1)
    {
      v5 = 0x746E656469636E69;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6F6C635F64616F72;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 0x6D656C626F7270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6B726F7764616F72;
    if (a1 != 4)
    {
      v3 = 0x6F6C635F656E616CLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t LocationSearchIntent.LocationSearchConfirmationValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 0x6C65636E6163;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7562617;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7562617;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchConfirmationValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7562617;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchNounValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = *a2;
  v5 = 0xE300000000000000;
  v6 = 6386789;
  if (v2 != 6)
  {
    v6 = 0x6574756F72;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x63696666617274;
  if (v2 != 4)
  {
    v8 = 0x746E656469636E69;
    v7 = 0xE800000000000000;
  }

  if (*a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736964;
  if (v2 != 2)
  {
    v10 = 0x6F69746365726964;
    v9 = 0xEA0000000000736ELL;
  }

  v11 = 0x6E6F697461727564;
  if (*a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v11 = 7958113;
  }

  if (*a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v10 = v11;
  }

  if (*a1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v2 <= 3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v5;
  }

  if (*a2 > 3u)
  {
    if (*a2 > 5u)
    {
      if (v4 == 6)
      {
        v14 = 0xE300000000000000;
        if (v12 != 6386789)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v12 != 0x6574756F72)
        {
LABEL_45:
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (v4 == 4)
    {
      v14 = 0xE700000000000000;
      if (v12 != 0x63696666617274)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x746E656469636E69)
      {
        goto LABEL_45;
      }
    }
  }

  else if (*a2 > 1u)
  {
    if (v4 == 2)
    {
      v14 = 0xE800000000000000;
      if (v12 != 0x65636E6174736964)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v14 = 0xEA0000000000736ELL;
      if (v12 != 0x6F69746365726964)
      {
        goto LABEL_45;
      }
    }
  }

  else if (*a2)
  {
    v14 = 0xE800000000000000;
    if (v12 != 0x6E6F697461727564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v14 = 0xE300000000000000;
    if (v12 != 7958113)
    {
      goto LABEL_45;
    }
  }

  if (v13 != v14)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchNounValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchNounValue()
{
  *v0;
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchNounValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchNounValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchNounValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchNounValue(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7958113;
  v5 = 0xE300000000000000;
  v6 = 6386789;
  if (v2 != 6)
  {
    v6 = 0x6574756F72;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x63696666617274;
  if (v2 != 4)
  {
    v8 = 0x746E656469636E69;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736964;
  if (v2 != 2)
  {
    v10 = 0x6F69746365726964;
    v9 = 0xEA0000000000736ELL;
  }

  if (*v1)
  {
    v4 = 0x6E6F697461727564;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchVerbValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchVerbValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchVerbValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchVerbValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchIncidentTypeValue@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchIncidentTypeValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchIncidentTypeValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t LocationSearchIntent.LocationSearchReferenceValue.rawValue.getter(char a1)
{
  result = 0x746573746F6ELL;
  switch(a1)
  {
    case 1:
      return 0x7473726966;
    case 2:
      return 0x646E6F636573;
    case 3:
      return 0x6472696874;
    case 4:
      return 0x687472756F66;
    case 5:
      return 0x6874666966;
    case 6:
      return 0x6874786973;
    case 7:
      return 0x68746E65766573;
    case 8:
      return 0x687468676965;
    case 9:
      return 0x68746E696ELL;
    case 10:
      return 0x68746E6574;
    case 11:
      return 0x68746E6576656C65;
    case 12:
      return 0x6874666C657774;
    case 13:
      v4 = 1919510644;
      goto LABEL_29;
    case 14:
      v4 = 1920298854;
      goto LABEL_29;
    case 15:
      v3 = 1952868710;
      return v3 | 0x746E656500000000;
    case 16:
      v3 = 1954048371;
      return v3 | 0x746E656500000000;
    case 17:
      return 0x6565746E65766573;
    case 18:
      v4 = 1751607653;
      goto LABEL_29;
    case 19:
      v4 = 1701734766;
LABEL_29:
      result = v4 | 0x6E65657400000000;
      break;
    case 20:
      result = 0x746569746E657774;
      break;
    case 21:
      result = 1953718636;
      break;
    case 22:
      result = 0x656C6464696DLL;
      break;
    case 23:
      result = 1954047342;
      break;
    case 24:
      result = 0x73756F6976657270;
      break;
    case 25:
      result = 0x6F54646E6F636573;
      break;
    case 26:
      result = 0x4C6F546472696874;
      break;
    case 27:
      result = 6647407;
      break;
    case 28:
      result = 2037277037;
      break;
    case 29:
      result = 0x6573656874;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationSearchIntent.LocationSearchVerbValue(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationSearchIntent.LocationSearchVerbValue(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationSearchIntent.LocationSearchReferenceValue@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = specialized LocationSearchIntent.LocationSearchReferenceValue.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LocationSearchIntent.LocationSearchReferenceValue@<X0>(uint64_t *a1@<X8>)
{
  result = LocationSearchIntent.LocationSearchReferenceValue.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for static TerminalNodeValueType.fromIntentNodeValue(_:) in conformance LocationSearchIntent.LocationSearchConfirmationValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4();
  v11 = a5();
  v12 = a6();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v10, v11, v12);
}

uint64_t LocationSearchIntent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v4 = type metadata accessor for NLIntent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t one-time initialization function for confirmationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.confirmationNode = result;
  return result;
}

uint64_t one-time initialization function for nounNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.nounNode = result;
  return result;
}

uint64_t one-time initialization function for verbNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.verbNode = result;
  return result;
}

uint64_t *LocationSearchIntent.appName.unsafeMutableAddressor()
{
  if (one-time initialization token for appName != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.appName;
}

uint64_t one-time initialization function for appName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  *a4 = result;
  return result;
}

uint64_t *LocationSearchIntent.applicationId.unsafeMutableAddressor()
{
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.applicationId;
}

uint64_t one-time initialization function for incidentTypeNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.incidentTypeNode = result;
  return result;
}

uint64_t one-time initialization function for referenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TerminalOntologyNode.init(name:multicardinal:)();
  static LocationSearchIntent.referenceNode = result;
  return result;
}

uint64_t one-time initialization function for destinationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D80;
  v1 = type metadata accessor for AddressOntologyNode();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = AddressOntologyNode.init(name:multicardinal:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v4;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  v5 = static LocalSearchIntent.domainNode;
  *(v0 + 96) = type metadata accessor for DomainOntologyNode();
  *(v0 + 104) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 72) = v5;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.destinationNode = result;
  return result;
}

uint64_t *LocationSearchIntent.destinationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for destinationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.destinationNode;
}

uint64_t one-time initialization function for locationNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B89E0;
  if (one-time initialization token for destinationNode != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.destinationNode;
  v2 = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 56) = v2;
  *(v0 + 64) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 32) = v1;
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.locationNode = result;
  return result;
}

uint64_t *LocationSearchIntent.locationNode.unsafeMutableAddressor()
{
  if (one-time initialization token for locationNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.locationNode;
}

uint64_t one-time initialization function for appNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D80;
  if (one-time initialization token for applicationId != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.applicationId;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 56) = v2;
  v3 = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = one-time initialization token for appName;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static LocationSearchIntent.appName;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = type metadata accessor for NonTerminalOntologyNode();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  result = NonTerminalOntologyNode.init(name:multicardinal:childNodes:)();
  static LocationSearchIntent.appNode = result;
  return result;
}

uint64_t *LocationSearchIntent.appNode.unsafeMutableAddressor()
{
  if (one-time initialization token for appNode != -1)
  {
    swift_once();
  }

  return &static LocationSearchIntent.appNode;
}

uint64_t one-time initialization function for domainNode()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_BD070;
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  v1 = static LocationSearchIntent.nounNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchNounValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9NounValueOGMR);
  *(v0 + 32) = v1;
  v2 = one-time initialization token for verbNode;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static LocationSearchIntent.verbNode;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR);
  *(v0 + 104) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchVerbValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ9VerbValueOGMR);
  *(v0 + 72) = v3;
  v4 = one-time initialization token for incidentTypeNode;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static LocationSearchIntent.incidentTypeNode;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR);
  *(v0 + 144) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchIncidentTypeValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17IncidentTypeValueOGMR);
  *(v0 + 112) = v5;
  v6 = one-time initialization token for confirmationNode;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static LocationSearchIntent.confirmationNode;
  *(v0 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR);
  *(v0 + 184) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchConfirmationValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ17ConfirmationValueOGMR);
  *(v0 + 152) = v7;
  v8 = one-time initialization token for locationNode;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = static LocationSearchIntent.locationNode;
  v10 = type metadata accessor for NonTerminalOntologyNode();
  *(v0 + 216) = v10;
  *(v0 + 224) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 192) = v9;
  v11 = one-time initialization token for referenceNode;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = static LocationSearchIntent.referenceNode;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR);
  *(v0 + 264) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<LocationSearchIntent.LocationSearchReferenceValue> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMd, &_s12SiriOntology08TerminalB4NodeCy21GeoFlowDelegatePlugin20LocationSearchIntentC0iJ14ReferenceValueOGMR);
  *(v0 + 232) = v12;
  v13 = one-time initialization token for appNode;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static LocationSearchIntent.appNode;
  *(v0 + 296) = v10;
  *(v0 + 304) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 272) = v14;
  v15 = type metadata accessor for DomainOntologyNode();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static LocationSearchIntent.domainNode = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology0E4Node_pGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B89E0;
  if (one-time initialization token for categoryNode != -1)
  {
    swift_once();
  }

  v1 = static LocalSearchIntent.categoryNode;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 64) = lazy protocol witness table accessor for type PromptForDisambiguationFlowAsync<INPerson, INPerson> and conformance PromptForDisambiguationFlowAsync<A, B>(&lazy protocol witness table cache variable for type TerminalOntologyNode<String> and conformance TerminalOntologyNode<A>, &_s12SiriOntology08TerminalB4NodeCySSGMd, &_s12SiriOntology08TerminalB4NodeCySSGMR);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for DomainOntologyNode();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  result = DomainOntologyNode.init(name:childNodes:isInEventTree:)();
  static LocalSearchIntent.domainNode = result;
  return result;
}

uint64_t LocationSearchIntent.init(from:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v1 + v3) = static LocationSearchIntent.domainNode;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);

  return v1;
}

uint64_t LocationSearchIntent.init(from:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for NLIntent();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v31);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v2 + v17) = static LocationSearchIntent.domainNode;

  v18 = PommesResponse.firstGeoExperience.getter();
  if (v18)
  {
    v19 = v18;
    v28 = a1;
    GeoExperience.geoClientComponent.getter();
    v20 = Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter();
    v21 = *(v9 + 8);
    v21(v12, v8);
    if (v20)
    {
      GeoExperience.geoClientComponent.getter();
      Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
      v21(v12, v8);
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v22 = *LocationSearchIntentBuilder.init()();
      v23 = (*(v22 + 376))(v7);

      (*(*v23 + 456))(v24);

      (*(v29 + 8))(v7, v30);
    }

    else
    {
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v26 = *LocationSearchIntentBuilder.init()();
      (*(v26 + 456))();
    }
  }

  else
  {
    type metadata accessor for LocationSearchIntentBuilder();
    swift_allocObject();
    v25 = *LocationSearchIntentBuilder.init()();
    (*(v25 + 456))();
  }

  (*(v13 + 32))(v2 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v16, v31);
  return v2;
}

uint64_t LocationSearchIntent.domainOntologyNode.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t LocationSearchIntent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t LocationSearchIntent.domainName.getter()
{
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  return NonTerminalOntologyNode.name.getter();
}

uint64_t LocationSearchIntent.noun.getter()
{
  if (one-time initialization token for nounNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.verb.getter()
{
  if (one-time initialization token for verbNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 10)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.reference.getter()
{
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  if (v1 == 30)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t LocationSearchIntent.confirmation.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v5;
}

uint64_t LocationSearchIntent.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for NonTerminalIntentNode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v24 = v1;
  v15 = type metadata accessor for AddressOntologyNode();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  AddressOntologyNode.init(name:multicardinal:)();
  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v6);
    v18 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    v19 = *(v15 + 48);
    v20 = *(v15 + 52);
    swift_allocObject();
    AddressOntologyNode.init(name:multicardinal:)();
    AddressIntentNode.init(intentNode:ontologyNode:)();
    (*(v8 + 8))(v14, v7);
    v18 = 0;
  }

  v21 = type metadata accessor for AddressIntentNode();
  return (*(*(v21 - 8) + 56))(a1, v18, 1, v21);
}

uint64_t LocationSearchIntent.occupant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for NonTerminalIntentNode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v24 = v1;
  v15 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.intentNode(forOntologyNode:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NonTerminalIntentNode?(v6);
    v18 = 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v12, v14, v7);
    v19 = *(v15 + 48);
    v20 = *(v15 + 52);
    swift_allocObject();
    AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
    OccupantIntentNode.init(intentNode:ontologyNode:)();
    (*(v8 + 8))(v14, v7);
    v18 = 0;
  }

  v21 = type metadata accessor for OccupantIntentNode();
  return (*(*(v21 - 8) + 56))(a1, v18, 1, v21);
}

uint64_t LocationSearchIntent.personPlaceId.getter(void (*a1)(void), void (*a2)(void))
{
  a1(0);
  a2();
  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();

  return v4;
}

uint64_t LocationSearchIntent.appName.getter(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  type metadata accessor for LocationSearchIntent();
  _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  IntentNodeTraversable.value<A>(forNode:)();
  return v5;
}

uint64_t LocationSearchIntent.getSiriKitConfirmationState()@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*v1 + 152))();
  v4 = type metadata accessor for SiriKitConfirmationState();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_E2EB8 + v3);

  return v5(a1, v6, v4);
}

uint64_t LocationSearchIntent.deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode);

  return v0;
}

uint64_t LocationSearchIntent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v2 = type metadata accessor for NLIntent();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for NLIntentWrapper.intent.getter in conformance LocationSearchIntent@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent;
  v5 = type metadata accessor for NLIntent();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t protocol witness for IntentNodeTraversable.traversableIntentNode.getter in conformance LocationSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableIntentNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for IntentNodeTraversable.traversableOntologyNode.getter in conformance LocationSearchIntent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return NLIntentWrapper.traversableOntologyNode.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LocationSearchIntent()
{
  swift_getWitnessTable();

  return NLIntentWrapper.description.getter();
}

unint64_t specialized LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchConfirmationValue.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchNounValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchNounValue.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchVerbValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchVerbValue.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LocationSearchIntent.LocationSearchIncidentTypeValue.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized LocationSearchIntent.LocationSearchReferenceValue.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for LocationSearchIntent()
{
  result = type metadata singleton initialization cache for LocationSearchIntent;
  if (!type metadata singleton initialization cache for LocationSearchIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of NonTerminalIntentNode?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchConfirmationValue and conformance LocationSearchIntent.LocationSearchConfirmationValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchNounValue and conformance LocationSearchIntent.LocationSearchNounValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchVerbValue and conformance LocationSearchIntent.LocationSearchVerbValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchIncidentTypeValue and conformance LocationSearchIntent.LocationSearchIncidentTypeValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent.LocationSearchReferenceValue and conformance LocationSearchIntent.LocationSearchReferenceValue);
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentCAC12SiriOntology0G15NodeTraversableAAWlTm_1(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationSearchIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_75898@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_758E4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t type metadata completion function for LocationSearchIntent()
{
  result = type metadata accessor for NLIntent();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchNounValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchNounValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchVerbValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchVerbValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchIncidentTypeValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchIncidentTypeValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationSearchIntent.LocationSearchReferenceValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationSearchIntent.LocationSearchReferenceValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t GeoDirectInvocations.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000002CLL;
  v2 = 0xD000000000000033;
  if (a1 != 2)
  {
    v2 = 0xD00000000000002CLL;
  }

  if (a1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoDirectInvocations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = GeoDirectInvocations.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == GeoDirectInvocations.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDirectInvocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  GeoDirectInvocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoDirectInvocations()
{
  GeoDirectInvocations.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDirectInvocations()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  GeoDirectInvocations.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeoDirectInvocations@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GeoDirectInvocations.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GeoDirectInvocations@<X0>(unint64_t *a1@<X8>)
{
  result = GeoDirectInvocations.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t GeoFlowDelegatePlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  GeoFlowDelegatePlugin.init()();
  return v0;
}

uint64_t GeoFlowDelegatePlugin.init()()
{
  v1 = v0;
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  static Device.current.getter();
  v12 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v13 = &protocol witness table for GeoRCHFlowFactoryImpl;
  v11 = swift_allocObject();
  v14 = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v2 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  *(v2 + 24) = [v4 bundleForClass:ObjCClassFromMetadata];
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = 0;
  v15 = v2;
  type metadata accessor for FlowSelector();
  v5 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(v10, v9);
  v6 = specialized FlowSelector.init(with:)(v9, v5);
  outlined destroy of FlowHelperImpl(v10);
  *(v1 + 24) = v6;
  type metadata accessor for CATExecutor();
  type metadata accessor for GeoFlowDelegatePlugin();
  v7 = [v4 bundleForClass:swift_getObjCClassFromMetadata()];
  static CATExecutor.registerBundle(bundle:)();

  return v1;
}

uint64_t GeoFlowDelegatePlugin.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  *(v2 + 24) = a1;
  return v2;
}

uint64_t GeoFlowDelegatePlugin.init(with:)(uint64_t a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  *(v1 + 24) = a1;
  return v1;
}

uint64_t GeoFlowDelegatePlugin.findFlowForX(parse:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v346 = a1;
  v340 = a2;
  v3 = type metadata accessor for USOParse();
  v324 = *(v3 - 8);
  v325 = v3;
  v4 = *(v324 + 64);
  __chkstk_darwin(v3);
  v328 = &v312 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NLIntent();
  v7 = *(v6 - 8);
  v343 = v6;
  v344 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v331 = &v312 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v339 = &v312 - v12;
  v13 = __chkstk_darwin(v11);
  v313 = &v312 - v14;
  v15 = __chkstk_darwin(v13);
  v314 = &v312 - v16;
  v17 = __chkstk_darwin(v15);
  v317 = &v312 - v18;
  __chkstk_darwin(v17);
  v323 = &v312 - v19;
  v334 = type metadata accessor for Parse.DirectInvocation();
  v332 = *(v334 - 8);
  v20 = *(v332 + 64);
  v21 = __chkstk_darwin(v334);
  v315 = &v312 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v316 = &v312 - v24;
  v25 = __chkstk_darwin(v23);
  v327 = &v312 - v26;
  __chkstk_darwin(v25);
  v330 = &v312 - v27;
  v28 = type metadata accessor for Parse();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v322 = &v312 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v319 = &v312 - v34;
  v35 = __chkstk_darwin(v33);
  v318 = &v312 - v36;
  v37 = __chkstk_darwin(v35);
  v320 = &v312 - v38;
  v39 = __chkstk_darwin(v37);
  v326 = (&v312 - v40);
  v41 = __chkstk_darwin(v39);
  v338 = &v312 - v42;
  v43 = __chkstk_darwin(v41);
  v337 = &v312 - v44;
  v45 = __chkstk_darwin(v43);
  v333 = &v312 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v312 - v48;
  v50 = __chkstk_darwin(v47);
  v52 = &v312 - v51;
  __chkstk_darwin(v50);
  v54 = &v312 - v53;
  v55 = static os_log_type_t.info.getter();
  v56 = *(v2 + 16);
  v57 = v29;
  v59 = *(v29 + 16);
  v58 = (v29 + 16);
  v347 = v28;
  v342 = v59;
  (v59)(v54, v346, v28);
  v336 = v55;
  v60 = os_log_type_enabled(v56, v55);
  v345 = v56;
  v321 = v52;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v329 = v2;
    v62 = v61;
    v63 = swift_slowAlloc();
    v335 = v49;
    v341 = v57;
    v64 = v63;
    v349[0] = v63;
    *v62 = 136315138;
    v65 = v347;
    v66 = v342;
    (v342)(v52, v54, v347);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    v70 = *(v341 + 8);
    v70(v54, v65);
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v349);

    *(v62 + 4) = v71;
    v72 = v70;
    _os_log_impl(&dword_0, v345, v336, "findFlowForX -- parse type: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    v73 = v341;
    v74 = v335;

    v75 = v329;
  }

  else
  {
    v76 = v54;
    v72 = *(v57 + 8);
    (v72)(v76, v347);
    v73 = v57;
    v74 = v49;
    v75 = v2;
    v66 = v342;
  }

  v77 = v347;
  v66(v74, v346, v347);
  v78 = (*(v73 + 88))(v74, v77);
  v79 = v344;
  if (v78 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v80 = v72;
    v81 = v337;
    v82 = v347;
    v66(v337, v74, v347);
    (*(v73 + 96))(v81, v82);
    v83 = v339;
    v84 = v343;
    v85 = v79[4](v339, v81, v343);
    v86 = (*(*v75 + 96))(v85);
    v87 = (*(*v86 + 112))(v83);

    if (v87)
    {
      static FlowSearchResult.flow(_:)();

      (v79[1])(v83, v84);
      return v80(v74, v347);
    }

    v338 = v80;
    v335 = v74;
    v341 = v73;
    v108 = static os_log_type_t.error.getter();
    v109 = v331;
    v79[2](v331, v83, v84);
    v110 = v84;
    if (os_log_type_enabled(v345, v108))
    {
      v111 = swift_slowAlloc();
      v112 = v79;
      v113 = swift_slowAlloc();
      v349[0] = v113;
      *v111 = 136315138;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent);
      v114 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v115;
      v117 = v112[1];
      (v117)(v109, v343);
      v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, v349);

      *(v111 + 4) = v118;
      _os_log_impl(&dword_0, v345, v108, "findFlowForX - flow should not be nil here, received nl intent %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v113);
      v83 = v339;

      v110 = v343;
    }

    else
    {
      v117 = v79[1];
      (v117)(v109, v84);
    }

    type metadata accessor for UnsupportedRequestFlow();
    v152 = swift_allocObject();
    type metadata accessor for OS_os_log();
    *(v152 + 16) = OS_os_log.init(subsystem:category:)();
    v349[0] = v152;
    _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
    Flow.eraseToAnyFlow()();

    static FlowSearchResult.flow(_:)();

    (v117)(v83, v110);
    return (v338)(v335, v347);
  }

  if (v78 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v89 = v338;
    v90 = v74;
    v91 = v347;
    v66(v338, v74, v347);
    (*(v73 + 96))(v89, v91);
    v92 = *&v89[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];
    v93 = static os_log_type_t.default.getter();
    v94 = v345;
    if (os_log_type_enabled(v345, v93))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v94, v93, "findFlowForX - NLv3PlusServerConversion", v95, 2u);
    }

    v96 = Parse.ServerConversion.siriKitIntent.getter();
    objc_opt_self();
    v97 = swift_dynamicCastObjCClass();

    if (v97)
    {
      if (one-time initialization token for instance != -1)
      {
        swift_once();
      }

      Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v98 = swift_dynamicCastObjCClassUnconditional();
      outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v349);
      v349[0] = _s21GeoFlowDelegatePlugin027RetrieveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So010INRetrievefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v349, v98);
      type metadata accessor for RetrieveParkingLocationBaseFlow(0);
      v99 = &lazy protocol witness table cache variable for type RetrieveParkingLocationBaseFlow and conformance RetrieveParkingLocationBaseFlow;
      v100 = type metadata accessor for RetrieveParkingLocationBaseFlow;
    }

    else
    {
      v149 = Parse.ServerConversion.siriKitIntent.getter();
      objc_opt_self();
      v150 = swift_dynamicCastObjCClass();

      if (v150)
      {
        if (one-time initialization token for instance != -1)
        {
          swift_once();
        }

        Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v151 = swift_dynamicCastObjCClassUnconditional();
        outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v349);
        v349[0] = _s21GeoFlowDelegatePlugin025DeleteParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So08INDeletefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v349, v151);
        type metadata accessor for DeleteParkingLocationBaseFlow(0);
        v99 = &lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow;
        v100 = type metadata accessor for DeleteParkingLocationBaseFlow;
      }

      else
      {
        v175 = Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v176 = swift_dynamicCastObjCClass();

        if (!v176)
        {
          v205 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v94, v205))
          {
            v206 = swift_slowAlloc();
            v342 = v206;
            v346 = swift_slowAlloc();
            v349[0] = v346;
            *v206 = 136315138;
            *&v348[0] = v92;
            type metadata accessor for Parse.ServerConversion();

            v207 = String.init<A>(describing:)();
            v209 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v207, v208, v349);

            v210 = v342;
            *(v342 + 1) = v209;
            v90 = v74;
            _os_log_impl(&dword_0, v94, v205, "findFlowForX - flow should not be nil here, received serverConversion %s", v210, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v346);
          }

          type metadata accessor for UnsupportedRequestFlow();
          v211 = swift_allocObject();
          type metadata accessor for OS_os_log();
          *(v211 + 16) = OS_os_log.init(subsystem:category:)();
          v349[0] = v211;
          _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
          Flow.eraseToAnyFlow()();
          goto LABEL_47;
        }

        if (one-time initialization token for instance != -1)
        {
          swift_once();
        }

        Parse.ServerConversion.siriKitIntent.getter();
        objc_opt_self();
        v177 = swift_dynamicCastObjCClassUnconditional();
        outlined init with copy of FlowHelperImpl(static FlowHelperImpl.instance, v349);
        v349[0] = _s21GeoFlowDelegatePlugin023SaveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So06INSavefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(v349, v177);
        type metadata accessor for SaveParkingLocationBaseFlow(0);
        v99 = &lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow;
        v100 = type metadata accessor for SaveParkingLocationBaseFlow;
      }
    }

    _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(v99, 255, v100);
    Flow.eraseToAnyFlow()();
LABEL_47:

    static FlowSearchResult.flow(_:)();

    (*(v344 + 1))(v338, v343);
    v74 = v90;
    return (v72)(v74, v347);
  }

  if (v78 != enum case for Parse.directInvocation(_:))
  {
    if (v78 == enum case for Parse.pommesResponse(_:))
    {
      v338 = v72;
      v119 = v326;
      v120 = v347;
      v66(v326, v74, v347);
      (*(v73 + 96))(v119, v120);
      v121 = *v119;
      v122 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v345, v122))
      {
        v123 = swift_slowAlloc();
        v344 = v123;
        v346 = swift_slowAlloc();
        v349[0] = v346;
        *v123 = 136315138;
        v124 = v121;
        v125 = v75;
        v126 = v73;
        v127 = v121;
        v128 = [v124 description];
        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v131 = v130;

        v121 = v127;
        v73 = v126;
        v75 = v125;
        v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v349);

        v134 = v344;
        v133 = v345;
        *(v344 + 1) = v132;
        _os_log_impl(&dword_0, v133, v122, "findFlowForX - received POMMES input %s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v346);
      }

      memset(v349, 0, sizeof(v349));
      static CurareDonation.donateCurareResponseUsedMarker(from:into:)();
      v135 = outlined destroy of CurareInteractionStream?(v349);
      v136 = (*(*v75 + 96))(v135);
      v137 = (*(*v136 + 120))(v121);

      if (!v137)
      {
        static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)();
        type metadata accessor for UnsupportedRequestFlow();
        v181 = v74;
        v182 = swift_allocObject();
        type metadata accessor for OS_os_log();
        *(v182 + 16) = OS_os_log.init(subsystem:category:)();
        v349[0] = v182;
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        return (v338)(v181, v347);
      }

      v138 = static os_log_type_t.default.getter();
      v139 = v345;
      v140 = os_log_type_enabled(v345, v138);
      v72 = v338;
      if (v140)
      {
        v141 = v74;
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v341 = v73;
        v144 = v121;
        v145 = v143;
        v349[0] = v143;
        *v142 = 136315138;
        *&v348[0] = v137;
        type metadata accessor for AnyFlow();
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type AnyFlow and conformance AnyFlow, 255, &type metadata accessor for AnyFlow);
        v146 = dispatch thunk of CustomStringConvertible.description.getter();
        v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v349);

        *(v142 + 4) = v148;
        _os_log_impl(&dword_0, v139, v138, "POMMES flow: %s", v142, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v145);
        v121 = v144;
        v72 = v338;

        v74 = v141;
      }

      static FlowSearchResult.flow(_:)();

      goto LABEL_102;
    }

    if (v78 != enum case for Parse.uso(_:))
    {
LABEL_98:
      v297 = static os_log_type_t.error.getter();
      v298 = v322;
      v66(v322, v346, v347);
      if (os_log_type_enabled(v345, v297))
      {
        v299 = swift_slowAlloc();
        v300 = swift_slowAlloc();
        LODWORD(v346) = v297;
        v301 = v298;
        v302 = v347;
        v303 = v300;
        v349[0] = v300;
        *v299 = 136315138;
        v304 = v74;
        v66(v321, v301, v302);
        v305 = String.init<A>(describing:)();
        v307 = v306;
        (v72)(v301, v302);
        v308 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v305, v307, v349);

        *(v299 + 4) = v308;
        v74 = v304;
        _os_log_impl(&dword_0, v345, v346, "findFlowForX - flow should not be nil here, received parse %s", v299, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v303);
      }

      else
      {
        (v72)(v298, v347);
      }

      type metadata accessor for UnsupportedRequestFlow();
      v309 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v309 + 16) = OS_os_log.init(subsystem:category:)();
      v349[0] = v309;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();
LABEL_102:

      return (v72)(v74, v347);
    }

    v162 = v320;
    v335 = v74;
    v163 = v347;
    v66(v320, v74, v347);
    (*(v73 + 96))(v162, v163);
    v165 = v324;
    v164 = v325;
    (*(v324 + 32))(v328, v162, v325);
    if (specialized static GeoParse.getUsoTask(usoParse:)())
    {
      v166 = UsoTask.getGeoTaskType()();

      if (v166 <= GeoFlowDelegatePlugin_OnDeviceExperience_endNavigation)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        static Device.current.getter();
        v242 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v243 = swift_allocObject();
        v352 = &protocol witness table for GeoRCHFlowFactoryImpl;
        v351 = v242;
        v350 = v243;
        v353 = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        if (v166)
        {
          v262 = swift_allocObject();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          *(v262 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          type metadata accessor for OS_os_log();
          *(v262 + 32) = OS_os_log.init(subsystem:category:)();
          *(v262 + 16) = 0;
          v354 = v262;
          type metadata accessor for EndNavigationFlow();
          v264 = swift_allocObject();
          outlined init with copy of FlowHelperImpl(v349, v348);
          v265 = specialized EndNavigationFlow.init(with:checkNavigation:)(v348, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties, v264);
          outlined destroy of FlowHelperImpl(v349);
          v349[0] = v265;
          v173 = &lazy protocol witness table cache variable for type EndNavigationFlow and conformance EndNavigationFlow;
          v174 = type metadata accessor for EndNavigationFlow;
        }

        else
        {
          v244 = swift_allocObject();
          v245 = swift_getObjCClassFromMetadata();
          *(v244 + 24) = [objc_opt_self() bundleForClass:v245];
          type metadata accessor for OS_os_log();
          *(v244 + 32) = OS_os_log.init(subsystem:category:)();
          *(v244 + 16) = 0;
          v354 = v244;
          type metadata accessor for AnswerETAFlow();
          v246 = swift_allocObject();
          outlined init with copy of FlowHelperImpl(v349, v348);
          v247 = specialized AnswerETAFlow.init(with:checkNavigation:)(v348, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties, v246);
          outlined destroy of FlowHelperImpl(v349);
          v349[0] = v247;
          v173 = &lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow;
          v174 = type metadata accessor for AnswerETAFlow;
        }

        goto LABEL_80;
      }

      if (v166 == GeoFlowDelegatePlugin_OnDeviceExperience_answerAltitude)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        static Device.current.getter();
        v256 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v257 = swift_allocObject();
        v352 = &protocol witness table for GeoRCHFlowFactoryImpl;
        v351 = v256;
        v350 = v257;
        v353 = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v258 = swift_allocObject();
        v259 = swift_getObjCClassFromMetadata();
        *(v258 + 24) = [objc_opt_self() bundleForClass:v259];
        type metadata accessor for OS_os_log();
        *(v258 + 32) = OS_os_log.init(subsystem:category:)();
        *(v258 + 16) = 0;
        v354 = v258;
        type metadata accessor for AnswerAltitudeFlow();
        v260 = swift_allocObject();
        outlined init with copy of FlowHelperImpl(v349, v348);
        v261 = specialized AnswerAltitudeFlow.init(with:)(v348, v260);
        outlined destroy of FlowHelperImpl(v349);
        v349[0] = v261;
        v173 = &lazy protocol witness table cache variable for type AnswerAltitudeFlow and conformance AnswerAltitudeFlow;
        v174 = type metadata accessor for AnswerAltitudeFlow;
        goto LABEL_80;
      }

      if (v166 == GeoFlowDelegatePlugin_OnDeviceExperience_whereAmI)
      {
        static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)();
        static Device.current.getter();
        v167 = type metadata accessor for GeoRCHFlowFactoryImpl();
        v168 = swift_allocObject();
        v352 = &protocol witness table for GeoRCHFlowFactoryImpl;
        v351 = v167;
        v350 = v168;
        v353 = static DialogHelper.globals.getter();
        static AceService.currentAsync.getter();
        static OutputPublisherFactory.makeOutputPublisherAsync()();
        type metadata accessor for CATService();
        v169 = swift_allocObject();
        v170 = swift_getObjCClassFromMetadata();
        *(v169 + 24) = [objc_opt_self() bundleForClass:v170];
        type metadata accessor for OS_os_log();
        *(v169 + 32) = OS_os_log.init(subsystem:category:)();
        *(v169 + 16) = 0;
        v354 = v169;
        type metadata accessor for WhereAmIFlow();
        v171 = swift_allocObject();
        outlined init with copy of FlowHelperImpl(v349, v348);
        v172 = specialized WhereAmIFlow.init(with:)(v348, v171);
        outlined destroy of FlowHelperImpl(v349);
        v349[0] = v172;
        v173 = &lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow;
        v174 = type metadata accessor for WhereAmIFlow;
LABEL_80:
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(v173, 255, v174);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        (*(v165 + 8))(v328, v164);
        v74 = v335;
        return (v72)(v74, v347);
      }
    }

    v338 = v72;
    v341 = v73;
    v193 = static os_log_type_t.default.getter();
    v194 = v318;
    v195 = v342;
    (v342)(v318, v346, v347);
    v196 = v345;
    if (os_log_type_enabled(v345, v193))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v349[0] = v198;
      *v197 = 136315138;
      v199 = v347;
      (v342)(v321, v194, v347);
      v200 = String.init<A>(describing:)();
      v201 = v194;
      v203 = v202;
      (v338)(v201, v199);
      v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v200, v203, v349);

      *(v197 + 4) = v204;
      v195 = v342;
      _os_log_impl(&dword_0, v196, v193, "uso parse does not conform to any geo experiences:  %s", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v198);
    }

    else
    {
      (v338)(v194, v347);
    }

    v228 = v319;
    v229 = static os_log_type_t.default.getter();
    v195(v228, v346, v347);
    if (os_log_type_enabled(v196, v229))
    {
      v230 = swift_slowAlloc();
      v231 = swift_slowAlloc();
      v232 = v347;
      v233 = v231;
      v349[0] = v231;
      *v230 = 136315138;
      v195(v321, v228, v232);
      v234 = String.init<A>(describing:)();
      v236 = v235;
      v237 = v228;
      v72 = v338;
      (v338)(v237, v232);
      v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v234, v236, v349);

      *(v230 + 4) = v238;
      _os_log_impl(&dword_0, v196, v229, "findFlowForX - not available %s", v230, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v233);
    }

    else
    {
      v239 = v228;
      v72 = v338;
      (v338)(v239, v347);
    }

    v241 = v324;
    v240 = v325;
    v74 = v335;
    static FlowSearchResult.noFlow.getter();
    (*(v241 + 8))(v328, v240);
    return (v72)(v74, v347);
  }

  v101 = v66;
  v102 = v333;
  v103 = v74;
  v104 = v347;
  v339 = v58;
  v101(v333);
  (*(v73 + 96))(v102, v104);
  v105 = *(v332 + 16);
  v106 = v330;
  v105(v330, v102, v334);
  if (Parse.DirectInvocation.identifier.getter() != 0xD00000000000002CLL || 0x80000000000BFCA0 != v107)
  {
    v329 = v75;
    v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v153)
    {
      goto LABEL_35;
    }

    v338 = v72;
    v341 = v73;
    v178 = *(v332 + 8);
    v179 = v334;
    (v178)(v106, v334);
    v105(v327, v333, v179);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v180)
    {

LABEL_53:
      type metadata accessor for LocationSearchIntentBuilder();
      swift_allocObject();
      v184 = *LocationSearchIntentBuilder.init()();
      v185 = (*(v184 + 392))(1);

      v186 = (*(*v185 + 384))(6);

      v188 = v323;
      (*(*v186 + 456))(v187);

      v190 = (*(*v329 + 96))(v189);
      v191 = (*(*v190 + 112))(v188);

      if (v191)
      {
        static FlowSearchResult.flow(_:)();

        (*(v344 + 1))(v188, v343);
        v192 = v327;
LABEL_76:
        v253 = v334;
        (v178)(v192, v334);
        v254 = v333;
        v255 = v253;
LABEL_77:
        (v178)(v254, v255);
        return (v338)(v103, v347);
      }

      v346 = v178;
      v335 = v74;
      v212 = static os_log_type_t.error.getter();
      v213 = v343;
      v214 = v344;
      v215 = v317;
      (*(v344 + 2))(v317, v188, v343);
      v216 = v345;
      if (os_log_type_enabled(v345, v212))
      {
        v217 = swift_slowAlloc();
        v218 = swift_slowAlloc();
        v349[0] = v218;
        *v217 = 136315138;
        _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent);
        v219 = dispatch thunk of CustomStringConvertible.description.getter();
        v220 = v214;
        v222 = v221;
        v223 = *(v220 + 1);
        v223(v215, v343);
        v224 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v219, v222, v349);

        *(v217 + 4) = v224;
        _os_log_impl(&dword_0, v216, v212, "findFlowForX - flow should not be nil here, received nl intent %s", v217, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v218);
        v213 = v343;
      }

      else
      {
        v223 = *(v214 + 1);
        v223(v215, v213);
      }

      type metadata accessor for UnsupportedRequestFlow();
      v248 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v248 + 16) = OS_os_log.init(subsystem:category:)();
      v349[0] = v248;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();

      v223(v323, v213);
      v249 = v334;
      v250 = v346;
      (v346)(v327, v334);
      (v250)(v333, v249);
      return (v338)(v335, v347);
    }

    v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v183)
    {
      goto LABEL_53;
    }

    v225 = v334;
    (v178)(v327, v334);
    v226 = v316;
    v105(v316, v333, v225);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002ALL && 0x80000000000BFC30 == v227)
    {

LABEL_75:
      type metadata accessor for RedirectToServerFlow();
      v252 = swift_allocObject();
      type metadata accessor for OS_os_log();
      *(v252 + 16) = OS_os_log.init(subsystem:category:)();
      v349[0] = v252;
      _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, 255, type metadata accessor for RedirectToServerFlow);
      Flow.eraseToAnyFlow()();

      static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)();
      static FlowSearchResult.flow(_:)();

      v192 = v226;
      goto LABEL_76;
    }

    v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v251)
    {
      goto LABEL_75;
    }

    v266 = v334;
    (v178)(v226, v334);
    (*(v332 + 32))(v315, v333, v266);
    if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000033 && 0x80000000000BFC60 == v267)
    {

      v268 = v343;
      v269 = v344;
      goto LABEL_85;
    }

    v270 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v268 = v343;
    v269 = v344;
    if (v270)
    {
LABEL_85:
      v271 = Parse.DirectInvocation.userData.getter();
      if (v271)
      {
        v272 = v271;
        if (*(v271 + 16) && (v273 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E656469636E49, 0xEC00000065707954), (v274 & 1) != 0))
        {
          outlined init with copy of Any(*(v272 + 56) + 32 * v273, v349);

          if ((swift_dynamicCast() & 1) != 0 && *&v348[0] <= 5uLL)
          {
            v275 = 0x40103020001uLL >> (8 * LOBYTE(v348[0]));
LABEL_93:
            type metadata accessor for LocationSearchIntentBuilder();
            swift_allocObject();
            v276 = *LocationSearchIntentBuilder.init()();
            v277 = (*(v276 + 392))(3);

            v278 = (*(*v277 + 384))(5);

            v279 = (*(*v278 + 400))(v275);

            v281 = v314;
            (*(*v279 + 456))(v280);

            v283 = (*(*v329 + 96))(v282);
            v284 = (*(*v283 + 112))(v281);

            if (v284)
            {
              static FlowSearchResult.flow(_:)();

              v269[1](v281, v268);
              v254 = v315;
              v255 = v334;
              goto LABEL_77;
            }

            v346 = v178;
            v335 = v103;
            v285 = static os_log_type_t.error.getter();
            v286 = v313;
            (v269[2])(v313, v281, v268);
            v287 = v345;
            if (os_log_type_enabled(v345, v285))
            {
              v288 = swift_slowAlloc();
              v289 = swift_slowAlloc();
              v349[0] = v289;
              *v288 = 136315138;
              _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type NLIntent and conformance NLIntent, 255, &type metadata accessor for NLIntent);
              v290 = dispatch thunk of CustomStringConvertible.description.getter();
              v291 = v269;
              v293 = v292;
              v294 = v286;
              v295 = v291[1];
              v295(v294, v343);
              v296 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v290, v293, v349);

              *(v288 + 4) = v296;
              _os_log_impl(&dword_0, v287, v285, "findFlowForX - flow should not be nil here, received nl intent %s", v288, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v289);
              v268 = v343;
            }

            else
            {
              v310 = v286;
              v295 = v269[1];
              v295(v310, v268);
            }

            type metadata accessor for UnsupportedRequestFlow();
            v311 = swift_allocObject();
            type metadata accessor for OS_os_log();
            *(v311 + 16) = OS_os_log.init(subsystem:category:)();
            v349[0] = v311;
            _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type UnsupportedRequestFlow and conformance UnsupportedRequestFlow, 255, type metadata accessor for UnsupportedRequestFlow);
            Flow.eraseToAnyFlow()();

            static FlowSearchResult.flow(_:)();

            v295(v314, v268);
            (v346)(v315, v334);
            return (v338)(v335, v347);
          }
        }

        else
        {
        }
      }

      v275 = 1;
      goto LABEL_93;
    }

    (v178)(v315, v334);
    v66 = v342;
    v72 = v338;
    v74 = v103;
    goto LABEL_98;
  }

LABEL_35:
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  static Device.current.getter();
  v154 = type metadata accessor for GeoRCHFlowFactoryImpl();
  v155 = swift_allocObject();
  v352 = &protocol witness table for GeoRCHFlowFactoryImpl;
  v351 = v154;
  v350 = v155;
  v353 = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for CATService();
  v156 = swift_allocObject();
  v157 = swift_getObjCClassFromMetadata();
  *(v156 + 24) = [objc_opt_self() bundleForClass:v157];
  type metadata accessor for OS_os_log();
  *(v156 + 32) = OS_os_log.init(subsystem:category:)();
  *(v156 + 16) = 0;
  v354 = v156;
  type metadata accessor for WhereAmIFlow();
  v158 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(v349, v348);
  v159 = specialized WhereAmIFlow.init(with:)(v348, v158);
  outlined destroy of FlowHelperImpl(v349);
  v349[0] = v159;
  _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(&lazy protocol witness table cache variable for type WhereAmIFlow and conformance WhereAmIFlow, 255, type metadata accessor for WhereAmIFlow);
  Flow.eraseToAnyFlow()();

  static FlowSearchResult.flow(_:)();

  v160 = *(v332 + 8);
  v161 = v334;
  v160(v106, v334);
  v160(v333, v161);
  return (v72)(v74, v347);
}

uint64_t protocol witness for FlowPlugin.init() in conformance GeoFlowDelegatePlugin@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 120))();
  *a1 = result;
  return result;
}

uint64_t specialized FlowSelector.init(with:)(_OWORD *a1, uint64_t a2)
{
  v78 = &type metadata for FlowHelperImpl;
  v79 = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  *&v77 = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  v62 = a2;
  outlined init with copy of DeviceState(&v77, v75);
  v10 = swift_allocObject();
  outlined init with take of CATType(v75, v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in FlowSelector.init(with:);
  *(v11 + 24) = v10;
  v76[0] = &outlined read-only object #0 of specialized FlowSelector.init(with:);
  v76[1] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v76[2] = _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIeggo_AcGIegnr_TRTA_0;
  v76[3] = v11;
  outlined init with copy of DeviceState(&v77, v74);
  v12 = swift_allocObject();
  outlined init with take of CATType(v74, v12 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = _s21GeoFlowDelegatePlugin0B8SelectorC4withAcA0B6Helper_p_tcfc07SiriKitB003AnyB0CSgAA20LocationSearchIntentCcfU0_TA_0;
  *(v13 + 24) = v12;
  v76[4] = &outlined read-only object #1 of specialized FlowSelector.init(with:);
  v76[5] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v76[6] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v76[7] = v13;
  outlined init with copy of DeviceState(&v77, v73);
  v14 = swift_allocObject();
  outlined init with take of CATType(v73, v14 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = _s21GeoFlowDelegatePlugin0B8SelectorC4withAcA0B6Helper_p_tcfc07SiriKitB003AnyB0CSgAA20LocationSearchIntentCcfU1_TA_0;
  *(v15 + 24) = v14;
  v76[8] = &outlined read-only object #2 of specialized FlowSelector.init(with:);
  v76[9] = &outlined read-only object #0 of static LocationSearchIntent.LocationSearchNounValue.allCases.getter;
  v76[10] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v76[11] = v15;
  outlined init with copy of DeviceState(&v77, v72);
  v16 = swift_allocObject();
  outlined init with take of CATType(v72, v16 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #4 in FlowSelector.init(with:);
  *(v17 + 24) = v16;
  v76[12] = &outlined read-only object #3 of specialized FlowSelector.init(with:);
  v76[13] = &outlined read-only object #4 of specialized FlowSelector.init(with:);
  v76[14] = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
  v76[15] = v17;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV_07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  v19 = 0;
  while (1)
  {
    v63 = v19;
    v20 = &v76[4 * v19];
    v21 = *v20;
    v22 = v20[1];
    v24 = v20[2];
    v23 = v20[3];
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v23;
    v66 = *(v21 + 16);
    if (v66)
    {
      break;
    }

LABEL_41:
    v19 = v63 + 1;
    if (v63 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMd, &_sSay21GeoFlowDelegatePlugin20LocationSearchIntentC0eF9VerbValueOG_SayAC0ef4NounI0OGyyctMR);
      swift_arrayDestroy();
      *(v62 + 24) = v18;
      outlined init with take of CATType(&v77, v62 + 32);
      return v62;
    }
  }

  v65 = v21 + 32;
  v69 = v22 + 32;
  v70 = *(v22 + 16);
  swift_bridgeObjectRetain_n();

  v26 = 0;
  v64 = v21;
  v68 = v22;
  while (v26 < *(v21 + 16))
  {
    if (v70)
    {
      v67 = v26;
      v71 = *(v65 + v26);

      v27 = 0;
      while (1)
      {
        if (v27 >= *(v22 + 16))
        {
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v30 = *(v69 + v27);
        v31 = swift_allocObject();
        *(v31 + 16) = _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIegnr_AcGIeggo_TRTA_0;
        *(v31 + 24) = v25;
        v32 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v72[0] = v18;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v71 | (v30 << 8));
        v36 = *(v18 + 16);
        v37 = (v34 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          goto LABEL_44;
        }

        v39 = v34;
        if (*(v18 + 24) >= v38)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v25 = v32;
            if (v34)
            {
              goto LABEL_9;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMd, &_ss18_DictionaryStorageCy21GeoFlowDelegatePlugin0D8SelectorC0dG3KeyV07SiriKitD003AnyD0CSgAC20LocationSearchIntentCcGMR);
            v61 = static _DictionaryStorage.copy(original:)();
            if (*(v18 + 16))
            {
              v47 = (v61 + 64);
              v48 = ((1 << *(v61 + 32)) + 63) >> 6;
              if (v61 != v18 || v47 >= v18 + 64 + 8 * v48)
              {
                memmove(v47, (v18 + 64), 8 * v48);
              }

              v49 = 0;
              *(v61 + 16) = *(v18 + 16);
              v50 = 1 << *(v18 + 32);
              v51 = *(v18 + 64);
              if (v50 < 64)
              {
                v52 = ~(-1 << v50);
              }

              else
              {
                v52 = -1;
              }

              v53 = v52 & v51;
              v54 = (v50 + 63) >> 6;
              if ((v52 & v51) != 0)
              {
                do
                {
                  v55 = __clz(__rbit64(v53));
                  v53 &= v53 - 1;
LABEL_35:
                  v58 = v55 | (v49 << 6);
                  v59 = *(*(v18 + 56) + 16 * v58);
                  *(*(v61 + 48) + 2 * v58) = *(*(v18 + 48) + 2 * v58);
                  *(*(v61 + 56) + 16 * v58) = v59;
                }

                while (v53);
              }

              v56 = v49;
              while (1)
              {
                v49 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_47;
                }

                if (v49 >= v54)
                {
                  break;
                }

                v57 = *(v18 + 64 + 8 * v49);
                ++v56;
                if (v57)
                {
                  v55 = __clz(__rbit64(v57));
                  v53 = (v57 - 1) & v57;
                  goto LABEL_35;
                }
              }
            }

            v18 = v61;
            v25 = v32;
            if (v39)
            {
LABEL_9:
              v28 = (*(v18 + 56) + 16 * v35);
              v29 = v28[1];
              *v28 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
              v28[1] = v31;

              goto LABEL_10;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v38, isUniquelyReferenced_nonNull_native);
          v18 = *&v72[0];
          v40 = specialized __RawDictionaryStorage.find<A>(_:)(v71 | (v30 << 8));
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_48;
          }

          v35 = v40;
          v25 = v32;
          if (v39)
          {
            goto LABEL_9;
          }
        }

        *(v18 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v42 = (*(v18 + 48) + 2 * v35);
        *v42 = v71;
        v42[1] = v30;
        v43 = (*(v18 + 56) + 16 * v35);
        *v43 = thunk for @escaping @callee_guaranteed (@guaranteed LocationSearchIntent) -> (@owned AnyFlow?)partial apply;
        v43[1] = v31;
        v44 = *(v18 + 16);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_45;
        }

        *(v18 + 16) = v46;
LABEL_10:
        ++v27;
        v22 = v68;
        if (v27 == v70)
        {

          v21 = v64;
          v26 = v67;
          break;
        }
      }
    }

    if (++v26 == v66)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s21GeoFlowDelegatePlugin027RetrieveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So010INRetrievefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  ParkingLocationBaseFlow = type metadata accessor for RetrieveParkingLocationBaseFlow(0);
  v5 = *(ParkingLocationBaseFlow + 48);
  v6 = *(ParkingLocationBaseFlow + 52);
  v7 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v19);
  v17 = &type metadata for FlowHelperImpl;
  v18 = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = v19[9];
  v8[9] = v19[8];
  v8[10] = v9;
  v8[11] = v19[10];
  v10 = v19[5];
  v8[5] = v19[4];
  v8[6] = v10;
  v11 = v19[7];
  v8[7] = v19[6];
  v8[8] = v11;
  v12 = v19[1];
  v8[1] = v19[0];
  v8[2] = v12;
  v13 = v19[3];
  v8[3] = v19[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  v14 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v7 + 16) = v14;
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v16, v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowHelper);
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin31RetrieveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for RetrieveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v7;
}

uint64_t _s21GeoFlowDelegatePlugin025DeleteParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So08INDeletefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v19);
  v17 = &type metadata for FlowHelperImpl;
  v18 = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = v19[9];
  v8[9] = v19[8];
  v8[10] = v9;
  v8[11] = v19[10];
  v10 = v19[5];
  v8[5] = v19[4];
  v8[6] = v10;
  v11 = v19[7];
  v8[7] = v19[6];
  v8[8] = v11;
  v12 = v19[1];
  v8[1] = v19[0];
  v8[2] = v12;
  v13 = v19[3];
  v8[3] = v19[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  v14 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v7 + 16) = v14;
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v16, v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v7;
}

uint64_t _s21GeoFlowDelegatePlugin023SaveParkingLocationBaseB0C10flowHelper6intentAcA0bJ0_p_So06INSavefG6IntentCtcfCTfq4enn_nAA0bJ4ImplV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  outlined init with copy of FlowHelperImpl(a1, v19);
  v17 = &type metadata for FlowHelperImpl;
  v18 = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = v19[9];
  v8[9] = v19[8];
  v8[10] = v9;
  v8[11] = v19[10];
  v10 = v19[5];
  v8[5] = v19[4];
  v8[6] = v10;
  v11 = v19[7];
  v8[7] = v19[6];
  v8[8] = v11;
  v12 = v19[1];
  v8[1] = v19[0];
  v8[2] = v12;
  v13 = v19[3];
  v8[3] = v19[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  v14 = OS_os_log.init(subsystem:category:)();
  outlined destroy of FlowHelperImpl(a1);
  *(v7 + 16) = v14;
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v16, v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
  *(v7 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return v7;
}

uint64_t specialized AnswerETAFlow.init(with:checkNavigation:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[3] = &type metadata for FlowHelperImpl;
  v21[4] = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  v21[0] = v8;
  v9 = a1[9];
  v8[9] = a1[8];
  v8[10] = v9;
  v8[11] = a1[10];
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[7];
  v8[7] = a1[6];
  v8[8] = v11;
  v12 = a1[1];
  v8[1] = *a1;
  v8[2] = v12;
  v13 = a1[3];
  v8[3] = a1[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  *(a4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v14 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v14 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v14 + 32) = OS_os_log.init(subsystem:category:)();
  *(v14 + 16) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0;
  *(a4 + 24) = v14;
  *(a4 + 32) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  outlined init with copy of DeviceState(v21, a4 + 40);
  v16 = type metadata accessor for DialogDuration.Builder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(a4 + 112) = DialogDuration.Builder.init()();
  static os_log_type_t.default.getter();
  v19 = *(a4 + 16);
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return a4;
}

void *specialized EndNavigationFlow.init(with:checkNavigation:)(_OWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[3] = &type metadata for FlowHelperImpl;
  v18[4] = &protocol witness table for FlowHelperImpl;
  v8 = swift_allocObject();
  v18[0] = v8;
  v9 = a1[9];
  v8[9] = a1[8];
  v8[10] = v9;
  v8[11] = a1[10];
  v10 = a1[5];
  v8[5] = a1[4];
  v8[6] = v10;
  v11 = a1[7];
  v8[7] = a1[6];
  v8[8] = v11;
  v12 = a1[1];
  v8[1] = *a1;
  v8[2] = v12;
  v13 = a1[3];
  v8[3] = a1[2];
  v8[4] = v13;
  type metadata accessor for OS_os_log();
  a4[2] = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v14 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v14 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v14 + 32) = OS_os_log.init(subsystem:category:)();
  *(v14 + 16) = 0;
  a4[3] = v14;
  a4[4] = 0;
  a4[10] = a2;
  a4[11] = a3;
  outlined init with copy of DeviceState(v18, (a4 + 5));
  static os_log_type_t.default.getter();
  v16 = a4[2];
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return a4;
}

uint64_t specialized AnswerAltitudeFlow.init(with:)(_OWORD *a1, uint64_t a2)
{
  v14[3] = &type metadata for FlowHelperImpl;
  v14[4] = &protocol witness table for FlowHelperImpl;
  v4 = swift_allocObject();
  v14[0] = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  type metadata accessor for OS_os_log();
  *(a2 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v10 + 16) = 0;
  *(a2 + 24) = v10;
  *(a2 + 32) = 2;
  *(a2 + 40) = 2;
  outlined init with copy of DeviceState(v14, a2 + 48);
  static os_log_type_t.default.getter();
  v12 = *(a2 + 16);
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return a2;
}

unint64_t specialized GeoDirectInvocations.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoDirectInvocations.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of CurareInteractionStream?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23CurareInteractionStream_pSgMd, "ށ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type GeoDirectInvocations and conformance GeoDirectInvocations()
{
  result = lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations;
  if (!lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDirectInvocations and conformance GeoDirectInvocations);
  }

  return result;
}

uint64_t _s21GeoFlowDelegatePlugin018UnsupportedRequestB0CAC07SiriKitB00B0AAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_7AC38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_7AC84(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_7ACE8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_7AD48()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7AD80()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s21GeoFlowDelegatePlugin20LocationSearchIntentC07SiriKitB003AnyB0CSgIeggo_AcGIegnr_TRTA_0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t static GeoParse.getGeoExperience(parse:)()
{
  if (!specialized static GeoParse.getUsoTask(usoParse:)())
  {
    return 4;
  }

  v0 = UsoTask.getGeoTaskType()();

  return v0;
}

uint64_t OnDeviceExperience.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x5445726577736E61;
  v2 = 0x6C41726577736E61;
  v3 = 0x496D416572656877;
  if (a1 != 3)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x676976614E646E65;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance OnDeviceExperience(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000041;
  v3 = 0x5445726577736E61;
  v4 = *a1;
  v5 = *a2;
  v6 = 0x6C41726577736E61;
  v7 = 0xEE00656475746974;
  v8 = 0xE800000000000000;
  v9 = 0x496D416572656877;
  if (v4 != 3)
  {
    v9 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (v4 != 2)
  {
    v6 = v9;
    v7 = v8;
  }

  v10 = 0x676976614E646E65;
  v11 = 0xED00006E6F697461;
  if (!*a1)
  {
    v10 = 0x5445726577736E61;
    v11 = 0xE900000000000041;
  }

  if (*a1 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v7;
  }

  v14 = 0x6C41726577736E61;
  v15 = 0xEE00656475746974;
  v16 = 0xE800000000000000;
  v17 = 0x496D416572656877;
  if (v5 != 3)
  {
    v17 = 0x6E776F6E6B6E75;
    v16 = 0xE700000000000000;
  }

  if (v5 != 2)
  {
    v14 = v17;
    v15 = v16;
  }

  if (*a2)
  {
    v3 = 0x676976614E646E65;
    v2 = 0xED00006E6F697461;
  }

  if (*a2 <= 1u)
  {
    v18 = v3;
  }

  else
  {
    v18 = v14;
  }

  if (*a2 <= 1u)
  {
    v19 = v2;
  }

  else
  {
    v19 = v15;
  }

  if (v12 == v18 && v13 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}