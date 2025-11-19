unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t CarPlaySuggestionsIntentDonator.__allocating_init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CarPlaySuggestionsIntentDonator.init(clientProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void *CarPlaySuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v62 = a3;
  v60 = a1;
  v61 = a2;
  v67 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v67);
  v66 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v64 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v19 = *(v55 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v55);
  v54 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v56 = *(v53 - 8);
  v22 = *(v56 + 64);
  __chkstk_darwin(v53);
  v52 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[3] = &type metadata for Features;
  v71[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v71[0]) = 2;
  v24 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v71);
  if (v24)
  {
    if (a4)
    {
      result = GenericExperience.components.getter();
    }

    else
    {
      result = &_swiftEmptyArrayStorage;
    }

    v51 = result[2];
    if (v51)
    {
      v26 = 0;
      v50 = result + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v49 = v56 + 16;
      v48 = v56 + 8;
      v47 = (v19 + 8);
      v68 = v15 + 8;
      v69 = v15 + 16;
      v65 = enum case for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.showMapPoints(_:);
      v58 = (v5 + 8);
      v59 = (v5 + 32);
      v27 = v64;
      v46 = result;
      while (v26 < result[2])
      {
        v28 = v56;
        v29 = *(v56 + 72);
        v57 = v26;
        v30 = v52;
        v31 = v53;
        (*(v56 + 16))(v52, &v50[v29 * v26], v53);
        v32 = v54;
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
        (*(v28 + 8))(v30, v31);
        v33 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.siriCommandBuilder.getter();
        result = (*v47)(v32, v55);
        v34 = *(v33 + 16);
        if (v34)
        {
          v35 = 0;
          v70 = v33 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
          while (v35 < *(v33 + 16))
          {
            (*(v15 + 16))(v18, v70 + *(v15 + 72) * v35, v14);
            Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
            (*(v15 + 8))(v18, v14);
            v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
            v39 = *(v38 - 8);
            if ((*(v39 + 48))(v13, 1, v38) != 1)
            {
              outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(v13, v27);
              v40 = (*(v39 + 88))(v27, v38);
              if (v40 == v65)
              {
                (*(v39 + 96))(v27, v38);
                (*v59)(v66, v27, v67);
                if (one-time initialization token for information != -1)
                {
                  swift_once();
                }

                v41 = type metadata accessor for Logger();
                __swift_project_value_buffer(v41, static Logger.information);
                v42 = Logger.logObject.getter();
                v43 = static os_log_type_t.info.getter();
                if (os_log_type_enabled(v42, v43))
                {
                  v44 = swift_slowAlloc();
                  *v44 = 0;
                  _os_log_impl(&dword_0, v42, v43, "Donating Geo Intent to Siri Suggestions", v44, 2u);
                }

                v36 = *(v63 + 24);
                (*(v63 + 16))(v71);
                v37 = v66;
                specialized static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(v66, v62, v60, v61, v71);
                __swift_destroy_boxed_opaque_existential_0Tm(v71);
                (*v58)(v37, v67);
                v27 = v64;
              }

              else
              {
                (*(v39 + 8))(v27, v38);
              }
            }

            ++v35;
            result = outlined destroy of Any?(v13, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
            if (v34 == v35)
            {
              goto LABEL_7;
            }
          }

          __break(1u);
          break;
        }

LABEL_7:
        v26 = v57 + 1;

        result = v46;
        if (v26 == v51)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Features and conformance Features()
{
  result = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features and conformance Features);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Features and conformance Features;
  if (!lazy protocol witness table cache variable for type Features and conformance Features)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Features and conformance Features);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[100] = v15;
  v8[99] = v14;
  v8[98] = a8;
  v8[97] = a7;
  v8[96] = a6;
  v8[95] = a5;
  v8[94] = a4;
  v9 = type metadata accessor for SiriSuggestions.Intent();
  v8[101] = v9;
  v10 = *(v9 - 8);
  v8[102] = v10;
  v11 = *(v10 + 64) + 15;
  v8[103] = swift_task_alloc();

  return _swift_task_switch(closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:), 0, 0);
}

uint64_t closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)()
{
  v89 = v0;
  v1 = *(v0 + 760);
  v2 = specialized static PegasusACEConverters.makeShowMapPoints(params:)();
  *(v0 + 832) = v2;
  v3 = [v2 showDirections];
  *(v0 + 880) = v3;
  if (v3 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v4 = [v2 itemDestination];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 label];

      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        *(v0 + 104) = &type metadata for String;
        *(v0 + 112) = &protocol witness table for String;
        *(v0 + 120) = &protocol witness table for String;
        *(v0 + 80) = v7;
        *(v0 + 88) = v9;
        outlined init with take of Decodable & Encodable & Sendable((v0 + 80), (v0 + 128));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v88 = &_swiftEmptyDictionarySingleton;
        v11 = *(v0 + 152);
        v12 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 128, v11);
        v13 = *(v11 - 8);
        v14 = *(v13 + 64) + 15;
        v15 = swift_task_alloc();
        (*(v13 + 16))(v15, v12, v11);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v15, v15[1], 0xD000000000000010, 0x80000000000BE310, isUniquelyReferenced_nonNull_native, &v88);
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));

        v16 = v88;
        v17 = [v2 itemDestination];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 location];

          if (v19)
          {
            v20 = [v19 latitude];

            if (v20)
            {
              [v20 doubleValue];
              *(v0 + 680) = &type metadata for Double;
              *(v0 + 688) = &protocol witness table for Double;
              *(v0 + 696) = &protocol witness table for Double;
              *(v0 + 656) = v21;
              outlined init with take of Decodable & Encodable & Sendable((v0 + 656), (v0 + 704));
              v22 = swift_isUniquelyReferenced_nonNull_native();
              v88 = v16;
              v23 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 704, *(v0 + 728));
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x74616E6974736564, 0xEE0074614C6E6F69, v22, &v88, *v23);

              __swift_destroy_boxed_opaque_existential_0Tm((v0 + 704));
              v16 = v88;
            }
          }
        }

        v24 = [v2 itemDestination];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 location];

          if (v26)
          {
            v27 = [v26 longitude];

            if (v27)
            {
              [v27 doubleValue];
              *(v0 + 584) = &type metadata for Double;
              *(v0 + 592) = &protocol witness table for Double;
              *(v0 + 600) = &protocol witness table for Double;
              *(v0 + 560) = v28;
              outlined init with take of Decodable & Encodable & Sendable((v0 + 560), (v0 + 608));
              v29 = swift_isUniquelyReferenced_nonNull_native();
              v88 = v16;
              v30 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 608, *(v0 + 632));
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x74616E6974736564, 0xEF676E6F4C6E6F69, v29, &v88, *v30);

              __swift_destroy_boxed_opaque_existential_0Tm((v0 + 608));
              v16 = v88;
            }
          }
        }

        v31 = [v2 itemDestination];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 detailType];

          if (v33)
          {
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            *(v0 + 488) = &type metadata for String;
            *(v0 + 496) = &protocol witness table for String;
            *(v0 + 504) = &protocol witness table for String;
            *(v0 + 464) = v34;
            *(v0 + 472) = v36;
            outlined init with take of Decodable & Encodable & Sendable((v0 + 464), (v0 + 512));
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v88 = v16;
            v38 = *(v0 + 536);
            v39 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 512, v38);
            v40 = *(v38 - 8);
            v41 = *(v40 + 64) + 15;
            v42 = swift_task_alloc();
            (*(v40 + 16))(v42, v39, v38);
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v42, v42[1], 0xD000000000000015, 0x80000000000BE350, v37, &v88);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 512));

            v16 = v88;
          }
        }

        v43 = [v2 itemSource];
        if (v43)
        {
          v44 = v43;
          v45 = [v43 detailType];

          if (v45)
          {
            v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v48 = v47;

            *(v0 + 392) = &type metadata for String;
            *(v0 + 400) = &protocol witness table for String;
            *(v0 + 408) = &protocol witness table for String;
            *(v0 + 368) = v46;
            *(v0 + 376) = v48;
            outlined init with take of Decodable & Encodable & Sendable((v0 + 368), (v0 + 416));
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v88 = v16;
            v50 = *(v0 + 440);
            v51 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 416, v50);
            v52 = *(v50 - 8);
            v53 = *(v52 + 64) + 15;
            v54 = swift_task_alloc();
            (*(v52 + 16))(v54, v51, v50);
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(*v54, v54[1], 0xD000000000000010, 0x80000000000BE330, v49, &v88);
            __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));

            v16 = v88;
          }
        }

        v55 = *(v0 + 768);
        v56 = PommesResponse.requestLocation.getter();
        if (v56)
        {
          v57 = v56;
          [v56 coordinate];
          *(v0 + 200) = &type metadata for Double;
          *(v0 + 208) = &protocol witness table for Double;
          *(v0 + 216) = &protocol witness table for Double;
          *(v0 + 176) = v58;
          outlined init with take of Decodable & Encodable & Sendable((v0 + 176), (v0 + 224));
          v59 = swift_isUniquelyReferenced_nonNull_native();
          v88 = v16;
          v60 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 224, *(v0 + 248));
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x4C746E6572727563, 0xEA00000000007461, v59, &v88, *v60);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 224));
          v61 = v88;
          [v57 coordinate];
          *(v0 + 296) = &type metadata for Double;
          *(v0 + 304) = &protocol witness table for Double;
          *(v0 + 312) = &protocol witness table for Double;
          *(v0 + 272) = v62;
          outlined init with take of Decodable & Encodable & Sendable((v0 + 272), (v0 + 320));
          v63 = swift_isUniquelyReferenced_nonNull_native();
          v88 = v61;
          v64 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 320, *(v0 + 344));
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x4C746E6572727563, 0xEB00000000676E6FLL, v63, &v88, *v64);
          __swift_destroy_boxed_opaque_existential_0Tm((v0 + 320));
          v16 = v88;
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          __swift_project_value_buffer(v65, static Logger.information);
          v66 = v57;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 134545921;
            [v66 coordinate];
            *(v69 + 4) = v70;
            *(v69 + 12) = 2053;
            [v66 coordinate];
            *(v69 + 14) = v71;
            _os_log_impl(&dword_0, v67, v68, "Location from PommesResponse: (%{sensitive}f, %{sensitive}f)", v69, 0x16u);
          }

          else
          {

            v67 = v66;
          }
        }

        else
        {
          if (one-time initialization token for information != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          __swift_project_value_buffer(v77, static Logger.information);
          v67 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v67, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = 0;
            _os_log_impl(&dword_0, v67, v78, "Location unavailable in PommesResponse", v79, 2u);
          }
        }

        *(v0 + 840) = v16;
        v80 = *(v0 + 776);
        v81 = v80[3];
        v82 = v80[4];
        __swift_project_boxed_opaque_existential_1(v80, v81);
        v83 = async function pointer to SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)[1];
        v84 = swift_task_alloc();
        *(v0 + 848) = v84;
        v85 = *(v82 + 8);
        *v84 = v0;
        v84[1] = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
        v86 = *(v0 + 792);
        v87 = *(v0 + 784);

        return SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)(v87, v86, v16, v81, v85);
      }
    }

    v72 = *(v0 + 752);
  }

  else
  {
    v73 = *(v0 + 752);
  }

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v74 = *(v0 + 824);

  v75 = *(v0 + 8);

  return v75();
}

{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(v2 + 856) = v0;

  v5 = *(v2 + 840);
  if (v0)
  {
    v6 = *(v2 + 880);

    v7 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  else
  {

    v7 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  return _swift_task_switch(v7, 0, 0);
}

{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 776);
  if (*(v0 + 880))
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*(v0 + 880))
  {
    v6 = 0x657461676976616ELL;
  }

  else
  {
    v6 = 0x686372616573;
  }

  v7 = v4[3];
  v8 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B8690;
  *(inited + 32) = 1651664246;
  v10 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(v10, &_sSS_SStMd, &_sSS_SStMR);
  Action.init(actionId:params:)();
  (*(v2 + 104))(v1, enum case for SiriSuggestions.Intent.action(_:), v3);
  v11 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)[1];
  v12 = swift_task_alloc();
  *(v0 + 864) = v12;
  v13 = *(v8 + 8);
  *v12 = v0;
  v12[1] = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  v14 = *(v0 + 824);
  v15 = *(v0 + 800);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:submitEngagement:)(v15, v14, 1, v7, v13);
}

{
  v2 = *(*v1 + 864);
  v3 = *(*v1 + 824);
  v4 = *(*v1 + 816);
  v5 = *(*v1 + 808);
  v8 = *v1;
  *(*v1 + 872) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  else
  {
    v6 = closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = *(v0 + 752);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v2 = *(v0 + 824);

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *(v0 + 856);
  v2 = *(v0 + 752);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Received error donating to Siri Suggestions: %@", v6, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v9 = *(v0 + 824);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 872);
  v2 = *(v0 + 752);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v4, v5, "Received error donating to Siri Suggestions: %@", v6, 0xCu);
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v9 = *(v0 + 824);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t CarPlaySuggestionsIntentDonator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CarPlaySuggestionsIntentDonator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance CarPlaySuggestionsIntentDonator()
{
  (*(**v0 + 96))();
  v2 = *(v1 + 8);

  return v2();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v30 = &type metadata for String;
  v31 = &protocol witness table for String;
  v32 = &protocol witness table for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v10 = *a6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 48 * v12);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      return outlined init with take of Decodable & Encodable & Sendable(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a5 & 1);
  v21 = *a6;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, &type metadata for String);
  v25 = *(*(&type metadata for String - 1) + 64);
  __chkstk_darwin(v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  specialized _NativeDictionary._insert(at:key:value:)(v12, a3, a4, *v27, v27[1], v18);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v29);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v24 = a5;
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  v27 = &protocol witness table for Double;
  v9 = *a4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return outlined init with take of Decodable & Encodable & Sendable(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
  v20 = *a4;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v24, &type metadata for Double);
  specialized _NativeDictionary._insert(at:key:value:)(v11, a1, a2, v17, *v23);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v24);
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Decodable & Encodable & Sendable(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = outlined init with take of Decodable & Encodable & Sendable(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

void specialized static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a5;
  v76 = a2;
  v77 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v75 = *(v77 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v77);
  v81 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v80 = &v62 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v83 = type metadata accessor for PerformanceUtil.Ticket();
  v74 = *(v83 - 8);
  v13 = *(v74 + 64);
  v14 = __chkstk_darwin(v83);
  v79 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v62 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v78 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v25;
  __chkstk_darwin(v24);
  v27 = &v62 - v26;
  v82 = a3;
  UUID.init(uuidString:)();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of Any?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.information);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v84[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, a4, v84);
      _os_log_impl(&dword_0, v29, v30, "Unable to convert requestId: %s to UUID", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }
  }

  else
  {
    v68 = v7;
    v67 = v22;
    v33 = *(v22 + 32);
    v70 = v27;
    v71 = v21;
    v66 = v22 + 32;
    v65 = v33;
    v33(v27, v20, v21);
    Date.init()();
    v34 = v16;
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v35 = v82;
    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.information);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();

    v39 = os_log_type_enabled(v37, v38);
    v64 = a4;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v84[0] = v41;
      *v40 = 136315138;
      *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, a4, v84);
      _os_log_impl(&dword_0, v37, v38, "Donating Siri Suggestions claim against: %s for SiriGeo", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
    }

    v42 = v16;
    v44 = v70;
    v43 = v71;
    v45 = v67;
    v63 = v34;
    v46 = type metadata accessor for TaskPriority();
    (*(*(v46 - 8) + 56))(v80, 1, 1, v46);
    v47 = v74;
    (*(v74 + 16))(v79, v42, v83);
    v48 = v75;
    (*(v75 + 16))(v81, v72, v77);
    outlined init with copy of OutputPublisherAsync(v73, v84);
    (*(v45 + 16))(v78, v44, v43);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v50 = (v13 + *(v48 + 80) + v49) & ~*(v48 + 80);
    v51 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
    v54 = (*(v45 + 80) + v53 + 16) & ~*(v45 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    (*(v47 + 32))(v55 + v49, v79, v83);
    (*(v48 + 32))(v55 + v50, v81, v77);
    v56 = v76;
    *(v55 + v51) = v76;
    outlined init with take of SiriSuggestionsBroker(v84, v55 + v52);
    v57 = (v55 + v53);
    v58 = v64;
    *v57 = v82;
    v57[1] = v58;
    v59 = v55 + v54;
    v60 = v71;
    v65(v59, v78, v71);

    v61 = v56;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v80, &async function pointer to partial apply for closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:), v55);

    (*(v47 + 8))(v63, v83);
    (*(v45 + 8))(v70, v60);
  }
}

uint64_t sub_209E8()
{
  v20 = type metadata accessor for PerformanceUtil.Ticket();
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v16 = (v2 + 32) & ~v2;
  v3 = *(v1 + 64);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v6 = (v16 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = type metadata accessor for UUID();
  v9 = *(v18 - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v10;
  v17 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v16, v20);
  (*(v4 + 8))(v0 + v6, v19);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v8));
  v14 = *(v0 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

  (*(v9 + 8))(v0 + v11, v18);

  return _swift_deallocObject(v0, v11 + v17, v12 | 7);
}

uint64_t partial apply for closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PerformanceUtil.Ticket() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = v5;
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = (*(v12 + 80) + v11 + 16) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v9);
  v17 = v1 + v11;
  v19 = *(v1 + v11);
  v18 = *(v17 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #1 in static CarPlaySuggestionsIntentDonator.donateShowMapsPointsToSiriSuggestions(_:pommesResponse:requestID:client:)(a1, v14, v15, v1 + v22, v1 + v8, v16, v1 + v10, v19);
}

uint64_t static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v99 = a3;
  v103 = a1;
  v97 = type metadata accessor for SportsResolverMetrics();
  v7 = *(v97 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v97);
  v95 = &v82[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v91 = &v82[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v98 = &v82[-v14];
  v90 = a4;
  v15 = type metadata accessor for SportsPersonalizationSelection();
  v101 = *(v15 - 8);
  v102 = v15;
  v16 = *(v101 + 64);
  __chkstk_darwin(v15);
  v100 = &v82[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v89 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v24 = &v82[-v23];
  __chkstk_darwin(v22);
  v26 = &v82[-v25];
  v27 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v87 = *(v27 - 8);
  v28 = *(v87 + 64);
  v29 = __chkstk_darwin(v27);
  v85 = &v82[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v32 = &v82[-v31];
  v33 = type metadata accessor for SportsResolverConfig();
  v93 = *(v33 - 8);
  v94 = v33;
  v34 = *(v93 + 64);
  __chkstk_darwin(v33);
  v104 = &v82[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v26, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v37 = *(v36 - 8);
  v88 = *(v37 + 48);
  v38 = v88(v26, 1, v36);
  v96 = v7;
  v86 = v27;
  if (v38 == 1)
  {
    outlined destroy of Any?(v26, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v39 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v37 + 8))(v26, v36);
    if (*(v39 + 16))
    {
      v40 = v87;
      (*(v87 + 16))(v32, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v27);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      (*(v40 + 8))(v32, v27);
    }

    else
    {
    }
  }

  v41 = v104;
  SportsResolverConfig.init(intentTypeName:bundleId:)();
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v24, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v43 = v101;
  v42 = v102;
  v44 = v24;
  v45 = v100;
  (*(v101 + 16))(v100, v103, v102);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v83 = v47;
    v48 = swift_slowAlloc();
    v105[0] = swift_slowAlloc();
    *v48 = 136315394;
    v49 = v89;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v44, v89, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v50 = v88(v49, 1, v36);
    v84 = v44;
    if (v50 == 1)
    {
      outlined destroy of Any?(v49, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v51 = 0xE700000000000000;
      v52 = v92;
      v53 = 0x6E776F6E6B6E75;
      v55 = v100;
      v54 = v101;
    }

    else
    {
      v58 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v37 + 8))(v49, v36);
      v52 = v92;
      v55 = v100;
      if (*(v58 + 16))
      {
        v59 = v87;
        v60 = v85;
        v61 = v86;
        (*(v87 + 16))(v85, v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80)), v86);

        v53 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v51 = v62;
        (*(v59 + 8))(v60, v61);
      }

      else
      {

        v51 = 0xE700000000000000;
        v53 = 0x6E776F6E6B6E75;
      }

      v54 = v101;
    }

    outlined destroy of Any?(v84, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v51, v105);

    *(v48 + 4) = v63;
    *(v48 + 12) = 2080;
    v64 = v102;
    v65 = SportsPersonalizationSelection<A>.debugDescription.getter(v102, v52);
    v67 = v66;
    (*(v54 + 8))(v55, v64);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v105);

    *(v48 + 14) = v68;
    _os_log_impl(&dword_0, v46, v83, "Logging sports personalization metrics: intent=%s selection=%s", v48, 0x16u);
    swift_arrayDestroy();

    v57 = v98;
    v41 = v104;
    v56 = v95;
  }

  else
  {

    (*(v43 + 8))(v45, v42);
    outlined destroy of Any?(v44, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v56 = v95;
    v57 = v98;
    v52 = v92;
  }

  closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(v103, v41, v90, v52, v57);
  v69 = v91;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v57, v91, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v71 = v96;
  v70 = v97;
  if ((*(v96 + 48))(v69, 1, v97) == 1)
  {
    outlined destroy of Any?(v57, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v93 + 8))(v41, v94);
    return outlined destroy of Any?(v69, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v71 + 32))(v56, v69, v70);
  SportsResolverMetrics.logSportsMetric()();
  if (!v73)
  {
    goto LABEL_21;
  }

  swift_errorRetain();
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v74, v75))
  {

LABEL_21:
    (*(v71 + 8))(v56, v70);
    v81 = v57;
    goto LABEL_22;
  }

  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v105[0] = v77;
  *v76 = 136315138;
  swift_getErrorValue();
  v78 = Error.localizedDescription.getter();
  v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v105);

  *(v76 + 4) = v80;
  _os_log_impl(&dword_0, v74, v75, "Logging sports metrics failed with: %s", v76, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v77);

  (*(v71 + 8))(v56, v70);
  v81 = v98;
LABEL_22:
  outlined destroy of Any?(v81, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v93 + 8))(v104, v94);
}

uint64_t closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsResolverConfig();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsPersonalizationSelection();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v27 - v20;
  (*(v22 + 16))(&v27 - v20, a1);
  v23 = (*(v9 + 48))(v21, 2, a3);
  v24 = v23;
  if (v23)
  {
    if (v23 != 1)
    {
      (*(v14 + 16))(v17, v28, v13);
      SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
      v24 = 0;
    }
  }

  else
  {
    (*(v9 + 32))(v12, v21, a3);
    (*(v14 + 16))(v17, v28, v13);
    (*(a4 + 8))(a3, a4);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    (*(v9 + 8))(v12, a3);
  }

  v25 = type metadata accessor for SportsResolverMetrics();
  return (*(*(v25 - 8) + 56))(a5, v24, 1, v25);
}

uint64_t PushOffQueryFlow.__allocating_init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3, a4);

  return v11;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int Features.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t key path setter for PushOffQueryFlow.nlContextUpdate : PushOffQueryFlow(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, &v9 - v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(**a2 + 152))(v7);
}

uint64_t PushOffQueryFlow.nlContextUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  swift_beginAccess();
  return outlined init with copy of (String, Decodable & Encodable & Sendable)(v1 + v3, a1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t PushOffQueryFlow.nlContextUpdate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  swift_beginAccess();
  outlined assign with take of NLContextUpdate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t PushOffQueryFlow.targetedRequest.getter()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t PushOffQueryFlow.targetedRequest.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for PushOffQueryFlow.state : PushOffQueryFlow(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  v8 = *(v4 + 16);
  *(v4 + 16) = v5;
  outlined copy of PushOffQueryFlow.State(v2, v3, v5);
  outlined consume of PushOffQueryFlow.State(v6, v7, v8);
  PushOffQueryFlow.state.didset();
}

void PushOffQueryFlow.state.didset()
{
  v1 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = v1 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    outlined copy of PushOffQueryFlow.State(*v6, *(v6 + 8), *(v6 + 16));
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_0, oslog, v3, "#PushOffQueryFlow transitioning to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }
}

id PushOffQueryFlow.state.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of PushOffQueryFlow.State(*v1, *(v1 + 8), *(v1 + 16));
  return v2;
}

uint64_t PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(a1, a2, a3, a4);

  return v4;
}

void PushOffQueryFlow.setState(_:)(void *a1, void *a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = a1;
  *(v7 + 8) = a2;
  v10 = *(v7 + 16);
  *(v7 + 16) = a3;
  outlined copy of PushOffQueryFlow.State(a1, a2, a3);
  outlined consume of PushOffQueryFlow.State(v8, v9, v10);
  PushOffQueryFlow.state.didset();
}

uint64_t PushOffQueryFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Parse();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Input();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v46 = v8;
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.information);
  v15 = *(v10 + 16);
  v47 = a1;
  v15(v13, a1, v9);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v5;
    v19 = v18;
    v43 = swift_slowAlloc();
    v48[0] = v43;
    *v19 = 136315394;
    v48[1] = (*(*v1 + 192))();
    v48[2] = v20;
    v49 = v21;
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v48);
    v45 = v4;
    v25 = v24;

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = Input.description.getter();
    v28 = v27;
    (*(v10 + 8))(v13, v9);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, v48);
    v4 = v45;

    *(v19 + 14) = v29;
    _os_log_impl(&dword_0, v16, v17, "#PushOffQueryFlow entering on(input:) with state: %s, input: %s", v19, 0x16u);
    swift_arrayDestroy();

    v5 = v44;
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v30 = (*(*v2 + 192))();
  if (v32 != 3 || v30 | v31)
  {
    outlined consume of PushOffQueryFlow.State(v30, v31, v32);
    return 0;
  }

  v33 = v46;
  Input.parse.getter();
  if ((*(v5 + 88))(v33, v4) != enum case for Parse.pommesResponse(_:))
  {
    (*(v5 + 8))(v33, v4);
    return 0;
  }

  (*(v5 + 96))(v33, v4);
  v34 = *v33;
  v35 = v2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  v36 = 1;
  swift_beginAccess();
  v38 = *v35;
  v37 = *(v35 + 8);
  *v35 = v34;
  *(v35 + 8) = 0;
  v39 = *(v35 + 16);
  *(v35 + 16) = 1;
  v40 = v34;
  outlined consume of PushOffQueryFlow.State(v38, v37, v39);
  PushOffQueryFlow.state.didset();

  return v36;
}

uint64_t PushOffQueryFlow.execute()(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = PushOffQueryFlow.execute();
  }

  else
  {
    *(v4 + 224) = a1;
    v7 = PushOffQueryFlow.execute();
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t PushOffQueryFlow.execute()()
{
  v46 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = __swift_project_value_buffer(v2, static Logger.information);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v45 = v8;
    *v7 = 136315138;
    *(v0 + 104) = (*(*v6 + 192))();
    *(v0 + 112) = v9;
    *(v0 + 120) = v10;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v45);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "#PushOffQueryFlow entering execute with state: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }

  *(v0 + 160) = v6;
  v14 = (*(**(v0 + 144) + 192))();
  *(v0 + 168) = v14;
  *(v0 + 176) = v15;
  if (v16 > 1u)
  {
    if (v16 != 2)
    {
      v36 = *(v0 + 136);
      static ExecuteResponse.ongoing(requireInput:)();
LABEL_22:
      v42 = *(v0 + 8);

      return v42();
    }

    v30 = *(v0 + 136);
LABEL_21:
    static ExecuteResponse.complete()();
    goto LABEL_22;
  }

  v17 = v14;
  if (!v16)
  {
    v18 = *(v0 + 144);
    v19 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    *(v0 + 184) = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    v20 = v18 + v19;
    v21 = v15;
    swift_beginAccess();
    v22 = *v20;
    v23 = *(v20 + 8);
    *v20 = 0;
    *(v20 + 8) = 0;
    v24 = *(v20 + 16);
    *(v20 + 16) = 3;
    outlined consume of PushOffQueryFlow.State(v22, v23, v24);
    PushOffQueryFlow.state.didset();
    v25 = PushOffQueryFlow.buildPommesSearchRequest(query:)(v17, v21);
    *(v0 + 192) = v25;
    outlined consume of PushOffQueryFlow.State(v17, v21, 0);
    if (v25)
    {
      outlined init with copy of (String, Decodable & Encodable & Sendable)(*(v0 + 144) + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, v0 + 16, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
      v26 = *(v0 + 40);
      if (v26)
      {
        v27 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
        v28 = async function pointer to dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)[1];
        v29 = swift_task_alloc();
        *(v0 + 208) = v29;
        *v29 = v0;
        v29[1] = PushOffQueryFlow.execute();

        return dispatch thunk of PommesXPCSearching.searchInfiEntity(request:)(v25, v26, v27);
      }

      outlined destroy of Any?(v0 + 16, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
    }

    v37 = *(v0 + 136);
    v38 = *(v0 + 144) + *(v0 + 184);
    v39 = *v38;
    v40 = *(v38 + 8);
    *v38 = 0;
    *(v38 + 8) = 0;
    v41 = *(v38 + 16);
    *(v38 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v39, v40, v41);
    PushOffQueryFlow.state.didset();
    goto LABEL_21;
  }

  v31 = *(**(v0 + 144) + 256);
  v44 = (v31 + *v31);
  v32 = v31[1];
  v33 = swift_task_alloc();
  *(v0 + 200) = v33;
  *v33 = v0;
  v33[1] = PushOffQueryFlow.execute();
  v34 = *(v0 + 136);
  v35 = *(v0 + 144);

  return v44(v34, v17);
}

{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  outlined consume of PushOffQueryFlow.State(*(v0 + 168), *(v0 + 176), 1);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[28];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v3 + v0[23];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v5 = *v4;
  v6 = *(v4 + 1);
  *v4 = v1;
  *(v4 + 1) = 0;
  v7 = v4[16];
  v4[16] = 1;
  v8 = v1;
  outlined consume of PushOffQueryFlow.State(v5, v6, v7);
  PushOffQueryFlow.state.didset();

  v15 = (*v3 + 256);
  v16 = (*v15 + **v15);
  v9 = (*v15)[1];
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = PushOffQueryFlow.execute();
  v11 = v0[28];
  v12 = v0[17];
  v13 = v0[18];

  return v16(v12, v11);
}

{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(PushOffQueryFlow.execute(), 0, 0);
}

{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

{
  v23 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 152);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "#PushOffQueryFlow requestInfiEntityResolution call has an error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v14 = *(v0 + 216);
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 144) + *(v0 + 184);
  v17 = *v16;
  v18 = *(v16 + 8);
  *v16 = 0;
  *(v16 + 8) = 0;
  v19 = *(v16 + 16);
  *(v16 + 16) = 2;
  outlined consume of PushOffQueryFlow.State(v17, v18, v19);
  PushOffQueryFlow.state.didset();
  static ExecuteResponse.complete()();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t PushOffQueryFlow.execute(completion:)()
{
  type metadata accessor for PushOffQueryFlow();
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PushOffQueryFlow.handlePommesResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(PushOffQueryFlow.handlePommesResponse(_:), 0, 0);
}

uint64_t PushOffQueryFlow.handlePommesResponse(_:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PushOffQueryFlow going to handlePommesResponse...", v4, 2u);
  }

  v5 = v0[8];

  if (specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)())
  {
    v6 = v0[7];
    v7 = v0[9] + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 8);
    *v7 = xmmword_B97E0;
    v10 = *(v7 + 16);
    *(v7 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v8, v9, v10);
    PushOffQueryFlow.state.didset();
    static ExecuteResponse.complete()();
LABEL_13:
    v23 = v0[1];

    return v23();
  }

  v11 = v0[8];
  v12 = dispatch thunk of PommesResponse.primaryPluginIdentifier()();
  if (v13)
  {
    v0[5] = v12;
    v0[6] = v13;
    v14 = swift_task_alloc();
    *(v14 + 16) = v0 + 5;
    v15 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v14, &outlined read-only object #0 of one-time initialization function for defaultPegasusBundleIdentifiers);

    if ((v15 & 1) == 0)
    {
      v21 = v0[9];
      v22 = v0[7];
      PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:)(v0[8]);
      goto LABEL_13;
    }
  }

  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = PushOffQueryFlow.handlePommesResponse(_:);
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[7];

  return PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)(v19, v17);
}

{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PushOffQueryFlow.buildPommesSearchRequest(query:)(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v93 = a1;
  v3 = type metadata accessor for DeviceRestrictions();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for InputOrigin();
  v8 = *(v100 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v100);
  v89 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v99 = v82 - v13;
  v14 = __chkstk_darwin(v12);
  v98 = v82 - v15;
  __chkstk_darwin(v14);
  v104 = v82 - v16;
  v17 = type metadata accessor for ResponseMode();
  v96 = *(v17 - 8);
  v97 = v17;
  v18 = *(v96 + 64);
  __chkstk_darwin(v17);
  v95 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v94 = v82 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v91 = v82 - v25;
  v26 = type metadata accessor for MultiUserState();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ParseStateXPC();
  v90 = *(v30 - 8);
  v31 = *(v90 + 64);
  __chkstk_darwin(v30);
  v33 = v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Siri_Nlu_External_UserParse();
  v102 = *(v34 - 8);
  v103 = v34;
  v35 = *(v102 + 64);
  v36 = __chkstk_darwin(v34);
  v101 = v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (*(*v2 + 168))(v36);
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    v39 = SiriEnvironment.currentRequest.getter();
  }

  v40 = CurrentRequest.executionRequestId.getter();
  if (!v41)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.information);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_17;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "#PushOffQueryFlow executionRequestId is not available, cannot construct PommesSearchRequestXPC";
    goto LABEL_16;
  }

  v84 = v40;
  v85 = v7;
  v86 = v4;
  v42 = v39;
  v43 = CurrentRequest.resultCandidateId.getter();
  if (!v44)
  {

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.information);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_17;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "#PushOffQueryFlow resultCandidateId is not available, cannot construct PommesSearchRequestXPC";
LABEL_16:
    _os_log_impl(&dword_0, v60, v61, v63, v62, 2u);

LABEL_17:

    return 0;
  }

  v45 = v44;
  v88 = v8;
  v83 = v3;
  v82[0] = v43;
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, &type metadata accessor for Siri_Nlu_External_UserParse);
  v46 = v101;
  v47 = v103;
  v87 = v42;
  static Message.with(_:)();
  v82[2] = CurrentRequest.currentDeviceAssistantId.getter();
  v82[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR);
  v49 = v102;
  v50 = *(v102 + 72);
  v51 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_B8690;
  (*(v49 + 16))(v52 + v51, v46, v47);
  *v33 = v82[0];
  *(v33 + 1) = v45;
  *(v33 + 2) = v52;
  v33[24] = 1;
  (*(v90 + 104))(v33, enum case for ParseStateXPC.rc(_:), v30);
  v53 = type metadata accessor for PommesSearchRequestXPCBuilder();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  PommesSearchRequestXPCBuilder.init(domain:assistantId:requestId:parseState:utterance:)();
  dispatch thunk of PommesSearchRequestXPCBuilder.withListenAfterSpeaking(_:)();

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsPushOffRequest(_:)();

  CurrentRequest.multiUserState.getter();
  MultiUserState.isEnabled.getter();
  outlined destroy of KnowledgeFallbackHelper(v29, &type metadata accessor for MultiUserState);
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsMultiUser(_:)();

  v56 = v91;
  CurrentRequest.audioSource.getter();
  v57 = type metadata accessor for AudioSource();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v56, 1, v57) == 1)
  {
    outlined destroy of Any?(v56, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  }

  else
  {
    AudioSource.aceValue.getter();
    (*(v58 + 8))(v56, v57);
  }

  v66 = v100;
  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioSource(_:)();

  v67 = v94;
  CurrentRequest.audioDestination.getter();
  v68 = type metadata accessor for AudioDestination();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v67, 1, v68) == 1)
  {
    outlined destroy of Any?(v67, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    AudioDestination.aceValue.getter();
    (*(v69 + 8))(v67, v68);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withAudioDestination(_:)();

  v70 = v95;
  CurrentRequest.responseMode.getter();
  ResponseMode.aceValue.getter();
  (*(v96 + 8))(v70, v97);
  dispatch thunk of PommesSearchRequestXPCBuilder.withResponseMode(_:)();

  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  dispatch thunk of DeviceState.isEyesFree.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsEyesFree(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v109);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  dispatch thunk of DeviceState.isVoiceTriggerEnabled.getter();
  dispatch thunk of PommesSearchRequestXPCBuilder.withIsVoiceTriggerEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v109);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v100 = dispatch thunk of PommesSearchRequestXPCBuilder.withIsTextToSpeechEnabled(_:)();

  __swift_destroy_boxed_opaque_existential_0Tm(&v109);
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(&v109, v110);
  dispatch thunk of DeviceState.inputOrigin.getter();
  v71 = *(v88 + 104);
  v72 = v98;
  v71(v98, enum case for InputOrigin.clientGenerated(_:), v66);
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, &type metadata accessor for InputOrigin);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v107 == v105 && v108 == v106)
  {
    v73 = 1;
  }

  else
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v74 = *(v88 + 8);
  v74(v72, v66);
  v74(v104, v66);

  __swift_destroy_boxed_opaque_existential_0Tm(&v109);
  if ((v73 & 1) == 0)
  {
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(&v109, v110);
    dispatch thunk of DeviceState.inputOrigin.getter();
    v75 = v89;
    v71(v89, enum case for InputOrigin.triggerlessFollowup(_:), v66);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v107 != v105 || v108 != v106)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v74(v75, v66);
    v74(v99, v66);

    __swift_destroy_boxed_opaque_existential_0Tm(&v109);
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withIsTriggerlessFollowup(_:)();

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v76 = v85;
  dispatch thunk of CurrentDevice.restrictions.getter();

  v77 = DeviceRestrictions.aceSet.getter();
  (*(v86 + 8))(v76, v83);
  v78 = *(v77 + 16);
  if (!v78)
  {
    goto LABEL_34;
  }

  v79 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v77 + 16), 0);
  v80 = specialized Sequence._copySequenceContents(initializing:)(&v109, v79 + 4, v78, v77);
  outlined consume of Set<String>.Iterator._Variant();
  if (v80 != v78)
  {
    __break(1u);
LABEL_34:
  }

  dispatch thunk of PommesSearchRequestXPCBuilder.withDeviceRestrictions(_:)();

  v81 = dispatch thunk of PommesSearchRequestXPCBuilder.build()();

  (*(v102 + 8))(v101, v103);
  return v81;
}

uint64_t closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D27_Nlu_External_UserDialogActVGMR);
  v2 = *(type metadata accessor for Siri_Nlu_External_UserDialogAct() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_B8690;
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
  static Message.with(_:)();
  Siri_Nlu_External_UserParse.userDialogActs.setter();
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser and conformance Siri_Nlu_External_Parser, &type metadata accessor for Siri_Nlu_External_Parser);
  static Message.with(_:)();
  Siri_Nlu_External_UserParse.parser.setter();
  Siri_Nlu_External_UserParse.probability.setter();
  return Siri_Nlu_External_UserParse.comparableProbability.setter();
}

uint64_t closure #1 in closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v9 - v6;
  Siri_Nlu_External_DelegatedUserDialogAct.init()();
  static PommesSearchRequest.PommesParserId.getter();
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  (*(v1 + 16))(v5, v7, v0);
  Siri_Nlu_External_UserDialogAct.delegated.setter();
  return (*(v1 + 8))(v7, v0);
}

uint64_t closure #2 in closure #1 in PushOffQueryFlow.buildPommesSearchRequest(query:)()
{
  v0 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nlu_External_Parser.AlgorithmType();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Siri_Nlu_External_Parser.AlgorithmType.model(_:));
  Siri_Nlu_External_Parser.algorithm.setter();
  (*(v1 + 104))(v4, enum case for Siri_Nlu_External_Parser.ParserIdentifier.psc(_:), v0);
  return Siri_Nlu_External_Parser.parserID.setter();
}

uint64_t PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.information);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#PushOffQueryFlow in handleClientDrivenExperience", v7, 2u);
  }

  v19[0] = v2;
  type metadata accessor for PushOffQueryFlow();
  lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type PushOffQueryFlow and conformance PushOffQueryFlow, type metadata accessor for PushOffQueryFlow);
  v8 = CompositionSearchFlow.findFlowForPommesResponse(_:)();
  if (v8)
  {
    v9 = v8;
    v19[3] = type metadata accessor for AnyFlow();
    v19[4] = &protocol witness table for AnyFlow;
    v19[0] = v9;
    v10 = *(*v2 + 288);

    v10(a1, v19);

    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#PushOffQueryFlow failed to render a client-driven experience", v14, 2u);
    }

    v15 = v2 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v16 = *v15;
    v17 = *(v15 + 8);
    *v15 = 0;
    *(v15 + 8) = 0;
    v18 = *(v15 + 16);
    *(v15 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v16, v17, v18);
    PushOffQueryFlow.state.didset();
    return static ExecuteResponse.complete()();
  }
}

uint64_t PushOffQueryFlow.handleClientDrivenExperience(pommesResponse:renderFlow:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = type metadata accessor for Date();
  v50 = *(v5 - 8);
  v51 = v5;
  v6 = *(v50 + 64);
  __chkstk_darwin(v5);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Input();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[3];
  v19 = a2[4];
  v48 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v18);
  *v12 = a1;
  (*(v9 + 104))(v12, enum case for Parse.pommesResponse(_:), v8);
  v20 = a1;
  Input.init(parse:)();
  LOBYTE(v18) = dispatch thunk of Flow.on(input:)();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.information);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "#PushOffQueryFlow pushing render component flow for client-driven experience", v24, 2u);
    }

    v25 = v52 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v26 = *v25;
    v27 = *(v25 + 8);
    *v25 = 0;
    *(v25 + 8) = 0;
    v28 = *(v25 + 16);
    *(v25 + 16) = 3;
    outlined consume of PushOffQueryFlow.State(v26, v27, v28);
    PushOffQueryFlow.state.didset();
    v29 = v48[4];
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    return static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "#PushOffQueryFlow render flow refused input, returning error flow", v34, 2u);
    }

    v35 = v52;
    v36 = v52 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v37 = *v36;
    v38 = *(v36 + 8);
    *v36 = 0;
    *(v36 + 8) = 0;
    v39 = *(v36 + 16);
    *(v36 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v37, v38, v39);
    PushOffQueryFlow.state.didset();
    v54 = v35;
    type metadata accessor for PerformanceUtil();
    v40 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v40);
    v43 = &v54;
    v41 = v49;
    Date.init()();
    v45 = v42;
    v46 = type metadata accessor for ExecuteResponse();
    v44 = partial apply for specialized closure #1 in FlowTrampolining.makeResponse(forErrorMessage:);
    LOBYTE(v43) = 2;
    v42[0] = "makeResponse(forErrorMessage:)";
    v42[1] = 30;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    return (*(v50 + 8))(v41, v51);
  }
}

uint64_t PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for KnowledgeFallbackHelper();
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Parse();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v8 = *(v7 + 64) + 15;
  v3[14] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Input() - 8) + 64) + 15;
  v3[15] = swift_task_alloc();

  return _swift_task_switch(PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:), 0, 0);
}

uint64_t PushOffQueryFlow.handleServerDrivenExperience(pommesResponse:)()
{
  v35 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#PushOffQueryFlow in handleServerDrivenExperience", v4, 2u);
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  v12 = v0[7];

  *v6 = v12;
  (*(v8 + 104))(v6, enum case for Parse.pommesResponse(_:), v7);
  v13 = v12;
  Input.init(parse:)();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  type metadata accessor for PommesResponse();
  static PommesResponse.makeDefaultInteractionStream()();
  LODWORD(v6) = [objc_opt_self() isSiriLocationServicesPromptingEnabled];
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  v14 = v11[5];
  v15 = type metadata accessor for GenerativeModelsAvailability();
  (*(*(v15 - 8) + 56))(v9 + v14, 1, 1, v15);
  *(v9 + v11[6]) = xmmword_B86A0;
  *(v9 + v11[7]) = xmmword_B86A0;
  outlined init with copy of KnowledgeFallbackHelper(v9, v10, type metadata accessor for KnowledgeFallbackHelper);
  v16 = _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(v5, v33, v34, v6, v10);
  outlined destroy of KnowledgeFallbackHelper(v9, type metadata accessor for KnowledgeFallbackHelper);
  if (v16)
  {
    v17 = v0[6];
    v0[5] = v16;
    type metadata accessor for InformationRoutingFlow(0);
    lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(&lazy protocol witness table cache variable for type InformationRoutingFlow and conformance InformationRoutingFlow, type metadata accessor for InformationRoutingFlow);
    static ExecuteResponse.complete<A>(next:)();
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "#PushOffQueryFlow failed to construct routing flow to render server-driven response", v20, 2u);
    }

    v21 = v0[8];
    v22 = v0[6];

    v23 = v21 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
    swift_beginAccess();
    v24 = *v23;
    v25 = *(v23 + 8);
    *v23 = 0;
    *(v23 + 8) = 0;
    v26 = *(v23 + 16);
    *(v23 + 16) = 2;
    outlined consume of PushOffQueryFlow.State(v24, v25, v26);
    PushOffQueryFlow.state.didset();
    static ExecuteResponse.complete()();
  }

  v28 = v0[14];
  v27 = v0[15];
  v30 = v0[10];
  v29 = v0[11];

  v31 = v0[1];

  return v31();
}

uint64_t PushOffQueryFlow.deinit()
{
  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest);

  v2 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_experienceSelector);

  v3 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_renderComponentFlowFactory);

  outlined destroy of Any?(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher));
  v4 = *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_informationViewFactory);

  outlined consume of PushOffQueryFlow.State(*(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state), *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state + 8), *(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state + 16));
  return v0;
}

uint64_t PushOffQueryFlow.__deallocating_deinit()
{
  PushOffQueryFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t (*protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 160))();
  return protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 184))();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

uint64_t (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance PushOffQueryFlow(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for CompositionSearchFlow.targetedRequest.modify in conformance PushOffQueryFlow;
}

void protocol witness for CompositionSearchFlow.nlContextUpdate.modify in conformance PushOffQueryFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance PushOffQueryFlow(uint64_t a1)
{
  v4 = *(**v1 + 240);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PushOffQueryFlow(uint64_t a1, uint64_t a2)
{
  Flow = type metadata accessor for PushOffQueryFlow();

  return Flow<>.exitValue.getter(Flow, a2);
}

uint64_t _s21InformationFlowPlugin0a7RoutingB0C5input15outputPublisher17interactionStream38isSiriLocationServicesPromptingEnabled23knowledgeFallbackHelperACSg0k3KitB05InputV_AJ06OutputG5Async_p0kA6Search017CurareInteractionI0_pSgSbAA09KnowledgeqR9Providing_ptcfCTf4nnnnen_nAA0zqR0V_Tt4g5(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v333 = a5;
  v329 = a4;
  v332 = a3;
  v334 = a2;
  v317 = type metadata accessor for MessagePayload.ClientAction();
  v316 = *(v317 - 8);
  v6 = *(v316 + 64);
  v7 = __chkstk_darwin(v317);
  v313 = &v308 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v314 = &v308 - v9;
  v319 = type metadata accessor for IFClientActionParse();
  v320 = *(v319 - 8);
  v10 = *(v320 + 64);
  v11 = __chkstk_darwin(v319);
  v315 = &v308 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v321 = &v308 - v13;
  v14 = type metadata accessor for Parse.DirectInvocation();
  v325 = *(v14 - 8);
  v15 = *(v325 + 64);
  v16 = __chkstk_darwin(v14);
  v310 = &v308 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v311 = &v308 - v19;
  v20 = __chkstk_darwin(v18);
  v312 = &v308 - v21;
  v22 = __chkstk_darwin(v20);
  v318 = &v308 - v23;
  v24 = __chkstk_darwin(v22);
  v323 = &v308 - v25;
  __chkstk_darwin(v24);
  v27 = &v308 - v26;
  v28 = type metadata accessor for CATOption();
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v328 = &v308 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for InformationRoutingFlow.State(0);
  v31 = *(*(v327 - 8) + 64);
  __chkstk_darwin(v327);
  v330 = (&v308 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v324 = type metadata accessor for Parse.PegasusResult();
  v322 = *(v324 - 8);
  v33 = *(v322 + 8);
  __chkstk_darwin(v324);
  v35 = &v308 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Parse();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v41 = &v308 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39);
  v44 = &v308 - v43;
  v45 = __chkstk_darwin(v42);
  v47 = (&v308 - v46);
  __chkstk_darwin(v45);
  v49 = &v308 - v48;
  v342[3] = type metadata accessor for KnowledgeFallbackHelper();
  v342[4] = &protocol witness table for KnowledgeFallbackHelper;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v342);
  outlined init with take of KnowledgeFallbackHelper(v333, boxed_opaque_existential_1);
  v333 = a1;
  Input.parse.getter();
  v51 = v37;
  v52 = (*(v37 + 88))(v49, v36);
  v331 = v37;
  if (v52 == enum case for Parse.directInvocation(_:))
  {
    v53 = *(v37 + 16);
    v324 = v49;
    v53(v44, v49, v36);
    (*(v37 + 96))(v44, v36);
    v54 = v325;
    v55 = *(v325 + 16);
    v55(v27, v44, v14);
    v56 = v27;
    v57 = Parse.DirectInvocation.identifier.getter();
    v326 = v36;
    v59 = v14;
    v309 = v44;
    if (v57 == 0xD00000000000003DLL && 0x80000000000BD690 == v58)
    {

LABEL_8:
      v88 = v330;
      v308 = v56;
      v55(v330, v56, v14);
      swift_storeEnumTagMultiPayload();
      outlined init with copy of OutputPublisherAsync(v334, &v341);
      v89 = v332;
      outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      outlined init with copy of OutputPublisherAsync(v342, &v339);
      static AceService.currentAsync.getter();
      static Device.current.getter();
      type metadata accessor for CommonCATs();
      static CATOption.defaultMode.getter();
      v90 = CATWrapper.__allocating_init(options:globals:)();
      type metadata accessor for InformationViewFactory();
      v91 = swift_allocObject();
      v92 = [objc_opt_self() sharedPreferences];
      v93 = type metadata accessor for PommesServerFallbackPreferences();
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      swift_allocObject();
      v96 = PommesServerFallbackPreferences.init(_:)();
      v91[11] = v93;
      v91[12] = &protocol witness table for PommesServerFallbackPreferences;
      v91[8] = v96;
      outlined init with take of SiriSuggestionsBroker(v335, (v91 + 3));
      v91[2] = v90;
      type metadata accessor for ExperienceSelector();
      v97 = swift_allocObject();
      v98 = type metadata accessor for InformationRoutingFlow(0);
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      v76 = swift_allocObject();
      v101 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
      *v101 = 0u;
      *(v101 + 16) = 0u;
      *(v101 + 32) = 0;
      outlined init with copy of KnowledgeFallbackHelper(v88, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
      outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
      outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
      *(v76 + 96) = v91;
      *(v76 + 104) = v97;
      swift_beginAccess();
      outlined assign with copy of CurareInteractionStream?(v340, v101);
      swift_endAccess();
      *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
      outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
      UtteranceNormalizer.init(locale:)();
      v102 = type metadata accessor for AnalyticsComponentIdGenerator();
      v103 = *(v102 + 48);
      v104 = *(v102 + 52);
      swift_allocObject();
      AnalyticsComponentIdGenerator.init()();
      v105 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
      v106 = *(v105 + 48);
      v107 = *(v105 + 52);
      swift_allocObject();
      v108 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
      outlined destroy of Any?(v89, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v334);
      v109 = type metadata accessor for Input();
      (*(*(v109 - 8) + 8))(v333, v109);
      __swift_destroy_boxed_opaque_existential_0Tm(&v336);
      __swift_destroy_boxed_opaque_existential_0Tm(&v339);
      outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(&v341);
      outlined destroy of KnowledgeFallbackHelper(v88, type metadata accessor for InformationRoutingFlow.State);
      v110 = *(v54 + 8);
      v110(v308, v14);
      __swift_destroy_boxed_opaque_existential_0Tm(v342);
      *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v108;
      v110(v309, v14);
LABEL_22:
      v49 = v324;
      v78 = v326;
      goto LABEL_23;
    }

    v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v87)
    {
      goto LABEL_8;
    }

    v136 = v54;
    v137 = v54 + 8;
    v138 = *(v54 + 8);
    v138(v56, v14);
    v55(v323, v44, v14);
    v139 = Parse.DirectInvocation.identifier.getter();
    v322 = v138;
    if (v139 == 0xD000000000000040 && 0x80000000000BD6D0 == v140)
    {
    }

    else
    {
      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v148 & 1) == 0)
      {
        v138(v323, v14);
        v55(v318, v44, v14);
        if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v176)
        {
        }

        else
        {
          v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v212 & 1) == 0)
          {
            v138(v318, v14);
            v55(v312, v44, v14);
            if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000045 && 0x80000000000BD720 == v236)
            {
            }

            else
            {
              v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v237 & 1) == 0)
              {
                v138(v312, v14);
                v55(v311, v44, v14);
                if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000041 && 0x80000000000BD770 == v260)
                {
                }

                else
                {
                  v261 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v261 & 1) == 0)
                  {
                    v138(v311, v14);
                    v284 = v310;
                    (*(v136 + 32))(v310, v44, v59);
                    v285 = v330;
                    v55(v330, v284, v59);
                    swift_storeEnumTagMultiPayload();
                    v286 = v334;
                    outlined init with copy of OutputPublisherAsync(v334, &v341);
                    v327 = v137;
                    v325 = v59;
                    v287 = v332;
                    outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    outlined init with copy of OutputPublisherAsync(v342, &v339);
                    static AceService.currentAsync.getter();
                    static Device.current.getter();
                    type metadata accessor for CommonCATs();
                    static CATOption.defaultMode.getter();
                    v288 = CATWrapper.__allocating_init(options:globals:)();
                    type metadata accessor for InformationViewFactory();
                    v289 = swift_allocObject();
                    v290 = [objc_opt_self() sharedPreferences];
                    v291 = type metadata accessor for PommesServerFallbackPreferences();
                    v292 = *(v291 + 48);
                    v293 = *(v291 + 52);
                    swift_allocObject();
                    v294 = PommesServerFallbackPreferences.init(_:)();
                    v289[11] = v291;
                    v289[12] = &protocol witness table for PommesServerFallbackPreferences;
                    v289[8] = v294;
                    outlined init with take of SiriSuggestionsBroker(v335, (v289 + 3));
                    v289[2] = v288;
                    type metadata accessor for ExperienceSelector();
                    v295 = swift_allocObject();
                    v296 = type metadata accessor for InformationRoutingFlow(0);
                    v297 = *(v296 + 48);
                    v298 = *(v296 + 52);
                    v76 = swift_allocObject();
                    v299 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                    *v299 = 0u;
                    *(v299 + 16) = 0u;
                    *(v299 + 32) = 0;
                    outlined init with copy of KnowledgeFallbackHelper(v285, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                    outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
                    outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
                    *(v76 + 96) = v289;
                    *(v76 + 104) = v295;
                    swift_beginAccess();
                    outlined assign with copy of CurareInteractionStream?(v340, v299);
                    swift_endAccess();
                    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
                    outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                    UtteranceNormalizer.init(locale:)();
                    v300 = type metadata accessor for AnalyticsComponentIdGenerator();
                    v301 = *(v300 + 48);
                    v302 = *(v300 + 52);
                    swift_allocObject();
                    AnalyticsComponentIdGenerator.init()();
                    v303 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                    v304 = *(v303 + 48);
                    v305 = *(v303 + 52);
                    swift_allocObject();
                    v306 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                    outlined destroy of Any?(v287, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(v286);
                    v307 = type metadata accessor for Input();
                    (*(*(v307 - 8) + 8))(v333, v307);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v336);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v339);
                    outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                    __swift_destroy_boxed_opaque_existential_0Tm(&v341);
                    outlined destroy of KnowledgeFallbackHelper(v285, type metadata accessor for InformationRoutingFlow.State);
                    v322(v284, v325);
                    __swift_destroy_boxed_opaque_existential_0Tm(v342);
                    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v306;
                    goto LABEL_22;
                  }
                }

                v262 = v330;
                v55(v330, v311, v14);
                swift_storeEnumTagMultiPayload();
                v263 = v334;
                outlined init with copy of OutputPublisherAsync(v334, &v341);
                v264 = v332;
                outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                outlined init with copy of OutputPublisherAsync(v342, &v339);
                static AceService.currentAsync.getter();
                static Device.current.getter();
                type metadata accessor for CommonCATs();
                static CATOption.defaultMode.getter();
                v265 = CATWrapper.__allocating_init(options:globals:)();
                type metadata accessor for InformationViewFactory();
                v266 = swift_allocObject();
                v267 = [objc_opt_self() sharedPreferences];
                v268 = type metadata accessor for PommesServerFallbackPreferences();
                v269 = *(v268 + 48);
                v270 = *(v268 + 52);
                swift_allocObject();
                v271 = PommesServerFallbackPreferences.init(_:)();
                v266[11] = v268;
                v266[12] = &protocol witness table for PommesServerFallbackPreferences;
                v266[8] = v271;
                outlined init with take of SiriSuggestionsBroker(v335, (v266 + 3));
                v266[2] = v265;
                type metadata accessor for ExperienceSelector();
                v272 = swift_allocObject();
                v273 = type metadata accessor for InformationRoutingFlow(0);
                v274 = *(v273 + 48);
                v275 = *(v273 + 52);
                v76 = swift_allocObject();
                v276 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
                *v276 = 0u;
                *(v276 + 16) = 0u;
                *(v276 + 32) = 0;
                outlined init with copy of KnowledgeFallbackHelper(v262, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
                outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
                outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
                *(v76 + 96) = v266;
                *(v76 + 104) = v272;
                swift_beginAccess();
                outlined assign with copy of CurareInteractionStream?(v340, v276);
                swift_endAccess();
                *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
                outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
                UtteranceNormalizer.init(locale:)();
                v277 = type metadata accessor for AnalyticsComponentIdGenerator();
                v278 = *(v277 + 48);
                v279 = *(v277 + 52);
                swift_allocObject();
                AnalyticsComponentIdGenerator.init()();
                v280 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
                v281 = *(v280 + 48);
                v282 = *(v280 + 52);
                swift_allocObject();
                v170 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
                outlined destroy of Any?(v264, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(v263);
                v283 = type metadata accessor for Input();
                (*(*(v283 - 8) + 8))(v333, v283);
                __swift_destroy_boxed_opaque_existential_0Tm(&v336);
                __swift_destroy_boxed_opaque_existential_0Tm(&v339);
                outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
                __swift_destroy_boxed_opaque_existential_0Tm(&v341);
                outlined destroy of KnowledgeFallbackHelper(v262, type metadata accessor for InformationRoutingFlow.State);
                v172 = &v337;
                goto LABEL_21;
              }
            }

            v238 = v330;
            v55(v330, v312, v14);
            swift_storeEnumTagMultiPayload();
            v239 = v334;
            outlined init with copy of OutputPublisherAsync(v334, &v341);
            v240 = v332;
            outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            outlined init with copy of OutputPublisherAsync(v342, &v339);
            static AceService.currentAsync.getter();
            static Device.current.getter();
            type metadata accessor for CommonCATs();
            static CATOption.defaultMode.getter();
            v241 = CATWrapper.__allocating_init(options:globals:)();
            type metadata accessor for InformationViewFactory();
            v242 = swift_allocObject();
            v243 = [objc_opt_self() sharedPreferences];
            v244 = type metadata accessor for PommesServerFallbackPreferences();
            v245 = *(v244 + 48);
            v246 = *(v244 + 52);
            swift_allocObject();
            v247 = PommesServerFallbackPreferences.init(_:)();
            v242[11] = v244;
            v242[12] = &protocol witness table for PommesServerFallbackPreferences;
            v242[8] = v247;
            outlined init with take of SiriSuggestionsBroker(v335, (v242 + 3));
            v242[2] = v241;
            type metadata accessor for ExperienceSelector();
            v248 = swift_allocObject();
            v249 = type metadata accessor for InformationRoutingFlow(0);
            v250 = *(v249 + 48);
            v251 = *(v249 + 52);
            v76 = swift_allocObject();
            v252 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
            *v252 = 0u;
            *(v252 + 16) = 0u;
            *(v252 + 32) = 0;
            outlined init with copy of KnowledgeFallbackHelper(v238, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
            outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
            outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
            *(v76 + 96) = v242;
            *(v76 + 104) = v248;
            swift_beginAccess();
            outlined assign with copy of CurareInteractionStream?(v340, v252);
            swift_endAccess();
            *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
            outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
            UtteranceNormalizer.init(locale:)();
            v253 = type metadata accessor for AnalyticsComponentIdGenerator();
            v254 = *(v253 + 48);
            v255 = *(v253 + 52);
            swift_allocObject();
            AnalyticsComponentIdGenerator.init()();
            v256 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
            v257 = *(v256 + 48);
            v258 = *(v256 + 52);
            swift_allocObject();
            v170 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
            outlined destroy of Any?(v240, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(v239);
            v259 = type metadata accessor for Input();
            (*(*(v259 - 8) + 8))(v333, v259);
            __swift_destroy_boxed_opaque_existential_0Tm(&v336);
            __swift_destroy_boxed_opaque_existential_0Tm(&v339);
            outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
            __swift_destroy_boxed_opaque_existential_0Tm(&v341);
            outlined destroy of KnowledgeFallbackHelper(v238, type metadata accessor for InformationRoutingFlow.State);
            v172 = &v338;
LABEL_21:
            v173 = v322;
            v322(*(v172 - 32), v14);
            __swift_destroy_boxed_opaque_existential_0Tm(v342);
            *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v170;
            v173(v309, v14);
            goto LABEL_22;
          }
        }

        v213 = v330;
        v55(v330, v318, v14);
        swift_storeEnumTagMultiPayload();
        v214 = v334;
        outlined init with copy of OutputPublisherAsync(v334, &v341);
        v215 = v332;
        outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        outlined init with copy of OutputPublisherAsync(v342, &v339);
        static AceService.currentAsync.getter();
        static Device.current.getter();
        type metadata accessor for CommonCATs();
        static CATOption.defaultMode.getter();
        v216 = CATWrapper.__allocating_init(options:globals:)();
        type metadata accessor for InformationViewFactory();
        v217 = swift_allocObject();
        v218 = [objc_opt_self() sharedPreferences];
        v219 = type metadata accessor for PommesServerFallbackPreferences();
        v220 = *(v219 + 48);
        v221 = *(v219 + 52);
        swift_allocObject();
        v222 = PommesServerFallbackPreferences.init(_:)();
        v217[11] = v219;
        v217[12] = &protocol witness table for PommesServerFallbackPreferences;
        v217[8] = v222;
        outlined init with take of SiriSuggestionsBroker(v335, (v217 + 3));
        v217[2] = v216;
        type metadata accessor for ExperienceSelector();
        v223 = swift_allocObject();
        v224 = type metadata accessor for InformationRoutingFlow(0);
        v225 = *(v224 + 48);
        v226 = *(v224 + 52);
        v76 = swift_allocObject();
        v227 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
        *v227 = 0u;
        *(v227 + 16) = 0u;
        *(v227 + 32) = 0;
        outlined init with copy of KnowledgeFallbackHelper(v213, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
        outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
        outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
        *(v76 + 96) = v217;
        *(v76 + 104) = v223;
        swift_beginAccess();
        outlined assign with copy of CurareInteractionStream?(v340, v227);
        swift_endAccess();
        *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
        outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
        UtteranceNormalizer.init(locale:)();
        v228 = type metadata accessor for AnalyticsComponentIdGenerator();
        v229 = *(v228 + 48);
        v230 = *(v228 + 52);
        swift_allocObject();
        AnalyticsComponentIdGenerator.init()();
        v231 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
        v232 = *(v231 + 48);
        v233 = *(v231 + 52);
        swift_allocObject();
        v170 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
        outlined destroy of Any?(v215, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(v214);
        v234 = type metadata accessor for Input();
        (*(*(v234 - 8) + 8))(v333, v234);
        __swift_destroy_boxed_opaque_existential_0Tm(&v336);
        __swift_destroy_boxed_opaque_existential_0Tm(&v339);
        outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
        __swift_destroy_boxed_opaque_existential_0Tm(&v341);
        outlined destroy of KnowledgeFallbackHelper(v213, type metadata accessor for InformationRoutingFlow.State);
        v172 = v340;
        goto LABEL_21;
      }
    }

    v149 = v330;
    v55(v330, v323, v14);
    swift_storeEnumTagMultiPayload();
    v150 = v334;
    outlined init with copy of OutputPublisherAsync(v334, &v341);
    v151 = v332;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v342, &v339);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v152 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v153 = swift_allocObject();
    v154 = [objc_opt_self() sharedPreferences];
    v155 = type metadata accessor for PommesServerFallbackPreferences();
    v156 = *(v155 + 48);
    v157 = *(v155 + 52);
    swift_allocObject();
    v158 = PommesServerFallbackPreferences.init(_:)();
    v153[11] = v155;
    v153[12] = &protocol witness table for PommesServerFallbackPreferences;
    v153[8] = v158;
    outlined init with take of SiriSuggestionsBroker(v335, (v153 + 3));
    v153[2] = v152;
    type metadata accessor for ExperienceSelector();
    v159 = swift_allocObject();
    v160 = type metadata accessor for InformationRoutingFlow(0);
    v161 = *(v160 + 48);
    v162 = *(v160 + 52);
    v76 = swift_allocObject();
    v163 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v163 = 0u;
    *(v163 + 16) = 0u;
    *(v163 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v149, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
    outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
    *(v76 + 96) = v153;
    *(v76 + 104) = v159;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v340, v163);
    swift_endAccess();
    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
    outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v164 = type metadata accessor for AnalyticsComponentIdGenerator();
    v165 = *(v164 + 48);
    v166 = *(v164 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v167 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v168 = *(v167 + 48);
    v169 = *(v167 + 52);
    swift_allocObject();
    v170 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v151, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v150);
    v171 = type metadata accessor for Input();
    (*(*(v171 - 8) + 8))(v333, v171);
    __swift_destroy_boxed_opaque_existential_0Tm(&v336);
    __swift_destroy_boxed_opaque_existential_0Tm(&v339);
    outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v341);
    outlined destroy of KnowledgeFallbackHelper(v149, type metadata accessor for InformationRoutingFlow.State);
    v172 = &v341;
    goto LABEL_21;
  }

  if (v52 == enum case for Parse.pegasusResults(_:))
  {
    v60 = *(v37 + 16);
    v326 = v36;
    v60(v47, v49, v36);
    (*(v37 + 96))(v47, v36);
    v61 = v322;
    v62 = v324;
    (*(v322 + 4))(v35, v47, v324);
    v63 = v330;
    (*(v61 + 2))(v330, v35, v62);
    swift_storeEnumTagMultiPayload();
    outlined init with copy of OutputPublisherAsync(v334, &v341);
    v64 = v332;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v342, &v339);
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v65 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v66 = swift_allocObject();
    v67 = [objc_opt_self() sharedPreferences];
    v68 = type metadata accessor for PommesServerFallbackPreferences();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();
    v71 = PommesServerFallbackPreferences.init(_:)();
    v66[11] = v68;
    v66[12] = &protocol witness table for PommesServerFallbackPreferences;
    v66[8] = v71;
    outlined init with take of SiriSuggestionsBroker(v335, (v66 + 3));
    v66[2] = v65;
    type metadata accessor for ExperienceSelector();
    v72 = swift_allocObject();
    v73 = type metadata accessor for InformationRoutingFlow(0);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    v76 = swift_allocObject();
    v77 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v77 = 0u;
    *(v77 + 16) = 0u;
    *(v77 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v63, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
    outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
    *(v76 + 96) = v66;
    *(v76 + 104) = v72;
    v78 = v326;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v340, v77);
    swift_endAccess();
    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
    outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v79 = type metadata accessor for AnalyticsComponentIdGenerator();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v82 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v85 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
    outlined destroy of Any?(v64, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v334);
    v86 = type metadata accessor for Input();
    (*(*(v86 - 8) + 8))(v333, v86);
    __swift_destroy_boxed_opaque_existential_0Tm(&v336);
    __swift_destroy_boxed_opaque_existential_0Tm(&v339);
    outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v341);
    outlined destroy of KnowledgeFallbackHelper(v63, type metadata accessor for InformationRoutingFlow.State);
    (*(v61 + 1))(v35, v62);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v342);
    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v85;
    goto LABEL_23;
  }

  if (v52 == enum case for Parse.pommesResponse(_:))
  {
    v111 = *(v37 + 16);
    v326 = v36;
    v111(v47, v49, v36);
    (*(v37 + 96))(v47, v36);
    v112 = *v47;
    v113 = v330;
    *v330 = *v47;
    *(v113 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    v114 = v334;
    outlined init with copy of OutputPublisherAsync(v334, &v341);
    v324 = v49;
    v115 = v332;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    outlined init with copy of OutputPublisherAsync(v342, &v339);
    v116 = v112;
    static AceService.currentAsync.getter();
    static Device.current.getter();
    type metadata accessor for CommonCATs();
    static CATOption.defaultMode.getter();
    v117 = CATWrapper.__allocating_init(options:globals:)();
    type metadata accessor for InformationViewFactory();
    v118 = swift_allocObject();
    v119 = [objc_opt_self() sharedPreferences];
    v120 = type metadata accessor for PommesServerFallbackPreferences();
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    swift_allocObject();
    v123 = PommesServerFallbackPreferences.init(_:)();
    v118[11] = v120;
    v118[12] = &protocol witness table for PommesServerFallbackPreferences;
    v118[8] = v123;
    outlined init with take of SiriSuggestionsBroker(v335, (v118 + 3));
    v118[2] = v117;
    type metadata accessor for ExperienceSelector();
    v124 = swift_allocObject();
    v125 = type metadata accessor for InformationRoutingFlow(0);
    v126 = *(v125 + 48);
    v127 = *(v125 + 52);
    v76 = swift_allocObject();
    v128 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
    *v128 = 0u;
    *(v128 + 16) = 0u;
    *(v128 + 32) = 0;
    outlined init with copy of KnowledgeFallbackHelper(v113, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
    outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
    outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
    *(v76 + 96) = v118;
    *(v76 + 104) = v124;
    swift_beginAccess();
    outlined assign with copy of CurareInteractionStream?(v340, v128);
    swift_endAccess();
    *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
    outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
    UtteranceNormalizer.init(locale:)();
    v129 = type metadata accessor for AnalyticsComponentIdGenerator();
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    AnalyticsComponentIdGenerator.init()();
    v132 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
    v133 = *(v132 + 48);
    v134 = *(v132 + 52);
    swift_allocObject();
    v85 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();

    v78 = v326;
    outlined destroy of Any?(v115, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v114);
    v135 = type metadata accessor for Input();
    (*(*(v135 - 8) + 8))(v333, v135);
    __swift_destroy_boxed_opaque_existential_0Tm(&v336);
    __swift_destroy_boxed_opaque_existential_0Tm(&v339);
    v49 = v324;
    outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v341);
    outlined destroy of KnowledgeFallbackHelper(v113, type metadata accessor for InformationRoutingFlow.State);
    goto LABEL_11;
  }

  if (v52 != enum case for Parse.ifClientAction(_:))
  {
    outlined destroy of Any?(v332, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v334);
    v175 = type metadata accessor for Input();
    (*(*(v175 - 8) + 8))(v333, v175);
    __swift_destroy_boxed_opaque_existential_0Tm(v342);
    v76 = 0;
    v78 = v36;
    goto LABEL_24;
  }

  v141 = *(v37 + 16);
  v324 = v49;
  v78 = v36;
  v141(v41, v49, v36);
  (*(v37 + 96))(v41, v36);
  v142 = v319;
  (*(v320 + 32))(v321, v41, v319);
  v143 = v314;
  IFClientActionParse.clientAction.getter();
  v144 = MessagePayload.ClientAction.toolId.getter();
  v146 = v145;
  v325 = *(v316 + 8);
  (v325)(v143, v317);
  if (v144 == 0x657461676976616ELL && v146 == 0xEB000000006F745FLL)
  {

    v147 = v315;
  }

  else
  {
    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v147 = v315;
    if ((v177 & 1) == 0)
    {
      outlined destroy of Any?(v332, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
      __swift_destroy_boxed_opaque_existential_0Tm(v334);
      v235 = type metadata accessor for Input();
      (*(*(v235 - 8) + 8))(v333, v235);
      (*(v320 + 8))(v321, v142);
      __swift_destroy_boxed_opaque_existential_0Tm(v342);
      v76 = 0;
      v51 = v331;
      v49 = v324;
      goto LABEL_24;
    }
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v178 = type metadata accessor for Logger();
  __swift_project_value_buffer(v178, static Logger.information);
  v179 = v320;
  (*(v320 + 16))(v147, v321, v142);
  v180 = Logger.logObject.getter();
  v181 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v341 = v183;
    *v182 = 136315138;
    v184 = v313;
    IFClientActionParse.clientAction.getter();
    v323 = MessagePayload.ClientAction.toolId.getter();
    v185 = v147;
    v187 = v186;
    (v325)(v184, v317);
    (*(v179 + 8))(v185, v319);
    v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v323, v187, &v341);

    *(v182 + 4) = v188;
    _os_log_impl(&dword_0, v180, v181, "%s shim tool found", v182, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v183);
  }

  else
  {

    (*(v179 + 8))(v147, v142);
  }

  v189 = v330;
  IFClientActionParse.clientAction.getter();
  swift_storeEnumTagMultiPayload();
  v190 = v334;
  outlined init with copy of OutputPublisherAsync(v334, &v341);
  v191 = v332;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v332, v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  outlined init with copy of OutputPublisherAsync(v342, &v339);
  static AceService.currentAsync.getter();
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v192 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v193 = swift_allocObject();
  v194 = [objc_opt_self() sharedPreferences];
  v195 = type metadata accessor for PommesServerFallbackPreferences();
  v196 = *(v195 + 48);
  v197 = *(v195 + 52);
  swift_allocObject();
  v198 = PommesServerFallbackPreferences.init(_:)();
  v193[11] = v195;
  v193[12] = &protocol witness table for PommesServerFallbackPreferences;
  v193[8] = v198;
  outlined init with take of SiriSuggestionsBroker(v335, (v193 + 3));
  v193[2] = v192;
  type metadata accessor for ExperienceSelector();
  v199 = swift_allocObject();
  v200 = type metadata accessor for InformationRoutingFlow(0);
  v201 = *(v200 + 48);
  v202 = *(v200 + 52);
  v76 = swift_allocObject();
  v203 = v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_interactionStream;
  *v203 = 0u;
  *(v203 + 16) = 0u;
  *(v203 + 32) = 0;
  outlined init with copy of KnowledgeFallbackHelper(v189, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_state, type metadata accessor for InformationRoutingFlow.State);
  outlined init with copy of OutputPublisherAsync(&v336, v76 + 56);
  outlined init with copy of OutputPublisherAsync(&v341, v76 + 16);
  *(v76 + 96) = v193;
  *(v76 + 104) = v199;
  swift_beginAccess();
  outlined assign with copy of CurareInteractionStream?(v340, v203);
  swift_endAccess();
  *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_isSiriLocationServicesPromptingEnabled) = v329 & 1;
  outlined init with copy of OutputPublisherAsync(&v339, v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackHelper);
  UtteranceNormalizer.init(locale:)();
  v204 = type metadata accessor for AnalyticsComponentIdGenerator();
  v205 = *(v204 + 48);
  v206 = *(v204 + 52);
  swift_allocObject();
  AnalyticsComponentIdGenerator.init()();
  v207 = type metadata accessor for KnowledgeFallbackInstrumentationUtil();
  v208 = *(v207 + 48);
  v209 = *(v207 + 52);
  swift_allocObject();
  v210 = KnowledgeFallbackInstrumentationUtil.init(analyticsComponentIdGenerator:)();
  outlined destroy of Any?(v191, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v190);
  v211 = type metadata accessor for Input();
  (*(*(v211 - 8) + 8))(v333, v211);
  __swift_destroy_boxed_opaque_existential_0Tm(&v336);
  __swift_destroy_boxed_opaque_existential_0Tm(&v339);
  outlined destroy of Any?(v340, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(&v341);
  outlined destroy of KnowledgeFallbackHelper(v189, type metadata accessor for InformationRoutingFlow.State);
  (*(v320 + 8))(v321, v319);
  __swift_destroy_boxed_opaque_existential_0Tm(v342);
  *(v76 + OBJC_IVAR____TtC21InformationFlowPlugin22InformationRoutingFlow_knowledgeFallbackInstrumentationUtil) = v210;
  v78 = v36;
  v49 = v324;
LABEL_23:
  v51 = v331;
LABEL_24:
  (*(v51 + 8))(v49, v78);
  return v76;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized static PushOffQueryFlow.State.== infix(_:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        return a4 == a1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      type metadata accessor for NSObject();
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized PushOffQueryFlow.init(query:renderComponentFlowFactory:pommesSearchClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_nlContextUpdate;
  v12 = type metadata accessor for NLContextUpdate();
  (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_targetedRequest) = 0;
  type metadata accessor for ExperienceSelector();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_experienceSelector) = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_renderComponentFlowFactory) = a3;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a4, v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_pommesSearchClient, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  v13 = v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_state;
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;

  static OutputPublisherFactory.makeOutputPublisherAsync()();
  outlined init with take of SiriSuggestionsBroker(v22, v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_outputPublisher);
  static Device.current.getter();
  type metadata accessor for CommonCATs();
  static CATOption.defaultMode.getter();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  type metadata accessor for InformationViewFactory();
  v15 = swift_allocObject();
  v16 = [objc_opt_self() sharedPreferences];
  v17 = type metadata accessor for PommesServerFallbackPreferences();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = PommesServerFallbackPreferences.init(_:)();
  v15[11] = v17;
  v15[12] = &protocol witness table for PommesServerFallbackPreferences;
  v15[8] = v20;
  outlined destroy of Any?(a4, &_s21SiriInformationSearch18PommesXPCSearching_pSgMd, &_s21SiriInformationSearch18PommesXPCSearching_pSgMR);
  outlined init with take of SiriSuggestionsBroker(v22, (v15 + 3));
  v15[2] = v14;
  *(v4 + OBJC_IVAR____TtC21InformationFlowPlugin16PushOffQueryFlow_informationViewFactory) = v15;
  return v4;
}

uint64_t outlined assign with take of NLContextUpdate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id outlined copy of PushOffQueryFlow.State(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void outlined consume of PushOffQueryFlow.State(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t type metadata accessor for PushOffQueryFlow()
{
  result = type metadata singleton initialization cache for PushOffQueryFlow;
  if (!type metadata singleton initialization cache for PushOffQueryFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized PushOffQueryFlow.isUserCanceled(pommesResponse:)()
{
  result = dispatch thunk of PommesResponse.experiences.getter();
  if (result >> 62)
  {
    goto LABEL_18;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    do
    {
      if ((result & 0xC000000000000001) != 0)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v1 = *(result + 32);
      }

      v2 = v1;

      type metadata accessor for GenericExperience();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v12 = v2;
      result = dispatch thunk of Experience.catIds.getter();
      v3 = result;
      v4 = (result + 40);
      v5 = -*(result + 16);
      v6 = -1;
      while (1)
      {
        if (v5 + v6 == -1)
        {

          return 0;
        }

        if (++v6 >= *(v3 + 16))
        {
          break;
        }

        v8 = *(v4 - 1);
        v7 = *v4;
        lazy protocol witness table accessor for type String and conformance String();

        if (StringProtocol.contains<A>(_:)())
        {

LABEL_16:

          return 1;
        }

        v4 += 2;
        v9 = StringProtocol.contains<A>(_:)();

        if (v9)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_18:
      v10 = result;
      v11 = _CocoaArrayWrapper.endIndex.getter();
      result = v10;
    }

    while (v11);
  }

  return 0;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t lazy protocol witness table accessor for type PushOffQueryError and conformance PushOffQueryError()
{
  result = lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError;
  if (!lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushOffQueryError and conformance PushOffQueryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PushOffQueryError] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21InformationFlowPlugin17PushOffQueryErrorOGMd, &_sSay21InformationFlowPlugin17PushOffQueryErrorOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PushOffQueryError] and conformance [A]);
  }

  return result;
}

uint64_t sub_296C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_29714(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_29768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for PushOffQueryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushOffQueryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for PushOffQueryFlow()
{
  type metadata accessor for NLContextUpdate?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for NLContextUpdate?()
{
  if (!lazy cache variable for type metadata for NLContextUpdate?)
  {
    type metadata accessor for NLContextUpdate();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NLContextUpdate?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21InformationFlowPlugin012PushOffQueryB0C5StateO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PushOffQueryFlow.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PushOffQueryFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for PushOffQueryFlow.State(uint64_t result, unsigned int a2)
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

uint64_t outlined init with take of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KnowledgeFallbackHelper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of KnowledgeFallbackHelper(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of KnowledgeFallbackHelper(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type PushOffQueryFlow and conformance PushOffQueryFlow(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t String.base64Encode(encoding:)()
{
  v0 = String.data(using:allowLossyConversion:)();
  if (v1 >> 60 == 15)
  {
    return 0;
  }

  v3 = v0;
  v4 = v1;
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data?(v3, v4);
  return countAndFlagsBits;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t String.base64Decode(encoding:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(base64Encoded:options:)();
  v9 = 0;
  if (v8 >> 60 != 15)
  {
    v10 = v7;
    v11 = v8;
    (*(v3 + 16))(v6, a1, v2, 0);
    v12 = String.init(data:encoding:)();
    outlined consume of Data?(v10, v11);
    return v12;
  }

  return v9;
}

uint64_t RenderComponentFlowFactory.__allocating_init(outputPublisher:informationViewFactory:dialogStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  outlined init with take of OutputPublisherAsync(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t RenderComponentFlowFactory.init(outputPublisher:informationViewFactory:dialogStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with take of OutputPublisherAsync(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 192) = v40;
  *(v9 + 200) = v8;
  *(v9 + 184) = v39;
  *(v9 + 168) = v38;
  *(v9 + 152) = a7;
  *(v9 + 160) = a8;
  *(v9 + 136) = a5;
  *(v9 + 144) = a6;
  *(v9 + 120) = a3;
  *(v9 + 128) = a4;
  *(v9 + 104) = a1;
  *(v9 + 112) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR) - 8) + 64) + 15;
  *(v9 + 216) = swift_task_alloc();
  v12 = type metadata accessor for Siri_Nlu_External_SystemDialogAct();
  *(v9 + 224) = v12;
  v13 = *(v12 - 8);
  *(v9 + 232) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 240) = swift_task_alloc();
  v15 = type metadata accessor for NLContextUpdate();
  *(v9 + 248) = v15;
  v16 = *(v15 - 8);
  *(v9 + 256) = v16;
  *(v9 + 264) = *(v16 + 64);
  *(v9 + 272) = swift_task_alloc();
  *(v9 + 280) = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  *(v9 + 288) = v17;
  v18 = *(v17 - 8);
  *(v9 + 296) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow7HintsUIVSgMd, &_s11SiriKitFlow7HintsUIVSgMR) - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  v21 = type metadata accessor for HintsUI();
  *(v9 + 320) = v21;
  v22 = *(v21 - 8);
  *(v9 + 328) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();
  v24 = type metadata accessor for SuggestionContextData();
  *(v9 + 344) = v24;
  v25 = *(v24 - 8);
  *(v9 + 352) = v25;
  v26 = *(v25 + 64) + 15;
  *(v9 + 360) = swift_task_alloc();
  v27 = type metadata accessor for Date();
  *(v9 + 368) = v27;
  v28 = *(v27 - 8);
  *(v9 + 376) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  v30 = type metadata accessor for DialogPhase();
  *(v9 + 400) = v30;
  v31 = *(v30 - 8);
  *(v9 + 408) = v31;
  v32 = *(v31 + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  v33 = type metadata accessor for OSSignpostID();
  *(v9 + 424) = v33;
  v34 = *(v33 - 8);
  *(v9 + 432) = v34;
  v35 = *(v34 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

void RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow making flow to render PegasusResult", v4, 2u);
  }

  if (one-time initialization token for informationLog != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 440);
  v6 = *(v0 + 176);
  v7 = static Logger.informationLog;
  *(v0 + 456) = static Logger.informationLog;
  v8 = v7;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (v6 && (v9 = *(v0 + 176), (dispatch thunk of PommesResponse.listenAfterSpeaking.getter() & 1) != 0))
  {
    v10 = *(v0 + 416);
    static DialogPhase.clarification.getter();
  }

  else
  {
    v11 = *(v0 + 416);
    static DialogPhase.summary.getter();
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "RenderPegasusFlow using server driven experience", v14, 2u);
  }

  v15 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 200);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);
  v20 = *(v0 + 120);
  v25 = *(v0 + 104);
  v26 = *(v0 + 152);

  *(v0 + 464) = type metadata accessor for PerformanceUtil();
  *(v0 + 472) = static PerformanceUtil.shared.getter();
  v21 = swift_task_alloc();
  *(v0 + 480) = v21;
  *(v21 + 16) = v17;
  *(v21 + 24) = v25;
  *(v21 + 40) = v20;
  *(v21 + 48) = v26;
  *(v21 + 64) = v19;
  *(v21 + 72) = v15;
  *(v21 + 80) = v18;
  Date.init()();
  v22 = *(&async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + 1);
  v27 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v23 = swift_task_alloc();
  *(v0 + 488) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12SAUIAddViewsCG_SDy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGSgtMd, &_sSaySo12SAUIAddViewsCG_SDy21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryOSiGSgtMR);
  *v23 = v0;
  v23[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);
  v24 = *(v0 + 392);

  __asm { BR              X8 }
}

{
  v1 = v0[29].i64[0];
  v2 = v0[24].i64[0];
  v3 = v0[9].i64[0];
  v4 = v0[3].i64[1];
  v0[32].i64[0] = v0[4].i64[0];
  v0[4].i64[1] = v4;
  v9 = v0[8];
  v0[32].i64[1] = static PerformanceUtil.shared.getter();
  v5 = swift_task_alloc();
  v0[33].i64[0] = v5;
  v5[1] = vextq_s8(v9, v9, 8uLL);
  v5[2].i64[0] = v3;
  Date.init()();
  v6 = *(&async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + 1);
  v10 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v7 = swift_task_alloc();
  v0[33].i64[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  *v7 = v0;
  v7[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);
  v8 = v0[24].i64[0];

  __asm { BR              X8 }
}

{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Any?(v3, &_s11SiriKitFlow7HintsUIVSgMd, &_s11SiriKitFlow7HintsUIVSgMR);
  }

  else
  {
    v4 = v0[42];
    v5 = v0[25];
    (*(v2 + 32))(v4, v3, v1);
    (*(*v5 + 128))(v4, v0 + 9, v0 + 10);
    (*(v2 + 8))(v4, v1);
  }

  v6 = v0[9];
  v135 = v0;
  v131 = v6 >> 62;
  if (v6 >> 62)
  {
    v106 = v0[9];
    v107 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v106;
    v7 = v107;
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v134 = v6;
  if (v7)
  {
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = (v0[37] + 8);
      while (1)
      {
        if (v9)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v6 + 8 * v8 + 32);
        }

        v15 = v14;
        v16 = [v15 aceId];
        if (v16)
        {
          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = 0;
          v20 = 0xE000000000000000;
        }

        v22 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v22 = v21;
        }

        if (v22)
        {
          v23 = [v15 aceId];
          if (!v23)
          {
            v13 = 0;
            goto LABEL_11;
          }

          v24 = v23;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v11 = v135[38];
          v12 = v135[36];
          UUID.init()();
          UUID.uuidString.getter();
          (*v10)(v11, v12);
        }

        v13 = String._bridgeToObjectiveC()();

LABEL_11:
        ++v8;
        [v15 setAceId:v13];

        v6 = v134;
        if (v7 == v8)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_78;
  }

LABEL_24:
  v25 = v135;
  v26 = v135[10];
  v27 = v26 >> 62;
  if (!(v26 >> 62))
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    v133 = v135[10];
    if (!v28)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    v108 = v135[10];
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v133 = v26;
  if (v28)
  {
LABEL_26:
    if (v28 < 1)
    {
LABEL_78:
      __break(1u);
      return;
    }

    v130 = v26 >> 62;
    v29 = v26 & 0xC000000000000001;
    v30 = (v135[37] + 8);

    v31 = 0;
    while (1)
    {
      if (v29)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v26 + 8 * v31 + 32);
      }

      v37 = v36;
      v38 = [v36 aceId];
      if (v38)
      {
        v39 = v38;
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = 0;
        v42 = 0xE000000000000000;
      }

      v44 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v44 = v43;
      }

      if (v44)
      {
        v45 = [v37 aceId];
        if (!v45)
        {
          v35 = 0;
          goto LABEL_30;
        }

        v46 = v45;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v32 = v25[38];
        v33 = v135[36];
        UUID.init()();
        UUID.uuidString.getter();
        v34 = v33;
        v25 = v135;
        (*v30)(v32, v34);
      }

      v35 = String._bridgeToObjectiveC()();

LABEL_30:
      v26 = v133;
      ++v31;
      [v37 setAceId:v35];

      if (v28 == v31)
      {

        v27 = v130;
        break;
      }
    }
  }

LABEL_44:
  v47 = v25[35];
  v48 = v25[22];
  NLContextUpdate.init()();
  if (!v48)
  {
    outlined destroy of String(&unk_DC5E8);
    goto LABEL_54;
  }

  v49 = v25[22];
  v50 = dispatch thunk of PommesResponse.primaryCatIds()();
  v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v50, &outlined read-only object #0 of RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:));

  outlined destroy of String(&unk_DC5E8);
  if ((v51 & 1) == 0)
  {
LABEL_54:
    v67 = v25[56];
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "Sending PommesContext as usual", v70, 2u);
    }

    v71 = v25[22];

    if (v71)
    {
      v72 = v25[26];
      v73 = v25[22];
      PommesResponse.pommesContext.getter();
      v74 = 0;
    }

    else
    {
      v74 = 1;
    }

    v75 = v25[35];
    v76 = v25[26];
    v77 = type metadata accessor for PommesContext();
    (*(*(v77 - 8) + 56))(v76, v74, 1, v77);
    NLContextUpdate.pommesContext.setter();
    goto LABEL_60;
  }

  v52 = static SystemDialogActHelper.systemAskedUserToRepeat()();
  v54 = v25[28];
  v53 = v25[29];
  v55 = v25[27];
  if (!v52)
  {
    (*(v53 + 56))(v25[27], 1, 1, v25[28]);
    goto LABEL_53;
  }

  swift_getObjectType();
  SIRINLUSystemDialogAct.toNluSystemDialogAct()();
  swift_unknownObjectRelease();
  if ((*(v53 + 48))(v55, 1, v54) == 1)
  {
LABEL_53:
    outlined destroy of Any?(v25[27], &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMd, &_s12SiriNLUTypes0A29_Nlu_External_SystemDialogActVSgMR);
    goto LABEL_54;
  }

  v56 = v25[56];
  (*(v25[29] + 32))(v25[30], v25[27], v25[28]);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_0, v57, v58, "Got gibberish response from Pegasus; sending ask-to-repeat SDA", v59, 2u);
  }

  v60 = v25[35];
  v61 = v25[29];
  v62 = v25[30];
  v63 = v25[28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v64 = *(v61 + 72);
  v65 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_B8690;
  (*(v61 + 16))(v66 + v65, v62, v63);
  NLContextUpdate.nluSystemDialogActs.setter();
  (*(v61 + 8))(v62, v63);
LABEL_60:
  v78 = v25[56];
  v79 = v25[57];
  v80 = v25[55];
  v81 = v25[25];
  v82 = v25[14];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  RenderComponentFlowFactory.saveDialogStateUpdates(from:)(v82);

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134218240;
    if (v131)
    {
      v86 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v86 = *(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8));
    }

    *(v85 + 4) = v86;

    *(v85 + 12) = 2048;
    if (v27)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    }

    *(v85 + 14) = v87;
    _os_log_impl(&dword_0, v83, v84, "RenderPegasusFlow creating output with views %ld : commands %ld", v85, 0x16u);
  }

  else
  {
  }

  v112 = v25[68];
  v118 = v25[53];
  v119 = v25[55];
  v122 = v25[52];
  v120 = v25[51];
  v121 = v25[50];
  v123 = v25[49];
  v124 = v25[48];
  v116 = v25[45];
  v117 = v25[54];
  v114 = v25[44];
  v115 = v25[43];
  v125 = v25[42];
  v126 = v25[39];
  v127 = v25[38];
  v88 = v25[34];
  v89 = v25[35];
  v113 = v89;
  v91 = v25[32];
  v90 = v25[33];
  v92 = v25[31];
  v128 = v25[30];
  v129 = v25[27];
  v132 = v88;
  v111 = v25[23];
  v109 = v25[24];
  v110 = v25[22];
  outlined init with copy of OutputPublisherAsync(v25[25] + 16, (v25 + 2));
  (*(v91 + 16))(v88, v89, v92);
  v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
  v94 = (v90 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  (*(v91 + 32))(v99 + v93, v132, v92);
  *(v99 + v94) = v109;
  *(v99 + v95) = v112;
  *(v99 + v96) = v134;
  *(v99 + v97) = v133;
  *(v99 + v98) = v111;
  *(v99 + ((v98 + 15) & 0xFFFFFFFFFFFFFFF8)) = v110;
  v100 = type metadata accessor for SimpleOutputFlowAsync();
  v101 = *(v100 + 48);
  v102 = *(v100 + 52);
  swift_allocObject();
  v103 = v110;

  v135[12] = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v104 = Flow.eraseToAnyFlow()();
  (*(v91 + 8))(v113, v92);
  (*(v114 + 8))(v116, v115);
  (*(v117 + 8))(v119, v118);

  (*(v120 + 8))(v122, v121);

  v105 = v135[1];

  v105(v104);
}

uint64_t RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v11 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[59];
    v5 = v2[60];
    v7 = v2[49];
    v8 = v2[46];
    v9 = v2[47];
    v10 = *(v9 + 8);
    v2[62] = v10;
    v2[63] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);

    return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v8 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 528);
    v6 = *(v2 + 520);
    v7 = *(v2 + 504);
    (*(v2 + 496))(*(v2 + 384), *(v2 + 368));

    return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
  }
}

{
  v1 = &_swiftEmptyArrayStorage;
  v0[11] = &_swiftEmptyArrayStorage;
  v2 = v0 + 11;
  v3 = specialized RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(v0[20], v0[64], v0[21]);

  if (v3)
  {
    v4 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v13 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = *v2;
  }

  v0[68] = v1;
  v5 = v0[52];
  DialogPhase.aceValue.getter();
  v6 = v0[10];
  if (v6 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v8 = v0[45];
  SuggestionContextData.init(dialogPhase:hasAdditionalCommands:patternId:)();
  v9 = swift_task_alloc();
  v0[69] = v9;
  *v9 = v0;
  v9[1] = RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:);
  v10 = v0[45];
  v11 = v0[39];

  return static SiriSuggestionProvider.getSiriSuggestion(suggestionContextData:)(v11, v10);
}

{
  v1 = *(*v0 + 552);
  v3 = *v0;

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v13;
  v8[11] = v14;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = *(v0[3] + 56);
  v5 = type metadata accessor for DialogPhase();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = v0[12];
  if (v3)
  {
    v8 = v0[11];
    v9 = PommesResponse.requestId.getter();
    v11 = v10;
    PommesResponse.pommesCandidateId.getter();
  }

  else
  {
    v12 = type metadata accessor for PommesCandidateId();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v11 = 0;
    v9 = 0;
  }

  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[2];
  v16 = (*(*v4 + 152))(v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v13, v9, v11, v14);
  v18 = v17;

  outlined destroy of Any?(v14, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  outlined destroy of Any?(v13, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  *v15 = v16;
  v15[1] = v18;

  v19 = v0[1];

  return v19();
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v1 = v0[2];
  *v1 = static CommandFactory.makeCommands(directExecution:delayedActions:sayItComponents:)(v0[3], v0[4], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR) - 8) + 64) + 15;
  v8[19] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[20] = v10;
  v11 = *(v10 - 8);
  v8[21] = v11;
  v12 = *(v11 + 64) + 15;
  v8[22] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v14 = type metadata accessor for AceOutput();
  v8[24] = v14;
  v15 = *(v14 - 8);
  v8[25] = v15;
  v16 = *(v15 + 64) + 15;
  v8[26] = swift_task_alloc();
  v17 = type metadata accessor for NLContextUpdate();
  v8[27] = v17;
  v18 = *(v17 - 8);
  v8[28] = v18;
  v19 = *(v18 + 64) + 15;
  v8[29] = swift_task_alloc();

  return _swift_task_switch(closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:), 0, 0);
}

uint64_t closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)()
{
  v46 = *(v0[28] + 16);
  v46(v0[29], v0[12], v0[27]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[29];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v6 + 16);

    *(v7 + 12) = 2048;
    swift_beginAccess();
    v8 = NLContextUpdate.rrEntities.getter();
    if (v8)
    {
      v9 = v8;
      swift_endAccess();
      v10 = *(v9 + 16);
    }

    else
    {
      swift_endAccess();
      v10 = 0;
    }

    *(v7 + 14) = v10;
    _os_log_impl(&dword_0, v3, v4, "Setting %ld entities on NLContextUpdate (displacing %ld)", v7, 0x16u);
  }

  else
  {
    v11 = v0[13];
  }

  v12 = v0[29];
  v13 = v0[15];
  v14 = v0[13];
  swift_beginAccess();

  NLContextUpdate.rrEntities.setter();
  swift_endAccess();
  if (v13 >> 62)
  {
    if (v0[15] < 0)
    {
      v37 = v0[15];
    }

    v38 = v0[15];
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v15 = v0[15];
  }

  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[27];
  v19 = v0[22];
  v20 = v0[23];
  v21 = v0[21];
  v42 = v0[20];
  v44 = v0[18];
  v39 = v0[26];
  v40 = v0[17];
  v22 = v0[16];
  v48 = v0[14];

  specialized Array.append<A>(contentsOf:)(v15);

  specialized Array.append<A>(contentsOf:)(v23);
  v46(v20, v16, v18);
  (*(v17 + 56))(v20, 0, 1, v18);
  AceOutput.init(commands:flowActivity:nlContextUpdate:)();
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg8taskType_Sb20isTerminalStepLoggedtMd, &_sSSSg8taskType_Sb20isTerminalStepLoggedtMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  (*(v21 + 8))(v19, v42);

  v24 = v0[9];

  static PerformanceUtil.shared.getter();
  v25 = v0[19];
  if (v44)
  {
    v26 = v0[18];
    PommesResponse.requestId.getter();
    PommesResponse.pommesCandidateId.getter();
  }

  else
  {
    v27 = type metadata accessor for PommesCandidateId();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
  }

  v28 = v0[28];
  v29 = v0[29];
  v41 = v0[26];
  v43 = v0[27];
  v30 = v0[24];
  v31 = v0[25];
  v45 = v0[23];
  v47 = v0[22];
  v32 = v0[19];
  v33 = v0[11];
  dispatch thunk of PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)();

  outlined destroy of Any?(v32, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v33[3] = v30;
  v33[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(v31 + 32))(boxed_opaque_existential_1, v41, v30);
  (*(v28 + 8))(v29, v43);

  v35 = v0[1];

  return v35();
}

uint64_t RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for Date();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:), 0, 0);
}

uint64_t RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)()
{
  v25 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "RenderPegasusFlow making flow to render PegasusResult in Navigation", v4, 2u);
  }

  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v23 = *(v0 + 72);

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  *(swift_task_alloc() + 16) = vextq_s8(v23, v23, 8uLL);
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 56);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v13 = Array.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v9, v10, "RenderPegasusFlow creating output with pegasusViews %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  v16 = *(v0 + 104);
  outlined init with copy of OutputPublisherAsync(*(v0 + 80) + 16, v0 + 16);
  *(swift_allocObject() + 16) = v8;
  v17 = type metadata accessor for SimpleOutputFlowAsync();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 64) = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  v20 = Flow.eraseToAnyFlow()();

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:), 0, 0);
}

uint64_t closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  *(swift_task_alloc() + 16) = v4;
  Date.init()();
  v5[3] = type metadata accessor for AceOutput();
  v5[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1(v5);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v6 - v2;
  v4 = type metadata accessor for NLContextUpdate();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v6, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of Any?(v3, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

id RenderComponentFlowFactory.addSiriSuggestion(_:toPegasusViews:toPegasusCommands:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for HintsUI();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HintsUI.snippet.getter();
  p_base_props = &InformationRoutingFlow.base_props;
  if (v11)
  {
    v13 = v11;
    v14 = *a2;
    if (*a2 >> 62)
    {
      if (v14 < 0)
      {
        v24 = *a2;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_4:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_37:
            if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
            {
LABEL_13:
              v22 = v13;
              specialized Array.replaceSubrange<A>(_:with:)(0, 0, v22);

              if (v43)
              {
                v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v23.super.isa = 0;
              }

              p_base_props = 937984;
              [a2 setViews:v23.super.isa];

              goto LABEL_26;
            }

            __break(1u);
            goto LABEL_39;
          }

          v15 = *(v14 + 32);
        }

        a2 = v15;
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
          _os_log_impl(&dword_0, v17, v18, "RenderPegasusFlow adding 1 SiriSuggestion view to Pegasus views", v19, 2u);
        }

        result = [a2 views];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v21 = result;
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        p_base_props = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = p_base_props;
        if (!(p_base_props >> 62))
        {
          goto LABEL_13;
        }

        goto LABEL_37;
      }
    }

    else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    if (one-time initialization token for information == -1)
    {
LABEL_21:
      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static Logger.information);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "RenderPegasusFlow adding 1 SiriSuggestion view to Pegasus commands", v28, 2u);
      }

      v29 = [objc_allocWithZone(SAUIAddViews) init];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_B9BD0;
      *(v30 + 32) = v13;
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v31 = v13;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 setViews:isa];

      v33 = v29;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v41 = *(&dword_10 + (*a3 & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_26;
    }

LABEL_39:
    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  if (*(p_base_props + 928) != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.information);
  (*(v7 + 16))(v10, a1, v6);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    v38 = HintsUI.supportingCommands.getter();
    if (v38 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    }

    (*(v7 + 8))(v10, v6);
    *(v37 + 4) = v39;
    _os_log_impl(&dword_0, v35, v36, "RenderPegasusFlow adding %ld SiriSuggestion supportingCommands to Pegasus commands", v37, 0xCu);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  v40 = HintsUI.supportingCommands.getter();
  return specialized Array.append<A>(contentsOf:)(v40);
}

void closure #1 in RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  v7 = *(*(v33 - 8) + 64);
  v8 = __chkstk_darwin(v33);
  v32[1] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v32 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    outlined destroy of Any?(v11, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  }

  else
  {
    if ((*(v18 + 88))(v11, v17) == enum case for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component.videoObjects(_:))
    {
      (*(v18 + 96))(v11, v17);
      (*(v13 + 32))(v16, v11, v12);
      v19 = Apple_Parsec_Siri_V2alpha_VideoObjectComponent.tvOrMovieObject.getter();
      (*(v13 + 8))(v16, v12);
      v20 = *(v19 + 16);

      goto LABEL_12;
    }

    (*(v18 + 8))(v11, v17);
  }

  v21 = v34;
  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.videoSnippet);
  (*(v3 + 16))(v6, a1, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
    v27 = String.init<A>(describing:)();
    v29 = v28;
    (*(v3 + 8))(v6, v21);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "Ignoring unsupported domain object component: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {

    (*(v3 + 8))(v6, v21);
  }

  v20 = 0;
LABEL_12:
  v31 = v35;
  *v35 = v20;
  *(v31 + 8) = 0;
}

uint64_t RenderComponentFlowFactory.saveDialogStateUpdates(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v5;
  v88 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogStateMeta();
  v6 = *(v88 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v88);
  v73 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v72 = &v59 - v11;
  v12 = __chkstk_darwin(v10);
  v71 = &v59 - v13;
  __chkstk_darwin(v12);
  v70 = &v59 - v14;
  v85 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DialogState();
  v15 = *(v85 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v85);
  v69 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v59 - v19;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v21 = *(*(v20 - 8) + 64);
  result = __chkstk_darwin(v20);
  v25 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a1 + 16);
  if (v67)
  {
    v26 = 0;
    v64 = *(v1 + 64);
    v28 = *(v24 + 16);
    v27 = v24 + 16;
    v63 = v28;
    v62 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v84 = (v15 + 8);
    v87 = (v6 + 8);
    v61 = (v27 - 8);
    v65 = v27;
    v60 = *(v27 + 56);
    v86 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v66 = v20;
    do
    {
      v83 = v26;
      v63(v25, v62 + v60 * v26, v20);
      v80 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v82 = v32;
      v33 = v68;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogState.getter();
      v79 = Apple_Parsec_Siri_V2alpha_DialogState.familyState.getter();
      v81 = v34;
      v35 = *v84;
      (*v84)(v33, v85);
      v36 = v70;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v37 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.familyStateCounts.getter();
      v38 = *v87;
      (*v87)(v36, v88);
      v39 = *(v37 + 16);
      if (v39)
      {
        v77 = v35;
        v89 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v40 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v37 + v40)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v41 = v89[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v40 += 4;
          --v39;
        }

        while (v39);

        v78 = v89;
        v35 = v77;
      }

      else
      {

        v78 = &_swiftEmptyArrayStorage;
      }

      v42 = v71;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v43 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.familyStateMinutes.getter();
      v38(v42, v88);
      v44 = *(v43 + 16);
      if (v44)
      {
        v89 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v45 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v43 + v45)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v46 = v89[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v45 += 4;
          --v44;
        }

        while (v44);
      }

      v47 = v69;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogState.getter();
      v76 = Apple_Parsec_Siri_V2alpha_DialogState.useCaseState.getter();
      v77 = v48;
      v35(v47, v85);
      v49 = v72;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v50 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.useCaseStateCounts.getter();
      v38(v49, v88);
      v51 = *(v50 + 16);
      if (v51)
      {
        v89 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v52 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v50 + v52)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v53 = v89[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v52 += 4;
          --v51;
        }

        while (v51);
      }

      v54 = v73;
      Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.dialogStateMeta.getter();
      v55 = Apple_Parsec_Siri_V2alpha_DialogStateMeta.useCaseStateMinutes.getter();
      v38(v54, v88);
      v56 = *(v55 + 16);
      if (v56)
      {
        v89 = &_swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v57 = 32;
        do
        {
          [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v55 + v57)];
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v58 = v89[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v57 += 4;
          --v56;
        }

        while (v56);

        v29 = v89;
      }

      else
      {

        v29 = &_swiftEmptyArrayStorage;
      }

      v75 = v29;
      v26 = v83 + 1;
      v30 = type metadata accessor for Date();
      v31 = v74;
      (*(*(v30 - 8) + 56))(v74, 1, 1, v30);
      dispatch thunk of PommesDialogStateManager.update(_:familyState:familyStateCount:familyStateMinutes:useCaseState:useCaseStateCount:useCaseStateMinutes:expirationDate:)();

      outlined destroy of Any?(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v25 = v86;
      v20 = v66;
      result = (*v61)(v86, v66);
    }

    while (v26 != v67);
  }

  return result;
}

uint64_t *RenderComponentFlowFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t RenderComponentFlowFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t partial apply for closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v4, v5, v6);
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

id specialized RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v55 - v13;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || !*(a2 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(4u), (v21 & 1) == 0))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.information);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_26;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Cannot find any domain object made, skipping making ProfileSwitch";
    goto LABEL_25;
  }

  if (*(*(a2 + 56) + 8 * v20) != 1)
  {
    if (one-time initialization token for information == -1)
    {
LABEL_29:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.information);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_26;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "More than one domain objects were made, skipping making ProfileSwitch";
LABEL_25:
      _os_log_impl(&dword_0, v35, v36, v38, v37, 2u);

LABEL_26:

      return 0;
    }

LABEL_51:
    swift_once();
    goto LABEL_29;
  }

  if (!a3)
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_32;
  }

  PommesRenderOptions.switchProfile.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_32:
    outlined destroy of Any?(v14, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Logger.information);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_26;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "No switchProfileBuilderParams is available, skipping making ProfileSwitch";
    goto LABEL_25;
  }

  v56 = v7;
  (*(v16 + 32))(v19, v14, v15);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = &_swiftEmptyArrayStorage;
    do
    {
      v57 = v24;
      v25 = v23;
      while (1)
      {
        if (v25 >= v22)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v26 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent() - 8);
        v23 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_49;
        }

        closure #1 in RenderComponentFlowFactory.makeProfileSwitchIfNeeded(domainObjects:componentsCount:renderOptions:)(a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v25, &v58);
        if ((v59 & 1) == 0)
        {
          break;
        }

        ++v25;
        if (v23 == v22)
        {
          v24 = v57;
          goto LABEL_37;
        }
      }

      v55 = v58;
      v27 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v28 = v27;
      v29 = *(v27 + 2);
      v30 = v28;
      v31 = *(v28 + 3);
      v32 = (v29 + 1);
      if (v29 >= v31 >> 1)
      {
        v57 = (v29 + 1);
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v29 + 1, 1, v30);
        v32 = v57;
        v30 = v33;
      }

      v24 = v30;
      *(v30 + 2) = v32;
      *&v30[8 * v29 + 32] = v55;
    }

    while (v23 != v22);
  }

  else
  {
    v24 = &_swiftEmptyArrayStorage;
  }

LABEL_37:
  v42 = *(v24 + 2);
  v43 = v56;
  v44 = 0;
  if (v42)
  {
    v45 = (v24 + 32);
    while (1)
    {
      v46 = *v45++;
      v47 = __OFADD__(v44, v46);
      v44 += v46;
      if (v47)
      {
        break;
      }

      if (!--v42)
      {
        goto LABEL_41;
      }
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_41:

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logger.information);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134217984;
    *(v51 + 4) = v44;
    _os_log_impl(&dword_0, v49, v50, "Found %ld tvOrMovieObject in videoObjects", v51, 0xCu);
  }

  if (v44 != 1)
  {
    (*(v16 + 8))(v19, v15);
    return 0;
  }

  v52 = [objc_allocWithZone(SAProfileSwitch) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v43 + 8))(v10, v6);
  v53 = String._bridgeToObjectiveC()();

  [v52 setAceId:v53];

  Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
  v54 = String._bridgeToObjectiveC()();

  [v52 setSharedUserId:v54];

  (*(v16 + 8))(v19, v15);
  return v52;
}

uint64_t sub_2EAA4()
{
  v1 = type metadata accessor for NLContextUpdate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5);

  v12 = *(v0 + v6);

  v13 = *(v0 + v7);

  v14 = *(v0 + v8);

  v15 = *(v0 + v9);

  return _swift_deallocObject(v0, v10 + 8, v3 | 7);
}

uint64_t partial apply for closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NLContextUpdate() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + v11);
  v17 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)(a1, v1 + v6, v12, v13, v14, v15, v16, v17);
}

uint64_t partial apply for closure #1 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(*(v1 + 16) + 56) + 160))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_2ED78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in RenderComponentFlowFactory.makeRenderComponentNavigationFlow(layouts:)(a1, v4);
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8));
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v5, 1, v3);
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t partial apply for closure #1 in closure #3 in RenderComponentFlowFactory.makeRenderComponentFlow(layouts:dialogs:buttons:delayedActions:directExecution:sayItComponents:disambiguationLists:domainObjectComponents:renderOptions:pommesResponse:eventlogger:aceServiceInvoker:rrEntities:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(*v1 + 128))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

uint64_t closure #1 in ResponseFlowFactory.outputManifest(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for NLContextUpdate();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v22;
  v8[16] = v23;
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[7] = a1;
  v8[8] = a2;
  v9 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v10 = type metadata accessor for NLContextUpdate();
  v8[18] = v10;
  v11 = *(v10 - 8);
  v8[19] = v11;
  v12 = *(v11 + 64) + 15;
  v8[20] = swift_task_alloc();
  v13 = type metadata accessor for OutputGenerationManifest();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v16 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v17 = type metadata accessor for PerformanceUtil.Ticket();
  v8[25] = v17;
  v18 = *(v17 - 8);
  v8[26] = v18;
  v19 = *(v18 + 64) + 15;
  v8[27] = swift_task_alloc();

  return _swift_task_switch(ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:), 0, 0);
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)()
{
  v29 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.information);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v28);
    *(v9 + 12) = 2080;
    v10 = Dictionary.description.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v28);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_0, v4, v5, "ResponseFlowFactory.makeRenderPatternFlow making default pattern flow for patternId %s : %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v13 = v0[27];
  v14 = v0[24];
  v15 = v0[16];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(v17 + 8);
  v27 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[28] = v20;
  *v20 = v0;
  v20[1] = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  v21 = v0[14];
  v23 = v0[9];
  v22 = v0[10];
  v24 = v0[8];
  v25 = v0[7];

  return v27(v25, v24, v22, v23, v21, v16, v17);
}

{
  v1 = v0[27];
  v18 = v0[26];
  v19 = v0[25];
  v20 = v0[24];
  v2 = v0[23];
  v15 = v0[30];
  v16 = v0[22];
  v3 = v0[20];
  v17 = v0[21];
  v4 = v0[19];
  v14 = v0[18];
  v12 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PatternFlowProvidingHelper.unwrap(_:with:)(v5, v7, v0 + 2);
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  NLContextUpdate.init()();
  outlined copy of Data?(v8, v6);
  NLContextUpdate.pegasusConversationContext.setter();
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v3;
  OutputGenerationManifest.init(dialogPhase:_:)();

  (*(v4 + 8))(v3, v14);
  v9 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v16 + 8))(v2, v17);
  (*(v18 + 8))(v1, v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];

  return v10(v9);
}

{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  (*(v0[26] + 8))(v0[27], v0[25]);

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  }

  else
  {
    *(v4 + 240) = a1;
    v7 = ResponseFlowFactory.makeSimpleFlow(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:patternFlowProvider:patternExecutor:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t PatternExecutor.execute(pattern:in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(PatternExecutor.execute(pattern:in:with:), 0, 0);
}

uint64_t PatternExecutor.execute(pattern:in:with:)()
{
  v1 = v0[11];
  static Device.current.getter();
  v2 = *(*v1 + 88);
  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = PatternExecutor.execute(pattern:in:with:);
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];

  return (v11)(v9, v7, v8, v5, v0 + 2);
}

{
  v1 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t PatternExecutor.execute(pattern:in:with:)(uint64_t a1)
{
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[13] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v5 + 2);
  if (v1)
  {

    return _swift_task_switch(PatternExecutor.execute(pattern:in:with:), 0, 0);
  }

  else
  {
    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return specialized PatternExecutor.execute(pattern:in:with:deviceState:)(a1, a2, a3, a4, a5);
}

uint64_t PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(**v5 + 88);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t protocol witness for PatternExecutorProtocol.execute(pattern:in:with:) in conformance PatternExecutor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 80);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return v14(a1, a2, a3, a4);
}

uint64_t specialized PatternExecutor.execute(pattern:in:with:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  return _swift_task_switch(specialized PatternExecutor.execute(pattern:in:with:deviceState:), 0, 0);
}

uint64_t specialized PatternExecutor.execute(pattern:in:with:deviceState:)()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v13 = v0[25];
  v4 = v0[23];
  v12 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v0[28] = v5;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  type metadata accessor for CATGlobals();
  outlined init with copy of OutputPublisherAsync(v1, (v0 + 10));
  static CATGlobals.defaultBuilder(deviceState:)();
  outlined destroy of DeviceState?((v0 + 10));
  v7 = dispatch thunk of CATGlobals.Builder.build()();

  dispatch thunk of CATGlobals.toDictionary.getter();

  v8 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[30] = v8;

  v9 = CATDefaultMode;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo22PatternExecutionResultCs5Error_pGMd, &_sSccySo22PatternExecutionResultCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned PatternExecutionResult, @unowned NSError?) -> () with result type PatternExecutionResult;
  v0[13] = &block_descriptor_0;
  v0[14] = v10;
  [v12 execute:v13 patternId:v5 parameters:isa globals:v8 options:v9 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  }

  else
  {
    v3 = specialized PatternExecutor.execute(pattern:in:with:deviceState:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v25 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  swift_willThrow();

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v5 = v0[31];
  v6 = v0[24];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.information);

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[31];
    v12 = v0[23];
    v11 = v0[24];
    v13 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v24);
    *(v13 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[20];
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v24);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_0, v8, v9, "PatternExecutor: Failed to execute Pattern: %s with error: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = v0[31];
  swift_willThrow();
  v21 = v0[1];
  v22 = v0[31];

  return v21();
}

uint64_t outlined destroy of DeviceState?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DeviceState_pSgMd, &_s11SiriKitFlow11DeviceState_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ShimOverrideFlow.__allocating_init(with:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v6 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v7 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t ShimOverrideFlow.parse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v4 = type metadata accessor for Parse.DirectInvocation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path setter for ShimOverrideFlow.exitValue : ShimOverrideFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShimOverrideFlow.ExitValue(a1, v7);
  return (*(**a2 + 104))(v7);
}

uint64_t ShimOverrideFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue;
  swift_beginAccess();
  return outlined init with copy of ShimOverrideFlow.ExitValue(v1 + v3, a1);
}

uint64_t ShimOverrideFlow.exitValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue;
  swift_beginAccess();
  outlined assign with take of ShimOverrideFlow.ExitValue(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t ShimOverrideFlow.init(with:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue) = 0;
  type metadata accessor for ShimOverrideFlow.ExitValue(0);
  swift_storeEnumTagMultiPayload();
  v3 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v4 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t outlined init with copy of ShimOverrideFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of ShimOverrideFlow.ExitValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ShimOverrideFlow.__allocating_init()()
{
  v1 = type metadata accessor for Parse.DirectInvocation();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Parse.DirectInvocation.init(identifier:userData:)();
  return (*(v0 + 120))(v4);
}

uint64_t ShimOverrideFlow.execute()(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  v2[15] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for Parse.PegasusResult();
  v2[17] = v5;
  v6 = *(v5 - 8);
  v2[18] = v6;
  v7 = *(v6 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2[21] = v8;
  v9 = *(v8 - 8);
  v2[22] = v9;
  v10 = *(v9 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(ShimOverrideFlow.execute(), 0, 0);
}

uint64_t ShimOverrideFlow.execute()()
{
  v87 = v0;
  v1 = v0[14];
  if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000003ELL && 0x80000000000BD650 == v2)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v6 = v0[15];
      v5 = v0[16];
      v8 = v0[13];
      v7 = v0[14];
      v9 = Parse.DirectInvocation.identifier.getter();
      v11 = v10;
      lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
      v12 = swift_allocError();
      *v13 = v9;
      *(v13 + 8) = v11;
      *(v13 + 16) = 0;
      *v5 = v12;
      swift_storeEnumTagMultiPayload();
      (*(*v7 + 104))(v5);
LABEL_19:
      static ExecuteResponse.complete()();
      goto LABEL_20;
    }
  }

  v14 = Parse.DirectInvocation.userData.getter();
  if (!v14)
  {
    v34 = v0[15];
    v24 = v0[16];
    v35 = v0[13];
    v25 = v0[14];
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v28 = swift_allocError();
    *v29 = xmmword_B9E30;
    v33 = 1;
    goto LABEL_18;
  }

  v15 = v14;
  if (!*(v14 + 16) || (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000000000BD8D0), (v17 & 1) == 0))
  {

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v15 + 56) + 32 * v16, (v0 + 2));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v31 = v0[15];
    v24 = v0[16];
    v32 = v0[13];
    v25 = v0[14];
    v27 = 0x80000000000BE940;
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v28 = swift_allocError();
    v30 = 0xD00000000000002DLL;
    goto LABEL_16;
  }

  v18 = v0[10];
  v19 = v0[11];
  v20 = Data.init(base64Encoded:options:)();
  v22 = v21;

  if (v22 >> 60 == 15)
  {
    v23 = v0[15];
    v24 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v27 = 0x80000000000BE970;
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v28 = swift_allocError();
    v30 = 0xD000000000000022;
LABEL_16:
    *v29 = v30;
    *(v29 + 8) = v27;
    v33 = 2;
LABEL_18:
    *(v29 + 16) = v33;
    *v24 = v28;
    swift_storeEnumTagMultiPayload();
    (*(*v25 + 104))(v24);
    goto LABEL_19;
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_B95F0;
  *(v43 + 32) = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSArray, NSArray_ptr);
  *(v43 + 40) = type metadata accessor for Experience();
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

  if (!v0[9])
  {
    outlined destroy of Any?((v0 + 6));
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch17GenericExperienceCGMd, &_sSay21SiriInformationSearch17GenericExperienceCGMR);
  if (!swift_dynamicCast())
  {
LABEL_24:
    v44 = v0[15];
    v45 = v0[16];
    v47 = v0[13];
    v46 = v0[14];
    lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError();
    v48 = swift_allocError();
    *v49 = 0xD00000000000002FLL;
    *(v49 + 8) = 0x80000000000BE9A0;
    *(v49 + 16) = 2;
    *v45 = v48;
    swift_storeEnumTagMultiPayload();
    (*(*v46 + 104))(v45);
    static ExecuteResponse.complete()();
    outlined consume of Data?(v20, v22);
    goto LABEL_20;
  }

  v50 = getComponent #1 () in ShimOverrideFlow.execute()(v0[12]);
  v51 = v0[24];
  v53 = v0[21];
  v52 = v0[22];
  v83 = v0[23];
  v85 = v0[20];
  v54 = v50;

  *(swift_task_alloc() + 16) = v54;
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);
  static Message.with(_:)();

  (*(v52 + 16))(v83, v51, v53);
  Parse.PegasusResult.init(pegasusResponse:)();
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v56 = v0[19];
  v55 = v0[20];
  v57 = v0[17];
  v58 = v0[18];
  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.information);
  v84 = *(v58 + 16);
  v84(v56, v55, v57);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  v62 = os_log_type_enabled(v60, v61);
  v64 = v0[18];
  v63 = v0[19];
  v65 = v0[17];
  if (v62)
  {
    v80 = v61;
    v66 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v86 = v78;
    *v66 = 136315138;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Parse.PegasusResult and conformance Parse.PegasusResult, &type metadata accessor for Parse.PegasusResult);
    v67 = Encodable.asJSONString.getter();
    v69 = v68;
    v82 = *(v64 + 8);
    v82(v63, v65);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v86);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_0, v60, v80, "NavigateToShim pegasus result: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
  }

  else
  {

    v82 = *(v64 + 8);
    v82(v63, v65);
  }

  v71 = v0[22];
  v79 = v0[21];
  v81 = v0[24];
  v72 = v0[20];
  v74 = v0[16];
  v73 = v0[17];
  v75 = v0[14];
  v76 = v0[15];
  v77 = v0[13];
  v84(v74, v72, v73);
  swift_storeEnumTagMultiPayload();
  (*(*v75 + 104))(v74);
  static ExecuteResponse.complete()();
  outlined consume of Data?(v20, v22);
  v82(v72, v73);
  (*(v71 + 8))(v81, v79);
LABEL_20:
  v37 = v0[23];
  v36 = v0[24];
  v39 = v0[19];
  v38 = v0[20];
  v40 = v0[16];

  v41 = v0[1];

  return v41();
}

unint64_t lazy protocol witness table accessor for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError()
{
  result = lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError;
  if (!lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShimOverrideFlow.ShimError and conformance ShimOverrideFlow.ShimError);
  }

  return result;
}

void *getComponent #1 () in ShimOverrideFlow.execute()(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = GenericExperience.components.getter();

      v9 = *(v8 + 16);
      v10 = v4[2];
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= v4[3] >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        if (*(v8 + 16))
        {
LABEL_19:
          v14 = (v4[3] >> 1) - v4[2];
          v15 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent() - 8);
          if (v14 < v9)
          {
            goto LABEL_28;
          }

          v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v17 = *(v15 + 72);
          swift_arrayInitWithCopy();

          if (v9)
          {
            v18 = v4[2];
            v19 = __OFADD__(v18, v9);
            v20 = v18 + v9;
            if (v19)
            {
              goto LABEL_29;
            }

            v4[2] = v20;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == i)
      {
        goto LABEL_32;
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
LABEL_30:
    ;
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_32:
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.information);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();

    v26 = Array.description.getter();
    v28 = v27;

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v31);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v22, v23, "NavigateToShim components available: %s ", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  return v4;
}

uint64_t ShimOverrideFlow.execute(completion:)()
{
  type metadata accessor for ShimOverrideFlow(0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type ShimOverrideFlow and conformance ShimOverrideFlow, type metadata accessor for ShimOverrideFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t closure #1 in ShimOverrideFlow.makePegasusResponse(experienceComponents:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, &type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
  static Message.with(_:)();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.setter();
  v2 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.setter();
  v2(v4, 0);
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.setter();
}

uint64_t closure #1 in closure #1 in ShimOverrideFlow.makePegasusResponse(experienceComponents:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerDrivenExperience and conformance Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, &type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
  static Message.with(_:)();
  return Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.setter();
}

uint64_t ShimOverrideFlow.deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v2 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ShimOverrideFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue);
  return v0;
}

uint64_t ShimOverrideFlow.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_parse;
  v2 = type metadata accessor for Parse.DirectInvocation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ShimOverrideFlow.ExitValue(v0 + OBJC_IVAR____TtC21InformationFlowPlugin16ShimOverrideFlow_exitValue);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance ShimOverrideFlow(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of ShimOverrideFlow.ExitValue(uint64_t a1)
{
  v2 = type metadata accessor for ShimOverrideFlow.ExitValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for ShimOverrideFlow()
{
  result = type metadata accessor for Parse.DirectInvocation();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ShimOverrideFlow.ExitValue(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void type metadata completion function for ShimOverrideFlow.ExitValue()
{
  type metadata accessor for Parse.PegasusResult();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ShimOverrideFlow.ShimError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ShimOverrideFlow.ShimError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in ShimOverrideFlow.makePegasusResponse(experienceComponents:)()
{
  v1 = *(v0 + 16);

  return Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.components.setter();
}

uint64_t WebSearchPunchoutFlow.__allocating_init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, __int128 *a6, uint64_t a7, __int128 *a8)
{
  v16 = swift_allocObject();
  *(v16 + 112) = a1;
  *(v16 + 120) = a2;
  v17 = *(a3 + 16);
  *(v16 + 128) = *a3;
  *(v16 + 144) = v17;
  *(v16 + 160) = *(a3 + 32);
  *(v16 + 104) = a4 & 1;
  outlined init with take of SiriSuggestionsBroker(a5, v16 + 16);
  outlined init with take of SiriSuggestionsBroker(a6, v16 + 56);
  *(v16 + 96) = a7;
  outlined init with take of SiriSuggestionsBroker(a8, v16 + 168);
  return v16;
}

Swift::Int DisableConfirmRequestsConfirmationResponse.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t WebSearchPunchoutFlow.state.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1 & 1;
  return result;
}

id one-time initialization function for bundle()
{
  type metadata accessor for WebSearchPunchoutFlow();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static WebSearchPunchoutFlow.bundle = result;
  return result;
}

{
  type metadata accessor for PegasusPatternFlowFactory();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static PegasusPatternFlowFactory.bundle = result;
  return result;
}

uint64_t WebSearchPunchoutFlow.init(query:renderPegasusFlow:state:outputPublisher:responseGenerator:informationViewFactory:searchURLProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5, __int128 *a6, uint64_t a7, __int128 *a8)
{
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  v12 = *(a3 + 16);
  *(v8 + 128) = *a3;
  *(v8 + 144) = v12;
  *(v8 + 160) = *(a3 + 32);
  *(v8 + 104) = a4 & 1;
  outlined init with take of SiriSuggestionsBroker(a5, v8 + 16);
  outlined init with take of SiriSuggestionsBroker(a6, v8 + 56);
  *(v8 + 96) = a7;
  outlined init with take of SiriSuggestionsBroker(a8, v8 + 168);
  return v8;
}

uint64_t WebSearchPunchoutFlow.on(input:)()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.information);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "WebSearchPunchoutFlow does not expect input", v3, 2u);
  }

  return 0;
}

uint64_t WebSearchPunchoutFlow.execute()(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = type metadata accessor for Date();
  v2[40] = v3;
  v4 = *(v3 - 8);
  v2[41] = v4;
  v5 = *(v4 + 64) + 15;
  v2[42] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v7 = type metadata accessor for OutputGenerationManifest();
  v2[44] = v7;
  v8 = *(v7 - 8);
  v2[45] = v8;
  v9 = *(v8 + 64) + 15;
  v2[46] = swift_task_alloc();
  v10 = type metadata accessor for CATOption();
  v2[47] = v10;
  v11 = *(v10 - 8);
  v2[48] = v11;
  v12 = *(v11 + 64) + 15;
  v2[49] = swift_task_alloc();

  return _swift_task_switch(WebSearchPunchoutFlow.execute(), 0, 0);
}

{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v6 = *(*v2 + 384);
  v7 = *v2;
  *(v4 + 464) = v1;

  v8 = (v6 + 8);
  v9 = *(v4 + 440);
  v10 = *(v4 + 392);
  v11 = *(v4 + 376);

  if (v1)
  {
    (*v8)(v10, v11);
    outlined destroy of Any?(v4 + 256, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v12 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    *(v4 + 472) = a1;
    (*v8)(v10, v11);
    outlined destroy of Any?(v4 + 256, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
    v12 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t WebSearchPunchoutFlow.execute()()
{
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 400) = __swift_project_value_buffer(v1, static Logger.information);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "WebSearchPunchoutFlow.execute", v4, 2u);
  }

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v5 = dispatch thunk of CurrentDevice.isCarPlay.getter();

  if (v5 & 1) != 0 || (static Device.current.getter(), v6 = *(v0 + 48), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v7 = dispatch thunk of DeviceState.isEyesFree.getter(), v8 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16)), (v7))
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "Web search punchout is not supported in CarPlay", v11, 2u);
    }

    v12 = *(v0 + 312);

    outlined init with copy of OutputPublisherAsync(v12 + 56, v0 + 216);
    v13 = *(v0 + 240);
    *(v0 + 408) = v13;
    *(v0 + 424) = __swift_project_boxed_opaque_existential_1((v0 + 216), v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v14 = swift_allocObject();
    *(v0 + 432) = v14;
    *(v14 + 16) = xmmword_B9BD0;
    type metadata accessor for CATDialog();
    if (one-time initialization token for bundle != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 392);
    v16 = static WebSearchPunchoutFlow.bundle;
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    *(v0 + 440) = v17;
    type metadata accessor for CATGlobals();
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0;
    v18 = CATGlobals.__allocating_init()();
    *(v0 + 448) = v18;
    static CATOption.defaultMode.getter();
    v19 = async function pointer to static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)[1];
    v20 = swift_task_alloc();
    *(v0 + 456) = v20;
    *v20 = v0;
    v20[1] = WebSearchPunchoutFlow.execute();
    v21 = *(v0 + 392);

    return static CATDialog.execute(bundle:catId:parameters:globals:callback:options:)(v16, 0xD00000000000002ALL, 0x80000000000BEA50, v17, v18, v0 + 256, v21);
  }

  else
  {
    v22 = (*(**(v0 + 312) + 144))(v8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v23, v24, "WebSearchPunchoutFlow: renderPegasus", v26, 2u);
      }

      v27 = *(v0 + 312);

      outlined init with copy of (String, Decodable & Encodable & Sendable)(v27 + 128, v0 + 96, &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
      if (*(v0 + 120))
      {
        v28 = *(v0 + 304);
        outlined init with take of SiriSuggestionsBroker((v0 + 96), v0 + 56);
        v29 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        static ExecuteResponse.complete<A>(next:)();
        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
      }

      else
      {
        v38 = *(v0 + 328);
        v37 = *(v0 + 336);
        v39 = *(v0 + 312);
        v40 = *(v0 + 320);
        v41 = *(v0 + 304);
        outlined destroy of Any?(v0 + 96, &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
        *(v0 + 296) = v39;
        type metadata accessor for PerformanceUtil();
        static PerformanceUtil.shared.getter();
        v42 = swift_task_alloc();
        v42[2] = v0 + 296;
        v42[3] = 0xD000000000000039;
        v42[4] = 0x80000000000BEA10;
        Date.init()();
        type metadata accessor for ExecuteResponse();
        dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

        (*(v38 + 8))(v37, v40);
      }

      v43 = *(v0 + 392);
      v44 = *(v0 + 368);
      v46 = *(v0 + 336);
      v45 = *(v0 + 344);

      v47 = *(v0 + 8);

      return v47();
    }

    else
    {
      if (v25)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_0, v23, v24, "WebSearchPunchoutFlow: doWebSearchPunchout", v30, 2u);
      }

      v31 = *(v0 + 312);

      v32 = v31[5];
      v33 = v31[6];
      __swift_project_boxed_opaque_existential_1(v31 + 2, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_B9BD0;
      *(v34 + 32) = WebSearchPunchoutFlow.webSearchCommand(query:)(v31[14], v31[15]);
      *(v0 + 160) = type metadata accessor for AceOutput();
      *(v0 + 168) = &protocol witness table for AceOutput;
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      AceOutput.init(commands:flowActivity:)();
      v35 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
      v36 = swift_task_alloc();
      *(v0 + 504) = v36;
      *v36 = v0;
      v36[1] = WebSearchPunchoutFlow.execute();

      return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 136, v32, v33);
    }
  }
}

{
  v1 = v0[46];
  v2 = v0[43];
  *(v0[54] + 32) = v0[59];
  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v3 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = WebSearchPunchoutFlow.execute();
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[51];
  v8 = v0[52];
  v9 = v0[46];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v0 + 22, v5, v9, v7, v8);
}

{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 432);
  v3 = *(*v0 + 368);
  v4 = *(*v0 + 360);
  v5 = *(*v0 + 352);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(WebSearchPunchoutFlow.execute(), 0, 0);
}

{
  v1 = v0[39];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = WebSearchPunchoutFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 22, v2, v3);
}

{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    v3 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v1 = v0[38];
  static ExecuteResponse.complete()();
  v2 = v0[49];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  v3 = *(*v1 + 504);
  v6 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v4 = WebSearchPunchoutFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 136));
    v4 = WebSearchPunchoutFlow.execute();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = v0[38];
  static ExecuteResponse.complete()();
  v2 = v0[49];
  v3 = v0[46];
  v5 = v0[42];
  v4 = v0[43];

  v6 = v0[1];

  return v6();
}

{
  *(v0[54] + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v1 = v0[58];
  v2 = v0[50];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Failed to publish dialog for failed web search punchout: %@", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v8 = v0[38];
  static ExecuteResponse.complete()();
  v9 = v0[49];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];

  v13 = v0[1];

  return v13();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v1 = v0[62];
  v2 = v0[50];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_0, v3, v4, "Failed to publish dialog for failed web search punchout: %@", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v8 = v0[38];
  static ExecuteResponse.complete()();
  v9 = v0[49];
  v10 = v0[46];
  v12 = v0[42];
  v11 = v0[43];

  v13 = v0[1];

  return v13();
}

{
  v1 = v0[50];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[64];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_0, v2, v3, "Failed to execute web search punchout.", v6, 2u);
  }

  v7 = v0[38];
  static ExecuteResponse.complete()();
  v8 = v0[49];
  v9 = v0[46];
  v11 = v0[42];
  v10 = v0[43];

  v12 = v0[1];

  return v12();
}

uint64_t WebSearchPunchoutFlow.execute(completion:)()
{
  type metadata accessor for WebSearchPunchoutFlow();
  lazy protocol witness table accessor for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow();
  return Flow.deferToExecuteAsync(_:)();
}

id WebSearchPunchoutFlow.webSearchCommand(query:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = type metadata accessor for UUID();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v32);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = [objc_allocWithZone(SAUIAppPunchOut) init];
  v18 = v3[24];
  v19 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v18);
  (*(v19 + 8))(a1, a2, v18, v19);
  v20 = v3[24];
  v21 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v20);
  v22 = (*(v21 + 16))(v20, v21);
  WebSearchPunchoutFlow.addProviderSpecificParams(url:providerId:)(v14, v22, v16);
  outlined destroy of Any?(v14, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v26 = 0;
  if ((*(v24 + 48))(v16, 1, v23) != 1)
  {
    URL._bridgeToObjectiveC()(v25);
    v26 = v27;
    (*(v24 + 8))(v16, v23);
  }

  [v17 setPunchOutUri:v26];

  v28 = v17;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v6 + 8))(v9, v32);
  v29 = String._bridgeToObjectiveC()();

  [v28 setAceId:v29];

  return v28;
}

uint64_t WebSearchPunchoutFlow.addProviderSpecificParams(url:providerId:)@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v9, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Any?(v9, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    return outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, a3, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  }

  else
  {
    v16 = *(v11 + 32);
    v16(v14, v9, v10);
    if (a2 - 2 >= 2)
    {
      if (a2)
      {
        type metadata accessor for SiriEnvironment();
        static SiriEnvironment.default.getter();
        SiriEnvironment.currentDevice.getter();

        v22 = dispatch thunk of CurrentDevice.isMac.getter();

        if (v22 & 1) != 0 || (static SiriEnvironment.default.getter(), SiriEnvironment.currentDevice.getter(), , v23 = dispatch thunk of CurrentDevice.isPad.getter(), , (v23))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
          v24 = *(type metadata accessor for URLQueryItem() - 8);
          v25 = *(v24 + 72);
          v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_B9FF0;
          URLQueryItem.init(name:value:)();
          URLQueryItem.init(name:value:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
          v28 = *(type metadata accessor for URLQueryItem() - 8);
          v29 = *(v28 + 72);
          v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_B95F0;
          URLQueryItem.init(name:value:)();
        }

        URLQueryItem.init(name:value:)();
        URL.setOrAppend(queryItems:)(v27, a3);
        swift_setDeallocating();
        v31 = *(v27 + 16);
        swift_arrayDestroy();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
        v17 = *(type metadata accessor for URLQueryItem() - 8);
        v18 = *(v17 + 72);
        v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_BA000;
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URLQueryItem.init(name:value:)();
        URL.setOrAppend(queryItems:)(v20, a3);
        swift_setDeallocating();
        v21 = *(v20 + 16);
        swift_arrayDestroy();
      }

      swift_deallocClassInstance();
      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      v16(a3, v14, v10);
      return (*(v11 + 56))(a3, 0, 1, v10);
    }
  }
}

int64_t URL.setOrAppend(queryItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URLComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v23 - v11;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v13 = *(v5 + 48);
  if (!v13(v12, 1, v4))
  {
    v23[0] = a2;
    v15 = URLComponents.queryItems.modify();
    if (*v14)
    {
      v16 = v14;

      result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v16, a1);
      v18 = *(*v16 + 16);
      if (v18 < result)
      {
        __break(1u);
        return result;
      }

      specialized Array.replaceSubrange<A>(_:with:)(result, v18);
      v15(v24, 0);
    }

    else
    {
      v15(v24, 0);
    }

    a2 = v23[0];
  }

  if (!v13(v12, 1, v4))
  {
    v19 = URLComponents.queryItems.modify();
    if (*v20)
    {

      specialized Array.append<A>(contentsOf:)(v21);
    }

    v19(v24, 0);
  }

  if (v13(v12, 1, v4))
  {
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    URLComponents.url.getter();
    (*(v5 + 8))(v8, v4);
  }

  return outlined destroy of Any?(v12, &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
}

uint64_t *WebSearchPunchoutFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[15];

  outlined destroy of Any?((v0 + 16), &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  return v0;
}

uint64_t WebSearchPunchoutFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[15];

  outlined destroy of Any?((v0 + 16), &_s11SiriKitFlow0C0_pSgMd, &_s11SiriKitFlow0C0_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance WebSearchPunchoutFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t SafariSearchURLProvider.searchUrl(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 reloadSearchEngines];

  v4 = [v2 sharedInstance];
  v5 = [v4 defaultSearchEngine];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 searchURLForUserTypedString:v6];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t WBSSearchProviderID.asSearchProvider.getter(uint64_t a1)
{
  if (WBSSearchProviderIDBaidu == a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (WBSSearchProviderIDGoogle == a1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

BOOL closure #1 in URL.setOrAppend(queryItems:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a1;
  v3 = type metadata accessor for URLQueryItem();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v18 = a2;
  v19 = *(a2 + 16);
  v17[1] = v4 + 16;
  v9 = (v4 + 8);
  do
  {
    v11 = v8;
    if (v19 == v8)
    {
      break;
    }

    (*(v4 + 16))(v7, v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    v12 = URLQueryItem.name.getter();
    v14 = v13;
    if (v12 == URLQueryItem.name.getter() && v14 == v15)
    {

      (*v9)(v7, v3);
      return v19 != v11;
    }

    ++v8;
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v9)(v7, v3);
  }

  while ((v10 & 1) == 0);
  return v19 != v11;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for URLQueryItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  if (v2)
  {
  }

  v55 = v5;
  if (v18)
  {
    v19 = *(v16 + 16);

    return v19;
  }

  v50 = v15;
  v45 = v13;
  v46 = v10;
  v44 = a1;
  v56 = 0;
  v54 = result;
  v20 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v21 = v16;
    v24 = *(v16 + 16);
    v23 = (v16 + 16);
    v22 = v24;
    v25 = v55;
    if (v20 == v24)
    {
LABEL_7:

      return v54;
    }

    v53 = v6 + 16;
    v48 = a2;
    v49 = (v6 + 8);
    v43 = (v6 + 40);
    v47 = v6;
    while (v20 < v22)
    {
      v26 = v21;
      v51 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v27 = v21 + v51;
      v28 = *(v6 + 72);
      v29 = *(v6 + 16);
      v52 = v28 * v20;
      v30 = v21 + v51 + v28 * v20;
      v31 = v50;
      v29(v50, v30, v25);
      v32 = v56;
      v33 = closure #1 in URL.setOrAppend(queryItems:)(v31, a2);
      v56 = v32;
      if (v32)
      {
        (*v49)(v31, v25);
      }

      v34 = v33;
      result = (*v49)(v31, v25);
      if (v34)
      {
        v6 = v47;
        a2 = v48;
        v25 = v55;
        v21 = v26;
      }

      else
      {
        v35 = v54;
        if (v20 == v54)
        {
          v6 = v47;
          a2 = v48;
          v25 = v55;
          v21 = v26;
        }

        else
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v36 = *v23;
          if (v54 >= *v23)
          {
            goto LABEL_27;
          }

          v37 = v28 * v54;
          v38 = v55;
          result = (v29)(v45, v27 + v28 * v54, v55);
          if (v20 >= v36)
          {
            goto LABEL_28;
          }

          v39 = v52;
          v29(v46, v27 + v52, v38);
          v21 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          v6 = v47;
          a2 = v48;
          v40 = v21 + v51;
          v41 = *v43;
          v25 = v55;
          result = (*v43)(v21 + v51 + v37, v46, v55);
          if (v20 >= *(v21 + 16))
          {
            goto LABEL_29;
          }

          result = v41(v40 + v39, v45, v25);
          *v44 = v21;
          v35 = v54;
        }

        v54 = v35 + 1;
      }

      ++v20;
      v23 = (v21 + 16);
      v22 = *(v21 + 16);
      if (v20 == v22)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow()
{
  result = lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow;
  if (!lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow)
  {
    type metadata accessor for WebSearchPunchoutFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebSearchPunchoutFlow and conformance WebSearchPunchoutFlow);
  }

  return result;
}

uint64_t specialized SafariSearchURLProvider.searchProviderID.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 defaultSearchEngine];

  if (!v1)
  {
    return 3;
  }

  v2 = [v1 searchID];

  if (WBSSearchProviderIDGoogle == v2)
  {
    return 0;
  }

  if (WBSSearchProviderIDBaidu == v2)
  {
    return 1;
  }

  return 2;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(type metadata accessor for URLQueryItem() - 8);
  v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = *(v7 + 72);
  while (1)
  {
    v10 = closure #1 in URL.setOrAppend(queryItems:)(v8, a2);
    if (v2 || v10)
    {
      break;
    }

    ++v6;
    v8 += v9;
    if (v3 == v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State()
{
  result = lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State;
  if (!lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WebSearchPunchoutFlow.State and conformance WebSearchPunchoutFlow.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchProviderID and conformance SearchProviderID()
{
  result = lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID;
  if (!lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchProviderID and conformance SearchProviderID);
  }

  return result;
}

uint64_t sub_35CE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.__allocating_init(responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  outlined init with take of SiriSuggestionsBroker(a1, v8 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v8 + 56);
  *(v8 + 96) = a3;
  outlined init with take of SiriSuggestionsBroker(a4, v8 + 104);
  return v8;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.init(responseGenerator:aceService:commonCats:knowledgeFallbackHelper:)(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  outlined init with take of SiriSuggestionsBroker(a1, v4 + 16);
  outlined init with take of SiriSuggestionsBroker(a2, v4 + 56);
  *(v4 + 96) = a3;
  outlined init with take of SiriSuggestionsBroker(a4, v4 + 104);
  return v4;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationString()()
{
  v1[10] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationString(), 0, 0);
}

{
  v1 = v0[10];
  v2 = DisableConfirmRequestsConfirmationStrategy.knowledgeFallbackHelper.modify();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = (*(v5 + 104))(v4, v5);
  v0[14] = v7;
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = v0[10];
    (v2)(v0 + 2, 0);
    v11 = *(**(v10 + 96) + class metadata base offset for CommonCATs + 48);
    v18 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = DisableConfirmRequestsConfirmationStrategy.confirmationString();
    v14 = v0[13];

    return v18(v14, v8, v9);
  }

  else
  {
    v16 = v0[13];
    (v2)(v0 + 2);
    lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError();
    swift_allocError();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);

  if (v0)
  {
    v6 = DisableConfirmRequestsConfirmationStrategy.confirmationString();
  }

  else
  {
    v6 = DisableConfirmRequestsConfirmationStrategy.confirmationString();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = (*(**(v0 + 80) + 168))(v1);
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);

  return v8(v4, v6);
}

{
  v19 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[8];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate disableConfirmRequestsConfirmationText dialog due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[16];

  v15 = v0[13];

  v16 = v0[1];

  return v16(0, 0xE000000000000000);
}

unint64_t lazy protocol witness table accessor for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError()
{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError;
  if (!lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisableConfirmRequestsConfirmationStrategy.ConfirmationError and conformance DisableConfirmRequestsConfirmationStrategy.ConfirmationError);
  }

  return result;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel(), 0, 0);
}

{
  v1 = *(**(v0[6] + 96) + class metadata base offset for CommonCATs + 56);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  v4 = v0[9];

  return v6(v4);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  }

  else
  {
    v3 = DisableConfirmRequestsConfirmationStrategy.confirmationYesLabel();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v19 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate disableConfirmRequestsConfirmationYesLabel dialog due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[11];

  v15 = v0[9];

  v16 = v0[1];

  return v16(0, 0xE000000000000000);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel()()
{
  v1[6] = v0;
  v2 = type metadata accessor for TemplatingResult();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel(), 0, 0);
}

{
  v1 = *(**(v0[6] + 96) + class metadata base offset for CommonCATs + 64);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  v4 = v0[9];

  return v6(v4);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  }

  else
  {
    v3 = DisableConfirmRequestsConfirmationStrategy.confirmationNoLabel();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = (*(**(v0 + 48) + 168))(v1);
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8(v4, v6);
}

{
  v19 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v3, v4, "Unable to generate disableConfirmRequestsConfirmationNoLabel dialog due to error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v14 = v0[11];

  v15 = v0[9];

  v16 = v0[1];

  return v16(0, 0xE000000000000000);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.stringFromTemplatingResult(_:)()
{
  v30 = type metadata accessor for TemplatingText();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TemplatingSection();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v29);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = TemplatingResult.sections.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = v8 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v27 = *(v10 + 56);
    v28 = v11;
    v26 = (v0 + 8);
    v24 = v8;
    v25 = (v10 - 8);
    v13 = &_swiftEmptyArrayStorage;
    do
    {
      v14 = v29;
      v15 = v10;
      v28(v7, v12, v29);
      TemplatingSection.content.getter();
      v16 = TemplatingText.text.getter();
      v18 = v17;
      (*v26)(v3, v30);
      (*v25)(v7, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v12 += v27;
      --v9;
      v10 = v15;
    }

    while (v9);
  }

  else
  {

    v13 = &_swiftEmptyArrayStorage;
  }

  v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v22 = BidirectionalCollection<>.joined(separator:)();

  return v22;
}

uint64_t DisableConfirmRequestsConfirmationStrategy.actionForInput(_:)()
{
  if (Input.disableConfirmRequestsConfirmationResponse.getter() == 2)
  {

    return static ActionForInput.ignore()();
  }

  else
  {

    return static ActionForInput.handle()();
  }
}

uint64_t Input.disableConfirmRequestsConfirmationResponse.getter()
{
  v0 = type metadata accessor for Parse.DirectInvocation();
  v44 = *(v0 - 8);
  v1 = *(v44 + 64);
  __chkstk_darwin(v0);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for USOParse();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Parse();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 != enum case for Parse.directInvocation(_:))
  {
    if (v20 == enum case for Parse.uso(_:))
    {
      (*(v16 + 96))(v19, v15);
      (*(v11 + 32))(v14, v19, v10);
      USOParse.userConfirmationResponse.getter(v9);
      (*(v11 + 8))(v14, v10);
      v31 = type metadata accessor for ConfirmationResponse();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v9, 1, v31) != 1)
      {
        v40 = v43;
        outlined init with copy of ConfirmationResponse?(v9, v43);
        v41 = (*(v32 + 88))(v40, v31);
        if (v41 == enum case for ConfirmationResponse.confirmed(_:))
        {
          outlined destroy of ConfirmationResponse?(v9);
          return 0;
        }

        if (v41 == enum case for ConfirmationResponse.rejected(_:))
        {
          outlined destroy of ConfirmationResponse?(v9);
          return 1;
        }

        (*(v32 + 8))(v40, v31);
      }

      outlined destroy of ConfirmationResponse?(v9);
    }

    else
    {
      (*(v16 + 8))(v19, v15);
    }

    return 2;
  }

  (*(v16 + 96))(v19, v15);
  v21 = v44;
  (*(v44 + 32))(v3, v19, v0);
  v22 = Parse.DirectInvocation.identifier.getter();
  v24 = v23;
  v25 = static SiriKitDirectInvocationPayloads.confirm.getter();
  v26 = [v25 identifier];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = v3;
  if (v27 == v22 && v29 == v24)
  {

LABEL_9:
    (*(v21 + 8))(v3, v0);

    return 0;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_9;
  }

  v35 = static SiriKitDirectInvocationPayloads.reject.getter();
  v36 = [v35 identifier];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  if (v37 == v22 && v39 == v24)
  {

    (*(v21 + 8))(v3, v0);
    return 1;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v21 + 8))(v30, v0);
    if (v42)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Input();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:), 0, 0);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.parseConfirmationResponse(input:)()
{
  v24 = v0;
  v1 = v0[2];
  v2 = Input.disableConfirmRequestsConfirmationResponse.getter();
  if (v2 == 2)
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.information);
    (*(v4 + 16))(v3, v6, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v14 = 136315138;
      lazy protocol witness table accessor for type Input and conformance Input();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v8, v9, "Unexpectedly found nil userConfirmationResponse in %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  v19 = v0[5];

  v20 = v0[1];

  return v20(v2);
}

uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for OutputGenerationManifest();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v6 = *(v5 + 64) + 15;
  v2[20] = swift_task_alloc();
  v7 = *(*v1 + 144);
  v11 = *v1 + 144;
  v2[21] = v7;
  v2[22] = v11 & 0xFFFFFFFFFFFFLL | 0xA5B0000000000000;
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v2[23] = v9;
  *v9 = v2;
  v9[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);

  return v12();
}

uint64_t DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[7] = v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;
  v6 = v4[23];
  v7 = *v3;
  v5[24] = a2;

  if (v2)
  {
    v8 = v5[20];
    v9 = v5[17];

    v10 = v7[1];

    return v10();
  }

  else
  {
    v12 = v5[22];
    v17 = (v5[21] + *v5[21]);
    v13 = *(v5[21] + 4);
    v14 = swift_task_alloc();
    v5[25] = v14;
    *v14 = v7;
    v14[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v15 = v5[22];
    v16 = v5[16];

    return v17();
  }
}

{
  v4 = *v3;
  v5 = *v3;
  v5[11] = v3;
  v5[12] = a1;
  v5[13] = a2;
  v5[14] = v2;
  v6 = v4[25];
  v7 = *v3;
  v5[26] = a2;
  v5[27] = v2;

  if (v2)
  {

    return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v8 = v5[22];
    v14 = (v5[21] + *v5[21]);
    v9 = *(v5[21] + 4);
    v10 = swift_task_alloc();
    v5[28] = v10;
    *v10 = v7;
    v10[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v11 = v5[22];
    v12 = v5[16];

    return v14();
  }
}

{
  v6 = *(*v3 + 224);
  v7 = *v3;
  v7[29] = v2;

  if (v2)
  {

    return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
  }

  else
  {
    v8 = v7[12];
    v9 = v7[8];
    v10 = v7[16];
    v7[30] = a2;
    v7[31] = a1;
    v7[32] = v8;
    v7[33] = v9;
    v11 = *(*v10 + 152);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v7[34] = v13;
    *v13 = v7;
    v13[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
    v14 = v7[16];

    return v16();
  }
}

{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v5 = *(*v2 + 128);
  v12 = *v2;
  v3[35] = a1;
  v3[36] = a2;

  v6 = *(*v5 + 160);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[37] = v8;
  *v8 = v12;
  v8[1] = DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:);
  v9 = v3[16];

  return v11();
}

{
  v3 = *v2;
  v4 = *(*v2 + 296);
  v6 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;

  return _swift_task_switch(DisableConfirmRequestsConfirmationStrategy.makePromptForConfirmation(itemToConfirm:), 0, 0);
}