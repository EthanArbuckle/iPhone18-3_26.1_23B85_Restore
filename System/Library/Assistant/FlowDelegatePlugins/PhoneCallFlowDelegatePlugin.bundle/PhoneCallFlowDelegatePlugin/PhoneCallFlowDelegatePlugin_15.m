void specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(unint64_t, uint64_t))
{
  v6 = v4;
  v58 = a1;
  v8 = type metadata accessor for ImageSize();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v59 = (v4 + 48);
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v19)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    v21 = OUTLINED_FUNCTION_12_1(v20, static Logger.siriPhone);
    v22 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#DefaultDisambiguationBuilder use mixed card section for PICS", v23, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v24 = *(v6 + 40);
    OUTLINED_FUNCTION_19_19();
    v25(v15);
    type metadata accessor for SiriKitDisambiguationItem();
    v26 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v60[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v26);
    *(&v58 - 32) = v24;
    v27 = v59;
    *(&v58 - 3) = v15;
    *(&v58 - 2) = v27;
    *(&v58 - 1) = v60;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v26, a4);
    v29 = specialized BidirectionalCollection.last.getter(v28);
    if (v29)
    {
      v30 = v29;
      [v29 setSeparatorStyle:{1, v58}];
    }

    v31 = v60[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    OUTLINED_FUNCTION_5();
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();
    OUTLINED_FUNCTION_5();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v31, v26);
  }

  else
  {
    v32 = *(v4 + 40);
    OUTLINED_FUNCTION_19_19();
    v33(v18);
    v26 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v15 = v18;
  }

  (*(v11 + 8))(v15, v8);
  v35 = *v6;
  v34 = *(v6 + 8);
  v36 = *(v6 + 72);
  v37 = *(v6 + 80);
  __swift_project_boxed_opaque_existential_1(v59, v36);
  v38 = *(v37 + 8);
  v39 = v26;
  v38(v60, v36, v37);
  static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v35, [v34 preferredCallProvider], v60);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v40 = OUTLINED_FUNCTION_40_0();
  v41 = SAUISash.init(app:)(v40);
  __swift_destroy_boxed_opaque_existential_1(v60);
  [v39 setSash:v41];

  v42 = *(v6 + 16);
  v43 = *(v6 + 24);
  v44 = *(v6 + 32);
  v45 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v42) = OUTLINED_FUNCTION_14_28(v45);

  if (v42)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      v48 = one-time initialization token for siriPhone;
      v49 = v39;
      if (v48 != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v50 = type metadata accessor for Logger();
      v51 = OUTLINED_FUNCTION_12_1(v50, static Logger.siriPhone);
      v52 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v52))
      {
        v53 = OUTLINED_FUNCTION_65_0();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v53, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v47);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  v55 = *(v6 + 72);
  v54 = *(v6 + 80);
  __swift_project_boxed_opaque_existential_1(v59, v55);
  v56 = OUTLINED_FUNCTION_6_33();
  v57(v56);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v60);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
  OUTLINED_FUNCTION_40_0();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  OUTLINED_FUNCTION_65();
}

void specialized DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  v60 = a5;
  v61 = a1;
  v7 = v5;
  v9 = type metadata accessor for ImageSize();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v10);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v20 = (v5 + 48);
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v21)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v59 = a4;
    v22 = type metadata accessor for Logger();
    v23 = OUTLINED_FUNCTION_12_1(v22, static Logger.siriPhone);
    v24 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_16_4(v24))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_13_7(&dword_0, v25, v24, "#DefaultDisambiguationBuilder use mixed card section for PICS");
      OUTLINED_FUNCTION_26_0();
    }

    v26 = *(v7 + 40);
    OUTLINED_FUNCTION_19_19();
    v27(v17);
    type metadata accessor for SiriKitDisambiguationItem();
    OUTLINED_FUNCTION_5();
    v28 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v62[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v28);
    *(&v58 - 32) = v26;
    *(&v58 - 3) = v17;
    *(&v58 - 2) = v20;
    *(&v58 - 1) = v62;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v28, v59);
    v30 = specialized BidirectionalCollection.last.getter(v29);
    if (v30)
    {
      v31 = v30;
      [v30 setSeparatorStyle:1];
    }

    v32 = v62[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    OUTLINED_FUNCTION_5();
    static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();
    OUTLINED_FUNCTION_5();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v32, v28);
  }

  else
  {
    v33 = *(v5 + 40);
    OUTLINED_FUNCTION_19_19();
    v34(v19);
    v28 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v17 = v19;
  }

  (*(v12 + 8))(v17, v9);
  v35 = *v7;
  v36 = *(v7 + 72);
  v37 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1(v20, v36);
  v38 = *(v37 + 8);
  v39 = v28;
  v38(v62, v36, v37);
  static UserFacingCallingAppUtils.getCommAppForLaunch(originalApp:preferredCallProvider:deviceState:)(v35, v60, v62);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v40 = OUTLINED_FUNCTION_40_0();
  v41 = SAUISash.init(app:)(v40);
  __swift_destroy_boxed_opaque_existential_1(v62);
  [v39 setSash:v41];

  v42 = *(v7 + 16);
  v43 = *(v7 + 24);
  v44 = *(v7 + 32);
  v45 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v42) = OUTLINED_FUNCTION_14_28(v45);

  if (v42)
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      v48 = one-time initialization token for siriPhone;
      v49 = v39;
      if (v48 != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v50 = type metadata accessor for Logger();
      v51 = OUTLINED_FUNCTION_12_1(v50, static Logger.siriPhone);
      v52 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_16_4(v52))
      {
        v53 = OUTLINED_FUNCTION_65_0();
        *v53 = 0;
        _os_log_impl(&dword_0, v51, v52, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v53, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v47);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  v55 = *(v7 + 72);
  v54 = *(v7 + 80);
  __swift_project_boxed_opaque_existential_1(v20, v55);
  v56 = OUTLINED_FUNCTION_6_33();
  v57(v56);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v62);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();
  OUTLINED_FUNCTION_40_0();

  dispatch thunk of SiriKitAceViewBuilder.build()();

  OUTLINED_FUNCTION_65();
}

uint64_t DefaultDisambiguationBuilder.makeViewsForIOSDisambiguation(utteranceViews:disambiguationItems:persons:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v53 = a4;
  v54 = a1;
  v7 = type metadata accessor for ImageSize();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(a3);
  if (v15)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.siriPhone);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "#DefaultDisambiguationBuilder use mixed card section for PICS", v19, 2u);
    }

    v20 = *(v5 + 40);
    (*(v8 + 104))(v14, enum case for ImageSize.contactDisambiguation(_:), v7);
    type metadata accessor for SiriKitDisambiguationItem();
    v21 = dispatch thunk of static SiriKitDisambiguationItem.allowedItems(disambiguationItems:deviceLockedForDisambiguation:)();
    v55[0] = _swiftEmptyArrayStorage;
    __chkstk_darwin(v21);
    *(&v51 - 32) = v20;
    *(&v51 - 3) = v14;
    *(&v51 - 2) = v5 + 48;
    *(&v51 - 1) = v55;
    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySo8INPersonCGSay11SiriKitFlow0gH18DisambiguationItemCGG_So13SFCardSectionCs5NeverOTg505_sSo8f3C11gh9Flow0bC18jk5CSo13lm17CIgggo_AB_AEtAGs5N11OIegnrzr_TRAimQIgggo_Tf1cn_n(a3, v21, partial apply for closure #1 in static PicsDisambiguationBuilder.mixedCardSectionsFromDetailedSelectionItems(disambiguationItems:deviceIsLocked:sharedGlobals:persons:imageSize:));
    v23 = specialized BidirectionalCollection.last.getter(v22);
    if (v23)
    {
      v24 = v23;
      [v23 setSeparatorStyle:1];
    }

    v25 = v55[0];
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
    v26 = static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:)();

    outlined bridged method (mbnn) of @objc SACardSnippet.referencedCommands.setter(v25, v26);
  }

  else
  {
    v27 = *(v5 + 40);
    (*(v8 + 104))(v12, enum case for ImageSize.contactDisambiguation(_:), v7);
    v26 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    v14 = v12;
  }

  (*(v8 + 8))(v14, v7);
  v29 = *v5;
  v28 = *(v5 + 8);
  v30 = *(v5 + 72);
  v31 = *(v5 + 80);
  v52 = (v5 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 48), v30);
  v32 = *(v31 + 8);
  v33 = v26;
  v32(v55, v30, v31);
  v34 = static PhoneCasinoFactory.makeSash<A>(intent:app:deviceState:)(v28, v29, v55, *(v53 + 16), *(v53 + 24));
  __swift_destroy_boxed_opaque_existential_1(v55);
  [v33 setSash:v34];

  v35 = *(v5 + 16);
  v36 = *(v5 + 24);
  v37 = *(v5 + 32);
  v38 = SiriKitDisambiguationList.rawItems.getter();
  LOBYTE(v35) = specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(v35, v36, v38);

  if (v35)
  {
    objc_opt_self();
    v39 = swift_dynamicCastObjCClass();
    if (v39)
    {
      v40 = v39;
      v41 = one-time initialization token for siriPhone;
      v42 = v33;
      if (v41 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.siriPhone);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "#DefaultDisambiguationBuilder appending Open Contacts button on disambiguation snippet", v46, 2u);
      }

      DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(v40);
    }
  }

  type metadata accessor for SiriKitAceViewBuilder();
  v48 = *(v5 + 72);
  v47 = *(v5 + 80);
  __swift_project_boxed_opaque_existential_1(v52, v48);
  (*(v47 + 8))(v55, v48, v47);
  dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
  __swift_destroy_boxed_opaque_existential_1(v55);
  dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

  dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

  v49 = dispatch thunk of SiriKitAceViewBuilder.build()();

  return v49;
}

uint64_t specialized DefaultDisambiguationBuilder.shouldShowOpenContactsAppButton(parameterName:rawItems:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = v3[9];
  v8 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v7);
  (*(v8 + 8))(v18, v7, v8);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v9 = DeviceState.isAuthenticatedForPhone.getter();
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v9)
  {

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    if ((PhoneCallSlotNames.init(rawValue:)(v10).value & 0xFE) == 4)
    {
      v11 = specialized _arrayConditionalCast<A, B>(_:)(a3);
      if (v11)
      {
        v12 = v11;
        if (!PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v11))
        {
          static EmergencyUtils.isForeignEmergencyDisambiguation(_:)(v12);
          if ((v13 & 1) == 0)
          {
            static EmergencyUtils.isRegularEmergencyDisambiguation(_:)(v12);
            v17 = v16;

            v14 = v17 ^ 1;
            return v14 & 1;
          }
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

void specialized DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v69 - v18;
  v69 = a1;
  v20 = [a1 cardData];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xF000000000000000;
  }

  v25 = objc_allocWithZone(_SFPBCard);
  v26 = @nonobjc _SFPBCard.init(data:)(v22, v24);
  if (v26)
  {
    v27 = v26;
    v28 = [objc_allocWithZone(SFCard) initWithProtobuf:v26];

    if (v28)
    {
      (*(**(v2 + 88) + class metadata base offset for PhoneCallDisplayTextCATs + 536))();
      v29 = Result<>.firstPrint.getter();
      v31 = v30;
      outlined destroy of Result<TemplatingResult, Error>(v19);
      if (v31)
      {
        v32 = [objc_allocWithZone(SFButtonCardSection) init];
        [v32 setSeparatorStyle:0];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
        v33 = @nonobjc SFRichText.__allocating_init(string:)(v29, v31);
        [v32 setTitle:v33];

        v34 = [objc_allocWithZone(SAUIAppPunchOut) init];
        URL.init(string:)();
        v35 = type metadata accessor for URL();
        v37 = 0;
        if (__swift_getEnumTagSinglePayload(v15, 1, v35) != 1)
        {
          URL._bridgeToObjectiveC()(v36);
          v37 = v38;
          (*(*(v35 - 8) + 8))(v15, v35);
        }

        [v34 setPunchOutUri:v37];

        v39 = v34;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v7 + 8))(v11, v4);
        v40 = String._bridgeToObjectiveC()();

        [v39 setAceId:v40];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_426260;
        v42 = v39;
        v43 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v41 + 32) = v43;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v32 setCommands:isa];

        v45 = [v28 cardSections];
        if (v45)
        {
          v46 = v45;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
          v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v70 = v47;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v48 = v69;
          if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v70)
          {
            v49.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v49.super.isa = 0;
          }

          [v28 setCardSections:v49.super.isa];
        }

        else
        {

          [v28 setCardSections:0];
          v48 = v69;
        }

        v59 = [objc_allocWithZone(_SFPBCard) initWithFacade:v28];
        v60 = v59;
        if (v59)
        {
          v61 = [(objc_class *)v59 data];

          if (v61)
          {
            v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v64 = v63;

            v60 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v62, v64);
          }

          else
          {
            v60 = 0;
          }
        }

        [v48 setCardData:v60];

        v65 = [v48 referencedCommands];
        if (v65)
        {
          v66 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v67 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v70 = v67;
          v42 = v42;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v70 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v70)
          {
            v68.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v68.super.isa = 0;
          }

          [v48 setReferencedCommands:v68.super.isa];
        }

        else
        {
          [v48 setReferencedCommands:0];
        }
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_6_2();
        }

        v55 = type metadata accessor for Logger();
        v56 = OUTLINED_FUNCTION_12_1(v55, static Logger.siriPhone);
        v57 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_65_0();
          *v58 = 0;
          _os_log_impl(&dword_0, v56, v57, "#DefaultDisambiguationBuilder failed to generate Open Contacts button label", v58, 2u);
          OUTLINED_FUNCTION_26_0();
        }
      }

      OUTLINED_FUNCTION_65();
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v50 = type metadata accessor for Logger();
      v69 = OUTLINED_FUNCTION_12_1(v50, static Logger.siriPhone);
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v51))
      {
        v52 = OUTLINED_FUNCTION_65_0();
        *v52 = 0;
        _os_log_impl(&dword_0, v69, v51, "#DefaultDisambiguationBuilder failed to get SFCard from SFCardSnippet", v52, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      OUTLINED_FUNCTION_65();
    }
  }

  else
  {
    __break(1u);
  }
}

void DefaultDisambiguationBuilder.appendLaunchAppButton(to:)(NSObject *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v65 - v15;
  v65 = a1;
  v17 = [a1 cardData];
  if (v17)
  {
    v18 = v17;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xF000000000000000;
  }

  v22 = objc_allocWithZone(_SFPBCard);
  v23 = @nonobjc _SFPBCard.init(data:)(v19, v21);
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(SFCard) initWithProtobuf:v23];

    if (v25)
    {
      (*(**(v2 + 88) + class metadata base offset for PhoneCallDisplayTextCATs + 536))();
      v26 = Result<>.firstPrint.getter();
      v28 = v27;
      outlined destroy of Result<TemplatingResult, Error>(v16);
      if (v28)
      {
        v29 = [objc_allocWithZone(SFButtonCardSection) init];
        [v29 setSeparatorStyle:0];
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFRichText, SFRichText_ptr);
        v30 = @nonobjc SFRichText.__allocating_init(string:)(v26, v28);
        [v29 setTitle:v30];

        v31 = [objc_allocWithZone(SAUIAppPunchOut) init];
        URL.init(string:)();
        v32 = type metadata accessor for URL();
        v34 = 0;
        if (__swift_getEnumTagSinglePayload(v12, 1, v32) != 1)
        {
          URL._bridgeToObjectiveC()(v33);
          v34 = v35;
          (*(*(v32 - 8) + 8))(v12, v32);
        }

        [v31 setPunchOutUri:v34];

        v36 = v31;
        UUID.init()();
        UUID.uuidString.getter();
        (*(v5 + 8))(v8, v4);
        v37 = String._bridgeToObjectiveC()();

        [v36 setAceId:v37];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_426260;
        v39 = v36;
        v40 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();

        *(v38 + 32) = v40;
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFAbstractCommand, SFAbstractCommand_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v29 setCommands:isa];

        v42 = [v25 cardSections];
        if (v42)
        {
          v43 = v42;
          type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SFCardSection, SFCardSection_ptr);
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v66 = v44;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = v65;
          if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v66 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v66)
          {
            v46.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v46.super.isa = 0;
          }

          [v25 setCardSections:v46.super.isa];
        }

        else
        {

          [v25 setCardSections:0];
          v45 = v65;
        }

        v55 = [objc_allocWithZone(_SFPBCard) initWithFacade:v25];
        v56 = v55;
        if (v55)
        {
          v57 = [(objc_class *)v55 data];

          if (v57)
          {
            v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v56 = Data._bridgeToObjectiveC()().super.isa;
            outlined consume of Data._Representation(v58, v60);
          }

          else
          {
            v56 = 0;
          }
        }

        [v45 setCardData:v56];

        v61 = [v45 referencedCommands];
        if (v61)
        {
          v62 = v61;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v66 = v63;
          v39 = v39;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v66 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          if (v66)
          {
            v64.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v64.super.isa = 0;
          }

          [v45 setReferencedCommands:v64.super.isa];
        }

        else
        {
          [v45 setReferencedCommands:0];
        }
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.siriPhone);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_0, v52, v53, "#DefaultDisambiguationBuilder failed to generate Open Contacts button label", v54, 2u);
        }
      }
    }

    else
    {
      if (one-time initialization token for siriPhone != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.siriPhone);
      v65 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_0, v65, v48, "#DefaultDisambiguationBuilder failed to get SFCard from SFCardSnippet", v49, 2u);
      }

      v50 = v65;
    }
  }

  else
  {
    __break(1u);
  }
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString:v2];

  return v3;
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData:isa];

  return v6;
}

uint64_t type metadata instantiation function for DefaultDisambiguationBuilder()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DefaultDisambiguationBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultDisambiguationBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DestinationTypeSlotTemplating.makeParameterValueConfirmationDialog(app:parameterName:intentResolutionResult:intent:inferenceSource:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v26 - v15;
  v17 = [a4 itemToConfirm];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for INCallDestinationType(0);
  if (swift_dynamicCast())
  {
    v18 = v26[1];
  }

  else
  {
    v18 = (*(*(a9 + 32) + 16))(*(a9 + 16));
  }

  v19 = *(v9 + 40);
  if (v18)
  {
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v21 = @"NORMAL_DESTINATION";
        goto LABEL_12;
      case 2:
        v21 = @"EMERGENCY_DESTINATION";
        goto LABEL_12;
      case 3:
        v21 = @"VOICEMAIL_DESTINATION";
        goto LABEL_12;
      case 4:
        v21 = @"REDIAL_DESTINATION";
        goto LABEL_12;
      case 5:
        v21 = @"CALL_BACK_DESTINATION";
LABEL_12:
        v22 = v21;
        break;
      default:
        v21 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v23 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  SpeakableString.init(print:speak:)();
  v24 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  (*(*v19 + class metadata base offset for StartCallCATs + 128))(v16, a7, a8);
  return outlined destroy of SpeakableString?(v16);
}

uint64_t type metadata instantiation function for DestinationTypeSlotTemplating()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Transformer<>.transformer(sharedGlobals:previousIntent:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallDestinationType(0);

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMd, &_sSay27PhoneCallFlowDelegatePlugin04SiriA7Contact_pGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INAudioCallTTYType(0);
  OUTLINED_FUNCTION_11_36();
  OUTLINED_FUNCTION_31_14();

  return Transformer.init(transform:)();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pMR);
  type metadata accessor for INCallRecordType(0);

  return Transformer.init(transform:)();
}

void closure #1 in static Transformer<>.transformer(sharedGlobals:previousIntent:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_49();
  if (PhoneCallNLIntent.isEmergencyServicesCall()())
  {
    v5 = 2;
  }

  else
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_0_49();
    if (PhoneCallNLIntent.hasVoiceMail()() && (v7 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), OUTLINED_FUNCTION_0_49(), !PhoneCallNLIntent.hasPhoneNumber()()))
    {
      v5 = 3;
    }

    else
    {
      v8 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      OUTLINED_FUNCTION_0_49();
      if (PhoneCallNLIntent.isRedial()())
      {
        v5 = 4;
      }

      else
      {
        v9 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        OUTLINED_FUNCTION_0_49();
        if (PhoneCallNLIntent.isCallBack()())
        {
          v5 = 5;
        }

        else
        {
          v5 = 1;
        }
      }
    }
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.siriPhone);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGmMd, &_s13SiriUtilities11TransformerVy27PhoneCallFlowDelegatePlugin0dE8NLIntent_pSo21INCallDestinationTypeVGmMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v25);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    BackingType = INCallDestinationTypeGetBackingType();
    switch(BackingType)
    {
      case 1:
        v18 = @"NORMAL_DESTINATION";
        goto LABEL_21;
      case 2:
        v18 = @"EMERGENCY_DESTINATION";
        goto LABEL_21;
      case 3:
        v18 = @"VOICEMAIL_DESTINATION";
        goto LABEL_21;
      case 4:
        v18 = @"REDIAL_DESTINATION";
        goto LABEL_21;
      case 5:
        v18 = @"CALL_BACK_DESTINATION";
LABEL_21:
        v19 = v18;
        break;
      default:
        v18 = [NSString stringWithFormat:@"(unknown: %i)", BackingType];
        break;
    }

    v20 = v18;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_0, v11, v12, "#%s --> %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  *a2 = v5;
}

unint64_t DeviceIdiom.getPBDeviceIdiom()()
{
  v1 = v0;
  v2 = type metadata accessor for DeviceIdiom();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DeviceIdiom.car(_:))
  {
    v8 = 0;
    v9 = 5;
  }

  else if (v7 == enum case for DeviceIdiom.homepod(_:))
  {
    v8 = 0;
    v9 = 4;
  }

  else if (v7 == enum case for DeviceIdiom.mac(_:))
  {
    v8 = 0;
    v9 = 7;
  }

  else if (v7 == enum case for DeviceIdiom.pad(_:))
  {
    v8 = 0;
    v9 = 2;
  }

  else if (v7 == enum case for DeviceIdiom.phone(_:))
  {
    v8 = 0;
    v9 = 1;
  }

  else if (v7 == enum case for DeviceIdiom.watch(_:))
  {
    v8 = 0;
    v9 = 3;
  }

  else if (v7 == enum case for DeviceIdiom.tv(_:))
  {
    v8 = 0;
    v9 = 6;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v9 = 0;
    v8 = 1;
  }

  return v9 | (v8 << 32);
}

uint64_t DeviceState.isVoiceTrigger.getter()
{
  OUTLINED_FUNCTION_24_3();
  v0 = type metadata accessor for InputOrigin();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_20_0();
  dispatch thunk of DeviceState.inputOrigin.getter();
  v9 = InputOrigin.isVoiceTrigger.getter();
  (*(v3 + 8))(v8, v0);
  return v9 & 1;
}

uint64_t DeviceState.isTriggerlessFollowup.getter(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InputOrigin();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  v19[1] = a2;
  dispatch thunk of DeviceState.inputOrigin.getter();
  v14 = *(v6 + 104);
  v14(v11, enum case for InputOrigin.clientGenerated(_:), v3);
  v15 = specialized == infix<A>(_:_:)(v13, v11);
  v16 = *(v6 + 8);
  v16(v11, v3);
  v16(v13, v3);
  if (v15)
  {
    v17 = 1;
  }

  else
  {
    dispatch thunk of DeviceState.inputOrigin.getter();
    v14(v11, enum case for InputOrigin.triggerlessFollowup(_:), v3);
    v17 = specialized == infix<A>(_:_:)(v13, v11);
    v16(v11, v3);
    v16(v13, v3);
  }

  return v17 & 1;
}

uint64_t InputOrigin.isVoiceTrigger.getter()
{
  v1 = type metadata accessor for InputOrigin();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = *(v4 + 104);
  v10(v8 - v7, enum case for InputOrigin.voiceTrigger(_:), v1);
  v11 = specialized == infix<A>(_:_:)(v0, v9);
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_20_0();
  v12(v13);
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v10(v9, enum case for InputOrigin.bluetoothVoiceTrigger(_:), v1);
    v14 = specialized == infix<A>(_:_:)(v0, v9);
    v15 = OUTLINED_FUNCTION_20_0();
    v12(v15);
  }

  return v14 & 1;
}

uint64_t DeviceState.isStandaloneIOS.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPod.getter()))
  {
    OUTLINED_FUNCTION_20_0();
    v0 = dispatch thunk of DeviceState.isCarPlay.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t DeviceState.isGroupFaceTimeDeviceUnsupported(app:)()
{
  if (!App.isFirstParty()())
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_26();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_26();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_26();

  return dispatch thunk of DeviceState.isMac.getter();
}

uint64_t DeviceState.siriInputLocale.getter()
{
  v0 = dispatch thunk of DeviceState.preferencesLanguageCode.getter();
  if (v1)
  {

    return Locale.init(identifier:)(v0);
  }

  else
  {
    OUTLINED_FUNCTION_5_26();

    return dispatch thunk of DeviceState.siriLocale.getter();
  }
}

uint64_t DeviceState.isSiriEmergencyCallingUnsupported(featureManager:)(uint64_t a1)
{
  if (dispatch thunk of DeviceState.isPad.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isMac.getter()))
  {
    v2 = (*(*a1 + 144))() ^ 1;
    return v2 & 1;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isPod.getter())
  {
    v2 = 1;
    return v2 & 1;
  }

  OUTLINED_FUNCTION_20_0();

  return dispatch thunk of DeviceState.isXRDevice.getter();
}

BOOL DeviceState.isSearchCallHistoryUnavailable(app:)()
{
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_47();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_47();
  if ((dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 && App.isFirstParty()())
  {
    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_2_47();
    if (dispatch thunk of DeviceState.isHomePod.getter())
    {
      return !App.isFirstParty()();
    }

    OUTLINED_FUNCTION_2_47();
    return (dispatch thunk of DeviceState.isPad.getter() & 1) != 0 && !App.isFirstParty()();
  }
}

uint64_t DeviceState.isSendingFaceTimeLinkDeviceUnsupported(app:)()
{
  if (dispatch thunk of DeviceState.isWatch.getter() & 1) != 0 || (dispatch thunk of DeviceState.isHomePod.getter())
  {
    v0 = 1;
  }

  else
  {
    v0 = dispatch thunk of DeviceState.isMac.getter();
  }

  return App.isFirstParty()() & v0 & 1;
}

uint64_t DialogOutputFactory.__allocating_init(dialog:dialogPhase:sharedGlobals:)()
{
  OUTLINED_FUNCTION_7_8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)();
  return v3;
}

uint64_t DialogOutputFactory.dialog.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t DialogOutputFactory.dialogPhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  v4 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t DialogOutputFactory.init(dialog:dialogPhase:sharedGlobals:)()
{
  OUTLINED_FUNCTION_7_8();
  v5 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  v6 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40(v6);
  (*(v7 + 32))(v1 + v5, v2);
  outlined init with take of SPHConversation(v0, v1 + 16);
  *(v1 + 56) = v4;
  *(v1 + 64) = v3;
  return v1;
}

uint64_t DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v12, v1, v2);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11[3] = v3;
  v11[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_40(v3);
  (*(v5 + 16))();
  v6 = type metadata accessor for SimpleOutputFlowAsync();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v3 = *(*a2 + 128);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v2;
  v5[1] = closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync();

  return v7(v2 + 16);
}

uint64_t closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  if (*(v0 + 56))
  {
    *(v0 + 64) = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();
  }

  else
  {
    outlined init with take of SPHConversation((v0 + 16), *(v0 + 72));
  }

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t partial apply for closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return closure #1 in DialogOutputFactory.makeSimpleOutputFlowAsync()(v4, v0);
}

uint64_t DialogOutputFactory.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in DialogOutputFactory.makeOutput(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a5;
  v7 = *(*a6 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v6[10] = v9;
  *v9 = v6;
  v9[1] = closure #1 in DialogOutputFactory.makeOutput(_:);

  return v11(v6 + 2);
}

uint64_t closure #1 in DialogOutputFactory.makeOutput(_:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v5, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 72);
  (*(v0 + 64))(v0 + 16);
  outlined destroy of Result<Output, Error>(v0 + 16);
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t partial apply for closure #1 in DialogOutputFactory.makeOutput(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_10_3(v7);

  return closure #1 in DialogOutputFactory.makeOutput(_:)(v9, v2, v3, v4, v5, v6);
}

uint64_t DialogOutputFactory.makeOutput()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  v1 = async function pointer to Result<>.init(catching:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow6Output_pMd, &_s11SiriKitFlow6Output_pMR);
  *v2 = v0;
  v2[1] = DialogOutputFactory.makeOutput();
  v4 = v0[2];
  v5 = v0[3];

  return Result<>.init(catching:)(v4, &async function pointer to partial apply for closure #1 in DialogOutputFactory.makeOutput(), v5, v3);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v4 = v3;

  OUTLINED_FUNCTION_11();

  return v5();
}

{
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 104);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = OUTLINED_FUNCTION_7_28();
  v5(v4);
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_40(v0);
  (*(v6 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 112) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_11_28(v7);

  return DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(DialogOutputFactory.makeOutput(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    OUTLINED_FUNCTION_11();

    return v9();
  }
}

{
  OUTLINED_FUNCTION_15();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_11();
  v2 = v0[15];

  return v1();
}

uint64_t closure #1 in DialogOutputFactory.makeOutput()(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return _swift_task_switch(closure #1 in DialogOutputFactory.makeOutput(), 0, 0);
}

uint64_t closure #1 in DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 104);
  v3 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v4 = OUTLINED_FUNCTION_7_28();
  v5(v4);
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_40(v0);
  (*(v6 + 16))();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 112) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_11_28(v7);

  return DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)();
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in DialogOutputFactory.makeOutput(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 7);
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    OUTLINED_FUNCTION_11();

    return v9();
  }
}

uint64_t partial apply for closure #1 in DialogOutputFactory.makeOutput()()
{
  OUTLINED_FUNCTION_15();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_10_3(v2);

  return closure #1 in DialogOutputFactory.makeOutput()(v4, v0);
}

uint64_t DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = type metadata accessor for DialogPhase();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for OutputGenerationManifest();
  v1[9] = v8;
  v9 = *(v8 - 8);
  v1[10] = v9;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v11, v12, v13);
}

{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  OutputGenerationManifest.init(dialogPhase:_:)();
  v4 = v3[3];
  v0[12] = v4;
  v0[13] = v3[4];
  v0[14] = __swift_project_boxed_opaque_existential_1(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = xmmword_426260;
  v6 = *(v2 + 64);
  v10 = (*(v2 + 56) + **(v2 + 56));
  v7 = *(*(v2 + 56) + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);

  return v10();
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 136) = v0;

  if (v0)
  {
    v11 = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  }

  else
  {
    *(v5 + 144) = v3;
    v11 = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  }

  return _swift_task_switch(v11, 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  *(v0[15] + 32) = v0[18];
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[19] = v2;
  *v2 = v3;
  v2[1] = DialogOutputFactory.makeDialogOutput(responseGenerator:dialogPhase:);
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[2];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v9, v4, v8, v6, v7);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 152);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_11();

  return v2();
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[15];
  v2 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);
  *(v1 + 16) = 0;

  OUTLINED_FUNCTION_11();
  v4 = v0[17];

  return v3();
}

uint64_t DialogOutputFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin19DialogOutputFactory_dialogPhase;
  v3 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_40(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t DialogOutputFactory.__deallocating_deinit()
{
  DialogOutputFactory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DialogOutputFactory()
{
  result = type metadata singleton initialization cache for DialogOutputFactory;
  if (!type metadata singleton initialization cache for DialogOutputFactory)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DialogOutputFactory()
{
  result = type metadata accessor for DialogPhase();
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

uint64_t outlined destroy of Result<Output, Error>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhoneCallFlowDelegatePlugin::DIIdentifier __swiftcall DIIdentifier.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v14[0] = 46;
  v14[1] = 0xE100000000000000;
  v13[2] = v14;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), v13, a1._countAndFlagsBits, a1._object);
  if (v3)
  {
    v4 = 0x8000000000456A70;
    v5 = 0xD000000000000025;
  }

  else
  {
    String.subscript.getter();
    v5 = static String._fromSubstring(_:)();
    v4 = v6;

    v7 = String.index(after:)();
    specialized Collection.subscript.getter(v7, countAndFlagsBits, object);

    countAndFlagsBits = static String._fromSubstring(_:)();
    object = v8;
  }

  v9 = v5;
  v10 = v4;
  v11 = countAndFlagsBits;
  v12 = object;
  result.id._object = v12;
  result.id._countAndFlagsBits = v11;
  result.namespace._object = v10;
  result.namespace._countAndFlagsBits = v9;
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DIIdentifier.payloadId.getter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v6._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v6);
  v7._countAndFlagsBits = a3;
  v7._object = a4;
  String.append(_:)(v7);
}

uint64_t DICodable.userData()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PropertyListEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v8 = *(a2 + 16);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  if (!v2)
  {
    v10 = objc_opt_self();
    OUTLINED_FUNCTION_69();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22[0] = 0;
    v12 = [v10 propertyListWithData:isa options:0 format:0 error:v22];

    if (v12)
    {
      v13 = v22[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v14 = v20;
      }

      else
      {
        v14 = Dictionary.init(dictionaryLiteral:)();
      }

      v21 = v14;
      static DICodable.adaptUserDataAfterEncoder(_:)(&v21, a1, a2);
      v18 = OUTLINED_FUNCTION_69();
      outlined consume of Data._Representation(v18, v19);
      return v21;
    }

    else
    {
      v15 = v22[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v16 = OUTLINED_FUNCTION_69();
      return outlined consume of Data._Representation(v16, v17);
    }
  }

  return result;
}

uint64_t static DICodable.adaptUserDataAfterEncoder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v8 = *(v6 - 3);
      v7 = *(v6 - 2);
      v9 = *v6;
      v6 += 4;

      v8(a1);

      --v5;
    }

    while (v5);
  }
}

uint64_t DICodable.toDirectInvocation()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  v6 = v5;
  v8 = v7;

  v9._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v9);
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  String.append(_:)(v10);

  DICodable.userData()(a1, a2);
  if (v2)
  {
  }

  else
  {
    return Parse.DirectInvocation.init(identifier:userData:)();
  }
}

objc_class *DICodable.toDirectInvocationPayload()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SKIDirectInvocationPayload();
  v5 = (*(a2 + 24))(a1, a2);
  v7 = v6;
  v9 = v8;
  v17 = v5;
  v18 = v10;

  v11._countAndFlagsBits = OUTLINED_FUNCTION_0_50();
  String.append(_:)(v11);
  v12._countAndFlagsBits = v7;
  v12._object = v9;
  String.append(_:)(v12);

  v13 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v14 = DICodable.userData()(a1, a2);
  isa = v13;
  if (!v2)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v13 setUserData:isa, v17, v18];
  }

  return v13;
}

id DICodable.toStartLocalRequest(deviceState:)(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = DeviceState.asInvocationContext.getter();
  v5 = OUTLINED_FUNCTION_69();
  v7 = DICodable.toDirectInvocationPayload()(v5, v6);
  if (!v1)
  {
    v8 = v7;
    v9 = objc_opt_self();
    v10 = [v9 runSiriKitExecutorCommandWithContext:v4 payload:v8];

    v2 = [v9 wrapCommandInStartLocalRequest:v10];
    v4 = v10;
  }

  return v2;
}

uint64_t static DICodable.from(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    a1 = Dictionary.init(dictionaryLiteral:)();
  }

  v19 = a1;

  static DICodable.adaptUserDataBeforeDecoder(_:)(&v19, a2, a3);
  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = 0;
  v7 = [v5 dataWithPropertyList:isa format:200 options:0 error:&v18];

  v8 = v18;
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = type metadata accessor for PropertyListDecoder();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    v15 = *(a3 + 8);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v9, v11);
  }

  else
  {
    v17 = v8;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t static DICodable.adaptUserDataBeforeDecoder(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 32))(a2, a3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 4;

      v8(a1);

      --v5;
    }

    while (v5);
  }
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

unint64_t type metadata accessor for SKIDirectInvocationPayload()
{
  result = lazy cache variable for type metadata for SKIDirectInvocationPayload;
  if (!lazy cache variable for type metadata for SKIDirectInvocationPayload)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SKIDirectInvocationPayload);
  }

  return result;
}

void (*static DICodableOverride.undoEncoding<A>(name:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t *a1)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;

  return partial apply for closure #1 in static DICodableOverride.undoEncoding<A>(name:type:);
}

void closure #1 in static DICodableOverride.undoEncoding<A>(name:type:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v10)
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v9, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v11 = objc_opt_self();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v29[0] = 0;
        v13 = [v11 dataWithPropertyList:isa format:200 options:0 error:v29];

        v14 = v29[0];
        if (v13)
        {
          v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = type metadata accessor for PropertyListDecoder();
          v19 = *(v18 + 48);
          v20 = *(v18 + 52);
          swift_allocObject();
          PropertyListDecoder.init()();
          v29[3] = a5;
          __swift_allocate_boxed_opaque_existential_1(v29);
          dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

          specialized Dictionary.subscript.setter(v29, a2, a3);
          outlined consume of Data._Representation(v15, v17);
        }

        else
        {
          v21 = v14;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (one-time initialization token for siriPhone != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          __swift_project_value_buffer(v22, static Logger.siriPhone);

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v29[0] = swift_slowAlloc();
            *v25 = 136315394;
            *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v29);
            *(v25 + 12) = 2080;
            swift_getMetatypeMetadata();
            v26 = String.init<A>(describing:)();
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v29);

            *(v25 + 14) = v28;
            _os_log_impl(&dword_0, v23, v24, "Could not undo encoding for property %s of type %s", v25, 0x16u);
            swift_arrayDestroy();
          }
        }
      }
    }
  }
}

void partial apply for closure #1 in static DICodableOverride.undoEncoding<A>(name:type:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  closure #1 in static DICodableOverride.undoEncoding<A>(name:type:)(a1, *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 16));
}

uint64_t (*static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t a1)
{
  v39 = a1;
  v40 = a7;
  v36 = a2;
  v37 = a6;
  v34 = a3;
  v31 = a4;
  v32 = a5;
  v38 = type metadata accessor for Transformer();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v38);
  v35 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v33 = *(v10 + 16);
  v33(&v29 - v13, a3);
  v15 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = a5;
  v17 = v36;
  v18 = v37;
  v19 = v39;
  v20 = v40;
  *(v16 + 4) = v37;
  *(v16 + 5) = v20;
  *(v16 + 6) = v19;
  *(v16 + 7) = v17;
  v30 = *(v10 + 32);
  v21 = v14;
  v22 = v38;
  v30(&v16[v15], v21, v38);
  v23 = v35;
  (v33)(v35, v34, v22);
  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 2) = v31;
  *(v24 + 3) = v25;
  v26 = v39;
  v27 = v40;
  *(v24 + 4) = v18;
  *(v24 + 5) = v27;
  *(v24 + 6) = v26;
  *(v24 + 7) = v17;
  v30(&v24[v15], v23, v38);
  swift_bridgeObjectRetain_n();
  return partial apply for closure #1 in static DICodableOverride.transform<A, B>(name:transformer:);
}

void closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v39 = *(a6 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(a1);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v23 = *a1;
  v24 = a2;
  v25 = a3;
  specialized Dictionary.subscript.getter(v24, a3, v23, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, a5);
    (*(v19 + 32))(v22, v18, a5);
    type metadata accessor for Transformer();
    v26 = Transformer.transform.getter();
    v27 = v40;
    v26(v22);

    v44 = a6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v37 = v39;
    (*(v39 + 16))(boxed_opaque_existential_1, v27, a6);

    specialized Dictionary.subscript.setter(&v43, v24, v25);
    (*(v37 + 8))(v27, a6);
    (*(v19 + 8))(v22, a5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, a5);
    (*(v14 + 8))(v18, v13);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = a5;
      *&v43 = v32;
      *v31 = 136315138;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "No entry in userData of type %s to override", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }
}

void closure #2 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v39 = *(a5 - 8);
  v11 = *(v39 + 64);
  __chkstk_darwin(a1);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v38 - v17;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v23 = *a1;
  v24 = a2;
  v25 = a3;
  specialized Dictionary.subscript.getter(v24, a3, v23, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v18, 0, 1, a6);
    (*(v19 + 32))(v22, v18, a6);
    type metadata accessor for Transformer();
    v26 = Transformer.reverseTransform.getter();
    v27 = v40;
    v26(v22);

    v44 = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    v37 = v39;
    (*(v39 + 16))(boxed_opaque_existential_1, v27, a5);

    specialized Dictionary.subscript.setter(&v43, v24, v25);
    (*(v37 + 8))(v27, a5);
    (*(v19 + 8))(v22, a6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, a6);
    (*(v14 + 8))(v18, v13);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.siriPhone);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = a6;
      *&v43 = v32;
      *v31 = 136315138;
      swift_getMetatypeMetadata();
      v33 = String.init<A>(describing:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_0, v29, v30, "No entry in userData of type %s to override", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }
  }
}

uint64_t partial apply for closure #1 in static DICodableOverride.transform<A, B>(name:transformer:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = *(type metadata accessor for Transformer() - 8);
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2 + ((*(v8 + 80) + 64) & ~*(v8 + 80));

  return a2(a1, v9, v10, v11, v4, v5, v6, v7);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_0(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t DictionaryBackedCache.__allocating_init(timeToLiveInSeconds:capacity:nowDateProvider:)()
{
  OUTLINED_FUNCTION_5_36();
  v0 = swift_allocObject();
  DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)();
  return v0;
}

void *DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)()
{
  OUTLINED_FUNCTION_5_36();
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for Optional();
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v8 = *(v5 + 96);
  v1[2] = Dictionary.init(minimumCapacity:)();
  v1[3] = v4;
  v1[4] = v3;
  v1[5] = v2;
  v1[6] = v0;
  return v1;
}

uint64_t DictionaryBackedCache.count.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = v1[10];
  v4 = v1[11];
  type metadata accessor for Optional();
  type metadata accessor for Date();

  swift_getTupleTypeMetadata2();
  v5 = v1[12];
  v6 = Dictionary.count.getter();

  return v6;
}

void DictionaryBackedCache.get(key:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v59 = v2;
  v57 = v3;
  v4 = *v0;
  v5 = type metadata accessor for Date();
  OUTLINED_FUNCTION_9_1();
  v55 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v4[11];
  v51 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_16_2();
  v53 = v18;
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  OUTLINED_FUNCTION_9_1();
  v56 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  v27 = &v49 - v26;
  OUTLINED_FUNCTION_4_24();
  v28 = v1[2];
  v29 = v4[10];
  v30 = v4[12];

  v52 = v29;
  Dictionary.subscript.getter();

  if (__swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2) == 1)
  {
    (*(v14 + 8))(v21, v12);
LABEL_7:
    OUTLINED_FUNCTION_7_6();
    v45 = v58;
    goto LABEL_8;
  }

  v50 = v12;
  v31 = v57;
  v32 = (*(v56 + 32))(v27, v21, TupleTypeMetadata2);
  v33 = *(TupleTypeMetadata2 + 48);
  v34 = v1[6];
  v35 = v54;
  (v1[5])(v32);
  lazy protocol witness table accessor for type Date and conformance Date();
  LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v55 + 8))(v35, v5);
  if ((v34 & 1) == 0)
  {
    (*(*v1 + 192))(v59);
    v46 = OUTLINED_FUNCTION_8_36();
    v47(v46);
    goto LABEL_7;
  }

  v36 = v1[2];

  v37 = v53;
  Dictionary.subscript.getter();

  v38 = OUTLINED_FUNCTION_8_36();
  v39(v38);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, TupleTypeMetadata2);
  v41 = v58;
  if (!EnumTagSinglePayload)
  {
    OUTLINED_FUNCTION_40(v51);
    (*(v48 + 16))(v31, v37);
    (*(v14 + 8))(v37, v50);
    goto LABEL_9;
  }

  (*(v14 + 8))(v37, v50);
  OUTLINED_FUNCTION_7_6();
  v45 = v41;
LABEL_8:
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
LABEL_9:
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

void DictionaryBackedCache.put(key:value:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v36 = v3;
  v34 = v4;
  v5 = *v0;
  v6 = *(*v0 + 88);
  v7 = type metadata accessor for Optional();
  v8 = type metadata accessor for Date();
  v35 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(type metadata accessor for Optional() - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_2_48();
  v12 = *(v5 + 80);
  OUTLINED_FUNCTION_9_1();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  v18 = __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v37 = v8;
  v33 = *(v8 - 8);
  v21 = *(v33 + 64);
  v22 = __chkstk_darwin(v18);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2[6];
  (v2[5])(v22);
  OUTLINED_FUNCTION_4_24();
  v26 = v2[2];
  v27 = *(v5 + 96);

  v28 = Dictionary.count.getter();

  if (v28 == v2[4])
  {
    DictionaryBackedCache.evict(at:)();
  }

  (*(v14 + 16))(v20, v34, v12);
  v29 = *(TupleTypeMetadata2 + 48);
  OUTLINED_FUNCTION_40(v35);
  (*(v30 + 16))(v1);
  v31 = v2[3];
  Date.addingTimeInterval(_:)();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, TupleTypeMetadata2);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  (*(v33 + 8))(v24, v37);
  OUTLINED_FUNCTION_65();
}

uint64_t DictionaryBackedCache.remove(key:)(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 88);
  type metadata accessor for Optional();
  type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(type metadata accessor for Optional() - 8) + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_2_48();
  OUTLINED_FUNCTION_33_0();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_9_1();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  (*(v15 + 16))(&v22 - v14, a1, v10);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, TupleTypeMetadata2);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_0();
  v20 = *(v19 + 96);
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

void DictionaryBackedCache.evict(at:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v0;
  v44 = *v0;
  v3 = v44[10];
  v4 = v44[11];
  v5 = type metadata accessor for Optional();
  v41 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v39 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_2_48();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_9_1();
  v42 = v14;
  v43 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  OUTLINED_FUNCTION_9_1();
  v40 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v23);
  v25 = &v37 - v24;
  DictionaryBackedCache.evictStaleEntries(at:)();
  if ((v26 & 1) == 0)
  {
    v38 = v5;
    OUTLINED_FUNCTION_4_24();
    v45 = v0[2];
    v27 = v44[12];
    type metadata accessor for Dictionary();
    swift_getWitnessTable();
    Collection.randomElement()();
    if (__swift_getEnumTagSinglePayload(v1, 1, v7) == 1)
    {
      (*(v39 + 8))(v1, v8);
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v3);
    }

    else
    {
      v31 = v1 + *(v7 + 48);
      v32 = *(TupleTypeMetadata2 + 48);
      v33 = v40;
      v34 = *(v40 + 32);
      v34(v19, v1, v3);
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v3);
      OUTLINED_FUNCTION_40(v41);
      (*(v35 + 8))(v31 + v32);
      OUTLINED_FUNCTION_40(v38);
      (*(v36 + 8))(v31);
      if (__swift_getEnumTagSinglePayload(v19, 1, v3) != 1)
      {
        v34(v25, v19, v3);
        (*(*v2 + 192))(v25);
        (*(v33 + 8))(v25, v3);
        goto LABEL_7;
      }
    }

    (*(v42 + 8))(v19, v43);
  }

LABEL_7:
  OUTLINED_FUNCTION_65();
}

void DictionaryBackedCache.evictStaleEntries(at:)()
{
  OUTLINED_FUNCTION_66();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_33_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_33_0();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for Optional();
  v9 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9_1();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_16_2();
  v52 = v16;
  __chkstk_darwin(v17);
  v51 = &v43 - v18;
  swift_beginAccess();
  v19 = v3;
  v20 = v0[2];
  v61 = v5;
  v62 = v7;
  v54 = v0;
  v63 = *(v19 + 96);
  v21 = v63;
  v64 = v2;

  v43 = v21;
  v22 = Dictionary.filter(_:)();
  v23 = *(v22 + 64);
  v45 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v44 = (v24 + 63) >> 6;
  v59 = v5;
  v50 = v5 - 8;
  v58 = TupleTypeMetadata2;
  v49 = TupleTypeMetadata2 - 8;
  v56 = v8;
  v48 = v8 - 8;
  v55 = v9;
  v47 = v9 - 8;
  v46 = (v12 + 8);
  v57 = v22;

  v27 = 0;
  v28 = v58;
  while (v26)
  {
    v29 = v27;
LABEL_9:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = v57;
    v33 = v59;
    v34 = *(v59 - 8);
    v35 = v51;
    (*(v34 + 16))(v51, *(v57 + 48) + *(v34 + 72) * v31, v59);
    v36 = *(v28 - 8);
    v37 = *(v32 + 56) + *(v36 + 72) * v31;
    v38 = v53;
    v39 = &v35[*(v53 + 48)];
    (*(v36 + 16))(v39, v37, v28);
    v60 = *(v28 + 48);
    v40 = v52;
    v41 = v52 + *(v38 + 48);
    (*(v34 + 32))(v52, v35, v33);
    v42 = *(v28 + 48);
    (*(*(v56 - 8) + 32))(v41, v39);
    (*(*(v55 - 8) + 32))(v41 + v42, &v39[v60]);
    (*(*v54 + 192))(v40);
    (*v46)(v40, v38);
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v44)
    {

      Dictionary.isEmpty.getter();

      OUTLINED_FUNCTION_65();
      return;
    }

    v26 = *(v45 + 8 * v29);
    ++v27;
    if (v26)
    {
      v27 = v29;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL closure #1 in DictionaryBackedCache.evictStaleEntries(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Optional();
  type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = swift_getTupleTypeMetadata2();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(*(a4 - 8) + 16))(&v16 - v11, a1, a4);
  (*(*(TupleTypeMetadata2 - 8) + 16))(&v12[*(v8 + 48)], a2, TupleTypeMetadata2);
  v13 = *(TupleTypeMetadata2 + 48);
  lazy protocol witness table accessor for type Date and conformance Date();
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v9 + 8))(v12, v8);
  return (v14 & 1) == 0;
}

BOOL partial apply for closure #1 in DictionaryBackedCache.evictStaleEntries(at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return closure #1 in DictionaryBackedCache.evictStaleEntries(at:)(a1, a2, v2[5], v2[2]);
}

uint64_t protocol witness for DictionaryCodable.toDictionary() in conformance AnnounceVoicemailHintHistory()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return specialized DictionaryCodable.toDictionary()();
}

uint64_t specialized DictionaryCodable.toDictionary()()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v12];

  if (v6)
  {
    v7 = v12[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v8 = v11;
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v0 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
    outlined consume of Data._Representation(v1, v3);
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v1, v3);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v12];

  if (v6)
  {
    v7 = v12[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v8 = v11;
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v0 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
    outlined consume of Data._Representation(v1, v3);
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v1, v3);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v12];

  if (v6)
  {
    v7 = v12[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v8 = v11;
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v0 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
    outlined consume of Data._Representation(v1, v3);
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v1, v3);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[0] = 0;
  v6 = [v4 JSONObjectWithData:isa options:0 error:v12];

  if (v6)
  {
    v7 = v12[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    if (swift_dynamicCast())
    {
      v8 = v11;
    }

    else
    {
      v8 = Dictionary.init(dictionaryLiteral:)();
    }

    v0 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
    outlined consume of Data._Representation(v1, v3);
  }

  else
  {
    v9 = v12[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v1, v3);

    return Dictionary.init(dictionaryLiteral:)();
  }

  return v0;
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance AnnounceVoicemailHintHistory@<X0>(uint64_t a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5 & 1;
  return result;
}

id specialized static DictionaryCodable.fromDictionary(dictionary:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AnnounceVoicemailHintHistory and conformance AnnounceVoicemailHintHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AppNameSpecifiedByUserSignalCollectionHistory and conformance AppNameSpecifiedByUserSignalCollectionHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t specialized static DictionaryCodable.fromDictionary(dictionary:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type ForcedAppDisambiguationHistory and conformance ForcedAppDisambiguationHistory();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v6);
    return v9;
  }

  else
  {
    v7 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }
}

uint64_t static DictionaryCodable.fromDictionary(dictionary:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  static DictionaryEncoderDecoder.decode<A>(type:_:)();

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a1);
}

uint64_t protocol witness for DictionaryCodable.toDictionary() in conformance AppNameSpecifiedByUserSignalCollectionHistory()
{
  v1 = *v0;
  v2 = v0[1];
  return specialized DictionaryCodable.toDictionary()();
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance AppNameSpecifiedByUserSignalCollectionHistory@<X0>(void *a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t one-time initialization function for encoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id static DictionaryEncoderDecoder.encode<A>(_:)(id a1)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v3 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14[0] = 0;
    v9 = [v7 JSONObjectWithData:isa options:0 error:v14];

    if (v9)
    {
      v10 = v14[0];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      if (swift_dynamicCast())
      {
        v11 = v13;
      }

      else
      {
        v11 = Dictionary.init(dictionaryLiteral:)();
      }

      a1 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
      outlined consume of Data._Representation(v5, v6);
    }

    else
    {
      a1 = v14[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v5, v6);
    }
  }

  return a1;
}

uint64_t static DictionaryEncoderDecoder.decode<A>(type:_:)()
{
  v0 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v9];

  v3 = v9;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (one-time initialization token for decoder != -1)
    {
      swift_once();
    }

    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    return outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v8 = v3;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t protocol witness for DictionaryCodable.toDictionary() in conformance ForcedAppDisambiguationHistory()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  return specialized DictionaryCodable.toDictionary()();
}

uint64_t protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance ForcedAppDisambiguationHistory@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

id protocol witness for static DictionaryCodable.fromDictionary(dictionary:) in conformance OneTimeHintHistory@<X0>(uint64_t a1@<X8>)
{
  result = specialized static DictionaryCodable.fromDictionary(dictionary:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type OneTimeHintHistory and conformance OneTimeHintHistory()
{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory;
  if (!lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OneTimeHintHistory and conformance OneTimeHintHistory);
  }

  return result;
}

id SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(void *a1)
{
  v2 = v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = DeviceState.asInvocationContext.getter();
  v5 = objc_opt_self();
  v6 = [v5 runSiriKitExecutorCommandWithContext:v4 payload:v2];
  v7 = [v5 wrapCommandInStartLocalRequest:v6];

  return v7;
}

id static SKIDirectInvocationPayload.contactDisambiguation(contact:)(void *a1)
{
  v2 = type metadata accessor for CommonDirectAction();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "#DirectInvocationPayload Building disambiguation item for contact: %@", v10, 0xCu);
    outlined destroy of NSObject?(v11);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  *v5 = v7;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SKIDirectInvocationPayload();
  v13 = v7;
  CommonDirectAction.identifier.getter();
  v14 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  v15 = CommonDirectAction.userData.getter();
  v16 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v16, v14);
  v17 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    v26 = outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "#DirectInvocationPayload built payload: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  outlined destroy of CommonDirectAction(v5);
  return v17;
}

uint64_t outlined bridged method (pb) of @objc SKIDirectInvocationPayload.userData.getter(void *a1)
{
  v1 = [a1 userData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  v16 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v17 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  (*(v10 + 32))(&v18[v17], &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return DisambiguationItemFactory.buildDisambiguationItemList()(a7, a8);
}

uint64_t partial apply for closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = v1[7];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:);

  return closure #1 in DisambiguationItemFactory.buildDisambiguationItemList(_:)(a1, v7, v8, v9, v10, v1 + v6, v4, v5);
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList()(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = swift_task_alloc();
  v3[15] = v4;
  *v4 = v3;
  v4[1] = DisambiguationItemFactory.buildDisambiguationItemList();

  return DisambiguationItemFactory.buildDisambiguationItems()();
}

uint64_t DisambiguationItemFactory.buildDisambiguationItemList()()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13_1();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  v31 = v0;
  v29 = v0[16];
  v1 = v0[13];
  v2 = v0[12];
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_2_49();
  v5(v4);
  swift_getAssociatedTypeWitness();
  _arrayForceCast<A, B>(_:)();

  v6 = *(v1 + 24);
  v7 = OUTLINED_FUNCTION_2_49();
  v6(v7);
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 8))(v8, v9);
  v10 = OUTLINED_FUNCTION_2_49();
  v6(v10);
  v11 = v0[10];
  v12 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
  (*(v12 + 16))(v11, v12);
  v13 = type metadata accessor for SiriKitDisambiguationList();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.siriPhone);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136315138;

    v23 = SiriKitDisambiguationList.description.getter(v22);
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_0, v18, v19, "Finished building SiriKitDisambiguationList: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v27 = v0[1];

  return v27(v16);
}

uint64_t DisambiguationItemFactory.buildDisambiguationItems()()
{
  OUTLINED_FUNCTION_15();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[9] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[10] = v5;
  v1[11] = *(v5 + 64);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_13_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22[2] = _swiftEmptyArrayStorage;
  v23 = v22[8];
  v24 = v22[9];
  v22[14] = (*(v22[7] + 16))(v22[6]);
  v25 = Array.startIndex.getter();
  v22[3] = v25;
  if (v25 != Array.endIndex.getter())
  {
    v30 = v22[14];
    v31 = v22[9];
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v22[10] + 16))(v22[13], v22[14] + ((*(v22[10] + 80) + 32) & ~*(v22[10] + 80)) + *(v22[10] + 72) * v25, v22[9]);
    }

    else
    {
      v59 = v22[14];
      v60 = v22[11];
      v61 = v22[9];
      v51 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v60 != 8)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      v62 = v51;
      v63 = v22[13];
      v64 = v22[9];
      v65 = v22[10];
      v22[4] = v62;
      (*(v65 + 16))(v63, v22 + 4, v64);
      swift_unknownObjectRelease();
    }

    v34 = v22[13];
    v33 = v22[14];
    v35 = v22[12];
    v36 = v22[9];
    v37 = v22[10];
    v38 = v22[8];
    v66 = *(v22 + 3);
    Array.formIndex(after:)(v22 + 3);
    (*(v37 + 32))(v35, v34, v36);
    v39 = swift_task_alloc();
    OUTLINED_FUNCTION_4_25(v39, v40, v41, v42, v43, v44, v45, v46, v47);
    *(v48 + 32) = v38;
    *(v48 + 40) = v35;
    v49 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v50 = swift_task_alloc();
    v22[16] = v50;
    type metadata accessor for SiriKitDisambiguationItem();
    *v50 = v22;
    v50[1] = DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v27 = v22[12];
  v26 = v22[13];

  v28 = v22[1];

  return v28(_swiftEmptyArrayStorage);
}

{
  v23 = *(v22 + 40);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (*(v22 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v22 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v24 = *(v22 + 112);
  v25 = *(v22 + 96);
  v26 = *(v22 + 72);
  v27 = *(v22 + 80);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v28 = *(v22 + 16);
  (*(v27 + 8))(v25, v26);
  v29 = Array.endIndex.getter();
  v30 = *(v22 + 24);
  v31 = *(v22 + 112);
  if (v30 != v29)
  {
    v37 = *(v22 + 72);
    v38 = *(v22 + 112);
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(*(v22 + 80) + 16))(*(v22 + 104), *(v22 + 112) + ((*(*(v22 + 80) + 80) + 32) & ~*(*(v22 + 80) + 80)) + *(*(v22 + 80) + 72) * v30, *(v22 + 72));
    }

    else
    {
      v66 = *(v22 + 88);
      v67 = *(v22 + 72);
      v58 = _ArrayBuffer._getElementSlowPath(_:)();
      if (v66 != 8)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      }

      v68 = v58;
      v69 = *(v22 + 104);
      v70 = *(v22 + 72);
      v71 = *(v22 + 80);
      *(v22 + 32) = v68;
      (*(v71 + 16))(v69, v22 + 32, v70);
      swift_unknownObjectRelease();
    }

    v41 = *(v22 + 104);
    v40 = *(v22 + 112);
    v42 = *(v22 + 96);
    v43 = *(v22 + 72);
    v44 = *(v22 + 80);
    v45 = *(v22 + 64);
    v72 = *(v22 + 48);
    Array.formIndex(after:)((v22 + 24));
    (*(v44 + 32))(v42, v41, v43);
    v46 = swift_task_alloc();
    OUTLINED_FUNCTION_4_25(v46, v47, v48, v49, v50, v51, v52, v53, v54);
    *(v55 + 32) = v45;
    *(v55 + 40) = v42;
    v56 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v57 = swift_task_alloc();
    *(v22 + 128) = v57;
    type metadata accessor for SiriKitDisambiguationItem();
    *v57 = v22;
    v57[1] = DisambiguationItemFactory.buildDisambiguationItems();
    OUTLINED_FUNCTION_3_27();

    return withCheckedContinuation<A>(isolation:function:_:)(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v32 = *(v22 + 112);

  v34 = *(v22 + 96);
  v33 = *(v22 + 104);

  v35 = *(v22 + 8);

  return v35(v28);
}

uint64_t closure #1 in DisambiguationItemFactory.buildDisambiguationItems()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  (*(v10 + 16))(&v18 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = _s27PhoneCallFlowDelegatePlugin25DisambiguationItemFactoryPAAE05buildF5Items33_C32737E71944EA4F5AB058928C30BAB3LLSay07SiriKitC00rsfG0CGyYaFyScCyAHs5NeverOGXEfU_yAHnYucALcfu_yAHnYucfu0_TA;
  *(v16 + 24) = v15;
  (*(a5 + 40))(a3, _s11SiriKitFlow0aB18DisambiguationItemCIegxT_ACIegg_TRTA, v16, a4, a5);
}

uint64_t static DisambiguationItemUtils.getUpdatedPersonList(selectedIndex:selectedPerson:persons:)(uint64_t a1, void *a2, unint64_t a3)
{
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.siriPhone);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_42();
    v10 = OUTLINED_FUNCTION_36();
    v26 = v10;
    *v9 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v26);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "getUpdatedPersonList# initial contacts: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  if (!a3 || !specialized Array.count.getter(a3) || specialized Array.count.getter(a3) <= a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_426260;
    *(a3 + 32) = a2;
    v17 = a2;
    goto LABEL_15;
  }

  v14 = a2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || a3 >> 62)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    a3 = result;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a1)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v16 = *(&stru_20.cmd + 8 * a1 + (a3 & 0xFFFFFFFFFFFFFF8));
  *(&stru_20.cmd + 8 * a1 + (a3 & 0xFFFFFFFFFFFFFF8)) = v14;

LABEL_15:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_42();
    v21 = OUTLINED_FUNCTION_36();
    v26 = v21;
    *v20 = 136315138;
    type metadata accessor for INPerson();

    v22 = Array.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v26);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_0, v18, v19, "getUpdatedPersonList# updated contacts: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  return a3;
}

void *static DisambiguationItemUtils.getPersonsList(container:)()
{
  v0 = type metadata accessor for SiriKitDisambiguationItemPair();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v30 - v6;
  v40 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMd, &_s11SiriKitFlow22PaginatedItemContainerVyAA0ab14DisambiguationE4PairVGMR);
  v8 = PaginatedItemContainer.items.getter();
  v10 = *(v8 + 16);
  if (v10)
  {
    v13 = *(v1 + 16);
    v12 = v1 + 16;
    v11 = v13;
    v14 = *(v12 + 64);
    v30[1] = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v37 = *(v12 + 56);
    v36 = _swiftEmptyArrayStorage;
    v38 = (v12 - 8);
    *&v9 = 136315138;
    v31 = v9;
    v32 = v12;
    v33 = v7;
    v34 = v13;
    v35 = v0;
    do
    {
      v11(v7, v15, v0);
      SiriKitDisambiguationItemPair.rawItem.getter();
      type metadata accessor for INPerson();
      if (swift_dynamicCast())
      {
        v16 = v39;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v38)(v7, v0);
        v36 = v40;
      }

      else
      {
        if (one-time initialization token for siriPhone != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, static Logger.siriPhone);
        v11(v5, v7, v0);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = OUTLINED_FUNCTION_42();
          v39 = OUTLINED_FUNCTION_36();
          v21 = v39;
          *v20 = v31;
          SiriKitDisambiguationItemPair.rawItem.getter();
          v22 = String.init<A>(describing:)();
          v23 = v5;
          v25 = v24;
          v26 = *v38;
          (*v38)(v23, v35);
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, &v39);
          v5 = v23;

          *(v20 + 4) = v27;
          _os_log_impl(&dword_0, v18, v19, "getPersonsList# couldn't retrieve pair %s as an INPerson object", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          v0 = v35;
          OUTLINED_FUNCTION_26_0();
          OUTLINED_FUNCTION_26_0();

          v26(v33, v0);
          v7 = v33;
        }

        else
        {

          v28 = *v38;
          (*v38)(v5, v0);
          v28(v7, v0);
        }

        v11 = v34;
      }

      v15 += v37;
      --v10;
    }

    while (v10);

    return v36;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

id static DisambiguationItemUtils.getSelectedPersonByName(nameComponents:persons:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v102 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v102 - v14;
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_13_5();
  v108 = v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_13_5();
  v107 = v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_13_5();
  v115 = v20;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_13_5();
  v110 = v22;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_13_5();
  v109 = v24;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_13_5();
  v116 = v26;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_13_5();
  v112 = v28;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_13_5();
  v111 = v30;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v31);
  v33 = &v102 - v32;
  v120 = specialized Array.count.getter(a2);
  if (!v120)
  {
    v36 = 0;
LABEL_99:
    if (one-time initialization token for siriPhone != -1)
    {
LABEL_115:
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    __swift_project_value_buffer(v84, static Logger.siriPhone);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v85, v86, "getSelectedPerson# no matching criteria was found", v87, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    return v36;
  }

  v114 = v15;
  v105 = v12;
  v106 = v9;
  v35 = 0;
  v118 = 0;
  LOBYTE(v15) = 0;
  v36 = 0;
  v119 = a2 & 0xC000000000000001;
  v113 = a2 & 0xFFFFFFFFFFFFFF8;
  *&v34 = 136315138;
  v104 = v34;
  v117 = a1;
  v121 = v33;
  v103 = a2;
  while (1)
  {
    if (v119)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(v113 + 16))
      {
        goto LABEL_114;
      }

      v37 = *(a2 + 8 * v35 + 32);
    }

    v122 = v37;
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    outlined init with copy of PersonNameComponents?(a1, v33);
    v39 = type metadata accessor for PersonNameComponents();
    OUTLINED_FUNCTION_21_3(v33);
    if (v46)
    {
      outlined destroy of PersonNameComponents?(v33);
    }

    else
    {
      PersonNameComponents.givenName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v40 + 8))(v41, v39);
      if (v2)
      {
        v42 = [v122 nameComponents];
        if (v42)
        {
          v43 = v42;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = 0;
        }

        else
        {
          v44 = 1;
        }

        v45 = OUTLINED_FUNCTION_3_39(v42, v44);
        v15 = v111;
        outlined init with take of PersonNameComponents?(v45, v111);
        if (OUTLINED_FUNCTION_7_29())
        {
LABEL_50:
          outlined destroy of PersonNameComponents?(v15);
LABEL_51:

          OUTLINED_FUNCTION_13_26();
          if (v46)
          {
            return v36;
          }

          OUTLINED_FUNCTION_2_50();
          a1 = v117;
LABEL_86:
          v33 = v121;
          goto LABEL_87;
        }

        PersonNameComponents.givenName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v15)
        {
          goto LABEL_51;
        }

        v46 = v33 == a1 && v2 == v15;
        if (v46)
        {
        }

        else
        {
          v33 = OUTLINED_FUNCTION_4_26();

          if ((v33 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v117;
      }
    }

    v47 = v116;
    outlined init with copy of PersonNameComponents?(a1, v116);
    OUTLINED_FUNCTION_21_3(v47);
    if (v46)
    {
      outlined destroy of PersonNameComponents?(v47);
    }

    else
    {
      PersonNameComponents.familyName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v48 + 8))(v47, v39);
      if (v2)
      {
        v49 = [v122 nameComponents];
        if (v49)
        {
          v50 = v49;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = 0;
        }

        else
        {
          v51 = 1;
        }

        v52 = OUTLINED_FUNCTION_3_39(v49, v51);
        v15 = v109;
        outlined init with take of PersonNameComponents?(v52, v109);
        if (OUTLINED_FUNCTION_7_29())
        {
          goto LABEL_50;
        }

        PersonNameComponents.familyName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v15)
        {
          goto LABEL_51;
        }

        if (v33 == a1 && v2 == v15)
        {
        }

        else
        {
          v33 = OUTLINED_FUNCTION_4_26();

          if ((v33 & 1) == 0)
          {
            goto LABEL_59;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v117;
      }
    }

    v54 = v115;
    outlined init with copy of PersonNameComponents?(a1, v115);
    OUTLINED_FUNCTION_21_3(v54);
    if (v46)
    {
      outlined destroy of PersonNameComponents?(v54);
    }

    else
    {
      PersonNameComponents.middleName.getter();
      OUTLINED_FUNCTION_1_59();
      (*(v55 + 8))(v54, v39);
      if (v2)
      {
        v56 = [v122 nameComponents];
        if (v56)
        {
          v57 = v56;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        v59 = OUTLINED_FUNCTION_3_39(v56, v58);
        v15 = v107;
        outlined init with take of PersonNameComponents?(v59, v107);
        if (OUTLINED_FUNCTION_7_29())
        {
          goto LABEL_50;
        }

        PersonNameComponents.middleName.getter();
        OUTLINED_FUNCTION_10_29();
        if (!v15)
        {
          goto LABEL_51;
        }

        if (v33 == a1 && v2 == v15)
        {
        }

        else
        {
          v33 = OUTLINED_FUNCTION_4_26();

          if ((v33 & 1) == 0)
          {
LABEL_59:

            OUTLINED_FUNCTION_13_26();
            a1 = v117;
            if (v46)
            {
              return v36;
            }

LABEL_85:
            OUTLINED_FUNCTION_2_50();
            goto LABEL_86;
          }
        }

        OUTLINED_FUNCTION_2_50();
        a1 = v117;
      }
    }

    v61 = v114;
    outlined init with copy of PersonNameComponents?(a1, v114);
    OUTLINED_FUNCTION_21_3(v61);
    if (v46)
    {
      outlined destroy of PersonNameComponents?(v61);
LABEL_70:
      if (v15)
      {
        goto LABEL_71;
      }

      v33 = v121;
      if (v38 == v120)
      {
        goto LABEL_109;
      }

      LOBYTE(v15) = 0;
      goto LABEL_87;
    }

    PersonNameComponents.nickname.getter();
    OUTLINED_FUNCTION_1_59();
    (*(v62 + 8))(v61, v39);
    if (!v2)
    {
      goto LABEL_70;
    }

    v63 = [v122 nameComponents];
    if (v63)
    {
      v64 = v63;
      static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v78 = OUTLINED_FUNCTION_3_39(v63, v65);
    v15 = v105;
    outlined init with take of PersonNameComponents?(v78, v105);
    if (OUTLINED_FUNCTION_7_29())
    {
      outlined destroy of PersonNameComponents?(v15);
LABEL_84:

      OUTLINED_FUNCTION_13_26();
      if (v46)
      {
        return v36;
      }

      goto LABEL_85;
    }

    v79 = PersonNameComponents.nickname.getter();
    v81 = v80;
    outlined destroy of PersonNameComponents?(v15);
    if (!v81)
    {
      goto LABEL_84;
    }

    if (v33 == v79 && v2 == v81)
    {
      break;
    }

    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v83)
    {
      goto LABEL_97;
    }

    v33 = v121;
    if (v38 == v120)
    {
      return v36;
    }

    OUTLINED_FUNCTION_2_50();
LABEL_87:
    ++v35;
  }

LABEL_97:
  v118 = 1;
LABEL_71:
  v33 = v121;
  if (v36)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.siriPhone);
    v90 = v122;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_42();
      v94 = OUTLINED_FUNCTION_36();
      v123[0] = v94;
      *v93 = v104;
      v95 = v90;
      v96 = v36;
      v97 = [v95 description];
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v123);

      *(v93 + 4) = v101;
      _os_log_impl(&dword_0, v91, v92, "getSelectedPerson# found another contact candidate: %s which becomes ambiguous", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    else
    {
    }

    return 0;
  }

  v66 = one-time initialization token for siriPhone;
  v67 = v122;
  if (v66 != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  __swift_project_value_buffer(v68, static Logger.siriPhone);
  v2 = v67;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_42();
    v72 = OUTLINED_FUNCTION_36();
    v123[0] = v72;
    *v71 = v104;
    v73 = [v2 description];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v123);

    *(v71 + 4) = v77;
    a2 = v103;
    _os_log_impl(&dword_0, v69, v70, "getSelectedPerson# found contact candidate: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    a1 = v117;
    OUTLINED_FUNCTION_26_0();
    v33 = v121;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_26();
  if (!v46)
  {
    LOBYTE(v15) = 1;
    v36 = v122;
    goto LABEL_87;
  }

  v36 = v122;
LABEL_109:
  if ((v118 & 1) == 0)
  {
    goto LABEL_99;
  }

  return v36;
}

uint64_t outlined init with copy of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PersonNameComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id DisambiguationReferenceResolver.resolveDisambiguationReference(_:)()
{
  v1 = type metadata accessor for MatchedResultsSetting();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = DisambiguationReferenceResolver.extractReferenceResolutionEntity(parse:)();
  if (!v17)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v39, v40, "#DisambiguationReferenceResolver No reference or entity found, returning nil");
      OUTLINED_FUNCTION_12_3();
    }

    return 0;
  }

  v18 = v17;
  v55 = v0;
  v56 = v1;
  v19 = static UsoBuilderConversionUtils.convertEntityToGraph(entity:)();
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v20 = type metadata accessor for Logger();
  v21 = __swift_project_value_buffer(v20, static Logger.siriPhone);

  v57 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v58 = v19;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v53 = v18;
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = v19;
    v29 = v27;
    v59 = v28;
    v60 = v27;
    *v26 = 136315138;
    type metadata accessor for Graph();
    v54 = v16;
    lazy protocol witness table accessor for type Graph and conformance Graph();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v60);

    *(v26 + 4) = v32;
    v16 = v54;
    _os_log_impl(&dword_0, v22, v23, "#DisambiguationReferenceResolver found entity, querying SRR for %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);

    v18 = v53;
  }

  v33 = v56;
  (*(v2 + 104))(v5, enum case for MatchedResultsSetting.defaultMatching(_:), v56);
  static PhoneReferenceResolution.resolveEntity(_:referenceResolver:matchedResultsSetting:)(v18, v55, v5, v9);
  (*(v2 + 8))(v5, v33);
  v34 = type metadata accessor for PhoneRRTarget(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v34) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v9, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetVSgMR);
    v35 = 1;
  }

  else
  {
    outlined init with copy of PhoneRRTarget.Target(v9, v16);
    outlined destroy of PhoneRRTarget.Target(v9, type metadata accessor for PhoneRRTarget);
    v35 = 0;
  }

  v41 = type metadata accessor for PhoneRRTarget.Target(0);
  __swift_storeEnumTagSinglePayload(v16, v35, 1, v41);
  outlined init with copy of PhoneRRTarget.Target?(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v41) == 1)
  {
    outlined destroy of PhoneCallNLIntent?(v14, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
LABEL_18:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v44, v45, "#DisambiguationReferenceResolver SRR didn't return an INPerson");
      OUTLINED_FUNCTION_12_3();
    }

    else
    {
    }

    outlined destroy of PhoneCallNLIntent?(v16, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
    return 0;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of PhoneRRTarget.Target(v14, type metadata accessor for PhoneRRTarget.Target);
    goto LABEL_18;
  }

  v46 = *v14;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v46;
    *v51 = v46;
    v52 = v46;
    _os_log_impl(&dword_0, v48, v49, "#DisambiguationReferenceResolver SRR selected %@", v50, 0xCu);
    outlined destroy of PhoneCallNLIntent?(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    OUTLINED_FUNCTION_12_3();
  }

  else
  {
  }

  outlined destroy of PhoneCallNLIntent?(v16, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  return v46;
}

uint64_t DisambiguationReferenceResolver.extractReferenceResolutionEntity(parse:)()
{
  if (!Parse.usoTask.getter())
  {
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#DisambiguationReferenceResolver couldn't extract UsoTask from Parse", v5, 2u);
    }

    return 0;
  }

  v0 = DisambiguationReferenceResolver.extractPositionEntity(task:)();
  if (!v0)
  {
    if (UsoTask.convertToCommonPhoneCallEntity()())
    {
      v1 = DisambiguationReferenceResolver.extractAgentEntity(commonPhoneCall:)();

      if (v1)
      {
        return v1;
      }
    }

    else
    {
    }

    return 0;
  }

  v1 = v0;

  return v1;
}

uint64_t DisambiguationReferenceResolver.extractPositionEntity(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v6[3])
  {
    outlined destroy of PhoneCallNLIntent?(v6, &_sypSgMd, &_sypSgMR);
    return 0;
  }

  type metadata accessor for UsoTask_noVerb_uso_NoEntity();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

  if (!v6[0])
  {

    return 0;
  }

  v0 = dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter();

  if (v0)
  {

    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v2, v3, "#DisambiguationReferenceResolver Found position reference, passing to SRR", v4, 2u);
    }

    v0 = CodeGenBase.entity.getter();
  }

  else
  {
  }

  return v0;
}

uint64_t DisambiguationReferenceResolver.extractAgentEntity(commonPhoneCall:)()
{
  v0 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v2 = dispatch thunk of UsoEntity_common_PhoneCall.participants.getter();
  if (!v2)
  {
    v2 = _swiftEmptyArrayStorage;
  }

  specialized Array.append<A>(contentsOf:)(v2);
  v3 = specialized Array.count.getter(v1);
  v4 = 0;
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v5 = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();
    if (v13)
    {

      goto LABEL_19;
    }

    if (dispatch thunk of CodeGenListEntry.entryAsExpression.getter())
    {
      dispatch thunk of CodeGenExpression.operand.getter();

      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_19:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v4;
    }

    else
    {

LABEL_17:
      ++v4;
    }
  }

  if (!specialized Array.count.getter(_swiftEmptyArrayStorage))
  {

    return 0;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (_swiftEmptyArrayStorage & 0xC000000000000001) == 0, _swiftEmptyArrayStorage);
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
  {
    v6 = _swiftEmptyArrayStorage[4];

    goto LABEL_26;
  }

LABEL_35:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:

  v7 = CodeGenBase.entity.getter();

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.siriPhone);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "#DisambiguationReferenceResolver Found agent entity, passing to SRR", v11, 2u);
  }

  return v7;
}

uint64_t outlined init with copy of PhoneRRTarget.Target?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMd, &_s27PhoneCallFlowDelegatePlugin0A8RRTargetV6TargetOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PhoneRRTarget.Target(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneRRTarget.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

{
  v3 = OUTLINED_FUNCTION_88();
  v5 = v4(v3);
  OUTLINED_FUNCTION_23_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_19_0();
  v9(v8);
  return a2;
}

uint64_t outlined destroy of PhoneRRTarget.Target(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_5(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Graph and conformance Graph()
{
  result = lazy protocol witness table cache variable for type Graph and conformance Graph;
  if (!lazy protocol witness table cache variable for type Graph and conformance Graph)
  {
    type metadata accessor for Graph();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Graph and conformance Graph);
  }

  return result;
}

uint64_t HandleIntentSubmitter.__allocating_init(aceServiceInvoker:)(uint64_t a1)
{
  v2 = swift_allocObject();
  outlined init with take of PhoneCallFeatureFlagProviding(a1, v2 + 16);
  return v2;
}

uint64_t DismissSiriFlow.execute(completion:)()
{
  type metadata accessor for DismissSiriFlow();
  lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow();
  return Flow.deferToExecuteAsync(_:)();
}

unint64_t lazy protocol witness table accessor for type DismissSiriFlow and conformance DismissSiriFlow()
{
  result = lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow;
  if (!lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow)
  {
    type metadata accessor for DismissSiriFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DismissSiriFlow and conformance DismissSiriFlow);
  }

  return result;
}

uint64_t DismissSiriFlow.execute()()
{
  OUTLINED_FUNCTION_15();
  v1[13] = v2;
  v1[14] = v0;
  v3 = type metadata accessor for AceOutput();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(DismissSiriFlow.execute(), 0, 0);
}

{
  OUTLINED_FUNCTION_15();
  v3 = *(*v1 + 152);
  v2 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v4 = v2;
  *(v2 + 160) = v0;

  if (v0)
  {
    v5 = DismissSiriFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v5 = DismissSiriFlow.execute();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  static ExecuteResponse.complete()();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

{
  v18 = v0;
  v1 = v0[20];
  v2 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v5 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      OUTLINED_FUNCTION_0_51();
    }

    v8 = v0[20];
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_551B20, &v17);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v9;
    *v6 = v9;
    _os_log_impl(&dword_0, v3, v4, "%s: Error publishing SAUICloseAssistant command: %@", v5, 0x16u);
    outlined destroy of NSObject?(v6);
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  else
  {
    v10 = v0[20];
  }

  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v14 = v0[13];
  static ExecuteResponse.complete()();
  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15();
}

uint64_t DismissSiriFlow.execute()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v43 = v16;
  v17 = v16[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_426260;
  *(v18 + 32) = [objc_allocWithZone(SAUICloseAssistant) init];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  AceOutput.init(commands:flowActivity:)();
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v16[18] = __swift_project_value_buffer(v19, static Logger.siriPhone);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v41[0] = v23;
    *v22 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      OUTLINED_FUNCTION_0_51();
    }

    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static DismissSiriFlow.typeName, unk_551B20, v41);
    _os_log_impl(&dword_0, v20, v21, "%s: Dismissing Siri", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  v25 = v16[16];
  v24 = v16[17];
  v26 = v16[14];
  v27 = v16[15];
  v28 = v26[5];
  v29 = v26[6];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v28);
  (*(v29 + 16))(v28, v29);
  v30 = v16[5];
  v31 = v16[7];
  __swift_project_boxed_opaque_existential_1(v16 + 2, v30);
  v16[11] = v27;
  v16[12] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 8);
  (*(v25 + 16))(boxed_opaque_existential_1, v24, v27);
  v33 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v39 = swift_task_alloc();
  v16[19] = v39;
  *v39 = v16;
  v39[1] = DismissSiriFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v16 + 8, v30, v31, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t protocol witness for Flow.execute() in conformance DismissSiriFlow(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance CommunalDeviceExecutionFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance DismissSiriFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DismissSiriFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

PhoneCallFlowDelegatePlugin::DucFamilyNames_optional __swiftcall DucFamilyNames.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DucFamilyNames.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t DucFamilyNames.rawValue.getter(char a1)
{
  result = 0x6C6143656E6F6870;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x75446E6F6D6D6F63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6C61437472617473;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      v3 = 0x7055676E6168;
      goto LABEL_10;
    case 7:
      v3 = 0x726577736E61;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6143000000000000;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DucFamilyNames and conformance DucFamilyNames()
{
  result = lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames;
  if (!lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DucFamilyNames and conformance DucFamilyNames);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::DucFamilyNames_optional protocol witness for RawRepresentable.init(rawValue:) in conformance DucFamilyNames@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::DucFamilyNames_optional *a2@<X8>)
{
  result.value = DucFamilyNames.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DucFamilyNames@<X0>(uint64_t *a1@<X8>)
{
  result = DucFamilyNames.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DucFamilyNames(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

BOOL EmergencyContactSlotResolver.shouldRunResolver(skIntent:nlIntent:)(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return PhoneCallNLIntent.isEmergencyContactCall()();
}

uint64_t EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a1;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EmergencyContactResolution();
  v14 = v5[3];
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  (*(v13 + 8))(v22, v14, v13);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 24) = a4;
  v16 = *(a5 + 16);
  v17 = *(a5 + 24);

  specialized static EmergencyContactResolution.fetchEmergencyContacts(sirikitIntent:locale:medicalIDStore:_:)();

  (*(v9 + 8))(v12, v8);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t closure #1 in EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(uint64_t a1, char a2, void (*a3)(uint64_t, void, void))
{
  v5 = a2 & 1;
  outlined copy of Result<[INPerson], Error>(a1, a2 & 1);
  a3(a1, 0, (v5 << 8));

  return outlined consume of Result<[INPerson], Error>(a1, v5);
}

uint64_t protocol witness for SlotResolver.resolveSlot(skIntent:nlIntent:_:) in conformance EmergencyContactSlotResolver<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  EmergencyContactSlotResolver.resolveSlot(skIntent:nlIntent:_:)(a1, v10, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<[INPerson], SlotResolverError>) -> (), v9, a5);
}

uint64_t instantiation function for generic protocol witness table for EmergencyContactSlotResolver<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata instantiation function for EmergencyContactSlotResolver()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t outlined copy of Result<[INPerson], Error>(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

id static StartCallViewBuilders.makeEmergencyCountdownViewBuilder(templatingService:app:intent:intentResponse:sharedGlobals:isDirectInvocation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.siriPhone);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#StartCallViewBuilders Providing EmergencyCountdownBuilder", v16, 2u);
  }

  outlined init with copy of SignalProviding(a5, a7 + 32);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 72) = a6 & 1;

  v17 = a3;

  return a4;
}

void EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = EmergencyCountdownBuilder.getButtonCommands()();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_426260;
  *(v10 + 32) = v7;
  v11 = objc_allocWithZone(SASTCommandTemplateAction);
  v21 = v7;
  v12 = [v11 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v10, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = v9;
  v14 = objc_allocWithZone(SASTCommandTemplateAction);
  swift_unknownObjectRetain();
  v15 = [v14 init];
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v13, v15);
  v16 = *v3;
  outlined init with copy of EmergencyCountdownBuilder(v3, __src);
  v17 = swift_allocObject();
  memcpy(v17 + 2, __src, 0x49uLL);
  v17[12] = v12;
  v17[13] = v15;
  v17[14] = a2;
  v17[15] = a3;
  v17[16] = a1;
  v18 = *(*v16 + class metadata base offset for PhoneCallBaseCatTemplatingService + 152);
  v19 = v12;
  v20 = v15;

  v18(partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:), v17);

  swift_unknownObjectRelease();
}

uint64_t EmergencyCountdownBuilder.getButtonCommands()()
{
  v1 = type metadata accessor for CommonDirectAction();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupLaunchAppWithIntent, SAIntentGroupLaunchAppWithIntent_ptr);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();
  if (*(v0 + 72) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v9);
    (*(v10 + 8))(v16, v9, v10);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
    CommonDirectAction.identifier.getter();
    v11 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
    v12 = CommonDirectAction.userData.getter();
    v13 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v12);

    outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v13, v11);
    SKIDirectInvocationPayload.toStartLocalRequest(deviceState:)(v16);

    __swift_destroy_boxed_opaque_existential_1(v16);
    outlined destroy of CommonDirectAction(v4);
  }

  else
  {
    if (one-time initialization token for cancelUtterance != -1)
    {
      swift_once();
    }

    static CasinoFactory.makeSendCommandsFromMachineUtterance(machineUtterance:)();
  }

  return v8;
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v27 - v15;
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v27 - v15);
  outlined init with copy of EmergencyCountdownBuilder(a2, __src);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v17 + v14 + 87) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  outlined init with take of Result<TemplatingResult, Error>(v16, v19 + v17);
  memcpy((v19 + ((v17 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x49uLL);
  *(v19 + v18) = a3;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  v20 = *a2;
  v21 = swift_allocObject();
  v21[2] = partial apply for closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:);
  v21[3] = v19;
  v22 = v28;
  v21[4] = a3;
  v21[5] = v22;
  v23 = *(*v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);
  v24 = a3;

  v25 = v22;
  v23(partial apply for closure #1 in EmergencyCountdownBuilder.getSideBySideButtons(callAction:cancelAction:_:), v21);
}

uint64_t closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(partial apply for closure #1 in closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:));
  v6 = v5;
  a3(v4, v5 & 1);
  return outlined consume of Result<[INPerson], Error>(v4, v6 & 1);
}

void closure #1 in closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(void *a1@<X1>, char a2@<W2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_5:
    *a5 = a1;
    *(a5 + 8) = a2 & 1;
    return;
  }

  v10 = TemplatingResult.print.getter();
  if (v10[2])
  {
    v11 = v10[4];
    v12 = v10[5];

    v13 = EmergencyCountdownBuilder.makeCountdownItem(sashTitle:callAction:)(v11, v12, a4);

    v14 = [objc_allocWithZone(SASTItemGroup) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_427BB0;
    *(v15 + 32) = v13;
    *(v15 + 40) = a1;
    v16 = v13;
    outlined copy of Result<SASTSideBySideButtonsItem, Error>(a1, 0);
    outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v15, v14);
    type metadata accessor for SiriKitAceViewBuilder();
    v17 = a3[7];
    v18 = a3[8];
    __swift_project_boxed_opaque_existential_1(a3 + 4, v17);
    (*(v18 + 8))(v19, v17, v18);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v19);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addButtonGroup(buttonGroup:)();

    a1 = dispatch thunk of SiriKitAceViewBuilder.build()();

    goto LABEL_5;
  }

  __break(1u);
}

id EmergencyCountdownBuilder.makeCountdownItem(sashTitle:callAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SASTCountdownTimerItem) init];
  [v6 setAction:a3];
  [v6 setActionDelayInSeconds:5];
  v7 = static ColorFactory.white.getter();
  [v6 setBodyBackgroundColor:v7];

  v8 = static ColorFactory.black.getter();
  [v6 setCountdownTextColor:v8];

  v9 = static ColorFactory.white.getter();
  [v6 setHeaderBackgroundColor:v9];

  outlined bridged method (mbgnn) of @objc SASTCountdownTimerItem.headerText.setter(a1, a2, v6);
  v10 = static ColorFactory.emergencyRed.getter();
  [v6 setHeaderTextColor:v10];

  return v6;
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSaySo9SAAceViewCGTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = type metadata accessor for TemplatingResult();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  outlined init with copy of Result<TemplatingResult, Error>(v1, &v13 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v11;
  }

  (*(v4 + 32))(v7, v11, v3);
  a1(&v13, v7);
  (*(v4 + 8))(v7, v3);
  return v13;
}

uint64_t _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSS4call_SS6canceltTg5@<X0>(void (*a1)(uint64_t *__return_ptr, char *)@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TemplatingResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v19 - v12);
  outlined init with copy of Result<TemplatingResult, Error>(v2, &v19 - v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v15 = 0;
    v16 = *v13;
    v17 = 0uLL;
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    a1(&v20, v9);
    result = (*(v6 + 8))(v9, v5);
    v16 = v20;
    v17 = v21;
    v15 = v22;
    v18 = v23;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

uint64_t EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(SAPhoneCallEmergencySnippet) init];
  [v8 setCountDownSeconds:5];
  v9 = static ColorFactory.emergencyRed.getter();
  OUTLINED_FUNCTION_0_52(v9, "setHeaderTextColor:");

  v10 = static ColorFactory.white.getter();
  OUTLINED_FUNCTION_0_52(v10, "setHeaderBackgroundColor:");

  v11 = static ColorFactory.black.getter();
  OUTLINED_FUNCTION_0_52(v11, "setBodyTextColor:");

  v12 = static ColorFactory.white.getter();
  OUTLINED_FUNCTION_0_52(v12, "setBodyBackgroundColor:");

  outlined init with copy of EmergencyCountdownBuilder(v4, __src);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = v8;
  memcpy(v13 + 5, __src, 0x49uLL);
  v13[15] = a1;
  v14 = *v4;
  outlined init with copy of EmergencyCountdownBuilder(v4, v19);
  v15 = swift_allocObject();
  memcpy(v15 + 2, v19, 0x49uLL);
  v15[12] = partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:);
  v15[13] = v13;
  v16 = *(*v14 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v17 = v8;

  v16(closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)partial apply, v15);
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForCar(utteranceViews:_:)(void *a1, char a2, void (*a3)(void *, void), uint64_t a4, void *a5, void *a6)
{
  v8 = a1;
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    [a5 setConfirmationOptions:a1];
    type metadata accessor for SiriKitAceViewBuilder();
    v10 = a6[7];
    v11 = a6[8];
    __swift_project_boxed_opaque_existential_1(a6 + 4, v10);
    (*(v11 + 8))(v14, v10, v11);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v14);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    v12 = dispatch thunk of SiriKitAceViewBuilder.build()();

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v8, 0);
    v8 = v12;
  }

  a3(v8, a2 & 1);
  return outlined consume of Result<[INPerson], Error>(v8, a2 & 1);
}

uint64_t EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = static CasinoFactory.makePlaceholderCardSection()();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_426260;
  *(v9 + 32) = v8;
  v10 = v4[2];
  v11 = v4[3];
  v12 = v8;
  v13 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();

  outlined init with copy of EmergencyCountdownBuilder(v4, v20);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  memcpy(v14 + 5, v20, 0x49uLL);
  v14[15] = a1;
  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:);
  *(v16 + 24) = v14;
  v17 = *(*v15 + class metadata base offset for PhoneCallBaseCatTemplatingService + 152);

  v18 = v13;

  v17(partial apply for closure #1 in EmergencyCountdownBuilder.getEmergencySashTitle(_:), v16);
}

uint64_t closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  if (a3)
  {
    return a4(a1, 1);
  }

  v16 = [objc_allocWithZone(SAUISash) init];
  v17 = static ColorFactory.emergencyRed.getter();
  [v16 setBackgroundColor:v17];

  v18 = static ColorFactory.white.getter();
  [v16 setTextColor:v18];

  outlined bridged method (mbgnn) of @objc SAUISash.title.setter(a1, a2, v16);
  [a6 setSash:v16];
  outlined init with copy of EmergencyCountdownBuilder(a7, __src);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  memcpy(v19 + 5, __src, 0x49uLL);
  v19[15] = a8;
  v20 = *a7;
  outlined init with copy of EmergencyCountdownBuilder(a7, v24);
  v21 = swift_allocObject();
  memcpy(v21 + 2, v24, 0x49uLL);
  v21[12] = partial apply for closure #2 in closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:);
  v21[13] = v19;
  v22 = *(*v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 144);

  v23 = a6;

  v22(partial apply for closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:), v21);
}

void closure #2 in closure #1 in EmergencyCountdownBuilder.makeViewsForIOS(utteranceViews:_:)(void *a1, char a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    swift_errorRetain();
    a3(a1, 1);

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 1);
  }

  else
  {
    [a5 setConfirmationOptions:a1];
    type metadata accessor for SiriKitAceViewBuilder();
    v9 = a6[7];
    v10 = a6[8];
    __swift_project_boxed_opaque_existential_1(a6 + 4, v9);
    (*(v10 + 8))(v12, v9, v10);
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_1(v12);
    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    v11 = dispatch thunk of SiriKitAceViewBuilder.build()();

    a3(v11, 0);

    outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(a1, 0);
  }
}

void *closure #1 in EmergencyCountdownBuilder.getEmergencySashTitle(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, BOOL))
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v17 - v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v14 = 0;
    v15 = *v12;
LABEL_5:
    a2(v15, v14, EnumCaseMultiPayload == 1);
    return outlined consume of Result<String, Error>(v15, v14, EnumCaseMultiPayload == 1);
  }

  (*(v5 + 32))(v8, v12, v4);
  result = TemplatingResult.print.getter();
  if (result[2])
  {
    v15 = result[4];
    v14 = result[5];

    (*(v5 + 8))(v8, v4);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = EmergencyCountdownBuilder.getButtonCommands()();
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    swift_errorRetain();
  }

  else
  {
    v14[0] = v5;
    v14[1] = v6;
    v14[2] = v8;
    v14[3] = v7;

    closure #1 in closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)(v14, v9, v11, &v13);

    v5 = v13;
  }

  a3(v5, v12 & 1);
  swift_unknownObjectRelease();

  outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v5, v12 & 1);
}

void *closure #1 in closure #1 in EmergencyCountdownBuilder.getConfirmationOptions(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v25 = *a1;
  v6 = a1[3];
  v27 = a1[2];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOption, SAUIConfirmationOption_ptr);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_426260;
  *(v13 + 32) = a2;

  v14 = a2;
  v15 = SAUIConfirmationOption.init(label:type:iconType:commands:)(v25, v5, v7, v9, v10, v12, v13);
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_426260;
  *(v22 + 32) = a3;

  swift_unknownObjectRetain();
  v23 = SAUIConfirmationOption.init(label:type:iconType:commands:)(v27, v6, v16, v18, v19, v21, v22);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAUIConfirmationOptions, SAUIConfirmationOptions_ptr);
  result = SAUIConfirmationOptions.init(denyOption:confirmOption:)(v23, v15);
  *a4 = result;
  return result;
}

void closure #1 in EmergencyCountdownBuilder.getSideBySideButtons(callAction:cancelAction:_:)(uint64_t a1, void (*a2)(void *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *a1;
    swift_errorRetain();
  }

  else
  {
    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = *(a1 + 8);
    v14 = objc_allocWithZone(SASTSideBySideButtonsItem);

    v15 = [v14 init];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined bridged method (mbnn) of @objc SASTSideBySideButtonsItem.buttonsViewStyle.setter(v16, v17, v15);
    [v15 setPrimaryButtonAction:a4];
    [v15 setPrimaryButtonEnabled:1];
    outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.primaryButtonLabel.setter(v6, v13, v15);
    v18 = static ColorFactory.white.getter();
    [v15 setPrimaryButtonTextColor:v18];

    [v15 setSecondaryButtonAction:a5];
    [v15 setSecondaryButtonEnabled:1];
    outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.secondaryButtonLabel.setter(v12, v11, v15);

    v6 = v15;
  }

  a2(v6, v7 & 1);

  outlined consume of Result<SAIntentGroupLaunchAppWithIntent, Error>(v6, v7 & 1);
}

uint64_t getEnumTagSinglePayload for EmergencyCountdownBuilder(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmergencyCountdownBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of Result<String, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void outlined bridged method (mbgnn) of @objc SASTCountdownTimerItem.headerText.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setHeaderText:v4];
}

void outlined bridged method (mbgnn) of @objc SAUISash.title.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setTitle:v4];
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v4 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t outlined init with take of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v6 = (((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 64) + 87) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in EmergencyCountdownBuilder.makeViewsForWatch(utteranceViews:_:)(a1, a2 & 1, v7);
}

void outlined bridged method (mbnn) of @objc SASTSideBySideButtonsItem.buttonsViewStyle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setButtonsViewStyle:v4];
}

void outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.primaryButtonLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setPrimaryButtonLabel:v4];
}

void outlined bridged method (mbgnn) of @objc SASTSideBySideButtonsItem.secondaryButtonLabel.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setSecondaryButtonLabel:v4];
}

id outlined copy of Result<SASTSideBySideButtonsItem, Error>(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t EmergencyCountdownModel.sashTitle.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  Loggable.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for EmergencyCountdownModel.sashTitle : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.sashTitle.setter();
}

uint64_t (*EmergencyCountdownModel.sashTitle.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  *v0 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v2[4] = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.cancelButtonText.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t type metadata accessor for EmergencyCountdownModel()
{
  result = type metadata singleton initialization cache for EmergencyCountdownModel;
  if (!type metadata singleton initialization cache for EmergencyCountdownModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for EmergencyCountdownModel.cancelButtonText : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.cancelButtonText.setter();
}

uint64_t EmergencyCountdownModel.cancelButtonText.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.cancelButtonText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.cancelledText.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.cancelledText : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.cancelledText.setter();
}

uint64_t EmergencyCountdownModel.cancelledText.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.cancelledText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callButtonText.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.callButtonText : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.callButtonText.setter();
}

uint64_t EmergencyCountdownModel.callButtonText.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.callButtonText.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callingLabel.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.callingLabel : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.callingLabel.setter();
}

uint64_t EmergencyCountdownModel.callingLabel.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.callingLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.emergencyServicesLabel.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.emergencyServicesLabel : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.emergencyServicesLabel.setter();
}

uint64_t EmergencyCountdownModel.emergencyServicesLabel.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.emergencyServicesLabel.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.sos.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.sos : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.sos.setter();
}

uint64_t EmergencyCountdownModel.sos.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.sos.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.dialog.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.dialog : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.dialog.setter();
}

uint64_t EmergencyCountdownModel.dialog.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.dialog.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.localeIdentifier.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_26_14();
  return v2;
}

uint64_t key path setter for EmergencyCountdownModel.localeIdentifier : EmergencyCountdownModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return EmergencyCountdownModel.localeIdentifier.setter();
}

uint64_t EmergencyCountdownModel.localeIdentifier.setter()
{
  v0 = *(OUTLINED_FUNCTION_25_12() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  return OUTLINED_FUNCTION_15_1();
}

uint64_t (*EmergencyCountdownModel.localeIdentifier.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.isSmartEnabled.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t EmergencyCountdownModel.isSmartEnabled.setter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12();
}

uint64_t (*EmergencyCountdownModel.isSmartEnabled.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.isSAEAvailable.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t EmergencyCountdownModel.isSAEAvailable.setter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12();
}

uint64_t (*EmergencyCountdownModel.isSAEAvailable.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.shouldPlayTTSCountdown.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  Loggable.wrappedValue.getter();
  return v2;
}

uint64_t EmergencyCountdownModel.shouldPlayTTSCountdown.setter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  return OUTLINED_FUNCTION_28_12();
}

uint64_t (*EmergencyCountdownModel.shouldPlayTTSCountdown.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = Loggable.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.callAction.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t EmergencyCountdownModel.callAction.setter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*EmergencyCountdownModel.callAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.callAction.modify;
}

uint64_t EmergencyCountdownModel.cancelAction.getter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.getter();
}

uint64_t EmergencyCountdownModel.cancelAction.setter()
{
  v0 = *(type metadata accessor for EmergencyCountdownModel() + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  return CodableAceObject.wrappedValue.setter();
}

uint64_t (*EmergencyCountdownModel.cancelAction.modify())()
{
  v1 = OUTLINED_FUNCTION_14_4();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = *(OUTLINED_FUNCTION_8_37(v2) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  OUTLINED_FUNCTION_3_40();
  *(v0 + 32) = CodableAceObject.wrappedValue.modify();
  return EmergencyCountdownModel.sashTitle.modify;
}

uint64_t EmergencyCountdownModel.responseViewId.getter()
{
  v1 = (v0 + *(type metadata accessor for EmergencyCountdownModel() + 72));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t EmergencyCountdownModel.responseViewId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EmergencyCountdownModel() + 72));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void EmergencyCountdownModel.init(sashTitle:cancelButtonText:cancelledText:callButtonText:callingLabel:emergencyServicesLabel:sos:dialog:callAction:cancelAction:localeIdentifier:shouldPlayTTSCountdown:isSmartEnabled:isSAEAvailable:)(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v12 = type metadata accessor for EmergencyCountdownModel();
  v13 = (a1 + v12[18]);
  *v13 = 0xD000000000000017;
  v13[1] = 0x8000000000456AA0;
  Loggable.init(wrappedValue:)();
  v14 = v12[5];
  OUTLINED_FUNCTION_9_29();
  v15 = v12[6];
  OUTLINED_FUNCTION_9_29();
  v16 = v12[8];
  OUTLINED_FUNCTION_9_29();
  v17 = v12[9];
  OUTLINED_FUNCTION_9_29();
  v18 = v12[10];
  OUTLINED_FUNCTION_9_29();
  v19 = v12[7];
  OUTLINED_FUNCTION_9_29();
  v20 = v12[11];
  OUTLINED_FUNCTION_9_29();
  v21 = v12[16];
  type metadata accessor for SAIntentGroupRunSiriKitExecutor();
  v22 = a10;
  CodableAceObject.init(wrappedValue:)();
  v23 = v12[17];
  v24 = a11;
  CodableAceObject.init(wrappedValue:)();
  v25 = v12[12];
  OUTLINED_FUNCTION_9_29();
  v26 = v12[15];
  OUTLINED_FUNCTION_9_29();
  v27 = v12[13];
  OUTLINED_FUNCTION_9_29();
  v28 = v12[14];
  OUTLINED_FUNCTION_9_29();
}

uint64_t EmergencyCountdownModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C74695468736173 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000000045B130 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C6C65636E6163 && a2 == 0xED00007478655464;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x747475426C6C6163 && a2 == 0xEE00747865546E6FLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C676E696C6C6163 && a2 == 0xEC0000006C656261;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x800000000045B150 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7565171 && a2 == 0xE300000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x676F6C616964 && a2 == 0xE600000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000000045B170 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x457472616D537369 && a2 == 0xEE0064656C62616ELL;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6176414541537369 && a2 == 0xEE00656C62616C69;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x800000000045B190 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x697463416C6C6163 && a2 == 0xEA00000000006E6FLL;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x65736E6F70736572 && a2 == 0xEE00644977656956)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
          }
        }
      }
    }
  }
}

unint64_t EmergencyCountdownModel.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C74695468736173;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x656C6C65636E6163;
      break;
    case 3:
      result = 0x747475426C6C6163;
      break;
    case 4:
      result = 0x4C676E696C6C6163;
      break;
    case 5:
    case 11:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 7565171;
      break;
    case 7:
      result = 0x676F6C616964;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x457472616D537369;
      break;
    case 10:
      result = 0x6176414541537369;
      break;
    case 12:
      result = 0x697463416C6C6163;
      break;
    case 13:
      result = 0x63416C65636E6163;
      break;
    case 14:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmergencyCountdownModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EmergencyCountdownModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance EmergencyCountdownModel.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = PhoneCallVerbSemantics.associatedSemantic.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmergencyCountdownModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmergencyCountdownModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t EmergencyCountdownModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMd, &_ss22KeyedEncodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMR);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v34[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34[31] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  OUTLINED_FUNCTION_16_3();
  lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v14);
  OUTLINED_FUNCTION_2_6();
  if (!v2)
  {
    v15 = type metadata accessor for EmergencyCountdownModel();
    v16 = v15[5];
    v34[30] = 1;
    OUTLINED_FUNCTION_2_6();
    v17 = v15[6];
    v34[29] = 2;
    OUTLINED_FUNCTION_2_6();
    v18 = v15[7];
    v34[28] = 3;
    OUTLINED_FUNCTION_2_6();
    v19 = v15[8];
    v34[27] = 4;
    OUTLINED_FUNCTION_2_6();
    v20 = v15[9];
    v34[26] = 5;
    OUTLINED_FUNCTION_2_6();
    v21 = v15[10];
    v34[25] = 6;
    OUTLINED_FUNCTION_2_6();
    v22 = v15[11];
    v34[24] = 7;
    OUTLINED_FUNCTION_2_6();
    v23 = v15[12];
    v34[15] = 8;
    OUTLINED_FUNCTION_2_6();
    v24 = v15[13];
    v34[14] = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    OUTLINED_FUNCTION_16_3();
    lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v25);
    OUTLINED_FUNCTION_2_6();
    v26 = v15[14];
    v34[13] = 10;
    OUTLINED_FUNCTION_2_6();
    v27 = v15[15];
    v34[12] = 11;
    OUTLINED_FUNCTION_2_6();
    v28 = v15[16];
    v34[11] = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
    OUTLINED_FUNCTION_2_6();
    v29 = v15[17];
    v34[10] = 13;
    OUTLINED_FUNCTION_2_6();
    v30 = (v3 + v15[18]);
    v31 = *v30;
    v32 = v30[1];
    v34[9] = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void EmergencyCountdownModel.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
  v4 = OUTLINED_FUNCTION_7(v3);
  v136 = v5;
  v137 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_16_2();
  v122 = v8;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v9);
  v123 = v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySbGMd, &_s10SnippetKit8LoggableVySbGMR);
  v12 = OUTLINED_FUNCTION_7(v11);
  v138 = v13;
  v139 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_16_2();
  v124 = v16;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v17);
  v125 = v119 - v18;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v19);
  v126 = v119 - v20;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
  v21 = OUTLINED_FUNCTION_7(v134);
  v143 = v22;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_16_2();
  v127 = v25;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v26);
  v128 = v119 - v27;
  OUTLINED_FUNCTION_4_0();
  __chkstk_darwin(v28);
  v129 = v119 - v29;
  OUTLINED_FUNCTION_4_0();
  v31 = __chkstk_darwin(v30);
  v33 = v119 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = (v119 - v35);
  v37 = __chkstk_darwin(v34);
  v39 = v119 - v38;
  v40 = __chkstk_darwin(v37);
  v42 = v119 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = v119 - v44;
  __chkstk_darwin(v43);
  v133 = (v119 - v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMd, &_ss22KeyedDecodingContainerVy27PhoneCallFlowDelegatePlugin23EmergencyCountdownModelV10CodingKeys33_F28F7335D8A9442BC46708E8D33860B6LLOGMR);
  v48 = OUTLINED_FUNCTION_7(v47);
  v130 = v49;
  v131 = v48;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48);
  v53 = v119 - v52;
  v141 = type metadata accessor for EmergencyCountdownModel();
  v54 = *(*(v141 - 1) + 64);
  __chkstk_darwin(v141);
  v142 = v119 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1[3];
  v56 = a1[4];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v57);
  lazy protocol witness table accessor for type EmergencyCountdownModel.CodingKeys and conformance EmergencyCountdownModel.CodingKeys();
  v132 = v53;
  v58 = v140;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v58)
  {
    v59 = v134;
    v140 = v58;
    v63 = 0;
    LODWORD(v64) = 0;
    v65 = 0;
    LODWORD(v66) = 0;
    v67 = 0;
    OUTLINED_FUNCTION_0_53();
  }

  else
  {
    v60 = v42;
    v140 = v39;
    v120 = v36;
    v119[1] = v33;
    v158 = 0;
    OUTLINED_FUNCTION_17_15();
    v62 = lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(v61);
    v59 = v134;
    v64 = v131;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v67 = v143 + 32;
    v82 = *(v143 + 32);
    v82(v142, v133, v59);
    v157 = 1;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82(&v142[v141[5]], v45, v59);
    v156 = 2;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v83 = &v142[v141[6]];
    v133 = v82;
    v82(v83, v60, v59);
    v155 = 3;
    v84 = v140;
    OUTLINED_FUNCTION_18_12();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v130;
    v85 = v141;
    v133(&v142[v141[7]], v84, v59);
    v154 = 4;
    v86 = v62;
    v87 = v120;
    v119[0] = v86;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v85;
    v63 = v59;
    v133(&v142[v36[8]], v87, v59);
    v153 = 5;
    OUTLINED_FUNCTION_20_18();
    v65 = v119[0];
    OUTLINED_FUNCTION_27_11();
    v88 = OUTLINED_FUNCTION_11_29(v36[9]);
    v89(v88);
    v152 = 6;
    OUTLINED_FUNCTION_20_18();
    OUTLINED_FUNCTION_27_11();
    v90 = OUTLINED_FUNCTION_11_29(v36[10]);
    v91(v90);
    v151 = 7;
    OUTLINED_FUNCTION_20_18();
    OUTLINED_FUNCTION_27_11();
    v140 = 0;
    v92 = OUTLINED_FUNCTION_11_29(v36[11]);
    v93(v92);
    v150 = 8;
    v66 = v127;
    v94 = v132;
    v95 = v140;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v140 = v95;
    if (v95)
    {
      v96 = *(v53 + 1);
      LODWORD(v53) = v53 + 8;
      v96(v94, v64);
      LODWORD(v129) = 0;
      LODWORD(v132) = 0;
      OUTLINED_FUNCTION_1_60();
      OUTLINED_FUNCTION_7_30();
    }

    else
    {
      v133(&v142[v141[12]], v66, v59);
      v149 = 9;
      OUTLINED_FUNCTION_17_15();
      v63 = lazy protocol witness table accessor for type Loggable<Bool> and conformance <A> Loggable<A>(v97);
      v98 = v140;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v140 = v98;
      if (!v98)
      {
        v102 = *(v138 + 32);
        v102(&v142[v141[13]], v126, v139);
        v148 = 10;
        OUTLINED_FUNCTION_21_13();
        v140 = 0;
        v102(&v142[v141[14]], v125, v139);
        v147 = 11;
        OUTLINED_FUNCTION_21_13();
        LODWORD(v133) = 1;
        v140 = 0;
        v102(&v142[v141[15]], v124, v139);
        v146 = 12;
        _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(&lazy protocol witness table cache variable for type CodableAceObject<SAIntentGroupRunSiriKitExecutor> and conformance CodableAceObject<A>);
        v103 = v140;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v140 = v103;
        if (v103)
        {
          v104 = OUTLINED_FUNCTION_6_34();
          v105(v104);
          LODWORD(v130) = 0;
          LODWORD(v131) = 0;
        }

        else
        {
          v107 = *(v136 + 32);
          v107(&v142[v141[16]], v123, v137);
          v145 = 13;
          OUTLINED_FUNCTION_21_13();
          v140 = 0;
          v107(&v142[v141[17]], v122, v137);
          v144 = 14;
          v108 = v140;
          v109 = KeyedDecodingContainer.decode(_:forKey:)();
          v140 = v108;
          if (!v108)
          {
            v113 = v109;
            v114 = v110;
            v115 = v142;
            v116 = &v142[v141[18]];
            v117 = OUTLINED_FUNCTION_6_34();
            v118(v117);
            *v116 = v113;
            *(v116 + 1) = v114;
            outlined init with copy of EmergencyCountdownModel(v115, v121);
            __swift_destroy_boxed_opaque_existential_1(v135);
            outlined destroy of EmergencyCountdownModel(v115);
            return;
          }

          v111 = OUTLINED_FUNCTION_6_34();
          v112(v111);
          LODWORD(v130) = 1;
          LODWORD(v131) = 1;
        }

        __swift_destroy_boxed_opaque_existential_1(v135);
        LOBYTE(v64) = 1;
        v65 = 1;
        LODWORD(v66) = 1;
        v67 = 1;
        OUTLINED_FUNCTION_7_30();
        LODWORD(v129) = v106;
        LODWORD(v132) = v106;
        LODWORD(v135) = v106;
        goto LABEL_6;
      }

      v99 = OUTLINED_FUNCTION_6_34();
      v100(v99);
      LODWORD(v132) = 0;
      OUTLINED_FUNCTION_1_60();
      OUTLINED_FUNCTION_7_30();
      LODWORD(v129) = v101;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v135);
  if ((v63 & 1) == 0)
  {
    if (!v64)
    {
      OUTLINED_FUNCTION_30_14();
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_30_14();
    v63 = *(v143 + 8);
LABEL_10:
    v68 = v142;
    v69 = OUTLINED_FUNCTION_22_9(v141[5]);
    (v63)(v69);
    if (v65)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  LODWORD(v135) = 0;
  LODWORD(v133) = 0;
  LODWORD(v130) = 0;
  LODWORD(v131) = 0;
LABEL_6:
  v63 = *(v143 + 8);
  (v63)(v142, v59);
  if (v64)
  {
    goto LABEL_10;
  }

LABEL_13:
  v68 = v142;
  if (v65)
  {
    OUTLINED_FUNCTION_5_37();
LABEL_15:
    v70 = v141;
    v71 = OUTLINED_FUNCTION_22_9(v141[6]);
    (v63)(v71);
    if ((v66 & 1) == 0)
    {
      if (v67)
      {
LABEL_17:
        OUTLINED_FUNCTION_5_37();
        v72 = v139;
        goto LABEL_21;
      }

      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_18:
  if (!v66)
  {
    v70 = v141;
    if (v67)
    {
      goto LABEL_17;
    }

LABEL_25:
    v72 = v139;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_5_37();
  v70 = v141;
LABEL_20:
  v73 = OUTLINED_FUNCTION_22_9(v70[7]);
  (v63)(v73);
  v72 = v139;
  if (v67)
  {
LABEL_21:
    v74 = OUTLINED_FUNCTION_22_9(v70[8]);
    (v63)(v74);
    v75 = v136;
    if ((v53 & 1) == 0)
    {
      if (!v36)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (!v53)
  {
    v75 = v136;
    if (!v36)
    {
      goto LABEL_34;
    }

LABEL_31:
    OUTLINED_FUNCTION_5_37();
LABEL_32:
    v77 = OUTLINED_FUNCTION_22_9(v70[10]);
    (v63)(v77);
    if (v128)
    {
      goto LABEL_36;
    }

LABEL_38:
    if (!v129)
    {
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_5_37();
LABEL_40:
    v79 = OUTLINED_FUNCTION_22_9(v70[12]);
    (v63)(v79);
    if (v132)
    {
      goto LABEL_44;
    }

LABEL_41:
    if (v135)
    {
      v80 = *(v138 + 8);
      v80(&v68[v70[14]], v72);
      goto LABEL_46;
    }

LABEL_48:
    if (!v133)
    {
      goto LABEL_53;
    }

    v80 = *(v138 + 8);
LABEL_50:
    v80(&v68[v70[15]], v72);
    if (v130)
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_5_37();
  v75 = v136;
LABEL_28:
  v76 = OUTLINED_FUNCTION_22_9(v70[9]);
  (v63)(v76);
  if (v36)
  {
    goto LABEL_32;
  }

LABEL_34:
  if (!v128)
  {
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_5_37();
LABEL_36:
  v78 = OUTLINED_FUNCTION_22_9(v70[11]);
  (v63)(v78);
  if (v129)
  {
    goto LABEL_40;
  }

LABEL_43:
  if (!v132)
  {
    goto LABEL_41;
  }

LABEL_44:
  v80 = *(v138 + 8);
  v80(&v68[v70[13]], v72);
  if ((v135 & 1) == 0)
  {
    goto LABEL_48;
  }

  v80(&v68[v70[14]], v72);
LABEL_46:
  if (v133)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v130)
  {
LABEL_54:
    v81 = *(v75 + 8);
    v81(&v68[v70[16]], v137);
    if (v131)
    {
      v81(&v68[v70[17]], v137);
    }

    return;
  }

LABEL_51:
  if (v131)
  {
    (*(v75 + 8))(&v68[v70[17]], v137);
  }
}

unint64_t lazy protocol witness table accessor for type Loggable<String> and conformance <A> Loggable<A>(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit8LoggableVySSGMd, &_s10SnippetKit8LoggableVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t _s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGACyxGSEAAWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of EmergencyCountdownModel(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyCountdownModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of EmergencyCountdownModel(uint64_t a1)
{
  v2 = type metadata accessor for EmergencyCountdownModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for PhoneSnippetModel.responseViewId.getter in conformance EmergencyCountdownModel(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional __swiftcall EmergencyCountdownUpdateAction.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of EmergencyCountdownUpdateAction.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyCountdownUpdateAction_startTimer;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_EmergencyCountdownUpdateAction_unknownDefault;
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

uint64_t EmergencyCountdownUpdateAction.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D69547472617473;
  }

  else
  {
    return 0x69546C65636E6163;
  }
}

unint64_t instantiation function for generic protocol witness table for EmergencyCountdownModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EmergencyCountdownModel and conformance EmergencyCountdownModel(&lazy protocol witness table cache variable for type EmergencyCountdownModel and conformance EmergencyCountdownModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownModel and conformance EmergencyCountdownModel(uint64_t a1)
{
  result = OUTLINED_FUNCTION_29_0(a1);
  if (!result)
  {
    type metadata accessor for EmergencyCountdownModel();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction()
{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction;
  if (!lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction);
  }

  return result;
}

PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional protocol witness for RawRepresentable.init(rawValue:) in conformance EmergencyCountdownUpdateAction@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::EmergencyCountdownUpdateAction_optional *a2@<X8>)
{
  result.value = EmergencyCountdownUpdateAction.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance EmergencyCountdownUpdateAction@<X0>(uint64_t *a1@<X8>)
{
  result = EmergencyCountdownUpdateAction.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for UpdateResponseCommand.init(_:) in conformance EmergencyCountdownUpdateAction()
{
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  return UpdateResponseCommand<>.init(_:)();
}

uint64_t protocol witness for UpdateResponseCommand.serializeData() in conformance EmergencyCountdownUpdateAction()
{
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  lazy protocol witness table accessor for type EmergencyCountdownUpdateAction and conformance EmergencyCountdownUpdateAction();
  return UpdateResponseCommand<>.serializeData()();
}

void type metadata completion function for EmergencyCountdownModel()
{
  type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<String>);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Loggable<String>(319, &lazy cache variable for type metadata for Loggable<Bool>);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CodableAceObject<SAIntentGroupRunSiriKitExecutor>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Loggable<String>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Loggable();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EmergencyCountdownUpdateAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmergencyCountdownModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmergencyCountdownModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return Loggable.wrappedValue.getter();
}

uint64_t static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)()
{
  OUTLINED_FUNCTION_15();
  v0[623] = v1;
  v0[617] = v2;
  v0[611] = v3;
  v0[605] = v4;
  v0[599] = v5;
  v0[593] = v6;
  v0[587] = v7;
  v8 = type metadata accessor for PhoneError();
  v0[629] = v8;
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  v0[635] = OUTLINED_FUNCTION_45();
  v11 = type metadata accessor for DialogPhase();
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  v0[641] = OUTLINED_FUNCTION_45();
  v14 = type metadata accessor for OutputGenerationManifest();
  v0[647] = v14;
  v15 = *(v14 - 8);
  OUTLINED_FUNCTION_24_5();
  v0[653] = v16;
  v18 = *(v17 + 64);
  v0[659] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for Locale();
  v0[665] = v19;
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_24_5();
  v0[671] = v21;
  v23 = *(v22 + 64);
  v0[677] = OUTLINED_FUNCTION_45();
  v24 = type metadata accessor for EmergencyCountdownModel();
  v0[683] = v24;
  OUTLINED_FUNCTION_21(v24);
  v26 = *(v25 + 64);
  v0[689] = OUTLINED_FUNCTION_45();
  v27 = type metadata accessor for CommonDirectAction();
  v0[695] = v27;
  OUTLINED_FUNCTION_21(v27);
  v29 = *(v28 + 64);
  v0[701] = OUTLINED_FUNCTION_45();
  v30 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v30, v31, v32);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = v0[623];
  v2 = v0[617];
  v3 = v0[605];
  v4 = v0[593];

  OUTLINED_FUNCTION_24_15();

  OUTLINED_FUNCTION_24_15();

  OUTLINED_FUNCTION_24_15();

  OUTLINED_FUNCTION_24_15();
  outlined init with copy of SignalProviding(v4, (v0 + 487));
  v5 = swift_allocObject();
  v0[707] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  outlined init with take of PhoneCallFeatureFlagProviding(v0 + 487, v5 + 32);
  *(v5 + 72) = 0;

  v6 = v3;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
  swift_asyncLet_begin();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine20LabelExecutionResultCy27PhoneCallFlowDelegatePlugin05StartH10CATsSimpleC018EmergencyCountdownB3IdsOGMd, &_s16SiriDialogEngine20LabelExecutionResultCy27PhoneCallFlowDelegatePlugin05StartH10CATsSimpleC018EmergencyCountdownB3IdsOGMR);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_get_throwing(v7, v8, v9, v10);
}

{
  *(v1 + 5704) = v0;
  if (!v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  v2 = OUTLINED_FUNCTION_22_10();
  return _swift_asyncLet_finish(v2, v1 + v3, v5, v1 + v4);
}

{
  OUTLINED_FUNCTION_24_1();
  v42 = v0;
  v1 = [*(v0 + 4648) dialog];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogElement, DialogElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Array.count.getter(v2))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    v5 = [v4 fullPrint];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 5752) = v6;
    *(v0 + 5800) = v8;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v9 = *(v0 + 4840);
    v10 = *(v0 + 4792);
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = v9;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 4840);
      v16 = *(v0 + 4792);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v41 = v19;
      *v17 = 138412546;
      *(v17 + 4) = v15;
      *v18 = v15;
      *(v17 + 12) = 2080;
      v20 = v15;
      v21 = App.appIdentifier.getter();
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v21 = 7104878;
        v23 = 0xE300000000000000;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v41);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_0, v13, v14, "EmergencyCountdown intent for launch app = %@ \n app=%s", v17, 0x16u);
      outlined destroy of PhoneCallNLIntent?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v25 = *(v0 + 5608);
    v26 = *(v0 + 5560);
    v27 = *(v0 + 4744);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v29 + 8))(v28, v29);
    *(v0 + 5848) = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 3976));
    __swift_destroy_boxed_opaque_existential_1((v0 + 3976));
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v25, type metadata accessor for CommonDirectAction);
    OUTLINED_FUNCTION_55();
    swift_storeEnumTagMultiPayload();
    v30 = v27[3];
    v31 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v30);
    (*(v31 + 8))(v30, v31);
    *(v0 + 5896) = CommonDirectAction.toSAIntentGroupRunSiriKitExecutor(deviceState:)((v0 + 4056));
    __swift_destroy_boxed_opaque_existential_1((v0 + 4056));
    _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v25, type metadata accessor for CommonDirectAction);
    v32 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
    v33 = v0 + 656;
    v34 = v0 + 4376;
    v35 = v0 + 4896;
  }

  else
  {

    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.siriPhone);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "#EmergencyCountdownOutputBuilder intentConfirmationEmergency CAT returned no dialog. ", v39, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v32 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
    v33 = v0 + 2576;
    v34 = v0 + 4648;
    v35 = v0 + 7584;
  }

  return _swift_asyncLet_get_throwing(v33, v34, v32, v35);
}

{
  OUTLINED_FUNCTION_15();
  v1[743] = v0;
  if (v0)
  {
    v2 = v1[725];

    v3 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v3, v4, v5);
  }

  else
  {
    v1[749] = v1[547];
    v1[755] = v1[548];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v6, v7, v8, v9);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[761] = v0;
  if (v0)
  {
    v2 = v1[755];
    v3 = v1[725];

    v4 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    v1[767] = v1[571];
    v1[773] = v1[572];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v7, v8, v9, v10);
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[779] = v0;
  if (v0)
  {
    v2 = v1[773];
    v3 = v1[755];
    v4 = v1[725];

    v5 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v5, v6, v7);
  }

  else
  {
    v1[785] = v1[569];
    v1[791] = v1[570];

    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v8, v9, v10, v11);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1[797] = v0;
  if (v0)
  {
    v2 = v1[791];
    v3 = v1[773];
    v4 = v1[755];
    v5 = v1[725];

    v6 = OUTLINED_FUNCTION_10();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v1[803] = v1[567];
    v1[809] = v1[568];

    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_28_13();

    return _swift_asyncLet_get_throwing(v9, v10, v11, v12);
  }
}

{
  OUTLINED_FUNCTION_27();
  v1[815] = v0;
  if (v0)
  {
    v2 = v1[809];
    v3 = v1[791];
    v4 = v1[773];
    v5 = v1[755];
    v6 = v1[725];

    v7 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v7 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  OUTLINED_FUNCTION_23_0();
  v1 = *(v0 + 4600);
  *(v0 + 7245) = 0;

  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;

  *(v0 + 6568) = v2;
  *(v0 + 6616) = v4;
  v5 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_get_throwing(v5, v0 + 4600, v6, v0 + 6624);
}

{
  OUTLINED_FUNCTION_23_0();
  v1[833] = v0;
  if (v0)
  {
    v2 = v1[827];
    v3 = v1[809];
    v4 = v1[791];
    v5 = v1[773];
    v6 = v1[755];
    v7 = v1[725];

    v8 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v8 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v8, 0, 0);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *(v0 + 4600);
  *(v0 + 7244) = 1;

  v2 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v4 = v3;
  *(v0 + 4584) = v2;
  *(v0 + 4592) = v3;

  *(v0 + 6712) = v4;
  v5 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_get_throwing(v5, v0 + 4600, v6, v0 + 7008);
}

{
  OUTLINED_FUNCTION_23_0();
  v1[845] = v0;
  if (v0)
  {
    v2 = v1[839];
    v3 = v1[827];
    v4 = v1[809];
    v5 = v1[791];
    v6 = v1[773];
    v7 = v1[755];
    v8 = v1[725];

    v9 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  else
  {
    v1[851] = v1[573];
    v9 = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  }

  return _swift_task_switch(v9, 0, 0);
}

{
  v58 = *(v0 + 6808);
  v56 = *(v0 + 6616);
  v57 = *(v0 + 6712);
  v54 = *(v0 + 6568);
  v59 = *(v0 + 6424);
  v60 = *(v0 + 6472);
  v44 = *(v0 + 6136);
  v45 = *(v0 + 6184);
  v40 = *(v0 + 5992);
  v41 = *(v0 + 6040);
  v50 = *(v0 + 6328);
  v51 = *(v0 + 5896);
  v47 = *(v0 + 6280);
  v48 = *(v0 + 5848);
  *(v0 + 7243) = 2;
  v55 = *(v0 + 5800);
  v53 = *(v0 + 5752);
  v1 = *(v0 + 5512);
  v2 = *(v0 + 5464);
  v3 = *(v0 + 5416);
  v39 = *(v0 + 5368);
  v46 = *(v0 + 5320);
  v64 = *(v0 + 4888);
  v65 = *(v0 + 5272);
  v62 = *(v0 + 5128);
  v63 = *(v0 + 4840);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4600);

  v6 = dispatch thunk of LabelExecutionResult.subscript.getter();
  v42 = v7;
  v43 = v6;

  v61 = v4;
  v9 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  v10 = *(v8 + 8);
  v49 = v48;
  v52 = v51;
  v10(v9, v8);
  v11 = *(v0 + 4168);
  __swift_project_boxed_opaque_existential_1((v0 + 4136), *(v0 + 4160));
  dispatch thunk of DeviceState.siriLocale.getter();
  v12 = Locale.identifier.getter();
  v14 = v13;
  (*(v39 + 8))(v3, v46);
  LOBYTE(v46) = [objc_opt_self() saeAvailable];
  v15 = (v1 + v2[18]);
  *v15 = 0xD000000000000017;
  v15[1] = 0x8000000000456AA0;
  *(v0 + 4520) = v40;
  *(v0 + 4528) = v41;
  Loggable.init(wrappedValue:)();
  v16 = v2[5];
  *(v0 + 4504) = v44;
  *(v0 + 4512) = v45;
  OUTLINED_FUNCTION_25_13();
  v17 = v2[6];
  *(v0 + 4488) = v47;
  *(v0 + 4496) = v50;
  OUTLINED_FUNCTION_25_13();
  v18 = v2[8];
  *(v0 + 4472) = v54;
  *(v0 + 4480) = v56;
  OUTLINED_FUNCTION_25_13();
  v19 = v2[9];
  *(v0 + 4456) = v58;
  *(v0 + 4464) = v57;
  OUTLINED_FUNCTION_25_13();
  v20 = v2[10];
  *(v0 + 4440) = v43;
  *(v0 + 4448) = v42;
  OUTLINED_FUNCTION_25_13();
  v21 = v2[7];
  *(v0 + 4424) = v59;
  *(v0 + 4432) = v60;
  OUTLINED_FUNCTION_25_13();
  v22 = v2[11];
  *(v0 + 4408) = v53;
  *(v0 + 4416) = v55;
  OUTLINED_FUNCTION_25_13();
  v23 = v2[16];
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAIntentGroupRunSiriKitExecutor, SAIntentGroupRunSiriKitExecutor_ptr);
  v24 = v49;
  CodableAceObject.init(wrappedValue:)();
  v25 = v2[17];
  v26 = v52;
  CodableAceObject.init(wrappedValue:)();
  v27 = v2[12];
  *(v0 + 4392) = v12;
  *(v0 + 4400) = v14;
  OUTLINED_FUNCTION_25_13();
  v28 = v2[15];
  *(v0 + 7242) = 0;
  Loggable.init(wrappedValue:)();
  v29 = v2[13];
  *(v0 + 7241) = 1;
  Loggable.init(wrappedValue:)();
  v30 = v2[14];
  *(v0 + 7240) = v46;
  Loggable.init(wrappedValue:)();

  __swift_destroy_boxed_opaque_existential_1((v0 + 4136));
  static DialogPhase.confirmation.getter();
  v31 = swift_task_alloc();
  *(v31 + 16) = v1;
  *(v31 + 24) = v63;
  *(v31 + 32) = v64;
  *(v31 + 40) = v61;
  *(v31 + 48) = 0;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v32 = v61[3];
  v33 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v32);
  (*(v33 + 136))(v32, v33);
  v34 = *(v0 + 4240);
  *(v0 + 6856) = v34;
  *(v0 + 6904) = *(v0 + 4248);
  *(v0 + 6952) = __swift_project_boxed_opaque_existential_1((v0 + 4216), v34);
  *(v0 + 4320) = type metadata accessor for PhoneSnippetDataModels();
  *(v0 + 4328) = lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels(&lazy protocol witness table cache variable for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels, type metadata accessor for PhoneSnippetDataModels);
  __swift_allocate_boxed_opaque_existential_1((v0 + 4296));
  v35 = OUTLINED_FUNCTION_55();
  outlined init with copy of EmergencyCountdownModel(v35, v36);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v37 = swift_allocObject();
  *(v0 + 7000) = v37;
  *(v37 + 16) = xmmword_426260;

  return _swift_asyncLet_get_throwing(v0 + 2576, v0 + 4648, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 7968);
}

{
  *(v1 + 7048) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }
}

{
  OUTLINED_FUNCTION_27();
  v1 = v0[863];
  v2 = v0[581];
  *(v0[875] + 32) = v2;
  v3 = *(v1 + 8);
  v4 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)[1];
  v5 = v2;
  v6 = swift_task_alloc();
  v0[887] = v6;
  *v6 = v0;
  v6[1] = static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:);
  v7 = v0[875];
  v8 = v0[869];
  v9 = v0[857];
  v10 = v0[659];
  v11 = v0[587];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v11, v0 + 537, v7, v10, v9, v3);
}

{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_6();
  *v2 = v1;
  v4 = *(v3 + 7096);
  v5 = *(v3 + 7000);
  v6 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1((v1 + 4296));
  v8 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = *(v0 + 5848);
  v2 = *(v0 + 5512);
  v3 = *(v0 + 5272);
  v4 = *(v0 + 5224);
  v5 = *(v0 + 5176);

  v6 = *(v4 + 8);
  v7 = OUTLINED_FUNCTION_55();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_1((v0 + 4216));
  OUTLINED_FUNCTION_16_26();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v2, v9);
  v10 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_finish(v10, v0 + 4600, v11, v0 + 7872);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7824);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7776);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7728);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7680);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7632);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  v1 = v0[707];
  v2 = v0[701];
  v3 = v0[689];
  v4 = v0[677];
  v5 = v0[659];
  v6 = v0[641];
  v7 = v0[635];
  v8 = v0[623];
  v9 = v0[617];

  OUTLINED_FUNCTION_11();

  return v10();
}

{
  *(v1 + 7144) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }

  else
  {
    return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
  }
}

{
  v1 = *(v0 + 5080);
  v2 = *(v0 + 5032);
  v3 = [*(v0 + 4648) catId];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v1[2] = 0xD000000000000041;
  v1[3] = 0x800000000045B1B0;
  v1[4] = 0xD000000000000071;
  v1[5] = 0x800000000045B200;
  v1[6] = 37;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type PhoneSnippetDataModels and conformance PhoneSnippetDataModels(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
  *(v0 + 7192) = swift_allocError();
  PhoneError.logged()(v7);
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v1, type metadata accessor for PhoneError);
  swift_willThrow();
  v8 = OUTLINED_FUNCTION_22_10();

  return _swift_asyncLet_finish(v8, v0 + 4600, v9, v0 + 4176);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 2576, v0 + 4648, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 4016);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8160);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 3216, v0 + 4552, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 4096);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4256);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6576);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  v0 = OUTLINED_FUNCTION_22_10();
  return OUTLINED_FUNCTION_1_61(v0, v1, v2);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7488);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7440);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7392);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7344);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6960);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4656);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4704);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4752);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4800);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4848);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 4992);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5040);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5088);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5136);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5184);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5328);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5376);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5424);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5472);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5520);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5664);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5712);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5760);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5808);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 5856);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6000);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6048);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6096);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6144);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6192);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6336);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6384);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6432);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6480);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6528);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6720);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6768);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6816);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6864);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 6912);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_17_16();

  v1 = OUTLINED_FUNCTION_3_41();

  return _swift_asyncLet_finish(v1, v2, v3, v4);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7104);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7152);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 3216, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7200);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 1936, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7248);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7296);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v1 = *(v0 + 7000);
  v2 = *(v0 + 5848);
  v3 = *(v0 + 5512);
  v4 = *(v0 + 5272);
  v5 = *(v0 + 5224);
  v6 = *(v0 + 5176);

  (*(v5 + 8))(v4, v6);
  *(v1 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 4296));
  __swift_destroy_boxed_opaque_existential_1((v0 + 4216));
  OUTLINED_FUNCTION_16_26();
  _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_1(v3, v7);
  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_16();

  return _swift_asyncLet_finish(v8, v9, v10, v11);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 2576, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8064);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 16, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 8112);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 3216, v0 + 4552, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 3936);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return _swift_asyncLet_finish(v0 + 1936, v0 + 4568, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), v0 + 3856);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

{
  return OUTLINED_FUNCTION_1_61(v0 + 656, static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:), 7920);
}

{
  return OUTLINED_FUNCTION_0_1(static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:));
}

uint64_t static EmergencyCountdownOutputBuilder.makeEmergencyCountdownSnippet(sharedGlobals:app:intent:intentResponse:startCallCATsSimple:displayTextCATsSimple:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 7192);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 7144);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 5704);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 5944);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6088);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6232);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6376);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6520);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6664);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 6760);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_24_1();
  v13 = *(v12 + 7048);
  OUTLINED_FUNCTION_2_51();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_16();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}