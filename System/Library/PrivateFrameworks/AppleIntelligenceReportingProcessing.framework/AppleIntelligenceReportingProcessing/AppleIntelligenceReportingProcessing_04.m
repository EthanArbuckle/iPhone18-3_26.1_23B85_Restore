void InvocationProcessor.getNumberOfCompletedEvents(for:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for InvocationStepMetadata(0);
  v6 = OUTLINED_FUNCTION_44(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v31 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_1_2();
  v14 = (*(v13 + 160))();
  v15 = 0;
  v16 = *(v14 + 16);
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {

      OUTLINED_FUNCTION_19();
      return;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v19 = *(v8 + 72);
    OUTLINED_FUNCTION_18_4();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v20, v0);
    v21 = (v0 + *(type metadata accessor for InvocationStepMetadata.Partial(0) + 44));
    v22 = v21[1];
    if (v22 && (*v21 == v4 ? (v23 = v22 == v2) : (v23 = 0), v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      OUTLINED_FUNCTION_25_4();
      outlined init with take of InvocationStepMetadata(v0, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v28 = OUTLINED_FUNCTION_160(v24);
        v30 = v29;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v29, 1);
        v26 = v30;
      }

      ++v15;
      *(v17 + 16) = v26;
      OUTLINED_FUNCTION_25_4();
      outlined init with take of InvocationStepMetadata(v31, v27);
    }

    else
    {
      OUTLINED_FUNCTION_26_2();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      ++v15;
    }
  }

  __break(1u);
}

uint64_t InvocationProcessor.process(start:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = type metadata accessor for InvocationInformation(0);
  v2[15] = v3;
  OUTLINED_FUNCTION_44(v3);
  v2[16] = v4;
  v6 = *(v5 + 64);
  v2[17] = OUTLINED_FUNCTION_97();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_Say36AppleIntelligenceReportingProcessing14InvocationStepOG5valuetSgMd, &_s10Foundation4UUIDV3key_Say36AppleIntelligenceReportingProcessing14InvocationStepOG5valuetSgMR);
  OUTLINED_FUNCTION_13(v7);
  v9 = *(v8 + 64);
  v2[18] = OUTLINED_FUNCTION_119_2();
  v2[19] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v2[20] = v10;
  OUTLINED_FUNCTION_44(v10);
  v2[21] = v11;
  v13 = *(v12 + 64);
  v2[22] = OUTLINED_FUNCTION_119_2();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
  v2[26] = v14;
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  v2[27] = OUTLINED_FUNCTION_119_2();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v17 = type metadata accessor for InvocationStepMetadata(0);
  v2[30] = v17;
  OUTLINED_FUNCTION_44(v17);
  v2[31] = v18;
  v20 = *(v19 + 64);
  v2[32] = OUTLINED_FUNCTION_119_2();
  v2[33] = swift_task_alloc();
  v21 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v2[34] = v21;
  OUTLINED_FUNCTION_13(v21);
  v23 = *(v22 + 64);
  v2[35] = OUTLINED_FUNCTION_119_2();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  v2[45] = OUTLINED_FUNCTION_119_2();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v27 = type metadata accessor for InvocationStep(0);
  v2[55] = v27;
  OUTLINED_FUNCTION_44(v27);
  v2[56] = v28;
  v30 = *(v29 + 64);
  v2[57] = OUTLINED_FUNCTION_119_2();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v31 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v2[82] = v31;
  OUTLINED_FUNCTION_44(v31);
  v2[83] = v32;
  v34 = *(v33 + 64);
  v2[84] = OUTLINED_FUNCTION_97();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingInvocationStepVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingInvocationStepVSgMR);
  OUTLINED_FUNCTION_13(v35);
  v37 = *(v36 + 64);
  v2[85] = OUTLINED_FUNCTION_97();

  return MEMORY[0x2822009F8](InvocationProcessor.process(start:), 0, 0);
}

uint64_t InvocationProcessor.process(start:)()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  (*(v4 + 8))(v2, v3, v4);
  v5 = v0[10];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  OUTLINED_FUNCTION_26();
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_97();
  (*(v8 + 16))(v11, v6, v5);
  v0[5] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_51_0();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 2);
  OUTLINED_FUNCTION_47_2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v12 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v13 = *(MEMORY[0x277D856D8] + 4);
  v14 = swift_task_alloc();
  v0[86] = v14;
  *v14 = v0;
  v15 = OUTLINED_FUNCTION_40_0(v14);

  return MEMORY[0x282200310](v15);
}

{
  v2 = *(*v1 + 688);
  v5 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = InvocationProcessor.process(start:);
  }

  else
  {
    v3 = InvocationProcessor.process(start:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v590 = v0;
  v1 = v0[85];
  v2 = v0[82];
  OUTLINED_FUNCTION_19_2(v1);
  if (v3)
  {
    v4 = v0[14];
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    OUTLINED_FUNCTION_1_2();
    v6 = (*(v5 + 160))();
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v0[56];
      v9 = v0[31];
      OUTLINED_FUNCTION_104_1(MEMORY[0x277D84F90]);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v10 = v589[0];
      v11 = *(v9 + 80);
      OUTLINED_FUNCTION_69();
      v13 = v6 + v12;
      v14 = *(v9 + 72);
      do
      {
        v15 = v0[80];
        v16 = v0[55];
        OUTLINED_FUNCTION_18_4();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v13, v15);
        OUTLINED_FUNCTION_113_1();
        swift_storeEnumTagMultiPayload();
        v589[0] = v10;
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        if (v18 >= v17 >> 1)
        {
          OUTLINED_FUNCTION_160(v17);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v10 = v589[0];
        }

        v19 = v0[80];
        *(v10 + 16) = v18 + 1;
        v20 = *(v8 + 80);
        OUTLINED_FUNCTION_69();
        v21 = *(v8 + 72);
        OUTLINED_FUNCTION_11_6();
        outlined init with take of InvocationStepMetadata(v22, v23);
        v13 += v14;
        --v7;
      }

      while (v7);
    }

    else
    {

      v10 = MEMORY[0x277D84F90];
    }

    v36 = v0[87];
    v37 = v0[14];
    OUTLINED_FUNCTION_1_2();
    v39 = (*(v38 + 136))();
    v40 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialV_G_AK0kL0Os5NeverOTg504_s36ghi12Processing19k77ProcessorC7process5startSayAA0E11InformationVG10Foundation4DateVSg_tYaKFAA0E4l7OAA0eL8m2V7N7VXEfU0_Tf1cn_n(v39);
    v530 = v36;

    specialized Array.append<A>(contentsOf:)(v40);
    v589[0] = MEMORY[0x277D84F98];
    v41 = *(v10 + 16);
    v537 = v10;
    v550 = v41;
    if (v41)
    {
      v42 = v0[56];
      v576 = v0[34];
      v569 = *(*v0[14] + 112);
      v43 = v10 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v583 = *(v42 + 72);
      v564 = v43;
      do
      {
        v44 = v0[78];
        v45 = v0[55];
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v43, v0[81]);
        v46 = OUTLINED_FUNCTION_113_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v46, v47);
        OUTLINED_FUNCTION_111_2();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v49 = v0[78];
        v50 = v0[44];
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_49_1();
          outlined init with take of InvocationStepMetadata(v51, v44);
          OUTLINED_FUNCTION_1_8();
          v52 = OUTLINED_FUNCTION_157();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v52, v53);
          OUTLINED_FUNCTION_111_2();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v54, v50);
        }

        v55 = v0[81];
        v56 = v0[77];
        v57 = v0[55];
        outlined init with copy of UUID?(v0[44] + *(v576 + 20), v0[54], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        OUTLINED_FUNCTION_0_9();
        v58 = OUTLINED_FUNCTION_113_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v58, v59);
        OUTLINED_FUNCTION_111_2();
        v60 = swift_getEnumCaseMultiPayload();
        v61 = v0[77];
        v62 = v0[43];
        if (v60 == 1)
        {
          OUTLINED_FUNCTION_49_1();
          outlined init with take of InvocationStepMetadata(v63, v56);
          OUTLINED_FUNCTION_1_8();
          v64 = OUTLINED_FUNCTION_157();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v64, v65);
          OUTLINED_FUNCTION_111_2();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v66, v62);
        }

        v67 = v0[81];
        v69 = v0[53];
        v68 = v0[54];
        v70 = v0[14];
        outlined init with copy of UUID?(v0[43], v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v569(v589, v68, v69);
        outlined destroy of NSObject?(v69, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of NSObject?(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_6_10();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v43 += v583;
        --v41;
      }

      while (v41);
      v570 = v0[34];
      v71 = v0[14];
      v556 = v589[0];
      v589[0] = MEMORY[0x277D84F98];
      v561 = *(*v71 + 112);
      v72 = v564;
      v73 = v550;
      do
      {
        v74 = v0[79];
        v75 = v0[75];
        OUTLINED_FUNCTION_17_5();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v72, v74);
        v76 = OUTLINED_FUNCTION_60_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v76, v77);
        OUTLINED_FUNCTION_105_0();
        v78 = swift_getEnumCaseMultiPayload();
        v79 = v0[75];
        v80 = v0[42];
        if (v78 == 1)
        {
          v81 = v0[33];
          OUTLINED_FUNCTION_7_7();
          outlined init with take of InvocationStepMetadata(v82, v81);
          OUTLINED_FUNCTION_1_8();
          v83 = OUTLINED_FUNCTION_123_0();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v83, v84);
          OUTLINED_FUNCTION_105_0();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v85, v80);
        }

        v86 = v0[79];
        v87 = v0[74];
        v88 = v0[55];
        outlined init with copy of UUID?(v0[42] + *(v570 + 24), v0[52], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        OUTLINED_FUNCTION_0_9();
        v89 = OUTLINED_FUNCTION_60_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v89, v90);
        OUTLINED_FUNCTION_105_0();
        v91 = swift_getEnumCaseMultiPayload();
        v92 = v0[74];
        v93 = v0[41];
        if (v91 == 1)
        {
          v94 = v0[33];
          OUTLINED_FUNCTION_7_7();
          outlined init with take of InvocationStepMetadata(v95, v94);
          OUTLINED_FUNCTION_1_8();
          v96 = OUTLINED_FUNCTION_123_0();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v96, v97);
          OUTLINED_FUNCTION_105_0();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v98, v93);
        }

        v99 = v0[79];
        v101 = v0[51];
        v100 = v0[52];
        v102 = v0[14];
        outlined init with copy of UUID?(v0[41] + *(v576 + 20), v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v561(v589, v100, v101);
        v103 = OUTLINED_FUNCTION_124_0();
        outlined destroy of NSObject?(v103, v104, &_s10Foundation4UUIDVSgMR);
        outlined destroy of NSObject?(v100, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_6_10();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v72 += v583;
        --v73;
        v105 = v564;
      }

      while (v73);
      v106 = v0[14];
      v523 = v589[0];
      v589[0] = MEMORY[0x277D84F98];
      v577 = *(*v106 + 112);
      v107 = v550;
      do
      {
        v108 = v0[76];
        v109 = v0[73];
        OUTLINED_FUNCTION_17_5();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v105, v108);
        v110 = OUTLINED_FUNCTION_60_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v110, v111);
        OUTLINED_FUNCTION_105_0();
        v112 = swift_getEnumCaseMultiPayload();
        v113 = v0[73];
        v114 = v0[40];
        if (v112 == 1)
        {
          v115 = v0[33];
          OUTLINED_FUNCTION_7_7();
          outlined init with take of InvocationStepMetadata(v116, v115);
          OUTLINED_FUNCTION_1_8();
          v117 = OUTLINED_FUNCTION_123_0();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v117, v118);
          OUTLINED_FUNCTION_105_0();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v119, v114);
        }

        v120 = v0[76];
        v121 = v0[72];
        v122 = v0[55];
        outlined init with copy of UUID?(v0[40] + *(v570 + 24), v0[50], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        OUTLINED_FUNCTION_0_9();
        v123 = OUTLINED_FUNCTION_60_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v123, v124);
        OUTLINED_FUNCTION_105_0();
        v125 = swift_getEnumCaseMultiPayload();
        v126 = v0[72];
        v127 = v0[39];
        if (v125 == 1)
        {
          v128 = v0[33];
          OUTLINED_FUNCTION_7_7();
          outlined init with take of InvocationStepMetadata(v129, v128);
          OUTLINED_FUNCTION_1_8();
          v130 = OUTLINED_FUNCTION_123_0();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v130, v131);
          OUTLINED_FUNCTION_105_0();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        }

        else
        {
          OUTLINED_FUNCTION_2_11();
          outlined init with take of InvocationStepMetadata(v132, v127);
        }

        v133 = v0[76];
        v135 = v0[49];
        v134 = v0[50];
        v136 = v0[14];
        outlined init with copy of UUID?(v0[39], v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_3_9();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v577(v589, v134, v135);
        outlined destroy of NSObject?(v135, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of NSObject?(v134, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_6_10();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v105 += v583;
        --v107;
      }

      while (v107);
      v513 = v589[0];
      v137 = v556;
      v138 = v523;
    }

    else
    {
      v137 = MEMORY[0x277D84F98];
      v138 = MEMORY[0x277D84F98];
      v513 = MEMORY[0x277D84F98];
    }

    v584 = v0[26];
    v139 = v0[21];
    v589[0] = MEMORY[0x277D84F98];
    v141 = v138 + 64;
    v140 = *(v138 + 64);
    v142 = *(v138 + 32);
    OUTLINED_FUNCTION_97_2();
    v145 = v144 & v143;
    v147 = (63 - v146) >> 6;
    v562 = (v148 + 16);
    v540 = v148;
    v552 = (v148 + 32);
    v554 = (v148 + 8);
    v524 = v149;

    v150 = 0;
    v557 = v137;
    v542 = v141;
    v534 = v147;
    if (v145)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v151 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        goto LABEL_200;
      }

      if (v151 >= v147)
      {
        break;
      }

      v145 = *(v141 + 8 * v151);
      ++v150;
      if (v145)
      {
        v150 = v151;
        do
        {
LABEL_45:
          v152 = v0[29];
          v565 = v0[28];
          v571 = v0[27];
          v578 = v0[48];
          v153 = v0[20];
          v545 = v540[9];
          v154 = v545 * (__clz(__rbit64(v145)) | (v150 << 6));
          v155 = v540[2];
          v155(v152, *(v524 + 48) + v154, v153);
          v155(v152 + *(v584 + 48), *(v524 + 56) + v154, v153);
          outlined init with copy of UUID?(v152, v565, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
          v156 = v540[4];
          v157 = OUTLINED_FUNCTION_43_1();
          v158(v157);
          v159 = 1;
          OUTLINED_FUNCTION_39_0();
          __swift_storeEnumTagSinglePayload(v160, v161, v162, v153);
          v163 = v571;
          outlined init with copy of UUID?(v152, v571, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
          v579 = *(v584 + 48);
          if (*(v557 + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)();
            if (v165)
            {
              v155(v0[47], *(v557 + 56) + v164 * v545, v0[20]);
              v159 = 0;
            }
          }

          v145 &= v145 - 1;
          v167 = v0[47];
          v166 = v0[48];
          v168 = v0[29];
          v566 = v0[27];
          v572 = v0[28];
          v169 = v0[20];
          v170 = v0[14];
          __swift_storeEnumTagSinglePayload(v167, v159, 1, v169);
          v171 = *(v584 + 48);
          OUTLINED_FUNCTION_1_2();
          (*(v172 + 112))(v589, v166, v167);
          outlined destroy of NSObject?(v167, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v173 = OUTLINED_FUNCTION_123_0();
          outlined destroy of NSObject?(v173, v174, &_s10Foundation4UUIDVSgMR);
          outlined destroy of NSObject?(v168, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
          v175 = *v554;
          (*v554)(v163 + v579, v169);
          v175(v566, v169);
          isUniquelyReferenced_nonNull_native = (v175)(v572 + v171, v169);
          v141 = v542;
          v147 = v534;
        }

        while (v145);
      }
    }

    v573 = specialized Dictionary.merging(_:uniquingKeysWith:)(v176, v513);
    v535 = v530;
    if (!v550)
    {

      v549 = 0;
      v179 = MEMORY[0x277D84F98];
LABEL_80:

      v581 = v0[56];
      v586 = v0[34];
      v515 = v0[30];
      v521 = v0[15];
      v525 = v0[16];

      v270 = v179 + 8;
      v269 = v179[8];
      v271 = *(v179 + 32);
      OUTLINED_FUNCTION_97_2();
      v274 = v273 & v272;
      v276 = (63 - v275) >> 6;

      v277 = 0;
      v278 = MEMORY[0x277D84F90];
      v519 = v179 + 8;
      v517 = v276;
      v568 = v179;
      while (1)
      {
        v551 = v278;
        if (!v274)
        {
          break;
        }

        v547 = v277;
        v279 = v277;
LABEL_87:
        v280 = v0[18];
        v543 = (v274 - 1) & v274;
        v281 = __clz(__rbit64(v274)) | (v279 << 6);
        (v540[2])(v0[23], v179[6] + v540[9] * v281, v0[20]);
        v282 = *(v179[7] + 8 * v281);
        v283 = OUTLINED_FUNCTION_112_1();
        v285 = __swift_instantiateConcreteTypeFromMangledNameV2(v283, v284);
        v286 = *(v285 + 48);
        v287 = v540[4];
        v288 = OUTLINED_FUNCTION_123_0();
        v289(v288);
        *(v280 + v286) = v282;
        OUTLINED_FUNCTION_39_0();
        __swift_storeEnumTagSinglePayload(v290, v291, v292, v285);

LABEL_88:
        v293 = v0[19];
        outlined init with take of UUID?(v0[18], v293, &_s10Foundation4UUIDV3key_Say36AppleIntelligenceReportingProcessing14InvocationStepOG5valuetSgMd, &_s10Foundation4UUIDV3key_Say36AppleIntelligenceReportingProcessing14InvocationStepOG5valuetSgMR);
        v294 = OUTLINED_FUNCTION_112_1();
        v296 = __swift_instantiateConcreteTypeFromMangledNameV2(v294, v295);
        OUTLINED_FUNCTION_25(v293);
        if (v3)
        {
          v467 = v0[85];
          v468 = v0[84];
          v469 = v0[81];
          v470 = v0[80];
          v471 = v0[79];
          v472 = v0[78];
          v473 = v0[77];
          v482 = v0[76];
          v483 = v0[75];
          v484 = v0[74];
          v485 = v0[73];
          v486 = v0[72];
          v487 = v0[71];
          v488 = v0[70];
          v489 = v0[69];
          v490 = v0[68];
          v491 = v0[67];
          v492 = v0[66];
          v493 = v0[65];
          v494 = v0[64];
          v495 = v0[63];
          v496 = v0[62];
          v497 = v0[61];
          v498 = v0[60];
          v499 = v0[59];
          v500 = v0[58];
          v501 = v0[57];
          v502 = v0[54];
          v503 = v0[53];
          v504 = v0[52];
          v505 = v0[51];
          v506 = v0[50];
          v507 = v0[49];
          v508 = v0[48];
          v509 = v0[47];
          v510 = v0[46];
          v511 = v0[45];
          v512 = v0[44];
          v514 = v0[43];
          v516 = v0[42];
          v518 = v0[41];
          v520 = v0[40];
          v522 = v0[39];
          v526 = v0[38];
          v529 = v0[37];
          v533 = v0[36];
          v536 = v0[35];
          v539 = v0[33];
          v541 = v0[32];
          v544 = v0[29];
          v548 = v0[28];
          v553 = v0[27];
          v555 = v0[25];
          v560 = v0[24];
          v563 = v0[23];
          v575 = v0[22];
          v582 = v0[19];
          v587 = v0[18];
          v474 = v0[17];

          _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v549);

          v475 = v0[1];
          OUTLINED_FUNCTION_82_2();

          __asm { BRAA            X2, X16 }
        }

        v297 = v0[20];
        v298 = *(v0[19] + *(v296 + 48));
        (*v552)(v0[22]);
        v589[0] = v298;

        specialized MutableCollection<>.sort(by:)(v589);
        if (v535)
        {

          OUTLINED_FUNCTION_82_2();
        }

        v574 = v589[0];
        v299 = *(v298 + 16);
        v558 = v298;
        if (v299)
        {
          OUTLINED_FUNCTION_38_1();
          v301 = v298 + v300;
          v303 = *(v302 + 72);
          v304 = v299;
          v305 = MEMORY[0x277D84F90];
          do
          {
            v306 = v0[67];
            v307 = v0[65];
            v308 = v0[55];
            OUTLINED_FUNCTION_0_9();
            v309 = OUTLINED_FUNCTION_43_1();
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v309, v310);
            OUTLINED_FUNCTION_11_6();
            v311 = OUTLINED_FUNCTION_94_2();
            outlined init with take of InvocationStepMetadata(v311, v312);
            OUTLINED_FUNCTION_48();
            v313 = swift_getEnumCaseMultiPayload();
            v314 = v0[65];
            v315 = v0[38];
            if (v313 == 1)
            {
              v316 = v0[33];
              OUTLINED_FUNCTION_7_7();
              outlined init with take of InvocationStepMetadata(v317, v316);
              OUTLINED_FUNCTION_1_8();
              v318 = OUTLINED_FUNCTION_94_2();
              _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v318, v319);
              OUTLINED_FUNCTION_158();
              _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            }

            else
            {
              OUTLINED_FUNCTION_2_11();
              outlined init with take of InvocationStepMetadata(v320, v315);
            }

            v321 = (v0[38] + v586[7]);
            v323 = *v321;
            v322 = v321[1];

            OUTLINED_FUNCTION_3_9();
            _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            if (v322)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_31_3();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v305 = v327;
              }

              v325 = *(v305 + 16);
              v324 = *(v305 + 24);
              if (v325 >= v324 >> 1)
              {
                OUTLINED_FUNCTION_160(v324);
                OUTLINED_FUNCTION_55_1();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v305 = v328;
              }

              *(v305 + 16) = v325 + 1;
              v326 = v305 + 16 * v325;
              *(v326 + 32) = v323;
              *(v326 + 40) = v322;
            }

            v301 += v303;
            --v304;
          }

          while (v304);
        }

        else
        {
          v305 = MEMORY[0x277D84F90];
        }

        v329 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v305);
        isUniquelyReferenced_nonNull_native = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v329);
        v538 = isUniquelyReferenced_nonNull_native;
        v330 = *(v574 + 16);
        if (v330)
        {
          v331 = 0;
          v332 = *(v581 + 80);
          OUTLINED_FUNCTION_69();
          v335 = v333 + v334;
          do
          {
            if (v331 >= *(v333 + 16))
            {
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
              goto LABEL_199;
            }

            v336 = v0[63];
            v337 = v0[55];
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v335 + *(v581 + 72) * v331, v0[64]);
            v338 = OUTLINED_FUNCTION_43_1();
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v338, v339);
            OUTLINED_FUNCTION_47_2();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v340 = v0[32];
              outlined init with take of InvocationStepMetadata(v0[63], v340);
              v341 = *(v340 + *(v515 + 24));

              OUTLINED_FUNCTION_47_2();
              _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
              if (v341)
              {
                v369 = v0[66];
                v370 = v0[64];

                OUTLINED_FUNCTION_58_1();
                outlined init with take of InvocationStepMetadata(v370, v369);
                v532 = InvocationStep.error.getter();
                OUTLINED_FUNCTION_94_2();
                isUniquelyReferenced_nonNull_native = _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
                if (v299)
                {
                  goto LABEL_113;
                }

LABEL_124:
                v348 = MEMORY[0x277D84F90];
                v367 = *(MEMORY[0x277D84F90] + 16);
                goto LABEL_125;
              }
            }

            else
            {
              OUTLINED_FUNCTION_6_10();
              _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            }

            ++v331;
            v342 = v0[64];
            OUTLINED_FUNCTION_6_10();
            isUniquelyReferenced_nonNull_native = _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            v333 = v574;
          }

          while (v330 != v331);
        }

        v532 = 0;
        if (!v299)
        {
          goto LABEL_124;
        }

LABEL_113:
        OUTLINED_FUNCTION_38_1();
        v344 = v558 + v343;
        v346 = *(v345 + 72);
        v347 = v299;
        v348 = MEMORY[0x277D84F90];
        do
        {
          v350 = v0[61];
          v349 = v0[62];
          v351 = v0[55];
          OUTLINED_FUNCTION_0_9();
          v352 = OUTLINED_FUNCTION_51_0();
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v352, v353);
          OUTLINED_FUNCTION_11_6();
          v354 = OUTLINED_FUNCTION_94_2();
          outlined init with take of InvocationStepMetadata(v354, v355);
          OUTLINED_FUNCTION_48();
          v356 = swift_getEnumCaseMultiPayload();
          v357 = v0[61];
          v358 = v0[37];
          if (v356 == 1)
          {
            v359 = v0[33];
            OUTLINED_FUNCTION_7_7();
            outlined init with take of InvocationStepMetadata(v360, v359);
            OUTLINED_FUNCTION_1_8();
            v361 = OUTLINED_FUNCTION_94_2();
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v361, v362);
            OUTLINED_FUNCTION_158();
            _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          }

          else
          {
            OUTLINED_FUNCTION_2_11();
            outlined init with take of InvocationStepMetadata(v363, v358);
          }

          v364 = *(v0[37] + v586[10]);

          OUTLINED_FUNCTION_3_9();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v368 = *(v348 + 16);
            OUTLINED_FUNCTION_90();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v348 = isUniquelyReferenced_nonNull_native;
          }

          v366 = *(v348 + 16);
          v365 = *(v348 + 24);
          v367 = v366 + 1;
          if (v366 >= v365 >> 1)
          {
            OUTLINED_FUNCTION_160(v365);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v348 = isUniquelyReferenced_nonNull_native;
          }

          *(v348 + 16) = v367;
          *(v348 + 8 * v366 + 32) = v364;
          v344 += v346;
          --v347;
        }

        while (v347);
LABEL_125:
        v371 = 0;
        v372 = MEMORY[0x277D84F90];
        while (v367 != v371)
        {
          if (v371 >= *(v348 + 16))
          {
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
            goto LABEL_197;
          }

          v373 = v348 + 8 * v371;
          v374 = *(v373 + 32);
          v375 = *(v374 + 16);
          v376 = *(v372 + 16);
          if (__OFADD__(v376, v375))
          {
            goto LABEL_193;
          }

          v377 = *(v373 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v376 + v375 > *(v372 + 24) >> 1)
          {
            OUTLINED_FUNCTION_55_1();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v372 = isUniquelyReferenced_nonNull_native;
          }

          if (*(v374 + 16))
          {
            if ((*(v372 + 24) >> 1) - *(v372 + 16) < v375)
            {
              goto LABEL_196;
            }

            swift_arrayInitWithCopy();

            if (v375)
            {
              v378 = *(v372 + 16);
              v256 = __OFADD__(v378, v375);
              v379 = v378 + v375;
              if (v256)
              {
                goto LABEL_198;
              }

              *(v372 + 16) = v379;
            }
          }

          else
          {

            if (v375)
            {
              goto LABEL_194;
            }
          }

          ++v371;
        }

        v528 = specialized deduplicate<A>(values:)(v372);

        if (v299)
        {
          OUTLINED_FUNCTION_38_1();
          v381 = v558 + v380;
          v383 = *(v382 + 72);
          v384 = v299;
          v385 = MEMORY[0x277D84F90];
          do
          {
            v386 = v0[60];
            v387 = v0[58];
            v388 = v0[55];
            OUTLINED_FUNCTION_0_9();
            v389 = OUTLINED_FUNCTION_43_1();
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v389, v390);
            OUTLINED_FUNCTION_11_6();
            v391 = OUTLINED_FUNCTION_158();
            outlined init with take of InvocationStepMetadata(v391, v392);
            OUTLINED_FUNCTION_130_0();
            v393 = swift_getEnumCaseMultiPayload();
            v394 = v0[58];
            v395 = v0[36];
            if (v393 == 1)
            {
              v396 = v0[33];
              OUTLINED_FUNCTION_7_7();
              outlined init with take of InvocationStepMetadata(v397, v396);
              OUTLINED_FUNCTION_1_8();
              _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v396, v395);
              OUTLINED_FUNCTION_158();
              _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            }

            else
            {
              OUTLINED_FUNCTION_2_11();
              outlined init with take of InvocationStepMetadata(v398, v395);
            }

            v399 = (v0[36] + v586[13]);
            v400 = *v399;
            v401 = v399[1];

            OUTLINED_FUNCTION_3_9();
            _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            if (v401)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_31_3();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v385 = v405;
              }

              v403 = *(v385 + 16);
              v402 = *(v385 + 24);
              if (v403 >= v402 >> 1)
              {
                OUTLINED_FUNCTION_160(v402);
                OUTLINED_FUNCTION_55_1();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v385 = v406;
              }

              *(v385 + 16) = v403 + 1;
              v404 = v385 + 16 * v403;
              *(v404 + 32) = v400;
              *(v404 + 40) = v401;
            }

            v381 += v383;
            --v384;
          }

          while (v384);
        }

        else
        {
          v385 = MEMORY[0x277D84F90];
        }

        v407 = specialized deduplicate<A>(values:)(v385);

        if (v299)
        {
          OUTLINED_FUNCTION_38_1();
          v409 = v558 + v408;
          v411 = *(v410 + 72);
          v412 = MEMORY[0x277D84F90];
          do
          {
            v413 = v0[59];
            v414 = v0[57];
            v415 = v0[55];
            OUTLINED_FUNCTION_0_9();
            v416 = OUTLINED_FUNCTION_51_0();
            _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v416, v417);
            OUTLINED_FUNCTION_11_6();
            v418 = OUTLINED_FUNCTION_158();
            outlined init with take of InvocationStepMetadata(v418, v419);
            v420 = swift_getEnumCaseMultiPayload();
            v421 = v0[57];
            v422 = v0[35];
            if (v420 == 1)
            {
              v423 = v0[33];
              OUTLINED_FUNCTION_7_7();
              outlined init with take of InvocationStepMetadata(v424, v423);
              OUTLINED_FUNCTION_1_8();
              _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v423, v422);
              OUTLINED_FUNCTION_158();
              _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            }

            else
            {
              OUTLINED_FUNCTION_2_11();
              outlined init with take of InvocationStepMetadata(v425, v422);
            }

            v426 = (v0[35] + v586[11]);
            v428 = *v426;
            v427 = v426[1];

            OUTLINED_FUNCTION_3_9();
            _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
            if (v427)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v432 = *(v412 + 16);
                OUTLINED_FUNCTION_90();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v412 = v433;
              }

              v430 = *(v412 + 16);
              v429 = *(v412 + 24);
              if (v430 >= v429 >> 1)
              {
                OUTLINED_FUNCTION_160(v429);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v412 = v434;
              }

              *(v412 + 16) = v430 + 1;
              v431 = v412 + 16 * v430;
              *(v431 + 32) = v428;
              *(v431 + 40) = v427;
            }

            v409 += v411;
            --v299;
          }

          while (v299);
        }

        else
        {
          v412 = MEMORY[0x277D84F90];
        }

        v435 = specialized deduplicate<A>(values:)(v412);

        v436 = MEMORY[0x277D84F90];
        v588 = MEMORY[0x277D84F90];
        specialized Sequence.forEach(_:)(v558, &v588);
        v535 = 0;

        v437 = 0;
        v438 = v588;
        v439 = *(v588 + 16);
        v440 = v436;
LABEL_168:
        v441 = 16 * v437 + 40;
        while (v439 != v437)
        {
          if (v437 >= *(v438 + 16))
          {
            goto LABEL_195;
          }

          v442 = v441 + 16;
          ++v437;
          v443 = *(v438 + v441);
          v441 += 16;
          if (v443)
          {
            v559 = v435;
            v444 = *(v438 + v442 - 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v445 = v407;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_31_3();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v440 = isUniquelyReferenced_nonNull_native;
            }

            v447 = *(v440 + 16);
            v446 = *(v440 + 24);
            if (v447 >= v446 >> 1)
            {
              OUTLINED_FUNCTION_160(v446);
              OUTLINED_FUNCTION_55_1();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v440 = isUniquelyReferenced_nonNull_native;
            }

            *(v440 + 16) = v447 + 1;
            v448 = v440 + 16 * v447;
            *(v448 + 32) = v444;
            *(v448 + 40) = v443;
            v407 = v445;
            v435 = v559;
            goto LABEL_168;
          }
        }

        v449 = v0[22];
        v450 = v0[20];
        v451 = v0[17];
        v589[0] = v435;
        specialized Array.append<A>(contentsOf:)(v440);
        v452 = specialized deduplicate<A>(values:)(v589[0]);

        (*v562)(v451, v449, v450);
        *(v451 + v521[5]) = v538;
        *(v451 + v521[6]) = v532;
        *(v451 + v521[7]) = v528;
        *(v451 + v521[8]) = v452;
        *(v451 + v521[9]) = v407;
        *(v451 + v521[10]) = v574;
        v278 = v551;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v464 = *(v551 + 16);
          OUTLINED_FUNCTION_90();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v278 = v465;
        }

        v274 = v543;
        v454 = *(v278 + 16);
        v453 = *(v278 + 24);
        if (v454 >= v453 >> 1)
        {
          OUTLINED_FUNCTION_160(v453);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v278 = v466;
        }

        v455 = v0[17];
        (*v554)(v0[22], v0[20]);
        *(v278 + 16) = v454 + 1;
        v456 = *(v525 + 80);
        OUTLINED_FUNCTION_69();
        outlined init with take of InvocationStepMetadata(v455, v278 + v457 + *(v458 + 72) * v454);

        v179 = v568;
        v270 = v519;
        v276 = v517;
        v277 = v547;
      }

      while (1)
      {
        v279 = v277 + 1;
        if (__OFADD__(v277, 1))
        {
          break;
        }

        if (v279 >= v276)
        {
          v547 = v277;
          v459 = v0[18];
          v460 = OUTLINED_FUNCTION_112_1();
          __swift_instantiateConcreteTypeFromMangledNameV2(v460, v461);
          v462 = OUTLINED_FUNCTION_131_1();
          __swift_storeEnumTagSinglePayload(v462, 1, 1, v463);
          v543 = 0;
          goto LABEL_88;
        }

        v274 = v270[v279];
        ++v277;
        if (v274)
        {
          v547 = v279;
          goto LABEL_87;
        }
      }

LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

    v177 = 0;
    v546 = v0[56];
    v549 = 0;
    v178 = *(v546 + 80);
    OUTLINED_FUNCTION_69();
    v179 = MEMORY[0x277D84F98];
    v180 = v537;
    v527 = v181;
    while (v177 < *(v180 + 16))
    {
      v182 = v0[71];
      v184 = v0[45];
      v183 = v0[46];
      v185 = v0[20];
      v580 = *(v546 + 72);
      OUTLINED_FUNCTION_0_9();
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v186, v182);
      closure #8 in InvocationProcessor.process(start:)(v557, v573, v183);
      v187 = OUTLINED_FUNCTION_105_0();
      outlined init with copy of UUID?(v187, v188, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v184, 1, v185);
      v190 = v0[45];
      v585 = v177;
      if (EnumTagSinglePayload == 1)
      {
        outlined destroy of NSObject?(v190, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v191 = v0[71];
        v192 = v0[68];
        v193 = type metadata accessor for Logger();
        __swift_project_value_buffer(v193, static Logging.general);
        OUTLINED_FUNCTION_0_9();
        v194 = OUTLINED_FUNCTION_43_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v194, v195);
        v196 = Logger.logObject.getter();
        v197 = static os_log_type_t.error.getter();
        v198 = os_log_type_enabled(v196, v197);
        v199 = v0[71];
        v200 = v0[68];
        v201 = v0[46];
        if (v198)
        {
          v202 = OUTLINED_FUNCTION_76_0();
          v203 = OUTLINED_FUNCTION_84();
          v589[0] = v203;
          *v202 = 136315138;
          v204 = specialized toJSONString(_:)(v200);
          v206 = v205;
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v589);

          *(v202 + 4) = v207;
          v180 = v537;
          _os_log_impl(&dword_227F43000, v196, v197, "processing found step without invocation: %s", v202, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v203);
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();

          outlined destroy of NSObject?(v201, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {

          OUTLINED_FUNCTION_57_1();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          outlined destroy of NSObject?(v201, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          OUTLINED_FUNCTION_62();
        }

        isUniquelyReferenced_nonNull_native = _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v234 = v585;
      }

      else
      {
        v567 = v179;
        (*v552)(v0[25], v190, v0[20]);
        if (one-time initialization token for general != -1)
        {
          OUTLINED_FUNCTION_0_3();
          swift_once();
        }

        v208 = v0[71];
        v209 = v0[70];
        v211 = v0[24];
        v210 = v0[25];
        v212 = v0[20];
        v213 = type metadata accessor for Logger();
        v214 = __swift_project_value_buffer(v213, static Logging.general);
        v215 = *v562;
        (*v562)(v211, v210, v212);
        OUTLINED_FUNCTION_0_9();
        v216 = OUTLINED_FUNCTION_60_1();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v216, v217);
        v218 = Logger.logObject.getter();
        v219 = static os_log_type_t.default.getter();
        v220 = os_log_type_enabled(v218, v219);
        v221 = v0[70];
        v222 = v0[24];
        v223 = v0[20];
        v531 = v215;
        if (v220)
        {
          v224 = swift_slowAlloc();
          v589[0] = swift_slowAlloc();
          *v224 = 136315394;
          v225 = UUID.uuidString.getter();
          v227 = v226;
          v228 = OUTLINED_FUNCTION_128_1();
          v214(v228);
          v229 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v225, v227, v589);

          *(v224 + 4) = v229;
          *(v224 + 12) = 2080;
          specialized toJSONString(_:)(v221);
          OUTLINED_FUNCTION_6_10();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          v230 = OUTLINED_FUNCTION_43_1();
          v233 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v230, v231, v232);

          *(v224 + 14) = v233;
          _os_log_impl(&dword_227F43000, v218, v219, "process with invocationID: %s, step: %s", v224, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          OUTLINED_FUNCTION_6_10();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          v235 = OUTLINED_FUNCTION_128_1();
          v214(v235);
        }

        v236 = v0[71];
        v237 = v0[69];
        v238 = v0[25];
        OUTLINED_FUNCTION_0_9();
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v239, v240);
        _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v549);
        v241 = swift_isUniquelyReferenced_nonNull_native();
        v589[0] = v567;
        specialized __RawDictionaryStorage.find<A>(_:)();
        v243 = *(v567 + 16);
        v244 = (v242 & 1) == 0;
        v245 = v243 + v244;
        if (__OFADD__(v243, v244))
        {
          goto LABEL_202;
        }

        v246 = isUniquelyReferenced_nonNull_native;
        v247 = v242;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSay36AppleIntelligenceReportingProcessing14InvocationStepOGGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSay36AppleIntelligenceReportingProcessing14InvocationStepOGGMR);
        v248 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v241, v245);
        v249 = v589[0];
        if (v248)
        {
          v250 = v0[25];
          specialized __RawDictionaryStorage.find<A>(_:)();
          if ((v247 & 1) != (v252 & 1))
          {
            v480 = v0[20];
            OUTLINED_FUNCTION_82_2();

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v246 = v251;
        }

        if ((v247 & 1) == 0)
        {
          v253 = v0[25];
          v254 = v0[20];
          v249[(v246 >> 6) + 8] |= 1 << v246;
          isUniquelyReferenced_nonNull_native = (v531)(v249[6] + v540[9] * v246, v253, v254);
          *(v249[7] + 8 * v246) = MEMORY[0x277D84F90];
          v255 = v249[2];
          v256 = __OFADD__(v255, 1);
          v257 = v255 + 1;
          if (v256)
          {
            goto LABEL_203;
          }

          v249[2] = v257;
        }

        v258 = v249[7];
        v259 = *(v258 + 8 * v246);
        v260 = swift_isUniquelyReferenced_nonNull_native();
        *(v258 + 8 * v246) = v259;
        if ((v260 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_3();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v259 = v267;
          *(v258 + 8 * v246) = v267;
        }

        v262 = *(v259 + 16);
        v261 = *(v259 + 24);
        if (v262 >= v261 >> 1)
        {
          OUTLINED_FUNCTION_160(v261);
          OUTLINED_FUNCTION_55_1();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          *(v258 + 8 * v246) = v268;
        }

        v263 = v0[71];
        v264 = v0[69];
        v265 = v0[46];
        (v214)(v0[25], v0[20]);
        outlined destroy of NSObject?(v265, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        OUTLINED_FUNCTION_58_1();
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
        v266 = *(v258 + 8 * v246);
        *(v266 + 16) = v262 + 1;
        isUniquelyReferenced_nonNull_native = outlined init with take of InvocationStepMetadata(v264, v266 + v527 + v262 * v580);
        v549 = specialized thunk for @callee_guaranteed () -> (@owned [AssetDeliveryState]);
        v180 = v537;
        v234 = v585;
        v179 = v249;
      }

      v177 = v234 + 1;
      if (v550 == v177)
      {

        goto LABEL_80;
      }
    }

LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
  }

  else
  {
    v24 = v0[84];
    v25 = v0[83];
    v26 = v0[14];
    (*(v25 + 32))(v24, v1, v2);
    OUTLINED_FUNCTION_1_2();
    (*(v27 + 192))(v24);
    v28 = *(v25 + 8);
    v29 = OUTLINED_FUNCTION_51_0();
    v30(v29);
    v31 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v32 = *(MEMORY[0x277D856D8] + 4);
    v33 = swift_task_alloc();
    v0[86] = v33;
    *v33 = v0;
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_82_2();
  }

  return MEMORY[0x282200310](isUniquelyReferenced_nonNull_native);
}

void InvocationProcessor.process(start:)()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v13 = v0[74];
  v14 = v0[73];
  v15 = v0[72];
  v16 = v0[71];
  v17 = v0[70];
  v18 = v0[69];
  v19 = v0[68];
  v20 = v0[67];
  v21 = v0[66];
  v22 = v0[65];
  v23 = v0[64];
  v24 = v0[63];
  v25 = v0[62];
  v26 = v0[61];
  v27 = v0[60];
  v28 = v0[59];
  v29 = v0[58];
  v30 = v0[57];
  v31 = v0[54];
  v32 = v0[53];
  v33 = v0[52];
  v34 = v0[51];
  v35 = v0[50];
  v36 = v0[49];
  v37 = v0[48];
  v38 = v0[47];
  v39 = v0[46];
  v40 = v0[45];
  v41 = v0[44];
  v42 = v0[43];
  v43 = v0[42];
  v44 = v0[41];
  v45 = v0[40];
  v46 = v0[39];
  v47 = v0[38];
  v48 = v0[37];
  v49 = v0[36];
  v50 = v0[35];
  v51 = v0[33];
  v52 = v0[32];
  v53 = v0[29];
  v54 = v0[28];
  v55 = v0[27];
  v56 = v0[25];
  v57 = v0[24];
  v58 = v0[23];
  v59 = v0[22];
  v60 = v0[19];
  v61 = v0[18];
  v62 = v0[17];
  v63 = v0[12];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v10 = v0[1];
  OUTLINED_FUNCTION_82_2();

  __asm { BRAA            X1, X16 }
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t closure #8 in InvocationProcessor.process(start:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v43 = a2;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v46 = &v41 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v41 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v42 = &v41 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v41 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v41 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v41 - v31;
  InvocationStep.invocationID.getter();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    v38 = *(v19 + 32);
    v38(v32, v17, v18);
    v38(a3, v32, v18);
    goto LABEL_9;
  }

  outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  InvocationStep.clientRequestID.getter(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) != 1)
  {
    v33 = *(v19 + 32);
    v33(v30, v15, v18);
    specialized Dictionary.subscript.getter(v45, v12);
    (*(v19 + 8))(v30, v18);
    if (__swift_getEnumTagSinglePayload(v12, 1, v18) == 1)
    {
      v15 = v12;
      goto LABEL_5;
    }

    v33(v27, v12, v18);
    v33(a3, v27, v18);
LABEL_9:
    v37 = 0;
    return __swift_storeEnumTagSinglePayload(a3, v37, 1, v18);
  }

LABEL_5:
  outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v34 = v46;
  InvocationStep.modelManagerRequestID.getter(v46);
  if (__swift_getEnumTagSinglePayload(v34, 1, v18) != 1)
  {
    v35 = *(v19 + 32);
    v36 = v42;
    v35(v42, v34, v18);
    v34 = v44;
    specialized Dictionary.subscript.getter(v43, v44);
    (*(v19 + 8))(v36, v18);
    if (__swift_getEnumTagSinglePayload(v34, 1, v18) != 1)
    {
      v40 = v41;
      v35(v41, v34, v18);
      v35(a3, v40, v18);
      goto LABEL_9;
    }
  }

  outlined destroy of NSObject?(v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v37 = 1;
  return __swift_storeEnumTagSinglePayload(a3, v37, 1, v18);
}

uint64_t key path setter for InvocationProcessor.partials : InvocationProcessor(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t InvocationProcessor.partials.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t InvocationProcessor.partials.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t key path setter for InvocationProcessor.completedSteps : InvocationProcessor(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t InvocationProcessor.completedSteps.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
}

uint64_t InvocationProcessor.completedSteps.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

void InvocationProcessor.processEndEvent(eventPairID:timestamp:instrumentError:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v0;
  v67 = v3;
  v64 = v4;
  v5 = type metadata accessor for UUID();
  v6 = OUTLINED_FUNCTION_0(v5);
  v68 = v7;
  v69 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v66 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
  OUTLINED_FUNCTION_13(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_55_0();
  v63 = v16;
  v62 = type metadata accessor for InvocationStepMetadata(0);
  v17 = OUTLINED_FUNCTION_0(v62);
  v65 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_5();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  OUTLINED_FUNCTION_13(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v27 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_0();
  v33 = v32 - v31;
  OUTLINED_FUNCTION_1_2();
  v35 = (*(v34 + 152))(v70);
  specialized Dictionary._Variant.removeValue(forKey:)();
  v35(v70, 0);
  OUTLINED_FUNCTION_19_2(v26);
  if (v36)
  {
    outlined destroy of NSObject?(v26, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_0_3();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.general);
    v39 = v68;
    v38 = v69;
    v40 = *(v68 + 16);
    v41 = v66;
    v42 = OUTLINED_FUNCTION_105_0();
    v43(v42);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = OUTLINED_FUNCTION_76_0();
      v47 = OUTLINED_FUNCTION_84();
      v70[0] = v47;
      *v46 = 136315138;
      OUTLINED_FUNCTION_4_6();
      lazy protocol witness table accessor for type UUID and conformance UUID(v48, v49);
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_89_2();
      (*(v39 + 8))(v41, v38);
      v50 = OUTLINED_FUNCTION_62();
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v52);

      *(v46 + 4) = v53;
      _os_log_impl(&dword_227F43000, v44, v45, "Could not find partial for %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      (*(v39 + 8))(v41, v38);
    }
  }

  else
  {
    outlined init with take of InvocationStepMetadata(v26, v33);
    OUTLINED_FUNCTION_1_8();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v33, v1);
    v54 = v62;
    v55 = *(v62 + 20);
    v56 = type metadata accessor for Date();
    OUTLINED_FUNCTION_4(v56);
    (*(v57 + 16))(v1 + v55, v64);
    type metadata accessor for GeneralAppleIntelligenceError();
    outlined init with copy of UUID?(v67, v63, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
    *(v1 + *(v54 + 24)) = GeneralAppleIntelligenceError.__allocating_init(from:)();
    v58 = v2;
    v59 = (*(*v2 + 176))(v70);
    OUTLINED_FUNCTION_61_1();
    v60 = *(*v2 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(*v58 + 16));
    *(*v58 + 16) = v60 + 1;
    OUTLINED_FUNCTION_109_2();
    OUTLINED_FUNCTION_18_4();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v1, v61);
    v59(v70, 0);
    OUTLINED_FUNCTION_26_2();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
  }

  OUTLINED_FUNCTION_19();
}

void InvocationProcessor.processEvent(_:)()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v278 = type metadata accessor for InvocationStepMetadata(0);
  v4 = OUTLINED_FUNCTION_0(v278);
  v281 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_33_1(v9 - v8);
  v292 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v10 = OUTLINED_FUNCTION_4(v292);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_33_1(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
  OUTLINED_FUNCTION_13(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_27_3();
  v310 = type metadata accessor for AppleIntelligenceReportingAsset();
  v19 = OUTLINED_FUNCTION_0(v310);
  v308 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_13_0();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v274 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  v30 = OUTLINED_FUNCTION_13(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  OUTLINED_FUNCTION_13(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_33_1(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v41 = OUTLINED_FUNCTION_13(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_96();
  v298 = v48;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_96();
  v296 = v50;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v53);
  v302 = type metadata accessor for UUID();
  v54 = OUTLINED_FUNCTION_0(v302);
  v300 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v274 - v60;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_96();
  v297 = v62;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_38_0();
  v301 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMd, &_s27IntelligencePlatformLibrary05AppleA18ReportingEventTypeOSgMR);
  OUTLINED_FUNCTION_13(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_55_0();
  v304 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v74);
  v76 = &v274 - v75;
  v77 = type metadata accessor for Date();
  v78 = OUTLINED_FUNCTION_0(v77);
  v306 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_38_0();
  v307 = v84;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v282 = v61;
  v305 = v25;
  v303 = v28;
  v291 = v0;
  v299 = v1;
  v85 = type metadata accessor for Logger();
  v309 = __swift_project_value_buffer(v85, static Logging.general);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = OUTLINED_FUNCTION_150();
    *v88 = 0;
    _os_log_impl(&dword_227F43000, v86, v87, "processEvent: processing event", v88, 2u);
    OUTLINED_FUNCTION_11();
  }

  v89 = AppleIntelligenceReportingInvocationStep.additionalUseCases.getter();
  v90 = 0;
  v91 = *(v89 + 16);
  v311 = MEMORY[0x277D84F90];
  while (v91 != v90)
  {
    if (v90 >= v91)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:

      v197 = MEMORY[0x277D84F90];
      goto LABEL_67;
    }

    v92 = *(type metadata accessor for AppleIntelligenceReportingUseCase() - 8);
    v93 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_65;
    }

    v94 = v89 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v90;
    v95 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
    ++v90;
    if (v96)
    {
      v97 = v95;
      v98 = v96;
      v99 = v3;
      v100 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = *(v311 + 16);
        OUTLINED_FUNCTION_90();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v311 = v106;
      }

      v102 = *(v311 + 16);
      v101 = *(v311 + 24);
      if (v102 >= v101 >> 1)
      {
        OUTLINED_FUNCTION_160(v101);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v311 = v107;
      }

      v103 = v311;
      *(v311 + 16) = v102 + 1;
      v104 = v103 + 16 * v102;
      *(v104 + 32) = v97;
      *(v104 + 40) = v98;
      v90 = v93;
      v77 = v100;
      v3 = v99;
    }
  }

  AppleIntelligenceReportingInvocationStep.timestamp.getter();
  if (__swift_getEnumTagSinglePayload(v76, 1, v77) != 1)
  {
    v113 = v306;
    v112 = v307;
    v114 = v306 + 32;
    v115 = *(v306 + 32);
    v115(v307, v76, v77);
    v116 = v304;
    AppleIntelligenceReportingInvocationStep.type.getter();
    type metadata accessor for AppleIntelligenceReportingEventType();
    OUTLINED_FUNCTION_25(v116);
    if (v117 || (OUTLINED_FUNCTION_26(), v119 = v118, v121 = *(v120 + 88), v122 = OUTLINED_FUNCTION_123_0(), v124 = v123(v122), v124 == *MEMORY[0x277D1F550]))
    {
LABEL_21:
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();
      if (!OUTLINED_FUNCTION_78_0(v126))
      {
LABEL_24:

        (*(v113 + 8))(v112, v77);
        goto LABEL_25;
      }

      *OUTLINED_FUNCTION_150() = 0;
      v129 = "Unexpected Event subtype";
LABEL_23:
      OUTLINED_FUNCTION_147_0(&dword_227F43000, v127, v128, v129);
      OUTLINED_FUNCTION_11();
      goto LABEL_24;
    }

    if (v124 == *MEMORY[0x277D1F540])
    {
      v130 = v293;
      AppleIntelligenceReportingInvocationStep.eventPairID.getter();
      v131 = v302;
      if (__swift_getEnumTagSinglePayload(v130, 1, v302) != 1)
      {
        v275 = v115;
        v304 = v114;
        v274 = v77;
        v137 = v300;
        v136 = v301;
        (*(v300 + 32))(v301, v130, v131);
        v138 = v284;
        v305 = *(v137 + 16);
        v305(v284, v136, v131);
        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v139, v140))
        {
          v141 = OUTLINED_FUNCTION_76_0();
          v142 = v138;
          v143 = OUTLINED_FUNCTION_84();
          v312 = v143;
          *v141 = 136315138;
          OUTLINED_FUNCTION_4_6();
          lazy protocol witness table accessor for type UUID and conformance UUID(v144, v145);
          dispatch thunk of CustomStringConvertible.description.getter();
          v291 = *(v137 + 8);
          v291(v142, v302);
          v146 = OUTLINED_FUNCTION_67_0();
          v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v148);
          v112 = v307;

          *(v141 + 4) = v149;
          _os_log_impl(&dword_227F43000, v139, v140, "processEvent: processing start event with pairID: %s", v141, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v143);
          v131 = v302;
          OUTLINED_FUNCTION_11();
          v113 = v306;
          OUTLINED_FUNCTION_11();
        }

        else
        {

          v291 = *(v137 + 8);
          v291(v138, v131);
        }

        v192 = v303;
        v305(v297, v301, v131);
        AppleIntelligenceReportingInvocationStep.invocationID.getter();
        AppleIntelligenceReportingInvocationStep.clientRequestID.getter();
        AppleIntelligenceReportingInvocationStep.modelManagerRequestID.getter();
        v288 = AppleIntelligenceReportingInvocationStep.subsystem.getter();
        v287 = v193;
        v286 = AppleIntelligenceReportingInvocationStep.stepIdentifier.getter();
        v285 = v194;
        (*(v113 + 16))(v294, v112, v274);
        v195 = AppleIntelligenceReportingInvocationStep.assets.getter();
        v196 = *(v195 + 16);
        if (!v196)
        {
          goto LABEL_66;
        }

        v293 = v3;
        OUTLINED_FUNCTION_104_1(MEMORY[0x277D84F90]);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v197 = v314;
        v309 = *(v308 + 16);
        v198 = *(v308 + 80);
        OUTLINED_FUNCTION_69();
        v284 = v195;
        v200 = v195 + v199;
        v305 = *(v201 + 56);
        v308 = v201;
        v202 = (v201 - 8);
        do
        {
          v203 = OUTLINED_FUNCTION_112_1();
          v309(v203);
          v204 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
          if (v205)
          {
            v206 = v204;
            v207 = v205;
            v208 = AppleIntelligenceReportingAsset.version.getter();
            if (v209)
            {
              v210 = v208;
              v211 = v209;
              OUTLINED_FUNCTION_146_0();
              MEMORY[0x22AAAE070](v210, v211);

              v206 = v312;
              v207 = v313;
            }

            v192 = v303;
          }

          else
          {
            v206 = 0;
            v207 = 0xE000000000000000;
          }

          (*v202)(v192, v310);
          v314 = v197;
          v213 = *(v197 + 16);
          v212 = *(v197 + 24);
          if (v213 >= v212 >> 1)
          {
            OUTLINED_FUNCTION_160(v212);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v197 = v314;
          }

          *(v197 + 16) = v213 + 1;
          v214 = v197 + 16 * v213;
          *(v214 + 32) = v206;
          *(v214 + 40) = v207;
          v200 += v305;
          --v196;
        }

        while (v196);

        v3 = v293;
LABEL_67:
        v218 = v289;
        AppleIntelligenceReportingInvocationStep.primaryUseCase.getter();
        v219 = type metadata accessor for AppleIntelligenceReportingUseCase();
        OUTLINED_FUNCTION_19_2(v218);
        if (v117)
        {
          outlined destroy of NSObject?(v218, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
          v220 = 0;
          v222 = 0;
        }

        else
        {
          v220 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
          v222 = v221;
          v223 = *(*(v219 - 1) + 8);
          v224 = OUTLINED_FUNCTION_134_1();
          v225(v224);
        }

        v226 = v311;

        v227 = v3;
        AppleIntelligenceReportingInvocationStep.assetBundleID.getter();
        OUTLINED_FUNCTION_89_2();
        v228 = v290;
        outlined init with take of UUID?(v295, v290, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v229 = v292;
        outlined init with take of UUID?(v296, v228 + v292[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined init with take of UUID?(v298, v228 + v229[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v230 = (v228 + v229[7]);
        v231 = v287;
        *v230 = v288;
        v230[1] = v231;
        v232 = (v228 + v229[8]);
        v233 = v285;
        *v232 = v286;
        v232[1] = v233;
        v234 = v274;
        v275(v228 + v229[9], v294, v274);
        *(v228 + v229[10]) = v197;
        v235 = (v228 + v229[11]);
        *v235 = v220;
        v235[1] = v222;
        *(v228 + v229[12]) = v226;
        v236 = (v228 + v229[13]);
        *v236 = v219;
        v236[1] = v227;
        OUTLINED_FUNCTION_39_0();
        __swift_storeEnumTagSinglePayload(v237, v238, v239, v229);
        OUTLINED_FUNCTION_1_2();
        (*(v240 + 152))(&v312);
        OUTLINED_FUNCTION_89_2();
        specialized Dictionary.subscript.setter();
        (v219)(&v312, 0);
        v291(v301, v302);
        (*(v306 + 8))(v307, v234);
LABEL_25:

        goto LABEL_26;
      }

      v132 = v130;
    }

    else
    {
      v275 = v115;
      v133 = v302;
      if (v124 != *MEMORY[0x277D1F538])
      {
        if (v124 == *MEMORY[0x277D1F548])
        {
          v304 = v114;
          AppleIntelligenceReportingInvocationStep.invocationID.getter();
          AppleIntelligenceReportingInvocationStep.clientRequestID.getter();
          AppleIntelligenceReportingInvocationStep.modelManagerRequestID.getter();
          v150 = AppleIntelligenceReportingInvocationStep.subsystem.getter();
          v300 = v151;
          v301 = v150;
          v152 = AppleIntelligenceReportingInvocationStep.stepIdentifier.getter();
          v297 = v153;
          v298 = v152;
          v154 = *(v113 + 16);
          v274 = v77;
          v302 = v154;
          v303 = (v113 + 16);
          v154(v285, v112, v77);
          v155 = AppleIntelligenceReportingInvocationStep.assets.getter();
          v156 = *(v155 + 16);
          if (v156)
          {
            v293 = v3;
            OUTLINED_FUNCTION_104_1(MEMORY[0x277D84F90]);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v157 = v314;
            v158 = *(v308 + 16);
            v159 = *(v308 + 80);
            OUTLINED_FUNCTION_69();
            v296 = v155;
            v161 = v155 + v160;
            v308 = *(v162 + 56);
            v309 = v163;
            v164 = (v162 - 8);
            do
            {
              v165 = v305;
              (v309)(v305, v161, v310);
              v166 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
              if (v167)
              {
                v168 = v166;
                v169 = v167;
                AppleIntelligenceReportingAsset.version.getter();
                if (v170)
                {
                  OUTLINED_FUNCTION_146_0();
                  v171 = OUTLINED_FUNCTION_105_0();
                  MEMORY[0x22AAAE070](v171);

                  v168 = v312;
                  v169 = v313;
                }

                v165 = v305;
              }

              else
              {
                v168 = 0;
                v169 = 0xE000000000000000;
              }

              (*v164)(v165, v310);
              v314 = v157;
              v173 = *(v157 + 16);
              v172 = *(v157 + 24);
              if (v173 >= v172 >> 1)
              {
                OUTLINED_FUNCTION_160(v172);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v157 = v314;
              }

              *(v157 + 16) = v173 + 1;
              v174 = v157 + 16 * v173;
              *(v174 + 32) = v168;
              *(v174 + 40) = v169;
              v161 += v308;
              --v156;
            }

            while (v156);

            v112 = v307;
            v3 = v293;
          }

          else
          {

            v157 = MEMORY[0x277D84F90];
          }

          v247 = v277;
          AppleIntelligenceReportingInvocationStep.primaryUseCase.getter();
          v248 = type metadata accessor for AppleIntelligenceReportingUseCase();
          OUTLINED_FUNCTION_19_2(v247);
          if (v117)
          {
            outlined destroy of NSObject?(v247, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
            v309 = 0;
            v310 = 0;
          }

          else
          {
            v249 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
            v309 = v250;
            v310 = v249;
            v251 = *(*(v248 - 8) + 8);
            v252 = OUTLINED_FUNCTION_51_0();
            v253(v252);
          }

          v254 = v311;

          v255 = v3;
          AppleIntelligenceReportingInvocationStep.assetBundleID.getter();
          OUTLINED_FUNCTION_89_2();
          v256 = v279;
          outlined init with take of UUID?(v286, v279, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v257 = v292;
          outlined init with take of UUID?(v287, v256 + v292[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          outlined init with take of UUID?(v288, v256 + v257[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v258 = (v256 + v257[7]);
          v259 = v300;
          *v258 = v301;
          v258[1] = v259;
          v260 = (v256 + v257[8]);
          v261 = v297;
          *v260 = v298;
          v260[1] = v261;
          v262 = v274;
          v275(v256 + v257[9], v285, v274);
          *(v256 + v257[10]) = v157;
          v263 = (v256 + v257[11]);
          v264 = v309;
          *v263 = v310;
          v263[1] = v264;
          *(v256 + v257[12]) = v254;
          v265 = (v256 + v257[13]);
          *v265 = v248;
          v265[1] = v255;
          OUTLINED_FUNCTION_1_8();
          v266 = v280;
          _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v256, v280);
          v267 = v278;
          v302(v266 + *(v278 + 20), v112, v262);
          type metadata accessor for GeneralAppleIntelligenceError();
          v268 = AppleIntelligenceReportingInvocationStep.errors.getter();
          specialized Collection.first.getter(v268);

          *(v266 + *(v267 + 24)) = GeneralAppleIntelligenceError.__allocating_init(from:)();
          v269 = v299;
          OUTLINED_FUNCTION_1_2();
          v271 = (*(v270 + 176))(&v312);
          OUTLINED_FUNCTION_61_1();
          v272 = *(*v269 + 16);
          specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v272);
          *(*v269 + 16) = v272 + 1;
          OUTLINED_FUNCTION_109_2();
          OUTLINED_FUNCTION_25_4();
          outlined init with take of InvocationStepMetadata(v266, v273);
          v271(&v312, 0);
          OUTLINED_FUNCTION_3_9();
          _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
          (*(v306 + 8))(v112, v262);
          goto LABEL_25;
        }

        v215 = *(v119 + 8);
        v216 = OUTLINED_FUNCTION_123_0();
        v217(v216);
        goto LABEL_21;
      }

      v134 = v283;
      AppleIntelligenceReportingInvocationStep.eventPairID.getter();
      if (__swift_getEnumTagSinglePayload(v134, 1, v133) != 1)
      {
        v293 = v3;
        v175 = v300;
        v176 = *(v300 + 32);
        v177 = v282;
        v178 = OUTLINED_FUNCTION_134_1();
        v179(v178);
        v180 = v276;
        (*(v175 + 16))(v276, v177, v133);
        v181 = Logger.logObject.getter();
        v182 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v181, v182))
        {
          v183 = OUTLINED_FUNCTION_76_0();
          v184 = OUTLINED_FUNCTION_84();
          v312 = v184;
          *v183 = 136315138;
          OUTLINED_FUNCTION_4_6();
          lazy protocol witness table accessor for type UUID and conformance UUID(v185, v186);
          dispatch thunk of CustomStringConvertible.description.getter();
          v187 = OUTLINED_FUNCTION_118_1();
          v180(v187);
          v188 = OUTLINED_FUNCTION_113_1();
          v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v188, v189, v190);
          v177 = v282;

          *(v183 + 4) = v191;
          _os_log_impl(&dword_227F43000, v181, v182, "processEvent: processing end event with pairID: %s", v183, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v184);
          v113 = v306;
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {

          v241 = OUTLINED_FUNCTION_118_1();
          v180(v241);
        }

        v242 = v299;
        v243 = v291;
        v244 = AppleIntelligenceReportingInvocationStep.errors.getter();
        specialized Collection.first.getter(v244);

        v245 = v307;
        (*(*v242 + 184))(v177, v307, v243);
        outlined destroy of NSObject?(v243, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMd, &_s27IntelligencePlatformLibrary05AppleA21ReportingGeneralErrorVSgMR);
        v246 = OUTLINED_FUNCTION_112_1();
        v180(v246);
        (*(v113 + 8))(v245, v77);
        goto LABEL_25;
      }

      v132 = v134;
    }

    outlined destroy of NSObject?(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v125 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_78_0(v135))
    {
      goto LABEL_24;
    }

    *OUTLINED_FUNCTION_150() = 0;
    v129 = "Unexpected start event without eventPairID";
    goto LABEL_23;
  }

  outlined destroy of NSObject?(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_78_0(v109))
  {
    *OUTLINED_FUNCTION_150() = 0;
    OUTLINED_FUNCTION_147_0(&dword_227F43000, v110, v111, "Unexpected event without timestamp");
    OUTLINED_FUNCTION_11();
  }

LABEL_26:
  OUTLINED_FUNCTION_19();
}

uint64_t AppleIntelligenceReportingAsset.formattedAsset.getter()
{
  AppleIntelligenceReportingAsset.assetIdentifier.getter();
  if (v0)
  {
    v1 = AppleIntelligenceReportingAsset.version.getter();
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      MEMORY[0x22AAAE070](44, 0xE100000000000000);
      MEMORY[0x22AAAE070](v3, v4);
    }
  }

  return OUTLINED_FUNCTION_47_2();
}

uint64_t *InvocationProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t InvocationProcessor.__deallocating_deinit()
{
  InvocationProcessor.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()()
{
  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return MEMORY[0x2821FC240]();
}

uint64_t specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(uint64_t (*a1)(void))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    v5 = *(v3 + 16);
    OUTLINED_FUNCTION_55_1();
    result = a1();
    *v1 = result;
  }

  return result;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InvocationStep(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for InvocationStep(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v178 = a1;
  v6 = type metadata accessor for InvocationStepMetadata(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v205 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v9 = *(*(v213 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v213);
  v209 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v173 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v173 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v173 - v18;
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v204 = &v173 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v211 = &v173 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v187 = &v173 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v194 = &v173 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v177 = &v173 - v32;
  MEMORY[0x28223BE20](v31);
  v176 = (&v173 - v33);
  v208 = type metadata accessor for InvocationStep(0);
  v191 = *(v208 - 8);
  v34 = *(v191 + 64);
  v35 = MEMORY[0x28223BE20](v208);
  v182 = &v173 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v201 = &v173 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v203 = &v173 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v173 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v214 = &v173 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v210 = &v173 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v186 = &v173 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v189 = &v173 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v197 = &v173 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v193 = &v173 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v175 = &v173 - v57;
  MEMORY[0x28223BE20](v56);
  v174 = &v173 - v58;
  v192 = a3;
  v59 = a3[1];
  if (v59 < 1)
  {
    v61 = MEMORY[0x277D84F90];
LABEL_116:
    v43 = *v178;
    if (!*v178)
    {
      goto LABEL_157;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_118:
      v166 = v61 + 2;
      v167 = v61[2];
      for (i = v61; v167 >= 2; v61 = i)
      {
        if (!*v192)
        {
          goto LABEL_154;
        }

        v61 += 2 * v167;
        v168 = *v61;
        v169 = &v166[2 * v167];
        v170 = v169[1];
        v171 = v196;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v192 + *(v191 + 72) * *v61, *v192 + *(v191 + 72) * *v169, *v192 + *(v191 + 72) * v170, v43);
        v196 = v171;
        if (v171)
        {
          break;
        }

        if (v170 < v168)
        {
          goto LABEL_142;
        }

        if (v167 - 2 >= *v166)
        {
          goto LABEL_143;
        }

        *v61 = v168;
        v61[1] = v170;
        v172 = *v166 - v167;
        if (*v166 < v167)
        {
          goto LABEL_144;
        }

        v167 = *v166 - 1;
        memmove(v169, v169 + 2, 16 * v172);
        *v166 = v167;
      }

LABEL_126:

      return;
    }

LABEL_151:
    v61 = specialized _ArrayBuffer._consumeAndCreateNew()(v61);
    goto LABEL_118;
  }

  v173 = a4;
  v60 = 0;
  v206 = (v21 + 8);
  v212 = (v21 + 16);
  v202 = v14;
  v185 = v17;
  v61 = MEMORY[0x277D84F90];
  v184 = v19;
  v207 = v43;
  while (1)
  {
    v62 = v60++;
    if (v60 >= v59)
    {
      goto LABEL_39;
    }

    i = v61;
    v63 = *v192;
    v64 = *(v191 + 72);
    v65 = *v192 + v64 * v60;
    v200 = v64;
    v66 = v64;
    v67 = v63;
    v183 = v63;
    v199 = v59;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v63 + v64 * v60, v174);
    v198 = v60;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v67 + v66 * v62, v175);
    v61 = v176;
    InvocationStep.startTime.getter(v176);
    v179 = v62;
    v68 = v177;
    InvocationStep.startTime.getter(v177);
    LODWORD(v190) = static Date.< infix(_:_:)();
    v69 = *v206;
    (*v206)(v68, v20);
    v188 = v69;
    v69(v61, v20);
    v60 = v198;
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    v70 = v199;
    v71 = v179 + 2;
    v72 = v183 + v200 * (v179 + 2);
    v73 = v189;
    while (1)
    {
      v74 = v71;
      if (v60 + 1 >= v70)
      {
        break;
      }

      v198 = v60;
      v75 = v193;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v72, v193);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v65, v197);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v75, v73);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v76 = v205;
        outlined init with take of InvocationStepMetadata(v73, v205);
        v77 = v184;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v76, v184);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v78 = v73;
        v77 = v184;
        outlined init with take of InvocationStepMetadata(v78, v184);
      }

      v79 = *v212;
      (*v212)(v194, v77 + *(v213 + 36), v20);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v80 = v186;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v197, v186);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = v205;
        outlined init with take of InvocationStepMetadata(v80, v205);
        v82 = v185;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v81, v185);
        v43 = v207;
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v83 = v80;
        v82 = v185;
        outlined init with take of InvocationStepMetadata(v83, v185);
      }

      v84 = v187;
      v79(v187, v82 + *(v213 + 36), v20);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v85 = v194;
      v61 = (static Date.< infix(_:_:)() & 1);
      v86 = v188;
      (v188)(v84, v20);
      v86(v85, v20);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v72 += v200;
      v65 += v200;
      v60 = v198 + 1;
      v71 = v74 + 1;
      v73 = v189;
      v70 = v199;
      if ((v190 & 1) != v61)
      {
        goto LABEL_16;
      }
    }

    v60 = v70;
LABEL_16:
    if (v190)
    {
      v62 = v179;
      if (v60 < v179)
      {
        goto LABEL_148;
      }

      if (v179 >= v60)
      {
        v61 = i;
        goto LABEL_39;
      }

      v87 = v70 >= v74 ? v74 : v70;
      v88 = v200 * (v87 - 1);
      v89 = v200 * v87;
      v90 = v179 * v200;
      v91 = v60;
      v92 = v60;
      v93 = v179;
      do
      {
        if (v93 != --v92)
        {
          v94 = *v192;
          if (!*v192)
          {
            goto LABEL_155;
          }

          outlined init with take of InvocationStepMetadata(v94 + v90, v182);
          v95 = v90 < v88 || v94 + v90 >= v94 + v89;
          if (v95)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v90 != v88)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of InvocationStepMetadata(v182, v94 + v88);
          v43 = v207;
        }

        ++v93;
        v88 -= v200;
        v89 -= v200;
        v90 += v200;
      }

      while (v93 < v92);
      v61 = i;
      v60 = v91;
    }

    else
    {
      v61 = i;
    }

    v62 = v179;
LABEL_39:
    v96 = v192[1];
    if (v60 < v96)
    {
      if (__OFSUB__(v60, v62))
      {
        goto LABEL_147;
      }

      if (v60 - v62 < v173)
      {
        break;
      }
    }

LABEL_63:
    if (v60 < v62)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v163 = v61[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v61 = v164;
    }

    v119 = v61[2];
    v120 = v119 + 1;
    if (v119 >= v61[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v61 = v165;
    }

    v61[2] = v120;
    v121 = v61 + 4;
    v122 = &v61[2 * v119 + 4];
    *v122 = v62;
    v122[1] = v60;
    v200 = *v178;
    if (!v200)
    {
      goto LABEL_156;
    }

    if (v119)
    {
      i = v61;
      while (1)
      {
        v123 = v120 - 1;
        v124 = &v121[2 * v120 - 2];
        v125 = &v61[2 * v120];
        if (v120 >= 4)
        {
          break;
        }

        if (v120 == 3)
        {
          v126 = v61[4];
          v127 = v61[5];
          v136 = __OFSUB__(v127, v126);
          v128 = v127 - v126;
          v129 = v136;
LABEL_84:
          if (v129)
          {
            goto LABEL_133;
          }

          v141 = *v125;
          v140 = v125[1];
          v142 = __OFSUB__(v140, v141);
          v143 = v140 - v141;
          v144 = v142;
          if (v142)
          {
            goto LABEL_136;
          }

          v145 = v124[1];
          v146 = v145 - *v124;
          if (__OFSUB__(v145, *v124))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v143, v146))
          {
            goto LABEL_141;
          }

          if (v143 + v146 >= v128)
          {
            if (v128 < v146)
            {
              v123 = v120 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        if (v120 < 2)
        {
          goto LABEL_135;
        }

        v148 = *v125;
        v147 = v125[1];
        v136 = __OFSUB__(v147, v148);
        v143 = v147 - v148;
        v144 = v136;
LABEL_99:
        if (v144)
        {
          goto LABEL_138;
        }

        v150 = *v124;
        v149 = v124[1];
        v136 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v136)
        {
          goto LABEL_140;
        }

        if (v151 < v143)
        {
          goto LABEL_113;
        }

LABEL_106:
        if (v123 - 1 >= v120)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*v192)
        {
          goto LABEL_153;
        }

        v155 = v60;
        v61 = &v121[2 * v123 - 2];
        v156 = *v61;
        v157 = v121;
        v158 = v123;
        v159 = &v121[2 * v123];
        v160 = v159[1];
        v161 = v196;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v192 + *(v191 + 72) * *v61, *v192 + *(v191 + 72) * *v159, *v192 + *(v191 + 72) * v160, v200);
        v196 = v161;
        if (v161)
        {
          goto LABEL_126;
        }

        if (v160 < v156)
        {
          goto LABEL_128;
        }

        v43 = i[2];
        if (v158 > v43)
        {
          goto LABEL_129;
        }

        *v61 = v156;
        v61[1] = v160;
        if (v158 >= v43)
        {
          goto LABEL_130;
        }

        v120 = (v43 - 1);
        memmove(v159, v159 + 2, 16 * &v43[-v158 - 1]);
        v61 = i;
        i[2] = v43 - 1;
        v162 = v43 > 2;
        v43 = v207;
        v60 = v155;
        v121 = v157;
        if (!v162)
        {
          goto LABEL_113;
        }
      }

      v130 = &v121[2 * v120];
      v131 = *(v130 - 8);
      v132 = *(v130 - 7);
      v136 = __OFSUB__(v132, v131);
      v133 = v132 - v131;
      if (v136)
      {
        goto LABEL_131;
      }

      v135 = *(v130 - 6);
      v134 = *(v130 - 5);
      v136 = __OFSUB__(v134, v135);
      v128 = v134 - v135;
      v129 = v136;
      if (v136)
      {
        goto LABEL_132;
      }

      v137 = v125[1];
      v138 = v137 - *v125;
      if (__OFSUB__(v137, *v125))
      {
        goto LABEL_134;
      }

      v136 = __OFADD__(v128, v138);
      v139 = v128 + v138;
      if (v136)
      {
        goto LABEL_137;
      }

      if (v139 >= v133)
      {
        v153 = *v124;
        v152 = v124[1];
        v136 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v136)
        {
          goto LABEL_145;
        }

        if (v128 < v154)
        {
          v123 = v120 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_84;
    }

LABEL_113:
    v59 = v192[1];
    if (v60 >= v59)
    {
      goto LABEL_116;
    }
  }

  v97 = v62 + v173;
  if (__OFADD__(v62, v173))
  {
    goto LABEL_149;
  }

  if (v97 >= v96)
  {
    v97 = v192[1];
  }

  if (v97 < v62)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v60 == v97)
  {
    goto LABEL_63;
  }

  i = v61;
  v98 = *v192;
  v99 = *(v191 + 72);
  v100 = *v192 + v99 * (v60 - 1);
  v199 = -v99;
  v179 = v62;
  v101 = (v62 - v60);
  v200 = v98;
  v180 = v99;
  v102 = v98 + v60 * v99;
  v181 = v97;
LABEL_48:
  v198 = v60;
  v183 = v102;
  v188 = v101;
  v190 = v100;
  while (1)
  {
    v103 = v210;
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v102, v210);
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v100, v214);
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v103, v43);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v104 = v43;
      v105 = v205;
      outlined init with take of InvocationStepMetadata(v104, v205);
      v106 = v202;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v105, v202);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    }

    else
    {
      v106 = v202;
      outlined init with take of InvocationStepMetadata(v43, v202);
    }

    v107 = v203;
    v108 = *v212;
    (*v212)(v211, v106 + *(v213 + 36), v20);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v214, v107);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v109 = v107;
      v110 = v205;
      outlined init with take of InvocationStepMetadata(v109, v205);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v110, v209);
      v111 = v209;
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    }

    else
    {
      v111 = v209;
      outlined init with take of InvocationStepMetadata(v107, v209);
    }

    v112 = v204;
    v108(v204, v111 + *(v213 + 36), v20);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    v113 = v20;
    v114 = v211;
    v115 = static Date.< infix(_:_:)();
    v116 = *v206;
    (*v206)(v112, v113);
    v117 = v114;
    v20 = v113;
    v116(v117, v113);
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
    if ((v115 & 1) == 0)
    {
      v43 = v207;
LABEL_61:
      v60 = v198 + 1;
      v100 = v190 + v180;
      v101 = v188 - 1;
      v102 = v183 + v180;
      if (v198 + 1 == v181)
      {
        v60 = v181;
        v61 = i;
        v62 = v179;
        goto LABEL_63;
      }

      goto LABEL_48;
    }

    v43 = v207;
    if (!v200)
    {
      break;
    }

    v118 = v201;
    outlined init with take of InvocationStepMetadata(v102, v201);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of InvocationStepMetadata(v118, v100);
    v100 += v199;
    v102 += v199;
    v95 = __CFADD__(v101++, 1);
    if (v95)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v117 = a3;
  v7 = type metadata accessor for InvocationStepMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v104[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = type metadata accessor for InvocationStepMetadata.Partial(0);
  v10 = *(*(v126 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v126);
  v109 = &v104[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v104[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v116 = &v104[-v17];
  MEMORY[0x28223BE20](v16);
  v115 = &v104[-v18];
  v125 = type metadata accessor for Date();
  v123 = *(v125 - 8);
  v19 = *(v123 + 64);
  v20 = MEMORY[0x28223BE20](v125);
  v108 = &v104[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v104[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v114 = &v104[-v25];
  MEMORY[0x28223BE20](v24);
  v122 = &v104[-v26];
  v27 = type metadata accessor for InvocationStep(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v107 = &v104[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v104[-v32];
  v34 = MEMORY[0x28223BE20](v31);
  v118 = &v104[-v35];
  v36 = MEMORY[0x28223BE20](v34);
  v111 = &v104[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v104[-v39];
  v41 = MEMORY[0x28223BE20](v38);
  v113 = &v104[-v42];
  v43 = MEMORY[0x28223BE20](v41);
  v127 = &v104[-v44];
  result = MEMORY[0x28223BE20](v43);
  v47 = &v104[-v46];
  v49 = *(v48 + 72);
  if (!v49)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v110 = a1;
  v50 = a2 - a1 == 0x8000000000000000 && v49 == -1;
  if (v50)
  {
    goto LABEL_73;
  }

  v51 = v117 - a2;
  if (v117 - a2 == 0x8000000000000000 && v49 == -1)
  {
    goto LABEL_74;
  }

  v53 = (a2 - a1) / v49;
  v54 = v110;
  v130 = v110;
  v129 = a4;
  v124 = (v123 + 16);
  v119 = (v123 + 8);
  v120 = v27;
  if (v53 >= v51 / v49)
  {
    v116 = v15;
    v76 = v51 / v49;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, v51 / v49, a4);
    v77 = a2;
    v78 = (a4 + v76 * v49);
    v79 = -v49;
    v80 = v78;
    v81 = v117;
    v106 = a4;
    v105 = v33;
    v115 = -v49;
LABEL_43:
    v117 = v77 + v79;
    v82 = v81;
    v113 = v80;
    v83 = v109;
    v84 = v116;
    v123 = v77;
    while (1)
    {
      if (v78 <= a4)
      {
        v130 = v77;
        v128 = v80;
        goto LABEL_71;
      }

      if (v77 <= v54)
      {
        break;
      }

      v122 = v82;
      v114 = v80;
      v85 = v115;
      v127 = v78;
      v86 = &v78[v115];
      v87 = v111;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(&v78[v115], v111);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v117, v118);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v87, v33);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v88 = v121;
        outlined init with take of InvocationStepMetadata(v33, v121);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v88, v84);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v33, v84);
      }

      v89 = v107;
      v90 = *v124;
      (*v124)(v112, v84 + *(v126 + 36), v125);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v118, v89);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v91 = v121;
        outlined init with take of InvocationStepMetadata(v89, v121);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v91, v83);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v89, v83);
      }

      v92 = v122;
      v81 = &v122[v85];
      v93 = v125;
      v94 = v108;
      v90(v108, v83 + *(v126 + 36), v125);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v95 = v112;
      v96 = static Date.< infix(_:_:)();
      v97 = *v119;
      (*v119)(v94, v93);
      v97(v95, v93);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      if (v96)
      {
        v100 = v92 < v123 || v81 >= v123;
        v54 = v110;
        if (v100)
        {
          v101 = v117;
          swift_arrayInitWithTakeFrontToBack();
          v77 = v101;
          v80 = v114;
          v79 = v115;
          a4 = v106;
          v33 = v105;
          v78 = v127;
        }

        else
        {
          v79 = v115;
          v80 = v114;
          v50 = v92 == v123;
          v102 = v117;
          v77 = v117;
          a4 = v106;
          v33 = v105;
          v78 = v127;
          if (!v50)
          {
            v103 = v114;
            swift_arrayInitWithTakeBackToFront();
            v78 = v127;
            v77 = v102;
            v80 = v103;
          }
        }

        goto LABEL_43;
      }

      v98 = v92 < v127 || v81 >= v127;
      v54 = v110;
      v99 = v81;
      if (v98)
      {
        swift_arrayInitWithTakeFrontToBack();
        v82 = v81;
        v78 = v86;
        v80 = v86;
        a4 = v106;
        v77 = v123;
        v83 = v109;
        v84 = v116;
        v33 = v105;
      }

      else
      {
        v80 = v86;
        v50 = v127 == v92;
        v82 = v81;
        v78 = v86;
        a4 = v106;
        v77 = v123;
        v83 = v109;
        v84 = v116;
        v33 = v105;
        if (!v50)
        {
          swift_arrayInitWithTakeBackToFront();
          v77 = v123;
          v82 = v99;
          v78 = v86;
          v80 = v86;
        }
      }
    }

    v130 = v77;
    v128 = v113;
  }

  else
  {
    v55 = v53;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v110, v53, a4);
    v56 = a2;
    v118 = (a4 + v55 * v49);
    v128 = v118;
    v57 = v54;
    v58 = v116;
    v111 = v49;
    v112 = v40;
    while (a4 < v118 && v56 < v117)
    {
      v123 = v56;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v56, v47);
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(a4, v127);
      v60 = v113;
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v47, v113);
      v61 = a4;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v121;
        outlined init with take of InvocationStepMetadata(v60, v121);
        v63 = v115;
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v62, v115);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        v64 = v60;
        v63 = v115;
        outlined init with take of InvocationStepMetadata(v64, v115);
      }

      v65 = *v124;
      (*v124)(v122, v63 + *(v126 + 36), v125);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v127, v40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v66 = v121;
        outlined init with take of InvocationStepMetadata(v40, v121);
        _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v66, v58);
        _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      }

      else
      {
        outlined init with take of InvocationStepMetadata(v40, v58);
      }

      v67 = v125;
      v68 = v114;
      v65(v114, v58 + *(v126 + 36), v125);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      v69 = v122;
      v70 = static Date.< infix(_:_:)();
      v71 = *v119;
      (*v119)(v68, v67);
      v71(v69, v67);
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
      if (v70)
      {
        v72 = v111;
        v73 = &v111[v123];
        if (v57 < v123 || v57 >= v73)
        {
          swift_arrayInitWithTakeFrontToBack();
          v56 = v73;
          a4 = v61;
          v58 = v116;
          v40 = v112;
        }

        else
        {
          v58 = v116;
          v40 = v112;
          if (v57 != v123)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v56 = v73;
          a4 = v61;
        }
      }

      else
      {
        v72 = v111;
        a4 = &v111[v61];
        if (v57 < v61 || v57 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v58 = v116;
          v40 = v112;
        }

        else
        {
          v58 = v116;
          v40 = v112;
          if (v57 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v129 = a4;
        v56 = v123;
      }

      v57 += v72;
      v130 = v57;
    }
  }

LABEL_71:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v130, &v129, &v128, type metadata accessor for InvocationStep);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  result = OUTLINED_FUNCTION_4(v7);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  v12 = v5 + (v6 - v5) / v10 * v10;
  if (v4 < v5 || v4 >= v12)
  {
    OUTLINED_FUNCTION_43_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_43_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_227FB3690;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v49 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v54 = result;
  if (!*(v12 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v54;
    return result;
  }

  v44 = v3;
  v15 = 0;
  v16 = (v12 + 64);
  v17 = 1 << *(v12 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;
  v45 = (v7 + 16);
  v46 = v12;
  v47 = v7;
  v50 = (v7 + 32);
  v21 = v54 + 64;
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v52 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v42 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_14:
    v25 = *(v12 + 48);
    v51 = *(v47 + 72);
    v26 = v51 * (v22 | (v15 << 6));
    if (v49)
    {
      v27 = *v50;
      v28 = v48;
      (*v50)(v48, v25 + v26, v6);
    }

    else
    {
      v27 = *v45;
      v28 = v48;
      (*v45)(v48, v25 + v26, v6);
    }

    v27(v53, *(v12 + 56) + v26, v6);
    v29 = v54;
    v30 = *(v54 + 40);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v31 = -1 << *(v29 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = v54;
    v40 = v51 * v34;
    v41 = *v50;
    (*v50)((*(v54 + 48) + v51 * v34), v28, v6);
    result = (v41)(*(v39 + 56) + v40, v53, v6);
    ++*(v39 + 16);
    v12 = v46;
    v19 = v52;
    if (!v52)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v21 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMR);
    v16 = OUTLINED_FUNCTION_84_2(v8, v9, v10, v11, v12, v13, v14, v15, v38, v40);
    OUTLINED_FUNCTION_107_1(v16, v17, v18, v19, v20, v21, v22, v23, v39, v41);
    v24 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4(v24);
    (*(v25 + 8))(v3 + *(v25 + 72) * v6, v24);
    v26 = *(v1 + 56);
    v27 = type metadata accessor for InvocationStepMetadata.Partial(0);
    OUTLINED_FUNCTION_4(v27);
    v29 = *(v28 + 72);
    OUTLINED_FUNCTION_2_11();
    outlined init with take of InvocationStepMetadata(v30, v0);
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v31, v32);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v33 = OUTLINED_FUNCTION_71_1();
    v36 = v27;
  }

  else
  {
    type metadata accessor for InvocationStepMetadata.Partial(0);
    v33 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
}

{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMR);
    v16 = OUTLINED_FUNCTION_84_2(v8, v9, v10, v11, v12, v13, v14, v15, v34, v36);
    OUTLINED_FUNCTION_107_1(v16, v17, v18, v19, v20, v21, v22, v23, v35, v37);
    v24 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    OUTLINED_FUNCTION_4(v24);
    (*(v25 + 8))(v3 + *(v25 + 72) * v6, v24);
    v26 = *(v1 + 56);
    v27 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4(v27);
    (*(v28 + 32))(v0, v26 + *(v28 + 72) * v6, v27);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578]);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v29 = OUTLINED_FUNCTION_71_1();
    v32 = v27;
  }

  else
  {
    type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    v29 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

{
  OUTLINED_FUNCTION_100_2();
  specialized __RawDictionaryStorage.find<A>(_:)();
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_73_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
    v16 = OUTLINED_FUNCTION_84_2(v8, v9, v10, v11, v12, v13, v14, v15, v36, v38);
    OUTLINED_FUNCTION_107_1(v16, v17, v18, v19, v20, v21, v22, v23, v37, v39);
    v24 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_0(v24);
    v26 = v25;
    v28 = *(v27 + 72) * v6;
    (*(v25 + 8))(v3 + v28, v24);
    (*(v26 + 32))(v0, *(v1 + 56) + v28, v24);
    OUTLINED_FUNCTION_4_6();
    lazy protocol witness table accessor for type UUID and conformance UUID(v29, v30);
    OUTLINED_FUNCTION_69_1();
    _NativeDictionary._delete(at:)();
    v31 = OUTLINED_FUNCTION_71_1();
    v34 = v24;
  }

  else
  {
    type metadata accessor for UUID();
    v31 = OUTLINED_FUNCTION_37_0();
  }

  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2)
{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC36AppleIntelligenceReportingProcessing14InvocationStepO10CodingKeys33_C4F9934033535404946766D45806A52FLLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v10 = *(*(v8 - 8) + 16);
  (v10)((v8 - 8), a1, a3, v8);

  return v10(a2, a4, v8);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR) + 48);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR) + 48);

  return specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2, v5, a1, a1 + v4);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v48 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = v47 - v15;
  MEMORY[0x28223BE20](v14);
  v51 = v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtSgMd, &_s10Foundation4UUIDV_ACtSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v47 - v19;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v56);
  v52 = v56[0];
  v53 = v56[1];
  v54 = v56[2];
  v55 = v57;
  v21 = (v10 + 32);
  v47[4] = v10 + 8;
  v47[5] = v10 + 16;
  v49 = v10;
  v47[3] = v10 + 40;
  v47[1] = a1;

  v47[0] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
    if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
    {
      outlined consume of Set<String>.Iterator._Variant();
    }

    v23 = *(v22 + 48);
    v24 = *v21;
    (*v21)(v51, v20, v9);
    v24(v50, &v20[v23], v9);
    v25 = *v58;
    specialized __RawDictionaryStorage.find<A>(_:)();
    v28 = v27;
    v29 = *(v25 + 16);
    v30 = (v26 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v26;
    if (*(v25 + 24) >= v31)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v33 = v58;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, a4 & 1);
      v34 = *v33;
      specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v32 & 1) != (v36 & 1))
      {
        goto LABEL_16;
      }

      v28 = v35;
    }

    v37 = *v58;
    if (v32)
    {
      v38 = v49;
      v39 = *(v49 + 72) * v28;
      v40 = v48;
      (*(v49 + 16))(v48, v37[7] + v39, v9);
      v41 = *(v38 + 8);
      v41(v50, v9);
      v41(v51, v9);
      (*(v38 + 40))(v37[7] + v39, v40, v9);
      a4 = 1;
    }

    else
    {
      v37[(v28 >> 6) + 8] |= 1 << v28;
      v42 = *(v49 + 72) * v28;
      v24((v37[6] + v42), v51, v9);
      v24((v37[7] + v42), v50, v9);
      v43 = v37[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_15;
      }

      v37[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  v1 = *(a1 + 16);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v1 = *(a1 + 16);
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v5 = &v45 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_AC5valuetSgMd, &_s10Foundation4UUIDV3key_AC5valuetSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v51 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v45 = v5;
  v50 = v23;
  if (v25)
  {
    v48 = v20;
    v49 = a1;
    v26 = v24;
LABEL_7:
    v46 = v13;
    v47 = (v25 - 1) & v25;
    v27 = v7[9] * (__clz(__rbit64(v25)) | (v26 << 6));
    v28 = v7[2];
    v29 = v13;
    v30 = v21;
    v28(v29, *(v21 + 48) + v27, v6);
    v28(v11, *(v30 + 56) + v27, v6);
    v31 = *(v52 + 48);
    v32 = v7[4];
    v20 = v48;
    v32(v48, v46, v6);
    v33 = &v20[v31];
    v34 = v47;
    v32(v33, v11, v6);
    v35 = v30;
    v36 = 0;
    a1 = v49;
LABEL_8:
    v37 = 1;
    v38 = v52;
    __swift_storeEnumTagSinglePayload(v20, v36, 1, v52);
    *v1 = v35;
    v1[1] = v22;
    v39 = v51;
    v1[2] = v50;
    v1[3] = v24;
    v1[4] = v34;
    v40 = v1[5];
    v41 = v1[6];
    outlined init with take of UUID?(v20, v39, &_s10Foundation4UUIDV3key_AC5valuetSgMd, &_s10Foundation4UUIDV3key_AC5valuetSgMR);
    if (__swift_getEnumTagSinglePayload(v39, 1, v38) != 1)
    {
      v42 = v39;
      v43 = v45;
      outlined init with take of UUID?(v42, v45, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
      v40(v43);
      outlined destroy of NSObject?(v43, &_s10Foundation4UUIDV3key_AC5valuetMd, &_s10Foundation4UUIDV3key_AC5valuetMR);
      v37 = 0;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
    return __swift_storeEnumTagSinglePayload(a1, v37, 1, v44);
  }

  else
  {
    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= ((v23 + 64) >> 6))
      {
        v34 = 0;
        v36 = 1;
        v35 = v21;
        goto LABEL_8;
      }

      v25 = *(v22 + 8 * v26);
      ++v24;
      if (v25)
      {
        v48 = v20;
        v49 = a1;
        v24 = v26;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Dictionary.Values.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t specialized toJSONString(_:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v27[0] = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for JSONEncoder.OutputFormatting();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v29 = type metadata accessor for InvocationStep(0);
  v30 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep, type metadata accessor for InvocationStep);
  v31 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InvocationStep and conformance InvocationStep, type metadata accessor for InvocationStep);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v28);
  _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(a1, boxed_opaque_existential_1Tm);
  v14 = type metadata accessor for JSONEncoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMd, &_ss23_ContiguousArrayStorageCy10Foundation11JSONEncoderC16OutputFormattingVGMR);
  v17 = *(v11 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_227FB1BA0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  v27[5] = v19;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation11JSONEncoderC16OutputFormattingVGMd, &_sSay10Foundation11JSONEncoderC16OutputFormattingVGMR);
  lazy protocol witness table accessor for type [JSONEncoder.OutputFormatting] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  *v9 = closure #1 in toJSONString(_:);
  v9[1] = 0;
  (*(v6 + 104))(v9, *MEMORY[0x277CC8770], v5);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v20 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v22 = v21;
  static String.Encoding.utf8.getter();
  v23 = String.init(data:encoding:)();
  v25 = v24;
  outlined consume of Data._Representation(v20, v22);

  if (!v25)
  {
    v23 = 0xD000000000000013;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  return v23;
}

uint64_t *specialized InvocationProcessor.__allocating_init(biomeEventReader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InvocationProcessor();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = specialized InvocationProcessor.init(biomeEventReader:)(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_142();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_62();
  v9(v8);
  return a2;
}

uint64_t _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0()
{
  v1 = OUTLINED_FUNCTION_133_1();
  v3 = v2(v1);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of InvocationStepMetadata(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_142();
  v5 = v4(v3);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_62();
  v9(v8);
  return a2;
}

unint64_t lazy protocol witness table accessor for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.Partial.CodingKeys and conformance InvocationStepMetadata.Partial.CodingKeys);
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

unint64_t lazy protocol witness table accessor for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStepMetadata.CodingKeys and conformance InvocationStepMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CodingKeys and conformance InvocationStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.CompleteCodingKeys and conformance InvocationStep.CompleteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationStep.PartialCodingKeys and conformance InvocationStep.PartialCodingKeys);
  }

  return result;
}

uint64_t *specialized InvocationProcessor.init(biomeEventReader:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  v8 = MEMORY[0x277D84F90];
  a2[7] = MEMORY[0x277D84F98];
  a2[8] = v8;
  return a2;
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

unint64_t lazy protocol witness table accessor for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationInformation.CodingKeys and conformance InvocationInformation.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [InvocationStep] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMd, &_sSay36AppleIntelligenceReportingProcessing14InvocationStepOGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(a2, type metadata accessor for InvocationStep);
    OUTLINED_FUNCTION_113_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_145_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_62();
  v9(v8);
  return v4;
}

void type metadata completion function for InvocationStepMetadata()
{
  type metadata accessor for InvocationStepMetadata.Partial(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for GeneralAppleIntelligenceError?, MEMORY[0x277CEDE98], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata completion function for InvocationStepMetadata.Partial()
{
  type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D83D88]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for Date();
      if (v6 > 0x3F)
      {
        return v5;
      }

      type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void type metadata accessor for GeneralAppleIntelligenceError?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for InvocationStep()
{
  result = type metadata accessor for InvocationStepMetadata.Partial(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for InvocationStepMetadata(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for InvocationInformation()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for [String], MEMORY[0x277D83940]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for GeneralAppleIntelligenceError?, MEMORY[0x277CEDE98], MEMORY[0x277D83D88]);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        type metadata accessor for GeneralAppleIntelligenceError?(319, &lazy cache variable for type metadata for [InvocationStep], type metadata accessor for InvocationStep, MEMORY[0x277D83940]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

uint64_t dispatch thunk of InvocationProcessor.process(start:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  v4 = *(v3 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = dispatch thunk of InvocationProcessor.process(start:);

  return v8(a1);
}

{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for InvocationInformation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationInformation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationStep.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InvocationStep.PartialCodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for InvocationStep.PartialCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for InvocationStepMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for InvocationStepMetadata.Partial.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationStepMetadata.Partial.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_77(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_145_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_62();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  v0 = type metadata accessor for InvocationStepMetadata(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_33_2()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_41@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return specialized Array._makeUniqueAndReserveCapacityIfNotUnique()(specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t OUTLINED_FUNCTION_62_1(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1(unint64_t *a1)
{

  return lazy protocol witness table accessor for type [String] and conformance <A> [A](a1);
}

uint64_t OUTLINED_FUNCTION_72_0@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;
  result = v1 - 72;
  v3 = *(v1 - 128);
  return result;
}

BOOL OUTLINED_FUNCTION_84_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_86_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_93_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_118_1()
{
  result = v0;
  v3 = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_119_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return _s36AppleIntelligenceReportingProcessing14InvocationStepOWOcTm_0(v0, v1);
}

uint64_t OUTLINED_FUNCTION_122_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_123_2()
{

  return _s36AppleIntelligenceReportingProcessing22InvocationStepMetadataVWOhTm_0();
}

uint64_t OUTLINED_FUNCTION_132_0()
{
  v1 = *(*(v0 - 168) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_138_1()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_139_1@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_144_0()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_145_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_146_0()
{
  *(v2 - 128) = v1;
  *(v2 - 120) = v0;

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_147_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_150()
{

  return swift_slowAlloc();
}

Swift::UInt32 __swiftcall crc32Checksum(_:)(Swift::String a1)
{
  v1 = String.utf8CString.getter();
  v2 = *(v1 + 16);
  if (HIDWORD(v2))
  {
    __break(1u);
  }

  else
  {
    v3 = crc32(0, (v1 + 32), v2);

    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v1) = -1;
    }

    else
    {
      LODWORD(v1) = v3;
    }
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DataCollector.runDataCollectionAndUpload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in DataCollector.runDataCollectionAndUpload(), v6);
}

uint64_t closure #1 in DataCollector.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_0_2();
  v0[5] = &type metadata for UnifiedAssetFrameworkReporter;
  v0[6] = &protocol witness table for UnifiedAssetFrameworkReporter;
  v0[2] = [objc_opt_self() sharedManager];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_10(v1);

  return DataCollector.dataCollection(unifiedAssetFrameworkReporter:)();
}

{
  OUTLINED_FUNCTION_0_2();
  v3 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v4 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in DataCollector.runDataCollectionAndUpload(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    OUTLINED_FUNCTION_35();

    return v5();
  }
}

{
  OUTLINED_FUNCTION_0_2();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_35();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t partial apply for closure #1 in DataCollector.runDataCollectionAndUpload()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in DataCollector.runDataCollectionAndUpload();

  return closure #1 in DataCollector.runDataCollectionAndUpload()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in DataCollector.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_0_2();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_18_0();
  *v3 = v2;

  OUTLINED_FUNCTION_35();

  return v4();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v23 - v10;
  outlined init with copy of TaskPriority?(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t DataCollector.dataCollection()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](DataCollector.dataCollection(), 0, 0);
}

{
  OUTLINED_FUNCTION_0_2();
  v0[5] = &type metadata for UnifiedAssetFrameworkReporter;
  v0[6] = &protocol witness table for UnifiedAssetFrameworkReporter;
  v0[2] = [objc_opt_self() sharedManager];
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_3_10(v1);

  return DataCollector.dataCollection(unifiedAssetFrameworkReporter:)();
}

{
  OUTLINED_FUNCTION_0_2();
  v3 = *(*v1 + 64);
  v2 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v4 = v2;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](DataCollector.dataCollection(), 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    OUTLINED_FUNCTION_35();

    return v5();
  }
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 56);
  return v2;
}

Swift::String *appleIntelligenceUseCaseID.unsafeMutableAddressor()
{
  if (one-time initialization token for appleIntelligenceUseCaseID != -1)
  {
    swift_once();
  }

  return &appleIntelligenceUseCaseID;
}

Swift::String *diffusionUseCaseID.unsafeMutableAddressor()
{
  if (one-time initialization token for diffusionUseCaseID != -1)
  {
    swift_once();
  }

  return &diffusionUseCaseID;
}

uint64_t one-time initialization function for appleIntelligenceUseCaseID(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3, void *a4)
{
  v7 = type metadata accessor for UseCaseIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v10);
  v13 = UseCaseIdentifier.id.getter();
  v15 = v14;
  result = (*(v8 + 8))(v12, v7);
  *a3 = v13;
  *a4 = v15;
  return result;
}

uint64_t static AppleIntelligenceBiomeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v106 = a1;
  v107 = a2;
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v3 = OUTLINED_FUNCTION_0(v2);
  v104 = v4;
  v105 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v93 = v7;
  OUTLINED_FUNCTION_12();
  v8 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v9 = OUTLINED_FUNCTION_0(v8);
  v102 = v10;
  v103 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v92 = v13;
  OUTLINED_FUNCTION_12();
  v14 = type metadata accessor for MobileAssetInstrumentationEvent();
  v15 = OUTLINED_FUNCTION_0(v14);
  v100 = v16;
  v101 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v91 = v19;
  OUTLINED_FUNCTION_12();
  v20 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v21 = OUTLINED_FUNCTION_0(v20);
  v98 = v22;
  v99 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v90 = v25;
  OUTLINED_FUNCTION_12();
  v26 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v27 = OUTLINED_FUNCTION_0(v26);
  v96 = v28;
  v97 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2();
  v89 = v31;
  OUTLINED_FUNCTION_12();
  v32 = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  v33 = OUTLINED_FUNCTION_0(v32);
  v94 = v34;
  v95 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for AppleIntelligenceBiomeEvent();
  v40 = v39;
  v41 = *(*(v39 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v89 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v89 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v89 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = (&v89 - v55);
  MEMORY[0x28223BE20](v54);
  v58 = &v89 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMR);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v63 = &v89 - v62;
  v64 = *(v61 + 56);
  outlined init with copy of AppleIntelligenceBiomeEvent(v106, &v89 - v62);
  outlined init with copy of AppleIntelligenceBiomeEvent(v107, &v63[v64]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v56);
      if (OUTLINED_FUNCTION_4_7() == 1)
      {
        v77 = v96;
        v76 = v97;
        OUTLINED_FUNCTION_2_12(v96);
        v78 = v89;
        v79(v89);
        v40 = static AppleIntelligenceReportingAvailabilityLog.== infix(_:_:)();
        v80 = *(v77 + 8);
        v80(v78, v76);
        v80(v56, v76);
        goto LABEL_23;
      }

      (*(v96 + 8))(v56, v97);
      goto LABEL_20;
    case 2u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v53);
      if (OUTLINED_FUNCTION_4_7() == 2)
      {
        v70 = v98;
        v69 = v99;
        OUTLINED_FUNCTION_2_12(v98);
        v71 = v90;
        v72(v90);
        v40 = static AppleIntelligenceReportingMobileAssetLog.== infix(_:_:)();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v53, v69);
        goto LABEL_23;
      }

      (*(v98 + 8))(v53, v99);
      goto LABEL_20;
    case 3u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v50);
      if (OUTLINED_FUNCTION_4_7() == 3)
      {
        v65 = v101;
        OUTLINED_FUNCTION_2_12(v100);
        v74(v91);
        static MobileAssetInstrumentationEvent.== infix(_:_:)();
        v75 = OUTLINED_FUNCTION_5_10();
        v56(v75);
        v68 = v50;
        goto LABEL_14;
      }

      (*(v100 + 8))(v50, v101);
      goto LABEL_20;
    case 4u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v47);
      if (OUTLINED_FUNCTION_4_7() == 4)
      {
        v65 = v103;
        OUTLINED_FUNCTION_2_12(v102);
        v66(v92);
        static AppleIntelligenceReportingModelCatalogLog.== infix(_:_:)();
        v67 = OUTLINED_FUNCTION_5_10();
        v56(v67);
        v68 = v47;
        goto LABEL_14;
      }

      (*(v102 + 8))(v47, v103);
      goto LABEL_20;
    case 5u:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v44);
      if (OUTLINED_FUNCTION_4_7() != 5)
      {
        (*(v104 + 8))(v44, v105);
        goto LABEL_20;
      }

      v81 = v104;
      v65 = v105;
      OUTLINED_FUNCTION_2_12(v104);
      v82 = v93;
      v83(v93);
      v40 = static AppleIntelligenceReportingUnifiedAssetFrameworkLog.== infix(_:_:)();
      v56 = *(v81 + 8);
      (v56)(v82, v65);
      v68 = v44;
LABEL_14:
      (v56)(v68, v65);
      goto LABEL_23;
    default:
      outlined init with copy of AppleIntelligenceBiomeEvent(v63, v58);
      if (OUTLINED_FUNCTION_4_7())
      {
        (*(v94 + 8))(v58, v95);
LABEL_20:
        outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(v63);
        v40 = 0;
      }

      else
      {
        v85 = v94;
        v84 = v95;
        OUTLINED_FUNCTION_2_12(v94);
        v86(v38);
        v40 = static AppleIntelligenceReportingInvocationStep.== infix(_:_:)();
        v87 = *(v85 + 8);
        v87(v38, v84);
        v87(v58, v84);
LABEL_23:
        outlined destroy of AppleIntelligenceBiomeEvent(v63);
      }

      return v40 & 1;
  }
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

uint64_t outlined destroy of (AppleIntelligenceBiomeEvent, AppleIntelligenceBiomeEvent)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for AppleIntelligenceBiomeEvent()
{
  result = type metadata accessor for AppleIntelligenceReportingInvocationStep();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MobileAssetInstrumentationEvent();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_getEnumCaseMultiPayload();
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

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsUploader(_BYTE *result, int a2, int a3)
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

uint64_t SELFEventProcessor.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

id SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for SELFEventProcessor();
  v4 = OUTLINED_FUNCTION_44(v3);
  *&v280 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = a1[2];
  v11 = *(a1 + 24);
  v279 = *(a1 + 7);
  LODWORD(v278) = *(a1 + 32);
  v283 = a1[6];
  LODWORD(v282) = *(a1 + 56);
  v263 = *(a1 + 57);
  v269 = a1[8];
  v268 = *(a1 + 72);
  v261 = *(a1 + 73);
  v267 = a1[10];
  v266 = *(a1 + 88);
  v262 = *(a1 + 89);
  v265 = a1[12];
  v264 = *(a1 + 104);
  v285 = a1[14];
  LODWORD(v284) = *(a1 + 120);
  v275 = a1[16];
  v274 = *(a1 + 136);
  v271 = *(a1 + 35);
  v270 = *(a1 + 144);
  v273 = *(a1 + 39);
  v272 = *(a1 + 160);
  v277 = a1[22];
  v276 = *(a1 + 184);
  v12 = a1[26];
  v13 = a1[27];
  v288 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D5A5F0]) init];
  v289 = v1;
  v15 = Logger.logObject.getter();
  v281 = v14;
  if (v14)
  {
    v260 = v13;
    v256[2] = v7;
    v257 = v256 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_150();
      *v17 = 0;
      OUTLINED_FUNCTION_56_2();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      OUTLINED_FUNCTION_11();
    }

    v256[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMd, &_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_227FB4170;
    OUTLINED_FUNCTION_3_11();
    v23 = swift_allocObject();
    v24 = v23;
    v25 = v9 == 0;
    if (v9)
    {
      v26 = 0;
    }

    else
    {
      v26 = v8;
    }

    *(v22 + 32) = v26;
    v287 = v22 + 32;
    v27 = MEMORY[0x277D84D38];
    v28 = v281;
    *(v23 + 16) = v281;
    if (v25)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = v29;
    *(v22 + 64) = 0x757461745377656ELL;
    *(v22 + 72) = 0xE900000000000073;
    *(v22 + 80) = 0x3436746E4955;
    *(v22 + 88) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v30 = swift_allocObject();
    *(v30 + 16) = partial apply for closure #1 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v30 + 24) = v24;
    *(v22 + 96) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error);
    *(v22 + 104) = v30;
    if (v11)
    {
      v10 = 0;
      v27 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v31 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v31);
    *(v22 + 112) = v10;
    *(v22 + 120) = 0;
    *(v22 + 128) = 0;
    *(v22 + 136) = v27;
    *(v22 + 144) = 0x7461745376657270;
    *(v22 + 152) = 0xEA00000000007375;
    *(v22 + 160) = 0x3436746E4955;
    *(v22 + 168) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v32 = swift_allocObject();
    *(v32 + 16) = partial apply for closure #2 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v32 + 24) = v24;
    *(v22 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 184) = v32;
    OUTLINED_FUNCTION_7_8(&v304);
    v34 = MEMORY[0x277D839F8];
    if (v33)
    {
      v35 = v283;
    }

    else
    {
      v35 = 0;
    }

    if (v33)
    {
      v36 = MEMORY[0x277D839F8];
    }

    else
    {
      v36 = 0;
    }

    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_3_11();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v37);
    *(v22 + 192) = v35;
    *(v22 + 200) = 0;
    *(v22 + 208) = 0;
    *(v22 + 216) = v36;
    *(v22 + 224) = 0xD000000000000019;
    *(v22 + 232) = v11;
    *(v22 + 240) = 0x656C62756F44;
    *(v22 + 248) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for closure #3 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v38 + 24) = v24;
    *(v22 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 264) = v38;
    if (v284)
    {
      v39 = 0;
    }

    else
    {
      v39 = v285;
    }

    if (v284)
    {
      v40 = 0;
    }

    else
    {
      v40 = v34;
    }

    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_3_11();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v41);
    *(v22 + 272) = v39;
    *(v22 + 280) = 0;
    *(v22 + 288) = 0;
    *(v22 + 296) = v40;
    *(v22 + 304) = 0xD00000000000001FLL;
    *(v22 + 312) = v11;
    *(v22 + 320) = 0x656C62756F44;
    *(v22 + 328) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v42 = swift_allocObject();
    *(v42 + 16) = partial apply for closure #4 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v42 + 24) = v24;
    *(v22 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 344) = v42;
    v43 = v260;
    if (v260)
    {
      v44 = v288;
    }

    else
    {
      v44 = 0;
    }

    if (v260)
    {
      v45 = MEMORY[0x277D837D0];
    }

    else
    {
      v45 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v46 = swift_allocObject();
    OUTLINED_FUNCTION_57_2(v46);
    *(v22 + 352) = v44;
    *(v22 + 360) = v43;
    *(v22 + 368) = 0;
    *(v22 + 376) = v45;
    OUTLINED_FUNCTION_55_2();
    *(v22 + 384) = v47;
    *(v22 + 392) = 0xE900000000000044;
    OUTLINED_FUNCTION_5_11();
    *(v22 + 400) = v48;
    *(v22 + 408) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v49 = swift_allocObject();
    *(v49 + 16) = partial apply for closure #5 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v49 + 24) = v24;
    *(v22 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v22 + 424) = v49;
    v258 = v22;
    v50 = v287;
    v259 = v28;

    v52 = 0;
    *&v53 = 136315394;
    v282 = v53;
    v54 = v286;
    while (v52 != 5)
    {
      if (v52 > 4)
      {
        __break(1u);
LABEL_133:
        __break(1u);
        return result;
      }

      _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v50, &v292);
      v55 = v296;
      if (!v296)
      {
        break;
      }

      v56 = v295;
      v57 = v297;
      v58 = v298;
      OUTLINED_FUNCTION_109_0();
      v59 = swift_allocObject();
      v60 = OUTLINED_FUNCTION_8_12(v59);
      v291 = v61;
      v290 = v60;
      if (!*(&v61 + 1))
      {

        outlined destroy of NSObject?(&v290, &_sypSgMd, &_sypSgMR);

        v217 = Logger.logObject.getter();
        static os_log_type_t.error.getter();

        if (OUTLINED_FUNCTION_62_2())
        {
          v218 = v56;
          v219 = OUTLINED_FUNCTION_76_0();
          v220 = OUTLINED_FUNCTION_84();
          v292 = v220;
          *v219 = 136315138;
          *(v219 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v218, v55, &v292);
          OUTLINED_FUNCTION_56_2();
          _os_log_impl(v221, v222, v223, v224, v219, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v220);
          OUTLINED_FUNCTION_11();
          v56 = v218;
          OUTLINED_FUNCTION_11();
        }

        lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
        OUTLINED_FUNCTION_51_1();
        *v225 = v56;
        v225[1] = v55;
        OUTLINED_FUNCTION_37_1();
        *(v227 + 16) = v226 + 2;
        *(v227 + 24) = 0x8000000227FB5F20;
        OUTLINED_FUNCTION_50_2(v228, v227);

        return v281;
      }

      v286 = v57;
      v62 = OUTLINED_FUNCTION_64_3(&v290);
      outlined init with copy of Any(v62, &v290);

      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.debug.getter();

      v65 = os_log_type_enabled(v63, v64);
      v288 = v55;
      if (v65)
      {
        OUTLINED_FUNCTION_80();
        v287 = v50;
        v66 = OUTLINED_FUNCTION_21_6();
        v284 = v52;
        v301 = v66;
        OUTLINED_FUNCTION_27_4(&v304);
        v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, v67);
        OUTLINED_FUNCTION_26_3(v68);
        v285 = v56;
        v69 = *(&v291 + 1);
        v70 = __swift_project_boxed_opaque_existential_1(&v290, *(&v291 + 1));
        v283 = v256;
        v71 = *(*(v69 - 8) + 64);
        MEMORY[0x28223BE20](v70);
        OUTLINED_FUNCTION_1_0();
        v72 = v54;
        v74 = OUTLINED_FUNCTION_58_2(v73);
        v75(v74);
        v76 = String.init<A>(describing:)();
        v78 = v77;
        __swift_destroy_boxed_opaque_existential_0Tm(&v290);
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v301);
        v54 = v72;

        *(v50 + 14) = v79;
        v56 = v285;
        OUTLINED_FUNCTION_53_2(&dword_227F43000, v63, v64, "Field '%s': %s is assigned");
        swift_arrayDestroy();
        v52 = v284;
        OUTLINED_FUNCTION_11();
        v50 = v287;
        OUTLINED_FUNCTION_11();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v290);
      }

      thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
      if (v54)
      {

        v229 = v288;

        v230 = v54;
        v231 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();

        if (OUTLINED_FUNCTION_62_2())
        {
          v232 = v58;
          v233 = OUTLINED_FUNCTION_84();
          v234 = OUTLINED_FUNCTION_83();
          v289 = swift_slowAlloc();
          v290.n128_u64[0] = v289;
          *v233 = 136315650;
          v235 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v229, &v290);

          *(v233 + 4) = v235;
          *(v233 + 12) = 2080;
          v236 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v286, v232, &v290);

          *(v233 + 14) = v236;
          *(v233 + 22) = 2112;
          v237 = v54;
          v238 = _swift_stdlib_bridgeErrorToNSError();
          *(v233 + 24) = v238;
          *v234 = v238;
          OUTLINED_FUNCTION_56_2();
          _os_log_impl(v239, v240, v241, v242, v233, 0x20u);
          outlined destroy of NSObject?(v234, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_11();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        swift_willThrow();
LABEL_130:

        __swift_destroy_boxed_opaque_existential_0Tm(&v292);
        return v281;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v292);

      v50 += 80;
      ++v52;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_227FB4180;
    v85 = v261;
    OUTLINED_FUNCTION_3_11();
    v86 = swift_allocObject();
    v87 = v86;
    *(v84 + 32) = v85 & 1;
    v288 = v84 + 32;
    v88 = MEMORY[0x277D839B0];
    if (v85 == 2)
    {
      v89 = 0;
    }

    else
    {
      v89 = MEMORY[0x277D839B0];
    }

    v90 = v259;
    *(v86 + 16) = v259;
    *(v84 + 40) = 0u;
    *(v84 + 56) = v89;
    *(v84 + 64) = 0xD000000000000027;
    *(v84 + 72) = 0x8000000227FB4F70;
    *(v84 + 80) = 1819242306;
    *(v84 + 88) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v91 = swift_allocObject();
    *(v91 + 16) = partial apply for closure #6 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v91 + 24) = v87;
    *(v84 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 104) = v91;
    v92 = v262 & 1;
    if (v262 == 2)
    {
      v93 = 0;
    }

    else
    {
      v93 = v88;
    }

    OUTLINED_FUNCTION_3_11();
    v94 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v94);
    *(v84 + 112) = v92;
    *(v84 + 120) = 0u;
    *(v84 + 136) = v93;
    strcpy((v84 + 144), "AIToggleState");
    *(v84 + 158) = -4864;
    *(v84 + 160) = 1819242306;
    *(v84 + 168) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v95 = swift_allocObject();
    *(v95 + 16) = partial apply for closure #7 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v95 + 24) = v87;
    *(v84 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 184) = v95;
    v96 = v263 & 1;
    if (v263 == 2)
    {
      v88 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v97 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v97);
    *(v84 + 192) = v96;
    *(v84 + 200) = 0u;
    OUTLINED_FUNCTION_37_1();
    *(v84 + 216) = v88;
    *(v84 + 224) = v98 + 7;
    *(v84 + 232) = v93;
    *(v84 + 240) = 1819242306;
    *(v84 + 248) = 0xE400000000000000;
    OUTLINED_FUNCTION_109_0();
    v99 = swift_allocObject();
    *(v99 + 16) = partial apply for closure #8 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v99 + 24) = v87;
    *(v84 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 264) = v99;
    OUTLINED_FUNCTION_7_8(&v291 + 12);
    if (v100)
    {
      v101 = v265;
    }

    else
    {
      v101 = 0;
    }

    v102 = MEMORY[0x277D839F8];
    if (v100)
    {
      v103 = MEMORY[0x277D839F8];
    }

    else
    {
      v103 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v104 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v104);
    *(v84 + 272) = v101;
    OUTLINED_FUNCTION_10_7((v84 + 280));
    *(v84 + 296) = v103;
    *(v84 + 304) = 0xD000000000000015;
    *(v84 + 312) = 0x8000000227FB4FC0;
    *(v84 + 320) = 0x656C62756F44;
    *(v84 + 328) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v105 = swift_allocObject();
    *(v105 + 16) = partial apply for closure #9 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v105 + 24) = v87;
    *(v84 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 344) = v105;
    OUTLINED_FUNCTION_7_8(v293);
    if (v106)
    {
      v107 = v267;
    }

    else
    {
      v107 = 0;
    }

    if (v106)
    {
      v108 = v102;
    }

    else
    {
      v108 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v109 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v109);
    *(v84 + 352) = v107;
    OUTLINED_FUNCTION_10_7((v84 + 360));
    *(v84 + 376) = v108;
    *(v84 + 384) = 0xD00000000000001BLL;
    *(v84 + 392) = 0x8000000227FB4FA0;
    *(v84 + 400) = 0x656C62756F44;
    *(v84 + 408) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v110 = swift_allocObject();
    *(v110 + 16) = partial apply for closure #10 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v110 + 24) = v87;
    *(v84 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 424) = v110;
    OUTLINED_FUNCTION_7_8(&v294 + 4);
    if (v111)
    {
      v112 = v269;
    }

    else
    {
      v112 = 0;
    }

    if (v111)
    {
      v113 = v102;
    }

    else
    {
      v113 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v114 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v114);
    *(v84 + 432) = v112;
    OUTLINED_FUNCTION_10_7((v84 + 440));
    *(v84 + 456) = v113;
    *(v84 + 464) = 0xD00000000000001BLL;
    *(v84 + 472) = v102;
    *(v84 + 480) = 0x656C62756F44;
    *(v84 + 488) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v115 = swift_allocObject();
    *(v115 + 16) = partial apply for closure #11 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v115 + 24) = v87;
    *(v84 + 496) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 504) = v115;
    v116 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_7_8(&v296 + 4);
    if (v117)
    {
      v118 = v116;
    }

    else
    {
      v118 = 0;
    }

    if (v117)
    {
      v119 = v271;
    }

    else
    {
      v119 = 0;
    }

    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_3_11();
    v120 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v120);
    *(v84 + 512) = v119;
    OUTLINED_FUNCTION_10_7((v84 + 520));
    *(v84 + 536) = v118;
    OUTLINED_FUNCTION_37_1();
    *(v84 + 544) = v121;
    *(v84 + 552) = v102;
    OUTLINED_FUNCTION_20_5();
    *(v84 + 560) = v122;
    v123 = v122;
    *(v84 + 568) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v124 = swift_allocObject();
    *(v124 + 16) = partial apply for closure #12 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v124 + 24) = v87;
    *(v84 + 576) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 584) = v124;
    OUTLINED_FUNCTION_7_8(&v298 + 4);
    if (v125)
    {
      v126 = v116;
    }

    else
    {
      v126 = 0;
    }

    if (v125)
    {
      v127 = v273;
    }

    else
    {
      v127 = 0;
    }

    v286 = v54;
    OUTLINED_FUNCTION_3_11();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v128);
    *(v84 + 592) = v127;
    OUTLINED_FUNCTION_10_7((v84 + 600));
    *(v84 + 616) = v126;
    OUTLINED_FUNCTION_37_1();
    *(v84 + 624) = v129 + 1;
    *(v84 + 632) = 0x8000000227FB5040;
    *(v84 + 640) = v123;
    *(v84 + 648) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v130 = swift_allocObject();
    *(v130 + 16) = partial apply for closure #13 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v130 + 24) = v87;
    *(v84 + 656) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 664) = v130;
    OUTLINED_FUNCTION_7_8(v299);
    if (v131)
    {
      v132 = v275;
    }

    else
    {
      v132 = 0;
    }

    v133 = MEMORY[0x277D839F8];
    if (v131)
    {
      v134 = MEMORY[0x277D839F8];
    }

    else
    {
      v134 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v135 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v135);
    *(v84 + 672) = v132;
    OUTLINED_FUNCTION_10_7((v84 + 680));
    *(v84 + 696) = v134;
    OUTLINED_FUNCTION_37_1();
    *(v84 + 704) = v136 - 4;
    *(v84 + 712) = 0x8000000227FB5000;
    *(v84 + 720) = 0x656C62756F44;
    *(v84 + 728) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v137 = swift_allocObject();
    *(v137 + 16) = partial apply for closure #14 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v137 + 24) = v87;
    *(v84 + 736) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 744) = v137;
    OUTLINED_FUNCTION_7_8(&v300 + 4);
    if (v138)
    {
      v139 = v133;
    }

    else
    {
      v139 = 0;
    }

    if (v138)
    {
      v140 = v277;
    }

    else
    {
      v140 = 0;
    }

    OUTLINED_FUNCTION_3_11();
    v141 = swift_allocObject();
    OUTLINED_FUNCTION_30_1(v141);
    *(v84 + 752) = v140;
    OUTLINED_FUNCTION_10_7((v84 + 760));
    *(v84 + 776) = v139;
    OUTLINED_FUNCTION_37_1();
    *(v84 + 784) = v142 + 16;
    *(v84 + 792) = 0x8000000227FB5060;
    *(v84 + 800) = 0x656C62756F44;
    *(v84 + 808) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v143 = swift_allocObject();
    *(v143 + 16) = partial apply for closure #15 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v143 + 24) = v87;
    *(v84 + 816) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    *(v84 + 824) = v143;
    OUTLINED_FUNCTION_7_8(&v302);
    if (v144)
    {
      v145 = v279;
    }

    else
    {
      v145 = 0;
    }

    if (v144)
    {
      v146 = MEMORY[0x277D84CC0];
    }

    else
    {
      v146 = 0;
    }

    v147 = v90;
    v148 = v257;
    outlined init with copy of SELFEventProcessor(v289, v257);
    v149 = (*(v280 + 80) + 24) & ~*(v280 + 80);
    v150 = swift_allocObject();
    v151 = OUTLINED_FUNCTION_15_4(v150) + v149;
    v152 = v286;
    v153 = v148;
    v154 = v288;
    outlined init with take of SELFEventProcessor(v153, v151);
    *(v84 + 832) = v145;
    OUTLINED_FUNCTION_10_7((v84 + 840));
    *(v84 + 856) = v146;
    *(v84 + 864) = 0x4D746E6572727563;
    *(v84 + 872) = 0xEB0000000065646FLL;
    OUTLINED_FUNCTION_20_5();
    *(v84 + 880) = v155;
    *(v84 + 888) = 0xE600000000000000;
    OUTLINED_FUNCTION_109_0();
    v156 = swift_allocObject();
    *(v156 + 16) = partial apply for closure #16 in SELFEventProcessor.processAvailabilityChangeEvent(_:);
    *(v156 + 24) = 0xE600000000000000;
    *(v84 + 896) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
    v279 = v84;
    *(v84 + 904) = v156;
    result = v147;
    v278 = result;
    v157 = 0;
    *&v158 = 136315138;
    v280 = v158;
    while (v157 != 11)
    {
      if (v157 > 0xA)
      {
        goto LABEL_133;
      }

      _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v154, &v292);
      v159 = v296;
      if (!v296)
      {
        break;
      }

      v160 = v295;
      v162 = v297;
      v161 = v298;
      OUTLINED_FUNCTION_109_0();
      v163 = swift_allocObject();
      v164 = OUTLINED_FUNCTION_8_12(v163);
      v291 = v165;
      v290 = v164;
      if (*(&v165 + 1))
      {
        v288 = v161;
        v166 = OUTLINED_FUNCTION_64_3(&v290);
        outlined init with copy of Any(v166, &v290);

        v167 = Logger.logObject.getter();
        v168 = static os_log_type_t.debug.getter();

        v169 = os_log_type_enabled(v167, v168);
        v284 = v162;
        if (v169)
        {
          OUTLINED_FUNCTION_80();
          v287 = v157;
          v170 = OUTLINED_FUNCTION_21_6();
          v286 = v152;
          v301 = v170;
          OUTLINED_FUNCTION_27_4(&v304);
          v172 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v159, v171);
          OUTLINED_FUNCTION_26_3(v172);
          __swift_project_boxed_opaque_existential_1(&v290, *(&v291 + 1));
          v285 = v163;
          OUTLINED_FUNCTION_22_7();
          v174 = *(v173 + 64);
          MEMORY[0x28223BE20](v175);
          OUTLINED_FUNCTION_1_0();
          v283 = v160;
          (*(v178 + 16))(v177 - v176);
          v179 = String.init<A>(describing:)();
          v181 = v180;
          v163 = v285;
          __swift_destroy_boxed_opaque_existential_0Tm(&v290);
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v181, &v301);

          *(v157 + 14) = v182;
          v160 = v283;
          OUTLINED_FUNCTION_53_2(&dword_227F43000, v167, v168, "Field '%s': %s is assigned");
          swift_arrayDestroy();
          v152 = v286;
          OUTLINED_FUNCTION_11();
          v157 = v287;
          OUTLINED_FUNCTION_11();
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(&v290);
        }

        v192 = v152;
        partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)();
        v193 = v288;
        if (v152)
        {

          v243 = v152;
          v244 = Logger.logObject.getter();
          static os_log_type_t.fault.getter();

          if (OUTLINED_FUNCTION_62_2())
          {
            v245 = OUTLINED_FUNCTION_84();
            v285 = v163;
            v246 = v245;
            v247 = OUTLINED_FUNCTION_83();
            v290.n128_u64[0] = swift_slowAlloc();
            *v246 = 136315650;
            v248 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v159, &v290);

            *(v246 + 4) = v248;
            *(v246 + 12) = 2080;
            v249 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v193, &v290);

            *(v246 + 14) = v249;
            *(v246 + 22) = 2112;
            v250 = v192;
            v251 = _swift_stdlib_bridgeErrorToNSError();
            *(v246 + 24) = v251;
            *v247 = v251;
            OUTLINED_FUNCTION_56_2();
            _os_log_impl(v252, v253, v254, v255, v246, 0x20u);
            outlined destroy of NSObject?(v247, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            OUTLINED_FUNCTION_11();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_11();
          }

          else
          {
          }

          swift_willThrow();
          goto LABEL_130;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v292);
      }

      else
      {
        v183 = v160;

        outlined destroy of NSObject?(&v290, &_sypSgMd, &_sypSgMR);

        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = OUTLINED_FUNCTION_76_0();
          v287 = v157;
          v187 = v186;
          v188 = OUTLINED_FUNCTION_84();
          v292 = v188;
          OUTLINED_FUNCTION_33_3(&v303);
          v189 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v159, &v292);
          v190 = v152;
          v191 = v189;

          *(v187 + 4) = v191;
          v152 = v190;
          _os_log_impl(&dword_227F43000, v184, v185, "Field '%s': nil (optional)", v187, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v188);
          OUTLINED_FUNCTION_11();
          v157 = v287;
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }
      }

      v154 += 80;
      ++v157;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
    v194 = Logger.logObject.getter();
    v195 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_78_0(v195))
    {
      v196 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v196);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v197, v198, v199, v200, v201, 2u);
      OUTLINED_FUNCTION_40();
    }

    v202 = v278;
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v203, v204))
    {
      v205 = OUTLINED_FUNCTION_76_0();
      v206 = OUTLINED_FUNCTION_84();
      v290.n128_u64[0] = v206;
      OUTLINED_FUNCTION_33_3(&v303);
      v294 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
      v292 = v202;
      v207 = v202;
      v208 = printDebugDescription(_:)(&v292);
      v210 = v209;
      __swift_destroy_boxed_opaque_existential_0Tm(&v292);
      v211 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v210, &v290);

      *(v205 + 4) = v211;
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v212, v213, v214, v215, v216, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v206);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }
  }

  else
  {
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v80))
    {
      v81 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v81);
      _os_log_impl(&dword_227F43000, v15, v80, "Failed to create SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus container", 0, 2u);
      OUTLINED_FUNCTION_40();
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v82 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_45_2(v82, v83);
  }

  return v281;
}

uint64_t type metadata accessor for SELFEventProcessor()
{
  result = type metadata singleton initialization cache for SELFEventProcessor;
  if (!type metadata singleton initialization cache for SELFEventProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError()
{
  result = lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError;
  if (!lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError;
  if (!lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SELFProcessingError and conformance SELFProcessingError);
  }

  return result;
}

id closure #1 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2, SEL *a3, __n128 a4)
{
  outlined init with copy of Any(a1, v9);
  if (swift_dynamicCast())
  {
    return [a2 *a3];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  OUTLINED_FUNCTION_51_1();
  *v7 = a4;
  *(v7 + 16) = xmmword_227FB4190;
  *(v7 + 32) = 0xD000000000000017;
  *(v7 + 40) = 0x8000000227FB5F20;
  *(v7 + 48) = 2;
  return swift_willThrow();
}

id closure #3 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastStatusChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000019;
  *(v4 + 8) = 0x8000000227FB4F10;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #4 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAvailabilityChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000227FB4FE0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

void closure #5 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    outlined bridged method (mbnn) of @objc SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus.useCaseID.setter(v4, v5, a2, &selRef_setUseCaseID_);
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v3 = xmmword_227FB41B0;
    *(v3 + 16) = xmmword_227FB41C0;
    *(v3 + 32) = 0xD000000000000017;
    *(v3 + 40) = 0x8000000227FB5F20;
    *(v3 + 48) = 2;
    swift_willThrow();
  }
}

id closure #6 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceAllowedThroughWaitlist_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000027;
  *(v4 + 8) = 0x8000000227FB4F70;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #7 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceToggled_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = xmmword_227FB41E0;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #8 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setIsAppleIntelligenceEligible_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001CLL;
  *(v4 + 8) = 0x8000000227FB4F30;
  *(v4 + 16) = xmmword_227FB41D0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #9 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastAppleIntelligenceToggleInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB4FC0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #10 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastWaitlistChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001BLL;
  *(v4 + 8) = 0x8000000227FB4FA0;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #11 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastEligibleChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD00000000000001BLL;
  *(v4 + 8) = 0x8000000227FB4F50;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #12 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setCurrentSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000015;
  *(v4 + 8) = 0x8000000227FB5020;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #13 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setPreviousSubscriptionHash_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000016;
  *(v4 + 8) = 0x8000000227FB5040;
  *(v4 + 16) = xmmword_227FB41F0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #14 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastBootInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000011;
  *(v4 + 8) = 0x8000000227FB5000;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #15 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v5);
  if (swift_dynamicCast())
  {
    return [a2 setTimeSinceLastSubscriptionHashChangeInSeconds_];
  }

  lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
  swift_allocError();
  *v4 = 0xD000000000000025;
  *(v4 + 8) = 0x8000000227FB5060;
  *(v4 + 16) = xmmword_227FB41A0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000227FB5F20;
  *(v4 + 48) = 2;
  return swift_willThrow();
}

id closure #16 in SELFEventProcessor.processAvailabilityChangeEvent(_:)(uint64_t a1, void *a2)
{
  outlined init with copy of Any(a1, v6);
  if (swift_dynamicCast())
  {
    result = SELFEventProcessor.mapModeValue(_:)(v6[11]);
    if (!v2)
    {
      return [a2 setCurrentMode_];
    }
  }

  else
  {
    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = xmmword_227FB4200;
    *(v5 + 16) = xmmword_227FB41F0;
    *(v5 + 32) = 0xD000000000000017;
    *(v5 + 40) = 0x8000000227FB5F20;
    *(v5 + 48) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t SELFEventProcessor.mapModeValue(_:)(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_227F43000, v2, v3, "Invalid mode value: %u", v4, 8u);
      MEMORY[0x22AAAF0A0](v4, -1, -1);
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0xD000000000000035;
    *(v5 + 16) = 0x8000000227FB6480;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 48) = 8;
    swift_willThrow();
  }

  return a1;
}

unint64_t printDebugDescription(_:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v33);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus, 0x277D5A5F0);
  if (OUTLINED_FUNCTION_59_2())
  {
    v1 = v32;
    OUTLINED_FUNCTION_13_2();
    v30 = 0xD000000000000039;
    v31 = v2;
    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(16);

    strcpy(v29, "  newStatus: ");
    v24 = [v32 newStatus];
    OUTLINED_FUNCTION_28_4();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(17);

    strcpy(v29, "  prevStatus: ");
    HIBYTE(v29[1]) = -18;
    v25 = [v32 prevStatus];
    OUTLINED_FUNCTION_28_4();
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v3);

    OUTLINED_FUNCTION_2_13();
    MEMORY[0x22AAAE070](v29[0], v29[1]);

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_13_2();
    LODWORD(v26) = [v32 currentSubscriptionHash];
    OUTLINED_FUNCTION_28_4();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(41);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](v5);
    [v32 timeSinceLastStatusChangeInSeconds];
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastAppleIntelligenceToggleInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(47);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastAvailabilityChangeInSeconds];
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(33);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](0xD00000000000001ELL);
    [v32 timeSinceLastBootInSeconds];
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_29_2();
    outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_useCaseID);
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v32 isAppleIntelligenceAllowedThroughWaitlist];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v32 isAppleIntelligenceToggled];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v32 isAppleIntelligenceEligible];
    OUTLINED_FUNCTION_63_3();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v32 timeSinceLastWaitlistChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    [v32 timeSinceLastEligibleChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    v29[0] = 0xD00000000000001CLL;
    v29[1] = v6;
    [v32 previousSubscriptionHash];
    OUTLINED_FUNCTION_28_4();
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    if (!OUTLINED_FUNCTION_59_2())
    {
      v22 = 0xD000000000000029;
      goto LABEL_7;
    }

    v1 = v32;
    OUTLINED_FUNCTION_13_2();
    v30 = 0xD00000000000003BLL;
    v31 = v7;
    strcpy(v29, "  status: ");
    v27 = [v32 status];
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    strcpy(v29, "  errorCount: ");
    HIBYTE(v29[1]) = -18;
    LODWORD(v28) = [v32 errorCount];
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(33);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070](0xD00000000000001ELL);
    [v32 timeSinceLastBootInSeconds];
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_29_2();
    outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_useCaseID);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    strcpy(v29, "  locale: ");
    [v32 locale];
    SISchemaLocale.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 downloadState];
    SADSchemaSADMobileAssetDownloadState.description.getter();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v8 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_lastMobileAssetDownloadAttemptErrorDomain);
    OUTLINED_FUNCTION_39_2(v8, v9);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v10 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_failingSubsystemOperations);
    OUTLINED_FUNCTION_39_2(v10, v11);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v12 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_sampledSubsystemOperation);
    OUTLINED_FUNCTION_39_2(v12, v13);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v14 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_sampledErrorDomain);
    OUTLINED_FUNCTION_39_2(v14, v15);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v16 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_sampledErrorUnderlyingDomain);
    OUTLINED_FUNCTION_39_2(v16, v17);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    v18 = outlined bridged method (pb) of @objc SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus.useCaseID.getter(v32, &selRef_lastMobileAssetDownloadAttemptErrorAsset);
    OUTLINED_FUNCTION_39_2(v18, v19);
    OUTLINED_FUNCTION_49_2();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 currentSubscriptionHash];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 sampledErrorCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 sampledErrorHash];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 sampledErrorUnderlyingCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 countRequiredAssets];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_41_0();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_4_8();

    OUTLINED_FUNCTION_13_2();
    [v32 lastMobileAssetDownloadAttemptErrorCode];
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastAppleIntelligenceToggleInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(55);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastMobileAssetDownloadAttemptInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(51);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastSubscriptionHashChangeInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_16_6();
    _StringGuts.grow(_:)(53);
    OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_23_4();
    MEMORY[0x22AAAE070]();
    [v32 timeSinceLastMobileAssetDownloadErrorInSeconds];
    Double.description.getter();
    OUTLINED_FUNCTION_40_1();

    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_12_9();

    OUTLINED_FUNCTION_13_2();
    v29[0] = 0xD000000000000013;
    v29[1] = v20;
    [v32 countPSUSAssets];
  }

  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x22AAAE070](v21);

  MEMORY[0x22AAAE070](v29[0], v29[1]);

  v22 = v30;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  return v22;
}

uint64_t SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:)(uint64_t a1)
{
  v3 = type metadata accessor for SELFEventProcessor();
  v4 = OUTLINED_FUNCTION_44(v3);
  v483 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v488 = v439 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v494 = v9;
  MEMORY[0x28223BE20](v8);
  v482 = v439 - v10;
  v11 = *(a1 + 8);
  v443 = *a1;
  v450 = v11;
  v12 = *(a1 + 24);
  v449 = *(a1 + 16);
  v448 = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v444 = *(a1 + 44);
  v446 = *(a1 + 48);
  v445 = *(a1 + 52);
  v465 = *(a1 + 56);
  v15 = *(a1 + 72);
  v454 = *(a1 + 64);
  v490[0] = v15;
  v464 = *(a1 + 80);
  v463 = *(a1 + 84);
  v16 = *(a1 + 96);
  v451 = *(a1 + 88);
  v492 = v16;
  v467 = *(a1 + 128);
  v466 = *(a1 + 132);
  v17 = *(a1 + 144);
  v489 = *(a1 + 136);
  v491 = v17;
  v18 = *(a1 + 152);
  v493[1] = *(a1 + 160);
  v456 = *(a1 + 168);
  v455 = *(a1 + 172);
  v19 = *(a1 + 184);
  v452 = *(a1 + 176);
  v493[0] = v19;
  v458 = *(a1 + 192);
  v457 = *(a1 + 196);
  v460 = *(a1 + 200);
  v459 = *(a1 + 204);
  v20 = *(a1 + 216);
  v453 = *(a1 + 208);
  v490[1] = v20;
  v471 = *(a1 + 224);
  v470 = *(a1 + 232);
  v473 = *(a1 + 240);
  v472 = *(a1 + 248);
  v475 = *(a1 + 256);
  v474 = *(a1 + 264);
  v477 = *(a1 + 272);
  v476 = *(a1 + 280);
  v21 = *(a1 + 284);
  v447 = *(a1 + 288);
  v462 = *(a1 + 292);
  v461 = *(a1 + 296);
  LODWORD(v495) = *(a1 + 300);
  LODWORD(v498) = *(a1 + 304);
  v469 = *(a1 + 320);
  v468 = *(a1 + 328);
  v23 = *(a1 + 344);
  v22 = *(a1 + 352);
  v479 = *(a1 + 360);
  v478 = *(a1 + 364);
  v481 = *(a1 + 368);
  v480 = *(a1 + 372);
  v487 = *(a1 + 376);
  v486 = *(a1 + 380);
  v485 = *(a1 + 384);
  v484 = *(a1 + 392);
  v24 = [objc_allocWithZone(MEMORY[0x277D5A5F8]) init];
  v502 = v1;
  v25 = Logger.logObject.getter();
  if (!v24)
  {
    v71 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_78_0(v71))
    {
      v72 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v72);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_40();
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    v78 = OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_45_2(v78, v79);
    return v24;
  }

  v442 = v18;
  v440 = v21;
  v26 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_78_0(v26))
  {
    v27 = OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_32_2(v27);
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v28, v29, v30, v31, v32, 2u);
    OUTLINED_FUNCTION_40();
  }

  v441 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMd, &_ss23_ContiguousArrayStorageCyypSg5value_SS9fieldNameSS12expectedTypeyypKc6settertGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_227FB4210;
  if (v14)
  {
    v34 = 0;
  }

  else
  {
    v34 = v13;
  }

  if (v14)
  {
    v35 = 0;
  }

  else
  {
    v35 = MEMORY[0x277D84D38];
  }

  OUTLINED_FUNCTION_3_11();
  v36 = swift_allocObject();
  *(v36 + 16) = v24;
  *(v33 + 32) = v34;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = v35;
  *(v33 + 64) = 0x737574617473;
  *(v33 + 72) = 0xE600000000000000;
  *(v33 + 80) = 0x3436746E4955;
  *(v33 + 88) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #1 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v37 + 24) = v36;
  *(v33 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v33 + 104) = v37;
  if (v22)
  {
    v38 = MEMORY[0x277D837D0];
  }

  else
  {
    v23 = 0;
    v38 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v39 = swift_allocObject();
  *(v39 + 16) = v24;
  *(v33 + 112) = v23;
  *(v33 + 120) = v22;
  *(v33 + 128) = 0;
  *(v33 + 136) = v38;
  OUTLINED_FUNCTION_55_2();
  *(v33 + 144) = v40;
  *(v33 + 152) = 0xE900000000000044;
  *(v33 + 160) = 0x676E69727453;
  *(v33 + 168) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v41 = swift_allocObject();
  *(v41 + 16) = partial apply for closure #2 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v41 + 24) = v39;
  *(v33 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v33 + 184) = v41;
  v504 = v33;
  v496 = v24;
  *&v497 = v24;
  v42 = 32;

  *&v43 = 136315394;
  v499 = v43;
  v44 = v506;
  v24 = v502;
  while (1)
  {
    i = &loc_227FB1000;
    if (v42 == 192)
    {
      break;
    }

    _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(v504 + v42, &v509);
    v46 = v512;
    if (!v512)
    {
      break;
    }

    v47 = v511;
    v48 = v513;
    v49 = v514;
    OUTLINED_FUNCTION_109_0();
    v50 = swift_allocObject();
    v507 = OUTLINED_FUNCTION_8_12(v50);
    v508 = v51;
    if (!*(&v51 + 1))
    {
      v94 = v47;

      outlined destroy of NSObject?(&v507, &_sypSgMd, &_sypSgMR);

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = OUTLINED_FUNCTION_76_0();
        v98 = OUTLINED_FUNCTION_84();
        *&v509 = v98;
        *v97 = 136315138;
        v99 = v94;
        *(v97 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v46, &v509);
        OUTLINED_FUNCTION_0_11();
        _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_40();

        v105 = v497;
        v106 = v46;
      }

      else
      {

        v105 = v497;
        v106 = v46;
        v99 = v94;
      }

      lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
      OUTLINED_FUNCTION_51_1();
      *v133 = v99;
      v133[1] = v106;
      OUTLINED_FUNCTION_17_6();
      *(v134 + 16) = v135;
      *(v134 + 24) = 0x8000000227FB6460;
      OUTLINED_FUNCTION_50_2(v136, v134);

      goto LABEL_39;
    }

    v505 = v42;
    v500 = v48;
    v52 = OUTLINED_FUNCTION_64_3(&v507);
    outlined init with copy of Any(v52, &v507);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.debug.getter();

    v55 = os_log_type_enabled(v53, v54);
    v506 = v46;
    v501 = v47;
    if (v55)
    {
      OUTLINED_FUNCTION_80();
      v503 = v49;
      v517 = OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_27_4(&v519);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v56);
      OUTLINED_FUNCTION_26_3(v57);
      __swift_project_boxed_opaque_existential_1(&v507, *(&v508 + 1));
      OUTLINED_FUNCTION_22_7();
      v59 = *(v58 + 64);
      MEMORY[0x28223BE20](v60);
      OUTLINED_FUNCTION_1_0();
      v61 = v44;
      v63 = OUTLINED_FUNCTION_58_2(v62);
      v64(v63);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      __swift_destroy_boxed_opaque_existential_0Tm(&v507);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &v517);
      v24 = v502;

      *(v49 + 14) = v68;
      v44 = v61;
      OUTLINED_FUNCTION_53_2(&dword_227F43000, v53, v54, "Field '%s': %s is assigned");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      v49 = v503;
      OUTLINED_FUNCTION_11();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(&v507);
    }

    v69 = v505;
    v70 = v44;
    thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
    if (v44)
    {

      OUTLINED_FUNCTION_109_0();
      v107 = swift_allocObject();
      v108 = v506;
      *(v107 + 16) = v501;
      *(v107 + 24) = v108;
      OUTLINED_FUNCTION_109_0();
      v109 = swift_allocObject();
      *(v109 + 16) = v500;
      *(v109 + 24) = v49;
      OUTLINED_FUNCTION_3_11();
      *&v499 = swift_allocObject();
      *(v499 + 16) = v44;

      v110 = v44;
      v505 = Logger.logObject.getter();
      LODWORD(v504) = static os_log_type_t.fault.getter();
      OUTLINED_FUNCTION_13_7();
      v502 = swift_allocObject();
      *(v502 + 16) = 32;
      OUTLINED_FUNCTION_13_7();
      v498 = swift_allocObject();
      *(v498 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v111 = swift_allocObject();
      v503 = v49;
      v112 = v111;
      *(v111 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v111 + 24) = v107;
      OUTLINED_FUNCTION_109_0();
      v113 = swift_allocObject();
      *(v113 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v113 + 24) = v112;
      OUTLINED_FUNCTION_13_7();
      v495 = swift_allocObject();
      v495[16] = 32;
      OUTLINED_FUNCTION_13_7();
      v114 = swift_allocObject();
      *(v114 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v115 = swift_allocObject();
      *(v115 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v115 + 24) = v109;
      OUTLINED_FUNCTION_109_0();
      v116 = swift_allocObject();
      v116[2] = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      v116[3] = v115;
      OUTLINED_FUNCTION_13_7();
      v117 = swift_allocObject();
      *(v117 + 16) = 64;
      OUTLINED_FUNCTION_13_7();
      v118 = swift_allocObject();
      *(v118 + 16) = 8;
      OUTLINED_FUNCTION_109_0();
      v119 = swift_allocObject();
      v120 = v499;
      *(v119 + 16) = partial apply for implicit closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
      *(v119 + 24) = v120;
      OUTLINED_FUNCTION_109_0();
      v121 = swift_allocObject();
      *(v121 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
      *(v121 + 24) = v119;
      OUTLINED_FUNCTION_109_0();
      v122 = swift_allocObject();
      *(v122 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)partial apply;
      *(v122 + 24) = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_227FB4220;
      v124 = v502;
      *(v123 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 40) = v124;
      v125 = v498;
      *(v123 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 56) = v125;
      *(v123 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 72) = v113;
      v126 = v495;
      *(v123 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 88) = v126;
      *(v123 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 104) = v114;
      *(v123 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 120) = v116;
      *(v123 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 136) = v117;
      *(v123 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 152) = v118;
      v127 = v505;
      *(v123 + 160) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v123 + 168) = v122;
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
      v24 = v504;
      if (os_log_type_enabled(v127, v504))
      {
        v128 = OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_83();
        v507.n128_u64[0] = OUTLINED_FUNCTION_21_6();
        *v128 = 136315650;
        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v501, v506, &v507);

        *(v128 + 4) = v129;
        *(v128 + 12) = 2080;
        v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v500, v503, &v507);

        *(v128 + 14) = v130;
        *(v128 + 22) = 2112;
        v131 = v70;
        v132 = _swift_stdlib_bridgeErrorToNSError();
        *(v128 + 24) = v132;
        *v116 = v132;
        _os_log_impl(&dword_227F43000, v127, v24, "Type conversion failed for field '%s' to %s: %@", v128, 0x20u);
        outlined destroy of NSObject?(v116, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_40();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }

      v137 = v497;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(&v509);
      goto LABEL_39;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v509);

    v42 = v69 + 80;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  if (v498)
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_78_0(v81))
    {
      v82 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v82);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v83, v84, v85, v86, v87, 2u);
      OUTLINED_FUNCTION_40();
    }

    lazy protocol witness table accessor for type SELFProcessingError and conformance SELFProcessingError();
    OUTLINED_FUNCTION_51_1();
    *v88 = xmmword_227FB4250;
    OUTLINED_FUNCTION_17_6();
    *(v89 + 16) = v90;
    *(v89 + 24) = 0x8000000227FB6460;
    OUTLINED_FUNCTION_50_2(v91, v89);
    goto LABEL_30;
  }

  v92 = v495;
  v93 = SELFEventProcessor.mapDownloadState(_:)(v495);
  if (v44)
  {
LABEL_30:

LABEL_39:
    OUTLINED_FUNCTION_48_1();
    return v24;
  }

  v139 = v93;
  v506 = 0;
  v140 = swift_allocObject();
  *(v140 + 16) = v92;
  v141 = swift_allocObject();
  *(v141 + 16) = v139;
  v503 = Logger.logObject.getter();
  LODWORD(v504) = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v142 = swift_allocObject();
  *(v142 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v143 = swift_allocObject();
  LODWORD(v505) = v139;
  *(v143 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v144 = swift_allocObject();
  *(v144 + 16) = partial apply for implicit closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v144 + 24) = v140;
  OUTLINED_FUNCTION_109_0();
  v145 = swift_allocObject();
  *(v145 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v145 + 24) = v144;
  OUTLINED_FUNCTION_13_7();
  v146 = swift_allocObject();
  *(v146 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v147 = swift_allocObject();
  *(v147 + 16) = 8;
  v148 = v503;
  OUTLINED_FUNCTION_109_0();
  v149 = swift_allocObject();
  *(v149 + 16) = partial apply for implicit closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v149 + 24) = v141;
  OUTLINED_FUNCTION_109_0();
  v150 = swift_allocObject();
  *(v150 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v150 + 24) = v149;
  v439[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
  v151 = swift_allocObject();
  *(v151 + 16) = xmmword_227FB4230;
  *(v151 + 32) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v151 + 40) = v142;
  *(v151 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v151 + 56) = v143;
  *(v151 + 64) = partial apply for closure #1 in OSLogArguments.append(_:);
  *(v151 + 72) = v145;
  v152 = v504;
  *(v151 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v151 + 88) = v146;
  *(v151 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v151 + 104) = v147;
  *(v151 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v151 + 120) = v150;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v148, v152))
  {
    OUTLINED_FUNCTION_80();
    *&v509 = OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_33_3(&v519);
    v507.n128_u32[0] = v495;
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, &v509);

    *(v143 + 4) = v155;
    *(v143 + 12) = 2080;
    v156 = v505;
    v157 = SADSchemaSADMobileAssetDownloadState.description.getter();
    v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v509);

    *(v143 + 14) = v159;
    OUTLINED_FUNCTION_53_2(&dword_227F43000, v148, v152, "Field 'downloadState': %s is %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_40();

    v160 = OUTLINED_FUNCTION_34_2();
    v161 = v156;
  }

  else
  {

    v160 = OUTLINED_FUNCTION_34_2();
    v161 = v505;
  }

  [v160 setDownloadState_];
  if (v148)
  {
    v147 = v148;
  }

  else
  {
    if (!v147)
    {
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.debug.getter();
      if (OUTLINED_FUNCTION_78_0(v181))
      {
        v182 = OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_32_2(v182);
        OUTLINED_FUNCTION_0_11();
        _os_log_impl(v183, v184, v185, v186, v187, 2u);
        OUTLINED_FUNCTION_40();
      }

      v174 = v497;
      goto LABEL_185;
    }

    v152 = v443;
  }

  OUTLINED_FUNCTION_109_0();
  v162 = swift_allocObject();
  *(v162 + 16) = v152;
  *(v162 + 24) = v147;

  v163 = Logger.logObject.getter();
  v164 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v165 = swift_allocObject();
  *(v165 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v166 = v152;
  v152 = swift_allocObject();
  *(v152 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v167 = swift_allocObject();
  *(v167 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v167 + 24) = v162;
  OUTLINED_FUNCTION_109_0();
  v168 = swift_allocObject();
  *(v168 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v168 + 24) = v167;
  v169 = OUTLINED_FUNCTION_36_1();
  *(v169 + 16) = xmmword_227FB1BA0;
  *(v169 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v169 + 40) = v165;
  *(v169 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v169 + 56) = v152;
  *(v169 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v169 + 72) = v168;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v163, v164))
  {
    v170 = OUTLINED_FUNCTION_76_0();
    v171 = OUTLINED_FUNCTION_84();
    *&v509 = v171;
    *v170 = 136315138;
    *(v170 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v166, v147, &v509);
    OUTLINED_FUNCTION_60_2(&dword_227F43000, v172, v173, "Field 'locale': %s is assigned");
    __swift_destroy_boxed_opaque_existential_0Tm(v171);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_11();
  }

  v174 = v497;
  v175 = v166 == 0x576F525F6E65 && v147 == 0xE600000000000000;
  v176 = 0x2785F0000uLL;
  if (v175 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    [v174 setLocale_];
  }

  else
  {
    v177 = MEMORY[0x22AAADFF0](v166, v147);

    v178 = v177;
    if ([v178 isEqualToString:@"LOCALE_UNKNOWN_LOCALE"])
    {
      v179 = 0;
    }

    else if ([v178 isEqualToString:@"LOCALE_AR_AE"])
    {
      v179 = 1;
    }

    else if ([v178 isEqualToString:@"LOCALE_AR_SA"])
    {
      v179 = 2;
    }

    else if ([v178 isEqualToString:@"LOCALE_CA_ES"])
    {
      v179 = 3;
    }

    else if ([v178 isEqualToString:@"LOCALE_CS_CZ"])
    {
      v179 = 4;
    }

    else if ([v178 isEqualToString:@"LOCALE_DA_DK"])
    {
      v179 = 5;
    }

    else if ([v178 isEqualToString:@"LOCALE_DE_AT"])
    {
      v179 = 6;
    }

    else if ([v178 isEqualToString:@"LOCALE_DE_CH"])
    {
      v179 = 7;
    }

    else
    {
      v188 = v178;
      if ([v178 isEqualToString:@"LOCALE_DE_DE"])
      {
        v179 = 8;
      }

      else if ([v178 isEqualToString:@"LOCALE_EL_GR"])
      {
        v179 = 9;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_AE"])
      {
        v179 = 10;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_AU"])
      {
        v179 = 11;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_CA"])
      {
        v179 = 12;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_GB"])
      {
        v179 = 13;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_ID"])
      {
        v179 = 14;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_IE"])
      {
        v179 = 15;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_IN"])
      {
        v179 = 16;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_MY"])
      {
        v179 = 17;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_NZ"])
      {
        v179 = 18;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_PH"])
      {
        v179 = 19;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_SG"])
      {
        v179 = 20;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_SA"])
      {
        v179 = 21;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_US"])
      {
        v179 = 22;
      }

      else if ([v178 isEqualToString:@"LOCALE_EN_ZA"])
      {
        v179 = 23;
      }

      else if ([v178 isEqualToString:@"LOCALE_ES_CL"])
      {
        v179 = 24;
      }

      else if ([v178 isEqualToString:@"LOCALE_ES_CO"])
      {
        v179 = 25;
      }

      else if ([v178 isEqualToString:@"LOCALE_ES_ES"])
      {
        v179 = 26;
      }

      else if ([v178 isEqualToString:@"LOCALE_ES_MX"])
      {
        v179 = 27;
      }

      else if ([v178 isEqualToString:@"LOCALE_ES_US"])
      {
        v179 = 28;
      }

      else if ([v178 isEqualToString:@"LOCALE_FI_FI"])
      {
        v179 = 29;
      }

      else if ([v178 isEqualToString:@"LOCALE_FR_BE"])
      {
        v179 = 30;
      }

      else if ([v178 isEqualToString:@"LOCALE_FR_CA"])
      {
        v179 = 31;
      }

      else if ([v178 isEqualToString:@"LOCALE_FR_CH"])
      {
        v179 = 32;
      }

      else if ([v178 isEqualToString:@"LOCALE_FR_FR"])
      {
        v179 = 33;
      }

      else if ([v178 isEqualToString:@"LOCALE_HE_IL"])
      {
        v179 = 34;
      }

      else if ([v178 isEqualToString:@"LOCALE_HI_IN"])
      {
        v179 = 35;
      }

      else if ([v178 isEqualToString:@"LOCALE_HR_HR"])
      {
        v179 = 36;
      }

      else if ([v178 isEqualToString:@"LOCALE_HU_HU"])
      {
        v179 = 37;
      }

      else if ([v178 isEqualToString:@"LOCALE_ID_ID"])
      {
        v179 = 38;
      }

      else if ([v178 isEqualToString:@"LOCALE_IT_CH"])
      {
        v179 = 39;
      }

      else if ([v178 isEqualToString:@"LOCALE_IT_IT"])
      {
        v179 = 40;
      }

      else if ([v178 isEqualToString:@"LOCALE_JA_JP"])
      {
        v179 = 41;
      }

      else if ([v178 isEqualToString:@"LOCALE_KO_KR"])
      {
        v179 = 42;
      }

      else if ([v178 isEqualToString:@"LOCALE_MS_MY"])
      {
        v179 = 43;
      }

      else if ([v178 isEqualToString:@"LOCALE_NB_NO"])
      {
        v179 = 44;
      }

      else if ([v178 isEqualToString:@"LOCALE_NL_BE"])
      {
        v179 = 45;
      }

      else if ([v178 isEqualToString:@"LOCALE_NL_NL"])
      {
        v179 = 46;
      }

      else if ([v178 isEqualToString:@"LOCALE_PL_PL"])
      {
        v179 = 47;
      }

      else if ([v178 isEqualToString:@"LOCALE_PT_BR"])
      {
        v179 = 48;
      }

      else if ([v178 isEqualToString:@"LOCALE_PT_PT"])
      {
        v179 = 49;
      }

      else if ([v178 isEqualToString:@"LOCALE_RO_RO"])
      {
        v179 = 50;
      }

      else if ([v178 isEqualToString:@"LOCALE_RU_RU"])
      {
        v179 = 51;
      }

      else if ([v178 isEqualToString:@"LOCALE_SK_SK"])
      {
        v179 = 52;
      }

      else if ([v178 isEqualToString:@"LOCALE_SV_SE"])
      {
        v179 = 53;
      }

      else if ([v178 isEqualToString:@"LOCALE_TH_TH"])
      {
        v179 = 54;
      }

      else if ([v178 isEqualToString:@"LOCALE_TR_TR"])
      {
        v179 = 55;
      }

      else if ([v178 isEqualToString:@"LOCALE_UK_UA"])
      {
        v179 = 56;
      }

      else if ([v178 isEqualToString:@"LOCALE_VI_VN"])
      {
        v179 = 57;
      }

      else if ([v178 isEqualToString:@"LOCALE_WUU_CN"])
      {
        v179 = 58;
      }

      else if ([v178 isEqualToString:@"LOCALE_YUE_CN"])
      {
        v179 = 59;
      }

      else if ([v178 isEqualToString:@"LOCALE_ZH_CN"])
      {
        v179 = 60;
      }

      else if ([v178 isEqualToString:@"LOCALE_ZH_HK"])
      {
        v179 = 61;
      }

      else
      {
LABEL_342:
        v178 = v188;
        if ([v188 isEqualToString:@"LOCALE_ZH_TW"])
        {
          v179 = 62;
        }

        else
        {
          v179 = 0;
        }
      }

      v174 = v497;
    }

    [v174 *(v176 + 3416)];
  }

LABEL_185:
  v189 = v489;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_227FB4240;
  OUTLINED_FUNCTION_3_11();
  v191 = swift_allocObject();
  v192 = v191;
  v193 = v492;
  v194 = v451;
  if (!v492)
  {
    v194 = 0;
  }

  *(v190 + 32) = v194;
  v503 = (v190 + 32);
  *(v191 + 16) = v174;
  v195 = MEMORY[0x277D837D0];
  *(v190 + 40) = v193;
  *(v190 + 48) = 0;
  OUTLINED_FUNCTION_13_2();
  *(v190 + 56) = v196;
  *(v190 + 64) = 0xD000000000000020;
  *(v190 + 72) = v197;
  *(v190 + 80) = 0x676E69727453;
  *(v190 + 88) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v198 = swift_allocObject();
  *(v198 + 16) = partial apply for closure #3 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v198 + 24) = v192;
  *(v190 + 96) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 104) = v198;
  OUTLINED_FUNCTION_47_3(&v513);
  if (v175)
  {
    v189 = 0;
    v199 = 0;
  }

  else
  {
    v199 = v195;
  }

  v200 = v174;
  OUTLINED_FUNCTION_3_11();
  v201 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v201);
  *(v190 + 112) = v189;
  *(v190 + 120) = v152;
  *(v190 + 128) = 0;
  *(v190 + 136) = v199;
  OUTLINED_FUNCTION_17_6();
  v505 = v202 - 5;
  *(v190 + 144) = v202 - 5;
  *(v190 + 152) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v190 + 160) = v203;
  *(v190 + 168) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v204 = swift_allocObject();
  *(v204 + 16) = partial apply for closure #4 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v204 + 24) = v192;
  *(v190 + 176) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 184) = v204;
  OUTLINED_FUNCTION_47_3(v516);
  if (v205)
  {
    v206 = 0;
  }

  else
  {
    v206 = v442;
  }

  if (v205)
  {
    v207 = 0;
  }

  else
  {
    v207 = v195;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v208 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v208);
  *(v190 + 192) = v206;
  *(v190 + 200) = v152;
  *(v190 + 208) = 0;
  *(v190 + 216) = v207;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 224) = v209 - 6;
  *(v190 + 232) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v190 + 240) = v210;
  *(v190 + 248) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v211 = swift_allocObject();
  *(v211 + 16) = partial apply for closure #5 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v211 + 24) = v192;
  *(v190 + 256) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 264) = v211;
  OUTLINED_FUNCTION_47_3(v515);
  if (v212)
  {
    v213 = 0;
  }

  else
  {
    v213 = v452;
  }

  if (v212)
  {
    v214 = 0;
  }

  else
  {
    v214 = v195;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v215 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v215);
  *(v190 + 272) = v213;
  *(v190 + 280) = v152;
  *(v190 + 288) = 0;
  *(v190 + 296) = v214;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 304) = v216 - 13;
  *(v190 + 312) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v190 + 320) = v217;
  *(v190 + 328) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v218 = swift_allocObject();
  *(v218 + 16) = partial apply for closure #6 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v218 + 24) = v192;
  *(v190 + 336) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 344) = v218;
  OUTLINED_FUNCTION_47_3(&v512);
  if (v219)
  {
    v220 = 0;
  }

  else
  {
    v220 = v453;
  }

  if (v219)
  {
    v221 = 0;
  }

  else
  {
    v221 = v195;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v222 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v222);
  *(v190 + 352) = v220;
  *(v190 + 360) = v152;
  *(v190 + 368) = 0;
  *(v190 + 376) = v221;
  OUTLINED_FUNCTION_17_6();
  v504 = v223 - 3;
  *(v190 + 384) = v223 - 3;
  *(v190 + 392) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v190 + 400) = v224;
  *(v190 + 408) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v225 = swift_allocObject();
  *(v225 + 16) = partial apply for closure #7 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v225 + 24) = v192;
  *(v190 + 416) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 424) = v225;
  OUTLINED_FUNCTION_47_3(&v511);
  if (v226)
  {
    v227 = 0;
  }

  else
  {
    v227 = v454;
  }

  if (v226)
  {
    v228 = 0;
  }

  else
  {
    v228 = v195;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v229 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v229);
  *(v190 + 432) = v227;
  *(v190 + 440) = v152;
  *(v190 + 448) = 0;
  *(v190 + 456) = v228;
  *(v190 + 464) = 0xD00000000000001FLL;
  *(v190 + 472) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_5_11();
  *(v190 + 480) = v230;
  *(v190 + 488) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v231 = swift_allocObject();
  *(v231 + 16) = partial apply for closure #8 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v231 + 24) = v192;
  *(v190 + 496) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 504) = v231;
  v232 = MEMORY[0x277D84CC0];
  OUTLINED_FUNCTION_7_8(&v488 + 4);
  if (v233)
  {
    v234 = v232;
  }

  else
  {
    v234 = 0;
  }

  if (v233)
  {
    v235 = v456;
  }

  else
  {
    v235 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v236 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v236);
  *(v190 + 512) = v235;
  OUTLINED_FUNCTION_10_7((v190 + 520));
  *(v190 + 536) = v234;
  *(v190 + 544) = 0xD000000000000010;
  *(v190 + 552) = 0x8000000227FB55B0;
  OUTLINED_FUNCTION_20_5();
  *(v190 + 560) = v237;
  *(v190 + 568) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v238 = swift_allocObject();
  *(v238 + 16) = partial apply for closure #9 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v238 + 24) = v192;
  *(v190 + 576) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 584) = v238;
  OUTLINED_FUNCTION_7_8(v490 + 4);
  if (v239)
  {
    v240 = v232;
  }

  else
  {
    v240 = 0;
  }

  if (v239)
  {
    v241 = v458;
  }

  else
  {
    v241 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v242 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v242);
  *(v190 + 592) = v241;
  OUTLINED_FUNCTION_10_7((v190 + 600));
  *(v190 + 616) = v240;
  *(v190 + 624) = 0xD000000000000010;
  *(v190 + 632) = 0x8000000227FB5630;
  *(v190 + 640) = 0x3233746E4955;
  *(v190 + 648) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v243 = swift_allocObject();
  *(v243 + 16) = partial apply for closure #10 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v243 + 24) = v192;
  *(v190 + 656) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 664) = v243;
  OUTLINED_FUNCTION_7_8(&v491 + 4);
  if (v244)
  {
    v245 = v232;
  }

  else
  {
    v245 = 0;
  }

  if (v244)
  {
    v246 = v460;
  }

  else
  {
    v246 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v247 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v247);
  *(v190 + 672) = v246;
  OUTLINED_FUNCTION_10_7((v190 + 680));
  *(v190 + 696) = v245;
  *(v190 + 704) = v505;
  *(v190 + 712) = v241;
  *(v190 + 720) = 0x3233746E4955;
  *(v190 + 728) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v248 = swift_allocObject();
  *(v248 + 16) = partial apply for closure #11 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v248 + 24) = v192;
  *(v190 + 736) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 744) = v248;
  OUTLINED_FUNCTION_7_8(v493 + 4);
  if (v249)
  {
    v250 = v232;
  }

  else
  {
    v250 = 0;
  }

  if (v249)
  {
    v251 = v462;
  }

  else
  {
    v251 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v252 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v252);
  *(v190 + 752) = v251;
  OUTLINED_FUNCTION_10_7((v190 + 760));
  *(v190 + 776) = v250;
  *(v190 + 784) = 0xD000000000000013;
  *(v190 + 792) = v241;
  *(v190 + 800) = 0x3233746E4955;
  *(v190 + 808) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v253 = swift_allocObject();
  *(v253 + 16) = partial apply for closure #12 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v253 + 24) = v192;
  *(v190 + 816) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 824) = v253;
  OUTLINED_FUNCTION_7_8(&v494 + 4);
  if (v254)
  {
    v255 = MEMORY[0x277D84CC0];
  }

  else
  {
    v255 = 0;
  }

  if (v254)
  {
    v256 = v464;
  }

  else
  {
    v256 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v257 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v257);
  *(v190 + 832) = v256;
  OUTLINED_FUNCTION_10_7((v190 + 840));
  *(v190 + 856) = v255;
  v501 = 0xD00000000000001ELL;
  *(v190 + 864) = 0xD00000000000001ELL;
  *(v190 + 872) = v241;
  *(v190 + 880) = 0x3233746E4955;
  *(v190 + 888) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v258 = swift_allocObject();
  *(v258 + 16) = partial apply for closure #13 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v258 + 24) = v192;
  *(v190 + 896) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 904) = v258;
  v259 = v200;
  if (v465)
  {
    v507 = 0u;
    v508 = 0u;
    if (v446)
    {
      v260 = 0;
      v509 = 0uLL;
      *&v510 = 0;
    }

    else
    {
      LODWORD(v509) = v444;
      v260 = MEMORY[0x277D84CC0];
    }

    *(&v510 + 1) = v260;
    v261 = MEMORY[0x277D84CC0];
  }

  else
  {
    v261 = MEMORY[0x277D84CC0];
    *(&v508 + 1) = MEMORY[0x277D84CC0];
    v507.n128_u32[0] = v445;
    outlined init with take of Any(&v507, &v509);
  }

  v262 = v259;

  OUTLINED_FUNCTION_3_11();
  v263 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v263);
  v264 = v510;
  *(v190 + 912) = v509;
  *(v190 + 928) = v264;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 944) = v265 - 8;
  *(v190 + 952) = 0x8000000227FB54C0;
  *(v190 + 960) = 0x3233746E4955;
  *(v190 + 968) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v266 = swift_allocObject();
  *(v266 + 16) = partial apply for closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v266 + 24) = v200;
  *(v190 + 976) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 984) = v266;
  OUTLINED_FUNCTION_7_8(&v496 + 4);
  if (v267)
  {
    v268 = v261;
  }

  else
  {
    v268 = 0;
  }

  if (v267)
  {
    v269 = v467;
  }

  else
  {
    v269 = 0;
  }

  OUTLINED_FUNCTION_3_11();
  v270 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v270);
  *(v190 + 992) = v269;
  OUTLINED_FUNCTION_10_7((v190 + 1000));
  *(v190 + 1016) = v268;
  *(v190 + 1024) = 0x756F43726F727265;
  *(v190 + 1032) = 0xEA0000000000746ELL;
  *(v190 + 1040) = 0x3233746E4955;
  *(v190 + 1048) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v271 = swift_allocObject();
  *(v271 + 16) = partial apply for closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v271 + 24) = v200;
  *(v190 + 1056) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1064) = v271;
  OUTLINED_FUNCTION_7_8(&v497 + 12);
  if (v272)
  {
    v273 = v469;
  }

  else
  {
    v273 = 0;
  }

  if (v272)
  {
    v274 = MEMORY[0x277D839F8];
  }

  else
  {
    v274 = 0;
  }

  v275 = MEMORY[0x277D839F8];
  OUTLINED_FUNCTION_3_11();
  v276 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v276);
  *(v190 + 1072) = v273;
  OUTLINED_FUNCTION_10_7((v190 + 1080));
  *(v190 + 1096) = v274;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 1104) = v277 - 14;
  *(v190 + 1112) = 0x8000000227FB5000;
  *(v190 + 1120) = 0x656C62756F44;
  *(v190 + 1128) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v278 = swift_allocObject();
  *(v278 + 16) = partial apply for closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v278 + 24) = v200;
  *(v190 + 1136) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1144) = v278;
  OUTLINED_FUNCTION_7_8(&v498 + 4);
  if (v279)
  {
    v280 = v471;
  }

  else
  {
    v280 = 0;
  }

  if (v279)
  {
    v281 = v275;
  }

  else
  {
    v281 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v282 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v282);
  *(v190 + 1152) = v280;
  OUTLINED_FUNCTION_10_7((v190 + 1160));
  *(v190 + 1176) = v281;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 1184) = v283 - 10;
  *(v190 + 1192) = v275;
  *(v190 + 1200) = 0x656C62756F44;
  *(v190 + 1208) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v284 = swift_allocObject();
  *(v284 + 16) = partial apply for closure #17 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v284 + 24) = v200;
  *(v190 + 1216) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1224) = v284;
  OUTLINED_FUNCTION_7_8(&v499 + 12);
  if (v285)
  {
    v286 = v473;
  }

  else
  {
    v286 = 0;
  }

  if (v285)
  {
    v287 = v275;
  }

  else
  {
    v287 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v288 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v288);
  *(v190 + 1232) = v286;
  OUTLINED_FUNCTION_10_7((v190 + 1240));
  *(v190 + 1256) = v287;
  *(v190 + 1264) = v501;
  *(v190 + 1272) = v275;
  *(v190 + 1280) = 0x656C62756F44;
  *(v190 + 1288) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v289 = swift_allocObject();
  *(v289 + 16) = partial apply for closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v289 + 24) = v200;
  *(v190 + 1296) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1304) = v289;
  OUTLINED_FUNCTION_7_8(&v500 + 4);
  if (v290)
  {
    v291 = v475;
  }

  else
  {
    v291 = 0;
  }

  v292 = MEMORY[0x277D839F8];
  if (v290)
  {
    v293 = MEMORY[0x277D839F8];
  }

  else
  {
    v293 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v294 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v294);
  *(v190 + 1312) = v291;
  OUTLINED_FUNCTION_10_7((v190 + 1320));
  *(v190 + 1336) = v293;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 1344) = v295;
  *(v190 + 1352) = v275;
  *(v190 + 1360) = 0x656C62756F44;
  *(v190 + 1368) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v296 = swift_allocObject();
  *(v296 + 16) = partial apply for closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v296 + 24) = v200;
  *(v190 + 1376) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1384) = v296;
  OUTLINED_FUNCTION_7_8(&v502 + 4);
  if (v297)
  {
    v298 = v477;
  }

  else
  {
    v298 = 0;
  }

  if (v297)
  {
    v299 = v292;
  }

  else
  {
    v299 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v300 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v300);
  *(v190 + 1392) = v298;
  OUTLINED_FUNCTION_10_7((v190 + 1400));
  *(v190 + 1416) = v299;
  *(v190 + 1424) = v504;
  *(v190 + 1432) = v275;
  *(v190 + 1440) = 0x656C62756F44;
  *(v190 + 1448) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v301 = swift_allocObject();
  *(v301 + 16) = partial apply for closure #20 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v301 + 24) = v200;
  *(v190 + 1456) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1464) = v301;
  OUTLINED_FUNCTION_7_8(&v504 + 4);
  v303 = MEMORY[0x277D84CC0];
  if (v302)
  {
    v304 = MEMORY[0x277D84CC0];
  }

  else
  {
    v304 = 0;
  }

  v498 = v304;
  if (v302)
  {
    v305 = v479;
  }

  else
  {
    v305 = 0;
  }

  v306 = v262;
  v307 = v482;
  outlined init with copy of SELFEventProcessor(v502, v482);
  v501 = *(v483 + 80);
  v308 = (v501 + 24) & ~v501;
  v500 = v308;
  v309 = swift_allocObject();
  v310 = OUTLINED_FUNCTION_15_4(v309);
  outlined init with take of SELFEventProcessor(v307, v310 + v308);
  *(v190 + 1472) = v305;
  OUTLINED_FUNCTION_10_7((v190 + 1480));
  *(v190 + 1496) = v498;
  *(v190 + 1504) = 1701080941;
  *(v190 + 1512) = 0xE400000000000000;
  *(v190 + 1520) = 0x3233746E4955;
  *(v190 + 1528) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v311 = swift_allocObject();
  *(v311 + 16) = partial apply for closure #21 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v311 + 24) = v200;
  *(v190 + 1536) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1544) = v311;
  OUTLINED_FUNCTION_7_8(&v506 + 4);
  if (v312)
  {
    v313 = v481;
  }

  else
  {
    v313 = 0;
  }

  if (v312)
  {
    v24 = v303;
  }

  else
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_64_0();
  OUTLINED_FUNCTION_3_11();
  v314 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v314);
  *(v190 + 1552) = v313;
  OUTLINED_FUNCTION_10_7((v190 + 1560));
  *(v190 + 1576) = v24;
  *(v190 + 1584) = v504;
  *(v190 + 1592) = v303;
  *(v190 + 1600) = 0x3233746E4955;
  *(v190 + 1608) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v315 = swift_allocObject();
  *(v315 + 16) = partial apply for closure #22 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v315 + 24) = v200;
  *(v190 + 1616) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1624) = v315;
  OUTLINED_FUNCTION_7_8(&v508 + 12);
  if (v316)
  {
    v317 = MEMORY[0x277D839F8];
  }

  else
  {
    v317 = 0;
  }

  if (v316)
  {
    v318 = v485;
  }

  else
  {
    v318 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_3_11();
  v319 = swift_allocObject();
  OUTLINED_FUNCTION_15_4(v319);
  *(v190 + 1632) = v318;
  OUTLINED_FUNCTION_10_7((v190 + 1640));
  *(v190 + 1656) = v317;
  OUTLINED_FUNCTION_17_6();
  *(v190 + 1664) = v320 + 12;
  *(v190 + 1672) = v24;
  *(v190 + 1680) = 0x656C62756F44;
  *(v190 + 1688) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v321 = swift_allocObject();
  *(v321 + 16) = partial apply for closure #23 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v321 + 24) = v200;
  *(v190 + 1696) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1704) = v321;
  OUTLINED_FUNCTION_7_8(&v509 + 4);
  if (v322)
  {
    v323 = v487;
  }

  else
  {
    v323 = 0;
  }

  if (v322)
  {
    v324 = MEMORY[0x277D84CC0];
  }

  else
  {
    v324 = 0;
  }

  OUTLINED_FUNCTION_31_4();
  v188 = v306;
  v176 = v488;
  outlined init with copy of SELFEventProcessor(v502, v488);
  v325 = v500;
  v326 = swift_allocObject();
  v327 = OUTLINED_FUNCTION_15_4(v326);
  outlined init with take of SELFEventProcessor(v176, v327 + v325);
  *(v190 + 1712) = v323;
  OUTLINED_FUNCTION_10_7((v190 + 1720));
  *(v190 + 1736) = v324;
  *(v190 + 1744) = v505;
  *(v190 + 1752) = v24;
  OUTLINED_FUNCTION_20_5();
  *(v190 + 1760) = v328;
  *(v190 + 1768) = 0xE600000000000000;
  OUTLINED_FUNCTION_109_0();
  v329 = swift_allocObject();
  *(v329 + 16) = partial apply for closure #24 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v329 + 24) = v200;
  *(v190 + 1776) = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@error @owned Error)partial apply;
  *(v190 + 1784) = v329;
  v495 = v188;
  v330 = 0;
  *&v331 = i[324];
  v497 = v331;
  v152 = v506;
  for (i = v503; v330 != 22; i += 10)
  {
    if (v330 > 0x15)
    {
      __break(1u);
      goto LABEL_342;
    }

    _sypSg5value_SS9fieldNameSS12expectedTypexq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyypytIsegnrzo_6settertWOc(i, &v509);
    v188 = v512;
    if (!v512)
    {
      break;
    }

    v24 = v511;
    v332 = v513;
    v176 = v514;
    OUTLINED_FUNCTION_109_0();
    v333 = swift_allocObject();
    v507 = OUTLINED_FUNCTION_8_12(v333);
    v508 = v334;
    if (*(&v334 + 1))
    {
      v505 = v330;
      v498 = v332;
      v335 = OUTLINED_FUNCTION_64_3(&v507);
      outlined init with copy of Any(v335, &v507);

      v336 = Logger.logObject.getter();
      v337 = static os_log_type_t.debug.getter();

      v338 = os_log_type_enabled(v336, v337);
      v500 = v24;
      if (v338)
      {
        OUTLINED_FUNCTION_80();
        v501 = v176;
        v339 = OUTLINED_FUNCTION_21_6();
        v506 = v152;
        v517 = v339;
        OUTLINED_FUNCTION_27_4(&v519);
        v341 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v188, v340);
        OUTLINED_FUNCTION_26_3(v341);
        __swift_project_boxed_opaque_existential_1(&v507, *(&v508 + 1));
        v504 = v333;
        OUTLINED_FUNCTION_22_7();
        v343 = *(v342 + 64);
        MEMORY[0x28223BE20](v344);
        OUTLINED_FUNCTION_1_0();
        v503 = i;
        (*(v347 + 16))(v346 - v345);
        v348 = String.init<A>(describing:)();
        v24 = v349;
        v333 = v504;
        __swift_destroy_boxed_opaque_existential_0Tm(&v507);
        v350 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v348, v24, &v517);

        *(v176 + 14) = v350;
        i = v503;
        OUTLINED_FUNCTION_53_2(&dword_227F43000, v336, v337, "Field '%s': %s is assigned");
        swift_arrayDestroy();
        v152 = v506;
        OUTLINED_FUNCTION_11();
        v176 = v501;
        OUTLINED_FUNCTION_11();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v507);
      }

      v360 = v152;
      thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out (), @error @owned Error)partial apply();
      v330 = v505;
      if (v152)
      {
        v504 = v333;

        OUTLINED_FUNCTION_109_0();
        v412 = v176;
        v413 = swift_allocObject();
        *(v413 + 16) = v500;
        *(v413 + 24) = v188;
        OUTLINED_FUNCTION_109_0();
        v414 = swift_allocObject();
        *(v414 + 16) = v498;
        *(v414 + 24) = v412;
        OUTLINED_FUNCTION_3_11();
        v415 = swift_allocObject();
        *(v415 + 16) = v360;

        v501 = v412;

        v506 = v360;
        v416 = v360;
        v505 = Logger.logObject.getter();
        LODWORD(v502) = static os_log_type_t.fault.getter();
        OUTLINED_FUNCTION_13_7();
        v503 = swift_allocObject();
        LOBYTE(v503[2].isa) = 32;
        OUTLINED_FUNCTION_13_7();
        *&v499 = swift_allocObject();
        *(v499 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v417 = swift_allocObject();
        *(v417 + 16) = partial apply for implicit closure #14 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v417 + 24) = v413;
        OUTLINED_FUNCTION_109_0();
        v418 = swift_allocObject();
        *(v418 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v418 + 24) = v417;
        OUTLINED_FUNCTION_13_7();
        *&v497 = swift_allocObject();
        *(v497 + 16) = 32;
        OUTLINED_FUNCTION_13_7();
        v494 = swift_allocObject();
        *(v494 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v419 = swift_allocObject();
        *(v419 + 16) = partial apply for implicit closure #15 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v419 + 24) = v414;
        OUTLINED_FUNCTION_109_0();
        v420 = swift_allocObject();
        *(v420 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v420 + 24) = v419;
        OUTLINED_FUNCTION_13_7();
        v421 = swift_allocObject();
        *(v421 + 16) = 64;
        OUTLINED_FUNCTION_13_7();
        v422 = swift_allocObject();
        *(v422 + 16) = 8;
        OUTLINED_FUNCTION_109_0();
        v423 = swift_allocObject();
        *(v423 + 16) = partial apply for implicit closure #16 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
        *(v423 + 24) = v415;
        OUTLINED_FUNCTION_109_0();
        v424 = swift_allocObject();
        *(v424 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
        *(v424 + 24) = v423;
        OUTLINED_FUNCTION_109_0();
        v425 = swift_allocObject();
        *(v425 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
        *(v425 + 24) = v424;
        v24 = v502;
        v426 = swift_allocObject();
        *(v426 + 16) = xmmword_227FB4220;
        v427 = v503;
        *(v426 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 40) = v427;
        v428 = v499;
        *(v426 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 56) = v428;
        *(v426 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 72) = v418;
        v429 = v497;
        *(v426 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 88) = v429;
        v430 = v494;
        *(v426 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 104) = v430;
        *(v426 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 120) = v420;
        *(v426 + 128) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 136) = v421;
        v431 = v505;
        *(v426 + 144) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v426 + 152) = v422;
        *(v426 + 160) = partial apply for closure #1 in OSLogArguments.append(_:);
        *(v426 + 168) = v425;
        swift_setDeallocating();
        specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
        if (os_log_type_enabled(v431, v24))
        {
          v432 = OUTLINED_FUNCTION_84();
          v433 = OUTLINED_FUNCTION_83();
          v507.n128_u64[0] = swift_slowAlloc();
          *v432 = 136315650;
          v434 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v500, v188, &v507);

          *(v432 + 4) = v434;
          *(v432 + 12) = 2080;
          v435 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v498, v501, &v507);

          *(v432 + 14) = v435;
          *(v432 + 22) = 2112;
          v436 = v506;
          v437 = _swift_stdlib_bridgeErrorToNSError();
          *(v432 + 24) = v437;
          *v433 = v437;
          _os_log_impl(&dword_227F43000, v431, v24, "Type conversion failed for field '%s' to %s: %@", v432, 0x20u);
          outlined destroy of NSObject?(v433, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_11();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_11();
        }

        else
        {
        }

        OUTLINED_FUNCTION_48_1();
        v438 = v495;
        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_0Tm(&v509);
        return v24;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v509);
    }

    else
    {

      outlined destroy of NSObject?(&v507, &_sypSgMd, &_sypSgMR);

      v351 = Logger.logObject.getter();
      v176 = static os_log_type_t.debug.getter();

      if (OUTLINED_FUNCTION_62_2())
      {
        v352 = OUTLINED_FUNCTION_76_0();
        v505 = v330;
        v353 = v352;
        v354 = OUTLINED_FUNCTION_84();
        v355 = v24;
        v24 = i;
        v356 = v354;
        *&v509 = v354;
        *v353 = v497;
        v357 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v188, &v509);
        v504 = v333;
        v358 = v152;
        v359 = v357;

        *(v353 + 4) = v359;
        v152 = v358;
        _os_log_impl(&dword_227F43000, v351, v176, "Field '%s': nil (optional)", v353, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v356);
        i = v24;
        OUTLINED_FUNCTION_11();
        v330 = v505;
        OUTLINED_FUNCTION_11();
      }

      else
      {
      }
    }

    ++v330;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMd, &_sypSg5value_SS9fieldNameSS12expectedTypeyyc6settertMR);
  if (v447)
  {
    v361 = Logger.logObject.getter();
    v362 = static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_78_0(v362);
    OUTLINED_FUNCTION_48_1();
    if (v363)
    {
      v364 = OUTLINED_FUNCTION_150();
      OUTLINED_FUNCTION_32_2(v364);
      OUTLINED_FUNCTION_0_11();
      _os_log_impl(v365, v366, v367, v368, v369, 2u);
      OUTLINED_FUNCTION_40();
    }

    v370 = v495;
  }

  else
  {
    v371 = swift_allocObject();
    v372 = v440;
    *(v371 + 16) = v440;
    v373 = Logger.logObject.getter();
    v374 = static os_log_type_t.debug.getter();
    OUTLINED_FUNCTION_13_7();
    v375 = swift_allocObject();
    *(v375 + 16) = 32;
    OUTLINED_FUNCTION_13_7();
    v376 = swift_allocObject();
    *(v376 + 16) = 8;
    OUTLINED_FUNCTION_109_0();
    v377 = swift_allocObject();
    *(v377 + 16) = partial apply for implicit closure #18 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
    *(v377 + 24) = v371;
    OUTLINED_FUNCTION_109_0();
    v378 = swift_allocObject();
    *(v378 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
    *(v378 + 24) = v377;
    v379 = OUTLINED_FUNCTION_36_1();
    *(v379 + 16) = xmmword_227FB1BA0;
    *(v379 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v379 + 40) = v375;
    *(v379 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v379 + 56) = v376;
    *(v379 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
    *(v379 + 72) = v378;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
    os_log_type_enabled(v373, v374);
    OUTLINED_FUNCTION_48_1();
    if (v380)
    {
      v381 = OUTLINED_FUNCTION_76_0();
      v382 = OUTLINED_FUNCTION_84();
      *&v509 = v382;
      OUTLINED_FUNCTION_33_3(&v518);
      v507.n128_u32[0] = v372;
      v383 = dispatch thunk of CustomStringConvertible.description.getter();
      v385 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v383, v384, &v509);

      *(v381 + 4) = v385;
      _os_log_impl(&dword_227F43000, v373, v374, "Field 'countPSUSAssets': %s is assigned", v381, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v382);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_40();
    }

    v370 = v495;
    [v495 setCountPSUSAssets_];
  }

  v386 = Logger.logObject.getter();
  v387 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_78_0(v387))
  {
    v388 = OUTLINED_FUNCTION_150();
    OUTLINED_FUNCTION_32_2(v388);
    OUTLINED_FUNCTION_0_11();
    _os_log_impl(v389, v390, v391, v392, v393, 2u);
    OUTLINED_FUNCTION_40();
  }

  OUTLINED_FUNCTION_3_11();
  v394 = swift_allocObject();
  *(v394 + 16) = v370;
  v395 = v370;
  v396 = Logger.logObject.getter();
  v397 = static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_13_7();
  v398 = swift_allocObject();
  *(v398 + 16) = 32;
  OUTLINED_FUNCTION_13_7();
  v399 = swift_allocObject();
  *(v399 + 16) = 8;
  OUTLINED_FUNCTION_109_0();
  v400 = swift_allocObject();
  *(v400 + 16) = partial apply for implicit closure #19 in SELFEventProcessor.processAvailabilityDetailedStatusEvent(_:);
  *(v400 + 24) = v394;
  OUTLINED_FUNCTION_109_0();
  v401 = swift_allocObject();
  *(v401 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
  *(v401 + 24) = v400;
  v402 = OUTLINED_FUNCTION_36_1();
  *(v402 + 16) = xmmword_227FB1BA0;
  *(v402 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v402 + 40) = v398;
  *(v402 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v402 + 56) = v399;
  *(v402 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
  *(v402 + 72) = v401;
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit(&_syycMd, &_syycMR);
  if (os_log_type_enabled(v396, v397))
  {
    v403 = OUTLINED_FUNCTION_76_0();
    v404 = OUTLINED_FUNCTION_84();
    v507.n128_u64[0] = v404;
    *v403 = v497;
    *(&v510 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for SADSchemaSADIntelligenceFeatureAvailabilityDetailedStatus, 0x277D5A5F8);
    *&v509 = v395;
    v405 = v395;
    v406 = printDebugDescription(_:)(&v509);
    v408 = v407;
    __swift_destroy_boxed_opaque_existential_0Tm(&v509);
    v409 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v406, v408, &v507);

    *(v403 + 4) = v409;
    OUTLINED_FUNCTION_60_2(&dword_227F43000, v410, v411, "Final container state for AvailabilityDetailedStatusEvent:\n%s");
    __swift_destroy_boxed_opaque_existential_0Tm(v404);
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_11();
  }

  return v24;
}