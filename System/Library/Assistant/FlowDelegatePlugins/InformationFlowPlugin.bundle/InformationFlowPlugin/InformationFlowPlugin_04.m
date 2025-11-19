unint64_t lazy protocol witness table accessor for type VideoSnippetError and conformance VideoSnippetError()
{
  result = lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError;
  if (!lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError;
  if (!lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoSnippetError and conformance VideoSnippetError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Moviespb_CoverArt.AspectRatio and conformance Moviespb_CoverArt.AspectRatio(unint64_t *a1, void (*a2)(uint64_t))
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

id partial apply for closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return closure #1 in static VideoSnippetUtils.makeSixteenByNineImage<A>(for:)(a1, a2);
}

id specialized static VideoSnippetUtils.makeProfileSwitch(switchProfileBuilderParams:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(a1, v10, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of Any?(v10, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = [objc_allocWithZone(SAProfileSwitch) init];
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v6, v2);
    v18 = String._bridgeToObjectiveC()();

    [v17 setAceId:v18];

    Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams.userID.getter();
    v19 = String._bridgeToObjectiveC()();

    [v17 setSharedUserId:v19];

    (*(v12 + 8))(v15, v11);
    return v17;
  }
}

uint64_t PommesFallbackFlow.execute(completion:)()
{
  type metadata accessor for PommesFallbackFlow();
  lazy protocol witness table accessor for type PommesFallbackFlow and conformance PommesFallbackFlow();
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PommesFallbackFlow.execute()(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for FlowUnhandledReason();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(PommesFallbackFlow.execute(), 0, 0);
}

uint64_t PommesFallbackFlow.execute()()
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
    _os_log_impl(&dword_0, v2, v3, "Returning .unhandled(reason: .needsInfoDomainFallback) for PommesFallbackFlow", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  (*(v6 + 104))(v5, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v7);
  static ExecuteResponse.unhandled(reason:)();
  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

unint64_t lazy protocol witness table accessor for type PommesFallbackFlow and conformance PommesFallbackFlow()
{
  result = lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow;
  if (!lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow)
  {
    type metadata accessor for PommesFallbackFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesFallbackFlow and conformance PommesFallbackFlow);
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance PommesFallbackFlow(uint64_t a1)
{
  v4 = *(**v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v8(a1);
}

uint64_t static SuggestionsIntentDonators.union(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for UnionSuggestionsIntentDonator;
  a2[4] = &protocol witness table for UnionSuggestionsIntentDonator;
  *a2 = a1;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSe_SEs8SendablepGMd, &_ss18_DictionaryStorageCySSSe_SEs8SendablepGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        outlined copy of Data._Representation(v24, *(&v24 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEs8SendablepMd, &_sSe_SEs8SendablepMR);
        swift_dynamicCast();
        outlined init with take of Decodable & Encodable & Sendable(v25, v27);
        outlined init with take of Decodable & Encodable & Sendable(v27, v28);
        outlined init with take of Decodable & Encodable & Sendable(v28, &v26);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 48 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Decodable & Encodable & Sendable(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = outlined init with take of Decodable & Encodable & Sendable(&v26, (v2[7] + 48 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[22] = a6;
  v7[23] = a7;
  v7[20] = a4;
  v7[21] = a5;
  v7[18] = a2;
  v7[19] = a3;
  v7[17] = a1;
  v8 = type metadata accessor for SiriSuggestions.Intent();
  v7[24] = v8;
  v9 = *(v8 - 8);
  v7[25] = v9;
  v10 = *(v9 + 64) + 15;
  v7[26] = swift_task_alloc();

  return _swift_task_switch(UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:), 0, 0);
}

uint64_t UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)()
{
  v1 = v0[23];
  v2 = *(v1 + 16);
  v0[27] = v2;
  if (v2)
  {
    v0[28] = 0;
    outlined init with copy of OutputPublisherAsync(v1 + 32, (v0 + 2));
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v5 = *(v4 + 8);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[19];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[17];

    return v17(v13, v12, v10, v11, v8, v9, v3, v4);
  }

  else
  {
    v15 = v0[26];

    v16 = v0[1];

    return v16();
  }
}

{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  else
  {
    v3 = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[27];
  v2 = v0[28] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[26];

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[28];
    v0[28] = v6 + 1;
    outlined init with copy of OutputPublisherAsync(v0[23] + 40 * v6 + 72, (v0 + 2));
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = *(v8 + 8);
    v18 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[29] = v11;
    *v11 = v0;
    v11[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v12 = v0[21];
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[18];
    v17 = v0[17];

    return v18(v17, v16, v14, v15, v12, v13, v7, v8);
  }
}

{
  v44 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[22];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.information);
  (*(v3 + 16))(v2, v5, v4);
  outlined init with copy of OutputPublisherAsync((v0 + 2), (v0 + 7));
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v14 = 136315650;
    lazy protocol witness table accessor for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v43);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    outlined init with copy of OutputPublisherAsync((v0 + 7), (v0 + 12));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InformationFlowPlugin24SuggestionsIntentDonator_pMd, &_s21InformationFlowPlugin24SuggestionsIntentDonator_pMR);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v43);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v23;
    *v41 = v23;
    _os_log_impl(&dword_0, v7, v8, "UnionSuggestionsIntentDonator: Unable donate intent %s to donator: %s due to unhandled error: %@", v14, 0x20u);
    outlined destroy of Any?(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    swift_arrayDestroy();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    (*(v12 + 8))(v11, v13);
  }

  v24 = v0[27];
  v25 = v0[28] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v25 == v24)
  {
    v26 = v0[26];

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = v0[28];
    v0[28] = v29 + 1;
    outlined init with copy of OutputPublisherAsync(v0[23] + 40 * v29 + 72, (v0 + 2));
    v30 = v0[5];
    v31 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v30);
    v32 = *(v31 + 8);
    v42 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[29] = v34;
    *v34 = v0;
    v34[1] = UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v35 = v0[21];
    v36 = v0[22];
    v37 = v0[19];
    v38 = v0[20];
    v39 = v0[18];
    v40 = v0[17];

    return v42(v40, v39, v37, v38, v35, v36, v30, v31);
  }
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance UnionSuggestionsIntentDonator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return UnionSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a2;
  v7[9] = a5;
  v7[7] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[13] = v9;
  v10 = *(v9 - 8);
  v7[14] = v10;
  v11 = *(v10 + 64) + 15;
  v7[15] = swift_task_alloc();
  v12 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v13 = type metadata accessor for PerformanceUtil.Ticket();
  v7[17] = v13;
  v14 = *(v13 - 8);
  v7[18] = v14;
  v15 = *(v14 + 64) + 15;
  v7[19] = swift_task_alloc();

  return _swift_task_switch(CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:), 0, 0);
}

uint64_t CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:)()
{
  v40 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  UUID.init(uuidString:)();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of Any?(v0[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v8 = v0[8];
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.information);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    if (v12)
    {
      v17 = v0[7];
      v16 = v0[8];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39 = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v39);
      _os_log_impl(&dword_0, v10, v11, "CoreSuggestionsIntentDonator: Unable to parse %s to UUID", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
    }

    (*(v14 + 8))(v13, v15);
    v20 = v0[19];
    v21 = v0[15];
    v22 = v0[16];
    v23 = v0[12];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[11];
    v27 = v0[9];
    v28 = (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v29(v28);
    v31 = v0[5];
    v32 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v31);
    v33 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v27);
    v0[20] = v33;
    v34 = async function pointer to SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)[1];
    v35 = swift_task_alloc();
    v0[21] = v35;
    v36 = *(v32 + 8);
    *v35 = v0;
    v35[1] = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
    v37 = v0[15];
    v38 = v0[10];

    return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v37, v38, v33, 1, v31, v36);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = CoreSuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[19];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[12];

  v11 = v0[1];

  return v11();
}

{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];
  v11 = v0[22];

  return v10();
}

uint64_t protocol witness for SuggestionsIntentDonator.donateSuggestions(requestID:pommesResponse:experience:executionParams:intent:) in conformance CoreSuggestionsIntentDonator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(**v6 + 96);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return v18(a1, a2, a3, a4, a5, a6);
}

unint64_t lazy protocol witness table accessor for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent()
{
  result = lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent;
  if (!lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent)
  {
    type metadata accessor for SiriSuggestions.Intent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriSuggestions.Intent and conformance SiriSuggestions.Intent);
  }

  return result;
}

uint64_t ContinuationResultSetFlowProvider.init(patternId:parameters:bundle:pegasusConversationContext:outputPublisherAsync:deviceState:informationViewFactory:patternFlowProvider:patternExecutor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12)
{
  a9[28] = a1;
  a9[29] = a2;
  *a9 = specialized GenericResultSetParamBuilder.init(parameters:)(a3);
  a9[1] = v18;
  a9[2] = v19;
  a9[3] = v20;
  a9[27] = a4;
  a9[14] = a5;
  a9[15] = a6;
  outlined init with copy of OutputPublisherAsync(a7, (a9 + 4));
  outlined init with copy of OutputPublisherAsync(a8, (a9 + 9));
  static PatternFlowProvidingHelper.unwrap(_:with:)(a11, a7, a9 + 16);
  outlined destroy of Any?(a11, &_s11SiriKitFlow07PatternC9Providing_pSgMd, _s11SiriKitFlow07PatternC9Providing_pSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(a8);
  __swift_destroy_boxed_opaque_existential_0Tm(a7);
  a9[21] = a10;

  return outlined init with take of SiriSuggestionsBroker(a12, (a9 + 22));
}

uint64_t ContinuationResultSetFlowProvider.patternId.getter()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.outputManifest.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  NLContextUpdate.init()();
  outlined copy of Data?(*(a2 + 112), *(a2 + 120));
  NLContextUpdate.pegasusConversationContext.setter();
  v7 = type metadata accessor for NLContextUpdate();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return OutputGenerationManifest.nlContextUpdate.setter();
}

uint64_t ContinuationResultSetFlowProvider.makeEmptyResultSetFlow()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeEmptyResultSetFlow(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.information);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  outlined init with copy of Logger?(v1, v2);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of Any?(*(v0 + 16), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = StaticString.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 70;
      *(v9 + 22) = 2080;
      *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000093, 0x80000000000BFE70, &v14);
      _os_log_impl(&dword_0, v7, v8, "FatalError at %s:%lu - %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(*(v0 + 16), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t ContinuationResultSetFlowProvider.makeSingleItemFlow()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();
  *(v0 + 24) = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeSingleItemFlow(), 0, 0);
}

{
  v15 = v0;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  v4 = __swift_project_value_buffer(v3, static Logger.information);
  v5 = *(v3 - 8);
  (*(v5 + 16))(v1, v4, v3);
  (*(v5 + 56))(v1, 0, 1, v3);
  outlined init with copy of Logger?(v1, v2);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of Any?(*(v0 + 16), &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = StaticString.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2048;
      *(v9 + 14) = 74;
      *(v9 + 22) = 2080;
      *(v9 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000008FLL, 0x80000000000BFFB0, &v14);
      _os_log_impl(&dword_0, v7, v8, "FatalError at %s:%lu - %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(*(v0 + 16), v3);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t ContinuationResultSetFlowProvider.makeAllResultsFlow()()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for OutputGenerationManifest();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for WindowedPaginationParameters();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = type metadata accessor for PerformanceUtil.Ticket();
  v1[11] = v10;
  v11 = *(v10 - 8);
  v1[12] = v11;
  v12 = *(v11 + 64) + 15;
  v1[13] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeAllResultsFlow(), 0, 0);
}

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
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeAllResultsFlow", v4, 2u);
  }

  v5 = v0[13];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[2];

  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v9 = *(v8 + 24);
  WindowedPaginationParameters.init(windowSize:_:)();
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  v11 = v0[9];
  v12 = v0[2];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v9, v11);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v13 = v0[11];
  v14 = v0[10];
  v15 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v11 = v0[16];
  v12 = v0[4];
  v6 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v10 = v6[20];
  __swift_project_boxed_opaque_existential_1(v6 + 16, v6[19]);
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v6;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v7 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v4 + 8))(v3, v12);
  (*(v2 + 8))(v1, v13);

  v8 = v0[1];

  return v8(v7);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t ContinuationResultSetFlowProvider.makeAllResultsFlow()(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  v4[15] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  }

  else
  {
    v4[16] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = ContinuationResultSetFlowProvider.makeAllResultsFlow();
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for Date();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
}

void ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v37 = v0;
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
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.executePatternForWindow", v4, 2u);
  }

  v5 = *(v0 + 64);

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v7 = WindowedPaginationParameters.asCATParameters()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = v6;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v7, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v35);

  v9 = v35[0];
  v10 = *(v0 + 72);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  v15 = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = v14;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v13, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v15, closure #1 in variable initialization expression of static GenericResultSetParamBuilder.duplicateHandler, 0);
  v34 = v35[0];
  v16 = specialized GenericResultSetParamBuilder.itemPatternParameters(items:)(*(v0 + 56));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  v35[0] = v16;
  specialized Dictionary._Variant.updateValue(_:forKey:)(v35, v11, v12, (v0 + 16));
  outlined destroy of Any?(v0 + 16, &_sypSgMd, &_sypSgMR);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v35[0] = v9;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v34, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v17, v35);

  v18 = v35[0];
  *(v0 + 104) = v35[0];

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v35[0] = v22;
    *v21 = 136315138;
    v23 = Dictionary.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v35);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_0, v19, v20, "ContinuationResultSetFlowProvider.executePatternForWindow parameters: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  type metadata accessor for PerformanceUtil();
  *(v0 + 112) = static PerformanceUtil.shared.getter();
  v28 = swift_task_alloc();
  *(v0 + 120) = v28;
  *(v28 + 16) = v27;
  *(v28 + 24) = v18;
  Date.init()();
  v29 = *(&async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + 1);
  v33 = &async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:) + async function pointer to dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v30 = swift_task_alloc();
  *(v0 + 128) = v30;
  v31 = type metadata accessor for PatternExecutionResult();
  *v30 = v0;
  v30[1] = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v32 = *(v0 + 96);
  v44 = v28;
  v45 = v31;
  v43 = &async function pointer to partial apply for closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v42 = 2;
  v41 = 58;
  v39 = 146;
  v40 = "executePatternForWindow(windowItems:paginationParameters:)";

  __asm { BR              X8 }
}

uint64_t ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v11 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = v2[13];
    v4 = v2[14];
    (*(v2[11] + 8))(v2[12], v2[10]);

    v6 = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  }

  else
  {
    v8 = v2[14];
    v7 = v2[15];
    v9 = v2[13];
    (*(v2[11] + 8))(v2[12], v2[10]);

    v6 = ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[12];
  v2 = v0[6];

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow06PromptC12ProviderTypeVyytSay011InformationC6Plugin20GenericResultSetItemVGGMd, &_s11SiriKitFlow06PromptC12ProviderTypeVyytSay011InformationC6Plugin20GenericResultSetItemVGGMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for PromptType();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)()
{
  v34 = v0;
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
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeWindowingConfiguration", v4, 2u);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[3];

  static PromptType.continuation.getter();
  lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type PromptType and conformance PromptType, &type metadata accessor for PromptType);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v7 + 8);
  v10(v5, v6);
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21InformationFlowPlugin20GenericResultSetItemVGMd, &_sSay21InformationFlowPlugin20GenericResultSetItemVGMR);
    lazy protocol witness table accessor for type ContinuationResultSetFlowProvider and conformance ContinuationResultSetFlowProvider();
    static PromptFlowProviderType.continuation<A>(_:)();
    WindowingConfiguration.init(promptFlowProviderType:padding:windowSizeOverride:)();
    v14 = 0;
  }

  else
  {
    (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[8];
    v19 = v0[6];
    if (v17)
    {
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 136315138;
      lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type PromptType and conformance PromptType, &type metadata accessor for PromptType);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v10(v18, v19);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v33);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_0, v15, v16, "Unsupported promptType '%s'. Will not support windowing.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {

      v10(v18, v19);
    }

    v14 = 1;
  }

  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[5];
  v28 = v0[2];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22WindowingConfigurationVyytSay011InformationC6Plugin20GenericResultSetItemVGGMd, &_s11SiriKitFlow22WindowingConfigurationVyytSay011InformationC6Plugin20GenericResultSetItemVGGMR);
  (*(*(v29 - 8) + 56))(v28, v14, 1, v29);

  v30 = v0[1];

  return v30();
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for OutputGenerationManifest();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)()
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
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeFinalWindowFlow", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:);
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v6, v8);
}

{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v10 = v0[6];
  v5 = v0[4];
  v6 = v5[20];
  __swift_project_boxed_opaque_existential_1(v5 + 16, v5[19]);
  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v5;
  OutputGenerationManifest.init(dialogPhase:_:)();

  v7 = dispatch thunk of PatternFlowProviding.makeResponseFlow(patternExecutionResult:outputGenerationManifest:)();

  (*(v3 + 8))(v2, v10);

  v8 = v0[1];

  return v8(v7);
}

uint64_t ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[8];
    v8 = v4[5];

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v4[10] = a1;

    return _swift_task_switch(ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:), 0, 0);
  }
}

uint64_t ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = type metadata accessor for ConfirmationResponse();
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v6 = *(v5 + 64) + 15;
  v3[38] = swift_task_alloc();
  v7 = type metadata accessor for WindowedPaginationParameters();
  v3[39] = v7;
  v8 = *(v7 - 8);
  v3[40] = v8;
  v3[41] = *(v8 + 64);
  v3[42] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v10 = type metadata accessor for OutputGenerationManifest();
  v3[44] = v10;
  v11 = *(v10 - 8);
  v3[45] = v11;
  v12 = *(v11 + 64) + 15;
  v3[46] = swift_task_alloc();

  return _swift_task_switch(ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
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
    _os_log_impl(&dword_0, v2, v3, "ContinuationResultSetFlowProvider.makeWindowFlow", v4, 2u);
  }

  v39 = *(v0 + 368);
  v40 = *(v0 + 360);
  v5 = *(v0 + 344);
  v41 = *(v0 + 352);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v42 = *(v0 + 296);
  v10 = *(v0 + 280);
  v43 = *(v0 + 288);
  v44 = *(v0 + 304);
  v11 = *(v0 + 264);
  v38 = *(v0 + 272);

  static DialogPhase.completion.getter();
  *(swift_task_alloc() + 16) = v10;
  OutputGenerationManifest.init(dialogPhase:_:)();

  outlined init with copy of ContinuationResultSetFlowProvider(v10, v0 + 16);
  (*(v8 + 16))(v7, v11, v9);
  v12 = (*(v8 + 80) + 264) & ~*(v8 + 80);
  v13 = swift_allocObject();
  v14 = *(v0 + 224);
  *(v13 + 208) = *(v0 + 208);
  *(v13 + 224) = v14;
  *(v13 + 240) = *(v0 + 240);
  v15 = *(v0 + 160);
  *(v13 + 144) = *(v0 + 144);
  *(v13 + 160) = v15;
  v16 = *(v0 + 192);
  *(v13 + 176) = *(v0 + 176);
  *(v13 + 192) = v16;
  v17 = *(v0 + 96);
  *(v13 + 80) = *(v0 + 80);
  *(v13 + 96) = v17;
  v18 = *(v0 + 128);
  *(v13 + 112) = *(v0 + 112);
  *(v13 + 128) = v18;
  v19 = *(v0 + 32);
  *(v13 + 16) = *(v0 + 16);
  *(v13 + 32) = v19;
  v20 = *(v0 + 64);
  *(v13 + 48) = *(v0 + 48);
  *(v13 + 64) = v20;
  *(v13 + 256) = v38;
  (*(v8 + 32))(v13 + v12, v7, v9);
  v21 = type metadata accessor for ResponseFactory();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = ResponseFactory.init()();
  v25 = type metadata accessor for RFSimpleYesNoPromptFlowStrategy();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = (v28 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_responseGenerator);
  v29[3] = v21;
  v29[4] = &protocol witness table for ResponseFactory;
  *v29 = v24;
  (*(v40 + 32))(v28 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_baseManifest, v39, v41);
  v30 = (v28 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_rejectionOutputProducer);
  *v30 = &async function pointer to closure #1 in default argument 2 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:);
  v30[1] = 0;
  v31 = (v28 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_cancellationOutputProducer);
  *v31 = &async function pointer to closure #1 in default argument 3 of RFSimpleYesNoPromptFlowStrategy.init(baseManifest:responseGenerator:rejectionOutputProducer:cancellationOutputProducer:promptPatternExecutionProducer:);
  v31[1] = 0;
  v32 = (v28 + OBJC_IVAR____TtC21InformationFlowPlugin31RFSimpleYesNoPromptFlowStrategy_promptPatternExecutionProducer);
  *v32 = &async function pointer to partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  v32[1] = v13;
  v33 = v10[20];
  __swift_project_boxed_opaque_existential_1(v10 + 16, v10[19]);
  (*(v42 + 104))(v44, enum case for ConfirmationResponse.confirmed(_:), v43);
  lazy protocol witness table accessor for type PromptType and conformance PromptType(&lazy protocol witness table cache variable for type RFSimpleYesNoPromptFlowStrategy and conformance RFSimpleYesNoPromptFlowStrategy, type metadata accessor for RFSimpleYesNoPromptFlowStrategy);
  v34 = dispatch thunk of PatternFlowProviding.makeResponseFlowWithContinuationPrompt<A>(strategy:shouldContinueForResponse:)();
  (*(v42 + 8))(v44, v43);
  *(v0 + 256) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMd, &_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMR);
  lazy protocol witness table accessor for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>();
  v35 = Flow.eraseToAnyValueFlow()();

  v36 = *(v0 + 8);

  return v36(v35);
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for PerformanceUtil.Ticket();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:), 0, 0);
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v1 = v0[8];
  v2 = v0[5];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(v5, v4);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];
  v6 = v0[11];

  return v5(v6);
}

{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)()
{
  v1 = v0[3];
  v2 = v1[25];
  v3 = v1[26];
  __swift_project_boxed_opaque_existential_1(v1 + 22, v2);
  v5 = v1[28];
  v4 = v1[29];
  v6 = v1[27];
  v7 = *(v3 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:);
  v10 = v0[4];

  return (v12)(v5, v4, v6, v10, v1 + 9, v2, v3);
}

{
  **(v0 + 16) = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:), 0, 0);
  }
}

uint64_t protocol witness for ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded() in conformance ContinuationResultSetFlowProvider()
{
  v1 = ResultSetFlowProvider.makeNarrowingPromptFlowIfNeeded()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for ResultSetFlowProvider.makeEmptyResultSetFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeEmptyResultSetFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeSingleItemFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeSingleItemFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeAllResultsFlow() in conformance ContinuationResultSetFlowProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeAllResultsFlow()();
}

uint64_t protocol witness for ResultSetFlowProvider.makeWindowingConfiguration(promptType:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return ContinuationResultSetFlowProvider.makeWindowingConfiguration(promptType:)(a1, a2);
}

uint64_t protocol witness for ContinuationPromptFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PatternExecutorProtocol.execute(pattern:in:with:deviceState:) in conformance PatternExecutor;

  return ContinuationResultSetFlowProvider.makeFinalWindowFlow(paginationParameters:windowContent:)(a1, v4);
}

uint64_t protocol witness for WindowingFlowProvider.makeWindowFlow(paginationParameters:windowContent:) in conformance ContinuationResultSetFlowProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = PatternExecutor.execute(pattern:in:with:deviceState:);

  return ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(a1, v4);
}

uint64_t sub_74EB0()
{
  v1 = type metadata accessor for WindowedPaginationParameters();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v8 = *(v0 + 136);
  if (v8 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 128), v8);
  }

  v9 = (v3 + 264) & ~v3;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
  v10 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 192));

  v11 = *(v0 + 248);

  v12 = *(v0 + 256);

  (*(v2 + 8))(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)()
{
  v2 = *(type metadata accessor for WindowedPaginationParameters() - 8);
  v3 = (*(v2 + 80) + 264) & ~*(v2 + 80);
  v4 = *(v0 + 256);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:);

  return closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(v0 + 16, v4, v0 + v3);
}

uint64_t partial apply for closure #1 in ContinuationResultSetFlowProvider.makeWindowFlow(paginationParameters:windowContent:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t lazy protocol witness table accessor for type PromptType and conformance PromptType(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>()
{
  result = lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>;
  if (!lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMd, &_s11SiriKitFlow08AnyValueC0CyAA15WindowingActionVyytGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyValueFlow<WindowingAction<()>> and conformance AnyValueFlow<A>);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t getEnumTagSinglePayload for ContinuationResultSetFlowProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t storeEnumTagSinglePayload for ContinuationResultSetFlowProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  outlined init with take of Any(v49, v47);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v22 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    specialized _NativeDictionary.copy()();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    outlined init with copy of Any(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm((v26 + v25));
    outlined init with take of Any(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = outlined init with take of Any(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        outlined init with take of Any(v49, v47);
        v35 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, 1);
          v40 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          outlined init with copy of Any(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm((v34 + v33));
          outlined init with take of Any(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = outlined init with take of Any(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    outlined consume of Set<String>.Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for Flow.execute() in conformance NavigateToShimFlow;

  return closure #2 in ContinuationResultSetFlowProvider.executePatternForWindow(windowItems:paginationParameters:)(a1, v5, v4);
}

unint64_t type metadata accessor for PatternExecutionResult()
{
  result = lazy cache variable for type metadata for PatternExecutionResult;
  if (!lazy cache variable for type metadata for PatternExecutionResult)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PatternExecutionResult);
  }

  return result;
}

void *InformationViewFactory.__allocating_init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = [objc_opt_self() sharedPreferences];
  v6 = type metadata accessor for PommesServerFallbackPreferences();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = PommesServerFallbackPreferences.init(_:)();
  v4[11] = v6;
  v4[12] = &protocol witness table for PommesServerFallbackPreferences;
  v4[8] = v9;
  outlined init with take of SiriSuggestionsBroker(a1, (v4 + 3));
  v4[2] = a2;
  return v4;
}

void *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      outlined init with take of Any(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t InformationViewFactory.serverFallbackPreferences.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 64));
  outlined init with take of SiriSuggestionsBroker(a1, v1 + 64);
  return swift_endAccess();
}

void *InformationViewFactory.init(deviceState:commonCATs:)(__int128 *a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedPreferences];
  v6 = type metadata accessor for PommesServerFallbackPreferences();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = PommesServerFallbackPreferences.init(_:)();
  v2[11] = v6;
  v2[12] = &protocol witness table for PommesServerFallbackPreferences;
  v2[8] = v9;
  outlined init with take of SiriSuggestionsBroker(a1, (v2 + 3));
  v2[2] = a2;
  return v2;
}

uint64_t InformationViewFactory.makeAceOutputError()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for PerformanceUtil.Ticket();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();

  return _swift_task_switch(InformationViewFactory.makeAceOutputError(), 0, 0);
}

uint64_t InformationViewFactory.makeAceOutputError()()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[3];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v4 = *(*v3 + 144);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = InformationViewFactory.makeAceOutputError();
  v7 = v0[6];
  v8 = v0[3];

  return v10(v7);
}

{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(InformationViewFactory.makeAceOutputError(), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  v12 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v13 = v0[10];
  v14 = v0[4];
  v11 = v0[2];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  static PerformanceUtil.shared.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  Date.init()();
  type metadata accessor for AceOutput();
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v4 + 8))(v3, v12);
  (*(v2 + 8))(v1, v13);

  (*(v6 + 8))(v5, v14);

  v9 = v0[1];

  return v9();
}

uint64_t closure #1 in InformationViewFactory.makeAceOutputError()(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v10 - v5;
  v7 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  v8 = type metadata accessor for NLContextUpdate();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  static AceOutputHelper.makeSummaryViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Any?(v10, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  return outlined destroy of Any?(v6, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
}

uint64_t InformationViewFactory.makeErrorRunInformationFlowTemplate()(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Date() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for PerformanceUtil.Ticket();
  v2[11] = v5;
  v6 = *(v5 - 8);
  v2[12] = v6;
  v7 = *(v6 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(InformationViewFactory.makeErrorRunInformationFlowTemplate(), 0, 0);
}

uint64_t InformationViewFactory.makeErrorRunInformationFlowTemplate()()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  Date.init()();
  PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
  v8 = (**(v3 + 16) + class metadata base offset for CommonCATs);
  v9 = (*v8 + **v8);
  v4 = (*v8)[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  v6 = v0[6];

  return v9(v6);
}

{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  }

  else
  {
    v3 = InformationViewFactory.makeErrorRunInformationFlowTemplate();
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

{
  v27 = v0;
  (*(v0[12] + 8))(v0[13], v0[11]);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.information);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v4, v5, "Unable to generate dialog due to error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v16 = v0[8];
  v15 = v0[9];
  v17 = *(v2 - 8);
  (*(v17 + 16))(v15, v3, v2);
  (*(v17 + 56))(v15, 0, 1, v2);
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v15, v16, &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  if ((*(v17 + 48))(v16, 1, v2) == 1)
  {
    outlined destroy of Any?(v0[8], &_s2os6LoggerVSgMd, &_s2os6LoggerVSgMR);
  }

  else
  {
    v18 = v0[8];
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v21 = 136315650;
      v22 = StaticString.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 64;
      *(v21 + 22) = 2080;
      *(v21 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x80000000000C0280, &v26);
      _os_log_impl(&dword_0, v19, v20, "FatalError at %s:%lu - %s", v21, 0x20u);
      swift_arrayDestroy();
    }

    (*(v17 + 8))(v0[8], v2);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

void *InformationViewFactory.makeAceViewsForPegasus(layouts:dialogs:buttons:disambiguationLists:domainObjects:renderOptions:dialogPhase:requestId:pommesCandidateId:)(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v205 = a7;
  v245 = a6;
  v218 = a5;
  v220 = a4;
  v223 = a3;
  v230 = a2;
  v243 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v206 = &v199 - v9;
  v204 = type metadata accessor for UUID();
  v203 = *(v204 - 8);
  v10 = *(v203 + 64);
  __chkstk_darwin(v204);
  v202 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v241 = *(v232 - 8);
  v12 = *(v241 + 64);
  __chkstk_darwin(v232);
  v231 = &v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent();
  v212 = *(v242 - 8);
  v14 = *(v212 + 64);
  __chkstk_darwin(v242);
  v240 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent();
  v211 = *(v213 - 8);
  v16 = *(v211 + 64);
  __chkstk_darwin(v213);
  v239 = &v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v210 = *(v238 - 8);
  v18 = *(v210 + 64);
  __chkstk_darwin(v238);
  v237 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v20 = *(v244 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v244);
  v236 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v199 - v24;
  v26 = type metadata accessor for ResponseMode();
  v235 = *(v26 - 8);
  v27 = *(v235 + 64);
  __chkstk_darwin(v26);
  v200 = &v199 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
  v29 = *(*(v234 - 8) + 64);
  v30 = __chkstk_darwin(v234);
  v214 = &v199 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v228 = &v199 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v199 = &v199 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v219 = &v199 - v38;
  v39 = __chkstk_darwin(v37);
  v201 = &v199 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v199 - v42;
  __chkstk_darwin(v41);
  v45 = &v199 - v44;
  v46 = type metadata accessor for Date();
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v229 = &v199 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for PerformanceUtil.Ticket();
  v215 = *(v216 - 8);
  v49 = *(v215 + 64);
  v50 = __chkstk_darwin(v216);
  v224 = &v199 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v227 = &v199 - v53;
  v54 = __chkstk_darwin(v52);
  v226 = &v199 - v55;
  v56 = __chkstk_darwin(v54);
  v225 = &v199 - v57;
  __chkstk_darwin(v56);
  v59 = &v199 - v58;
  if (one-time initialization token for information != -1)
  {
    goto LABEL_145;
  }

  while (1)
  {
    v60 = type metadata accessor for Logger();
    v217 = __swift_project_value_buffer(v60, static Logger.information);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    v63 = os_log_type_enabled(v61, v62);
    v233 = v43;
    if (v63)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v61, v62, "PegasusViewFactory: makeAceViewsForPegasus", v64, 2u);
    }

    v248 = _swiftEmptyArrayStorage;
    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    type metadata accessor for SiriEnvironment();
    if (static SiriEnvironment.forCurrentTask.getter())
    {
      SiriEnvironment.currentRequest.getter();

      CurrentRequest.responseMode.getter();

      v65 = 0;
    }

    else
    {
      v65 = 1;
    }

    v66 = v235;
    v67 = v235 + 56;
    v68 = *(v235 + 56);
    v68(v45, v65, 1, v26);
    v69 = v233;
    static ResponseMode.displayForward.getter();
    v208 = v67;
    v207 = v68;
    v68(v69, 0, 1, v26);
    v70 = *(v234 + 48);
    v222 = v45;
    v71 = v45;
    v72 = v228;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v71, v228, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v69, v72 + v70, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v73 = *(v66 + 48);
    v74 = v73(v72, 1, v26);
    v221 = v59;
    v209 = v73;
    if (v74 == 1)
    {
      outlined destroy of Any?(v69, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v75 = v73(v72 + v70, 1, v26);
      v76 = v230;
      if (v75 == 1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v77 = v201;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v72, v201, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if (v73(v72 + v70, 1, v26) == 1)
    {
      outlined destroy of Any?(v233, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v235 + 8))(v77, v26);
LABEL_12:
      outlined destroy of Any?(v72, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
      goto LABEL_13;
    }

    v83 = v235;
    v84 = v72 + v70;
    v85 = v200;
    (*(v235 + 32))(v200, v84, v26);
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode);
    v86 = v77;
    v87 = dispatch thunk of static Equatable.== infix(_:_:)();
    v88 = *(v83 + 8);
    v88(v85, v26);
    outlined destroy of Any?(v233, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v88(v86, v26);
    outlined destroy of Any?(v228, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v76 = v230;
    if (v87)
    {
      goto LABEL_22;
    }

LABEL_13:
    v78 = v219;
    static ResponseMode.displayOnly.getter();
    v207(v78, 0, 1, v26);
    v79 = *(v234 + 48);
    v72 = v214;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v222, v214, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v78, v72 + v79, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v80 = v209;
    if (v209(v72, 1, v26) == 1)
    {
      outlined destroy of Any?(v78, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      v81 = v80(v72 + v79, 1, v26);
      v76 = v230;
      if (v81 != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      outlined destroy of Any?(v72, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
LABEL_22:
      v93 = 0;
      v94 = *(v76 + 16);
      v95 = v244;
      do
      {
        if (v94 == v93)
        {
          break;
        }

        (*(v20 + 16))(v25, v76 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v93++, v95);
        v96 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter();
        (*(v20 + 8))(v25, v95);
      }

      while ((v96 & 1) != 0);
      goto LABEL_25;
    }

    v82 = v199;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v72, v199, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    if (v80(v72 + v79, 1, v26) == 1)
    {
      outlined destroy of Any?(v78, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
      (*(v235 + 8))(v82, v26);
      v76 = v230;
LABEL_18:
      outlined destroy of Any?(v72, &_s13SiriUtilities12ResponseModeVSg_ADtMd, &_s13SiriUtilities12ResponseModeVSg_ADtMR);
      goto LABEL_25;
    }

    v89 = v235;
    v90 = v200;
    (*(v235 + 32))(v200, v72 + v79, v26);
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode);
    v91 = dispatch thunk of static Equatable.== infix(_:_:)();
    v92 = *(v89 + 8);
    v92(v90, v26);
    outlined destroy of Any?(v219, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v92(v82, v26);
    outlined destroy of Any?(v72, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    v76 = v230;
    if (v91)
    {
      goto LABEL_22;
    }

LABEL_25:
    v247 = _swiftEmptyArrayStorage;
    v97 = *(v76 + 16);
    if (v97)
    {
      v235 = *(*v246 + 320);
      v234 = *(v20 + 16);
      v98 = v76 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v233 = *(v20 + 72);
      v99 = _swiftEmptyArrayStorage;
      do
      {
        v100 = v236;
        v101 = v244;
        (v234)(v236, v98, v244);
        v102 = (v235)(v100, v243);
        (*(v20 + 8))(v100, v101);
        if (v102)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v247 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v99 = v247;
        }

        v98 += v233;
        --v97;
      }

      while (v97);
    }

    else
    {
      v99 = _swiftEmptyArrayStorage;
    }

    v214 = v99 >> 62;
    if (v99 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v190 = _bridgeCocoaArray<A>(_:)();

      v103 = v190;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v103 = v99;
    }

    v219 = v99;
    specialized Array.append<A>(contentsOf:)(v103);
    v228 = type metadata accessor for PerformanceUtil();
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v247 = _swiftEmptyArrayStorage;
    v104 = *(v243 + 16);
    if (v104)
    {
      v244 = *(*v246 + 192);
      v236 = *(v210 + 16);
      v105 = v243 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
      v106 = *(v210 + 72);
      v107 = (v210 + 8);
      v230 = _swiftEmptyArrayStorage;
      do
      {
        v108 = v237;
        v109 = v238;
        (v236)(v237, v105, v238);
        v110 = (v244)(v108, v245);
        (*v107)(v108, v109);
        if (v110)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v247 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v243 = *(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v230 = v247;
        }

        v105 += v106;
        --v104;
      }

      while (v104);
    }

    else
    {
      v230 = _swiftEmptyArrayStorage;
    }

    specialized Array.append<A>(contentsOf:)(v111);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v112 = _swiftEmptyArrayStorage;
    v247 = _swiftEmptyArrayStorage;
    v113 = *(v223 + 16);
    if (v113)
    {
      v114 = (*v246 + 168);
      v244 = *v114;
      v243 = v114;
      v115 = *(v211 + 16);
      v116 = v223 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
      v117 = *(v211 + 72);
      v118 = (v211 + 8);
      v119 = v213;
      do
      {
        v120 = v239;
        v115(v239, v116, v119);
        (v244)(v120);
        (*v118)(v120, v119);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v247 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v121 = *(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v119 = v213;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v116 += v117;
        --v113;
      }

      while (v113);
      v122 = v247;
      v112 = _swiftEmptyArrayStorage;
    }

    else
    {
      v122 = _swiftEmptyArrayStorage;
    }

    v59 = v245;
    v223 = v122;
    v213 = v122 >> 62;
    if (v122 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v191 = _bridgeCocoaArray<A>(_:)();

      v123 = v191;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v123 = v122;
    }

    specialized Array.append<A>(contentsOf:)(v123);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v247 = _swiftEmptyArrayStorage;
    v124 = *(v220 + 16);
    if (v124)
    {
      v125 = (*v246 + 176);
      v244 = *v125;
      v243 = v125;
      v126 = *(v212 + 16);
      v127 = v220 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
      v128 = *(v212 + 72);
      v129 = (v212 + 8);
      do
      {
        v130 = v240;
        v131 = v242;
        v126(v240, v127, v242);
        (v244)(v130);
        (*v129)(v130, v131);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v247 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v239 = *(&dword_10 + (v247 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v127 += v128;
        --v124;
      }

      while (v124);
      v112 = v247;
      v59 = v245;
    }

    v212 = v112 >> 62;
    if (v112 >> 62)
    {
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v192 = _bridgeCocoaArray<A>(_:)();

      v132 = v192;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
      v132 = v112;
    }

    v220 = v112;
    specialized Array.append<A>(contentsOf:)(v132);
    static PerformanceUtil.shared.getter();
    dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

    Date.init()();
    PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)();
    v240 = *(v218 + 16);
    if (!v240)
    {
      break;
    }

    v26 = 0;
    v133 = (*v246 + 184);
    v239 = *v133;
    v238 = v133;
    v237 = *(v241 + 16);
    v236 = (v218 + ((*(v241 + 80) + 32) & ~*(v241 + 80)));
    v25 = _swiftEmptyArrayStorage;
    v235 = v241 + 8;
    v241 += 16;
    v234 = *(v241 + 56);
    while (1)
    {
      v134 = v231;
      v135 = v232;
      (v237)(v231, &v236[v234 * v26], v232);
      v136 = (v239)(v134, v59);
      (*v235)(v134, v135);
      v43 = (v136 >> 62);
      v137 = v136 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8));
      v138 = v25 >> 62;
      if (v25 >> 62)
      {
        v150 = _CocoaArrayWrapper.endIndex.getter();
        v140 = v150 + v137;
        if (__OFADD__(v150, v137))
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }
      }

      else
      {
        v139 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
        v140 = v139 + v137;
        if (__OFADD__(v139, v137))
        {
          goto LABEL_93;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v138)
        {
          goto LABEL_75;
        }

        v141 = v25 & 0xFFFFFFFFFFFFFF8;
        if (v140 <= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v138)
        {
LABEL_75:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_76;
        }

        v141 = v25 & 0xFFFFFFFFFFFFFF8;
      }

      v142 = *(v141 + 16);
LABEL_76:
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v141 = v25 & 0xFFFFFFFFFFFFFF8;
LABEL_77:
      v143 = *(v141 + 16);
      v45 = *(v141 + 24);
      if (v43)
      {
        break;
      }

      v20 = *(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8));
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_81:
      if (((v45 >> 1) - v143) < v137)
      {
        goto LABEL_142;
      }

      v243 = v26;
      v244 = v25;
      v233 = v141;
      v144 = v141 + 8 * v143 + 32;
      v242 = v137;
      if (v43)
      {
        v26 = &_sSaySo9SAAceViewCGMR;
        if (v20 < 1)
        {
          goto LABEL_144;
        }

        lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          v45 = specialized protocol witness for Collection.subscript.read in conformance [A](&v247, i, v136);
          v43 = *v146;
          (v45)(&v247, 0);
          *(v144 + 8 * i) = v43;
        }
      }

      else
      {
        v43 = (v136 & 0xFFFFFFFFFFFFFF8);
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
      }

      v59 = v245;
      v25 = v244;
      v26 = v243;
      if (v242 > 0)
      {
        v147 = *(v233 + 16);
        v148 = __OFADD__(v147, v242);
        v149 = v147 + v242;
        if (v148)
        {
          goto LABEL_143;
        }

        *(v233 + 16) = v149;
      }

LABEL_63:
      if (++v26 == v240)
      {
        goto LABEL_95;
      }
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
      goto LABEL_81;
    }

LABEL_62:

    if (v137 <= 0)
    {
      goto LABEL_63;
    }

    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    swift_once();
  }

LABEL_94:
  v25 = _swiftEmptyArrayStorage;
LABEL_95:

  v244 = v25;
  specialized Array.append<A>(contentsOf:)(v151);
  static PerformanceUtil.shared.getter();
  dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)();

  v152 = v220;
  if (v248 >> 62)
  {
    v193 = _CocoaArrayWrapper.endIndex.getter();
    v153 = v222;
    v154 = v219;
    v155 = v230;
    if (!v193)
    {
      goto LABEL_150;
    }

LABEL_97:

    v156 = v244;

    v157 = Logger.logObject.getter();
    v158 = static os_log_type_t.debug.getter();
    v159 = v155 >> 62;
    v160 = v156 >> 62;
    if (os_log_type_enabled(v157, v158))
    {
      v161 = swift_slowAlloc();
      *v161 = 134219008;
      if (v159)
      {
        v162 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v162 = *(&dword_10 + (v230 & 0xFFFFFFFFFFFFFF8));
      }

      *(v161 + 4) = v162;

      *(v161 + 12) = 2048;
      if (v214)
      {
        v163 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v163 = *(&dword_10 + (v154 & 0xFFFFFFFFFFFFFF8));
      }

      *(v161 + 14) = v163;

      *(v161 + 22) = 2048;
      if (v213)
      {
        v164 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v164 = *(&dword_10 + (v223 & 0xFFFFFFFFFFFFFF8));
      }

      *(v161 + 24) = v164;

      *(v161 + 32) = 2048;
      if (v212)
      {
        v165 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v165 = *(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8));
      }

      *(v161 + 34) = v165;

      *(v161 + 42) = 2048;
      if (v160)
      {
        v166 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v166 = *(&dword_10 + (v244 & 0xFFFFFFFFFFFFFF8));
      }

      *(v161 + 44) = v166;

      _os_log_impl(&dword_0, v157, v158, "PegasusViewFactory: pegasusResult generated\n    snippets %ld\n    utteranceViews %ld\n    buttonViews %ld\n    disambiguationListViews %ld\n    domainObjectViews %ld", v161, 0x34u);

      v155 = v230;
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0D11ViewFactoryC03AceG8CategoryO_SitGMd, &_ss23_ContiguousArrayStorageCy21InformationFlowPlugin0D11ViewFactoryC03AceG8CategoryO_SitGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_BBFE0;
    *(inited + 32) = 0;
    if (v159)
    {
      v168 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v168 = *(&dword_10 + (v155 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 40) = v168;
    *(inited + 48) = 1;
    v169 = v244;
    if (v214)
    {
      v170 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v170 = *(&dword_10 + (v154 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 56) = v170;
    *(inited + 64) = 2;
    if (v213)
    {
      v171 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v171 = *(&dword_10 + (v223 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 72) = v171;
    *(inited + 80) = 3;
    if (v212)
    {
      v172 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v172 = *(&dword_10 + (v152 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 88) = v172;
    *(inited + 96) = 4;
    if (v160)
    {
      v173 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v173 = *(&dword_10 + (v169 & 0xFFFFFFFFFFFFFF8));
    }

    *(inited + 104) = v173;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21InformationFlowPlugin0C11ViewFactoryC03AceF8CategoryO_SiTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v174 = [objc_allocWithZone(SAUIAddViews) init];
    v175 = v202;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v203 + 8))(v175, v204);
    v176 = String._bridgeToObjectiveC()();

    [v174 setAceId:v176];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v174 setViews:isa];

    v178 = v206;
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v205, v206, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
    v179 = type metadata accessor for DialogPhase();
    v180 = *(v179 - 8);
    if ((*(v180 + 48))(v178, 1, v179) == 1)
    {
      outlined destroy of Any?(v178, &_s11SiriKitFlow11DialogPhaseVSgMd, &_s11SiriKitFlow11DialogPhaseVSgMR);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      DialogPhase.aceValue.getter();
      (*(v180 + 8))(v178, v179);
    }

    v181 = String._bridgeToObjectiveC()();

    [v174 setDialogPhase:v181];

    specialized _arrayForceCast<A, B>(_:)(_swiftEmptyArrayStorage);
    v182 = Array._bridgeToObjectiveC()().super.isa;

    [v174 setCoordinationOptions:v182];

    if (!v245)
    {

      v153 = v222;
      goto LABEL_140;
    }

    v183 = v245;
    [v174 setImmersiveExperience:PommesRenderOptions.isImmersiveExperience.getter() & 1];
    result = [v174 views];
    if (result)
    {
      v185 = result;

      v186 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v186 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = *(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8));
      }

      v153 = v222;
      if (!result)
      {

        goto LABEL_140;
      }

      if ((v186 & 0xC000000000000001) != 0)
      {
        v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_137;
      }

      if (*(&dword_10 + (v186 & 0xFFFFFFFFFFFFFF8)))
      {
        v187 = *(v186 + 32);
LABEL_137:
        v188 = v187;

        [v188 setPreserveResultSpaceIfPossible:PommesRenderOptions.preserveResultSpaceIfPossible.getter() & 1];

LABEL_140:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v189 = swift_allocObject();
        *(v189 + 1) = xmmword_B9BD0;
        v189[4] = v174;
        goto LABEL_153;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v153 = v222;
  v154 = v219;
  v155 = v230;
  if (*(&dword_10 + (v248 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_97;
  }

LABEL_150:

  v194 = Logger.logObject.getter();
  v195 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    *v196 = 0;
    _os_log_impl(&dword_0, v194, v195, "PegasusViewFactory: pegasusResult has no views", v196, 2u);
  }

  v189 = _swiftEmptyArrayStorage;
LABEL_153:
  v197 = *(v215 + 8);
  v198 = v216;
  v197(v224, v216);
  v197(v227, v198);
  v197(v226, v198);
  v197(v225, v198);
  outlined destroy of Any?(v153, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v197(v221, v198);
  return v189;
}

uint64_t InformationViewFactory.makeCommandForPegasusNavigation(layouts:)(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Date();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.information);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  v16 = os_log_type_enabled(v14, v15);
  v42 = v2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v14, v15, "PegasusViewFactory: makeCommandForPegasusNavigation %ld", v17, 0xCu);
  }

  else
  {
  }

  v18 = *(a1 + 16);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v44 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v20 = type metadata accessor for PerformanceUtil();
    v22 = *(v9 + 16);
    v21 = v9 + 16;
    v39 = v22;
    v40 = v20;
    v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v37 = *(v21 + 56);
    v38 = "Make views for domain objects";
    v35 = (v4 + 8);
    v36 = v21;
    do
    {
      v39(v12, v23, v8);
      v24 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v24);
      Date.init()();
      v25 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v32 = &v30;
      v33 = v25;
      v31 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeCommandForPegasusNavigation(layouts:);
      v30 = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*v35)(v7, v41);
      v26 = v43;
      [objc_msgSend(objc_allocWithZone(SACardShowNextCard) "init")];

      (*(v21 - 8))(v12, v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = v44[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += v37;
      --v18;
    }

    while (v18);
    v19 = v44;
  }

  if (v19 >> 62)
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);

    v28 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
    v28 = v19;
  }

  return v28;
}

id InformationViewFactory.makeButtonView(button:)(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_allocWithZone(SAUIButton) init];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v8 + 8))(v11, v7);
  v13 = String._bridgeToObjectiveC()();

  [v12 setAceId:v13];

  Apple_Parsec_Siri_V2alpha_ButtonViewComponent.text.getter();
  v14 = String._bridgeToObjectiveC()();

  [v12 setText:v14];

  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v18 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 setCommands:isa];

  return v12;
}

uint64_t InformationViewFactory.makeDisambiguationListView(list:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(SAUIDisambiguationList) init];
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LocationBuilderParams and conformance Apple_Parsec_Siri_V2alpha_LocationBuilderParams, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams);
  static Google_Protobuf_Any.register(messageType:)();
  v5 = Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.items.getter();
  v19 = _swiftEmptyArrayStorage;
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v17 = v1 + 16;
    v8 = (v1 + 8);
    v15 = v6 - 1;
    while (v7 < *(v5 + 16))
    {
      (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v0);
      closure #1 in InformationViewFactory.makeDisambiguationListView(list:)(v4, &v18);
      (*v8)(v4, v0);
      if (v18)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v14 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v14 = v7 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v15 == v7;
        v7 = v14;
        if (v9)
        {
          goto LABEL_11;
        }
      }

      else if (v6 == ++v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v8)(v4, v0);

    __break(1u);
  }

  else
  {
LABEL_11:

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIListItem, SAUIListItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = v16;
    [v16 setItems:isa];

    return v11;
  }

  return result;
}

void closure #1 in InformationViewFactory.makeDisambiguationListView(list:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v75 = type metadata accessor for Date();
  v74 = *(v75 - 8);
  v3 = *(v74 + 64);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem();
  v67 = *(v68 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v68);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v65 = *(v70 - 1);
  v7 = *(v65 + 64);
  v8 = __chkstk_darwin(v70);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v10;
  v11 = type metadata accessor for BinaryDecodingOptions();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Google_Protobuf_Any();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v22 = [objc_allocWithZone(SAUIListItem) init];
  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.title.getter();
  v23 = String._bridgeToObjectiveC()();

  [v22 setTitle:v23];

  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.selectionText.getter();
  v24 = String._bridgeToObjectiveC()();

  v77 = v22;
  [v22 setSelectionText:v24];

  Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
  Google_Protobuf_Any.typeURL.getter();
  v27 = *(v15 + 8);
  v25 = (v15 + 8);
  v26 = v27;
  v63 = v21;
  v27(v21, v14);
  v28 = static Google_Protobuf_Any.messageType(forTypeURL:)();
  v30 = v29;

  if (v28)
  {
    v71 = a1;
    Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
    Google_Protobuf_Any.value.getter();
    v26(v19, v14);
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    default argument 3 of Message.init(serializedData:extensions:partial:options:)(v28, v30);
    *(&v85 + 1) = v28;
    v86 = v30;
    __swift_allocate_boxed_opaque_existential_1(&v84);
    v31 = v78;
    Message.init(serializedData:extensions:partial:options:)();
    if (v31)
    {

      __swift_deallocate_boxed_opaque_existential_1(&v84);
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      outlined destroy of Any?(&v84, &_s21InternalSwiftProtobuf7Message_pSgMd, &_s21InternalSwiftProtobuf7Message_pSgMR);
    }

    else
    {
      outlined init with take of SiriSuggestionsBroker(&v84, v87);
      outlined init with copy of OutputPublisherAsync(v87, &v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pMd, &_s21InternalSwiftProtobuf7Message_pMR);
      v32 = v69;
      v33 = v70;
      v34 = swift_dynamicCast();
      v35 = v71;
      if (v34)
      {
        v36 = v65;
        v37 = v64;
        (*(v65 + 32))(v64, v32, v33);
        v38 = specialized static PegasusACEConverters.makeLocation(params:)();
        [v77 setObject:v38];

        (*(v36 + 8))(v37, v33);
      }

      else
      {
        v70 = v26;
        v72 = v25;
        v69 = v14;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.information);
        outlined init with copy of OutputPublisherAsync(v87, &v81);
        v40 = v67;
        v41 = v66;
        v42 = v68;
        (*(v67 + 16))(v66, v35, v68);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *v45 = 136315394;
          LODWORD(v65) = v44;
          __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
          DynamicType = swift_getDynamicType();
          v80 = v83;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf7Message_pXpMd, &_s21InternalSwiftProtobuf7Message_pXpMR);
          v46 = String.init<A>(describing:)();
          v78 = 0;
          v48 = v47;
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);
          v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v88);

          *(v45 + 4) = v49;
          *(v45 + 12) = 2080;
          v50 = v63;
          Apple_Parsec_Siri_V2alpha_DisambiguationListItem.object.getter();
          v51 = Google_Protobuf_Any.typeURL.getter();
          v53 = v52;
          (v70)(v50, v69);
          (*(v40 + 8))(v41, v42);
          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v88);

          *(v45 + 14) = v54;
          _os_log_impl(&dword_0, v43, v65, "Unknown or unsupported list item object type: %s (protobuf type url: %s)", v45, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          (*(v40 + 8))(v41, v42);
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      __swift_destroy_boxed_opaque_existential_0Tm(&v84);
    }
  }

  type metadata accessor for PerformanceUtil();
  v55 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v55);
  v56 = v73;
  Date.init()();
  v61 = &v59;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  v60 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeDisambiguationListView(list:);
  v59 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v74 + 8))(v56, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v58 = v77;
  [v77 setCommands:isa];

  *v76 = v58;
}

void *InformationViewFactory.makeDomainObjectComponentView(domainObject:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (&v37 - v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  v11 = *(*(v40 - 8) + 64);
  v12 = __chkstk_darwin(v40);
  v39 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoObjectComponent();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    outlined destroy of Any?(v15, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainObjectComponentV06OneOf_I0OSgMR);
  }

  else
  {
    if ((*(v23 + 88))(v15, v22) == enum case for Apple_Parsec_Siri_V2alpha_DomainObjectComponent.OneOf_Component.videoObjects(_:))
    {
      (*(v23 + 96))(v15, v22);
      (*(v17 + 32))(v20, v15, v16);
      if (v38)
      {
        PommesRenderOptions.switchProfile.getter();
      }

      else
      {
        v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
        (*(*(v35 - 8) + 56))(v10, 1, 1, v35);
      }

      v36 = specialized static VideoSnippetUtils.makeVideoSnippets(for:switchProfileBuilderParams:)(v20, v10);
      outlined destroy of Any?(v10, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
      (*(v17 + 8))(v20, v16);
      return v36;
    }

    (*(v23 + 8))(v15, v22);
  }

  v24 = v41;
  if (one-time initialization token for videoSnippet != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.videoSnippet);
  (*(v3 + 16))(v6, v21, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315138;
    Apple_Parsec_Siri_V2alpha_DomainObjectComponent.component.getter();
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v3 + 8))(v6, v24);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v42);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v26, v27, "Ignoring unsupported domain object component: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {

    (*(v3 + 8))(v6, v24);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t *InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)(uint64_t *a1, uint64_t a2)
{
  v80 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v79 = *(v3 - 8);
  v4 = *(v79 + 64);
  __chkstk_darwin(v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v73 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v74 = &v73 - v13;
  __chkstk_darwin(v12);
  v75 = &v73 - v14;
  v15 = type metadata accessor for Date();
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  __chkstk_darwin(v15);
  v76 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v73 - v28;
  v82 = a1;
  v30 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (*(v30 + 16))
  {
    (*(v19 + 16))(v22, v30 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);

    Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
    (*(v19 + 8))(v22, v18);
  }

  else
  {

    (*(v8 + 56))(v29, 1, 1, v7);
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(v29, v27, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  if ((*(v8 + 48))(v27, 1, v7) != 1)
  {
    v42 = (*(v8 + 88))(v27, v7);
    if (v42 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.casinoSnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v43 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v43);
      v69 = v81;
      v44 = v76;
      Date.init()();
      v71 = &v67;
      v72 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SACardSnippet, SACardSnippet_ptr);
      v70 = partial apply for closure #1 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v69) = 2;
      v67 = "makeSnippet(layoutSnippet:renderOptions:)";
      v68 = 41;
    }

    else if (v42 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.mapItemSnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v49 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v49);
      v44 = v76;
      Date.init()();
      v71 = &v69;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27SALocalSearchMapItemSnippetCSgMd, &_sSo27SALocalSearchMapItemSnippetCSgMR);
      v70 = partial apply for closure #2 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v69) = 2;
      v67 = "makeSnippet(layoutSnippet:renderOptions:)";
      v68 = 41;
    }

    else if (v42 == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.legacySnippet(_:))
    {
      type metadata accessor for PerformanceUtil();
      v50 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v50);
      v44 = v76;
      Date.init()();
      v71 = &v69;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11SAUISnippetCSgMd, &_sSo11SAUISnippetCSgMR);
      v70 = partial apply for closure #3 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v69) = 2;
      v67 = "makeSnippet(layoutSnippet:renderOptions:)";
      v68 = 41;
    }

    else
    {
      if (v42 != enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.personSnippet(_:))
      {
        v52 = v75;
        (*(v8 + 32))(v75, v27, v7);
        v53 = v8;
        if (one-time initialization token for information != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        __swift_project_value_buffer(v54, static Logger.information);
        v55 = *(v8 + 16);
        v56 = v74;
        v55(v74, v52, v7);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v83 = v82;
          *v59 = 136315138;
          v55(v73, v56, v7);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          v63 = *(v53 + 8);
          v63(v56, v7);
          v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v83);

          *(v59 + 4) = v64;
          _os_log_impl(&dword_0, v57, v58, "InfoViewFactory unsupported snippet %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v82);

          v63(v75, v7);
        }

        else
        {

          v65 = *(v53 + 8);
          v65(v56, v7);
          v65(v52, v7);
        }

        goto LABEL_28;
      }

      type metadata accessor for PerformanceUtil();
      v51 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v51);
      v44 = v76;
      Date.init()();
      v71 = &v69;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17SAABPersonSnippetCSgMd, &_sSo17SAABPersonSnippetCSgMR);
      v70 = partial apply for closure #4 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:);
      LOBYTE(v69) = 2;
      v67 = "makeSnippet(layoutSnippet:renderOptions:)";
      v68 = 41;
    }

    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (*(v77 + 8))(v44, v78);
    outlined destroy of Any?(v29, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    v48 = v83;
    (*(v8 + 8))(v27, v7);
    return v48;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = __swift_project_value_buffer(v31, static Logger.information);
  v33 = v79;
  v34 = v82;
  (*(v79 + 16))(v6, v82, v3);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v78 = v32;
    v38 = v37;
    v39 = swift_slowAlloc();
    v83 = v39;
    *v38 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent and conformance Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, &type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
    v40 = Message.textFormatString()();
    (*(v33 + 8))(v6, v3);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40._countAndFlagsBits, v40._object, &v83);

    *(v38 + 4) = v41;
    _os_log_impl(&dword_0, v35, v36, "InfoViewFactory missing perResultLayoutDetails snippet %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {

    (*(v33 + 8))(v6, v3);
  }

  if ((Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter() & 1) == 0)
  {
LABEL_28:
    outlined destroy of Any?(v29, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    return 0;
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "InfoViewFactory received compact snippet without perResultLayoutDetails", v47, 2u);
  }

  v48 = (*(*v81 + 304))(v34, v80);
  outlined destroy of Any?(v29, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  return v48;
}

id InformationViewFactory.makeMapSnippet(layoutSnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  __chkstk_darwin(v2);
  v95 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  __chkstk_darwin(v5);
  v92 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v8);
  v11 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = *(v101 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v84 - v18;
  __chkstk_darwin(v17);
  v91 = v84 - v20;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v89 = *(v21 - 8);
  v90 = v21;
  v22 = *(v89 + 64);
  __chkstk_darwin(v21);
  v88 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = v84 - v31;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet();
  v99 = *(v33 - 8);
  v100 = v33;
  v34 = *(v99 + 64);
  __chkstk_darwin(v33);
  v98 = v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v36 + 16))
  {

    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v50 - 8) + 56))(v32, 1, 1, v50);
    goto LABEL_9;
  }

  (*(v25 + 16))(v28, v36 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v25 + 8))(v28, v24);
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v32, 1, v37) == 1)
  {
LABEL_9:
    outlined destroy of Any?(v32, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_10;
  }

  if ((*(v38 + 88))(v32, v37) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.mapItemSnippet(_:))
  {
    (*(v38 + 96))(v32, v37);
    v39 = v98;
    (*(v99 + 32))(v98, v32, v100);
    v40 = [objc_allocWithZone(SALocalSearchMapItemSnippet) init];
    v41 = Apple_Parsec_Siri_V2alpha_MapItemSnippet.objects.getter();
    v42 = *(v41 + 16);
    if (v42)
    {
      v85 = v40;
      v86 = a1;
      v104[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v43 = v11;
      v44 = v8;
      v45 = v103 + 16;
      v103 = *(v103 + 16);
      v46 = (*(v45 + 64) + 32) & ~*(v45 + 64);
      v84[1] = v41;
      v47 = v41 + v46;
      v48 = *(v45 + 56);
      do
      {
        (v103)(v43, v47, v44);
        specialized static PegasusACEConverters.makeLocalSearchMapItem(params:)();
        (*(v45 - 8))(v43, v44);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v49 = *(v104[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v47 += v48;
        --v42;
      }

      while (v42);

      a1 = v86;
      v39 = v98;
      v40 = v85;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SALocalSearchMapItem, SALocalSearchMapItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v40 setItems:isa];

    Apple_Parsec_Siri_V2alpha_MapItemSnippet.responseViewID.getter();
    v65 = String._bridgeToObjectiveC()();

    [v40 setResponseViewId:v65];

    v66 = v88;
    Apple_Parsec_Siri_V2alpha_MapItemSnippet.searchRegionCenter.getter();
    v67 = specialized static PegasusACEConverters.makeLocation(params:)();
    (*(v89 + 8))(v66, v90);
    [v40 setSearchRegionCenter:v67];

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v68 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    [v40 setUserCurrentLocation:v68];

    [v40 setSearchAlongRoute:0];
    v69 = v91;
    (*(v101 + 16))(v91, a1, v102);
    v70 = v40;
    v71 = 0;
    if (AFIsInternalInstall())
    {
      (*(*v87 + 104))(v104);
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      v72 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      v71 = v72 ^ 1;
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
    v73 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v69, v71 & 1);
    [v70 setSash:v73];

    type metadata accessor for PerformanceUtil();
    v74 = static PerformanceUtil.shared.getter();
    __chkstk_darwin(v74);
    v75 = v92;
    Date.init()();
    v82 = &v80;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
    v81 = partial apply for closure #2 in InformationViewFactory.makeMapSnippet(layoutSnippet:);
    v80 = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

    (*(v93 + 8))(v75, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v76 = Array._bridgeToObjectiveC()().super.isa;

    [v70 setProviderCommand:v76];

    v77 = v70;
    [v77 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
    v78 = v95;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v96 + 8))(v78, v97);
    v79 = String._bridgeToObjectiveC()();

    [v77 setItemType:v79];

    (*(v99 + 8))(v39, v100);
    return v77;
  }

  (*(v38 + 8))(v32, v37);
LABEL_10:
  v52 = v101;
  v51 = v102;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.information);
  v54 = *(v52 + 16);
  v54(v19, a1, v51);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v104[0] = v58;
    *v57 = 136315138;
    v54(v16, v19, v51);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    (*(v52 + 8))(v19, v51);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v104);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_0, v55, v56, "InfoViewFactory invalid map snippet %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  else
  {

    (*(v52 + 8))(v19, v51);
  }

  return 0;
}

id SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();
  v9 = Apple_Parsec_Siri_V2alpha_Sash.appName.getter();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v13 && (a2 & 1) != 0)
  {
    v18 = v9;
    v19 = v11;
    v14._countAndFlagsBits = 0x454D4D4F50203A20;
    v14._object = 0xE900000000000053;
    String.append(_:)(v14);
    v9 = v18;
    v11 = v19;
  }

  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();
  Apple_Parsec_Siri_V2alpha_Sash.appID.getter();
  v12(v8, v4);
  v15 = SAUISash.init(appName:appID:)(v9, v11);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v15;
}

uint64_t Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.UNRECOGNIZED(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v15, "unrecognized(");
    HIWORD(v15[1]) = -4864;
    v14[1] = v8;
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return v15[0];
  }

  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.unspecified(_:))
  {
    v12 = &SAAceViewUIItemTypeItemTypeUnspecifiedValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.conversation(_:))
  {
    v12 = &SAAceViewUIItemTypeItemTypeConversationValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.result(_:))
  {
    v12 = &SAAceViewUIItemTypeItemTypeResultValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.floating(_:))
  {
    v12 = &SAAceViewUIItemTypeItemTypeFloatingValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_UIItemType.hint(_:))
  {
    v12 = &SAAceViewUIItemTypeItemTypeHintValue;
  }

  else
  {
    if (v7 != enum case for Apple_Parsec_Siri_V2alpha_UIItemType.announcement(_:))
    {
      (*(v3 + 8))(v6, v2);
      return 0x6E676F6365726E75;
    }

    v12 = &SAAceViewUIItemTypeItemTypeAnnouncementValue;
  }

  v13 = *v12;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id InformationViewFactory.makePersonSnippet(layoutSnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v94 = (&v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v95 = (&v80 - v7);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v85 = *(v8 - 8);
  v86 = v8;
  v9 = *(v85 + 64);
  __chkstk_darwin(v8);
  v84 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v88 = *(v11 - 8);
  v12 = *(v88 + 64);
  __chkstk_darwin(v11);
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty();
  v15 = *(v14 - 8);
  v96 = v14;
  v97 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v80 - v26;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet();
  v89 = *(v28 - 8);
  v90 = v28;
  v29 = *(v89 + 64);
  __chkstk_darwin(v28);
  v91 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v31 + 16))
  {

    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v50 - 8) + 56))(v27, 1, 1, v50);
    goto LABEL_14;
  }

  (*(v20 + 16))(v23, v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v20 + 8))(v23, v19);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v27, 1, v32) == 1)
  {
LABEL_14:
    outlined destroy of Any?(v27, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
    goto LABEL_15;
  }

  if ((*(v33 + 88))(v27, v32) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.personSnippet(_:))
  {
    (*(v33 + 96))(v27, v32);
    (*(v89 + 32))(v91, v27, v90);
    v34 = [objc_allocWithZone(SAABPersonSnippet) init];
    v35 = Apple_Parsec_Siri_V2alpha_PersonSnippet.displayProperties.getter();
    v36 = *(v35 + 16);
    v82 = v11;
    v83 = a1;
    v81 = v34;
    if (v36)
    {
      v37 = v92;
      v95 = *(*v92 + 216);
      v38 = *(v97 + 16);
      v39 = *(v97 + 80);
      v80 = v35;
      v40 = v35 + ((v39 + 32) & ~v39);
      v93 = *(v97 + 72);
      v94 = v38;
      v97 += 16;
      v41 = (v97 - 8);
      v42 = _swiftEmptyArrayStorage;
      do
      {
        v44 = v96;
        v94(v18, v40, v96);
        v45 = v95(v18);
        v47 = v46;
        (*v41)(v18, v44);
        if (v47)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
          }

          v49 = *(v42 + 2);
          v48 = *(v42 + 3);
          if (v49 >= v48 >> 1)
          {
            v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v42);
          }

          *(v42 + 2) = v49 + 1;
          v43 = &v42[16 * v49];
          *(v43 + 4) = v45;
          *(v43 + 5) = v47;
          v37 = v92;
        }

        v40 += v93;
        --v36;
      }

      while (v36);

      v11 = v82;
      v64 = v88;
      v34 = v81;
    }

    else
    {

      v37 = v92;
      v64 = v88;
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v34 setDisplayProperties:isa];

    v66 = Apple_Parsec_Siri_V2alpha_PersonSnippet.objects.getter();
    v67 = *(v66 + 16);
    if (v67)
    {
      v98 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v68 = *(*v37 + 224);
      v96 = *v37 + 224;
      v97 = v68;
      v69 = v86;
      v70 = *(v85 + 16);
      v71 = *(v85 + 80);
      v93 = v66;
      v72 = v66 + ((v71 + 32) & ~v71);
      v94 = *(v85 + 72);
      v95 = v70;
      v73 = (v85 + 8);
      v74 = v84;
      do
      {
        (v95)(v74, v72, v69);
        (v97)(v74);
        (*v73)(v74, v69);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v75 = v98[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v72 += v94;
        --v67;
      }

      while (v67);

      v11 = v82;
      v64 = v88;
      v34 = v81;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAPerson, SAPerson_ptr);
    v76 = Array._bridgeToObjectiveC()().super.isa;

    [v34 setPersons:v76];

    v77 = v34;
    v78 = v87;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v64 + 8))(v78, v11);
    v79 = String._bridgeToObjectiveC()();

    [v77 setItemType:v79];

    [v77 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
    (*(v89 + 8))(v91, v90);
    return v77;
  }

  (*(v33 + 8))(v27, v32);
LABEL_15:
  v51 = v3;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.information);
  v53 = *(v3 + 16);
  v54 = v95;
  v53(v95, a1, v2);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v98 = v58;
    *v57 = 136315138;
    v53(v94, v54, v2);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    (*(v51 + 8))(v54, v2);
    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, &v98);

    *(v57 + 4) = v62;
    _os_log_impl(&dword_0, v55, v56, "InfoViewFactory invalid person snippet %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
  }

  else
  {

    (*(v51 + 8))(v54, v2);
  }

  return 0;
}

uint64_t InformationViewFactory.makePersonDisplayProperty(personProperty:)(char *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = *(v3 + 16);
  v13(&v28 - v11, a1, v2);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.firstName(_:))
  {
    v15 = &SAPersonFirstNamePListKey;
LABEL_27:
    v16 = *v15;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.fullName(_:))
  {
    v15 = &SAPersonFullNamePListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.lastName(_:))
  {
    v15 = &SAPersonLastNamePListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.middleName(_:))
  {
    v15 = &SAPersonMiddleNamePListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.nickName(_:))
  {
    v15 = &SAPersonNickNamePListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.prefix(_:))
  {
    v15 = &SAPersonPrefixPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.suffix(_:))
  {
    v15 = &SAPersonSuffixPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.me(_:))
  {
    v15 = &SAPersonMePListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.phones(_:))
  {
    v15 = &SAPersonPhonesPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.company(_:))
  {
    v15 = &SAPersonCompanyPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.addresses(_:))
  {
    v15 = &SAPersonAddressesPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.emails(_:))
  {
    v15 = &SAPersonEmailsPListKey;
    goto LABEL_27;
  }

  if (v14 == enum case for Apple_Parsec_Siri_V2alpha_PersonSnippet.PersonProperty.relatedNames(_:))
  {
    v15 = &SAPersonRelatedNamesPListKey;
    goto LABEL_27;
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.information);
  v19 = v13;
  v13(v10, a1, v2);
  v20 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v30))
  {
    v21 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v21 = 136315138;
    v19(v7, v10, v2);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = *(v3 + 8);
    v25(v10, v2);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v31);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_0, v20, v30, "Unable to translate an unknown person display property key: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);

    v25(v12, v2);
  }

  else
  {

    v27 = *(v3 + 8);
    v27(v10, v2);
    v27(v12, v2);
  }

  return 0;
}

id InformationViewFactory.makePerson(_:)()
{
  v67 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v0 = *(v67 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v67);
  v66 = v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v61 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(SAPerson) init];
  v13 = Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.getter();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.getter();
    URL.init(string:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of Any?(v6, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v17 = v12;
      URL._bridgeToObjectiveC()(v18);
      v20 = v19;
      [v17 setIdentifier:v19];

      (*(v8 + 8))(v11, v7);
    }
  }

  v21 = Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    Apple_Parsec_Siri_V2alpha_Person.givenName.getter();
    v25 = String._bridgeToObjectiveC()();

    [v12 setFirstName:v25];
  }

  v26 = Apple_Parsec_Siri_V2alpha_Person.middleName.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    Apple_Parsec_Siri_V2alpha_Person.middleName.getter();
    v30 = String._bridgeToObjectiveC()();

    [v12 setMiddleName:v30];
  }

  v31 = Apple_Parsec_Siri_V2alpha_Person.familyName.getter();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    Apple_Parsec_Siri_V2alpha_Person.familyName.getter();
    v35 = String._bridgeToObjectiveC()();

    [v12 setLastName:v35];
  }

  v36 = Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    Apple_Parsec_Siri_V2alpha_Person.nickname.getter();
    v40 = String._bridgeToObjectiveC()();

    [v12 setNickName:v40];
  }

  v41 = Apple_Parsec_Siri_V2alpha_Person.fullName.getter();
  v43 = v42;

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    Apple_Parsec_Siri_V2alpha_Person.fullName.getter();
    v45 = String._bridgeToObjectiveC()();

    [v12 setFullName:v45];
  }

  v46 = *(Apple_Parsec_Siri_V2alpha_Person.addresses.getter() + 16);

  if (v46)
  {
    v47 = Apple_Parsec_Siri_V2alpha_Person.addresses.getter();
    v69 = _swiftEmptyArrayStorage;
    v48 = *(v47 + 16);
    if (v48)
    {
      v62 = v12;
      v49 = *(*v68 + 232);
      v64 = *v68 + 232;
      v65 = v49;
      v52 = *(v0 + 16);
      v51 = v0 + 16;
      v50 = v52;
      v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
      v63 = v47;
      v54 = v47 + v53;
      v55 = *(v51 + 56);
      v56 = (v51 - 8);
      do
      {
        v58 = v66;
        v57 = v67;
        v50(v66, v54, v67);
        v65(v58);
        (*v56)(v58, v57);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v61[1] = *(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v54 += v55;
        --v48;
      }

      while (v48);

      v12 = v62;
    }

    else
    {
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SALocation, SALocation_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setAddresses:isa];
  }

  return v12;
}

id InformationViewFactory.makeAddress(_:)()
{
  v0 = [objc_allocWithZone(SALocation) init];
  v1 = Apple_Parsec_Siri_V2alpha_ContactAddress.addressLabel.getter();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.addressLabel.getter();
    v5 = String._bridgeToObjectiveC()();

    [v0 setLabel:v5];
  }

  v6 = Apple_Parsec_Siri_V2alpha_ContactAddress.street.getter();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.street.getter();
    v10 = String._bridgeToObjectiveC()();

    [v0 setStreet:v10];
  }

  v11 = Apple_Parsec_Siri_V2alpha_ContactAddress.city.getter();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.city.getter();
    v15 = String._bridgeToObjectiveC()();

    [v0 setCity:v15];
  }

  v16 = Apple_Parsec_Siri_V2alpha_ContactAddress.state.getter();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.state.getter();
    v20 = String._bridgeToObjectiveC()();

    [v0 setStateCode:v20];
  }

  v21 = Apple_Parsec_Siri_V2alpha_ContactAddress.zipCode.getter();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.zipCode.getter();
    v25 = String._bridgeToObjectiveC()();

    [v0 setPostalCode:v25];
  }

  v26 = Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.getter();
    v30 = String._bridgeToObjectiveC()();

    [v0 setCountryCode:v30];
  }

  return v0;
}

void *InformationViewFactory.makeLegacySnippet(layoutSnippet:)(char *a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  __chkstk_darwin(v2);
  v83 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v83 - v12;
  __chkstk_darwin(v11);
  v86 = &v83 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  v15 = *(*(v89 - 8) + 64);
  v16 = __chkstk_darwin(v89);
  v88 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v90 = &v83 - v19;
  __chkstk_darwin(v18);
  v93 = &v83 - v20;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v83 - v28;
  v94 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v92 = *(v94 - 8);
  v30 = *(v92 + 64);
  v31 = __chkstk_darwin(v94);
  v91 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v83 - v33;
  v95 = a1;
  v35 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  if (!*(v35 + 16))
  {

    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
    (*(*(v50 - 8) + 56))(v29, 1, 1, v50);
    goto LABEL_10;
  }

  (*(v22 + 16))(v25, v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)), v21);

  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  (*(v22 + 8))(v25, v21);
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v29, 1, v36) == 1)
  {
LABEL_10:
    outlined destroy of Any?(v29, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
LABEL_11:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.information);
    v52 = *(v6 + 16);
    v52(v13, v95, v5);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v96[0] = v56;
      *v55 = 136315138;
      v52(v10, v13, v5);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      (*(v6 + 8))(v13, v5);
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v96);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_0, v53, v54, "InfoViewFactory invalid legacy snippet %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
    }

    else
    {

      (*(v6 + 8))(v13, v5);
    }

    return 0;
  }

  if ((*(v37 + 88))(v29, v36) != enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.legacySnippet(_:))
  {
    (*(v37 + 8))(v29, v36);
    goto LABEL_11;
  }

  (*(v37 + 96))(v29, v36);
  v38 = v92;
  v39 = v34;
  v40 = v29;
  v41 = v94;
  (*(v92 + 32))(v34, v40, v94);
  v42 = v93;
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v43 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
LABEL_18:
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.information);
    v62 = v91;
    (*(v38 + 16))(v91, v39, v41);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v96[0] = v66;
      *v65 = 136315138;
      Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
      v67 = String.init<A>(describing:)();
      v95 = v39;
      v68 = v38;
      v69 = v67;
      v71 = v70;
      v72 = *(v68 + 8);
      v73 = v62;
      v74 = v94;
      v72(v73, v94);
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v96);

      *(v65 + 4) = v75;
      _os_log_impl(&dword_0, v63, v64, "InfoViewFactory unsupported legacy snippet %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);

      v72(v95, v74);
    }

    else
    {

      v76 = *(v38 + 8);
      v76(v62, v41);
      v76(v39, v41);
    }

    outlined destroy of Any?(v42, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
    return 0;
  }

  v45 = v90;
  outlined init with copy of (String, Decodable & Encodable & Sendable)(v42, v90, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  if ((*(v44 + 88))(v45, v43) != enum case for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.generalKnowledgeSnippet(_:))
  {
    (*(v44 + 8))(v45, v43);
    goto LABEL_18;
  }

  v46 = (*(*v87 + 248))(v39);
  if (v46)
  {
    (*(v6 + 16))(v86, v95, v5);
    v47 = v46;
    if (AFIsInternalInstall())
    {
      (*(*v87 + 104))(v96);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      v48 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v96);
      v49 = v48 ^ 1;
    }

    else
    {
      v49 = 0;
    }

    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
    v78 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v86, v49 & 1);
    [v47 setSash:v78];

    v79 = v47;
    v80 = v83;
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
    Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
    (*(v84 + 8))(v80, v85);
    v81 = String._bridgeToObjectiveC()();

    [v79 setItemType:v81];

    v82 = v79;
    [v82 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];

    v41 = v94;
    v38 = v92;
    v45 = v90;
  }

  (*(v38 + 8))(v39, v41);
  (*(v44 + 8))(v45, v43);
  outlined destroy of Any?(v93, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  return v46;
}

id InformationViewFactory.makeGeneralKnowledgeSnippet(legacySnippet:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_Legacy_AppPunchOut();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  __chkstk_darwin(v10);
  v65 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v71 = *(v73 - 8);
  v13 = *(v71 + 64);
  __chkstk_darwin(v73);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v62 - v18;
  v20 = type metadata accessor for Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet();
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  __chkstk_darwin(v20);
  v66 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_Legacy_LegacySnippet.snippet.getter();
  v23 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    outlined destroy of Any?(v19, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMd, &_s10PegasusAPI025Apple_Parsec_Siri_Legacy_F7SnippetV06OneOf_G0OSgMR);
LABEL_21:
    v47 = v3;
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.information);
    v49 = *(v3 + 16);
    v49(v9, a1, v2);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v75 = v53;
      *v52 = 136315138;
      v49(v7, v9, v2);
      v54 = String.init<A>(describing:)();
      v56 = v55;
      (*(v47 + 8))(v9, v2);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, &v75);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_0, v50, v51, "InfoViewFactory invalid general knowledge snippet %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    else
    {

      (*(v47 + 8))(v9, v2);
    }

    return 0;
  }

  if ((*(v24 + 88))(v19, v23) != enum case for Apple_Parsec_Siri_Legacy_LegacySnippet.OneOf_Snippet.generalKnowledgeSnippet(_:))
  {
    (*(v24 + 8))(v19, v23);
    goto LABEL_21;
  }

  (*(v24 + 96))(v19, v23);
  v25 = v66;
  (*(v68 + 32))(v66, v19, v69);
  v26 = [objc_allocWithZone(SAGKSnippet) init];
  [v26 setCategory:Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.category.getter()];
  v27 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.title.getter();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.title.getter();
    v31 = String._bridgeToObjectiveC()();

    [v26 setTitle:v31];
  }

  v32 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.subtitle.getter();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v36 = v26;
  v37 = v67;
  if (v35)
  {
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.subtitle.getter();
    v36 = String._bridgeToObjectiveC()();

    [v26 setSubtitle:v36];
  }

  v38 = Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.pods.getter();
  v75 = _swiftEmptyArrayStorage;
  v39 = *(v38 + 16);
  if (v39)
  {
    v62 = v26;
    v63 = v10;
    v40 = v73;
    v72 = *(*v74 + 272);
    v41 = v71 + 16;
    v71 = *(v71 + 16);
    v42 = *(v41 + 64);
    v64 = v38;
    v43 = v38 + ((v42 + 32) & ~v42);
    v44 = *(v41 + 56);
    v45 = (v41 - 8);
    v70 = _swiftEmptyArrayStorage;
    (v71)(v15, v43, v73);
    while (1)
    {
      v46 = v72(v15);
      (*v45)(v15, v40);
      if (v46)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v75 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v70 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v70 = v75;
      }

      v43 += v44;
      if (!--v39)
      {
        break;
      }

      (v71)(v15, v43, v40);
    }

    v26 = v62;
    v10 = v63;
    v25 = v66;
    v37 = v67;
  }

  else
  {
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKPodView, SAGKPodView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setPods:isa];

  if (Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.hasAppPunchOut.getter())
  {
    v59 = v65;
    Apple_Parsec_Siri_Legacy_GeneralKnowledgeSnippet.appPunchOut.getter();
    v60 = (*(*v74 + 256))(v59);
    (*(v37 + 8))(v59, v10);
    [v26 setAppPunchOut:v60];
  }

  (*(v68 + 8))(v25, v69);
  return v26;
}

id InformationViewFactory.makeGeneralKnowledgeAppPunchOut(legacyAppPunchOut:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v57[-v7];
  v9 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [objc_allocWithZone(SAUIAppPunchOut) init];
  [v14 setAppAvailableInStorefront:Apple_Parsec_Siri_Legacy_AppPunchOut.appAvailableStorefront.getter() & 1];
  v15 = Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.appDisplayName.getter();
    v19 = String._bridgeToObjectiveC()();

    [v14 setAppDisplayName:v19];
  }

  Apple_Parsec_Siri_Legacy_AppPunchOut.appIcon.getter();
  v20 = (*(*v1 + 264))(v13);
  (*(v10 + 8))(v13, v9);
  [v14 setAppIcon:v20];

  v21 = Apple_Parsec_Siri_Legacy_AppPunchOut.appIconMap.getter();

  specialized _NativeDictionary.mapValues<A>(_:)(v21, v1);

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v14 setAppIconMap:isa];

  [v14 setAppInstalled:Apple_Parsec_Siri_Legacy_AppPunchOut.appInstalled.getter() & 1];
  v23 = Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.getter();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.appStoreUri.getter();
    URL.init(string:)();

    v27 = type metadata accessor for URL();
    v28 = *(v27 - 8);
    v30 = 0;
    if ((*(v28 + 48))(v8, 1, v27) != 1)
    {
      URL._bridgeToObjectiveC()(v29);
      v30 = v31;
      (*(v28 + 8))(v8, v27);
    }

    [v14 setAppStoreUri:v30];
  }

  v32 = Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.getter();
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.bundleID.getter();
    v36 = String._bridgeToObjectiveC()();

    [v14 setBundleId:v36];
  }

  v37 = Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutName.getter();
    v41 = String._bridgeToObjectiveC()();

    [v14 setPunchOutName:v41];
  }

  v42 = Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.punchOutUri.getter();
    URL.init(string:)();

    v46 = type metadata accessor for URL();
    v47 = *(v46 - 8);
    v49 = 0;
    if ((*(v47 + 48))(v6, 1, v46) != 1)
    {
      URL._bridgeToObjectiveC()(v48);
      v49 = v50;
      (*(v47 + 8))(v6, v46);
    }

    [v14 setPunchOutUri:v49];
  }

  v51 = Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.getter();
  v53 = v52;

  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v51 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    Apple_Parsec_Siri_Legacy_AppPunchOut.subtitle.getter();
    v55 = String._bridgeToObjectiveC()();

    [v14 setSubtitle:v55];
  }

  return v14;
}

id InformationViewFactory.makeImageResource(legacyImageResource:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = [objc_allocWithZone(SAUIImageResource) init];
  v5 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
  v7 = v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v7);
  [v4 setImageData:isa];

  Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
  [v4 setPixelHeight:?];
  Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
  [v4 setPixelWidth:?];
  Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
  URL.init(string:)();

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v3, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v3, v9);
  }

  [v4 setResourceUrl:v12];

  Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
  [v4 setScaleFactor:?];
  Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
  v14 = String._bridgeToObjectiveC()();

  [v4 setUrlFormatString:v14];

  Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
  v15 = String._bridgeToObjectiveC()();

  [v4 setUserAgent:v15];

  return v4;
}

id InformationViewFactory.makeGeneralKnowledgePodViews(podView:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  __chkstk_darwin(v13);
  v56 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  v62 = *(v16 - 8);
  v63 = v16;
  v17 = *(v62 + 64);
  v18 = __chkstk_darwin(v16);
  v60 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v61 = &v55 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  v21 = *(*(v65 - 8) + 64);
  v22 = __chkstk_darwin(v65);
  v23 = __chkstk_darwin(v22);
  v25 = &v55 - v24;
  __chkstk_darwin(v23);
  v27 = &v55 - v26;
  v28 = a1;
  Apple_Parsec_Siri_Legacy_PodView.pod.getter();
  v29 = type metadata accessor for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) != 1)
  {
    outlined init with copy of (String, Decodable & Encodable & Sendable)(v27, v25, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
    v44 = (*(v30 + 88))(v25, v29);
    if (v44 == enum case for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.imagePod(_:))
    {
      (*(v30 + 96))(v25, v29);
      v45 = v64;
      (*(v64 + 32))(v12, v25, v6);
      type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKImagePod, SAGKImagePod_ptr);
      (*(v45 + 16))(v10, v12, v6);
      v46 = SAGKImagePod.init(imagePod:)(v10);
      (*(v45 + 8))(v12, v6);
      goto LABEL_10;
    }

    if (v44 == enum case for Apple_Parsec_Siri_Legacy_PodView.OneOf_Pod.summaryPod(_:))
    {
      (*(v30 + 96))(v25, v29);
      v49 = v61;
      v48 = v62;
      v50 = v63;
      (*(v62 + 32))(v61, v25, v63);
      if (Apple_Parsec_Siri_Legacy_SummaryPod.hasImageResource.getter())
      {
        v51 = v56;
        Apple_Parsec_Siri_Legacy_SummaryPod.imageResource.getter();
        v52 = (*(*v59 + 264))(v51);
        (*(v57 + 8))(v51, v58);
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKSummaryPod, SAGKSummaryPod_ptr);
        v53 = v60;
        (*(v48 + 16))(v60, v49, v50);
        v46 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(v53, v52);
      }

      else
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKSummaryPod, SAGKSummaryPod_ptr);
        v54 = v60;
        (*(v48 + 16))(v60, v49, v50);
        v46 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(v54, 0);
      }

      (*(v48 + 8))(v49, v50);
      goto LABEL_10;
    }

    (*(v30 + 8))(v25, v29);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.information);
  v32 = v66;
  v33 = v28;
  v34 = v67;
  (*(v66 + 16))(v5, v33, v67);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v5;
    v39 = swift_slowAlloc();
    v68 = v39;
    *v37 = 136315138;
    Apple_Parsec_Siri_Legacy_PodView.pod.getter();
    v40 = String.init<A>(describing:)();
    v42 = v41;
    (*(v32 + 8))(v38, v34);
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v68);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_0, v35, v36, "InfoViewFactory unhandled General Knowledge Pod: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  else
  {

    (*(v32 + 8))(v5, v34);
  }

  v46 = 0;
LABEL_10:
  outlined destroy of Any?(v27, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMd, &_s10PegasusAPI32Apple_Parsec_Siri_Legacy_PodViewV06OneOf_G0OSgMR);
  return v46;
}

id SAGKSummaryPod.init(summaryPod:imageResource:)(uint64_t a1, void *a2)
{
  v3 = specialized SAGKSummaryPod.init(summaryPod:imageResource:)(a1, a2);

  return v3;
}

id SAGKImagePod.init(imagePod:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v38 - v14;
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = Apple_Parsec_Siri_Legacy_ImagePod.images.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v39 = v15;
    v40 = a1;
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v20 = *(v18 + 64);
    v38 = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v22 = v49;
    v23 = (v18 - 8);
    v43 = *(v18 + 56);
    v44 = v19;
    v45 = v18;
    do
    {
      v24 = v46;
      v25 = v44;
      v44(v46, v21, v8);
      v25(v13, v24, v8);
      v26 = objc_allocWithZone(SAGKImageLinkedAnswer);
      v27 = [v26 init];
      if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
        v28 = v41;
        Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
        v29 = SAUIImageResource.init(imageResource:)(v28);
        [v27 setImageResource:v29];
      }

      if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasPunchOut.getter())
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIAppPunchOut, SAUIAppPunchOut_ptr);
        v30 = v42;
        Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter();
        v31 = SAUIAppPunchOut.init(punchOut:)(v30);
        [v27 setPunchOut:v31];
      }

      v32 = *v23;
      (*v23)(v13, v8);
      v48 = type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAGKImageLinkedAnswer, SAGKImageLinkedAnswer_ptr);
      *&v47 = v27;
      v32(v46, v8);
      v49 = v22;
      v34 = v22[2];
      v33 = v22[3];
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v22 = v49;
      }

      v22[2] = v34 + 1;
      outlined init with take of Any(&v47, &v22[4 * v34 + 4]);
      v21 += v43;
      --v17;
    }

    while (v17);

    v15 = v39;
    a1 = v40;
  }

  else
  {
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setImages:isa];

  v36 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImagePod();
  (*(*(v36 - 8) + 8))(a1, v36);
  return v15;
}

uint64_t InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v6 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for Searchfoundation_Card();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v40 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v38 = &v32 - v17;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails() - 8);
    v20 = (v12 + 48);
    v36 = v12;
    v21 = (v12 + 32);
    v22 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v23 = *(v19 + 72);
    v24 = _swiftEmptyArrayStorage;
    v37 = v11;
    v35 = v23;
    do
    {
      closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)(v22, v4, v10);
      if ((*v20)(v10, 1, v11) == 1)
      {
        v16 = outlined destroy of Any?(v10, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      }

      else
      {
        v39 = v6;
        v25 = v4;
        v26 = *v21;
        v27 = v38;
        (*v21)(v38, v10, v11);
        v26(v40, v27, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
        }

        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v24);
        }

        v24[2] = v29 + 1;
        v11 = v37;
        v16 = (v26)(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, v40, v37);
        v4 = v25;
        v6 = v39;
        v23 = v35;
      }

      v22 += v23;
      --v18;
    }

    while (v18);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v16);
  v30 = v33;
  *(&v32 - 2) = v24;
  *(&v32 - 1) = v30;
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card);
  static Message.with(_:)();
}

uint64_t closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v42 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - v14;
  v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v41);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.snippet.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v15, 1, v20) == 1)
  {
    outlined destroy of Any?(v15, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMd, &_s10PegasusAPI48Apple_Parsec_Siri_V2alpha_PerResultLayoutDetailsV13OneOf_SnippetOSgMR);
  }

  else
  {
    if ((*(v21 + 88))(v15, v20) == enum case for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.casinoSnippet(_:))
    {
      (*(v21 + 96))(v15, v20);
      v22 = v16;
      v23 = v41;
      (*(v16 + 32))(v19, v15, v41);
      type metadata accessor for PerformanceUtil();
      v24 = static PerformanceUtil.shared.getter();
      __chkstk_darwin(v24);
      v25 = v40;
      Date.init()();
      v37 = &v35;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
      v36 = partial apply for closure #1 in closure #1 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:);
      v35 = 2;
      dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

      (*(v43 + 8))(v25, v44);
      return (*(v22 + 8))(v19, v23);
    }

    (*(v21 + 8))(v15, v20);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.information);
  (*(v5 + 16))(v8, a1, v4);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46 = v31;
    *v30 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails and conformance Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails, &type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails);
    v32 = Message.textFormatString()();
    (*(v5 + 8))(v8, v4);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32._countAndFlagsBits, v32._object, &v46);

    *(v30 + 4) = v33;
    _os_log_impl(&dword_0, v28, v29, "InfoViewFactory non casino snippet %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v34 = type metadata accessor for Searchfoundation_Card();
  return (*(*(v34 - 8) + 56))(v45, 1, 1, v34);
}

void closure #2 in InformationViewFactory.makeCard(perResultLayoutDetails:renderOptions:)(uint64_t a1, uint64_t a2, void *a3)
{
  v88 = a3;
  v92 = a1;
  v4 = type metadata accessor for Searchfoundation_Image();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Searchfoundation_Color();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v83 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Searchfoundation_CardSource();
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  __chkstk_darwin(v10);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Searchfoundation_Card();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v101 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v84 = &v80 - v18;
  v19 = __chkstk_darwin(v17);
  v85 = &v80 - v20;
  v21 = __chkstk_darwin(v19);
  v96 = &v80 - v22;
  v23 = __chkstk_darwin(v21);
  v100 = &v80 - v24;
  v25 = __chkstk_darwin(v23);
  v81 = &v80 - v26;
  v27 = __chkstk_darwin(v25);
  v82 = &v80 - v28;
  v29 = __chkstk_darwin(v27);
  v95 = (&v80 - v30);
  __chkstk_darwin(v29);
  v33 = &v80 - v32;
  v34 = *(a2 + 16);
  v89 = v31;
  v90 = a2;
  v91 = v34;
  if (v34)
  {
    v36 = *(v31 + 16);
    v35 = v31 + 16;
    v37 = a2 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v97 = *(v35 + 56);
    v98 = v36;
    v99 = v35;
    v38 = (v35 - 8);
    v39 = _swiftEmptyArrayStorage;
    do
    {
      v98(v33, v37, v13);
      v40 = Searchfoundation_Card.cardSections.getter();
      (*v38)(v33, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39[2] + 1, 1, v39);
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v39);
      }

      v39[2] = v42 + 1;
      v39[v42 + 4] = v40;
      v37 += v97;
      --v34;
    }

    while (v34);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v39);

  Searchfoundation_Card.cardSections.setter();
  (*(v93 + 104))(v87, enum case for Searchfoundation_CardSource.parsec(_:), v94);
  Searchfoundation_Card.source.setter();
  v43 = v91;
  if (v91)
  {
    v44 = *(v89 + 16);
    v97 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v45 = v90 + v97;
    v46 = *(v89 + 72);
    v93 = v89 + 8;
    v47 = (v89 + 32);
    v48 = _swiftEmptyArrayStorage;
    v49 = v95;
    v98 = v44;
    v99 = (v89 + 16);
    v94 = v46;
    (v44)(v95, v90 + v97, v13);
    while (1)
    {
      if (Searchfoundation_Card.hasBackgroundColor.getter())
      {
        v50 = *v47;
        (*v47)(v100, v49, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1);
          v48 = v102;
        }

        v53 = v48[2];
        v52 = v48[3];
        if (v53 >= v52 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52 > 1, v53 + 1, 1);
          v48 = v102;
        }

        v48[2] = v53 + 1;
        v46 = v94;
        v50(v48 + v97 + v53 * v94, v100, v13);
        v49 = v95;
        v44 = v98;
      }

      else
      {
        (*v93)(v49, v13);
      }

      v45 += v46;
      if (!--v43)
      {
        break;
      }

      (v44)(v49, v45, v13);
    }
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
  }

  if (v48[2])
  {
    v54 = v89;
    v55 = v81;
    (*(v89 + 16))(v81, v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)), v13);

    v56 = v82;
    (*(v54 + 32))(v82, v55, v13);
    Searchfoundation_Card.backgroundColor.getter();
    Searchfoundation_Card.backgroundColor.setter();
    (*(v54 + 8))(v56, v13);
  }

  else
  {

    v54 = v89;
  }

  v57 = v91;
  v58 = v96;
  if (v91)
  {
    v59 = (v54 + 16);
    v60 = *(v54 + 16);
    v98 = ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v61 = v98 + v90;
    v62 = *(v59 + 7);
    v95 = (v59 - 8);
    v63 = (v59 + 16);
    v64 = _swiftEmptyArrayStorage;
    v99 = v60;
    v100 = v59;
    v97 = v62;
    v60(v96, v98 + v90, v13);
    while (1)
    {
      if (Searchfoundation_Card.hasBackgroundImage.getter())
      {
        v65 = *v63;
        (*v63)(v101, v58, v13);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v102 = v64;
        if ((v66 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1);
          v64 = v102;
        }

        v68 = v64[2];
        v67 = v64[3];
        if (v68 >= v67 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67 > 1, v68 + 1, 1);
          v64 = v102;
        }

        v64[2] = v68 + 1;
        v69 = v98 + v64 + v68 * v97;
        v62 = v97;
        v65(v69, v101, v13);
        v58 = v96;
        v60 = v99;
      }

      else
      {
        (*v95)(v58, v13);
      }

      v61 += v62;
      if (!--v57)
      {
        break;
      }

      v60(v58, v61, v13);
    }
  }

  else
  {
    v64 = _swiftEmptyArrayStorage;
  }

  if (v64[2])
  {
    v70 = v89;
    v71 = v84;
    (*(v89 + 16))(v84, v64 + ((*(v70 + 80) + 32) & ~*(v70 + 80)), v13);

    v72 = v85;
    (*(v70 + 32))(v85, v71, v13);
    Searchfoundation_Card.backgroundImage.getter();
    Searchfoundation_Card.backgroundImage.setter();
    (*(v70 + 8))(v72, v13);
  }

  else
  {

    v70 = v89;
  }

  v73 = v90;
  if (v88)
  {
    v74 = v88;
    if (PommesRenderOptions.isPhoneCallActive.getter())
    {
      if (one-time initialization token for information != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static Logger.information);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v76, v77, "Skipping FBR; phone call is active", v78, 2u);
      }

      return;
    }
  }

  if (v91 == 1)
  {
    v79 = v73 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    Searchfoundation_Card.fbr.getter();
  }

  Searchfoundation_Card.fbr.setter();
}

uint64_t InformationViewFactory.makeCard(casinoSnippet:renderOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = type metadata accessor for String.Encoding();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BinaryDecodingOptions();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for Google_Protobuf_Any();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v63 = type metadata accessor for Searchfoundation_Card();
  v61 = *(v63 - 8);
  v13 = *(v61 + 64);
  __chkstk_darwin(v63);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_CasinoSnippet.hasCardData.getter())
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.information);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v63;
    if (v24)
    {
      v26 = swift_slowAlloc();
      v58 = a1;
      *v26 = 0;
      _os_log_impl(&dword_0, v22, v23, "One card was made with casinoSnippet.", v26, 2u);
    }

    Apple_Parsec_Siri_V2alpha_CasinoSnippet.cardData.getter();
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card);
    Message.init(unpackingAny:extensions:options:)();
    if (a2 && (PommesRenderOptions.isSquawkResponse.getter() & 1) != 0)
    {
      Searchfoundation_Card.intentMessageName.setter();
      Searchfoundation_Card.intentResponseMessageName.setter();
      static String.Encoding.utf8.getter();
      v37 = String.data(using:allowLossyConversion:)();
      v39 = v38;
      v59 = *(v59 + 8);
      (v59)(v8, v60);
      if (v39 >> 60 == 15)
      {
LABEL_18:
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 67109120;
          static String.Encoding.utf8.getter();
          v45 = String.data(using:allowLossyConversion:)();
          v47 = v46;
          (v59)(v8, v60);
          v48 = 0;
          if (v47 >> 60 != 15)
          {
            outlined consume of Data?(v45, v47);
            v48 = 1;
          }

          *(v44 + 4) = v48;
          _os_log_impl(&dword_0, v42, v43, "intentMessageData is non-nil? %{BOOL}d", v44, 8u);
        }

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 67109120;
          static String.Encoding.utf8.getter();
          v52 = String.data(using:allowLossyConversion:)();
          v54 = v53;
          (v59)(v8, v60);
          v55 = 0;
          if (v54 >> 60 != 15)
          {
            outlined consume of Data?(v52, v54);
            v55 = 1;
          }

          *(v51 + 4) = v55;
          _os_log_impl(&dword_0, v49, v50, "intentResponseMessageData is non-nil? %{BOOL}d", v51, 8u);
        }

        v36 = v61;
        v56 = v62;
        v25 = v63;
        (*(v61 + 32))(v62, v15, v63);
        goto LABEL_29;
      }

      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v41 = v40;
      (v59)(v8, v60);
      if (v41 >> 60 == 15)
      {
        outlined consume of Data?(v37, v39);
        goto LABEL_18;
      }

      outlined copy of Data._Representation(v37, v39);
      Searchfoundation_Card.intentMessageData.setter();
      Searchfoundation_Card.intentResponseMessageData.setter();
      outlined consume of Data?(v37, v39);
    }

    v36 = v61;
    v56 = v62;
    (*(v61 + 32))(v62, v15, v25);
LABEL_29:
    v35 = v56;
    v34 = 0;
    return (*(v36 + 56))(v35, v34, 1, v25);
  }

  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.information);
  (*(v17 + 16))(v20, a1, v16);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v64[0] = v31;
    *v30 = 136315138;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_CasinoSnippet and conformance Apple_Parsec_Siri_V2alpha_CasinoSnippet, &type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
    v32 = Message.textFormatString()();
    (*(v17 + 8))(v20, v16);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32._countAndFlagsBits, v32._object, v64);

    *(v30 + 4) = v33;
    _os_log_impl(&dword_0, v28, v29, "InfoViewFactory casinoSnippet has no card data %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v34 = 1;
  v35 = v62;
  v25 = v63;
  v36 = v61;
  return (*(v36 + 56))(v35, v34, 1, v25);
}

uint64_t InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)(void *a1, uint64_t a2, char *a3)
{
  v40 = a3;
  v36[0] = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v37 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = v36 - v13;
  v15 = type metadata accessor for Searchfoundation_Card();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[1] = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v42 = v39;
  v43 = a2;
  v44 = v40;
  Date.init()();
  v34 = &v41;
  v35 = v11;
  v33 = partial apply for closure #1 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:);
  v32 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v19 = *(v5 + 8);
  v20 = v10;
  v21 = v15;
  v22 = v38;
  v19(v20, v4);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    return outlined destroy of Any?(v14, &_s10PegasusAPI21Searchfoundation_CardVSgMd, &_s10PegasusAPI21Searchfoundation_CardVSgMR);
  }

  (*(v22 + 32))(v18, v14, v21);
  v24 = *(Searchfoundation_Card.cardSections.getter() + 16);

  v25 = v18;
  if (v24)
  {
    v26 = static PerformanceUtil.shared.getter();
    v39 = v36;
    __chkstk_darwin(v26);
    v40 = v27;
    v28 = v37;
    Date.init()();
    v34 = &v32;
    v35 = &type metadata for Data;
    v33 = partial apply for closure #2 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:);
    v32 = 2;
    dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
    v19(v28, v4);

    v29 = v45;
    v30 = v46;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v29, v30);
    [v36[0] setCompactSizeCardData:isa];
    v25 = v40;
  }

  return (*(v22 + 8))(v25, v21);
}

uint64_t closure #1 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  (*(*a1 + 288))(v9, a3);
  return (*(v6 + 8))(v9, v5);
}

id InformationViewFactory.makeCompactSnippet(layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v41 = a1;
  Date.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  (*(v16 + 8))(v19, v15);
  v20 = [objc_allocWithZone(SACardSnippet) init];
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
  Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();
  (*(v11 + 8))(v14, v10);
  v21 = String._bridgeToObjectiveC()();

  [v20 setResponseViewId:v21];

  v22 = v20;
  UUID.init()();
  UUID.uuidString.getter();
  v23 = v9;
  v24 = v36;
  (*(v34 + 8))(v23, v35);
  v25 = String._bridgeToObjectiveC()();

  [v22 setAceId:v25];

  (*(v37 + 16))(v24, a1, v38);
  v26 = v22;
  if (AFIsInternalInstall())
  {
    v27 = v39;
    (*(*v39 + 104))(v42);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    v28 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v29 = v28 ^ 1;
  }

  else
  {
    v29 = 0;
    v27 = v39;
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v30 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v24, v29 & 1);
  [v26 setSash:v30];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setReferencedCommands:isa];

  (*(*v27 + 296))(v26, a1, v40);
  return v26;
}

id InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:)(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v98 = a1;
  v94 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UIItemType();
  v93 = *(v94 - 8);
  v3 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  v86 = *(v87 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v87);
  v88 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for UUID();
  v84 = *(v85 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet();
  v95 = *(v97 - 8);
  v9 = *(v95 + 64);
  __chkstk_darwin(v97);
  v102 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails();
  v103 = *(v74 - 8);
  v11 = *(v103 + 64);
  __chkstk_darwin(v74);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Searchfoundation_Card();
  v90 = *(v13 - 8);
  v14 = *(v90 + 64);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v72 - v22;
  v24 = type metadata accessor for PerformanceUtil();
  static PerformanceUtil.shared.getter();
  v109 = a1;
  Date.init()();
  v70 = &v108;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
  v69 = partial apply for closure #1 in InformationViewFactory.makeCompactSnippet(layoutSnippet:renderOptions:);
  v68 = 2;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();

  v25 = *(v18 + 8);
  v25(v23, v17);
  v82 = v110[0];
  v76 = v24;
  static PerformanceUtil.shared.getter();
  v26 = v98;
  v105 = v99;
  v106 = v98;
  v107 = v96;
  Date.init()();
  v91 = v13;
  v70 = &v104;
  v71 = v13;
  v69 = partial apply for closure #2 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:);
  v68 = 2;
  v89 = v16;
  v27 = v26;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  v75 = 0;

  v81 = v17;
  v80 = v18 + 8;
  v77 = v25;
  v25(v23, v17);
  v78 = [objc_allocWithZone(SACardSnippet) init];
  v28 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  v29 = *(v28 + 16);
  if (v29)
  {
    v101 = *(v103 + 16);
    v30 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v72 = v28;
    v31 = v28 + v30;
    v100 = *(v103 + 72);
    v32 = (v95 + 8);
    v103 += 16;
    v33 = (v103 - 8);
    v34 = v97;
    v35 = v74;
    v36 = v73;
    do
    {
      v101(v36, v31, v35);
      Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.casinoSnippet.getter();
      Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();

      v37 = v102;
      (*v32)(v102, v34);
      (*v33)(v36, v35);
      v31 += v100;
      --v29;
    }

    while (v29);

    v38 = String._bridgeToObjectiveC()();

    v39 = v78;
    [v78 setResponseViewId:{v38, v72}];

    v40 = v94;
    v27 = v98;
  }

  else
  {

    v40 = v94;
    v39 = v78;
    v37 = v102;
  }

  v41 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter();
  v42 = v89;
  v43 = v88;
  v44 = v79;
  v45 = v97;
  if (v41)
  {
    Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.compactSnippet.getter();
    Apple_Parsec_Siri_V2alpha_CasinoSnippet.responseViewID.getter();
    (*(v95 + 8))(v37, v45);
    v46 = String._bridgeToObjectiveC()();

    [v39 setResponseViewId:v46];
  }

  v47 = static PerformanceUtil.shared.getter();
  __chkstk_darwin(v47);
  Date.init()();
  v70 = &v68;
  v71 = &type metadata for Data;
  v69 = partial apply for closure #4 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:);
  v68 = 2;
  v48 = v75;
  dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)();
  if (v48)
  {
    v77(v44, v81);

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.information);
    isa = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(isa, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_0, isa, v51, "Unable to serialize card for snippet. Results may appear incomplete.", v52, 2u);
    }
  }

  else
  {
    v77(v44, v81);

    v53 = v110[0];
    v54 = v110[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v53, v54);
    [v39 setCardData:isa];
  }

  v55 = v39;
  v56 = v83;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v84 + 8))(v56, v85);
  v57 = String._bridgeToObjectiveC()();

  [v55 setAceId:v57];

  (*(v86 + 16))(v43, v27, v87);
  v58 = v55;
  if (AFIsInternalInstall())
  {
    (*(*v99 + 104))(v110);
    __swift_project_boxed_opaque_existential_1(v110, v110[3]);
    v59 = dispatch thunk of PommesServerFallbackDisabling.shouldDisableServerFallbackNL(isDomainDirected:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v110);
    v60 = v59 ^ 1;
  }

  else
  {
    v60 = 0;
  }

  v61 = v93;
  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUISash, SAUISash_ptr);
  v62 = SAUISash.init(layoutSnippet:showInternalPommesAttribution:)(v43, v60 & 1);
  [v58 setSash:v62];

  v63 = v58;
  [v63 setIsTransient:Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.isTransient.getter() & 1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v63 setReferencedCommands:v64];

  if (Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasCompactSnippet.getter())
  {
    (*(*v99 + 296))(v63, v27, v96);
  }

  v65 = v92;
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.uiItemType.getter();
  Apple_Parsec_Siri_V2alpha_UIItemType.aceValue.getter();
  (*(v61 + 8))(v65, v40);
  v66 = String._bridgeToObjectiveC()();

  [v63 setItemType:v66];

  (*(v90 + 8))(v42, v91);
  return v63;
}

uint64_t closure #2 in InformationViewFactory.attachCompactCard(cardSnippet:layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Searchfoundation_Card();
  lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type Searchfoundation_Card and conformance Searchfoundation_Card, &type metadata accessor for Searchfoundation_Card);
  result = Message.serializedData(partial:)();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t InformationViewFactory.makeUtteranceView(dialog:layouts:)(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v4 = *(v3 - 8);
  v75 = v3;
  v76 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v74 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for ResponseMode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v64 - v19;
  v21 = [objc_allocWithZone(DialogElement) init];
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
  v22 = String._bridgeToObjectiveC()();

  [v21 setFullPrint:v22];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
  v23 = String._bridgeToObjectiveC()();

  [v21 setSupportingPrint:v23];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedPrint.getter();
  v24 = String._bridgeToObjectiveC()();

  [v21 setRedactedFullPrint:v24];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedPrint.getter();
  v25 = String._bridgeToObjectiveC()();

  [v21 setRedactedSupportingPrint:v25];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
  v26 = String._bridgeToObjectiveC()();

  [v21 setFullSpeak:v26];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
  v27 = String._bridgeToObjectiveC()();

  [v21 setSupportingSpeak:v27];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedSpeak.getter();
  v28 = String._bridgeToObjectiveC()();

  [v21 setRedactedFullSpeak:v28];

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.redactedSpeak.getter();
  v29 = String._bridgeToObjectiveC()();

  [v21 setRedactedSupportingSpeak:v29];

  [v21 setSpokenOnly:Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter() & 1];
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
  v30 = String._bridgeToObjectiveC()();

  [v21 setId:v30];

  v31 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.isApprovedForGrading.getter();
  v69 = v21;
  [v21 setIsApprovedForGrading:v31 & 1];
  type metadata accessor for SiriEnvironment();
  if (static SiriEnvironment.forCurrentTask.getter())
  {
    SiriEnvironment.currentRequest.getter();

    CurrentRequest.responseMode.getter();

    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v20, v12, v13);
    v32 = v14;
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    static ResponseMode.displayForward.getter();
    v32 = v14;
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      outlined destroy of Any?(v12, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  v33 = v74;
  v34 = v18;
  if (one-time initialization token for information != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  __swift_project_value_buffer(v35, static Logger.information);
  v36 = *(v32 + 16);
  v73 = v20;
  v36(v18, v20, v13);
  v37 = *(v76 + 16);
  v38 = v71;
  v70 = v34;
  v39 = v75;
  v37(v71, a1, v75);
  v37(v33, a1, v39);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v77 = v68;
    *v42 = 136315650;
    lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(&lazy protocol witness table cache variable for type ResponseMode and conformance ResponseMode, &type metadata accessor for ResponseMode);
    v67 = v41;
    v43 = v70;
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v13;
    v65 = v13;
    v66 = v40;
    v47 = v46;
    v48 = *(v32 + 8);
    v49 = v76;
    v48(v43, v45);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, &v77);

    *(v42 + 4) = v50;
    *(v42 + 12) = 1024;
    LODWORD(v50) = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter() & 1;
    v51 = v38;
    v52 = *(v49 + 8);
    v53 = v75;
    v52(v51, v75);
    *(v42 + 14) = v50;
    *(v42 + 18) = 1024;
    v54 = v74;
    LODWORD(v50) = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.spokenOnly.getter() & 1;
    v52(v54, v53);
    v56 = v65;
    v55 = v66;
    *(v42 + 20) = v50;
    _os_log_impl(&dword_0, v55, v67, "Calling makeUtteranceView with responseMode: %s, listenAfterSpeaking: %{BOOL}d, spokenOnly: %{BOOL}d", v42, 0x18u);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  else
  {
    v57 = v75;
    v58 = *(v76 + 8);
    v58(v33, v75);
    v58(v38, v57);

    v48 = *(v32 + 8);
    v48(v70, v13);
    v56 = v13;
  }

  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter();
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.forcePrintDialog.getter();
  v59 = *(v72 + 16);
  Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
  v60 = v69;
  v61 = v73;
  v62 = static AceOutputHelper.makeUtteranceView(for:canUseServerTTS:listenAfterSpeaking:printSupportingDialogInDisplayModes:forcePrintDialog:containsVisual:responseMode:dialogCategory:)();

  v48(v61, v56);
  return v62;
}

void *InformationViewFactory.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);
  return v0;
}

uint64_t InformationViewFactory.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 8);

  return swift_deallocClassInstance();
}

id SAUISash.init(appName:appID:)(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = String._bridgeToObjectiveC()();

    [v3 setTitle:v4];

    v5 = String._bridgeToObjectiveC()();

    [v3 setApplicationBundleIdentifier:v5];
  }

  else
  {

    return 0;
  }

  return v3;
}

id SAGKSummaryPod.init(title:text:caption:imageResource:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    [v14 setTitle:v16];
  }

  else
  {
  }

  v17 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();

    [v14 setText:v18];
  }

  else
  {
  }

  v19 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = String._bridgeToObjectiveC()();

    [v14 setCaption:v20];
  }

  else
  {
  }

  [v14 setImageResource:a7];

  return v14;
}

id SAGKImageLinkedAnswer.init(imageLinkedAnswer:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasImageResource.getter())
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIImageResource, SAUIImageResource_ptr);
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.imageResource.getter();
    v11 = SAUIImageResource.init(imageResource:)(v9);
    [v10 setImageResource:v11];
  }

  if (Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.hasPunchOut.getter())
  {
    type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAUIAppPunchOut, SAUIAppPunchOut_ptr);
    Apple_Parsec_Siri_Legacy_ImageLinkedAnswer.punchOut.getter();
    v12 = SAUIAppPunchOut.init(punchOut:)(v5);
    [v10 setPunchOut:v12];
  }

  v13 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageLinkedAnswer();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v10;
}

id SAUIImageResource.init(imageResource:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (v14)
    {
      v18 = v12;
      outlined consume of Data._Representation(v12, v13);
      if (v18 == v18 >> 32)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = v13;
      outlined consume of Data._Representation(v12, v13);
      if ((v15 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    v19 = Apple_Parsec_Siri_Legacy_ImageResource.imageData.getter();
    v21 = v20;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v19, v21);
    [v11 setImageData:isa];

    goto LABEL_11;
  }

  if (v14 != 2)
  {
    outlined consume of Data._Representation(v12, v13);
    goto LABEL_11;
  }

  v17 = *(v12 + 16);
  v16 = *(v12 + 24);
  outlined consume of Data._Representation(v12, v13);
  if (v17 != v16)
  {
    goto LABEL_9;
  }

LABEL_11:
  Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
  if (v23 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.pixelWidth.getter();
    [v11 setPixelWidth:?];
  }

  Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
  if (v24 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.pixelHeight.getter();
    [v11 setPixelHeight:?];
  }

  v25 = Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.resourceURL.getter();
    URL.init(string:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      outlined destroy of Any?(v5, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      [v11 setResourceUrl:v30];

      (*(v7 + 8))(v10, v6);
    }
  }

  Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
  if (v32 > 0.0)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.scaleFactor.getter();
    [v11 setScaleFactor:?];
  }

  v33 = Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
  v35 = v34;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.urlFormatString.getter();
    v37 = String._bridgeToObjectiveC()();

    [v11 setUrlFormatString:v37];
  }

  v38 = Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    Apple_Parsec_Siri_Legacy_ImageResource.userAgent.getter();
    v42 = String._bridgeToObjectiveC()();

    [v11 setUserAgent:v42];
  }

  v43 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  (*(*(v43 - 8) + 8))(a1, v43);
  return v11;
}

id SAUIAppPunchOut.init(punchOut:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = Apple_Parsec_Siri_Legacy_PunchOut.subtitle.getter();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.subtitle.getter();
    v21 = String._bridgeToObjectiveC()();

    [v16 setSubtitle:v21];
  }

  Apple_Parsec_Siri_Legacy_PunchOut.punchOutUri.getter();
  URL.init(string:)();

  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    outlined destroy of Any?(v8, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    [v16 setPunchOutUri:v24];

    (*(v10 + 8))(v15, v9);
  }

  v26 = Apple_Parsec_Siri_Legacy_PunchOut.bundleID.getter();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.bundleID.getter();
    v30 = String._bridgeToObjectiveC()();

    [v16 setBundleId:v30];
  }

  v31 = Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.getter();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.appDisplayName.getter();
    v35 = String._bridgeToObjectiveC()();

    [v16 setAppDisplayName:v35];
  }

  v36 = Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.getter();
  v38 = v37;

  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {
    Apple_Parsec_Siri_Legacy_PunchOut.appStoreUri.getter();
    URL.init(string:)();

    if (v22(v6, 1, v9) == 1)
    {
      v40 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
      (*(*(v40 - 8) + 8))(a1, v40);
      outlined destroy of Any?(v6, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    }

    else
    {
      v42 = v49;
      (*(v10 + 32))(v49, v6, v9);
      URL._bridgeToObjectiveC()(v43);
      v45 = v44;
      [v16 setAppStoreUri:v44];

      v46 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
      (*(*(v46 - 8) + 8))(a1, v46);
      (*(v10 + 8))(v42, v9);
    }
  }

  else
  {
    v41 = type metadata accessor for Apple_Parsec_Siri_Legacy_PunchOut();
    (*(*(v41 - 8) + 8))(a1, v41);
  }

  return v16;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, _sSaySo13SABaseCommandCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [SAAceView] and conformance [A](&lazy protocol witness table cache variable for type [SAClientBoundCommand] and conformance [A], &_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo20SAClientBoundCommand_pGMd, &_sSaySo20SAClientBoundCommand_pGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v48 - v7;
  v8 = type metadata accessor for Searchfoundation_CardSection();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0;
  v12 = 0;
  v49 = *(v13 + 80);
  v14 = _swiftEmptyArrayStorage;
  v54 = (v49 + 32) & ~v49;
  v59 = _swiftEmptyArrayStorage + v54;
  v15 = (v13 + 56);
  v50 = v13 + 48;
  v51 = v13 + 16;
  v52 = v13;
  v57 = (v13 + 32);
LABEL_4:
  v18 = *(a1 + 16);
  if (v12 != v18)
  {
    if (v12 < v18)
    {
      while (1)
      {
        v19 = *(a1 + 32 + 8 * v12);

        if (v19)
        {
          break;
        }

LABEL_9:
        ++v12;
        v20 = *(a1 + 16);
        if (v12 == v20)
        {
          goto LABEL_36;
        }

        if (v12 >= v20)
        {
          goto LABEL_42;
        }
      }

      v16 = *(v19 + 16);
      if (!v16)
      {
        (*v15)(v6, 1, 1, v8);
        result = outlined destroy of Any?(v6, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
        goto LABEL_9;
      }

      v17 = 0;
      ++v12;
      while (1)
      {
        if (v17 >= v16)
        {
          goto LABEL_43;
        }

        v21 = v14;
        v22 = v52;
        v23 = *(v52 + 72);
        v61 = v17;
        v56 = v23;
        (*(v52 + 16))(v6, v19 + v54 + v23 * v17, v8);
        (*(v22 + 56))(v6, 0, 1, v8);
        v24 = v55;
        outlined init with take of Searchfoundation_CardSection?(v6, v55);
        if ((*(v22 + 48))(v24, 1, v8) == 1)
        {
          v14 = v21;
          goto LABEL_37;
        }

        v53 = *v57;
        result = v53(v58, v24, v8);
        v25 = v21;
        v26 = v60;
        if (!v60)
        {
          break;
        }

LABEL_34:
        v42 = __OFSUB__(v26, 1);
        v43 = v26 - 1;
        if (v42)
        {
          goto LABEL_44;
        }

        v60 = v43;
        ++v61;
        v44 = v59;
        result = v53(v59, v58, v8);
        v59 = &v44[v56];
        v14 = v25;
        v16 = *(v19 + 16);
        v17 = v61;
        if (v61 == v16)
        {
          (*v15)(v6, 1, 1, v8);
          result = outlined destroy of Any?(v6, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
          goto LABEL_4;
        }
      }

      v27 = *(v21 + 3);
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMR);
      v30 = v54;
      v60 = v29;
      v25 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v25);
      v31 = v56;
      if (!v56)
      {
        goto LABEL_47;
      }

      v32 = result - v30;
      if (result - v30 == 0x8000000000000000 && v56 == -1)
      {
        goto LABEL_48;
      }

      v34 = v30;
      v35 = v32 / v56;
      *(v25 + 2) = v60;
      *(v25 + 3) = 2 * (v32 / v31);
      v36 = &v25[v30];
      v37 = v21;
      v38 = *(v21 + 2);
      v39 = *(v21 + 3) >> 1;
      v40 = v39 * v31;
      if (!v38)
      {
LABEL_33:
        v59 = &v36[v40];
        v41 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v26 = v41;
        goto LABEL_34;
      }

      if (v25 < v37 || v36 >= &v37[v34 + v40])
      {
        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v25 == v37)
        {
LABEL_32:
          *(v37 + 2) = 0;
          goto LABEL_33;
        }

        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v48;
      v35 = v59;
      v36 = v60;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v24 = v55;
  (*v15)(v55, 1, 1, v8);
LABEL_37:

  result = outlined destroy of Any?(v24, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v45 = *(v14 + 3);
  if (v45 < 2)
  {
    return v14;
  }

  v46 = v45 >> 1;
  v42 = __OFSUB__(v46, v60);
  v47 = v46 - v60;
  if (!v42)
  {
    *(v14 + 2) = v47;
    return v14;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in InformationViewFactory.makeCommandForPegasusNavigation(layouts:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24), 0);
  *a1 = result;
  return result;
}

void *partial apply for closure #1 in InformationViewFactory.makeButtonView(button:)@<X0>(void *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forComponent:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #4 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 208))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #3 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 240))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #2 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 200))(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in InformationViewFactory.makeSnippet(layoutSnippet:renderOptions:)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 312))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

void *partial apply for closure #2 in InformationViewFactory.makeMapSnippet(layoutSnippet:)@<X0>(void *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forComponent:)(*(v1 + 16));
  *a1 = result;
  return result;
}

id specialized SAGKSummaryPod.init(summaryPod:imageResource:)(uint64_t a1, uint64_t a2)
{
  v4 = Apple_Parsec_Siri_Legacy_SummaryPod.title.getter();
  v6 = v5;
  v7 = Apple_Parsec_Siri_Legacy_SummaryPod.text.getter();
  v9 = v8;
  v10 = Apple_Parsec_Siri_Legacy_SummaryPod.caption.getter();
  v12 = v11;
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();

    [v13 setTitle:v15];
  }

  else
  {
  }

  v16 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v16 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();

    [v13 setText:v17];
  }

  else
  {
  }

  v18 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v18 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = String._bridgeToObjectiveC()();

    [v13 setCaption:v19];
  }

  else
  {
  }

  [v13 setImageResource:a2];
  v20 = type metadata accessor for Apple_Parsec_Siri_Legacy_SummaryPod();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v13;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v39 = type metadata accessor for Apple_Parsec_Siri_Legacy_ImageResource();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo17SAUIImageResourceCGMd, &_ss18_DictionaryStorageCySSSo17SAUIImageResourceCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v7 = 0;
  v40 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v38 = v3;
  v34 = v3 + 8;
  v35 = v3 + 16;
  v32 = v9;
  v33 = result + 64;
  v36 = result;
  v15 = v37;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_10:
      v19 = v16 | (v7 << 6);
      v43 = 16 * v19;
      v20 = v39;
      v21 = *(v40 + 56);
      v22 = (*(v40 + 48) + 16 * v19);
      v23 = v22[1];
      v44 = *v22;
      v24 = v38;
      (*(v38 + 16))(v15, v21 + *(v38 + 72) * v19, v39);
      v25 = *(*v41 + 264);

      v26 = v25(v15);
      (*(v24 + 8))(v15, v20);
      *(v33 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v36;
      v27 = (*(v36 + 48) + v43);
      *v27 = v44;
      v27[1] = v23;
      *(*(result + 56) + 8 * v19) = v26;
      v28 = *(result + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      *(result + 16) = v30;
      v13 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return result;
      }

      v18 = *(v32 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v42 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in InformationViewFactory.makeCasinoSnippet(layoutSnippet:renderOptions:)()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[3];
  Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.perResultLayoutDetails.getter();
  (*(*v1 + 280))();
}

unint64_t lazy protocol witness table accessor for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory()
{
  result = lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory;
  if (!lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InformationViewFactory.AceViewCategory and conformance InformationViewFactory.AceViewCategory);
  }

  return result;
}

uint64_t outlined init with take of Searchfoundation_CardSection?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ResponseMode and conformance ResponseMode(unint64_t *a1, void (*a2)(uint64_t))
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

void *partial apply for closure #1 in closure #1 in InformationViewFactory.makeDisambiguationListView(list:)@<X0>(void *a1@<X8>)
{
  result = specialized static CommandFactory.makeCommands(forListItem:)(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for SportsPersonalizationSelection(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SportsPersonalizationSelection(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for SportsPersonalizationSelection(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t Features.isEnabled.getter(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return v2 & 1;
}

const char *Features.domain.getter(char a1)
{
  if (a1 == 5)
  {
    return "GenerativeAssistantTools";
  }

  else
  {
    return "SiriInformation";
  }
}

const char *Features.feature.getter(unsigned __int8 a1)
{
  v1 = "siri_suggestions";
  v2 = "alternative_suggestions";
  v3 = "alternative_suggestions_mac";
  if (a1 != 4)
  {
    v3 = "Expansion";
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = "sports_personalization";
  if (a1 != 1)
  {
    v4 = "carplay_suggestions";
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL Features.isDisabled.getter(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v4[0]) = a1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  return (v2 & 1) == 0;
}

const char *protocol witness for FeatureFlagsKey.domain.getter in conformance Features()
{
  if (*v0 == 5)
  {
    return "GenerativeAssistantTools";
  }

  else
  {
    return "SiriInformation";
  }
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance Features()
{
  v1 = *v0;
  v2 = "siri_suggestions";
  v3 = "alternative_suggestions";
  v4 = "alternative_suggestions_mac";
  if (v1 != 4)
  {
    v4 = "Expansion";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "sports_personalization";
  if (v1 != 1)
  {
    v5 = "carplay_suggestions";
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

uint64_t protocol witness for FeatureToggle.isEnabled.getter in conformance Features(uint64_t a1)
{
  v2 = *v1;
  v5[3] = a1;
  v5[4] = lazy protocol witness table accessor for type Features and conformance Features();
  LOBYTE(v5[0]) = v2;
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3 & 1;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Features(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in static PegasusACEConverters.makeAppPunchOut(params:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - v5;
  v7 = Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    return Apple_Parsec_Siri_V2alpha_AppPunchOutBuilderParams.bundleID.getter();
  }

  outlined init with copy of (String, Decodable & Encodable & Sendable)(a2, v6, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v6, 1, v12) == 1)
  {
    outlined destroy of Any?(v6, &_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
    return 0;
  }

  v14 = URL.scheme.getter();
  v16 = v15;
  (*(v13 + 8))(v6, v12);
  if (!v16)
  {
    return 0;
  }

  if (v14 == 0xD000000000000013 && v16 == 0x80000000000C09E0)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  return 0x6C7070612E6D6F63;
}

id static PegasusACEConverters.makeShowPlaceDetails(params:)()
{
  v0 = [objc_allocWithZone(SALocalSearchShowPlaceDetails) init];
  [v0 setItemIndex:Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams.itemIndex.getter()];
  return v0;
}

id static PegasusACEConverters.makeEndNavigation(params:)()
{
  v0 = objc_allocWithZone(SALocalSearchNavigationEnd);

  return [v0 init];
}

id static PegasusACEConverters.makeOpenLink(params:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = [objc_allocWithZone(SAUIOpenLink) init];
  Apple_Parsec_Siri_V2alpha_OpenLinkBuilderParams.ref.getter();
  URL.init(string:)();

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v8 = 0;
  if ((*(v6 + 48))(v3, 1, v5) != 1)
  {
    URL._bridgeToObjectiveC()(v7);
    v8 = v9;
    (*(v6 + 8))(v3, v5);
  }

  [v4 setRef:v8];

  return v4;
}

id static PegasusACEConverters.makeSwitchProfile(params:)(uint64_t a1, Class *a2, void (*a3)(void), SEL *a4)
{
  v6 = [objc_allocWithZone(*a2) init];
  a3();
  v7 = String._bridgeToObjectiveC()();

  [v6 *a4];

  return v6;
}

id static PegasusACEConverters.makeExtendCurrentTTS(params:)()
{
  v0 = objc_allocWithZone(SAUIExtendCurrentTTS);

  return [v0 init];
}

id static PegasusACEConverters.makeCancelCurrentTTS(params:)()
{
  v0 = objc_allocWithZone(SAUICancelCurrentTTS);

  return [v0 init];
}

uint64_t specialized static PegasusACEConverters.makeDirectionsType(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v41 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = *(v3 + 16);
  v16(&v41 - v14, a1, v2);
  v17 = (*(v3 + 88))(v15, v2);
  if (v17 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.UNRECOGNIZED(_:) || v17 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.unknown(_:))
  {
    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.information);
    v16(v13, a1, v2);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315138;
      v16(v10, v13, v2);
      v24 = String.init<A>(describing:)();
      v26 = v25;
      (*(v3 + 8))(v13, v2);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v44);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, v20, v21, "Unknown or unrecognized direction type: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {

      (*(v3 + 8))(v13, v2);
    }

    return 0;
  }

  if (v17 != enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.car(_:))
  {
    if (v17 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.transit(_:))
    {
      v28 = &SALocalSearchDirectionsTypeByPublicTransitValue;
      goto LABEL_20;
    }

    if (v17 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.walking(_:))
    {
      v28 = &SALocalSearchDirectionsTypeWalkingValue;
      goto LABEL_20;
    }

    if (v17 == enum case for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.DirectionType.cycling(_:))
    {
      v28 = &SALocalSearchDirectionsTypeBikingValue;
      goto LABEL_20;
    }

    if (one-time initialization token for information != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.information);
    v16(v7, a1, v2);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v42 = v34;
      v43 = swift_slowAlloc();
      v44 = v43;
      *v34 = 136315138;
      v16(v10, v7, v2);
      v35 = String.init<A>(describing:)();
      v37 = v36;
      v38 = *(v3 + 8);
      v38(v7, v2);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v44);

      v40 = v42;
      *(v42 + 1) = v39;
      _os_log_impl(&dword_0, v32, v33, "Unknown (future?) direction type: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
    }

    else
    {

      v38 = *(v3 + 8);
      v38(v7, v2);
    }

    v38(v15, v2);
    return 0;
  }

  v28 = &SALocalSearchDirectionsTypeByCarValue;
LABEL_20:
  v30 = *v28;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t specialized static PegasusACEConverters.makeMapItemType(detailType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.UNRECOGNIZED(_:) || v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.unknown(_:))
  {
    goto LABEL_6;
  }

  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.currentLocation(_:))
  {
    v9 = &SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue;
    goto LABEL_9;
  }

  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.businessItem(_:))
  {
LABEL_6:
    v9 = &SALocalSearchMapItemMapItemTypeBUSINESS_ITEMValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.personItem(_:))
  {
    v9 = &SALocalSearchMapItemMapItemTypePERSON_ITEMValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.addressItem(_:))
  {
    v9 = &SALocalSearchMapItemMapItemTypeADDRESS_ITEMValue;
  }

  else if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.homeItem(_:))
  {
    v9 = &SALocalSearchMapItemMapItemTypeHOME_ITEMValue;
  }

  else
  {
    if (v7 != enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType.parkingLocation(_:))
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v3 + 8))(v6, v2);
      return v12;
    }

    v9 = &SALocalSearchMapItemMapItemTypePARKING_LOCATIONValue;
  }

LABEL_9:
  v10 = *v9;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id specialized static PegasusACEConverters.makeLocation(params:)()
{
  v0 = [objc_allocWithZone(SALocation) init];
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 setLabel:v1];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.street.getter();
  v2 = String._bridgeToObjectiveC()();

  [v0 setStreet:v2];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.thoroughfare.getter();
  v3 = String._bridgeToObjectiveC()();

  [v0 setThoroughfare:v3];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.subThoroughfare.getter();
  v4 = String._bridgeToObjectiveC()();

  [v0 setSubThoroughfare:v4];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.city.getter();
  v5 = String._bridgeToObjectiveC()();

  [v0 setCity:v5];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.stateCode.getter();
  v6 = String._bridgeToObjectiveC()();

  [v0 setStateCode:v6];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.countryCode.getter();
  v7 = String._bridgeToObjectiveC()();

  [v0 setCountryCode:v7];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.postalCode.getter();
  v8 = String._bridgeToObjectiveC()();

  [v0 setPostalCode:v8];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.latitude.getter();
  v10 = v9;
  v11 = objc_allocWithZone(NSNumber);
  LODWORD(v12) = v10;
  v13 = [v11 initWithFloat:v12];
  [v0 setLatitude:v13];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.longitude.getter();
  v15 = v14;
  v16 = objc_allocWithZone(NSNumber);
  LODWORD(v17) = v15;
  v18 = [v16 initWithFloat:v17];
  [v0 setLongitude:v18];

  [v0 setRegionType:SARegionTypeAddressValue];
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.timezoneID.getter();
  v19 = String._bridgeToObjectiveC()();

  [v0 setTimezoneId:v19];

  return v0;
}

uint64_t specialized static PegasusACEConverters.makeDirectionRole(role:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.UNRECOGNIZED(_:) || v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.unknown(_:))
  {
    v9 = &SALocalSearchMapItemDirectionRoleTOValue;
LABEL_9:
    v10 = *v9;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v7 == enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.from(_:))
  {
    v9 = &SALocalSearchMapItemDirectionRoleFROMValue;
    goto LABEL_9;
  }

  v12 = enum case for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role.to(_:);
  v13 = v7;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13 != v12)
  {
    v14 = result;
    (*(v3 + 8))(v6, v2);
    return v14;
  }

  return result;
}

id specialized static PegasusACEConverters.makeActionableMapItem(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin(v0);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(SALocalSearchActionableMapItem) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  specialized static PegasusACEConverters.makeMapItemType(detailType:)(v12);
  (*(v9 + 8))(v12, v8);
  v14 = String._bridgeToObjectiveC()();

  [v13 setDetailType:v14];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v15 = specialized static PegasusACEConverters.makeLocation(params:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  [v13 setLocation:v15];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v16(v7, v3);
  v17 = String._bridgeToObjectiveC()();

  [v13 setLabel:v17];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v16(v7, v3);
  v18 = String._bridgeToObjectiveC()();

  [v13 setSpokenName:v18];

  v19 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v21 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v19, v21);
  [v13 setPlaceData2:isa];

  v23 = v27;
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  specialized static PegasusACEConverters.makeDirectionRole(role:)(v23);
  (*(v28 + 8))(v23, v29);
  v24 = String._bridgeToObjectiveC()();

  [v13 setDirectionRole:v24];

  return v13;
}

id specialized static PegasusACEConverters.makeMapItemList(params:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SALocalSearchMapItemList) init];
  v6 = [objc_allocWithZone(NSNumber) initWithLongLong:Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.selectedItemIndex.getter()];
  [v5 setSelectedIndex:v6];

  v7 = Apple_Parsec_Siri_V2alpha_MapItemListBuilderParams.domainObjects.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = v5;
    v21 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = v1 + 16;
    v20 = *(v1 + 16);
    v10 = *(v1 + 80);
    v18 = v7;
    v11 = v7 + ((v10 + 32) & ~v10);
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v20(v4, v11, v0);
      specialized static PegasusACEConverters.makeActionableMapItem(params:)();
      (*v13)(v4, v0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v0;
      v15 = v21[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v0 = v14;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += v12;
      --v8;
    }

    while (v8);

    v5 = v19;
  }

  else
  {
  }

  type metadata accessor for NSThread(0, &lazy cache variable for type metadata for SADomainObject, SADomainObject_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setDomainObjects:isa];

  return v5;
}