uint64_t _s27PhoneCallFlowDelegatePlugin0aB17NLContextProviderC14createUsoGraph33_3C2ABB69DDB872D121E37A32A4E694A9LL3for6locale12SiriNLUTypes0v14_Nlu_External_iJ0V0V13AppResolution0Z0C_10Foundation6LocaleVtKFZSo8INIntentC_So16INIntentResponseCTt2g5()
{
  v0 = type metadata accessor for UsoEntityBuilder_common_PhoneCall();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  UsoEntityBuilder_common_PhoneCall.init()();
  App.toUsoEntityBuilder(locale:)();
  dispatch thunk of UsoEntityBuilderGlobalArgs.setUsoAssociatedApp(value:)();

  v3 = type metadata accessor for UsoTaskBuilder_call_common_PhoneCall();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  UsoTaskBuilder_call_common_PhoneCall.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  UsoTaskBuilder.asUsoGraph()();
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

void outlined bridged method (mbnn) of @objc INPerson.contactIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setContactIdentifier:v4];
}

uint64_t specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v69 = a8;
  v70 = a1;
  v72 = a5;
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a11;
  v76 = a10;
  v71 = a9;
  v20 = type metadata accessor for AppResolver();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v66 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90[3] = a15;
  v90[4] = a18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, a6, a15);
  v89[3] = a14;
  v89[4] = a17;
  v67 = a17;
  v24 = __swift_allocate_boxed_opaque_existential_1(v89);
  v25 = *(*(a14 - 8) + 32);
  v68 = a14;
  v25(v24, a7, a14);
  v88[3] = a13;
  v88[4] = a16;
  v26 = v77;
  v27 = __swift_allocate_boxed_opaque_existential_1(v88);
  v28 = v72;
  (*(*(a13 - 8) + 32))(v27, v69, a13);
  *(a12 + 16) = _swiftEmptyArrayStorage;
  *(a12 + 24) = 0;
  *(a12 + 344) = Dictionary.init(dictionaryLiteral:)();
  v29 = v74;
  v30 = v75;
  *(a12 + 352) = Dictionary.init(dictionaryLiteral:)();
  v31 = type metadata accessor for PhoneAppResolutionOnDeviceFlowStrategy();
  *(a12 + 360) = v31;
  *(a12 + 368) = &outlined read-only object #0 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 376) = 0;
  *(a12 + 384) = 0;
  *(a12 + 392) = v31;
  *(a12 + 400) = &outlined read-only object #1 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 408) = 0;
  *(a12 + 416) = 0;
  *(a12 + 424) = v31;
  *(a12 + 432) = &outlined read-only object #2 of specialized PhoneAppResolutionOnDeviceFlowStrategy.init(supportedIntents:appFinder:sharedGlobals:startCallCATsSimple:phoneCallDisplayTextCATsSimple:responseGenerator:eligibleAppsFinder:appInfoBuilder:smartAppSelection:phoneAppResolutionHelper:phoneAppResolutionLogger:);
  *(a12 + 440) = 0u;
  *(a12 + 456) = 0u;
  *(a12 + 472) = 0u;
  *(a12 + 488) = 0;
  *(a12 + 192) = v70;
  outlined init with copy of SignalProviding(v29, a12 + 32);
  v32 = v30[3];
  v33 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v32);
  v34 = v32;
  v35 = v76;
  (*(v33 + 8))(v78, v34, v33);
  outlined init with take of SPHConversation(v78, a12 + 152);
  outlined init with copy of SignalProviding(v30, a12 + 200);
  outlined init with copy of SignalProviding(v89, a12 + 112);
  outlined init with copy of SignalProviding(v88, a12 + 72);
  *(a12 + 240) = v26;
  *(a12 + 248) = v28;
  outlined init with copy of SignalProviding(v90, a12 + 256);
  if (v35)
  {

    v36 = v35;
  }

  else
  {
    outlined init with copy of SignalProviding(v30, v78);
    outlined init with copy of SignalProviding(v89, &v85);
    type metadata accessor for AppUsageProvider();
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    v70 = swift_allocObject();
    v37 = v71;

    v38 = v66;
    AppResolver.init(appResolutionRules:)();
    v39 = type metadata accessor for PhoneAppResolutionHelper();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    v43 = v86;
    v44 = __swift_mutable_project_boxed_opaque_existential_1(&v85, v86);
    v69 = &v65;
    v45 = *(v43[-1].Description + 8);
    __chkstk_darwin(v44);
    v47 = v29;
    v48 = &v65 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48);
    v50 = v48;
    v29 = v47;
    v36 = specialized PhoneAppResolutionHelper.init(sharedGlobals:eligibleAppsFinder:smartAppSelection:phoneAppResolutionLogger:appUsageProvider:appResolver:)(v78, v50, v37, &v82, v70, v38, v42, v68, v67);
    __swift_destroy_boxed_opaque_existential_1(&v85);
  }

  *(a12 + 296) = v36;
  v51 = v73;
  _s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgWOcTm_0(v73, &v85, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
  if (v86)
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v51, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v90);
    outlined init with take of SPHConversation(&v85, v78);
    outlined init with take of SPHConversation(v78, a12 + 304);
  }

  else
  {

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(&v85, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    outlined init with copy of SignalProviding(v30, &v82);
    v52 = [objc_opt_self() sharedAnalytics];
    v53 = [v52 defaultMessageStream];

    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v54 = static EligibleAppFinder.instance;
    v80 = type metadata accessor for EligibleAppFinder();
    v81 = &protocol witness table for EligibleAppFinder;
    *&v79 = v54;
    v86 = &type metadata for PhoneAppResolutionLogger;
    v87 = &protocol witness table for PhoneAppResolutionLogger;
    v55 = swift_allocObject();
    *&v85 = v55;
    v56 = *(&v83 + 1);
    v57 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    v58 = *(v57 + 112);

    if (v58(v56, v57))
    {
      v59 = CurrentRequest.executionRequestId.getter();
      v61 = v60;
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    *&v78[0] = v59;
    *(&v78[0] + 1) = v61;
    *&v78[1] = v53;
    outlined init with copy of SignalProviding(&v82, &v78[1] + 8);
    v62 = *(&v83 + 1);
    v63 = v84;
    __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
    (*(v63 + 216))(v62, v63);
    outlined init with take of SPHConversation(&v79, &v78[6] + 8);
    memcpy((v55 + 16), v78, 0x90uLL);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v73, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMd, &_s27PhoneCallFlowDelegatePlugin0A20AppResolutionLogging_pSgMR);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v88);
    __swift_destroy_boxed_opaque_existential_1(v89);
    __swift_destroy_boxed_opaque_existential_1(v90);
    __swift_destroy_boxed_opaque_existential_1(&v82);
    outlined init with take of SPHConversation(&v85, a12 + 304);
    v30 = v75;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return a12;
}

uint64_t outlined assign with take of PhoneCallNLIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of YesNoConfirmationModel(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_23_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_19_0();
  v8(v7);
  return a2;
}

uint64_t _s27PhoneCallFlowDelegatePlugin18CommonDirectActionOWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_23_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of AppDescription(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #3 in PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return closure #3 in PhoneAppResolutionOnDeviceFlowStrategy.makeDisambiguationPrompt(apps:)(a1, v1[2]);
}

uint64_t partial apply for closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = closure #2 in ActionableCallControlFlow.execute();
  OUTLINED_FUNCTION_143_0();

  return closure #1 in PhoneAppResolutionOnDeviceFlowStrategy.shadowPredictAndStore(phoneCallNLIntent:)(v7, v8, v9, v4, v10);
}

uint64_t OUTLINED_FUNCTION_36_16()
{
}

uint64_t OUTLINED_FUNCTION_38_13()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 168));
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a13;
  v16 = a14;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &a12);
}

uint64_t OUTLINED_FUNCTION_58_7()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v9 = *(v0[29] + 8);
  return v0[30];
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *(v12 + 184);
  *(v11 + 16) = v10;
  v15 = v11 + ((*(a9 + 80) + 32) & ~*(a9 + 80)) + *(a9 + 72) * v9;

  return outlined init with take of AppDescription(v14, v15);
}

void OUTLINED_FUNCTION_91_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_94_4()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, (v0 - 192));
}

uint64_t OUTLINED_FUNCTION_97_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_105_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_107_1()
{
}

uint64_t OUTLINED_FUNCTION_109_1()
{
  result = v0[49];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[52];
  return result;
}

uint64_t OUTLINED_FUNCTION_111_2()
{
}

uint64_t OUTLINED_FUNCTION_128_0()
{
}

uint64_t OUTLINED_FUNCTION_129_1()
{
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_131_1()
{
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  v23 = a21;
  v24 = a22;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &a20);
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return App.toAppDescription(deviceState:appInfoBuilder:)((v13 + 16), (a12 + 72), v12);
}

uint64_t OUTLINED_FUNCTION_134()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_136_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 168) = 0;
  *(v5 - 160) = a5;

  return DefaultStringInterpolation.appendInterpolation(type:tags:function:)(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_137_1()
{
}

uint64_t OUTLINED_FUNCTION_140_1()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = *(v0[13] + 96);
  return v0[14];
}

uint64_t OUTLINED_FUNCTION_154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  *(*(v15 + 56) + v14) = a14;
}

void OUTLINED_FUNCTION_155(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

BOOL OUTLINED_FUNCTION_156()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_157()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_158()
{
}

uint64_t OUTLINED_FUNCTION_159(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, a2, a3);
}

uint64_t OUTLINED_FUNCTION_160()
{
}

BOOL OUTLINED_FUNCTION_161()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_163()
{
}

uint64_t OUTLINED_FUNCTION_164(uint64_t a1, unint64_t a2)
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, (v2 - 192));
}

id SISchemaUUID.__allocating_init(nsuuid:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_23_1(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t one-time initialization function for domainAffinityScoresSignalUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_427BC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DomainUseCase.phoneCall(_:), v0);
  v6(v5 + v2, enum case for DomainUseCase.phoneCallSiri(_:), v0);
  v6(v5 + 2 * v2, enum case for DomainUseCase.phoneCallReceived(_:), v0);
  v6(v5 + 3 * v2, enum case for DomainUseCase.messageSend(_:), v0);
  v6(v5 + 4 * v2, enum case for DomainUseCase.messageSendSiri(_:), v0);
  result = (v6)(v5 + 5 * v2, enum case for DomainUseCase.messageReceived(_:), v0);
  static PhoneAppSelectionSignalsGatherer.domainAffinityScoresSignalUseCases = v4;
  return result;
}

uint64_t one-time initialization function for domainToContactAffinityScoresSignalUseCases()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v0 = type metadata accessor for DomainUseCase();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_427BC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for DomainUseCase.phoneCallToContact(_:), v0);
  v6(v5 + v2, enum case for DomainUseCase.phoneCallToContactSiri(_:), v0);
  v6(v5 + 2 * v2, enum case for DomainUseCase.phoneCallReceivedFromContact(_:), v0);
  v6(v5 + 3 * v2, enum case for DomainUseCase.messageSendToContact(_:), v0);
  v6(v5 + 4 * v2, enum case for DomainUseCase.messageSendToContactSiri(_:), v0);
  result = (v6)(v5 + 5 * v2, enum case for DomainUseCase.messageReceivedFromContact(_:), v0);
  static PhoneAppSelectionSignalsGatherer.domainToContactAffinityScoresSignalUseCases = v4;
  return result;
}

uint64_t PhoneAppSelectionSignalsGatherer.__allocating_init(messageStream:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  PhoneAppSelectionSignalsGatherer.init(messageStream:)(a1);
  return v5;
}

uint64_t PhoneAppSelectionSignalsGatherer.execute(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:phoneAppSelectionSignalsGathererType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.siriPhone);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    oslog = a6;
    v17 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v17 = 136315394;
    v18 = Array.description.getter();
    v20 = a1;
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v30);

    *(v17 + 4) = v21;
    a1 = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v30);
    _os_log_impl(&dword_0, v15, v16, "PhoneAppSelectionSignalsGatherer execute with candidateApps:%s selectedAppId:%s", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();

    a6 = oslog;
    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  v22 = (*(*v7 + 152))(a1, a3, a2);
  specialized _arrayForceCast<A, B>(_:)(v22);

  v23 = type metadata accessor for SignalGatherer();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  SignalGatherer.init(signals:candidateAppBundleIds:)();
  outlined init with copy of SignalProviding(a2, v30);
  v26 = swift_allocObject();
  *(v26 + 16) = v7;
  *(v26 + 24) = a1;
  outlined init with take of PhoneCallFeatureFlagProviding(v30, v26 + 32);
  *(v26 + 72) = a3;
  *(v26 + 80) = a4;
  *(v26 + 88) = a5;
  *(v26 + 96) = a6 & 1;
  v27 = a1;

  dispatch thunk of SignalGatherer.gatherValuesAndTimings(timeoutSeconds:completion:)();
}

uint64_t closure #1 in PhoneAppSelectionSignalsGatherer.execute(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:phoneAppSelectionSignalsGathererType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v59 = a8;
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v57 = a3;
  v58 = a4;
  v10 = type metadata accessor for SignalGatherer.ValuesWithTimings();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v52 - v20;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v52 - v20, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v11 + 32))(v17, v21, v10);
    if (one-time initialization token for siriPhone != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = __swift_project_value_buffer(v27, static Logger.siriPhone);
    (*(v11 + 16))(v15, v17, v10);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    v31 = os_log_type_enabled(v29, v30);
    v56 = v11;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v54 = v28;
      v33 = v32;
      v53 = swift_slowAlloc();
      v63 = v53;
      *v33 = 136315138;
      SignalGatherer.ValuesWithTimings.values.getter();
      type metadata accessor for SignalValue();
      v34 = a2;
      v35 = Dictionary.Keys.description.getter();
      v55 = v17;
      v36 = v10;
      v38 = v37;

      v39 = *(v11 + 8);
      v39(v15, v36);
      v40 = v35;
      a2 = v34;
      v41 = v39;
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v38, &v63);
      v10 = v36;
      v17 = v55;

      *(v33 + 4) = v42;
      _os_log_impl(&dword_0, v29, v30, "PhoneAppSelectionSignalsGatherer gathered values: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    else
    {

      v41 = *(v11 + 8);
      v41(v15, v10);
    }

    SignalGatherer.ValuesWithTimings.values.getter();
    PhoneAppSelectionSignalsGatherer.buildMetrics(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)();
    v44 = v43;

    if (v44)
    {
      v45 = *(a2 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_messageStream);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v45 emitMessage:v44 isolatedStreamUUID:isa];

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v47, v48))
      {

        return (v41)(v17, v10);
      }

      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "PhoneAppSelectionSignalsGatherer emitMessage is done.", v49, 2u);
    }

    else
    {
      v47 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v47, v50, "PhoneAppSelectionSignalsGatherer failed on build metrics object", v51, 2u);
      }
    }

    return (v41)(v17, v10);
  }

  if (one-time initialization token for siriPhone != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.siriPhone);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_0, v23, v24, "PhoneAppSelectionSignalsGatherer gathering failed", v25, 2u);
  }

  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v21, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMd, &_ss6ResultOy11SiriSignals14SignalGathererC17ValuesWithTimingsVAC0dE5ErrorOGMR);
}

uint64_t PhoneAppSelectionSignalsGatherer.getSignals(person:candidateAppBundleIds:phoneCallNLIntent:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v159 = a2;
  v153 = a1;
  v170 = type metadata accessor for SignalDefinitionParametersProvider();
  v4 = OUTLINED_FUNCTION_7(v170);
  v160 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_9_3();
  __chkstk_darwin(v13);
  v162 = &v135 - v14;
  v161 = type metadata accessor for SignalComputationContext();
  v15 = OUTLINED_FUNCTION_7(v161);
  v164 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = type metadata accessor for CommunicationTypeSignal.CommunicationType();
  v23 = OUTLINED_FUNCTION_21(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  OUTLINED_FUNCTION_4();
  v26 = static ClientLocaleSignal.instances()();
  v27 = static ClientLanguageSignal.instances()();
  v181 = v26;
  specialized Array.append<A>(contentsOf:)(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
  inited = swift_initStackObject();
  v157 = xmmword_424FD0;
  *(inited + 16) = xmmword_424FD0;
  v29 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v156 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v30 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v31 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent + 8);
  v32 = *v29;
  OUTLINED_FUNCTION_43_14();
  static AppSelectionSignalsGatheringHelper.getCommunicationType(phoneCallNLIntent:skIntent:)(v33, v34, v35);

  *(inited + 56) = type metadata accessor for CommunicationTypeSignal();
  *(inited + 64) = &protocol witness table for CommunicationTypeSignal;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  CommunicationTypeSignal.init(communicationType:)();
  specialized Array.append<A>(contentsOf:)(inited);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals13DomainUseCaseOGMR);
  v151 = type metadata accessor for DomainUseCase();
  v36 = *(v151 - 8);
  v165 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = v36;
  v168 = (v37 + 32) & ~v37;
  v149 = v168 + v165;
  v39 = swift_allocObject();
  v40 = OUTLINED_FUNCTION_45_12(v39, &v180);
  v158 = enum case for DomainUseCase.phoneCall(_:);
  v41 = *(v38 + 104);
  v152 = v38 + 104;
  (v41)(v42 + ((v37 + 32) & ~v37), v40);
  OUTLINED_FUNCTION_23_20();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v43 = static DomainUserPersonaSignal.instances(context:)();
  v45 = v164 + 8;
  v44 = *(v164 + 8);
  v46 = v161;
  v44(v21, v161);
  specialized Array.append<A>(contentsOf:)(v43);
  v47 = static TimeSpentInAppAffinityScore.instances()();

  OUTLINED_FUNCTION_23_20();
  SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
  v48 = static ForegroundAppBiomeSignal.instances(context:)();
  v147 = v21;
  v164 = v45;
  v146 = v44;
  v44(v21, v46);
  v174 = v47;
  specialized Array.append<A>(contentsOf:)(v48);
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  specialized Array.append<A>(contentsOf:)(Launched);
  v50 = static TotalTimeSpentInApp.instances()();
  specialized Array.append<A>(contentsOf:)(v50);
  v51 = v174;
  v52 = type metadata accessor for SignalDefinitionParametersProvider.Builder();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  v163 = v52;
  swift_allocObject();
  SignalDefinitionParametersProvider.Builder.init()();
  v55 = v168;
  v56 = v165;
  v167 = v37;
  v57 = v151;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_42BF10;
  OUTLINED_FUNCTION_20_28(&v182 + 4);
  v41();
  (v41)(v58 + v55 + v56, enum case for DomainUseCase.phoneCallSiri(_:), v57);
  v143 = enum case for DomainUseCase.messageSend(_:);
  (v41)(v58 + v55 + 2 * v56);
  v154 = 3 * v56;
  v144 = v41;
  (v41)(v58 + v55 + 3 * v56, enum case for DomainUseCase.messageSendSiri(_:), v57);
  dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
  OUTLINED_FUNCTION_49_11();

  OUTLINED_FUNCTION_51_15(&v183);
  dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();
  v59 = v160;

  v60 = v170;
  v172 = v170;
  v173 = &protocol witness table for SignalDefinitionParametersProvider;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
  v62 = v59;
  v64 = v59[2];
  v63 = v59 + 2;
  v166 = v64;
  (v64)(boxed_opaque_existential_1, v58, v60);
  v65 = static DomainTotalFrequencySignal.instances(with:)();
  OUTLINED_FUNCTION_7_45(v65);
  specialized Array.append<A>(contentsOf:)(v51);
  v66 = *v156;
  if (*v156)
  {
    v150 = 4 * v56;
    v156 = (2 * v56);
    OUTLINED_FUNCTION_43_17();
    v67 = v66;
    SignalDefinitionParametersProvider.Builder.init()();
    OUTLINED_FUNCTION_36_17();
    v68 = swift_allocObject();
    v69 = OUTLINED_FUNCTION_45_12(v68, &v180);
    LODWORD(v157) = enum case for DomainUseCase.phoneCallToContact(_:);
    v148 = v63;
    v71 = v144;
    (v144)(v70 + v168, v69);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v72 = v67;
    v141 = v72;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    OUTLINED_FUNCTION_51_15(v175);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v73 = v170;
    v172 = v170;
    v74 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v166)(v74, v68, v73);
    v75 = static DomainToContactTimeSinceLastUsedSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v75);
    OUTLINED_FUNCTION_43_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v76 = v168;
    v77 = swift_allocObject();
    v142 = xmmword_424FF0;
    *(v77 + 16) = xmmword_424FF0;
    LODWORD(v149) = enum case for DomainUseCase.messageSendToContact(_:);
    (v71)(v77 + v76);
    v78 = v165;
    OUTLINED_FUNCTION_20_28(&v180);
    v71();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v79 = v141;
    v136 = v79;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    OUTLINED_FUNCTION_51_15(v176);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v172 = v73;
    v80 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v166)(v80, v79, v73);
    v81 = static DomainToContactFrequencyByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v81);
    OUTLINED_FUNCTION_43_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v82 = v168;
    v141 = (v168 + 6 * v78);
    OUTLINED_FUNCTION_36_17();
    v83 = swift_allocObject();
    v140 = xmmword_427BC0;
    *(v83 + 16) = xmmword_427BC0;
    v84 = v83 + v82;
    OUTLINED_FUNCTION_20_28(&v180);
    v71();
    v139 = enum case for DomainUseCase.phoneCallToContactSiri(_:);
    (v71)(v84 + v78);
    v85 = v156;
    (v71)(v156 + v84, enum case for DomainUseCase.phoneCallToContactHaptic(_:), v57);
    OUTLINED_FUNCTION_20_28(&v172);
    v71();
    v138 = enum case for DomainUseCase.messageSendToContactSiri(_:);
    (v71)(v84 + v150);
    v137 = 5 * v78;
    (v71)(v84 + 5 * v78, enum case for DomainUseCase.messageSendToContactHaptic(_:), v57);
    v86 = dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();

    v87 = v136;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();

    OUTLINED_FUNCTION_51_15(v177);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v172 = v170;
    v88 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v166)(v88, v86, v170);
    v89 = static DomainToContactTotalFrequencyByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v89);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    OUTLINED_FUNCTION_36_17();
    v90 = swift_allocObject();
    OUTLINED_FUNCTION_45_12(v90, &v161);
    v92 = v91 + v168;
    OUTLINED_FUNCTION_20_28(&v180);
    v71();
    OUTLINED_FUNCTION_20_28(&v160 + 4);
    v71();
    (v71)(v85 + v92, enum case for DomainUseCase.phoneCallReceivedFromContact(_:), v57);
    OUTLINED_FUNCTION_20_28(&v172);
    v71();
    OUTLINED_FUNCTION_20_28(&v160);
    v71();
    v93 = v92 + v137;
    v94 = v170;
    (v71)(v93, enum case for DomainUseCase.messageReceivedFromContact(_:), v57);
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v95 = v87;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(bundleIds:)();

    v96 = v155;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v172 = v94;
    v97 = OUTLINED_FUNCTION_54_15(&protocol witness table for SignalDefinitionParametersProvider);
    (v166)(v97, v96, v94);
    v98 = static DomainToContactAffinityScoreByIntentSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v98);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v99 = swift_allocObject();
    OUTLINED_FUNCTION_45_12(v99, &v165);
    OUTLINED_FUNCTION_20_28(&v182 + 4);
    v71();
    OUTLINED_FUNCTION_20_28(&v168 + 4);
    v71();
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(domainUseCases:)();
    OUTLINED_FUNCTION_49_11();

    v100 = v95;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();
    OUTLINED_FUNCTION_33_3();

    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v172 = v94;
    v173 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v171);
    OUTLINED_FUNCTION_46_14();
    v101 = v166;
    v166();
    v102 = static DomainTotalFrequencyByCountryCodeSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v102);
    OUTLINED_FUNCTION_31_17();
    SignalDefinitionParametersProvider.Builder.init()();
    v103 = v100;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.with(intent:)();

    v104 = v145;
    dispatch thunk of SignalDefinitionParametersProvider.Builder.create()();

    v172 = v94;
    v173 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v171);
    OUTLINED_FUNCTION_46_14();
    v101();
    v105 = static DomainDefaultAppSignal.instances(with:)();
    OUTLINED_FUNCTION_7_45(v105);
    v172 = v94;
    v173 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v171);
    OUTLINED_FUNCTION_46_14();
    v101();
    v106 = static DomainRequestByLabelSignal.instances(with:)();
    __swift_destroy_boxed_opaque_existential_1(&v171);
    specialized Array.append<A>(contentsOf:)(v106);
    v172 = v94;
    v173 = &protocol witness table for SignalDefinitionParametersProvider;
    __swift_allocate_boxed_opaque_existential_1(&v171);
    OUTLINED_FUNCTION_46_14();
    v101();
    v107 = static DomainRequestByHandleSignal.instances(with:)();
    __swift_destroy_boxed_opaque_existential_1(&v171);
    specialized Array.append<A>(contentsOf:)(v107);

    v62 = v160;
    v108 = v160[1];
    v108(v104, v94);
    v109 = OUTLINED_FUNCTION_57_10(v179);
    (v108)(v109);
    v110 = OUTLINED_FUNCTION_57_10(v178);
    (v108)(v110);
    v111 = OUTLINED_FUNCTION_57_10(v177);
    (v108)(v111);
    v112 = OUTLINED_FUNCTION_57_10(v176);
    (v108)(v112);
    v113 = OUTLINED_FUNCTION_57_10(v175);
    (v108)(v113);
  }

  v114 = v62;
  if (v153)
  {
    v115 = v153;
    v116 = outlined bridged method (pb) of @objc INPerson.siriMatches.getter(v115);
    if (v116)
    {
      v117 = v116;
      if (specialized Array.count.getter(v116))
      {
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v117 & 0xC000000000000001) == 0, v117);
        if ((v117 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v118 = *(v117 + 32);
        }

        OUTLINED_FUNCTION_49_11();

        INPerson.siriRemembersContactName.getter();

        goto LABEL_11;
      }
    }

    INPerson.siriRemembersContactName.getter();
LABEL_11:
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Logger.siriPhone);

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();

    v122 = os_log_type_enabled(v120, v121);
    v169 = v115;
    if (v122)
    {
      v123 = swift_slowAlloc();
      v124 = v114;
      v125 = swift_slowAlloc();
      v171 = v125;
      *v123 = 136315138;
      v126 = OUTLINED_FUNCTION_33_4();
      *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v128);
      _os_log_impl(&dword_0, v120, v121, "PhoneAppSelectionSignalsGatherer gathering contactName:%s", v123, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      v114 = v124;
      OUTLINED_FUNCTION_8();

      OUTLINED_FUNCTION_8();
    }

    v129 = v161;
    v130 = v147;
    v131 = v146;
    if (one-time initialization token for domainAffinityScoresSignalUseCases != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23_20();
    SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
    v132 = static DomainAffinityScoreSignal.instances(context:)();
    v131(v130, v129);
    specialized Array.append<A>(contentsOf:)(v132);
    if (one-time initialization token for domainToContactAffinityScoresSignalUseCases != -1)
    {
      swift_once();
    }

    SignalComputationContext.init(bundleIds:entityId:sharedUserId:domainUseCases:)();
    v133 = static DomainToContactAffinityScoreByNameSignal.instances(context:)();
    v131(v130, v129);
    specialized Array.append<A>(contentsOf:)(v133);
  }

  v114[1](v162, v170);
  return v181;
}

double PhoneAppSelectionSignalsGatherer.parseValue(val:appBundleId:isIndependentKey:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v3 = OUTLINED_FUNCTION_21(v2);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v43 - v9, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v11 = type metadata accessor for SignalValue();
  v12 = -1.0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v10, v8, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    v13 = *(v11 - 8);
    v14 = *(v13 + 88);
    v15 = OUTLINED_FUNCTION_33_4();
    v17 = v16(v15);
    if (v17 == enum case for SignalValue.independent(_:))
    {
      v18 = OUTLINED_FUNCTION_22_18();
      v19(v18);
      v20 = *v8;
      goto LABEL_19;
    }

    if (v17 == enum case for SignalValue.dependent(_:))
    {
      v21 = OUTLINED_FUNCTION_22_18();
      v22(v21);
      OUTLINED_FUNCTION_38_14();
      if (v23)
      {
        OUTLINED_FUNCTION_8_2();
        PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)();

        goto LABEL_19;
      }

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v33, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_65_0();
        *v36 = 0;
        v37 = "PhoneAppSelectionSignalsGatherer dependent bundleId shouldn't be empty";
LABEL_18:
        _os_log_impl(&dword_0, v34, v35, v37, v36, 2u);
        OUTLINED_FUNCTION_8();

        goto LABEL_19;
      }

      goto LABEL_25;
    }

    if (v17 == enum case for SignalValue.independentDouble(_:))
    {
      v24 = OUTLINED_FUNCTION_22_18();
      v25(v24);
      v12 = *v8;
      goto LABEL_19;
    }

    if (v17 != enum case for SignalValue.dependentDouble(_:))
    {
      v39 = *(v13 + 8);
      v40 = OUTLINED_FUNCTION_33_4();
      v41(v40);
      goto LABEL_19;
    }

    v26 = OUTLINED_FUNCTION_22_18();
    v27(v26);
    OUTLINED_FUNCTION_38_14();
    if (!v28)
    {

      if (one-time initialization token for siriPhone != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_9_0(v42, static Logger.siriPhone);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_65_0();
        *v36 = 0;
        v37 = "PhoneAppSelectionSignalsGatherer dependentDouble bundleId shouldn't be empty";
        goto LABEL_18;
      }

LABEL_25:

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_8_2();
    PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)();
    v30 = v29;
    v32 = v31;

    if (v32)
    {
      v12 = -1.0;
    }

    else
    {
      v12 = v30;
    }
  }

LABEL_19:
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  return v12;
}

PhoneCallFlowDelegatePlugin::SignalValueObject __swiftcall SignalValueObject.init()()
{
  v0 = -1.0;
  v1 = -1;
  result.doubleValue = v0;
  result.intValue = v1;
  return result;
}

void *PhoneAppSelectionSignalsGatherer.getInputINIntent()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v2 = *(v0 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent + 8);
  v3 = v1;
  return v1;
}

void PhoneAppSelectionSignalsGatherer.setInputINIntent(intent:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v6, static Logger.siriPhone);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = a1;
    v12 = v7;
    _os_log_impl(&dword_0, v8, v9, "PhoneAppSelectionSignalsGatherer update input intent: %@", v10, 0xCu);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_8();

    OUTLINED_FUNCTION_8();
  }

  v13 = (v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  v15 = *(v3 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_inputINIntent);
  *v13 = a1;
  v13[1] = a2;
  v14 = v7;
}

void PhoneAppSelectionSignalsGatherer.getKeyValueCaseInsensitiveDouble(appId:map:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_18_21(v3, v4, v5);
  v6 = 0;
  while (v2)
  {
    v7 = v6;
LABEL_8:
    OUTLINED_FUNCTION_28_17(v7);
    OUTLINED_FUNCTION_43_14();
    v8 = PhoneAppSelectionSignalsGatherer.areKeysEqual(appId:mappingKey:)();

    if (v8)
    {
LABEL_9:

      OUTLINED_FUNCTION_65();
      return;
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v1)
    {
      goto LABEL_9;
    }

    v2 = *(v0 + 8 * v7);
    ++v6;
    if (v2)
    {
      v6 = v7;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t PhoneAppSelectionSignalsGatherer.areKeysEqual(appId:mappingKey:)()
{
  v0 = String.lowercased()();
  v1 = String.lowercased()();
  if (v0._countAndFlagsBits == v1._countAndFlagsBits && v0._object == v1._object)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
    }
  }

  OUTLINED_FUNCTION_8_2();
  v4 = String.lowercased()();
  v5 = String.lowercased()();
  if (v4._countAndFlagsBits == v5._countAndFlagsBits && v4._object == v5._object)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_33_4();
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = OUTLINED_FUNCTION_8_2();
  v10 = static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v8, v9);

  if (v10)
  {
    v11 = String.lowercased()();
    v12 = String.lowercased()();
    if (v11._countAndFlagsBits == v12._countAndFlagsBits && v11._object == v12._object)
    {
      v14 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_20_0();
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v14 = 0;
  }

  return (v7 | v14) & 1;
}

void *PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionGroundTruthGenerated(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = a6;
  v11 = a5;
  if (a7)
  {
    v13 = 9;
  }

  else
  {
    v13 = 3;
  }

  PhoneAppSelectionSignalsGatherer.buildIndependentSignals(person:phoneCallNLIntent:signalMap:resolutionType:)(a1, a2, a6, v13, a5, a6, a7, a8, v42, v43, v45, v46, v47, v48, v50, v52, a2, a4, v57, v58);
  v44 = v14;
  v58 = _swiftEmptyArrayStorage;
  v15 = *(a3 + 16);
  v16 = &dword_54B000;
  if (v15)
  {
    v17 = (a3 + 40);
    v53 = _swiftEmptyArrayStorage;
    v49 = v11;
    v51 = v10;
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionAppDependentSignals(person:phoneCallNLIntent:signalMap:appBundleId:selectedAppId:)(v20, v54, v10, v18, v19, v56, v11);
      if (v21)
      {
        v22 = v21;

        v23 = v22;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v58 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v53 = v58;
      }

      else
      {
        if (*(v16 + 369) != -1)
        {
          OUTLINED_FUNCTION_0_6();
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);

        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v9;
          v29 = v16;
          v30 = swift_slowAlloc();
          v57 = v30;
          *v27 = 136315138;
          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v57);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_0, v25, v26, "PhoneAppSelectionSignalsGatherer dependentSignal is nil appBundleId:%s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          v16 = v29;
          v9 = v28;
          v10 = v51;
          OUTLINED_FUNCTION_8();

          v11 = v49;
          OUTLINED_FUNCTION_8();
        }

        else
        {
        }
      }

      v17 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v32 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated) init];
  if (v32)
  {
    v33 = v32;
    v34 = v44;
    [v32 setInferenceCommsAppSelectionTrainingAppIndependentSignals:v44];
    outlined bridged method (mbnn) of @objc INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.inferenceCommsAppSelectionTrainingAppDependentSignals.setter(v53, v33);
  }

  else
  {

    if (*(v16 + 369) != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v35, static Logger.siriPhone);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v37))
    {
      v38 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v38);
      OUTLINED_FUNCTION_33(&dword_0, v39, v40, "PhoneAppSelectionSignalsGatherer CommsAppSelectionGroundTruthGenerated can't be constructed");
      OUTLINED_FUNCTION_8();
    }

    v33 = 0;
    v34 = v44;
  }

  return v33;
}

void PhoneAppSelectionSignalsGatherer.buildIndependentSignals(person:phoneCallNLIntent:signalMap:resolutionType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_66();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v28 = OUTLINED_FUNCTION_21(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &a9 - v31;
  v33 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppIndependentSignals) init];
  if (v33)
  {
    v34 = v33;
    specialized Dictionary.subscript.getter(0x61636F6C2E776172, 0xEA0000000000656CLL, v26, v32);
    v35 = *(*v20 + 160);
    v36 = OUTLINED_FUNCTION_14_39();
    v37 = v35(v36);
    OUTLINED_FUNCTION_41_16();
    [v34 setRequestOriginLocale:v37];
    specialized Dictionary.subscript.getter(0x676E616C2E776172, 0xEC00000065676175, v26, v32);
    v38 = OUTLINED_FUNCTION_14_39();
    v39 = v35(v38);
    OUTLINED_FUNCTION_41_16();
    [v34 setRequestOriginLanguage:v39];
    [v34 setAppResolutionType:v24];
    specialized Dictionary.subscript.getter(0xD000000000000015, 0x800000000045A850, v26, v32);
    v40 = OUTLINED_FUNCTION_14_39();
    v41 = v35(v40);
    OUTLINED_FUNCTION_41_16();
    [v34 setCommunicationType:v41];
    if (one-time initialization token for userPersonaKey != -1)
    {
      swift_once();
    }

    specialized Dictionary.subscript.getter(static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey, *(&static CommsAppSelectionAppIndependentSignalsKeys.userPersonaKey + 1), v26, v32);
    v42 = OUTLINED_FUNCTION_14_39();
    v43 = v35(v42);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v32, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_12_40();
    if (v44 != v45)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_38();
      if (v44 ^ v45 | v46)
      {
        [v34 setUserPersona:v43];
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_15:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v47, static Logger.siriPhone);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v49))
  {
    v50 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v50);
    OUTLINED_FUNCTION_33(&dword_0, v51, v52, "PhoneAppSelectionSignalsGatherer CommsAppSelectionAppIndependentSignals can't be constructed");
    OUTLINED_FUNCTION_8();
  }

LABEL_12:
  OUTLINED_FUNCTION_65();
}

uint64_t SignalValueObject.int32Value.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void PhoneAppSelectionSignalsGatherer.buildCommsAppSelectionAppDependentSignals(person:phoneCallNLIntent:signalMap:appBundleId:selectedAppId:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v314 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
  v15 = OUTLINED_FUNCTION_21(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v308 - v18;
  v20 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals) init];
  if (v20)
  {
    v21 = v20;
    v22 = a6 == a4 && a7 == a5;
    if (v22)
    {
      v23 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_43_14();
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    [v21 setIsResolvedApp:v23 & 1];
    type metadata accessor for App();

    App.__allocating_init(appIdentifier:)();
    v30 = App.isFirstParty()();

    [v21 setIsFirstPartyApp:v30];
    [v21 setIsResolvedContactInApp:PhoneAppSelectionSignalsGatherer.getIsResolvedContactInApp(phoneCallNLIntent:appBundleId:)(a2) & 1];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_8_49();
    specialized Dictionary.subscript.getter(v31, v32, v314, v33);
    v34 = *(*v8 + 160);
    v35 = *v8 + 160;
    v36 = OUTLINED_FUNCTION_25_21();
    v37 = v34(v36);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    *&v38 = v37;
    [v21 setAppTimeSpentAffinityScore:v38];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_6_52();
    specialized Dictionary.subscript.getter(v39, v40, v41, v42);
    v43 = OUTLINED_FUNCTION_25_21();
    v34(v43);
    v44 = OUTLINED_FUNCTION_33_3();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v44, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_26_19();
    [v21 setIsForegroundApp:?];
    OUTLINED_FUNCTION_3_63();
    OUTLINED_FUNCTION_6_52();
    specialized Dictionary.subscript.getter(v45, v46, v47, v48);
    v49 = OUTLINED_FUNCTION_25_21();
    v311 = v35;
    v34(v49);
    v50 = OUTLINED_FUNCTION_33_3();
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v50, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
    OUTLINED_FUNCTION_12_40();
    if (v51 != v52)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_11_38();
      if (v51 ^ v52 | v22)
      {
        [v21 setTimeSinceAppLastLaunchedInSec:v8];
        OUTLINED_FUNCTION_8_49();
        specialized Dictionary.subscript.getter(v53, v54, v314, v55);
        v56 = OUTLINED_FUNCTION_9_44();
        v35 = v8;
        v8 = v311;
        v57 = (v34)(v56);
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
        [v21 setAppTimeSpentInSec:v57];
        OUTLINED_FUNCTION_6_52();
        specialized Dictionary.subscript.getter(v58, v59, v60, v61);
        v310 = a4;
        v62 = v35;
        (v34)(v19, a4, a5, 0);
        v63 = OUTLINED_FUNCTION_33_3();
        outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v63, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
        OUTLINED_FUNCTION_12_40();
        if (v51 == v52)
        {
          OUTLINED_FUNCTION_11_38();
          if (v51 ^ v52 | v22)
          {
            [v21 setTimeSinceAppContactLastLaunchedInSec:v35];
            OUTLINED_FUNCTION_3_63();
            v65 = v64 - 38;
            OUTLINED_FUNCTION_8_49();
            v66 = v314;
            specialized Dictionary.subscript.getter(v65, v67, v314, v68);
            v35 = v311;
            OUTLINED_FUNCTION_10_44();
            (v34)();
            v313 = v21;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v313 setIsDefaultApp:?];
            OUTLINED_FUNCTION_3_63();
            v315 = a5;
            OUTLINED_FUNCTION_8_49();
            specialized Dictionary.subscript.getter(v69, v70, v66, v71);
            OUTLINED_FUNCTION_10_44();
            (v34)();
            v72 = OUTLINED_FUNCTION_33_3();
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v72, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v313 setIsRequestByHandleType:?];
            OUTLINED_FUNCTION_8_49();
            specialized Dictionary.subscript.getter(v65, v73, v66, v74);
            OUTLINED_FUNCTION_10_44();
            (v34)();
            v75 = OUTLINED_FUNCTION_33_3();
            v76 = v313;
            outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v75, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
            OUTLINED_FUNCTION_26_19();
            [v76 setIsRequestByLabel:?];
            v77 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentMessageSignals) init];
            v312 = v62;
            if (!v77)
            {
              goto LABEL_34;
            }

            v8 = v77;
            if (one-time initialization token for messageSendKey == -1)
            {
LABEL_20:
              v78 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageSendKey);
              v79 = v314;
              specialized Dictionary.subscript.getter(v78, v80, v314, v81);
              v82 = OUTLINED_FUNCTION_2_73();
              v83 = v34(v82);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v84 = v83;
              [v8 setAppAffinityScoreForMessages:v84];
              if (one-time initialization token for messageUsingSiriKey != -1)
              {
                swift_once();
              }

              v85 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageUsingSiriKey);
              specialized Dictionary.subscript.getter(v85, v86, v79, v87);
              v88 = OUTLINED_FUNCTION_1_76();
              v89 = v34(v88);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v90 = v89;
              [v8 setAppAffinityScoreForMessagesUsingSiri:v90];
              if (one-time initialization token for messageReceivedKey != -1)
              {
                swift_once();
              }

              v91 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.messageReceivedKey);
              specialized Dictionary.subscript.getter(v91, v92, v79, v93);
              OUTLINED_FUNCTION_9_44();
              OUTLINED_FUNCTION_10_44();
              v94 = (v34)();
              v95 = v34;
              v34 = v35;
              v96 = v95;
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              *&v97 = v94;
              [v8 setAppAffinityScoreForMessagesReceived:v97];
              OUTLINED_FUNCTION_3_63();
              OUTLINED_FUNCTION_8_49();
              specialized Dictionary.subscript.getter(v98, v99, v79, v100);
              v101 = OUTLINED_FUNCTION_9_44();
              v96(v101);
              v102 = OUTLINED_FUNCTION_33_3();
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v102, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v51 != v52)
              {
                __break(1u);
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v51 ^ v52 | v22))
              {
                goto LABEL_129;
              }

              OUTLINED_FUNCTION_42_14(v103, "setAppFreqForMessages:");
              OUTLINED_FUNCTION_3_63();
              OUTLINED_FUNCTION_8_49();
              specialized Dictionary.subscript.getter(v104, v105, v314, v106);
              v107 = OUTLINED_FUNCTION_1_76();
              v34 = v96;
              v96(v107);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v51 != v52)
              {
LABEL_130:
                __break(1u);
LABEL_131:
                __break(1u);
                goto LABEL_132;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v51 ^ v52 | v22))
              {
                goto LABEL_131;
              }

              OUTLINED_FUNCTION_42_14(v108, "setAppFreqForMessagesUsingSiri:");
              v109 = OUTLINED_FUNCTION_4_48();
              specialized Dictionary.subscript.getter(v109, v110, v314, v111);
              v112 = OUTLINED_FUNCTION_1_76();
              v96(v112);
              outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
              OUTLINED_FUNCTION_12_40();
              if (v51 != v52)
              {
                goto LABEL_134;
              }

              OUTLINED_FUNCTION_11_38();
              if (!(v51 ^ v52 | v22))
              {
                goto LABEL_136;
              }

              OUTLINED_FUNCTION_42_14(v113, "setAppFreqForMessagesForCountryCode:");
              v76 = v313;
              [v313 setMessageSignals:v8];

LABEL_34:
              v114 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentPhoneCallSignals) init];
              if (!v114)
              {
                goto LABEL_50;
              }

              v8 = v114;
              if (one-time initialization token for phoneCallKey == -1)
              {
LABEL_36:
                v115 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallKey);
                v116 = v314;
                specialized Dictionary.subscript.getter(v115, v117, v314, v118);
                v119 = OUTLINED_FUNCTION_2_73();
                v120 = v34(v119);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v121 = v120;
                [v8 setAppAffinityScoreForPhoneCall:v121];
                if (one-time initialization token for phoneCallSiriKey != -1)
                {
                  swift_once();
                }

                v122 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallSiriKey);
                specialized Dictionary.subscript.getter(v122, v123, v116, v124);
                v125 = OUTLINED_FUNCTION_1_76();
                v126 = v34(v125);
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v127 = v126;
                [v8 setAppAffinityScoreForPhoneCallUsingSiri:v127];
                if (one-time initialization token for phoneCallReceivedKey != -1)
                {
                  swift_once();
                }

                v128 = OUTLINED_FUNCTION_32_13(&static AppSelectionDependentKeys.phoneCallReceivedKey);
                specialized Dictionary.subscript.getter(v128, v129, v116, v130);
                OUTLINED_FUNCTION_9_44();
                OUTLINED_FUNCTION_10_44();
                v131 = (v34)();
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                *&v132 = v131;
                [v8 setAppAffinityScoreForPhoneCallReceived:v132];
                OUTLINED_FUNCTION_3_63();
                OUTLINED_FUNCTION_8_49();
                specialized Dictionary.subscript.getter(v133, v134, v116, v135);
                v136 = OUTLINED_FUNCTION_9_44();
                v34(v136);
                v137 = OUTLINED_FUNCTION_33_3();
                outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v137, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                OUTLINED_FUNCTION_12_40();
                if (v51 == v52)
                {
                  OUTLINED_FUNCTION_11_38();
                  if (!(v51 ^ v52 | v22))
                  {
                    goto LABEL_135;
                  }

                  OUTLINED_FUNCTION_42_14(v138, "setAppFreqForPhoneCall:");
                  OUTLINED_FUNCTION_3_63();
                  OUTLINED_FUNCTION_8_49();
                  specialized Dictionary.subscript.getter(v139, v140, v314, v141);
                  v142 = OUTLINED_FUNCTION_1_76();
                  v34(v142);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                  OUTLINED_FUNCTION_12_40();
                  if (v51 != v52)
                  {
LABEL_137:
                    __break(1u);
LABEL_138:
                    __break(1u);
                    goto LABEL_139;
                  }

                  OUTLINED_FUNCTION_11_38();
                  if (!(v51 ^ v52 | v22))
                  {
                    goto LABEL_138;
                  }

                  OUTLINED_FUNCTION_42_14(v143, "setAppFreqForPhoneCallUsingSiri:");
                  OUTLINED_FUNCTION_3_63();
                  OUTLINED_FUNCTION_8_49();
                  specialized Dictionary.subscript.getter(v144, v145, v314, v146);
                  v147 = OUTLINED_FUNCTION_1_76();
                  v34(v147);
                  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                  OUTLINED_FUNCTION_12_40();
                  if (v51 != v52)
                  {
LABEL_139:
                    __break(1u);
LABEL_140:
                    __break(1u);
                    goto LABEL_141;
                  }

                  OUTLINED_FUNCTION_11_38();
                  if (!(v51 ^ v52 | v22))
                  {
                    goto LABEL_140;
                  }

                  OUTLINED_FUNCTION_42_14(v148, "setAppFreqForPhoneCallForCountryCode:");
                  v76 = v313;
                  [v313 setPhoneCallSignals:v8];

LABEL_50:
                  v149 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentSignals) init];
                  if (!v149)
                  {
                    return;
                  }

                  v150 = v149;
                  v151 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentMessageSignals) init];
                  v152 = v314;
                  v309 = v150;
                  if (v151)
                  {
                    v153 = v151;
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v154, v155, v152, v156);
                    OUTLINED_FUNCTION_9_44();
                    OUTLINED_FUNCTION_10_44();
                    v157 = (v34)();
                    OUTLINED_FUNCTION_19_28();
                    *&v158 = v157;
                    [v153 setAppContactAffinityScoreForMessages:v158];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v159, v160, v161, v162);
                    v163 = OUTLINED_FUNCTION_5_55();
                    v164 = v34(v163);
                    OUTLINED_FUNCTION_19_28();
                    *&v165 = v164;
                    [v153 setAppContactAffinityScoreForMessagesUsingSiri:v165];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v166, v167, v168, v169);
                    v170 = OUTLINED_FUNCTION_5_55();
                    v171 = v34(v170);
                    OUTLINED_FUNCTION_19_28();
                    *&v172 = v171;
                    [v153 setAppContactAffinityScoreForMessagesReceived:v172];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v173, v174, v175, v176);
                    v177 = OUTLINED_FUNCTION_5_55();
                    v34(v177);
                    v178 = OUTLINED_FUNCTION_33_3();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v178, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
                      __break(1u);
LABEL_143:
                      __break(1u);
                      goto LABEL_144;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_143;
                    }

                    OUTLINED_FUNCTION_30_19(v179, "setAppContactFreqForMessages2Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    v152 = v314;
                    specialized Dictionary.subscript.getter(v180, v181, v314, v182);
                    v183 = OUTLINED_FUNCTION_1_76();
                    v34(v183);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    v76 = v313;
                    v150 = v309;
                    if (v51 != v52)
                    {
LABEL_144:
                      __break(1u);
LABEL_145:
                      __break(1u);
                      goto LABEL_146;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_145;
                    }

                    OUTLINED_FUNCTION_30_19(v184, "setAppContactFreqForMessages10Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v185, v186, v152, v187);
                    v188 = OUTLINED_FUNCTION_1_76();
                    v34(v188);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_146:
                      __break(1u);
LABEL_147:
                      __break(1u);
                      goto LABEL_148;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_147;
                    }

                    OUTLINED_FUNCTION_30_19(v189, "setAppContactFreqForMessages1Hr:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v190, v191, v152, v192);
                    v193 = OUTLINED_FUNCTION_1_76();
                    v34(v193);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_148:
                      __break(1u);
LABEL_149:
                      __break(1u);
                      goto LABEL_150;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_149;
                    }

                    OUTLINED_FUNCTION_30_19(v194, "setAppContactFreqForMessages6Hr:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v195, v196, v152, v197);
                    v198 = OUTLINED_FUNCTION_1_76();
                    v34(v198);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_150:
                      __break(1u);
LABEL_151:
                      __break(1u);
                      goto LABEL_152;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_151;
                    }

                    OUTLINED_FUNCTION_30_19(v199, "setAppContactFreqForMessages1Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v200, v201, v152, v202);
                    v203 = OUTLINED_FUNCTION_1_76();
                    v34(v203);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_152:
                      __break(1u);
LABEL_153:
                      __break(1u);
                      goto LABEL_154;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_153;
                    }

                    OUTLINED_FUNCTION_30_19(v204, "setAppContactFreqForMessages7Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v205, v206, v152, v207);
                    v208 = OUTLINED_FUNCTION_1_76();
                    v34(v208);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_154:
                      __break(1u);
LABEL_155:
                      __break(1u);
                      goto LABEL_156;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_155;
                    }

                    OUTLINED_FUNCTION_30_19(v209, "setAppContactFreqForMessages28Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v210, v211, v152, v212);
                    v213 = OUTLINED_FUNCTION_1_76();
                    v34(v213);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_157:
                      __break(1u);
LABEL_158:
                      __break(1u);
LABEL_159:
                      __break(1u);
                      goto LABEL_160;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_159;
                    }

                    OUTLINED_FUNCTION_30_19(v214, "setAppContactFreqForMessagesInf:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v215, v216, v152, v217);
                    v218 = OUTLINED_FUNCTION_1_76();
                    v34(v218);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_161:
                      __break(1u);
LABEL_162:
                      __break(1u);
LABEL_163:
                      __break(1u);
                      goto LABEL_164;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_163;
                    }

                    OUTLINED_FUNCTION_30_19(v219, "setAppContactFreqForMessages:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v220, v221, v152, v222);
                    v223 = OUTLINED_FUNCTION_1_76();
                    v34(v223);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_165:
                      __break(1u);
LABEL_166:
                      __break(1u);
LABEL_167:
                      __break(1u);
                      goto LABEL_168;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_167;
                    }

                    OUTLINED_FUNCTION_30_19(v224, "setAppContactFreqForMessagesUsingSiri:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v225, v226, v152, v227);
                    v228 = OUTLINED_FUNCTION_1_76();
                    v34(v228);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_169:
                      __break(1u);
LABEL_170:
                      __break(1u);
LABEL_171:
                      __break(1u);
                      goto LABEL_172;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_171;
                    }

                    OUTLINED_FUNCTION_30_19(v229, "setAppContactFreqForMessagesHaptic:");
                    [v150 setContactDependentMessageSignals:v153];
                  }

                  v230 = [objc_allocWithZone(INFERENCESchemaINFERENCECommsAppSelectionTrainingContactDependentPhoneCallSignals) init];
                  if (v230)
                  {
                    v231 = v230;
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v232, v233, v152, v234);
                    OUTLINED_FUNCTION_9_44();
                    OUTLINED_FUNCTION_10_44();
                    v235 = (v34)();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    *&v236 = v235;
                    [v231 setAppContactAffinityScoreForPhoneCall:v236];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v237, v238, v239, v240);
                    v241 = OUTLINED_FUNCTION_5_55();
                    v242 = v34(v241);
                    OUTLINED_FUNCTION_19_28();
                    *&v243 = v242;
                    [v231 setAppContactAffinityScoreForPhoneCallUsingSiri:v243];
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_6_52();
                    specialized Dictionary.subscript.getter(v244, v245, v246, v247);
                    v248 = OUTLINED_FUNCTION_5_55();
                    v249 = v34(v248);
                    OUTLINED_FUNCTION_19_28();
                    *&v250 = v249;
                    [v231 setAppContactAffinityScoreForPhoneCallReceived:v250];
                    v251 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v251, v252, v152, v253);
                    v254 = OUTLINED_FUNCTION_5_55();
                    v34(v254);
                    v255 = OUTLINED_FUNCTION_33_3();
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v255, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_156:
                      __break(1u);
                      goto LABEL_157;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_158;
                    }

                    OUTLINED_FUNCTION_30_19(v256, "setAppContactFreqForPhoneCall2Min:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    v257 = v314;
                    specialized Dictionary.subscript.getter(v258, v259, v314, v260);
                    v261 = OUTLINED_FUNCTION_1_76();
                    v34(v261);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    v76 = v313;
                    v150 = v309;
                    if (v51 != v52)
                    {
LABEL_160:
                      __break(1u);
                      goto LABEL_161;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_162;
                    }

                    OUTLINED_FUNCTION_30_19(v262, "setAppContactFreqForPhoneCall10Min:");
                    v263 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v263, v264, v257, v265);
                    v266 = OUTLINED_FUNCTION_1_76();
                    v34(v266);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_164:
                      __break(1u);
                      goto LABEL_165;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_166;
                    }

                    OUTLINED_FUNCTION_30_19(v267, "setAppContactFreqForPhoneCall1Hr:");
                    v268 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v268, v269, v257, v270);
                    v271 = OUTLINED_FUNCTION_1_76();
                    v34(v271);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_168:
                      __break(1u);
                      goto LABEL_169;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_170;
                    }

                    OUTLINED_FUNCTION_30_19(v272, "setAppContactFreqForPhoneCall6Hr:");
                    v273 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v273, v274, v257, v275);
                    v276 = OUTLINED_FUNCTION_1_76();
                    v34(v276);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_172:
                      __break(1u);
LABEL_173:
                      __break(1u);
                      goto LABEL_174;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_173;
                    }

                    OUTLINED_FUNCTION_30_19(v277, "setAppContactFreqForPhoneCall1Day:");
                    v278 = OUTLINED_FUNCTION_4_48();
                    specialized Dictionary.subscript.getter(v278, v279, v257, v280);
                    v281 = OUTLINED_FUNCTION_1_76();
                    v34(v281);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_174:
                      __break(1u);
LABEL_175:
                      __break(1u);
                      goto LABEL_176;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_175;
                    }

                    OUTLINED_FUNCTION_30_19(v282, "setAppContactFreqForPhoneCall7Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v283, v284, v257, v285);
                    v286 = OUTLINED_FUNCTION_1_76();
                    v34(v286);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_176:
                      __break(1u);
LABEL_177:
                      __break(1u);
                      goto LABEL_178;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_177;
                    }

                    OUTLINED_FUNCTION_30_19(v287, "setAppContactFreqForPhoneCall28Day:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v288, v289, v257, v290);
                    v291 = OUTLINED_FUNCTION_1_76();
                    v34(v291);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_178:
                      __break(1u);
LABEL_179:
                      __break(1u);
                      goto LABEL_180;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_179;
                    }

                    OUTLINED_FUNCTION_30_19(v292, "setAppContactFreqForPhoneCallInf:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v293, v294, v257, v295);
                    v296 = OUTLINED_FUNCTION_1_76();
                    v34(v296);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_180:
                      __break(1u);
LABEL_181:
                      __break(1u);
                      goto LABEL_182;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_181;
                    }

                    OUTLINED_FUNCTION_30_19(v297, "setAppContactFreqForPhoneCall:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v298, v299, v257, v300);
                    v301 = OUTLINED_FUNCTION_1_76();
                    v34(v301);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_182:
                      __break(1u);
LABEL_183:
                      __break(1u);
                      goto LABEL_184;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_183;
                    }

                    OUTLINED_FUNCTION_30_19(v302, "setAppContactFreqForPhoneCallUsingSiri:");
                    OUTLINED_FUNCTION_3_63();
                    OUTLINED_FUNCTION_8_49();
                    specialized Dictionary.subscript.getter(v303, v304, v257, v305);
                    v306 = OUTLINED_FUNCTION_1_76();
                    v34(v306);
                    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v19, &_s11SiriSignals11SignalValueOSgMd, &_s11SiriSignals11SignalValueOSgMR);
                    OUTLINED_FUNCTION_12_40();
                    if (v51 != v52)
                    {
LABEL_184:
                      __break(1u);
LABEL_185:
                      __break(1u);
                      return;
                    }

                    OUTLINED_FUNCTION_11_38();
                    if (!(v51 ^ v52 | v22))
                    {
                      goto LABEL_185;
                    }

                    OUTLINED_FUNCTION_30_19(v307, "setAppContactFreqForPhoneCallHaptic:");
                    [v150 setContactDependentPhoneCallSignals:v231];
                  }

                  [v76 setContactDependentSignals:v150];

                  return;
                }

                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }

LABEL_132:
              swift_once();
              goto LABEL_36;
            }

LABEL_127:
            swift_once();
            goto LABEL_20;
          }

LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    __break(1u);
    goto LABEL_125;
  }

  if (one-time initialization token for siriPhone != -1)
  {
LABEL_141:
    OUTLINED_FUNCTION_0_6();
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_9_0(v24, static Logger.siriPhone);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10_0(v26))
  {
    v27 = OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_11_1(v27);
    OUTLINED_FUNCTION_33(&dword_0, v28, v29, "PhoneAppSelectionSignalsGatherer CommsAppSelectionAppDependentSignals can't be constructed");
    OUTLINED_FUNCTION_8();
  }
}

void PhoneAppSelectionSignalsGatherer.buildMetrics(person:phoneCallNLIntent:candidateAppBundleIds:selectedAppId:signalMap:phoneAppSelectionSignalsGathererType:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v43 = v10;
  v44 = v11;
  v42 = v12;
  v13 = type metadata accessor for UUID();
  v14 = OUTLINED_FUNCTION_7(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
  if (!v22)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v29, static Logger.siriPhone);
    v23 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_10_0(v30))
    {
      v31 = OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_11_1(v31);
      OUTLINED_FUNCTION_33(&dword_0, v32, v33, "#PhoneAppSelectionSignalsGatherer: failed to generate top-level SELF message");
      OUTLINED_FUNCTION_8();
    }

    goto LABEL_14;
  }

  v23 = v22;
  v24 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
  if (!v24)
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v34, static Logger.siriPhone);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_65_0();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "#PhoneAppSelectionSignalsGatherer: failed to generate event metadata", v37, 2u);
      OUTLINED_FUNCTION_8();
    }

LABEL_14:
    goto LABEL_15;
  }

  v25 = v24;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for SISchemaUUID, SISchemaUUID_ptr);
  (*(v16 + 16))(v21, v1 + OBJC_IVAR____TtC27PhoneCallFlowDelegatePlugin32PhoneAppSelectionSignalsGatherer_uuid, v13);
  v26 = SISchemaUUID.__allocating_init(nsuuid:)(v21);
  [v25 setInferenceId:v26];

  [v23 setEventMetadata:v25];
  v27 = (*(*v1 + 208))(v42, v43, v44, v9, v7, v5, v3 & 1);
  if (v27)
  {
    v28 = v27;
    [v23 setCommsAppSelectionGroundTruthGenerated:v27];
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_9_0(v38, static Logger.siriPhone);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_65_0();
      *v41 = 0;
      _os_log_impl(&dword_0, v39, v40, "PhoneAppSelectionSignalsGatherer error on building appSelectionGroundTruth object", v41, 2u);
      OUTLINED_FUNCTION_8();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneAppSelectionSignalsGatherer.getIsResolvedContactInApp(phoneCallNLIntent:appBundleId:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 24);
  v4 = *(v3(v1, v2) + 16);

  if (v4 != 1)
  {
    return 0;
  }

  result = v3(v1, v2);
  if (*(result + 16))
  {
    outlined init with copy of SignalProviding(result + 32, v16);

    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v8 = SiriPhoneContact.getVocabularyAppsBundleSet()(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v9 = OUTLINED_FUNCTION_20_0();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v9, v10) & 1) != 0 || (v11 = OUTLINED_FUNCTION_20_0(), (static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v11, v12))) && specialized Set.contains(_:)(0x73746361746E6F43, 0xE800000000000000, v8))
    {
      v13 = 1;
    }

    else
    {
      v14 = OUTLINED_FUNCTION_20_0();
      v13 = specialized Set.contains(_:)(v14, v15, v8);
    }

    return v13;
  }

  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional __swiftcall PhoneAppSelectionSignalsGathererType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneAppSelectionSignalsGathererType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppSelectionSignalsGathererType_appNameSpecifiedByUser;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneAppSelectionSignalsGathererType_unknownDefault;
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

unint64_t PhoneAppSelectionSignalsGathererType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000017;
  }
}

PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneAppSelectionSignalsGathererType@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneAppSelectionSignalsGathererType_optional *a2@<X8>)
{
  result.value = PhoneAppSelectionSignalsGathererType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneAppSelectionSignalsGathererType@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneAppSelectionSignalsGathererType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t outlined bridged method (pb) of @objc INPerson.siriMatches.getter(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated.inferenceCommsAppSelectionTrainingAppDependentSignals.setter(uint64_t a1, void *a2)
{
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals, INFERENCESchemaINFERENCECommsAppSelectionTrainingAppDependentSignals_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setInferenceCommsAppSelectionTrainingAppDependentSignals:isa];
}

unint64_t lazy protocol witness table accessor for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType()
{
  result = lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType;
  if (!lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneAppSelectionSignalsGathererType and conformance PhoneAppSelectionSignalsGathererType);
  }

  return result;
}

uint64_t type metadata completion function for PhoneAppSelectionSignalsGatherer()
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for SignalValueObject(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalValueObject(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneAppSelectionSignalsGathererType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_31_17()
{
  v2 = *(v0 - 272);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_45_12@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_54_15@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 176) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 - 208));
}

uint64_t PhoneCallActivityNotificationFlow.__allocating_init(_:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  PhoneCallActivityNotificationFlow.init(_:sharedGlobals:)(a1, a2);
  return v4;
}

uint64_t PhoneCallActivityNotificationFlow.init(_:sharedGlobals:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  v4 = *(a2 + 3);
  v5 = *(a2 + 4);
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 8))(v7, v4, v5);
  outlined init with take of SPHConversation(v7, v2 + 32);
  outlined init with take of SPHConversation(a2, v2 + 72);
  return v2;
}

uint64_t PhoneCallActivityNotificationFlow.on(input:)()
{
  v1 = *(v0 + 24);

  v2 = dispatch thunk of AnyFlow.on(input:)();

  return v2 & 1;
}

uint64_t PhoneCallActivityNotificationFlow.execute(completion:)()
{
  type metadata accessor for PhoneCallActivityNotificationFlow();
  lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(&lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow, v0, type metadata accessor for PhoneCallActivityNotificationFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t PhoneCallActivityNotificationFlow.execute()(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(PhoneCallActivityNotificationFlow.execute(), 0, 0);
}

uint64_t PhoneCallActivityNotificationFlow.execute()()
{
  if (*(v0[9] + 16))
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.siriPhone);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v4, v5, "Activity Notification: Posted");
    }

    v6 = v0[8];
    v7 = v0[9];

    v0[2] = *(v7 + 24);
    type metadata accessor for AnyFlow();
    Flow.eraseToAnyFlow()();
    static ExecuteResponse.complete(next:)();
  }

  else
  {
    if (one-time initialization token for siriPhone != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.siriPhone);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_14_1(&dword_0, v11, v12, "Activity Notification: Posting");
    }

    v14 = v0[8];
    v13 = v0[9];

    v15 = v13[12];
    v16 = v13[13];
    __swift_project_boxed_opaque_existential_1(v13 + 9, v15);
    (*(v16 + 104))(v15, v16);
    v17 = v0[5];
    v18 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
    v19 = type metadata accessor for PhoneCallNotificationFlowStrategy();
    v0[7] = swift_allocObject();
    v20 = *(v18 + 80);
    v21 = lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(&lazy protocol witness table cache variable for type PhoneCallNotificationFlowStrategy and conformance PhoneCallNotificationFlowStrategy, 255, type metadata accessor for PhoneCallNotificationFlowStrategy);
    v20(v0 + 7, v19, v21, v17, v18);

    static ExecuteResponse.ongoing(next:childCompletion:)();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v22 = v0[1];

  return v22();
}

void *PhoneCallActivityNotificationFlow.deinit()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  return v0;
}

uint64_t PhoneCallActivityNotificationFlow.__deallocating_deinit()
{
  PhoneCallActivityNotificationFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Flow.execute() in conformance PhoneCallActivityNotificationFlow(uint64_t a1)
{
  v4 = *(**v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance PhoneCallActivityNotificationFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PhoneCallActivityNotificationFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow and conformance PhoneCallActivityNotificationFlow(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State()
{
  result = lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State;
  if (!lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallActivityNotificationFlow.State and conformance PhoneCallActivityNotificationFlow.State);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallActivityNotificationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL static PhoneCallAppNameConstants.isFaceTime(appId:)(uint64_t a1, _BOOL8 a2)
{
  v2 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_424FF0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000000004574F0;
    if (one-time initialization token for macFaceTimeBundleId != -1)
    {
      OUTLINED_FUNCTION_0_74();
    }

    v4 = *algn_599C28;
    *(inited + 48) = static PhoneCallAppNameConstants.macFaceTimeBundleId;
    *(inited + 56) = v4;

    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_0();
    v2 = specialized Set.contains(_:)(v7, v8, v6);
  }

  return v2;
}

uint64_t static PhoneCallAppNameConstants.isPhone(appId:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_46();
  if (v6 == 0xD000000000000017 && v5 == v4)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000012 && v8 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_0();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000013 && v10 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_46();
  if (a1 == 0xD000000000000015 && v12 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_5_56();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t *PhoneCallAppNameConstants.macFaceTimeBundleId.unsafeMutableAddressor()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  return &static PhoneCallAppNameConstants.macFaceTimeBundleId;
}

uint64_t static PhoneCallAppNameConstants.sanitizeFirstPartyAppId(_:)(uint64_t a1, uint64_t a2)
{
  if ((static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(a1, a2) & 1) == 0)
  {
  }

  return OUTLINED_FUNCTION_0();
}

uint64_t static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_13_39();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  object = String.lowercased()()._object;
  if (v5)
  {
    OUTLINED_FUNCTION_11_39();
    v7 = v7 && v5 == object;
    if (v7)
    {
      goto LABEL_41;
    }

    v8 = OUTLINED_FUNCTION_8_50();

    if (v8)
    {
      goto LABEL_30;
    }

    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_13_39();
  v10 = v9;
LABEL_14:
  OUTLINED_FUNCTION_2_7();
  v11 = String.lowercased()()._object;
  if (!v10)
  {

    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_11_39();
  if (v7 && v10 == v11)
  {
    goto LABEL_41;
  }

  v13 = OUTLINED_FUNCTION_8_50();

  if ((v13 & 1) == 0)
  {
    if (a2)
    {
LABEL_21:
      OUTLINED_FUNCTION_13_39();
      v15 = v14;
      goto LABEL_24;
    }

LABEL_23:
    v15 = 0;
LABEL_24:
    v16 = String.lowercased()()._object;
    if (v15)
    {
      OUTLINED_FUNCTION_11_39();
      if (v7 && v15 == v16)
      {
        goto LABEL_41;
      }

      v18 = OUTLINED_FUNCTION_8_50();

      if (v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (a2)
    {
      a1 = OUTLINED_FUNCTION_13_39();
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v22 = String.lowercased()();
    if (!v21)
    {
      v19 = 0;
      goto LABEL_43;
    }

    if (a1 != v22._countAndFlagsBits || v21 != v22._object)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_42:

LABEL_43:

      return v19 & 1;
    }

LABEL_41:
    v19 = 1;
    goto LABEL_42;
  }

LABEL_30:
  v19 = 1;
  return v19 & 1;
}

uint64_t static PhoneCallAppNameConstants.isMessagePhoneAppCaseInsensitive(appId:)(uint64_t countAndFlagsBits, uint64_t a2)
{
  if (a2)
  {
    v3 = String.lowercased()();
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;
  }

  else
  {
    object = 0;
  }

  v5 = String.lowercased()();
  if (object)
  {
    if (countAndFlagsBits == v5._countAndFlagsBits && object == v5._object)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t static PhoneCallAppNameConstants.isPhoneOrFaceTime(appId:isInsensitive:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v5 = OUTLINED_FUNCTION_0();
    if ((static PhoneCallAppNameConstants.isPhoneCaseInsensitive(appId:)(v5, v6) & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_0();

      return static PhoneCallAppNameConstants.isFaceTimeCaseInsensitive(appId:)(v7, v8);
    }

    return 1;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000017 && v10 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000012 && v12 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_0();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000013 && v14 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }

    OUTLINED_FUNCTION_7_46();
    if (a1 == 0xD000000000000015 && v16 == a2)
    {
      return 1;
    }

    OUTLINED_FUNCTION_5_56();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  v18 = OUTLINED_FUNCTION_0();

  return static PhoneCallAppNameConstants.isFaceTime(appId:)(v18, v19);
}

void one-time initialization function for macFaceTimeBundleId()
{
  v0 = TUPreferredFaceTimeBundleIdentifier();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;

  static PhoneCallAppNameConstants.macFaceTimeBundleId = v1;
  *algn_599C28 = v3;
}

uint64_t static PhoneCallAppNameConstants.macFaceTimeBundleId.getter()
{
  if (one-time initialization token for macFaceTimeBundleId != -1)
  {
    OUTLINED_FUNCTION_0_74();
  }

  v0 = static PhoneCallAppNameConstants.macFaceTimeBundleId;

  return v0;
}

uint64_t static PhoneCallAppNameConstants.getFaceTimeServiceName(for:shouldEnableSiriUplevelFTA:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = a1 == 0x656D695465636146 && a2 == 0xEE006F6964754120;
    if (v5 || (OUTLINED_FUNCTION_12_41() & 1) != 0)
    {
      v6 = [objc_allocWithZone(FTNUServiceNames) init];
      v7 = [v6 faceTimeAudioServiceName];
    }

    else
    {
      v10 = v4 == 0x656D695465636146 && a2 == 0xEE006F6564695620;
      if (v10 || (OUTLINED_FUNCTION_12_41() & 1) != 0)
      {
        v6 = [objc_allocWithZone(FTNUServiceNames) init];
        v7 = [v6 faceTimeVideoServiceName];
      }

      else
      {
        v6 = [objc_allocWithZone(FTNUServiceNames) init];
        v7 = [v6 faceTimeServiceName];
      }
    }

    v8 = v7;

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v4;
}

void PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)();
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.nlIntent.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35_0();
  v4 = *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  OUTLINED_FUNCTION_19_3();
  swift_beginAccess();
  return outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v1 + v4, a1, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
}

uint64_t PhoneCallBaseCatTemplatingService.nlIntent.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_35_0();
  v4 = *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  swift_beginAccess();
  outlined assign with take of PhoneCallNLIntent?(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t (*PhoneCallBaseCatTemplatingService.nlIntent.modify())()
{
  OUTLINED_FUNCTION_35_0();
  v1 = *(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  swift_beginAccess();
  return ActionableCallControlFlow.state.modify;
}

void PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)()
{
  OUTLINED_FUNCTION_66();
  v45 = v1;
  v50 = v2;
  v51 = v3;
  v49 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_13(v13);
  v47 = type metadata accessor for Locale();
  v14 = OUTLINED_FUNCTION_7(v47);
  v46 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_17_28((v0 + *(v21 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16)));
  OUTLINED_FUNCTION_2_0();
  v23 = v0 + *(v22 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  OUTLINED_FUNCTION_2_0();
  outlined init with copy of SignalProviding(v8, v0 + *(v24 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v25 = v8[3];
  v26 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v25);
  (*(v26 + 8))(v53, v25, v26);
  OUTLINED_FUNCTION_21_24();
  v28 = *(v27 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(v53, v0 + v28);
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v29 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v6;
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v49;
  OUTLINED_FUNCTION_21_24();
  outlined init with copy of SignalProviding(v32, v0 + *(v31 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_21_24();
  outlined init with copy of SignalProviding(v51, v0 + *(v33 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_21_24();
  *(v0 + *(v34 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v45;
  outlined init with copy of SignalProviding(v0 + v28, v53);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v52[5] = Locale.identifier.getter();
  v52[6] = v35;
  v52[0] = 45;
  v52[1] = 0xE100000000000000;
  v52[10] = 95;
  v52[11] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v46 + 8))(v20, v47);

  type metadata accessor for INIntentSlotValueType(0);
  OUTLINED_FUNCTION_9_45();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v36, v37);
  Dictionary.init(dictionaryLiteral:)();
  v38 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v39 = *(v38 + 24);
  v40 = OUTLINED_FUNCTION_19_7();
  v41(v40, v38);
  outlined init with copy of SignalProviding(v0 + v28, v52);
  v42 = type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_27_19(v48, v43, v44, v42);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v53);
  __swift_destroy_boxed_opaque_existential_1(v8);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.faceTimeSettings(_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v43 = v2;
  v44 = v3;
  v4 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7(v4);
  v41 = v6;
  v42 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  type metadata accessor for App();
  v40 = App.__allocating_init(appIdentifier:)();
  OUTLINED_FUNCTION_26_1();
  v19 = (v0 + *(v18 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v21 = v19[3];
  v20 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v21);
  (*(v20 + 168))(v46, v21, v20);
  v22 = v47;
  v23 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  v24 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v25 = *(v24 + 8);
  v26 = OUTLINED_FUNCTION_19_7();
  v27(v26, v24);
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  OUTLINED_FUNCTION_19_7();
  v28 = v40;
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v23 + 16))(v28, v11, v22, v23);
  v30 = v29;
  (*(v41 + 8))(v11, v42);
  __swift_destroy_boxed_opaque_existential_1(v45);
  if (v30)
  {
    String.toSpeakableString.getter();

    type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    v35 = type metadata accessor for SpeakableString();
    OUTLINED_FUNCTION_27_19(v17, v36, v37, v35);
  }

  OUTLINED_FUNCTION_26_1();
  (*(**(v1 + *(v38 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) + class metadata base offset for PhoneCallDisplayTextCATs + 32))(v17, v43, v44);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.callButtonText(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_21(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = *(v3 + *(*v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));
  v15 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_27_19(v13, v16, v17, v15);
  (*(*v14 + class metadata base offset for PhoneCallDisplayTextCATs + 64))(v13, a1, a2);
  v18 = OUTLINED_FUNCTION_32_14();
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, v19, &_s16SiriDialogEngine15SpeakableStringVSgMR);
}

uint64_t PhoneCallBaseCatTemplatingService.cancelButtonText(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  return (*(v1 + class metadata base offset for PhoneCallDisplayTextCATs + 96))();
}

uint64_t PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = OUTLINED_FUNCTION_21(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = OUTLINED_FUNCTION_7(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_4();
  v17 = v16 - v15;
  *(v16 - v15) = 500;
  (*(v18 + 104))(v16 - v15, enum case for DispatchTimeInterval.milliseconds(_:));
  static DispatchQoS.userInteractive.getter();
  v19 = type metadata accessor for TemplatingParallelizer();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  TemplatingParallelizer.init(name:timeout:qos:)("CallCancel", 10, 2, v17, v10);
  implicit closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)();
  OUTLINED_FUNCTION_2_0();
  v23 = (*(v22 + 176))();

  v24 = implicit closure #3 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)();
  (*(*v23 + 176))(v24);
  OUTLINED_FUNCTION_19_7();

  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  OUTLINED_FUNCTION_2_0();
  v27 = *(v26 + 184);

  v27(partial apply for closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:), v25);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for PhoneError();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v22[-v14];
  v16 = *(a1 + 16);
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v17, &v22[-v14], &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  if (v16 == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
LABEL_4:
    v22[0] = 0;
    *v7 = 0xD000000000000053;
    *(v7 + 1) = 0x800000000045DC30;
    *(v7 + 2) = 0xD000000000000043;
    *(v7 + 3) = 0x800000000045D9F0;
    *(v7 + 4) = 0xD00000000000001ELL;
    *(v7 + 5) = 0x800000000045DC90;
    *(v7 + 6) = 74;
    v7[56] = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(&lazy protocol witness table cache variable for type PhoneError and conformance PhoneError, type metadata accessor for PhoneError);
    v18 = swift_allocError();
    PhoneError.logged()(v19);
    outlined destroy of PhoneError(v7);
    v23[0] = v18;
    memset(&v23[1], 0, 24);
    v24 = 1;
    a2(v23);
  }

  v21 = outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v17 + *(v9 + 72), v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  __chkstk_darwin(v21);
  *&v22[-16] = v13;
  _ss6ResultO7flatMapyAByqd__q_GADxXERi_d__lF11SiriKitFlow010TemplatingA0V_s5Error_pSS4call_SS6canceltTg5(partial apply for closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:), v23);
  a2(v23);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v23, &_ss6ResultOySS4call_SS6cancelts5Error_pGMd, &_ss6ResultOySS4call_SS6cancelts5Error_pGMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
}

void *closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.getCallAndCancelButtonText(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TemplatingResult();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v19 - v11);
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, &v19 - v11, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  result = swift_getEnumCaseMultiPayload();
  v14 = result;
  if (result == 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *v12;
LABEL_6:
    *a2 = v18;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v14 == 1;
    return result;
  }

  (*(v5 + 32))(v8, v12, v4);
  result = TemplatingResult.print.getter();
  if (result[2])
  {
    v18 = result[4];
    v15 = result[5];

    result = TemplatingResult.print.getter();
    if (result[2])
    {
      v16 = result[4];
      v17 = result[5];

      result = (*(v5 + 8))(v8, v4);
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PhoneCallBaseCatTemplatingService.emergencyCallSashTitle(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  return (*(v1 + class metadata base offset for PhoneCallDisplayTextCATs + 256))();
}

void PhoneCallBaseCatTemplatingService.snippetDisplayHandleLabelWithType(handleLabel:handleType:_:)()
{
  OUTLINED_FUNCTION_66();
  v4 = v3;
  v36 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_12_5();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_30_20();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_42_13();
  DucTemplatingService.locale.getter();
  static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v35 = v4;
  switch(v7)
  {
    case 0:
      v17 = @"Unknown";
      goto LABEL_9;
    case 1:
      v17 = @"EmailAddress";
      goto LABEL_9;
    case 2:
      v17 = @"PhoneNumber";
      goto LABEL_9;
    case 3:
      v17 = @"Website";
      goto LABEL_9;
    case 4:
      v17 = @"InstantMessage";
LABEL_9:
      v18 = v17;
      break;
    default:
      v17 = [NSString stringWithFormat:@"(unknown: %i)", v7];
      break;
  }

  v19 = v17;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_35_0();
  v21 = *(v0 + *(v20 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  v22 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v22);
  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
  OUTLINED_FUNCTION_35_0();
  (*(v32 + class metadata base offset for PhoneCallDisplayTextCATs + 352))(v2, v1, v14, v36, v35);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v33 = OUTLINED_FUNCTION_32_14();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v33, v34, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.emergencyServicesDisplayText(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  return (*(v1 + class metadata base offset for PhoneCallDisplayTextCATs + 288))();
}

void PhoneCallBaseCatTemplatingService.formatPhoneNumber(countryCode:phoneNumber:_:)()
{
  OUTLINED_FUNCTION_66();
  v45 = v3;
  v5 = v4;
  v7 = v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1(v44);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_29_3();
  v11 = type metadata accessor for SpeakableString();
  v12 = OUTLINED_FUNCTION_7(v11);
  v43 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_12_5();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v21 = OUTLINED_FUNCTION_21(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_12_5();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  OUTLINED_FUNCTION_30_20();
  __chkstk_darwin(v28);
  OUTLINED_FUNCTION_42_13();

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  v29 = type metadata accessor for DialogPhoneNumber.Builder();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  DialogPhoneNumber.Builder.init(value:)();
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_19_3();
  SpeakableString.init(print:speak:)();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v11);
  dispatch thunk of DialogPhoneNumber.Builder.withCountryCode(_:)();

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  dispatch thunk of DialogPhoneNumber.Builder.build()();
  OUTLINED_FUNCTION_5();

  dispatch thunk of DialogPhoneNumber.toString.getter();

  v35 = OUTLINED_FUNCTION_32_14();
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v35, v36, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v26, 1, v11) == 1)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v26, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_68_0();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_424FD0;
    *(v37 + 32) = v7;
    *(v37 + 40) = v5;
    OUTLINED_FUNCTION_68_0();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_424FD0;
    *(v38 + 32) = v7;
    *(v38 + 40) = v5;
    swift_bridgeObjectRetain_n();
    TemplatingResult.init(templateIdentifier:speak:print:)();
    swift_storeEnumTagMultiPayload();
    v45(v0);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v43 + 32))(v18, v26, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    OUTLINED_FUNCTION_68_0();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_424FD0;
    *(v39 + 32) = SpeakableString.speak.getter();
    *(v39 + 40) = v40;
    OUTLINED_FUNCTION_68_0();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_424FD0;
    *(v41 + 32) = SpeakableString.print.getter();
    *(v41 + 40) = v42;
    TemplatingResult.init(templateIdentifier:speak:print:)();
    swift_storeEnumTagMultiPayload();
    v45(v0);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    (*(v43 + 8))(v18, v11);
  }

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v53 = v2;
  v54 = v3;
  v52 = v4;
  v49 = type metadata accessor for PhoneError();
  v5 = OUTLINED_FUNCTION_23_1(v49);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v50 = v9 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1(v47);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_27_3();
  v48 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_27_3();
  v51 = v18;
  v19 = type metadata accessor for Locale();
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_35_0();
  v26 = (v0 + *(v25 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v27 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v28 = (v0 + *(*v0 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  v29 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  OUTLINED_FUNCTION_19_7();
  dispatch thunk of DeviceState.siriLocale.getter();
  v30 = *(v27 + 16);
  v31 = OUTLINED_FUNCTION_32_14();
  v33 = v32(v31);
  v35 = v34;
  v36 = *(v22 + 8);
  v37 = OUTLINED_FUNCTION_55();
  v38(v37);
  if (v35)
  {
    v39 = type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_27_19(v51, v40, v41, v39);
    v42 = swift_allocObject();
    v42[2] = 0;
    v42[3] = 0;
    v42[4] = v1;
    v42[5] = v33;
    v42[6] = v35;
    v42[7] = v52;
    v42[8] = v53;
    v42[9] = v54;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  }

  else
  {
    *v50 = 0xD000000000000023;
    *(v50 + 8) = 0x800000000045D9C0;
    *(v50 + 16) = 0xD000000000000043;
    *(v50 + 24) = 0x800000000045D9F0;
    *(v50 + 32) = 0xD000000000000019;
    *(v50 + 40) = 0x800000000045DA40;
    *(v50 + 48) = 113;
    *(v50 + 56) = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v43, v44);
    v45 = swift_allocError();
    PhoneError.logged()(v46);
    outlined destroy of PhoneError(v50);
    *v48 = v45;
    swift_storeEnumTagMultiPayload();
    v53(v48);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v48, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v17;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v8[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v11 = type metadata accessor for TemplatingResult();
  v8[10] = v11;
  v12 = *(v11 - 8);
  v8[11] = v12;
  v13 = *(v12 + 64) + 15;
  v8[12] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:), 0, 0);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)()
{
  v1 = v0[13];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = (v0[2] + *(*v0[2] + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);

  App.isFirstParty()();
  AppDisplayInfo.init(displayName:isFirstParty:)();
  type metadata accessor for AppDisplayInfo();
  OUTLINED_FUNCTION_23_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = *(v7 + 24);
  v17 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  v15 = v0[13];

  return v17(v15, v6, v7);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  OUTLINED_FUNCTION_68_0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_424FD0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;
  TemplatingResult.init(templateIdentifier:speak:print:)();
  (*(v4 + 16))(v6, v3, v5);
  swift_storeEnumTagMultiPayload();
  v9(v6);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v6, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_55();
  v13(v12);
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  *v2 = v0[15];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v4(v2);

  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v2, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 112);
  v8 = *v3;
  v6[15] = v2;

  v9 = v6[13];
  if (v2)
  {
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v10 = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v9, &_s17SiriAppResolution0B11DisplayInfoVSgMd, &_s17SiriAppResolution0B11DisplayInfoVSgMR);
    v10 = closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:);
  }

  return _swift_task_switch(v10, 0, 0);
}

void PhoneCallBaseCatTemplatingService.tryWithApp(app:_:)()
{
  OUTLINED_FUNCTION_66();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v31 = v4;
  v32 = type metadata accessor for Locale();
  v5 = OUTLINED_FUNCTION_7(v32);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  OUTLINED_FUNCTION_35_0();
  v20 = (v0 + *(v19 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  OUTLINED_FUNCTION_26_1();
  v24 = (v0 + *(v23 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
  v25 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  OUTLINED_FUNCTION_5();
  dispatch thunk of DeviceState.siriLocale.getter();
  (*(v22 + 16))(v31, v12, v21, v22);
  v27 = v26;
  (*(v7 + 8))(v12, v32);
  if (v27)
  {
    OUTLINED_FUNCTION_19_3();
    SpeakableString.init(print:speak:)();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = type metadata accessor for SpeakableString();
  __swift_storeEnumTagSinglePayload(v18, v28, 1, v29);
  OUTLINED_FUNCTION_26_1();
  (*(**(v1 + *(v30 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) + class metadata base offset for PhoneCallDisplayTextCATs + 576))(v18, 0, v33, v34);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v18, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallBaseCatTemplatingService.updateSettings(_:)()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_12_42(v0 + class metadata base offset for PhoneCallBaseCatTemplatingService);
  return (*(v1 + class metadata base offset for PhoneCallDisplayTextCATs + 640))();
}

uint64_t PhoneCallBaseCatTemplatingService.makeOpenAppFailedDialog(app:_:)()
{
  OUTLINED_FUNCTION_35_0();
  v2 = v1 + class metadata base offset for PhoneCallBaseCatTemplatingService;
  v3 = *(v0 + *(v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80));
  type metadata accessor for SirikitDeviceState();
  outlined init with copy of SignalProviding(v0 + *(v2 + 40), v6);
  SirikitDeviceState.__allocating_init(from:)();
  OUTLINED_FUNCTION_26_1();
  (*(v4 + class metadata base offset for StartCallCATs + 576))();
}

void PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)()
{
  OUTLINED_FUNCTION_66();
  v98 = v1;
  v99 = v0;
  v97 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_12_5();
  v94 = v7 - v8;
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_13(&v90 - v10);
  v101 = type metadata accessor for SpeakableString();
  v11 = OUTLINED_FUNCTION_7(v101);
  v104 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_12_5();
  v92 = (v15 - v16);
  v18 = __chkstk_darwin(v17);
  v91 = &v90 - v19;
  __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = SiriKitDisambiguationList.rawItems.getter();
  v108 = _swiftEmptyArrayStorage;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;
    v25 = _swiftEmptyArrayStorage;
    v26 = v99;
    do
    {
      outlined init with copy of Any(v24, v107);
      outlined init with take of Any(v107, v105);
      type metadata accessor for INPerson();
      if ((swift_dynamicCast() & 1) != 0 && v106)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v108 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = v108;
        v26 = v99;
      }

      v24 += 32;
      --v23;
    }

    while (v23);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
    v26 = v99;
  }

  v27 = specialized Array.count.getter(v25);
  v28 = &unk_599000;
  v102 = v21;
  if (!v27)
  {
    goto LABEL_18;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v25 & 0xC000000000000001) == 0, v25);
  if ((v25 & 0xC000000000000001) != 0)
  {
    goto LABEL_57;
  }

  for (i = *(v25 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v30 = i;
    v31 = specialized Array.count.getter(v25);
    v21 = v102;
    if (v31 == 1 && (v32 = INPerson.hasHandleLabel.getter(), v26 = v99, v32))
    {
      OUTLINED_FUNCTION_35_0();
      v33 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v35 = OUTLINED_FUNCTION_25_22(v34 + v28[390]);
      SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)((v35 & 1) == 0);
      v37 = v36;

      *&v107[0] = v37;
    }

    else
    {

LABEL_18:

      v39 = PhoneContactDisambiguationProperties.isHandleDisambiguation.getter(v38);

      OUTLINED_FUNCTION_35_0();
      v33 = v26 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      v41 = (OUTLINED_FUNCTION_25_22(v40 + v28[390]) ^ 1) & 1;
      if (v39)
      {
        SiriKitDisambiguationList.makeSpeakableHandleLabels(deviceIsLocked:)(v41);
      }

      else
      {
        v42 = dispatch thunk of SiriKitDisambiguationList.makeSpeakableListItems(deviceIsLocked:)();
      }

      v37 = v42;
      *&v107[0] = v42;
    }

    v26 = v99;
    v43 = *(*v99 + v28[390] + 72);
    static PicsUtils.shouldUsePicsDisambiguationFormat(persons:sharedGlobals:)(v25);
    v100 = v44;
    v96 = v33;
    if (v44)
    {
      v37 = static PicsUtils.splitPicsPerson(persons:speakableStrings:)(v25, v107);
      v46 = v45;
      v48 = v47;

      *&v107[0] = v37;
      v49 = one-time initialization token for siriPhone;

      if (v49 != -1)
      {
        OUTLINED_FUNCTION_6_2();
      }

      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.siriPhone);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      v53 = os_log_type_enabled(v51, v52);
      v21 = v102;
      v54 = v48;
      v95 = v48;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *&v105[0] = v56;
        *v55 = 136315138;
        if (v54)
        {
          v57 = v46;
        }

        else
        {
          v57 = 7104878;
        }

        if (!v54)
        {
          v54 = 0xE300000000000000;
        }

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v54, v105);

        *(v55 + 4) = v58;
        _os_log_impl(&dword_0, v51, v52, "PLUS contact %s is detected", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        OUTLINED_FUNCTION_26_0();
        OUTLINED_FUNCTION_26_0();
      }

      else
      {
      }

      v26 = v99;
    }

    else
    {

      v46 = 0;
      v95 = 0;
    }

    v90 = v46;
    v59 = v37[2];
    v103 = v37;
    if (!v59)
    {
      break;
    }

    *&v105[0] = _swiftEmptyArrayStorage;

    OUTLINED_FUNCTION_33_15();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v26 = v99;
    v60 = 0;
    v25 = *&v105[0];
    v61 = v37[2];
    v28 = v37 + 5;
    while (v61 != v60)
    {
      if (v60 >= v37[2])
      {
        goto LABEL_56;
      }

      v62 = closure #2 in PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)(v60, *(v28 - 1), *v28, v107, v100 & 1, v26);
      v64 = v63;
      *&v105[0] = v25;
      v65 = *(v25 + 16);
      if (v65 >= *(v25 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v99;
        v25 = *&v105[0];
      }

      *(v25 + 16) = v65 + 1;
      v66 = v25 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v64;
      ++v60;
      v28 += 2;
      v21 = v102;
      v37 = v103;
      if (v59 == v60)
      {

        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v25 = _swiftEmptyArrayStorage;
LABEL_44:
  v67 = *(v25 + 16);
  if (v67)
  {
    *&v105[0] = _swiftEmptyArrayStorage;
    OUTLINED_FUNCTION_33_15();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v68 = *&v105[0];
    v69 = (v25 + 40);
    do
    {
      v70 = *(v69 - 1);
      v71 = *v69;

      OUTLINED_FUNCTION_19_3();
      SpeakableString.init(print:speak:)();
      *&v105[0] = v68;
      v72 = v68[2];
      if (v72 >= v68[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v68 = *&v105[0];
      }

      v68[2] = v72 + 1;
      (*(v104 + 32))(v68 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v72, v21, v101);
      v69 += 2;
      --v67;
    }

    while (v67);

    v26 = v99;
  }

  else
  {

    v68 = _swiftEmptyArrayStorage;
  }

  if (v95)
  {

    v73 = v91;
    SpeakableString.init(print:speak:)();
    v74 = v92;
    SpeakableString.init(print:speak:)();
    v75 = *(v26 + *(*v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));
    v76 = v104;
    v77 = *(v104 + 16);
    v78 = v93;
    v79 = v101;
    v77(v93, v73, v101);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
    v83 = v94;
    v77(v94, v74, v79);
    OUTLINED_FUNCTION_23_3();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v79);
    (*(*v75 + class metadata base offset for PhoneCallCommonCATs + 32))(v68, v78, v83, v97, v98);

    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v83, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v78, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    v87 = *(v76 + 8);
    v87(v74, v79);
    v87(v73, v79);
  }

  else
  {
    v88 = *(v26 + *(*v26 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));
    OUTLINED_FUNCTION_2_0();
    (*(v89 + class metadata base offset for PhoneCallCommonCATs))(v68, v97, v98);
  }

  OUTLINED_FUNCTION_65();
}

uint64_t closure #2 in PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a2;
    if (result + 1 == *(*a4 + 16) && (a5 & 1) == 0)
    {
    }

    else
    {
      v7 = (a6 + *(*a6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16));
      v8 = *v7;
      v9 = v7[1];

      v10._countAndFlagsBits = v8;
      v10._object = v9;
      String.append(_:)(v10);
      return a2;
    }

    return v6;
  }

  return result;
}

uint64_t (*PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  OUTLINED_FUNCTION_68_0();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = a2;
  v7[5] = a3;

  return partial apply for closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:);
}

uint64_t closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v37);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = &v31 - v13;
  v14 = type metadata accessor for TemplatingResult();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = __chkstk_darwin(v14);
  v38 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v39 = &v31 - v17;
  if (SiriKitDisambiguationList.shouldReadItemsInVox.getter())
  {
    v18 = (a3 + *(*a3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40));
    v34 = v11;
    v19 = a5;
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v21 = v34;
    if (DeviceState.isVox.getter())
    {
      v22 = v36;
      outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v36, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v24 = v22;
        v32 = a1;
        v25 = v35;
        v37 = a2;
        v33 = *(v35 + 32);
        v26 = v39;
        v33(v39, v24, v14);
        outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(v32, v40, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
        (*(v25 + 16))(v38, v26, v14);
        v27 = v19;
        v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v29 = (v21 + *(v25 + 80) + v28) & ~*(v25 + 80);
        v30 = swift_allocObject();
        *(v30 + 16) = a4;
        *(v30 + 24) = v27;
        outlined init with take of Result<TemplatingResult, Error>(v40, v30 + v28);
        v33((v30 + v29), v38, v14);

        PhoneCallBaseCatTemplatingService.makeSpeakableDisambiguationItemListForPhone(disambiguationList:_:)();

        return (*(v25 + 8))(v39, v14);
      }

      outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v22, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    }
  }

  return a4(a1);
}

void *closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v39 = a3;
  v40 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (v36 - v11);
  v13 = type metadata accessor for TemplatingResult();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v36[0] = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v36 - v19;
  __chkstk_darwin(v18);
  v22 = v36 - v21;
  outlined init with copy of PhoneCallFlowState<INHangUpCallIntent, INHangUpCallIntentResponse>(a1, v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v36[1] = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_willThrowTypedImpl();

    return v40(v37);
  }

  v24 = *(v14 + 32);
  v24(v20, v12, v13);
  v24(v22, v20, v13);
  v25 = TemplatingResult.templateIdentifier.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_424FD0;
  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  v37 = v25;
  v27 = result[4];
  v28 = result[5];

  v41 = v27;
  v42 = v28;
  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  result = TemplatingResult.speak.getter();
  if (!result[2])
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v31 = result[4];
  v30 = result[5];

  v32._countAndFlagsBits = v31;
  v32._object = v30;
  String.append(_:)(v32);

  v33 = v42;
  *(v26 + 32) = v41;
  *(v26 + 40) = v33;
  TemplatingResult.print.getter();
  v34 = v36[0];
  TemplatingResult.init(templateIdentifier:speak:print:)();
  (*(v14 + 16))(v10, v34, v13);
  swift_storeEnumTagMultiPayload();
  v40(v10);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v10, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v35 = *(v14 + 8);
  v35(v34, v13);
  return (v35)(v22, v13);
}

void PhoneCallBaseCatTemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)()
{
  OUTLINED_FUNCTION_66();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  v47 = v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  OUTLINED_FUNCTION_23_1(v48);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_29_3();
  v12 = type metadata accessor for PhoneError();
  v13 = OUTLINED_FUNCTION_23_1(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_12_5();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = (&v45 - v21);
  __chkstk_darwin(v20);
  OUTLINED_FUNCTION_42_13();
  *v22 = 0xD000000000000036;
  v22[1] = 0x800000000045DA60;
  swift_storeEnumTagMultiPayload();
  PhoneError.logged()(v2);
  outlined destroy of PhoneError(v22);
  if (one-time initialization token for siriPhone != -1)
  {
    OUTLINED_FUNCTION_6_2();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.siriPhone);
  v24 = OUTLINED_FUNCTION_19_7();
  outlined init with copy of PhoneError(v24, v18);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v7;
    v28 = v27;
    v29 = swift_slowAlloc();
    v45 = v5;
    v49 = v3;
    v50 = v29;
    *v28 = 136315394;
    v30 = *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService);
    v31 = *(v47 + class metadata base offset for PhoneCallBaseCatTemplatingService + 8);
    type metadata accessor for PhoneCallBaseCatTemplatingService();

    v32 = String.init<A>(describing:)();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    OUTLINED_FUNCTION_13_37();
    lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v35, v36);
    v37 = Error.localizedDescription.getter();
    v39 = v38;
    outlined destroy of PhoneError(v18);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v50);

    *(v28 + 14) = v40;
    _os_log_impl(&dword_0, v25, v26, "#%s: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26_0();
    v7 = v46;
    OUTLINED_FUNCTION_26_0();
  }

  else
  {

    outlined destroy of PhoneError(v18);
  }

  OUTLINED_FUNCTION_13_37();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v41, v42);
  v43 = swift_allocError();
  outlined init with copy of PhoneError(v2, v44);
  *v1 = v43;
  swift_storeEnumTagMultiPayload();
  v7(v1);
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v1, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  outlined destroy of PhoneError(v2);
  OUTLINED_FUNCTION_65();
}

void PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PhoneCallBaseCatTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)();
}

void PhoneCallBaseCatTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PhoneCallBaseCatTemplatingService.__ivar_destroyer()
{
  OUTLINED_FUNCTION_35_0();
  v2 = *(v0 + *(v1 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16) + 8);

  OUTLINED_FUNCTION_2_0();
  v4 = *(v0 + *(v3 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));

  OUTLINED_FUNCTION_2_0();
  v6 = *(v0 + *(v5 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));

  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_2_0();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v10 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_2_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v11 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_2_0();
  v13 = *(v0 + *(v12 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80));
}

void *PhoneCallBaseCatTemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + *(*v0 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16) + 8);

  OUTLINED_FUNCTION_41_0();
  v3 = *(v0 + *(v2 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24));

  OUTLINED_FUNCTION_41_0();
  v5 = *(v0 + *(v4 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32));

  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v6 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v7 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48)));
  OUTLINED_FUNCTION_41_0();
  outlined destroy of PhoneCallFlowState<INAddCallParticipantIntent, INAddCallParticipantIntentResponse>(v0 + *(v8 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56), &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMd, &_s27PhoneCallFlowDelegatePlugin0aB8NLIntent_pSgMR);
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v9 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64)));
  OUTLINED_FUNCTION_41_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(v10 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72)));
  OUTLINED_FUNCTION_41_0();
  v12 = *(v0 + *(v11 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80));

  return v0;
}

uint64_t PhoneCallBaseCatTemplatingService.__deallocating_deinit()
{
  PhoneCallBaseCatTemplatingService.deinit();

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = protocol witness for UnlockDeviceFlowStrategyAsync.makePromptForDeviceUnlock() in conformance DefaultUnlockDeviceFlowStrategyAsync;

  return closure #1 in PhoneCallBaseCatTemplatingService.makeOpenAppDialog(app:_:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

void specialized PhoneCallBaseCatTemplatingService.init(ducFamily:sharedGlobals:displayTextCats:phoneCallCommonCats:appInfoBuilder:labelTemplating:startCallCats:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_66();
  v74 = v25;
  v27 = v26;
  v29 = v28;
  v78 = v30;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  OUTLINED_FUNCTION_21(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v38);
  OUTLINED_FUNCTION_27_3();
  OUTLINED_FUNCTION_13(v39);
  v76 = type metadata accessor for Locale();
  v40 = OUTLINED_FUNCTION_7(v76);
  v75 = v41;
  v43 = *(v42 + 64);
  __chkstk_darwin(v40);
  OUTLINED_FUNCTION_4();
  v46 = v45 - v44;
  v83[3] = a22;
  v83[4] = a24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  (*(*(a22 - 8) + 32))(boxed_opaque_existential_1, v29, a22);
  v82[3] = a23;
  v82[4] = a25;
  v48 = __swift_allocate_boxed_opaque_existential_1(v82);
  (*(*(a23 - 8) + 32))(v48, v27, a23);
  OUTLINED_FUNCTION_17_28((a21 + *(*a21 + class metadata base offset for PhoneCallBaseCatTemplatingService + 16)));
  OUTLINED_FUNCTION_72_0();
  v50 = a21 + *(v49 + class metadata base offset for PhoneCallBaseCatTemplatingService + 56);
  *v50 = 0u;
  *(v50 + 1) = 0u;
  *(v50 + 4) = 0;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v34, a21 + *(v51 + class metadata base offset for PhoneCallBaseCatTemplatingService + 72));
  v52 = v34[3];
  v53 = v34[4];
  v54 = OUTLINED_FUNCTION_55();
  __swift_project_boxed_opaque_existential_1(v54, v55);
  v56 = *(v53 + 8);
  v57 = OUTLINED_FUNCTION_5();
  v58(v57, v53);
  OUTLINED_FUNCTION_72_0();
  v60 = *(v59 + class metadata base offset for PhoneCallBaseCatTemplatingService + 40);
  outlined init with take of PhoneCallFeatureFlagProviding(v81, a21 + v60);
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v61 + class metadata base offset for PhoneCallBaseCatTemplatingService + 24)) = v32;
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v62 + class metadata base offset for PhoneCallBaseCatTemplatingService + 32)) = v78;
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v83, a21 + *(v63 + class metadata base offset for PhoneCallBaseCatTemplatingService + 48));
  OUTLINED_FUNCTION_72_0();
  outlined init with copy of SignalProviding(v82, a21 + *(v64 + class metadata base offset for PhoneCallBaseCatTemplatingService + 64));
  OUTLINED_FUNCTION_72_0();
  *(a21 + *(v65 + class metadata base offset for PhoneCallBaseCatTemplatingService + 80)) = v74;
  outlined init with copy of SignalProviding(a21 + v60, v81);
  __swift_project_boxed_opaque_existential_1(v81, v81[3]);

  dispatch thunk of DeviceState.siriLocale.getter();
  v80[0] = Locale.identifier.getter();
  v80[1] = v66;
  v79[0] = 45;
  v79[1] = 0xE100000000000000;
  v80[5] = 95;
  v80[6] = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  OUTLINED_FUNCTION_19_3();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  (*(v75 + 8))(v46, v76);

  type metadata accessor for INIntentSlotValueType(0);
  OUTLINED_FUNCTION_9_45();
  lazy protocol witness table accessor for type INIntentSlotValueType and conformance INIntentSlotValueType(v67, v68);
  Dictionary.init(dictionaryLiteral:)();
  v69 = v34[3];
  v70 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v69);
  (*(v70 + 24))(v80, v69, v70);
  outlined init with copy of SignalProviding(a21 + v60, v79);
  v71 = type metadata accessor for DucTemplatingLocalContext();
  OUTLINED_FUNCTION_27_19(v77, v72, v73, v71);
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();

  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(v34);
  OUTLINED_FUNCTION_65();
}

void *partial apply for closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for TemplatingResult();
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v1 + ((v4 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return closure #1 in closure #1 in PhoneCallBaseCatTemplatingService.appendVoxContactsReadout(disambiguationList:_:)(a1, v8, v9, v1 + v4, v10);
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional __swiftcall PhoneCallCommonCATPatternsIdentifiers.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATPatternsIdentifiers.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallCommonCATPatternsIdentifiers_promptCancelled;
  }

  else
  {
    v4.value = PhoneCallFlowDelegatePlugin_PhoneCallCommonCATPatternsIdentifiers_unknownDefault;
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

unint64_t PhoneCallCommonCATPatternsIdentifiers.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000028;
  }
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATPatternsIdentifiers@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATPatternsIdentifiers_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATPatternsIdentifiers.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATPatternsIdentifiers@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATPatternsIdentifiers.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATPatternsExecutor.phoneFeaturesUnavailable()()
{
  v1 = OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v3(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

uint64_t PhoneCallCommonCATPatternsExecutor.promptCancelled()()
{
  v1 = OUTLINED_FUNCTION_1(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = AnnounceCallBellCATPatternsExecutor.announceCallBellEnded();

  return v3(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATPatternsIdentifiers and conformance PhoneCallCommonCATPatternsIdentifiers);
  }

  return result;
}

uint64_t protocol witness for PhoneCallCommonCATPatternsExecuting.phoneFeaturesUnavailable() in conformance PhoneCallCommonCATPatternsExecutor()
{
  v5 = (**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor);
  v6 = (*v5 + **v5);
  v2 = (*v5)[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v6();
}

uint64_t protocol witness for PhoneCallCommonCATPatternsExecuting.promptCancelled() in conformance PhoneCallCommonCATPatternsExecutor()
{
  v2 = *(**v0 + class metadata base offset for PhoneCallCommonCATPatternsExecutor + 8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = AnnounceCallBellCATPatternsExecutor.informDoubleTapToEnd();

  return v6();
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATPatternsIdentifiers(_BYTE *result, unsigned int a2, unsigned int a3)
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

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional __swiftcall PhoneCallCommonCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATs.Properties.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t PhoneCallCommonCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATs.orList(items:completion:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = a1;

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PhoneCallCommonCATs.orList(items:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATs.orList(items:)()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[5] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v9 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[6] = v4;
  *v4 = v5;
  v4[1] = PhoneCallCommonCATs.orList(items:);
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, 0xD000000000000016, 0x8000000000452C80, v2);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_11();

    return v13();
  }
}

{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v0[4] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = PhoneCallCommonCATs.orList(items:);
  v5 = v0[3];

  return v7(0xD000000000000016, 0x8000000000452C80, v2);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 32);

    v15 = *(v9 + 8);

    return v15(v3);
  }
}

uint64_t PhoneCallCommonCATs.orList(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATs.orList(items:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = a1;

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = OUTLINED_FUNCTION_21(v8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v17 = OUTLINED_FUNCTION_47();
  v18 = OUTLINED_FUNCTION_8_51(v17, xmmword_426980);
  v18[2].n128_u64[0] = 0xD000000000000017;
  v18[2].n128_u64[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v17 + 48) = a1;
  OUTLINED_FUNCTION_27_2();
  *(v17 + 72) = v20;
  *(v17 + 80) = 0xD000000000000011;
  *(v17 + 88) = v21;
  outlined init with copy of SpeakableString?(a2, v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v22 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v16, 1, v22) == 1)
  {

    outlined destroy of SpeakableString?(v16, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 96) = 0u;
    *(v17 + 112) = 0u;
  }

  else
  {
    *(v17 + 120) = v22;
    __swift_allocate_boxed_opaque_existential_1((v17 + 96));
    OUTLINED_FUNCTION_40(v22);
    (*(v23 + 32))(v24);
  }

  OUTLINED_FUNCTION_0_75();
  *(v17 + 128) = v25;
  *(v17 + 136) = v26;
  outlined init with copy of SpeakableString?(a3, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v14, 1, v22) == 1)
  {
    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v17 + 144) = 0u;
    *(v17 + 160) = 0u;
  }

  else
  {
    *(v17 + 168) = v22;
    __swift_allocate_boxed_opaque_existential_1((v17 + 144));
    OUTLINED_FUNCTION_40(v22);
    (*(v27 + 32))(v28);
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:completion:)();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v6);
  v8 = *(v7 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v9, v10, v11);
}

{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  v0[9] = v4;
  v5 = OUTLINED_FUNCTION_8_51(v4, xmmword_426980);
  v5[2].n128_u64[0] = 0xD000000000000017;
  v5[2].n128_u64[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v4 + 48) = v3;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 72) = v7;
  *(v4 + 80) = 0xD000000000000011;
  *(v4 + 88) = v8;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_15_4();
  v11 = v0[8];
  v12 = v0[3];
  if (v10 == 1)
  {
    v13 = v0[3];

    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_40(v9);
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_16_0();
    v16();
  }

  v17 = v0[7];
  v18 = v0[5];
  OUTLINED_FUNCTION_0_75();
  *(v4 + 128) = v19;
  *(v4 + 136) = v20;
  outlined init with copy of SpeakableString?(v21, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[7], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v9;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_40(v9);
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_16_0();
    v24();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v31 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v26;
  *v26 = v27;
  v26[1] = PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);
  v28 = v0[6];
  v29 = v0[2];

  return v31(v29, 0xD00000000000001DLL, 0x8000000000452CA0, v4);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    OUTLINED_FUNCTION_11();

    return v15();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  OUTLINED_FUNCTION_11();
  v5 = v0[11];

  return v4();
}

{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = OUTLINED_FUNCTION_47();
  v0[8] = v4;
  v5 = OUTLINED_FUNCTION_8_51(v4, xmmword_426980);
  v5[2].n128_u64[0] = 0xD000000000000017;
  v5[2].n128_u64[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v4 + 48) = v3;
  OUTLINED_FUNCTION_27_2();
  *(v4 + 72) = v7;
  *(v4 + 80) = 0xD000000000000011;
  *(v4 + 88) = v8;
  outlined init with copy of SpeakableString?(v2, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v9 = type metadata accessor for SpeakableString();
  v10 = OUTLINED_FUNCTION_15_4();
  v11 = v0[7];
  v12 = v0[2];
  if (v10 == 1)
  {
    v13 = v0[2];

    outlined destroy of SpeakableString?(v11, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v9;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_40(v9);
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_16_0();
    v16();
  }

  v17 = v0[6];
  v18 = v0[4];
  OUTLINED_FUNCTION_0_75();
  *(v4 + 128) = v19;
  *(v4 + 136) = v20;
  outlined init with copy of SpeakableString?(v21, v17, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    outlined destroy of SpeakableString?(v0[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v9;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_40(v9);
    v23 = *(v22 + 32);
    OUTLINED_FUNCTION_16_0();
    v24();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v30 = v25;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v26;
  *v26 = v27;
  v26[1] = PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);
  v28 = v0[5];

  return v30(0xD00000000000001DLL, 0x8000000000452CA0, v4);
}

{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = v4;
  OUTLINED_FUNCTION_13_1();
  *v6 = v5;
  v8 = *(v7 + 72);
  v9 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v10 = v9;
  v5[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v11, v12, v13);
  }

  else
  {
    v15 = v5[7];
    v14 = v5[8];
    v16 = v5[6];

    v17 = *(v9 + 8);

    return v17(v3);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  OUTLINED_FUNCTION_11();
  v5 = v0[10];

  return v4();
}

uint64_t PhoneCallCommonCATs.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v7 = OUTLINED_FUNCTION_21(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v15 = OUTLINED_FUNCTION_47();
  v16 = OUTLINED_FUNCTION_8_51(v15, xmmword_426980);
  v16[2].n128_u64[0] = 0xD000000000000017;
  v16[2].n128_u64[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  *(v15 + 48) = a1;
  OUTLINED_FUNCTION_27_2();
  *(v15 + 72) = v18;
  *(v15 + 80) = 0xD000000000000011;
  *(v15 + 88) = v19;
  outlined init with copy of SpeakableString?(a2, v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v20 = type metadata accessor for SpeakableString();
  if (__swift_getEnumTagSinglePayload(v14, 1, v20) == 1)
  {

    outlined destroy of SpeakableString?(v14, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 96) = 0u;
    *(v15 + 112) = 0u;
  }

  else
  {
    *(v15 + 120) = v20;
    __swift_allocate_boxed_opaque_existential_1((v15 + 96));
    OUTLINED_FUNCTION_40(v20);
    (*(v21 + 32))();
  }

  OUTLINED_FUNCTION_0_75();
  *(v15 + 128) = v22;
  *(v15 + 136) = v23;
  outlined init with copy of SpeakableString?(a3, v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v12, 1, v20) == 1)
  {
    outlined destroy of SpeakableString?(v12, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v15 + 144) = 0u;
    *(v15 + 160) = 0u;
  }

  else
  {
    *(v15 + 168) = v20;
    __swift_allocate_boxed_opaque_existential_1((v15 + 144));
    OUTLINED_FUNCTION_40(v20);
    (*(v24 + 32))();
  }

  dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t PhoneCallCommonCATs.phoneFeaturesUnavailable()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #1 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

uint64_t PhoneCallCommonCATs.promptCancelled()()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v4;
  *v4 = v5;
  v4[1] = closure #2 in ActionableCallControlFlow.execute();

  return v7(v2, 0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATs.errorNoTargetCall();

  return v4(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

{
  return OUTLINED_FUNCTION_33_1();
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATs.Properties and conformance PhoneCallCommonCATs.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional __swiftcall PhoneCallCommonCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallCommonCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD000000000000016;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallCommonCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallCommonCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallCommonCATsSimple.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallCommonCATsSimple.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orList(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATsSimple.orList(items:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponseAsLabels(incomingCallConcept:);
  v5 = v0[3];

  return v7(0xD000000000000016, 0x8000000000452C80, v2);
}

BOOL PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.OrListDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallCommonCATsSimple.OrListDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListAsLabels(items:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t PhoneCallCommonCATsSimple.orListAsLabels(items:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_1_13(v2, xmmword_424FD0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  v2[3].n128_u64[0] = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + 1);
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds();
  OUTLINED_FUNCTION_9();
  *v4 = v5;
  v4[1] = AnnounceIncomingCallCATsSimple.intentHandledResponse(incomingCallConcept:);
  v6 = v0[3];

  return v8(0xD000000000000016, 0x8000000000452C80, v2, &type metadata for PhoneCallCommonCATsSimple.OrListDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListDialogIds and conformance PhoneCallCommonCATsSimple.OrListDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_21_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[8] = v4;
  OUTLINED_FUNCTION_18_22(v4, "contactNamesNotFromPics", xmmword_426980);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_17_29(v5, "contactNameOfPics");
  outlined init with copy of PhoneCallNLIntent?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_15_4();
  v8 = v2[7];
  v9 = v2[2];
  if (v7 == 1)
  {
    v10 = v2[2];

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = OUTLINED_FUNCTION_4_49();
  outlined init with copy of PhoneCallNLIntent?(v14, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_6_0();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_16_0();
    v17();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v22 = v18;
  v19 = swift_task_alloc();
  v2[9] = v19;
  *v19 = v2;
  v19[1] = PhoneCallCommonCATsSimple.orListForPics(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);
  v20 = v2[5];

  return v22(v3 + 12, 0x8000000000452CA0, v4);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_49();

    return v16(v15);
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

BOOL PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallCommonCATsSimple.OrListForPicsDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.orListForPicsAsLabels(contactNamesNotFromPics:contactNameOfPics:inferenceSource:)()
{
  OUTLINED_FUNCTION_15();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  OUTLINED_FUNCTION_66_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_21_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v4 = swift_allocObject();
  v2[8] = v4;
  OUTLINED_FUNCTION_18_22(v4, "contactNamesNotFromPics", xmmword_426980);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine15SpeakableStringVGMd, &_sSay16SiriDialogEngine15SpeakableStringVGMR);
  OUTLINED_FUNCTION_17_29(v5, "contactNameOfPics");
  outlined init with copy of PhoneCallNLIntent?(v0, v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  v7 = OUTLINED_FUNCTION_15_4();
  v8 = v2[7];
  v9 = v2[2];
  if (v7 == 1)
  {
    v10 = v2[2];

    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 96));
    OUTLINED_FUNCTION_6_0();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_16_0();
    v13();
  }

  v14 = OUTLINED_FUNCTION_4_49();
  outlined init with copy of PhoneCallNLIntent?(v14, v8, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  if (OUTLINED_FUNCTION_15_4() == 1)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v2[6], &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v6;
    __swift_allocate_boxed_opaque_existential_1((v4 + 144));
    OUTLINED_FUNCTION_6_0();
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_16_0();
    v17();
  }

  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v23 = v18;
  v19 = swift_task_alloc();
  v2[9] = v19;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds();
  OUTLINED_FUNCTION_9();
  *v19 = v20;
  v19[1] = PhoneCallCommonCATsSimple.orListForPicsAsLabels(contactNamesNotFromPics:contactNameOfPics:inferenceSource:);
  v21 = v2[5];

  return v23(v3 + 12, 0x8000000000452CA0, v4, &type metadata for PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_13_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v14 = v3[6];

    v15 = OUTLINED_FUNCTION_49();

    return v16(v15);
  }
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.OrListForPicsDialogIds and conformance PhoneCallCommonCATsSimple.OrListForPicsDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.phoneFeaturesUnavailable()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v4(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage);
}

BOOL PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.phoneFeaturesUnavailableAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD000000000000028, 0x8000000000452C30, _swiftEmptyArrayStorage, &type metadata for PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds and conformance PhoneCallCommonCATsSimple.PhoneFeaturesUnavailableDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.promptCancelled()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedNoActiveCall();

  return v4(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage);
}

BOOL PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v1._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:), v1);
  OUTLINED_FUNCTION_33_2();
  return OUTLINED_FUNCTION_28_1();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallCommonCATsSimple.PromptCancelledDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallCommonCATsSimple.promptCancelledAsLabels()()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_1(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds();
  OUTLINED_FUNCTION_9();
  *v2 = v3;
  v2[1] = AddCallParticipantCATPatternsExecutor.unsupportedParticipantsMultipleContactsUnsupported();

  return v5(0xD00000000000001FLL, 0x8000000000452C60, _swiftEmptyArrayStorage, &type metadata for PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.PromptCancelledDialogIds and conformance PhoneCallCommonCATsSimple.PromptCancelledDialogIds);
  }

  return result;
}

uint64_t PhoneCallCommonCATsSimple.__allocating_init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_39_1();
  v9(v8);
  CATWrapperSimple.init(useResponseMode:options:)();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  return v7;
}

uint64_t PhoneCallCommonCATsSimple.init(useResponseMode:options:)()
{
  v1 = type metadata accessor for CATOption();
  v2 = OUTLINED_FUNCTION_14_5(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_39_1();
  v6(v5);
  CATWrapperSimple.init(useResponseMode:options:)();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  return v0;
}

unint64_t lazy protocol witness table accessor for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallCommonCATsSimple.Properties and conformance PhoneCallCommonCATsSimple.Properties);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATsSimple.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallCommonCATsSimple.OrListDialogIds(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t closure #1 in static Transformer<>.transformer.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v2 = *a1;
  static Signpost.begin(_:)();
  v35 = v3;
  v32 = v5;
  v33 = v4;
  v31[3] = v6;
  if (v2 && (v7 = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter()) != 0)
  {
    v8 = v7;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  v9 = _swiftEmptyArrayStorage;
  v36[0] = _swiftEmptyArrayStorage;
  result = specialized Array.count.getter(v8);
  v11 = result;
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      v15 = specialized Array.count.getter(v9);
      if (v15)
      {
        v16 = v15;
        v39 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 & ~(v15 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_30;
        }

        v17 = 0;
        v18 = v39;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(v9 + 8 * v17 + 32);
          }

          v21 = _s27PhoneCallFlowDelegatePlugin04SiriA11ContactImplC18contactConvertible0I4RoleAcA03UsogJ0_p_AA0abgK0OtcfCTf4enn_n0F8Ontology0L19Entity_common_AgentC_Tt1g5(v20, 1);
          v37 = type metadata accessor for SiriPhoneContactImpl(0);
          v38 = &protocol witness table for SiriPhoneContactImpl;

          v36[0] = v21;
          v39 = v18;
          v23 = v18[2];
          v22 = v18[3];
          if (v23 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          }

          ++v17;
          v24 = v37;
          v25 = v38;
          v26 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
          v27 = *(*(v24 - 8) + 64);
          __chkstk_darwin(v26);
          v29 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v30 + 16))(v29);
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v23, v29, &v39, v24, v25);
          __swift_destroy_boxed_opaque_existential_1(v36);
          v18 = v39;
        }

        while (v16 != v17);
      }

      else
      {

        v18 = _swiftEmptyArrayStorage;
      }

      *v34 = v18;
      Signpost.OpenSignpost.end()();
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_29;
      }

      v13 = *(v8 + 8 * v12 + 32);
    }

    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    dispatch thunk of CodeGenListEntry.entry.getter();

    ++v12;
    if (v39)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (v36[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v36[0];
      v12 = v14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional __swiftcall PhoneCallControlCATs.Properties.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATs.Properties.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t PhoneCallControlCATs.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATs.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATs::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATs.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATs.Properties@<X0>(unint64_t *a1@<X8>)
{
  result = PhoneCallControlCATs.Properties.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void PhoneCallControlCATs.callControl(callControlAction:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "callControlAction");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "callControlAction");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "callControlAction");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

void PhoneCallControlCATs.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "callControlAction");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[5];
    v12 = v3[6];

    OUTLINED_FUNCTION_8_1();

    return v14();
  }
}

{
  OUTLINED_FUNCTION_15();
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_4_2();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_66_0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[4];
    v12 = v3[5];

    v14 = OUTLINED_FUNCTION_49();

    return v15(v14);
  }
}

void PhoneCallControlCATs.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

void PhoneCallControlCATs.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "unsupportedIntent");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

void PhoneCallControlCATs.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedIntent");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

void PhoneCallControlCATs.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:completion:)()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_76();
  v1 = OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_3_64(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_5_1(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_41_17();
  }

  else
  {
    OUTLINED_FUNCTION_55_2();
    OUTLINED_FUNCTION_24_23();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_47_15();
    v10();
  }

  OUTLINED_FUNCTION_30_21();

  OUTLINED_FUNCTION_65();
}

uint64_t PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_50_13(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  *(v0 + 40) = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_16_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_46_15(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_1_7(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_22_19(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_24(v11);
  OUTLINED_FUNCTION_12_43();
  OUTLINED_FUNCTION_65_1();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapper.executeDialog(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

void PhoneCallControlCATs.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_61_6();
  OUTLINED_FUNCTION_14_40();
  v1 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_49_0();
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_17_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v5 = OUTLINED_FUNCTION_35_1();
  *(v5 + 16) = xmmword_424FD0;
  OUTLINED_FUNCTION_4_50(v5, "unsupportedReason");
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_7_47(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_42_15();
  }

  else
  {
    OUTLINED_FUNCTION_54_16();
    OUTLINED_FUNCTION_19_12();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_40_4();
    v10();
  }

  OUTLINED_FUNCTION_37_16();

  OUTLINED_FUNCTION_60_1();
}

void PhoneCallControlCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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
  outlined init with copy of PhoneCallNLIntent?(v25, &a9 - v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v27 + 16))(v30, v23, v26);
  CATWrapper.init(templateDir:options:globals:)();
  (*(v27 + 8))(v23, v26);
  _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v25, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_65();
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATs.Properties and conformance PhoneCallControlCATs.Properties);
  }

  return result;
}

uint64_t type metadata accessor for PhoneCallControlCATs()
{
  result = type metadata singleton initialization cache for PhoneCallControlCATs;
  if (!type metadata singleton initialization cache for PhoneCallControlCATs)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhoneCallControlCATs.Properties(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_16()
{

  return dispatch thunk of CATWrapper.execute(catId:parameters:)();
}

uint64_t OUTLINED_FUNCTION_50_13(uint64_t result, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = result;
  return result;
}

uint64_t *OUTLINED_FUNCTION_54_16()
{
  *(v0 + 72) = v1;

  return __swift_allocate_boxed_opaque_existential_1((v0 + 48));
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional __swiftcall PhoneCallControlCATsSimple.Properties.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.Properties.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.Properties.rawValue.getter(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000027;
      break;
    case 2:
      result = 0xD000000000000026;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD00000000000002ELL;
      break;
    case 5:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.Properties@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::Properties_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.Properties.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.Properties()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.Properties.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.callControl(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "callControlAction");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional __swiftcall PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter(char a1)
{
  result = 1701736260;
  switch(a1)
  {
    case 1:
      result = 0x43656C6261736964;
      break;
    case 2:
      result = 0x48656C6261736964;
      break;
    case 3:
      result = 0x6143656C62616E65;
      break;
    case 4:
      result = 0x6F48656C62616E65;
      break;
    case 5:
      result = 0x7263694D6574756DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PhoneCallControlCATsSimple.CallControlDialogIds(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.CallControlDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::CallControlDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.CallControlDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.CallControlDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.CallControlDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.callControlAsLabels(callControlAction:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "callControlAction");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.CallControlDialogIds and conformance PhoneCallControlCATsSimple.CallControlDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedCallControl(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

BOOL PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedCallControlAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedCallControlDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedHoldAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x636972656E6567;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000016;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedHoldActionDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedHoldActionAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedHoldActionDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedIntent(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F5665676E616863;
  }

  if (a1 == 1)
  {
    return 0x6C6F566B63656863;
  }

  return 0x636972656E6567;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedIntentDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedIntentDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedIntentAsLabels(unsupportedIntent:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedIntent");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedIntentDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedIntentDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSpeakerphoneAction(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

BOOL PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:)()
{
  OUTLINED_FUNCTION_38();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:), v2);
  OUTLINED_FUNCTION_33_2();
  return v1 != 0;
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSpeakerphoneActionAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSpeakerphoneActionDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSwitchToFaceTime(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v1 = OUTLINED_FUNCTION_35_1();
  v2 = OUTLINED_FUNCTION_50_0(v1);
  *(v2 + 16) = xmmword_424FD0;
  v3 = OUTLINED_FUNCTION_0_8(v2, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v3, v4, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v5 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v5);
  if (v6)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v0, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_16_0();
    v9();
  }

  v10 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v11 = OUTLINED_FUNCTION_16_12(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_39(v11);
  OUTLINED_FUNCTION_15_8();
  OUTLINED_FUNCTION_65_1();

  return v16(v13, v14, v15, v16, v17, v18, v19, v20);
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional __swiftcall PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_38();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:), v3);
  OUTLINED_FUNCTION_33_2();
  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000028;
      break;
    case 3:
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 8:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional protocol witness for RawRepresentable.init(rawValue:) in conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds@<W0>(Swift::String *a1@<X0>, PhoneCallFlowDelegatePlugin::PhoneCallControlCATsSimple::UnsupportedSwitchToFaceTimeDialogIds_optional *a2@<X8>)
{
  result.value = PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds()
{
  v1 = OUTLINED_FUNCTION_40_2();
  result = PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds.rawValue.getter(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t PhoneCallControlCATsSimple.unsupportedSwitchToFaceTimeAsLabels(unsupportedReason:)()
{
  OUTLINED_FUNCTION_15();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_45();
  v6 = OUTLINED_FUNCTION_10();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_17_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_ypSgtGMd, &_ss23_ContiguousArrayStorageCySS_ypSgtGMR);
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = OUTLINED_FUNCTION_50_0(v2);
  *(v3 + 16) = xmmword_424FD0;
  v4 = OUTLINED_FUNCTION_0_8(v3, "unsupportedReason");
  OUTLINED_FUNCTION_48_1(v4, v5, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
  v6 = type metadata accessor for SpeakableString();
  OUTLINED_FUNCTION_20(v6);
  if (v7)
  {
    _s16SiriDialogEngine15SpeakableStringVSgWOhTm_0(v1, &_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR);
    OUTLINED_FUNCTION_35_2();
  }

  else
  {
    OUTLINED_FUNCTION_43_2();
    OUTLINED_FUNCTION_6_0();
    v9 = *(v8 + 32);
    OUTLINED_FUNCTION_16_0();
    v10();
  }

  v11 = OUTLINED_FUNCTION_12_0(&async function pointer to dispatch thunk of CATWrapperSimple.executeAsLabels<A>(catId:parameters:));
  OUTLINED_FUNCTION_27_20(v11);
  lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds();
  OUTLINED_FUNCTION_9();
  *v0 = v12;
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_46();
  OUTLINED_FUNCTION_65_1();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20);
}

unint64_t lazy protocol witness table accessor for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds()
{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds;
  if (!lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds and conformance PhoneCallControlCATsSimple.UnsupportedSwitchToFaceTimeDialogIds);
  }

  return result;
}

uint64_t PhoneCallControlCATsSimple.__allocating_init(templateDir:options:globals:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_16_0();
  return PhoneCallControlCATsSimple.init(templateDir:options:globals:)(v3, v4);
}