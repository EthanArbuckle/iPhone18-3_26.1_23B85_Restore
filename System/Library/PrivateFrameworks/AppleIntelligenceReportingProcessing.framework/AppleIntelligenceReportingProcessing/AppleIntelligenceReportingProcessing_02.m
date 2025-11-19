void AssetDeliveryState.handleModelCatalogEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v172 = v1;
  OUTLINED_FUNCTION_142();
  v5 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v6 = OUTLINED_FUNCTION_0(v5);
  v179 = v7;
  v180 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38_0();
  v174 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_55_0();
  v170 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
  v21 = OUTLINED_FUNCTION_13(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v171 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_38_0();
  v173 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_59_0();
  v31 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState();
  v32 = OUTLINED_FUNCTION_0(v31);
  v175 = v33;
  v176 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v177 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_93_0();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v41);
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_134();
  v45 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13_0();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_38_0();
  v178 = v56;
  v181 = v1;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  v57 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v58 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v58, v59, v57);
  if (v69)
  {
    v60 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v61 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v62 = v2;
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_31_1(v57);
    v64 = *(v63 + 8);
    v65 = OUTLINED_FUNCTION_105_0();
    v66(v65);
    v67 = OUTLINED_FUNCTION_70_0();
    v70 = OUTLINED_FUNCTION_34_0(v67, v68, v45);
    if (!v69)
    {
      MEMORY[0x28223BE20](v70);
      v168[-2] = v0;
      v80 = v45;
      static Buildable.with(_:)();
      v168[0] = *(v48 + 8);
      v168[1] = v48 + 8;
      (v168[0])(v0, v45);
      OUTLINED_FUNCTION_81_0();
      v81 = v178;
      v169 = v80;
      v82(v178, v4, v80);
      v83 = v181;
      AppleIntelligenceReportingModelCatalogLog.modelCatalogSubscriptionEventState.getter();
      v84 = OUTLINED_FUNCTION_66();
      v85 = v176;
      OUTLINED_FUNCTION_34_0(v84, v86, v176);
      if (v87)
      {
        outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateVSgMd, "ZG");
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v88 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v88, static Logging.general);
        v90 = v179;
        v89 = v180;
        v91 = v174;
        (*(v179 + 16))(v174, v83, v180);
        v92 = Logger.logObject.getter();
        v93 = static os_log_type_t.fault.getter();
        if (OUTLINED_FUNCTION_36_0(v93))
        {
          v94 = OUTLINED_FUNCTION_76_0();
          v95 = OUTLINED_FUNCTION_84();
          v183[0] = v95;
          *v94 = 136315138;
          v96 = AppleIntelligenceReportingModelCatalogLog.json()();
          if (v97)
          {
            OUTLINED_FUNCTION_45_0();
            object = 0x8000000227FB5910;
          }

          else
          {
            object = v96._object;
          }

          (*(v90 + 8))(v174, v89);
          v158 = OUTLINED_FUNCTION_82_0();
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, object, v159);

          *(v94 + 4) = v160;
          _os_log_impl(&dword_227F43000, v92, v3, "Received model catalog asset log event missing subscription state: %s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v95);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          (*(v90 + 8))(v91, v89);
        }

        v161 = v81;
      }

      else
      {
        (*(v175 + 32))(v177, v3, v85);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v106 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v106, static Logging.general);
        v107 = *(v48 + 16);
        v108 = OUTLINED_FUNCTION_86_0();
        v109 = v169;
        v110(v108);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_36_0(v112))
        {
          v113 = v109;
          v114 = OUTLINED_FUNCTION_76_0();
          v115 = OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_130(v115);
          *v114 = 136315138;
          AppleIntelligenceReportingUseCase.loggingDescription.getter();
          OUTLINED_FUNCTION_61_0();
          (v168[0])(v53, v113);
          v116 = OUTLINED_FUNCTION_82_0();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v85, v117);
          OUTLINED_FUNCTION_62_0();
          v85 = v176;

          *(v114 + 4) = v53;
          _os_log_impl(&dword_227F43000, v111, v3, "AssetDeliveryState processing ModelCatalog event for %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v83);
          v83 = v181;
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          v118 = (v168[0])(v53, v109);
        }

        v120 = v172;
        v119 = v173;
        v121 = (*(*v172 + 176))(v118);
        v122 = specialized Dictionary.subscript.getter(v81, v121);

        v124 = v179;
        v123 = v180;
        if (!v122)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
          OUTLINED_FUNCTION_109_0();
          v125 = swift_allocObject();
          v126 = MEMORY[0x277D84F90];
          *(v125 + 16) = 0;
          *(v125 + 24) = v126;
        }

        AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.action.getter();
        v127 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog.ModelCatalogSubscriptionState.SubscriptionAction();
        OUTLINED_FUNCTION_19_2(v119);
        if (!v69)
        {
          outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
          v128 = *(v127 - 8);
          v129 = *(v128 + 88);
          v130 = OUTLINED_FUNCTION_31_0();
          v132 = v131(v130);
          if (v132 == *MEMORY[0x277D1F5E8])
          {
            OUTLINED_FUNCTION_43_0();
            if ((*(v133 + 104))())
            {
              OUTLINED_FUNCTION_43_0();
              v135 = *(v134 + 144);

              v136 = v135(v183);
              MEMORY[0x22AAAE0D0]();
              OUTLINED_FUNCTION_132();
              specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v137 + 16));
              v83 = v181;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v136(v183, 0);
              v85 = v176;
              OUTLINED_FUNCTION_43_0();
              (*(v138 + 112))(0);
            }

            v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
            OUTLINED_FUNCTION_117_0(v139);
            specialized AssetDeliveryState.Session.init()();
            v140 = v170;
            (*(v124 + 16))(v170, v83, v123);
            OUTLINED_FUNCTION_39_0();
            __swift_storeEnumTagSinglePayload(v141, v142, v143, v123);
            OUTLINED_FUNCTION_4_1();
            (*(v144 + 120))(v140);
            OUTLINED_FUNCTION_23();
            __swift_storeEnumTagSinglePayload(v145, v146, v147, v123);
            OUTLINED_FUNCTION_4_1();
            (*(v148 + 144))(v140);
            OUTLINED_FUNCTION_43_0();
            v150 = *(v149 + 112);

            v150(v151);

            v119 = v173;
          }

          else if (v132 == *MEMORY[0x277D1F5E0])
          {
            OUTLINED_FUNCTION_43_0();
            if ((*(v152 + 104))())
            {
              v153 = v170;
              (*(v124 + 16))(v170, v83, v123);
              OUTLINED_FUNCTION_39_0();
              __swift_storeEnumTagSinglePayload(v154, v155, v156, v123);
              OUTLINED_FUNCTION_1_2();
              (*(v157 + 144))(v153);
            }
          }

          else
          {
            (*(v128 + 8))(v171, v127);
          }
        }

        outlined destroy of NSObject?(v119, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogV0fG17SubscriptionStateV0I6ActionOSgMR);
        v162 = *(*v120 + 192);

        v163 = v162(v183);
        v165 = v164;
        v166 = *v164;
        swift_isUniquelyReferenced_nonNull_native();
        v182 = *v165;
        v167 = v178;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
        *v165 = v182;
        v163(v183, 0);

        (*(v175 + 8))(v177, v85);
        v161 = v167;
      }

      (v168[0])(v161, v169);
      goto LABEL_44;
    }

    v60 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v61 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v62 = v0;
  }

  outlined destroy of NSObject?(v62, v60, v61);
  v71 = v179;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v72 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v72, static Logging.general);
  (*(v179 + 16))(v12, v181, v180);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_36_0(v74))
  {
    OUTLINED_FUNCTION_76_0();
    v75 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_130(v75);
    *v48 = 136315138;
    AppleIntelligenceReportingModelCatalogLog.json()();
    if (v76)
    {
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_64_0();
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
    }

    v99 = *(v71 + 8);
    v100 = OUTLINED_FUNCTION_120_0();
    v101(v100);
    v102 = OUTLINED_FUNCTION_82_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v4, v103);
    OUTLINED_FUNCTION_62_0();

    *(v48 + 4) = v12;
    OUTLINED_FUNCTION_18_2(&dword_227F43000, v104, v105, "Received model catalog asset log event missing use-case: %s");
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_40();
  }

  else
  {

    v77 = *(v179 + 8);
    v78 = OUTLINED_FUNCTION_120_0();
    v79(v78);
  }

LABEL_44:
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.Accumulator.__allocating_init()()
{
  OUTLINED_FUNCTION_109_0();
  v0 = swift_allocObject();
  AssetDeliveryState.Accumulator.init()();
  return v0;
}

uint64_t AssetDeliveryState.Session.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AssetDeliveryState.Session.init()();
  return v3;
}

void AssetDeliveryState.handleMobileAssetEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  v3 = OUTLINED_FUNCTION_0(v2);
  v185 = v4;
  v186 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v181 = v7;
  OUTLINED_FUNCTION_12();
  v193 = type metadata accessor for AppleIntelligenceReportingEventType();
  v8 = OUTLINED_FUNCTION_0(v193);
  v189 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v188 = v12;
  OUTLINED_FUNCTION_12();
  v13 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v14 = OUTLINED_FUNCTION_0(v13);
  v190 = v15;
  v191 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v187 = v18;
  OUTLINED_FUNCTION_12();
  v19 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v178 - v29;
  v184 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v31 = OUTLINED_FUNCTION_0(v184);
  v180 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v179 = v35;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38_0();
  v183 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_55_0();
  v182 = v42;
  v43 = OUTLINED_FUNCTION_12();
  v44 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.ReportingEventType(v43);
  v45 = OUTLINED_FUNCTION_4(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2();
  v192 = v48;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static Logging.general);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v178 = v27;
    *v52 = 0;
    _os_log_impl(&dword_227F43000, v50, v51, "AssetDeliveryState processing MobileAsset event", v52, 2u);
    v27 = v178;
    OUTLINED_FUNCTION_11();
  }

  v53 = v192;
  AppleIntelligenceReportingMobileAssetLog.reportingEventType.getter(v54, v55, v56, v57, v58, v59, v60, v61, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMR);
      v118 = *(v117 + 48);
      v191 = *(v117 + 64);
      v119 = v180;
      OUTLINED_FUNCTION_125_0();
      v120 = v183;
      v121 = v184;
      v122 = OUTLINED_FUNCTION_67_0();
      v123(v122);
      v124 = OUTLINED_FUNCTION_14_4();
      v125(v124);
      (*(v119 + 16))(v179, v120, v121);
      (*(v22 + 16))(v182, v30, v19);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v126, v127, v128, v19);
      OUTLINED_FUNCTION_138();
      v130 = *(v129 + 240);
      v131 = OUTLINED_FUNCTION_108_0();
      v133 = v132(v131);
      v134 = OUTLINED_FUNCTION_77_0();
      specialized Dictionary.subscript.setter(v134, v135);
      v136 = OUTLINED_FUNCTION_92_0();
      v133(v136);
      v137 = OUTLINED_FUNCTION_90_0();
      v138(v137);
      (*(v119 + 8))(v183, v184);
      (*(v189 + 8))(v53 + v191, v193);
      break;
    case 2u:
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
      v84 = OUTLINED_FUNCTION_21_2(v83);
      v85(v84);
      v86 = OUTLINED_FUNCTION_14_4();
      v87(v86);
      v88 = OUTLINED_FUNCTION_15_3();
      v89(v88);
      OUTLINED_FUNCTION_83_0();
      v91 = *(v90 + 264);
      v92 = OUTLINED_FUNCTION_108_0();
      v81 = v93(v92);
      goto LABEL_10;
    case 3u:
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
      v95 = OUTLINED_FUNCTION_21_2(v94);
      v96(v95);
      v97 = OUTLINED_FUNCTION_14_4();
      v98(v97);
      v99 = OUTLINED_FUNCTION_15_3();
      v100(v99);
      OUTLINED_FUNCTION_83_0();
      v102 = *(v101 + 288);
      v103 = OUTLINED_FUNCTION_108_0();
      v81 = v104(v103);
      goto LABEL_10;
    case 4u:
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
      v71 = OUTLINED_FUNCTION_21_2(v70);
      v72(v71);
      v73 = OUTLINED_FUNCTION_14_4();
      v74(v73);
      v75 = OUTLINED_FUNCTION_15_3();
      v76(v75);
      OUTLINED_FUNCTION_83_0();
      v78 = *(v77 + 312);
      v79 = OUTLINED_FUNCTION_108_0();
      v81 = v80(v79);
LABEL_10:
      v192 = v81;
      v186 = v82;
      OUTLINED_FUNCTION_83_0();
      v105 = v44;
      v107 = *(v106 + 408);
      OUTLINED_FUNCTION_53_0();
      lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v108, v109);
      v110 = OUTLINED_FUNCTION_85_0();
      v111 = v27;
      v112 = v191;
      v107(v110);
      v113 = OUTLINED_FUNCTION_92_0();
      v192(v113);
      (*(v105 + 8))(v1, v193);
      v114 = OUTLINED_FUNCTION_90_0();
      v115(v114);
      v116 = v190;
      goto LABEL_13;
    case 5u:
      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMR);
      v140 = *(v139 + 48);
      v141 = *(v139 + 64);
      v142 = v181;
      (*(v185 + 32))();
      v143 = OUTLINED_FUNCTION_14_4();
      v144(v143);
      v145 = OUTLINED_FUNCTION_15_3();
      v146(v145);
      OUTLINED_FUNCTION_83_0();
      v148 = *(v147 + 336);
      v149 = OUTLINED_FUNCTION_108_0();
      v151 = v150(v149);
      v191 = v152;
      v192 = v151;
      OUTLINED_FUNCTION_83_0();
      v153 = v44;
      v155 = *(v154 + 408);
      OUTLINED_FUNCTION_52_0();
      lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v156, v157);
      v158 = OUTLINED_FUNCTION_85_0();
      v111 = v142;
      v112 = v186;
      v155(v158);
      v159 = OUTLINED_FUNCTION_92_0();
      v192(v159);
      (*(v153 + 8))(v140, v193);
      v160 = OUTLINED_FUNCTION_90_0();
      v161(v160);
      v116 = v185;
LABEL_13:
      (*(v116 + 8))(v111, v112);
      break;
    case 6u:
      v162 = *(v22 + 16);
      v163 = OUTLINED_FUNCTION_51_0();
      v164(v163);
      v165 = Logger.logObject.getter();
      v166 = static os_log_type_t.fault.getter();
      if (OUTLINED_FUNCTION_36_0(v166))
      {
        OUTLINED_FUNCTION_76_0();
        v167 = OUTLINED_FUNCTION_44_0();
        OUTLINED_FUNCTION_130(v167);
        *v53 = 136315138;
        AppleIntelligenceReportingMobileAssetLog.json()();
        if (v168)
        {

          OUTLINED_FUNCTION_128();
        }

        v169 = *(v22 + 8);
        v170 = OUTLINED_FUNCTION_86_0();
        v171(v170);
        v172 = OUTLINED_FUNCTION_99_0();
        v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, v174);

        *(v53 + 4) = v175;
        OUTLINED_FUNCTION_18_2(&dword_227F43000, v176, v177, "Received mobile asset log event with unknown reporting event type: %s");
        OUTLINED_FUNCTION_16_3();
        OUTLINED_FUNCTION_40();
      }

      else
      {

        (*(v22 + 8))(v27, v19);
      }

      break;
    default:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMR);
      v63 = v1;
      v64 = *(v62 + 48);
      v65 = v182;
      (*(v22 + 16))(v182, v63, v19);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v19);
      OUTLINED_FUNCTION_138();
      (*(v69 + 208))(v65);
      (*(v189 + 8))(v53 + v64, v193);
      (*(v22 + 8))(v53, v19);
      break;
  }

  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingMobileAssetLog.reportingEventType.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v24;
  a20 = v25;
  v428 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMR);
  OUTLINED_FUNCTION_13(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v31);
  v392 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  v32 = OUTLINED_FUNCTION_0(v392);
  v388 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
  OUTLINED_FUNCTION_13(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v41);
  v399 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState();
  v42 = OUTLINED_FUNCTION_0(v399);
  v395 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
  OUTLINED_FUNCTION_13(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v51);
  v405 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSecureState();
  v52 = OUTLINED_FUNCTION_0(v405);
  v402 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
  OUTLINED_FUNCTION_13(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v61);
  updated = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetUpdateState();
  v62 = OUTLINED_FUNCTION_0(updated);
  v406 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
  v68 = OUTLINED_FUNCTION_13(v67);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v73);
  v416 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v74 = OUTLINED_FUNCTION_0(v416);
  v408 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
  OUTLINED_FUNCTION_13(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_55_0();
  v419 = v85;
  OUTLINED_FUNCTION_12();
  v420 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetJobState();
  v86 = OUTLINED_FUNCTION_0(v420);
  v415 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2();
  v414 = v90;
  OUTLINED_FUNCTION_12();
  v91 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v92 = OUTLINED_FUNCTION_0(v91);
  v429 = v93;
  v430 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_7();
  v427 = v96;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_96();
  v425 = v98;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_38_0();
  v413 = v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v105);
  v107 = *(v106 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_55_0();
  v417 = v109;
  OUTLINED_FUNCTION_12();
  v418 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v110 = OUTLINED_FUNCTION_0(v418);
  v410 = v111;
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
  OUTLINED_FUNCTION_13(v115);
  v117 = *(v116 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_59_0();
  v119 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState();
  v120 = OUTLINED_FUNCTION_0(v119);
  v422 = v121;
  v423 = v120;
  v123 = *(v122 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_2();
  v421 = v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
  OUTLINED_FUNCTION_13(v125);
  v127 = *(v126 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v128);
  v130 = &v386 - v129;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_13(v131);
  v133 = *(v132 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_134();
  v135 = type metadata accessor for AppleIntelligenceReportingEventType();
  v136 = OUTLINED_FUNCTION_0(v135);
  v424 = v137;
  v139 = *(v138 + 64);
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_2();
  v426 = v140;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v141);
  v143 = *(v142 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_93_0();
  v145 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v146 = OUTLINED_FUNCTION_0(v145);
  v148 = v147;
  v150 = *(v149 + 64);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_1_0();
  v153 = v152 - v151;
  AppleIntelligenceReportingMobileAssetLog.event.getter();
  v154 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v154, v155, v145);
  if (v170)
  {
    outlined destroy of NSObject?(v22, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v156 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v156, static Logging.general);
    v157 = v429;
    v158 = v430;
    OUTLINED_FUNCTION_63_0();
    v159 = OUTLINED_FUNCTION_105_0();
    v160(v159);
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_36_0(v162))
    {
      OUTLINED_FUNCTION_76_0();
      v163 = OUTLINED_FUNCTION_44_0();
      v432 = v163;
      OUTLINED_FUNCTION_22_3(4.8149e-34);
      v164 = AppleIntelligenceReportingMobileAssetLog.json()();
      if (v165)
      {
        OUTLINED_FUNCTION_45_0();
        object = 0x8000000227FB5910;
      }

      else
      {
        countAndFlagsBits = v164._countAndFlagsBits;
        object = v164._object;
      }

      (*(v157 + 8))(v427, v158);
      v214 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v432);

      *(v148 + 4) = v214;
      OUTLINED_FUNCTION_18_2(&dword_227F43000, v215, v216, "Received mobile asset log event missing asset delivery metadata: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v163);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }

    else
    {

      v180 = OUTLINED_FUNCTION_42_0();
      v181(v180);
    }
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    v427 = v145;
    v167(v153, v22, v145);
    AppleIntelligenceReportingAssetDeliveryEvent.type.getter();
    v168 = OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_34_0(v168, v169, v135);
    if (!v170)
    {
      v182 = v135;
      v425 = v153;
      v387 = v148;
      v183 = *(v424 + 32);
      v184 = v426;
      v183(v426, v20, v182);
      v185 = countAndFlagsBits;
      AppleIntelligenceReportingMobileAssetLog.mobileAssetSchedulerEventState.getter();
      v186 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetSchedulerState();
      OUTLINED_FUNCTION_34_0(v130, 1, v186);
      if (!v187)
      {
        v210 = OUTLINED_FUNCTION_5_7();
        v211(v210);
        outlined destroy of NSObject?(v130, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
        v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV5event_AA0daE9EventTypeO0iK0tMR) + 48);
        v213 = v428;
        (*(v429 + 16))(v428, countAndFlagsBits, v430);
        v183(v213 + v212, v184, v182);
        goto LABEL_41;
      }

      outlined destroy of NSObject?(v130, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14SchedulerStateVSgMR);
      AppleIntelligenceReportingMobileAssetLog.mobileAssetSetConfigurationEventState.getter();
      v188 = OUTLINED_FUNCTION_66();
      v189 = v423;
      OUTLINED_FUNCTION_34_0(v188, v190, v423);
      v191 = v428;
      if (v170)
      {
        v418 = v182;
        outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG21SetConfigurationStateVSgMR);
        v192 = v419;
        AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetJobEventState.getter();
        v193 = OUTLINED_FUNCTION_84_0();
        v189 = v420;
        OUTLINED_FUNCTION_34_0(v193, v194, v420);
        v195 = v429;
        if (v170)
        {
          outlined destroy of NSObject?(v192, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8JobStateVSgMR);
          OUTLINED_FUNCTION_100_0(&a18);
          AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetUpdateEventState.getter();
          v196 = OUTLINED_FUNCTION_66();
          v197 = updated;
          OUTLINED_FUNCTION_34_0(v196, v198, updated);
          v199 = v430;
          if (v170)
          {
            outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11UpdateStateVSgMd, ">H");
            OUTLINED_FUNCTION_100_0(&a10);
            AppleIntelligenceReportingMobileAssetLog.mobileAssetAssetSecureEventState.getter();
            v200 = OUTLINED_FUNCTION_66();
            v189 = v405;
            OUTLINED_FUNCTION_34_0(v200, v201, v405);
            if (v170)
            {
              outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG11SecureStateVSgMR);
              v202 = v398;
              AppleIntelligenceReportingMobileAssetLog.mobileAssetAtomicInstanceEventState.getter();
              v203 = OUTLINED_FUNCTION_79_0();
              v204 = v399;
              OUTLINED_FUNCTION_34_0(v203, v205, v399);
              if (v170)
              {
                (*(v424 + 8))(v426, v418);
                v206 = OUTLINED_FUNCTION_5_7();
                v207(v206);
                outlined destroy of NSObject?(v202, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG19AtomicInstanceStateVSgMd, ">H");
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_100_0(&v424);
              v329 = *(v328 + 32);
              v330 = v394;
              v331 = OUTLINED_FUNCTION_67_0();
              v332(v331);
              v333 = v391;
              AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstanceState.atomicInstance.getter();
              v334 = OUTLINED_FUNCTION_79_0();
              OUTLINED_FUNCTION_34_0(v334, v335, v392);
              if (!v336)
              {
                (*(v23 + 8))(v330, v204);
                v364 = OUTLINED_FUNCTION_5_7();
                v365(v364);
                v366 = v185;
                v367 = *(v388 + 32);
                v368 = OUTLINED_FUNCTION_67_0();
                v367(v368);
                v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV06atomicJ0_AC5eventAA0daE9EventTypeO0lN0tMR);
                v370 = *(v369 + 48);
                v427 = *(v369 + 64);
                v371 = OUTLINED_FUNCTION_99_0();
                v367(v371);
                (*(v195 + 16))(v191 + v370, v366, v430);
                v183(v191 + v427, v426, v418);
                goto LABEL_41;
              }

              v337 = v204;
              outlined destroy of NSObject?(v333, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceVSgMR);
              if (one-time initialization token for general != -1)
              {
                OUTLINED_FUNCTION_1();
              }

              v338 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_65(v338, static Logging.general);
              OUTLINED_FUNCTION_63_0();
              v339 = OUTLINED_FUNCTION_51_0();
              v340 = v430;
              v341(v339);
              v342 = Logger.logObject.getter();
              v343 = static os_log_type_t.fault.getter();
              v344 = OUTLINED_FUNCTION_36_0(v343);
              v232 = v426;
              if (!v344)
              {

                v377 = OUTLINED_FUNCTION_42_0();
                v378(v377);
                OUTLINED_FUNCTION_47_0(&v424);
                v288 = v394;
                v318 = v337;
                goto LABEL_67;
              }

              OUTLINED_FUNCTION_76_0();
              v345 = OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_80_0(v345);
              OUTLINED_FUNCTION_22_3(4.8149e-34);
              AppleIntelligenceReportingMobileAssetLog.json()();
              if (v346)
              {
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_64_0();
              }

              else
              {
                OUTLINED_FUNCTION_61_0();
              }

              (*(v195 + 8))(v389, v340);
              OUTLINED_FUNCTION_60();
              OUTLINED_FUNCTION_62_0();

              *(v333 + 4) = v330;
              OUTLINED_FUNCTION_18_2(&dword_227F43000, v382, v383, "Received mobile asset log atomic instance event missing atomic instance: %s");
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_40();

              OUTLINED_FUNCTION_47_0(&v424);
              v375 = v394;
              v381 = &v428;
            }

            else
            {
              OUTLINED_FUNCTION_100_0(&v431);
              v300 = v401;
              v301 = (*(v299 + 32))(v401);
              v302 = v397;
              MEMORY[0x22AAADA10](v301);
              v303 = OUTLINED_FUNCTION_84_0();
              v304 = v416;
              OUTLINED_FUNCTION_34_0(v303, v305, v416);
              if (!v306)
              {
                v350 = *(v23 + 8);
                v351 = OUTLINED_FUNCTION_67_0();
                v352(v351);
                v353 = OUTLINED_FUNCTION_5_7();
                v354(v353);
                v427 = v185;
                OUTLINED_FUNCTION_89_0();
                (v185)(v390, v302, v304);
                v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
                v356 = *(v355 + 48);
                v357 = *(v355 + 64);
                v358 = OUTLINED_FUNCTION_77_0();
                v185(v358);
                (*(v429 + 16))(v191 + v356, v427, v430);
                v359 = OUTLINED_FUNCTION_94_0();
                (v183)(v359);
                goto LABEL_41;
              }

              outlined destroy of NSObject?(v302, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
              if (one-time initialization token for general != -1)
              {
                OUTLINED_FUNCTION_1();
              }

              v307 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_65(v307, static Logging.general);
              v308 = v429;
              OUTLINED_FUNCTION_63_0();
              v309 = OUTLINED_FUNCTION_51_0();
              v310(v309);
              v311 = Logger.logObject.getter();
              v312 = static os_log_type_t.fault.getter();
              v313 = OUTLINED_FUNCTION_36_0(v312);
              v314 = v199;
              v232 = v426;
              if (!v313)
              {

                v362 = OUTLINED_FUNCTION_42_0();
                v363(v362);
                OUTLINED_FUNCTION_47_0(&v431);
                v288 = v401;
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_76_0();
              v315 = OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_80_0(v315);
              OUTLINED_FUNCTION_22_3(4.8149e-34);
              AppleIntelligenceReportingMobileAssetLog.json()();
              if (v316)
              {
                OUTLINED_FUNCTION_45_0();
                OUTLINED_FUNCTION_64_0();
              }

              else
              {
                OUTLINED_FUNCTION_61_0();
              }

              (*(v308 + 8))(v393, v314);
              OUTLINED_FUNCTION_60();
              OUTLINED_FUNCTION_62_0();

              *(v189 + 4) = v300;
              OUTLINED_FUNCTION_18_2(&dword_227F43000, v379, v380, "Received mobile asset log asset secure event missing asset specifier: %s");
              OUTLINED_FUNCTION_16_3();
              OUTLINED_FUNCTION_40();

              OUTLINED_FUNCTION_47_0(&v431);
              v375 = v401;
              v381 = &a11;
            }

            v376 = *(v381 - 32);
          }

          else
          {
            v269 = v406;
            OUTLINED_FUNCTION_81_0();
            v270 = v407;
            v271(v407, v23, v197);
            OUTLINED_FUNCTION_100_0(&a9);
            MEMORY[0x22AAADA30]();
            v272 = OUTLINED_FUNCTION_66();
            v273 = v416;
            OUTLINED_FUNCTION_34_0(v272, v274, v416);
            if (!v275)
            {
              (*(v269 + 8))(v270, v197);
              v319 = OUTLINED_FUNCTION_5_7();
              v320(v319);
              OUTLINED_FUNCTION_89_0();
              v321 = v396;
              v185(v396);
              v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
              v323 = *(v322 + 48);
              v324 = *(v322 + 64);
              (v185)(v191, v321, v273);
              (*(v429 + 16))(v191 + v323, v185, v430);
              v325 = OUTLINED_FUNCTION_94_0();
              (v183)(v325);
              goto LABEL_41;
            }

            outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
            if (one-time initialization token for general != -1)
            {
              OUTLINED_FUNCTION_1();
            }

            v276 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_65(v276, static Logging.general);
            v277 = v429;
            OUTLINED_FUNCTION_63_0();
            v278 = OUTLINED_FUNCTION_51_0();
            v279(v278);
            v280 = Logger.logObject.getter();
            v281 = static os_log_type_t.fault.getter();
            v282 = OUTLINED_FUNCTION_36_0(v281);
            v283 = v199;
            v232 = v426;
            if (!v282)
            {

              v347 = *(v277 + 8);
              v348 = OUTLINED_FUNCTION_123_0();
              v349(v348);
              (*(v269 + 8))(v407, v197);
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_76_0();
            v284 = OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_80_0(v284);
            OUTLINED_FUNCTION_22_3(4.8149e-34);
            AppleIntelligenceReportingMobileAssetLog.json()();
            if (v285)
            {
              OUTLINED_FUNCTION_45_0();
              OUTLINED_FUNCTION_64_0();
            }

            else
            {
              OUTLINED_FUNCTION_61_0();
            }

            (*(v277 + 8))(v400, v430);
            OUTLINED_FUNCTION_60();
            OUTLINED_FUNCTION_62_0();

            *(v269 + 4) = v283;
            OUTLINED_FUNCTION_18_2(&dword_227F43000, v372, v373, "Received mobile asset log asset update event missing asset specifier: %s");
            OUTLINED_FUNCTION_16_3();
            OUTLINED_FUNCTION_40();

            OUTLINED_FUNCTION_47_0(&a12);
            v375 = v407;
            v376 = v197;
          }

          v374(v375, v376);
LABEL_91:
          (*(v424 + 8))(v426, v418);
          goto LABEL_92;
        }

        v239 = v414;
        v238 = v415;
        v240 = (*(v415 + 32))(v414, v192, v189);
        v241 = v411;
        MEMORY[0x22AAADA70](v240);
        v242 = OUTLINED_FUNCTION_84_0();
        v243 = v416;
        OUTLINED_FUNCTION_34_0(v242, v244, v416);
        if (!v245)
        {
          (*(v238 + 8))(v239, v189);
          v290 = OUTLINED_FUNCTION_5_7();
          v291(v290);
          v427 = v185;
          OUTLINED_FUNCTION_89_0();
          (v185)(v404, v241, v243);
          v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV5asset_AC5eventAA0daE9EventTypeO0kM0tMR);
          v293 = *(v292 + 48);
          v294 = *(v292 + 64);
          v295 = OUTLINED_FUNCTION_77_0();
          v185(v295);
          v296 = OUTLINED_FUNCTION_131();
          v297(v296);
          v298 = OUTLINED_FUNCTION_94_0();
          (v183)(v298);
          goto LABEL_41;
        }

        outlined destroy of NSObject?(v241, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v246 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v246, static Logging.general);
        OUTLINED_FUNCTION_63_0();
        v247 = v403;
        v248 = OUTLINED_FUNCTION_85_0();
        v249 = v430;
        v250(v248);
        v251 = Logger.logObject.getter();
        v252 = static os_log_type_t.fault.getter();
        v253 = OUTLINED_FUNCTION_36_0(v252);
        v232 = v426;
        if (v253)
        {
          OUTLINED_FUNCTION_76_0();
          v254 = OUTLINED_FUNCTION_44_0();
          OUTLINED_FUNCTION_80_0(v254);
          *v189 = 136315138;
          AppleIntelligenceReportingMobileAssetLog.json()();
          if (v255)
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_64_0();
          }

          else
          {
            OUTLINED_FUNCTION_61_0();
          }

          (*(v195 + 8))(v247, v430);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_62_0();

          *(v189 + 4) = v247;
          OUTLINED_FUNCTION_18_2(&dword_227F43000, v360, v361, "Received mobile asset log asset job event missing asset specifier: %s");
          OUTLINED_FUNCTION_16_3();
          OUTLINED_FUNCTION_40();

          (*(v415 + 8))(v414, v420);
          goto LABEL_91;
        }

        (*(v195 + 8))(v247, v249);
        v288 = v414;
        v289 = v415;
      }

      else
      {
        v420 = v183;
        v217 = v422;
        OUTLINED_FUNCTION_139();
        v219 = v218;
        v220();
        v221 = v417;
        AppleIntelligenceReportingMobileAssetLog.MobileAssetSetConfigurationState.assetSet.getter();
        v222 = v418;
        OUTLINED_FUNCTION_34_0(v221, 1, v418);
        v224 = v429;
        if (!v223)
        {
          v256 = *(v217 + 8);
          v257 = OUTLINED_FUNCTION_67_0();
          v258(v257);
          v259 = OUTLINED_FUNCTION_5_7();
          v260(v259);
          v427 = v185;
          v261 = *(v410 + 32);
          v262 = v409;
          v261(v409, v221, v222);
          v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV05assetI0_AC5eventAA0daE9EventTypeO0kM0tMR);
          v264 = *(v263 + 48);
          v265 = v222;
          v266 = *(v263 + 64);
          v261(v191, v262, v265);
          v267 = OUTLINED_FUNCTION_131();
          v268(v267);
          (v420)(v191 + v266, v426, v182);
          goto LABEL_41;
        }

        v418 = v182;
        outlined destroy of NSObject?(v221, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        v225 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v225, static Logging.general);
        OUTLINED_FUNCTION_63_0();
        v226 = OUTLINED_FUNCTION_51_0();
        v227 = v430;
        v228(v226);
        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.fault.getter();
        v231 = OUTLINED_FUNCTION_36_0(v230);
        v232 = v426;
        if (v231)
        {
          OUTLINED_FUNCTION_76_0();
          v233 = OUTLINED_FUNCTION_44_0();
          OUTLINED_FUNCTION_80_0(v233);
          OUTLINED_FUNCTION_22_3(4.8149e-34);
          AppleIntelligenceReportingMobileAssetLog.json()();
          if (v234)
          {
            OUTLINED_FUNCTION_45_0();
            OUTLINED_FUNCTION_64_0();
          }

          else
          {
            OUTLINED_FUNCTION_61_0();
          }

          (*(v224 + 8))(v413, v227);
          OUTLINED_FUNCTION_60();
          OUTLINED_FUNCTION_62_0();

          *(v189 + 4) = v219;
          OUTLINED_FUNCTION_18_2(&dword_227F43000, v326, v327, "Received mobile asset log set configuration event missing asset set: %s");
          OUTLINED_FUNCTION_16_3();
          OUTLINED_FUNCTION_40();

          (*(v422 + 8))(v421, v423);
          goto LABEL_91;
        }

        v286 = OUTLINED_FUNCTION_42_0();
        v287(v286);
        v288 = v421;
        v289 = v422;
      }

      v317 = *(v289 + 8);
LABEL_66:
      v318 = v189;
LABEL_67:
      v317(v288, v318);
LABEL_68:
      (*(v424 + 8))(v232, v418);
LABEL_92:
      v384 = OUTLINED_FUNCTION_5_7();
      v385(v384);
      goto LABEL_41;
    }

    outlined destroy of NSObject?(v20, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v171 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v171, static Logging.general);
    v172 = v429;
    v173 = v430;
    OUTLINED_FUNCTION_63_0();
    v174 = OUTLINED_FUNCTION_105_0();
    v175(v174);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.fault.getter();
    if (OUTLINED_FUNCTION_36_0(v177))
    {
      v387 = v148;
      OUTLINED_FUNCTION_76_0();
      v178 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_80_0(v178);
      OUTLINED_FUNCTION_22_3(4.8149e-34);
      AppleIntelligenceReportingMobileAssetLog.json()();
      if (v179)
      {
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_64_0();
      }

      else
      {
        OUTLINED_FUNCTION_61_0();
      }

      (*(v172 + 8))(v425, v173);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_62_0();

      *(v148 + 4) = v153;
      OUTLINED_FUNCTION_18_2(&dword_227F43000, v235, v236, "Received mobile asset log event missing event metadata type: %s");
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_40();

      OUTLINED_FUNCTION_47_0(&v415);
      v237(v153, v427);
    }

    else
    {

      v208 = OUTLINED_FUNCTION_42_0();
      v209(v208);
      (*(v148 + 8))(v153, v427);
    }
  }

LABEL_41:
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.ReportingEventType(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_19();
}

void AssetDeliveryState._handleMobileAssetStateEvent<A>(event:eventType:dictionary:identifier:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v3 - 8);
  v73 = v10;
  v74 = v9;
  v11 = *(v9 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v75 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - v17;
  v19 = type metadata accessor for AppleIntelligenceReportingEventType();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_134();
  v78 = v8;
  v25 = *v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
  v76 = v6;
  v77 = v2;
  MEMORY[0x22AAADF80](v79, v6, v25, v4, v26, v2);
  v27 = v79[0];
  if (!v79[0])
  {
    OUTLINED_FUNCTION_109_0();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D84F90];
    *(v27 + 16) = 0;
    *(v27 + 24) = v28;
  }

  v29 = *(v22 + 16);
  v30 = OUTLINED_FUNCTION_62();
  v31(v30);
  v32 = (*(v22 + 88))(v0, v19);
  if (v32 == *MEMORY[0x277D1F540])
  {
    OUTLINED_FUNCTION_65_0();
    if ((*(v33 + 104))())
    {
      OUTLINED_FUNCTION_65_0();
      v35 = *(v34 + 144);

      v36 = v35(v79);
      MEMORY[0x22AAAE0D0]();
      OUTLINED_FUNCTION_132();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v37 + 16));
      OUTLINED_FUNCTION_51_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36(v79, 0);
      OUTLINED_FUNCTION_65_0();
      (*(v38 + 112))(0);
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
    OUTLINED_FUNCTION_117_0(v39);
    OUTLINED_FUNCTION_54_0();
    specialized AssetDeliveryState.Session.init()();
    v40 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4(v40);
    (*(v41 + 16))(v18, v73, v40);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v40);
    OUTLINED_FUNCTION_4_1();
    (*(v45 + 120))(v18);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    OUTLINED_FUNCTION_4_1();
    (*(v49 + 144))(v18);
LABEL_7:
    OUTLINED_FUNCTION_65_0();
    v51 = *(v50 + 112);

    v51(v52);
    goto LABEL_8;
  }

  if (v32 != *MEMORY[0x277D1F538])
  {
    if (v32 != *MEMORY[0x277D1F548])
    {
      (*(v22 + 8))(v0, v19);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_65_0();
    if ((*(v60 + 104))())
    {
      OUTLINED_FUNCTION_65_0();
      v62 = *(v61 + 144);

      v63 = v62(v79);
      MEMORY[0x22AAAE0D0]();
      OUTLINED_FUNCTION_132();
      specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v64 + 16));
      OUTLINED_FUNCTION_85_0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v63(v79, 0);
      OUTLINED_FUNCTION_65_0();
      (*(v65 + 112))(0);
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
    OUTLINED_FUNCTION_117_0(v66);
    OUTLINED_FUNCTION_54_0();
    specialized AssetDeliveryState.Session.init()();
    v67 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4(v67);
    (*(v68 + 16))(v18, v73, v67);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v67);
    OUTLINED_FUNCTION_4_1();
    (*(v72 + 168))(v18);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(*(v53 + 104))())
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_142();
  v54 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_4(v54);
  (*(v55 + 16))(v18, v73, v54);
  OUTLINED_FUNCTION_39_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v54);
  OUTLINED_FUNCTION_1_2();
  (*(v59 + 144))(v18);
LABEL_8:

LABEL_9:
  (*(v74 + 16))(v75, v76, v4);
  v79[0] = v27;
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  OUTLINED_FUNCTION_19();
}

void AssetDeliveryState.handleUnifiedAssetFrameworkEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v201 = v0;
  OUTLINED_FUNCTION_142();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v210 = OUTLINED_FUNCTION_0(v2);
  v211 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_7();
  v208 = v6;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_96();
  v207 = v8;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_96();
  v205 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  v13 = &v194 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogVSgMR);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_33_1(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  v30 = &v194 - v29;
  v31 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState();
  v32 = OUTLINED_FUNCTION_0(v31);
  v202 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v203 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  v204 = v41;
  OUTLINED_FUNCTION_10();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v194 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v194 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v194 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v194 - v52;
  v206 = v0;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v54 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_34_0(v53, 1, v54);
  v209 = v54;
  if (v133)
  {
    v55 = v53;
LABEL_8:
    outlined destroy of NSObject?(v55, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    goto LABEL_9;
  }

  v56 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
  OUTLINED_FUNCTION_31_1(v54);
  v58 = v53;
  v60 = v59;
  v198 = *(v57 + 8);
  v197 = v57 + 8;
  v198(v58, v54);
  if (!v60)
  {
LABEL_9:
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v63 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v63, static Logging.general);
    v64 = v210;
    v65 = v211;
    v66 = *(v211 + 16);
    v67 = v205;
    v68 = v206;
    v69 = OUTLINED_FUNCTION_105_0();
    v66(v69);
    (v66)(v207, v68, v64);
    v70 = v208;
    (v66)(v208, v68, v64);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v71, v72))
    {

      v78 = *(v65 + 8);
      v78(v70, v64);
      v79 = OUTLINED_FUNCTION_120_0();
      (v78)(v79);
      v78(v67, v64);
      goto LABEL_29;
    }

    LODWORD(v206) = v72;
    v73 = OUTLINED_FUNCTION_84();
    v203 = swift_slowAlloc();
    v214[0] = v203;
    *v73 = 136315650;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v74 = OUTLINED_FUNCTION_70_0();
    v75 = v209;
    OUTLINED_FUNCTION_34_0(v74, v76, v209);
    if (v133)
    {
      outlined destroy of NSObject?(v45, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v77 = v208;
    }

    else
    {
      v80 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
      v82 = v81;
      OUTLINED_FUNCTION_31_1(v75);
      (*(v83 + 8))(v45, v75);
      v77 = v208;
      if (v82)
      {
        v84 = *(v65 + 8);
        v85 = v210;
        v84(v67, v210);
        goto LABEL_19;
      }
    }

    v82 = 0x8000000227FB5990;
    v84 = *(v65 + 8);
    v45 = 0xD000000000000017;
    v85 = v210;
    v84(v67, v210);

    v80 = 0xD000000000000010;
LABEL_19:
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v214);
    OUTLINED_FUNCTION_127();

    *(v73 + 4) = v45;
    *(v73 + 12) = 2080;
    v86 = v204;
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v87 = v209;
    OUTLINED_FUNCTION_34_0(v86, 1, v209);
    if (v133)
    {
      outlined destroy of NSObject?(v86, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    }

    else
    {
      AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
      v89 = v88;
      OUTLINED_FUNCTION_31_1(v87);
      (*(v90 + 8))(v86, v87);
      if (v89)
      {
        v91 = OUTLINED_FUNCTION_124_0();
        (v84)(v91);
LABEL_25:
        v93 = OUTLINED_FUNCTION_82_0();
        v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v89, v94);

        *(v73 + 14) = v95;
        *(v73 + 22) = 2080;
        v97 = AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()();
        if (v96)
        {

          object = 0x8000000227FB5910;
        }

        else
        {
          object = v97._object;
        }

        v84(v77, v85);
        v99 = OUTLINED_FUNCTION_82_0();
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, object, v100);

        *(v73 + 24) = v101;
        _os_log_impl(&dword_227F43000, v71, v206, "handleUnifiedAssetFrameworkEvent missing %s or %s. Event: %s", v73, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();

        goto LABEL_29;
      }
    }

    v92 = OUTLINED_FUNCTION_124_0();
    (v84)(v92);

    v89 = 0xEE00656D614E7265;
    goto LABEL_25;
  }

  v196 = v56;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
  v61 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v61, v62, v209);
  if (v133)
  {

    v55 = v51;
    goto LABEL_8;
  }

  v195 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
  v103 = v102;
  OUTLINED_FUNCTION_121_0();
  v104();
  if (!v103)
  {

    goto LABEL_9;
  }

  v207 = v13;
  v208 = v31;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v105 = type metadata accessor for Logger();
  __swift_project_value_buffer(v105, static Logging.general);
  OUTLINED_FUNCTION_127();

  v106 = v103;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();

  v109 = os_log_type_enabled(v107, v108);
  v205 = v1;
  v110 = v209;
  if (v109)
  {
    v111 = swift_slowAlloc();
    v214[0] = swift_slowAlloc();
    *v111 = 136315394;
    v112 = v195;
    v113 = OUTLINED_FUNCTION_103_0();
    *(v111 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v115);
    *(v111 + 12) = 2080;
    v116 = v112;
    v117 = v106;
    *(v111 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v106, v214);
    _os_log_impl(&dword_227F43000, v107, v108, "AssetDeliveryState processing Unified Asset Framework event for %s and %s", v111, 0x16u);
    swift_arrayDestroy();
    v110 = v209;
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v117 = v106;
  }

  v118 = v206;
  AppleIntelligenceReportingUnifiedAssetFrameworkLog.unifiedAssetFrameworkSubscriptionState.getter();
  v119 = OUTLINED_FUNCTION_84_0();
  v120 = v208;
  OUTLINED_FUNCTION_34_0(v119, v121, v208);
  if (!v133)
  {
    (*(v202 + 32))(v203, v30, v120);
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.event.getter();
    v131 = OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_34_0(v131, v132, v110);
    if (v133)
    {
      v141 = outlined destroy of NSObject?(v48, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v138 = 0;
      LOBYTE(v139) = 1;
    }

    else
    {
      v137 = AppleIntelligenceReportingAssetDeliveryEvent.userIdentifier.getter();
      v138 = v137;
      v139 = HIDWORD(v137) & 1;
      OUTLINED_FUNCTION_121_0();
      v141 = v140();
    }

    v142 = v211;
    v143 = v201;
    v144 = v200;
    v213[0] = v139;
    v214[0] = v196;
    v214[1] = v60;
    v214[2] = v195;
    v214[3] = v117;
    v215 = v138;
    v216 = v139;
    v145 = (*(*v201 + 344))(v141);
    v146 = specialized Dictionary.subscript.getter(v214, v145);

    if (!v146)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
      OUTLINED_FUNCTION_109_0();
      v146 = swift_allocObject();
      v147 = MEMORY[0x277D84F90];
      *(v146 + 16) = 0;
      *(v146 + 24) = v147;
    }

    AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.subscriptionStatus.getter();
    v148 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog.UnifiedAssetFrameworkSubscriptionState.SubscriptionStatus();
    OUTLINED_FUNCTION_19_2(v144);
    if (v133)
    {
      goto LABEL_60;
    }

    v149 = v142;
    outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
    v150 = *(v148 - 8);
    v151 = *(v150 + 88);
    v152 = OUTLINED_FUNCTION_31_0();
    v154 = v153(v152);
    if (v154 == *MEMORY[0x277D1F608])
    {
      OUTLINED_FUNCTION_43_0();
      if ((*(v155 + 104))())
      {
        OUTLINED_FUNCTION_43_0();
        v157 = *(v156 + 144);

        v158 = v157(v213);
        MEMORY[0x22AAAE0D0]();
        OUTLINED_FUNCTION_132();
        specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v159 + 16));
        OUTLINED_FUNCTION_31_0();
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v158(v213, 0);
        v120 = v208;
        v118 = v206;
        OUTLINED_FUNCTION_43_0();
        (*(v160 + 112))(0);
      }

      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC7SessionCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
      OUTLINED_FUNCTION_117_0(v161);
      specialized AssetDeliveryState.Session.init()();
      v162 = v199;
      v163 = v118;
      v164 = v210;
      (*(v149 + 16))(v199, v163, v210);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
      OUTLINED_FUNCTION_4_1();
      (*(v168 + 120))(v162);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v169, v170, v171, v164);
      OUTLINED_FUNCTION_4_1();
      (*(v172 + 144))(v162);
      OUTLINED_FUNCTION_43_0();
      v174 = *(v173 + 112);

      v174(v175);
    }

    else
    {
      if (v154 != *MEMORY[0x277D1F610])
      {
        (*(v150 + 8))(v205, v148);
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_43_0();
      if (!(*(v176 + 104))())
      {
LABEL_60:
        outlined destroy of NSObject?(v144, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateV0J6StatusOSgMR);
        v188 = *(*v143 + 360);

        v189 = v188(v213);
        v191 = v190;
        v192 = *v190;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v212 = *v191;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v146, v214, isUniquelyReferenced_nonNull_native);
        *v191 = v212;
        outlined destroy of SubscriptionKey(v214);
        v189(v213, 0);

        (*(v202 + 8))(v203, v120);
        goto LABEL_29;
      }

      v177 = v199;
      v178 = v118;
      v179 = v210;
      (*(v142 + 16))(v199, v178, v210);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v180, v181, v182, v179);
      OUTLINED_FUNCTION_1_2();
      (*(v183 + 144))(v177);
    }

    goto LABEL_60;
  }

  outlined destroy of NSObject?(v30, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMd, &_s27IntelligencePlatformLibrary05AppleA33ReportingUnifiedAssetFrameworkLogV0fgH17SubscriptionStateVSgMR);
  v122 = v210;
  v123 = v211;
  OUTLINED_FUNCTION_63_0();
  v124 = OUTLINED_FUNCTION_104_0();
  v125(v124);
  v126 = v45;
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.fault.getter();
  if (OUTLINED_FUNCTION_36_0(v128))
  {
    OUTLINED_FUNCTION_76_0();
    v129 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_130(v129);
    OUTLINED_FUNCTION_22_3(4.8149e-34);
    AppleIntelligenceReportingUnifiedAssetFrameworkLog.json()();
    if (v130)
    {
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_64_0();
    }

    else
    {
      OUTLINED_FUNCTION_61_0();
    }

    (*(v123 + 8))(v207, v122);
    v184 = OUTLINED_FUNCTION_82_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v110, v185);
    OUTLINED_FUNCTION_62_0();

    *(v118 + 4) = v126;
    OUTLINED_FUNCTION_18_2(&dword_227F43000, v186, v187, "Received unified asset framework log event missing subscription state: %s");
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_40();
  }

  else
  {

    v134 = *(v123 + 8);
    v135 = OUTLINED_FUNCTION_103_0();
    v136(v135);
  }

LABEL_29:
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetScheduler, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSetConfiguration);

  v4 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetJob);

  v5 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetUpdate);

  v6 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSecureUpdate);

  v7 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_atomicInstanceState);

  v8 = *(v0 + OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_uafSubscriptionState);

  return v0;
}

uint64_t AssetDeliveryState.__deallocating_deinit()
{
  AssetDeliveryState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AssetDeliveryState.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVGMd, &_sSay27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVGMR);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for AppleIntelligenceReportingUseCase();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abC15ModelCatalogLogVGMR);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase and conformance AppleIntelligenceReportingUseCase, MEMORY[0x277D1F520]);
  *(v0 + 24) = Dictionary.init(dictionaryLiteral:)();
  v1 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  v5 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSetConfiguration;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578]);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v5) = Dictionary.init(dictionaryLiteral:)();
  v6 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetJob;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc6MobileE3LogVGMR);
  OUTLINED_FUNCTION_53_0();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v7, v8);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v6) = Dictionary.init(dictionaryLiteral:)();
  v9 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetUpdate;
  OUTLINED_FUNCTION_46_0();
  *(v0 + v9) = Dictionary.init(dictionaryLiteral:)();
  v10 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetSecureUpdate;
  OUTLINED_FUNCTION_46_0();
  *(v0 + v10) = Dictionary.init(dictionaryLiteral:)();
  v11 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_atomicInstanceState;
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  OUTLINED_FUNCTION_52_0();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(v12, v13);
  OUTLINED_FUNCTION_46_0();
  *(v0 + v11) = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_uafSubscriptionState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMd, &_s36AppleIntelligenceReportingProcessing18AssetDeliveryStateC11AccumulatorCy_0B15PlatformLibrary0abc7UnifiedE12FrameworkLogVGMR);
  lazy protocol witness table accessor for type SubscriptionKey and conformance SubscriptionKey();
  *(v0 + v14) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t key path setter for AssetDeliveryState.Session.start : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(**a2 + 120))(v10);
}

uint64_t AssetDeliveryState.Session.start.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.start.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.start.modify()
{
  OUTLINED_FUNCTION_1_2();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

uint64_t key path setter for AssetDeliveryState.Session.end : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(**a2 + 144))(v10);
}

uint64_t AssetDeliveryState.Session.end.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.end.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 96);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.end.modify()
{
  OUTLINED_FUNCTION_1_2();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

uint64_t key path setter for AssetDeliveryState.Session.impulse : <A>AssetDeliveryState.Session<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for Optional();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return (*(**a2 + 168))(v10);
}

uint64_t AssetDeliveryState.Session.impulse.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t AssetDeliveryState.Session.impulse.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_29_1();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_50_0();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_8_7(v7);
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t AssetDeliveryState.Session.impulse.modify()
{
  OUTLINED_FUNCTION_1_2();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_20_1();
  return OUTLINED_FUNCTION_56_0();
}

void AssetDeliveryState.Session.allEvents()()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_1_2();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_111_0();
  v3 = type metadata accessor for Optional();
  v4 = OUTLINED_FUNCTION_0(v3);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v56 = v8;
  OUTLINED_FUNCTION_10();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v54 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v54 - v14;
  v16 = *(v2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v54 = v18;
  OUTLINED_FUNCTION_10();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  OUTLINED_FUNCTION_111_0();
  v57 = static Array._allocateUninitialized(_:)();
  OUTLINED_FUNCTION_1_2();
  (*(v26 + 112))();
  OUTLINED_FUNCTION_19_2(v15);
  if (v27)
  {
    v35 = v55;
    v34 = (*(v55 + 8))(v15, v3);
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v28(v25, v15, v2);
    v29 = OUTLINED_FUNCTION_95_0();
    v30(v29, v25, v2);
    OUTLINED_FUNCTION_111_0();
    type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0();
    v31 = *(v16 + 8);
    v32 = OUTLINED_FUNCTION_51_0();
    v34 = v33(v32);
    v35 = v55;
  }

  (*(*v0 + 160))(v34);
  OUTLINED_FUNCTION_19_2(v12);
  if (v27)
  {
    v36 = *(v35 + 8);
    v41 = OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v37(v22, v12, v2);
    v38 = OUTLINED_FUNCTION_95_0();
    v39(v38, v22, v2);
    OUTLINED_FUNCTION_111_0();
    type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0();
    v40 = *(v16 + 8);
    v41 = v22;
    v42 = v2;
  }

  v43 = v40(v41, v42);
  v44 = v56;
  (*(*v0 + 136))(v43);
  OUTLINED_FUNCTION_19_2(v44);
  if (v27)
  {
    v45 = *(v35 + 8);
    v52 = OUTLINED_FUNCTION_77_0();
  }

  else
  {
    OUTLINED_FUNCTION_139();
    v46 = v54;
    v47 = OUTLINED_FUNCTION_103_0();
    v48(v47);
    v49 = OUTLINED_FUNCTION_95_0();
    v50(v49, v46, v2);
    OUTLINED_FUNCTION_111_0();
    type metadata accessor for Array();
    OUTLINED_FUNCTION_114_0();
    v51 = *(v16 + 8);
    v52 = OUTLINED_FUNCTION_51_0();
  }

  v53(v52);
  OUTLINED_FUNCTION_19();
}

uint64_t AssetDeliveryState.Session.deinit()
{
  OUTLINED_FUNCTION_91_0();
  v2 = *(v1 + 88);
  v4 = *(v3 + 80);
  v5 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  OUTLINED_FUNCTION_1_2();
  v7(v0 + *(v8 + 96), v5);
  OUTLINED_FUNCTION_1_2();
  v7(v0 + *(v9 + 104), v5);
  return v0;
}

uint64_t AssetDeliveryState.Session.__deallocating_deinit()
{
  AssetDeliveryState.Session.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t specialized AssetDeliveryState.Session.init()()
{
  OUTLINED_FUNCTION_1_2();
  v1 = *(v0 + 88);
  v3 = v2(0);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_1_2();
  v8 = *(v7 + 96);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  OUTLINED_FUNCTION_1_2();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_143(v14, v15, v16);
}

uint64_t AssetDeliveryState.Session.init()()
{
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 88);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_1_2();
  v8 = *(v7 + 96);
  OUTLINED_FUNCTION_23();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v3);
  OUTLINED_FUNCTION_1_2();
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_23();
  return OUTLINED_FUNCTION_143(v14, v15, v16);
}

uint64_t key path setter for AssetDeliveryState.Accumulator.currentSession : <A>AssetDeliveryState.Accumulator<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

uint64_t AssetDeliveryState.Accumulator.currentSession.getter()
{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 16);
}

uint64_t AssetDeliveryState.Accumulator.currentSession.setter()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_88_0();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t (*AssetDeliveryState.Accumulator.currentSession.modify())()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_74();
  return DataCollectorInternal.invocationProcessor.modify;
}

uint64_t key path setter for AssetDeliveryState.Accumulator.historicalSessions : <A>AssetDeliveryState.Accumulator<A>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

uint64_t AssetDeliveryState.subscriptions.getter()
{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 24);
}

uint64_t AssetDeliveryState.subscriptions.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_88_0();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t AssetDeliveryState.Accumulator.allSessions.getter()
{
  OUTLINED_FUNCTION_91_0();
  v1 = v0;
  v3 = (*(v2 + 104))();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_1_2();
    (*(v5 + 128))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    swift_allocObject();
    static Array._adoptStorage(_:count:)();
    *v6 = v4;
    v7 = *(v1 + 80);
    type metadata accessor for AssetDeliveryState.Session();
    _finalizeUninitializedArray<A>(_:)();

    OUTLINED_FUNCTION_67_0();
    v8 = static Array.+ infix(_:_:)();

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v11 = *(v10 + 128);

    return v11();
  }
}

uint64_t AssetDeliveryState.Accumulator.eventCount.getter()
{
  OUTLINED_FUNCTION_1_2();
  v2 = v1 + 128;
  v16[5] = (*(v1 + 128))();
  v16[2] = *(v2 - 48);
  type metadata accessor for AssetDeliveryState.Session();
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in AssetDeliveryState.Accumulator.eventCount.getter, v16, v3, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  result = (*(*v0 + 104))(v7);
  v9 = result;
  if (result)
  {
    OUTLINED_FUNCTION_1_2();
    (*(v10 + 184))();

    v11 = OUTLINED_FUNCTION_104_0();
    v9 = MEMORY[0x22AAAE190](v11);
  }

  v12 = *(v6 + 16);
  if (v12)
  {
    v13 = (v6 + 32);
    while (1)
    {
      v14 = *v13++;
      v15 = __OFADD__(v9, v14);
      v9 += v14;
      if (v15)
      {
        break;
      }

      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v9;
  }

  return result;
}

uint64_t closure #1 in AssetDeliveryState.Accumulator.eventCount.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(**a1 + 184))();
  v3 = MEMORY[0x22AAAE190]();

  *a2 = v3;
  return result;
}

uint64_t AssetDeliveryState.Accumulator.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t AssetDeliveryState.Accumulator.__deallocating_deinit()
{
  AssetDeliveryState.Accumulator.deinit();
  OUTLINED_FUNCTION_109_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *AssetDeliveryState.Accumulator.init()()
{
  v1 = *v0;
  v0[2] = 0;
  v2 = *(v1 + 80);
  type metadata accessor for AssetDeliveryState.Session();
  v0[3] = static Array._allocateUninitialized(_:)();
  return v0;
}

uint64_t closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()()
{
  AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  AppleIntelligenceReportingUseCase.useCaseIdentifier.setter();
  v2 = AppleIntelligenceReportingUseCase.parameters.getter();

  specialized MutableCollection<>.sort(by:)(&v2);
  if (v0)
  {

    __break(1u);
  }

  else
  {

    AppleIntelligenceReportingUseCase.parameters.setter();
    AppleIntelligenceReportingUseCase.mode.getter();
    AppleIntelligenceReportingUseCase.mode.setter();
    AppleIntelligenceReportingUseCase.locale.getter();
    AppleIntelligenceReportingUseCase.locale.setter();
    AppleIntelligenceReportingUseCase.countryCode.getter();
    return AppleIntelligenceReportingUseCase.countryCode.setter();
  }

  return result;
}

uint64_t closure #1 in closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()()
{
  v0 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (v2 == v6 && v3 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized BidirectionalCollection.last.getter(a1, MEMORY[0x277D1F5D8], a2);
}

{
  return specialized BidirectionalCollection.last.getter(a1, MEMORY[0x277D1F5F0], a2);
}

uint64_t outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_7(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_62();
  v7(v6);
  return v0;
}

uint64_t outlined assign with take of AppleIntelligenceReportingMobileAssetLog?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized BidirectionalCollection.last.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4(v7);
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    OUTLINED_FUNCTION_39_0();
    v12 = v7;
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_23();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  v48 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v57 = (v20 - 8);
    v58 = v21;
    v59 = v20;
    v54 = (v20 + 16);
    v55 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v53 = -v22;
    v24 = a1 - a3;
    v47 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v51 = v23;
      v52 = a3;
      v49 = v25;
      v50 = v24;
      v26 = v23;
      while (1)
      {
        v60 = v24;
        v27 = v58;
        v58(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        v30 = v29 ? v28 : 0;
        v31 = v17;
        v32 = v18;
        v33 = v29 ? v29 : 0xE000000000000000;
        v34 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        v36 = v35 ? v34 : 0;
        v37 = v35 ? v35 : 0xE000000000000000;
        if (v30 == v36 && v33 == v37)
        {
          break;
        }

        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v40 = *v57;
        (*v57)(v32, v8);
        result = (v40)(v31, v8);
        v18 = v32;
        v17 = v31;
        v41 = v60;
        if (v39)
        {
          if (!v55)
          {
            __break(1u);
            return result;
          }

          v42 = *v54;
          v43 = v56;
          (*v54)(v56, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v42)(v26, v43, v8);
          v26 += v53;
          v25 += v53;
          v44 = __CFADD__(v41, 1);
          v24 = v41 + 1;
          if (!v44)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      v45 = *v57;
      (*v57)(v32, v8);
      result = (v45)(v31, v8);
      v18 = v32;
      v17 = v31;
LABEL_26:
      a3 = v52 + 1;
      v23 = v51 + v47;
      v24 = v50 - 1;
      v25 = v49 + v47;
      if (v52 + 1 != v48)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

{
  v8 = type metadata accessor for InvocationStepMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v11 = *(*(v76 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v76);
  v75 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v55 - v14;
  v73 = type metadata accessor for Date();
  v15 = *(v73 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v73);
  v68 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v77 = &v55 - v19;
  v20 = type metadata accessor for InvocationStep(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v64 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v67 = &v55 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v55 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v78 = &v55 - v30;
  result = MEMORY[0x28223BE20](v29);
  v74 = &v55 - v33;
  v57 = a2;
  if (a3 != a2)
  {
    v34 = *a4;
    v35 = *(v32 + 72);
    v71 = (v15 + 16);
    v65 = (v15 + 8);
    v36 = v34 + v35 * (a3 - 1);
    v62 = -v35;
    v63 = v34;
    v37 = a1 - a3;
    v56 = v35;
    v38 = v34 + v35 * a3;
    v66 = v28;
    while (2)
    {
      v60 = v36;
      v61 = a3;
      v58 = v38;
      v59 = v37;
      v39 = v37;
      do
      {
        v40 = v74;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v38, v74);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v36, v78);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v40, v28);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v70 = v39;
        if (EnumCaseMultiPayload == 1)
        {
          v42 = v69;
          outlined init with take of InvocationStepMetadata(v28, v69);
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v42, v72);
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          outlined init with take of InvocationStepMetadata(v28, v72);
        }

        v43 = v67;
        v44 = *v71;
        (*v71)(v77, v72 + *(v76 + 36), v73);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v78, v43);
        v45 = v20;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v46 = v69;
          outlined init with take of InvocationStepMetadata(v43, v69);
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v46, v75);
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          outlined init with take of InvocationStepMetadata(v43, v75);
        }

        v47 = v68;
        v48 = v73;
        v44(v68, v75 + *(v76 + 36), v73);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v49 = v77;
        v50 = static Date.< infix(_:_:)();
        v51 = *v65;
        (*v65)(v47, v48);
        v51(v49, v48);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        result = _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v20 = v45;
        v28 = v66;
        v52 = v70;
        if ((v50 & 1) == 0)
        {
          break;
        }

        if (!v63)
        {
          __break(1u);
          return result;
        }

        v53 = v64;
        outlined init with take of InvocationStepMetadata(v38, v64);
        swift_arrayInitWithTakeFrontToBack();
        result = outlined init with take of InvocationStepMetadata(v53, v36);
        v36 += v62;
        v38 += v62;
        v54 = __CFADD__(v52, 1);
        v39 = v52 + 1;
      }

      while (!v54);
      a3 = v61 + 1;
      v36 = v60 + v56;
      v37 = v59 - 1;
      v38 = v58 + v56;
      if (v61 + 1 != v57)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v178 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v8 = *(*(v178 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v178);
  v158 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v170 = &v149 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v149 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v165 = &v149 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v164 = &v149 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v152 = &v149 - v22;
  MEMORY[0x28223BE20](v21);
  v151 = &v149 - v25;
  v162 = v23;
  v163 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_139:
    v178 = *v153;
    if (!v178)
    {
      goto LABEL_183;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_177;
  }

  v173 = v24;
  v150 = a4;
  v27 = 0;
  v175 = (v23 + 8);
  v176 = v23 + 16;
  v174 = (v23 + 32);
  v28 = MEMORY[0x277D84F90];
  v172 = v16;
  while (1)
  {
    v29 = v27++;
    v155 = v29;
    if (v27 < v26)
    {
      v171 = v26;
      v166 = v28;
      v167 = v27;
      v30 = *v163;
      v28 = *(v23 + 72);
      v31 = *v163 + v28 * v27;
      v32 = *(v23 + 16);
      v33 = v151;
      v34 = v178;
      v32(v151, v31, v178);
      v35 = v32;
      v36 = v152;
      v37 = v34;
      v38 = v35;
      v35(v152, v30 + v28 * v29, v37);
      LODWORD(v169) = closure #1 in closure #1 in AppleIntelligenceReportingUseCase.stableUseCase()();
      if (v5)
      {
        v146 = *v175;
        v147 = v36;
        v148 = v178;
        (*v175)(v147, v178);
        v146(v33, v148);
LABEL_152:

        return;
      }

      v154 = 0;
      v39 = *v175;
      v40 = v36;
      v41 = v178;
      (*v175)(v40, v178);
      v168 = v39;
      v39(v33, v41);
      v42 = v155 + 2;
      v43 = v30 + v28 * (v155 + 2);
      v27 = v167;
      v44 = v28;
      v177 = v28;
      v45 = v171;
      while (1)
      {
        v5 = v42;
        if (v27 + 1 >= v45)
        {
          break;
        }

        v167 = v27;
        v46 = v178;
        v38(v164, v43, v178);
        v38(v165, v31, v46);
        v47 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        if (v48)
        {
          v49 = v47;
        }

        else
        {
          v49 = 0;
        }

        if (v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = 0xE000000000000000;
        }

        v51 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
        if (v52)
        {
          v53 = v51;
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v54 = v52;
        }

        else
        {
          v54 = 0xE000000000000000;
        }

        if (v49 == v53 && v50 == v54)
        {
          v56 = 0;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v57 = v178;
        v28 = v168;
        (v168)(v165, v178);
        (v28)(v164, v57);
        v44 = v177;
        v43 += v177;
        v31 += v177;
        v27 = v167 + 1;
        v42 = v5 + 1;
        v45 = v171;
        if ((v169 ^ v56))
        {
          goto LABEL_28;
        }
      }

      v27 = v45;
LABEL_28:
      if (v169)
      {
        v29 = v155;
        if (v27 < v155)
        {
          goto LABEL_176;
        }

        if (v155 >= v27)
        {
          v5 = v154;
          v23 = v162;
          v28 = v166;
          v16 = v172;
          goto LABEL_51;
        }

        if (v45 >= v5)
        {
          v58 = v5;
        }

        else
        {
          v58 = v45;
        }

        v59 = v27;
        v60 = v44 * (v58 - 1);
        v61 = v44 * v58;
        v62 = v155 * v44;
        v167 = v59;
        v63 = v155;
        v5 = v154;
        do
        {
          if (v63 != --v59)
          {
            v64 = *v163;
            if (!*v163)
            {
              goto LABEL_181;
            }

            v65 = *v174;
            (*v174)(v158, v64 + v62, v178);
            v66 = v62 < v60 || v64 + v62 >= v64 + v61;
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v62 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v65((v64 + v60), v158, v178);
            v5 = v154;
            v44 = v177;
          }

          ++v63;
          v60 -= v44;
          v61 -= v44;
          v62 += v44;
        }

        while (v63 < v59);
        v23 = v162;
        v28 = v166;
        v27 = v167;
      }

      else
      {
        v5 = v154;
        v23 = v162;
        v28 = v166;
      }

      v16 = v172;
      v29 = v155;
    }

LABEL_51:
    v67 = v163[1];
    if (v27 < v67)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_173;
      }

      if (v27 - v29 < v150)
      {
        break;
      }
    }

LABEL_86:
    if (v27 < v29)
    {
      goto LABEL_172;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = *(v28 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v137;
    }

    v95 = *(v28 + 16);
    v96 = v95 + 1;
    if (v95 >= *(v28 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v138;
    }

    *(v28 + 16) = v96;
    v97 = v28 + 32;
    v98 = (v28 + 32 + 16 * v95);
    *v98 = v155;
    v98[1] = v27;
    v177 = *v153;
    if (!v177)
    {
      goto LABEL_182;
    }

    if (v95)
    {
      v166 = v28;
      while (1)
      {
        v99 = v96 - 1;
        v100 = (v97 + 16 * (v96 - 1));
        v101 = (v28 + 16 * v96);
        if (v96 >= 4)
        {
          break;
        }

        if (v96 == 3)
        {
          v102 = *(v28 + 32);
          v103 = *(v28 + 40);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_107:
          if (v105)
          {
            goto LABEL_159;
          }

          v117 = *v101;
          v116 = v101[1];
          v118 = __OFSUB__(v116, v117);
          v119 = v116 - v117;
          v120 = v118;
          if (v118)
          {
            goto LABEL_162;
          }

          v121 = v100[1];
          v122 = v121 - *v100;
          if (__OFSUB__(v121, *v100))
          {
            goto LABEL_165;
          }

          if (__OFADD__(v119, v122))
          {
            goto LABEL_167;
          }

          if (v119 + v122 >= v104)
          {
            if (v104 < v122)
            {
              v99 = v96 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        if (v96 < 2)
        {
          goto LABEL_161;
        }

        v124 = *v101;
        v123 = v101[1];
        v112 = __OFSUB__(v123, v124);
        v119 = v123 - v124;
        v120 = v112;
LABEL_122:
        if (v120)
        {
          goto LABEL_164;
        }

        v126 = *v100;
        v125 = v100[1];
        v112 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v112)
        {
          goto LABEL_166;
        }

        if (v127 < v119)
        {
          goto LABEL_136;
        }

LABEL_129:
        if (v99 - 1 >= v96)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (!*v163)
        {
          goto LABEL_179;
        }

        v131 = (v97 + 16 * (v99 - 1));
        v28 = *v131;
        v132 = v99;
        v133 = v97 + 16 * v99;
        v134 = *(v133 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)(*v163 + *(v162 + 72) * *v131, *v163 + *(v162 + 72) * *v133, (*v163 + *(v162 + 72) * v134), v177);
        if (v5)
        {
          goto LABEL_152;
        }

        if (v134 < v28)
        {
          goto LABEL_154;
        }

        v5 = *(v166 + 16);
        if (v132 > v5)
        {
          goto LABEL_155;
        }

        *v131 = v28;
        v131[1] = v134;
        if (v132 >= v5)
        {
          goto LABEL_156;
        }

        v96 = v5 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v133 + 16), v5 - 1 - v132, v133);
        v28 = v166;
        *(v166 + 16) = v5 - 1;
        v135 = v5 > 2;
        v5 = 0;
        if (!v135)
        {
          goto LABEL_136;
        }
      }

      v106 = v97 + 16 * v96;
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_157;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_158;
      }

      v113 = v101[1];
      v114 = v113 - *v101;
      if (__OFSUB__(v113, *v101))
      {
        goto LABEL_160;
      }

      v112 = __OFADD__(v104, v114);
      v115 = v104 + v114;
      if (v112)
      {
        goto LABEL_163;
      }

      if (v115 >= v109)
      {
        v129 = *v100;
        v128 = v100[1];
        v112 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v112)
        {
          goto LABEL_171;
        }

        if (v104 < v130)
        {
          v99 = v96 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_107;
    }

LABEL_136:
    v23 = v162;
    v26 = v163[1];
    v16 = v172;
    if (v27 >= v26)
    {
      goto LABEL_139;
    }
  }

  v68 = v29 + v150;
  if (__OFADD__(v29, v150))
  {
    goto LABEL_174;
  }

  if (v68 >= v67)
  {
    v68 = v163[1];
  }

  if (v68 < v29)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
LABEL_141:
    v139 = (v28 + 16);
    v140 = *(v28 + 16);
    while (v140 >= 2)
    {
      if (!*v163)
      {
        goto LABEL_180;
      }

      v141 = v28;
      v28 += 16 * v140;
      v142 = *v28;
      v143 = &v139[2 * v140];
      v144 = *(v143 + 1);
      specialized _merge<A>(low:mid:high:buffer:by:)(*v163 + *(v162 + 72) * *v28, *v163 + *(v162 + 72) * *v143, (*v163 + *(v162 + 72) * v144), v178);
      if (v5)
      {
        break;
      }

      if (v144 < v142)
      {
        goto LABEL_168;
      }

      if (v140 - 2 >= *v139)
      {
        goto LABEL_169;
      }

      *v28 = v142;
      *(v28 + 8) = v144;
      v145 = *v139 - v140;
      if (*v139 < v140)
      {
        goto LABEL_170;
      }

      v140 = *v139 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v143 + 16, v145, v143);
      *v139 = v140;
      v28 = v141;
    }

    goto LABEL_152;
  }

  if (v27 == v68)
  {
    goto LABEL_86;
  }

  v166 = v28;
  v154 = v5;
  v69 = *v163;
  v70 = *(v23 + 72);
  v171 = *(v23 + 16);
  v71 = (v69 + v70 * (v27 - 1));
  v168 = -v70;
  v169 = v69;
  v72 = v29 - v27;
  v156 = v70;
  v73 = v69 + v27 * v70;
  v157 = v68;
LABEL_60:
  v167 = v27;
  v159 = v73;
  v160 = v72;
  v74 = v72;
  v161 = v71;
  while (1)
  {
    v177 = v74;
    v75 = v178;
    v76 = v171;
    v171(v16, v73, v178);
    v77 = v173;
    v76(v173, v71, v75);
    v78 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    v80 = v16;
    if (v79)
    {
      v81 = v78;
    }

    else
    {
      v81 = 0;
    }

    if (v79)
    {
      v82 = v79;
    }

    else
    {
      v82 = 0xE000000000000000;
    }

    v83 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v84)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0;
    }

    if (v84)
    {
      v86 = v84;
    }

    else
    {
      v86 = 0xE000000000000000;
    }

    if (v81 == v85 && v82 == v86)
    {

      v94 = *v175;
      (*v175)(v77, v75);
      v94(v80, v75);
      v16 = v80;
      goto LABEL_84;
    }

    v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v89 = *v175;
    (*v175)(v77, v75);
    v89(v80, v75);
    if ((v88 & 1) == 0)
    {
      v16 = v172;
LABEL_84:
      v27 = v167 + 1;
      v71 = &v161[v156];
      v72 = v160 - 1;
      v73 = v159 + v156;
      if (v167 + 1 == v157)
      {
        v27 = v157;
        v5 = v154;
        v28 = v166;
        v29 = v155;
        goto LABEL_86;
      }

      goto LABEL_60;
    }

    v90 = v177;
    if (!v169)
    {
      break;
    }

    v91 = *v174;
    v92 = v170;
    v93 = v178;
    (*v174)(v170, v73, v178);
    swift_arrayInitWithTakeFrontToBack();
    v91(v71, v92, v93);
    v71 += v168;
    v73 += v168;
    v66 = __CFADD__(v90, 1);
    v74 = v90 + 1;
    v16 = v172;
    if (v66)
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v70 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_96;
  }

  v23 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_97;
  }

  v25 = (a2 - a1) / v21;
  v85 = a1;
  v84 = a4;
  v79 = (v18 + 8);
  v80 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v75 = &v70 - v19;
    v76 = v16;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v21, a4);
    v77 = a3;
    v78 = (a4 + v25 * v21);
    v83 = v78;
    v27 = a4;
    while (1)
    {
      if (v27 >= v78 || a2 >= a3)
      {
        goto LABEL_94;
      }

      v81 = a1;
      v29 = *v80;
      v30 = v75;
      v31 = a2;
      (*v80)(v75, a2, v8);
      v82 = v27;
      v32 = v76;
      v29();
      v33 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v34)
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      v37 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      if (v38)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      if (v35 == v39 && v36 == v40)
      {

        v47 = *v79;
        (*v79)(v32, v8);
        v47(v30, v8);
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v43 = *v79;
        (*v79)(v32, v8);
        v43(v30, v8);
        if (v42)
        {
          v44 = v31;
          a2 = v31 + v21;
          v45 = v81;
          if (v81 < v31 || v81 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v77;
          }

          else
          {
            a3 = v77;
            if (v81 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v82;
          goto LABEL_52;
        }
      }

      v45 = v81;
      v27 = &v82[v21];
      v48 = v81 < v82 || v81 >= v27;
      a2 = v31;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v77;
      }

      else
      {
        a3 = v77;
        if (v81 != v82)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v84 = v27;
LABEL_52:
      a1 = &v45[v21];
      v85 = a1;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v23 / v21, a4);
  v82 = a4;
  v49 = a4 + v26 * v21;
  v50 = -v21;
  v51 = v49;
  v76 = -v21;
LABEL_54:
  v74 = a2;
  a2 += v50;
  v71 = v51;
  v73 = a2;
  while (1)
  {
    if (v49 <= v82)
    {
      v85 = v74;
      v83 = v51;
      goto LABEL_94;
    }

    if (v74 <= a1)
    {
      break;
    }

    v75 = a3;
    v72 = v51;
    v77 = v49;
    v52 = v49 + v50;
    v53 = *v80;
    (*v80)(v78, v49 + v50, v8);
    (v53)(v81, a2, v8);
    v54 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v55)
    {
      v56 = v54;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    v58 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    if (v56 == v60 && v57 == v61)
    {
      v63 = 0;
    }

    else
    {
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v64 = v75;
    v65 = &v75[v76];
    v66 = *v79;
    (*v79)(v81, v8);
    v66(v78, v8);
    a2 = v73;
    if (v63)
    {
      v68 = v64 < v74 || v65 >= v74;
      a3 = v65;
      if (v68)
      {
        swift_arrayInitWithTakeFrontToBack();
        v51 = v72;
        v50 = v76;
        v49 = v77;
      }

      else
      {
        v69 = v72;
        v51 = v72;
        v50 = v76;
        v49 = v77;
        if (v64 != v74)
        {
          swift_arrayInitWithTakeBackToFront();
          v49 = v77;
          v51 = v69;
        }
      }

      goto LABEL_54;
    }

    if (v64 < v77 || v65 >= v77)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v65;
      v49 = v52;
      v51 = v52;
      v50 = v76;
    }

    else
    {
      v51 = v52;
      a3 = v65;
      v49 = v52;
      v50 = v76;
      if (v77 != v64)
      {
        swift_arrayInitWithTakeBackToFront();
        a3 = v65;
        v49 = v52;
        v51 = v52;
      }
    }
  }

  v85 = v74;
  v83 = v71;
LABEL_94:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v85, &v84, &v83);
  return 1;
}

uint64_t type metadata accessor for AssetDeliveryState(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceReportingMobileAssetLog?()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_7(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_62();
  v7(v6);
  return v0;
}

uint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SubscriptionKey and conformance SubscriptionKey()
{
  result = lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey;
  if (!lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey;
  if (!lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubscriptionKey and conformance SubscriptionKey);
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SubscriptionKey(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 37))
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

uint64_t storeEnumTagSinglePayload for SubscriptionKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 37) = 1;
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

    *(result + 37) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for AssetDeliveryState()
{
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AppleIntelligenceReportingMobileAssetLog?()
{
  if (!lazy cache variable for type metadata for AppleIntelligenceReportingMobileAssetLog?)
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppleIntelligenceReportingMobileAssetLog?);
    }
  }
}

void type metadata completion function for AppleIntelligenceReportingMobileAssetLog.ReportingEventType()
{
  type metadata accessor for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F578]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (asset: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F590]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(319, &lazy cache variable for type metadata for (atomicInstance: AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType), MEMORY[0x277D1F568]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)()
{
  if (!lazy cache variable for type metadata for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType))
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    type metadata accessor for AppleIntelligenceReportingEventType();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType));
    }
  }
}

void type metadata accessor for (assetSet: AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, event: AppleIntelligenceReportingMobileAssetLog, eventType: AppleIntelligenceReportingEventType)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    type metadata accessor for AppleIntelligenceReportingEventType();
    OUTLINED_FUNCTION_104_0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t type metadata completion function for AssetDeliveryState.Session(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of InvocationStepMetadata.Partial(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStepMetadata.Partial(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_7()
{
  v1 = *(*(v0 - 488) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v1 = *(*(v0 - 168) + 32);
  result = *(v0 - 176);
  v3 = *(v0 - 136);
  return result;
}

void OUTLINED_FUNCTION_16_3()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAAF0A0);
}

void OUTLINED_FUNCTION_18_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_21_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  v4 = *(v1 - 152);
  v5 = *(*(v1 - 160) + 32);
  return *(v1 - 184);
}

BOOL OUTLINED_FUNCTION_36_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_40()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_44_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_45_0()
{
}

uint64_t OUTLINED_FUNCTION_60()
{

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v0, v1, (v2 - 96));
}

void OUTLINED_FUNCTION_69_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  result = v1 + v0;
  v4 = *(v2 - 144);
  v5 = *(v2 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return Array.append(_:)();
}

void OUTLINED_FUNCTION_115_0()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_116_0()
{

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_117_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_119_0()
{
  v3 = *(v1 + *(v0 + 48));
  v4 = *(v2 - 144);
  v5 = **(v2 - 152);
}

uint64_t OUTLINED_FUNCTION_129@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 184) = *(a1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_131()
{
  v4 = *(v2 + 16);
  result = v1 + v0;
  v6 = *(v3 - 136);
  v7 = *(v3 - 112);
  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = InvocationEvent.CodingKeys.rawValue.getter(a1);
  v5 = v4;
  if (v3 == InvocationEvent.CodingKeys.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    v8 = OUTLINED_FUNCTION_205();
  }

  return v8 & 1;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v27 = a2;
  v5 = type metadata accessor for InvocationStepMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_7();
  v24[2] = v8;
  OUTLINED_FUNCTION_10();
  result = MEMORY[0x28223BE20](v9);
  v12 = v24 - v11;
  v13 = 0;
  v14 = *(a3 + 16);
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v13)
    {

      return v25;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    outlined init with copy of AssetDeliveryStateReader();
    v17 = v26(v12);
    if (v3)
    {
      outlined destroy of AssetDeliveryStateReader(v12, type metadata accessor for InvocationStepMetadata);
      v23 = v25;

      return v23;
    }

    if (v17)
    {
      outlined init with take of AssetDeliverySubsystemError();
      v18 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
        v18 = v28;
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = v21 + 1;
        v24[1] = v21;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v22 = v25;
        v18 = v28;
      }

      ++v13;
      *(v18 + 16) = v22;
      v25 = v18;
      result = outlined init with take of AssetDeliverySubsystemError();
    }

    else
    {
      result = outlined destroy of AssetDeliveryStateReader(v12, type metadata accessor for InvocationStepMetadata);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1);
}

{
  v3 = OUTLINED_FUNCTION_195(a1);
  v4 = type metadata accessor for InvocationStep(v3);
  v5 = v4;
  if (v2)
  {
    v6 = *(*(v4 - 8) + 80);
    OUTLINED_FUNCTION_69();
    outlined init with copy of AssetDeliveryStateReader();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v7, 1, v5);
}

{
  return specialized Collection.first.getter(a1);
}

{
  v4 = OUTLINED_FUNCTION_195(a1);
  v6 = v5(v4);
  v7 = v6;
  if (v3)
  {
    OUTLINED_FUNCTION_31_1(v6);
    (*(v8 + 16))(v1, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v1, v9, 1, v7);
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of UnifiedAssetFrameworkReporting(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  InvocationEvent.CodingKeys.rawValue.getter(a1);
  OUTLINED_FUNCTION_164();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  InvocationEvent.CodingKeys.rawValue.getter(a2);
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  InvocationEvent.CodingKeys.rawValue.getter(a2);
  OUTLINED_FUNCTION_164();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void statusInteger(from:)()
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

LABEL_33:
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
    goto LABEL_33;
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
    OUTLINED_FUNCTION_199(&dword_227F43000, v80, v81, "statusInteger encountered availability event with unhandled status enum value of %s");
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

uint64_t AssetDeliveryStateReader.init(useCaseIdentifier:state:unifiedAssetFrameworkReporter:invocations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v62 = a5;
  v64 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55_0();
  v61 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v20);
  v22 = &v55 - v21;
  v23 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v24 = OUTLINED_FUNCTION_0(v23);
  v60 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v28);
  v30 = &v55 - v29;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;

  static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(a1, a2, a3);
  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  else
  {
    v57 = v22;
    v58 = 0;
    v59 = a1;

    v56 = type metadata accessor for AssetDeliveryStateReader();
    v32 = v56[6];
    v33 = v60;
    (*(v60 + 32))(a6 + v32, v30, v23);
    (*(v33 + 16))(v7, a6 + v32, v23);
    AppleIntelligenceReportingAvailabilityLog.event.getter();
    v34 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
    v35 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_34_0(v35, v36, v34);
    v37 = v7;
    if (v38)
    {
      outlined destroy of NSObject?(v61, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      type metadata accessor for Date();
      v43 = v57;
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    }

    else
    {
      v55 = v23;
      v43 = v57;
      v44 = v61;
      AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
      OUTLINED_FUNCTION_31_1(v34);
      v23 = v55;
      (*(v45 + 8))(v44, v34);
    }

    v50 = v64;
    static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v59, a2, v37, a3, v46, v47, v48, v49, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    v52 = v51;

    outlined destroy of NSObject?(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v33 + 8))(v37, v23);
    v53 = v56;
    v54 = a6 + v56[7];
    specialized Collection.first.getter(v52);
    specialized BidirectionalCollection.last.getter(v52, a6 + v53[8]);

    result = outlined init with take of UnifiedAssetFrameworkReporting(v50, a6 + v53[9]);
    *(a6 + v53[10]) = v62;
  }

  return result;
}

void *AssetDeliveryStateReader.computeStatusChangeCAEvent()@<X0>(void *a1@<X8>)
{
  v251 = a1;
  v4 = type metadata accessor for AssetDeliveryStateReader();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v250 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v10 = OUTLINED_FUNCTION_13(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v239 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38_0();
  v240 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v241 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_96();
  v242 = v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  v245 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_63_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v246 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v31);
  v33 = &v227 - v32;
  v34 = type metadata accessor for Date();
  v35 = OUTLINED_FUNCTION_0(v34);
  v248 = v36;
  v249 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v244 = v39;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_38_0();
  v247 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  v43 = OUTLINED_FUNCTION_13(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7();
  v243 = v46;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_93_1();
  v48 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_0();
  v56 = v55 - v54;
  AssetDeliveryStateReader.previousAvailabilityEvent.getter();
  v57 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v57, v58, v48);
  if (v63)
  {
    outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
LABEL_11:
    v74 = v250;
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logging.general);
    OUTLINED_FUNCTION_8_8();
    outlined init with copy of AssetDeliveryStateReader();
    v76 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v77 = OUTLINED_FUNCTION_140_0();
    if (os_log_type_enabled(v77, v78))
    {
      OUTLINED_FUNCTION_59_1();
      v79 = swift_slowAlloc();
      OUTLINED_FUNCTION_60_0();
      v80 = swift_slowAlloc();
      v269[0] = v80;
      *v79 = 136315138;
      v81 = *v74;
      v82 = v74[1];

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v74, v83);
      v84 = OUTLINED_FUNCTION_124_0();
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, v86);

      *(v79 + 4) = v87;
      OUTLINED_FUNCTION_171();
      _os_log_impl(v88, v89, v90, v91, v92, v93);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    else
    {

      OUTLINED_FUNCTION_2_8();
      outlined destroy of AssetDeliveryStateReader(v74, v94);
    }

    goto LABEL_16;
  }

  (*(v51 + 32))(v56, v3, v48);
  v235 = v4;
  v59 = *(v4 + 24);
  v238 = v1;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v60 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v60, v61, v62);
  if (v63)
  {
    (*(v51 + 8))(v56, v48);
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v249);
LABEL_10:
    outlined destroy of NSObject?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v236 = v51;
  v237 = v56;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_35_0();
  v68 = *(v67 + 8);
  v69 = v67 + 8;
  v70 = OUTLINED_FUNCTION_124_1();
  v68(v70);
  v71 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v71, v72, v249);
  if (v73)
  {
    (*(v236 + 8))(v237, v48);
    goto LABEL_10;
  }

  v231 = v59;
  v233 = v69;
  v234 = v48;
  v97 = v247;
  v96 = v248;
  v98 = *(v248 + 32);
  v99 = OUTLINED_FUNCTION_77_0();
  v232 = v100;
  v100(v99);
  v101 = v245;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v102 = OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_34_0(v102, v103, v4);
  if (v104)
  {
    v105 = v249;
    (*(v96 + 8))(v97, v249);
    v106 = OUTLINED_FUNCTION_196();
    v107(v106);
    outlined destroy of NSObject?(v101, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v111 = v246;
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v105);
LABEL_24:
    outlined destroy of NSObject?(v111, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_11;
  }

  v111 = v246;
  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  v112 = v68;
  v113 = v4;
  v245 = v112;
  v112(v101, v4);
  v114 = OUTLINED_FUNCTION_50_1();
  v115 = v249;
  OUTLINED_FUNCTION_34_0(v114, v116, v249);
  v118 = v238;
  if (v117)
  {
    v119 = *(v248 + 8);
    v120 = OUTLINED_FUNCTION_99_0();
    v121(v120);
    v122 = OUTLINED_FUNCTION_196();
    v123(v122);
    goto LABEL_24;
  }

  (v232)(v244, v111, v115);
  statusInteger(from:)();
  v125 = v124;
  v127 = v126;
  statusInteger(from:)();
  if ((v127 & 1) == 0)
  {
    v130 = v243;
    if ((v129 & 1) != 0 || v125 != v128)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v130 = v243;
  if (v129)
  {
LABEL_30:
    v131 = v248;
    v132 = v234;
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    __swift_project_value_buffer(v133, static Logging.general);
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    v136 = OUTLINED_FUNCTION_140_0();
    v138 = os_log_type_enabled(v136, v137);
    v139 = v236;
    if (v138)
    {
      OUTLINED_FUNCTION_99_1();
      v140 = swift_slowAlloc();
      *v140 = 0;
      _os_log_impl(&dword_227F43000, v134, v135, "generateStatusChangeCAEvent called with no change in status", v140, 2u);
      OUTLINED_FUNCTION_39_1();
      MEMORY[0x22AAAF0A0]();
    }

    v141 = *(v131 + 8);
    v142 = v249;
    v141(v244, v249);
    v141(v247, v142);
    (*(v139 + 8))(v237, v132);
LABEL_16:
    _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOi0_(v269);
    return memcpy(v251, v269, 0xE5uLL);
  }

LABEL_35:
  LODWORD(v243) = v129;
  v246 = v128;
  v250 = v125;
  v143 = v242;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v144 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v144, v145, v113);
  v146 = v234;
  LODWORD(v232) = v127;
  if (v63)
  {
    outlined destroy of NSObject?(v143, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    v242 = 0;
    v231 = 1;
    v148 = v235;
    v147 = v236;
  }

  else
  {
    v149 = v240;
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    v150 = v149;
    v151 = OUTLINED_FUNCTION_124_0();
    (v245)(v151);
    v152 = type metadata accessor for AppleIntelligenceReportingUseCase();
    v153 = OUTLINED_FUNCTION_67_1();
    OUTLINED_FUNCTION_34_0(v153, v154, v152);
    v148 = v235;
    v147 = v236;
    if (v155)
    {
      outlined destroy of NSObject?(v150, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
      v242 = 0;
      v231 = 1;
    }

    else
    {
      v242 = AppleIntelligenceReportingUseCase.mode.getter();
      v231 = HIDWORD(v242) & 1;
      OUTLINED_FUNCTION_35_0();
      (*(v156 + 8))(v150, v152);
    }
  }

  AssetDeliveryStateReader.previousAvailabilityEvent.getter();
  OUTLINED_FUNCTION_34_0(v130, 1, v146);
  if (v63)
  {
    v157 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd;
    v158 = &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR;
    v159 = v130;
LABEL_47:
    outlined destroy of NSObject?(v159, v157, v158);
    v245 = 0;
    v241 = 1;
    v164 = v247;
    goto LABEL_48;
  }

  v160 = v241;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  (*(v147 + 8))(v130, v146);
  v161 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_34_0(v161, v162, v113);
  if (v163)
  {
    v157 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v158 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v159 = v160;
    goto LABEL_47;
  }

  v217 = v239;
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  v218 = OUTLINED_FUNCTION_129_0();
  (v245)(v218);
  type metadata accessor for AppleIntelligenceReportingUseCase();
  v219 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v219, v220, v221);
  v164 = v247;
  if (v222)
  {
    outlined destroy of NSObject?(v217, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    v245 = 0;
    v241 = 1;
  }

  else
  {
    v245 = AppleIntelligenceReportingUseCase.mode.getter();
    v241 = HIDWORD(v245) & 1;
    OUTLINED_FUNCTION_35_0();
    v224 = *(v223 + 8);
    v225 = OUTLINED_FUNCTION_124_1();
    v226(v225);
  }

LABEL_48:
  v165 = v244;
  Date.timeIntervalSince(_:)();
  v167 = v166;
  AssetDeliveryStateReader.timeSinceLastAIToggle(to:)();
  v247 = v168;
  HIDWORD(v228) = v169;
  v170 = Date.timeIntervalSince(_:)();
  v172 = v171;
  AssetDeliveryStateReader.timeSinceLastBootToAvailabilityChange.getter(v170, v173, v174, v175, v176, v177, v178, v179, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240);
  v240 = v180;
  v182 = v181;
  v183 = *(v148 + 32);
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  LODWORD(v239) = v184;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  LODWORD(v235) = v185;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(v164, v186, v187, v188, v189, v190, v191, v192, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240);
  v194 = v193;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(v164, v193, v196, v197, v198, v199, v200, v201, v227, v228, v229, v230, v231, v232, v195, v234, v235, v236, v237, v238, v239, v240);
  v203 = v202;
  v204 = *v118;
  v205 = v118[1];
  v229 = v204;
  v230 = v206;

  Date.timeIntervalSince1970.getter();
  OUTLINED_FUNCTION_111_1();
  if (v211)
  {
    v212 = v209 <= v210;
  }

  else
  {
    v212 = 1;
  }

  v213 = vcvtad_u64_f64(v208);
  if (!v212)
  {
    v207 = v213;
  }

  LODWORD(v238) = v207;
  v214 = v165;
  v215 = *(v248 + 8);
  v215(v214, v249);
  v216 = OUTLINED_FUNCTION_114_1();
  (v215)(v216);
  (*(v236 + 8))(v237, v234);
  v268 = v243 & 1;
  v267 = v232 & 1;
  v266 = v231;
  v265 = v241;
  v264 = 0;
  v263 = 1;
  v262 = 1;
  v261 = BYTE4(v228) & 1;
  v260 = 0;
  v259 = v182 & 1;
  v258 = 0;
  v257 = 0;
  v256 = 1;
  v255 = 1;
  v254 = v194 & 1;
  v253 = v203 & 1;
  v252 = 0;
  v269[0] = v246;
  LOBYTE(v269[1]) = v243 & 1;
  v269[2] = v250;
  LOBYTE(v269[3]) = v232 & 1;
  HIDWORD(v269[3]) = v242;
  LOBYTE(v269[4]) = v231;
  HIDWORD(v269[4]) = v245;
  LOBYTE(v269[5]) = v241;
  v269[6] = v167;
  LOWORD(v269[7]) = 512;
  v269[8] = 0;
  LOWORD(v269[9]) = 513;
  v269[10] = 0;
  LOWORD(v269[11]) = 513;
  v269[12] = v247;
  LOBYTE(v269[13]) = BYTE4(v228) & 1;
  v269[14] = v172;
  LOBYTE(v269[15]) = 0;
  v269[16] = v240;
  LOBYTE(v269[17]) = v182 & 1;
  HIDWORD(v269[17]) = v239;
  LOBYTE(v269[18]) = 0;
  HIDWORD(v269[18]) = v235;
  LOBYTE(v269[19]) = 0;
  HIDWORD(v269[19]) = 0;
  LOBYTE(v269[20]) = 1;
  HIDWORD(v269[20]) = 0;
  LOBYTE(v269[21]) = 1;
  v269[22] = v233;
  LOBYTE(v269[23]) = v194 & 1;
  v269[24] = v230;
  LOBYTE(v269[25]) = v203 & 1;
  v269[26] = v229;
  v269[27] = v205;
  LODWORD(v269[28]) = v238;
  BYTE4(v269[28]) = 0;
  Array._endMutation()();
  return memcpy(v251, v269, 0xE5uLL);
}

void AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v322 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  v8 = OUTLINED_FUNCTION_13(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v317 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_96();
  v316 = v13;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_96();
  v310 = v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_96();
  v306 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_96();
  v24 = v23;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  v324 = v26;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_96();
  v323 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_93_1();
  v30 = OUTLINED_FUNCTION_158();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_13(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_96();
  v318 = v37;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_64_1();
  v41 = [objc_opt_self() processInfo];
  [v41 systemUptime];
  v43 = v42;

  v321 = v2;
  AssetDeliveryStateReader.lastMADownloadAttemptErrorInfo.getter(v44, v45, v46, v47, v48, v49, v50, v51, v214, v220, v226, v230, v235, v241, v247, v253, v259, v265, v271, v277);
  v319 = v5;
  outlined init with copy of AppleIntelligenceError?();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptMR);
  v53 = OUTLINED_FUNCTION_50_1();
  OUTLINED_FUNCTION_34_0(v53, v54, v52);
  v320 = v4;
  if (v55)
  {
    outlined destroy of NSObject?(v3, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    type metadata accessor for AssetDeliverySubsystemError();
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  }

  else
  {
    v60 = *(v3 + 8);

    v62 = *(v52 + 48);
    v63 = *(v52 + 64);
    AssetDeliverySubsystemError.deepestUnderlyingError()(v61, v64, v65, v66, v67, v68, v69, v70, v215, v221, v227, v231, v236, v242, v248, v254, v260, v266, v272, v278);
    outlined destroy of NSObject?(v3 + v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v3 + v62, v71);
  }

  v315 = closure #1 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)();
  v314 = v72;
  AssetDeliveryStateReader.allErrors()(v315, v72, v73, v74, v75, v76, v77, v78, v215, v221, v227, v231, v236, v242, v248, v254, v260, v266, v272, v278);
  v80 = v79;
  specialized Collection.randomElement<A>(using:)(v79, v323);
  v81 = v24;
  outlined init with copy of AppleIntelligenceError?();
  v82 = type metadata accessor for AssetDeliverySubsystemError();
  v83 = OUTLINED_FUNCTION_31_2(v24);
  v91 = v300;
  v92 = v289;
  if (v55)
  {
    outlined destroy of NSObject?(v81, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v82);
  }

  else
  {
    AssetDeliverySubsystemError.deepestUnderlyingError()(v83, v84, v85, v86, v87, v88, v89, v90, v216, v222, v228, v232, v237, v243, v249, v255, v261, v267, v273, v279);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v81, v96);
  }

  v97 = closure #2 in AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(v80);
  v308 = v98;
  v309 = v97;
  AssetDeliveryStateReader.uafDownloadStatus(now:)(v322, v98, v99, v100, v101, v102, v103, v104, v216, v222, v228, v232, v237, v243, v249, v255, v261, v267, v273, v279);
  v311 = v105;
  v313 = v106;
  v312 = v107;
  AssetDeliveryStateReader.locale.getter();
  AssetDeliveryStateReader.locale.getter();
  v305 = v108;
  v304 = v109;
  v110 = type metadata accessor for AssetDeliveryStateReader();
  v111 = *(v110 + 24);
  statusInteger(from:)();
  v303 = v112;
  v113 = *(v110 + 32);
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  v302 = v114;
  static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)();
  v301 = v115;
  OUTLINED_FUNCTION_82_1(v327);
  outlined init with copy of AppleIntelligenceError?();
  v116 = OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_34_0(v116, v117, v52);
  if (v55)
  {
    outlined destroy of NSObject?(v321, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
  }

  else
  {
    v299 = *v321;
    v298 = v321[1];
    v118 = *(v52 + 48);
    outlined destroy of NSObject?(v321 + *(v52 + 64), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    v119 = v321 + v118;
    v91 = v300;
    v92 = v289;
    outlined destroy of AssetDeliveryStateReader(v119, v120);
  }

  OUTLINED_FUNCTION_99_0();
  outlined init with copy of AppleIntelligenceError?();
  v121 = OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_34_0(v121, v122, v52);
  v283 = v80;
  if (v55)
  {
    outlined destroy of NSObject?(v318, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    v294 = 0;
    LOBYTE(v297) = 1;
  }

  else
  {
    v123 = *(v318 + 8);

    v124 = v318 + *(v52 + 48);
    v125 = v124 + *(v82 + 24);
    v126 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v297 = HIDWORD(v126) & 1;
    if ((v126 & 0x100000000) != 0)
    {
      v294 = 0;
    }

    else
    {
      Array._endMutation()();
      v294 = v127;
    }

    outlined destroy of NSObject?(v318 + *(v52 + 64), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v124, v128);
  }

  outlined init with copy of AppleIntelligenceError?();
  v129 = OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_34_0(v129, v130, v52);
  if (v55)
  {
    outlined destroy of NSObject?(v286, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
    v318 = 0;
    v293 = 0;
  }

  else
  {
    v131 = *(v286 + 8);

    v132 = v286 + *(v52 + 48);
    v133 = *(v52 + 64);
    v134 = v132 + *(v82 + 24);
    v318 = AppleIntelligenceReportingGeneralError.domain.getter();
    v293 = v135;
    outlined destroy of NSObject?(v286 + v133, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v132, v136);
  }

  v137 = v316;
  v138 = v306;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v92);
  if (v55)
  {
    outlined destroy of NSObject?(v92, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v307 = 0;
    v316 = 1;
  }

  else
  {
    v139 = v92 + *(v82 + 24);
    v140 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v316 = HIDWORD(v140) & 1;
    if ((v140 & 0x100000000) != 0)
    {
      v307 = 0;
    }

    else
    {
      Array._endMutation()();
      v307 = v141;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v92, v142);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v291);
  if (v55)
  {
    outlined destroy of NSObject?(v291, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v290 = 0;
    v287 = 0;
  }

  else
  {
    v143 = v291 + *(v82 + 24);
    v290 = AppleIntelligenceReportingGeneralError.domain.getter();
    v287 = v144;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v291, v145);
  }

  v146 = v295;
  v147 = *(v283 + 16);

  v296 = _ss6UInt32V36AppleIntelligenceReportingProcessingE14safelyWrappingABx_tcSzRzlufCSi_Tt0g5();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v146);
  if (v55)
  {
    outlined destroy of NSObject?(v146, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v292 = 0;
    v284 = 0;
  }

  else
  {
    v325 = AppleIntelligenceAssetDeliveryEvent.Subsystem.description.getter();
    v326 = v148;
    MEMORY[0x22AAAE070](58, 0xE100000000000000);
    MEMORY[0x22AAAE070](*(v146 + *(v82 + 20)), *(v146 + *(v82 + 20) + 8));
    v292 = v325;
    v284 = v326;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v146, v149);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v91);
  if (v55)
  {
    outlined destroy of NSObject?(v91, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    HIDWORD(v274) = 0;
    v280 = 1;
  }

  else
  {
    v150 = v91 + *(v82 + 24);
    v151 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v280 = HIDWORD(v151) & 1;
    if ((v151 & 0x100000000) != 0)
    {
      HIDWORD(v274) = 0;
    }

    else
    {
      Array._endMutation()();
      HIDWORD(v274) = v152;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v91, v153);
  }

  OUTLINED_FUNCTION_158();
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v138);
  if (v55)
  {
    outlined destroy of NSObject?(v138, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v268 = 0;
  }

  else
  {
    v154 = v138 + *(v82 + 24);
    AppleIntelligenceReportingGeneralError.domain.getter();
    v268 = v155;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v138, v156);
  }

  outlined init with copy of AppleIntelligenceError?();
  v157 = OUTLINED_FUNCTION_67_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v157, v158, v82);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of NSObject?(v310, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    HIDWORD(v262) = 0;
  }

  else
  {
    HIDWORD(v262) = AssetDeliverySubsystemError.errorHash()();
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v310, v160);
  }

  v161 = v317;
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v137);
  if (v55)
  {
    outlined destroy of NSObject?(v137, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    LODWORD(v310) = 0;
    v317 = 1;
  }

  else
  {
    v162 = v137 + *(v82 + 24);
    v163 = AppleIntelligenceReportingGeneralError.errorCode.getter();
    v317 = HIDWORD(v163) & 1;
    if ((v163 & 0x100000000) != 0)
    {
      LODWORD(v310) = 0;
    }

    else
    {
      Array._endMutation()();
      LODWORD(v310) = v164;
    }

    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v137, v165);
  }

  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_31_2(v161);
  if (v55)
  {
    outlined destroy of NSObject?(v161, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
    v256 = 0;
    v250 = 0;
  }

  else
  {
    v166 = v161 + *(v82 + 24);
    v256 = AppleIntelligenceReportingGeneralError.domain.getter();
    v250 = v167;
    OUTLINED_FUNCTION_1_6();
    outlined destroy of AssetDeliveryStateReader(v161, v168);
  }

  HIDWORD(v244) = EnumTagSinglePayload == 1;
  AssetDeliveryStateReader.timeSinceLastAIToggle(to:)();
  v238 = v169;
  HIDWORD(v233) = v170;
  AssetDeliveryStateReader.timeSinceLastDownloadStart(now:)();
  HIDWORD(v223) = v171;
  AssetDeliveryStateReader.timeSinceLastSubscriptionChange(to:)(v322, v171, v173, v174, v175, v176, v177, v178, v217, v223, v172, v233, v238, v244, v250, v256, v262, v268, v274, v280, v284, v287);
  v180 = v179;
  HIDWORD(v218) = v181;
  AssetDeliveryStateReader.downloadState.getter(v179, v181, v182, v183, v184, v185, v186, v187, v218, v224, v229, v234, v239, v245, v251, v257, v263, v269, v275, v281);
  v225 = v188 == 5;
  if (v188 == 5)
  {
    v189 = 0;
  }

  else
  {
    v189 = v188;
  }

  v219 = v189;
  Date.timeIntervalSince1970.getter();
  OUTLINED_FUNCTION_111_1();
  if (v194)
  {
    v195 = v192 <= v193;
  }

  else
  {
    v195 = 1;
  }

  v196 = vcvtad_u64_f64(v191);
  if (v195)
  {
    v197 = v190;
  }

  else
  {
    v197 = v196;
  }

  v199 = *v321;
  v198 = v321[1];

  v200 = AssetDeliveryStateReader.mode.getter();
  AssetDeliveryStateReader.invocationsWhileNotAvailable.getter();
  v202 = v201;
  outlined destroy of NSObject?(v324, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v323, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v320, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMd, &_s36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorVSgMR);
  outlined destroy of NSObject?(v319, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMd, &_sSS18assetSetIdentifier_36AppleIntelligenceReportingProcessing27AssetDeliverySubsystemErrorV09subsystemK010Foundation4DateVSg9timestamptSgMR);
  OUTLINED_FUNCTION_14_0();
  *a2 = v204;
  *(a2 + 8) = v203;
  *(a2 + 16) = v305;
  *(a2 + 24) = v304;
  *(a2 + 32) = v303;
  *(a2 + 44) = v302;
  *(a2 + 52) = v301;
  OUTLINED_FUNCTION_167();
  *(a2 + 64) = v206;
  *(a2 + 72) = v205;
  *(a2 + 80) = v294;
  *(a2 + 84) = v297;
  *(a2 + 88) = v318;
  *(a2 + 96) = v293;
  *(a2 + 104) = v307;
  *(a2 + 108) = v316;
  *(a2 + 112) = v290;
  *(a2 + 120) = v288;
  *(a2 + 128) = v296;
  *(a2 + 136) = v309;
  *(a2 + 144) = v308;
  *(a2 + 152) = v292;
  *(a2 + 160) = v285;
  OUTLINED_FUNCTION_180(&v328 + 4);
  *(a2 + 40) = v207;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 132) = 0;
  *(a2 + 168) = v276;
  *(a2 + 172) = v282;
  OUTLINED_FUNCTION_187();
  *(a2 + 176) = v208;
  *(a2 + 184) = v270;
  *(a2 + 192) = v264;
  *(a2 + 196) = v246;
  *(a2 + 200) = v310;
  *(a2 + 204) = v317;
  *(a2 + 208) = v258;
  *(a2 + 216) = v252;
  *(a2 + 224) = v240;
  OUTLINED_FUNCTION_180(&v312);
  *(a2 + 232) = v209;
  OUTLINED_FUNCTION_181();
  *(a2 + 240) = v210;
  OUTLINED_FUNCTION_180(&v310 + 4);
  *(a2 + 248) = v211;
  *(a2 + 256) = v180;
  OUTLINED_FUNCTION_180(&v309 + 4);
  *(a2 + 264) = v212;
  *(a2 + 272) = v315;
  *(a2 + 280) = v314 & 1;
  *(a2 + 284) = 0;
  *(a2 + 288) = 1;
  *(a2 + 292) = 0;
  *(a2 + 296) = 1;
  *(a2 + 300) = v219;
  *(a2 + 304) = v225;
  *(a2 + 308) = 0;
  *(a2 + 312) = 1;
  *(a2 + 320) = v43;
  *(a2 + 328) = 0;
  *(a2 + 332) = v197;
  *(a2 + 336) = 0;
  *(a2 + 344) = v199;
  *(a2 + 352) = v198;
  *(a2 + 360) = v200;
  *(a2 + 364) = BYTE4(v200) & 1;
  *(a2 + 368) = v202;
  *(a2 + 372) = BYTE4(v202) & 1;
  v213 = BYTE4(v311);
  *(a2 + 376) = v311;
  *(a2 + 380) = v213 & 1;
  *(a2 + 384) = v313;
  *(a2 + 392) = v312 & 1;
}

uint64_t AssetDeliveryStateReader.desiredUseCaseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_62();
}

uint64_t AssetDeliveryStateReader.availabilityEvent.getter()
{
  OUTLINED_FUNCTION_152();
  v2 = *(type metadata accessor for AssetDeliveryStateReader() + 24);
  v3 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AssetDeliveryStateReader.earliestCurrentSubscriptionEvent.getter()
{
  OUTLINED_FUNCTION_152();
  v0 = *(type metadata accessor for AssetDeliveryStateReader() + 28);
  return outlined init with copy of AppleIntelligenceError?();
}

uint64_t AssetDeliveryStateReader.latestCurrentSubscriptionEvent.getter()
{
  OUTLINED_FUNCTION_152();
  v0 = *(type metadata accessor for AssetDeliveryStateReader() + 32);
  return outlined init with copy of AppleIntelligenceError?();
}

uint64_t AssetDeliveryStateReader.unifiedAssetFrameworkReporter.getter()
{
  OUTLINED_FUNCTION_152();
  v2 = type metadata accessor for AssetDeliveryStateReader();
  return outlined init with copy of UnifiedAssetFrameworkReporting(v1 + *(v2 + 36), v0);
}

uint64_t AssetDeliveryStateReader.invocations.getter()
{
  v1 = *(v0 + *(type metadata accessor for AssetDeliveryStateReader() + 40));
}

uint64_t static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  OUTLINED_FUNCTION_13(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_1_2();
  v10 = (*(v9 + 152))();
  v11 = OUTLINED_FUNCTION_120_1();
  specialized Dictionary.subscript.getter(v11, v12, v10);
  OUTLINED_FUNCTION_89_1();

  if (a3)
  {
    specialized BidirectionalCollection.last.getter(a3, v3);

    v13 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    v14 = OUTLINED_FUNCTION_53_1();
    OUTLINED_FUNCTION_34_0(v14, v15, v13);
    if (!v16)
    {
      OUTLINED_FUNCTION_31_1(v13);
      v18 = *(v17 + 32);
      v19 = OUTLINED_FUNCTION_154();
      return v20(v19);
    }
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  outlined destroy of NSObject?(v3, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingAvailabilityLogVSgMR);
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logging.general);
  OUTLINED_FUNCTION_179();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_59_1();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_60_0();
    v41 = swift_slowAlloc();
    *v29 = 136315138;
    v30 = OUTLINED_FUNCTION_120_1();
    *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v32);
    _os_log_impl(&dword_227F43000, v27, v28, "No availability events found for %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0](v33);
    OUTLINED_FUNCTION_39_1();
    MEMORY[0x22AAAF0A0](v34);
  }

  v35 = type metadata accessor for AppleIntelligenceReportingError();
  lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError, MEMORY[0x277CEDFD0]);
  swift_allocError();
  v37 = v36;
  _StringGuts.grow(_:)(22);

  v38 = OUTLINED_FUNCTION_120_1();
  MEMORY[0x22AAAE070](v38);
  *v37 = 0xD000000000000014;
  v37[1] = 0x8000000227FB5B80;
  v39 = *MEMORY[0x277CEDFC8];
  OUTLINED_FUNCTION_31_1(v35);
  (*(v40 + 104))(v37);
  return swift_willThrow();
}

void static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v473 = v25;
  v502 = v26;
  v496 = v27;
  v458 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v28 = OUTLINED_FUNCTION_0(v458);
  v504 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v33);
  v467 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v34 = OUTLINED_FUNCTION_0(v467);
  v468 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v44 = OUTLINED_FUNCTION_13(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_63_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v62 = OUTLINED_FUNCTION_13(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v73 = OUTLINED_FUNCTION_13(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v77);
  v78 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v79 = OUTLINED_FUNCTION_0(v78);
  v81 = v80;
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_38_0();
  v488[0] = v89;
  OUTLINED_FUNCTION_12();
  v90 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v91 = OUTLINED_FUNCTION_0(v90);
  v93 = v92;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_65_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_38_0();
  v489 = v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMR);
  v99 = OUTLINED_FUNCTION_13(v98);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_91_1();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_38_0();
  v497 = v103;
  OUTLINED_FUNCTION_1_2();
  v105 = (*(v104 + 176))();
  v106 = 0;
  v492 = OUTLINED_FUNCTION_123_1(v105);
  OUTLINED_FUNCTION_2_7(v492);
  v110 = v109 & v108;
  v112 = (v111 + 63) >> 6;
  v488[1] = v93 + 16;
  v503 = (v93 + 32);
  v490 = v93;
  v498 = (v93 + 8);
  v113 = v20;
  v483 = (v81 + 32);
  v484 = v81 + 8;
  v451 = (v504 + 16);
  v456 = v81;
  v459 = (v81 + 16);
  v453 = (v504 + 8);
  v114 = v90;
  v464[0] = v468 + 16;
  v463 = (v468 + 8);
  *&v115 = 136315138;
  v482 = v115;
  v466 = MEMORY[0x277D84F90];
  v487 = v21;
  v499 = v78;
  v504 = v90;
  v493 = v113;
  v494 = v112;
  v491 = v22;
  v495 = v107;
  if ((v109 & v108) != 0)
  {
    while (1)
    {
      v116 = v106;
LABEL_7:
      v117 = __clz(__rbit64(v110));
      v110 &= v110 - 1;
      v118 = v117 | (v116 << 6);
      v119 = v492;
      v120 = v490;
      (*(v490 + 16))(v489, *(v492 + 48) + *(v490 + 72) * v118, v114);
      v121 = *(*(v119 + 56) + 8 * v118);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
      v123 = *(v122 + 48);
      v22 = v491;
      (*(v120 + 32))();
      *(v22 + v123) = v121;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v122);

      v78 = v499;
      v113 = v493;
LABEL_8:
      v127 = v497;
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
      OUTLINED_FUNCTION_25(v127);
      if (v135)
      {
        break;
      }

      v129 = *(v127 + *(v128 + 48));
      v130 = *v503;
      v131 = OUTLINED_FUNCTION_77_0();
      v132(v131);
      v133 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
      if (!v134)
      {
        goto LABEL_15;
      }

      v135 = v133 == v496 && v134 == v502;
      if (v135)
      {

LABEL_19:
        v141 = (*(*v129 + 152))(v136);
        v142 = v141;
        if (v141 >> 62)
        {
          if (v141 >= 0)
          {
            v141 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          MEMORY[0x22AAAE610](v141);
        }

        else
        {
          v143 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        OUTLINED_FUNCTION_112_0();
        v464[1] = v129;
        if (!v144)
        {
          goto LABEL_266;
        }

        v145 = 0;
        v486 = v142 & 0xC000000000000001;
        v479 = v142 & 0xFFFFFFFFFFFFFF8;
        v478 = v142 + 32;
        v481 = v142;
        v485 = v144;
        while (2)
        {
          if (v486)
          {
            v146 = MEMORY[0x22AAAE480](v145, v142);
          }

          else
          {
            if (v145 >= *(v479 + 16))
            {
              goto LABEL_273;
            }

            OUTLINED_FUNCTION_167();
            v148 = *(v147 + 8 * v145);
          }

          v149 = __OFADD__(v145, 1);
          v150 = v145 + 1;
          if (v149)
          {
            goto LABEL_272;
          }

          v501 = v150;
          v151 = *(*v146 + 112);
          v500 = v146;
          v151();
          v152 = OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_34_0(v152, v153, v78);
          if (!v135)
          {
            v480 = *v483;
            (v480)(v488[0], v127, v78);
            AppleIntelligenceReportingModelCatalogLog.event.getter();
            v160 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
            OUTLINED_FUNCTION_19_3(v21);
            if (v161)
            {
              outlined destroy of NSObject?(v21, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
            }

            else
            {
              OUTLINED_FUNCTION_71_0(&v504);
              AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
              OUTLINED_FUNCTION_31_1(v160);
              v477 = *(v162 + 8);
              v476 = v162 + 8;
              v477(v21, v160);
              v163 = OUTLINED_FUNCTION_102_0();
              OUTLINED_FUNCTION_27_2(v163, v164);
              if (!v165)
              {
                v174 = v142;
                v175 = AppleIntelligenceReportingUseCase.parameters.getter();
                v176 = *v498;
                v177 = OUTLINED_FUNCTION_105_0();
                v472 = v178;
                v178(v177);
                OUTLINED_FUNCTION_71_0(&v505);
                OUTLINED_FUNCTION_165();
                v179 = v78;
                v180 = OUTLINED_FUNCTION_102_0();
                OUTLINED_FUNCTION_34_0(v180, v181, v160);
                v183 = v471;
                if (v182)
                {

                  v184 = v179;
                  v185 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
                  v186 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
                }

                else
                {
                  v470 = v175;
                  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                  OUTLINED_FUNCTION_9_4();
                  v187();
                  OUTLINED_FUNCTION_16_4();
                  if (!v188)
                  {
                    v475 = AppleIntelligenceReportingUseCase.parameters.getter();
                    OUTLINED_FUNCTION_105_0();
                    OUTLINED_FUNCTION_44_1();
                    v195();
                    OUTLINED_FUNCTION_71_0(&v487);
                    OUTLINED_FUNCTION_165();
                    v196 = OUTLINED_FUNCTION_102_0();
                    OUTLINED_FUNCTION_34_0(v196, v197, v160);
                    v465 = v160;
                    v142 = v174;
                    if (v198)
                    {
                      outlined destroy of NSObject?(v183, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v199 = 0;
                      v200 = 1;
                      v113 = v493;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0(&v481);
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_9_4();
                      v201();
                      OUTLINED_FUNCTION_16_4();
                      v113 = v493;
                      if (v202)
                      {
                        outlined destroy of NSObject?(v183, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v199 = 0;
                        v200 = 1;
                      }

                      else
                      {
                        v203 = AppleIntelligenceReportingUseCase.mode.getter();
                        v199 = v203;
                        v200 = HIDWORD(v203) & 1;
                        OUTLINED_FUNCTION_113_1();
                        OUTLINED_FUNCTION_44_1();
                        v204();
                      }
                    }

                    OUTLINED_FUNCTION_100_0(v488);
                    AppleIntelligenceReportingModelCatalogLog.event.getter();
                    OUTLINED_FUNCTION_66();
                    OUTLINED_FUNCTION_142_0();
                    OUTLINED_FUNCTION_27_2(v205, v206);
                    if (v135)
                    {
                      outlined destroy of NSObject?(v127, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v207 = 0;
                      LODWORD(v127) = 1;
                      if ((v200 & 1) == 0)
                      {
                        goto LABEL_72;
                      }

LABEL_84:
                      if (!v127)
                      {
                        goto LABEL_76;
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_100_0(&v482);
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_6_7();
                      v217();
                      v218 = OUTLINED_FUNCTION_66();
                      OUTLINED_FUNCTION_27_2(v218, v219);
                      if (v220)
                      {
                        outlined destroy of NSObject?(v127, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v207 = 0;
                        LODWORD(v127) = 1;
                      }

                      else
                      {
                        v221 = AppleIntelligenceReportingUseCase.mode.getter();
                        v207 = v221;
                        v127 = HIDWORD(v221) & 1;
                        OUTLINED_FUNCTION_44_1();
                        v222();
                      }

                      OUTLINED_FUNCTION_142_0();
                      if (v200)
                      {
                        goto LABEL_84;
                      }

LABEL_72:
                      if (v199 == v207)
                      {
                        v208 = v127;
                      }

                      else
                      {
                        v208 = 1;
                      }

                      if (v208)
                      {
LABEL_76:
                        OUTLINED_FUNCTION_77_1();

                        OUTLINED_FUNCTION_79_1();

                        v78 = v499;
                        if (one-time initialization token for general != -1)
                        {
                          OUTLINED_FUNCTION_0_3();
                          swift_once();
                        }

                        v209 = type metadata accessor for Logger();
                        OUTLINED_FUNCTION_65(v209, static Logging.general);
                        v127 = v502;

                        v210 = Logger.logObject.getter();
                        static os_log_type_t.info.getter();
                        OUTLINED_FUNCTION_201();
                        os_log_type_enabled(v210, v199);
                        OUTLINED_FUNCTION_112_0();
                        if (v211)
                        {
                          OUTLINED_FUNCTION_59_1();
                          v142 = swift_slowAlloc();
                          OUTLINED_FUNCTION_60_0();
                          v212 = swift_slowAlloc();
                          v213 = OUTLINED_FUNCTION_24_4(v212);
                          OUTLINED_FUNCTION_145(v213);
                          v215 = v210;
                          v216 = "fetchSubscriptionEvent skipping event for %s as the mode does not match";
                          goto LABEL_113;
                        }

                        goto LABEL_114;
                      }
                    }

                    OUTLINED_FUNCTION_71_0(&v482 + 8);
                    OUTLINED_FUNCTION_165();
                    OUTLINED_FUNCTION_16_4();
                    if (v135)
                    {
                      outlined destroy of NSObject?(v200, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v223 = 0;
                      v474 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0(&v471);
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      v224 = v200;
                      OUTLINED_FUNCTION_6_7();
                      v225();
                      v226 = OUTLINED_FUNCTION_102_0();
                      v200 = v504;
                      OUTLINED_FUNCTION_34_0(v226, v227, v504);
                      if (v228)
                      {
                        outlined destroy of NSObject?(v224, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v223 = 0;
                        v474 = 0;
                      }

                      else
                      {
                        v223 = AppleIntelligenceReportingUseCase.locale.getter();
                        v474 = v229;
                        OUTLINED_FUNCTION_44_1();
                        v230();
                      }
                    }

                    OUTLINED_FUNCTION_71_0(&v483);
                    AppleIntelligenceReportingModelCatalogLog.event.getter();
                    OUTLINED_FUNCTION_16_4();
                    v127 = v469;
                    v447 = v223;
                    if (v135)
                    {
                      outlined destroy of NSObject?(v200, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      v231 = 0;
                      v232 = 0;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_71_0(&v472);
                      AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                      OUTLINED_FUNCTION_6_7();
                      v233();
                      v234 = OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_27_2(v234, v235);
                      if (v236)
                      {
                        outlined destroy of NSObject?(v200, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
                        v231 = 0;
                        v232 = 0;
                      }

                      else
                      {
                        v231 = AppleIntelligenceReportingUseCase.locale.getter();
                        v232 = v237;
                        OUTLINED_FUNCTION_105_0();
                        OUTLINED_FUNCTION_44_1();
                        v238();
                      }

                      OUTLINED_FUNCTION_142_0();
                    }

                    v78 = v499;
                    OUTLINED_FUNCTION_190();
                    if (v239)
                    {
                      if (!v232)
                      {
                        goto LABEL_108;
                      }

                      if (v447 == v231 && v239 == v232)
                      {
                      }

                      else
                      {
                        OUTLINED_FUNCTION_162(v239);
                        v241 = OUTLINED_FUNCTION_205();

                        if ((v241 & 1) == 0)
                        {
                          OUTLINED_FUNCTION_77_1();

                          OUTLINED_FUNCTION_79_1();
                          goto LABEL_109;
                        }
                      }

LABEL_116:
                      OUTLINED_FUNCTION_71_0(&v469);
                      OUTLINED_FUNCTION_165();
                      OUTLINED_FUNCTION_16_4();
                      if (v135)
                      {
                        outlined destroy of NSObject?(v78, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        v245 = 0;
                        v247 = 0;
                      }

                      else
                      {
                        v245 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                        v247 = v246;
                        OUTLINED_FUNCTION_6_7();
                        v248();
                      }

                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      OUTLINED_FUNCTION_16_4();
                      if (v135)
                      {
                        outlined destroy of NSObject?(v452, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        if (v247)
                        {
                          goto LABEL_133;
                        }

                        goto LABEL_135;
                      }

                      v142 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                      OUTLINED_FUNCTION_115_1();
                      OUTLINED_FUNCTION_6_7();
                      v249();
                      if (v247)
                      {
                        if (!v452)
                        {
                          goto LABEL_133;
                        }

                        if (v245 == v142 && v247 == v452)
                        {
                        }

                        else
                        {
                          OUTLINED_FUNCTION_153();
                          OUTLINED_FUNCTION_205();
                          OUTLINED_FUNCTION_201();

                          if ((v245 & 1) == 0)
                          {
                            OUTLINED_FUNCTION_77_1();

                            OUTLINED_FUNCTION_79_1();
                            goto LABEL_154;
                          }
                        }

LABEL_135:
                        OUTLINED_FUNCTION_100_0(&v461);
                        OUTLINED_FUNCTION_165();
                        OUTLINED_FUNCTION_19_3(v247);
                        if (v135)
                        {
                          outlined destroy of NSObject?(v247, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                          v251 = 0;
                          v127 = 0;
                        }

                        else
                        {
                          v251 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                          v127 = v252;
                          OUTLINED_FUNCTION_6_7();
                          v253();
                        }

                        v254 = v488[0];
                        AppleIntelligenceReportingModelCatalogLog.event.getter();
                        OUTLINED_FUNCTION_16_4();
                        if (v135)
                        {
                          outlined destroy of NSObject?(v445, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                          v255 = v470;
                          if (v127)
                          {
                            goto LABEL_152;
                          }

                          goto LABEL_187;
                        }

                        v254 = v445;
                        v142 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v256();
                        if (v127)
                        {
                          v255 = v470;
                          if (!v445)
                          {
                            goto LABEL_152;
                          }

                          if (v251 == v142 && v127 == v445)
                          {
                          }

                          else
                          {
                            OUTLINED_FUNCTION_153();
                            OUTLINED_FUNCTION_205();
                            OUTLINED_FUNCTION_201();

                            if ((v251 & 1) == 0)
                            {
                              OUTLINED_FUNCTION_77_1();

                              goto LABEL_154;
                            }
                          }

LABEL_187:
                          v474 = specialized _dictionaryUpCast<A, B, C, D>(_:)(MEMORY[0x277D84F98]);
                          v442 = *(v255 + 16);
                          if (v442)
                          {
                            v300 = 0;
                            v301 = *(v468 + 80);
                            OUTLINED_FUNCTION_69();
                            v439 = v303 + v302;
                            OUTLINED_FUNCTION_183();
                            while (1)
                            {
                              if (v300 >= *(v470 + 16))
                              {
                                goto LABEL_274;
                              }

                              v304 = v439 + *(v468 + 72) * v300;
                              v305 = *(v468 + 16);
                              v306 = OUTLINED_FUNCTION_147();
                              v307(v306);
                              v308 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
                              v310 = v309;
                              AppleIntelligenceReportingAsset.version.getter();
                              if (v311)
                              {
                                OUTLINED_FUNCTION_108_1(&v502);
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                v506 = v254;
                                v441 = v308;
                                v313 = v310;
                                v314 = specialized __RawDictionaryStorage.find<A>(_:)();
                                v316 = v254[2];
                                v317 = (v315 & 1) == 0;
                                v318 = v316 + v317;
                                if (__OFADD__(v316, v317))
                                {
                                  goto LABEL_276;
                                }

                                v127 = v314;
                                LODWORD(v474) = v315;
                                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSgSSGMd, &_ss17_NativeDictionaryVySSSgSSGMR);
                                v254 = &v506;
                                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v318))
                                {
                                  v254 = v506;
                                  v319 = specialized __RawDictionaryStorage.find<A>(_:)();
                                  v127 = v467;
                                  v21 = v487;
                                  if ((v474 & 1) != (v320 & 1))
                                  {
                                    goto LABEL_279;
                                  }

                                  v142 = v319;
                                  if ((v474 & 1) == 0)
                                  {
LABEL_195:
                                    v254 = v506;
                                    v506[(v142 >> 6) + 8] |= 1 << v142;
                                    v321 = (v254[6] + 16 * v142);
                                    *v321 = v441;
                                    v321[1] = v313;
                                    OUTLINED_FUNCTION_151((v254[7] + 16 * v142));
                                    v322 = OUTLINED_FUNCTION_45_1();
                                    v323(v322);
                                    v324 = v254[2];
                                    v149 = __OFADD__(v324, 1);
                                    v325 = v324 + 1;
                                    if (v149)
                                    {
                                      goto LABEL_278;
                                    }

                                    v474 = v254;
                                    v254[2] = v325;
                                    goto LABEL_202;
                                  }
                                }

                                else
                                {
                                  v142 = v127;
                                  OUTLINED_FUNCTION_183();
                                  v21 = v487;
                                  if ((v474 & 1) == 0)
                                  {
                                    goto LABEL_195;
                                  }
                                }

                                OUTLINED_FUNCTION_162(v506);
                                v336 = (*(v335 + 56) + 16 * v142);
                                v337 = v336[1];
                                OUTLINED_FUNCTION_151(v336);

                                v338 = OUTLINED_FUNCTION_45_1();
                                v339(v338);
                              }

                              else
                              {
                                OUTLINED_FUNCTION_130_0();
                                OUTLINED_FUNCTION_128_0();
                                v326 = specialized __RawDictionaryStorage.find<A>(_:)();
                                v142 = v327;

                                if (v142)
                                {
                                  v127 = swift_isUniquelyReferenced_nonNull_native();
                                  v506 = v254;
                                  v328 = v254[3];
                                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSgSSGMd, &_ss17_NativeDictionaryVySSSgSSGMR);
                                  OUTLINED_FUNCTION_183();
                                  _NativeDictionary.ensureUnique(isUnique:capacity:)(v329, v330);
                                  v142 = v506;
                                  v331 = *(v506[6] + 16 * v326 + 8);

                                  v332 = *(*(v142 + 56) + 16 * v326 + 8);

                                  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                                  lazy protocol witness table accessor for type String? and conformance <A> A?();
                                  v474 = v142;
                                  _NativeDictionary._delete(at:)();
                                }

                                v333 = OUTLINED_FUNCTION_45_1();
                                v334(v333);
                                v21 = v487;
                              }

LABEL_202:
                              if (v442 == ++v300)
                              {
                                goto LABEL_205;
                              }
                            }
                          }

                          OUTLINED_FUNCTION_183();
                          v21 = v487;
LABEL_205:
                          v340 = *(v475 + 16);
                          if (v340)
                          {
                            v341 = 0;
                            v342 = *(v468 + 80);
                            OUTLINED_FUNCTION_69();
                            v448 = v344 + v343;
                            while (1)
                            {
                              OUTLINED_FUNCTION_102_1();
                              if (v341 >= *(v345 + 16))
                              {
                                goto LABEL_275;
                              }

                              v346 = v448 + *(v468 + 72) * v341;
                              v347 = *(v468 + 16);
                              v348 = OUTLINED_FUNCTION_147();
                              v349(v348);
                              AppleIntelligenceReportingAsset.assetIdentifier.getter();
                              OUTLINED_FUNCTION_128_0();
                              if (!v254[2])
                              {
                                goto LABEL_218;
                              }

                              v350 = specialized __RawDictionaryStorage.find<A>(_:)();
                              v142 = v351;

                              OUTLINED_FUNCTION_112_0();
                              if (v142)
                              {
                                break;
                              }

LABEL_219:
                              ++v341;
                              v254 = v463;
                              v127 = v467;
                              (*v463)(v462, v467);
                              v21 = v487;
                              if (v340 == v341)
                              {
                                goto LABEL_220;
                              }
                            }

                            OUTLINED_FUNCTION_190();
                            v353 = (*(v352 + 56) + 16 * v350);
                            v142 = *v353;
                            v354 = v353[1];

                            v355 = AppleIntelligenceReportingAsset.version.getter();
                            if (!v356)
                            {

LABEL_261:

                              OUTLINED_FUNCTION_77_1();

                              OUTLINED_FUNCTION_79_1();

                              v78 = v499;
                              if (one-time initialization token for general != -1)
                              {
                                OUTLINED_FUNCTION_0_3();
                                swift_once();
                              }

                              v427 = type metadata accessor for Logger();
                              OUTLINED_FUNCTION_65(v427, static Logging.general);
                              v142 = v502;

                              v428 = Logger.logObject.getter();
                              v429 = static os_log_type_t.info.getter();

                              if (os_log_type_enabled(v428, v429))
                              {
                                OUTLINED_FUNCTION_59_1();
                                v142 = swift_slowAlloc();
                                OUTLINED_FUNCTION_60_0();
                                v430 = swift_slowAlloc();
                                v431 = OUTLINED_FUNCTION_24_4(v430);
                                OUTLINED_FUNCTION_145(v431);
                                OUTLINED_FUNCTION_200(&dword_227F43000, v428, v432, "fetchSubscriptionEvent skipping event for %s as parameters do not match");
                                __swift_destroy_boxed_opaque_existential_0Tm(v430);
                                OUTLINED_FUNCTION_39_1();
                                MEMORY[0x22AAAF0A0]();
                                OUTLINED_FUNCTION_39_1();
                                MEMORY[0x22AAAF0A0]();
                              }

                              OUTLINED_FUNCTION_54_1(&v490);
                              v433(v462, v467);
                              OUTLINED_FUNCTION_54_1(&a16);
                              v434(v488[0], v78);
                              v21 = v487;
LABEL_185:
                              OUTLINED_FUNCTION_109_1();
LABEL_49:
                              v145 = v501;
                              goto LABEL_50;
                            }

                            if (v355 != v142 || v356 != v354)
                            {
                              OUTLINED_FUNCTION_159();
                              v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if ((v142 & 1) == 0)
                              {
                                goto LABEL_261;
                              }

                              goto LABEL_219;
                            }

LABEL_218:

                            goto LABEL_219;
                          }

LABEL_220:

                          OUTLINED_FUNCTION_77_1();

                          OUTLINED_FUNCTION_1_2();
                          (*(v358 + 136))();
                          v359 = v444;
                          v360 = OUTLINED_FUNCTION_67_1();
                          v78 = v499;
                          OUTLINED_FUNCTION_34_0(v360, v361, v499);
                          v127 = v469;
                          if (!v135)
                          {
                            outlined destroy of NSObject?(v444, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
                            if (one-time initialization token for general != -1)
                            {
                              OUTLINED_FUNCTION_0_3();
                              swift_once();
                            }

                            v370 = type metadata accessor for Logger();
                            OUTLINED_FUNCTION_65(v370, static Logging.general);
                            v78 = v502;

                            v371 = Logger.logObject.getter();
                            v21 = static os_log_type_t.info.getter();

                            if (os_log_type_enabled(v371, v21))
                            {
                              OUTLINED_FUNCTION_59_1();
                              swift_slowAlloc();
                              OUTLINED_FUNCTION_60_0();
                              v372 = swift_slowAlloc();
                              v373 = OUTLINED_FUNCTION_24_4(v372);
                              OUTLINED_FUNCTION_145(v373);
                              OUTLINED_FUNCTION_200(&dword_227F43000, v371, v374, "fetchSubscriptionEvent skipping event for %s as there is an end");
                              __swift_destroy_boxed_opaque_existential_0Tm(v372);
                              OUTLINED_FUNCTION_39_1();
                              MEMORY[0x22AAAF0A0]();
                              OUTLINED_FUNCTION_39_1();
                              MEMORY[0x22AAAF0A0]();
                            }

                            OUTLINED_FUNCTION_134_0();
                            v145 = v501;
                            OUTLINED_FUNCTION_172();
                            v142 = v442;
                            v375 = 0;
                            v440 = *(v466 + 16);
                            v438 = MEMORY[0x277D84F90];
LABEL_232:
                            if (v375 == v440)
                            {
                              v425.isa = v371->isa;
                              OUTLINED_FUNCTION_178();
                              v426();

                              OUTLINED_FUNCTION_79_1();

                              v466 = v438;
                              OUTLINED_FUNCTION_109_1();
LABEL_50:
                              if (v145 == v485)
                              {
LABEL_266:

                                goto LABEL_15;
                              }

                              continue;
                            }

                            if (v375 >= *(v466 + 16))
                            {
                              goto LABEL_277;
                            }

                            v376 = *(v456 + 80);
                            OUTLINED_FUNCTION_69();
                            v449 = v379;
                            (*(v380 + 16))(v460, v378 + v377 + *(v380 + 72) * v379, v499);
                            AppleIntelligenceReportingModelCatalogLog.event.getter();
                            OUTLINED_FUNCTION_102_0();
                            OUTLINED_FUNCTION_142_0();
                            OUTLINED_FUNCTION_27_2(v381, v382);
                            if (v135)
                            {
                              v383 = v78;
                              v384 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
                              v385 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
                            }

                            else
                            {
                              OUTLINED_FUNCTION_100_0(&v468);
                              AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
                              OUTLINED_FUNCTION_6_7();
                              v386();
                              v387 = OUTLINED_FUNCTION_66();
                              OUTLINED_FUNCTION_34_0(v387, v388, v504);
                              if (!v389)
                              {
                                v390 = AppleIntelligenceReportingUseCase.parameters.getter();
                                OUTLINED_FUNCTION_44_1();
                                v391();
LABEL_241:
                                v392 = *(v390 + 16);
                                v393 = lazy protocol witness table accessor for type AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status and conformance AppleIntelligenceReportingAvailabilityLog.AvailabilityState.Status(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase.Parameter and conformance AppleIntelligenceReportingUseCase.Parameter, MEMORY[0x277D1F500]);
                                v394 = MEMORY[0x22AAAE2A0](v392, v467, v393);
                                v505 = v394;
                                v395 = *(v390 + 16);
                                if (v395)
                                {
                                  v396 = *(v468 + 80);
                                  OUTLINED_FUNCTION_69();
                                  v398 = v390 + v397;
                                  OUTLINED_FUNCTION_162(*(v399 + 72));
                                  v475 = *(v400 + 16);
                                  OUTLINED_FUNCTION_184();
                                  v401 = v463;
                                  v127 = v464[0];
                                  do
                                  {
                                    OUTLINED_FUNCTION_130_0();
                                    OUTLINED_FUNCTION_102_1();
                                    v402();
                                    v403 = OUTLINED_FUNCTION_121_1();
                                    specialized Set._Variant.insert(_:)(v403, v404);
                                    (*v401)(v22, v393);
                                    OUTLINED_FUNCTION_190();
                                    v398 += v405;
                                    --v395;
                                  }

                                  while (v395);

                                  v371 = v505;
                                  v142 = v442;
                                }

                                else
                                {
                                  v371 = v394;
                                }

                                v78 = v470;
                                v406 = MEMORY[0x22AAAE2A0](*(v470 + 16), v467, v393);
                                v505 = v406;
                                if (v142)
                                {
                                  v407 = *(v468 + 80);
                                  OUTLINED_FUNCTION_69();
                                  v409 = v78 + v408;
                                  v475 = *(v410 + 72);
                                  OUTLINED_FUNCTION_162(*(v410 + 16));
                                  v127 = v463;
                                  OUTLINED_FUNCTION_184();
                                  v78 = v464[0];
                                  do
                                  {
                                    OUTLINED_FUNCTION_130_0();
                                    OUTLINED_FUNCTION_190();
                                    v411();
                                    v412 = OUTLINED_FUNCTION_121_1();
                                    specialized Set._Variant.insert(_:)(v412, v413);
                                    (*v127)(v22, v393);
                                    OUTLINED_FUNCTION_102_1();
                                    v409 += v414;
                                    --v142;
                                  }

                                  while (v142);
                                  v415 = v505;
                                  v142 = v442;
                                }

                                else
                                {
                                  v415 = v406;
                                }

                                v450 = v449 + 1;
                                v416 = OUTLINED_FUNCTION_157();
                                v21 = _sSh2eeoiySbShyxG_ABtFZ27IntelligencePlatformLibrary05AppleB16ReportingUseCaseV9ParameterV_Tt1g5(v416, v417);

                                OUTLINED_FUNCTION_112_0();
                                v113 = v493;
                                v22 = v491;
                                OUTLINED_FUNCTION_172();
                                if (v21)
                                {
                                  (v371->isa)(v460, v418);
                                  OUTLINED_FUNCTION_134_0();
                                  v145 = v501;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_83_1();
                                  v419();
                                  OUTLINED_FUNCTION_108_1(v457);
                                  v420 = swift_isUniquelyReferenced_nonNull_native();
                                  v421 = v415;
                                  v506 = v415;
                                  if ((v420 & 1) == 0)
                                  {
                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v415 + 16) + 1, 1);
                                    v421 = v506;
                                  }

                                  v145 = v501;
                                  v78 = *(v421 + 16);
                                  v422 = *(v421 + 24);
                                  v21 = v78 + 1;
                                  if (v78 >= v422 >> 1)
                                  {
                                    v424 = OUTLINED_FUNCTION_160(v422);
                                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v424, v78 + 1, 1);
                                    v145 = v501;
                                    v421 = v506;
                                  }

                                  *(v421 + 16) = v21;
                                  v438 = v421;
                                  OUTLINED_FUNCTION_83_1();
                                  v423();
                                  OUTLINED_FUNCTION_134_0();
                                }

                                v375 = v450;
                                goto LABEL_232;
                              }

                              v383 = v127;
                              v384 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
                              v385 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
                            }

                            outlined destroy of NSObject?(v383, v384, v385);
                            v390 = MEMORY[0x277D84F90];
                            goto LABEL_241;
                          }

                          OUTLINED_FUNCTION_79_1();

                          outlined destroy of NSObject?(v444, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
                          OUTLINED_FUNCTION_54_1(&v485);
                          v362(v443, v488[0], v78);
                          OUTLINED_FUNCTION_108_1(&v494);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            v435 = *(v444 + 16);
                            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                            v359 = v436;
                          }

                          OUTLINED_FUNCTION_109_1();
                          v466 = v359;
                          v364 = *(v359 + 16);
                          v363 = *(v359 + 24);
                          if (v364 >= v363 >> 1)
                          {
                            OUTLINED_FUNCTION_160(v363);
                            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                            v466 = v437;
                          }

                          v365 = *(v456 + 8);
                          OUTLINED_FUNCTION_178();
                          v366();
                          *(v466 + 16) = v364 + 1;
                          v367 = *(v456 + 80);
                          OUTLINED_FUNCTION_69();
                          v368 = *(v456 + 72);
                          OUTLINED_FUNCTION_83_1();
                          v369();
LABEL_161:
                          v113 = v493;
                          v22 = v491;
                          goto LABEL_49;
                        }

                        v255 = v470;
                        if (!v445)
                        {
                          goto LABEL_187;
                        }

LABEL_152:
                        OUTLINED_FUNCTION_77_1();
                      }

                      else
                      {
                        if (!v452)
                        {
                          goto LABEL_135;
                        }

LABEL_133:
                        OUTLINED_FUNCTION_77_1();

                        OUTLINED_FUNCTION_79_1();
                      }

LABEL_154:

                      v142 = v481;
                      if (one-time initialization token for general != -1)
                      {
                        OUTLINED_FUNCTION_0_3();
                        swift_once();
                      }

                      v258 = type metadata accessor for Logger();
                      v480 = __swift_project_value_buffer(v258, static Logging.general);
                      v475 = *v451;
                      (v475)(v457[0], v473, v458);
                      v259 = *v459;
                      v260 = v488[0];
                      v261 = v499;
                      (*v459)(v455, v488[0], v499);
                      OUTLINED_FUNCTION_102_1();
                      v262();
                      v263 = v454;
                      v259(v454, v260, v261);
                      v264 = v502;

                      v265 = Logger.logObject.getter();
                      v266 = static os_log_type_t.info.getter();

                      if (!os_log_type_enabled(v265, v266))
                      {

                        OUTLINED_FUNCTION_172();
                        v274 = *v266;
                        (*v266)(v454, v261);
                        v127 = v453;
                        v275 = *v453;
                        v276 = v458;
                        (*v453)(v457[1], v458);
                        v274(v455, v499);
                        (v275)(v457[0], v276);
                        v78 = v499;
                        v274(v260, v499);
                        v21 = v487;
                        OUTLINED_FUNCTION_112_0();
                        goto LABEL_161;
                      }

                      LODWORD(v474) = v266;
                      v475 = v265;
                      v267 = swift_slowAlloc();
                      v472 = swift_slowAlloc();
                      v506 = v472;
                      v268 = OUTLINED_FUNCTION_86_1(&v462);
                      *(v267 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v268, v264, v269);
                      v480 = v267;
                      *(v267 + 12) = 2080;
                      OUTLINED_FUNCTION_71_0(&v463);
                      AppleIntelligenceReportingAvailabilityLog.event.getter();
                      OUTLINED_FUNCTION_102_0();
                      OUTLINED_FUNCTION_142_0();
                      OUTLINED_FUNCTION_27_2(v270, v271);
                      v127 = v446;
                      if (v135)
                      {
                        outlined destroy of NSObject?(v267, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        v272 = *v453;
                        v273 = OUTLINED_FUNCTION_191();
                        v113 = v493;
                      }

                      else
                      {
                        v263 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v277();
                        v272 = *v453;
                        v113 = v493;
                        if (v267)
                        {
                          (v272)(v457[0], v458);
                          goto LABEL_166;
                        }

                        v273 = OUTLINED_FUNCTION_191();
                      }

                      v272(v273);

                      OUTLINED_FUNCTION_94_1();
LABEL_166:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v278 + 14) = v263;
                      *(v278 + 22) = 2080;
                      OUTLINED_FUNCTION_71_0(v464);
                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      OUTLINED_FUNCTION_16_4();
                      if (v135)
                      {
                        outlined destroy of NSObject?(v267, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        OUTLINED_FUNCTION_14_0();
                        v280 = *v279;
                        v78 = v454;
                        (*v279)(v455, v499);
                      }

                      else
                      {
                        v263 = AppleIntelligenceReportingAssetDeliveryEvent.subscriptionName.getter();
                        OUTLINED_FUNCTION_115_1();
                        OUTLINED_FUNCTION_6_7();
                        v281();
                        OUTLINED_FUNCTION_14_0();
                        v280 = *v282;
                        if (v267)
                        {
                          (v280)(v455, v499);
                          v78 = v454;
                          goto LABEL_173;
                        }

                        v78 = v454;
                        (v280)(v455, v499);
                      }

                      OUTLINED_FUNCTION_94_1();
LABEL_173:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v283 + 24) = v263;
                      *(v283 + 32) = 2080;
                      AppleIntelligenceReportingAvailabilityLog.event.getter();
                      OUTLINED_FUNCTION_19_3(v446);
                      if (v135)
                      {
                        outlined destroy of NSObject?(v446, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                      }

                      else
                      {
                        v263 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                        v285 = v284;
                        OUTLINED_FUNCTION_6_7();
                        v286();
                        if (v285)
                        {
                          v287 = OUTLINED_FUNCTION_127_0();
                          v272(v287);
                          goto LABEL_179;
                        }
                      }

                      v288 = OUTLINED_FUNCTION_127_0();
                      v272(v288);

                      OUTLINED_FUNCTION_94_1();
LABEL_179:
                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      OUTLINED_FUNCTION_187();
                      *(v289 + 34) = v263;
                      *(v289 + 42) = 2080;
                      OUTLINED_FUNCTION_100_0(&v465);
                      v290 = v78;
                      AppleIntelligenceReportingModelCatalogLog.event.getter();
                      v291 = OUTLINED_FUNCTION_66();
                      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v291, v292, v266);
                      v142 = v484 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                      if (EnumTagSinglePayload == 1)
                      {
                        outlined destroy of NSObject?(v446, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
                        OUTLINED_FUNCTION_112_0();
                        goto LABEL_183;
                      }

                      v263 = AppleIntelligenceReportingAssetDeliveryEvent.subscriberName.getter();
                      v290 = v294;
                      OUTLINED_FUNCTION_6_7();
                      v295();
                      OUTLINED_FUNCTION_112_0();
                      if (v290)
                      {
                        OUTLINED_FUNCTION_178();
                        OUTLINED_FUNCTION_14_0();
                        v280();
                      }

                      else
                      {
LABEL_183:
                        OUTLINED_FUNCTION_178();
                        OUTLINED_FUNCTION_14_0();
                        v280();

                        OUTLINED_FUNCTION_94_1();
                      }

                      OUTLINED_FUNCTION_118_0();
                      OUTLINED_FUNCTION_204();
                      v296 = v480;
                      *(v480 + 44) = v263;
                      OUTLINED_FUNCTION_82_1(&v503);
                      _os_log_impl(v297, v298, v299, "fetchSubscriptionEvent skipping event for %s as the subscription (%s:%s) or subscriber names (%s:%s) do not match", v296, 0x34u);
                      swift_arrayDestroy();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();

                      (v280)(v488[0], v78);
                      v21 = v487;
                      v22 = v491;
                      goto LABEL_185;
                    }

                    if (!v232)
                    {
                      goto LABEL_116;
                    }

                    OUTLINED_FUNCTION_77_1();
LABEL_108:

                    OUTLINED_FUNCTION_79_1();

LABEL_109:

                    if (one-time initialization token for general != -1)
                    {
                      OUTLINED_FUNCTION_0_3();
                      swift_once();
                    }

                    v242 = type metadata accessor for Logger();
                    OUTLINED_FUNCTION_65(v242, static Logging.general);

                    v210 = Logger.logObject.getter();
                    v243 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v210, v243))
                    {
                      OUTLINED_FUNCTION_59_1();
                      v142 = swift_slowAlloc();
                      OUTLINED_FUNCTION_60_0();
                      v212 = swift_slowAlloc();
                      v244 = OUTLINED_FUNCTION_24_4(v212);
                      OUTLINED_FUNCTION_145(v244);
                      v215 = v210;
                      v216 = "fetchSubscriptionEvent skipping event for %s as the locale does not match";
LABEL_113:
                      OUTLINED_FUNCTION_200(&dword_227F43000, v215, v214, v216);
                      __swift_destroy_boxed_opaque_existential_0Tm(v212);
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                      OUTLINED_FUNCTION_109_1();
                      OUTLINED_FUNCTION_39_1();
                      MEMORY[0x22AAAF0A0]();
                    }

LABEL_114:

LABEL_46:

                    OUTLINED_FUNCTION_54_1(&a16);
                    v173 = v488[0];
LABEL_47:
                    v172(v173, v78);
LABEL_48:
                    v21 = v487;
                    goto LABEL_49;
                  }

                  OUTLINED_FUNCTION_79_1();

                  v184 = v183;
                  v185 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
                  v186 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
                }

                outlined destroy of NSObject?(v184, v185, v186);
                v142 = v174;
                v113 = v493;
                if (one-time initialization token for general != -1)
                {
                  OUTLINED_FUNCTION_0_3();
                  swift_once();
                }

                v189 = type metadata accessor for Logger();
                OUTLINED_FUNCTION_65(v189, static Logging.general);

                v190 = Logger.logObject.getter();
                v191 = static os_log_type_t.info.getter();

                if (os_log_type_enabled(v190, v191))
                {
                  OUTLINED_FUNCTION_59_1();
                  v142 = swift_slowAlloc();
                  OUTLINED_FUNCTION_60_0();
                  v192 = swift_slowAlloc();
                  v193 = OUTLINED_FUNCTION_24_4(v192);
                  OUTLINED_FUNCTION_145(v193);
                  OUTLINED_FUNCTION_200(&dword_227F43000, v190, v194, "fetchSubscriptionEvent skipping event for %s as there are no availabilityParameters");
                  __swift_destroy_boxed_opaque_existential_0Tm(v192);
                  OUTLINED_FUNCTION_39_1();
                  MEMORY[0x22AAAF0A0]();
                  OUTLINED_FUNCTION_109_1();
                  OUTLINED_FUNCTION_39_1();
                  MEMORY[0x22AAAF0A0]();
                }

                OUTLINED_FUNCTION_54_1(&a16);
                v173 = v488[0];
                v78 = v499;
                goto LABEL_47;
              }

              outlined destroy of NSObject?(v78, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
              v78 = v499;
            }

            if (one-time initialization token for general != -1)
            {
              OUTLINED_FUNCTION_0_3();
              swift_once();
            }

            v166 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_65(v166, static Logging.general);

            v167 = Logger.logObject.getter();
            v168 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v167, v168))
            {
              OUTLINED_FUNCTION_59_1();
              v169 = swift_slowAlloc();
              OUTLINED_FUNCTION_60_0();
              v142 = swift_slowAlloc();
              v506 = v142;
              v170 = OUTLINED_FUNCTION_86_1(&a13);
              *(v169 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v502, v171);
              _os_log_impl(&dword_227F43000, v167, v168, "fetchSubscriptionEvent skipping event for %s as there are no subscriptionParameters", v169, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v142);
              OUTLINED_FUNCTION_109_1();
              OUTLINED_FUNCTION_39_1();
              MEMORY[0x22AAAF0A0]();
              v78 = v499;
              OUTLINED_FUNCTION_39_1();
              MEMORY[0x22AAAF0A0]();
            }

            goto LABEL_46;
          }

          break;
        }

        outlined destroy of NSObject?(v127, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_65(v154, static Logging.general);

        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v155, v156))
        {
          OUTLINED_FUNCTION_59_1();
          v157 = swift_slowAlloc();
          OUTLINED_FUNCTION_60_0();
          v142 = swift_slowAlloc();
          v506 = v142;
          v158 = OUTLINED_FUNCTION_86_1(&a13);
          *(v157 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v502, v159);
          _os_log_impl(&dword_227F43000, v155, v156, "fetchSubscriptionEvent skipping event for %s as there is no start", v157, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v142);
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
          v78 = v499;
          OUTLINED_FUNCTION_39_1();
          MEMORY[0x22AAAF0A0]();
        }

        goto LABEL_48;
      }

      _stringCompareWithSmolCheck(_:_:expecting:)();
      v136 = OUTLINED_FUNCTION_163();
      if (v127)
      {
        goto LABEL_19;
      }

LABEL_15:

      v114 = v504;
      (*v498)(v113, v504);
      v112 = v494;
      v107 = v495;
      if (!v110)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_19();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v116 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        break;
      }

      if (v116 >= v112)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
        v110 = 0;
        goto LABEL_8;
      }

      v110 = *(v107 + 8 * v116);
      ++v106;
      if (v110)
      {
        v106 = v116;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

void AssetDeliveryStateReader.previousAvailabilityEvent.getter()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v67 = v3;
  v4 = type metadata accessor for AssetDeliveryStateReader();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38_0();
  v66 = v9;
  OUTLINED_FUNCTION_12();
  v10 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = v0[2];
  v20 = *v2;
  v21 = v2[1];
  OUTLINED_FUNCTION_1_2();
  v23 = (*(v22 + 152))();
  specialized Dictionary.subscript.getter(v20, v21, v23);
  OUTLINED_FUNCTION_179();

  if (!v19)
  {
    if (one-time initialization token for general == -1)
    {
LABEL_8:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logging.general);
      OUTLINED_FUNCTION_8_8();
      OUTLINED_FUNCTION_48();
      outlined init with copy of AssetDeliveryStateReader();
      v28 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v41 = OUTLINED_FUNCTION_140_0();
      if (os_log_type_enabled(v41, v42))
      {
        OUTLINED_FUNCTION_59_1();
        v43 = swift_slowAlloc();
        OUTLINED_FUNCTION_60_0();
        v69 = swift_slowAlloc();
        *v43 = 136315138;
        v44 = *v1;
        v45 = v1[1];

        OUTLINED_FUNCTION_2_8();
        outlined destroy of AssetDeliveryStateReader(v1, v46);
        v47 = OUTLINED_FUNCTION_124_0();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v49);

        *(v43 + 4) = v50;
        OUTLINED_FUNCTION_171();
        _os_log_impl(v51, v52, v53, v54, v55, v56);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);
        OUTLINED_FUNCTION_39_1();
        MEMORY[0x22AAAF0A0]();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_2_8();
      v65 = v1;
LABEL_20:
      outlined destroy of AssetDeliveryStateReader(v65, v64);
      goto LABEL_21;
    }

LABEL_24:
    OUTLINED_FUNCTION_0_3();
    swift_once();
    goto LABEL_8;
  }

  v24 = *(v4 + 24);
  statusInteger(from:)();
  if ((v26 & 1) == 0)
  {
    v1 = v25;
    v57 = *(v19 + 16);
    if (!v57)
    {
LABEL_16:

      goto LABEL_21;
    }

    while (v57 <= *(v19 + 16))
    {
      --v57;
      v58 = *(v13 + 80);
      OUTLINED_FUNCTION_69();
      (*(v13 + 16))(v18, v19 + v59 + *(v13 + 72) * v57, v10);
      statusInteger(from:)();
      if ((v61 & 1) != 0 || v60 != v1)
      {

        (*(v13 + 32))(v67, v18, v10);
        v62 = v67;
        v63 = 0;
        goto LABEL_22;
      }

      (*(v13 + 8))(v18, v10);
      if (!v57)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  __swift_project_value_buffer(v27, static Logging.general);
  OUTLINED_FUNCTION_8_8();
  outlined init with copy of AssetDeliveryStateReader();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = OUTLINED_FUNCTION_140_0();
  if (!os_log_type_enabled(v30, v31))
  {

    OUTLINED_FUNCTION_2_8();
    v65 = v66;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_59_1();
  v32 = swift_slowAlloc();
  OUTLINED_FUNCTION_60_0();
  v68 = swift_slowAlloc();
  *v32 = 136315138;
  v33 = *v66;
  v34 = v66[1];

  OUTLINED_FUNCTION_2_8();
  outlined destroy of AssetDeliveryStateReader(v66, v35);
  v36 = OUTLINED_FUNCTION_124_0();
  v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v38);

  *(v32 + 4) = v39;
  _os_log_impl(&dword_227F43000, v28, v29, "Previous availability current status not found for %s", v32, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x22AAAF0A0]();
LABEL_10:
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x22AAAF0A0]();

LABEL_21:
  v62 = v67;
  v63 = 1;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v62, v63, 1, v10);
  OUTLINED_FUNCTION_19();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSSGMd, &_ss18_DictionaryStorageCySSSgSSGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  if (v3 == MEMORY[0x277D837D0])
  {
    v18 = (v5 + 63) >> 6;

    v19 = 0;
    v38 = v1;
    if (!v7)
    {
      goto LABEL_17;
    }

    do
    {
      v20 = v19;
LABEL_20:
      v21 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v22 = (v20 << 10) | (16 * v21);
      v23 = (*(v1 + 48) + v22);
      v24 = (*(v1 + 56) + v22);
      v25 = *v24;
      v26 = v24[1];
      v40 = *v23;
      v42 = v23[1];

      swift_dynamicCast();
      result = specialized __RawDictionaryStorage.find<A>(_:)();
      v27 = result;
      if (v28)
      {
        v29 = (v2[6] + 16 * result);
        v30 = v29[1];
        *v29 = v43;
        v29[1] = v44;

        v31 = (v2[7] + 16 * v27);
        v32 = v31[1];
        *v31 = v25;
        v31[1] = v26;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_30;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v33 = (v2[6] + 16 * result);
        *v33 = v43;
        v33[1] = v44;
        v34 = (v2[7] + 16 * result);
        *v34 = v25;
        v34[1] = v26;
        v35 = v2[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_31;
        }

        v2[2] = v37;
      }

      v19 = v20;
      v1 = v38;
    }

    while (v7);
LABEL_17:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
LABEL_27:

        return v2;
      }

      v7 = *(v4 + 8 * v20);
      ++v19;
      if (v7)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    if (!v7)
    {
      goto LABEL_9;
    }

    do
    {
      v11 = v10;
LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = (v11 << 10) | (16 * v12);
      v14 = (*(v1 + 48) + v13);
      v15 = (*(v1 + 56) + v13);
      v16 = *v15;
      v17 = v15[1];
      v39 = *v14;
      v41 = v14[1];

      swift_dynamicCast();
      result = specialized _NativeDictionary._unsafeInsertNew(key:value:)(v43, v44, v16, v17, v2);
    }

    while (v7);
LABEL_9:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_27;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t AssetDeliveryStateReader.allAssetSpecifiers()(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_97_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_122_1();
  v12 = *(type metadata accessor for AssetDeliveryStateReader() + 32);
  outlined init with copy of AppleIntelligenceError?();
  v13 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v14 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v14, v15, v13);
  if (v23)
  {
    v16 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v17 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v18 = v2;
LABEL_7:
    outlined destroy of NSObject?(v18, v16, v17);
    return MEMORY[0x277D84F90];
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_35_0();
  (*(v19 + 8))(v2, v13);
  v20 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v21 = OUTLINED_FUNCTION_102_0();
  v24 = OUTLINED_FUNCTION_34_0(v21, v22, v20);
  if (v23)
  {
    v16 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v17 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v18 = v1;
    goto LABEL_7;
  }

  v25 = a1(v24);
  OUTLINED_FUNCTION_35_0();
  v27 = *(v26 + 8);
  v28 = OUTLINED_FUNCTION_104_0();
  v29(v28);
  return v25;
}

void AssetDeliveryStateReader.allErrors()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v23;
  a20 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v29);
  v399 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  v30 = OUTLINED_FUNCTION_0(v399);
  v384 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  v405 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v38 = OUTLINED_FUNCTION_13(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v42);
  v413 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v43 = OUTLINED_FUNCTION_0(v413);
  v417 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_7();
  v408 = v47;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_38_0();
  v416 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v53 = OUTLINED_FUNCTION_13(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7();
  v409 = v56;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_96();
  v411 = v59;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_96();
  v414 = v62;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v64);
  v419 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v65 = OUTLINED_FUNCTION_0(v419);
  v397 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v70);
  v407 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v71 = OUTLINED_FUNCTION_0(v407);
  v396 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMR);
  v78 = OUTLINED_FUNCTION_13(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_38_0();
  v410 = v82;
  v83 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  v85 = OUTLINED_FUNCTION_13(v84);
  v87 = *(v86 + 64);
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_7();
  v89 = v88;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v90);
  v92 = &v379 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v93);
  v95 = *(v94 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_122_1();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_97_1();
  v101 = type metadata accessor for Date();
  v102 = OUTLINED_FUNCTION_0(v101);
  v380 = v103;
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_33_1(v106);
  v388 = AssetDeliveryStateReader.allAssetSetIdentifiers()();
  v404 = AssetDeliveryStateReader.allAssetSpecifiers()();
  v107 = type metadata accessor for AssetDeliveryStateReader();
  v108 = v107[7];
  v109 = v20;
  outlined init with copy of AppleIntelligenceError?();
  v110 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  OUTLINED_FUNCTION_19_2(v92);
  if (v116)
  {
    v111 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd;
    v112 = &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR;
    v113 = v92;
LABEL_7:
    outlined destroy of NSObject?(v113, v111, v112);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v101);
    v120 = v410;
    v121 = v20;
    goto LABEL_8;
  }

  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_31_1(v110);
  (*(v114 + 8))(v92, v110);
  v115 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_13_4(v21);
  if (v116)
  {
    v111 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v112 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v113 = v21;
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
  OUTLINED_FUNCTION_30_0();
  (*(v124 + 8))(v21, v115);
  v125 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v125, v126, v101);
  v120 = v410;
  v121 = v20;
  if (!v127)
  {
    (*(v380 + 32))(v398, v22, v101);
    goto LABEL_12;
  }

LABEL_8:
  static Date.distantPast.getter();
  v122 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v122, v123, v101);
  if (!v116)
  {
    outlined destroy of NSObject?(v22, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_12:
  v422[0] = MEMORY[0x277D84F90];
  v128 = v121 + v107[6];
  AppleIntelligenceReportingAvailabilityLog.subsystemErrors.getter();
  OUTLINED_FUNCTION_3_7();
  specialized Array.append<A>(contentsOf:)(v129, v130, type metadata accessor for AssetDeliverySubsystemError);
  v131 = v107[8];
  outlined init with copy of AppleIntelligenceError?();
  OUTLINED_FUNCTION_19_2(v89);
  v379 = v101;
  if (v116)
  {
    outlined destroy of NSObject?(v89, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    v133 = MEMORY[0x277D84F90];
  }

  else
  {
    AppleIntelligenceReportingModelCatalogLog.subsystemErrors.getter();
    v133 = v132;
    OUTLINED_FUNCTION_31_1(v110);
    (*(v134 + 8))(v89, v110);
  }

  v135 = v407;
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_3_7();
  specialized Array.append<A>(contentsOf:)(v133, v136, type metadata accessor for AssetDeliverySubsystemError);
  v137 = *(v121 + 16);
  OUTLINED_FUNCTION_1_2();
  v139 = *(v138 + 224);
  v381 = v137;
  v140 = v139();
  v141 = 0;
  v412 = 0;
  v143 = (v140 + 64);
  v142 = *(v140 + 64);
  v394 = v140;
  OUTLINED_FUNCTION_2_7(v140);
  v146 = v145 & v144;
  v148 = (v147 + 63) >> 6;
  v391 = v396 + 16;
  v390 = v397 + 16;
  v418 = (v396 + 32);
  v415 = (v397 + 32);
  v401 = v397 + 8;
  v406 = (v396 + 8);
  v149 = v135;
  v403 = v143;
  v402 = v148;
  if (v146)
  {
    while (1)
    {
      v150 = v141;
LABEL_22:
      v152 = __clz(__rbit64(v146));
      v146 &= v146 - 1;
      v153 = v152 | (v150 << 6);
      v154 = v394;
      v155 = v396;
      (*(v396 + 16))(v392, *(v394 + 48) + *(v396 + 72) * v153, v149);
      v109 = v397;
      v156 = v393;
      v83 = v419;
      (*(v397 + 16))(v393, *(v154 + 56) + *(v397 + 72) * v153, v419);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
      v158 = *(v157 + 48);
      v159 = *(v155 + 32);
      v160 = v395;
      v161 = v149;
      v159();
      v162 = v160 + v158;
      v151 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR;
      (*(v109 + 32))(v162, v156, v83);
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v157);
      OUTLINED_FUNCTION_186();
      v120 = v410;
LABEL_23:
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      v166 = OUTLINED_FUNCTION_31_0();
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(v166, v167);
      OUTLINED_FUNCTION_25(v120);
      if (v116)
      {
        break;
      }

      v169 = *(v168 + 48);
      OUTLINED_FUNCTION_57_0();
      v149 = v161;
      v170(v83, v120, v161);
      (*v415)(v109, v120 + v169, v419);
      v171 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
      if (v172)
      {
        v420 = v171;
        v421 = v172;
        MEMORY[0x28223BE20](v171);
        OUTLINED_FUNCTION_21_3();
        v175 = OUTLINED_FUNCTION_198(v173, v174);
        v412 = v120;

        v143 = v403;
        if (v175)
        {
          OUTLINED_FUNCTION_170();
          AppleIntelligenceReportingMobileAssetLog.subsystemErrors(since:)();
          OUTLINED_FUNCTION_3_7();
          specialized Array.append<A>(contentsOf:)(v176, v177, type metadata accessor for AssetDeliverySubsystemError);
        }

        v149 = v407;
        v120 = v410;
      }

      else
      {
        v143 = v403;
      }

      OUTLINED_FUNCTION_54_1(&a17);
      v178(v109, v419);
      (*v406)(v83, v149);
      v148 = v402;
      if (!v146)
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_49_0();
    v186 = (*(v185 + 248))();
    v187 = 0;
    v402 = OUTLINED_FUNCTION_123_1(v186);
    OUTLINED_FUNCTION_2_7(v402);
    v191 = v190 & v189;
    v193 = (v192 + 63) >> 6;
    v415 = (v417 + 2);
    v418 = v417 + 1;
    v419 = v417 + 4;
    v194 = v413;
    v195 = v389;
    v196 = v412;
    v410 = v188;
    v403 = v193;
    while (1)
    {
      if (v191)
      {
        v197 = v187;
        goto LABEL_39;
      }

      do
      {
        v197 = v187 + 1;
        if (__OFADD__(v187, 1))
        {
          goto LABEL_111;
        }

        if (v197 >= v193)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
          v191 = 0;
          goto LABEL_40;
        }

        v191 = v188[v197];
        ++v187;
      }

      while (!v191);
      v187 = v197;
LABEL_39:
      v198 = __clz(__rbit64(v191));
      v191 &= v191 - 1;
      v199 = v198 | (v197 << 6);
      v200 = v402;
      v201 = v417;
      (v417[2])(v416, *(v402 + 48) + v417[9] * v199, v194);
      v151 = *(*(v200 + 56) + 8 * v199);
      v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v202 = *(v168 + 48);
      v203 = v201[4];
      v204 = v414;
      v205 = OUTLINED_FUNCTION_121_1();
      v206(v205);
      *(v204 + v202) = v151;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v207, v208, v209, v168);

      v195 = v389;
LABEL_40:
      OUTLINED_FUNCTION_82_1(&a15);
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v210 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_19_2(v210);
      if (v116)
      {
        break;
      }

      v151 = *(v168 + v151[12]);
      OUTLINED_FUNCTION_148();
      v211 = OUTLINED_FUNCTION_157();
      v212(v211);
      v168 = v195;
      v213 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
      if (v214)
      {
        v194 = v213;
        v215 = v214;
        v168 = v151;
        v216 = (*(*v151 + 104))();
        if (v216)
        {
          v420 = v194;
          v421 = v215;
          MEMORY[0x28223BE20](v216);
          OUTLINED_FUNCTION_21_3();
          v168 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v217, v404);

          if (v168)
          {
            OUTLINED_FUNCTION_169();
            v219 = (*(v218 + 184))();
            v194 = &v379;
            MEMORY[0x28223BE20](v219);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v220);
            v223 = OUTLINED_FUNCTION_202(v221, v222);

            OUTLINED_FUNCTION_3_7();
            v168 = v422;
            specialized Array.append<A>(contentsOf:)(v223, v224, type metadata accessor for AssetDeliverySubsystemError);

            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v225();
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v232();
          }
        }

        else
        {
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_100_1();
          v227();
        }

        v188 = v410;
        v193 = v403;
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        v226(v195, v194);

        v188 = v410;
        v193 = v403;
      }
    }

    OUTLINED_FUNCTION_49_0();
    v234 = (*(v233 + 272))();
    v235 = 0;
    v412 = OUTLINED_FUNCTION_123_1(v234);
    OUTLINED_FUNCTION_2_7(v412);
    v239 = v238 & v237;
    v241 = (v240 + 63) >> 6;
    v242 = v386;
    v414 = v236;
    if ((v238 & v237) == 0)
    {
      goto LABEL_63;
    }

LABEL_67:
    OUTLINED_FUNCTION_161();
    v266 = v412;
    v267 = OUTLINED_FUNCTION_105_1();
    v268(v267);
    OUTLINED_FUNCTION_193();
    v269 = v411;
    v270 = OUTLINED_FUNCTION_192();
    v271(v270);
    *(v269 + v266) = v168;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v272, v273, v274, v151);

    v242 = v386;
    while (1)
    {
      OUTLINED_FUNCTION_82_1(&v421);
      _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
      OUTLINED_FUNCTION_19_2(v168);
      if (v116)
      {

        OUTLINED_FUNCTION_49_0();
        v276 = (*(v275 + 296))();
        v277 = 0;
        v411 = OUTLINED_FUNCTION_123_1(v276);
        OUTLINED_FUNCTION_2_7(v411);
        v281 = v280 & v279;
        v283 = (v282 + 63) >> 6;
        v414 = v278;
        while (1)
        {
          if (v281)
          {
            goto LABEL_77;
          }

          v168 = v408;
          do
          {
            v284 = v277 + 1;
            if (__OFADD__(v277, 1))
            {
              goto LABEL_113;
            }

            if (v284 >= v283)
            {
              OUTLINED_FUNCTION_23();
              __swift_storeEnumTagSinglePayload(v315, v316, v317, v151);
              v281 = 0;
              goto LABEL_78;
            }

            v281 = *(v278 + 8 * v284);
            ++v277;
          }

          while (!v281);
          v277 = v284;
LABEL_77:
          OUTLINED_FUNCTION_161();
          v285 = v411;
          v286 = OUTLINED_FUNCTION_105_1();
          v287(v286);
          OUTLINED_FUNCTION_193();
          v288 = v409;
          v289 = OUTLINED_FUNCTION_192();
          v290(v289);
          *(v288 + v285) = v168;
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v291, v292, v293, v151);

          v168 = v408;
LABEL_78:
          v294 = v387;
          _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
          OUTLINED_FUNCTION_19_2(v294);
          if (v116)
          {
            break;
          }

          v295 = *(v294 + v151[12]);
          OUTLINED_FUNCTION_148();
          v296(v168, v294, v194);
          v297 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
          if (!v298)
          {
            OUTLINED_FUNCTION_57_0();
            v313(v168, v194);
LABEL_87:

            v278 = v414;
            continue;
          }

          v299 = v297;
          v300 = v298;
          OUTLINED_FUNCTION_169();
          v168 = v295;
          v302 = (*(v301 + 104))();
          if (v302)
          {
            v194 = v302;
            v412 = &v379;
            v420 = v299;
            v421 = v300;
            MEMORY[0x28223BE20](v302);
            OUTLINED_FUNCTION_21_3();
            v304 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v303, v404);

            if (!v304)
            {
              OUTLINED_FUNCTION_57_0();
              v168 = v194;
              OUTLINED_FUNCTION_100_1();
              v318();

              goto LABEL_87;
            }

            v306 = (*(*v194 + 184))(v305);
            v194 = &v379;
            MEMORY[0x28223BE20](v306);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v307);
            v310 = OUTLINED_FUNCTION_202(v308, v309);

            OUTLINED_FUNCTION_3_7();
            v168 = v422;
            specialized Array.append<A>(contentsOf:)(v310, v311, type metadata accessor for AssetDeliverySubsystemError);

            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v312();
            v278 = v414;
          }

          else
          {
            OUTLINED_FUNCTION_57_0();
            OUTLINED_FUNCTION_100_1();
            v314();

            v278 = v414;
          }
        }

        v412 = v196;

        OUTLINED_FUNCTION_49_0();
        v320 = (*(v319 + 320))();
        v321 = 0;
        v416 = OUTLINED_FUNCTION_123_1(v320);
        OUTLINED_FUNCTION_2_7(v416);
        v325 = v324 & v323;
        v327 = (v326 + 63) >> 6;
        v415 = (v384 + 16);
        v419 = (v384 + 32);
        v417 = (v384 + 8);
        v328 = v382;
        v329 = v399;
        v418 = v322;
        v414 = v327;
        while (1)
        {
LABEL_89:
          if (!v325)
          {
            while (1)
            {
              v330 = v321 + 1;
              if (__OFADD__(v321, 1))
              {
                goto LABEL_114;
              }

              if (v330 >= v327)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
                OUTLINED_FUNCTION_23();
                __swift_storeEnumTagSinglePayload(v370, v371, v372, v373);
                v325 = 0;
                goto LABEL_95;
              }

              v325 = v322[v330];
              ++v321;
              if (v325)
              {
                v321 = v330;
                break;
              }
            }
          }

          OUTLINED_FUNCTION_155();
          v331 = v416;
          v332 = v384;
          (*(v384 + 16))(v383, *(v416 + 48) + *(v384 + 72) * v168, v329);
          v333 = *(*(v331 + 56) + 8 * v168);
          v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          v335 = *(v334 + 48);
          v336 = v400;
          (*(v332 + 32))();
          *(v336 + v335) = v333;
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v337, v338, v339, v334);

          v327 = v414;
LABEL_95:
          v340 = v385;
          _s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgWObTm_0();
          v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
          OUTLINED_FUNCTION_25(v340);
          if (v116)
          {

            (*(v380 + 8))(v398, v379);
            OUTLINED_FUNCTION_19();
            return;
          }

          v342 = *(v340 + *(v341 + 48));
          OUTLINED_FUNCTION_148();
          v168 = v405;
          v343 = OUTLINED_FUNCTION_113_1();
          v329 = v399;
          v344(v343);
          AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.getter();
          v345 = OUTLINED_FUNCTION_102_0();
          OUTLINED_FUNCTION_26_1(v345, v346);
          if (!v116)
          {
            break;
          }

          v347 = *v417;
          v348 = OUTLINED_FUNCTION_114_1();
          v349(v348);

          outlined destroy of NSObject?(v328, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
          v322 = v418;
        }

        v168 = v328;
        v350 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
        v352 = v351;
        v353 = *v406;
        v354 = OUTLINED_FUNCTION_51_0();
        v356 = v355(v354);
        if (v352)
        {
          v168 = v342;
          v357 = (*(*v342 + 104))(v356);
          if (!v357)
          {
            v376 = OUTLINED_FUNCTION_88_1();
            v329 = v399;
            v377(v376, v399);

            goto LABEL_108;
          }

          v358 = v357;
          v420 = v350;
          v421 = v352;
          MEMORY[0x28223BE20](v357);
          OUTLINED_FUNCTION_21_3();
          v168 = OUTLINED_FUNCTION_198(v359, v360);

          if (v168)
          {
            v362 = (*(*v358 + 184))(v361);
            MEMORY[0x28223BE20](v362);
            OUTLINED_FUNCTION_22_4();
            OUTLINED_FUNCTION_90_1(v363);
            v366 = OUTLINED_FUNCTION_202(v364, v365);
            v412 = v328;

            OUTLINED_FUNCTION_3_7();
            v168 = v422;
            specialized Array.append<A>(contentsOf:)(v366, v367, type metadata accessor for AssetDeliverySubsystemError);

            v368 = OUTLINED_FUNCTION_88_1();
            v329 = v399;
            v369(v368, v399);
LABEL_108:
            v328 = v382;
            v322 = v418;
            goto LABEL_89;
          }

          v412 = v328;
          OUTLINED_FUNCTION_88_1();
          OUTLINED_FUNCTION_182();
          v378();

          v329 = v168;
        }

        else
        {
          v374 = OUTLINED_FUNCTION_88_1();
          v375(v374, v329);
        }

        goto LABEL_108;
      }

      v243 = *(v168 + v151[12]);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_159();
      v244();
      v168 = v242;
      v245 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
      if (v246)
      {
        v247 = v245;
        v194 = v246;
        OUTLINED_FUNCTION_169();
        v249 = (*(v248 + 104))();
        if (!v249)
        {
          OUTLINED_FUNCTION_57_0();
          v168 = v413;
          v260(v242, v413);

          v194 = v168;

          goto LABEL_61;
        }

        v410 = v249;
        v403 = &v379;
        v420 = v247;
        v421 = v194;
        MEMORY[0x28223BE20](v249);
        OUTLINED_FUNCTION_21_3();
        v168 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v250, v404);

        if (v168)
        {
          v194 = v410;
          v252 = (*(*v410 + 184))(v251);
          v403 = &v379;
          MEMORY[0x28223BE20](v252);
          OUTLINED_FUNCTION_22_4();
          OUTLINED_FUNCTION_90_1(v253);
          v256 = OUTLINED_FUNCTION_202(v254, v255);

          OUTLINED_FUNCTION_3_7();
          v168 = v422;
          specialized Array.append<A>(contentsOf:)(v256, v257, type metadata accessor for AssetDeliverySubsystemError);

          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_100_1();
          v258();
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_57_0();
        OUTLINED_FUNCTION_100_1();
        v264();
      }

      else
      {
        OUTLINED_FUNCTION_57_0();
        v259(v242, v194);
      }

LABEL_61:
      v236 = v414;
      if (v239)
      {
        goto LABEL_67;
      }

      while (1)
      {
LABEL_63:
        v265 = v235 + 1;
        if (__OFADD__(v235, 1))
        {
          goto LABEL_112;
        }

        if (v265 >= v241)
        {
          break;
        }

        v239 = *(v236 + 8 * v265);
        ++v235;
        if (v239)
        {
          v235 = v265;
          goto LABEL_67;
        }
      }

      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v261, v262, v263, v151);
      v239 = 0;
    }
  }

LABEL_17:
  v151 = &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR;
  while (1)
  {
    v150 = v141 + 1;
    if (__OFADD__(v141, 1))
    {
      break;
    }

    if (v150 >= v148)
    {
      v161 = v149;
      v179 = OUTLINED_FUNCTION_31_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v179, v180);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
      v146 = 0;
      goto LABEL_23;
    }

    v146 = v143[v150];
    ++v141;
    if (v146)
    {
      v141 = v150;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), type metadata accessor for InvocationStep);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  v11 = *(result - 8);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, v5);
  v16 = v14 + v5;
  if (!v15)
  {
    *(v9 + 16) = v16;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *specialized Sequence.flatMap<A>(_:)(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v21 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v5)
    {
      return v6;
    }

    v7 = *(type metadata accessor for AppleIntelligenceReportingMobileAssetLog() - 8);
    result = a1(&v22, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v3)
    {

      return v6;
    }

    v9 = v22;
    v10 = *(v22 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
      result = type metadata accessor for AssetDeliverySubsystemError();
      v14 = *(result - 1);
      if (v13 < v10)
      {
        goto LABEL_19;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v10)
      {
        v17 = *(v6 + 16);
        v18 = __OFADD__(v17, v10);
        v19 = v17 + v10;
        if (v18)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v19;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void AssetDeliveryStateReader.locale.getter()
{
  OUTLINED_FUNCTION_18();
  v5 = v0;
  v6 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v7 = OUTLINED_FUNCTION_0(v6);
  v75 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_122_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v12 = OUTLINED_FUNCTION_13(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_13_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_136_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v20 = OUTLINED_FUNCTION_13(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_64_1();
  v24 = *(type metadata accessor for AssetDeliveryStateReader() + 24);
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v25 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_13_4(v2);
  if (v28)
  {
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_30_0();
    (*(v26 + 8))(v2, v25);
    v27 = type metadata accessor for AppleIntelligenceReportingUseCase();
    OUTLINED_FUNCTION_23_3(v4);
    if (v28)
    {
      outlined destroy of NSObject?(v4, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
      v5 = v0;
    }

    else
    {
      AppleIntelligenceReportingUseCase.locale.getter();
      v30 = v29;
      OUTLINED_FUNCTION_31_1(v27);
      (*(v31 + 8))(v4, v27);
      v5 = v0;
      if (v30)
      {
        goto LABEL_15;
      }
    }
  }

  AppleIntelligenceReportingAvailabilityLog.event.getter();
  OUTLINED_FUNCTION_13_4(v17);
  if (v28)
  {
    v32 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v33 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v34 = v17;
LABEL_14:
    outlined destroy of NSObject?(v34, v32, v33);
    goto LABEL_15;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_30_0();
  (*(v35 + 8))(v17, v25);
  type metadata accessor for AppleIntelligenceReportingUseCase();
  v36 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34_0(v36, v37, v38);
  if (v39)
  {
    v32 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v33 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v34 = v3;
    goto LABEL_14;
  }

  v40 = AppleIntelligenceReportingUseCase.parameters.getter();
  OUTLINED_FUNCTION_35_0();
  v42 = *(v41 + 8);
  v43 = OUTLINED_FUNCTION_124_1();
  v44(v43);
  v45 = *(v40 + 16);
  if (!v45)
  {
    goto LABEL_56;
  }

  v71 = 0;
  v72 = 0;
  v46 = 0;
  v47 = 0xEF616E696843646ELL;
  OUTLINED_FUNCTION_101_1();
  v48 = *(v75 + 16);
  v49 = *(v75 + 80);
  OUTLINED_FUNCTION_69();
  v51 = v40 + v50;
  v73 = *(v52 + 56);
  v74 = v53;
  do
  {
    v74(v1, v51, v6);
    v54 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (!v55)
    {
      goto LABEL_27;
    }

    if (v54 == v24 && v55 == 0xE800000000000000)
    {

LABEL_26:

      AppleIntelligenceReportingAsset.version.getter();
      v46 = v57;
      goto LABEL_27;
    }

    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_163();
    if (v5)
    {
      goto LABEL_26;
    }

LABEL_27:
    v58 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
    if (!v59)
    {
      goto LABEL_52;
    }

    if (v58 == v4 && v59 == v47)
    {

LABEL_35:
      v24 = v46;
      v61 = v47;
      v62 = AppleIntelligenceReportingAsset.version.getter();
      if (v63)
      {
        v64 = v62 == 1702195828 && v63 == 0xE400000000000000;
        v65 = 0x646E616C6E69614DLL;
        v4 = 0xED0000616E696843;
        if (v64)
        {
          goto LABEL_49;
        }

        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_163();
        if (v5)
        {
LABEL_50:

          v71 = v65;
          v72 = v4;
          goto LABEL_51;
        }
      }

      v66 = AppleIntelligenceReportingAsset.version.getter();
      if (!v67)
      {
        goto LABEL_51;
      }

      if (v66 != 0x65736C6166 || v67 != 0xE500000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_163();
        if (v5)
        {
          v4 = 0xE300000000000000;
          v65 = 5730130;
          goto LABEL_50;
        }

LABEL_51:
        v47 = v61;
        v46 = v24;
        OUTLINED_FUNCTION_101_1();
        goto LABEL_52;
      }

      v4 = 0xE300000000000000;
      v65 = 5730130;
LABEL_49:

      goto LABEL_50;
    }

    OUTLINED_FUNCTION_159();
    _stringCompareWithSmolCheck(_:_:expecting:)();
    OUTLINED_FUNCTION_163();
    if (v5)
    {
      goto LABEL_35;
    }

LABEL_52:
    OUTLINED_FUNCTION_148();
    v69 = OUTLINED_FUNCTION_51_0();
    v70(v69);
    v51 += v73;
    --v45;
  }

  while (v45);

  if (!v46)
  {
LABEL_56:

    goto LABEL_15;
  }

  if (v72)
  {
    MEMORY[0x22AAAE070](95, 0xE100000000000000);
    MEMORY[0x22AAAE070](v71, v72);
  }

LABEL_15:
  OUTLINED_FUNCTION_19();
}

void static AssetDeliveryStateReader.subscriptionHash(subscriptionEvent:)()
{
  OUTLINED_FUNCTION_18();
  v3 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v4 = OUTLINED_FUNCTION_0(v3);
  v143 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v141 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v11 = OUTLINED_FUNCTION_0(v141);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v17 = OUTLINED_FUNCTION_13(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v139 = v20;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_96();
  v138 = v22;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_96();
  v136 = v24;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_64_1();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v27 = OUTLINED_FUNCTION_13(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v134 = v30;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_96();
  v133 = v32;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_96();
  v132 = v34;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_93_1();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
  OUTLINED_FUNCTION_13(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_97_1();
  v40 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v48 = v47 - v46;
  v50 = v49;
  outlined init with copy of AppleIntelligenceError?();
  v51 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_34_0(v51, v52, v50);
  if (v55)
  {
    outlined destroy of NSObject?(v0, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA24ReportingModelCatalogLogVSgMR);
    goto LABEL_56;
  }

  v130 = v13;
  v135 = v50;
  (*(v43 + 32))(v48, v0, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_227FB2070;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  v54 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  OUTLINED_FUNCTION_23_3(v2);
  v56 = v48;
  if (v55)
  {
    outlined destroy of NSObject?(v2, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  }

  else
  {
    AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
    OUTLINED_FUNCTION_31_1(v54);
    (*(v57 + 8))(v2, v54);
    v58 = OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_1(v58, v59);
    if (v60)
    {
      outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    }

    else
    {
      v61 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
      v63 = v62;
      v64 = OUTLINED_FUNCTION_87_0();
      v65(v64);
      if (v63)
      {
        *(v53 + 32) = v61;
        *(v53 + 40) = v63;
        v66 = v53;
        goto LABEL_13;
      }
    }
  }

  v66 = v53;
  *(v53 + 32) = 0;
  *(v53 + 40) = 0xE000000000000000;

LABEL_13:
  v67 = v136;
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v136);
  v137 = v43;
  v68 = v139;
  if (v55)
  {
    outlined destroy of NSObject?(v67, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
LABEL_16:
    v69 = v138;
    goto LABEL_24;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1(v54);
  (*(v70 + 8))(v67, v54);
  OUTLINED_FUNCTION_19_2(v132);
  v69 = v138;
  if (v71)
  {
    outlined destroy of NSObject?(v132, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  }

  else
  {
    v72 = AppleIntelligenceReportingUseCase.mode.getter();
    v73 = OUTLINED_FUNCTION_87_0();
    v74(v73);
    if ((v72 & 0x100000000) == 0)
    {
      v68 = v10;
      dispatch thunk of CustomStringConvertible.description.getter();
      v76 = *(v66 + 16);
      v75 = *(v66 + 24);
      v10 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        OUTLINED_FUNCTION_160(v75);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v66 = v129;
      }

      OUTLINED_FUNCTION_146();
      goto LABEL_16;
    }
  }

LABEL_24:
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v69);
  if (v55)
  {
    v77 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v78 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v79 = v69;
LABEL_30:
    outlined destroy of NSObject?(v79, v77, v78);
    goto LABEL_31;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1(v54);
  (*(v80 + 8))(v69, v54);
  OUTLINED_FUNCTION_19_2(v133);
  if (v81)
  {
    v77 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v78 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v79 = v133;
    goto LABEL_30;
  }

  AppleIntelligenceReportingUseCase.locale.getter();
  v92 = v91;
  v93 = OUTLINED_FUNCTION_87_0();
  v94(v93);
  if (v92)
  {
    v68 = v10;
    v96 = *(v66 + 16);
    v95 = *(v66 + 24);
    v10 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      OUTLINED_FUNCTION_160(v95);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v66 = v128;
    }

    OUTLINED_FUNCTION_146();
  }

LABEL_31:
  AppleIntelligenceReportingModelCatalogLog.event.getter();
  OUTLINED_FUNCTION_23_3(v68);
  v131 = v56;
  if (v55)
  {
    v82 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v83 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
    v84 = v68;
LABEL_37:
    outlined destroy of NSObject?(v84, v82, v83);
    v100 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1(v54);
  v86 = *(v85 + 8);
  v87 = OUTLINED_FUNCTION_153();
  v88(v87);
  v90 = OUTLINED_FUNCTION_19_2(v134);
  if (v89)
  {
    v82 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v83 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    v84 = v134;
    goto LABEL_37;
  }

  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_22_4();
  *(v97 - 16) = v134;
  static Buildable.with(_:)();
  v98 = *(v130 + 8);
  v99 = OUTLINED_FUNCTION_77_0();
  v98(v99);
  v100 = AppleIntelligenceReportingUseCase.parameters.getter();
  v101 = OUTLINED_FUNCTION_153();
  v98(v101);
LABEL_42:
  v102 = v135;
  v103 = *(v100 + 16);
  if (v103)
  {
    v104 = v66;
    v105 = *(v143 + 16);
    v106 = *(v143 + 80);
    OUTLINED_FUNCTION_69();
    v108 = v100 + v107;
    v140 = *(v143 + 72);
    v142 = v109;
    do
    {
      v110 = v10;
      v111 = v10;
      v112 = v3;
      v142(v110, v108, v3);
      v113 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        v113 = 0;
        v115 = 0xE000000000000000;
      }

      MEMORY[0x22AAAE070](v113, v115);

      MEMORY[0x22AAAE070](95, 0xE100000000000000);
      v116 = v111;
      v117 = AppleIntelligenceReportingAsset.version.getter();
      if (v118)
      {
        v119 = v118;
      }

      else
      {
        v117 = 0;
        v119 = 0xE000000000000000;
      }

      MEMORY[0x22AAAE070](v117, v119);

      v121 = *(v104 + 16);
      v120 = *(v104 + 24);
      v144 = v104;
      if (v121 >= v120 >> 1)
      {
        OUTLINED_FUNCTION_160(v120);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v144 = v126;
      }

      v122 = *(v143 + 8);
      v123 = OUTLINED_FUNCTION_104_0();
      v124(v123);
      v104 = v144;
      *(v144 + 16) = v121 + 1;
      v125 = v144 + 16 * v121;
      *(v125 + 32) = 0;
      *(v125 + 40) = 0xE000000000000000;
      v3 = v112;
      v10 = v116;
      v108 += v140;
      --v103;
    }

    while (v103);

    v102 = v135;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  OUTLINED_FUNCTION_115_1();

  v127._countAndFlagsBits = OUTLINED_FUNCTION_62();
  crc32Checksum(_:)(v127);

  (*(v137 + 8))(v131, v102);
LABEL_56:
  OUTLINED_FUNCTION_19();
}