AppleIntelligenceReporting::AppleIntelligenceAsset __swiftcall AppleIntelligenceAsset.init(assetIdentifier:version:)(Swift::String assetIdentifier, Swift::String_optional version)
{
  v2->value = assetIdentifier;
  v2[1] = version;
  result.internalVersion = version;
  result.internalAssetIdentifier = assetIdentifier;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for UUIDIdentifier()
{
  result = type metadata singleton initialization cache for UUIDIdentifier;
  if (!type metadata singleton initialization cache for UUIDIdentifier)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_66_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return v4;
}

uint64_t sub_1C0C95504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE013emitInferenceE05event6errors4type0H2IDyAA0abgE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF()
{
  OUTLINED_FUNCTION_48();
  v157 = v2;
  v164 = v1;
  v167 = v0;
  v169 = v3;
  v168 = v4;
  v162 = v5;
  v173 = v6;
  v174 = v7;
  v9 = v8;
  v165 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v10 = OUTLINED_FUNCTION_1(v165);
  v177 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v156 = v14;
  OUTLINED_FUNCTION_19();
  v161 = type metadata accessor for AppleIntelligenceBiomeEvent();
  v15 = OUTLINED_FUNCTION_9(v161);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v163 = v18;
  OUTLINED_FUNCTION_19();
  v175 = type metadata accessor for AppleIntelligenceReportingAsset();
  v19 = OUTLINED_FUNCTION_1(v175);
  v176 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_29_0(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_29(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v155 - v28;
  v186 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v30 = OUTLINED_FUNCTION_1(v186);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_60();
  v155[0] = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v155 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_29(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  OUTLINED_FUNCTION_29(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v155 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56 = OUTLINED_FUNCTION_29(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_60();
  v166 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v60);
  v62 = v155 - v61;
  OUTLINED_FUNCTION_19();
  v160 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v63 = OUTLINED_FUNCTION_1(v160);
  v159 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_2();
  v69 = v68 - v67;
  AppleIntelligenceReportingInvocationStep.init()();
  v71 = *v9;
  v70 = v9[1];

  OUTLINED_FUNCTION_26_4();
  v172 = v69;
  AppleIntelligenceReportingInvocationStep.subsystem.setter();
  v171 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v72 = v9;
  outlined init with copy of UUIDIdentifier?(v9 + v171[7], v54, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  v73 = type metadata accessor for UUIDIdentifier();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v73);
  v158 = v29;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v54, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v75 = type metadata accessor for UUID();
    v76 = v62;
    v77 = 1;
    v78 = 1;
  }

  else
  {
    v79 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_9(v79);
    (*(v80 + 16))(v62, v54, v79);
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v54, type metadata accessor for UUIDIdentifier);
    OUTLINED_FUNCTION_13_2();
    v75 = v79;
  }

  __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
  AppleIntelligenceReportingInvocationStep.invocationID.setter();
  v81 = v171;
  OUTLINED_FUNCTION_31_4(v171[6]);
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.stepIdentifier.setter();
  OUTLINED_FUNCTION_47_4(v9 + v81[8]);
  AppleIntelligenceReportingInvocationStep.clientRequestID.setter();
  OUTLINED_FUNCTION_47_4(v9 + v81[9]);
  AppleIntelligenceReportingInvocationStep.modelManagerRequestID.setter();
  OUTLINED_FUNCTION_47_4(v9 + v81[5]);
  AppleIntelligenceReportingInvocationStep.sessionID.setter();
  (*(v169 + 16))(v168);
  type metadata accessor for Date();
  v82 = OUTLINED_FUNCTION_16_4();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  AppleIntelligenceReportingInvocationStep.timestamp.setter();
  v86 = type metadata accessor for AppleIntelligenceReportingEventType();
  OUTLINED_FUNCTION_9(v86);
  (*(v87 + 16))(v170, v173, v86);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v86);
  AppleIntelligenceReportingInvocationStep.type.setter();
  v91 = v174;
  v92 = *(v174 + 16);
  v170 = v9;
  if (v92)
  {
    v180 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v93 = v180;
    v94 = v91 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v94, &v178);
      __swift_project_boxed_opaque_existential_1(&v178, *&v179[8]);
      OUTLINED_FUNCTION_50();
      AppleIntelligenceError.toGeneralReportingError.getter();
      __swift_destroy_boxed_opaque_existential_1(&v178);
      v180 = v93;
      v96 = *(v93 + 16);
      v95 = *(v93 + 24);
      if (v96 >= v95 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v95);
        OUTLINED_FUNCTION_48_3();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v93 = v180;
      }

      *(v93 + 16) = v96 + 1;
      v97 = *(v32 + 80);
      OUTLINED_FUNCTION_25_3();
      (*(v32 + 32))(v98 + *(v32 + 72) * v96, v38, v186);
      v94 += 40;
      --v92;
    }

    while (v92);
LABEL_19:
    v72 = v170;
    goto LABEL_20;
  }

  v174 = *(v9 + v81[10]);
  v99 = specialized Array.count.getter(v174);
  v100 = MEMORY[0x1E69E7CC0];
  if (v99)
  {
    v101 = v99;
    OUTLINED_FUNCTION_54_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if (v101 < 0)
    {
      __break(1u);
      return;
    }

    v102 = 0;
    OUTLINED_FUNCTION_53_4();
    v173 = v174 & 0xC000000000000001;
    v103 = v155[0];
    do
    {
      if (v173)
      {
        MEMORY[0x1C68E2790](v102, v174);
      }

      else
      {
        v104 = *(v174 + 8 * v102 + 32);
      }

      specialized AppleIntelligenceError.toGeneralReportingError.getter(v103);

      OUTLINED_FUNCTION_54_3();
      v106 = *(v100 + 16);
      v105 = *(v100 + 24);
      if (v106 >= v105 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v105);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_53_4();
      }

      ++v102;
      *(v100 + 16) = v106 + 1;
      v107 = *(v32 + 80);
      OUTLINED_FUNCTION_25_3();
      (*(v32 + 32))(v108 + *(v32 + 72) * v106, v103, v186);
    }

    while (v101 != v102);
    goto LABEL_19;
  }

LABEL_20:
  v109 = v172;
  AppleIntelligenceReportingInvocationStep.errors.setter();
  v110 = v171;
  v111 = *(v72 + v171[17]);
  v112 = *(v111 + 16);
  v113 = MEMORY[0x1E69E7CC0];
  if (v112)
  {
    OUTLINED_FUNCTION_54_3();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    OUTLINED_FUNCTION_53_4();
    v109 = v176 + 32;
    v72 = (v111 + 56);
    v114 = v155[1];
    do
    {
      v115 = *(v72 - 3);
      v116 = *(v72 - 2);
      v117 = *(v72 - 1);
      v118 = *v72;

      AppleIntelligenceReportingAsset.init()();

      AppleIntelligenceReportingAsset.assetIdentifier.setter();

      AppleIntelligenceReportingAsset.version.setter();

      OUTLINED_FUNCTION_54_3();
      v120 = *(v113 + 16);
      v119 = *(v113 + 24);
      v110 = v114;
      if (v120 >= v119 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v119);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        OUTLINED_FUNCTION_53_4();
      }

      v72 += 4;
      *(v113 + 16) = v120 + 1;
      v121 = *(v176 + 80);
      OUTLINED_FUNCTION_25_3();
      (*(v123 + 32))(v122 + *(v123 + 72) * v120, v114, v175);
      --v112;
    }

    while (v112);
    OUTLINED_FUNCTION_36_3();
  }

  AppleIntelligenceReportingInvocationStep.assets.setter();
  OUTLINED_FUNCTION_31_4(v110[16]);
  OUTLINED_FUNCTION_26_4();
  v124 = AppleIntelligenceReportingInvocationStep.assetBundleID.setter();
  v125 = v72 + v110[11];
  v126 = *(v125 + 1);
  v127 = v164;
  v128 = v158;
  if (v126)
  {
    v182[0] = *v125;
    v182[1] = v126;
    v129 = *(v125 + 2);
    v183 = *(v125 + 1);
    v184 = v129;
    v185 = *(v125 + 3);
    MEMORY[0x1EEE9AC00](v124);
    OUTLINED_FUNCTION_92();
    *(v130 - 16) = v182;
    v131 = v165;
    static Buildable.with(_:)();
    v132 = v131;
    v133 = 0;
  }

  else
  {
    v133 = 1;
    v132 = v165;
  }

  __swift_storeEnumTagSinglePayload(v128, v133, 1, v132);
  AppleIntelligenceReportingInvocationStep.primaryUseCase.setter();
  v134 = *(v72 + v110[12]);
  v135 = *(v134 + 16);
  if (v135)
  {
    v180 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v137 = v180;
    v138 = (v134 + 32);
    v110 = v165;
    v109 = v156;
    do
    {
      v139 = *v138;
      v140 = v138[1];
      v141 = v138[3];
      v181[2] = v138[2];
      v181[3] = v141;
      v181[0] = v139;
      v181[1] = v140;
      MEMORY[0x1EEE9AC00](v136);
      v155[-2] = v181;
      outlined init with copy of AppleIntelligenceUseCase(v181, &v178);
      static Buildable.with(_:)();
      outlined destroy of AppleIntelligenceUseCase(v181);
      v180 = v137;
      v143 = *(v137 + 16);
      v142 = *(v137 + 24);
      if (v143 >= v142 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v142);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v137 = v180;
      }

      *(v137 + 16) = v143 + 1;
      v144 = *(v177 + 80);
      OUTLINED_FUNCTION_25_3();
      v136 = (*(v146 + 32))(v145 + *(v146 + 72) * v143, v109, v110);
      v138 += 4;
      --v135;
    }

    while (v135);
    OUTLINED_FUNCTION_36_3();
  }

  AppleIntelligenceReportingInvocationStep.additionalUseCases.setter();
  OUTLINED_FUNCTION_31_4(v110[13]);
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.requestorBundleID.setter();
  OUTLINED_FUNCTION_31_4(v110[14]);
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.onBehalfOfBundleID.setter();
  OUTLINED_FUNCTION_31_4(v110[15]);
  OUTLINED_FUNCTION_26_4();
  AppleIntelligenceReportingInvocationStep.inferenceProviderIdentifier.setter();
  outlined init with copy of UUIDIdentifier?(v162, v166, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  AppleIntelligenceReportingInvocationStep.eventPairID.setter();
  OUTLINED_FUNCTION_30_4();
  v147 = v163;
  v148 = v160;
  v149(v163, v109, v160);
  swift_storeEnumTagMultiPayload();
  (*(v169 + 24))(v147, &v178, v168);
  OUTLINED_FUNCTION_0_7();
  _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v147, v150);
  v151 = OUTLINED_FUNCTION_43_3();
  v152(v151, v148);
  if (v127)
  {
    v153 = *v179;
    v154 = v157;
    *v157 = v178;
    v154[1] = v153;
    *(v154 + 25) = *&v179[9];
  }

  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_52_2();
  v6 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(v5);
  v7 = OUTLINED_FUNCTION_29(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for MinimalInferenceEvent(0);
  v14 = OUTLINED_FUNCTION_29(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v21 = OUTLINED_FUNCTION_29(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  v27 = type metadata accessor for AppleIntelligenceEvent(0);
  v28 = OUTLINED_FUNCTION_9(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_50_4();
  _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(v0, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v2, v26);
      OUTLINED_FUNCTION_41_4();
      _s26AppleIntelligenceReporting010BiomeEventC0PAAE013emitInferenceE05event6errors4type0H2IDyAA0abgE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
      v32 = v1;
      v33 = type metadata accessor for AppleIntelligenceInferenceEvent;
      v34 = v26;
    }

    else
    {
      _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v2, v12);
      _s26AppleIntelligenceReporting010BiomeEventC0PAAE017emitAssetDeliveryE05event6errors4type0I2IDyAA0abghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF();
      v32 = v1;
      v33 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
      v34 = v12;
    }
  }

  else
  {
    _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(v2, v19);
    OUTLINED_FUNCTION_41_4();
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE020emitMinimalInferenceE05event6errors4type0I2IDyAA0ghE0V_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcM0OYKF();
    v32 = v1;
    v33 = type metadata accessor for MinimalInferenceEvent;
    v34 = v19;
  }

  _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v34, v33);
  if (v32)
  {
    *v4 = v35;
    v4[1] = *v36;
    *(v4 + 25) = *&v36[9];
  }

  OUTLINED_FUNCTION_47();
}

double OUTLINED_FUNCTION_0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v1;
  *(a1 + 68) = v2;
  return result;
}

void _s26AppleIntelligenceReporting13EventReporterC04emitabD09eventInfoyAA0abD0O_tAA0abC5ErrorOYKF()
{
  OUTLINED_FUNCTION_48();
  v20 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AppleIntelligenceReportingEventType();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  EventReporter.getBiomeEventReporter(for:)(v3, v23);
  OUTLINED_FUNCTION_28_3();
  (*(v13 + 104))(v18, *MEMORY[0x1E69AA0E0], v10);
  v19 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v13 + 8))(v18, v10);
  if (v0)
  {
    OUTLINED_FUNCTION_23_3(v20, v21, v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

__n128 AppleIntelligenceInferenceEvent.init(subsystem:sessionIdentifier:stepIdentifier:invocationRequestIdentifier:clientRequestIdentifier:modelManagerRequestIdentifier:errors:useCaseIdentifier:additionalUseCaseIdentifiers:requestorBundleIdentifier:onBehalfOfBundleIdentifier:inferenceProviderIdentifier:assetBundleIdentifier:assets:metadata:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22)
{
  v46 = *a22;
  *a9 = a1;
  a9[1] = a2;
  v28 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v45 = a3;
  outlined init with copy of UUID?(a3, a9 + v28[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = (a9 + v28[6]);
  *v29 = a4;
  v29[1] = a5;
  outlined init with copy of UUID?(a6, a9 + v28[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  outlined init with copy of UUID?(a7, a9 + v28[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(a8, a9 + v28[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = *(a10 + 16);
  if (v30)
  {
    v48 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = a10 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v31, v47);
      __swift_project_boxed_opaque_existential_1(v47, v47[3]);
      v32 = OUTLINED_FUNCTION_106();
      AppleIntelligenceError.toGeneral.getter(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v47);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = *(v48 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v31 += 40;
      --v30;
    }

    while (v30);

    OUTLINED_FUNCTION_54_2(a8);
    OUTLINED_FUNCTION_54_2(a7);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a6, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    OUTLINED_FUNCTION_54_2(v45);
    v35 = v48;
  }

  else
  {

    OUTLINED_FUNCTION_54_2(a8);
    OUTLINED_FUNCTION_54_2(a7);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a6, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    OUTLINED_FUNCTION_54_2(a3);
    v35 = MEMORY[0x1E69E7CC0];
  }

  *(a9 + v28[10]) = v35;
  v36 = a9 + v28[11];
  v37 = *(a11 + 16);
  *v36 = *a11;
  *(v36 + 1) = v37;
  result = *(a11 + 32);
  v39 = *(a11 + 48);
  *(v36 + 2) = result;
  *(v36 + 3) = v39;
  *(a9 + v28[12]) = a12;
  v40 = (a9 + v28[13]);
  *v40 = a13;
  v40[1] = a14;
  v41 = (a9 + v28[14]);
  *v41 = a15;
  v41[1] = a16;
  v42 = (a9 + v28[15]);
  *v42 = a17;
  v42[1] = a18;
  v43 = (a9 + v28[16]);
  *v43 = a19;
  v43[1] = a20;
  *(a9 + v28[17]) = a21;
  *(a9 + v28[18]) = v46;
  return result;
}

double AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 28) = 1;
  result = 0.0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceUseCase(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceReportingMetadata(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1C0C96CC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void _s26AppleIntelligenceReporting18BiomeEventReporterC4sendyyAA0abdE0OAA0abC5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v3 = OUTLINED_FUNCTION_1(v2);
  v92 = v4;
  v93 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v91 = v8 - v7;
  v9 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v10 = OUTLINED_FUNCTION_1(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v88 = v15 - v14;
  v16 = type metadata accessor for MobileAssetInstrumentationEvent();
  v17 = OUTLINED_FUNCTION_1(v16);
  v86 = v18;
  v87 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v25 = OUTLINED_FUNCTION_1(v24);
  v84 = v26;
  v85 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v31 = v30 - v29;
  v32 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v33 = OUTLINED_FUNCTION_1(v32);
  v83 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v41 = OUTLINED_FUNCTION_1(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v48 = v47 - v46;
  v49 = type metadata accessor for AppleIntelligenceBiomeEvent();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2();
  v53 = v52 - v51;
  outlined init with copy of AppleIntelligenceBiomeEvent(a1, v52 - v51);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v83 + 32))(v39, v53, v32);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v70 = v95[4];
      OUTLINED_FUNCTION_7();
      v72 = *(v71 + 152);

      v72(v39);
      v57 = v96;
      if (v96)
      {
        (*(v83 + 8))(v39, v32);
        goto LABEL_14;
      }

      (*(v83 + 8))(v39, v32);
      goto LABEL_24;
    case 2u:
      (*(v84 + 32))(v31, v53, v85);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v64 = v95[5];
      OUTLINED_FUNCTION_7();
      v66 = *(v65 + 152);

      v66(v31);
      v57 = v96;
      if (v96)
      {
        (*(v84 + 8))(v31, v85);
        goto LABEL_14;
      }

      (*(v84 + 8))(v31, v85);
      goto LABEL_24;
    case 3u:
      (*(v86 + 32))(v23, v53, v87);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v67 = v95[6];
      OUTLINED_FUNCTION_7();
      v69 = *(v68 + 152);

      v69(v23);
      v57 = v96;
      if (v96)
      {
        (*(v86 + 8))(v23, v87);
        goto LABEL_14;
      }

      (*(v86 + 8))(v23, v87);
      goto LABEL_24;
    case 4u:
      v59 = v88;
      v58 = v89;
      v60 = OUTLINED_FUNCTION_11();
      v61 = v90;
      v62(v60);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v63 = v95[7];
      goto LABEL_12;
    case 5u:
      v59 = v91;
      v58 = v92;
      v73 = OUTLINED_FUNCTION_11();
      v61 = v93;
      v74(v73);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v75 = v95[8];
LABEL_12:
      OUTLINED_FUNCTION_7();
      v77 = *(v76 + 152);

      v77(v59);
      v57 = v96;
      if (v96)
      {
        (*(v58 + 8))(v59, v61);
        goto LABEL_14;
      }

      (*(v58 + 8))(v59, v61);
      goto LABEL_24;
    default:
      (*(v43 + 32))(v48, v53, v40);
      OUTLINED_FUNCTION_3();
      swift_beginAccess();
      v54 = v95[3];
      OUTLINED_FUNCTION_7();
      v56 = *(v55 + 152);

      v56(v48);
      v57 = v96;
      if (v96)
      {
        (*(v43 + 8))(v48, v40);
LABEL_14:
        v78 = v57;

        if (one-time initialization token for general != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        __swift_project_value_buffer(v79, static Logging.general);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_1C0C94000, v80, v81, "Failed to initialize stream for event", v82, 2u);
          MEMORY[0x1C68E2FD0](v82, -1, -1);
        }

        convertToAppleIntelligenceError(error:)(v78, a2);
        *(a2 + 40) = 1;
        lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
        swift_willThrowTypedImpl();
      }

      else
      {
        (*(v43 + 8))(v48, v40);
LABEL_24:
      }

      return;
  }
}

uint64_t outlined destroy of AppleIntelligenceAssetDeliveryEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined init with copy of any Source<Self.Stream == A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with copy of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceBiomeEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double _s26AppleIntelligenceReporting18BiomeEventReporterCAA0deC0A2aDP4sendyyAA0abdE0OAA0abC5ErrorOYKFTW(uint64_t a1, _OWORD *a2)
{
  v5 = *v2;
  _s26AppleIntelligenceReporting18BiomeEventReporterC4sendyyAA0abdE0OAA0abC5ErrorOYKF(a1, &v8);
  if (v3)
  {
    v7 = v9[0];
    *a2 = v8;
    a2[1] = v7;
    result = *(v9 + 9);
    *(a2 + 25) = *(v9 + 9);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_3()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

void closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_52_2();
  v5 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = *v4;
  v15 = v4[1];

  AppleIntelligenceReportingUseCase.useCaseIdentifier.setter();
  v16 = *(v4 + 6);
  v68 = *(v4 + 28);
  AppleIntelligenceReportingUseCase.mode.setter();
  v17 = v4[6];
  v18 = v4[7];

  AppleIntelligenceReportingUseCase.countryCode.setter();
  v19 = v4[4];
  v20 = v4[5];

  AppleIntelligenceReportingUseCase.locale.setter();
  v21 = v4[2];
  v22 = *(v21 + 16);
  if (v22)
  {
    v58 = v13;
    v53 = v0;
    v65 = v2;
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v64 = v66;
    v23 = specialized Dictionary.startIndex.getter(v21);
    v26 = v23;
    v27 = 0;
    v63 = v21 + 64;
    v56 = v22;
    v57 = v8 + 32;
    v55 = v24;
    v54 = v21 + 72;
    v28 = v21;
    v59 = v8;
    while ((v26 & 0x8000000000000000) == 0 && v26 < 1 << *(v28 + 32))
    {
      v29 = v26 >> 6;
      if ((*(v63 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v28 + 36) != v24)
      {
        goto LABEL_23;
      }

      v60 = v27;
      v61 = v24;
      v67 = v25;
      v62 = &v53;
      v30 = (*(v28 + 48) + 16 * v26);
      v31 = *v30;
      v32 = v30[1];
      v33 = (*(v28 + 56) + 16 * v26);
      v34 = *v33;
      v35 = v33[1];
      MEMORY[0x1EEE9AC00](v23);
      *(&v53 - 4) = v36;
      *(&v53 - 3) = v32;
      *(&v53 - 2) = v37;
      *(&v53 - 1) = v35;

      v38 = v28;
      v39 = v58;
      v40 = v65;
      static Buildable.with(_:)();
      v65 = v40;

      v41 = v64;
      v66 = v64;
      v42 = *(v64 + 16);
      if (v42 >= *(v64 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v41 = v66;
      }

      *(v41 + 16) = v42 + 1;
      v43 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v41;
      v23 = (*(v59 + 32))(v41 + v43 + *(v59 + 72) * v42, v39, v5);
      v44 = 1 << *(v38 + 32);
      if (v26 >= v44)
      {
        goto LABEL_24;
      }

      v45 = *(v63 + 8 * v29);
      if ((v45 & (1 << v26)) == 0)
      {
        goto LABEL_25;
      }

      v28 = v38;
      if (*(v38 + 36) != v61)
      {
        goto LABEL_26;
      }

      v46 = v45 & (-2 << (v26 & 0x3F));
      if (v46)
      {
        v44 = __clz(__rbit64(v46)) | v26 & 0x7FFFFFFFFFFFFFC0;
        v47 = v56;
      }

      else
      {
        v48 = v29 << 6;
        v49 = v29 + 1;
        v50 = (v54 + 8 * v29);
        v47 = v56;
        while (v49 < (v44 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            v23 = outlined consume of [String : String].Index._Variant(v26, v61, v67 & 1);
            v44 = __clz(__rbit64(v51)) + v48;
            goto LABEL_19;
          }
        }

        v23 = outlined consume of [String : String].Index._Variant(v26, v61, v67 & 1);
      }

LABEL_19:
      v25 = 0;
      v27 = v60 + 1;
      v26 = v44;
      v24 = v55;
      if (v60 + 1 == v47)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    AppleIntelligenceReportingUseCase.parameters.setter();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_47();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_32()
{
  v2 = *(v0 + 56);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

__n128 OUTLINED_FUNCTION_32_3(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 425);
  v4 = *(v2 + 416);
  *a2 = *(v2 + 400);
  *(a2 + 16) = v4;
  *(a2 + 25) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_2@<X0>(char a1@<W8>)
{
  *(v1 - 328) = a1;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_1_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_21_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_3()
{
  v2 = *(v0 + 224);
  v3 = *(v0 + 296);

  return static Buildable.with(_:)();
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(void *a1@<X8>)
{
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t outlined init with copy of AppleIntelligenceEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return a2;
}

{
  v4 = type metadata accessor for AppleIntelligenceEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s26AppleIntelligenceReporting0aB5EventOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return a2;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

{
  v1 = *v0;
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_13()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_26_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_39_0();
  if (v10)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v8 + v23, v14, v19 + v23, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_1();
}

uint64_t outlined init with take of AppleIntelligenceAssetDeliveryEvent(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return a2;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWObTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_52_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return a2;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceUseCase(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 + 176);

  return _s26AppleIntelligenceReporting0aB18AssetDeliveryEventVWOhTm_0(v2, type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState);
}

uint64_t type metadata accessor for AppleIntelligenceBiomeEvent()
{
  result = type metadata singleton initialization cache for AppleIntelligenceBiomeEvent;
  if (!type metadata singleton initialization cache for AppleIntelligenceBiomeEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 600);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_7_4()
{
  result = v0;
  v3 = *(v1 - 72);
  v4 = *(v1 - 256);
  v5 = *(v1 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2()
{
  v2 = v0[68];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[53];
}

void OUTLINED_FUNCTION_20_3()
{
  v1 = *(v0 - 264);
  v2 = *(v0 - 312);
  v3 = *(v0 - 400);
}

uint64_t OUTLINED_FUNCTION_29_1(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return AppleIntelligenceError.toGeneral.getter(v1, v2);
}

uint64_t OUTLINED_FUNCTION_29_3()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_31_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_31_3()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_31_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t sub_1C0C988A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t OUTLINED_FUNCTION_36_1()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void OUTLINED_FUNCTION_36_3()
{
  v1 = *(v0 - 360);
  v2 = *(v0 - 344);
  v3 = *(v0 - 352);
}

uint64_t OUTLINED_FUNCTION_27_0()
{
  v2 = *(v0 - 208);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  v2 = *(v0[39] + 24);
  result = v1;
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[45];
  return result;
}

uint64_t specialized Array.count.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1C68E2860);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t outlined init with take of any Source<Self.Stream == A>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for GeneralAppleIntelligenceError()
{
  result = type metadata singleton initialization cache for GeneralAppleIntelligenceError;
  if (!type metadata singleton initialization cache for GeneralAppleIntelligenceError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab3EndD09eventInfo05startD10IdentifieryAA0abD0O_AA14UUIDIdentifierVSgtAA0abC5ErrorOYKF()
{
  OUTLINED_FUNCTION_48();
  v36 = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  OUTLINED_FUNCTION_29(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for AppleIntelligenceReportingEventType();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v26 = v25 - v24;
  v37 = v5;
  EventReporter.getBiomeEventReporter(for:)(v5, v40);
  OUTLINED_FUNCTION_28_3();
  (*(v21 + 104))(v26, *MEMORY[0x1E69AA0D0], v18);
  outlined init with copy of UUIDIdentifier?(v3, v11);
  v27 = type metadata accessor for UUIDIdentifier();
  if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v11, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v28 = type metadata accessor for UUID();
    v29 = v17;
    v30 = 1;
    v31 = 1;
  }

  else
  {
    v32 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_9(v32);
    (*(v33 + 16))(v17, v11, v32);
    OUTLINED_FUNCTION_14_2();
    outlined destroy of UUIDIdentifier(v11, v34);
    OUTLINED_FUNCTION_13_2();
    v28 = v32;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v21 + 8))(v26, v18);
  if (v0)
  {
    OUTLINED_FUNCTION_23_3(v36, v38, v39);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  OUTLINED_FUNCTION_47();
}

void type metadata completion function for GeneralAppleIntelligenceError()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with copy of UUIDIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_46()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 600);

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return BidirectionalCollection<>.joined(separator:)();
}

void *OUTLINED_FUNCTION_39_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return __swift_project_boxed_opaque_existential_1((v3 - 128), v2);
}

__n128 sub_1C0C98F9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1C0C98FA8()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySbGMd, &_s15Synchronization5MutexVySbGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOs0J3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C0C9924C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    v9 = a1 + *(a3 + 48);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0C992D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVs10SetAlgebraAAsALP5unionyxxnFTW_0(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1C0C99424(a1);
}

void _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVs10SetAlgebraAAsALP12intersectionyxxFTW_0(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1C0C99438(a1);
}

void _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVs10SetAlgebraAAsALP19symmetricDifferenceyxxnFTW_0(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1C0C9944C(a1);
}

BOOL sub_1C0C9945C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_1C0C99490(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_32_0(a1);
}

void _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVs10SetAlgebraAAsALP11subtractingyxxFTW_0(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1C0C99518(a1);
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVSYAASY8rawValuexSg03RawN0Qz_tcfCTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV0J7ReasonsVSYAASY8rawValue03RawN0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOs0L3KeyAAsAMP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV20UAFSubscriptionStateV18SubscriptionStatusOSYAASY8rawValue03RawL0QzvgTW_0@<X0>(_DWORD *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.DownloadStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_62_0(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s26AppleIntelligenceReporting0aB18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C0C998C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for UUIDIdentifier();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1C0C99940(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UUIDIdentifier();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C0C99D58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_2();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 84) == a2)
  {
    v5 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    v5 = *(a3 + 28);
  }

  v6 = OUTLINED_FUNCTION_59_1(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1C0C99E28()
{
  OUTLINED_FUNCTION_60_1();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_59_1(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1C0C99EF8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_49_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = OUTLINED_FUNCTION_59_1(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1C0C99F78()
{
  OUTLINED_FUNCTION_60_1();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v5 = OUTLINED_FUNCTION_59_1(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1C0C9A150()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGGMd, &_s15Synchronization5MutexVySDys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGGMR);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

unint64_t BiomeEventReporter.user.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  return *(v0 + 16) | (*(v0 + 20) << 32);
}

uint64_t BiomeEventReporter.user.setter()
{
  OUTLINED_FUNCTION_10();
  result = OUTLINED_FUNCTION_5();
  *(v1 + 16) = v0;
  *(v1 + 20) = BYTE4(v0) & 1;
  return result;
}

uint64_t (*BiomeEventReporter.user.modify())()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  return BiomeEventReporter.user.modify;
}

uint64_t key path setter for BiomeEventReporter.lazySource.source : <A>BiomeEventReporter.lazySource<A>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with copy of any Source<Self.Stream == A>(a1, v5);
  }

  else
  {
    v3 = *(a1 + 16);
    v5[0] = *a1;
    v5[1] = v3;
    v6 = *(a1 + 32);
  }

  return (*(**a2 + 128))(v5);
}

__n128 BiomeEventReporter.lazySource.source.getter@<Q0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  if (*(v1 + 40))
  {
    outlined init with copy of any Source<Self.Stream == A>(v1 + 16, a1);
  }

  else
  {
    result = *(v1 + 16);
    v4 = *(v1 + 32);
    *a1 = result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(v1 + 48);
  }

  return result;
}

uint64_t BiomeEventReporter.lazySource.source.setter()
{
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (!*(v1 + 40))
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = *(v0 + 16);
    *(v1 + 16) = *v0;
    *(v1 + 32) = v3;
    *(v1 + 48) = *(v0 + 32);
    return swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  outlined init with take of any Source<Self.Stream == A>(v0, v1 + 16);
  return swift_endAccess();
}

uint64_t (*BiomeEventReporter.lazySource.source.modify())()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4();
  return BiomeEventReporter.lazySource.source.modify;
}

void BiomeEventReporter.lazySource.__allocating_init(user:)()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_9_0(v0);
  *(v2 + 68) = v1 & 1;
}

uint64_t BiomeEventReporter.lazySource.init(user:)(uint64_t a1)
{
  *(v1 + 45) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 64) = a1;
  *(v1 + 68) = BYTE4(a1) & 1;
  return OUTLINED_FUNCTION_8();
}

void BiomeEventReporter.lazySource.sendEvent(_:)(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 56));
  _s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceC04sendE0yy0E4TypeQzKFySbzYuKYTXEfU_(v1 + 60, v1, a1, &v3);
  os_unfair_lock_unlock((v1 + 56));
}

uint64_t _s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceC04sendE0yy0E4TypeQzKFySbzYuKYTXEfU_(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4;
  v9 = *a2;
  v10 = *(*a2 + 120);
  v10(v38);
  v11 = 0x1EBE5E000uLL;
  if (v39)
  {
    v12 = __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else if (*(a2 + 68) == 1)
  {
    v40 = a3;
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logging.general);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C0C94000, v15, v16, "Creating general source", v17, 2u);
      v18 = v17;
      v11 = 0x1EBE5E000;
      MEMORY[0x1C68E2FD0](v18, -1, -1);
    }

    v19 = *(v9 + 88);
    v20 = *(v9 + 80);
    result = static StreamResource.source()();
    if (v4)
    {
      goto LABEL_22;
    }

    v12 = (*(*a2 + 128))(v38);
  }

  else
  {
    v35 = *(a2 + 16);
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logging.general);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = a3;
      v30 = a4;
      v31 = v29;
      *v29 = 67109120;
      *(v29 + 4) = v35;
      _os_log_impl(&dword_1C0C94000, v27, v28, "Creating source with user: %u", v29, 8u);
      v32 = v31;
      a4 = v30;
      MEMORY[0x1C68E2FD0](v32, -1, -1);
    }

    v33 = *(v9 + 88);
    v34 = *(v9 + 80);
    result = static StreamResource.source(user:)();
    if (v4)
    {
      goto LABEL_22;
    }

    v12 = (*(*a2 + 128))(v38);
    v11 = 0x1EBE5E000;
  }

  (v10)(&v36, v12);
  if (v37)
  {
    outlined init with take of any Source<Self.Stream == A>(&v36, v38);
    __swift_project_boxed_opaque_existential_1(v38, v39);
    dispatch thunk of Source.sendEvent(_:)();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  if (*(v11 + 720) != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logging.general);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C0C94000, v22, v23, "Stream resource not found.", v24, 2u);
    MEMORY[0x1C68E2FD0](v24, -1, -1);
  }

  lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  v6 = swift_allocError();
  *v25 = 0xD000000000000019;
  *(v25 + 8) = 0x80000001C0CDED80;
  *(v25 + 40) = 0;
  result = swift_willThrow();
LABEL_22:
  *a4 = v6;
  return result;
}

uint64_t BiomeEventReporter.lazySource.deinit()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return v0;
}

uint64_t BiomeEventReporter.lazySource.__deallocating_deinit()
{
  BiomeEventReporter.lazySource.deinit();
  OUTLINED_FUNCTION_6();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t BiomeEventReporter.invocationStepSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t BiomeEventReporter.invocationStepSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t BiomeEventReporter.availabilitySource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t BiomeEventReporter.availabilitySource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t BiomeEventReporter.mobileAssetSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t BiomeEventReporter.mobileAssetSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t BiomeEventReporter.mobileAssetSecondarySource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t BiomeEventReporter.mobileAssetSecondarySource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t BiomeEventReporter.modelCatalogSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t BiomeEventReporter.modelCatalogSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t BiomeEventReporter.unifiedAssetFrameworkSource.getter()
{
  OUTLINED_FUNCTION_3();
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t BiomeEventReporter.unifiedAssetFrameworkSource.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_5();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t BiomeEventReporter.__allocating_init(user:)(unint64_t a1)
{
  v2 = swift_allocObject();
  BiomeEventReporter.init(user:)(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t BiomeEventReporter.init(user:)(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1) & 1;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 20) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O10InvocationO4StepOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O10InvocationO4StepOGMR);
  OUTLINED_FUNCTION_6();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_0(v4);
  *(v1 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12AvailabilityOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12AvailabilityOGMR);
  OUTLINED_FUNCTION_6();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_0(v6);
  *(v1 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO06MobileL0OGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO06MobileL0OGMR);
  OUTLINED_FUNCTION_6();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_0(v8);
  *(v1 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO11MobileAssetO9LifeCycleO015InstrumentationE0OGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO11MobileAssetO9LifeCycleO015InstrumentationE0OGMR);
  OUTLINED_FUNCTION_6();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_0(v10);
  *(v1 + 48) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12ModelCatalogOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO12ModelCatalogOGMR);
  OUTLINED_FUNCTION_6();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_0(v12);
  *(v1 + 56) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO07UnifiedL9FrameworkOGMd, &_s26AppleIntelligenceReporting18BiomeEventReporterC10lazySourceCy_0B15PlatformLibrary0J0O7StreamsO0aB0O0C0O16AssetDeliveryLogO07UnifiedL9FrameworkOGMR);
  OUTLINED_FUNCTION_6();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_9_0(v14);
  *(v15 + 68) = v3;
  *(v1 + 64) = v15;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *BiomeEventReporter.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t BiomeEventReporter.__deallocating_deinit()
{
  BiomeEventReporter.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

unint64_t protocol witness for BiomeEventReporting.user.getter in conformance BiomeEventReporter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16) | (*(v1 + 20) << 32);
}

uint64_t BiomeEventReporterGenerator.getNewBiomeEventReporter(for:)@<X0>(unsigned int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BiomeEventReporter();
  v5 = swift_allocObject();
  result = BiomeEventReporter.init(user:)(a1);
  a2[3] = v4;
  a2[4] = &protocol witness table for BiomeEventReporter;
  *a2 = v5;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_5()
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_9_0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 45) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = v1;
  return result;
}

uint64_t one-time initialization function for general()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.general);
  __swift_project_value_buffer(v0, static Logging.general);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for testing()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logging.testing);
  __swift_project_value_buffer(v0, static Logging.testing);
  return Logger.init(subsystem:category:)();
}

uint64_t Logging.general.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logging.general.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t toJSONString(_:)(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_2();
  v25 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v8 = (v7 - v6);
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = type metadata accessor for JSONEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  v15 = *(v10 + 72);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_1C0CD7B10;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v8 = closure #1 in toJSONString(_:);
  v8[1] = 0;
  (*(v4 + 104))(v8, *MEMORY[0x1E6967FB8], v25);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v17 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v20 = v19;
  static String.Encoding.utf8.getter();
  v21 = String.init(data:encoding:)();
  v23 = v22;
  outlined consume of Data._Representation(v18, v20);

  if (!v23)
  {
    return 0xD000000000000013;
  }

  return v21;
}

unint64_t lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A];
  if (!lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [JSONEncoder.OutputFormatting] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in toJSONString(_:)(uint64_t a1, void *a2)
{
  v34 = a1;
  v3 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v12 = *(v24 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TimeZone();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = type metadata accessor for Date.ISO8601FormatStyle();
  v28 = *(v18 - 8);
  v19 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  static TimeZone.current.getter();
  (*(v12 + 104))(v15, *MEMORY[0x1E6969360], v24);
  (*(v9 + 104))(v25, *MEMORY[0x1E6969358], v26);
  (*(v29 + 104))(v27, *MEMORY[0x1E6969370], v30);
  (*(v32 + 104))(v31, *MEMORY[0x1E6969380], v33);
  Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(&lazy protocol witness table cache variable for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle, MEMORY[0x1E69693A0]);
  Date.formatted<A>(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v35[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  (*(v28 + 8))(v21, v18);

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t UInt32.init<A>(safelyWrapping:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v68 = &v65 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  v74 = v6;
  v19 = *(v6 + 16);
  v20 = swift_getAssociatedTypeWitness();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v75 = *(a2 - 8);
  v22 = *(v75 + 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_0();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    OUTLINED_FUNCTION_3_0();
    v19 = a1;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      v26 = v75;
      v27 = OUTLINED_FUNCTION_0_0();
      v28(v27);
      OUTLINED_FUNCTION_3_0();
      v29 = dispatch thunk of BinaryInteger._lowWord.getter();
      v30 = OUTLINED_FUNCTION_1_1();
      a1(v30);
      if (v29 < 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }

    v76 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0();
    v35 = *(*(a3 + 32) + 8);
    v33 = dispatch thunk of static Comparable.< infix(_:_:)();
    v26 = v75;
    v36 = OUTLINED_FUNCTION_1_1();
    a1(v36);
LABEL_9:
    v37 = v18;
    if (v33)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  v65 = v15;
  OUTLINED_FUNCTION_3_0();
  v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v73 = a1;
  OUTLINED_FUNCTION_3_0();
  v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v31 & 1) == 0)
  {
    v19 = v73;
    v26 = v75;
    v15 = v65;
    if (v32 >= 64)
    {
      goto LABEL_33;
    }

    v37 = v18;
    v38 = OUTLINED_FUNCTION_0_0();
    v39(v38);
    OUTLINED_FUNCTION_3_0();
    v40 = dispatch thunk of BinaryInteger._lowWord.getter();
    v41 = OUTLINED_FUNCTION_1_1();
    a1(v41);
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_17;
  }

  if (v32 > 64)
  {
    v76 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    OUTLINED_FUNCTION_7_0();
    v33 = OUTLINED_FUNCTION_5_0();
    v26 = v75;
    v34 = OUTLINED_FUNCTION_1_1();
    a1(v34);
    v15 = v65;
    goto LABEL_9;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v42 = OUTLINED_FUNCTION_5_0();
  v26 = v75;
  a1 = *(v75 + 1);
  (a1)(v25, a2);
  if (v42)
  {
    v15 = v65;
LABEL_16:
    v37 = v18;
    goto LABEL_17;
  }

  v60 = OUTLINED_FUNCTION_0_0();
  v61(v60);
  OUTLINED_FUNCTION_3_0();
  v62 = dispatch thunk of BinaryInteger._lowWord.getter();
  (a1)(v25, a2);
  v15 = v65;
  v37 = v18;
  if (v62 < 0)
  {
LABEL_17:
    dispatch thunk of Numeric.magnitude.getter();
    v43 = v71;
    v44 = swift_getAssociatedConformanceWitness();
    v45 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v75 = a1;
    if (v45)
    {
      v46 = v15;
      v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
      OUTLINED_FUNCTION_2_2();
      v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v49 = v72;
      if (v47)
      {
        if (v48 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_8_0();
          OUTLINED_FUNCTION_4_0();
          v50(v46, v43);
          if (v43)
          {
            goto LABEL_24;
          }

LABEL_23:
          OUTLINED_FUNCTION_2_2();
          if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
          {
LABEL_24:
            swift_getAssociatedConformanceWitness();
            v74 = v44;
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v73 = v19;
            v52 = v49;
            v53 = v66;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v54 = *(AssociatedConformanceWitness + 8);
            dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
            v55 = *(v52 + 8);
            v55(v53, v43);
            lazy protocol witness table accessor for type UInt32 and conformance UInt32();
            FixedWidthInteger.init<A>(clamping:)();
            (v75)(v73, a2);
            v55(v37, v43);
            return ~v76;
          }

          goto LABEL_31;
        }
      }

      else if (v48 < 32)
      {
        OUTLINED_FUNCTION_2_2();
        if (dispatch thunk of BinaryInteger._lowWord.getter() != -1)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }

      LODWORD(v76) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v57 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_8_0();
      OUTLINED_FUNCTION_4_0();
      v59 = v46;
    }

    else
    {
      OUTLINED_FUNCTION_2_2();
      v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v49 = v72;
      if (v51 < 32)
      {
        goto LABEL_23;
      }

      LODWORD(v76) = -1;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v57 = v43;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      OUTLINED_FUNCTION_6_0();
      dispatch thunk of static Comparable.< infix(_:_:)();
      OUTLINED_FUNCTION_4_0();
      v59 = v15;
    }

    v58(v59, v43);
    if (v57)
    {
      goto LABEL_24;
    }

LABEL_31:
    (v75)(v19, a2);
    (*(v49 + 8))(v37, v43);
    return 1;
  }

LABEL_33:
  v63 = OUTLINED_FUNCTION_0_0();
  v64(v63);
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  FixedWidthInteger.init<A>(clamping:)();
  (*(v26 + 1))(v19, a2);
  return v76;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{
  v3 = *(*(v0 + 32) + 8);
  v4 = *(v1 - 112);

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  v2 = *(v0 - 104);

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return dispatch thunk of static Comparable.< infix(_:_:)();
}

uint64_t UUIDIdentifier.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UUIDIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUIDIdentifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    OUTLINED_FUNCTION_0_1();
    lazy protocol witness table accessor for type UUID and conformance UUID(v14, v15);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v5 + 32))(v12, v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v18);
    outlined init with take of UUIDIdentifier(v12, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t outlined init with take of UUIDIdentifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UUIDIdentifier.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t UUIDIdentifier.internalUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDIdentifier.hash(into:)()
{
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int UUIDIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_1();
  lazy protocol witness table accessor for type UUID and conformance UUID(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UUIDIdentifier()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for UUIDIdentifier()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964647562 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73676E6974746573 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x626967696C45736FLL && a2 == 0xED00007974696C69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x80000001C0CDEE70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461436C65646F6DLL && a2 == 0xEC000000676F6C61;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001C0CDEE90 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7341656C69626F6DLL && a2 == 0xEB00000000746573;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001CLL && 0x80000001C0CDEEB0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 1769105779 && a2 == 0xE400000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6573734169726973 && a2 == 0xEA00000000007374;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000018 && 0x80000001C0CDEED0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7964647562;
  switch(a1)
  {
    case 1:
      result = 0x73676E6974746573;
      break;
    case 2:
      result = 0x626967696C45736FLL;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x7461436C65646F6DLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x7341656C69626F6DLL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
      result = 1769105779;
      break;
    case 9:
      result = 0x6573734169726973;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.Subsystem.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_48();
  a26 = v29;
  a27 = v30;
  v31 = v27;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, "h|");
  v35 = OUTLINED_FUNCTION_1(v34);
  v142 = v36;
  v143 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  v141 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  v42 = OUTLINED_FUNCTION_1(v41);
  v139 = v43;
  v140 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_19_0();
  v138 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  v49 = OUTLINED_FUNCTION_1(v48);
  v136 = v50;
  v137 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_19_0();
  v135 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  v56 = OUTLINED_FUNCTION_1(v55);
  v133 = v57;
  v134 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_19_0();
  v132 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  v63 = OUTLINED_FUNCTION_1(v62);
  v130 = v64;
  v131 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_19_0();
  v129 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  v70 = OUTLINED_FUNCTION_1(v69);
  v127 = v71;
  v128 = v70;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v76, &a24);
  v126[11] = v77;
  v79 = *(v78 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v81);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v82, &a21);
  v126[8] = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v87);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v88, &a18);
  v126[5] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v94, &v148);
  v126[2] = v95;
  v97 = *(v96 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v98);
  v100 = v126 - v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v101);
  v126[1] = v102;
  v104 = *(v103 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_36();
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v145);
  v107 = v106;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v110);
  v112 = v126 - v111;
  v113 = *v31;
  v114 = v33[4];
  v115 = __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();
  v144 = v112;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v116 = (v107 + 8);
  switch(v113)
  {
    case 1:
      v147[6] = 1;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();
      v115 = v144;
      v114 = v145;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_24(v147);
      v118 = v100;
      v121 = &v148;
      goto LABEL_9;
    case 2:
      v147[7] = 2;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();
      v124 = v126[4];
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_24(&a10);
      v118 = v124;
      v121 = &a18;
      goto LABEL_9;
    case 3:
      a10 = 3;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();
      v125 = v126[7];
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_24(&a20);
      v118 = v125;
      v121 = &a21;
      goto LABEL_9;
    case 4:
      a11 = 4;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();
      v120 = v126[10];
      OUTLINED_FUNCTION_14_0();
      OUTLINED_FUNCTION_24(&a23);
      v118 = v120;
      v121 = &a24;
LABEL_9:
      v119 = *(v121 - 32);
      break;
    case 5:
      a12 = 5;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();
      v122 = v126[13];
      OUTLINED_FUNCTION_14_0();
      v123 = v127;
      v119 = v128;
      goto LABEL_14;
    case 6:
      a13 = 6;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();
      v122 = v129;
      OUTLINED_FUNCTION_14_0();
      v123 = v130;
      v119 = v131;
      goto LABEL_14;
    case 7:
      a14 = 7;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();
      v122 = v132;
      OUTLINED_FUNCTION_14_0();
      v123 = v133;
      v119 = v134;
      goto LABEL_14;
    case 8:
      a15 = 8;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();
      v122 = v135;
      OUTLINED_FUNCTION_14_0();
      v123 = v136;
      v119 = v137;
      goto LABEL_14;
    case 9:
      a16 = 9;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();
      v122 = v138;
      OUTLINED_FUNCTION_14_0();
      v123 = v139;
      v119 = v140;
      goto LABEL_14;
    case 10:
      a17 = 10;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();
      v122 = v141;
      OUTLINED_FUNCTION_14_0();
      v123 = v142;
      v119 = v143;
LABEL_14:
      v117 = *(v123 + 8);
      v118 = v122;
      break;
    default:
      v147[5] = 0;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();
      v115 = v144;
      v114 = v145;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_24(&v146);
      v118 = v28;
      v119 = v101;
      break;
  }

  v117(v118, v119);
  (*v116)(v115, v114);
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys);
  }

  return result;
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.Subsystem.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](v1);
  return Hasher._finalize()();
}

void AppleIntelligenceAssetDeliveryEvent.Subsystem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_48();
  a26 = v28;
  a27 = v29;
  v161 = v27;
  v31 = v30;
  v156 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO34MobileAssistantFrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  v34 = OUTLINED_FUNCTION_1(v33);
  v148 = v35;
  v149 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19_0();
  v155 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO20SiriAssetsCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  v41 = OUTLINED_FUNCTION_1(v40);
  v146 = v42;
  v147 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v154 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO14SiriCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  v48 = OUTLINED_FUNCTION_1(v47);
  v144 = v49;
  v145 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_19_0();
  v153 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO38GenerativeModelsAvailabilityCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  v55 = OUTLINED_FUNCTION_1(v54);
  v142 = v56;
  v143 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_19_0();
  v159 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO06MobileG10CodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v61, &a24);
  v141[17] = v62;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_19_0();
  v158 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO07UnifiedG19FrameworkCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v67, &a23);
  v141[14] = v68;
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_19_0();
  v157 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO22ModelCatalogCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v73, &a21);
  v141[12] = v74;
  v76 = *(v75 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_19_0();
  v152 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO35CloudSubscriptionFeaturesCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v79, &a19);
  v141[10] = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_19_0();
  v151 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO23OsEligibilityCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v85, &a10);
  v141[8] = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_19_0();
  v150 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO18SettingsCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v91, &v163);
  v141[6] = v92;
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v95);
  v97 = v141 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO15BuddyCodingKeys027_74E5A5FFCD3AA678926F1A3090O4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v98);
  v141[5] = v99;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v102);
  v104 = v141 - v103;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV9SubsystemO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v105);
  v107 = v106;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_36();
  v111 = v31[3];
  v112 = v31[4];
  v160 = v31;
  __swift_project_boxed_opaque_existential_1(v31, v111);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys();
  v113 = v161;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v113)
  {
    goto LABEL_8;
  }

  v141[3] = v104;
  v141[2] = v98;
  v141[4] = v97;
  v114 = v158;
  v115 = v159;
  v161 = v107;
  v116 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v116, 0);
  if (v119 == v120 >> 1)
  {
LABEL_7:
    v129 = type metadata accessor for DecodingError();
    swift_allocError();
    v131 = v130;
    v132 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v131 = &type metadata for AppleIntelligenceAssetDeliveryEvent.Subsystem;
    v133 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v133);
    (*(*(v129 - 8) + 104))(v131, *MEMORY[0x1E69E6AF8], v129);
    swift_willThrow();
    swift_unknownObjectRelease();
    v134 = OUTLINED_FUNCTION_34();
    v135(v134);
LABEL_8:
    v136 = v160;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v136);
    OUTLINED_FUNCTION_47();
    return;
  }

  v141[1] = 0;
  if (v119 < (v120 >> 1))
  {
    v121 = *(v118 + v119);
    specialized ArraySlice.subscript.getter(v119 + 1, v120 >> 1, v117, v118, v119, v120);
    v123 = v122;
    v125 = v124;
    swift_unknownObjectRelease();
    if (v123 == v125 >> 1)
    {
      switch(v121)
      {
        case 1:
          v162[6] = 1;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SettingsCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(v162);
          v128 = &v163;
          goto LABEL_18;
        case 2:
          v162[7] = 2;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.OsEligibilityCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(&a9);
          v128 = &a10;
          goto LABEL_18;
        case 3:
          a10 = 3;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CloudSubscriptionFeaturesCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(&a18);
          v128 = &a19;
          goto LABEL_18;
        case 4:
          a11 = 4;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.ModelCatalogCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(&a20);
          v128 = &a21;
          goto LABEL_18;
        case 5:
          a12 = 5;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.UnifiedAssetFrameworkCodingKeys();
          OUTLINED_FUNCTION_13();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(&a22);
          v128 = &a23;
          goto LABEL_18;
        case 6:
          a13 = 6;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssetCodingKeys();
          OUTLINED_FUNCTION_13();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24(&a25);
          v126 = v114;
          v128 = &a24;
          goto LABEL_18;
        case 7:
          a14 = 7;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.GenerativeModelsAvailabilityCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v138 = v142;
          v137 = v143;
          goto LABEL_21;
        case 8:
          a15 = 8;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriCodingKeys();
          v115 = v153;
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v138 = v144;
          v137 = v145;
          goto LABEL_21;
        case 9:
          a16 = 9;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.SiriAssetsCodingKeys();
          v115 = v154;
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v138 = v146;
          v137 = v147;
          goto LABEL_21;
        case 10:
          a17 = 10;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.MobileAssistantFrameworkCodingKeys();
          v115 = v155;
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v138 = v148;
          v137 = v149;
LABEL_21:
          v127 = *(v138 + 8);
          v126 = v115;
          break;
        default:
          v162[5] = 0;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys();
          OUTLINED_FUNCTION_10_0();
          swift_unknownObjectRelease();
          v126 = OUTLINED_FUNCTION_21(&v161);
          v128 = &v158;
LABEL_18:
          v137 = *(v128 - 32);
          break;
      }

      v127(v126, v137);
      v139 = OUTLINED_FUNCTION_34();
      v140(v139);
      v136 = v160;
      *v156 = v121;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.useCaseIdentifier.getter@<X0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 24);
  v2 = *(v1 + 40);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 8);
  a1[1] = v4;
  a1[2] = v2;
  a1[3] = v5;
  return outlined init with copy of AppleIntelligenceUseCase?();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.subscriptionName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.subscriberName.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_50();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.EventType.== infix(_:_:)(uint64_t a1, void *a2)
{
  v120 = a1;
  v121 = a2;
  v114 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  v5 = OUTLINED_FUNCTION_9(v114);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v115 = (v9 - v8);
  v10 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_60();
  v116 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_45();
  v119 = v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_45();
  v117 = v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v114 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_58();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_45();
  v118 = v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v114 - v30;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMR) - 8) + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_36();
  v35 = v3 + *(v34 + 56);
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  v121 = v35;
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  v36 = v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v81 = v118;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      if (OUTLINED_FUNCTION_32() != 1)
      {
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v81, v103);
LABEL_41:
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v3, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMd, &_s26AppleIntelligenceReporting0aB18AssetDeliveryEventV0F4TypeO_AEtMR);
LABEL_42:
        v36 = 0;
        return v36 & 1;
      }

      v82 = v115;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      if (*v81 != *v82 || v81[1] != v82[1])
      {
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v82, v83);
LABEL_26:
        OUTLINED_FUNCTION_3_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v81, v84);
        goto LABEL_59;
      }

      v106 = *(v114 + 24);
      v107 = static UUID.== infix(_:_:)();
      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v82, v108);
      if ((v107 & 1) == 0)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v81, v109);
      goto LABEL_65;
    case 2u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v50 = v2[1];
      v49 = v2[2];
      v52 = v2[3];
      v51 = v2[4];
      v53 = v121;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_41;
      }

      v54 = *v2;
      v55 = v53[2];
      v56 = v53[4];
      if (v54 != *v53 || ((v57 = v53[1], v58 = v53[3], v50 == v57) ? (v59 = v49 == v55) : (v59 = 0), !v59 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v52 != v58))
      {

        goto LABEL_59;
      }

      v60 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v51, v56);

      if ((v60 & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_65;
    case 3u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v4, 0x50uLL);
      if (OUTLINED_FUNCTION_32() == 3)
      {
        v61 = OUTLINED_FUNCTION_56();
        memcpy(v61, v62, 0x50uLL);
        memcpy(v126, v4, 0x50uLL);
        v63 = OUTLINED_FUNCTION_55();
        memcpy(v63, v64, 0x50uLL);
        v65 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState.== infix(_:_:)(v65, v66);
        v67 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(v67);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(__dst);
      goto LABEL_41;
    case 4u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v24, 0x68uLL);
      if (OUTLINED_FUNCTION_32() == 4)
      {
        v42 = OUTLINED_FUNCTION_56();
        memcpy(v42, v43, 0x68uLL);
        memcpy(v126, v24, 0x68uLL);
        v44 = OUTLINED_FUNCTION_55();
        memcpy(v44, v45, 0x68uLL);
        v46 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState.== infix(_:_:)(v46, v47);
        v48 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(v48);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(__dst);
      goto LABEL_41;
    case 5u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v21, 0x48uLL);
      if (OUTLINED_FUNCTION_32() == 5)
      {
        v85 = OUTLINED_FUNCTION_56();
        memcpy(v85, v86, 0x48uLL);
        memcpy(v126, v21, 0x48uLL);
        v87 = OUTLINED_FUNCTION_55();
        memcpy(v87, v88, 0x48uLL);
        v89 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState.== infix(_:_:)(v89, v90);
        v91 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(v91);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(__dst);
      goto LABEL_41;
    case 6u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v92 = v117;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      memcpy(__dst, v92, 0xA8uLL);
      if (OUTLINED_FUNCTION_32() == 6)
      {
        v93 = OUTLINED_FUNCTION_56();
        memcpy(v93, v94, 0xA8uLL);
        memcpy(v126, v92, 0xA8uLL);
        v95 = OUTLINED_FUNCTION_55();
        memcpy(v95, v96, 0xA8uLL);
        v97 = OUTLINED_FUNCTION_52();
        static AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState.== infix(_:_:)(v97, v98);
        v99 = OUTLINED_FUNCTION_51();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(v99);
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(__dst);
        goto LABEL_33;
      }

      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(__dst);
      goto LABEL_41;
    case 7u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v68 = v119;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v69 = v68[1];
      __dst[0] = *v68;
      __dst[1] = v69;
      v70 = v68[3];
      __dst[2] = v68[2];
      __dst[3] = v70;
      if (OUTLINED_FUNCTION_32() != 7)
      {
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(__dst);
        goto LABEL_41;
      }

      v71 = v3[1];
      v127[0] = *v3;
      v127[1] = v71;
      v72 = v3[3];
      v74 = *v3;
      v73 = v3[1];
      v127[2] = v3[2];
      v127[3] = v72;
      v75 = v68[1];
      v126[0] = *v68;
      v126[1] = v75;
      v76 = v68[3];
      v126[2] = v68[2];
      v126[3] = v76;
      v122 = v74;
      v123 = v73;
      v77 = v3[3];
      v124 = v3[2];
      v125 = v77;
      v78 = OUTLINED_FUNCTION_52();
      static AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState.== infix(_:_:)(v78, v79);
      v80 = OUTLINED_FUNCTION_51();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(v80);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(__dst);
LABEL_33:
      OUTLINED_FUNCTION_5_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v102);
      return v36 & 1;
    case 8u:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      v100 = v116;
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      if (OUTLINED_FUNCTION_32() != 8)
      {
        goto LABEL_41;
      }

      v101 = *v3;
      LOWORD(__dst[0]) = *v100;
      LOWORD(v127[0]) = v101;
      v36 = static AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState.== infix(_:_:)(__dst, v127);
      goto LABEL_33;
    default:
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_37();
      outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
      v37 = *v31;
      v38 = v121;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v39 = *v38;
      v40 = *(v38 + 8);
      if (v31[8])
      {
        if (v31[8] != 1)
        {
          if (v37)
          {
            if (v40 != 2 || v39 != 1)
            {
              goto LABEL_59;
            }
          }

          else if (v40 != 2 || v39 != 0)
          {
            goto LABEL_59;
          }

          goto LABEL_65;
        }

        v41 = v40 == 1;
      }

      else
      {
        v41 = v40 == 0;
      }

      if (!v41 || v37 != v39)
      {
LABEL_59:
        OUTLINED_FUNCTION_5_1();
        outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v111);
        goto LABEL_42;
      }

LABEL_65:
      OUTLINED_FUNCTION_5_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v3, v113);
      v36 = 1;
      return v36 & 1;
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001C0CDEEF0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001C0CDEF10 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001C0CDEF30 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001C0CDEF50 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001C0CDEF70 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001C0CDEF90 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001C0CDEFB0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C0CDEFD0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000014 && 0x80000001C0CDEFF0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.stringValue.getter(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
    case 8:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.EventType.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v161 = v0;
  v2 = v1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v159);
  v138 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v157 = v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v158);
  v137[5] = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v156 = v12;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v155);
  v137[4] = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_0();
  v154 = v17;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v153);
  v137[3] = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_19_0();
  v152 = v22;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v151);
  v137[2] = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_19_0();
  v150 = v27;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v149);
  v137[1] = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_19_0();
  v148 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  v34 = OUTLINED_FUNCTION_1(v33);
  v146 = v35;
  v147 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_19_0();
  v145 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  v41 = OUTLINED_FUNCTION_1(v40);
  v143 = v42;
  v144 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v142 = v46;
  v140 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  v47 = OUTLINED_FUNCTION_9(v140);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2();
  v141 = v51 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v52);
  v139 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v137 - v57;
  v59 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  v60 = OUTLINED_FUNCTION_9(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_2();
  v65 = (v64 - v63);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v163);
  v160 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v69);
  v71 = v137 - v70;
  v72 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();
  v162 = v71;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_0_2();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v107 = v141;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      LOBYTE(v168) = 1;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      OUTLINED_FUNCTION_30();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v108, v109);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v110 = OUTLINED_FUNCTION_20_0();
      v111(v110);
      OUTLINED_FUNCTION_3_1();
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v107, v112);
      v113 = OUTLINED_FUNCTION_11_0();
      goto LABEL_11;
    case 2u:
      v85 = *v65;
      v161 = v65[1];
      v86 = v65[2];
      v87 = v65[3];
      v88 = v65[4];
      LOBYTE(v168) = 2;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();
      v89 = v145;
      v91 = v162;
      v90 = v163;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v168 = v85;
      *(&v168 + 1) = v161;
      *&v169 = v86;
      *(&v169 + 1) = v87;
      *&v170 = v88;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState();
      v92 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v146 + 8))(v89, v92);
      (*(v160 + 8))(v91, v90);

      break;
    case 3u:
      v93 = OUTLINED_FUNCTION_57();
      memcpy(v93, v94, 0x50uLL);
      LOBYTE(v164) = 3;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v95 = OUTLINED_FUNCTION_64();
      memcpy(v95, v96, 0x50uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState();
      OUTLINED_FUNCTION_42_0();
      v97 = OUTLINED_FUNCTION_20_0();
      v98(v97);
      v99 = OUTLINED_FUNCTION_11_0();
      v100(v99);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState(&v168);
      break;
    case 4u:
      v77 = OUTLINED_FUNCTION_57();
      memcpy(v77, v78, 0x68uLL);
      LOBYTE(v164) = 4;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = OUTLINED_FUNCTION_64();
      memcpy(v79, v80, 0x68uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState();
      OUTLINED_FUNCTION_42_0();
      v81 = OUTLINED_FUNCTION_20_0();
      v82(v81);
      v83 = OUTLINED_FUNCTION_11_0();
      v84(v83);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState(&v168);
      break;
    case 5u:
      v116 = OUTLINED_FUNCTION_57();
      memcpy(v116, v117, 0x48uLL);
      LOBYTE(v164) = 5;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v118 = OUTLINED_FUNCTION_64();
      memcpy(v118, v119, 0x48uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState();
      OUTLINED_FUNCTION_42_0();
      v120 = OUTLINED_FUNCTION_20_0();
      v121(v120);
      v122 = OUTLINED_FUNCTION_11_0();
      v123(v122);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState(&v168);
      break;
    case 6u:
      v124 = OUTLINED_FUNCTION_57();
      memcpy(v124, v125, 0xA8uLL);
      LOBYTE(v164) = 6;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v126 = OUTLINED_FUNCTION_64();
      memcpy(v126, v127, 0xA8uLL);
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState();
      OUTLINED_FUNCTION_42_0();
      v128 = OUTLINED_FUNCTION_20_0();
      v129(v128);
      v130 = OUTLINED_FUNCTION_11_0();
      v131(v130);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState(&v168);
      break;
    case 7u:
      v101 = *(v65 + 1);
      v168 = *v65;
      v169 = v101;
      v102 = *(v65 + 3);
      v170 = *(v65 + 2);
      v171 = v102;
      LOBYTE(v164) = 7;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();
      OUTLINED_FUNCTION_8_1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v164 = v168;
      v165 = v169;
      v166 = v170;
      v167 = v171;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState();
      OUTLINED_FUNCTION_42_0();
      v103 = OUTLINED_FUNCTION_20_0();
      v104(v103);
      v105 = OUTLINED_FUNCTION_11_0();
      v106(v105);
      outlined destroy of AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState(&v168);
      break;
    case 8u:
      v132 = *v65;
      LOBYTE(v168) = 8;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();
      v133 = v157;
      v135 = v162;
      v134 = v163;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOWORD(v168) = v132;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState();
      v136 = v159;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v138 + 8))(v133, v136);
      v115 = *(v160 + 8);
      v113 = v135;
      v114 = v134;
LABEL_11:
      v115(v113, v114);
      break;
    default:
      v73 = *v65;
      v74 = *(v65 + 8);
      LOBYTE(v168) = 0;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();
      v76 = v162;
      v75 = v163;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v168 = v73;
      BYTE8(v168) = v74;
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v139 + 8))(v58, v52);
      (*(v160 + 8))(v76, v75);
      break;
  }

  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.EventType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v212 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO015UafSubscriptionI10CodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v29, &v230);
  v211 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG24AtomicInstanceCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v35, &v229);
  v205 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG16SecureCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v41, &v228);
  v203 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG16UpdateCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v47, &v226);
  v202 = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobilegG13JobCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v53, &v224);
  v201 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG26SetConfigurationCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v59, &v223);
  v200 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO06MobileG19SchedulerCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v65, &v220);
  v199 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO34ModelCatalogSubscriptionCodingKeys027_74E5A5FFCD3AA678926F1A3090Q4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v71, &v221);
  v197 = v72;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO28AvailabilityChangeCodingKeys027_74E5A5FFCD3AA678926F1A3090P4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v77, &a14);
  v196 = v78;
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_29_0(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV0I4TypeO10CodingKeys027_74E5A5FFCD3AA678926F1A3090N4B7D9LLOGMR);
  OUTLINED_FUNCTION_2_3(v83, &a17);
  v213 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_36();
  v214 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  v88 = OUTLINED_FUNCTION_9(v214);
  v90 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v95);
  v97 = v189 - v96;
  MEMORY[0x1EEE9AC00](v98);
  v100 = v189 - v99;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_58();
  MEMORY[0x1EEE9AC00](v103);
  v105 = v27[3];
  v104 = v27[4];
  v219 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v105);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys();
  v217 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    goto LABEL_10;
  }

  v190 = v23;
  v193 = v21;
  v191 = v100;
  v192 = v97;
  v106 = v215;
  v107 = v216;
  v108 = v214;
  v109 = v217;
  v110 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v110, 0);
  if (v113 == v114 >> 1)
  {
    v115 = v109;
    v116 = v108;
LABEL_9:
    v125 = type metadata accessor for DecodingError();
    swift_allocError();
    v127 = v126;
    v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v127 = v116;
    v129 = v218;
    v130 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v130);
    (*(*(v125 - 8) + 104))(v127, *MEMORY[0x1E69E6AF8], v125);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_16();
    v131(v115, v129);
LABEL_10:
    v132 = OUTLINED_FUNCTION_62();
    __swift_destroy_boxed_opaque_existential_1(v132);
LABEL_11:
    OUTLINED_FUNCTION_47();
    return;
  }

  v189[1] = 0;
  if (v113 < (v114 >> 1))
  {
    v189[0] = *(v112 + v113);
    v117 = specialized ArraySlice.subscript.getter(v113 + 1, v114 >> 1, v111, v112, v113, v114);
    v119 = v118;
    v121 = v120;
    swift_unknownObjectRelease();
    v116 = v108;
    if (v119 == v121 >> 1)
    {
      v122 = v211;
      switch(v189[0])
      {
        case 1:
          LOBYTE(v220) = 1;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys();
          v147 = v207;
          OUTLINED_FUNCTION_46();
          v216 = v117;
          type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
          OUTLINED_FUNCTION_30();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v152, v153);
          v154 = v198;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24(&v220 + 8);
          v174(v147, v154);
          OUTLINED_FUNCTION_16();
          v175(v217, v109);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
          goto LABEL_22;
        case 2:
          LOBYTE(v220) = 2;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys();
          v133 = v208;
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState();
          OUTLINED_FUNCTION_23();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          v151 = v213;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24(&v221 + 8);
          v160(v133, v107);
          v161 = *(v151 + 8);
          v162 = OUTLINED_FUNCTION_26();
          v163(v162);
          v164 = v222;
          v165 = v221;
          v166 = v191;
          *v191 = v220;
          v166[1] = v165;
          *(v166 + 4) = v164;
          OUTLINED_FUNCTION_41();
          goto LABEL_20;
        case 3:
          LOBYTE(v220) = 3;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys();
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_6_1(&v222);
          swift_unknownObjectRelease();
          v134 = OUTLINED_FUNCTION_22();
          v135(v134);
          v136 = OUTLINED_FUNCTION_26();
          v137(v136);
          v138 = OUTLINED_FUNCTION_63(&v212);
          memcpy(v138, v139, 0x50uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 4:
          LOBYTE(v220) = 4;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys();
          OUTLINED_FUNCTION_46();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_6_1(&v222 + 8);
          swift_unknownObjectRelease();
          v156 = OUTLINED_FUNCTION_22();
          v157(v156);
          MEMORY[0](v121, v109);
          v158 = OUTLINED_FUNCTION_63(&v214);
          memcpy(v158, v159, 0x68uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 5:
          LOBYTE(v220) = 5;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys();
          v148 = v209;
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState();
          v149 = v204;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_6_1(&v223 + 8);
          swift_unknownObjectRelease();
          (*v148)(v148, v149);
          v176 = OUTLINED_FUNCTION_54();
          v177(v176);
          v178 = OUTLINED_FUNCTION_63(&v215);
          memcpy(v178, v179, 0x48uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 6:
          LOBYTE(v220) = 6;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys();
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_6_1(&v225);
          swift_unknownObjectRelease();
          v180 = OUTLINED_FUNCTION_22();
          v181(v180);
          v182 = OUTLINED_FUNCTION_26();
          v183(v182);
          v184 = OUTLINED_FUNCTION_63(&v216);
          memcpy(v184, v185, 0xA8uLL);
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 7:
          LOBYTE(v220) = 7;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys();
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState();
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_67();
          OUTLINED_FUNCTION_6_1(&v227);
          swift_unknownObjectRelease();
          v140 = OUTLINED_FUNCTION_22();
          v141(v140);
          v142 = OUTLINED_FUNCTION_26();
          v143(v142);
          v144 = v221;
          v145 = v195;
          *v195 = v220;
          v145[1] = v144;
          v146 = v223;
          v145[2] = v222;
          v145[3] = v146;
          OUTLINED_FUNCTION_41();
          goto LABEL_21;
        case 8:
          LOBYTE(v220) = 8;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys();
          v150 = v210;
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState();
          OUTLINED_FUNCTION_23();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          v155 = v213;
          swift_unknownObjectRelease();
          (*(v122 + 8))(v150, v150);
          v186 = *(v155 + 8);
          v187 = OUTLINED_FUNCTION_26();
          v188(v187);
          *v194 = v220;
          OUTLINED_FUNCTION_41();
LABEL_21:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
LABEL_22:
          outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
          v173 = v219;
          break;
        default:
          LOBYTE(v220) = 0;
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys();
          v123 = v206;
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          OUTLINED_FUNCTION_38();
          v124 = v213;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_24(&v219);
          v167(v123, v106);
          v168 = *(v124 + 8);
          v169 = OUTLINED_FUNCTION_26();
          v170(v169);
          v171 = BYTE8(v220);
          v172 = v190;
          *v190 = v220;
          *(v172 + 8) = v171;
          OUTLINED_FUNCTION_41();
LABEL_20:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_2();
          outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
          v173 = v219;
          break;
      }

      OUTLINED_FUNCTION_1_2();
      outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
      __swift_destroy_boxed_opaque_existential_1(v173);
      goto LABEL_11;
    }

    v115 = v109;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.type.getter()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_2();
  return outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.init(subsystem:useCaseIdentifier:resourceSpecifiers:assetSetIdentifiers:errors:type:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2();
  LOBYTE(a1) = *a1;
  OUTLINED_FUNCTION_0_2();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  *a7 = a1;
  v16 = a2[1];
  *(a7 + 8) = *a2;
  *(a7 + 24) = v16;
  v17 = a2[3];
  *(a7 + 40) = a2[2];
  *(a7 + 56) = v17;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4;
  v18 = specialized Array.count.getter(a5);
  if (!v18)
  {

    OUTLINED_FUNCTION_5_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(a6, v27);
    v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *(a7 + 88) = v26;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_1_2();
    result = outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
    *(a7 + 96) = 0u;
    *(a7 + 112) = 0u;
    *(a7 + 128) = 0;
    *(a7 + 132) = 1;
    return result;
  }

  v19 = v18;
  v28 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C68E2790](v21, a5);
      }

      else
      {
        v23 = *(a5 + 8 * v21 + 32);
      }

      ++v21;
      specialized AppleIntelligenceError.toGeneral.getter(v22);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = *(v28 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v19 != v21);
    OUTLINED_FUNCTION_5_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(a6, v25);

    v26 = v28;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.init(subsystem:useCaseIdentifier:resourceSpecifiers:assetSetIdentifiers:errors:subscriptionName:subscriberName:userIdentifier:type:)@<X0>(_BYTE *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int a11, char a12)
{
  v17 = a2[1];
  *(a9 + 8) = *a2;
  *(a9 + 24) = v17;
  v18 = a2[3];
  *(a9 + 40) = a2[2];
  *a9 = *a1;
  *(a9 + 56) = v18;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  v19 = specialized Array.count.getter(a5);
  if (!v19)
  {

    v28 = MEMORY[0x1E69E7CC0];
LABEL_10:
    *(a9 + 88) = v28;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_1_2();
    result = outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
    *(a9 + 112) = a8;
    *(a9 + 120) = a10;
    *(a9 + 96) = a6;
    *(a9 + 104) = a7;
    *(a9 + 128) = a11;
    *(a9 + 132) = a12 & 1;
    return result;
  }

  v20 = v19;
  v30 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v29 = a8;
    v22 = a6;
    v23 = a7;
    v24 = 0;
    do
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1C68E2790](v24, a5);
      }

      else
      {
        v26 = *(a5 + 8 * v24 + 32);
      }

      ++v24;
      specialized AppleIntelligenceError.toGeneral.getter(v25);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = *(v30 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v20 != v24);

    a7 = v23;
    a6 = v22;
    a8 = v29;
    v28 = v30;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.toReportingAssetDeliveryEvent.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v41 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v6 = OUTLINED_FUNCTION_1(v41);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v13 = v12 - v11;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v39 - v16;
  v18 = *(v3 + 16);
  if (v18)
  {
    v43[0] = *(v3 + 8);
    v43[1] = v18;
    v19 = *(v3 + 40);
    v44 = *(v3 + 24);
    v45 = v19;
    v46 = *(v3 + 56);
    v20 = type metadata accessor for AppleIntelligenceReportingUseCase();
    MEMORY[0x1EEE9AC00](v20);
    v39[-2] = v43;
    static Buildable.with(_:)();
    v21 = v17;
    v22 = 0;
    v23 = v20;
  }

  else
  {
    v23 = type metadata accessor for AppleIntelligenceReportingUseCase();
    v21 = v17;
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.setter();
  v24 = MEMORY[0x1E69E7CC0];
  if (*(v3 + 72))
  {
    v25 = *(v3 + 72);
  }

  AppleIntelligenceReportingAssetDeliveryEvent.resourceSpecifiers.setter();
  if (*(v3 + 80))
  {
    v26 = *(v3 + 80);
  }

  AppleIntelligenceReportingAssetDeliveryEvent.assetSetIdentifiers.setter();
  v42 = *(v3 + 88);
  v27 = specialized Array.count.getter(v42);
  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = v27;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v39[2] = v1;
    v40 = v28;
    v39[0] = v3;
    v39[1] = v5;
    v29 = 0;
    v30 = v42 & 0xC000000000000001;
    do
    {
      if (v30)
      {
        MEMORY[0x1C68E2790](v29, v42);
      }

      else
      {
        v31 = *(v42 + 8 * v29 + 32);
      }

      specialized AppleIntelligenceError.toGeneralReportingError.getter(v13);

      v32 = v13;
      v33 = *(v24 + 16);
      if (v33 >= *(v24 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v29;
      *(v24 + 16) = v33 + 1;
      (*(v8 + 32))(v24 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v33, v32, v41);
      v13 = v32;
    }

    while (v40 != v29);
    v3 = v39[0];
LABEL_18:
    AppleIntelligenceReportingAssetDeliveryEvent.errors.setter();
    v35 = *(v3 + 96);
    v34 = *(v3 + 104);

    AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.setter();
    v37 = *(v3 + 112);
    v36 = *(v3 + 120);

    AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.setter();
    v38 = *(v3 + 128);
    v47 = *(v3 + 132);
    AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.setter();
    OUTLINED_FUNCTION_47();
    return;
  }

  __break(1u);
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v66 = v3;
    v67 = v2;
    v68 = v4;
    v69 = v5;
    OUTLINED_FUNCTION_61();
    v7 = *(v6 + 24);
    v58 = *(v6 + 8);
    v59 = v7;
    v8 = *(v6 + 56);
    v60 = *(v6 + 40);
    v61 = v8;
    v10 = *(v9 + 24);
    v62 = *(v9 + 8);
    v63 = v10;
    v11 = *(v9 + 56);
    v64 = *(v9 + 40);
    v65 = v11;
    v12 = v58;
    v13 = *(v6 + 40);
    v55 = *(v6 + 24);
    v56 = v13;
    v57 = *(v6 + 56);
    v14 = v62;
    v15 = *(v9 + 40);
    v52 = *(v9 + 24);
    v53 = v15;
    v54 = *(v9 + 56);
    if (*(&v58 + 1))
    {
      v44 = v58;
      v16 = *(v3 + 40);
      v45 = *(v3 + 24);
      v46 = v16;
      v47 = *(v3 + 56);
      v40 = v58;
      v41 = v45;
      v42 = v16;
      v43 = v47;
      if (*(&v62 + 1))
      {
        v17 = *(v2 + 40);
        v37 = *(v2 + 24);
        v38 = v17;
        v39 = *(v2 + 56);
        v36 = v62;
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_53();
        v18 = static AppleIntelligenceUseCase.== infix(_:_:)(&v40, &v36);
        v34[0] = v36;
        v34[1] = v37;
        v34[2] = v38;
        v34[3] = v39;
        outlined destroy of AppleIntelligenceUseCase(v34);
        v35[0] = v40;
        v35[1] = v41;
        v35[2] = v42;
        v35[3] = v43;
        outlined destroy of AppleIntelligenceUseCase(v35);
        v36 = v12;
        v37 = v55;
        v38 = v56;
        v39 = v57;
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v36, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
        if (!v18)
        {
          goto LABEL_11;
        }

        goto LABEL_14;
      }

      v36 = v44;
      v37 = v45;
      v38 = v46;
      v39 = v47;
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      outlined destroy of AppleIntelligenceUseCase(&v36);
    }

    else
    {
      if (!*(&v62 + 1))
      {
        v44 = v58;
        v21 = *(v3 + 40);
        v45 = *(v3 + 24);
        v46 = v21;
        v47 = *(v3 + 56);
        outlined init with copy of AppleIntelligenceUseCase?();
        outlined init with copy of AppleIntelligenceUseCase?();
        outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v44, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
LABEL_14:
        v22 = *(v3 + 72);
        v23 = *(v2 + 72);
        if (v22)
        {
          if (!v23 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v22, v23) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v23)
        {
          goto LABEL_11;
        }

        v24 = *(v3 + 80);
        v25 = *(v2 + 80);
        if (v24)
        {
          if (!v25 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v24, v25) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        else if (v25)
        {
          goto LABEL_11;
        }

        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ26AppleIntelligenceReporting07GeneralbC5ErrorC_Tt1g5(*(v3 + 88), *(v2 + 88)))
        {
          v26 = *(v3 + 104);
          v27 = *(v2 + 104);
          if (v26)
          {
            if (!v27)
            {
              goto LABEL_11;
            }

            v28 = *(v3 + 96) == *(v2 + 96) && v26 == v27;
            if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          else if (v27)
          {
            goto LABEL_11;
          }

          v29 = *(v3 + 120);
          v30 = *(v2 + 120);
          if (v29)
          {
            if (v30)
            {
              v31 = *(v3 + 112) == *(v2 + 112) && v29 == v30;
              if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
LABEL_43:
                v32 = *(v2 + 132);
                if (*(v3 + 132))
                {
                  if (*(v2 + 132))
                  {
LABEL_49:
                    OUTLINED_FUNCTION_66();
                    v19 = static AppleIntelligenceAssetDeliveryEvent.EventType.== infix(_:_:)(v3 + v33, (v2 + v33));
                    return v19 & 1;
                  }
                }

                else
                {
                  if (*(v3 + 128) != *(v2 + 128))
                  {
                    v32 = 1;
                  }

                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_49;
                  }
                }
              }
            }
          }

          else if (!v30)
          {
            goto LABEL_43;
          }
        }

LABEL_11:
        v19 = 0;
        return v19 & 1;
      }

      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
      OUTLINED_FUNCTION_44();
      outlined init with copy of AppleIntelligenceUseCase?();
    }

    v44 = v12;
    v45 = v55;
    v46 = v56;
    v47 = v57;
    v48 = v14;
    v49 = v52;
    v50 = v53;
    v51 = v54;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v44, &_s26AppleIntelligenceReporting0aB7UseCaseVSg_ADtMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSg_ADtMR);
    goto LABEL_11;
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

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
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ26AppleIntelligenceReporting07GeneralbC5ErrorC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x1C68E2860](v20);
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 != result)
  {
    return 0;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  v4 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v8 = a1;
  }

  if (v5)
  {
    v4 = v8;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v4 == v10)
  {
    return 1;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    for (i = 4; ; ++i)
    {
      v13 = i - 4;
      v14 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        if (a1 < 0)
        {
          v19 = a1;
        }

        else
        {
          v19 = v4;
        }

        v6 = MEMORY[0x1C68E2860](v19);
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68E2790](i - 4, a1);
        if (v11)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= v4)
        {
          goto LABEL_41;
        }

        v5 = *(a1 + 8 * i);

        if (v11)
        {
LABEL_21:
          v15 = MEMORY[0x1C68E2790](i - 4, a2);
          goto LABEL_26;
        }
      }

      v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v4)
      {
        goto LABEL_42;
      }

      v15 = *(a2 + 8 * i);

LABEL_26:
      v16 = v5[2] == v15[2] && v5[3] == v15[3];
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        return 0;
      }

      v17 = v5[4];

      v5 = v15[4];

      result = v17 == v5;
      if (v17 != v5 || v14 == v6)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceAssetDeliveryEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574737973627573 && a2 == 0xE90000000000006DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C0CDF010 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001C0CDF030 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C0CDF050 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73726F727265 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C0CDF070 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6269726373627573 && a2 == 0xEE00656D614E7265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E65644972657375 && a2 == 0xEE00726569666974;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 1701869940 && a2 == 0xE400000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

Swift::Int AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](a1);
  return Hasher._finalize()();
}

unint64_t AppleIntelligenceAssetDeliveryEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6574737973627573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x73726F727265;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6269726373627573;
      break;
    case 7:
      result = 0x6E65644972657375;
      break;
    case 8:
      result = 1701869940;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppleIntelligenceAssetDeliveryEvent.Subsystem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38 = *v2;
  v37 = 0;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v14 = *(v2 + 8);
    v15 = *(v2 + 40);
    v34 = *(v2 + 24);
    v35 = v15;
    v36 = *(v2 + 56);
    v16 = *(v2 + 24);
    v29 = *(v2 + 8);
    v30 = v16;
    v31 = *(v2 + 40);
    v32 = *(v2 + 56);
    v33 = v14;
    v28[79] = 1;
    outlined init with copy of AppleIntelligenceUseCase?();
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_33();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v28, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    v27 = *(v2 + 9);
    BYTE4(v26) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v2 + 10);
    BYTE4(v26) = 3;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v2 + 11);
    BYTE4(v26) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    LOBYTE(v27) = 5;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v2 + 14);
    v20 = *(v2 + 15);
    LOBYTE(v27) = 6;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v2 + 32);
    v22 = v2[132];
    LOBYTE(v27) = 7;
    BYTE4(v26) = v22;
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0) + 48);
    LOBYTE(v27) = 8;
    type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
    OUTLINED_FUNCTION_31();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v24, v25);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v41 = v3;
  v4 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV10CodingKeys027_74E5A5FFCD3AA678926F1A3090M4B7D9LLOGMR);
  OUTLINED_FUNCTION_1(v42);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v44 = (v20 - v19);
  v45 = v2;
  v21 = v2[4];
  v22 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys();
  v43 = v14;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    OUTLINED_FUNCTION_25();
    v23 = v44;
    __swift_destroy_boxed_opaque_existential_1(v45);
    if (v14)
    {
      v25 = v23[10];

      if ((v9 & 1) == 0)
      {
LABEL_10:
        if (v4)
        {
LABEL_11:
          v26 = v23[13];

          if ((v22 & 1) == 0)
          {
            goto LABEL_13;
          }

LABEL_12:
          v27 = v23[15];

          goto LABEL_13;
        }

LABEL_6:
        if (!v22)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else if (!v9)
    {
      goto LABEL_10;
    }

    v24 = v23[11];

    if (v4)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v40 = v15;
  LOBYTE(v46) = 0;
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v44;
  *v44 = v47;
  lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v29 = v48;
  *(v28 + 8) = v47;
  *(v28 + 24) = v29;
  v30 = v50;
  *(v28 + 40) = v49;
  *(v28 + 56) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v28 + 72) = v46;
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v28 + 80) = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
  lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v28 + 88) = v46;
  OUTLINED_FUNCTION_28(5);
  *(v28 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v28 + 104) = v31;
  OUTLINED_FUNCTION_28(6);
  *(v28 + 112) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v28 + 120) = v32;
  OUTLINED_FUNCTION_28(7);
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v28 + 128) = v33;
  *(v28 + 132) = BYTE4(v33) & 1;
  LOBYTE(v46) = 8;
  OUTLINED_FUNCTION_31();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(v34, v35);
  OUTLINED_FUNCTION_43();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = OUTLINED_FUNCTION_12();
  v37(v36);
  v38 = *(v40 + 48);
  OUTLINED_FUNCTION_1_2();
  outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType();
  __swift_destroy_boxed_opaque_existential_1(v45);
  outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(v28, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
LABEL_13:
  OUTLINED_FUNCTION_47();
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = AppleIntelligenceErrorCategory.rawValue.getter();
  v2 = v1;
  if (v0 == AppleIntelligenceErrorCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t outlined destroy of AppleIntelligenceAssetDeliveryEvent.EventType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.UafSubscriptionEventCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.UAFSubscriptionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAtomicInstanceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAtomicInstanceState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSecureCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetSecureState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetUpdateState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetAssetJobCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetAssetJobState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSetConfigurationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSetConfigurationState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.MobileAssetSchedulerCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState and conformance AppleIntelligenceAssetDeliveryEvent.MobileAssetSchedulerState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.ModelCatalogSubscriptionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState);
  }

  return result;
}

uint64_t outlined init with take of AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState()
{
  OUTLINED_FUNCTION_61();
  v2 = v1(0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return v0;
}

uint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.Subsystem and conformance AppleIntelligenceAssetDeliveryEvent.Subsystem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeneralAppleIntelligenceError] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState and conformance AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState(a2, type metadata accessor for GeneralAppleIntelligenceError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceAssetDeliveryEvent.EventType()
{
  OUTLINED_FUNCTION_61();
  v2 = v1(0);
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_50();
  v6(v5);
  return v0;
}

void type metadata completion function for AppleIntelligenceAssetDeliveryEvent()
{
  type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for AppleIntelligenceUseCase?);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [String]?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for [GeneralAppleIntelligenceError]();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for String?);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AppleIntelligenceUseCase?(319, &lazy cache variable for type metadata for UInt32?);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AppleIntelligenceAssetDeliveryEvent.EventType(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [String]?()
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata accessor for [GeneralAppleIntelligenceError]()
{
  if (!lazy cache variable for type metadata for [GeneralAppleIntelligenceError])
  {
    type metadata accessor for GeneralAppleIntelligenceError();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError]);
    }
  }
}

void type metadata accessor for AppleIntelligenceUseCase?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata completion function for AppleIntelligenceAssetDeliveryEvent.EventType()
{
  result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.ModelCatalogSubscriptionState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.EventType.AvailabilityChangeCodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.Subsystem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAssetDeliveryEvent.Subsystem(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of AppleIntelligenceUseCase?()
{
  OUTLINED_FUNCTION_61();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_50();
  v7(v6);
  return v0;
}

void OUTLINED_FUNCTION_6_1(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256) + 8;
  v4 = *(v2 - 312) + 8;
  *(v2 - 600) = v1;
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_28@<X0>(char a1@<W8>)
{
  *(v1 - 152) = a1;
  result = v1 - 152;
  v3 = *(v1 - 176);
  return result;
}

__n128 OUTLINED_FUNCTION_33()
{
  v2 = *(v1 - 208);
  *(v1 - 304) = *(v1 - 224);
  *(v1 - 288) = v2;
  result = *(v1 - 192);
  v4 = *(v0 + 48);
  *(v1 - 272) = result;
  *(v1 - 256) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_0()
{
  v2 = *(v0 - 72);

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return outlined init with copy of AppleIntelligenceUseCase?();
}

uint64_t OUTLINED_FUNCTION_54()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_65(uint64_t a1)
{

  return MEMORY[0x1EEE6A460](a1, 0xD00000000000002BLL, v1 | 0x8000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_66()
{
  result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  v1 = *(result + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_67()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons();
  OUTLINED_FUNCTION_130();
  v10 = OUTLINED_FUNCTION_58_0();
  v11(v10);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO14RestrictedInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys();
  OUTLINED_FUNCTION_31_0();
  if (!v11)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.RestrictedReasons();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = OUTLINED_FUNCTION_19_1();
    v18(v17);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_2();
  v7 = *v0;
  v8 = v2[3];
  v9 = v2[4];
  OUTLINED_FUNCTION_17_0(v2);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();
  OUTLINED_FUNCTION_50_0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons();
  OUTLINED_FUNCTION_130();
  v10 = OUTLINED_FUNCTION_58_0();
  v11(v10);
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_54_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO15UnavailableInfoV10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_4();
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.CodingKeys();
  OUTLINED_FUNCTION_31_0();
  if (!v11)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo.UnavailableReasons();
    OUTLINED_FUNCTION_35_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = OUTLINED_FUNCTION_19_1();
    v18(v17);
    *v12 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v10);
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_47();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463697274736572 && a2 == 0xEA00000000006465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6C62616C69617661;
      break;
    case 2:
      result = 0x7463697274736572;
      break;
    case 3:
      result = 0x616C696176616E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  v48 = OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  v12 = OUTLINED_FUNCTION_1(v11);
  v46 = v13;
  v47 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_36();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_125(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  v23 = OUTLINED_FUNCTION_1(v22);
  v44 = v24;
  v45 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12_0();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v49);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14();
  v33 = *v4;
  v34 = *(v4 + 8);
  v35 = v6[4];
  OUTLINED_FUNCTION_28_0(v6, v6[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v34)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();
    v36 = v49;
    OUTLINED_FUNCTION_30_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo();
    v37 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v39 = *(v46 + 8);
    v38 = v3;
    goto LABEL_5;
  }

  if (v34 == 1)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();
    v36 = v49;
    OUTLINED_FUNCTION_30_0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo();
    v37 = v48;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = OUTLINED_FUNCTION_68();
LABEL_5:
    v39(v38, v37);
    (*(v29 + 8))(v1, v36);
    goto LABEL_10;
  }

  if (v33)
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();
    v40 = v49;
    OUTLINED_FUNCTION_114();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = OUTLINED_FUNCTION_123();
  }

  else
  {
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();
    v40 = v49;
    OUTLINED_FUNCTION_114();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = v45;
    v43 = *(v44 + 8);
    v41 = v2;
  }

  v43(v41, v42);
  (*(v29 + 8))(v1, v40);
LABEL_10:
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys);
  }

  return result;
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_48();
  v114 = v11;
  v13 = v12;
  v110 = v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO21UnavailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v112);
  v108 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_22_0(v19, v98);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO20RestrictedCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v107);
  v109 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_0();
  v111 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO19AvailableCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  v26 = OUTLINED_FUNCTION_1(v25);
  v105 = v27;
  v106 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_20();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO17UnknownCodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v31);
  v104 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v98 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE18AssetDeliveryEventV17AvailabilityStateV6StatusO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLOGMR);
  OUTLINED_FUNCTION_1(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_36();
  v44 = v13[3];
  v45 = v13[4];
  v113 = v13;
  OUTLINED_FUNCTION_28_0(v13, v44);
  lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.CodingKeys();
  v46 = v114;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v46)
  {
    v101 = v31;
    v102 = v37;
    v103 = v10;
    v114 = v40;
    v47 = KeyedDecodingContainer.allKeys.getter();
    _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v47, 0);
    v49 = v38;
    if (v50 != v48 >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      v100 = 0;
      OUTLINED_FUNCTION_116();
      if (v53 == v54)
      {
        __break(1u);
        return;
      }

      v99 = *(v52 + v51);
      specialized ArraySlice.subscript.getter(v51 + 1);
      v56 = v55;
      v58 = v57;
      swift_unknownObjectRelease();
      if (v56 == v58 >> 1)
      {
        v60 = v109;
        v59 = v110;
        switch(v99)
        {
          case 1:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.AvailableCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v82 = v100;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v82)
            {
              goto LABEL_15;
            }

            swift_unknownObjectRelease();
            v83 = OUTLINED_FUNCTION_89();
            v84(v83);
            v85 = OUTLINED_FUNCTION_24_0();
            v86(v85);
            v67 = 2;
            v66 = 1;
            goto LABEL_22;
          case 2:
            LOBYTE(a10) = 2;
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v78 = v100;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v78)
            {
              goto LABEL_15;
            }

            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.RestrictedInfo();
            OUTLINED_FUNCTION_114();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            swift_unknownObjectRelease();
            v87 = *(v60 + 8);
            v88 = OUTLINED_FUNCTION_106();
            v89(v88);
            v90 = OUTLINED_FUNCTION_96();
            v91(v90);
            v67 = 0;
            v66 = a10;
            goto LABEL_22;
          case 3:
            LOBYTE(a10) = 3;
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v81 = v100;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v81)
            {
              goto LABEL_15;
            }

            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnavailableInfo();
            OUTLINED_FUNCTION_114();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            swift_unknownObjectRelease();
            v92 = *(v108 + 8);
            v93 = OUTLINED_FUNCTION_106();
            v94(v93);
            v95 = OUTLINED_FUNCTION_96();
            v96(v95);
            v66 = a10;
            v67 = 1;
            goto LABEL_22;
          default:
            lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys and conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status.UnknownCodingKeys();
            OUTLINED_FUNCTION_10_1();
            v61 = v100;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (v61)
            {
LABEL_15:
              v79 = OUTLINED_FUNCTION_24_0();
              v80(v79);
              swift_unknownObjectRelease();
              v77 = v113;
              goto LABEL_12;
            }

            swift_unknownObjectRelease();
            v62 = OUTLINED_FUNCTION_89();
            v63(v62, v101);
            v64 = OUTLINED_FUNCTION_24_0();
            v65(v64);
            v66 = 0;
            v67 = 2;
LABEL_22:
            v97 = v113;
            *v59 = v66;
            *(v59 + 8) = v67;
            __swift_destroy_boxed_opaque_existential_1(v97);
            break;
        }

        goto LABEL_13;
      }

      v49 = v38;
    }

    v68 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_134();
    v70 = v69;
    v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v70 = &type metadata for AppleIntelligenceAssetDeliveryEvent.AvailabilityState.Status;
    v72 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v72);
    v73 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_42(v68);
    (*(v74 + 104))(v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    v75 = OUTLINED_FUNCTION_68();
    v76(v75, v49);
  }

  v77 = v113;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v77);
LABEL_13:
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.status.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_32_0(a1);
}

void AppleIntelligenceAssetDeliveryEvent.AvailabilityState.init(status:)(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_32_0(a1);
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState();
  return OUTLINED_FUNCTION_4_1();
}

void closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR);
  OUTLINED_FUNCTION_29(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (a3 > 1u)
  {
    if (!a2)
    {
      return;
    }

    type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
    static Buildable.with(_:)();
  }

  else
  {
    v9 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_92();
    *(v10 - 16) = a2;
    static Buildable.with(_:)();
  }

  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.setter();
}

uint64_t closure #1 in closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  v4 = *MEMORY[0x1E69AA180];
  v5 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.setter();
}

uint64_t closure #2 in closure #1 in AppleIntelligenceAssetDeliveryEvent.AvailabilityState.toReportingAvailabilityState.getter(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  OUTLINED_FUNCTION_29(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_2();
  v9 = *a3;
  v10 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  OUTLINED_FUNCTION_9(v10);
  (*(v11 + 104))(v3, v9, v10);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.setter();
  return AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.reasons.setter();
}

uint64_t static AppleIntelligenceAssetDeliveryEvent.AvailabilityState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v2)
      {
        if (v4 != 2 || v3 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2 || v3 != 0)
      {
        return 0;
      }

      return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
    }

    v5 = v4 == 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5 || v2 != v3)
  {
    return 0;
  }

  return AppleIntelligenceAssetDeliveryEvent.Subsystem.BuddyCodingKeys.init(intValue:)();
}

uint64_t AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAssetDeliveryEvent.AvailabilityState.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}