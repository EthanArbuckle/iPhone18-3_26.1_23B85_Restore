uint64_t OUTLINED_FUNCTION_0_99(uint64_t a1)
{
  *(a1 + 8) = EligibleAppFinder.findEligibleApps(intentTypeNames:);
  v3 = *(v2 + 40);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_100()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_102()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = *(v0[24] + 8);
  return v0[25];
}

__n128 *OUTLINED_FUNCTION_0_103(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6C646E7542707061;
  result[2].n128_u64[1] = 0xEB00000000644965;
  return result;
}

__n128 *OUTLINED_FUNCTION_0_104(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F6365526C6C6163;
  result[2].n128_u64[1] = 0xEF746E756F436472;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_105(float a1)
{
  *v2 = a1;
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v4, v5, v6, v7);
}

unint64_t OUTLINED_FUNCTION_0_106(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_111()
{
  *(v1 + 80) = v2;
  *(v1 + 88) = v0 & 1;
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_112()
{
}

uint64_t OUTLINED_FUNCTION_0_113()
{
  result = v0 - 128;
  v2 = *(v0 - 384);
  v3 = *(v0 - 376);
  v4 = *(v0 - 368);
  v5 = *(v0 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_115()
{

  return specialized CallingFlowAbstraction.deinit(specialized PhoneFlow.deinit);
}

double OUTLINED_FUNCTION_0_118(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11)
{
  a1[1] = a9;
  a1[2] = a10;
  result = *&a11;
  a1[3] = a11;
  return result;
}

void OUTLINED_FUNCTION_0_120()
{
  strcpy((v0 + 80), "hasReference");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
}

uint64_t OUTLINED_FUNCTION_0_121(uint64_t a1)
{
  *(a1 + 8) = UnsupportedCallControlIntentOutputProvider.makeOutput();
  v2 = *(v1 + 288);
  return *(v1 + 248);
}

uint64_t OUTLINED_FUNCTION_0_122(uint64_t a1)
{
  *(a1 + 8) = UnsupportedFaceTimeOutputProvider.makeUnsupportedRFOutput();
  v2 = *(v1 + 256);
  return *(v1 + 200);
}

uint64_t OUTLINED_FUNCTION_0_123()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_125()
{

  return swift_dynamicCast();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_8();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_27_7()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_27_9()
{
  v1 = v0[56];
  v2 = v0[57];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[51];
  v6 = v0[44];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

double OUTLINED_FUNCTION_27_10()
{
  result = 0.0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_11()
{
  v2 = *(v0 - 192);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1, uint64_t a2)
{
  __swift_storeEnumTagSinglePayload(a1, a2, 2, v2);
  v5 = *(v4 - 88);

  return EmergencyDuringOngoingCallOfferFlow.state.setter(v3);
}

uint64_t OUTLINED_FUNCTION_27_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, 0xD000000000000025, a3 | 0x8000000000000000);
}

void OUTLINED_FUNCTION_27_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_18(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_27_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return outlined init with copy of SpeakableString?(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_27_24@<X0>(uint64_t a1@<X8>)
{

  return __swift_storeEnumTagSinglePayload(v2 + a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_27_25()
{
  __swift_project_boxed_opaque_existential_1((v0 + 336), *(v0 + 360));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_27_28()
{
  v2 = v0[265];
  v3 = v0[263];
  v4 = v0[259];
  v5 = v0[258];
  v6 = v0[257];
}

__n128 *OUTLINED_FUNCTION_27_33(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6D6563696F567369;
  result[2].n128_u64[1] = 0xEB000000006C6961;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_35()
{
  v2 = *(v0 + 336);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_36(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 400);

  return _typeName(_:qualified:)();
}

uint64_t OUTLINED_FUNCTION_27_38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_27_39@<X0>(unsigned int *a1@<X8>)
{
  v2 = *a1;
  v3 = *(v1 - 160);
  v4 = *(*(v1 - 168) + 104);
  return *(v1 - 152);
}

void *OUTLINED_FUNCTION_27_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (a1 + 16);

  return memcpy(v10, &a9, 0x68uLL);
}

__n128 *OUTLINED_FUNCTION_27_41@<X0>(__n128 *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  result[1] = a3;
  result[4].n128_u64[1] = v3;
  result[5].n128_u64[0] = v4;
  result[5].n128_u64[1] = (a2 - 32) | 0x8000000000000000;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t default argument 2 of AnnounceCallFlow.init(directAction:sharedGlobals:appFinder:)@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  memcpy(__dst, &static PhoneCallFeatureFlags.instance, sizeof(__dst));
  type metadata accessor for PhoneCallFeatureManager();
  v2 = OUTLINED_FUNCTION_67();
  v16 = &type metadata for PhoneCallFeatureFlags;
  v17 = &protocol witness table for PhoneCallFeatureFlags;
  OUTLINED_FUNCTION_48_3();
  *&v14 = swift_allocObject();
  memcpy((v14 + 16), &static PhoneCallFeatureFlags.instance, 0xC0uLL);
  v3 = outlined init with take of SPHConversation(&v14, v2 + 16);
  OUTLINED_FUNCTION_77_2(v3, v4, v5, v6, v7, v8, v9, v10, v14, *(&v14 + 1), v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, __dst[0]);
  if (one-time initialization token for instance != -1)
  {
    OUTLINED_FUNCTION_35_4();
  }

  v11 = static ThirdPartyAnnotatedAppStore.instance;
  a1[3] = &type metadata for AnnotatedAppFinder;
  a1[4] = &protocol witness table for AnnotatedAppFinder;
  OUTLINED_FUNCTION_70();
  v12 = swift_allocObject();
  *a1 = v12;
  v12[8] = type metadata accessor for ThirdPartyAnnotatedAppStore();
  v12[9] = &protocol witness table for ThirdPartyAnnotatedAppStore;
  v12[4] = v2;
  v12[5] = v11;
  v12[2] = AnnotatedAppFinder.isInstalledOnDevice(appBundleId:);
  v12[3] = 0;
}

uint64_t sub_1893C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  OUTLINED_FUNCTION_48_3();

  return _swift_deallocObject(v20, v21, v22);
}

uint64_t sub_18A00()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_76_3()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_76_5()
{
  v3 = *(v0 + 200);
  *(v1 + 16) = v3;
  v4 = v3 + *(v0 + 184);

  return outlined init with copy of SignalProviding(v4, v1 + 24);
}

uint64_t OUTLINED_FUNCTION_76_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_76_10()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_68_1()
{
}

void OUTLINED_FUNCTION_68_2()
{
  v1 = v0[240];
  v2 = v0[239];
  v3 = v0[237];
  v4 = v0[236];
  v5 = v0[230];
  v6 = v0[229];
  v7 = v0[226];
  v8 = v0[223];
}

uint64_t OUTLINED_FUNCTION_68_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return outlined init with copy of SignalProviding(a1, va);
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_68_9()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_68_10()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t OUTLINED_FUNCTION_68_11()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_68_12()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_68_13()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_68_14()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v1, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t static CarPlayDirectInvocationFlowFactory.makeStartCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  memset(&v8[2], 0, 24);
  v9 = xmmword_42DD90;
  v10 = xmmword_42DD90;
  v11 = 1;

  v6 = static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(v8, a3, a4);
  outlined destroy of StartAudioCallDirectAction(v8);
  return v6;
}

uint64_t static CarPlayDirectInvocationFlowFactory.makeStartAudioCallDirectInvocationFlow(directAction:sharedGlobals:appFinder:)(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  v8 = a2[3];
  v9 = a2[4];
  v59 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v9 + 8);
  swift_bridgeObjectRetain_n();
  v10(v70, v8, v9);
  AnnotatedAppFinding.find(appQuery:device:)(v4, v5, _swiftEmptyArrayStorage, v70, v6, v7, &v65);

  __swift_destroy_boxed_opaque_existential_1(v70);
  v11 = v65;
  if (v65)
  {
    v12 = v69;
    v13 = v68;
    v14 = v66;
    v15 = v67;
    v16 = *(&v65 + 1);
  }

  else
  {
    type metadata accessor for App();
    v11 = App.__allocating_init(appIdentifier:)();

    v14 = 0;
    v15 = 0;
    v13 = 2;
    v16 = _swiftEmptySetSingleton;
    v12 = _swiftEmptySetSingleton;
  }

  v70[0] = v11;
  v70[1] = v16;
  v70[2] = v14;
  v70[3] = v15;
  v71 = v13;
  v72 = v12;
  v17 = v59[3];
  v18 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v17);
  (*(v18 + 152))(v62, v17, v18);
  v19 = v63;
  v20 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  (*(v20 + 8))(v70, v60, v19, v20);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v60, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v21 = [objc_allocWithZone(INStartCallIntent) init];
  v22 = [v21 _className];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  LOBYTE(v23) = specialized Set.contains(_:)(v23, v25, v16);

  if (v23)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v26 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v26, static Logger.siriPhone);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_13_19();
      v62[0] = v22;
      *v15 = 136315138;
      *&v60[0] = v11;
      v29 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_49();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v30, v31);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v62);
      OUTLINED_FUNCTION_7_22();

      *(v15 + 4) = v29;
      OUTLINED_FUNCTION_14_22(&dword_0, v34, v35, "#CarPlayDirectActionFlowFactory Using INStartCallIntent, app: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    StartAudioCallDirectAction.startCallIntent.getter();
    v36 = OUTLINED_FUNCTION_6_28();
    _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo07INStartB6IntentC_Tt3g5(v36, v37, v38, v39);
    OUTLINED_FUNCTION_15_23();
    v62[0] = v59;
    v40 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd;
    v41 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo07INStartB6IntentCGMR);
    v42 = &lazy protocol witness table cache variable for type CarPlayDirectInvocationFlow<INStartCallIntent> and conformance CarPlayDirectInvocationFlow<A>;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v43 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v43, static Logger.siriPhone);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_13_19();
      v62[0] = v22;
      *v15 = 136315138;
      *&v60[0] = v11;
      v46 = type metadata accessor for App();
      OUTLINED_FUNCTION_1_49();
      _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(v47, v48);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v62);
      OUTLINED_FUNCTION_7_22();

      *(v15 + 4) = v46;
      OUTLINED_FUNCTION_14_22(&dword_0, v51, v52, "#CarPlayDirectActionFlowFactory Using INStartAudioCallIntent, app: %s");
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    StartAudioCallDirectAction.startAudioCallIntent.getter();
    v53 = OUTLINED_FUNCTION_6_28();
    _s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC7FactoryO04makefghiC033_50B2F8F24DEBC70E92405053C79DAACDLL3app6intent12directAction13sharedGlobalsAA0fghiC0CyxG17SiriAppResolution0Z0C_xAA010StartAudiobhV0VAA06SharedX9Providing_ptSo8INIntentCRbzlFZSo012INStartAudioB6IntentC_Tt3g5(v53, v54, v55, v56);
    OUTLINED_FUNCTION_15_23();
    v62[0] = v59;
    v40 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd;
    v41 = &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin023CarPlayDirectInvocationC0CySo012INStartAudioB6IntentCGMR);
    v42 = &lazy protocol witness table cache variable for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>;
  }

  lazy protocol witness table accessor for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>(v42, v40, v41);
  v57 = Flow.eraseToAnyFlow()();

  return v57;
}

void OUTLINED_FUNCTION_11_14(uint64_t a1@<X8>)
{
  v3[6] = v1;
  v3[9] = a1;
  v3[10] = v4;
  v3[11] = (v2 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_11_20()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2 - 96, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_21@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_23()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_11_25()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_11_26()
{
  v1 = v0[145];
  v2 = v0[146];
  __swift_project_boxed_opaque_existential_1(v0 + 142, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_28(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 96);
  v4 = *(v2 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_29@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 - 112) + a1;
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_32(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v5 = *(a2 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
}

void OUTLINED_FUNCTION_11_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_11_40()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 88));
}

uint64_t OUTLINED_FUNCTION_11_41()
{

  return String.index(_:offsetBy:limitedBy:)();
}

uint64_t OUTLINED_FUNCTION_11_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_45()
{
  result = v0;
  v3 = *(v1 - 352);
  v4 = *(v1 - 344);
  v5 = *(v1 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_48()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_49()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_11_50()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_11_51(float a1)
{
  *v2 = a1;
  result = v1[37];
  v4 = v1[38];
  v5 = v1[39];
  v6 = v1[40];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_52(float a1)
{
  *v2 = a1;
  result = v1[51];
  v4 = v1[52];
  v5 = v1[53];
  v6 = v1[54];
  return result;
}

void OUTLINED_FUNCTION_11_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v32 - 152) = v30;
  *(v32 - 144) = v29;
  *(v32 - 200) = v31;

  _s27PhoneCallFlowDelegatePlugin33ReferenceContactResolutionWrapperO20runCombinedSRRandCRR33_6E03C60D186988DA16A96BF8932754FFLL13siriKitIntent3app02nlW013sharedGlobals20contactGroupResolverAC20SRRResolutionResultsAELLVAA013NCRResolvableW0_p_07SiriAppH03AppCAA0aB8NLIntent_pAA22SharedGlobalsProviding_pAA0G14GroupResolving_ptFZTf4ennnnn_nSo07INStartbW0C_Tt4g5Tf4nnnne_nTm(v28, v30, v31, v29, v27, v25, v26, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void OUTLINED_FUNCTION_11_54()
{

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_11_55()
{
  *(v0 + v1[5]) = 0;
  *(v0 + v1[6]) = 0;
  *(v0 + v1[7]) = v3;
  *(v0 + v1[8]) = v2;
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_57(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 64);
  return result;
}

void OUTLINED_FUNCTION_11_58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_62()
{
}

uint64_t OUTLINED_FUNCTION_11_64()
{
  v2 = *(v0 - 352);

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_11_65()
{
  v2 = v0[7];
  v3 = v0[6];

  return __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
}

uint64_t OUTLINED_FUNCTION_11_66()
{
  v2 = v0[219];
  v3 = v0[218];
  v4 = v0[217];
  v5 = v0[216];
  v6 = v0[213];
  v7 = v0[207];
}

uint64_t OUTLINED_FUNCTION_11_69()
{
  result = v0;
  v3 = *(v1 - 200);
  v4 = *(v1 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_71()
{
  v3 = *(v0 - 144);
  v2 = *(v0 - 136);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t AppQuery.description.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  v8 = AppQuery.defaultAppId.getter(a1, a2, a3);
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    _StringGuts.grow(_:)(17);

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    String.append(_:)(v12);

    v10 = 0x6C7561666564202CLL;
    v6 = 0xEF3D644970704174;
  }

  v13._countAndFlagsBits = v10;
  v13._object = v6;
  String.append(_:)(v13);

  if (a2)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  v15._countAndFlagsBits = AppResolutionSource.description.getter(v14);
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x656372756F73202CLL;
  v17._object = 0xE90000000000003DLL;
  String.append(_:)(v17);

  return 0xD000000000000018;
}

uint64_t AppQuery.defaultAppId.getter(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3[2])
  {
    v4 = a3[4];
    v3 = a3[5];
  }

  return OUTLINED_FUNCTION_0();
}

unint64_t AppResolutionSource.description.getter(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x716552726573752ELL;
      break;
    case 3:
      result = 0x736165732ELL;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall App.isFirstParty()()
{
  App.appIdentifier.getter();
  if (v0)
  {
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type String and conformance String();
    v1 = BidirectionalCollection<>.starts<A>(with:)();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
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

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

BOOL specialized Sequence.contains(where:)()
{
  OUTLINED_FUNCTION_12_33();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

{
  OUTLINED_FUNCTION_12_33();
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *(v3 - 1);
    v6 = *v3;
    v19[0] = *(v3 - 2);
    v19[1] = v5;
    v20 = v6;
    v7 = OUTLINED_FUNCTION_11_30();
    outlined copy of CommonCallStatePredicate(v7, v8, v9);
    v10 = v1(v19);
    if (v0)
    {
      v15 = OUTLINED_FUNCTION_11_30();
      outlined consume of CommonCallStatePredicate(v15, v16, v17);
      return v4 != 0;
    }

    v11 = v10;
    v3 += 24;
    v12 = OUTLINED_FUNCTION_11_30();
    outlined consume of CommonCallStatePredicate(v12, v13, v14);
  }

  while ((v11 & 1) == 0);
  return v4 != 0;
}

{
  OUTLINED_FUNCTION_12_33();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v10 = *v4;

    v7 = v1(&v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;

    ++v4;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    object = String.lowercased()()._object;
  }

  else
  {
    object = 0;
  }

  OUTLINED_FUNCTION_2_7();
  v5 = String.lowercased()()._object;
  if (!object)
  {

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_39();
  v6 = v6 && object == v5;
  if (v6)
  {
    goto LABEL_23;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    if (a2)
    {
      v9 = String.lowercased()();
      countAndFlagsBits = v9._countAndFlagsBits;
      v10 = v9._object;
    }

    else
    {
      v10 = 0;
    }

    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_74();
    }

    v11 = String.lowercased()();
    if (!v10)
    {
      v8 = 0;
      goto LABEL_26;
    }

    if (countAndFlagsBits != v11._countAndFlagsBits || v10 != v11._object)
    {
      OUTLINED_FUNCTION_0();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_24:

LABEL_26:

      return v8 & 1;
    }

LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t PhoneCallFeatureManager.shouldEnableFaceTimeUninstall.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{
  *(a1 + 8) = ActionableCallControlFlow.makeUnsupportedActionOnCallOutput(unsupportedActionReason:);
  v2 = *(v1 + 280);
  return *(v1 + 232);
}

uint64_t OUTLINED_FUNCTION_1_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x43746E6572727563;
  a1[2].n128_u64[1] = 0xEB000000006C6C61;
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_22()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_1_25()
{
  v2 = *(v0 + 56);

  return outlined destroy of AnnounceGroupFaceTimeInviteOfferFollowUpIntentParameters();
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t result)
{
  v2[18] = v1;
  v2[21] = result;
  v2[22] = 0x646E497473727562;
  v2[23] = 0xEA00000000007865;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_27@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 104);
  v5 = *(v2 + 32);
  *(v3 + 96) = a2;
  *(v3 + 120) = result;
  strcpy((v3 + 128), "participants");
  *(v3 + 141) = 0;
  *(v3 + 142) = -5120;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_31()
{

  return _print_unlocked<A, B>(_:_:)();
}

BOOL OUTLINED_FUNCTION_1_33()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t OUTLINED_FUNCTION_1_34()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_36()
{
  v2 = v0[25];
  result = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[16];
  v6 = v0[17];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[8];
  v11 = v0[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_38()
{
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_40(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *(v1 + 8);

  return outlined init with copy of CallCancelSlotConfirmationButtonsBuilder(v1, va);
}

uint64_t OUTLINED_FUNCTION_1_43()
{
  v2 = v0[105];
  v3 = v0[104];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[94];
  v9 = v0[93];
  v10 = v0[92];
  v11 = v0[91];
}

uint64_t OUTLINED_FUNCTION_1_44()
{

  return specialized DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:)(5, closure #1 in default argument 2 of DictionaryBackedCache.init(timeToLiveInSeconds:capacity:nowDateProvider:), 0, 30.0);
}

void OUTLINED_FUNCTION_1_45()
{
  *(v3 - 72) = 1;
  *v1 = v2;
  v1[1] = v0;
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return *a1;
}

uint64_t OUTLINED_FUNCTION_1_50()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_51(uint64_t a1)
{
  *(a1 + 8) = Sequence.asyncCompactMapSerial<A>(_:);
  v2 = v1[17];
  result = v1[11];
  v4 = v1[4];
  return result;
}

id OUTLINED_FUNCTION_1_56()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v6 = *(v0 + 120);

  return ConfirmationViewTemplate.Button.asConfirmationOption.getter();
}

uint64_t OUTLINED_FUNCTION_1_57()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_1_58@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000034, (a1 - 32) | 0x8000000000000000, &a2);
}

uint64_t OUTLINED_FUNCTION_1_62()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_64(uint64_t a1)
{
  *(a1 + 8) = HangUpCallIntentRCHFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:);
  v2 = *(v1 + 152);
  return *(v1 + 104);
}

uint64_t OUTLINED_FUNCTION_1_65()
{
  result = v0;
  *(v2 - 200) = *(v1 + 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_69()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_71()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_72()
{

  return DeviceState.idiom.getter();
}

uint64_t OUTLINED_FUNCTION_1_74()
{

  return OutputGenerationManifest.canUseServerTTS.setter();
}

uint64_t OUTLINED_FUNCTION_1_76()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_78()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_79()
{
  v2 = *(*(v1 - 104) + 8);
  result = v0;
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_80()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_93(uint64_t a1, ...)
{
  va_start(va, a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, (v1 - 32) | 0x8000000000000000, va);
}

void OUTLINED_FUNCTION_1_94(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0xCu);
}

void OUTLINED_FUNCTION_1_96(void *a1)
{

  specialized PhoneStartCallIntent.__allocating_init(intent:isRelationshipRequest:)(a1, 0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_1_97()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_99()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_100(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

id OUTLINED_FUNCTION_1_101(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_1_104()
{
  v1 = *(*(v0 - 120) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_105(uint64_t result)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = result;
  *(v2 - 144) = _NSConcreteStackBlock;
  return result;
}

__n128 *OUTLINED_FUNCTION_1_106(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6F6365526C6C6163;
  result[2].n128_u64[1] = 0xEA00000000006472;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_109()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, v3, v4, v5);
}

void OUTLINED_FUNCTION_1_118()
{
  v2 = *(v1 + 16);
  v3 = *(v0 + 32);
  v4 = *(*(v0 + 24) - 8);
}

uint64_t OUTLINED_FUNCTION_1_119(float a1)
{
  *v2 = a1;
  result = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_121()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_1_126(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  a1[1] = a9;
  a1[2] = a10;
  result = a11;
  a1[3] = a11;
  return result;
}

__n128 *OUTLINED_FUNCTION_1_127(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701667182;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_128()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_1_129(uint64_t result)
{
  if (*(*v1 + 24) > result)
  {
    v2 = *(*v1 + 24);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_130(uint64_t a1, uint64_t a2)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, a2, 0, 0);
}

uint64_t OUTLINED_FUNCTION_1_131()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_1_133(uint64_t a1)
{
  *(a1 + 16) = 0xD000000000000020;
  *(a1 + 24) = v1;

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_1_135()
{
  result = *(v0 - 144);
  v2 = *(*(v0 - 152) + 8);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_136()
{

  return swift_beginAccess();
}

BOOL OSFeatureFlag.wrappedValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  v3 = v1 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 40;
    outlined init with copy of SignalProviding(v2, v7);
    v5 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 == 0;
}

uint64_t DeviceState.requiresAppForFaceTime.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isPhone.getter() & 1) != 0 || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPad.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isPod.getter()) || (OUTLINED_FUNCTION_20_0(), (dispatch thunk of DeviceState.isCarPlay.getter()))
  {
    OUTLINED_FUNCTION_20_0();
    v0 = dispatch thunk of DeviceState.isXRDevice.getter() ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void OUTLINED_FUNCTION_59_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  *(v0 + 16) = 0;
}

void OUTLINED_FUNCTION_24_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  result = v0;
  v3 = *(v1 - 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_24_16()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_32_1(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_24_20()
{

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_125()
{
}

void OUTLINED_FUNCTION_24_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  v24 = v22[284];
  v25 = v22[278];
  v26 = v22[277];
  v27 = a21[273];
  v28 = a21[272];
  v29 = a21[267];
}

void *OUTLINED_FUNCTION_24_29()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_24_30(uint64_t a1)
{
  *(v1 + 208) = a1;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;

  return outlined init with copy of SignalProviding(v2, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_24_31()
{

  return _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0 + 272, v1, v2);
}

void OUTLINED_FUNCTION_24_34()
{
  v1 = v0[263];
  v2 = v0[262];
  v3 = v0[260];
  v4 = v0[258];
}

uint64_t OUTLINED_FUNCTION_24_36(uint64_t a1)
{
  v4 = *(v2 + 40);
  v3[18] = v1;
  v3[21] = a1;
  v3[22] = 0x746E65746E69;
  v3[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_24_37()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_38(float a1)
{
  *v1 = a1;
  *(v2 + 280) = v3;

  return swift_getMetatypeMetadata();
}

void OUTLINED_FUNCTION_24_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void *OUTLINED_FUNCTION_24_42()
{
  v0[2] = 0;
  v1 = v0[3];
  v2 = v0[4];
  return v0 + 2;
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  v2 = *(v0 + 72);
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC24makeNeedsValueContextFor9parameter07SiriKitC00F6UpdateVSSSg_tFZSo8INIntentC_So0Q8ResponseCTt1g5(0x73746361746E6F63, 0xE800000000000000);
}

uint64_t OUTLINED_FUNCTION_23_10()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_23_13()
{
  v5 = *(v0 + 16);
  *(v5 + 16) = v3 + 1;
  v6 = v5 + 16 * v3;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v0 + 16) = v5;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_23_16()
{
  v3 = *(v1 - 224);
  v4 = *(v1 - 216);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v4, (v0 + 240));
}

void *OUTLINED_FUNCTION_23_18(void *a1)
{
  result = __swift_project_boxed_opaque_existential_1(a1, v1);
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_23_24(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

__n128 OUTLINED_FUNCTION_23_25()
{
  v1 = *(v0 + 160);
  *(v0 + 80) = *(v0 + 144);
  *(v0 + 96) = v1;
  result = *(v0 + 176);
  v3 = *(v0 + 192);
  *(v0 + 112) = result;
  *(v0 + 128) = v3;
  return result;
}

void OUTLINED_FUNCTION_61_3(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = v8;
  *(v9 + 98) = a7;
  *(v9 + 32) = a5;
  *(v9 + 40) = a6;
  *(v9 + 97) = a4;
}

void OUTLINED_FUNCTION_23_32(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  v3 = *(v2 + 16);
  v2 += 16;
  v4 = a1 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
  v5 = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_23_33()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_23_34()
{
  v2 = *(v0 - 352);
}

void OUTLINED_FUNCTION_23_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_23_45(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 96);
  return *(v2 + 56);
}

uint64_t outlined init with copy of AnnotatedApp?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AnnotatedApp(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t outlined copy of AnnotatedApp?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AnnotatedApp(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of AnnotatedApp?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t AnnotatedApp.description.getter()
{
  *&v18 = 0;
  *(&v18 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(102);
  v17 = v18;
  v1._object = 0x8000000000457570;
  v1._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v1);
  *&v18 = *v0;
  type metadata accessor for App();
  OUTLINED_FUNCTION_2_18();
  lazy protocol witness table accessor for type App and conformance App(v2, v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000014;
  v5._object = 0x8000000000457590;
  String.append(_:)(v5);
  v6 = *(v0 + 8);
  v7._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x68636E75616C202CLL;
  v8._object = 0xEC000000203A6449;
  String.append(_:)(v8);
  v18 = *(v0 + 16);
  v16[1] = *(v0 + 16);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(&v18, v16, &_sSSSgMd, &_sSSSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x656372756F73202CLL;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = AppResolutionSource.description.getter(*(v0 + 32));
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000020;
  v12._object = 0x80000000004575B0;
  String.append(_:)(v12);
  v13 = *(v0 + 40);
  v14._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v14);

  return v17;
}

uint64_t OUTLINED_FUNCTION_2_15()
{
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 248) + 64);
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v4 + 32);
  return v3;
}

void OUTLINED_FUNCTION_2_20(uint64_t a1@<X8>)
{
  v1[15] = a1;
  v1[16] = 0x69616D6563696F76;
  v1[17] = 0xE90000000000006CLL;
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

uint64_t OUTLINED_FUNCTION_2_27()
{
}

uint64_t OUTLINED_FUNCTION_2_30()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

uint64_t OUTLINED_FUNCTION_2_33()
{
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v7 = v0[46];
  v6 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[43];
  v11 = v0[40];
  v13 = v0[37];
  v14 = v0[36];
  v15 = v0[33];
}

void OUTLINED_FUNCTION_2_34()
{
  v1 = v0[82];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[74];
}

uint64_t OUTLINED_FUNCTION_2_35()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = *(v0[26] + 8);
  return v0[27];
}

uint64_t OUTLINED_FUNCTION_2_37()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_39()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = *(v0[22] + 8);
  return v0[23];
}

uint64_t OUTLINED_FUNCTION_2_40()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_2_43()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);

  return ConfirmationViewTemplate.Button.asConfirmationOption.getter();
}

uint64_t OUTLINED_FUNCTION_2_51()
{
  v2 = v0[707];
  v3 = v0[701];
  v4 = v0[689];
  v5 = v0[677];
  v6 = v0[659];
  v7 = v0[641];
  v8 = v0[635];
  v9 = v0[623];
  v10 = v0[617];
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{
  *v2 = a1;

  return outlined init with copy of SignalProviding(v1, a1 + 40);
}

uint64_t OUTLINED_FUNCTION_2_53()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_55()
{

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_2_59()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_67@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_2_69@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[6] = a2;
  v2[9] = result;
  v2[10] = 0x6143746567726174;
  v2[11] = 0xEA00000000006C6CLL;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_72(float a1)
{
  *v2 = a1;
  result = v1[45];
  v4 = v1[46];
  v5 = v1[47];
  v6 = v1[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_73()
{
  result = v0;
  v3 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_77()
{
  result = v0[287];
  v2 = v0[286];
  v3 = v0[284];
  v4 = v0[283];
  v5 = v0[282];
  v6 = v0[281];
  v7 = v0[280];
  v8 = v0[276];
  v9 = v0[273];
  v10 = v0[272];
  v11 = v0[271];
  v12 = v0[270];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_78()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  __swift_destroy_boxed_opaque_existential_1(v0 + 51);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1((v2 - 128));
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  return outlined init with copy of SignalProviding(v1 + 160, (v0 + 26));
}

uint64_t OUTLINED_FUNCTION_2_80()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_82()
{
  *(v0 - 184) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 160) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
}

uint64_t OUTLINED_FUNCTION_2_83()
{
  v3 = *(v2 + 16);
  result = v1;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_84()
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_2_90()
{
  v1 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_91()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_2_94()
{
  v1 = v0[263];
  v2 = v0[262];
  v3 = v0[259];
  v4 = v0[256];
  v5 = v0[254];
  v6 = v0[252];
  v7 = v0[249];
  v8 = v0[248];
  __swift_destroy_boxed_opaque_existential_1(v0 + 167);
}

void OUTLINED_FUNCTION_2_96(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_98()
{
  v2 = *(v1 - 172) & 1;
  v3 = *(v1 - 216);
  v8 = *(v1 - 188) & 1;
  result = v0;
  v5 = *(v1 - 168);
  v6 = *(v1 - 152);
  v7 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_99()
{
}

id OUTLINED_FUNCTION_2_100(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_2_102(uint64_t result)
{
  *(v2 - 120) = v1;
  *(v2 - 112) = result;
  *(v2 - 152) = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_103()
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_2_105(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v3 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_111()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_112()
{
  *(v1 + 8) = ChainedIntentResolver.resolve(skIntent:nlIntent:);
  v3 = *(v2 + 344);
  v4 = *(v2 + 320);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_115(unint64_t *a1)
{

  return lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_2_116()
{

  return specialized StartAudioCallCatTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_2_117()
{

  return SpeakableString.init(print:speak:)();
}

__n128 OUTLINED_FUNCTION_2_119(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a17)
{
  a1[1] = a15;
  a1[2] = a16;
  result = a17;
  a1[3] = a17;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_120(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = _NSConcreteStackBlock;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_121()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_2_124()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[50];
  v5 = v0[51];
  v7 = v0[48];
  v8 = v0[44];
  v9 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
}

uint64_t OUTLINED_FUNCTION_2_125()
{
  v2 = *(v0 + 48);

  return outlined destroy of UnsupportedFlowSearchCallHistoryParameters();
}

uint64_t lazy protocol witness table accessor for type App and conformance App(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s17SiriAppResolution0B0CACs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t SharedGlobalsProviding.appResolutionProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = static AppResolutionProvider.instance;
  a1[3] = type metadata accessor for AppResolutionProvider();
  a1[4] = &protocol witness table for AppResolutionProvider;
  *a1 = v2;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin12AnnotatedAppVGMd, &_ss17_NativeDictionaryVySS27PhoneCallFlowDelegatePlugin12AnnotatedAppVGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56) + 48 * v16;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 24);
    v26 = *(v22 + 40);
    v27 = a1[1];
    *v22 = *a1;
    *(v22 + 16) = v27;
    *(v22 + 32) = a1[2];
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v21);
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  OUTLINED_FUNCTION_0_16();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t OUTLINED_FUNCTION_43_5()
{

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{

  return static CommonOutputs.genericError(sharedGlobals:startCallCATsSimple:)((v2 + v1), a1);
}

void OUTLINED_FUNCTION_43_10()
{
  v2 = v0[108];
  v3 = v0[105];
  v4 = v0[103];
  v5 = v0[102];
}

void *OUTLINED_FUNCTION_43_11()
{
  v1 = v0[10];
  result = __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  v3 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_16(void *a1)
{
  a1[2] = v4;
  a1[3] = v1;
  a1[4] = v3;
  a1[5] = v2;

  return OutputGenerationManifest.init(dialogPhase:_:)();
}

uint64_t OUTLINED_FUNCTION_43_17()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43_22(uint64_t a1, ...)
{
  va_start(va, a1);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, va);
}

uint64_t OUTLINED_FUNCTION_43_29()
{

  return specialized StartVideoCallTemplatingService.init(sharedGlobals:catFamily:displayTextCats:phoneCallCommonCats:appInfoBuilder:)(v4, v3, v2, v1, v7, v0, v5, v6);
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_35_7()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 2, v0);
}

uint64_t OUTLINED_FUNCTION_35_13(uint64_t a1)
{
  *(a1 + 8) = PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:);
  v2 = *(v1 + 136);
  return *(v1 + 96);
}

uint64_t OUTLINED_FUNCTION_35_18()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_35_19()
{

  return swift_once();
}

void *OUTLINED_FUNCTION_35_22(void *a1, uint64_t a2)
{
  result = __swift_project_boxed_opaque_existential_1(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

void OUTLINED_FUNCTION_35_25()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

__n128 *OUTLINED_FUNCTION_35_26(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x74616E6974736564;
  result[2].n128_u64[1] = 0xEF657079546E6F69;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_27()
{

  return SpeakableString.init(print:speak:)();
}

uint64_t OUTLINED_FUNCTION_35_28()
{
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v6 = v0[63];
  v5 = v0[64];
  v8 = v0[59];
  v7 = v0[60];
}

uint64_t *OUTLINED_FUNCTION_35_31()
{
  v1 = v0[5];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[11] = v1;
  v0[12] = v2;

  return __swift_allocate_boxed_opaque_existential_1(v0 + 8);
}

void *StartAudioCallDirectAction.startCallIntent.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  if (v0[5] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v4 = v0[4];
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = INIntentCreate();

  if (v5 && (v6 = v5, v2 = _sSo8INIntentC27PhoneCallFlowDelegatePluginE5typed2asxSgxm_tABRbzlFSo07INStartC6IntentC_Ttg5Tm(INStartCallIntent_ptr), v6, v2))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.siriPhone);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_65_0();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "#StartAudioCallDirectAction Received INStartCallIntent from directAction", v10, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v5 = v6;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_51_0(v13))
    {
      v14 = OUTLINED_FUNCTION_65_0();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v2, "#StartAudioCallDirectAction Didn't receive initial siriKitIntent, using default INStartCallIntent", v14, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v15 = objc_allocWithZone(INStartCallIntent);
    v2 = @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(0, 0, 0, 1, 1, 0, 0, 1);
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_48_6()
{
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v1 + 16);
  return v2;
}

uint64_t OUTLINED_FUNCTION_48_7()
{

  return outlined consume of HintInstance?(v1, v0);
}

void OUTLINED_FUNCTION_48_8()
{

  SKTransformer.convertToSKIntent<A>(ofType:input:rchFlowContext:)();
}

uint64_t OUTLINED_FUNCTION_48_9()
{
  result = 1;
  v2 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_48_11()
{

  return Loggable.init(wrappedValue:)();
}

uint64_t OUTLINED_FUNCTION_93_0()
{

  return String.hash(into:)();
}

id OUTLINED_FUNCTION_48_21(void *a1, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *a1 = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_48_22()
{
  v2 = *(v0 + 48);

  return outlined destroy of SearchCallHistoryReadCannotFindCallRecordParameters();
}

uint64_t OUTLINED_FUNCTION_48_23()
{
  v2 = v0[57];
  v3 = v0[58];
  v4 = v0[56];
  v5 = v0[52];

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_48_24()
{

  return String.init<A>(describing:)();
}

id @nonobjc INStartCallIntent.init(callRecordFilter:callRecordToCallBack:audioRoute:destinationType:preferredCallProvider:contacts:ttyType:callCapability:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a6)
  {
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v18 = [v9 initWithCallRecordFilter:a1 callRecordToCallBack:a2 audioRoute:a3 destinationType:a4 preferredCallProvider:a5 contacts:v17.super.isa ttyType:a7 callCapability:a8];

  return v18;
}

void INIntent.setMetaData(app:previousIntent:sharedGlobals:)(uint64_t a1, id a2, void *a3)
{
  v4 = v3;
  v7 = [a2 _metadata];
  if (!v7)
  {
    v7 = [v3 _metadata];
    if (!v7)
    {
      v7 = [objc_allocWithZone(_INPBIntentMetadata) init];
    }
  }

  v8 = v7;
  [v4 _setMetadata:v7];

  v9 = outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v4, &selRef_intentId);
  v11 = specialized Optional<A>.isNilOrEmpty.getter(v9, v10);

  if (v11)
  {
    v12 = [v4 _metadata];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for SiriEnvironment();
      v14 = static SiriEnvironment.forCurrentTask.getter();
      v15 = v14;
      if (v14)
      {
        SiriEnvironment.flowTask.getter();

        dispatch thunk of FlowTaskProvider.id.getter();
        v17 = v16;

        if (v17)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }
      }

      OUTLINED_FUNCTION_59_6(v14, "setIntentId:");
    }
  }

  INIntent.setPeerInfoMetadata(sharedGlobals:)(a3);
  v18 = a3[3];
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v18);
  (*(v19 + 8))(v41, v18, v19);
  INIntent.setDeviceMetadata(from:)(v41);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v20);
  (*(v21 + 152))(v38, v20, v21);
  v22 = v39;
  v23 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  if (a1)
  {
    v24 = App.appIdentifier.getter();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  (*(v23 + 16))(v41, v24, v26, v22, v23);

  __swift_destroy_boxed_opaque_existential_1(v38);
  INIntent.setAppMetadata(from:cachedApp:)(a1, v41);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logger.siriPhone);
  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x800000000045C1E0, v38);
    *(v31 + 12) = 2080;
    v32 = [v28 _metadata];
    if (v32 && (v33 = v32, v34 = [v32 dictionaryRepresentation], v33, v34))
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    Dictionary._bridgeToObjectiveC()();

    v35 = String.init<A>(describing:)();
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v38);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_0, v29, v30, "#INIntent %s: %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_26_0();
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v41, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMd, &_s27PhoneCallFlowDelegatePlugin12AnnotatedAppVSgMR);
}

uint64_t outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_70_1();
  }

  return OUTLINED_FUNCTION_19_0();
}

uint64_t specialized Optional<A>.isNilOrEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t OUTLINED_FUNCTION_61_7()
{
  v2 = v0[44];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[21];
  v5 = v0[22];
}

uint64_t OUTLINED_FUNCTION_61_12()
{
  *(v0 + 144) = v1;

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_61_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_61_15()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_61_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_61_20()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0 + 16;
}

uint64_t OUTLINED_FUNCTION_61_21()
{
  v2 = *(v0 + 56);

  return outlined destroy of StartCallConfirmContactsParameters();
}

void OUTLINED_FUNCTION_61_22(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v3 + 16);
  v3 += 16;
  *(v2 - 160) = v1;
  *(v2 - 152) = v4;
  v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v6 = *(v3 + 56);
}

uint64_t INIntent.setPeerInfoMetadata(sharedGlobals:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 24))(v23, v3, v4);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  dispatch thunk of AceServiceInvoker.peerInfo()();
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getIdsIdentifier()();
  if (v5 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceIDSIdentifier), v6))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v1 _setOriginatingDeviceIdsIdentifier:v7];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getRapportEffectiveIdentifier()();
  if (v8 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceRapportEffectiveIdentifier), v9))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v1 _setOriginatingDeviceRapportEffectiveIdentifier:v10];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  dispatch thunk of PeerInfoProviding.getMediaSystemIdentifier()();
  if (v11 || (outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v1, &selRef__originatingDeviceRapportMediaSystemIdentifier), v12))
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v1 _setOriginatingDeviceRapportMediaSystemIdentifier:v13];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v14 = [objc_allocWithZone(NSNumber) initWithBool:dispatch thunk of PeerInfoProviding.isOwnedByCurrentUser()() & 1];
  [v2 _setIsOwnedByCurrentUser:v14];

  __swift_project_boxed_opaque_existential_1(v24, v25);
  v15 = dispatch thunk of PeerInfoProviding.getMediaRouteIdentifier()();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = outlined bridged method (pb) of @objc INIntent.airPlayRouteIds.getter(v2);
    if (v19 && (v20 = *(v19 + 16), , v20))
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_424FD0;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      outlined bridged method (mbnn) of @objc INIntent.airPlayRouteIds.setter(v21, v2);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void INIntent.setDeviceMetadata(from:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  [v2 _setPrimaryDisplayDisabled:{DeviceState.isPrimaryDisplayDisabled.getter(v4, v5) & 1}];
  v6 = [v2 _metadata];
  if (v6)
  {
    v7 = v6;
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    [v7 setIdiom:DeviceState.idiom.getter()];
  }

  v9 = [v2 _metadata];
  if (v9 && (v10 = v9, v11 = [v9 triggerMethod], v10, v11))
  {
    v13 = [v2 _metadata];
    [v13 setTriggerMethod:v11];
  }

  else
  {
    v13 = [v2 _metadata];
    if (!v13)
    {
      return;
    }

    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    [v13 setTriggerMethod:DeviceState.triggerMethod.getter()];
  }
}

uint64_t DeviceState.isAnyCar.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_24_3();
  if (v6())
  {
    return 1;
  }

  v7 = OUTLINED_FUNCTION_20_0();
  if (a4(v7))
  {
    return 1;
  }

  v9 = OUTLINED_FUNCTION_20_0();

  return a5(v9);
}

uint64_t DeviceState.idiom.getter()
{
  OUTLINED_FUNCTION_24_3();
  if (dispatch thunk of DeviceState.isMac.getter())
  {
    return 7;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isPad.getter())
  {
    return 2;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isWatch.getter())
  {
    return 3;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isHomePod.getter())
  {
    return 4;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isCarPlay.getter())
  {
    return 5;
  }

  OUTLINED_FUNCTION_20_0();
  if (dispatch thunk of DeviceState.isAppleTV.getter())
  {
    return 6;
  }

  else
  {
    return 1;
  }
}

uint64_t DeviceState.triggerMethod.getter()
{
  v0 = type metadata accessor for InputOrigin();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  dispatch thunk of DeviceState.inputOrigin.getter();
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_20_0();
  v9 = v8(v7);
  if (v9 == enum case for InputOrigin.homeButton(_:))
  {
    return 10;
  }

  if (v9 == enum case for InputOrigin.remoteButton(_:))
  {
    return 20;
  }

  if (v9 == enum case for InputOrigin.voiceTrigger(_:))
  {
    return 30;
  }

  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_20_0();
  v13(v12);
  return 0;
}

double protocol witness for AppResolutionProviding.get(appId:) in conformance AppResolutionProvider@<D0>(_OWORD *a1@<X8>)
{
  (*(**v1 + 192))(v5);
  v3 = v5[1];
  *a1 = v5[0];
  a1[1] = v3;
  result = *&v6;
  a1[2] = v6;
  return result;
}

uint64_t AppResolutionProvider.annotatedApps.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

void AppResolutionProvider.get(appId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a2)
  {
    v7 = (*(*v3 + 104))();
    specialized Dictionary.subscript.getter(a1, a2, v7, v18);
    v16 = v18[1];
    v17 = v18[0];
    v15 = v18[2];

    v9 = v15;
    v8 = v16;
    v10 = v17;
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.siriPhone);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_0, v12, v13, "#AppResolution could not retrieve annotated app with an app identifier nil", v14, 2u);
    }

    v10 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a3 = v10;
  a3[1] = v8;
  a3[2] = v9;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 48 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    v11 = *(v7 + 16);
    v10 = *(v7 + 24);
    v12 = *(v7 + 32);
    v13 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a4 = v8;
  a4[1] = v9;
  a4[2] = v11;
  a4[3] = v10;
  a4[4] = v12;
  a4[5] = v13;
  return result;
}

void outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

void INIntent.setAppMetadata(from:cachedApp:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[3];
    if (v6)
    {
      v7 = a2[2];
      v8 = a2[3];

LABEL_6:
      outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v7, v6, v3, &selRef__setLaunchId_);
      goto LABEL_7;
    }
  }

  if (!a1)
  {

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = App.appIdentifier.getter();
  v6 = v9;

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v10 = App.systemExtensionBundleId.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
LABEL_13:
    outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v12, v13, v3, &selRef__setExtensionBundleId_);
    goto LABEL_14;
  }

LABEL_11:
  if (!a1)
  {

    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v12 = App.systemExtensionBundleId.getter();
  v13 = v14;

  if (v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (!v5)
  {
    goto LABEL_18;
  }

LABEL_15:
  v15 = App.systemUIExtensionBundleId.getter();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
LABEL_20:
    outlined bridged method (mbnn) of @objc INIntent._uiExtensionBundleId.setter(v17, v18, v3, &selRef__setUiExtensionBundleId_);
    return;
  }

LABEL_18:
  if (a1)
  {
    v17 = App.systemUIExtensionBundleId.getter();
    v18 = v19;

    if (!v18)
    {
      return;
    }

    goto LABEL_20;
  }
}

void *specialized AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:)(_OWORD *a1)
{
  v2 = v1;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v12, v11, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo07INStartbG0CGMR);
  swift_allocObject();
  v4 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v11);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v2[2] = v4;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v5 = swift_allocObject();
  v2[3] = v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5 + 16, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo07INStartB6IntentCGGMR);
  v6 = swift_allocObject();
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v12[2];
  v2[7] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v2[8] = v6;
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v8;
  return v2;
}

{
  v2 = v1;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(v12, v11, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMd, &_s27PhoneCallFlowDelegatePlugin31AnyIntentCarPlayRCHFlowProviderCySo012INStartAudiobG0CGMR);
  swift_allocObject();
  v4 = specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(v11);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v2[2] = v4;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v5 = swift_allocObject();
  v2[3] = v5;
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v5 + 16, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v12, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMd, &_s27PhoneCallFlowDelegatePlugin026DefaultCarPlayDirectActionC8StrategyVyAA0gH15RCHFlowProviderVySo012INStartAudioB6IntentCGGMR);
  v6 = swift_allocObject();
  v7 = v12[1];
  v6[1] = v12[0];
  v6[2] = v7;
  v6[3] = v12[2];
  v2[7] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[8] = v6;
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  v2[9] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayDirectActionFlowStrategy.init<A>(_:);
  v2[10] = v8;
  return v2;
}

void *specialized AnyIntentCarPlayRCHFlowProvider.init<A>(_:)(_OWORD *a1)
{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v8, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo07INStartB6IntentCGMR);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v3[3] = v8[2];
  v1[2] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[3] = v3;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v5[3] = a1[2];
  v1[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[5] = v5;
  return v1;
}

{
  outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, v8, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMd, &_s27PhoneCallFlowDelegatePlugin22CarPlayRCHFlowProviderVySo012INStartAudioB6IntentCGMR);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v3[3] = v8[2];
  v1[2] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[3] = v3;
  v5 = swift_allocObject();
  v6 = a1[1];
  v5[1] = *a1;
  v5[2] = v6;
  v5[3] = a1[2];
  v1[4] = partial apply for specialized implicit closure #4 in implicit closure #3 in AnyIntentCarPlayRCHFlowProvider.init<A>(_:);
  v1[5] = v5;
  return v1;
}

uint64_t specialized CarPlayDirectInvocationFlow.init(app:intent:strategy:sharedGlobals:preferPrintingDialogOnDisplayMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v12 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v12, static Logger.siriPhone);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_65_0();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "#Gatekeeper Initialized GatekeeperLegacyCallingIntentFlow", v15, 2u);
    OUTLINED_FUNCTION_26_0();
  }

  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  outlined init with take of PhoneCallFeatureFlagProviding(a4, v6 + 40);
  *(v6 + 80) = a5 & 1;
  return v6;
}

uint64_t lazy protocol witness table accessor for type CarPlayDirectInvocationFlow<INStartAudioCallIntent> and conformance CarPlayDirectInvocationFlow<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t protocol witness for Flow.execute() in conformance CarPlayDirectInvocationFlow<A>(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t CarPlayDirectInvocationFlow.execute()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(CarPlayDirectInvocationFlow.execute(), 0, 0);
}

uint64_t CarPlayDirectInvocationFlow.execute()()
{
  v1 = v0[8];
  if (*(v1 + 80) == 1)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.siriPhone);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#CarPlayDirectInvocationFlow set preferPrintingDialogOnDisplayMode in the sharedGlobals to true", v5, 2u);
    }

    v6 = v0[8];

    v7 = v6[8];
    v8 = v6[9];
    __swift_project_boxed_opaque_existential_1(v6 + 5, v7);
    v9 = (*(v8 + 248))(v7, v8);
    (*(*v9 + 112))(v9);

    v1 = v0[8];
  }

  v10 = v0[9];
  v11 = *(v1 + 32);
  v12 = *(v1 + 16);
  (*(*v11 + 136))(v12);
  v13 = type metadata accessor for NLContextUpdate();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v13);
  v15 = v0[9];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NLContextUpdate?(v0[9]);
  }

  else
  {
    v16 = v0[8];
    v17 = NLContextUpdate.toAceContextUpdate()();
    (*(*(v13 - 8) + 8))(v15, v13);
    v18 = v16[8];
    v19 = v16[9];
    __swift_project_boxed_opaque_existential_1(v16 + 5, v18);
    (*(v19 + 32))(v18, v19);
    v20 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    AceServiceInvokerAsync.submitAndForget(_:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v21 = v0[9];
  v22 = v0[7];
  (*(*v11 + 128))(v12, *(v0[8] + 24));
  static ExecuteResponse.complete(next:)();

  v23 = v0[1];

  return v23();
}

uint64_t specialized DefaultCarPlayDirectActionFlowStrategy.makeNLContextUpdate(app:)()
{
  if (App.isFirstParty()())
  {
    v0 = type metadata accessor for MachineUtteranceBuilder();
    v1 = *(v0 + 48);
    v2 = *(v0 + 52);
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_7_22();

    type metadata accessor for AppOntologyNode();
    static AppOntologyNode.applicationIdNode.getter();
    TerminalOntologyNode.name.getter();

    dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  }

  else
  {
    App.appIdentifier.getter();
    v3 = type metadata accessor for MachineUtteranceBuilder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_7_22();

    type metadata accessor for AppOntologyNode();
    static AppOntologyNode.applicationIdNode.getter();
    TerminalOntologyNode.name.getter();

    dispatch thunk of MachineUtteranceBuilder.addMappingIfPresent(node:value:)();
  }

  NLContextUpdate.init()();
  dispatch thunk of MachineUtteranceBuilder.build()();
  NLContextUpdate.nlInput.setter();

  type metadata accessor for NLContextUpdate();
  v6 = OUTLINED_FUNCTION_10_28();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.makeNLContextUpdate(app:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  return v1();
}

uint64_t specialized CarPlayRCHFlowProvider.makeRCHFlow(app:intent:)()
{
  v2 = v0;
  v3 = type metadata accessor for CATOption();
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_8_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v8 = OUTLINED_FUNCTION_21(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)();
  if (v13)
  {
    v14 = v13;
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v15 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v15, static Logger.siriPhone);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      *OUTLINED_FUNCTION_65_0() = 0;
      OUTLINED_FUNCTION_33(&dword_0, v18, v19, "#CarPlayRCHFlowProvider makeRCHFlow(app, intent): RCHFlow found");
      OUTLINED_FUNCTION_26_0();
    }
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v20 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v20, static Logger.siriPhone);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_65_0();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "#CarPlayRCHFlowProvider: makeRCHFlow(app, intent): no RCHFlow found", v23, 2u);
      OUTLINED_FUNCTION_26_0();
    }

    v24 = type metadata accessor for Parse();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v24);
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    v25 = CATWrapperSimple.__allocating_init(options:globals:)();
    v26 = static CommonOutputs.conversionError(sharedGlobals:parse:startCallCATsSimple:)((v2 + 8), v12, v25);

    v27 = outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v12, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    (*(*v26 + 112))(v27);
    OUTLINED_FUNCTION_15_23();
    v29[1] = v1;
    type metadata accessor for SimpleOutputFlowAsync();
    v14 = Flow.eraseToAnyFlow()();
  }

  return v14;
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.makeRCHFlow(app:skIntent:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

void static PhoneCallFlowFactory.makeRCHFlow(app:intent:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v221 = v2;
  v222 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_27_3();
  v202 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMR);
  OUTLINED_FUNCTION_21(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_27_3();
  v212 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  v16 = OUTLINED_FUNCTION_7(v15);
  v205 = v17;
  v206 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_27_3();
  v211 = v21;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v204);
  v210 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v25);
  OUTLINED_FUNCTION_27_3();
  v203 = v26;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR);
  OUTLINED_FUNCTION_23_1(v209);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v29);
  OUTLINED_FUNCTION_94_5();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v30);
  v208 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  v36 = &v199 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartVideoCallIntentCSo0ghiJ8ResponseCGMR);
  OUTLINED_FUNCTION_7(v37);
  v207 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v41);
  v43 = &v199 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR);
  OUTLINED_FUNCTION_23_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v47);
  v49 = &v199 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
  v51 = OUTLINED_FUNCTION_7(v50);
  v216 = v52;
  v217 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v55);
  OUTLINED_FUNCTION_27_3();
  v218 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo22INStartAudioCallIntentCSo0ghiJ8ResponseCGMR);
  v58 = OUTLINED_FUNCTION_7(v57);
  v214 = v59;
  v215 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v62);
  v64 = &v199 - v63;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR);
  OUTLINED_FUNCTION_23_1(v213);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v67);
  OUTLINED_FUNCTION_27_3();
  v219 = v68;
  OUTLINED_FUNCTION_15_0();
  v69 = type metadata accessor for CATOption();
  v70 = OUTLINED_FUNCTION_21(v69);
  v72 = *(v71 + 64);
  __chkstk_darwin(v70);
  OUTLINED_FUNCTION_4();
  v220 = v74 - v73;
  objc_opt_self();
  v75 = swift_dynamicCastObjCClass();
  if (v75)
  {
    v212 = v75;
    v76 = v221;
    outlined init with copy of SignalProviding(v221, &v226);
    v77 = one-time initialization token for instance;
    v78 = v222;

    if (v77 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v79 = static BiomeEventSender.instance;
    v80 = type metadata accessor for StartAudioCallRCHFlowDelegate();
    OUTLINED_FUNCTION_12_8(v80);
    swift_allocObject();
    OUTLINED_FUNCTION_109();

    v211 = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v226, v78, v79, v77, &direct field offset for StartAudioCallRCHFlowDelegate.sharedGlobals, &direct field offset for StartAudioCallRCHFlowDelegate.appResolved, &direct field offset for StartAudioCallRCHFlowDelegate.biomeEventSender);
    outlined init with copy of SignalProviding(v76, &v226);
    type metadata accessor for PhoneCallDisplayTextCATsSimple();
    static CATOption.defaultMode.getter();
    CATWrapperSimple.__allocating_init(options:globals:)();
    OUTLINED_FUNCTION_47_4();
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    v81 = CATWrapperSimple.__allocating_init(options:globals:)();
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v82 = swift_allocObject();
    outlined init with take of SPHConversation(&v226, (v82 + 2));
    v82[7] = v78;
    v82[8] = v79;
    v82[9] = v81;
    v83 = v219;
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5AudiobmD0C_Tt2g5();
    v84 = v76[3];
    v85 = v76[4];
    __swift_project_boxed_opaque_existential_1(v76, v84);
    OUTLINED_FUNCTION_33_16();
    v86(v84, v85);
    v87 = v227;
    v88 = v228;
    __swift_project_boxed_opaque_existential_1(&v226, v227);
    v225[0] = v82;
    (*(v214 + 16))(v64, v83 + *(v213 + 36), v215);
    (*(v216 + 16))(v218, v83, v217);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartAudioCallIntentCSo0fghI8ResponseCGMR);
    OUTLINED_FUNCTION_12_8(v89);
    swift_allocObject();
    OUTLINED_FUNCTION_19_7();
    v90 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v91 = v78;
    v92 = v88[1];
    OUTLINED_FUNCTION_4_54();
    v94 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v93, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartAudiobG0CSo0jkbG8ResponseCGMR);
    v95 = v92(v225, v90, v91, v212, v220, v94, v87, v88);

    v225[0] = v95;
    OUTLINED_FUNCTION_107_2();
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v96, v97, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartAudioCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_5();

    v98 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMd;
    v99 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartAudioB6IntentCSo0ijbK8ResponseCGMR;
    v100 = v83;
    goto LABEL_9;
  }

  v215 = v44;
  v216 = v37;
  v217 = v43;
  v218 = v30;
  v219 = v36;
  v102 = v209;
  v101 = v210;
  v201 = v49;
  v103 = v211;
  v104 = v212;
  v105 = v0;
  v106 = v221;
  objc_opt_self();
  v107 = swift_dynamicCastObjCClass();
  if (v107)
  {
    v214 = v107;
    v108 = v106;
    outlined init with copy of SignalProviding(v106, &v226);
    v109 = one-time initialization token for instance;
    v110 = v222;

    if (v109 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v111 = static BiomeEventSender.instance;
    v112 = type metadata accessor for StartVideoCallRCHFlowDelegate();
    OUTLINED_FUNCTION_12_8(v112);
    swift_allocObject();
    OUTLINED_FUNCTION_19_7();

    v213 = specialized StartAudioCallRCHFlowDelegate.init(sharedGlobals:appResolved:biomeEventSender:)(&v226, v110, v111, v109, &direct field offset for StartVideoCallRCHFlowDelegate.sharedGlobals, &direct field offset for StartVideoCallRCHFlowDelegate.appResolved, &direct field offset for StartVideoCallRCHFlowDelegate.biomeEventSender);
    outlined init with copy of SignalProviding(v108, &v226);
    type metadata accessor for PhoneCallDisplayTextCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_38_2();
    v113 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for StartCallCATsSimple();
    OUTLINED_FUNCTION_47_5();
    OUTLINED_FUNCTION_38_2();
    v114 = CATWrapperSimple.__allocating_init(options:globals:)();
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v115 = swift_allocObject();
    outlined init with take of SPHConversation(&v226, (v115 + 2));
    v115[7] = v110;
    v115[8] = v113;
    v115[9] = v114;
    v116 = v201;
    OUTLINED_FUNCTION_69();
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0i5VideobmD0C_Tt2g5();
    v117 = *(v108 + 24);
    v118 = *(v108 + 32);
    v119 = OUTLINED_FUNCTION_93_5();
    __swift_project_boxed_opaque_existential_1(v119, v120);
    OUTLINED_FUNCTION_33_16();
    v121(v117, v118);
    v122 = v227;
    v123 = v228;
    __swift_project_boxed_opaque_existential_1(&v226, v227);
    v225[0] = v115;
    (*(v207 + 16))(v217, &v116[*(v215 + 36)], v216);
    (*(v208 + 16))(v219, v116, v218);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo22INStartVideoCallIntentCSo0fghI8ResponseCGMR);
    OUTLINED_FUNCTION_12_8(v124);
    swift_allocObject();
    OUTLINED_FUNCTION_61();
    v125 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v126 = v123[1];
    OUTLINED_FUNCTION_4_54();
    v128 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v127, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo012INStartVideobG0CSo0jkbG8ResponseCGMR);
    v129 = v126(v225, v125, v110, v214, v220, v128, v122, v123);

    v225[0] = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v130, v131, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo22INStartVideoCallIntentCSo0hijK8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_5();

    v98 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMd;
    v99 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So012INStartVideoB6IntentCSo0ijbK8ResponseCGMR;
    v100 = v201;
    goto LABEL_9;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    v132 = v106;
    v133 = v106[3];
    v134 = v106[4];
    __swift_project_boxed_opaque_existential_1(v132, v133);
    v135 = *(v134 + 8);
    v136 = OUTLINED_FUNCTION_61();
    v137(v136, v134);
    type metadata accessor for AnswerCallCATsSimple();
    OUTLINED_FUNCTION_85_3();
    v138 = OUTLINED_FUNCTION_88_4();
    v231 = &type metadata for AudioSessionManager;
    v232 = &protocol witness table for AudioSessionManager;
    v233 = &type metadata for EntitlementChecker;
    v234 = &protocol witness table for EntitlementChecker;
    v227 = v4;
    *&v226 = v138;
    v228 = &protocol witness table for AnswerCallCATsSimple;
    v229 = 0;
    v230 = 0;
    outlined init with copy of AnswerCallOutputStrategy(&v226, v225);
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo08INAnswerB6IntentC_So08INAnswerB14IntentResponseCTt3g5Tf4ennn_nAA06AnswerbtU0V_Tg5();
    outlined init with copy of SignalProviding(v132, &v224);
    outlined init with copy of AnswerCallOutputStrategy(v225, v223);

    OUTLINED_FUNCTION_43_3();
    _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo08INAnswerB6IntentC_So0xbY8ResponseCTt3g5Tf4nnen_nAA06AnswerbtU0V_Tg5();
    v140 = v139;
    outlined destroy of AnswerCallOutputStrategy(v225);
    v225[0] = v140;
    OUTLINED_FUNCTION_107_2();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type IncomingCallFlow<INAnswerCallIntent, INAnswerCallIntentResponse> and conformance PhoneFlow<A, B>, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo08INAnswerB6IntentCSo0gbH8ResponseCGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    outlined destroy of AnswerCallOutputStrategy(&v226);
LABEL_18:

    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    static PhoneCallFlowFactory.makeHangUpCallRCHFlow(intent:app:sharedGlobals:)();
    *&v226 = v141;
    v142 = &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMd;
    v143 = &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo18INHangUpCallIntentCSo0hijK8ResponseCGGMR;
    OUTLINED_FUNCTION_107_2();
    v144 = &lazy protocol witness table cache variable for type AnyValueFlow<RCHFlowResult<INHangUpCallIntent, INHangUpCallIntentResponse>> and conformance AnyValueFlow<A>;
LABEL_17:
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v144, v142, v143);
    Flow.eraseToAnyFlow()();
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_47_4();
    type metadata accessor for IdentifyIncomingCallerCATsSimple();
    OUTLINED_FUNCTION_85_3();
    v145 = OUTLINED_FUNCTION_88_4();
    v227 = v4;
    *&v226 = v145;
    v228 = &protocol witness table for IdentifyIncomingCallerCATsSimple;
    v229 = 0;
    v230 = 0;
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO012makeIncomingB7RCHFlow8strategy6intent3app13sharedGlobals07SiriKitC008AnyValueC0CyAI0I6ResultOyxq_GGAA0hbC14OutputStrategy_p_x0O13AppResolution0V0CAA06SharedN9Providing_ptSo8INIntentCRbzAA0hB14IntentResponseR_r0_lFZSo010INIdentifyH12CallerIntentC_So010INIdentifyH20CallerIntentResponseCTt3g5Tf4ennn_nAA08Identifyh6CallertU0V_Tg5(&v226, v0, v222, v106);
    outlined init with copy of SignalProviding(v106, v223);
    outlined init with copy of IdentifyIncomingCallerOutputStrategy(&v226, v225);

    v146 = OUTLINED_FUNCTION_43_3();
    v150 = _s27PhoneCallFlowDelegatePlugin08IncomingbC0C03rchC03app8strategy13sharedGlobalsACyxq_G07SiriKitC008AnyValueC0CyAI13RCHFlowResultOyxq_GG_0L13AppResolution0R0CAA0fbC14OutputStrategy_pAA06SharedK9Providing_ptcfCSo010INIdentifyF12CallerIntentC_So0xfyZ8ResponseCTt3g5Tf4nnen_nAA08IdentifyfytU0V_Tg5(v146, v147, v148, v149);
    outlined destroy of IdentifyIncomingCallerOutputStrategy(&v226);
    *&v226 = v150;
    v142 = &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMd;
    v143 = &_s27PhoneCallFlowDelegatePlugin08IncomingbC0CySo010INIdentifyF12CallerIntentCSo0gfhI8ResponseCGMR;
    OUTLINED_FUNCTION_107_2();
    v144 = &lazy protocol witness table cache variable for type IncomingCallFlow<INIdentifyIncomingCallerIntent, INIdentifyIncomingCallerIntentResponse> and conformance PhoneFlow<A, B>;
    goto LABEL_17;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v151 = swift_dynamicCastObjCClass();
  if (v151)
  {
    v219 = v151;
    type metadata accessor for StartCallRCHFlowDelegate();
    outlined init with copy of SignalProviding(v106, &v226);
    v152 = v222;
    swift_retain_n();
    v218 = StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(&v226, v152);
    outlined init with copy of SignalProviding(v106, &v226);
    type metadata accessor for PhoneCallDisplayTextCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_67_9();
    v217 = CATWrapperSimple.__allocating_init(options:globals:)();
    type metadata accessor for StartCallCATsSimple();
    static CATOption.defaultMode.getter();
    OUTLINED_FUNCTION_67_9();
    v153 = CATWrapperSimple.__allocating_init(options:globals:)();
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
    OUTLINED_FUNCTION_70();
    v154 = swift_allocObject();
    outlined init with take of SPHConversation(&v226, (v154 + 2));
    v155 = v217;
    v154[7] = v222;
    v154[8] = v155;
    v154[9] = v153;
    v156 = v105;
    static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)();
    v157 = v106[4];
    __swift_project_boxed_opaque_existential_1(v106, v106[3]);
    OUTLINED_FUNCTION_33_16();
    v158 = OUTLINED_FUNCTION_14_6();
    v159(v158);
    v160 = v227;
    v217 = v228;
    v221 = __swift_project_boxed_opaque_existential_1(&v226, v227);
    v225[0] = v154;
    v161 = *(v102 + 36);
    v162 = *(v101 + 16);
    v200 = v156;
    v162(v203, v156 + v161, v204);
    (*(v205 + 16))(v103, v156, v206);
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_12_8(v163);
    swift_allocObject();
    OUTLINED_FUNCTION_11_0();
    v164 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    v165 = v217;
    v166 = *(v217 + 8);
    OUTLINED_FUNCTION_4_54();
    v168 = lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v167, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin28CallingIntentRCHFlowStrategyCySo07INStartbG0CSo0jbG8ResponseCGMR);
    v169 = v166(v225, v164, v222, v219, v220, v168, v160, v165);

    v225[0] = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMd, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
    OUTLINED_FUNCTION_3_68();
    lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(v170, v171, &_s11SiriKitFlow08AnyValueC0CyAA13RCHFlowResultOySo17INStartCallIntentCSo0hiJ8ResponseCGGMR);
    OUTLINED_FUNCTION_89_2();
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_61();

    v98 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd;
    v99 = &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR;
    v100 = v200;
LABEL_9:
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v100, v98, v99);
    __swift_destroy_boxed_opaque_existential_1(&v226);
    goto LABEL_10;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_90();
  v172 = swift_dynamicCastObjCClass();
  if (v172)
  {
    v219 = v172;
    v173 = v106;
    outlined init with copy of SignalProviding(v106, &v226);
    v174 = type metadata accessor for SearchCallHistoryRCHFlowDelegate();
    v218 = OUTLINED_FUNCTION_12_8(v174);
    swift_allocObject();
    v175 = SearchCallHistoryRCHFlowDelegate.init(sharedGlobals:)(&v226);
    _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA06Searchb7HistoryqD0C_Tt2g5(v175, v222, v104);
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v176 = type metadata accessor for Logger();
    __swift_project_value_buffer(v176, static Logger.siriPhone);
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v177, v178))
    {
      v179 = OUTLINED_FUNCTION_65_0();
      *v179 = 0;
      _os_log_impl(&dword_0, v177, v178, "#PhoneCallFlowFactory using Response Framework for INSearchCallHistoryIntent", v179, 2u);
      v173 = v106;
      OUTLINED_FUNCTION_26_0();
    }

    v180 = v173;
    outlined init with copy of SignalProviding(v173, &v226);
    type metadata accessor for SearchCallHistoryCATsSimple();
    OUTLINED_FUNCTION_85_3();
    v181 = OUTLINED_FUNCTION_88_4();
    type metadata accessor for SearchCallHistoryHandleFlowStrategy();
    swift_allocObject();
    v221 = SearchCallHistoryHandleFlowStrategy.init(sharedGlobals:searchCallHistoryCATsSimple:)(&v226, v181);
    *&v226 = v221;
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy, type metadata accessor for SearchCallHistoryHandleFlowStrategy);
    static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();
    v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGMR);
    RCHChildFlowProducers.handleIntentFlowCompletion.setter();
    v183 = *(v180 + 24);
    v184 = *(v180 + 32);
    v185 = OUTLINED_FUNCTION_69_8();
    __swift_project_boxed_opaque_existential_1(v185, v186);
    OUTLINED_FUNCTION_33_16();
    v187(v183, v184);
    v188 = v227;
    v189 = v228;
    OUTLINED_FUNCTION_28_0(&v226, v227);
    v190 = v202;
    (*(*(v182 - 8) + 16))(v202, v104, v182);
    __swift_storeEnumTagSinglePayload(v190, 0, 1, v182);
    v191 = v189[5];
    v192 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for SearchCallHistoryRCHFlowDelegate);
    v191(v175, v222, v219, v190, v218, v192, v188, v189);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v190, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo25INSearchCallHistoryIntentCSo0fghI8ResponseCGSgMR);
    __swift_destroy_boxed_opaque_existential_1(&v226);
    type metadata accessor for SearchCallHistoryFlow(0);

    v193 = OUTLINED_FUNCTION_72();
    *&v226 = SearchCallHistoryFlow.__allocating_init(delegate:rchFlow:)(v193, v194);
    lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type SearchCallHistoryFlow and conformance SearchCallHistoryFlow, type metadata accessor for SearchCallHistoryFlow);
    Flow.eraseToAnyFlow()();
    OUTLINED_FUNCTION_33_3();

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v104, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So08INSearchB13HistoryIntentCSo0ibjK8ResponseCGMR);
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v195 = type metadata accessor for Logger();
    __swift_project_value_buffer(v195, static Logger.siriPhone);
    v196 = Logger.logObject.getter();
    v197 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = OUTLINED_FUNCTION_65_0();
      *v198 = 0;
      _os_log_impl(&dword_0, v196, v197, "#PhoneCallFlowFactory Failed to retrieve a recognized phone domain SiriKitIntent", v198, 2u);
      OUTLINED_FUNCTION_26_0();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_65();
}

uint64_t type metadata accessor for StartCallRCHFlowDelegate()
{
  result = type metadata singleton initialization cache for StartCallRCHFlowDelegate;
  if (!type metadata singleton initialization cache for StartCallRCHFlowDelegate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:appResolved:)(uint64_t *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v9);
  outlined init with copy of SignalProviding(a1, v8);
  v5 = swift_allocObject();
  outlined init with take of SPHConversation(v8, v5 + 16);
  v6 = (*(v2 + class metadata base offset for StartCallRCHFlowDelegate + 24))(v9, partial apply for implicit closure #1 in StartCallRCHFlowDelegate.init(sharedGlobals:appResolved:), v5, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_20E8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t StartCallRCHFlowDelegate.__allocating_init(sharedGlobals:templatingService:appResolved:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return StartCallRCHFlowDelegate.init(sharedGlobals:templatingService:appResolved:)(a1, a2, a3, a4);
}

uint64_t StartCallRCHFlowDelegate.init(sharedGlobals:templatingService:appResolved:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  outlined init with copy of SignalProviding(a1, v5 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin13LazyContainerCyAA05StartB20CatTemplatingServiceCGMd, &_s27PhoneCallFlowDelegatePlugin13LazyContainerCyAA05StartB20CatTemplatingServiceCGMR);
  swift_allocObject();

  *(v5 + direct field offset for StartCallRCHFlowDelegate.dialogTemplatingContainer) = specialized LazyContainer.init(load:)(partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AnyFlow), v10);
  *(v5 + direct field offset for StartCallRCHFlowDelegate.appResolved) = a4;

  v11 = BaseRCHFlowDelegate.init()();

  StartCallRCHFlowDelegate.prewarm()();
  v12 = [objc_opt_self() defaultCenter];
  [v12 addObserver:v11 selector:"reloadSiriLanguage" name:AFLanguageCodeDidChangeNotification object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_21084()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t specialized LazyContainer.init(load:)(uint64_t a1, uint64_t a2)
{
  v16[0] = a2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v16[2] = 0x5F797A614CLL;
  v16[3] = 0xE500000000000000;
  v16[1] = type metadata accessor for StartCallCatTemplatingService();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin05StartB20CatTemplatingServiceCmMd, &_s27PhoneCallFlowDelegatePlugin05StartB20CatTemplatingServiceCmMR);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = v14;
  *(v2 + 24) = a1;
  *(v2 + 32) = v16[0];
  return v2;
}

uint64_t type metadata accessor for CNContactStore(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for StartCallCatTemplatingService()
{
  result = type metadata singleton initialization cache for StartCallCatTemplatingService;
  if (!type metadata singleton initialization cache for StartCallCatTemplatingService)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartCallRCHFlowDelegate.prewarm()()
{
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v31 = type metadata accessor for DispatchQoS();
  v9 = OUTLINED_FUNCTION_7(v31);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  static Signpost.event(_:)();
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  (*(v20 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v26 = static OS_dispatch_queue.global(qos:)();
  v27 = *(v20 + 8);
  v28 = OUTLINED_FUNCTION_63();
  v29(v28);
  v32[4] = closure #1 in StartCallRCHFlowDelegate.prewarm();
  v32[5] = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32[3] = &block_descriptor_10;
  v30 = _Block_copy(v32);
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v3 + 8))(v8, v0);
  (*(v11 + 8))(v16, v31);
  OUTLINED_FUNCTION_65();
}

void static Signpost.event(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for OSSignpostID();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_96();
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_22_26(v13, static OSSignposter.siriPhone);
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    if (v3)
    {
LABEL_11:
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_12_17();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = StaticString.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v23);

      *(v17 + 4) = v21;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_0, v14, v15, v22, v3, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();

LABEL_12:

      (*(v7 + 8))(v12, v4);
      OUTLINED_FUNCTION_65();
      return;
    }

    __break(1u);
  }

  if (v3 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_59();
  if (!v16)
  {
    if (v3 >> 16 <= 0x10)
    {
      v3 = &v24;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void OUTLINED_FUNCTION_69_1(uint64_t a1@<X8>)
{
  *v4 = a1;
  v4[1] = v1;
  v4[2] = v5 + 12;
  v4[3] = v2 | 0x8000000000000000;
  v4[4] = v5;
  v4[5] = (v3 - 32) | 0x8000000000000000;
}

uint64_t OUTLINED_FUNCTION_69_6()
{
}

uint64_t *OUTLINED_FUNCTION_55_2()
{
  *(v0 + 72) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 48));
}

uint64_t OUTLINED_FUNCTION_69_11()
{
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
}

uint64_t OUTLINED_FUNCTION_69_12(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_69_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_69_14()
{
  v2 = *(v0 + 48);

  return outlined destroy of StartCallConfirmContactsParameters();
}

uint64_t OUTLINED_FUNCTION_69_15()
{

  return specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type StartCallRCHFlowDelegate and conformance StartCallRCHFlowDelegate(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallDisplayTextCATsSimple()
{
  result = type metadata singleton initialization cache for PhoneCallDisplayTextCATsSimple;
  if (!type metadata singleton initialization cache for PhoneCallDisplayTextCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallDisplayTextCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallDisplayTextCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t PhoneCallDisplayTextCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of PhoneCallNLIntent?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t closure #1 in StartCallRCHFlowDelegate.prewarm()()
{
  static Signpost.begin(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  Signpost.OpenSignpost.end()();
}

uint64_t type metadata accessor for StartCallCATsSimple()
{
  result = type metadata singleton initialization cache for StartCallCATsSimple;
  if (!type metadata singleton initialization cache for StartCallCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StartCallCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return StartCallCATsSimple.init(templateDir:options:globals:)(v3, v4);
}

uint64_t StartCallCATsSimple.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CATOption();
  v6 = OUTLINED_FUNCTION_14_5(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  outlined init with copy of SpeakableString?(a1, &v21 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v8 + 16))(v13, a2, v2);
  v19 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v8 + 8))(a2, v2);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v19;
}

void static PhoneCallFlowFactory.getStartCallProducers(skIntent:delegate:app:sharedGlobals:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v93 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  v10 = OUTLINED_FUNCTION_7(v9);
  v88 = v11;
  v89 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_27_3();
  v90 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  OUTLINED_FUNCTION_7(v16);
  v86 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_27_3();
  v87 = v21;
  OUTLINED_FUNCTION_15_0();
  v85 = type metadata accessor for InputOrigin();
  v22 = OUTLINED_FUNCTION_7(v85);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v22);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v83 - v30;
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0ibmD0C_Tt2g5(v5, v3, v8);
  outlined init with copy of SignalProviding(v1, &v95);
  v32 = swift_allocObject();
  outlined init with take of SPHConversation(&v95, v32 + 16);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);
  RCHChildFlowProducersAsync.continueInAppFlowProducer.setter();
  outlined init with copy of SignalProviding(v1, &v95);
  OUTLINED_FUNCTION_102_0();
  v34 = swift_allocObject();
  outlined init with take of SPHConversation(&v95, v34 + 16);
  *(v34 + 56) = v5;
  v84 = v5;

  v91 = v16;
  v92 = v33;
  v35 = v8;
  RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  v36 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v37 = *(v36 + 56);
  v38 = OUTLINED_FUNCTION_64();
  v40 = v39(v38, v36);
  v41 = OUTLINED_FUNCTION_40_9(v40);
  LOBYTE(v36) = (*(v42 + 136))(v41);

  if (v36)
  {
    goto LABEL_21;
  }

  v43 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v44 = *(v43 + 8);
  v45 = OUTLINED_FUNCTION_33_3();
  v46(v45, v43);
  __swift_project_boxed_opaque_existential_1(&v95, v96);
  OUTLINED_FUNCTION_33_3();
  dispatch thunk of DeviceState.inputOrigin.getter();
  v47 = v85;
  (*(v24 + 104))(v29, enum case for InputOrigin.assistantTextInput(_:), v85);
  v48 = specialized == infix<A>(_:_:)(v31, v29);
  v49 = *(v24 + 8);
  v49(v29, v47);
  v49(v31, v47);
  __swift_destroy_boxed_opaque_existential_1(&v95);
  if (v48)
  {
LABEL_21:
    v50 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v51 = *(v50 + 120);
    v52 = OUTLINED_FUNCTION_11_0();
    v53(v52, v50);
    v54 = v97;
    __swift_project_boxed_opaque_existential_1(&v95, v96);
    v55 = *(v54 + 16);
    v56 = OUTLINED_FUNCTION_11_0();
    v57(v56, v54);
    v58 = v94[4];
    __swift_project_boxed_opaque_existential_1(v94, v94[3]);
    v59 = *(v58 + 8);
    v60 = OUTLINED_FUNCTION_11_0();
    v62 = v61(v60, v58);
    __swift_destroy_boxed_opaque_existential_1(v94);
    __swift_destroy_boxed_opaque_existential_1(&v95);
    if (v62)
    {
      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v63 = type metadata accessor for Logger();
      __swift_project_value_buffer(v63, static Logger.siriPhone);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = OUTLINED_FUNCTION_65_0();
        *v66 = 0;
        _os_log_impl(&dword_0, v64, v65, "#PhoneCallFlowFactory: detected ongoing call, adding RCHChildFlowProducers for ongoing call", v66, 2u);
        OUTLINED_FUNCTION_26_0();
      }

      static OngoingCallFlowProducers.overrideStartCallProducers(producers:delegate:sharedGlobals:)(v8 + v92, v84, v1);
    }
  }

  v67 = v93;
  if ([v93 preferredCallProvider] == &dword_0 + 2)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static Logger.siriPhone);
    v69 = v67;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&dword_0, v70, v71, "#PhoneCallFlowFactory Received FaceTime request for intent: %@", v72, 0xCu);
      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_26_0();
    }

    v75 = v91;
    v76 = v92;
    v78 = RCHChildFlowProducersAsync.confirmIntentFlowProducer.getter();
    if (v78)
    {
      v79 = v77;
    }

    else
    {
      v79 = 0;
    }

    (*(v86 + 16))(v87, v35 + v76, v75);
    (*(v88 + 16))(v90, v35, v89);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC7FactoryCySo17INStartCallIntentCSo0fgH8ResponseCGMR);
    OUTLINED_FUNCTION_12_8(v80);
    swift_allocObject();
    OUTLINED_FUNCTION_64();
    v81 = RCHChildFlowFactory.init(producers:withFallbacks:)();
    outlined init with copy of SignalProviding(v1, &v95);
    OUTLINED_FUNCTION_70();
    v82 = swift_allocObject();
    outlined init with take of SPHConversation(&v95, (v82 + 2));
    v82[7] = v78;
    v82[8] = v79;
    v82[9] = v81;
    RCHChildFlowProducersAsync.confirmIntentFlowProducer.setter();
  }

  OUTLINED_FUNCTION_65();
}

uint64_t sub_22804()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  v2 = v0[9];

  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_22850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO015getGenericStartB9Producers8delegate3appAC0a7RCHFlowJ0Vy_10IntentTypeQz0n8ResponseO0QzGx_17SiriAppResolution0R0CtAA07CallingnmD0RzlFZAA0ibmD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v6 = type metadata accessor for DialogPhase();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v95 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CATOption();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v97 = a3;
  v98 = a1;
  _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D744418delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA05StartbqD0C_Tt2g5(a1, a2, a3);
  v96 = direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  outlined init with copy of SignalProviding(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals, v119);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  outlined init with take of SPHConversation(v119, v11 + 24);
  v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionBeforeNextResolveFlowProducer.setter();
  v93 = type metadata accessor for StartCallCATs();
  static CATOption.defaultMode.getter();
  v79 = CATWrapper.__allocating_init(options:globals:)();
  v12 = type metadata accessor for StartCallCATPatternsExecutor(0);
  static CATOption.defaultMode.getter();
  v13 = v12;
  v83 = v12;
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v92 = type metadata accessor for StartCallCATsSimple();
  static CATOption.defaultMode.getter();
  v78 = CATWrapperSimple.__allocating_init(options:globals:)();
  v91 = type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v77 = CATWrapper.__allocating_init(options:globals:)();
  v90 = type metadata accessor for PhoneCallCommonCATsSimple();
  static CATOption.defaultMode.getter();
  v76 = CATWrapperSimple.__allocating_init(options:globals:)();
  v15 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v84 = v15;
  v81 = CATWrapper.__allocating_init(options:globals:)();
  v89 = type metadata accessor for PhoneCallDisplayTextCATsSimple();
  static CATOption.defaultMode.getter();
  v75 = CATWrapperSimple.__allocating_init(options:globals:)();
  v16 = type metadata accessor for ResponseFactory();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = v16;
  v94 = v16;
  swift_allocObject();
  v82 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v20 = type metadata accessor for AppInfoBuilder();
  v85 = v20;
  v21 = swift_allocObject();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v117 = v13;
  v118 = &protocol witness table for StartCallCATPatternsExecutor;
  v74 = v14;
  v116[0] = v14;
  v115 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v114 = v15;
  v113[0] = v81;
  *(v25 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.personsToDisambiguate) = &_swiftEmptyArrayStorage;
  v112 = &protocol witness table for AppInfoBuilder;
  v111 = v20;
  v110[0] = v21;
  *(v25 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.selectedPerson) = 0;
  *(v25 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.requiresReprompt) = 0;
  *(v25 + direct field offset for CallingIntentContactNeedsDisambiguationFlowStrategy.shouldClearContext) = 0;
  outlined init with copy of SignalProviding(v116, v109);
  outlined init with copy of SignalProviding(v113, v108);
  outlined init with copy of SignalProviding(v119, v107);
  outlined init with copy of SignalProviding(v110, v106);
  v104 = v19;
  v105 = &protocol witness table for ResponseFactory;
  v103[0] = v82;

  static DialogPhase.completion.getter();
  v86 = closure #1 in AddCallParticipantHandleIntentFlowStrategy.makeFailureHandlingIntentResponse(rchRecord:);
  OutputGenerationManifest.init(dialogPhase:_:)();
  v26 = v98;
  v25[2] = v98;
  outlined init with copy of SignalProviding(v26 + v96, (v25 + 3));
  v25[8] = v79;
  outlined init with copy of SignalProviding(v109, (v25 + 9));
  v27 = v77;
  v25[14] = v78;
  v25[15] = v27;
  v25[16] = v76;
  outlined init with copy of SignalProviding(v108, (v25 + 17));
  v25[22] = v75;
  outlined init with copy of SignalProviding(v103, (v25 + 23));
  outlined init with copy of SignalProviding(v107, (v25 + 28));
  outlined init with copy of SignalProviding((v25 + 3), v100);
  v28 = v101;
  v29 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v30 = *(v29 + 72);

  v31 = v30(v28, v29);

  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v103);
  outlined init with copy of SignalProviding(v31 + 160, v99);

  outlined init with take of SPHConversation(v99, (v25 + 33));
  __swift_destroy_boxed_opaque_existential_1(v100);
  outlined init with take of SPHConversation(v106, (v25 + 38));
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  *&v119[0] = v25;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentContactNeedsDisambiguationFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentContactNeedsDisambiguationFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin039CallingIntentContactNeedsDisambiguationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeNeedsDisambiguationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsDisambiguationFlowProducer.setter();
  static CATOption.defaultMode.getter();
  v79 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v32 = v83;
  v82 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v78 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v77 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v76 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v33 = v84;
  v34 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v75 = CATWrapperSimple.__allocating_init(options:globals:)();
  v35 = *(v94 + 48);
  v36 = *(v94 + 52);
  v37 = v94;
  swift_allocObject();
  v38 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v39 = v85;
  v40 = swift_allocObject();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v41 = *(v81 + 48);
  v42 = *(v81 + 52);
  v43 = swift_allocObject();
  v117 = v32;
  v118 = &protocol witness table for StartCallCATPatternsExecutor;
  v116[0] = v82;
  v114 = v33;
  v115 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v74 = v34;
  v113[0] = v34;
  v111 = v39;
  v112 = &protocol witness table for AppInfoBuilder;
  v110[0] = v40;
  v44 = direct field offset for CallingIntentConfirmationFlowStrategy.confirmationResponse;
  v45 = type metadata accessor for ConfirmationResponse();
  __swift_storeEnumTagSinglePayload(v43 + v44, 1, 1, v45);
  *(v43 + direct field offset for CallingIntentConfirmationFlowStrategy.personToConfirm) = 0;
  outlined init with copy of SignalProviding(v116, v109);
  outlined init with copy of SignalProviding(v113, v108);
  outlined init with copy of SignalProviding(v119, v107);
  outlined init with copy of SignalProviding(v110, v106);
  v104 = v37;
  v105 = &protocol witness table for ResponseFactory;
  v103[0] = v38;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v46 = v98;
  v43[2] = v98;
  outlined init with copy of SignalProviding(v46 + v96, (v43 + 3));
  v43[8] = v79;
  outlined init with copy of SignalProviding(v109, (v43 + 9));
  v47 = v77;
  v43[14] = v78;
  v43[15] = v47;
  v43[16] = v76;
  outlined init with copy of SignalProviding(v108, (v43 + 17));
  v43[22] = v75;
  outlined init with copy of SignalProviding(v103, (v43 + 23));
  outlined init with copy of SignalProviding(v107, (v43 + 28));
  outlined init with copy of SignalProviding((v43 + 3), v100);
  v49 = v101;
  v48 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v50 = *(v48 + 72);

  v51 = v50(v49, v48);

  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v103);
  outlined init with copy of SignalProviding(v51 + 160, v99);

  outlined init with take of SPHConversation(v99, (v43 + 33));
  __swift_destroy_boxed_opaque_existential_1(v100);
  outlined init with take of SPHConversation(v106, (v43 + 38));
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  *&v119[0] = v43;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentConfirmationFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentConfirmationFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin025CallingIntentConfirmationC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeNeedsConfirmationFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.needsConfirmationFlowProducer.setter();
  v52 = swift_allocObject();
  *(v52 + 16) = v98;
  *(v52 + 24) = v80;

  RCHChildFlowProducersAsync.needsValueFlowProducer.setter();

  RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  static CATOption.defaultMode.getter();
  v93 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v53 = v83;
  v54 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v92 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v91 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v90 = CATWrapperSimple.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v55 = v84;
  v56 = CATWrapper.__allocating_init(options:globals:)();
  static CATOption.defaultMode.getter();
  v89 = CATWrapperSimple.__allocating_init(options:globals:)();
  v57 = *(v94 + 48);
  v58 = *(v94 + 52);
  swift_allocObject();
  v59 = ResponseFactory.init()();
  static SiriKitEventSender.current.getter();
  v60 = v85;
  v61 = swift_allocObject();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v65 = swift_allocObject();
  v117 = v53;
  v118 = &protocol witness table for StartCallCATPatternsExecutor;
  v88 = v54;
  v116[0] = v54;
  v114 = v55;
  v115 = &protocol witness table for PhoneCallCommonCATPatternsExecutor;
  v87 = v56;
  v113[0] = v56;
  v111 = v60;
  v112 = &protocol witness table for AppInfoBuilder;
  v110[0] = v61;
  *(v65 + direct field offset for CallingIntentHandleIntentFlowStrategy.cancellable) = 0;
  outlined init with copy of SignalProviding(v116, v109);
  outlined init with copy of SignalProviding(v113, v108);
  outlined init with copy of SignalProviding(v119, v107);
  outlined init with copy of SignalProviding(v110, v106);
  v104 = v94;
  v105 = &protocol witness table for ResponseFactory;
  v103[0] = v59;

  static DialogPhase.completion.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  v66 = v98;
  v65[2] = v98;
  outlined init with copy of SignalProviding(v66 + v96, (v65 + 3));
  v65[8] = v93;
  outlined init with copy of SignalProviding(v109, (v65 + 9));
  v67 = v91;
  v65[14] = v92;
  v65[15] = v67;
  v65[16] = v90;
  outlined init with copy of SignalProviding(v108, (v65 + 17));
  v65[22] = v89;
  outlined init with copy of SignalProviding(v103, (v65 + 23));
  outlined init with copy of SignalProviding(v107, (v65 + 28));
  outlined init with copy of SignalProviding((v65 + 3), v100);
  v68 = v101;
  v69 = v102;
  __swift_project_boxed_opaque_existential_1(v100, v101);
  v70 = *(v69 + 72);

  v71 = v70(v68, v69);

  __swift_destroy_boxed_opaque_existential_1(v107);
  __swift_destroy_boxed_opaque_existential_1(v108);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v103);
  outlined init with copy of SignalProviding(v71 + 160, v99);

  outlined init with take of SPHConversation(v99, (v65 + 33));
  __swift_destroy_boxed_opaque_existential_1(v100);
  outlined init with take of SPHConversation(v106, (v65 + 38));
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  *&v119[0] = v65;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type CallingIntentHandleIntentFlowStrategy<StartCallRCHFlowDelegate> and conformance CallingIntentHandleIntentFlowStrategy<A>, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMd, &_s27PhoneCallFlowDelegatePlugin019CallingIntentHandlegC8StrategyCyAA05Startb7RCHFlowD0CGMR);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMd, &_s11SiriKitFlow08RCHChildC9ProducersVySo17INStartCallIntentCSo0fgH8ResponseCGMR);
  return RCHChildFlowProducers.handleIntentFlowCompletion.setter();
}

uint64_t _s27PhoneCallFlowDelegatePlugin0abC7FactoryO12getProducers33_CD8279EFAB3EC33E52197D7782D74441LL8delegate3appAC0a7RCHFlowH0Vy_10IntentTypeQz0r8ResponseS0QzGx_17SiriAppResolution0V0CtAA0aqD0RzlFZAA05StartbqD0C_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v5 = type metadata accessor for CATOption();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals;
  v8 = *(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 24);
  v9 = *(a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals + 32);
  __swift_project_boxed_opaque_existential_1((a1 + direct field offset for StartCallRCHFlowDelegate.sharedGlobals), v8);
  (*(v9 + 104))(v51, v8, v9);
  v10 = v52;
  v11 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v12 = *(v11 + 56);
  v13 = type metadata accessor for StartCallRCHFlowDelegate();
  v14 = lazy protocol witness table accessor for type SearchCallHistoryHandleFlowStrategy and conformance SearchCallHistoryHandleFlowStrategy(&lazy protocol witness table cache variable for type StartCallRCHFlowDelegate and conformance BaseRCHFlowDelegate<A, B>, type metadata accessor for StartCallRCHFlowDelegate);
  v12(a1, v13, v14, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0abC7FactoryO0A16RCHFlowProducersVy_So07INStartB6IntentCSo0ibJ8ResponseCGMR) + 36);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntent, INStartCallIntent_ptr);
  v42 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INStartCallIntentResponse, INStartCallIntentResponse_ptr);
  v40 = a3;
  v41 = v15;
  RCHChildFlowProducersAsync.init()();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo17INStartCallIntentCSo0ghI8ResponseCGMR);
  RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  outlined init with copy of SignalProviding(v7, v51);
  type metadata accessor for PhoneCallCommonCATs();
  static CATOption.defaultMode.getter();
  v38 = CATWrapper.__allocating_init(options:globals:)();
  v16 = type metadata accessor for PhoneCallCommonCATPatternsExecutor();
  static CATOption.defaultMode.getter();
  v17 = CATWrapper.__allocating_init(options:globals:)();
  v18 = type metadata accessor for AppInfoBuilder();
  v19 = swift_allocObject();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMR);
  v20 = swift_allocObject();
  v49 = v19;
  v50 = v17;
  v48[3] = &type metadata for LabelTemplatesProvider;
  v48[4] = &protocol witness table for LabelTemplatesProvider;
  v21 = swift_allocObject();
  v48[0] = v21;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v47[3] = &type metadata for TCCTemplatesProvider;
  v47[4] = &protocol witness table for TCCTemplatesProvider;
  outlined init with copy of SignalProviding(v51, v20 + 272);
  outlined init with copy of SignalProviding(v48, v20 + 192);
  outlined init with copy of SignalProviding(v47, v20 + 232);
  v23 = v52;
  v22 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v24 = *(v22 + 136);

  v24(v44, v23, v22);
  v26 = v45;
  v25 = v46;
  v27 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v28 = v52;
  v29 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = (*(v29 + 8))(v43, v28, v29);
  v31 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v30);
  v33 = &v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v27, v26);
  v35 = specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(v38, &v50, v33, &v49, v43, v20, v26, v16, v18, *(v25 + 8), &protocol witness table for PhoneCallCommonCATPatternsExecutor, &protocol witness table for AppInfoBuilder, v37);

  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v51[0] = v35;
  lazy protocol witness table accessor for type AnyValueFlow<ExecuteOnRemoteFlowResult> and conformance AnyValueFlow<A>(&lazy protocol witness table cache variable for type PhoneTCCFlowStrategy<INStartCallIntent, INStartCallIntentResponse> and conformance PhoneTCCFlowStrategy<A, B>, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMd, &_s27PhoneCallFlowDelegatePlugin0A15TCCFlowStrategyCySo07INStartB6IntentCSo0hbI8ResponseCGMR);
  static RCHChildFlowFactoryHelper.makeRequestTCCAcceptanceFlow<A, B>(strategy:)();

  return RCHChildFlowProducersAsync.requestTCCAcceptanceFlowProducer.setter();
}

uint64_t sub_23BD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t SiriKitFlowFactory.makeDelegateBasedRCHFlowProducers<A>(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntent, INIntent_ptr);
  v7 = type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentResponse, INIntentResponse_ptr);

  return static RCHChildFlowProducers.withRCHFlowDelegate<A>(delegate:)(a1, v6, v7, a2, a3);
}

uint64_t type metadata accessor for PhoneCallCommonCATs()
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATs;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATs.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallCommonCATs.init(templateDir:options:globals:)(v3, v4);
}

uint64_t PhoneCallCommonCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  outlined init with copy of SpeakableString?(a1, &v16 - v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v5 + 16))(v8, a2, v4);
  v14 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of SpeakableString?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return v14;
}

uint64_t type metadata accessor for PhoneCallCommonCATPatternsExecutor()
{
  result = type metadata singleton initialization cache for PhoneCallCommonCATPatternsExecutor;
  if (!type metadata singleton initialization cache for PhoneCallCommonCATPatternsExecutor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhoneCallCommonCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return PhoneCallCommonCATPatternsExecutor.init(templateDir:options:globals:)(a1, a2);
}

uint64_t PhoneCallCommonCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CATOption();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  outlined init with copy of URL?(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = CATWrapper.init(templateDir:options:globals:)();
  (*(v5 + 8))(a2, v4);
  outlined destroy of URL?(a1);
  return v12;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized SharedGlobalsProviding.responseGenerator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ResponseFactory();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = ResponseFactory.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for ResponseFactory;
  *a1 = result;
  return result;
}

uint64_t specialized PhoneCallStrategy.init(catFamily:catPatternFamily:responseGenerator:appInfoBuilder:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24[3] = a8;
  v24[4] = a11;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_40(a8);
  (*(v16 + 32))();
  v23[3] = a7;
  v23[4] = a10;
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_40(a7);
  (*(v17 + 32))();
  v22[3] = a9;
  v22[4] = a12;
  __swift_allocate_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_40(a9);
  (*(v18 + 32))();
  *(a6 + 56) = a1;
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v24, a6 + 64);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v23, a6 + 104);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(v22, a6 + 144);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a5, a6 + 16);
  _s27PhoneCallFlowDelegatePlugin22SharedGlobalsProviding_pWOcTm_0(a6 + 16, v21);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  LOBYTE(a1) = dispatch thunk of DeviceState.isTextToSpeechEnabled.getter();
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *(a6 + 184) = a1 & 1;
  __swift_destroy_boxed_opaque_existential_1(v21);
  return a6;
}

uint64_t type metadata accessor for StartCallCATs()
{
  result = type metadata singleton initialization cache for StartCallCATs;
  if (!type metadata singleton initialization cache for StartCallCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StartCallCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CATOption();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v34);
  outlined init with copy of SpeakableString?(v25, &a9 - v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v30, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  outlined destroy of SpeakableString?(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t OUTLINED_FUNCTION_55_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 48) = a2;
  *(v2 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_190()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

void StartCallCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  OUTLINED_FUNCTION_2_4();
  v25 = type metadata accessor for CATOption();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v31);
  outlined init with copy of SpeakableString?(v20, &a9 - v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v26 + 16);
  OUTLINED_FUNCTION_80_8();
  v34();
  OUTLINED_FUNCTION_121_2();
  CATWrapper.init(templateDir:options:globals:)();
  (*(v26 + 8))(v24, v25);
  outlined destroy of SpeakableString?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

void OUTLINED_FUNCTION_139_0(uint64_t a1@<X8>)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  strcpy((v2 + 128), "isMyriadCall");
  *(v2 + 141) = 0;
  *(v2 + 142) = -5120;
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 120) = a13;
  result = v14 + 120;
  *(v14 + 128) = v13;
  return result;
}

void OUTLINED_FUNCTION_121_3()
{
  *(v3 + 240) = v2 & 1;
  *(v3 + 264) = v0;
  strcpy((v3 + 272), "isWalkieTalkie");
  *(v3 + 287) = -18;
  *(v3 + 288) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_110_0(float a1)
{
  *v2 = a1;
  *(v3 - 184) = v1;

  return swift_errorRetain();
}

uint64_t OUTLINED_FUNCTION_110_2(uint64_t a1)
{
  *(v1 + 152) = a1;

  return static CATOption.defaultMode.getter();
}

uint64_t OUTLINED_FUNCTION_79_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2[9] = result;
  v2[10] = a2 & 0xFFFFFFFFFFFFLL | 0x664F000000000000;
  v2[11] = 0xED000070756F7247;
  return result;
}

uint64_t OUTLINED_FUNCTION_92_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 128) = 0;
  *(v5 - 120) = a5;

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_92_5()
{
  v3 = *(v1 + 65);
  v4 = *(v1 + 64);
  *(v2 + 96) = v0;
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t a1)
{
  *(v1 + 72) = a1;
  *(v1 + 80) = 0xD000000000000014;
}

uint64_t OUTLINED_FUNCTION_89()
{

  return type metadata accessor for ParameterResolutionRecord();
}

void OUTLINED_FUNCTION_95(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

uint64_t OUTLINED_FUNCTION_95_1()
{

  return ContactHandleQuery.init(type:label:value:)();
}

uint64_t PhoneCallFeatureManager.shouldEnableSiriPhoneInCall.getter()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0 + 88))(v6);
  OUTLINED_FUNCTION_1_6(v6);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_4_3();
  v4(v3);
  return OUTLINED_FUNCTION_3_67(v6);
}

void *OUTLINED_FUNCTION_32_4()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, va);
}

void *OUTLINED_FUNCTION_32_7()
{
  v2 = v0[6];
  v3 = v0[5];

  return __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
}

uint64_t OUTLINED_FUNCTION_32_8()
{
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[35];
  v5 = v0[30];
  v6 = v0[36];

  return outlined init with copy of ButtonConfigurationModel(v3, v6);
}

uint64_t OUTLINED_FUNCTION_32_10()
{
  v1 = *(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 - 168));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);

  return type metadata accessor for SiriKitEvent();
}

uint64_t OUTLINED_FUNCTION_55_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_13@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_15()
{
  *(v1 + 176) = *(v0 + 16);

  return outlined init with copy of SignalProviding(v0 + 288, v1 + 184);
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return ContactHandleQuery.init(type:label:value:)();
}

uint64_t OUTLINED_FUNCTION_32_18()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_20()
{
  v1 = v0[43];
  v2 = v0[44];
  result = v0[41];
  v4 = v0[42];
  return result;
}

uint64_t OUTLINED_FUNCTION_32_24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_25()
{
}

uint64_t OUTLINED_FUNCTION_98_4()
{
  *(v1 + 64) = *(v0 + 160);

  return outlined init with copy of SignalProviding(v0 + 448, v1 + 72);
}

uint64_t OUTLINED_FUNCTION_98_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[21] = a1;
  v2[22] = a2;
  v2[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_0()
{
}

id OUTLINED_FUNCTION_87_1(void *a1)
{
  v7 = *(v1 + 144);
  a1[2] = v3;
  a1[3] = v7;
  a1[4] = v4;
  a1[5] = v2;
  a1[6] = *(v1 + 128);
  a1[7] = v5;

  return v2;
}

void OUTLINED_FUNCTION_87_2()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = v0[24];
}

uint64_t OUTLINED_FUNCTION_87_4()
{

  return outlined init with copy of SignalProviding(v0, v1 - 128);
}

void OUTLINED_FUNCTION_87_6(uint64_t a1@<X8>)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  v5 = *(v3 + *(v4 + 24) + 8);
}

uint64_t OUTLINED_FUNCTION_114_0(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_87_7()
{
  v2 = *(v0 + 24);
  *(v1 + 80) = 0x6574736575716572;
  *(v1 + 88) = 0xEF656C646E614864;
  return 0;
}

uint64_t OUTLINED_FUNCTION_87_9()
{
}

uint64_t SiriKitFlowFactory.makeRCHFlow<A>(strategy:childFlowFactory:app:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  OUTLINED_FUNCTION_10_69(a1, a2, a3, a4, a5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = type metadata accessor for RCHFlowFactory();
  OUTLINED_FUNCTION_7(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v20);
  v22 = v25 - v21;
  (*(v8 + 16))(v14, a1, a5);

  RCHFlowFactory.init(strategy:childFlowFactory:)();
  v23 = RCHFlowFactory.makeRCHFlowWithResolvedApp(_:intent:hasUserBeenAuthorizedForApp:)();
  (*(v17 + 8))(v22, v15);
  return v23;
}

void *INIntent.parameterMetadata.getter()
{
  if (!outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()([v0 _intentInstanceDescription]))
  {
LABEL_19:
    __break(1u);

    __break(1u);
    return result;
  }

  v14 = specialized Array._copyToContiguousArray()();
  specialized MutableCollection<>.sort(by:)(&v14);

  v1 = v14;
  v2 = specialized Array.count.getter(v14);
  if (v2)
  {
    v3 = v2;
    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v3 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v5 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_5_26();
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v1 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(v1 + 8 * i + 32);
        }

        v7 = v6;
        outlined bridged method (pb) of @objc _HKEmergencyContact.phoneNumberLabel.getter(v6, &selRef_name);
        if (!v8)
        {
          goto LABEL_18;
        }

        [v7 resolveSelector];
        v9 = type metadata accessor for SiriKitParameterMetadata();
        v10 = *(v9 + 48);
        v11 = *(v9 + 52);
        swift_allocObject();
        SiriKitParameterMetadata.init(parameterName:shouldResolve:confirmationStates:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v12 = v14[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v5 == v3)
        {

          return v14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t outlined bridged method (ob) of @objc INIntentDescription.slotDescriptions()(void *a1)
{
  v2 = [a1 slotDescriptions];

  if (!v2)
  {
    return 0;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized Array._copyToContiguousArray()()
{
  OUTLINED_FUNCTION_69_0();
  if (v3)
  {
    v6 = v2;
    v7 = v1;
    v8 = OUTLINED_FUNCTION_43_5();
    if (v8)
    {
      v9 = v8;
      v4 = v7(v8, 0);
      v6(v4 + 32, v9, v0);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (v0 & 0xFFFFFFFFFFFFFF8);
}

{
  return specialized Array._copyToContiguousArray()();
}

{
  return specialized Array._copyToContiguousArray()();
}

{
  return specialized Array._copyToContiguousArray()();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return static PhonePerson.make(phonePerson:options:locale:)(v0, 0, v1);
}

uint64_t OUTLINED_FUNCTION_34_6()
{
  *(v0 + 16) = 2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return String.init<A>(describing:)();
}

uint64_t OUTLINED_FUNCTION_34_15()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_18()
{
  result = v0;
  v3 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_34_20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3016));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 3256));
}

uint64_t OUTLINED_FUNCTION_34_22()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_34_23()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

__n128 *OUTLINED_FUNCTION_34_24(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "callCapability");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_34_25()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_34_27(uint64_t a1, uint64_t a2)
{

  return outlined init with copy of CarPlayRCHFlowProvider<INStartCallIntent>(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_34_29@<X0>(uint64_t a1@<X8>)
{
  v2[21] = v1;
  v2[22] = a1;
  v2[23] = 0xE600000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_34_30()
{
  v2 = *(v0 - 336);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13SABaseCommandC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = OUTLINED_FUNCTION_41_3();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INIntentSlotDescription, INIntentSlotDescription_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [INIntentSlotDescription] and conformance [A], &_sSaySo23INIntentSlotDescriptionCGMd, &_sSaySo23INIntentSlotDescriptionCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo23INIntentSlotDescriptionCGMd, &_sSaySo23INIntentSlotDescriptionCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SABaseCommand] and conformance [A], &_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SABaseCommandCGMd, &_sSaySo13SABaseCommandCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SANotificationOnDeviceObject, SANotificationOnDeviceObject_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SANotificationOnDeviceObject] and conformance [A], &_sSaySo28SANotificationOnDeviceObjectCGMd, &_sSaySo28SANotificationOnDeviceObjectCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo28SANotificationOnDeviceObjectCGMd, &_sSaySo28SANotificationOnDeviceObjectCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INCallRecord, INCallRecord_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [INCallRecord] and conformance [A], &_sSaySo12INCallRecordCGMd, &_sSaySo12INCallRecordCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12INCallRecordCGMd, &_sSaySo12INCallRecordCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for App();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [App] and conformance [A], &_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay17SiriAppResolution0B0CGMd, &_sSay17SiriAppResolution0B0CGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SASTTemplateItem] and conformance [A], &_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          swift_unknownObjectRetain();
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SAAceView] and conformance [A], &_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SiriKitDisambiguationItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [SiriKitDisambiguationItem] and conformance [A], &_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow0aB18DisambiguationItemCGMd, &_sSay11SiriKitFlow0aB18DisambiguationItemCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMd, &_s12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGMR);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A], &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMd, &_sSay12SiriOntology16CodeGenListEntryCyAA22UsoEntity_common_AgentCGGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for PhonePerson(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [PhonePerson] and conformance [A], &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMd, &_sSay27PhoneCallFlowDelegatePlugin0A6PersonCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for DialogExecutionResult, DialogExecutionResult_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type TerminalOntologyNode<VoiceMail.VoiceMailNoun> and conformance TerminalOntologyNode<A>(&lazy protocol witness table cache variable for type [DialogExecutionResult] and conformance [A], &_sSaySo21DialogExecutionResultCGMd, &_sSaySo21DialogExecutionResultCGMR);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo21DialogExecutionResultCGMd, &_sSaySo21DialogExecutionResultCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    OUTLINED_FUNCTION_47_7();
    v8 = swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

{
  v5 = OUTLINED_FUNCTION_0_13(a1, a2, a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v5, v6, v7);
  if (v4)
  {
    v8 = OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_23_6();
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *v3 = v8;
  return OUTLINED_FUNCTION_26_7();
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0(NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0);
    *a1 = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0;
  }

  v4 = *(NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 + 16);
  v6[0] = NewAByxGyFSo28SANotificationOnDeviceObjectC_Tg5_0 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo23INIntentSlotDescriptionC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo13SABaseCommandC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZSo28SANotificationOnDeviceObjectC_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

{
  v3 = a1[1];
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 < v3)
  {
    v5 = v4;
    UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 = _sSa22_allocateUninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *(&dword_10 + (UninitializedySayxG_SpyxGtSiFZ17SiriAppResolution0D0C_Tt0g5 & 0xFFFFFFFFFFFFFF8)) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    while (2)
    {
      v20 = v4;
      v21 = a3;
      v6 = *(v22 + 8 * a3);
      v19 = v5;
      do
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 rank];
        if (!v10)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v11 = v10;
        v12 = [v10 integerValue];

        v13 = [v9 rank];
        if (!v13)
        {
          goto LABEL_13;
        }

        v14 = v13;
        v15 = [v13 integerValue];

        if (v12 >= v15)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_14;
        }

        v16 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v16;
        v4 -= 8;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v21 + 1;
      v4 = v20 + 8;
      v5 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

{
  v39 = type metadata accessor for Date();
  v8 = *(*(v39 - 8) + 64);
  v9 = __chkstk_darwin(v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v33 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v37 = (v11 + 8);
    v40 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v35 = v15;
      v36 = a3;
      v17 = *(v40 + 8 * a3);
      v34 = v16;
      v18 = v16;
      do
      {
        v19 = *v15;
        v20 = v17;
        v21 = v19;
        v22 = [v20 date];
        if (!v22)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v23 = v22;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = [v21 date];
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = v24;
        v26 = v38;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = static Date.< infix(_:_:)();
        v27 = v18;
        v28 = *v37;
        v29 = v26;
        v30 = v39;
        (*v37)(v29, v39);
        v28(v13, v30);

        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_13;
        }

        v31 = *v15;
        v17 = *(v15 + 8);
        *v15 = v17;
        *(v15 + 8) = v31;
        v15 -= 8;
        ++v18;
      }

      while (v27 != -1);
      a3 = v36 + 1;
      v15 = v35 + 8;
      v16 = v34 - 1;
      if (v36 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

{
  v39 = type metadata accessor for Date();
  v8 = *(*(v39 - 8) + 64);
  v9 = __chkstk_darwin(v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v33 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v37 = (v11 + 8);
    v40 = v14;
    v15 = v14 + 8 * a3 - 8;
    v16 = a1 - a3;
    while (2)
    {
      v35 = v15;
      v36 = a3;
      v17 = *(v40 + 8 * a3);
      v34 = v16;
      v18 = v16;
      do
      {
        v19 = *v15;
        v20 = v17;
        v21 = v19;
        v22 = [v20 date];
        if (!v22)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v23 = v22;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = [v21 date];
        if (!v24)
        {
          goto LABEL_12;
        }

        v25 = v24;
        v26 = v38;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = static Date.< infix(_:_:)();
        v27 = v18;
        v28 = *v37;
        v29 = v26;
        v30 = v39;
        (*v37)(v29, v39);
        v28(v13, v30);

        if ((v41 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          goto LABEL_13;
        }

        v31 = *v15;
        v17 = *(v15 + 8);
        *v15 = v17;
        *(v15 + 8) = v31;
        v15 -= 8;
        ++v18;
      }

      while (v27 != -1);
      a3 = v36 + 1;
      v15 = v35 + 8;
      v16 = v34 - 1;
      if (v36 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_20_12(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 72);
  return result;
}

void OUTLINED_FUNCTION_20_14(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

__n128 *OUTLINED_FUNCTION_20_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  v4 = *(v2 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_20_20()
{
  *(v0 + 16) = 0;
}

uint64_t OUTLINED_FUNCTION_20_21()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_20_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &a10);
}

uint64_t OUTLINED_FUNCTION_20_24(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_20_27()
{
  result = v0[45];
  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[48];
  return result;
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_20_29(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return ContactQuery.handle.setter();
}

uint64_t OUTLINED_FUNCTION_20_33()
{

  return Input.init(parse:)();
}

void OUTLINED_FUNCTION_20_39(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_20_40(uint64_t result)
{
  v2[24] = v1;
  v2[27] = result;
  v2[28] = 0x5074737269467369;
  v2[29] = 0xEF70704179747261;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_41()
{
  v2 = v0[47];
  v4 = v0[44];
  v3 = v0[45];
  v6 = v0[42];
  v5 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[36];
  v9 = v0[37];
}

uint64_t OUTLINED_FUNCTION_20_42()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_20_43()
{
  result = v0[38];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[41];
  return result;
}

uint64_t OUTLINED_FUNCTION_20_45(uint64_t result)
{
  *(v1 - 408) = result;
  *(v1 - 272) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_47()
{

  return SPHCallCenter.onQueue<A>(_:)();
}

uint64_t OUTLINED_FUNCTION_33_7()
{

  return swift_asyncLet_begin();
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1)
{
  *(a1 + 8) = CallingIntentContactNeedsDisambiguationFlowStrategy.makePromptForDisambiguation(paginatedItems:resolveRecord:);
  v2 = v1[32];
  v3 = v1[24];
  return v1[21];
}

void OUTLINED_FUNCTION_33_9()
{
  v2 = v0;
  v3 = *(v1 - 376);
  v4 = *(v3 + 16);
  v3 += 16;
  *(v1 - 200) = v2;
  *(v1 - 192) = v4;
  v5 = v2 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v6 = *(v3 + 56);
  v7 = *(v1 - 384);
  v8 = *(v1 - 368);
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = *(v2 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3;
  return result;
}

void OUTLINED_FUNCTION_33_14(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_33_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_33_21()
{
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_33_26()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[60];
}

uint64_t OUTLINED_FUNCTION_33_28(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 73) = a3;
  *(v5 + 16) = a2;
  *(v5 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_29()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t protocol witness for Flow.exitValue.getter in conformance CarPlayDirectInvocationFlow<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v4 = type metadata accessor for CarPlayDirectInvocationFlow();

  return Flow<>.exitValue.getter(v4, a2);
}

uint64_t CarPlayDirectInvocationFlow.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  return v0;
}

uint64_t CarPlayDirectInvocationFlow.__deallocating_deinit()
{
  CarPlayDirectInvocationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyIntentCarPlayDirectActionFlowStrategy.__deallocating_deinit()
{
  AnyIntentCarPlayDirectActionFlowStrategy.deinit();

  return swift_deallocClassInstance();
}

void *AnyIntentCarPlayDirectActionFlowStrategy.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  v3 = v0[10];

  return v0;
}

uint64_t AnyIntentCarPlayRCHFlowProvider.__deallocating_deinit()
{
  AnyIntentCarPlayRCHFlowProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t AnyIntentCarPlayRCHFlowProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_106();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance CallingIntentRCHFlowStrategy<A, B>(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  v11 = a3[10];
  v12 = a3[11];
  v13 = a3[12];
  v14 = type metadata accessor for CallingIntentRCHFlowStrategy();
  *v10 = v4;
  v10[1] = protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v14, a4);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance ActionableCallControlFlow()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  OUTLINED_FUNCTION_28();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_2();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6removeyxSgxF27PhoneCallFlowDelegatePlugin0eF6RecordC7OptionsV_Tgq5_0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t _ss9OptionSetPs7ElementQzRszrlE6update4withxSgx_tF27PhoneCallFlowDelegatePlugin0fG6RecordC7OptionsV_Tgq5_0(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t _sSo16INCallRecordTypeVSYSCSY8rawValuexSg03RawE0Qz_tcfCTW_0(uint64_t *a1)
{
  v1 = *a1;
  INAddCallParticipantParticipantUnsupportedReason.init(rawValue:)();
  return OUTLINED_FUNCTION_46(v2, v3);
}

uint64_t _sSo23INCallRecordTypeOptionsVs10SetAlgebraSCsACP5unionyxxnFTW_0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss9OptionSetPsE5unionyxxF27PhoneCallFlowDelegatePlugin0dE6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallRecordTypeOptionsVs10SetAlgebraSCsACP11subtractingyxxFTW_0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss10SetAlgebraPsE11subtractingyxxF27PhoneCallFlowDelegatePlugin0dE6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallCapabilityOptionsVs10SetAlgebraSCsACP19symmetricDifferenceyxxnFTW_0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_14_11(a1);
  result = _ss9OptionSetPsE19symmetricDifferenceyxxF27PhoneCallFlowDelegatePlugin0eF6RecordC7OptionsV_Tgq5_0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t _sSo23INCallRecordTypeOptionsVs25ExpressibleByArrayLiteralSCsACP05arrayH0x0gH7ElementQzd_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized SetAlgebra<>.init(arrayLiteral:)(a1);
  *a2 = result;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PhonePerson.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  OUTLINED_FUNCTION_70();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_26B88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_68_0();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_26C24()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_26EE4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v3 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_26F3C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_26FFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2703C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_270E8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2732C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_27368()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_273A4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2746C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_274AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_2754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_275A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_275F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_276B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_278D4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 128))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_27918(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 152))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

uint64_t sub_2795C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 176))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_279A0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 200))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_279E4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 224))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_27AFC()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_27B3C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_27B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_27BC8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_27BFC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_27C30()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_27D50()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_27D88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_27DE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_27E40()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_9_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_27F04()
{
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_2805C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2809C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_281DC@<X0>(uint64_t *a1@<X8>)
{
  result = AppDescription.rskeCommand.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v8 = a1 + *(a3 + 32);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_282EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMd, &_s10SnippetKit16CodableAceObjectVySo020SAIntentGroupRunSiriB8ExecutorCGMR);
    v10 = a1 + *(a4 + 32);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_28478()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_284B8()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_28510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_28568()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_285D0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v3 = v0[15];

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_28680()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_286F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_28788@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 160))();
  *a2 = result;
  return result;
}

__n128 sub_287D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_287EC(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 184))();
}

uint64_t sub_28868()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_288C4()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_289B0()
{
  v1 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_28ABC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v3 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v4 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_28B30()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_28C10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMd, &_s13SiriUtilities11TransformerVySay27PhoneCallFlowDelegatePlugin8SmsGroup_pGSaySo06INCallJ0CGSgGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_28CA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_28CE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_28D60()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_28D98()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

char *_sSp14moveInitialize4from5countySpyxG_SitF27PhoneCallFlowDelegatePlugin8SmsGroup_p_Tg5_0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_31(a3, result);
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_3_24(result, a3, a2);
  }

  return result;
}

__n128 sub_28E68(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28E74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v2 = *(v0 + 88);

  v3 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  v4 = *(v0 + 168);

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_28EDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

__n128 sub_28F40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28F80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 320))();
  *a2 = result;
  return result;
}

__n128 sub_28FD8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_28FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_29064()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  v1 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_7(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_66_5();
  v8(v7);
  v9 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_29124()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  v1 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_7(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_66_5();
  v8(v7);
  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_29250()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_292A8()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_29310()
{
  OUTLINED_FUNCTION_22_6();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_133();
  type metadata accessor for IntentPromptAnswer();
  OUTLINED_FUNCTION_133();
  type metadata accessor for DisambiguationResult();
  v1 = type metadata accessor for CheckedContinuation();
  OUTLINED_FUNCTION_7(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_66_5();
  v8(v7);
  v9 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_293F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMd, &_sScCy11SiriKitFlow0aB25DisambiguationListAdapterCs5NeverOGMR);
  OUTLINED_FUNCTION_7(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_66_5();
  v8(v7);
  v9 = OUTLINED_FUNCTION_96_0();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_294B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_294EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 152))();
  *a2 = result;
  return result;
}

__n128 sub_29544(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_29558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMd, &_sScCySo32SAIntentGroupLaunchAppWithIntentCs5Error_pGMR);
  OUTLINED_FUNCTION_23_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_295E4()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_29640()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_296B4()
{
  OUTLINED_FUNCTION_66();
  v1 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  OUTLINED_FUNCTION_13_2(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  (*(v3 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);

  v13 = type metadata accessor for NLContextUpdate();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v13))
  {
    (*(*(v13 - 8) + 8))(v0 + v9, v13);
  }

  v14 = *(v0 + ((v11 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_65();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_2986C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_298B4()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_43_9(*(v0 + 24));
  swift_getAssociatedTypeWitness();
  v2 = OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_23_5(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + v6));

  return _swift_deallocObject(v0, v6 + 40, v4 | 7);
}

uint64_t sub_29960()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_299A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_299F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 312))();
}

__n128 sub_29A40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_29A4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29AA0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2_0();
  return (*(v4 + 336))();
}

uint64_t sub_29AF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow6Output_ps5Error_pGMd, _sScCy11SiriKitFlow6Output_ps5Error_pGMR);
  OUTLINED_FUNCTION_23_5(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_29B7C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_29BEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMd, _sScCy11SiriKitFlow0aB18DisambiguationItemCs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

BOOL _ss9OptionSetPs7ElementQzRszrlE6insertySb8inserted_x17memberAfterInserttxF27PhoneCallFlowDelegatePlugin0iJ6RecordC7OptionsV_Tgq5_0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_29D28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29D60()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_29EA8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_29F30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_29FDC()
{
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_2A010()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_2A04C()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_2A134(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2A144()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19_6();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_2A178(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 112))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2A1BC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 136))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2A204(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 120))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_2A278(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_0_3(a1);
  result = (*(v3 + 168))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_2A2C0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_50();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_2A304()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2A33C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2A380()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A484()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2A564()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2A614@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_2A6C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2A774()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo9SAAceViewCGs5Error_pGMd, &_sScCySaySo9SAAceViewCGs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2A86C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_2_0();
  result = (*(v4 + 176))();
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

__n128 sub_2A8C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2A8D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMd, &_sScCy11SiriKitFlow0aB18DisambiguationListCs5NeverOGMR);
  OUTLINED_FUNCTION_23_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_2A960()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2AA04(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  return (*(v2 + 136))();
}

__n128 sub_2AA54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2AA9C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2AAE0()
{
  v1 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_7(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_2ABD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = type metadata accessor for ContactResolverConfig();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2AC9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Locale();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = type metadata accessor for ContactResolverConfig();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2AD80()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[9];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_2AE10()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_2AF84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  OUTLINED_FUNCTION_36_4();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_2AFC8()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[16];

  v12 = v0[17];

  v13 = v0[18];

  v14 = v0[19];

  v15 = v0[20];

  v16 = v0[21];

  v17 = v0[22];

  v18 = v0[24];

  v19 = v0[25];

  return _swift_deallocObject(v0, 208, 7);
}