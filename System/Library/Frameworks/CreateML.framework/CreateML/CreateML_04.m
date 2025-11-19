uint64_t sub_237A28D88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_237C05DBC();
  v9 = OUTLINED_FUNCTION_135(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
    result = OUTLINED_FUNCTION_135(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t _s20PersistentParametersVMa_1()
{
  result = qword_27DE9B4B8;
  if (!qword_27DE9B4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A28ECC()
{
  sub_237C05DBC();
  if (v0 <= 0x3F)
  {
    sub_2379FD4E8();
    if (v1 <= 0x3F)
    {
      sub_2379FC328();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A28F78@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a1;
  v180[4] = *MEMORY[0x277D85DE8];
  v158 = sub_237C05FAC();
  v3 = OUTLINED_FUNCTION_0(v158);
  v166 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21_3(&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_237C05E5C();
  v9 = OUTLINED_FUNCTION_20(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v153 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4C8, &qword_237C0CFF8);
  v15 = OUTLINED_FUNCTION_20(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v168 = (&v139 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v20 = OUTLINED_FUNCTION_20(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v25);
  v26 = sub_237C05DBC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v161 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v33);
  v170 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v34 = OUTLINED_FUNCTION_4(v170);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v39);
  v40 = sub_237C05ADC();
  v41 = OUTLINED_FUNCTION_0(v40);
  v173 = v42;
  v174 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v139 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = (&v139 - v51);
  v53 = MEMORY[0x28223BE20](v50);
  v55 = &v139 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v139 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = &v139 - v59;
  v61 = _s20PersistentParametersVMa_1();
  v62 = *(v61 + 20);
  v172 = a2;
  v169 = v26;
  __swift_storeEnumTagSinglePayload(a2 + v62, 1, 1, v26);
  v63 = v175;
  sub_237C05A2C();
  v64 = v171;
  v65 = sub_237C05B1C();
  v171 = v64;
  if (v64)
  {
    v67 = v174;
    v68 = *(v173 + 8);
    v68(v63, v174);
    v68(v60, v67);
    v69 = v172;
LABEL_34:
    result = sub_2379D9054(v69 + v62, &qword_27DE9A9A0, &qword_237C0BF60);
    goto LABEL_35;
  }

  v144 = v52;
  v143 = v49;
  v145 = v55;
  v146 = v58;
  v151 = v61;
  v150 = v62;
  v70 = v173;
  v71 = v174;
  v72 = *(v173 + 8);
  v73 = v65;
  v74 = v66;
  v72(v60, v174);
  v75 = objc_opt_self();
  v76 = sub_237C05B6C();
  *&v178 = 0;
  v77 = [v75 propertyListWithData:v76 options:0 format:0 error:&v178];

  v78 = v178;
  if (!v77)
  {
    v109 = v78;
    sub_237C0593C();

    swift_willThrow();
    sub_2379E86D4(v73, v74);
    v72(v175, v71);
LABEL_25:
    v69 = v172;
    v62 = v150;
    goto LABEL_34;
  }

  v147 = v73;
  v148 = v74;
  v149 = v72;
  sub_237C08DFC();
  swift_unknownObjectRelease();
  sub_2379FED88(v180, &v178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v110, 0xD000000000000037);
    OUTLINED_FUNCTION_5_10();
    v111 = OUTLINED_FUNCTION_19_7();
    v112(v111);
    __swift_destroy_boxed_opaque_existential_1(v180);
    goto LABEL_25;
  }

  v79 = v176;
  sub_237AC9A74(0x746567726174, 0xE600000000000000, v176, &v178);
  if (!v179)
  {

    sub_2379D9054(&v178, &qword_27DE9A998, &unk_237C0C100);
    v69 = v172;
LABEL_33:
    sub_2379E8AF0();
    swift_allocError();
    OUTLINED_FUNCTION_18_4(v113, 0xD000000000000034);
    OUTLINED_FUNCTION_5_10();
    v114 = OUTLINED_FUNCTION_19_7();
    v115(v114);
    __swift_destroy_boxed_opaque_existential_1(v180);
    v62 = v150;
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {

LABEL_32:
    v69 = v172;
    goto LABEL_33;
  }

  v81 = v176;
  v80 = v177;
  v82 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v82, v83, v79, v84);
  if (!v179)
  {
LABEL_29:

    sub_2379D9054(&v178, &qword_27DE9A998, &unk_237C0C100);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
LABEL_31:

    goto LABEL_32;
  }

  v141 = v81;
  v85 = v176;
  sub_237AC9A74(0x617265744978616DLL, 0xED0000736E6F6974, v79, &v178);
  if (!v179)
  {
LABEL_28:

    goto LABEL_29;
  }

  v142 = v85;
  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    goto LABEL_30;
  }

  v140 = v80;
  v139 = v176;
  sub_237AC9A74(0x746C616E6550316CLL, 0xE900000000000079, v79, &v178);
  if (!v179)
  {
    goto LABEL_36;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_31;
  }

  v86 = v176;
  sub_237AC9A74(0x746C616E6550326CLL, 0xE900000000000079, v79, &v178);
  if (!v179)
  {
LABEL_36:
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_29;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
LABEL_30:
    OUTLINED_FUNCTION_9_7();

    goto LABEL_31;
  }

  v87 = v176;
  sub_237AC9A74(0x657A695370657473, 0xE800000000000000, v79, &v178);
  if (!v179)
  {
    OUTLINED_FUNCTION_9_7();
    goto LABEL_28;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    goto LABEL_30;
  }

  v88 = v70;
  v89 = v176;
  sub_237AC9A74(0xD000000000000014, 0x8000000237C18450, v79, &v178);
  if (!v179)
  {
    OUTLINED_FUNCTION_9_7();

    sub_2379D9054(&v178, &qword_27DE9A998, &unk_237C0C100);
    v69 = v172;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

LABEL_43:

    goto LABEL_44;
  }

  v90 = v176;
  v91 = OUTLINED_FUNCTION_12_8();
  sub_237AC9A74(v91, v92, v79, v93);

  if (!v179)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();

    sub_2379D9054(&v178, &qword_27DE9A998, &unk_237C0C100);
LABEL_44:
    v69 = v172;
    goto LABEL_33;
  }

  if ((OUTLINED_FUNCTION_3_13() & 1) == 0)
  {
    OUTLINED_FUNCTION_9_7();

    OUTLINED_FUNCTION_15_6();
    goto LABEL_43;
  }

  v94 = v176;
  v95 = v151;
  v96 = v172;
  v97 = (v172 + *(v151 + 24));
  v98 = v140;
  *v97 = v141;
  v97[1] = v98;
  *(v96 + *(v95 + 28)) = v142;
  v99 = v162;
  *v162 = 0;
  *(v99 + 8) = 0;
  *(v99 + 16) = 256;
  v100 = v170;
  swift_storeEnumTagMultiPayload();
  v101 = v96 + *(v95 + 32);
  *(v101 + 8) = 0u;
  *(v101 + 24) = 0u;
  *v101 = 10;
  *(v101 + 40) = xmmword_237C0CFC0;
  *(v101 + 56) = xmmword_237C0CFD0;
  *(v101 + 72) = 1;
  v102 = v163;
  sub_237A2A8D8(v99, v163);
  v179 = v100;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v178);
  sub_237A2A93C(v102, boxed_opaque_existential_0);
  sub_237A2A9A0(v99);
  v163 = v101 + 8;
  sub_237A2A9FC(&v178, v101 + 8, &qword_27DE9A998, &unk_237C0C100);
  *v101 = v139;
  *(v101 + 40) = v86;
  *(v101 + 48) = v87;
  *(v101 + 56) = v89;
  *(v101 + 64) = v90;
  *(v101 + 72) = v94;
  v104 = v146;
  sub_237C05A2C();
  OUTLINED_FUNCTION_9_3();
  sub_237C05A2C();
  v105 = *(v88 + 16);
  v106 = v144;
  v173 = v88 + 16;
  v105(v144, v104, v174);
  OUTLINED_FUNCTION_4_6();
  v107 = v171;
  sub_237C05CDC();
  v171 = v107;
  if (v107)
  {
    v105(v156, v146, v174);
    sub_2379FEDE4(MEMORY[0x277D84F90]);
    v106 = sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v108 = *(v166 + 104);
    LODWORD(v167) = *MEMORY[0x277CE1918];
    v166 += 104;
    v165 = v108;
    v108(v159);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();
    v121 = OUTLINED_FUNCTION_21_7();
    v106(v121, v157, v169);
    v105(v152, v145, v174);
    v173 = sub_2379FEDE4(MEMORY[0x277D84F90]);
    sub_237B9068C(&unk_284ABFD58);
    sub_237B9068C(&unk_284ABFE18);
    sub_237B9068C(&unk_284ABFE78);
    v165(v159, v167, v158);
    sub_237C05E4C();
    OUTLINED_FUNCTION_4_6();
    sub_237C05CAC();

    v122 = v155;
    __swift_storeEnumTagSinglePayload(v155, 0, 1, v169);
    v167 = v122;
  }

  else
  {
    v118 = OUTLINED_FUNCTION_21_7();
    v106(v118, v165, v169);
    v105(v143, v145, v174);
    OUTLINED_FUNCTION_4_6();
    v119 = v171;
    sub_237C05CDC();
    if (v119)
    {

      v120 = 1;
    }

    else
    {
      v120 = 0;
    }

    __swift_storeEnumTagSinglePayload(v167, v120, 1, v169);
  }

  v123 = v172;
  v124 = v150;
  sub_237A2A9FC(v167, v172 + v150, &qword_27DE9A9A0, &qword_237C0BF60);
  v125 = v123 + v124;
  v126 = v160;
  sub_237A2AA5C(v125, v160);
  v127 = 1;
  if (__swift_getEnumTagSinglePayload(v126, 1, v169) != 1)
  {
    v128 = v161;
    v129 = v154;
    v130 = v169;
    v106(v154, v160, v169);
    (*(v128 + 16))(v168, v129, v130);
    swift_storeEnumTagMultiPayload();
    (*(v128 + 8))(v129, v130);
    v127 = 0;
  }

  v131 = v168;
  v132 = v127;
  v133 = v170;
  __swift_storeEnumTagSinglePayload(v168, v132, 1, v170);
  if (__swift_getEnumTagSinglePayload(v131, 1, v133) == 1)
  {
    v134 = v170;
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v168, 1, v134) != 1)
    {
      sub_2379D9054(v168, &qword_27DE9B4C8, &qword_237C0CFF8);
    }
  }

  else
  {
    sub_237A2A93C(v168, v164);
  }

  v179 = v170;
  v135 = __swift_allocate_boxed_opaque_existential_0(&v178);
  sub_237A2A93C(v164, v135);
  OUTLINED_FUNCTION_5_10();
  v136 = OUTLINED_FUNCTION_17_7();
  v131(v136);
  v137 = OUTLINED_FUNCTION_18_7(&v176);
  v131(v137);
  v138 = OUTLINED_FUNCTION_18_7(&v177);
  v131(v138);
  __swift_destroy_boxed_opaque_existential_1(v180);
  result = sub_237A2A9FC(&v178, v163, &qword_27DE9A998, &unk_237C0C100);
LABEL_35:
  v117 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237A2A204(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  v68[53] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v4 = OUTLINED_FUNCTION_20(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v55 - v7;
  v8 = sub_237C05E7C();
  v62 = OUTLINED_FUNCTION_0(v8);
  v63 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_14_0();
  v58 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  v61 = v14;
  v67 = sub_237C05ADC();
  v15 = OUTLINED_FUNCTION_0(v67);
  v65 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_0();
  v57 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_138();
  v60 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0C6B0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v26 = _s20PersistentParametersVMa_1();
  v27 = (v2 + v26[6]);
  v28 = v27[1];
  v29 = MEMORY[0x277D837D0];
  *(inited + 48) = *v27;
  *(inited + 56) = v28;
  *(inited + 72) = v29;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000237C17DC0;
  v30 = *(v2 + v26[7]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  *(inited + 96) = v30;
  *(inited + 120) = v31;
  strcpy((inited + 128), "maxIterations");
  *(inited + 142) = -4864;
  v32 = v2 + v26[8];
  v33 = MEMORY[0x277D83B88];
  *(inited + 144) = *v32;
  *(inited + 168) = v33;
  *(inited + 176) = 0x746C616E6550316CLL;
  *(inited + 184) = 0xE900000000000079;
  v34 = MEMORY[0x277D839F8];
  *(inited + 192) = *(v32 + 40);
  *(inited + 216) = v34;
  *(inited + 224) = 0x746C616E6550326CLL;
  *(inited + 232) = 0xE900000000000079;
  *(inited + 240) = *(v32 + 48);
  *(inited + 264) = v34;
  *(inited + 272) = 0x657A695370657473;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = *(v32 + 56);
  *(inited + 312) = v34;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x8000000237C18450;
  *(inited + 336) = *(v32 + 64);
  *(inited + 360) = v34;
  *(inited + 368) = 0xD000000000000010;
  *(inited + 376) = 0x8000000237C18470;
  LOBYTE(v32) = *(v32 + 72);
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = v32;

  OUTLINED_FUNCTION_23_6();
  sub_237C085AC();
  v35 = objc_opt_self();
  OUTLINED_FUNCTION_23_6();
  v36 = sub_237C0855C();

  v68[0] = 0;
  v37 = [v35 dataWithPropertyList:v36 format:200 options:0 error:v68];

  v38 = v68[0];
  if (v37)
  {
    v39 = sub_237C05B7C();
    v41 = v40;

    sub_237C05A2C();
    v42 = v64;
    sub_237C05B9C();
    if (v42)
    {
      (*(v65 + 8))(v24, v67);
      result = sub_2379E86D4(v39, v41);
    }

    else
    {
      v64 = v41;
      v65 = *(v65 + 8);
      (v65)(v24, v67);
      v45 = v60;
      sub_237C05A2C();
      OUTLINED_FUNCTION_10_3();
      v46 = v61;
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_12_4();
      v56 = sub_237C05DBC();
      sub_237C05C6C();
      v47 = v63 + 8;
      v61 = *(v63 + 8);
      v61(v46, v62);
      v48 = v45;
      v49 = v65;
      (v65)(v48, v67);
      v50 = v2 + v26[5];
      v51 = v59;
      sub_237A2AA5C(v50, v59);
      if (__swift_getEnumTagSinglePayload(v51, 1, v56) == 1)
      {
        sub_2379E86D4(v39, v64);
        result = sub_2379D9054(v51, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v63 = v47;
        OUTLINED_FUNCTION_9_3();
        v52 = v57;
        sub_237C05A2C();
        OUTLINED_FUNCTION_10_3();
        v53 = v58;
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_12_4();
        sub_237C05C6C();
        sub_2379E86D4(v39, v64);
        v61(v53, v62);
        v49(v52, v67);
        result = (*(*(v56 - 8) + 8))(v51);
      }
    }
  }

  else
  {
    v44 = v38;
    sub_237C0593C();

    result = swift_willThrow();
  }

  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_237A2A8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A2A93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A2A9A0(uint64_t a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A2A9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4(v6);
  (*(v7 + 40))(a2, a1);
  return a2;
}

uint64_t sub_237A2AA5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_13()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_5_10()
{
  v2 = *(v0 - 448);
  v3 = *(v0 - 440);

  return sub_2379E86D4(v2, v3);
}

uint64_t OUTLINED_FUNCTION_17_7()
{
  v2 = *(v0 - 224);
  result = *(v0 - 216);
  v3 = *(v0 - 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_7()
{
  result = v0;
  v3 = *(v1 - 224);
  v4 = *(v1 - 432);
  return result;
}

void *sub_237A2AB98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277CD8858];
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_237AC8D94();
    v2 = v23;
    v5 = objc_opt_self();
    v6 = *v3;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;

      v10 = sub_237C086BC();
      v11 = [v5 dominantLanguageForString_];

      if (!v11)
      {
        v11 = v6;
      }

      v12 = *(v23 + 16);
      if (v12 >= *(v23 + 24) >> 1)
      {
        sub_237AC8D94();
      }

      *(v23 + 16) = v12 + 1;
      *(v23 + 8 * v12 + 32) = v11;
      v7 += 2;
      --v1;
    }

    while (v1);
    v3 = MEMORY[0x277CD8858];
  }

  v13 = sub_237A2ADB0(v2);

  if (v13)
  {
    v14 = *v3;
    v15 = sub_237C086EC();
    v17 = v16;
    if (v15 == sub_237C086EC() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_237C0929C();

      if ((v20 & 1) == 0)
      {
        return v13;
      }
    }
  }

  sub_2379E8AF0();
  swift_allocError();
  OUTLINED_FUNCTION_0_14(v21, 30);

  return v13;
}

uint64_t sub_237A2ADB0(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  sub_237A2B238();
  v2 = sub_237C085AC();
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = *v4;
      swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_237ACDA84(v5);
      if (__OFADD__(*(v2 + 16), (v7 & 1) == 0))
      {
        break;
      }

      v8 = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4D0, &qword_237C0D008);
      if (sub_237C090AC())
      {
        v10 = sub_237ACDA84(v5);
        if ((v9 & 1) != (v11 & 1))
        {
          goto LABEL_34;
        }

        v8 = v10;
      }

      if ((v9 & 1) == 0)
      {
        *(v2 + 8 * (v8 >> 6) + 64) |= 1 << v8;
        *(*(v2 + 48) + 8 * v8) = v5;
        *(*(v2 + 56) + 8 * v8) = 0;
        v12 = *(v2 + 16);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_33;
        }

        *(v2 + 16) = v14;
        v15 = v5;
      }

      v16 = *(v2 + 56);
      v17 = *(v16 + 8 * v8);
      v13 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v13)
      {
        goto LABEL_31;
      }

      *(v16 + 8 * v8) = v18;

      ++v4;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_11:
    v19 = 1 << *(v2 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v2 + 64);
    if (!v21)
    {
      v26 = 0;
      v25 = (v19 + 63) >> 6;
      while (1)
      {
        v22 = v21 + 1;
        if (v21 + 1 >= v25)
        {
          break;
        }

        v27 = *(v2 + 8 * v21 + 72);
        v26 += 64;
        ++v21;
        if (v27)
        {
          v24 = (v27 - 1) & v27;
          v23 = __clz(__rbit64(v27)) + v26;
          goto LABEL_19;
        }
      }

      return 0;
    }

    v22 = 0;
    v23 = __clz(__rbit64(v21));
    v24 = (v21 - 1) & v21;
    v25 = (v19 + 63) >> 6;
LABEL_19:
    v28 = *(*(v2 + 56) + 8 * v23);
    v29 = *(*(v2 + 48) + 8 * v23);

    while (v24)
    {
LABEL_25:
      v31 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v32 = v31 | (v22 << 6);
      v33 = *(*(v2 + 56) + 8 * v32);
      if (v28 < v33)
      {
        v34 = *(*(v2 + 48) + 8 * v32);

        v29 = v34;
        v28 = v33;
      }
    }

    while (1)
    {
      v30 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v30 >= v25)
      {

        return v29;
      }

      v24 = *(v2 + 64 + 8 * v30);
      ++v22;
      if (v24)
      {
        v22 = v30;
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

id sub_237A2B084(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  result = [v4 assetsAvailableForEmbeddingType:a1 language:a2];
  if (!result)
  {
    v8[4] = nullsub_1;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_237A2B1A8;
    v8[3] = &block_descriptor_0;
    v6 = _Block_copy(v8);
    [v4 requestAssetsForEmbeddingType:a1 language:a2 withCompletionHandler:v6];
    _Block_release(v6);
    sub_2379E8AF0();
    swift_allocError();
    return OUTLINED_FUNCTION_0_14(v7, 128);
  }

  return result;
}

void sub_237A2B1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237A2B238()
{
  result = qword_27DE9A7B0;
  if (!qword_27DE9A7B0)
  {
    type metadata accessor for NLLanguage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;

  return swift_willThrow();
}

void sub_237A2B2B8(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = a2;
  *(a3 + 8) = 0u;
  OUTLINED_FUNCTION_0_15(a3, 0);
}

uint64_t sub_237A2B2C8()
{
  v1 = *(v0 + 4);
  if (v1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * v1);
  }
}

void sub_237A2B2EC(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = -559038737;
    *(a4 + 4) = a1 + 1;
    *(a4 + 8) = a3;
    *(a4 + 16) = a2;
    OUTLINED_FUNCTION_0_15(a4, 0);
  }
}

uint64_t sub_237A2B314(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237A2B334(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

void OUTLINED_FUNCTION_0_15(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
}

void *sub_237A2B3A8@<X0>(void *a1@<X8>)
{
  __src[0] = xmmword_237C0D040;
  *&__src[1] = 0x200000000;
  *(&__src[1] + 8) = 0u;
  *(&__src[2] + 8) = 0u;
  *(&__src[3] + 8) = 0u;
  *(&__src[4] + 1) = 0;
  *&__src[5] = MEMORY[0x277D84F90];
  v4[0] = __src[1];
  v4[1] = __src[2];
  v4[2] = __src[3];
  v4[3] = 0uLL;
  sub_237BF51B4(64);
  sub_237BFF5DC(__src, v4);
  return memcpy(a1, __src, 0x58uLL);
}

uint64_t sub_237A2B450(uint64_t a1)
{
  v2 = v1;
  result = MEMORY[0x2383D9720](*v1, v1[1]);
  v5 = *(a1 + 16);
  if (v5 >> 61)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = 4 * v5;
  v8 = sub_237A2B950(4 * v5, 64);
  result = MEMORY[0x2383D9720](*v2, v2[1]);
  v9 = result + 64;
  if (__OFADD__(result, 64))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v9 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_237A2B2EC(1u, v9, v7, v19);
  sub_237A9D164();
  v10 = *(v2[10] + 16);
  result = sub_237A9D2F8(v10);
  v11 = v2[10];
  *(v11 + 16) = v10 + 1;
  v12 = (v11 + (v10 << 6));
  v13 = v19[1];
  v12[2] = v19[0];
  v12[3] = v13;
  v14 = v19[3];
  v12[4] = v19[2];
  v12[5] = v14;
  v2[10] = v11;
  LODWORD(v11) = *(v2 + 4);
  v15 = __CFADD__(v11, 1);
  v16 = v11 + 1;
  if (!v15)
  {
    *(v2 + 4) = v16;
    v17 = *(v2 + 2);
    v20[0] = *(v2 + 1);
    v20[1] = v17;
    v18 = *(v2 + 4);
    v20[2] = *(v2 + 3);
    v20[3] = v18;
    sub_237A2B648(v20, v2);
    sub_237BF55A4(v19);
    sub_237BF564C(a1, v2, v8);
    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_237A2B584(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1[10];
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (v2 + (result << 6));
  v4 = v3[3];
  v7[0] = v3[2];
  v7[1] = v4;
  v5 = v3[5];
  v7[2] = v3[4];
  v7[3] = v5;
  if (sub_237A2B2C8() == 1)
  {
    return sub_237A2B7A0(*v1, v1[1], v7);
  }

  sub_237A01064();
  swift_allocError();
  *v6 = 2;
  return swift_willThrow();
}

uint64_t *sub_237A2B648(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v2), v2);
      LODWORD(v2) = HIDWORD(v2) - v2;
      if (v6)
      {
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x237A2B6F8);
      }

      v2 = v2;
LABEL_6:
      if (v2 <= 63)
      {
LABEL_7:
        sub_237BF51B4(64);
      }

      return sub_237BFF5DC(a2, a1);
    case 2uLL:
      v9 = v2 + 16;
      v7 = *(v2 + 16);
      v8 = *(v9 + 8);
      v6 = __OFSUB__(v8, v7);
      v2 = v8 - v7;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_7;
    default:
      v2 = BYTE6(v3);
      goto LABEL_6;
  }
}

char *sub_237A2B708@<X0>(char *result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *(a2 + 16);
    if (v4 < 0)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = &result[v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 8);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 4)
  {
    v7 = sub_237BC2754();
    result = memcpy(v7 + 4, v5, v6 & 0x7FFFFFFFFFFFFFFCLL);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  *a3 = v7;
  return result;
}

void *sub_237A2B7A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_15;
      }

      a1 = a1;
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v12;
LABEL_9:
      v11 = sub_237A00E90(a1, v10, v9, a3);
LABEL_10:
      if (!v4)
      {
        v3 = v11;
      }

      break;
    case 2uLL:
      v8 = *(a1 + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v10 = v8;
      goto LABEL_9;
    case 3uLL:
      v11 = sub_237A2BB04(0, 0, a3);
      goto LABEL_10;
    default:
      v15 = a1;
      v16 = a2;
      v17 = BYTE2(a2);
      v18 = BYTE3(a2);
      v19 = BYTE4(a2);
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      v20 = BYTE5(a2);
      if (((v7 | v6) & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_15:
        __break(1u);
      }

      if (v7 >= 4)
      {
        v3 = sub_237BC2754();
        memcpy(v3 + 4, &v15 + v6, v7 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v3 = MEMORY[0x277D84F90];
      }

      break;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_237A2B950(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result == 0x8000000000000001 && a2 == -1)
  {
    goto LABEL_14;
  }

  v3 = (result - 1) / a2;
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    goto LABEL_12;
  }

  result = a2 * v5;
  if ((a2 * v5) >> 64 != (a2 * v5) >> 63)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2B9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[0] = a1;
  v12[3] = MEMORY[0x277D838B0];
  v12[4] = MEMORY[0x277CC9C18];
  v12[1] = a2;
  v7 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_237C05B5C();
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  if (a1)
  {
    v11 = a2 - a1;
    if (a2 - a1 >= a4)
    {
      return result;
    }
  }

  else
  {
    if (a4 < 1)
    {
      return result;
    }

    v11 = 0;
  }

  result = a4 - v11;
  if (__OFSUB__(a4, v11))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_237BF51B4(result);
}

uint64_t sub_237A2BA98(unsigned __int8 a1)
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](a1);
  return sub_237C0940C();
}

void *sub_237A2BB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  v4 = *(a3 + 8);
  v3 = *(a3 + 16);
  if (((v4 | v3) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (v4 >= 4)
  {
    v5 = sub_237BC2754();
    memcpy(v5 + 4, &v8 + v3, v4 & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t getEnumTagSinglePayload for BlobsFileError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BlobsFileError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A2BD14);
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

uint64_t sub_237A2BD5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_237A2BD9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237A2BE04()
{
  result = qword_27DE9B4D8;
  if (!qword_27DE9B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B4D8);
  }

  return result;
}

uint64_t sub_237A2BE58@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  v5 = 0uLL;
  v7 = 0;
  LODWORD(v8) = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x237A2BF2CLL);
      }

      result = sub_237A2CD38(result, v10);
      if (!v4)
      {
        v7 = v10[0];
        LODWORD(v8) = v10[1];
        v5 = v11;
        a4 = v12;
        goto LABEL_8;
      }

      break;
    case 2uLL:
      v9 = *(result + 24);
      result = sub_237A2CD38(*(result + 16), v13);
      if (!v4)
      {
        v7 = v13[0];
        LODWORD(v8) = v13[1];
        v5 = v14;
        a4 = v15;
        goto LABEL_8;
      }

      break;
    case 3uLL:
      goto LABEL_8;
    default:
      v8 = HIDWORD(result);
      *&v5 = a2 & 0xFFFFFFFFFFFFLL;
      v7 = result;
LABEL_8:
      *a3 = v7;
      *(a3 + 4) = v8;
      *(a3 + 8) = v5;
      *(a3 + 24) = a4;
      break;
  }

  return result;
}

void *sub_237A2BF3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_237A2C2B0(a1, a2);
  v7 = OUTLINED_FUNCTION_30();
  if (sub_237A2C104(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_30();
    sub_237A2BE58(v9, v10, v11, v12);
    sub_237A2B2B8(v36, v37, &v38);
    if (DWORD1(v38) == 2)
    {
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      goto LABEL_6;
    }

LABEL_8:
    v24 = OUTLINED_FUNCTION_30();
    sub_2379E86D4(v24, v25);
    sub_237A01064();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_30();
  sub_237A2C308(v13, v14, v15);
  if (DWORD1(v38) != 2)
  {
    goto LABEL_8;
  }

  v46 = v38;
  v47 = v39;
  v48 = v40;
  v49 = v41;
LABEL_6:
  v16 = OUTLINED_FUNCTION_30();
  v20 = sub_237A2C548(v16, v17, v18, v19);
  v21 = OUTLINED_FUNCTION_30();
  sub_2379E86D4(v21, v22);
  if (!v3)
  {
    *__src = a1;
    *&__src[8] = a2;
    *&__src[16] = v38;
    *&__src[32] = v39;
    *&__src[48] = v40;
    *&__src[64] = v41;
    *&__src[80] = v20;
    v29 = a1;
    v30 = a2;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v20;
    sub_237A2C79C(__src, &v27);
    sub_237A2C4F4(&v29);
    return memcpy(a3, __src, 0x58uLL);
  }

LABEL_9:
  v29 = a1;
  v30 = a2;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = MEMORY[0x277D84F90];
  return sub_237A2C4F4(&v29);
}

uint64_t sub_237A2C104(uint64_t a1, unint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  v3 = 0;
  v4 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = v5;
LABEL_6:
      if (v5 != 40)
      {
        if (v2 == 2)
        {
          v11 = *(a1 + 16);
          v10 = *(a1 + 24);
          v8 = __OFSUB__(v10, v11);
          v9 = v10 - v11;
          if (!v8)
          {
            goto LABEL_16;
          }

          __break(1u);
        }

        else if (v2 == 1)
        {
          LODWORD(v9) = HIDWORD(a1) - a1;
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            v9 = v9;
LABEL_16:
            if (v9 == 64)
            {
LABEL_23:
              v3 = 0;
              goto LABEL_29;
            }

            if (v2 == 2)
            {
              v13 = *(a1 + 16);
              v12 = *(a1 + 24);
              v8 = __OFSUB__(v12, v13);
              v4 = v12 - v13;
              if (!v8)
              {
                goto LABEL_22;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (v2 != 1)
            {
LABEL_22:
              if (v4 < 68)
              {
                goto LABEL_23;
              }

              if (v2 == 2)
              {
                v14 = *(a1 + 24);
                a1 = *(a1 + 16);
LABEL_28:
                v3 = sub_237A2CCA8(a1);
                goto LABEL_29;
              }

              if (a1 >> 32 >= a1)
              {
                a1 = a1;
                goto LABEL_28;
              }

LABEL_35:
              __break(1u);
            }

            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v4 = HIDWORD(a1) - a1;
              goto LABEL_22;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v9 = BYTE6(a2);
        goto LABEL_16;
      }

      v3 = 1;
LABEL_29:
      v15 = *MEMORY[0x277D85DE8];
      return v3 & 1;
    case 2uLL:
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    case 3uLL:
      goto LABEL_29;
    default:
      v5 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_237A2C2B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_237A2C308@<Q0>(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v15 = sub_237C0581C();
      if (v15)
      {
        v16 = sub_237C0583C();
        if (__OFSUB__(v14, v16))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v15 += v14 - v16;
      }

      a1 = sub_237C0582C();
      if (!v15)
      {
        __break(1u);
LABEL_9:
        v18 = *(a1 + 16);
        v15 = sub_237C0581C();
        if (!v15)
        {
LABEL_12:
          sub_237C0582C();
          if (v15)
          {
            goto LABEL_13;
          }

LABEL_18:
          __break(1u);
          JUMPOUT(0x237A2C4E4);
        }

        v19 = sub_237C0583C();
        if (!__OFSUB__(v18, v19))
        {
          v15 += v18 - v19;
          goto LABEL_12;
        }

        goto LABEL_16;
      }

LABEL_13:
      v3 = *v15;
      v5 = *(v15 + 8);
      v17.i32[0] = *(v15 + 9);
      v7 = vmovl_u8(v17).u64[0];
      LOBYTE(v6) = *(v15 + 13);
      v21 = *(v15 + 14);
      v22 = *(v15 + 30);
      v23 = *(v15 + 46);
      v24 = *(v15 + 62);
LABEL_14:
      *a3 = v3;
      *(a3 + 8) = v5;
      *(a3 + 9) = vuzp1_s8(v7, v3).u32[0];
      *(a3 + 13) = v6;
      *(a3 + 14) = v21;
      *(a3 + 30) = v22;
      result = v23;
      *(a3 + 46) = v23;
      *(a3 + 62) = v24;
      return result;
    case 2uLL:
      goto LABEL_9;
    case 3uLL:
      goto LABEL_14;
    default:
      v8 = vdupq_n_s64(a1);
      v9 = vshlq_u64(v8, xmmword_237C0D1C0);
      v10 = vmovn_s64(vshlq_u64(v8, xmmword_237C0D1B0));
      v10.i8[1] = v10.i8[4];
      *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_237C0D1D0));
      v11 = vzip1_s16(a1, v10);
      v12 = vmovn_s64(v9);
      v12.i8[1] = v12.i8[4];
      v12.i8[2] = v8.i8[0];
      v12.i8[3] = v8.i8[4];
      v3 = vzip1_s32(v11, v12);
      v13 = vdupq_n_s64(a2);
      v7 = vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_237C0D1F0), vshlq_u64(v13, xmmword_237C0D1E0)));
      v6 = a2 >> 40;
      v5 = a2;
      goto LABEL_14;
  }
}

uint64_t sub_237A2C548(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  v14 = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      if (sub_237C0581C() && __OFSUB__(a1, sub_237C0583C()))
      {
        goto LABEL_18;
      }

LABEL_12:
      sub_237C0582C();
      OUTLINED_FUNCTION_1_10();
      a4();
      result = sub_2379E86D4(a1, a2);
      if (!v4)
      {
        result = v13;
      }

LABEL_15:
      v11 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);

      if (sub_237C0581C() && __OFSUB__(v8, sub_237C0583C()))
      {
        goto LABEL_17;
      }

      if (!__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_7:
      OUTLINED_FUNCTION_1_10();
      a4();
      result = sub_2379E86D4(a1, a2);
      if (!v4)
      {
        result = v12;
      }

      goto LABEL_15;
    default:
      goto LABEL_7;
  }
}

void sub_237A2C7F8(uint64_t a1@<X0>, int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a2;
  sub_237BC17C0();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = a4 >> 62;
  v15 = 64;
  v16 = a3;
  while (2)
  {
    v17 = v15 + 64;
    if (__OFADD__(v15, 64))
    {
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
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A2CA44);
    }

    v18 = v13;
    switch(v14)
    {
      case 1uLL:
        v18 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (!v21)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      case 3uLL:
        if (v17 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v17 >= v18)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v22 = *(a1 + v15 + 4);
        v23 = *(a1 + v15 + 8);
        v35 = *(a1 + v15 + 16);
        v36 = *(a1 + v15 + 32);
        v37 = *(a1 + v15 + 48);
        if (*(a1 + v15) == -559038737)
        {
          v24 = *(v10 + 16);
          if (v24 >= *(v10 + 24) >> 1)
          {
            v33 = v16;
            v32 = v11;
            v31 = v12;
            sub_237BC17C0();
            v12 = v31;
            v11 = v32;
            v16 = v33;
            v10 = v29;
          }

          *(v10 + 16) = v24 + 1;
          v25 = v10 + (v24 << 6);
          *(v25 + 32) = -559038737;
          *(v25 + 36) = v22;
          *(v25 + 40) = v23;
          *(v25 + 64) = v36;
          *(v25 + 80) = v37;
          *(v25 + 48) = v35;
          if (v23 < 0)
          {
            goto LABEL_26;
          }

          v26 = (v23 - 1) / 64;
          if ((v26 - 0x1FFFFFFFFFFFFFFLL) >> 58 != 63)
          {
            goto LABEL_27;
          }

          v27 = v26 << 6;
          v21 = __OFADD__(v27, 128);
          v28 = v27 + 128;
          if (v21)
          {
            goto LABEL_28;
          }

          v21 = __OFADD__(v15, v28);
          v15 += v28;
          if (v21)
          {
            goto LABEL_29;
          }

          if (!--v8)
          {
            goto LABEL_23;
          }

          continue;
        }

LABEL_24:

        sub_237A01064();
        swift_allocError();
        *v30 = 1;
        swift_willThrow();
        return;
    }
  }
}

void sub_237A2CA54(uint64_t a1@<X0>, int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = *a2;
  sub_237BC17C0();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = 40;
  v15 = a4 >> 62;
  v16 = 0uLL;
  v17 = a3;
  while (2)
  {
    v18 = v14 + 56;
    if (__OFADD__(v14, 56))
    {
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
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A2CC98);
    }

    v19 = v13;
    switch(v15)
    {
      case 1uLL:
        v19 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (!v22)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      case 3uLL:
        if (v18 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v18 >= v19)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v23 = a1 + v14;
        if (*(a1 + v14) == -559038737)
        {
          v24 = *(v23 + 4);
          v25 = *(v23 + 8);
          v26 = *(v10 + 16);
          if (v26 >= *(v10 + 24) >> 1)
          {
            v36 = v17;
            v35 = v11;
            v34 = v12;
            v33 = *(v23 + 8);
            sub_237BC17C0();
            v25 = v33;
            v16 = 0uLL;
            v12 = v34;
            v11 = v35;
            v17 = v36;
            v10 = v31;
          }

          *(v10 + 16) = v26 + 1;
          v27 = v10 + (v26 << 6);
          *(v27 + 32) = -559038737;
          *(v27 + 36) = v24;
          *(v27 + 40) = v25;
          *(v27 + 56) = v16;
          *(v27 + 72) = v16;
          *(v27 + 88) = 0;
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v28 = (v25 - 1) / 8;
          if ((v28 - 0xFFFFFFFFFFFFFFFLL) >> 61 != 7)
          {
            goto LABEL_27;
          }

          v29 = 8 * v28;
          v22 = __OFADD__(v29, 64);
          v30 = v29 + 64;
          if (v22)
          {
            goto LABEL_28;
          }

          v22 = __OFADD__(v14, v30);
          v14 += v30;
          if (v22)
          {
            goto LABEL_29;
          }

          if (!--v8)
          {
            goto LABEL_23;
          }

          continue;
        }

LABEL_24:

        sub_237A01064();
        swift_allocError();
        *v32 = 1;
        swift_willThrow();
        return;
    }
  }
}

uint64_t sub_237A2CCA8(uint64_t a1)
{
  v2 = sub_237C0581C();
  if (v2)
  {
    v3 = v2;
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_237C0582C();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return *(v5 + 64) != -559038737 && *(v5 + 40) == -559038737;
}

uint64_t sub_237A2CD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237C0581C();
  if (v4)
  {
    v5 = v4;
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = a1 - result + v5;
  }

  else
  {
    v7 = 0;
  }

  result = sub_237C0582C();
  if (v7)
  {
    *a2 = *v7;
    *(a2 + 8) = *(v7 + 8);
    *(a2 + 24) = *(v7 + 24);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_237A2CDD8(id a1, char a2, id a3, char a4, uint64_t a5, uint64_t *a6)
{
  v7 = a1;
  if (a2)
  {
    v8 = a1;
  }

  else if (a4)
  {
    v10 = a3;

    return a3;
  }

  else
  {
    v13 = a3;
    v14 = a1;
    sub_2379DBCF4(a1, 0);
    sub_2379DBCF4(a3, 0);
    sub_237B6E1C8(&v14, &v13, a5, a6, &v15);
    sub_2379DBC9C(a3, 0);
    sub_2379DBC9C(v7, 0);

    return v15;
  }

  return v7;
}

void *MLDataTable.init(contentsOf:options:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v90 = a3;
  v5 = sub_237C05ADC();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v89 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v86 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v86 - v17;
  v19 = sub_237C0825C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v91 = v21;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v96 = &v86 - v27;
  memcpy(__dst, a2, 0x90uLL);
  if ((sub_237C0594C() & 1) == 0)
  {
    sub_237A2D6E8(__dst);
    sub_2379E8AF0();
    v40 = swift_allocError();
    *v41 = 0xD00000000000002ALL;
    v41[1] = 0x8000000237C18560;
    OUTLINED_FUNCTION_1_11(v40, v41);
    return (*(v8 + 8))(a1, v5);
  }

  v87 = v5;
  v88 = v8;
  sub_237C0597C();
  sub_237C081DC();
  sub_237C081AC();
  v28 = a1;
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
  {
    v42 = v91;
    (*(v91 + 32))(v96, v18, v19);
    sub_237C081BC();
    v43 = sub_237C0823C();
    v44 = *(v42 + 8);
    v44(v26, v19);
    if (v43 & 1) != 0 || (sub_237C0824C(), v45 = sub_237C0823C(), v44(v26, v19), (v45))
    {
      v46 = v19;
      type metadata accessor for CMLTable();
      v47 = sub_237C05A9C();
      v49 = v48;
      memcpy(v94, __dst, sizeof(v94));
      nullsub_1(v94);
      memcpy(v93, v94, sizeof(v93));
      v50 = v47;
      v51 = v49;
      v52 = 1;
    }

    else
    {
      sub_237A2D6E8(__dst);
      sub_237C081EC();
      v71 = sub_237C0823C();
      v44(v26, v19);
      v46 = v19;
      if ((v71 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_8();
        OUTLINED_FUNCTION_0_16();
        v78 = sub_237C0597C();
        MEMORY[0x2383DC360](v78);

        OUTLINED_FUNCTION_5_11();
        v80 = v94[0];
        v79 = v94[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_237C0B660;
        *(v81 + 56) = MEMORY[0x277D837D0];
        *(v81 + 32) = v80;
        *(v81 + 40) = v79;

        OUTLINED_FUNCTION_6_12();

        sub_2379E8AF0();
        v82 = swift_allocError();
        *v83 = v80;
        v83[1] = v79;
        OUTLINED_FUNCTION_1_11(v82, v83);
        goto LABEL_12;
      }

      type metadata accessor for CMLTable();
      v72 = sub_237C05A9C();
      v74 = v73;
      sub_237A2DCA4(v94);
      memcpy(v93, v94, sizeof(v93));
      v50 = v72;
      v51 = v74;
      v52 = 0;
    }

    v53 = v92;
    v54 = sub_237A2DEE8(v50, v51, v52, v93);
    if (!v53)
    {
      v70 = v54;
      (*(v88 + 8))(v28, v87);
      v44(v96, v46);
      goto LABEL_23;
    }

LABEL_12:
    (*(v88 + 8))(v28, v87);
    return (v44)(v96, v46);
  }

  sub_237A2D6E8(__dst);
  sub_237A2D718(v18);
  OUTLINED_FUNCTION_4_13();
  v29 = sub_237C059CC();
  v30 = v87;
  v31 = *(v88 + 8);
  v31(v14, v87);
  if (v29)
  {
    v32 = v89;
    OUTLINED_FUNCTION_4_13();
    v33 = sub_237C05A9C();
    v35 = v34;
    v31(v32, v30);
    v36 = v92;
    v37 = sub_237A2DC08(v33, v35);
    if (v36)
    {

      v38 = OUTLINED_FUNCTION_8_9();
      return (v31)(v38);
    }

    v75 = v37;

    type metadata accessor for CMLTable();
    v70 = swift_allocObject();
    *(v70 + 16) = v75;
    v76 = OUTLINED_FUNCTION_8_9();
    (v31)(v76);
    goto LABEL_23;
  }

  v96 = v31;
  if ((sub_237C059CC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v55 = [objc_opt_self() defaultManager];
  sub_237C05A2C();
  sub_237C05A9C();
  (v96)(v14, v30);
  v56 = sub_237C086BC();

  v57 = [v55 fileExistsAtPath_];

  if (!v57)
  {
LABEL_17:
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_0_16();
    v62 = sub_237C0597C();
    MEMORY[0x2383DC360](v62);

    OUTLINED_FUNCTION_5_11();
    v64 = v94[0];
    v63 = v94[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_237C0B660;
    *(v65 + 56) = MEMORY[0x277D837D0];
    *(v65 + 32) = v64;
    *(v65 + 40) = v63;

    OUTLINED_FUNCTION_6_12();

    sub_2379E8AF0();
    v66 = swift_allocError();
    *v67 = v64;
    v67[1] = v63;
    OUTLINED_FUNCTION_1_11(v66, v67);
    goto LABEL_18;
  }

  v58 = sub_237C05A9C();
  v59 = v92;
  v61 = sub_237A2DC08(v58, v60);
  if (v59)
  {

LABEL_18:
    v68 = OUTLINED_FUNCTION_8_9();
    return (v96)(v68, v69);
  }

  v84 = v61;

  type metadata accessor for CMLTable();
  v70 = swift_allocObject();
  *(v70 + 16) = v84;
  v85 = OUTLINED_FUNCTION_8_9();
  (v96)(v85);
LABEL_23:
  type metadata accessor for _DataTable();
  swift_allocObject();
  result = sub_237B6C578(v70);
  v77 = v90;
  *v90 = result;
  *(v77 + 8) = 0;
  return result;
}

uint64_t sub_237A2D718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 MLDataTable.ParsingOptions.init(containsHeader:delimiter:comment:escape:doubleQuote:quote:skipInitialSpaces:missingValues:lineTerminator:selectColumns:maxRows:skipRows:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, __n128 a14, uint64_t a15, char a16, uint64_t a17)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16 & 1;
  *(a9 + 136) = a17 & ~(a17 >> 63);
  return result;
}

uint64_t MLDataTable.ParsingOptions.delimiter.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDataTable.ParsingOptions.delimiter.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.comment.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDataTable.ParsingOptions.comment.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.escape.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDataTable.ParsingOptions.escape.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.quote.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDataTable.ParsingOptions.quote.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.missingValues.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.setter()
{
  OUTLINED_FUNCTION_5_4();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.selectColumns.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.maxRows.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t MLDataTable.ParsingOptions.maxRows.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_237A2DC08(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FA84(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FA84((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237A2DCB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_237A2DCF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_16()
{
  v2 = *(v0 + 208);
  *(v0 + 200) = *(v0 + 200);
  *(v0 + 208) = v2;

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return sub_237C05A2C();
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_237C0939C();
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t sub_237A2DE60()
{
  result = sub_237B0E548(*(v0 + 16));
  if (!v1)
  {
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2DE9C(uint64_t a1)
{
  result = sub_237B10680(*(v1 + 16), *(a1 + 16));
  if (!v2 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2DEE8(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  memcpy(__dst, __src, 0x90uLL);
  v8 = MEMORY[0x2383DDB70](0);
  if (!v8)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  v11 = sub_237B0F164(0);
  if (v4)
  {
    goto LABEL_24;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  type metadata accessor for CMLFeatureValue();
  v12 = swift_initStackObject();
  OUTLINED_FUNCTION_1_12(v12);
  OUTLINED_FUNCTION_10_7(9);
  OUTLINED_FUNCTION_13_5();

  memcpy(v33, __dst, sizeof(v33));
  if (sub_237A31B90(v33) != 1)
  {
    if (sub_237B0F164(v33[0]))
    {
      v36 = a3;
      v13 = swift_initStackObject();
      OUTLINED_FUNCTION_1_12(v13);
      OUTLINED_FUNCTION_10_7(10);

      v35 = __dst[7];
      v32 = __dst[10];
      v30 = __dst[14];
      v31 = __dst[16];
      v28 = __dst[15];
      v29 = __dst[17];
      swift_bridgeObjectRetain_n();
      sub_237A2E7CC();

      sub_237A2F598(11);

      swift_bridgeObjectRetain_n();
      sub_237A2E7CC();

      sub_237A2F598(12);

      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_17_8();
      sub_237A2E7CC();
      LOBYTE(a3) = v36;

      sub_237A2F598(13);
      OUTLINED_FUNCTION_21_8();

      v14 = sub_237B0F164(v35);
      if (!inited)
      {
        if (v14)
        {
          v15 = swift_initStackObject();
          OUTLINED_FUNCTION_1_12(v15);
          OUTLINED_FUNCTION_10_7(14);
          OUTLINED_FUNCTION_13_5();

          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_17_8();
          sub_237A2E7CC();

          sub_237A2F598(15);
          OUTLINED_FUNCTION_21_8();

          if (sub_237B0F164(v32))
          {
            v16 = swift_initStackObject();
            OUTLINED_FUNCTION_1_12(v16);
            OUTLINED_FUNCTION_10_7(16);

            sub_237BF2450(v17);
            OUTLINED_FUNCTION_0_17();
            OUTLINED_FUNCTION_17_8();
            sub_237A2E8A0(v18, v19);

            OUTLINED_FUNCTION_10_7(17);
            OUTLINED_FUNCTION_13_5();

            swift_bridgeObjectRetain_n();
            OUTLINED_FUNCTION_17_8();
            sub_237A2E7CC();

            OUTLINED_FUNCTION_10_7(18);
            OUTLINED_FUNCTION_13_5();

            if (v30)
            {

              sub_237BF2450(v20);
              OUTLINED_FUNCTION_0_17();
              OUTLINED_FUNCTION_17_8();
              sub_237A2E8A0(v21, v22);

              OUTLINED_FUNCTION_10_7(19);
              OUTLINED_FUNCTION_13_5();
            }

            if ((v31 & 1) == 0)
            {
              if (!sub_237B0F164(v28))
              {
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v23 = swift_initStackObject();
              OUTLINED_FUNCTION_1_12(v23);
              OUTLINED_FUNCTION_10_7(20);
              OUTLINED_FUNCTION_13_5();
            }

            sub_237A31BA8(__dst);
            if (sub_237B0F164(v29))
            {
              v24 = swift_initStackObject();
              OUTLINED_FUNCTION_1_12(v24);
              OUTLINED_FUNCTION_10_7(21);
              OUTLINED_FUNCTION_13_5();

              goto LABEL_16;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      while (1)
      {
LABEL_24:
        swift_unexpectedError();
        __break(1u);

        OUTLINED_FUNCTION_7_9();
      }
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_16:

  v25 = sub_237A2FF94(a1, a2, a3 & 1, inited);

  swift_setDeallocating();
  v26 = *(inited + 16);
  tc_v1_release();
  OUTLINED_FUNCTION_103();
  result = swift_allocObject();
  *(result + 16) = v25;
  return result;
}

uint64_t sub_237A2E688(unint64_t a1)
{
  if (a1 > 9)
  {
    return 8;
  }

  else
  {
    return byte_237C0D48E[a1];
  }
}

uint64_t sub_237A2E6E8()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    tc_v1_release();
  }

  return v0;
}

uint64_t sub_237A2E714()
{
  sub_237A2E6E8();
  OUTLINED_FUNCTION_4_14();

  return swift_deallocClassInstance();
}

uint64_t sub_237A2E764(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_237A2E774()
{
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2E78C()
{
  result = MEMORY[0x2383DDAD0](0);
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_4_14();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    return OUTLINED_FUNCTION_9_9(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2E7CC()
{
  v1 = sub_237C0876C();
  v2 = sub_237B0F9C4(v1 + 32);
  if (v0)
  {
  }

  else
  {
    v4 = v2;

    if (v4)
    {

      OUTLINED_FUNCTION_4_14();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      return OUTLINED_FUNCTION_9_9(v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2E8A0(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(*(a1 + 16));
  if (v2)
  {
  }

  v4 = result;
  if (result)
  {

    OUTLINED_FUNCTION_4_14();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    return OUTLINED_FUNCTION_9_9(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_237A2E910()
{
  v1 = *(v0 + 16);
  v2 = tc_v1_ft_type();
  result = sub_237A2E688(v2);
  if (result == 8)
  {
    __break(1u);
  }

  else
  {

    return sub_237A2E6A8(result);
  }

  return result;
}

uint64_t sub_237A2EA30(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_237A2E6C8(a1);
  result = sub_237B106E0(v3, qword_237C0D498[v4]);
  if (!v2 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2EABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CMLFeatureValue();

  v6 = sub_237A2E7CC();
  if (v4)
  {
    return a3;
  }

  a3 = sub_237B12840(*(v3 + 16), *(v6 + 16), *(a3 + 16));

  if ((a3 & 0x8000000000000000) == 0)
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A2EB64(uint64_t a1)
{
  type metadata accessor for CMLFeatureValue();
  v4 = sub_237A2E78C();
  result = sub_237A2E78C();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237B1462C(*(v1 + 16), a1, *(v4 + 16), *(result + 16));
    if (v2)
    {
    }

    return v4;
  }

  return result;
}

uint64_t sub_237A2ECCC()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0 && !result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2ED1C(uint64_t a1, char a2)
{
  v3 = v2;
  if (sub_237A2F140())
  {
    v6 = sub_237B0E008(*(a1 + 16));
    if (!v2)
    {
      v7 = v6;
      if (v6)
      {

        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v7;
        return result;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v17 = sub_237B0F594(0.0);
        if (v2)
        {
        }

        if (v17)
        {
          goto LABEL_17;
        }

        goto LABEL_39;
      case 2:
        type metadata accessor for CMLFeatureValue();
        v14 = sub_237A2E7CC();
        goto LABEL_23;
      case 3:
        if (!MEMORY[0x2383DDAC0](0))
        {
          goto LABEL_36;
        }

        type metadata accessor for CMLFeatureValue();
        type metadata accessor for CMLSequence();
        inited = swift_initStackObject();
        v12 = OUTLINED_FUNCTION_3_14(inited);
        v13 = sub_237B0DFA8;
        goto LABEL_14;
      case 4:
        goto LABEL_9;
      case 5:
        type metadata accessor for CMLFeatureValue();
        v14 = sub_237A2E78C();
        goto LABEL_24;
      case 6:
        v19 = sub_237B14A90(1, &unk_284ABEB98, &unk_284ABEBC0, &unk_284ABEBE8);
        if (v2)
        {
          goto LABEL_41;
        }

        v20 = v19;
        if (!v19)
        {
          goto LABEL_37;
        }

        type metadata accessor for CMLMultiArray();
        v21 = swift_initStackObject();
        *(v21 + 16) = v20;
        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_12_9();
        v12 = v21;
        goto LABEL_22;
      default:
        v9 = sub_237B0F164(0);
        if (v2)
        {
        }

        if (v9)
        {
LABEL_17:
          type metadata accessor for CMLFeatureValue();
          OUTLINED_FUNCTION_11_9();
          v18 = swift_allocObject();
          OUTLINED_FUNCTION_3_14(v18);
        }

        else
        {
          __break(1u);
LABEL_9:
          v10 = MEMORY[0x2383DDA80](0);
          if (!v10)
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v11 = v10;
          type metadata accessor for CMLFeatureValue();
          type metadata accessor for CMLDictionary();
          v12 = swift_initStackObject();
          *(v12 + 16) = v11;
          v13 = sub_237B0DF48;
LABEL_14:
          v16 = v13;
LABEL_22:
          v14 = sub_237A2E8A0(v12, v16);
LABEL_23:
          v3 = v2;
          if (v2)
          {
          }

LABEL_24:
          v18 = v14;
        }

        v22 = MEMORY[0x2383DDAC0](0);
        if (!v22)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v23 = v22;
        type metadata accessor for CMLSequence();
        v24 = swift_initStackObject();
        *(v24 + 16) = v23;
        OUTLINED_FUNCTION_9_9(v24);
        sub_237A2DE9C(v18);
        if (v3)
        {

          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_4_14();
          swift_deallocClassInstance();
        }

        v25 = *(v24 + 16);

        v26 = sub_237B0E008(v25);
        v27 = v26;
        if (!v26)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          OUTLINED_FUNCTION_2_16();
          swift_unexpectedError();
          __break(1u);
          JUMPOUT(0x237A2F0E0);
        }

        *(swift_initStackObject() + 16) = v27;
        v28 = sub_237B10500(v27, 0);
        if (!v28)
        {
          goto LABEL_40;
        }

        swift_setDeallocating();
        sub_237A2E6E8();
        OUTLINED_FUNCTION_4_14();
        swift_deallocClassInstance();

        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v28;
        break;
    }
  }

  return result;
}

uint64_t sub_237A2F140()
{
  v0 = OUTLINED_FUNCTION_23_7();
  result = v1(v0);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_237A2F168()
{
  v1 = *(v0 + 16);
  v2 = tc_v1_sarray_type();
  result = sub_237A2E688(v2);
  if (result == 8)
  {
    __break(1u);
  }

  else
  {

    return sub_237A2E6A8(result);
  }

  return result;
}

uint64_t sub_237A2F1D4(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = a2(*(v2 + 16), result);
  if (v3)
  {
    return result;
  }

  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CMLFeatureValue();
  OUTLINED_FUNCTION_11_9();
  v4 = swift_allocObject();
  return OUTLINED_FUNCTION_3_14(v4);
}

uint64_t sub_237A2F32C()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0)
  {
    if (result)
    {
      type metadata accessor for CMLFeatureValue();
      OUTLINED_FUNCTION_11_9();
      v4 = swift_allocObject();
      return OUTLINED_FUNCTION_3_14(v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2F37C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = *v7;
  OUTLINED_FUNCTION_18_8();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = swift_slowAlloc();
  OUTLINED_FUNCTION_18_8();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_237A3175C;
  *(v15 + 24) = v13;
  *v14 = sub_237A31764;
  v14[1] = v15;
  v16 = v7[2];
  v17 = qword_237C0D498[sub_237A2E6C8(a3)];

  v18 = sub_237B16268(v16, sub_237A31E88, sub_237A31E7C, v14, v17, a4);
  if (!v6)
  {
    v19 = v18;
    if (v18)
    {

      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v19;
      return result;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_9();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A2F500(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for CMLFeatureValue();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  a2();

  v5 = sub_237A2E774();

  return v5;
}

uint64_t sub_237A2F598(char a1)
{
  sub_237B0B320(a1);
  OUTLINED_FUNCTION_22_5();

  v1 = OUTLINED_FUNCTION_8_10();
  sub_237A2F634(v1, v2, v3, v4);
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A2F5E8@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    result = sub_237B114F4(result, *(a3 + 16));
    if (v4)
    {
      return result;
    }

    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  result = sub_237B0FA24(result);
  if (v4)
  {
    return result;
  }

  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_7:
  *a4 = result;
  return result;
}

uint64_t sub_237A2F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8[0] = a1;
    v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = *(a3 + 16);
    v5 = *(a4 + 16);
    v6 = v8;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v4 = *(a3 + 16);
  v5 = *(a4 + 16);
  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237B132E4(v4, v6, v5);
LABEL_7:
}

uint64_t sub_237A2F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12[0] = a1;
      v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;

      v10 = v12;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFFFFLL;

      v10 = (v9 + 32);
LABEL_6:
      sub_237A2F800(a3, a4, a5, v10);
      goto LABEL_7;
    }
  }

  sub_237C08ECC();
LABEL_7:
  if (v5)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7[0] = a1;
    v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = *(a3 + 16);
    v5 = v7;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
  }

  v4 = *(a3 + 16);
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237B133A4(v4, a4, v5);
}

uint64_t sub_237A2F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_6();
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v14[0] = v6;
    v14[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(a3 + 16);
    v11 = *(a4 + 16);
    v12 = v14;
    goto LABEL_6;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v10 = *(a3 + 16);
  v11 = *(a4 + 16);
  v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  v8(v10, v12, v11);
LABEL_7:
}

uint64_t sub_237A2F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      MEMORY[0x28223BE20](a1);
      if ((a4 & 0x1000000000000000) == 0)
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v23 = v15;
          v24 = a4 & 0xFFFFFFFFFFFFFFLL;

          v16 = a7 & 1;
          v17 = &v23;
          goto LABEL_17;
        }

        if ((v15 & 0x1000000000000000) != 0)
        {

          v16 = a7 & 1;
          v17 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_17:
          sub_237A2FBF4(a5, a6, v16, a8, v14, v17);
          goto LABEL_18;
        }
      }

      sub_237C08ECC();
LABEL_18:
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_21:
    sub_237C08ECC();
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v23 = a1;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  MEMORY[0x28223BE20](a1);
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = v18;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;

      v19 = a7 & 1;
      v20 = v22;
      goto LABEL_13;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {

      v19 = a7 & 1;
      v20 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_13:
      sub_237A2FBF4(a5, a6, v19, a8, &v23, v20);
      goto LABEL_14;
    }
  }

  sub_237C08ECC();
LABEL_14:
  if (!v8)
  {
LABEL_19:
  }

LABEL_15:
}

uint64_t sub_237A2FBF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = *(a4 + 16);
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }

LABEL_10:
    sub_237C08ECC();
  }

  v9[0] = a1;
  v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v6 = *(a4 + 16);
  v7 = v9;
LABEL_6:
  if (a3)
  {
    sub_237B15CDC(v6, a5, a6, v7);
  }

  else
  {
    sub_237B15D3C(v6, a5, a6, v7);
  }
}

uint64_t sub_237A2FCB8()
{
  OUTLINED_FUNCTION_24_6();
  if ((v3 & 0x1000000000000000) == 0 && ((v2 & 0x2000000000000000) != 0 || (v1 & 0x1000000000000000) != 0))
  {

    v4 = OUTLINED_FUNCTION_14_4();
    sub_237A2FDF0(v4, v5, v6, v7, v8);
  }

  else
  {
    sub_237C08ECC();
  }

  if (v0)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_24_6();
  if ((v11 & 0x1000000000000000) == 0 && ((v10 & 0x2000000000000000) != 0 || (v9 & 0x1000000000000000) != 0))
  {

    sub_237A2FEF8(a3, a4, a5);
  }

  else
  {
    sub_237C08ECC();
  }

  if (v5)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2FEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_6();
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v13[0] = v4;
    v13[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(a3 + 16);
    v11 = v13;
    goto LABEL_6;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v10 = *(a3 + 16);
  v11 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  v7(v10, v8, v6, v11);
LABEL_7:
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A2FF94(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_21:
    sub_237C08ECC();

    if (!v4)
    {
      return v14[3];
    }

    return v5;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = sub_237B114F4(v9 + 32, *(a4 + 16));
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v10;
  if (v10)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_8:
  v14[0] = v8;
  v14[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_237B114F4(v14, *(a4 + 16));
  if (v4)
  {
LABEL_16:

    return v5;
  }

  v5 = v11;
  if (v11)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v12 = sub_237B0FA24(v14);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v12;
  if (v12)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_15:
  result = sub_237B0FA24(v9 + 32);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = result;
  if (result)
  {
LABEL_19:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A300CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLVariant();
    sub_237C08ECC();
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = v11[3];
LABEL_11:

    return v7;
  }

  v9 = sub_237B13224(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, *(a4 + 16));
  if (v4)
  {
LABEL_8:

    return v7;
  }

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v11[0] = v8;
  v11[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B13224(*(a3 + 16), v11, *(a4 + 16));
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = result;
  if (result)
  {
LABEL_10:
    type metadata accessor for CMLVariant();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A3023C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B14EC0(v4, *(v5 + 16), *(v6 + 16), v7);
  if (!v3)
  {
    if (result)
    {
      *v2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A302A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  result = a3(*(a1 + 16), *(a2 + 16));
  if (v3)
  {
  }

  else
  {
    v5 = result;
    if (result)
    {

      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30388()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A303B4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237A2F8A8(a1, a2, v3, a3);
}

uint64_t sub_237A3047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237A2F704(a1, a2, a3, a4, v4);
}

uint64_t sub_237A30560(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B119B8(v3, v4);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v6 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_237A305B8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B11EB0(v4, v5);
  if (!v3)
  {
    result = sub_237A2E688(result);
    if (result == 8)
    {
      __break(1u);
    }

    else
    {
      result = sub_237A2E6A8(result);
      *v2 = result;
    }
  }

  return result;
}

uint64_t sub_237A30608(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B13870(v3, v4);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v6 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30660(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *v1;
  v9 = 0;
  v10[0] = 0;
  result = sub_237B16ACC(v1[2], a1, v10, &v9);
  if (v2)
  {
    goto LABEL_5;
  }

  v6 = v10[0];
  if (v10[0])
  {
    OUTLINED_FUNCTION_103();
    result = swift_allocObject();
    *(result + 16) = v6;
    v7 = v9;
    if (v9)
    {
      v3 = result;
      OUTLINED_FUNCTION_103();
      *(swift_allocObject() + 16) = v7;
LABEL_5:
      v8 = *MEMORY[0x277D85DE8];
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A3074C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == 2)
  {
    v4 = *(a3 + 16);
    v5 = "json";
  }

  else if (a2 == 1)
  {
    v4 = *(a3 + 16);
    v5 = "binary";
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *(a3 + 16);
    v5 = "csv";
  }

  return sub_237B152F0(v4, v3, v5, 0);
}

uint64_t sub_237A307B0()
{
  result = sub_237B0E128(*(v0 + 16));
  if (!v1)
  {
    result = sub_237B0E548(result);
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30800(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_18_8();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = swift_slowAlloc();
  OUTLINED_FUNCTION_18_8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_237A31980;
  *(v11 + 24) = v9;
  *v10 = sub_237A31E50;
  v10[1] = v11;
  v12 = *(v3 + 16);
  v13 = qword_237C0D498[sub_237A2E6C8(a3)];

  v14 = sub_237B16F30(v12, sub_237A31E8C, sub_237A31E80, v10, v13);
  if (!v5)
  {
    v15 = v14;
    if (v14)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v15;
      return result;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_9();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A30948(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for CMLSequence();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  a2();

  v5 = sub_237A2E774();

  return v5;
}

uint64_t sub_237A309BC(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);

    JUMPOUT(0x2383DD950);
  }

  return result;
}

uint64_t sub_237A30A08(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (result)
    {
      v2 = *a2;
      v3 = *(a2 + 8);
      v5 = result;

      v2(&v4, &v5);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A30A98(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B131C4(v3, v5, *(v4 + 16));
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[2];
  v9 = *(a1 + 16);
  v10 = sub_237C0876C();
  v11 = sub_237B15350(v8, v9, v10 + 32, a4);

  if (!v5)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v11;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30BDC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B153B0(v3, v4, v5, 0);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{

  result = a5(a2, a3, a4, a1);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_237A30CD4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B14134(v3, v4, v5);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30D30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  v10 = sub_237A2E6C8(a4);
  result = sub_237B17360(v8, v9, a1, qword_237C0D498[v10], *(a5 + 16));
  if (!v5)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v12 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  result = sub_237BF1F84(0, 0xE000000000000000, a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_237A30E48()
{
  OUTLINED_FUNCTION_16_5();
  v7 = v6;
  type metadata accessor for CMLFeatureValue();
  v8 = sub_237A2E78C();
  result = sub_237B1669C(*(v4 + 16), v3, v5, *(v2 + 16), *(v8 + 16), *(v1 + 16));
  if (v0)
  {
  }

  v10 = result;
  if (result)
  {

    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    result = swift_allocObject();
    *(result + 16) = v10;
    *v7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A30F00()
{
  v1 = *(v0 + 16);
  tc_v1_release();
  OUTLINED_FUNCTION_103();

  return swift_deallocClassInstance();
}

uint64_t sub_237A30F7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B11A18(v4, v5);
  if (!v3)
  {
    v7 = result;
    if (result)
    {
      type metadata accessor for CMLFeatureValue();
      OUTLINED_FUNCTION_11_9();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      result = OUTLINED_FUNCTION_9_9(v8);
      *v2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31004(char a1)
{
  sub_237B0B320(a1);
  OUTLINED_FUNCTION_22_5();

  v1 = OUTLINED_FUNCTION_8_10();
  sub_237A2F8A8(v1, v2, v3, v4);
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A311F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_20_4();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_19_8();
  return sub_237A2F968(v11, v12, v13, v14, v15, a7, v10, v7);
}

uint64_t sub_237A31260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v16[0] = a2;
    v16[1] = a3 & 0xFFFFFFFFFFFFFFLL;

    v13 = a6 & 1;
    v14 = v16;
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_8:

    sub_237C08ECC();
  }

  v13 = a6 & 1;
  v14 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237A2FBF4(a4, a5, v13, a7, a1, v14);
}

uint64_t sub_237A31408(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  if (a2)
  {
    return sub_237B15CDC(v7, a4, a5, a1);
  }

  else
  {
    return sub_237B15D3C(v7, a4, a5, a1);
  }
}

uint64_t sub_237A314B8()
{
  OUTLINED_FUNCTION_16_5();

  return sub_237A2FCB8();
}

uint64_t sub_237A31548()
{
  OUTLINED_FUNCTION_20_4();

  v0 = OUTLINED_FUNCTION_19_8();
  return sub_237A2FDF0(v0, v1, v2, v3, v4);
}

uint64_t sub_237A31728()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_18_8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_237A31764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A317F0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    if (result)
    {
      *a2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31828()
{
  result = sub_237B0E5A8(*(v0 + 16));
  if (!v1)
  {
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31864(char a1)
{
  sub_237AE8814(a1);
  OUTLINED_FUNCTION_22_5();

  v1 = OUTLINED_FUNCTION_8_10();
  v5 = sub_237A300CC(v1, v2, v3, v4);

  return v5;
}

uint64_t sub_237A318C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B13224(*(a2 + 16), a1, *(a3 + 16));
  if (!v4)
  {
    v7 = result;
    if (result)
    {
      type metadata accessor for CMLVariant();
      result = swift_allocObject();
      *(result + 16) = v7;
      *a4 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31A70()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  return sub_237A31548();
}

uint64_t sub_237A31B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237A31BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E8, &qword_237C0D408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CMLFeatureValueType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CMLFeatureValueType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A31DC0);
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

unint64_t sub_237A31DFC()
{
  result = qword_27DE9B4F0;
  if (!qword_27DE9B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B4F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(char a1)
{

  return sub_237A2F598(a1);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_5()
{
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v17 = OUTLINED_FUNCTION_4(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  sub_237A2A8D8(a1, v21 - v20);
  v25[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  sub_237A2A93C(v22, boxed_opaque_existential_0);
  sub_237A2A9A0(a1);
  return sub_2379DAE54(v25, a4 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A2A93C(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379F6D68(v1 + 8, &v11);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237B7C62C(a1);
    return sub_237A2A9A0(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A32288@<X0>(uint64_t a1@<X8>)
{
  result = MLLogisticRegressionClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A322CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A2A93C(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.getter()
{
  result = sub_2379F6D68(v0 + 8, &v2);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a1);
  return sub_237A324E0;
}

void sub_237A324E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237A32574(uint64_t a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A2A8D8(a1, v5);
  return MLLogisticRegressionClassifier.ModelParameters.validation.setter(v5);
}

void (*MLLogisticRegressionClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[16] = v1;
  v4 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData();
  v3[17] = v4;
  OUTLINED_FUNCTION_4(v4);
  v6 = *(v5 + 64);
  v3[18] = __swift_coroFrameAllocStub(v6);
  v3[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379F6D68(v1 + 8, (v3 + 4));
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237A326E8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A326E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A2A8D8((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A2A93C(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5 + 8);
    sub_237A2A9A0(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A2A93C(v4, v8);
    sub_2379DAE54((v2 + 12), v5 + 8);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  v11 = v8;
  v12 = v9;
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v9 = *v0;
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  MEMORY[0x2383DC360](0x6C616E655020314CLL, 0xEC000000203A7974);
  v2 = v0[5];
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  MEMORY[0x2383DC360](0x6C616E655020324CLL, 0xEC000000203A7974);
  v3 = v0[6];
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  v4 = v0[7];
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18860);
  v5 = v0[8];
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  sub_237C08EDC();

  if (*(v0 + 72))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x2383DC360](v6, v7);

  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C18880);

  return 0xD000000000000010;
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A32C0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A32C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_13()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_2_17()
{

  return sub_237C08A8C();
}

uint64_t sub_237A32D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v25 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  result = v25;
  v23 = a2;
  v24 = v4;
  v22 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v26 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v21 = v12;
      sub_237AC8B54();
      v12 = v21;
      result = v26;
    }

    --v11;
    *(result + 16) = v15 + 1;
    *(result + 8 * v15 + 32) = v13 - v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v24 != v6)
      {
        if (v6 >= v24)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v16 = *(v22 + 32 + 8 * v6);
        v17 = *(v23 + 32 + 8 * v6);
        v27 = result;
        v18 = *(result + 16);
        if (v18 >= *(result + 24) >> 1)
        {
          OUTLINED_FUNCTION_31_4();
          v20 = v19;
          sub_237AC8B54();
          v12 = v20;
          result = v27;
        }

        *(result + 16) = v18 + 1;
        *(result + 8 * v18 + 32) = v16 - v17;
        ++v6;
      }

      return result;
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
  return result;
}

void sub_237A32EE0()
{
  OUTLINED_FUNCTION_153();
  v48 = v0;
  v1 = sub_237C0926C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v47 = sub_237C060DC();
  v10 = OUTLINED_FUNCTION_0(v47);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v46 = sub_237C0683C();
  v18 = OUTLINED_FUNCTION_0(v46);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v44 = (v23 - v24);
  OUTLINED_FUNCTION_39_0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v38 - v27;
  MEMORY[0x28223BE20](v26);
  v45 = v38 - v29;
  sub_237C067CC();
  sub_237C060CC();
  v43 = *MEMORY[0x277D84660];
  v42 = *(v4 + 104);
  v42(v9);
  sub_237C0675C();
  v30 = *(v4 + 8);
  v40 = v4 + 8;
  v41 = v30;
  v30(v9, v1);
  v31 = *(v12 + 8);
  v38[2] = v12 + 8;
  v39 = v31;
  v32 = v47;
  v31(v17, v47);
  v33 = v20 + 8;
  v34 = *(v20 + 8);
  v38[1] = v33;
  v35 = v46;
  v34(v28, v46);
  v36 = v44;
  sub_237C067CC();
  sub_237C060CC();
  (v42)(v9, v43, v1);
  sub_237C0675C();
  v41(v9, v1);
  v39(v17, v32);
  v34(v36, v35);
  v37 = v45;
  sub_237C067EC();
  sub_237C067EC();
  sub_237A337D4();

  v34(v28, v35);
  v34(v37, v35);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A3326C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v2 = sub_237A32D10(a2, a1);
    v3 = *(v2 + 16);
    if (v3)
    {
      v16 = MEMORY[0x277D84F90];
      sub_237AC8B54();
      v4 = v16;
      v5 = *(v16 + 16);
      v6 = 32;
      do
      {
        v7 = *(v2 + v6);
        v8 = *(v16 + 24);
        if (v5 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_106(v8);
          OUTLINED_FUNCTION_31_4();
          sub_237AC8B54();
        }

        *(v16 + 16) = v5 + 1;
        *(v16 + 8 * v5 + 32) = v7 * v7;
        v6 += 8;
        ++v5;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = (v4 + 32);
      v11 = 0.0;
      do
      {
        v12 = *v10++;
        v11 = v11 + v12;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    sub_237C08EDC();

    v14 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v14);

    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18940);
    v15 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v15);

    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237A3347C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_12:
    OUTLINED_FUNCTION_35_1();
    sub_237C08EDC();

    v11 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v11);

    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18940);
    v12 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v12);

    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
    return result;
  }

  v2 = sub_237A32D10(a2, a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v4 = 0;
    v5 = v13;
    while (v4 < *(v2 + 16))
    {
      v6 = *(v2 + 8 * v4 + 32);
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_106(v7);
        sub_237AC8B54();
      }

      ++v4;
      *(v13 + 16) = v8 + 1;
      *(v13 + 8 * v8 + 32) = fabs(v6);
      if (v3 == v4)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_10:
  v9 = sub_2379FBDB8(v5);

  return v9;
}

uint64_t sub_237A3367C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  *(v2 + 16) = a1;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  OUTLINED_FUNCTION_29_4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_237C0B670;
  *(v12 + 32) = a1;
  *(v12 + 40) = a1;
  OUTLINED_FUNCTION_45();
  sub_2379D9224(v13, &qword_27DE9B0E0, &unk_237C15290);
  sub_237C0837C();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion, v11, v4);
  return v2;
}

void sub_237A337D4()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B550, &qword_237C0D658);
  v13 = OUTLINED_FUNCTION_0(v38);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v32 = &v32 - v22;
  v40 = *(v2 + 16);
  v41 = v0;
  v23 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  swift_beginAccess();
  v24 = 0;
  v39 = v4;
  v36 = v4 + 32;
  v37 = v2 + 32;
  v34 = (v7 + 8);
  v35 = (v7 + 16);
  v33 = (v15 + 8);
  v42 = xmmword_237C0B670;
  while (1)
  {
    if (v40 == v24 || (v25 = *(v39 + 16), v24 == v25))
    {
      OUTLINED_FUNCTION_150();
      return;
    }

    if (v24 >= v25)
    {
      break;
    }

    v26 = *(v37 + 8 * v24);
    v27 = *(v36 + 8 * v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    OUTLINED_FUNCTION_29_4();
    v28 = swift_allocObject();
    *(v28 + 16) = v42;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    OUTLINED_FUNCTION_29_4();
    v29 = swift_allocObject();
    *(v29 + 16) = v42;
    *(v29 + 32) = v26;
    *(v29 + 40) = v27;
    (*v35)(v12, v41 + v23, v5);
    OUTLINED_FUNCTION_45();
    sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
    sub_237C0838C();
    (*v34)(v12, v5);
    OUTLINED_FUNCTION_13_6();
    sub_2379D9224(&qword_27DE9B558, &qword_27DE9B550, &qword_237C0D658);
    v30 = v38;
    sub_237C0833C();
    (*v33)(v20, v30);
    if (v44)
    {
      goto LABEL_11;
    }

    v31 = v43;

    if (__OFADD__(v31, 1))
    {
      goto LABEL_10;
    }

    v43 = v31 + 1;
    sub_237C082FC();
    swift_beginAccess();
    sub_237C0839C();
    swift_endAccess();
    ++v24;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_237A33B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B550, &qword_237C0D658);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v89 = v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v13 = OUTLINED_FUNCTION_30_5(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = v78 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(v3 + 16))
  {
LABEL_34:
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
    return result;
  }

  if (v19)
  {
    v20 = 0;
    v92 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
    v88 = (v16 + 16);
    v87 = (v16 + 8);
    v86 = (v7 + 8);
    v80 = a1 + 32;
    v79 = (a1 + 40);
    v85 = xmmword_237C0B670;
    v93 = MEMORY[0x277D84F90];
    v97 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    v82 = v3;
    v81 = v5;
    v84 = v19;
    while (1)
    {
      if (v20 == v19)
      {
        goto LABEL_32;
      }

      v21 = *(v3 + 16);
      if (v21 < 0)
      {
        break;
      }

      if (v21)
      {
        swift_beginAccess();
        v22 = 0;
        v83 = (v80 + 16 * v20);
        v23 = v79;
        v91 = v20;
        v90 = v21;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          OUTLINED_FUNCTION_29_4();
          v24 = swift_allocObject();
          *(v24 + 16) = v85;
          *(v24 + 32) = v20;
          *(v24 + 40) = v22;
          (*v88)(v18, v3 + v92, v12);
          OUTLINED_FUNCTION_45();
          sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
          v25 = v89;
          sub_237C0838C();

          (*v87)(v18, v12);
          OUTLINED_FUNCTION_13_6();
          sub_2379D9224(&qword_27DE9B558, &qword_27DE9B550, &qword_237C0D658);
          sub_237C0833C();
          (*v86)(v25, v5);
          if ((v95 & 0x100000000) == 0)
          {
            v26 = v95;
            if (v95 >= 1)
            {
              v28 = *v83;
              v27 = v83[1];

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_6_13(isUniquelyReferenced_nonNull_native, v30, v31, v97);
                sub_237BC0CB8();
                v97 = v51;
              }

              v33 = *(v97 + 16);
              v32 = *(v97 + 24);
              if (v33 >= v32 >> 1)
              {
                OUTLINED_FUNCTION_106(v32);
                OUTLINED_FUNCTION_31_4();
                sub_237BC0CB8();
                v97 = v52;
              }

              v34 = v97;
              *(v97 + 16) = v33 + 1;
              v35 = v34 + 16 * v33;
              *(v35 + 32) = v28;
              *(v35 + 40) = v27;
              if (v22 >= v84)
              {
                __break(1u);
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

              v37 = *(v23 - 1);
              v36 = *v23;

              v38 = swift_isUniquelyReferenced_nonNull_native();
              if ((v38 & 1) == 0)
              {
                OUTLINED_FUNCTION_6_13(v38, v39, v40, v93);
                sub_237BC0CB8();
                v93 = v53;
              }

              v42 = *(v93 + 16);
              v41 = *(v93 + 24);
              if (v42 >= v41 >> 1)
              {
                OUTLINED_FUNCTION_106(v41);
                OUTLINED_FUNCTION_31_4();
                sub_237BC0CB8();
                v93 = v54;
              }

              v43 = v93;
              *(v93 + 16) = v42 + 1;
              v44 = v43 + 16 * v42;
              *(v44 + 32) = v37;
              *(v44 + 40) = v36;
              v45 = swift_isUniquelyReferenced_nonNull_native();
              if ((v45 & 1) == 0)
              {
                v55 = OUTLINED_FUNCTION_6_13(v45, v46, v47, v94);
                sub_237BC0EB4(v55, v56, v57, v58);
                v94 = v59;
              }

              v3 = v82;
              v5 = v81;
              v49 = *(v94 + 16);
              v48 = *(v94 + 24);
              if (v49 >= v48 >> 1)
              {
                v60 = OUTLINED_FUNCTION_2_18(v48);
                sub_237BC0EB4(v60, v61, v62, v94);
                v94 = v63;
              }

              v50 = v94;
              *(v94 + 16) = v49 + 1;
              *(v50 + 8 * v49 + 32) = v26;
            }
          }

          ++v22;
          v23 += 2;
          v20 = v91;
        }

        while (v90 != v22);
      }

      ++v20;
      v19 = v84;
      if (v20 == v84)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v93 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
  inited = swift_initStackObject();
  v65 = OUTLINED_FUNCTION_18_9(inited, xmmword_237C0B680);
  v65[2].n128_u64[0] = v66;
  v65[2].n128_u64[1] = 0xE500000000000000;
  v67 = OUTLINED_FUNCTION_32_3();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
  inited[4].n128_u64[1] = v69;
  v70 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
  inited[3].n128_u64[0] = v97;
  inited[5].n128_u64[0] = v70;
  inited[5].n128_u64[1] = 0x6574636964657270;
  inited[8].n128_u64[0] = v69;
  inited[8].n128_u64[1] = v70;
  inited[6].n128_u64[0] = 0xEF7373616C635F64;
  inited[6].n128_u64[1] = v93;
  inited[9].n128_u64[0] = 0x746E756F63;
  inited[9].n128_u64[1] = 0xE500000000000000;
  v71 = OUTLINED_FUNCTION_32_3();
  inited[11].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
  inited[12].n128_u64[0] = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  inited[10].n128_u64[0] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  v73 = sub_237C085AC();
  v74 = v78[1];
  result = MLDataTable.init(dictionary:)(v73, &v95);
  if (!v74)
  {
    v76 = v96;
    v77 = v78[0];
    *v78[0] = v95;
    *(v77 + 8) = v76;
  }

  return result;
}

uint64_t sub_237A34258()
{
  v1 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _MetricUtilities.ConfusionMatrixMeter()
{
  result = qword_27DE9B500;
  if (!qword_27DE9B500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A34354()
{
  sub_237A343F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_237A343F4()
{
  if (!qword_27DE9B510)
  {
    v0 = sub_237C082DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9B510);
    }
  }
}

void sub_237A3444C()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  v33 = *v4;
  v34 = v6;
  MLDataTable.subscript.getter();
  v29 = v31;
  v30 = v32;
  MLUntypedColumn.dropDuplicates()(&v27);
  sub_2379DBC9C(v29, v30);
  v7 = v27;
  LOBYTE(v8) = v28;
  if ((v28 & 1) != 0 || (sub_2379DBCF4(v27, 0), sub_237A60248(&v33), sub_2379DBC9C(v7, 0), v33 != 2))
  {
LABEL_14:
    sub_2379DBC9C(v7, v8);
    __break(1u);

    v24 = 0;
    v23 = 95;
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    sub_237C090DC();
    __break(1u);
    return;
  }

  v8 = sub_2379DFC10(v7, 0);
  v9 = *(v1 + 16);
  if (*(v8 + 16) < v9)
  {
    v25 = v3;
    v33 = v5;
    v34 = v6;
    v10 = sub_2379DBCF4(v5, v6);
    v6 = 0;
    v11 = (v1 + 40);
    v26 = xmmword_237C0B680;
    v12 = MEMORY[0x277D837D0];
    while (v9)
    {
      v13 = *(v11 - 1);
      v7 = *v11;
      v27 = v13;
      v28 = v7;
      MEMORY[0x28223BE20](v10);
      v23 = &v27;

      if (sub_237AC1CCC(sub_237A06CFC, &v22, v8))
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
        inited = swift_initStackObject();
        v15 = OUTLINED_FUNCTION_18_9(inited, v26);
        v15[2].n128_u64[0] = v16;
        v15[2].n128_u64[1] = 0xE500000000000000;
        v15[4].n128_u64[1] = v12;
        v15[3].n128_u64[0] = v13;
        v15[3].n128_u64[1] = v7;
        v15[5].n128_u64[0] = &protocol witness table for String;
        v15[5].n128_u64[1] = 0x6574636964657270;
        v15[6].n128_u64[0] = 0xEF7373616C635F64;
        v15[6].n128_u64[1] = v13;
        v15[8].n128_u64[0] = v12;
        v15[8].n128_u64[1] = &protocol witness table for String;
        v15[7].n128_u64[0] = v7;
        v15[9].n128_u64[0] = 0x746E756F63;
        v15[9].n128_u64[1] = 0xE500000000000000;
        v15[11].n128_u64[1] = MEMORY[0x277D83B88];
        v15[12].n128_u64[0] = &protocol witness table for Int;
        v15[10].n128_u64[0] = 0;
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
        v17 = sub_237C085AC();
        MLDataTable.init(dictionary:)(v17, &v27);

        v18 = v27;
        v19 = v28;
        v7 = &v33;
        MLDataTable.append(contentsOf:)();
        sub_2379DBC9C(v18, v19);
      }

      v11 += 2;
      if (!--v9)
      {

        v20 = v34;
        v21 = v25;
        *v25 = v33;
        *(v21 + 8) = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  *v3 = v5;
  *(v3 + 8) = v6;
  sub_2379DBCF4(v5, v6);
LABEL_12:
  OUTLINED_FUNCTION_150();
}

void sub_237A347A4()
{
  OUTLINED_FUNCTION_153();
  v83 = v1;
  v75 = v2;
  v3 = sub_237C0926C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v81 = v5;
  v82 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v80 = v9 - v8;
  v10 = sub_237C060DC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v78 = v12;
  v79 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v77 = v16 - v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_237C0683C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v76 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  v73 = (v26 - v27);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  v71 = &v70 - v29;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v30);
  v74 = &v70 - v31;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v32);
  v72 = &v70 - v33;
  OUTLINED_FUNCTION_39_0();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v70 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = &v70 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v47 = &v70 - v46;
  sub_237A36634();
  v48 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  swift_beginAccess();
  (*(v42 + 16))(v47, v0 + v48, v40);
  v49 = v21;
  v50 = v39;
  OUTLINED_FUNCTION_45();
  sub_2379D9224(v51, &qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_32_3();
  v52 = sub_237C08BFC();
  v53 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v53);
  v54 = v52;
  sub_237B699C8(v54, v20, v37);
  v55 = v77;
  v56 = v78;
  v57 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277D2CCC8], v79);
  v58 = v80;
  v59 = v81;
  v60 = v82;
  (*(v81 + 104))(v80, *MEMORY[0x277D84660], v82);
  v84 = v50;
  sub_237C0675C();
  v61 = v60;
  v62 = v76;
  (*(v59 + 8))(v58, v61);
  (*(v56 + 8))(v55, v57);
  v63 = *(v62 + 8);
  v63(v37, v49);
  if ((v83 & 1) == 0)
  {

    (*(v62 + 32))(v75, v84, v49);
    goto LABEL_6;
  }

  v64 = sub_237C0677C();
  if (v64 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237A35F84(0, v64);
    v65 = v72;
    sub_237C065EC();

    v66 = v71;
    sub_237C0671C();
    v67 = v73;
    sub_237C0661C();
    v68 = v74;
    sub_237C066BC();
    v63(v67, v49);
    v63(v66, v49);
    sub_237C0669C();
    v63(v68, v49);
    v63(v65, v49);
    v69 = sub_237C0677C();
    if ((v69 & 0x8000000000000000) == 0)
    {
      sub_237A35F84(0, v69);
      sub_237C065EC();

      v63(v37, v49);
      v63(v84, v49);
LABEL_6:
      OUTLINED_FUNCTION_150();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_237A34D48(uint64_t a1, uint64_t a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0) - 8) + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = v25 - v5;
  v7 = sub_237C0683C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v15 = (v13 - v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v25 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = v25 - v21;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v25[0] = 0;
    v25[1] = a2;
    v23 = sub_237C0616C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A365A8();
    sub_237C0667C();
    sub_237C066AC();
    sub_237C0674C();
    v24 = *(v10 + 8);
    v24(v15, v7);
    OUTLINED_FUNCTION_27_4();
    v24(v19, v7);
    sub_237C0674C();
    OUTLINED_FUNCTION_27_4();
    v24(v19, v7);
    return (v24)(v22, v7);
  }

  return result;
}

void sub_237A34FA0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v236 = a3;
  v262 = a1;
  v235 = a4;
  v259 = sub_237C0683C();
  v5 = OUTLINED_FUNCTION_30_5(v259);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v249 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_5();
  v250 = v10;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_5();
  v258 = v12;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_5();
  v260 = v14;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_5();
  v252 = v16;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_5();
  v246 = v18;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_5();
  v245 = v20;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_5();
  v254 = v22;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_5();
  v261 = v24;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_5();
  v253 = v26;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_5();
  v251 = v28;
  v265 = 0;
  v244 = (v29 + 8);
  v238 = *(a2 + 16);
  v30 = (a2 + 40);
  v31 = MEMORY[0x277D84F90];
  v264 = xmmword_237C0B660;
  v256 = MEMORY[0x277D84F90];
  v257 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v247 = MEMORY[0x277D84F90];
  v255 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    v263 = v31;
    if (v238 == v265)
    {
      break;
    }

    v242 = v33;
    v243 = v32;
    v34 = *(v30 - 1);
    v35 = *v30;
    v239 = v30;
    v240 = v34;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B518, &qword_237C0D640);
    v37 = OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_4_15(v37);
    v38 = MEMORY[0x277D83B88];
    *(v39 + 56) = MEMORY[0x277D83B88];
    v40 = v38;
    v41 = MEMORY[0x277D2CF50];
    *(v39 + 64) = MEMORY[0x277D2CF50];
    v42 = v41;
    OUTLINED_FUNCTION_15_8(v39);
    v241 = v35;

    v43 = v253;
    sub_237C0684C();

    v44 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v44);
    *(v45 + 56) = v40;
    *(v45 + 64) = v42;
    OUTLINED_FUNCTION_15_8(v45);
    sub_237C0684C();

    v46 = *v244;
    v47 = v43;
    v48 = v259;
    (*v244)(v47, v259);
    v49 = v254;
    sub_237C0672C();
    v248 = v36;
    v50 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v50);
    v51[7] = MEMORY[0x277D83B88];
    v51[8] = MEMORY[0x277D2CF50];
    v51[4] = 0;
    v52 = v245;
    sub_237C0684C();

    v46(v49, v48);
    v53 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v53);
    *(v54 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v54, MEMORY[0x277D2CF50]);
    v55 = v246;
    sub_237C0684C();

    v46(v52, v48);
    v56 = v261;
    sub_237C0669C();
    v46(v55, v48);
    v46(v56, v48);
    v57 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v57);
    *(v58 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v58, MEMORY[0x277D2CF50]);
    OUTLINED_FUNCTION_38_2();

    v59 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v59);
    *(v60 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v60, MEMORY[0x277D2CF50]);
    sub_237C0684C();

    v61 = v48;
    v62 = v259;
    v46(v61, v259);
    v63 = v254;
    sub_237C0672C();
    v64 = OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_4_15(v64);
    *(v65 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v65, MEMORY[0x277D2CF50]);
    v66 = v245;
    sub_237C0684C();

    v67 = v63;
    v68 = v62;
    v46(v67, v62);
    v69 = OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_4_15(v69);
    v70[7] = MEMORY[0x277D83B88];
    v70[8] = MEMORY[0x277D2CF50];
    v70[4] = 0;
    v71 = v246;
    sub_237C0684C();

    v46(v66, v68);
    sub_237C0669C();
    v46(v71, v68);
    v72 = OUTLINED_FUNCTION_32_3();
    (v46)(v72);
    v73 = OUTLINED_FUNCTION_21_9();
    OUTLINED_FUNCTION_4_15(v73);
    *(v74 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v74, MEMORY[0x277D2CF50]);
    OUTLINED_FUNCTION_38_2();

    sub_237C0674C();
    v46(v71, v68);
    v75 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v75);
    *(v76 + 56) = MEMORY[0x277D83B88];
    v77 = MEMORY[0x277D2CF50];
    *(v76 + 64) = MEMORY[0x277D2CF50];
    OUTLINED_FUNCTION_15_8(v76);
    sub_237C0684C();

    v78 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v78);
    *(v79 + 56) = MEMORY[0x277D83B88];
    *(v79 + 64) = v77;
    OUTLINED_FUNCTION_15_8(v79);
    sub_237C0684C();

    v80 = v259;
    v46(v71, v259);
    sub_237C0672C();
    v81 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v81);
    v82[7] = MEMORY[0x277D83B88];
    v82[8] = MEMORY[0x277D2CF50];
    v82[4] = 0;
    v83 = v261;
    sub_237C0684C();

    v46(v71, v80);
    v84 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v84);
    *(v85 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v85, MEMORY[0x277D2CF50]);
    v86 = v254;
    v87 = v83;
    sub_237C0684C();

    v46(v83, v80);
    sub_237C066DC();
    v248 = v46;
    v46(v86, v80);
    sub_237C066DC();
    v88 = v263;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = *(v88 + 16);
      OUTLINED_FUNCTION_7_10();
      sub_237BC0CB8();
      v88 = v144;
    }

    v90 = *(v88 + 16);
    v89 = *(v88 + 24);
    OUTLINED_FUNCTION_20_5();
    v92 = v247;
    v93 = v242;
    v94 = v243;
    if (v95)
    {
      OUTLINED_FUNCTION_2_18(v91);
      sub_237BC0CB8();
      v88 = v145;
    }

    *(v88 + 16) = v87;
    v96 = v88 + 16 * v90;
    v97 = v241;
    *(v96 + 32) = v240;
    *(v96 + 40) = v97;
    OUTLINED_FUNCTION_5_13();
    v98 = v251;
    sub_237C067DC();
    v99 = *&v268;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v146 = OUTLINED_FUNCTION_6_13(isUniquelyReferenced_nonNull_native, v101, v102, v256);
      sub_237BC0EDC(v146, v147, v148, v149);
      v256 = v150;
    }

    v104 = *(v256 + 16);
    v103 = *(v256 + 24);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v151 = OUTLINED_FUNCTION_2_18(v105);
      sub_237BC0EDC(v151, v152, v153, v256);
      v256 = v154;
    }

    v106 = v256;
    *(v256 + 16) = v98;
    *(v106 + 8 * v104 + 32) = v99;
    OUTLINED_FUNCTION_5_13();
    v107 = v252;
    sub_237C067DC();
    v108 = *&v268;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    if ((v109 & 1) == 0)
    {
      v155 = OUTLINED_FUNCTION_6_13(v109, v110, v111, v257);
      sub_237BC0EDC(v155, v156, v157, v158);
      v257 = v159;
    }

    v113 = *(v257 + 16);
    v112 = *(v257 + 24);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v160 = OUTLINED_FUNCTION_2_18(v114);
      sub_237BC0EDC(v160, v161, v162, v257);
      v257 = v163;
    }

    v115 = v257;
    *(v257 + 16) = v107;
    *(v115 + 8 * v113 + 32) = v108;
    OUTLINED_FUNCTION_5_13();
    v116 = v260;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v118 ^ v119 | v117))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    if (v108 <= -9.2234e18)
    {
      goto LABEL_54;
    }

    if (v108 >= 9.2234e18)
    {
      goto LABEL_55;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = *(v93 + 16);
      v165 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v165, v166, v167, v93);
      v93 = v168;
    }

    v121 = *(v93 + 16);
    v120 = *(v93 + 24);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v169 = OUTLINED_FUNCTION_2_18(v122);
      sub_237BC0EB4(v169, v170, v171, v93);
      v93 = v172;
    }

    *(v93 + 16) = v116;
    *(v93 + 8 * v121 + 32) = v108;
    OUTLINED_FUNCTION_5_13();
    v123 = v258;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v118 ^ v119 | v117))
    {
      goto LABEL_56;
    }

    if (v108 <= -9.2234e18)
    {
      goto LABEL_57;
    }

    if (v108 >= 9.2234e18)
    {
      goto LABEL_58;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v173 = *(v94 + 16);
      v174 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v174, v175, v176, v94);
      v94 = v177;
    }

    v125 = *(v94 + 16);
    v124 = *(v94 + 24);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v178 = OUTLINED_FUNCTION_2_18(v126);
      sub_237BC0EB4(v178, v179, v180, v94);
      v94 = v181;
    }

    *(v94 + 16) = v123;
    *(v94 + 8 * v125 + 32) = v108;
    OUTLINED_FUNCTION_5_13();
    v127 = v250;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v118 ^ v119 | v117))
    {
      goto LABEL_59;
    }

    if (v108 <= -9.2234e18)
    {
      goto LABEL_60;
    }

    if (v108 >= 9.2234e18)
    {
      goto LABEL_61;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v182 = *(v92 + 16);
      v183 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v183, v184, v185, v92);
      v92 = v186;
    }

    v129 = *(v92 + 16);
    v128 = *(v92 + 24);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v187 = OUTLINED_FUNCTION_2_18(v130);
      sub_237BC0EB4(v187, v188, v189, v92);
      v92 = v190;
    }

    *(v92 + 16) = v127;
    *(v92 + 8 * v129 + 32) = v108;
    OUTLINED_FUNCTION_5_13();
    v131 = v249;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v118 ^ v119 | v117))
    {
      goto LABEL_62;
    }

    if (v108 <= -9.2234e18)
    {
      goto LABEL_63;
    }

    if (v108 >= 9.2234e18)
    {
      goto LABEL_64;
    }

    v132 = swift_isUniquelyReferenced_nonNull_native();
    v263 = v88;
    if ((v132 & 1) == 0)
    {
      v191 = OUTLINED_FUNCTION_6_13(v132, v133, v134, v255);
      sub_237BC0EB4(v191, v192, v193, v194);
      v255 = v195;
    }

    v135 = v93;
    v137 = *(v255 + 16);
    v136 = *(v255 + 24);
    OUTLINED_FUNCTION_20_5();
    v247 = v92;
    v139 = v94;
    if (v95)
    {
      v196 = OUTLINED_FUNCTION_2_18(v138);
      sub_237BC0EB4(v196, v197, v198, v255);
      v255 = v199;
    }

    v140 = v248;
    v141 = v259;
    v248(v249, v259);
    v140(v250, v141);
    v140(v258, v141);
    v140(v260, v141);
    v140(v252, v141);
    v140(v251, v141);
    v142 = v255;
    *(v255 + 16) = v131;
    *(v142 + 8 * v137 + 32) = v108;
    v30 = v239 + 2;
    ++v265;
    v32 = v139;
    v33 = v135;
    v31 = v263;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
  inited = swift_initStackObject();
  v201 = OUTLINED_FUNCTION_18_9(inited, xmmword_237C0BC00);
  v201[2].n128_u64[0] = v202;
  v201[2].n128_u64[1] = 0xE500000000000000;
  inited[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  v203 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
  inited[3].n128_u64[0] = v263;
  inited[5].n128_u64[0] = v203;
  inited[5].n128_u64[1] = 0x6F69736963657270;
  inited[6].n128_u64[0] = 0xE90000000000006ELL;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  inited[8].n128_u64[0] = v204;
  v205 = sub_237A35F1C(&qword_27DE9B530, &qword_27DE9ACF0, &unk_237C14060);
  inited[6].n128_u64[1] = v256;
  inited[8].n128_u64[1] = v205;
  inited[9].n128_u64[0] = 0x6C6C61636572;
  inited[11].n128_u64[1] = v204;
  inited[12].n128_u64[0] = v205;
  v206 = v257;
  inited[9].n128_u64[1] = 0xE600000000000000;
  inited[10].n128_u64[0] = v206;
  strcpy(&inited[12].n128_i8[8], "actual_count");
  inited[13].n128_u8[5] = 0;
  inited[13].n128_u16[3] = -5120;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  inited[15].n128_u64[0] = v207;
  v208 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  inited[15].n128_u64[1] = v208;
  inited[13].n128_u64[1] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  v209 = sub_237C085AC();
  if (v236)
  {
    v270 = v207;
    v271 = v208;
    v268 = v32;
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_3_15();
    v211 = *(v210 + 64);
    MEMORY[0x28223BE20](v212);
    OUTLINED_FUNCTION_2_0();
    v214 = OUTLINED_FUNCTION_24_7(v213);
    v215(v214);
    sub_237A362AC(*v32, 0xD000000000000013, 0x8000000237C16FC0, &qword_237C0C2A0, &v266);
    __swift_destroy_boxed_opaque_existential_1(v267);
    v270 = v207;
    v271 = v208;
    v268 = v247;
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_3_15();
    v217 = *(v216 + 64);
    MEMORY[0x28223BE20](v218);
    OUTLINED_FUNCTION_2_0();
    v220 = OUTLINED_FUNCTION_24_7(v219);
    v221(v220);
    sub_237A362AC(*v32, 0xD00000000000001ALL, 0x8000000237C16FE0, &qword_237C0C2A0, &v266);
    __swift_destroy_boxed_opaque_existential_1(v267);
    v222 = v266;
    v270 = v207;
    v271 = v208;
    v268 = v255;
    v223 = OUTLINED_FUNCTION_28_2();
    v266 = v222;
    __swift_mutable_project_boxed_opaque_existential_1(v267, v267[3]);
    OUTLINED_FUNCTION_3_15();
    v225 = *(v224 + 64);
    MEMORY[0x28223BE20](v226);
    OUTLINED_FUNCTION_2_0();
    v229 = (v228 - v227);
    (*(v230 + 16))(v228 - v227);
    sub_237A362AC(*v229, 0xD000000000000016, 0x8000000237C17000, v223, &v266);
    __swift_destroy_boxed_opaque_existential_1(v267);
    v209 = v266;
  }

  else
  {
  }

  v231 = v237;
  MLDataTable.init(dictionary:)(v209, &v268);
  if (!v231)
  {
    v232 = v269;
    v233 = v235;
    *v235 = v268;
    *(v233 + 8) = v232;
  }
}

uint64_t sub_237A35F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_237A35F84(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_19;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = result;
  v5 = sub_237A36094(a2 - result, 0);
  result = sub_237A36110(v13, (v5 + 4), v2, v4, a2);
  if (result != v2)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5[2];
  if (v6 < 2)
  {
    return v5;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_15;
    }

    v10 = v5[2];
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_18;
    }

    v11 = v5[i];
    v12 = v5[v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237A36198(v5);
      v5 = result;
    }

    v5[i] = v12;
    v5[v8] = v11;
LABEL_15:
    --v8;
    if (!--v7)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void *sub_237A36094(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_237A36110(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_237A361AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_237A362AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  v28 = v9;
  v29 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  *&v27 = a1;
  v10 = *a5;
  v11 = sub_237ACAC78(a2, a3);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B548, &qword_237C0D650);
  if ((sub_237C090AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a5;
  v16 = sub_237ACAC78(a2, a3);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a5;
  if (v14)
  {
    v19 = (v18[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return sub_237A1FCF0(&v27, v19);
  }

  else
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v9);
    v22 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v21);
    v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_237A364C4(v13, a2, a3, *v24, v18);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }
}

uint64_t sub_237A364C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  v17 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_237A1FCF0(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_237A365A8()
{
  result = qword_27DE9AF58;
  if (!qword_27DE9AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF58);
  }

  return result;
}

unint64_t sub_237A36634()
{
  result = qword_27DE9ACF8;
  if (!qword_27DE9ACF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9ACF8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_4_15(__n128 *a1)
{
  result = v1[15];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 32) = *(v2 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_19_9()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_21_9()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_26_5()
{
  *(v0 + 272) = v1;
  v3 = *(v0 + 304);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v3);
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return sub_237C067DC();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  sub_237A1FCF0((v0 + 320), v0 + 280);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_38_2()
{
  v2 = *(v0 + 152);
  v3 = *(v0 + 224);

  return sub_237C0684C();
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 88) = 0;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  sub_237A36A14(a1, v23 - v22);
  v27[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
  sub_237A375E4(v24, boxed_opaque_existential_0);
  sub_237A37648(a1);
  return sub_2379DAE54(v27, a5);
}

uint64_t sub_237A36A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v0, &v2, &qword_27DE9A998, &unk_237C0C100);
  if (v3)
  {
    sub_2379DAD24(&v2, &v4);
    type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 88) = 0;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  v12 = v9;
  v13 = v10;
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v12);
}

uint64_t sub_237A36B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B560, &qword_237C0D760);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v27;
  sub_237C0716C();
  *(a3 + 56) = v28;
  *(a3 + 64) = sub_237C070AC();
  sub_237C0710C();
  *(a3 + 72) = v29;
  sub_237C0712C();
  *(a3 + 80) = v30;
  v37 = a2;
  sub_2379D8FF4(a2, v15, &qword_27DE9A9A0, &qword_237C0BF60);
  v31 = 1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v11, v15, v6);
    (*(v7 + 16))(v19, v11, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v11, v6);
    v31 = 0;
  }

  __swift_storeEnumTagSinglePayload(v19, v31, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_2379D9054(v19, &qword_27DE9B560, &qword_237C0D760);
    }
  }

  else
  {
    sub_237A375E4(v19, v26);
  }

  v38[3] = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
  sub_237A375E4(v26, boxed_opaque_existential_0);
  sub_2379D9054(v37, &qword_27DE9A9A0, &qword_237C0BF60);
  v33 = sub_237C071DC();
  OUTLINED_FUNCTION_4(v33);
  (*(v34 + 8))(a1);
  return sub_2379DAE54(v38, a3);
}

uint64_t MLRandomForestRegressor.ModelParameters.description.getter()
{
  v10[2] = 0x747065442078614DLL;
  v10[3] = 0xEB00000000203A68;
  v10[0] = v0[4];
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  v10[0] = 0xD000000000000010;
  v10[1] = 0x8000000237C16E00;
  v2 = v0[5];
  v3 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  v4 = v0[6];
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  strcpy(v10, "Random Seed: ");
  HIWORD(v10[1]) = -4864;
  v5 = v0[8];
  v6 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  v7 = v0[9];
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  v8 = v0[10];
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v10[0], v10[1]);

  return 0x747065442078614DLL;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  result = sub_2379D8FF4(v1, &v11, &qword_27DE9A998, &unk_237C0C100);
  if (v12)
  {
    sub_2379DAD24(&v11, &v13);
    swift_dynamicCast();
    sub_237AB9BB8(a1);
    return sub_237A37648(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A37290@<X0>(uint64_t a1@<X8>)
{
  result = MLRandomForestRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A372D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = *a1;
  v12 = *(a1 + 8);
  v16[3] = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  if (v12 == 255)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v10 = v11;
    *(v10 + 8) = v12 & 1;
  }

  else
  {
    sub_2379DBC84(v11, v12);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A375E4(v10, boxed_opaque_existential_0);
  return sub_2379DAE54(v16, v2);
}

void (*MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A37474;
}

void sub_237A37474(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    v5 = *a1;
    v6 = v3;
    sub_2379DBCDC(v2, v3);
    MLRandomForestRegressor.ModelParameters.validationData.setter(&v5);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v5 = *a1;
    v6 = v3;
    MLRandomForestRegressor.ModelParameters.validationData.setter(&v5);
  }
}

uint64_t sub_237A37508(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A36A14(a1, v5);
  return MLRandomForestRegressor.ModelParameters.validation.setter(v5);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A375E4(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

uint64_t sub_237A375E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A37648(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MLRandomForestRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v5 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData();
  v4[17] = v5;
  OUTLINED_FUNCTION_4(v5);
  v7 = *(v6 + 64);
  v4[18] = __swift_coroFrameAllocStub(v7);
  v4[19] = __swift_coroFrameAllocStub(v7);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A377A4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A377A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A36A14((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A375E4(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A37648(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A375E4(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLRandomForestRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLRandomForestRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_237C0924C();
}

id sub_237A37A64()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_21_2();
  v1 = sub_237C086BC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_237A37AEC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(a1);
  v5 = sub_237C086BC();

  OUTLINED_FUNCTION_7_12();
  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  inited[4].n128_u64[0] = 0xEA0000000000656DLL;
  v7 = sub_237C086BC();
  OUTLINED_FUNCTION_3_17(v7);
  inited[5].n128_u64[1] = 0xE800000000000000;
  v8 = sub_237C08B0C();
  OUTLINED_FUNCTION_1_14(v8);
  v10 = v9;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(31, v11);
  OUTLINED_FUNCTION_6_14();
  return v10 & 1;
}

uint64_t sub_237A37C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237C086BC();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v9[4] = sub_237A38120;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_237A37CF0;
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);

  v7 = AnalyticsSendEventLazy();
  _Block_release(v6);

  return v7;
}

id sub_237A37CF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_237A380A4();
    v5 = sub_237C0855C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_237A37D7C()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_237A383A4(v0);
  if (!v2)
  {
    return 0xD000000000000014;
  }

  return result;
}

uint64_t sub_237A37DD8(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_237B980B4(a1);
  v11 = v5;
  if (v4 != 2)
  {
    if (a2)
    {
      v6 = 0x68636E7953202D20;
    }

    else
    {
      v6 = 0x636E797341202D20;
    }

    if (a2)
    {
      v7 = 0xEE0073756F6E6F72;
    }

    else
    {
      v7 = 0xEF73756F6E6F7268;
    }

    MEMORY[0x2383DC360](v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = 0x6574616C706D6554;
  *(inited + 40) = 0xE800000000000000;
  sub_237B980B4(a1);
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 48) = a1;
  *(inited + 56) = 0x656C646E7542;
  *(inited + 64) = 0xE600000000000000;
  sub_237A37D7C();
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 72) = a1;
  *(inited + 80) = 0x6574616C706D6554;
  *(inited + 88) = 0xEF65736F62726556;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 96) = a1;
  sub_237A380A4();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(32, v9);
  OUTLINED_FUNCTION_6_14();
  return v11 & 1;
}

uint64_t sub_237A37F70(char a1)
{
  CFAbsoluteTimeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(a1);
  v5 = sub_237C086BC();

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = 1802723668;
  inited[4].n128_u64[0] = 0xE400000000000000;
  inited[4].n128_u64[1] = sub_237C086BC();
  inited[5].n128_u64[0] = 0x6E6F697461727544;
  inited[5].n128_u64[1] = 0xE800000000000000;
  v6 = sub_237C08A5C();
  OUTLINED_FUNCTION_1_14(v6);
  v8 = v7;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(33, v9);
  OUTLINED_FUNCTION_6_14();
  return v8 & 1;
}

unint64_t sub_237A380A4()
{
  result = qword_27DE9B570;
  if (!qword_27DE9B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9B570);
  }

  return result;
}

uint64_t sub_237A380E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237A38140(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(a1);
  v5 = sub_237C086BC();

  OUTLINED_FUNCTION_7_12();
  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  inited[4].n128_u64[0] = 0xEA0000000000656DLL;
  v7 = sub_237C086BC();
  OUTLINED_FUNCTION_3_17(v7);
  inited[5].n128_u64[1] = 0xE800000000000000;
  v8 = sub_237C08A9C();
  OUTLINED_FUNCTION_1_14(v8);
  v10 = v9;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(31, v11);
  OUTLINED_FUNCTION_6_14();
  return v10 & 1;
}

uint64_t sub_237A3825C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v3 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v3[2].n128_u64[0] = v4;
  v3[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(a1);
  v5 = sub_237C086BC();

  inited[3].n128_u64[0] = v5;
  strcpy(&inited[3].n128_i8[8], "ParameterName");
  inited[4].n128_u16[3] = -4864;
  inited[4].n128_u64[1] = sub_237C086BC();
  strcpy(&inited[5], "ParameterValue");
  inited[5].n128_u8[15] = -18;
  v6 = sub_237C086BC();
  OUTLINED_FUNCTION_1_14(v6);
  v8 = v7;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(36, v9);
  OUTLINED_FUNCTION_6_14();
  return v8 & 1;
}

uint64_t sub_237A383A4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_237C086EC();

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = 0x656C646E7542;
  v1[14] = 0xE600000000000000;

  return sub_237A37D7C();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 80) = 0x797469746E617551;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_237A37C08(v4, a2, v2);
}

uint64_t OUTLINED_FUNCTION_6_14()
{
}

unint64_t OUTLINED_FUNCTION_8_12()
{
  *(v0 + 120) = v1;

  return sub_237A380A4();
}

uint64_t sub_237A384C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  v5 = OUTLINED_FUNCTION_0(v4);
  v60 = v6;
  v61 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  v11 = OUTLINED_FUNCTION_0(v10);
  v62 = v12;
  v63 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  v16 = OUTLINED_FUNCTION_0(v15);
  v56 = v17;
  v57 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v58 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = sub_237C0602C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v65 = v26;
  v66 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v25);
  v30 = MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v55 - v31;
  OUTLINED_FUNCTION_1_15();
  sub_237C05DFC();
  v33 = sub_237C05FFC();
  if (v33 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778))
  {
    OUTLINED_FUNCTION_1_15();
    v41 = sub_237C05DEC();
    MEMORY[0x28223BE20](v41);
    *(&v55 - 2) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    v42 = v69;
    sub_237C05F6C();
    if (v42)
    {
      v43 = OUTLINED_FUNCTION_2_19();
LABEL_9:
      v45(v43, v44);
      return (*(v65 + 8))(v32, v66);
    }

    v69 = 0;
    v49 = OUTLINED_FUNCTION_2_19();
    v50(v49);
    v51 = v57;
    sub_237C05EBC();
LABEL_12:
    (*(v56 + 8))(v23, v51);

    sub_237C05E0C();
    return (*(v65 + 8))(v32, v66);
  }

  v34 = v64;
  v35 = sub_237C05FFC();
  if (v35 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080))
  {
    v63 = a1;
    OUTLINED_FUNCTION_1_15();
    v46 = sub_237C05DEC();
    MEMORY[0x28223BE20](v46);
    *(&v55 - 2) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    v23 = v58;
    v47 = v61;
    v48 = v69;
    sub_237C05F6C();
    if (v48)
    {
      v43 = OUTLINED_FUNCTION_2_19();
      v44 = v47;
      goto LABEL_9;
    }

    v69 = 0;
    v52 = OUTLINED_FUNCTION_2_19();
    v53(v52, v47);
    v51 = v57;
    sub_237C05EBC();
    goto LABEL_12;
  }

  v36 = sub_237C05FFC();
  if (v36 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30))
  {
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0x27206E6D756C6F43, 0xE800000000000000);
    v37 = OUTLINED_FUNCTION_1_15();
    MEMORY[0x2383DC360](v37);
    MEMORY[0x2383DC360](0xD00000000000003FLL, 0x8000000237C18B10);
    v38 = v67;
    v39 = v68;
    sub_2379E8AF0();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 0u;
    *(v40 + 32) = 0u;
    *(v40 + 48) = 1;
    swift_willThrow();
  }

  return (*(v65 + 8))(v32, v66);
}

uint64_t sub_237A38AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;

  result = a3(a2, v8);
  if (!v4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v10);
  }

  return result;
}

void MLImageClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v3 = _s5ModelVMa_1();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = sub_237C07F1C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v51 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = sub_237C05ADC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  memcpy(__dst, a2, sizeof(__dst));
  v35 = v55;
  sub_2379F25FC();
  if (!v35)
  {
    v48 = v15;
    v49 = v34;
    v55 = v26;
    MLImageClassifier.ModelParameters.algorithm.getter(v25);
    sub_237A38FB0(v25, v20);
    v36 = type metadata accessor for MLImageClassifier();
    sub_237A39014(v50 + *(v36 + 32), v7);
    v37 = *&__dst[8];
    if (*&__dst[8])
    {
      v38 = *__dst;
      v40 = *&__dst[16];
      v39 = *&__dst[24];
      v41 = *&__dst[32];
      v43 = *&__dst[48];
      v42 = *&__dst[56];
      v44 = *&__dst[64];
    }

    else
    {
      v45 = NSFullUserName();
      v38 = sub_237C086EC();
      v37 = v46;

      v44 = 0;
      v39 = 0x8000000237C17C90;
      v41 = 0uLL;
      v42 = 0xE100000000000000;
      v40 = 0xD000000000000033;
      v43 = 49;
    }

    *__src = v38;
    *&__src[8] = v37;
    *&__src[16] = v40;
    *&__src[24] = v39;
    *&__src[32] = v41;
    *&__src[48] = v43;
    *&__src[56] = v42;
    *&__src[64] = v44;
    sub_237A39078(__dst, v52);
    sub_237A62AC0();
    memcpy(v52, __src, sizeof(v52));
    sub_2379FC064(v52);
    OUTLINED_FUNCTION_1_16();
    sub_237C07E5C();
    v47 = v55;
    (*(v51 + 8))(v48, v8);
    OUTLINED_FUNCTION_2_20();
    (*(v29 + 8))(v49, v47);
  }
}

uint64_t sub_237A38FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39014(uint64_t a1, uint64_t a2)
{
  v4 = _s5ModelVMa_1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADE0, &unk_237C0BF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A390E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLImageClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  v6 = sub_237C05ADC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_2379F29AC(countAndFlagsBits, object, 0x616C436567616D49, 0xEF72656966697373);
  if (!v2)
  {
    MLImageClassifier.write(to:metadata:)(v14, metadata);
    (*(v9 + 8))(v14, v6);
  }
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return sub_237A390E8(v0, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_237A390E8(v0, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t sub_237A392BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters()
{
  result = qword_27DE9B5A0;
  if (!qword_27DE9B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLSoundClassifier.ModelParameters.maxIterations.setter()
{
  OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLSoundClassifier.ModelParameters();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.maxIterations.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLSoundClassifier.ModelParameters() + 20);
  return nullsub_1;
}

uint64_t MLSoundClassifier.ModelParameters.overlapFactor.setter(double a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.overlapFactor.modify())(void)
{
  OUTLINED_FUNCTION_46();
  v0 = *(type metadata accessor for MLSoundClassifier.ModelParameters() + 24);
  return nullsub_1;
}

void MLSoundClassifier.ModelParameters.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v3 = OUTLINED_FUNCTION_2_21(v2);
  v5 = sub_2379F6D68(v3, v4);
  if (!v18)
  {
    sub_237A286E0(v17);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_19(v5, v6, v7, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v8, v9, v10, v11, v14);
  if (!swift_dynamicCast())
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v12 = v15;
  v13 = v16;
LABEL_6:
  *a1 = v12;
  *(a1 + 8) = v13;
}

void sub_237A395A0(uint64_t a1@<X8>)
{
  MLSoundClassifier.ModelParameters.algorithm.getter(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_237A395E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return MLSoundClassifier.ModelParameters.algorithm.setter(&v3);
}

uint64_t MLSoundClassifier.ModelParameters.algorithm.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v8 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v6 = v2;
  v7 = v3;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters();
  return sub_2379DAE54(&v6, v1 + *(v4 + 28));
}

void (*MLSoundClassifier.ModelParameters.algorithm.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(type metadata accessor for MLSoundClassifier.ModelParameters() + 28);
  *(v3 + 11) = v4;
  sub_2379F6D68(v1 + v4, v3);
  if (!v3[3])
  {
    sub_237A286E0(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v5 = v3[6];
  v6 = *(v3 + 56);
LABEL_6:
  v3[4] = v5;
  *(v3 + 40) = v6;
  return sub_237A3973C;
}

void sub_237A3973C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 64);
  v1[3] = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *v1 = v2;
  *(v1 + 8) = v3;
  sub_2379DAE54(v1, v5 + v4);

  free(v1);
}

double MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v2 = OUTLINED_FUNCTION_2_21(v1);
  v4 = sub_2379F6D68(v2, v3);
  if (v17)
  {
    OUTLINED_FUNCTION_0_19(v4, v5, v6, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v7, v8, v9, v10, v13);
    if ((swift_dynamicCast() & 1) != 0 && (v15 & 1) == 0 && v14 == 1)
    {
      return 0.975;
    }
  }

  else
  {
    sub_237A286E0(v16);
  }

  v11 = (v0 + *(v1 + 32));
  if (v11[8])
  {
    return 0.975;
  }

  return *v11;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.setter(double a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters();
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *a1 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return sub_237A398C4;
}

uint64_t sub_237A398C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  result = type metadata accessor for MLSoundClassifier.ModelParameters();
  v4 = v1 + *(result + 32);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:)()
{
  OUTLINED_FUNCTION_7_13();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v6 = (v1 + *(v5 + 28));
  *v6 = 0u;
  v6[1] = 0u;
  v7 = OUTLINED_FUNCTION_1_17(v5);
  sub_237A392BC(v7, v8);
  OUTLINED_FUNCTION_6_15();
  v12 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v10 = v3;
  v11 = v4;
  sub_237A3A018(v0);
  return sub_2379DAE54(&v10, v6);
}

void MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:)()
{
  OUTLINED_FUNCTION_7_13();
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v2 = (v0 + *(v1 + 28));
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OUTLINED_FUNCTION_1_17(v1);
  sub_237A3A074(v3, v4);
  OUTLINED_FUNCTION_6_15();
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v14 = (a4 + v13[7]);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = a4 + v13[8];
  *v15 = 0;
  *(v15 + 8) = 1;
  *(a4 + v13[9]) = 32;
  sub_237A392BC(a1, a4);
  *(a4 + v13[5]) = a2;
  *(a4 + v13[6]) = a5;
  v24 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v22 = v11;
  LOBYTE(v23) = v12;
  sub_2379DAE54(&v22, v14);
  *v15 = a6;
  *(v15 + 8) = 0;
  if (a6 < 0.5)
  {
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_9_10();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v16 = v22;
    v17 = v23;
    sub_237C08C4C();
    sub_237BABE74(v16, v17);

    result = sub_237A3A018(a1);
    v19 = 0x3FE0000000000000;
LABEL_5:
    *v15 = v19;
    *(v15 + 8) = 0;
    return result;
  }

  if (a6 > 15.0)
  {
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_9();
    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_10_9();
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v20 = v22;
    v21 = v23;
    sub_237C08C4C();
    sub_237BABE74(v20, v21);

    result = sub_237A3A018(a1);
    v19 = 0x402E000000000000;
    goto LABEL_5;
  }

  return sub_237A3A018(a1);
}

uint64_t MLSoundClassifier.ModelParameters.FeaturePrintType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

void sub_237A39CD0()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v1 = OUTLINED_FUNCTION_2_21(v0);
  v3 = sub_2379F6D68(v1, v2);
  if (!v17)
  {
    sub_237A286E0(&v15);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_19(v3, v4, v5, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v6, v7, v8, v9, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v10 = v13;
  v11 = v14;
LABEL_6:
  v15 = v10;
  v16 = v11;
  sub_237AC91A0();
}

unint64_t MLSoundClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v16 = 0xD000000000000010;
  v17 = 0x8000000237C16E00;
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters();
  v19 = *(v0 + v1[5]);
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C18C30);
  v3 = *(v0 + v1[6]);
  sub_237C08A8C();
  MEMORY[0x2383DC360](10, 0xE100000000000000);

  MEMORY[0x2383DC360](0, 0xE000000000000000);

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_237C08EDC();

  v19 = 0xD000000000000010;
  v20 = 0x8000000237C18C50;
  v4 = sub_2379F6D68(v0 + v1[7], &v16);
  if (v18)
  {
    OUTLINED_FUNCTION_0_19(v4, v5, v6, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v7, v8, v9, v10, v15);
    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_237A286E0(&v16);
  }

  OUTLINED_FUNCTION_8_13();
LABEL_6:
  v16 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v17 = v11;

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

  MEMORY[0x2383DC360](v16, v17);

  v12 = v19;
  v13 = v20;
  v16 = 0xD000000000000010;
  v17 = 0x8000000237C16E00;

  MEMORY[0x2383DC360](v12, v13);

  return v16;
}

unint64_t MLSoundClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLSoundClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A3A018(uint64_t a1)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A3A074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237A3A0DC()
{
  result = qword_27DE9B598;
  if (!qword_27DE9B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B598);
  }

  return result;
}

uint64_t sub_237A3A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 28) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_237A3A26C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_237A3A318()
{
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData();
  if (v0 <= 0x3F)
  {
    sub_2379F1F74(319, &qword_27DE9B5B0);
    if (v1 <= 0x3F)
    {
      sub_2379F1F74(319, &qword_27DE9B5B8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s15ModelParametersV16FeaturePrintTypeOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x237A3A48CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{
  v3 = v2 + *(a1 + 32);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v2 + *(a1 + 36)) = 32;
  return v1;
}

void OUTLINED_FUNCTION_3_18()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_4_16()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_237C08EDC();
}

id MLDataTable.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2379DBCF4(v2, v3);
}

uint64_t sub_237A3A778(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A3A78C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_237A3A820@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  result = sub_237A90128(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A3A854(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = sub_237A90128(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237A3A888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  result = sub_237A8FD60(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A3A8C0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  v6 = *(v2 + 8);
  return sub_237A018D0();
}

uint64_t sub_237A3A8D4@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Rows.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A3A944(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
}

uint64_t sub_237A3A9A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = sub_237A8FC1C();
  *a1 = result;
  a1[1] = v6;
  return result;
}

BOOL sub_237A3A9D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_237AC197C();
}

uint64_t sub_237A3A9DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_237A01584();
}

uint64_t sub_237A3A9E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = *v4;
  v8 = *(v4 + 8);
  result = sub_237A8FF00(*a1, a2);
  *a4 = result;
  *(a4 + 8) = v10 & 1;
  return result;
}

uint64_t sub_237A3AA28(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return sub_237B6A814(*a1, *a2, a2[1]);
}

uint64_t sub_237A3AA40(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return sub_237A3A778(*a1, *a2, a2[1]);
}

uint64_t sub_237A3AA58(uint64_t *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  return sub_237A90618(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_237A3AA74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  result = sub_237B6A8E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A3AAA8(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = sub_237B6A8E8(*a1);
  *a1 = result;
  return result;
}

void sub_237A3AADC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t MLDataTable.Rows.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_2_22();
  v3 = OUTLINED_FUNCTION_1_18();
  v29 = v3;
  v4 = 0x2020203A7379654BLL;
  if (v3 < 1)
  {
    v4 = 0x2020203A79654BLL;
  }

  v5 = 0xE800000000000000;
  if (v3 < 1)
  {
    v5 = 0xE700000000000000;
  }

  v34 = v4;
  v35 = v5;
  OUTLINED_FUNCTION_2_22();
  v6 = OUTLINED_FUNCTION_1_18();
  if (v6 >= 10)
  {
    v7 = 10;
  }

  else
  {
    v7 = v6;
  }

  if (v6 < 0)
  {
LABEL_35:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = 0;
    v28 = v7;
    v27 = v2;
    while (v8 != v7)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_3_19();
        MLDataTable.Rows.subscript.getter(v9, v8);

        MLDataTable.Row.Values.description.getter();

        OUTLINED_FUNCTION_4_17();

        v31 = 0x2020202020200A20;
        v32 = v30;

        MEMORY[0x2383DC360](32, 0xE100000000000000);

        MEMORY[0x2383DC360](v31, v32);
      }

      else
      {
        LOBYTE(v30) = v2;
        MLDataTable.Rows.subscript.getter(&v31, 0);

        v10 = sub_237A2E9F4();
        v11 = sub_237A017E8(0, v10);
        v12 = sub_237A2E9F4();
        if (sub_237A017E8(0, v12) < 0)
        {
          goto LABEL_33;
        }

        v13 = sub_237A2E9F4();
        v14 = sub_237A017E8(0, v13);
        if (v11 < 0 || v14 < v11)
        {
          goto LABEL_34;
        }

        if (v11)
        {
          v33 = MEMORY[0x277D84F90];
          sub_237AC8A74();
          v15 = 0;
          v16 = v33;
          do
          {
            sub_237A2E9C8(v15);
            v17 = sub_237A2DE60();
            v19 = v18;

            v33 = v16;
            v20 = *(v16 + 16);
            if (v20 >= *(v16 + 24) >> 1)
            {
              sub_237AC8A74();
              v16 = v33;
            }

            ++v15;
            *(v16 + 16) = v20 + 1;
            v21 = v16 + 16 * v20;
            *(v21 + 32) = v17;
            *(v21 + 40) = v19;
          }

          while (v11 != v15);
          v2 = v27;
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

        v22 = MEMORY[0x2383DC4F0](v16, MEMORY[0x277D837D0]);
        v24 = v23;

        MEMORY[0x2383DC360](v22, v24);

        if (v29 < 1)
        {
          MEMORY[0x2383DC360](0x203A65756C61560ALL, 0xE800000000000000);
        }

        else
        {
          OUTLINED_FUNCTION_3_19();
          MLDataTable.Rows.subscript.getter(v25, 0);

          MLDataTable.Row.Values.description.getter();

          OUTLINED_FUNCTION_4_17();

          MEMORY[0x2383DC360](0x3A7365756C61560ALL, v30);
        }

        v7 = v28;
        v8 = 0;
      }

      if (++v8 == v7)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  OUTLINED_FUNCTION_2_22();
  if (v7 < OUTLINED_FUNCTION_1_18())
  {
    MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
  }

  return v34;
}