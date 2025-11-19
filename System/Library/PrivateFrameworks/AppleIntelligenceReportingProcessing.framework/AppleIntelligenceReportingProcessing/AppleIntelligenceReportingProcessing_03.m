void AssetDeliveryStateReader.subscriptionHash.getter()
{
  v1 = v0 + *(type metadata accessor for AssetDeliveryStateReader() + 32);

  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
}

AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional __swiftcall AssetDeliveryStateReader.AssetDownloadStatePerUseCase.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue >= 5)
  {
    LOBYTE(rawValue) = 5;
  }

  return rawValue;
}

AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase@<W0>(Swift::UInt32 *a1@<X0>, AppleIntelligenceReportingProcessing::AssetDeliveryStateReader::AssetDownloadStatePerUseCase_optional *a2@<X8>)
{
  result.value = AssetDeliveryStateReader.AssetDownloadStatePerUseCase.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase@<X0>(_DWORD *a1@<X8>)
{
  result = AssetDeliveryStateReader.AssetDownloadStatePerUseCase.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t static AssetDeliveryStateReader.AssetDownloadState.getDownloadState(metadata:)()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_122_1();
  if ((AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.getter() & 0x1FFFFFFFFLL) == 0x6A4)
  {
    AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.getter();
    if (v6)
    {
      v7 = v6;
      static CharacterSet.whitespaces.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v8 = StringProtocol.trimmingCharacters(in:)();
      v10 = v9;
      v11 = *(v3 + 8);
      v12 = OUTLINED_FUNCTION_51_0();
      v13(v12);

      if (v8 == 0xD00000000000001CLL && 0x8000000227FB5BC0 == v10)
      {

        return 0;
      }

      OUTLINED_FUNCTION_157();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_163();
      result = 0;
      if (v7)
      {
        return result;
      }
    }
  }

  if ((AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.code.getter() & 0x1FFFFFFFFLL) != 0x6A5)
  {
    return 2;
  }

  AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata.name.getter();
  if (!v16)
  {
    return 2;
  }

  static CharacterSet.whitespaces.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v17 = StringProtocol.trimmingCharacters(in:)();
  v19 = v18;
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_51_0();
  v22(v21);

  if (v17 == 0xD00000000000001ALL && 0x8000000227FB5BA0 == v19)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      return 2;
    }
  }

  return 1;
}

Swift::Int AssetDeliveryStateReader.AssetDownloadState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AssetDeliveryStateReader.AssetDownloadState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AssetDeliveryStateReader.AssetDownloadState.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void AssetDeliveryStateReader.downloadState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v26;
  a20 = v27;
  v28 = v21;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  OUTLINED_FUNCTION_13(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_55_0();
  v377 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v35 = OUTLINED_FUNCTION_13(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v364 = v38;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38_0();
  v368 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
  OUTLINED_FUNCTION_13(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_55_0();
  v374 = v45;
  OUTLINED_FUNCTION_12();
  v378 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetOperationMetadata();
  v46 = OUTLINED_FUNCTION_0(v378);
  v357 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2();
  v372 = v50;
  OUTLINED_FUNCTION_12();
  v379 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v51 = OUTLINED_FUNCTION_0(v379);
  v369 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_96();
  v361 = v56;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_96();
  v366 = v58;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_96();
  v371 = v60;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_38_0();
  v365 = v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v64 = OUTLINED_FUNCTION_13(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7();
  v373 = v67;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_38_0();
  v370 = v69;
  OUTLINED_FUNCTION_12();
  v70 = type metadata accessor for AssetDeliveryStateReader();
  v71 = OUTLINED_FUNCTION_4(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_95_1();
  v375 = type metadata accessor for Date();
  v80 = OUTLINED_FUNCTION_0(v375);
  v367 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_38_0();
  v362 = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v87 = OUTLINED_FUNCTION_13(v86);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v92);
  v94 = &v340 - v93;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v96 = OUTLINED_FUNCTION_13(v95);
  v98 = *(v97 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_7();
  v363 = v99;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_188();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_63_1();
  v355 = v70;
  v104 = *(v70 + 32);
  v376 = v28;
  OUTLINED_FUNCTION_159();
  outlined init with copy of AppleIntelligenceError?();
  v105 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v106 = OUTLINED_FUNCTION_67_1();
  if (__swift_getEnumTagSinglePayload(v106, v107, v105) == 1)
  {
    v108 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v109 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v110 = v94;
LABEL_14:
    outlined destroy of NSObject?(v110, v108, v109);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v130, static Logging.general);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_78_0(v132))
    {
      OUTLINED_FUNCTION_99_1();
      v133 = swift_slowAlloc();
      OUTLINED_FUNCTION_116_1(v133);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v134, v135, v136, v137, v138, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    goto LABEL_19;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1(v105);
  v112 = *(v111 + 8);
  v350 = (v111 + 8);
  v112(v94, v105);
  v113 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_25(v24);
  if (v119)
  {
    v108 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v109 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v110 = v24;
    goto LABEL_14;
  }

  *&v349 = v112;
  v351 = v113;
  v114 = AppleIntelligenceReportingAssetDeliveryEvent.resourceSpecifiers.getter();
  OUTLINED_FUNCTION_31_1(v351);
  v116 = *(v115 + 8);
  v117 = v24;
  v118 = (v115 + 8);
  v116(v117);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_28_3(v23);
  if (v119)
  {

    v120 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v121 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v122 = v23;
LABEL_12:
    outlined destroy of NSObject?(v122, v120, v121);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v375);
LABEL_13:
    v108 = &_s10Foundation4DateVSgMd;
    v109 = &_s10Foundation4DateVSgMR;
    v110 = v20;
    goto LABEL_14;
  }

  v348 = v116;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_66_0();
  v123();
  v124 = OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_34_0(v124, v125, v351);
  if (v126)
  {

    v120 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v121 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v122 = v25;
    goto LABEL_12;
  }

  v139 = v25;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_102_1();
  v140();
  v141 = OUTLINED_FUNCTION_70_0();
  v142 = v375;
  OUTLINED_FUNCTION_34_0(v141, v143, v375);
  if (v144)
  {

    goto LABEL_13;
  }

  (*(v367 + 32))(v362, v20, v142);
  v145 = *(v114 + 16);
  if (!v145)
  {

    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v164, static Logging.general);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_78_0(v166))
    {
      OUTLINED_FUNCTION_99_1();
      v167 = swift_slowAlloc();
      OUTLINED_FUNCTION_116_1(v167);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v168, v169, v170, v171, v172, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    (*(v367 + 8))(v362, v142);
    goto LABEL_19;
  }

  v345 = v118;
  *&v346 = v114;
  v342 = v145;
  if (one-time initialization token for general != -1)
  {
LABEL_108:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v146 = type metadata accessor for Logger();
  __swift_project_value_buffer(v146, static Logging.general);
  OUTLINED_FUNCTION_8_8();
  outlined init with copy of AssetDeliveryStateReader();
  outlined init with copy of AssetDeliveryStateReader();
  v147 = v367;
  v148 = v358;
  (*(v367 + 16))(v358, v362, v142);
  v149 = v346;

  v347 = v139;
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();

  LODWORD(v344) = v151;
  v152 = os_log_type_enabled(v150, v151);
  v153 = v371;
  v154 = v374;
  v155 = v378;
  if (v152)
  {
    v341 = v150;
    v156 = swift_slowAlloc();
    v340 = swift_slowAlloc();
    v380[0] = v340;
    *v156 = 136315906;
    v157 = MEMORY[0x22AAAE0F0](v149, MEMORY[0x277D837D0]);
    v159 = v158;
    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, v380);

    *(v156 + 4) = v160;
    v343 = v156;
    *(v156 + 12) = 2080;
    v161 = v355;
    v162 = &v359[*(v355 + 32)];
    OUTLINED_FUNCTION_82_1(&a11);
    outlined init with copy of AppleIntelligenceError?();
    OUTLINED_FUNCTION_28_3(v159);
    if (v119)
    {
      outlined destroy of NSObject?(v159, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v163 = v360;
    }

    else
    {
      AppleIntelligenceReportingModelCatalogLog.event.getter();
      OUTLINED_FUNCTION_66_0();
      v175();
      v176 = OUTLINED_FUNCTION_102_0();
      v148 = v351;
      OUTLINED_FUNCTION_34_0(v176, v177, v351);
      v163 = v360;
      if (v178)
      {
        outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        OUTLINED_FUNCTION_173();
      }

      else
      {
        v179 = v22;
        v180 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
        OUTLINED_FUNCTION_115_1();
        OUTLINED_FUNCTION_102_1();
        v181();
        OUTLINED_FUNCTION_173();
        if (v22)
        {
          OUTLINED_FUNCTION_2_8();
          v182 = OUTLINED_FUNCTION_84_1();
          outlined destroy of AssetDeliveryStateReader(v182, v183);
          goto LABEL_41;
        }
      }
    }

    OUTLINED_FUNCTION_2_8();
    v184 = OUTLINED_FUNCTION_84_1();
    outlined destroy of AssetDeliveryStateReader(v184, v185);

    v179 = 0xE400000000000000;
    v180 = 1701736302;
LABEL_41:
    v186 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v179, v380);

    v187 = v343;
    *(v343 + 14) = v186;
    *(v187 + 22) = 2080;
    v188 = v163 + *(v161 + 32);
    OUTLINED_FUNCTION_82_1(&a12);
    outlined init with copy of AppleIntelligenceError?();
    OUTLINED_FUNCTION_28_3(v179);
    if (v119)
    {
      outlined destroy of NSObject?(v179, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
      v174 = v379;
      v142 = v373;
    }

    else
    {
      OUTLINED_FUNCTION_71_0(&a10);
      AppleIntelligenceReportingModelCatalogLog.event.getter();
      OUTLINED_FUNCTION_66_0();
      v189();
      v190 = OUTLINED_FUNCTION_102_0();
      v148 = v351;
      OUTLINED_FUNCTION_34_0(v190, v191, v351);
      v174 = v379;
      v142 = v373;
      if (v192)
      {
        outlined destroy of NSObject?(v186, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        OUTLINED_FUNCTION_173();
      }

      else
      {
        v193 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
        v195 = v194;
        OUTLINED_FUNCTION_102_1();
        v196();
        OUTLINED_FUNCTION_173();
        if (v195)
        {
          OUTLINED_FUNCTION_2_8();
          outlined destroy of AssetDeliveryStateReader(v360, v197);
          v198 = v193;
LABEL_50:
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v198, v195, v380);
          OUTLINED_FUNCTION_127();

          v200 = v343;
          *(v343 + 24) = v163;
          *(v200 + 32) = 2080;
          lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
          v201 = v375;
          v202 = dispatch thunk of CustomStringConvertible.description.getter();
          v345 = *(v367 + 8);
          v345(v148, v201);
          v203 = OUTLINED_FUNCTION_62();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v204, v205);
          OUTLINED_FUNCTION_127();

          *(v200 + 34) = v202;
          v206 = v341;
          _os_log_impl(&dword_227F43000, v341, v344, "Found required assets: %s for subscription %s and subscriber %s. Current subscription time is %s", v200, 0x2Au);
          OUTLINED_FUNCTION_108_1(&v369);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();

          goto LABEL_51;
        }
      }
    }

    OUTLINED_FUNCTION_2_8();
    outlined destroy of AssetDeliveryStateReader(v360, v199);

    v195 = 0xE400000000000000;
    v198 = 1701736302;
    goto LABEL_50;
  }

  v345 = *(v147 + 8);
  v345(v148, v142);
  outlined destroy of AssetDeliveryStateReader(v360, type metadata accessor for AssetDeliveryStateReader);
  v173 = OUTLINED_FUNCTION_84_1();
  outlined destroy of AssetDeliveryStateReader(v173, type metadata accessor for AssetDeliveryStateReader);
  v174 = v379;
  v142 = v373;
LABEL_51:
  v207 = *(v376 + 16);
  OUTLINED_FUNCTION_1_2();
  v209 = (*(v208 + 248))();
  v139 = &v340;
  v210 = MEMORY[0x28223BE20](v209);
  *(&v340 - 2) = v346;
  v211 = specialized _NativeDictionary.filter(_:)(v210, partial apply for closure #1 in AssetDeliveryStateReader.downloadState.getter, &v340 - 4);

  v348 = 0;
  LODWORD(v350) = 0;
  v22 = 0;
  v214 = v211 + 8;
  v213 = v211[8];
  v355 = v211;
  v215 = 1 << *(v211 + 32);
  v216 = -1;
  if (v215 < 64)
  {
    v216 = ~(-1 << v215);
  }

  v217 = v216 & v213;
  v218 = (v215 + 63) >> 6;
  v360 = v369 + 16;
  v376 = v369 + 32;
  v354 = v357 + 32;
  v358 = (v369 + 8);
  v357 += 8;
  *&v212 = 136315138;
  v346 = v212;
  *&v212 = 136315394;
  v349 = v212;
  v353 = v211 + 8;
  v352 = v218;
  while (1)
  {
    if (!v217)
    {
      while (1)
      {
        v221 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v221 >= v218)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v294, v295, v296, v297);
          v217 = 0;
          goto LABEL_61;
        }

        v217 = v214[v221];
        ++v22;
        if (v217)
        {
          v219 = v174;
          v220 = v153;
          v22 = v221;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_108;
    }

    v219 = v174;
    v220 = v153;
    v221 = v22;
LABEL_60:
    v222 = __clz(__rbit64(v217));
    v217 &= v217 - 1;
    v223 = v222 | (v221 << 6);
    v224 = v355;
    v225 = v369;
    (*(v369 + 16))(v365, *(v355 + 48) + *(v369 + 72) * v223, v219);
    v226 = *(*(v224 + 56) + 8 * v223);
    v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v228 = *(v227 + 48);
    v229 = *(v225 + 32);
    v230 = v373;
    v231 = OUTLINED_FUNCTION_48();
    v232(v231);
    *(v230 + v228) = v226;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v233, v234, v235, v227);

    v153 = v220;
    v154 = v374;
    v155 = v378;
LABEL_61:
    v236 = v370;
    _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
    v237 = OUTLINED_FUNCTION_120_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v237, v238);
    v239 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_19_2(v239);
    if (v119)
    {
      goto LABEL_94;
    }

    v240 = *(v236 + 19714);
    OUTLINED_FUNCTION_57_0();
    v241 = v153;
    v242 = OUTLINED_FUNCTION_157();
    v244 = v243(v242);
    v245 = *(*v240 + 104);
    v246 = (v245)(v244);
    if (!v246)
    {
      goto LABEL_97;
    }

    v247 = OUTLINED_FUNCTION_135(v246);
    v249 = v368;
    (*(v248 + 136))(v247);

    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v250 = OUTLINED_FUNCTION_48_0();
    if (__swift_getEnumTagSinglePayload(v250, v251, v252))
    {
      goto LABEL_96;
    }

    v253 = v377;
    AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter();
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
    v254 = OUTLINED_FUNCTION_73_0();
    if (__swift_getEnumTagSinglePayload(v254, v255, v256))
    {
      break;
    }

    v154 = v374;
    MEMORY[0x22AAADA80]();
    outlined destroy of NSObject?(v377, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
    outlined destroy of NSObject?(v249, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    v257 = OUTLINED_FUNCTION_73_0();
    v155 = v378;
    OUTLINED_FUNCTION_34_0(v257, v258, v378);
    if (v119)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_54_1(&a12);
    v259 = OUTLINED_FUNCTION_129_0();
    v260(v259);
    if (static AssetDeliveryStateReader.AssetDownloadState.getDownloadState(metadata:)() != 1)
    {
      v338 = OUTLINED_FUNCTION_32_1();
      v339(v338, v155);
      goto LABEL_99;
    }

    v359 = v240;
    v139 = v240;
    v261 = v245();
    v262 = v366;
    if (v261)
    {
      v263 = OUTLINED_FUNCTION_135(v261);
      v265 = v364;
      (*(v264 + 136))(v263);

      v266 = OUTLINED_FUNCTION_53_1();
      if (__swift_getEnumTagSinglePayload(v266, v267, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd))
      {
        goto LABEL_83;
      }

      v268 = v363;
      v139 = v265;
      AppleIntelligenceReportingMobileAssetLog.event.getter();
      v269 = OUTLINED_FUNCTION_79_0();
      if (__swift_getEnumTagSinglePayload(v269, v270, v351))
      {
        outlined destroy of NSObject?(v268, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
LABEL_83:
        outlined destroy of NSObject?(v265, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
        goto LABEL_85;
      }

      v139 = v268;
      v271 = AppleIntelligenceReportingAssetDeliveryEvent.errors.getter();
      outlined destroy of NSObject?(v268, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      outlined destroy of NSObject?(v265, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
      if (!*(v271 + 16))
      {

        goto LABEL_85;
      }

      OUTLINED_FUNCTION_54_1(&a18);
      v272 = v361;
      v273 = OUTLINED_FUNCTION_131_0();
      v174 = v379;
      v274(v273);

      OUTLINED_FUNCTION_128_0();
      v275 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      OUTLINED_FUNCTION_201();
      if (os_log_type_enabled(v275, v155))
      {
        v276 = v272;
        v277 = swift_slowAlloc();
        v380[0] = swift_slowAlloc();
        *v277 = v349;
        v278 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
        if (v279)
        {
          v280 = v278;
        }

        else
        {
          v280 = 0x6E776F6E6B6E75;
        }

        if (v279)
        {
          v281 = v279;
        }

        else
        {
          v281 = 0xE700000000000000;
        }

        OUTLINED_FUNCTION_14_0();
        v350 = *v282;
        (v350)(v276, v379);
        v283 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v280, v281, v380);

        *(v277 + 4) = v283;
        *(v277 + 12) = 2080;
        v284 = type metadata accessor for AppleIntelligenceReportingGeneralError();
        MEMORY[0x22AAAE0F0](v271, v284);

        v285 = OUTLINED_FUNCTION_129_0();
        v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v285, v286, v287);
        v154 = v374;

        *(v277 + 14) = v139;
        _os_log_impl(&dword_227F43000, v275, v155, "Asset download for %s failed with: %s", v277, 0x16u);
        swift_arrayDestroy();
        v174 = v379;
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();

        OUTLINED_FUNCTION_84_1();

        v288 = OUTLINED_FUNCTION_32_1();
        v155 = v378;
        v289(v288, v378);
        v153 = v371;
        OUTLINED_FUNCTION_131_0();
        OUTLINED_FUNCTION_14_0();
        v350();
      }

      else
      {

        OUTLINED_FUNCTION_84_1();

        OUTLINED_FUNCTION_133_0();
        v290 = OUTLINED_FUNCTION_131_0();
        (v262)(v290);
        v291 = OUTLINED_FUNCTION_32_1();
        v155 = v378;
        v292(v291, v378);
        v153 = v371;
        v293 = OUTLINED_FUNCTION_131_0();
        (v262)(v293);
      }

      LODWORD(v350) = 1;
      v142 = v373;
      v214 = v353;
      v218 = v352;
    }

    else
    {
LABEL_85:
      OUTLINED_FUNCTION_54_1(&a18);
      v153 = v241;
      v298 = v241;
      v174 = v379;
      v299(v262, v298, v379);
      OUTLINED_FUNCTION_128_0();
      v300 = Logger.logObject.getter();
      v301 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v300, v301))
      {
        OUTLINED_FUNCTION_59_1();
        v302 = swift_slowAlloc();
        OUTLINED_FUNCTION_60_0();
        v303 = swift_slowAlloc();
        *v302 = OUTLINED_FUNCTION_189(v303).n128_u32[0];
        v304 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
        if (v305)
        {
          v139 = v304;
        }

        else
        {
          v139 = 0x6E776F6E6B6E75;
        }

        OUTLINED_FUNCTION_172();
        v344 = *v153;
        v344(v262, v379);
        v306 = OUTLINED_FUNCTION_114_1();
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v306, v307, v308);
        OUTLINED_FUNCTION_89_1();
        v174 = v379;

        *(v302 + 4) = v139;
        _os_log_impl(&dword_227F43000, v300, v301, "Download job completed successfully for %s", v302, 0xCu);
        OUTLINED_FUNCTION_203();
        v155 = v378;
        v153 = v371;
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();

        OUTLINED_FUNCTION_84_1();

        v309 = OUTLINED_FUNCTION_32_1();
        v310(v309, v155);
        v311 = OUTLINED_FUNCTION_131_0();
        (v344)(v311);
        v154 = v374;
      }

      else
      {

        OUTLINED_FUNCTION_84_1();

        OUTLINED_FUNCTION_133_0();
        v262();
        v312 = OUTLINED_FUNCTION_32_1();
        v313(v312, v155);
        v314 = OUTLINED_FUNCTION_131_0();
        (v262)(v314);
      }

      v142 = v373;
      OUTLINED_FUNCTION_102_1();
      v348 = (v315 + 1);
      v214 = v353;
      v218 = v352;
      if (__OFADD__(v315, 1))
      {
        __break(1u);
LABEL_94:
        v316 = OUTLINED_FUNCTION_119_1();
        v317(v316);
        OUTLINED_FUNCTION_170();

        goto LABEL_19;
      }
    }
  }

  outlined destroy of NSObject?(v253, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  v154 = v374;
LABEL_96:
  outlined destroy of NSObject?(v249, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v155 = v378;
LABEL_97:
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v318, v319, v320, v155);
LABEL_98:
  outlined destroy of NSObject?(v154, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG17OperationMetadataVSgMR);
LABEL_99:
  OUTLINED_FUNCTION_54_1(&a18);
  v321 = v356;
  v322 = v379;
  v323(v356, v153, v379);
  OUTLINED_FUNCTION_128_0();
  v324 = Logger.logObject.getter();
  v325 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v324, v325))
  {
    OUTLINED_FUNCTION_59_1();
    v326 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v327 = swift_slowAlloc();
    *v326 = OUTLINED_FUNCTION_189(v327).n128_u32[0];
    v328 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v329)
    {
      v330 = v328;
    }

    else
    {
      v330 = 0x6E776F6E6B6E75;
    }

    v331 = v321;
    v332 = *v358;
    (*v358)(v331, v322);
    v333 = OUTLINED_FUNCTION_114_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v333, v334, v335);
    OUTLINED_FUNCTION_89_1();

    *(v326 + 4) = v330;
    _os_log_impl(&dword_227F43000, v324, v325, "Download job not completed for %s", v326, 0xCu);
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();

    OUTLINED_FUNCTION_170();

    v332(v371, v322);
  }

  else
  {

    OUTLINED_FUNCTION_170();

    OUTLINED_FUNCTION_133_0();
    (v240)(v321, v322);
    (v240)(v241, v322);
  }

  v336 = OUTLINED_FUNCTION_119_1();
  v337(v336);
LABEL_19:
  OUTLINED_FUNCTION_19();
}

BOOL closure #1 in AssetDeliveryStateReader.downloadState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
  if (v5)
  {
    v9[0] = v4;
    v9[1] = v5;
    MEMORY[0x28223BE20](v4);
    v8[2] = v9;
    v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v8, a3);
  }

  else
  {
    return 0;
  }

  return v6;
}

void AssetDeliveryStateReader.uafDownloadStatus(now:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v371 = v20;
  v336 = v25;
  v26 = type metadata accessor for AssetDeliveryStateReader();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v32 = (v31 - v30);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v34 = OUTLINED_FUNCTION_13(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v40);
  v351 = type metadata accessor for Date();
  v41 = OUTLINED_FUNCTION_0(v351);
  v347 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v46);
  v353 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus();
  v47 = OUTLINED_FUNCTION_0(v353);
  v356 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v51);
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMR);
  OUTLINED_FUNCTION_4(v352);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_55_0();
  v357 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  v57 = OUTLINED_FUNCTION_13(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v62);
  v63 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
  v360 = OUTLINED_FUNCTION_0(v63);
  v361 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v67);
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMR);
  OUTLINED_FUNCTION_4(v359);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_55_0();
  v362 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v73 = OUTLINED_FUNCTION_13(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7();
  v358 = v76;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_96();
  v369 = v78;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_38_0();
  v370 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v82 = OUTLINED_FUNCTION_13(v81);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_38_0();
  v365 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  OUTLINED_FUNCTION_13(v88);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_55_0();
  v366 = v92;
  OUTLINED_FUNCTION_12();
  v367 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  v93 = OUTLINED_FUNCTION_0(v367);
  v363 = v94;
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_2();
  v364 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v99 = OUTLINED_FUNCTION_13(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_85_1();
  v105 = MEMORY[0x28223BE20](v104);
  v107 = &v323 - v106;
  MEMORY[0x28223BE20](v105);
  v109 = &v323 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v111 = OUTLINED_FUNCTION_13(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_96_0();
  v117 = MEMORY[0x28223BE20](v116);
  v119 = &v323 - v118;
  MEMORY[0x28223BE20](v117);
  v121 = &v323 - v120;
  v368 = v26;
  v122 = *(v26 + 32);
  outlined init with copy of AppleIntelligenceError?();
  type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_13_4(v109);
  if (v132)
  {
    v123 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v124 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v125 = v109;
LABEL_7:
    outlined destroy of NSObject?(v125, v123, v124);
LABEL_8:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    __swift_project_value_buffer(v133, static Logging.general);
    OUTLINED_FUNCTION_8_8();
    outlined init with copy of AssetDeliveryStateReader();
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v134, v135))
    {
      OUTLINED_FUNCTION_59_1();
      v136 = swift_slowAlloc();
      OUTLINED_FUNCTION_60_0();
      v137 = swift_slowAlloc();
      v373[0] = v137;
      *v136 = 136315138;
      v138 = *v32;
      v139 = v32[1];

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v32, v140);
      v141 = OUTLINED_FUNCTION_48();
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v142, v143);

      *(v136 + 4) = v144;
      _os_log_impl(&dword_227F43000, v134, v135, "Missing subscriberName or subscriptionName from current subscription event for use case :%s", v136, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v137);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v32, v145);
    }

    LOBYTE(v146) = 1;
    goto LABEL_14;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_30_0();
  v127 = *(v126 + 8);
  v128 = v126 + 8;
  v129 = OUTLINED_FUNCTION_129_0();
  v335 = v130;
  v130(v129);
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v131 = OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_25(v131);
  if (v132)
  {
    v123 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v124 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v125 = v121;
    goto LABEL_7;
  }

  v332 = v128;
  v334 = v122;
  v148 = v109;
  v149 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
  v151 = v150;
  OUTLINED_FUNCTION_31_1(v148);
  v153 = *(v152 + 8);
  v333 = v148;
  v331 = v153;
  v153(v121, v148);
  if (!v151)
  {
    goto LABEL_8;
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v107);
  if (v132)
  {

    v123 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v124 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v125 = v107;
    goto LABEL_7;
  }

  v330 = v149;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_92_1();
  v154();
  v155 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v155, v156, v333);
  if (v157)
  {

    v123 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v124 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v125 = v119;
    goto LABEL_7;
  }

  v329 = v151;
  v158 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
  v160 = v159;
  OUTLINED_FUNCTION_181();
  v161();
  v328 = v160;
  if (!v160)
  {

    goto LABEL_8;
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v21);
  if (v132)
  {
    outlined destroy of NSObject?(v21, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    v162 = 0;
    LOBYTE(v163) = 1;
    OUTLINED_FUNCTION_166();
  }

  else
  {
    OUTLINED_FUNCTION_185();
    AppleIntelligenceReportingModelCatalogLog.event.getter();
    OUTLINED_FUNCTION_92_1();
    v164();
    v165 = OUTLINED_FUNCTION_50_1();
    OUTLINED_FUNCTION_34_0(v165, v166, v333);
    v32 = v328;
    if (v167)
    {
      outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v162 = 0;
      LOBYTE(v163) = 1;
    }

    else
    {
      v168 = AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.getter();
      v162 = v168;
      v163 = HIDWORD(v168) & 1;
      OUTLINED_FUNCTION_124_1();
      OUTLINED_FUNCTION_181();
      v169();
    }
  }

  LOBYTE(v372) = v163;
  v373[0] = v330;
  v373[1] = v329;
  v374[0] = v158;
  v374[1] = v32;
  v375 = v162;
  v376 = v163;
  v170 = *(v371 + 16);
  OUTLINED_FUNCTION_1_2();
  v172 = *(v171 + 344);

  v174 = v172(v173);
  specialized Dictionary.subscript.getter(v373, v174);
  OUTLINED_FUNCTION_179();

  outlined destroy of SubscriptionKey(v373);
  v176 = v369;
  v175 = v370;
  if (!v170)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_1_2();
  v178 = (*(v177 + 104))();

  if (!v178)
  {
    goto LABEL_40;
  }

  v327 = v158;
  v180 = *(*v178 + 112);
  v181 = *v178 + 112;
  v158 = v365;
  v180(v179);
  v182 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v183 = OUTLINED_FUNCTION_66();
  if (__swift_getEnumTagSinglePayload(v183, v184, v182))
  {

    outlined destroy of NSObject?(v158, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    v32 = v366;
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v185, v186, v187, v188);
LABEL_38:
    OUTLINED_FUNCTION_144();
    outlined destroy of NSObject?(v32, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
LABEL_39:
    OUTLINED_FUNCTION_166();
LABEL_40:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v191 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v191, static Logging.general);

    OUTLINED_FUNCTION_141_0(&v359);

    v192 = Logger.logObject.getter();
    v193 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v372 = swift_slowAlloc();
      *v194 = 136315394;
      v195 = v330;
      v196 = OUTLINED_FUNCTION_154();
      *(v194 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v197, v198);
      *(v194 + 12) = 2080;
      *(v194 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v32, &v372);
      OUTLINED_FUNCTION_47_1();
      _os_log_impl(v199, v200, v201, v202, v203, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      v195 = v330;
    }

    v204 = OUTLINED_FUNCTION_197();
    v205 = v204[3];
    v206 = v204[4];
    __swift_project_boxed_opaque_existential_1(v204, v205);
    v207 = (*(v206 + 16))(v158, v32, v195, v175, v205, v206);

    v146 = HIDWORD(v207) & 1;
LABEL_14:
    v147 = 1;
    goto LABEL_15;
  }

  v324 = v182;
  v325 = v181;
  v326 = v180;
  v32 = v366;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter();
  outlined destroy of NSObject?(v158, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v189 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_26_1(v189, v190);
  if (v132)
  {

    goto LABEL_38;
  }

  v365 = v178;
  v208 = *(v363 + 32);
  v209 = OUTLINED_FUNCTION_114_1();
  v210(v209);
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.getter();
  v211 = v360;
  (*(v361 + 104))(v176, *MEMORY[0x277D1F608], v360);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v211);
  v215 = *(v359 + 48);
  v32 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR;
  v216 = v362;
  outlined init with copy of AppleIntelligenceError?();
  v366 = v215;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v216);
  v158 = v327;
  if (v217)
  {
    outlined destroy of NSObject?(v176, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    v218 = v362;
    outlined destroy of NSObject?(v175, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    OUTLINED_FUNCTION_34_0(v366 + v218, 1, v211);
    if (v132)
    {
      outlined destroy of NSObject?(v218, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
      goto LABEL_57;
    }

LABEL_54:
    outlined destroy of NSObject?(v218, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSg_AHtMR);
    goto LABEL_66;
  }

  v175 = v358;
  outlined init with copy of AppleIntelligenceError?();
  v219 = v366;
  OUTLINED_FUNCTION_25(v366 + v216);
  if (v220)
  {
    outlined destroy of NSObject?(v369, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    v218 = v362;
    outlined destroy of NSObject?(v370, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
    (*(v361 + 8))(v175, v211);
    goto LABEL_54;
  }

  v221 = v361;
  v222 = v219 + v216;
  v223 = v349;
  (*(v361 + 32))(v349, v222, v211);
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus and conformance AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus, MEMORY[0x277D1F618]);
  OUTLINED_FUNCTION_192();
  v175 = v211;
  LODWORD(v366) = dispatch thunk of static Equatable.== infix(_:_:)();
  v224 = *(v221 + 8);
  v224(v223, v211);
  outlined destroy of NSObject?(v369, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  outlined destroy of NSObject?(v370, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v224(v358, v211);
  outlined destroy of NSObject?(v362, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  if ((v366 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_57:
  v225 = v355;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.downloadStatus.getter();
  v226 = v353;
  (*(v356 + 104))(v354, *MEMORY[0x277D1F628], v353);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v227, v228, v229, v226);
  v175 = *(v352 + 48);
  v32 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd;
  v230 = v357;
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v230);
  if (v132)
  {
    v32 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR;
    v231 = OUTLINED_FUNCTION_120_1();
    outlined destroy of NSObject?(v231, v232, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    v233 = v357;
    outlined destroy of NSObject?(v225, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    OUTLINED_FUNCTION_25(v233 + v175);
    if (v132)
    {
      outlined destroy of NSObject?(v233, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  v234 = v350;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_25(v230 + v175);
  if (v235)
  {
    outlined destroy of NSObject?(v354, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    v236 = OUTLINED_FUNCTION_84_1();
    v233 = v357;
    outlined destroy of NSObject?(v236, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
    (*(v356 + 8))(v234, v226);
LABEL_65:
    outlined destroy of NSObject?(v233, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSg_AHtMR);
LABEL_66:
    v237 = OUTLINED_FUNCTION_68_0();
    v238(v237);

    goto LABEL_39;
  }

  v239 = v356;
  (*(v356 + 32))(v341, v230 + v175, v226);
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus and conformance AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.DownloadStatus, MEMORY[0x277D1F630]);
  OUTLINED_FUNCTION_154();
  LODWORD(v370) = dispatch thunk of static Equatable.== infix(_:_:)();
  v158 = *(v239 + 8);
  v240 = OUTLINED_FUNCTION_157();
  v158(v240);
  v175 = &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd;
  outlined destroy of NSObject?(v354, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  v241 = OUTLINED_FUNCTION_84_1();
  outlined destroy of NSObject?(v241, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  (v158)(v350, v226);
  OUTLINED_FUNCTION_144();
  v242 = OUTLINED_FUNCTION_158();
  outlined destroy of NSObject?(v242, v243, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV14DownloadStatusOSgMR);
  if ((v370 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_68:
  v244 = v344;
  OUTLINED_FUNCTION_174();
  v245();
  v246 = OUTLINED_FUNCTION_70_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v246, v247, v324);
  v249 = v345;
  if (EnumTagSinglePayload)
  {
LABEL_71:
    outlined destroy of NSObject?(v244, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v253, v254, v255, v351);
    goto LABEL_72;
  }

  v250 = v338;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v251 = OUTLINED_FUNCTION_79_0();
  if (__swift_getEnumTagSinglePayload(v251, v252, v333))
  {
    outlined destroy of NSObject?(v250, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    goto LABEL_71;
  }

  v257 = v250;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  outlined destroy of NSObject?(v250, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  outlined destroy of NSObject?(v244, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  v282 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v282, v283, v351);
  if (!v132)
  {
    OUTLINED_FUNCTION_167();
    v285 = *(v284 + 32);
    v175 = v346;
    v286 = OUTLINED_FUNCTION_130_0();
    v158 = v351;
    v287(v286);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v288, v289, v290, v158);
    v264 = v367;
    OUTLINED_FUNCTION_166();
    goto LABEL_77;
  }

LABEL_72:
  v256 = v342;
  v257 = v365;
  OUTLINED_FUNCTION_174();
  v258();
  v259 = OUTLINED_FUNCTION_70_0();
  if (__swift_getEnumTagSinglePayload(v259, v260, v324))
  {
    outlined destroy of NSObject?(v256, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    OUTLINED_FUNCTION_141_0(&v377);
    OUTLINED_FUNCTION_23();
    v158 = v351;
    __swift_storeEnumTagSinglePayload(v261, v262, v263, v351);
  }

  else
  {
    v175 = v346;
    v257 = v256;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.writeTimestamp.getter();
    outlined destroy of NSObject?(v256, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
    v158 = v351;
  }

  v264 = v367;
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_23_3(v249);
  if (!v132)
  {
    outlined destroy of NSObject?(v249, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_77:
  OUTLINED_FUNCTION_23_3(v175);
  if (v132)
  {
    (*(v363 + 8))(v364, v264);

    outlined destroy of NSObject?(v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_144();
    goto LABEL_40;
  }

  v265 = *(v347 + 32);
  (v265)(v348, v175, v158);
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_82_1(&v371);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v257);
  if (v266)
  {
    v267 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v268 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v269 = v257;
LABEL_86:
    outlined destroy of NSObject?(v269, v267, v268);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v274, v275, v276, v158);
    goto LABEL_87;
  }

  v175 = v337;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_92_1();
  v270();
  v271 = OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_34_0(v271, v272, v333);
  if (v273)
  {
    v267 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v268 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v269 = v175;
    goto LABEL_86;
  }

  v291 = v343;
  OUTLINED_FUNCTION_185();
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_181();
  v292();
  OUTLINED_FUNCTION_23_3(v291);
  if (!v293)
  {
    v175 = v339;
    v294 = OUTLINED_FUNCTION_130_0();
    v265(v294);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v295, v296, v297, v158);
    goto LABEL_96;
  }

LABEL_87:
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_82_1(&v369);
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_13_4(v257);
  if (v132)
  {
    outlined destroy of NSObject?(v257, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    OUTLINED_FUNCTION_141_0(&v370);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v277, v278, v279, v158);
  }

  else
  {
    v175 = v339;
    AppleIntelligenceReportingModelCatalogLog.writeTimestamp.getter();
    OUTLINED_FUNCTION_92_1();
    v280();
  }

  v281 = OUTLINED_FUNCTION_108_1(v374);
  OUTLINED_FUNCTION_23_3(v281);
  if (!v132)
  {
    outlined destroy of NSObject?(v257, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_96:
  OUTLINED_FUNCTION_23_3(v175);
  if (v132)
  {

    (*(v347 + 8))(v348, v158);
    v298 = OUTLINED_FUNCTION_68_0();
    v299(v298);
    outlined destroy of NSObject?(v175, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
LABEL_105:
    OUTLINED_FUNCTION_144();
    goto LABEL_39;
  }

  v300 = OUTLINED_FUNCTION_108_1(&v372);
  (v265)(v300, v175, v158);
  v301 = static Date.> infix(_:_:)();
  if ((v301 & 1) == 0)
  {

    v311 = *(v347 + 8);
    OUTLINED_FUNCTION_82_1(&a13);
    v311();
    (v311)(v348, v257);
    v312 = OUTLINED_FUNCTION_68_0();
    v313(v312);
    goto LABEL_105;
  }

  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v302 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v302, static Logging.general);

  v303 = Logger.logObject.getter();
  v304 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v303, v304))
  {
    v305 = swift_slowAlloc();
    v372 = swift_slowAlloc();
    *v305 = 136315394;
    OUTLINED_FUNCTION_144();
    *(v305 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v328, v306);
    *(v305 + 12) = 2080;
    v307 = OUTLINED_FUNCTION_48();
    v310 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v307, v308, v309);

    *(v305 + 14) = v310;
    _os_log_impl(&dword_227F43000, v303, v304, "uafDownloadStatus found UAF completion event for %s for %s", v305, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_141_0(&a10);
  Date.timeIntervalSince(_:)();
  v314 = OUTLINED_FUNCTION_197();
  v315 = v314[4];
  __swift_project_boxed_opaque_existential_1(v314, v314[3]);
  v316 = *(v315 + 8);
  v317 = OUTLINED_FUNCTION_104_0();
  v318(v317);

  v319 = *(v347 + 8);
  (v319)(v340, v351);
  v320 = OUTLINED_FUNCTION_192();
  v319(v320);
  v321 = OUTLINED_FUNCTION_68_0();
  v322(v321);
  LOBYTE(v146) = 0;
  v147 = 0;
LABEL_15:
  LOBYTE(v373[0]) = v146;
  LOBYTE(v372) = v147;
  OUTLINED_FUNCTION_19();
}

unint64_t AssetDeliveryStateReader.mode.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_122_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_95_1();
  v11 = v1 + *(type metadata accessor for AssetDeliveryStateReader() + 24);
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v12 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v13 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v13, v14, v12);
  if (v25)
  {
    v15 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v16 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v17 = v2;
LABEL_7:
    outlined destroy of NSObject?(v17, v15, v16);
    v30 = 0;
    LOBYTE(v28) = 1;
    return v30 | (v28 << 32);
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_35_0();
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_104_0();
  v21(v20);
  v22 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v23 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_34_0(v23, v24, v22);
  if (v25)
  {
    v15 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v16 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v17 = v0;
    goto LABEL_7;
  }

  v26 = AppleIntelligenceReportingUseCase.mode.getter();
  v27 = v26;
  v28 = HIDWORD(v26) & 1;
  OUTLINED_FUNCTION_31_1(v22);
  (*(v29 + 8))(v0, v22);
  v30 = v27;
  return v30 | (v28 << 32);
}

void AssetDeliveryStateReader.invocationsWhileNotAvailable.getter()
{
  OUTLINED_FUNCTION_18();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_55_0();
  v118 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_55_0();
  v119 = v14;
  OUTLINED_FUNCTION_12();
  v120 = type metadata accessor for Date();
  v15 = OUTLINED_FUNCTION_0(v120);
  v115 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v114 = v19;
  OUTLINED_FUNCTION_12();
  v20 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  v21 = OUTLINED_FUNCTION_0(v20);
  v122 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v116 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSg_AHtMR);
  OUTLINED_FUNCTION_4(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_137_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR);
  OUTLINED_FUNCTION_13(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v33);
  v35 = &v114 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR);
  OUTLINED_FUNCTION_13(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_96_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  v41 = OUTLINED_FUNCTION_13(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_1();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = &v114 - v46;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_136_0();
  v121 = type metadata accessor for AssetDeliveryStateReader();
  v48 = *(v121 + 24);
  v123 = v0;
  v117 = v48;
  AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.getter();
  v49 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState();
  OUTLINED_FUNCTION_28_3(v35);
  if (v55)
  {
    v50 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd;
    v51 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR;
    v52 = v35;
  }

  else
  {
    AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.getter();
    OUTLINED_FUNCTION_31_1(v49);
    (*(v53 + 8))(v35, v49);
    v54 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
    OUTLINED_FUNCTION_13_4(v3);
    if (!v55)
    {
      AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.getter();
      OUTLINED_FUNCTION_30_0();
      (*(v59 + 8))(v3, v54);
      v60 = v122;
      goto LABEL_8;
    }

    v50 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd;
    v51 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR;
    v52 = v3;
  }

  outlined destroy of NSObject?(v52, v50, v51);
  v60 = v122;
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v20);
LABEL_8:
  (*(v60 + 104))(v47, *MEMORY[0x277D1F5B8], v20);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v20);
  v64 = *(v26 + 48);
  outlined init with copy of AppleIntelligenceError?();
  outlined init with copy of AppleIntelligenceError?();
  v65 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v65, v66, v20);
  if (v55)
  {
    v67 = OUTLINED_FUNCTION_62();
    outlined destroy of NSObject?(v67, v68, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
    outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
    OUTLINED_FUNCTION_34_0(&v64[v4], 1, v20);
    if (v55)
    {
      outlined destroy of NSObject?(v4, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
      v69 = v123;
      goto LABEL_20;
    }

LABEL_16:
    outlined destroy of NSObject?(v4, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSg_AHtMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSg_AHtMR);
    v69 = v123;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_77_0();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_34_0(&v64[v4], 1, v20);
  if (v70)
  {
    v71 = OUTLINED_FUNCTION_62();
    outlined destroy of NSObject?(v71, v72, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
    outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
    v73 = *(v60 + 8);
    v60 += 8;
    v73(v2, v20);
    goto LABEL_16;
  }

  while (1)
  {
    v75 = v116;
    (*(v60 + 32))(v116, &v64[v4], v20);
    OUTLINED_FUNCTION_25_3();
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(v76, v77);
    v78 = dispatch thunk of static Equatable.== infix(_:_:)();
    v79 = *(v60 + 8);
    v60 += 8;
    v79(v75, v20);
    v64 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR;
    OUTLINED_FUNCTION_175();
    outlined destroy of NSObject?(v80, v81, v82);
    OUTLINED_FUNCTION_175();
    outlined destroy of NSObject?(v83, v84, v85);
    v79(v2, v20);
    OUTLINED_FUNCTION_175();
    outlined destroy of NSObject?(v86, v87, v88);
    v69 = v123;
    if (v78)
    {
      break;
    }

LABEL_17:
    v74 = HIDWORD(*(*(v69 + *(v121 + 40)) + 16));
    if (!v74)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

LABEL_20:
  v89 = v118;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v90 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_19_2(v89);
  if (v55)
  {
    outlined destroy of NSObject?(v89, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v95 = v119;
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v91, v92, v93, v94);
LABEL_25:
    outlined destroy of NSObject?(v95, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v74) = 1;
LABEL_28:
    v124 = v74;
    OUTLINED_FUNCTION_19();
    return;
  }

  v95 = v119;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_31_1(v90);
  v97 = *(v96 + 8);
  v98 = OUTLINED_FUNCTION_31_0();
  v99(v98);
  v100 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v100, v101, v120);
  if (v102)
  {
    goto LABEL_25;
  }

  v104 = v114;
  v103 = v115;
  v105 = *(v115 + 32);
  v106 = OUTLINED_FUNCTION_124_1();
  v108 = v107(v106);
  v109 = *(v69 + *(v121 + 40));
  MEMORY[0x28223BE20](v108);
  *(&v114 - 2) = v104;

  v110 = *(specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AssetDeliveryStateReader.invocationsWhileNotAvailable.getter, (&v114 - 4), v109) + 16);

  if (!HIDWORD(v110))
  {
    v111 = *(v103 + 8);
    v112 = OUTLINED_FUNCTION_153();
    v113(v112);
    LOBYTE(v74) = 0;
    goto LABEL_28;
  }

  __break(1u);
}

void AssetDeliveryStateReader.lastMADownloadAttemptErrorInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_152();
  v221 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v26 = OUTLINED_FUNCTION_0(v221);
  v237 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v32 = OUTLINED_FUNCTION_13(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_38_0();
  v220 = v36;
  OUTLINED_FUNCTION_12();
  v37 = type metadata accessor for AssetDeliverySubsystemError();
  v211 = *(v37 - 8);
  v38 = *(v211 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_55_0();
  v234 = v45;
  OUTLINED_FUNCTION_12();
  v225 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  v46 = OUTLINED_FUNCTION_0(v225);
  v231 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_7();
  v235 = v50;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_38_0();
  v228 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v54 = OUTLINED_FUNCTION_13(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7();
  v230 = v57;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v58);
  v60 = (&v209 - v59);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v64);
  v66 = &v209 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v68 = OUTLINED_FUNCTION_13(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_93_1();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v75);
  v77 = &v209 - v76;
  v78 = type metadata accessor for Date();
  v79 = OUTLINED_FUNCTION_0(v78);
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2();
  v222 = v84;
  v224 = AssetDeliveryStateReader.allAssetSetIdentifiers()();
  v85 = *(type metadata accessor for AssetDeliveryStateReader() + 28);
  outlined init with copy of AppleIntelligenceError?();
  v86 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_34_0(v66, 1, v86);
  v215 = v20;
  v210 = v22;
  v214 = v78;
  v213 = v81;
  if (v92)
  {
    outlined destroy of NSObject?(v66, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    v87 = v225;
LABEL_7:
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v78);
    v96 = v234;
    goto LABEL_8;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1(v86);
  (*(v88 + 8))(v66, v86);
  v89 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v90 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v90, v91, v89);
  if (v92)
  {
    outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v87 = v225;
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_31_1(v89);
  (*(v97 + 8))(v23, v89);
  OUTLINED_FUNCTION_13_4(v77);
  v87 = v225;
  v96 = v234;
  if (!v98)
  {
    (*(v81 + 32))(v222, v77, v78);
    goto LABEL_12;
  }

LABEL_8:
  static Date.distantPast.getter();
  OUTLINED_FUNCTION_13_4(v77);
  if (!v92)
  {
    outlined destroy of NSObject?(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_12:
  v99 = *(v21 + 16);
  OUTLINED_FUNCTION_1_2();
  v101 = (*(v100 + 320))();
  v102 = 0;
  v229 = OUTLINED_FUNCTION_123_1(v101);
  OUTLINED_FUNCTION_2_7(v229);
  v106 = v105 & v104;
  v108 = (v107 + 63) >> 6;
  v226 = 0;
  v227 = v231 + 16;
  v236 = (v231 + 32);
  v233 = v231 + 8;
  v217 = v237 + 16;
  v109 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd;
  v216 = v237 + 8;
  v237 = v60;
  v232 = v103;
  if ((v105 & v104) == 0)
  {
    goto LABEL_14;
  }

  do
  {
LABEL_18:
    OUTLINED_FUNCTION_155();
    v112 = v228;
    v111 = v229;
    v113 = v231;
    (*(v231 + 16))(v228, *(v229 + 48) + *(v231 + 72) * v99, v87);
    v114 = *(*(v111 + 56) + 8 * v99);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v116 = *(v115 + 48);
    v117 = *(v113 + 32);
    v118 = v230;
    v119 = v112;
    v120 = v87;
    v117(v230, v119, v87);
    *(v118 + v116) = v114;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v121, v122, v123, v115);

    v96 = v234;
    v60 = v237;
LABEL_19:
    OUTLINED_FUNCTION_158();
    _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    OUTLINED_FUNCTION_25(v60);
    if (v92)
    {

      v164 = OUTLINED_FUNCTION_20_2();
      v166(v164, *(v165 - 256));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMR);
      OUTLINED_FUNCTION_23();
      goto LABEL_39;
    }

    v109 = *(v60 + *(v124 + 48));
    v99 = v235;
    v125 = *v236;
    v126 = OUTLINED_FUNCTION_113_1();
    v87 = v120;
    v127(v126);
    AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.getter();
    v128 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    OUTLINED_FUNCTION_13_4(v96);
    if (v92)
    {
      OUTLINED_FUNCTION_80_1();
      v129(v99, v87);

      outlined destroy of NSObject?(v96, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
LABEL_30:
      v60 = v237;
      goto LABEL_34;
    }

    v99 = v96;
    v130 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
    v87 = v131;
    OUTLINED_FUNCTION_30_0();
    v133 = (*(v132 + 8))(v96, v128);
    if (!v87)
    {
      v151 = OUTLINED_FUNCTION_46_1();
      v87 = v225;
      v152(v151, v225);

      goto LABEL_30;
    }

    v223 = v130;
    v238[0] = v130;
    v238[1] = v87;
    MEMORY[0x28223BE20](v133);
    OUTLINED_FUNCTION_22_4();
    *(v134 - 16) = v238;
    v135 = v226;
    v137 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v136, v224);
    v60 = v237;
    v226 = v135;
    if (v137)
    {
      v138 = *(*v109 + 104);
      v139 = *v109 + 104;
      v99 = v109;
      v140 = v138();
      if (!v140)
      {

        v155 = OUTLINED_FUNCTION_46_1();
        v87 = v225;
        v156(v155, v225);
        goto LABEL_33;
      }

      v219 = v139;
      v141 = v220;
      (*(*v140 + 160))(v140);

      v142 = OUTLINED_FUNCTION_102_0();
      v143 = v221;
      if (!__swift_getEnumTagSinglePayload(v142, v144, v221))
      {
        v60 = v138;
        OUTLINED_FUNCTION_54_1(&a16);
        v157 = v218;
        v158(v218, v141, v143);
        outlined destroy of NSObject?(v141, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
        v159 = v143;
        AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)();
        v99 = v160;
        OUTLINED_FUNCTION_54_1(&a15);
        v161(v157, v159);
        if (*(v99 + 16))
        {
          goto LABEL_41;
        }

        v162 = OUTLINED_FUNCTION_46_1();
        v87 = v225;
        v163(v162, v225);
        v96 = v234;
        goto LABEL_30;
      }

      v145 = OUTLINED_FUNCTION_46_1();
      v99 = v225;
      v146(v145, v225);
      v87 = v99;

      outlined destroy of NSObject?(v141, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    }

    else
    {
      v153 = OUTLINED_FUNCTION_46_1();
      v99 = v225;
      v154(v153, v225);
      v87 = v99;
    }

LABEL_33:
    v96 = v234;
LABEL_34:
    v109 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd;
    v103 = v232;
  }

  while (v106);
LABEL_14:
  while (1)
  {
    v110 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      break;
    }

    if (v110 >= v108)
    {
      v120 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
      v106 = 0;
      goto LABEL_19;
    }

    v106 = *(v103 + 8 * v110);
    ++v102;
    if (v106)
    {
      v102 = v110;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_41:

  if (*(v99 + 16))
  {
    OUTLINED_FUNCTION_167();
    v172 = *(v171 + 80);
    OUTLINED_FUNCTION_69();
    outlined init with copy of AssetDeliveryStateReader();

    v173 = v212;
    outlined init with take of AssetDeliverySubsystemError();
    v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMR);
    v175 = *(v174 + 48);
    v176 = *(v174 + 64);
    v177 = v215;
    *v215 = v223;
    v177[1] = v87;
    v178 = outlined init with copy of AssetDeliveryStateReader();
    v179 = v109;
    v180 = (v60)(v178);
    if (!v180)
    {

      OUTLINED_FUNCTION_1_6();
      outlined destroy of AssetDeliveryStateReader(v173, v190);
      v191 = OUTLINED_FUNCTION_46_1();
      v192(v191, v225);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_182();
      v193();
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_135(v180);
    v182 = *(v181 + 160);
    OUTLINED_FUNCTION_71_0(&v239);
    v183();

    v184 = OUTLINED_FUNCTION_102_0();
    if (__swift_getEnumTagSinglePayload(v184, v185, v221))
    {

      OUTLINED_FUNCTION_1_6();
      outlined destroy of AssetDeliveryStateReader(v173, v186);
      OUTLINED_FUNCTION_80_1();
      v187 = OUTLINED_FUNCTION_121_1();
      v188(v187);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_182();
      v189();
      goto LABEL_48;
    }

    v194 = v209;
    v179 = type metadata accessor for AssetDeliverySubsystemError;
    AppleIntelligenceReportingMobileAssetLog.event.getter();
    v195 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
    if (__swift_getEnumTagSinglePayload(v194, 1, v195))
    {

      OUTLINED_FUNCTION_1_6();
      outlined destroy of AssetDeliveryStateReader(v173, v196);
      OUTLINED_FUNCTION_80_1();
      v197 = OUTLINED_FUNCTION_121_1();
      v198(v197);
      OUTLINED_FUNCTION_20_2();
      OUTLINED_FUNCTION_182();
      v199();
      outlined destroy of NSObject?(v194, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
LABEL_48:
      outlined destroy of NSObject?(type metadata accessor for AssetDeliverySubsystemError, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
LABEL_49:
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v200, v201, v202, v179);
    }

    else
    {
      AppleIntelligenceReportingAssetDeliveryEvent.date.getter();

      OUTLINED_FUNCTION_1_6();
      outlined destroy of AssetDeliveryStateReader(v173, v203);
      OUTLINED_FUNCTION_80_1();
      v204 = OUTLINED_FUNCTION_121_1();
      v205(v204);
      v206 = OUTLINED_FUNCTION_20_2();
      v208(v206, *(v207 - 256));
      outlined destroy of NSObject?(v194, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      outlined destroy of NSObject?(type metadata accessor for AssetDeliverySubsystemError, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    }

    OUTLINED_FUNCTION_39_0();
    v170 = v174;
LABEL_39:
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
    OUTLINED_FUNCTION_19();
    return;
  }

  __break(1u);
}

void AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_139_0();
  a21 = v25;
  a22 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_96_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_97_1();
  v41 = type metadata accessor for Date();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_122_1();
  v47 = *(type metadata accessor for AssetDeliveryStateReader() + 28);
  outlined init with copy of AppleIntelligenceError?();
  v48 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v49 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v49, v50, v48);
  if (v61)
  {
    v51 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v52 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v53 = v32;
LABEL_7:
    outlined destroy of NSObject?(v53, v51, v52);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v41);
LABEL_8:
    outlined destroy of NSObject?(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_9;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1(v48);
  v55 = *(v54 + 8);
  v56 = OUTLINED_FUNCTION_124_0();
  v57(v56);
  v58 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v59 = OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_34_0(v59, v60, v58);
  if (v61)
  {
    v51 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v52 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v53 = v24;
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_31_1(v58);
  v66 = *(v65 + 8);
  v67 = OUTLINED_FUNCTION_130_0();
  v68(v67);
  OUTLINED_FUNCTION_19_2(v23);
  if (v69)
  {
    goto LABEL_8;
  }

  (*(v44 + 32))(v22, v23, v41);
  Date.timeIntervalSince(_:)();
  v71 = v70;
  if (v70 >= 0.0)
  {
    v81 = *(v44 + 8);
    v82 = OUTLINED_FUNCTION_51_0();
    v83(v82);
  }

  else
  {
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v72, static Logging.general);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.fault.getter();
    v75 = OUTLINED_FUNCTION_140_0();
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_59_1();
      v77 = swift_slowAlloc();
      *v77 = 134217984;
      *(v77 + 4) = v71;
      _os_log_impl(&dword_227F43000, v73, v74, "The timeSinceLastSubscriptionChange is negative %f. Returning nil.", v77, 0xCu);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    v78 = *(v44 + 8);
    v79 = OUTLINED_FUNCTION_51_0();
    v80(v79);
  }

LABEL_9:
  OUTLINED_FUNCTION_138_0();
}

void AssetDeliveryStateReader.timeSinceLastDownloadStart(now:)()
{
  OUTLINED_FUNCTION_139_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_55_0();
  v73 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_55_0();
  v75 = v13;
  OUTLINED_FUNCTION_12();
  v74 = type metadata accessor for Date();
  v14 = OUTLINED_FUNCTION_0(v74);
  v72 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v71 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_63_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_95_1();
  v28 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
  v29 = OUTLINED_FUNCTION_0(v28);
  v76 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v36 = v1;
  v37 = *(v1 + 16);
  OUTLINED_FUNCTION_169();
  v39 = *(v38 + 200);
  v39();
  v40 = v39;
  v41 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v42 = OUTLINED_FUNCTION_50_1();
  if (!__swift_getEnumTagSinglePayload(v42, v43, v41))
  {
    v70 = v40;
    AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter();
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    v47 = OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_34_0(v47, v48, v28);
    if (v49)
    {
      goto LABEL_5;
    }

    (*(v76 + 32))(v35, v0, v28);
    v52 = AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState.assetSets.getter();
    MEMORY[0x28223BE20](v52);
    OUTLINED_FUNCTION_22_4();
    *(v53 - 16) = v36;
    v55 = specialized Sequence.contains(where:)(partial apply for closure #1 in AssetDeliveryStateReader.timeSinceLastDownloadStart(now:), v54, v52);

    if (!v55)
    {
      (*(v76 + 8))(v35, v28);
      goto LABEL_7;
    }

    (v70)(v56);
    v57 = OUTLINED_FUNCTION_73_0();
    v0 = v75;
    if (!__swift_getEnumTagSinglePayload(v57, v58, v41))
    {
      AppleIntelligenceReportingMobileAssetLog.event.getter();
      type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
      v59 = OUTLINED_FUNCTION_79_0();
      if (!__swift_getEnumTagSinglePayload(v59, v60, v61))
      {
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        outlined destroy of NSObject?(v73, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
        v65 = OUTLINED_FUNCTION_70_0();
        OUTLINED_FUNCTION_34_0(v65, v66, v74);
        if (!v49)
        {
          v67 = *(v72 + 32);
          v68 = OUTLINED_FUNCTION_31_0();
          v69(v68);
          Date.timeIntervalSince(_:)();
          (*(v72 + 8))(v71, v74);
          (*(v76 + 8))(v35, v28);
          goto LABEL_7;
        }

        goto LABEL_13;
      }

      outlined destroy of NSObject?(v73, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    }

    outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v74);
LABEL_13:
    (*(v76 + 8))(v35, v28);
    v50 = &_s10Foundation4DateVSgMd;
    v51 = &_s10Foundation4DateVSgMR;
    goto LABEL_6;
  }

  outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v28);
LABEL_5:
  v50 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd;
  v51 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR;
LABEL_6:
  outlined destroy of NSObject?(v0, v50, v51);
LABEL_7:
  OUTLINED_FUNCTION_138_0();
}

BOOL closure #1 in AssetDeliveryStateReader.timeSinceLastDownloadStart(now:)()
{
  v0 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = AssetDeliveryStateReader.allAssetSetIdentifiers()();
    v8[0] = v2;
    v8[1] = v3;
    MEMORY[0x28223BE20](v4);
    v7[2] = v8;
    v5 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v7, v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

void AssetDeliveryStateReader.toggleState(from:)()
{
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v89 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38_0();
  v90 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_64_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR);
  v19 = OUTLINED_FUNCTION_13(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV6StatusOSgMR);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_137_0();
  AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.getter();
  v29 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState();
  OUTLINED_FUNCTION_13_4(v3);
  if (v37)
  {
    v30 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd;
    v31 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR;
    v32 = v3;
LABEL_7:
    outlined destroy of NSObject?(v32, v30, v31);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v4);
    goto LABEL_8;
  }

  v88 = v7;
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.getter();
  OUTLINED_FUNCTION_30_0();
  v34 = *(v33 + 8);
  v35 = v33 + 8;
  v34(v3, v29);
  v36 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info();
  OUTLINED_FUNCTION_28_3(v24);
  if (v37)
  {
    v30 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd;
    v31 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR;
    v32 = v24;
    goto LABEL_7;
  }

  v87 = v34;
  AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.status.getter();
  OUTLINED_FUNCTION_31_1(v36);
  v51 = *(v50 + 8);
  v52 = v24;
  v53 = v51;
  v86 = v50 + 8;
  (v51)(v52, v36);
  v54 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_26_1(v54, v55);
  if (v56)
  {
LABEL_8:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v41, static Logging.general);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.fault.getter();
    if (!OUTLINED_FUNCTION_78_0(v43))
    {
      goto LABEL_12;
    }

LABEL_11:
    OUTLINED_FUNCTION_99_1();
    v44 = swift_slowAlloc();
    OUTLINED_FUNCTION_116_1(v44);
    OUTLINED_FUNCTION_47_1();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
LABEL_12:

    goto LABEL_13;
  }

  v57 = *(v88 + 88);
  v58 = OUTLINED_FUNCTION_99_0();
  v60 = v59(v58);
  if (v60 == *MEMORY[0x277D1F5B8])
  {
    goto LABEL_13;
  }

  if (v60 == *MEMORY[0x277D1F5A8] || v60 == *MEMORY[0x277D1F5B0])
  {
    AppleIntelligenceReportingAvailabilityLog.availabilityChangeEventState.getter();
    OUTLINED_FUNCTION_13_4(v0);
    if (v37)
    {
      v62 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMd;
      v63 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateVSgMR;
      v64 = v0;
    }

    else
    {
      OUTLINED_FUNCTION_185();
      AppleIntelligenceReportingAvailabilityLog.AvailabilityState.info.getter();
      v87(v0, v29);
      OUTLINED_FUNCTION_28_3(v1);
      if (!v82)
      {
        AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Info.reasons.getter();
        v85 = OUTLINED_FUNCTION_149();
        v53(v85);
        if ((v1 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_32:
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v83, static Logging.general);
        v42 = Logger.logObject.getter();
        v84 = static os_log_type_t.fault.getter();
        if (!OUTLINED_FUNCTION_78_0(v84))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v62 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMd;
      v63 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogV0F5StateV4InfoVSgMR;
      v64 = v1;
    }

    outlined destroy of NSObject?(v64, v62, v63);
    goto LABEL_32;
  }

  v65 = OUTLINED_FUNCTION_103_1();
  v66(v65);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v67, static Logging.general);
  v68 = OUTLINED_FUNCTION_117_1();
  v69(v68);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_59_1();
    v72 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v91 = swift_slowAlloc();
    *v72 = 136315138;
    OUTLINED_FUNCTION_25_3();
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(v73, v74);
    dispatch thunk of CustomStringConvertible.description.getter();
    v75 = OUTLINED_FUNCTION_89_1();
    v76 = *(v29 + 8);
    v76(v75, v35);
    v77 = OUTLINED_FUNCTION_114_1();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, v79);
    OUTLINED_FUNCTION_89_1();

    *(v72 + 4) = v2;
    OUTLINED_FUNCTION_199(&dword_227F43000, v80, v81, "AssetDeliveryStateReader toggleState encountered availability event with unhandled status enum value of %s");
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
  }

  else
  {

    v76 = *(v29 + 8);
    v76(v2, v35);
  }

  v76(v36, v35);
LABEL_13:
  OUTLINED_FUNCTION_19();
}

void AssetDeliveryStateReader.timeSinceLastAIToggle(to:)()
{
  OUTLINED_FUNCTION_139_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_55_0();
  v110 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_55_0();
  v109 = v11;
  OUTLINED_FUNCTION_12();
  v108 = type metadata accessor for Date();
  v12 = OUTLINED_FUNCTION_0(v108);
  v107 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v106 = v16;
  OUTLINED_FUNCTION_12();
  v17 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v18 = OUTLINED_FUNCTION_0(v17);
  v112 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v23 = v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_38_0();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  v28 = OUTLINED_FUNCTION_13(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_0();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_63_1();
  v35 = v0[1];
  v36 = *v0;
  v37 = *(*v0[2] + 152);
  v38 = v0[2];
  v39 = v37();
  v40 = OUTLINED_FUNCTION_104_0();
  specialized Dictionary.subscript.getter(v40, v41, v39);
  OUTLINED_FUNCTION_89_1();

  if (v38)
  {
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v17);
    v45 = *(v38 + 16);
    v46 = v112;
    v114 = v38;
    if (!v45)
    {
LABEL_11:

      outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
      goto LABEL_23;
    }

    v47 = v26;
    v48 = *(v112 + 80);
    OUTLINED_FUNCTION_69();
    v113 = v38 + v49;
    v50 = (v112 + 32);
    v111 = v1;
    while (1)
    {
      if (v45 > *(v114 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      --v45;
      (*(v46 + 16))(v47, v113 + *(v46 + 72) * v45, v17);
      outlined init with copy of AppleIntelligenceError?();
      OUTLINED_FUNCTION_13_4(v33);
      if (v92)
      {
        v51 = OUTLINED_FUNCTION_154();
        outlined destroy of NSObject?(v51, v52, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
        v53 = OUTLINED_FUNCTION_158();
        outlined destroy of NSObject?(v53, v54, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
        v55 = *v50;
        v56 = OUTLINED_FUNCTION_124_1();
        v57(v56);
      }

      else
      {
        v58 = v33;
        v59 = *v50;
        v60 = v58;
        (*v50)(v23);
        AssetDeliveryStateReader.toggleState(from:)();
        v62 = v61 & 1;
        AssetDeliveryStateReader.toggleState(from:)();
        if (v62 != (v63 & 1))
        {
          v69 = v17;
          v70 = v59;

          AppleIntelligenceReportingAvailabilityLog.event.getter();
          v71 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
          OUTLINED_FUNCTION_28_3(v110);
          if (v92)
          {
            OUTLINED_FUNCTION_57_0();
            v72 = v69;
            v73(v23, v69);
            v74 = v111;
            outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
            outlined destroy of NSObject?(v110, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
            v88 = v109;
            OUTLINED_FUNCTION_23();
            __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
          }

          else
          {
            v88 = v109;
            AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
            OUTLINED_FUNCTION_31_1(v71);
            (*(v89 + 8))(v110, v71);
            v90 = OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_34_0(v90, v91, v108);
            if (!v92)
            {
              v98 = *(v107 + 32);
              v99 = OUTLINED_FUNCTION_77_0();
              v100(v99);
              Date.timeIntervalSince(_:)();
              (*(v107 + 8))(v106, v108);
              OUTLINED_FUNCTION_57_0();
              v101(v23, v69);
              outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
              v102 = OUTLINED_FUNCTION_105_0();
              v59(v102);
              OUTLINED_FUNCTION_39_0();
              __swift_storeEnumTagSinglePayload(v103, v104, v105, v69);
              outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
              goto LABEL_23;
            }

            OUTLINED_FUNCTION_57_0();
            v72 = v69;
            v93(v23, v69);
            v74 = v111;
            outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
          }

          outlined destroy of NSObject?(v88, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v94 = OUTLINED_FUNCTION_113_1();
          v70(v94);
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v72);
          outlined destroy of NSObject?(v74, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_57_0();
        v64(v23, v17);
        v1 = v111;
        outlined destroy of NSObject?(v111, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
        v65 = OUTLINED_FUNCTION_154();
        v59(v65);
        v46 = v112;
        v33 = v60;
      }

      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v17);
      if (!v45)
      {
        goto LABEL_11;
      }
    }
  }

  if (one-time initialization token for general != -1)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v79, static Logging.general);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_78_0(v81))
  {
    OUTLINED_FUNCTION_99_1();
    v82 = swift_slowAlloc();
    OUTLINED_FUNCTION_116_1(v82);
    OUTLINED_FUNCTION_47_1();
    _os_log_impl(v83, v84, v85, v86, v87, 2u);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0]();
  }

LABEL_23:
  OUTLINED_FUNCTION_138_0();
}

uint64_t closure #1 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppleIntelligenceError?();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMR);
  if (__swift_getEnumTagSinglePayload(v3, 1, v13) == 1)
  {
    outlined destroy of NSObject?(v3, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_4:
    outlined destroy of NSObject?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  v14 = *(v3 + 1);

  v15 = *(v13 + 48);
  v16 = *(v13 + 64);
  _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
  outlined destroy of AssetDeliveryStateReader(&v3[v15], type metadata accessor for AssetDeliverySubsystemError);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  (*(v9 + 32))(v12, v7, v8);
  Date.timeIntervalSince(_:)();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  return v19;
}

uint64_t closure #2 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(uint64_t a1)
{
  v19 = type metadata accessor for AssetDeliverySubsystemError();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v7 = v22;
  v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  do
  {
    outlined init with copy of AssetDeliveryStateReader();
    v20 = AppleIntelligenceAssetDeliveryEvent.Subsystem.description.getter();
    v21 = v10;
    MEMORY[0x22AAAE070](58, 0xE100000000000000);
    MEMORY[0x22AAAE070](*&v5[*(v19 + 20)], *&v5[*(v19 + 20) + 8]);
    v11 = v20;
    v12 = v21;
    outlined destroy of AssetDeliveryStateReader(v5, type metadata accessor for AssetDeliverySubsystemError);
    v22 = v7;
    v13 = *(v7 + 16);
    if (v13 >= *(v7 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v7 = v22;
    }

    *(v7 + 16) = v13 + 1;
    v14 = v7 + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v12;
    v8 += v9;
    --v6;
  }

  while (v6);
  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v7);
  v20 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v15);

  specialized MutableCollection<>.sort(by:)(&v20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

void AssetDeliveryStateReader.timeSinceLastBootToAvailabilityChange.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_139_0();
  a21 = v25;
  a22 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_96_1();
  v37 = type metadata accessor for Date();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_188();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_136_0();
  v45 = v22 + *(type metadata accessor for AssetDeliveryStateReader() + 24);
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v46 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v47 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v47, v48, v46);
  if (v56)
  {
    outlined destroy of NSObject?(v32, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v37);
LABEL_6:
    outlined destroy of NSObject?(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_31_1(v46);
  v53 = *(v52 + 8);
  v54 = OUTLINED_FUNCTION_124_0();
  v55(v54);
  OUTLINED_FUNCTION_19_2(v24);
  if (v56)
  {
    goto LABEL_6;
  }

  (*(v40 + 32))(v23, v24, v37);
  v57 = [objc_opt_self() processInfo];
  [v57 systemUptime];

  Date.init()();
  static Date.- infix(_:_:)();
  v58 = *(v40 + 8);
  v59 = OUTLINED_FUNCTION_31_0();
  v58(v59);
  Date.timeIntervalSince(_:)();
  v60 = OUTLINED_FUNCTION_51_0();
  v58(v60);
  v61 = OUTLINED_FUNCTION_120_1();
  v58(v61);
LABEL_7:
  OUTLINED_FUNCTION_138_0();
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ27IntelligencePlatformLibrary05AppleB16ReportingUseCaseV9ParameterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v45 = &v34 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v41 = v5 + 32;
  v43 = a2 + 56;
  v44 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v34 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (2)
    {
      v22 = __clz(__rbit64(v19));
      v40 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v42 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v42 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v45, v14, v4);
      v27 = *(a2 + 40);
      lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
      v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v29 = a2;
      v30 = ~(-1 << *(a2 + 32));
      do
      {
        v31 = v28 & v30;
        if (((*(v43 + (((v28 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v30)) & 1) == 0)
        {
          (*v21)(v45, v4);
          return 0;
        }

        v26(v9, *(v29 + 48) + v31 * v42, v4);
        lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *v21;
        (*v21)(v9, v4);
        v28 = v31 + 1;
      }

      while ((v32 & 1) == 0);
      result = (v33)(v45, v4);
      a2 = v29;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v40;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v40 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for AssetDeliveryStateReader()
{
  result = type metadata singleton initialization cache for AssetDeliveryStateReader;
  if (!type metadata singleton initialization cache for AssetDeliveryStateReader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOi0_(uint64_t a1)
{
  bzero(a1, 0xD8uLL);
  *(a1 + 216) = 1;
  *(a1 + 228) = 0;
  *(a1 + 224) = 0;
}

BOOL specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;

  OUTLINED_FUNCTION_175();
  specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v20, v21, isUniquelyReferenced_nonNull_native);
  *v3 = v23;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v25 = a1;
  v4 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
  v30 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v27 = v9;
  v28 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v29 = v5 + 16;
  v26 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v28 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v24;
      v20 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v30;
      (*(v5 + 16))(v8, v30, v4);
      v31 = *v19;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v30, v4);
  v16(v25, *(v27 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMd, &_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
        v17 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

{
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMd, &_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMd, &_ss11_SetStorageCy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV9ParameterVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._unsafeInsertNew(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._finalize()();
  v11 = -1 << *(a5 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a5 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v13 = (*(a5 + 48) + 16 * result);
  *v13 = a1;
  v13[1] = a2;
  v14 = (*(a5 + 56) + 16 * result);
  *v14 = a3;
  v14[1] = a4;
  ++*(a5 + 16);
  return result;
}

unint64_t specialized Collection.randomElement<A>(using:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = specialized RandomNumberGenerator.next<A>(upperBound:)(*(a1 + 16));
    if (result >= v3)
    {
      __break(1u);
      return result;
    }

    v6 = type metadata accessor for AssetDeliverySubsystemError();
    v7 = a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
    v8 = *(*(v6 - 8) + 72);
    outlined init with copy of AssetDeliveryStateReader();
    v9 = a2;
    v10 = 0;
    v11 = v6;
  }

  else
  {
    v11 = type metadata accessor for AssetDeliverySubsystemError();
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t), unint64_t *a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a3 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleI23ReportingMobileAssetLogV0noO8SelectorV0liM10Processing0O13DeliveryStateC11AccumulatorCy_AJGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_27ij9Library05l3H23mnop6V0mnN8q22V_0khL10Processing0N13st3C11U9Cy_AKGTG5ASxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlRIsgnndzo_Tf1nc_n04_s27ij9Library05l3A23mnop6V0fgG8q21V0daE10Processing0G13st3C11U39Cy_ACGSbIgngd_AeKSbs5Error_pIegnndzo_TRAlRSbIgngd_Tf1nnc_n(v13, v8, v6, a2);
      MEMORY[0x22AAAF0A0](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  specialized UnsafeMutablePointer.assign(repeating:count:)(0, v8, v9);
  v10 = specialized closure #1 in _NativeDictionary.filter(_:)(v9, v8, v6, a2);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v5 = *(*(v34 - 8) + 64);
  result = MEMORY[0x28223BE20](v34);
  v32 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  v9 = 0;
  v36 = a3;
  v10 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v30 = v7 + 8;
  v31 = v7 + 16;
  v15 = v32;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v37 = (v13 - 1) & v13;
LABEL_11:
    v19 = v16 | (v9 << 6);
    v20 = v36;
    v22 = v33;
    v21 = v34;
    (*(v33 + 16))(v15, v36[6] + *(v33 + 72) * v19, v34);
    v23 = v19;
    v24 = *(v20[7] + 8 * v19);

    LOBYTE(v19) = v35(v15, v24);

    result = (*(v22 + 8))(v15, v21);
    v13 = v37;
    if (v19)
    {
      *(v27 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
      }
    }
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v27, v26, v28, v36);
    }

    v18 = *(v29 + 8 * v9);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleI23ReportingMobileAssetLogV0noO8SelectorV0liM10Processing0O13DeliveryStateC11AccumulatorCy_AJGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab9VKXEfU_27ij9Library05l3H23mnop6V0mnN8q22V_0khL10Processing0N13st3C11U9Cy_AKGTG5ASxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlRIsgnndzo_Tf1nc_n04_s27ij9Library05l3A23mnop6V0fgG8q21V0daE10Processing0G13st3C11U39Cy_ACGSbIgngd_AeKSbs5Error_pIegnndzo_TRAlRSbIgngd_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI8SelectorV0fcG10Processing0I13DeliveryStateC11AccumulatorCy_AEGGMd, "PK");
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, MEMORY[0x277D1F590]);
    v44 = v24;

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void partial apply for closure #2 in AssetDeliveryStateReader.allErrors()(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)();
  *a1 = v4;
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

unint64_t lazy protocol witness table accessor for type AssetDeliveryStateReader.AssetDownloadStatePerUseCase and conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase()
{
  result = lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadStatePerUseCase and conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase;
  if (!lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadStatePerUseCase and conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadStatePerUseCase and conformance AssetDeliveryStateReader.AssetDownloadStatePerUseCase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AssetDeliveryStateReader.AssetDownloadState and conformance AssetDeliveryStateReader.AssetDownloadState()
{
  result = lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadState and conformance AssetDeliveryStateReader.AssetDownloadState;
  if (!lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadState and conformance AssetDeliveryStateReader.AssetDownloadState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssetDeliveryStateReader.AssetDownloadState and conformance AssetDeliveryStateReader.AssetDownloadState);
  }

  return result;
}

void type metadata completion function for AssetDeliveryStateReader()
{
  type metadata accessor for AssetDeliveryState(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppleIntelligenceReportingModelCatalogLog?(319, &lazy cache variable for type metadata for AppleIntelligenceReportingModelCatalogLog?, MEMORY[0x277D1F5F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UnifiedAssetFrameworkReporting();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AppleIntelligenceReportingModelCatalogLog?(319, &lazy cache variable for type metadata for [InvocationStepMetadata], type metadata accessor for InvocationStepMetadata, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t type metadata accessor for UnifiedAssetFrameworkReporting()
{
  result = lazy cache variable for type metadata for UnifiedAssetFrameworkReporting;
  if (!lazy cache variable for type metadata for UnifiedAssetFrameworkReporting)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UnifiedAssetFrameworkReporting);
  }

  return result;
}

void type metadata accessor for AppleIntelligenceReportingModelCatalogLog?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for AssetDeliveryStateReader.AssetDownloadStatePerUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDeliveryStateReader.AssetDownloadStatePerUseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetDeliveryStateReader.AssetDownloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetDeliveryStateReader.AssetDownloadState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t outlined destroy of AssetDeliveryStateReader(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of AssetDeliverySubsystemError()
{
  OUTLINED_FUNCTION_117();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v0;
}

uint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_62();
  v7(v6);
  return v0;
}

uint64_t outlined init with copy of UnifiedAssetFrameworkReporting(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_31_1(v3);
  (*v4)(a2);
  return a2;
}

uint64_t outlined init with copy of AssetDeliveryStateReader()
{
  OUTLINED_FUNCTION_117();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1)
{
  *(v2 - 96) = a1;
  *v1 = *(v2 - 304);
  v4 = *(v2 - 176);
  v5 = *(v2 - 128);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_68_0()
{
  result = *(v0 - 200);
  v2 = *(*(v0 - 208) + 8);
  v3 = *(v0 - 176);
  return result;
}

BOOL OUTLINED_FUNCTION_78_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_105_1()
{
  v3 = *(v2 - 144);
  v4 = *(v1 + 48) + *(v3 + 72) * v0;
  v5 = *(v3 + 16);
  result = *(v2 - 152);
  v7 = *(v2 - 160);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v0, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_119_1()
{
  v1 = *(v0 - 208) + 8;
  result = *(v0 - 248);
  v3 = *(v0 - 144);
  v4 = *(v0 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_127_0()
{
  result = *(v0 - 584);
  v2 = *(v0 - 576);
  v3 = *(v0 - 632);
  return result;
}

void OUTLINED_FUNCTION_146()
{
  *(v4 + 16) = v3;
  v6 = v4 + 16 * v0;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  v8 = *(v5 - 136);
  v7 = *(v5 - 128);
}

uint64_t OUTLINED_FUNCTION_147()
{
  result = *(v0 - 256);
  v3 = *(v1 - 472);
  return result;
}

uint64_t OUTLINED_FUNCTION_149()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_151(void *a1@<X8>)
{
  v2 = *(v1 - 704);
  *a1 = *(v1 - 808);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_163()
{
}

uint64_t OUTLINED_FUNCTION_164()
{

  return String.hash(into:)();
}

uint64_t OUTLINED_FUNCTION_165()
{
  v2 = *(v0 - 392);

  return AppleIntelligenceReportingAvailabilityLog.event.getter();
}

void OUTLINED_FUNCTION_193()
{
  v4 = *(*(v2 + 56) + 8 * v1);
  v5 = *(v0 + 48);
  v6 = *(v3 + 32);
}

uint64_t OUTLINED_FUNCTION_196()
{
  v2 = *(*(v0 + 72) + 8);
  result = v1;
  v4 = *(v0 + 56);
  return result;
}

BOOL OUTLINED_FUNCTION_198(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 408);
  v6 = *(v3 - 184);

  return specialized Sequence.contains(where:)(v2, a2, v5);
}

void OUTLINED_FUNCTION_199(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_200(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_201()
{
}

void *OUTLINED_FUNCTION_202(uint64_t a1, uint64_t a2)
{

  return specialized Sequence.flatMap<A>(_:)(v2, a2, v3);
}

uint64_t OUTLINED_FUNCTION_204()
{
}

uint64_t OUTLINED_FUNCTION_205()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void AppleIntelligenceReportingAvailabilityLog.subsystemErrors.getter()
{
  OUTLINED_FUNCTION_18();
  v1 = type metadata accessor for AssetDeliverySubsystemError();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_9();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v13 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_34_0(v12, 1, v13);
  if (v14)
  {
    outlined destroy of NSObject?(v12, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    v15 = AppleIntelligenceReportingAssetDeliveryEvent.errors.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_6_8(MEMORY[0x277D84F90]);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17, v16, 0);
      v18 = v35;
      v34 = type metadata accessor for AppleIntelligenceReportingGeneralError();
      OUTLINED_FUNCTION_4(v34);
      v20 = *(v19 + 16);
      v32 = v19 + 16;
      v33 = v20;
      v21 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v30 = v15;
      v31 = 0x8000000227FB5BE0;
      v22 = *(v19 + 72);
      v23 = *MEMORY[0x277CEDF88];
      do
      {
        v33(v0 + *(v1 + 24), v21, v34);
        v24 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
        OUTLINED_FUNCTION_4(v24);
        (*(v25 + 104))(v0, v23);
        v26 = (v0 + *(v1 + 20));
        *v26 = 0xD000000000000012;
        v26[1] = v31;
        v35 = v18;
        v27 = *(v18 + 16);
        if (v27 >= *(v18 + 24) >> 1)
        {
          OUTLINED_FUNCTION_10_5();
          v18 = v35;
        }

        *(v18 + 16) = v27 + 1;
        v28 = *(v4 + 80);
        OUTLINED_FUNCTION_5_8();
        outlined init with take of AssetDeliverySubsystemError(v0, v29 + *(v4 + 72) * v27);
        v21 += v22;
        --v16;
      }

      while (v16);
    }
  }

  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingModelCatalogLog.subsystemErrors.getter()
{
  OUTLINED_FUNCTION_18();
  v1 = type metadata accessor for AssetDeliverySubsystemError();
  v2 = OUTLINED_FUNCTION_0(v1);
  v39 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v38 = closure #1 in AppleIntelligenceReportingModelCatalogLog.subsystemErrors.getter();
  v13 = v12;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  v14 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_34_0(v11, 1, v14);
  if (v15)
  {

    outlined destroy of NSObject?(v11, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    v16 = AppleIntelligenceReportingAssetDeliveryEvent.errors.getter();
    (*(*(v14 - 8) + 8))(v11, v14);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_6_8(MEMORY[0x277D84F90]);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v17, 0);
      v19 = v40;
      v37 = type metadata accessor for AppleIntelligenceReportingGeneralError();
      OUTLINED_FUNCTION_4(v37);
      v21 = *(v20 + 16);
      v35 = v20 + 16;
      v36 = v21;
      v22 = v16 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
      v23 = *(v20 + 72);
      v33 = v16;
      v34 = v23;
      v24 = *MEMORY[0x277CEDF68];
      do
      {
        v36(v0 + *(v1 + 24), v22, v37);
        v25 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
        OUTLINED_FUNCTION_4(v25);
        (*(v26 + 104))(v0, v24);
        v27 = (v0 + *(v1 + 20));
        *v27 = v38;
        v27[1] = v13;
        v40 = v19;
        v29 = *(v19 + 16);
        v28 = *(v19 + 24);

        if (v29 >= v28 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1);
          v19 = v40;
        }

        *(v19 + 16) = v29 + 1;
        v30 = *(v39 + 80);
        OUTLINED_FUNCTION_5_8();
        outlined init with take of AssetDeliverySubsystemError(v0, v32 + *(v31 + 72) * v29);
        v22 += v34;
        --v17;
      }

      while (v17);
    }
  }

  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)()
{
  OUTLINED_FUNCTION_18();
  v72 = v1;
  v2 = type metadata accessor for AssetDeliverySubsystemError();
  v3 = OUTLINED_FUNCTION_0(v2);
  v74 = v4;
  v75 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = type metadata accessor for Date();
  v17 = OUTLINED_FUNCTION_0(v16);
  v69 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_9();
  v28 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  v36 = v35 - v34;
  v73 = closure #1 in AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)();
  v38 = v37;
  AppleIntelligenceReportingMobileAssetLog.event.getter();
  OUTLINED_FUNCTION_34_0(v0, 1, v28);
  if (v43)
  {

    v39 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v40 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v41 = v0;
LABEL_7:
    outlined destroy of NSObject?(v41, v39, v40);
    goto LABEL_8;
  }

  (*(v31 + 32))(v36, v0, v28);
  v42 = v36;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_34_0(v15, 1, v16);
  if (v43)
  {
    (*(v31 + 8))(v36, v28);

    v39 = &_s10Foundation4DateVSgMd;
    v40 = &_s10Foundation4DateVSgMR;
    v41 = v15;
    goto LABEL_7;
  }

  v44 = v69;
  (*(v69 + 32))(v23, v15, v16);
  v45 = static Date.> infix(_:_:)();
  if ((v45 & 1) == 0)
  {
    goto LABEL_17;
  }

  v46 = AppleIntelligenceReportingAssetDeliveryEvent.errors.getter();
  v47 = *(v46 + 16);
  if (!v47)
  {

LABEL_17:

    (*(v44 + 8))(v23, v16);
    (*(v31 + 8))(v42, v28);
    goto LABEL_8;
  }

  v64 = v42;
  v65 = v31;
  v66 = v23;
  v67 = v28;
  v68 = v16;
  v48 = OUTLINED_FUNCTION_6_8(MEMORY[0x277D84F90]);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v47, 0);
  v49 = v76;
  v72 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_4(v72);
  v71 = *(v50 + 16);
  v51 = *(v50 + 80);
  v63 = v46;
  v52 = v46 + ((v51 + 32) & ~v51);
  v70 = *(v50 + 72);
  v53 = *MEMORY[0x277CEDF50];
  do
  {
    v54 = v75;
    v71(v9 + *(v75 + 24), v52, v72);
    v55 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
    OUTLINED_FUNCTION_4(v55);
    (*(v56 + 104))(v9, v53);
    v57 = (v9 + *(v54 + 20));
    *v57 = v73;
    v57[1] = v38;
    v76 = v49;
    v59 = *(v49 + 16);
    v58 = *(v49 + 24);

    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_10_5();
      v49 = v76;
    }

    *(v49 + 16) = v59 + 1;
    v60 = *(v74 + 80);
    OUTLINED_FUNCTION_5_8();
    outlined init with take of AssetDeliverySubsystemError(v9, v62 + *(v61 + 72) * v59);
    v52 += v70;
    --v47;
  }

  while (v47);

  (*(v69 + 8))(v66, v68);
  (*(v65 + 8))(v64, v67);
LABEL_8:
  OUTLINED_FUNCTION_19();
}

void AssetDeliverySubsystemError.deepestUnderlyingError()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  v35 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v43 = (v42 - v41);
  v44 = type metadata accessor for AssetDeliverySubsystemError();
  v45 = v20 + *(v44 + 24);
  v46 = AppleIntelligenceReportingGeneralError.internalUnderlyingErrors.getter();
  specialized Collection.first.getter(v46);

  OUTLINED_FUNCTION_34_0(v32, 1, v35);
  if (v47)
  {
    outlined destroy of NSObject?(v32, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
    __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
LABEL_6:
    outlined destroy of NSObject?(v34, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v44);
    goto LABEL_7;
  }

  AppleIntelligenceReportingGeneralError.deepestUnderlyingError()(v34);
  (*(v38 + 8))(v32, v35);
  OUTLINED_FUNCTION_34_0(v34, 1, v35);
  if (v47)
  {
    goto LABEL_6;
  }

  v48 = *(v38 + 32);
  v48(v43, v34, v35);
  v49 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  OUTLINED_FUNCTION_4(v49);
  (*(v50 + 16))(v25, v23);
  v51 = (v23 + *(v44 + 20));
  v53 = *v51;
  v52 = v51[1];
  v48((v25 + *(v44 + 24)), v43, v35);
  v54 = (v25 + *(v44 + 20));
  *v54 = v53;
  v54[1] = v52;
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v44);

LABEL_7:
  OUTLINED_FUNCTION_19();
}

Swift::String __swiftcall AssetDeliverySubsystemError.toSubsystemOperation()()
{
  v6 = AppleIntelligenceAssetDeliveryEvent.Subsystem.description.getter();
  v7 = v1;
  MEMORY[0x22AAAE070](58, 0xE100000000000000);
  v2 = type metadata accessor for AssetDeliverySubsystemError();
  MEMORY[0x22AAAE070](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  v3 = v6;
  v4 = v7;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::UInt32_optional __swiftcall AssetDeliverySubsystemError.errorCode()()
{
  v1 = v0 + *(type metadata accessor for AssetDeliverySubsystemError() + 24);
  v2 = AppleIntelligenceReportingGeneralError.errorCode.getter();
  if ((v2 & 0x100000000) != 0)
  {
    v3 = 0;
  }

  else if ((v2 & 0x80000000) != 0)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      if (!v2)
      {
        __break(1u);
        return v2;
      }

      v3 = ~(-v2 - 1);
    }
  }

  else
  {
    v3 = v2;
  }

  return (v3 | ((HIDWORD(v2) & 1) << 32));
}

Swift::String_optional __swiftcall AssetDeliverySubsystemError.errorDomain()()
{
  v1 = v0 + *(type metadata accessor for AssetDeliverySubsystemError() + 24);
  v2 = AppleIntelligenceReportingGeneralError.domain.getter();
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::UInt32 __swiftcall AssetDeliverySubsystemError.errorHash()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_227FB1BA0;
  v1 = *(type metadata accessor for AssetDeliverySubsystemError() + 24);
  v2 = AppleIntelligenceReportingGeneralError.domain.getter();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *(v0 + 32) = v4;
  *(v0 + 40) = v5;
  if ((AppleIntelligenceReportingGeneralError.errorCode.getter() & 0x100000000) == 0)
  {
    Array._endMutation()();
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AAAE070](v6);

  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v7 = AppleIntelligenceReportingGeneralError.category.getter();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x22AAAE070](v7, v9);

  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  v14 = crc32Checksum(_:)(v13);

  return v14;
}

uint64_t AssetDeliverySubsystemError.subsystem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t AssetDeliverySubsystemError.operation.getter()
{
  v1 = (v0 + *(type metadata accessor for AssetDeliverySubsystemError() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AssetDeliverySubsystemError.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AssetDeliverySubsystemError() + 24);
  v4 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

unint64_t AppleIntelligenceAssetDeliveryEvent.Subsystem.description.getter()
{
  v2 = v0;
  v3 = 0x6C7070612E6D6F63;
  v4 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_9();
  (*(v7 + 16))(v1, v2, v4);
  v10 = (*(v7 + 88))(v1, v4);
  if (v10 == *MEMORY[0x277CEDF98])
  {
    return v3;
  }

  if (v10 == *MEMORY[0x277CEDFA0])
  {
    return 0xD000000000000012;
  }

  if (v10 == *MEMORY[0x277CEDF70])
  {
    v11 = 5;
    return v11 | 0xD000000000000012;
  }

  if (v10 == *MEMORY[0x277CEDF80])
  {
    OUTLINED_FUNCTION_2_9();
    return v12 + 17;
  }

  if (v10 == *MEMORY[0x277CEDF68])
  {
    OUTLINED_FUNCTION_2_9();
    return v13 | 4;
  }

  if (v10 == *MEMORY[0x277CEDF58])
  {
    v11 = 13;
    return v11 | 0xD000000000000012;
  }

  if (v10 == *MEMORY[0x277CEDF50])
  {
    OUTLINED_FUNCTION_2_9();
    return v15 + 3;
  }

  if (v10 == *MEMORY[0x277CEDF88])
  {
    OUTLINED_FUNCTION_2_9();
    return v16 + 21;
  }

  if (v10 == *MEMORY[0x277CEDF90])
  {
    return v3;
  }

  if (v10 == *MEMORY[0x277CEDF60])
  {
    OUTLINED_FUNCTION_2_9();
    return v17 + 6;
  }

  if (v10 == *MEMORY[0x277CEDF78])
  {
    OUTLINED_FUNCTION_2_9();
    return v18 + 2;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t AppleIntelligenceReportingGeneralError.deepestUnderlyingError()@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_9();
  v8 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = AppleIntelligenceReportingGeneralError.internalUnderlyingErrors.getter();
  specialized Collection.first.getter(v17);

  OUTLINED_FUNCTION_34_0(v2, 1, v8);
  if (v18)
  {
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
    (*(v11 + 16))(a1, v1, v8);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {
    v19 = (*(v11 + 32))(v16, v2, v8);
    AppleIntelligenceReportingGeneralError.deepestUnderlyingError()(v19);
    return (*(v11 + 8))(v16, v8);
  }
}

uint64_t AssetDeliverySubsystemError.init(subsystem:operation:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  OUTLINED_FUNCTION_4(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for AssetDeliverySubsystemError();
  v13 = (a5 + *(v12 + 20));
  *v13 = a2;
  v13[1] = a3;
  v14 = *(v12 + 24);
  v15 = type metadata accessor for AppleIntelligenceReportingGeneralError();
  OUTLINED_FUNCTION_4(v15);
  v17 = *(v16 + 32);

  return v17(a5 + v14, a4);
}

uint64_t type metadata accessor for AssetDeliverySubsystemError()
{
  result = type metadata singleton initialization cache for AssetDeliverySubsystemError;
  if (!type metadata singleton initialization cache for AssetDeliverySubsystemError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in AppleIntelligenceReportingModelCatalogLog.subsystemErrors.getter()
{
  v0 = 0x6E776F6E6B6E75;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.getter();
  v12 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState();
  if (__swift_getEnumTagSinglePayload(v4, 1, v12) == 1)
  {
    outlined destroy of NSObject?(v4, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
    v13 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v13);
  }

  else
  {
    AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.getter();
    (*(*(v12 - 8) + 8))(v4, v12);
    v14 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction();
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      outlined init with copy of AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction?(v11, v9);
      v16 = *(v14 - 8);
      v17 = (*(v16 + 88))(v9, v14);
      if (v17 == *MEMORY[0x277D1F5E8])
      {
        v0 = 0x6269726373627573;
      }

      else if (v17 == *MEMORY[0x277D1F5E0])
      {
        v0 = 0x7263736275736E75;
      }

      else
      {
        (*(v16 + 8))(v9, v14);
      }
    }
  }

  outlined destroy of NSObject?(v11, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  return v0;
}

uint64_t closure #1 in AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v37 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter();
  v24 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v24);
  outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  if (EnumTagSinglePayload != 1)
  {
    return 0x656C756465686373;
  }

  AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.getter();
  updated = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState();
  v27 = __swift_getEnumTagSinglePayload(v19, 1, updated);
  outlined destroy of NSObject?(v19, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
  if (v27 != 1)
  {
    return 0x6470557465737361;
  }

  AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.getter();
  v28 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState();
  v29 = __swift_getEnumTagSinglePayload(v15, 1, v28);
  outlined destroy of NSObject?(v15, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
  if (v29 != 1)
  {
    return 0x657275636573;
  }

  AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.getter();
  v30 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState();
  v31 = __swift_getEnumTagSinglePayload(v11, 1, v30);
  outlined destroy of NSObject?(v11, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
  if (v31 != 1)
  {
    return 0x6E4963696D6F7461;
  }

  AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.getter();
  v32 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState();
  v33 = __swift_getEnumTagSinglePayload(v7, 1, v32);
  outlined destroy of NSObject?(v7, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
  if (v33 != 1)
  {
    return 0xD000000000000010;
  }

  AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter();
  v34 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
  v35 = __swift_getEnumTagSinglePayload(v3, 1, v34);
  outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  if (v35 == 1)
  {
    return 0x6E776F6E6B6E75;
  }

  else
  {
    return 0x626F4A7465737361;
  }
}

uint64_t outlined init with take of AssetDeliverySubsystemError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDeliverySubsystemError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for AssetDeliverySubsystemError()
{
  result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent.Subsystem();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceReportingGeneralError();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_10_5()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v2, 1);
}

void *static CAEncoder.toCADictionary(_:)(void *a1)
{
  v3 = type metadata accessor for CAEncoder();
  v4 = swift_allocObject();
  CAEncoder.init()();
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11[3] = v3;
  OUTLINED_FUNCTION_1_7();
  v11[4] = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(v7, v8);
  v11[0] = v4;

  dispatch thunk of Encodable.encode(to:)();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  else
  {
    v9 = __swift_destroy_boxed_opaque_existential_0Tm(v11);
    v6 = (*(*v4 + 120))(v9);
  }

  return v6;
}

void *CAUnkeyedEncoding.__allocating_init(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_9();
  result = swift_allocObject();
  result[3] = MEMORY[0x277D84F90];
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t CAEncoder.unkeyedContainer()@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CAUnkeyedEncoding();
  v6 = swift_allocObject();
  v6[3] = MEMORY[0x277D84F90];
  v6[4] = 0;
  v6[2] = v2;
  a2[3] = v5;
  OUTLINED_FUNCTION_2_10();
  a2[4] = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(a1, v7);
  *a2 = v6;
}

uint64_t key path setter for CAEncoder.resultDictionary : CAEncoder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 128);

  return v3(v4);
}

uint64_t CAEncoder.resultDictionary.getter()
{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 16);
}

uint64_t CAEncoder.resultDictionary.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_88_0();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t key path setter for CAEncoder.codingPath : CAEncoder(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t CAEncoder.container<A>(keyedBy:)()
{
  type metadata accessor for CAKeyedEncoding();

  CAKeyedEncoding.__allocating_init(to:)(v0);
  v1 = OUTLINED_FUNCTION_3_8();
  return OUTLINED_FUNCTION_10_6(v1, v2);
}

uint64_t CAKeyedEncoding.__allocating_init(to:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t CAEncoder.__allocating_init()()
{
  OUTLINED_FUNCTION_6_9();
  v0 = swift_allocObject();
  CAEncoder.init()();
  return v0;
}

void *CAEncoder.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t CAEncoder.__deallocating_deinit()
{
  CAEncoder.deinit();
  v0 = OUTLINED_FUNCTION_6_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *CAEncoder.init()()
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v1 = MEMORY[0x277D84F90];
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  v0[3] = v1;
  type metadata accessor for CodingUserInfoKey();
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

void *CAUnkeyedEncoding.init(to:)(uint64_t a1)
{
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t key path setter for CAUnkeyedEncoding.codingPath : CAUnkeyedEncoding(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t CAUnkeyedEncoding.count.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_88_0();
  *(v1 + 32) = a1;
  return result;
}

uint64_t CAUnkeyedEncoding.nestedContainer<A>(keyedBy:)()
{
  type metadata accessor for CAKeyedEncoding();
  OUTLINED_FUNCTION_19_4();

  v0 = OUTLINED_FUNCTION_3_8();
  return OUTLINED_FUNCTION_10_6(v0, v1);
}

uint64_t CAUnkeyedEncoding.nestedUnkeyedContainer()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = type metadata accessor for CAUnkeyedEncoding();
  OUTLINED_FUNCTION_2_10();
  v3 = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(v1, v2);
  OUTLINED_FUNCTION_13_5(v3);
}

uint64_t CAUnkeyedEncoding.__deallocating_deinit()
{
  CAKeyedEncoding.deinit();
  v0 = OUTLINED_FUNCTION_6_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding()
{
  swift_getWitnessTable();
  return SingleValueEncodingContainer<>.encode(_:)();
}

{
  swift_getWitnessTable();
  return SingleValueEncodingContainer<>.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance CAUnkeyedEncoding()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance CAUnkeyedEncoding()
{
  OUTLINED_FUNCTION_0_8();
  return (*(v0 + 168))();
}

{
  return sub_227F458E0();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(char a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3, MEMORY[0x277D839B0]);
}

{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3);
}

{
  return sub_227F458F8(a1);
}

{
  return sub_227F45978(a1);
}

{
  return sub_227F45A18(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(uint64_t a1, uint64_t a2)
{
  v4[1] = a2;
  v4[0] = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v2 + 176))(v4, MEMORY[0x277D837D0]);
}

{
  return sub_227F45910(a1, a2);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(double a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3, MEMORY[0x277D839F8]);
}

{
  return sub_227F45928(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(float a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3, MEMORY[0x277D83A90]);
}

{
  return sub_227F45940(a1);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding()
{
  swift_getWitnessTable();
  return SingleValueEncodingContainer<>.encode(_:)();
}

{
  swift_getWitnessTable();
  return SingleValueEncodingContainer<>.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(__int16 a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3);
}

{
  return sub_227F45998(a1);
}

{
  return sub_227F45A38(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(int a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3);
}

{
  return sub_227F459B8(a1);
}

{
  return sub_227F45A58(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance CAUnkeyedEncoding(uint64_t a1)
{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 176))(&v3);
}

{
  return sub_227F45958(a1);
}

{
  return sub_227F459D8(a1);
}

{
  return sub_227F459F8(a1);
}

{
  return sub_227F45A78(a1);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(_:) in conformance CAUnkeyedEncoding()
{
  OUTLINED_FUNCTION_0_8();
  return (*(v0 + 176))();
}

{
  return sub_227F45A98();
}

uint64_t CAKeyedEncoding.init(to:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t CAUnkeyedEncoding.superEncoder()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *(a1 + 24) = type metadata accessor for CAEncoder();
  OUTLINED_FUNCTION_1_7();
  v5 = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(v3, v4);
  OUTLINED_FUNCTION_13_5(v5);
}

uint64_t CAKeyedEncoding.superEncoder(forKey:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *(a1 + 24) = type metadata accessor for CAEncoder();
  OUTLINED_FUNCTION_1_7();
  v5 = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(v3, v4);
  OUTLINED_FUNCTION_13_5(v5);
}

NSString __swiftcall NSString.__allocating_init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x22AAADFF0](countAndFlagsBits, object);

  v5 = [v3 initWithString_];

  return v5;
}

uint64_t CAKeyedEncoding.encode(_:forKey:)(Swift::Double a1)
{
  v3 = *v1;
  v4 = v1[2];
  OUTLINED_FUNCTION_8_10();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_8_10();
  v8 = *(v7 + 88);
  dispatch thunk of CodingKey.stringValue.getter();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  NSNumber.init(floatLiteral:)(a1);
  v9 = (*(*v4 + 136))(v14);
  v11 = v10;
  v12 = *v10;
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
  *v11 = v15;

  return v9(v14, 0);
}

uint64_t CAKeyedEncoding.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  return CAKeyedEncoding.encode(_:forKey:)(a1, a2, &selRef_initWithInteger_);
}

{
  return CAKeyedEncoding.encode(_:forKey:)(a1, a2, &selRef_initWithUnsignedLongLong_);
}

uint64_t CAKeyedEncoding.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EncodingError();
  swift_allocError();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd, &_syp_s13EncodingErrorO7ContextVtMR) + 48);
  v7[3] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D841A8], v5);
  return swift_willThrow();
}

uint64_t key path setter for CAKeyedEncoding.codingPath : <A>CAKeyedEncoding<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);

  return v3(v4);
}

uint64_t CAKeyedEncoding.nestedContainer<A>(keyedBy:forKey:)()
{
  type metadata accessor for CAKeyedEncoding();
  OUTLINED_FUNCTION_19_4();

  v0 = OUTLINED_FUNCTION_3_8();
  return OUTLINED_FUNCTION_10_6(v0, v1);
}

uint64_t CAKeyedEncoding.nestedUnkeyedContainer(forKey:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for CAUnkeyedEncoding();
  v5 = swift_allocObject();
  v5[3] = MEMORY[0x277D84F90];
  v5[4] = 0;
  v5[2] = v3;
  a1[3] = v4;
  OUTLINED_FUNCTION_2_10();
  a1[4] = lazy protocol witness table accessor for type CAEncoder and conformance CAEncoder(v6, v7);
  *a1 = v5;
}

uint64_t CAUnkeyedEncoding.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CAKeyedEncoding.__deallocating_deinit()
{
  CAKeyedEncoding.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>()
{
  return (*(**v0 + 144))();
}

{
  return (*(**v0 + 152))();
}

{
  return (*(**v0 + 160))();
}

{
  return (*(**v0 + 168))();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return (*(**v0 + 176))();
}

{
  return (*(**v0 + 184))();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for CAKeyedEncoding();
  return v0(v6, v4, v2, v10, v1);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(char a1)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 192))(&v3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(__int16 a1)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 192))(&v3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance CAKeyedEncoding<A>(a1);
}

{
  v3 = a1;
  OUTLINED_FUNCTION_0_8();
  return (*(v1 + 192))(&v3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeConditional<A>(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for CAKeyedEncoding();
  return KeyedEncodingContainerProtocol.encodeConditional<A>(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for CAKeyedEncoding();
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for CAKeyedEncoding();
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>()
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_22_5(v1, v2, v3);
  OUTLINED_FUNCTION_12_7();
  return v0();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_22_5(v1, v2, v3);
  OUTLINED_FUNCTION_12_7();
  return v0();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_22_5(v1, v2, v3);
  OUTLINED_FUNCTION_12_7();
  return v0();
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>();
}

{
  OUTLINED_FUNCTION_18_3();
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  v10 = type metadata accessor for CAKeyedEncoding();
  return v0(v6, v4 & 1, v2, v10, v1);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x277D84870]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x277D84890]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for CAKeyedEncoding();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:) in conformance CAKeyedEncoding<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for CAKeyedEncoding();
  return KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:)();
}

uint64_t type metadata accessor for NSObject(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of CAKeyedEncoding.encode(_:forKey:)()
{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 144))();
}

{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 152))();
}

{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 160))();
}

{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 168))();
}

{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 176))();
}

{
  OUTLINED_FUNCTION_1_2();
  return (*(v0 + 184))();
}

uint64_t OUTLINED_FUNCTION_3_8()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return MEMORY[0x2821FDBC0](va, v2, v3, a1);
}

void OUTLINED_FUNCTION_11_5()
{
  v2 = *v0;

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
}

uint64_t OUTLINED_FUNCTION_13_5(uint64_t a1)
{
  v1[4] = a1;
  *v1 = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  v2 = *(v0 + 16);

  return CAKeyedEncoding.__allocating_init(to:)(v2);
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  return type metadata accessor for CAKeyedEncoding();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV_G_AK0kL0Os5NeverOTg504_s36ghi12Processing19k77ProcessorC7process5startSayAA0E11InformationVG10Foundation4DateVSg_tYaKFAA0E4l7OAA0eL8m2V7N7VXEfU0_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InvocationStep(0);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v32[1] = v1;
  v43 = MEMORY[0x277D84F90];
  v34 = v8;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v12 = v43;
  result = specialized Dictionary.Values.startIndex.getter(v34);
  v16 = result;
  v17 = v34;
  v18 = 0;
  v19 = v34 + 64;
  v33 = v34 + 72;
  v35 = v11;
  v36 = v34 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v16 < 1 << *(v17 + 32))
    {
      v20 = v16 >> 6;
      if ((*(v19 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v17 + 36) != v14)
      {
        goto LABEL_24;
      }

      v41 = v15;
      v42 = v14;
      v21 = v10;
      v22 = v39;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(*(v17 + 56) + *(v40 + 72) * v16, v39);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v22, v21);
      swift_storeEnumTagMultiPayload();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v43 = v12;
      v23 = *(v12 + 16);
      if (v23 >= *(v12 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v12 = v43;
      }

      *(v12 + 16) = v23 + 1;
      result = outlined init with take of InvocationStepMetadata(v21, v12 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23);
      v24 = 1 << *(v17 + 32);
      if (v16 >= v24)
      {
        goto LABEL_25;
      }

      v10 = v21;
      v19 = v36;
      v25 = *(v36 + 8 * v20);
      if ((v25 & (1 << v16)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v17 + 36) != v42)
      {
        goto LABEL_27;
      }

      v26 = v25 & (-2 << (v16 & 0x3F));
      if (v26)
      {
        v24 = __clz(__rbit64(v26)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v20 << 6;
        v28 = v20 + 1;
        v29 = (v33 + 8 * v20);
        while (v28 < (v24 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = outlined consume of [UUID : InvocationStepMetadata.Partial].Index._Variant(v16, v42, v41 & 1);
            v17 = v34;
            v24 = __clz(__rbit64(v30)) + v27;
            goto LABEL_18;
          }
        }

        result = outlined consume of [UUID : InvocationStepMetadata.Partial].Index._Variant(v16, v42, v41 & 1);
        v17 = v34;
      }

LABEL_18:
      if (++v18 == v35)
      {
        return v12;
      }

      v15 = 0;
      v14 = *(v17 + 36);
      v16 = v24;
      if (v24 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for InvocationStepMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InvocationStep(0);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v11 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = *(a1 + 16);
  v47 = a1;
  v48 = v15;
  v41 = v10;
  v42 = a2;
  v43 = v13;
  while (v14 != v48)
  {
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v47 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v14, v10);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v14;
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v40;
      outlined init with take of InvocationStepMetadata(v10, v40);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v17, v13);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    }

    else
    {
      outlined init with take of InvocationStepMetadata(v10, v13);
    }

    v18 = *&v13[*(v44 + 48)];

    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    v19 = *(v18 + 16);
    if (v19)
    {
      v53 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = v53;
      v21 = (v18 + 40);
      do
      {
        v22 = *v21;
        v50 = *(v21 - 1);
        v51 = v22;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        swift_dynamicCast();
        v23 = v52;
        v53 = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          v39 = v52;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
          v23 = v39;
          v20 = v53;
        }

        *(v20 + 16) = v25 + 1;
        *(v20 + 16 * v25 + 32) = v23;
        v21 += 2;
        --v19;
      }

      while (v19);

      v10 = v41;
      a2 = v42;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v26 = *(v20 + 16);
    v27 = *a2;
    v28 = *(*a2 + 16);
    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v30 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v27;
    if (!isUniquelyReferenced_nonNull_native || (v32 = *(v27 + 24) >> 1, v32 < v29))
    {
      if (*(v27 + 16) > v29)
      {
        v33 = *(v27 + 16);
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v27 = v34;
      *a2 = v34;
      v32 = *(v34 + 24) >> 1;
    }

    if (*(v20 + 16))
    {
      if (v32 - *(v27 + 16) < v26)
      {
        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      swift_arrayInitWithCopy();

      v35 = v49;
      if (v26)
      {
        v36 = *(v27 + 16);
        v37 = __OFADD__(v36, v26);
        v38 = v36 + v26;
        if (v37)
        {
          goto LABEL_30;
        }

        *(v27 + 16) = v38;
      }
    }

    else
    {

      v35 = v49;
      if (v26)
      {
        goto LABEL_28;
      }
    }

    v14 = v35 + 1;
    *a2 = v27;
    v13 = v43;
  }
}

uint64_t InvocationStep.subsystem.getter()
{
  v3 = OUTLINED_FUNCTION_24_5();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for InvocationStep(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_5();
  v11 = OUTLINED_FUNCTION_74_0();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v2, v0);
    OUTLINED_FUNCTION_1_8();
    v15 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v15, v16);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v17 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v17, v18);
  }

  OUTLINED_FUNCTION_93_2(*(v1 + 28));
  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStep.stepID.getter()
{
  v3 = OUTLINED_FUNCTION_24_5();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for InvocationStep(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_5();
  v11 = OUTLINED_FUNCTION_74_0();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v2, v0);
    OUTLINED_FUNCTION_1_8();
    v15 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v15, v16);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v17 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v17, v18);
  }

  OUTLINED_FUNCTION_93_2(*(v1 + 32));
  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStep.error.getter()
{
  v2 = type metadata accessor for InvocationStep(0);
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for InvocationStepMetadata(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  v11 = OUTLINED_FUNCTION_120_1();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v11, v12);
  OUTLINED_FUNCTION_94_2();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v0, v1);
    v13 = *(v1 + *(v7 + 24));
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
  }

  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_137_1();
}

uint64_t InvocationStep.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_24_5();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_11();
  v8 = type metadata accessor for InvocationStep(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_135_0();
  v12 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_0_9();
  v16 = OUTLINED_FUNCTION_48();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v16, v17);
  OUTLINED_FUNCTION_130_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_22_6();
    outlined init with take of InvocationStepMetadata(v3, v2);
    OUTLINED_FUNCTION_1_8();
    v18 = OUTLINED_FUNCTION_123_0();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v18, v19);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v20 = OUTLINED_FUNCTION_157();
    outlined init with take of InvocationStepMetadata(v20, v21);
  }

  v22 = *(v12 + 36);
  v23 = type metadata accessor for Date();
  OUTLINED_FUNCTION_4(v23);
  (*(v24 + 16))(a1, v1 + v22);
  OUTLINED_FUNCTION_3_9();
  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

BOOL InvocationStep.isComplete.getter()
{
  v0 = type metadata accessor for InvocationStep(0);
  v1 = OUTLINED_FUNCTION_4(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  v4 = OUTLINED_FUNCTION_60_1();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v4, v5);
  OUTLINED_FUNCTION_51_0();
  v6 = swift_getEnumCaseMultiPayload() == 1;
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return v6;
}

uint64_t specialized deduplicate<A>(values:)(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = (isUniquelyReferenced_nonNull_native + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;
    v11[0] = v5;
    v11[1] = v4;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v10[2] = v11;

    if (specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v10, v3))
    {
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = *(v3 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v6 = *(v3 + 16);
      if (v6 >= *(v3 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v5;
      *(v7 + 40) = v4;
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  return v3;
}

void deduplicate<A>(values:)()
{
  OUTLINED_FUNCTION_18();
  v27 = v1;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_26();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_129_1(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_93_1();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v31 = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_116_2();
  v15 = Array.startIndex.getter();
  v30 = v15;
  v16 = OUTLINED_FUNCTION_116_2();
  if (v15 == MEMORY[0x22AAAE1B0](v16))
  {
LABEL_11:
    OUTLINED_FUNCTION_19();
    return;
  }

  v25 = v9;
  v28 = (v7 + 16);
  while (1)
  {
    OUTLINED_FUNCTION_116_2();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    v18 = *(v7 + 80);
    OUTLINED_FUNCTION_69();
    v20 = *(v7 + 16);
    v20(v14, (v5 + v19 + *(v7 + 72) * v15), v3);
LABEL_5:
    Array.formIndex(after:)(&v30);
    (*(v7 + 32))(v0, v14, v3);
    v29 = v31;
    type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Sequence<>.contains(_:)() & 1) == 0)
    {
      v20(v26, v0, v3);
      Array.append(_:)();
    }

    (*(v7 + 8))(v0, v3);
    v21 = OUTLINED_FUNCTION_116_2();
    v22 = MEMORY[0x22AAAE1B0](v21);
    v15 = v30;
    if (v30 == v22)
    {
      goto LABEL_11;
    }
  }

  OUTLINED_FUNCTION_67_0();
  v23 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v25 == 8)
  {
    v29 = v23;
    v20 = *v28;
    (*v28)(v14, &v29, v3);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t InvocationStepMetadata.Partial.clientRequestID.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = type metadata accessor for InvocationStepMetadata.Partial(v2);
  return outlined init with copy of UUID?(v1 + *(v3 + 20), v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t InvocationStepMetadata.Partial.modelManagerRequestID.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = type metadata accessor for InvocationStepMetadata.Partial(v2);
  return outlined init with copy of UUID?(v1 + *(v3 + 24), v0, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t InvocationStepMetadata.Partial.subsystem.getter()
{
  v0 = type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_86_2(*(v0 + 28));
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStepMetadata.Partial.stepID.getter()
{
  v0 = type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_86_2(*(v0 + 32));
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStepMetadata.Partial.startTime.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = *(type metadata accessor for InvocationStepMetadata.Partial(v2) + 36);
  v4 = type metadata accessor for Date();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t InvocationStepMetadata.Partial.useCaseID.getter()
{
  v0 = type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_86_2(*(v0 + 44));
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStepMetadata.Partial.additionalUseCases.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStepMetadata.Partial(0) + 48));
}

uint64_t InvocationStepMetadata.Partial.assetBundleID.getter()
{
  v0 = type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_86_2(*(v0 + 52));
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStepMetadata.Partial.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697461636F766E69 && a2 == 0xEC00000044496E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552746E65696C63 && a2 == 0xEF44497473657571;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000227FB5EC0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574737973627573 && a2 == 0xE90000000000006DLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x444970657473 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x8000000227FB5EE0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6E75427465737361 && a2 == 0xED00004449656C64)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

unint64_t InvocationStepMetadata.Partial.CodingKeys.stringValue.getter(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      result = 0x6552746E65696C63;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6574737973627573;
      break;
    case 4:
      result = 0x444970657473;
      break;
    case 5:
      result = 0x6D69547472617473;
      break;
    case 6:
      result = 0x737465737361;
      break;
    case 7:
      result = 0x4965736143657375;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6E75427465737361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvocationStepMetadata.Partial.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InvocationStepMetadata.Partial.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance InvocationStepMetadata.Partial.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = InvocationStepMetadata.Partial.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationStepMetadata.Partial.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationStepMetadata.Partial.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void InvocationStepMetadata.Partial.encode(to:)()
{
  OUTLINED_FUNCTION_99_2();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_9();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  OUTLINED_FUNCTION_92_2();
  lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys();
  OUTLINED_FUNCTION_85_2();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_6();
  lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
  OUTLINED_FUNCTION_12_8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v0)
  {
    v13 = type metadata accessor for InvocationStepMetadata.Partial(0);
    v14 = v13[5];
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v13[6];
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_139_1(v13[7]);
    OUTLINED_FUNCTION_41(3);
    OUTLINED_FUNCTION_139_1(v13[8]);
    OUTLINED_FUNCTION_41(4);
    v16 = v13[9];
    type metadata accessor for Date();
    OUTLINED_FUNCTION_19_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v17, v18);
    OUTLINED_FUNCTION_34_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[10]);
    OUTLINED_FUNCTION_136_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_68_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_139_1(v13[11]);
    OUTLINED_FUNCTION_41(7);
    OUTLINED_FUNCTION_77_2(v13[12]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_139_1(v13[13]);
    OUTLINED_FUNCTION_41(9);
  }

  v19 = *(v5 + 8);
  v20 = OUTLINED_FUNCTION_120_1();
  v21(v20);
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_98_1();
}

void InvocationStepMetadata.Partial.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99_2();
  v15 = v14;
  v64 = v16;
  v17 = type metadata accessor for Date();
  v18 = OUTLINED_FUNCTION_0(v17);
  v66 = v19;
  v67 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = OUTLINED_FUNCTION_13(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_13_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_141_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_93_1();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v68);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_27_3();
  v70 = type metadata accessor for InvocationStepMetadata.Partial(v37);
  v38 = OUTLINED_FUNCTION_4(v70);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1_0();
  v69 = v42 - v41;
  v43 = v15[3];
  v44 = v15[4];
  v45 = OUTLINED_FUNCTION_113_2();
  __swift_project_boxed_opaque_existential_1(v45, v46);
  lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys();
  v65 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v47, v48);
    OUTLINED_FUNCTION_63_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v12, v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_63_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v13, v69 + v70[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_63_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v31, v69 + v70[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    OUTLINED_FUNCTION_72_0(3);
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = (v69 + v70[7]);
    *v50 = v49;
    v50[1] = v51;
    OUTLINED_FUNCTION_72_0(4);
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = (v69 + v70[8]);
    *v53 = v52;
    v53[1] = v54;
    LOBYTE(a10) = 5;
    OUTLINED_FUNCTION_19_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v55, v56);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v66 + 32))(v69 + v70[9], v24, v67);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_136_1();
    OUTLINED_FUNCTION_62_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_138_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v69 + v70[10]) = a10;
    OUTLINED_FUNCTION_72_0(7);
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = (v69 + v70[11]);
    *v59 = v58;
    v59[1] = v60;
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_138_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v69 + v70[12]) = a10;
    OUTLINED_FUNCTION_72_0(9);
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_89_2();
    v61 = OUTLINED_FUNCTION_132_0();
    v62(v61);
    v63 = (v69 + v70[13]);
    *v63 = v57;
    v63[1] = v65;
    OUTLINED_FUNCTION_1_8();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v69, v64);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    OUTLINED_FUNCTION_3_9();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_98_1();
}

uint64_t InvocationStepMetadata.Partial.init(invocationID:clientRequestID:modelManagerRequestID:subsystem:stepID:startTime:assets:useCaseID:additionalUseCases:assetBundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  outlined init with take of UUID?(a1, a9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = OUTLINED_FUNCTION_74_0();
  outlined init with take of UUID?(a2, a9 + *(v23 + 20), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of UUID?(a3, a9 + v15[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = (a9 + v15[7]);
  *v24 = a4;
  v24[1] = a5;
  v25 = (a9 + v15[8]);
  *v25 = a6;
  v25[1] = a7;
  v26 = v15[9];
  v27 = type metadata accessor for Date();
  OUTLINED_FUNCTION_4(v27);
  result = (*(v28 + 32))(a9 + v26, a8);
  *(a9 + v15[10]) = a10;
  v30 = (a9 + v15[11]);
  *v30 = a11;
  v30[1] = a12;
  *(a9 + v15[12]) = a13;
  v31 = (a9 + v15[13]);
  *v31 = a14;
  v31[1] = a15;
  return result;
}

uint64_t InvocationStepMetadata.endTime.getter()
{
  v2 = OUTLINED_FUNCTION_152();
  v3 = *(type metadata accessor for InvocationStepMetadata(v2) + 20);
  v4 = type metadata accessor for Date();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t InvocationStepMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t InvocationStepMetadata.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C616974726170;
  }

  if (a1 == 1)
  {
    return 0x656D6954646E65;
  }

  return 0x726F727265;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvocationStepMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InvocationStepMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance InvocationStepMetadata.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = InvocationStepMetadata.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationStepMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationStepMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvocationStepMetadata.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_9();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  OUTLINED_FUNCTION_92_2();
  lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys();
  OUTLINED_FUNCTION_85_2();
  type metadata accessor for InvocationStepMetadata.Partial(0);
  OUTLINED_FUNCTION_21_5();
  lazy protocol witness table accessor for type UUID and conformance UUID(v13, v14);
  OUTLINED_FUNCTION_34_1();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = type metadata accessor for InvocationStepMetadata(0);
    v16 = *(v15 + 20);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_19_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v17, v18);
    OUTLINED_FUNCTION_34_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = *(v3 + *(v15 + 24));
    type metadata accessor for GeneralAppleIntelligenceError();
    OUTLINED_FUNCTION_20_4();
    lazy protocol witness table accessor for type UUID and conformance UUID(v19, v20);
    OUTLINED_FUNCTION_34_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v21 = *(v7 + 8);
  v22 = OUTLINED_FUNCTION_120_1();
  return v23(v22);
}

void InvocationStepMetadata.init(from:)()
{
  OUTLINED_FUNCTION_99_2();
  v3 = v2;
  v41 = v4;
  v5 = type metadata accessor for Date();
  v6 = OUTLINED_FUNCTION_0(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_129_1(v18 - v17);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing22InvocationStepMetadataV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v45);
  v42 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_59_0();
  v24 = type metadata accessor for InvocationStepMetadata(v23);
  v25 = OUTLINED_FUNCTION_4(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = v3[3];
  v32 = v3[4];
  v33 = OUTLINED_FUNCTION_113_1();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_21_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v35, v36);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_2_11();
    outlined init with take of InvocationStepMetadata(v44, v30);
    OUTLINED_FUNCTION_19_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v37, v38);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v43 + 32))(v30 + *(v24 + 20), v12, v5);
    type metadata accessor for GeneralAppleIntelligenceError();
    OUTLINED_FUNCTION_20_4();
    lazy protocol witness table accessor for type UUID and conformance UUID(v39, v40);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v42 + 8))(v1, v45);
    *(v30 + *(v24 + 24)) = v46;
    OUTLINED_FUNCTION_18_4();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v30, v41);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_26_2();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_98_1();
}

uint64_t InvocationStepMetadata.init(partial:endTime:error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_2_11();
  outlined init with take of InvocationStepMetadata(v6, v7);
  v8 = type metadata accessor for InvocationStepMetadata(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Date();
  OUTLINED_FUNCTION_4(v10);
  result = (*(v11 + 32))(a3 + v9, a1);
  *(a3 + *(v8 + 24)) = a2;
  return result;
}

uint64_t InvocationStep.partial.getter()
{
  v2 = OUTLINED_FUNCTION_24_5();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  v5 = type metadata accessor for InvocationStep(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  v9 = OUTLINED_FUNCTION_116_2();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v9, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v1, v0);
    OUTLINED_FUNCTION_1_8();
    v11 = OUTLINED_FUNCTION_43_1();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v11, v12);
    OUTLINED_FUNCTION_67_0();
    return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v14 = OUTLINED_FUNCTION_51_0();
    return outlined init with take of InvocationStepMetadata(v14, v15);
  }
}

uint64_t InvocationStep.invocationID.getter()
{
  v2 = OUTLINED_FUNCTION_24_5();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  v5 = type metadata accessor for InvocationStep(0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_5();
  v9 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v1, v0);
    OUTLINED_FUNCTION_1_8();
    v13 = OUTLINED_FUNCTION_60_1();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v13, v14);
    OUTLINED_FUNCTION_67_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v15 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v15, v16);
  }

  v17 = OUTLINED_FUNCTION_51_0();
  outlined init with copy of UUID?(v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_9();
  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

uint64_t InvocationStep.clientRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_24_5();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  v8 = type metadata accessor for InvocationStep(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_135_0();
  v12 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  v16 = OUTLINED_FUNCTION_48();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v16, v17);
  OUTLINED_FUNCTION_130_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_22_6();
    outlined init with take of InvocationStepMetadata(v3, v1);
    OUTLINED_FUNCTION_1_8();
    v18 = OUTLINED_FUNCTION_60_1();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v18, v19);
    OUTLINED_FUNCTION_113_2();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    outlined init with take of InvocationStepMetadata(v3, v2);
  }

  outlined init with copy of UUID?(v2 + *(v12 + 20), a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_3_9();
  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

uint64_t InvocationStep.modelManagerRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_24_5();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  v8 = type metadata accessor for InvocationStep(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_135_0();
  v12 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  v16 = OUTLINED_FUNCTION_48();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v16, v17);
  OUTLINED_FUNCTION_130_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_22_6();
    outlined init with take of InvocationStepMetadata(v3, v1);
    OUTLINED_FUNCTION_1_8();
    v18 = OUTLINED_FUNCTION_60_1();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v18, v19);
    OUTLINED_FUNCTION_113_2();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    outlined init with take of InvocationStepMetadata(v3, v2);
  }

  outlined init with copy of UUID?(v2 + *(v12 + 24), a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_3_9();
  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

uint64_t InvocationStep.assets.getter()
{
  v4 = OUTLINED_FUNCTION_24_5();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OUTLINED_FUNCTION_13_6();
  v8 = type metadata accessor for InvocationStep(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_5();
  v12 = OUTLINED_FUNCTION_74_0();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v3, v0);
    OUTLINED_FUNCTION_1_8();
    v16 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v16, v17);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v18 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v18, v19);
  }

  v20 = *(v2 + *(v1 + 40));

  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_137_1();
}

uint64_t InvocationStep.useCaseID.getter()
{
  v3 = OUTLINED_FUNCTION_24_5();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for InvocationStep(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_5();
  v11 = OUTLINED_FUNCTION_74_0();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v2, v0);
    OUTLINED_FUNCTION_1_8();
    v15 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v15, v16);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v17 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v17, v18);
  }

  OUTLINED_FUNCTION_93_2(*(v1 + 44));
  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStep.additionalUseCases.getter()
{
  v4 = OUTLINED_FUNCTION_24_5();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = OUTLINED_FUNCTION_13_6();
  v8 = type metadata accessor for InvocationStep(v7);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_5();
  v12 = OUTLINED_FUNCTION_74_0();
  v13 = OUTLINED_FUNCTION_4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v3, v0);
    OUTLINED_FUNCTION_1_8();
    v16 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v16, v17);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v18 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v18, v19);
  }

  v20 = *(v2 + *(v1 + 48));

  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_137_1();
}

uint64_t InvocationStep.assetBundleID.getter()
{
  v3 = OUTLINED_FUNCTION_24_5();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = OUTLINED_FUNCTION_13_6();
  v7 = type metadata accessor for InvocationStep(v6);
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_5();
  v11 = OUTLINED_FUNCTION_74_0();
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_120_2();
  OUTLINED_FUNCTION_48();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_5_9();
    outlined init with take of InvocationStepMetadata(v2, v0);
    OUTLINED_FUNCTION_1_8();
    v15 = OUTLINED_FUNCTION_47_2();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v15, v16);
    OUTLINED_FUNCTION_123_2();
  }

  else
  {
    OUTLINED_FUNCTION_2_11();
    v17 = OUTLINED_FUNCTION_140();
    outlined init with take of InvocationStepMetadata(v17, v18);
  }

  OUTLINED_FUNCTION_93_2(*(v1 + 52));
  OUTLINED_FUNCTION_3_9();
  _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationStep.endTime.getter()
{
  v3 = OUTLINED_FUNCTION_152();
  v4 = type metadata accessor for InvocationStep(v3);
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_11();
  v8 = type metadata accessor for InvocationStepMetadata(0);
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_90_2();
  OUTLINED_FUNCTION_0_9();
  v12 = OUTLINED_FUNCTION_140();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v12, v13);
  OUTLINED_FUNCTION_105_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_22_6();
    outlined init with take of InvocationStepMetadata(v2, v1);
    v14 = *(v8 + 20);
    v15 = type metadata accessor for Date();
    OUTLINED_FUNCTION_4(v15);
    (*(v16 + 16))(v0, v1 + v14, v15);
    OUTLINED_FUNCTION_113_2();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    OUTLINED_FUNCTION_55_1();
  }

  else
  {
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    type metadata accessor for Date();
    v17 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t InvocationStep.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974726170 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int InvocationStep.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t InvocationStep.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x6C616974726170;
  }
}

uint64_t InvocationStep.CompleteCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
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

Swift::Int InvocationStep.CompleteCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvocationStep.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InvocationStep.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance InvocationStep.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = InvocationStep.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationStep.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance InvocationStep.CompleteCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = InvocationStep.CompleteCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationStep.CompleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationStep.CompleteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InvocationStep.CompleteCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationStep.PartialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationStep.PartialCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void InvocationStep.encode(to:)()
{
  OUTLINED_FUNCTION_99_2();
  v65 = v2;
  v63 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO18CompleteCodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO18CompleteCodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  v7 = OUTLINED_FUNCTION_0(v6);
  v61 = v8;
  v62 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_129_1(v12);
  v58 = type metadata accessor for InvocationStepMetadata(0);
  v13 = OUTLINED_FUNCTION_4(v58);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v59 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO17PartialCodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO17PartialCodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  v19 = OUTLINED_FUNCTION_0(v18);
  v56 = v20;
  v57 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_27_3();
  v55 = type metadata accessor for InvocationStepMetadata.Partial(v24);
  v25 = OUTLINED_FUNCTION_4(v55);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v31 = type metadata accessor for InvocationStep(0);
  v32 = OUTLINED_FUNCTION_4(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_8_9();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v64);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  v41 = &v54 - v40;
  v43 = *(v5 + 24);
  v42 = *(v5 + 32);
  OUTLINED_FUNCTION_92_2();
  lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_0_9();
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v63, v3);
  v44 = (v36 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of InvocationStepMetadata(v3, v59);
    lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys();
    v45 = v60;
    v46 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    OUTLINED_FUNCTION_54_2();
    lazy protocol witness table accessor for type UUID and conformance UUID(v47, v48);
    v49 = v62;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v61 + 8))(v45, v49);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    (*v44)(v41, v46);
  }

  else
  {
    outlined init with take of InvocationStepMetadata(v3, v30);
    lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys();
    v50 = v64;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    OUTLINED_FUNCTION_21_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v51, v52);
    v53 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v0, v53);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    (*v44)(v41, v50);
  }

  OUTLINED_FUNCTION_98_1();
}

void InvocationStep.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_99_2();
  a23 = v26;
  a24 = v27;
  v106 = v24;
  v29 = v28;
  v98 = v30;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO18CompleteCodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO18CompleteCodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v105);
  v101 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_55_0();
  v102 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO17PartialCodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO17PartialCodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  v37 = OUTLINED_FUNCTION_0(v36);
  v99 = v38;
  v100 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_129_1(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  v44 = OUTLINED_FUNCTION_0(v43);
  v103 = v45;
  v104 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  v49 = OUTLINED_FUNCTION_59_0();
  v50 = type metadata accessor for InvocationStep(v49);
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_13_0();
  v56 = v54 - v55;
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v94 - v59;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_103_2();
  v61 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys();
  v62 = v106;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v62)
  {
    goto LABEL_8;
  }

  v94 = v56;
  v95 = v60;
  v96 = v25;
  v97 = v50;
  v106 = v29;
  v63 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLO_Tt1g5(v63, 0);
  if (v65 == v66 >> 1)
  {
LABEL_7:
    v77 = v97;
    v78 = type metadata accessor for DecodingError();
    swift_allocError();
    v80 = v79;
    v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v80 = v77;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D84160], v78);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_117_2();
    v82 = OUTLINED_FUNCTION_134_1();
    v83(v82);
    v29 = v106;
LABEL_8:
    v84 = v29;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    OUTLINED_FUNCTION_98_1();
    return;
  }

  if (v65 < (v66 >> 1))
  {
    a10 = *(v64 + v65);
    specialized ArraySlice.subscript.getter(v65 + 1, v66 >> 1, started, v64, v65, v66);
    v69 = v68;
    v71 = v70;
    swift_unknownObjectRelease();
    if (v69 == v71 >> 1)
    {
      if (a10)
      {
        a14 = 1;
        lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys();
        OUTLINED_FUNCTION_122_2(&unk_283B55568, &a14);
        v72 = v96;
        type metadata accessor for InvocationStepMetadata(0);
        OUTLINED_FUNCTION_54_2();
        lazy protocol witness table accessor for type UUID and conformance UUID(v73, v74);
        v75 = v94;
        OUTLINED_FUNCTION_144_0();
        v76 = v103;
        swift_unknownObjectRelease();
        v87 = OUTLINED_FUNCTION_64_2();
        v88(v87);
        v89 = *(v76 + 8);
      }

      else
      {
        a13 = 0;
        lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys();
        OUTLINED_FUNCTION_122_2(&unk_283B554D8, &a13);
        v72 = v96;
        type metadata accessor for InvocationStepMetadata.Partial(0);
        OUTLINED_FUNCTION_21_5();
        lazy protocol witness table accessor for type UUID and conformance UUID(v85, v86);
        v75 = v95;
        OUTLINED_FUNCTION_144_0();
        swift_unknownObjectRelease();
        v92 = OUTLINED_FUNCTION_64_2();
        v93(v92);
        OUTLINED_FUNCTION_117_2();
      }

      v90 = OUTLINED_FUNCTION_130_0();
      v91(v90);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_57_1();
      outlined init with take of InvocationStepMetadata(v75, v72);
      outlined init with take of InvocationStepMetadata(v72, v98);
      v84 = v106;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t InvocationInformation.id.getter()
{
  OUTLINED_FUNCTION_152();
  v0 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_4(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_62();

  return v4(v3);
}

uint64_t InvocationInformation.subsystemsInvolved.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationInformation(0) + 20));
}

uint64_t InvocationStepMetadata.error.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));
}

uint64_t InvocationInformation.assets.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationInformation(0) + 28));
}

uint64_t InvocationInformation.useCaseIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationInformation(0) + 32));
}

uint64_t InvocationInformation.assetBundleIDS.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationInformation(0) + 36));
}

uint64_t InvocationStepMetadata.Partial.assets.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));
}

uint64_t InvocationInformation.steps.setter()
{
  v2 = OUTLINED_FUNCTION_133_1();
  v3 = *(type metadata accessor for InvocationInformation(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

Swift::Void (__swiftcall *InvocationInformation.steps.modify())()
{
  v0 = OUTLINED_FUNCTION_133_1();
  v1 = *(type metadata accessor for InvocationInformation(v0) + 40);
  return Array._endMutation();
}

uint64_t InvocationInformation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000227FB5F00 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4965736143657375 && a2 == 0xEA00000000007344;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E75427465737361 && a2 == 0xEE00534449656C64;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x7370657473 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t InvocationInformation.CodingKeys.stringValue.getter(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x726F727265;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0x4965736143657375;
      break;
    case 5:
      result = 0x6E75427465737361;
      break;
    case 6:
      result = 0x7370657473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance InvocationInformation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = InvocationInformation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance InvocationInformation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = InvocationInformation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationInformation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationInformation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void InvocationInformation.encode(to:)()
{
  OUTLINED_FUNCTION_99_2();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing21InvocationInformationV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing21InvocationInformationV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_9();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  OUTLINED_FUNCTION_92_2();
  lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys();
  OUTLINED_FUNCTION_85_2();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_4_6();
  lazy protocol witness table accessor for type UUID and conformance UUID(v11, v12);
  OUTLINED_FUNCTION_34_1();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v13 = type metadata accessor for InvocationInformation(0);
    OUTLINED_FUNCTION_77_2(v13[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_68_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[6]);
    type metadata accessor for GeneralAppleIntelligenceError();
    OUTLINED_FUNCTION_20_4();
    lazy protocol witness table accessor for type UUID and conformance UUID(v14, v15);
    OUTLINED_FUNCTION_34_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[7]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[8]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[9]);
    OUTLINED_FUNCTION_12_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_77_2(v13[10]);
    OUTLINED_FUNCTION_136_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMd, &_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMR);
    lazy protocol witness table accessor for type [InvocationStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [InvocationStep] and conformance <A> [A], &lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep);
    OUTLINED_FUNCTION_34_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v16 = *(v5 + 8);
  v17 = OUTLINED_FUNCTION_120_1();
  v18(v17);
  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_98_1();
}

void InvocationInformation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99_2();
  v12 = v11;
  v53 = v13;
  v14 = type metadata accessor for UUID();
  v15 = OUTLINED_FUNCTION_0(v14);
  v55 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing21InvocationInformationV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing21InvocationInformationV10CodingKeys33_C4F9934033535404946766D45806A52FLLOGMR);
  OUTLINED_FUNCTION_0(v19);
  v54 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_27_3();
  v56 = type metadata accessor for InvocationInformation(v24);
  v25 = OUTLINED_FUNCTION_4(v56);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_0();
  v30 = v29 - v28;
  v32 = v12[3];
  v31 = v12[4];
  v33 = OUTLINED_FUNCTION_113_1();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    LOBYTE(a10) = 0;
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v35, v36);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = *(v55 + 32);
    v38 = OUTLINED_FUNCTION_124_0();
    v39(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    OUTLINED_FUNCTION_62_1(&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_127_1();
    *(v30 + *(v40 + 20)) = v41;
    type metadata accessor for GeneralAppleIntelligenceError();
    OUTLINED_FUNCTION_20_4();
    lazy protocol witness table accessor for type UUID and conformance UUID(v42, v43);
    OUTLINED_FUNCTION_75_0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_127_1();
    *(v30 + *(v44 + 24)) = v45;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_127_1();
    *(v30 + *(v46 + 28)) = v47;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_127_1();
    *(v30 + *(v48 + 32)) = v49;
    OUTLINED_FUNCTION_33_2();
    *(v30 + *(v56 + 36)) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMd, &_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMR);
    OUTLINED_FUNCTION_136_1();
    lazy protocol witness table accessor for type [InvocationStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [InvocationStep] and conformance <A> [A], &lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep);
    OUTLINED_FUNCTION_75_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = *(v54 + 8);
    v51 = OUTLINED_FUNCTION_43_1();
    v52(v51);
    *(v30 + *(v56 + 40)) = a10;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v30, v53);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  OUTLINED_FUNCTION_114_2();
  OUTLINED_FUNCTION_98_1();
}

int *InvocationInformation.init(id:subsystemsInvolved:error:assets:useCaseIDs:assetBundleIDS:steps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_4(v16);
  (*(v17 + 32))(a8, a1);
  result = type metadata accessor for InvocationInformation(0);
  *(a8 + result[5]) = a2;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = a4;
  *(a8 + result[8]) = a5;
  *(a8 + result[9]) = a6;
  *(a8 + result[10]) = a7;
  return result;
}

uint64_t InvocationProcessor.__allocating_init(biomeEventReader:)(uint64_t *a1, void (*a2)(uint64_t))
{
  v5 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_26();
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_135_0();
  (*(v9 + 16))(v2);
  v10 = OUTLINED_FUNCTION_157();
  a2(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return OUTLINED_FUNCTION_137_1();
}

void InvocationProcessor.addUUIDMapping(into:key:value:)()
{
  OUTLINED_FUNCTION_18();
  v90 = v3;
  v91 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v87 = v11;
  OUTLINED_FUNCTION_10();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v83 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_141_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_93_1();
  v17 = type metadata accessor for UUID();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  v86 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  v88 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_96();
  v85 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_96();
  v89 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_96();
  v33 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_103_2();
  outlined init with copy of UUID?(v6, v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_25(v1);
  if (v37)
  {
    v35 = v1;
LABEL_7:
    outlined destroy of NSObject?(v35, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_13;
  }

  v36 = v20[4];
  v36(v0, v1, v17);
  outlined init with copy of UUID?(v91, v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_25(v2);
  if (v37)
  {
    v38 = v20[1];
    v39 = OUTLINED_FUNCTION_157();
    v40(v39);
    v35 = v2;
    goto LABEL_7;
  }

  v41 = v33;
  v36(v33, v2, v17);
  v42 = v17;
  specialized Dictionary.subscript.getter(*v90, v15);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44 = v20[2];
    v45 = OUTLINED_FUNCTION_158();
    v44(v45);
    v46 = OUTLINED_FUNCTION_124_0();
    v44(v46);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v17);
    specialized Dictionary.subscript.setter();
    v50 = v20[1];
    v50(v33, v42);
LABEL_12:
    v54 = OUTLINED_FUNCTION_111_2();
    (v50)(v54);
    goto LABEL_13;
  }

  v51 = v89;
  v36(v89, v15, v17);
  OUTLINED_FUNCTION_4_6();
  lazy protocol witness table accessor for type UUID and conformance UUID(v52, v53);
  OUTLINED_FUNCTION_124_0();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v50 = v20[1];
    v50(v51, v42);
    v50(v41, v42);
    goto LABEL_12;
  }

  v55 = v17;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  __swift_project_value_buffer(v56, static Logging.general);
  v57 = v20[2];
  v58 = v85;
  v57(v85, v0, v17);
  v57(v88, v51, v17);
  v59 = v86;
  v57(v86, v41, v17);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_84();
    v91 = swift_slowAlloc();
    v92 = v91;
    *v62 = 136315650;
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v63, v64);
    LODWORD(v87) = v61;
    v84 = v60;
    OUTLINED_FUNCTION_47_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v20[1];
    v65(v58, v55);
    v66 = OUTLINED_FUNCTION_67_0();
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v68);

    *(v62 + 4) = v69;
    v90 = v41;
    *(v62 + 12) = 2080;
    v70 = v88;
    OUTLINED_FUNCTION_47_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    v65(v70, v55);
    v71 = OUTLINED_FUNCTION_67_0();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v73);

    *(v62 + 14) = v74;
    *(v62 + 22) = 2080;
    OUTLINED_FUNCTION_47_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    v75 = OUTLINED_FUNCTION_120_1();
    (v65)(v75);
    v76 = OUTLINED_FUNCTION_60_1();
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v78);

    *(v62 + 24) = v79;
    v80 = v84;
    _os_log_impl(&dword_227F43000, v84, v87, "Two IDs found for one key: %s: %s != %s ", v62, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v65(v89, v55);
    v65(v90, v55);
    v65(v0, v55);
  }

  else
  {

    v81 = v20[1];
    v81(v59, v55);
    v81(v88, v55);
    v81(v58, v55);
    v81(v51, v55);
    v81(v41, v55);
    v82 = OUTLINED_FUNCTION_134_1();
    (v81)(v82);
  }

LABEL_13:
  OUTLINED_FUNCTION_19();
}