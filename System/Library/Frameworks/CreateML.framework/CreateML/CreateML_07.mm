uint64_t sub_237A672B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C0818C();
  v39 = OUTLINED_FUNCTION_0(v6);
  v40 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = sub_237C07F1C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_0();
  v41 = (v19 - v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v36 - v22;
  sub_237C07F0C();
  sub_237C07E0C();

  sub_237C07DEC();
  sub_237C07DCC();
  v24 = v42;
  sub_237A662E8(v23);
  if (v24)
  {
    return (*(v16 + 8))(a3, v13);
  }

  v37 = v12;
  v38 = v23;
  v42 = v13;
  sub_237A667D4(a1, a2, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v36 = *(v16 + 72);
  v26 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_237C0B670;
  v28 = v27 + v26;
  v29 = *(v16 + 16);
  v30 = v42;
  v29(v28, v38, v42);
  v31 = v28 + v36;
  v32 = v41;
  v29(v31, v41, v30);
  v33 = v37;
  sub_237C07D3C();
  (*(v40 + 104))(v33, *MEMORY[0x277D25368], v39);
  sub_237C07E4C();
  sub_237C07E8C();
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  v34 = *(v16 + 8);
  v34(v32, v30);
  v35 = OUTLINED_FUNCTION_5_21();
  return (v34)(v35);
}

uint64_t OUTLINED_FUNCTION_6_22()
{

  return sub_237C0750C();
}

uint64_t sub_237A6763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C05DBC();
  v7 = OUTLINED_FUNCTION_135(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  v12 = OUTLINED_FUNCTION_135(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_237A6774C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t _s20PersistentParametersVMa_3()
{
  result = qword_27DE9BB98;
  if (!qword_27DE9BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A67890()
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

uint64_t sub_237A6793C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
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
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DE9BBA8, &qword_237C0E8A8);
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
  v170 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData();
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
  v61 = _s20PersistentParametersVMa_3();
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
  *v101 = 0u;
  *(v101 + 16) = 0u;
  *(v101 + 32) = 10;
  *(v101 + 40) = xmmword_237C0CFC0;
  *(v101 + 56) = xmmword_237C0CFD0;
  *(v101 + 72) = 1;
  v102 = v163;
  sub_237A65C40(v99, v163);
  v179 = v100;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v178);
  sub_237A65874(v102, boxed_opaque_existential_0);
  sub_237A65818(v99);
  sub_237A2A9FC(&v178, v101, &qword_27DE9A998, &unk_237C0C100);
  *(v101 + 32) = v139;
  *(v101 + 40) = v86;
  *(v101 + 48) = v87;
  *(v101 + 56) = v89;
  *(v101 + 64) = v90;
  v163 = v101;
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
      sub_2379D9054(v168, qword_27DE9BBA8, &qword_237C0E8A8);
    }
  }

  else
  {
    sub_237A65874(v168, v164);
  }

  v179 = v170;
  v135 = __swift_allocate_boxed_opaque_existential_0(&v178);
  sub_237A65874(v164, v135);
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

uint64_t sub_237A68BC0(uint64_t a1)
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
  v26 = _s20PersistentParametersVMa_3();
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
  *(inited + 144) = *(v32 + 32);
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

void MLRegressorMetrics.init(maximumError:rootMeanSquaredError:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

unint64_t MLRegressorMetrics.description.getter()
{
  if (*(v0 + 16))
  {
    return 0xD000000000000038;
  }

  v2 = *v0;
  if (*v0 < 0.0)
  {
    return 0xD000000000000038;
  }

  v3 = *(v0 + 8);
  if (v3 < 0.0)
  {
    return 0xD000000000000038;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D839F8];
  *(v4 + 16) = xmmword_237C0B660;
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v2;
  v7 = sub_237C0871C();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_237C0B660;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = v3;
  v9 = sub_237C0871C();
  v11 = v10;

  MEMORY[0x2383DC360](v9, v11);

  return v7;
}

id MLRegressorMetrics.error.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

double MLRegressorMetrics.maximumError.getter()
{
  result = *v0;
  if (*(v0 + 16))
  {
    return -1.0;
  }

  return result;
}

double MLRegressorMetrics.rootMeanSquaredError.getter()
{
  result = *(v0 + 8);
  if (*(v0 + 16))
  {
    return -1.0;
  }

  return result;
}

unint64_t MLRegressorMetrics.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_0_29();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_237A02218(v2, v4, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v6;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_237A69554(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A69594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t OUTLINED_FUNCTION_0_29()
{
  v3 = *v0;
  v4 = *(v0 + 16);

  return MLRegressorMetrics.description.getter();
}

uint64_t sub_237A6961C(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0947C();
  v5[6] = a2;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_237C089DC();
  swift_getWitnessTable();
  sub_237C092BC();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_237A69700(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  return sub_237A6961C(a1, *v3);
}

uint64_t sub_237A69728(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237C0944C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_237C089DC();
    swift_getWitnessTable();
    sub_237C092AC();
    swift_getWitnessTable();
    sub_237C08AEC();
    v4 = sub_237A47294();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_237A698A8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  result = sub_237A69728(a1);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v11;
  }

  return result;
}

uint64_t sub_237A698E4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t MLSoundClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t sub_237A699FC()
{
  result = qword_27DE9BC30;
  if (!qword_27DE9BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC30);
  }

  return result;
}

_BYTE *_s14descr284ABE0A1V14ClassifierTypeOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x237A69B0CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A69B44(uint64_t a1@<X8>)
{
  v125 = a1;
  v2 = sub_237C0818C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v124 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v123 = v8 - v7;
  OUTLINED_FUNCTION_41_0();
  v136 = sub_237C07B9C();
  v9 = OUTLINED_FUNCTION_0(v136);
  v122 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v117 = v14 - v13;
  OUTLINED_FUNCTION_41_0();
  v121 = sub_237C075DC();
  v15 = OUTLINED_FUNCTION_0(v121);
  v119 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v120 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = (&v112 - v23);
  OUTLINED_FUNCTION_41_0();
  v24 = sub_237C07F1C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v127 = v26;
  v128 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_0();
  v126 = v29;
  MEMORY[0x28223BE20](v30);
  v130 = &v112 - v31;
  OUTLINED_FUNCTION_41_0();
  v32 = sub_237C0596C();
  v33 = OUTLINED_FUNCTION_0(v32);
  v132 = v34;
  v133 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v39 = v38 - v37;
  v40 = sub_237C05C2C();
  v41 = OUTLINED_FUNCTION_0(v40);
  v131 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_2_0();
  v47 = v46 - v45;
  v48 = sub_237C05ADC();
  v49 = OUTLINED_FUNCTION_0(v48);
  v134 = v50;
  v135 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_0();
  v129 = v53;
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v112 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v112 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v112 - v61;
  v63 = v1[2];
  if (!v63)
  {
    goto LABEL_14;
  }

  v64 = v139;
  v65 = sub_237AC68B4(v1[2], v1[3], v1[4]);
  if (v64)
  {
    return;
  }

  v113 = v63;
  v115 = v1;
  v139 = v65;
  v116 = v62;
  v114 = v2;
  v66 = objc_opt_self();
  v67 = [v66 defaultManager];
  sub_2379F364C();

  v68 = [v66 defaultManager];
  sub_2379F3528();

  sub_237C05C1C();
  v69 = sub_237C05C0C();
  v71 = v70;
  (*(v131 + 1))(v47, v40);
  v137 = v69;
  v138 = v71;
  v73 = v132;
  v72 = v133;
  (*(v132 + 104))(v39, *MEMORY[0x277CC91D8], v133);
  sub_2379F3408();
  sub_237C05ACC();
  (*(v73 + 8))(v39, v72);

  v74 = v134;
  v76 = v134 + 8;
  v75 = *(v134 + 8);
  v77 = v57;
  v78 = v135;
  v75(v77, v135);
  v79 = v116;
  sub_237C05A3C();
  v75(v60, v78);
  v80 = v115 + *(type metadata accessor for TreeRegressorModel() + 24);
  sub_237C06FFC();
  (*(v74 + 16))(v129, v79, v78);
  v81 = v130;
  sub_237C07D8C();
  v132 = 0;
  v82 = v118;
  sub_237A9AA94(v139, v118);
  v83 = v128;
  if (__swift_getEnumTagSinglePayload(v82, 1, v128) == 1)
  {
    __break(1u);
LABEL_14:
    sub_237C090DC();
    __break(1u);
    return;
  }

  v131 = v75;
  sub_237C07EBC();
  v84 = *(v127 + 8);
  v129 = v127 + 8;
  v118 = v84;
  (v84)(v82, v83);
  sub_237C07E9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v85 = v122;
  v86 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v134 = *(v122 + 72);
  v87 = swift_allocObject();
  v112 = xmmword_237C0B660;
  *(v87 + 16) = xmmword_237C0B660;
  v88 = *v115;
  v89 = v115[1];
  swift_bridgeObjectRetain_n();
  v90 = v120;
  sub_237C0755C();
  (*(v119 + 104))(v90, *MEMORY[0x277D25128], v121);

  v133 = v86;
  sub_237C07B3C();
  sub_237C07ECC();
  v120 = v89;
  v121 = v88;
  sub_237C07DEC();
  v91 = MEMORY[0x277D84F90];
  sub_237C085AC();
  sub_237C07EFC();
  sub_237C07F0C();
  sub_237C07E0C();
  v92 = *(v113 + 16);
  if (v92)
  {
    v119 = v76;
    v137 = v91;
    v93 = v113;
    sub_237AC8CF4(0, v92, 0);
    v94 = v137;
    v95 = (v85 + 32);
    v96 = (v93 + 56);
    v97 = v117;
    do
    {
      v98 = *(v96 - 3);
      v99 = *(v96 - 2);
      v100 = *(v96 - 1);
      v101 = *v96;

      sub_237A1E09C(v100, v101);
      sub_237B991A4(v100, v101, v97);

      sub_237A1E0B0(v100, v101);
      v137 = v94;
      v103 = *(v94 + 16);
      v102 = *(v94 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_237AC8CF4(v102 > 1, v103 + 1, 1);
        v94 = v137;
      }

      v96 += 32;
      *(v94 + 16) = v103 + 1;
      (*v95)(v94 + v133 + v103 * v134, v97, v136);
      --v92;
    }

    while (v92);
    v104 = v128;
    v81 = v130;
    v78 = v135;
  }

  else
  {
    v104 = v128;
  }

  v105 = v126;
  sub_237C07E9C();
  sub_237C07EBC();
  sub_237C07ECC();
  sub_237C07DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
  v106 = v127;
  v107 = *(v127 + 72);
  v108 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v109 = swift_allocObject();
  *(v109 + 16) = v112;
  (*(v106 + 16))(v109 + v108, v81, v104);
  v137 = v139;
  sub_237A969F0(v109);
  v110 = v123;
  sub_237C07D2C();
  (*(v124 + 104))(v110, *MEMORY[0x277D25350], v114);
  sub_237C07E4C();
  (v118)(v81, v104);
  (*(v106 + 32))(v125, v105, v104);
  v111 = v116;
  sub_237A64C34();
  v131(v111, v78);
}

uint64_t sub_237A6A5D0()
{
  type metadata accessor for PersistentParametersForTreeBasedMethods();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  sub_237C05DAC();
  sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for AnyTreeClassifier();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = type metadata accessor for AnyClassificationMetrics();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  sub_237A6EFBC();
  return v0;
}

void sub_237A6A6F8()
{
  OUTLINED_FUNCTION_74();
  v132 = v2;
  v3 = v0;
  v134 = v5;
  v135 = v4;
  v136 = v6;
  v133 = v7;
  v139 = v8;
  v10 = v9;
  v130 = *v0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_41_0();
  v15 = sub_237C071DC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v137 = v17;
  v138 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v126 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_20(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v28 = OUTLINED_FUNCTION_20(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v125 = v32;
  OUTLINED_FUNCTION_41_0();
  v33 = sub_237C0602C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v128 = v35;
  v129 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_58();
  v127 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_23();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_94();
  v48 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v49 = OUTLINED_FUNCTION_4(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_0();
  v54 = v53 - v52;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v48);
  sub_237C05DAC();
  v58 = sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
  v62 = type metadata accessor for AnyTreeClassifier();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v62);
  type metadata accessor for AnyTreeClassifierModel();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = type metadata accessor for AnyClassificationMetrics();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v70);
  sub_237B19700(v10, v133, v132, v136);
  if (v1)
  {

    OUTLINED_FUNCTION_4_25();
    sub_237A6EF64(v134, v78);
    (*(v137 + 8))(v135, v138);
    sub_2379D9054(v139, &qword_27DE9A9A0, &qword_237C0BF60);
    v79 = *(*(v58 - 8) + 8);
    v79(v10, v58);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
    v79(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData, v58);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &qword_27DE9BC70, &qword_237C0EBC8);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &qword_27DE9BC78, &qword_237C0EBD0);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics);
    OUTLINED_FUNCTION_47_5(OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics);
    v80 = *(*v3 + 48);
    v81 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
LABEL_10:
    OUTLINED_FUNCTION_73();
    return;
  }

  v121 = v62;
  v82 = v77;
  (*(*(v58 - 8) + 16))(v54, v10, v58);
  sub_237A40628();
  (*(v137 + 16))(v54 + v48[8], v135, v138);
  v83 = v48[5];
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v58);

  sub_237A6F014();
  v87 = (v54 + v48[6]);
  *v87 = v133;
  v87[1] = v132;
  *(v54 + v48[7]) = v82;
  v131 = v54;
  sub_237A6F06C();
  OUTLINED_FUNCTION_80_0();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v48);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6F014();
  swift_endAccess();
  sub_237A6F06C();
  sub_237C05DFC();
  sub_237C05FFC();
  v91 = *(v128 + 8);
  v91(v127, v129);
  if (swift_dynamicCastMetatype())
  {

    sub_237C05DEC();
    sub_237B43770();
    v93 = v92;

    sub_237C071CC();
    *v125 = v133;
    *(v125 + 8) = v132;
    *(v125 + 16) = v82;
    OUTLINED_FUNCTION_1_3();
    *(v125 + 40) = v82;
    *(v125 + 48) = v94;
    *(v125 + 56) = v95;

    sub_237AE123C(v93);
    OUTLINED_FUNCTION_48_6();

    sub_237AE6A58();
    if (!v10)
    {

      *(v125 + 24) = v82;
      *(v125 + 32) = 1;
      OUTLINED_FUNCTION_57_3();
      v96();
      v97 = v125 + *(v121 + 32);
      sub_237C06D7C();
      OUTLINED_FUNCTION_4_25();
      sub_237A6EF64(v134, v98);
      v99 = *(v137 + 8);
      v99(v135, v138);
      sub_2379D9054(v139, &qword_27DE9A9A0, &qword_237C0BF60);
      v100 = OUTLINED_FUNCTION_58_3();
      v101(v100, v58);
      v99(v126, v138);
      OUTLINED_FUNCTION_0_30();
      sub_237A6EF64(v131, v102);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v121);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
LABEL_9:
      sub_237A6F014();
      swift_endAccess();
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    v93 = v129;
    v127 = v91;
    if (swift_dynamicCastMetatype())
    {

      sub_237C05DEC();
      sub_237B43914();
      v107 = v106;

      sub_237C071CC();
      *v123 = v133;
      *(v123 + 8) = v132;
      *(v123 + 16) = v82;

      sub_237AE1458(v107);
      OUTLINED_FUNCTION_48_6();

      sub_237AE69B4();

      *(v123 + 24) = v10;
      *(v123 + 32) = 0;
      OUTLINED_FUNCTION_1_3();
      *(v123 + 40) = v82;
      *(v123 + 48) = v108;
      *(v123 + 56) = v109;
      OUTLINED_FUNCTION_57_3();
      v110();
      v111 = v123 + *(v121 + 32);
      sub_237C06D7C();
      OUTLINED_FUNCTION_4_25();
      sub_237A6EF64(v134, v112);
      v113 = *(v137 + 8);
      v113(v135, v138);
      sub_2379D9054(v139, &qword_27DE9A9A0, &qword_237C0BF60);
      v114 = OUTLINED_FUNCTION_58_3();
      v115(v114, v58);
      v113(v124, v138);
      OUTLINED_FUNCTION_0_30();
      sub_237A6EF64(v131, v116);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v121);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      goto LABEL_9;
    }
  }

  sub_237C08EDC();

  OUTLINED_FUNCTION_1_3();
  sub_237C05DFC();

  sub_237C05FFC();
  v127(v122, v93);
  v120 = sub_237C094DC();
  MEMORY[0x2383DC360](v120);

  MEMORY[0x2383DC360](46, 0xE100000000000000);
  OUTLINED_FUNCTION_27_5();
  __break(1u);
}

void sub_237A6B348()
{
  OUTLINED_FUNCTION_74();
  v143 = v1;
  v2 = v0;
  v3 = sub_237C0704C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v138 = v5;
  v139 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v147 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  v140 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_23();
  v133 = v19;
  OUTLINED_FUNCTION_41_0();
  v145 = sub_237C071DC();
  v20 = OUTLINED_FUNCTION_0(v145);
  v151 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  v144 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v150 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_58();
  v137 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_20(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_23();
  v136 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v36 = OUTLINED_FUNCTION_20(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_0();
  v146 = v39;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  v43 = &v133 - v42;
  v44 = sub_237C0602C();
  v45 = OUTLINED_FUNCTION_0(v44);
  v141 = v46;
  v142 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v51 = v50 - v49;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55);
  v57 = &v133 - v56;
  v58 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v59 = OUTLINED_FUNCTION_4(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_0();
  v64 = (v63 - v62);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  v65 = OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_73_1(v65, v66, v58);
  if (v67)
  {
    sub_2379D9054(v57, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_30();
  sub_237A6EFBC();
  v68 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  v69 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v69);
  (*(v70 + 24))(v2 + v68, v64);
  swift_endAccess();
  v71 = *(v58 + 20);
  v72 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  sub_237A6EE90(&v64[v71], v2 + v72);
  swift_endAccess();
  v73 = &v64[*(v58 + 24)];
  v74 = v58;
  v76 = *v73;
  v75 = *(v73 + 1);
  OUTLINED_FUNCTION_28_4();
  sub_237C05DFC();
  swift_endAccess();
  sub_237C05FFC();
  (*(v141 + 8))(v51, v142);
  v77 = swift_dynamicCastMetatype();
  v148 = v2;
  v149 = v74;
  v153 = v64;
  if (v77)
  {
    OUTLINED_FUNCTION_28_4();

    sub_237C05DEC();
    swift_endAccess();
    sub_237B43770();
    v79 = v78;
    v80 = *&v64[*(v74 + 28)];

    v81 = v137;
    sub_237C071CC();
    *v43 = v76;
    *(v43 + 1) = v75;
    *(v43 + 2) = v80;
    OUTLINED_FUNCTION_1_3();
    *(v43 + 5) = v80;
    *(v43 + 6) = v82;
    *(v43 + 7) = v83;

    sub_237AE123C(v79);
    OUTLINED_FUNCTION_48_6();
    v152 = v80;

    sub_237AE6A58();
    v142 = v64;
    if (!v64)
    {

      v84 = v151;
      *(v43 + 3) = v152;
      v43[32] = 1;
      v85 = OUTLINED_FUNCTION_30_8();
      v86 = v145;
      v80(v85, v81, v145);
      v87 = v81;
      v88 = type metadata accessor for AnyTreeClassifier();
      v89 = &v43[*(v88 + 32)];
      sub_237C06D7C();
      v143 = *(v84 + 8);
      (v143)(v87, v86);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v90, v91, v92, v88);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      v94 = v146;
      v93 = v147;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_28_4();

    sub_237C05DEC();
    swift_endAccess();
    sub_237B43914();
    v96 = v95;
    v80 = *&v64[*(v149 + 28)];

    v97 = v135;
    sub_237C071CC();
    v98 = v134;
    *v134 = v76;
    v98[1] = v75;
    v98[2] = v80;

    v99 = v143;
    sub_237AE1458(v96);
    v101 = v100;

    v152 = v101;

    sub_237AE69B4();
    v94 = v146;
    v142 = v99;
    if (!v99)
    {

      v102 = v151;
      v98[3] = v152;
      *(v98 + 32) = 0;
      OUTLINED_FUNCTION_1_3();
      v98[5] = v80;
      v98[6] = v103;
      v98[7] = v104;
      v105 = OUTLINED_FUNCTION_30_8();
      v106 = v145;
      v80(v105, v97, v145);
      v88 = type metadata accessor for AnyTreeClassifier();
      v107 = v98 + *(v88 + 32);
      sub_237C06D7C();
      v108 = *(v102 + 8);
      v109 = OUTLINED_FUNCTION_59_2();
      v143 = v110;
      (v110)(v109);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v88);
      v2 = v148;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v86 = v106;
      sub_237A6F014();
      swift_endAccess();
      v93 = v147;
LABEL_8:
      v114 = v2;
      v115 = v144;
      v80(v144, v153 + *(v149 + 32), v86);
      v116 = v114 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      type metadata accessor for AnyTreeClassifier();
      OUTLINED_FUNCTION_73_1(v116, 1, v88);
      if (!v67)
      {
        v80(v150, v115, v86);
        v117 = v116 + *(v88 + 32);
        sub_237C06D6C();
        (v143)(v115, v86);
        swift_endAccess();
        sub_237A40628();
        OUTLINED_FUNCTION_73_1(v94, 1, v88);
        if (!v67)
        {
          v119 = *v94;
          v118 = *(v94 + 8);
          v120 = *(*(v94 + 24) + 16);
          v121 = *(v88 + 32);

          v122 = v142;
          sub_237C06D8C();
          if (!v122)
          {
            v123 = *(v94 + 24);
            v124 = *(v94 + 32);
            v125 = v140;
            *v140 = v119;
            *(v125 + 1) = v118;
            v126 = type metadata accessor for AnyTreeClassifierModel();
            *(v125 + 3) = 0;
            *(v125 + 4) = 0;
            *(v125 + 2) = 0;
            (*(v138 + 32))(&v125[*(v126 + 24)], v93, v139);
            v127 = &v125[*(v126 + 28)];
            *v127 = v123;
            v127[8] = v124;

            OUTLINED_FUNCTION_0_30();
            sub_237A6EF64(v153, v128);
            OUTLINED_FUNCTION_3_27();
            sub_237A6EF64(v94, v129);
            OUTLINED_FUNCTION_80_0();
            __swift_storeEnumTagSinglePayload(v130, v131, v132, v126);
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            sub_237A6F014();
            swift_endAccess();
            OUTLINED_FUNCTION_73();
            return;
          }

          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
    }

LABEL_15:

    __break(1u);
LABEL_16:

    swift_unexpectedError();
    __break(1u);
  }

  OUTLINED_FUNCTION_40_6();
  v133 = 101;
  OUTLINED_FUNCTION_27_5();
  __break(1u);
}

void sub_237A6BDB4()
{
  OUTLINED_FUNCTION_74();
  v136 = v1;
  v144 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v129 = v9;
  OUTLINED_FUNCTION_41_0();
  v10 = sub_237C071DC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v138 = v12;
  v139 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_0();
  v141 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_138();
  v137 = v17;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v131 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  v21 = OUTLINED_FUNCTION_20(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v128 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v132 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_58();
  v130 = v29;
  OUTLINED_FUNCTION_41_0();
  v30 = sub_237C0602C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v134 = v32;
  v135 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v133 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_94();
  v41 = type metadata accessor for MLCheckpoint();
  v42 = OUTLINED_FUNCTION_4(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v142 = v46 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50);
  v52 = &v126 - v51;
  v53 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v54 = OUTLINED_FUNCTION_4(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_2_0();
  v59 = v58 - v57;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v140 = v0;
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v52, 1, v53);
  if (v60)
  {
    sub_2379D9054(v52, &qword_27DE9AE18, &qword_237C0DEE0);
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_59_2();
  sub_237A6EFBC();
  sub_237A9A92C(v144, v2);
  OUTLINED_FUNCTION_73_1(v2, 1, v41);
  if (v60)
  {
    sub_2379D9054(v2, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_18_4(v61, 0xD00000000000001DLL);
  }

  else
  {
    v62 = v142;
    sub_237A6EFBC();
    v63 = v140;
    switch(*(v62 + *(v41 + 20)))
    {
      case 2:

        v64 = v141;
        goto LABEL_9;
      case 4:
        OUTLINED_FUNCTION_60_0();
        goto LABEL_8;
      default:
LABEL_8:
        OUTLINED_FUNCTION_57_0();
        v65 = sub_237C0929C();

        v64 = v141;
        if (v65)
        {
LABEL_9:
          v66 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v67 = sub_237C05DBC();
          OUTLINED_FUNCTION_4(v67);
          (*(v68 + 24))(v63 + v66, v59);
          swift_endAccess();
          v69 = v53[5];
          v70 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData;
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          sub_237A6EE90(v59 + v69, v63 + v70);
          swift_endAccess();
          v71 = (v59 + v53[6]);
          v72 = *v71;
          v73 = v71[1];
          swift_beginAccess();
          v74 = v133;
          sub_237C05DFC();
          swift_endAccess();
          sub_237C05FFC();
          (*(v134 + 8))(v74, v135);
          if (swift_dynamicCastMetatype())
          {
            sub_237AE1668(MEMORY[0x277D84FA0]);
            v76 = v75;
            v77 = *(v59 + v53[7]);

            v78 = v131;
            sub_237C071CC();
            v79 = v130;
            *v130 = v72;
            v79[1] = v73;
            v80 = v79;
            v79[2] = v77;
            OUTLINED_FUNCTION_1_3();
            v80[5] = v77;
            v80[6] = v81;
            v80[7] = v82;

            v83 = v136;
            sub_237AE123C(v76);
            v85 = v84;

            v143 = v85;

            sub_237AE6A58();
            v2 = v83;
            if (!v83)
            {

              v80[3] = v143;
              *(v80 + 32) = 1;
              v86 = OUTLINED_FUNCTION_22_8();
              v87(v86);
              v88 = type metadata accessor for AnyTreeClassifier();
              OUTLINED_FUNCTION_60_4(v88);
              MEMORY[8](v78, v85);
              OUTLINED_FUNCTION_80_0();
              __swift_storeEnumTagSinglePayload(v89, v90, v91, v76);
              OUTLINED_FUNCTION_59_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_52_4();
              sub_237A6F014();
              swift_endAccess();
              v92 = v132;
              OUTLINED_FUNCTION_52_4();
              sub_237A40628();
              OUTLINED_FUNCTION_170();
              OUTLINED_FUNCTION_73_1(v93, v94, v95);
              if (!v60)
              {
                goto LABEL_18;
              }

              goto LABEL_21;
            }
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
LABEL_24:
              OUTLINED_FUNCTION_40_6();
              v126 = 142;
              OUTLINED_FUNCTION_27_5();
              __break(1u);
              JUMPOUT(0x237A6C7CCLL);
            }

            sub_237AE1948(MEMORY[0x277D84FA0]);
            v100 = v99;
            v101 = *(v59 + v53[7]);

            sub_237C071CC();
            v102 = v127;
            *v127 = v72;
            v102[1] = v73;
            v103 = v102;
            v102[2] = v101;

            v104 = v136;
            sub_237AE1458(v100);
            v106 = v105;
            v2 = v104;

            v143 = v106;

            sub_237AE69B4();
            if (!v104)
            {

              v103[3] = v143;
              *(v103 + 32) = 0;
              OUTLINED_FUNCTION_1_3();
              v103[5] = v101;
              v103[6] = v107;
              v103[7] = v108;
              v109 = OUTLINED_FUNCTION_22_8();
              v110(v109);
              v111 = type metadata accessor for AnyTreeClassifier();
              OUTLINED_FUNCTION_60_4(v111);
              (*(v100 + 8))(v64, v106);
              OUTLINED_FUNCTION_80_0();
              __swift_storeEnumTagSinglePayload(v112, v113, v114, v101);
              OUTLINED_FUNCTION_59_1();
              swift_beginAccess();
              OUTLINED_FUNCTION_52_4();
              sub_237A6F014();
              swift_endAccess();
              v92 = v128;
              OUTLINED_FUNCTION_52_4();
              sub_237A40628();
              OUTLINED_FUNCTION_170();
              OUTLINED_FUNCTION_73_1(v115, v116, v117);
              if (!v60)
              {
LABEL_18:
                sub_237A6EE34();
                v118 = v142;
                OUTLINED_FUNCTION_37_0();
                sub_237C0723C();
                OUTLINED_FUNCTION_21_11();
                sub_237A6EF64(v118, v119);
                OUTLINED_FUNCTION_0_30();
                sub_237A6EF64(v59, v120);
                OUTLINED_FUNCTION_3_27();
                sub_237A6EF64(v92, v121);
                type metadata accessor for AnyTreeClassifierModel();
                OUTLINED_FUNCTION_80_0();
                __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
                OUTLINED_FUNCTION_59_1();
                swift_beginAccess();
                sub_237A6F014();
                swift_endAccess();
                goto LABEL_19;
              }

              goto LABEL_22;
            }
          }

LABEL_23:

          __break(1u);
          goto LABEL_24;
        }

        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_18_4(v96, 0xD000000000000028);
        OUTLINED_FUNCTION_21_11();
        sub_237A6EF64(v142, v97);
        break;
    }
  }

  OUTLINED_FUNCTION_0_30();
  sub_237A6EF64(v59, v98);
LABEL_19:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A6C7E0(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters() + 28));
}

uint64_t sub_237A6C834(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_237C06A4C();
  v2[21] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[22] = v4;
  v6 = *(v5 + 64);
  v2[23] = OUTLINED_FUNCTION_19();
  v7 = sub_237C05DBC();
  v2[24] = v7;
  OUTLINED_FUNCTION_1(v7);
  v2[25] = v8;
  v10 = *(v9 + 64);
  v2[26] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  OUTLINED_FUNCTION_20(v11);
  v13 = *(v12 + 64);
  v2[27] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v14);
  v16 = *(v15 + 64);
  v2[28] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v17);
  v19 = *(v18 + 64);
  v2[29] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_237A6C9B0()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 160);
  *(v0 + 240) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_62_3();
  *(v0 + 248) = type metadata accessor for AnyTreeClassifierModel();
  v4 = OUTLINED_FUNCTION_117_0();
  __swift_getEnumTagSinglePayload(v4, v5, v6);
  result = OUTLINED_FUNCTION_61_3();
  if (v3 == 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v0 + 224);
  v9 = *(v0 + 160);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_62_3();
  type metadata accessor for PersistentParametersForTreeBasedMethods();
  v10 = OUTLINED_FUNCTION_117_0();
  __swift_getEnumTagSinglePayload(v10, v11, v12);
  result = OUTLINED_FUNCTION_61_3();
  if (v9 == 1)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 160) + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters();
  v15 = *(v14 + *(result + 20));
  v16 = __OFADD__(v13, v15);
  *(v0 + 136) = v13 + v15;
  *(v0 + 144) = v16;
  if (__OFADD__(v13, v15))
  {
    goto LABEL_27;
  }

  v17 = *(v14 + *(result + 28));
  *(v0 + 256) = v17;
  v18 = __OFSUB__(v17, v13);
  v19 = v17 - v13;
  if (v18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v15 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v15;
  }

  *(v0 + 264) = v20;
  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  *(v0 + 272) = result;
  if (v20 < 0)
  {
    goto LABEL_29;
  }

  v21 = *(v0 + 160);
  v22 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  *(v0 + 280) = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier;
  *(v0 + 288) = v22;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  if (!*(v0 + 264))
  {
    v43 = *(v0 + 272);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v46 = *(v0 + 168);
    sub_237C06A1C();
    sub_237B1A15C();
    v47 = OUTLINED_FUNCTION_41_5();
    v1(v47);
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v48, 3);
    }

    OUTLINED_FUNCTION_63_2();
    sub_237B1A15C();
    v49 = OUTLINED_FUNCTION_53_4();
    v1(v49);
    v50 = *(v0 + 272);
    if ((v9 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v51, 0);
    }

    OUTLINED_FUNCTION_26_8();

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X4, X16 }
  }

  *(v0 + 296) = 1;
  v23 = *(v0 + 280);
  v24 = *(v0 + 216);
  v25 = *(v0 + 160);
  sub_237A40628();
  type metadata accessor for AnyTreeClassifier();
  v26 = OUTLINED_FUNCTION_117_0();
  result = __swift_getEnumTagSinglePayload(v26, v27, v28);
  if (result == 1)
  {
    goto LABEL_30;
  }

  v29 = OUTLINED_FUNCTION_23_12();
  v30(v29);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_170();
  result = __swift_getEnumTagSinglePayload(v31, v32, v33);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 240);
  v36 = *(v0 + 160);

  v37 = swift_task_alloc();
  *(v0 + 304) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_11_17(v37);
  OUTLINED_FUNCTION_39_4();

  return sub_237AB7980(v38, v39, v40, v41);
}

uint64_t sub_237A6CD38()
{
  v3 = *(*v1 + 304);
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v4 = v2;
  v2[39] = v0;

  if (!v0)
  {
    v5 = v2[34];
    v7 = v2[26];
    v6 = v2[27];
    v8 = v2[24];
    v9 = v2[25];
    swift_endAccess();

    (*(v9 + 8))(v7, v8);
    OUTLINED_FUNCTION_3_27();
    sub_237A6EF64(v6, v10);
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_237A6CE90()
{
  v3 = v0[37];
  if (v3 == v0[33])
  {
    v4 = v0[34];
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    sub_237C06A1C();
    sub_237B1A15C();
    v8 = OUTLINED_FUNCTION_41_5();
    v2(v8);
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v9, 3);
    }

    OUTLINED_FUNCTION_63_2();
    sub_237B1A15C();
    v10 = OUTLINED_FUNCTION_53_4();
    v2(v10);
    v11 = v0[34];
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_13();
      sub_237B19FFC(v12, 0);
    }

    OUTLINED_FUNCTION_26_8();

    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_39_4();

    __asm { BRAA            X4, X16 }
  }

  v0[37] = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v0[35];
  v16 = v0[27];
  v17 = v0[20];
  sub_237A40628();
  type metadata accessor for AnyTreeClassifier();
  v18 = OUTLINED_FUNCTION_117_0();
  if (__swift_getEnumTagSinglePayload(v18, v19, v20) == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = OUTLINED_FUNCTION_23_12();
  v22(v21);
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v26 = v0[34];
  v27 = v0[30];
  v28 = v0[20];

  v29 = swift_task_alloc();
  v0[38] = v29;
  *v29 = v0;
  OUTLINED_FUNCTION_11_17();
  OUTLINED_FUNCTION_39_4();

  sub_237AB7980(v30, v31, v32, v33);
}

uint64_t sub_237A6D0B4()
{
  v1 = v0[34];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  swift_endAccess();

  (*(v7 + 8))(v5, v6);
  OUTLINED_FUNCTION_3_27();
  sub_237A6EF64(v4, v9);

  v10 = v0[1];
  v11 = v0[39];

  return v10();
}

uint64_t sub_237A6D1A0()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  v1[27] = OUTLINED_FUNCTION_19();
  v5 = sub_237C0602C();
  OUTLINED_FUNCTION_20(v5);
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC88, &unk_237C11AF0);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  v1[30] = OUTLINED_FUNCTION_19();
  v11 = sub_237C05DBC();
  v1[31] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[32] = v12;
  v14 = *(v13 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v15);
  v17 = *(v16 + 64);
  v1[37] = OUTLINED_FUNCTION_19();
  v18 = type metadata accessor for AnyTreeClassifierModel();
  v1[38] = v18;
  OUTLINED_FUNCTION_20(v18);
  v20 = *(v19 + 64);
  v1[39] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237A6D354()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[26];
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_170();
  if (__swift_getEnumTagSinglePayload(v4, v5, v6) == 1)
  {
    sub_2379D9054(v0[37], &qword_27DE9BC78, &qword_237C0EBD0);
  }

  else
  {
    v7 = v0[39];
    v8 = v0[37];
    v9 = v0[26];
    OUTLINED_FUNCTION_20_7();
    sub_237A6EFBC();
    v10 = v9 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v11 = type metadata accessor for PersistentParametersForTreeBasedMethods();
    if (!__swift_getEnumTagSinglePayload(v10, 1, v11))
    {
      v25 = v0[35];
      v24 = v0[36];
      v27 = v0[31];
      v26 = v0[32];
      v28 = v0[26];
      v29 = (v10 + *(v11 + 24));
      v30 = v29[1];
      v68 = *v29;
      v31 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v26 + 16))(v25, v28 + v31, v27);

      OUTLINED_FUNCTION_11();
      sub_237A5DEEC(v32);
      v33 = v0[36];
      v70 = v0[31];
      v34 = v0[29];
      v35 = v0[30];
      v36 = v0[28];
      v37 = v0[26];
      v67 = *(v0[32] + 8);
      v65 = v0[27];
      (v67)(v0[35]);
      sub_237C05DFC();
      swift_beginAccess();
      sub_237C05DFC();
      swift_endAccess();
      sub_237B0CBBC();
      v38 = type metadata accessor for AnyClassificationMetrics();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      v42 = OUTLINED_FUNCTION_117_0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v70);
      v45 = v0[39];
      if (EnumTagSinglePayload == 1)
      {
        v46 = v0[36];
        v48 = v0[30];
        v47 = v0[31];
        v49 = v0[26];
        v50 = v0[27];

        v67(v46, v47);
        OUTLINED_FUNCTION_1_27();
        sub_237A6EF64(v45, v51);
        sub_2379D9054(v50, &qword_27DE9A9A0, &qword_237C0BF60);
        v69 = 1;
        OUTLINED_FUNCTION_64();
      }

      else
      {
        v55 = v0[33];
        (*(v0[32] + 32))(v0[34], v0[27], v0[31]);
        OUTLINED_FUNCTION_11();
        sub_237A5DEEC(v56);
        v71 = v0[39];
        v61 = v0[34];
        v62 = v0[33];
        v57 = v0[31];
        v63 = v0[30];
        v64 = v0[36];
        v58 = v0[28];
        v59 = v0[29];
        v66 = v0[26];
        OUTLINED_FUNCTION_59_2();
        sub_237C05DFC();
        OUTLINED_FUNCTION_59_2();
        sub_237C05DFC();

        sub_237B0CBBC();
        v67(v62, v57);
        v67(v61, v57);
        v67(v64, v57);
        OUTLINED_FUNCTION_1_27();
        sub_237A6EF64(v71, v60);
        v69 = 1;
        OUTLINED_FUNCTION_80_0();
      }

      __swift_storeEnumTagSinglePayload(v52, v53, v54, v38);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
      goto LABEL_6;
    }

    sub_237A6EF64(v0[39], type metadata accessor for AnyTreeClassifierModel);
  }

  v69 = 0;
LABEL_6:
  v12 = v0[39];
  v14 = v0[36];
  v13 = v0[37];
  v16 = v0[34];
  v15 = v0[35];
  v17 = v0[33];
  v19 = v0[29];
  v18 = v0[30];
  v20 = v0[27];
  v21 = v0[28];

  v22 = v0[1];

  return v22(v69, 1);
}

void sub_237A6D9D8()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v30[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC70, &qword_237C0EBC8);
  OUTLINED_FUNCTION_20(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_94();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC78, &qword_237C0EBD0);
  OUTLINED_FUNCTION_20(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for AnyTreeClassifierModel();
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = *v2;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v13, 1, v14);
  if (v22)
  {
    sub_2379D9054(v13, &qword_27DE9BC78, &qword_237C0EBD0);
  }

  else
  {
    OUTLINED_FUNCTION_20_7();
    sub_237A6EFBC();
    switch(v21)
    {
      case 2:

        goto LABEL_8;
      case 4:
        OUTLINED_FUNCTION_60_0();
        break;
      default:
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v23 = sub_237C0929C();

    if (v23)
    {
LABEL_8:
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237A40628();
      type metadata accessor for AnyTreeClassifier();
      OUTLINED_FUNCTION_170();
      OUTLINED_FUNCTION_73_1(v24, v25, v26);
      if (v22)
      {
        __break(1u);
        JUMPOUT(0x237A6DCB4);
      }

      sub_237A6EE34();
      sub_237C0724C();
      OUTLINED_FUNCTION_1_27();
      sub_237A6EF64(v20, v27);
      OUTLINED_FUNCTION_3_27();
      sub_237A6EF64(v0, v28);
    }

    else
    {
      OUTLINED_FUNCTION_1_27();
      sub_237A6EF64(v20, v29);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A6DCC8()
{
  OUTLINED_FUNCTION_74();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v7, 1, v8);
  if (v15)
  {
    sub_2379D9054(v7, &qword_27DE9AE18, &qword_237C0DEE0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    *v16 = 0xD000000000000031;
    *(v16 + 8) = 0x8000000237C19910;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_2_30();
    sub_237A6EFBC();
    sub_2379FE55C(v1);
    OUTLINED_FUNCTION_0_30();
    sub_237A6EF64(v14, v17);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A6DE68()
{
  OUTLINED_FUNCTION_74();
  v34 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  v5 = OUTLINED_FUNCTION_20(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = sub_237C05ADC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v21 = OUTLINED_FUNCTION_4(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v33 - v27;
  (*(v14 + 16))(v19, v3, v11);
  sub_2379FD540(v19, v28);
  if (!v1)
  {
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237A40628();
    OUTLINED_FUNCTION_73_1(v10, 1, v20);
    if (v29)
    {
      sub_2379D9054(v10, &qword_27DE9AE18, &qword_237C0DEE0);
      OUTLINED_FUNCTION_2_30();
      sub_237A6EFBC();
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v30, v31, v32, v20);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6F014();
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_2_30();
      sub_237A6EFBC();
      sub_237A6E124(v28, v26);
      sub_237A6EF64(v26, type metadata accessor for PersistentParametersForTreeBasedMethods);
      sub_237A6EF64(v28, type metadata accessor for PersistentParametersForTreeBasedMethods);
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A6E124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistentParametersForTreeBasedMethods();
  v5 = v4[6];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (v10 = *v8, v11 = v8[1], (sub_237C0929C() & 1) != 0))
  {
    v12 = *(a1 + v4[7]);

    v14 = sub_237B42F98(v13);
    v15 = *(a2 + v4[7]);

    v17 = sub_237B42F98(v16);
    v18 = sub_237A6E3A8(v14, v17);

    if (v18)
    {
      result = sub_237B31B80(a1 + v4[8], &v28);
      v20 = v29;
      if (!v29)
      {
        return result;
      }

      v22 = v32;
      v21 = v33;
      v7 = v30;
      v6 = v31;
      v23 = v28;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
    }

    else
    {
      v20 = 0x8000000237C198F0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
      sub_237A6EF00();
      v7 = OUTLINED_FUNCTION_50_4();
      v6 = v25;

      OUTLINED_FUNCTION_50_4();

      v22 = sub_237C0883C();
      v21 = v26;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2();
      v23 = 0xD000000000000011;
    }
  }

  else
  {

    v22 = sub_237C0883C();
    v21 = v27;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2();
    v20 = 0xED00006E6D756C6FLL;
    v23 = 0x6320746567726154;
  }

  *v24 = v23;
  *(v24 + 8) = v20;
  *(v24 + 16) = v7;
  *(v24 + 24) = v6;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237A6E3A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_237C093CC();

      sub_237C0878C();
      v16 = sub_237C0940C();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_237C0929C();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A6E550()
{
  OUTLINED_FUNCTION_4_25();
  sub_237A6EF64(v0 + v1, v2);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AE18, &qword_237C0DEE0);
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingData;
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(v0 + v3);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_classifier, &qword_27DE9BC70, &qword_237C0EBC8);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model, &qword_27DE9BC78, &qword_237C0EBD0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9BC88, &unk_237C11AF0);
  sub_2379D9054(v0 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9BC88, &unk_237C11AF0);
  return v0;
}

uint64_t sub_237A6E684()
{
  sub_237A6E550();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TreeClassifierTrainingSessionDelegate()
{
  result = qword_27DE9BC40;
  if (!qword_27DE9BC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A6E730()
{
  v0 = type metadata accessor for MLTrainingSessionParameters();
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_237A6E9B0(319, &qword_27DE9BC50, type metadata accessor for PersistentParametersForTreeBasedMethods);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      v4 = sub_237C05DBC();
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_237A6E9B0(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_237A6E9B0(319, &qword_27DE9BC58, type metadata accessor for AnyTreeClassifier);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_237A6E9B0(319, &qword_27DE9BC60, type metadata accessor for AnyTreeClassifierModel);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_237A6E9B0(319, &qword_27DE9BC68, type metadata accessor for AnyClassificationMetrics);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237A6E9B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237A6EA74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_237A6EB0C;

  return sub_237A6C834(a1);
}

uint64_t sub_237A6EB0C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(*v4 + 16);
  v9 = *v4;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  v13 = *(v9 + 8);
  if (v3)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 & 1;
    v11 = a1;
    v12 = a2;
  }

  return v13(v11, v12, v14);
}

uint64_t sub_237A6EC24()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237A6ECB4;

  return sub_237A6D1A0();
}

uint64_t sub_237A6ECB4(uint64_t a1, char a2)
{
  v6 = *(*v3 + 16);
  v7 = *v3;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  v10 = *(v7 + 8);
  if (v2)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 & 1;
    v9 = a1;
  }

  return v10(v9, v11);
}

uint64_t sub_237A6EDC4()
{
  v1 = *v0;
  sub_237A6D9D8();
  return v2 & 1;
}

unint64_t sub_237A6EE34()
{
  result = qword_27DE9BC80;
  if (!qword_27DE9BC80)
  {
    type metadata accessor for AnyTreeClassifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC80);
  }

  return result;
}

uint64_t sub_237A6EE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_237A6EF00()
{
  result = qword_27DE9BC90;
  if (!qword_27DE9BC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BC90);
  }

  return result;
}

uint64_t sub_237A6EF64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_237A6EFBC()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t sub_237A6F014()
{
  OUTLINED_FUNCTION_63_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_37_0();
  v7(v6);
  return v0;
}

uint64_t sub_237A6F06C()
{
  OUTLINED_FUNCTION_63_1();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_17(uint64_t a1)
{
  *(a1 + 8) = sub_237A6CD38;
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  return v3 + v2;
}

uint64_t OUTLINED_FUNCTION_22_8()
{
  v1 = *(*(v0 - 176) + 16);
  result = *(v0 - 184);
  v3 = *(v0 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_12()
{
  v1 = v0[30];
  v2 = v0[31];
  result = v0[26];
  v4 = v0[24];
  v5 = *(v0[25] + 16);
  v6 = v0[20] + v0[36];
  return result;
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[17] >= v0[32];
}

uint64_t OUTLINED_FUNCTION_27_5()
{

  return sub_237C090DC();
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X8>)
{

  return sub_2379D9054(v1 + a1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_48_6()
{
}

uint64_t OUTLINED_FUNCTION_50_4()
{

  return sub_237C0864C();
}

uint64_t OUTLINED_FUNCTION_60_4(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return sub_237C06D7C();
}

uint64_t OUTLINED_FUNCTION_61_3()
{

  return sub_2379D9054(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return sub_237A40628();
}

uint64_t OUTLINED_FUNCTION_63_2()
{
  v2 = v0[34];
  v3 = v0[23];
  v4 = v0[21];

  return sub_237C069EC();
}

uint64_t sub_237A6F428()
{
  v1 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v1);
  if (result)
  {
    v3 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    type metadata accessor for CMLFeatureValue();

    sub_237A2E858(v5);
    if (v0)
    {
      swift_setDeallocating();
    }

    else
    {
      sub_237A2F598(33);
      sub_237A31864(14);

      swift_setDeallocating();
      v6 = *(inited + 16);
    }

    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A6F534()
{
  v1 = OUTLINED_FUNCTION_87();
  result = MEMORY[0x2383DDB70](v1);
  if (result)
  {
    v3 = result;
    type metadata accessor for CMLParameters();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    type metadata accessor for CMLFeatureValue();

    sub_237A2E858(v5);
    if (v0)
    {
      swift_setDeallocating();
    }

    else
    {
      sub_237A2F598(32);

      sub_237A31864(7);

      swift_setDeallocating();
      v6 = *(inited + 16);
    }

    return tc_v1_release();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A6F634()
{
  v1 = OUTLINED_FUNCTION_87();
  v2 = MEMORY[0x2383DDB70](v1);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  sub_237C05A9C();
  type metadata accessor for CMLFeatureValue();

  sub_237A2E7CC();
  if (v0)
  {
LABEL_8:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  sub_237A2F598(8);

  sub_237A31864(6);

  swift_setDeallocating();
  v5 = *(inited + 16);
  return tc_v1_release();
}

uint64_t sub_237A6F760(uint64_t a1)
{
  v20[5] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_237C05ADC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2383DDB70](0);
  if (!v13)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v14;
  sub_237A6FAB8(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_237A6FB28(v7);
    type metadata accessor for CMLFeatureValue();
    OUTLINED_FUNCTION_87();
    sub_237A2E7CC();
    if (!v2)
    {
      sub_237A2F598(27);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_237C05A9C();
    type metadata accessor for CMLFeatureValue();

    sub_237A2E7CC();
    if (!v2)
    {

      sub_237A2F598(27);
      (*(v9 + 8))(v12, v8);
LABEL_7:

      v16 = sub_237A31864(8);
      v17 = sub_237B0E428(*(v16 + 16));
      if (v17)
      {

        swift_setDeallocating();
        v18 = *(inited + 16);
        tc_v1_release();
        result = swift_allocObject();
        *(result + 16) = v17;
        return result;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A6FAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A6FB28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A6FB90()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B718, &unk_237C0DD90);
  v1[20] = v2;
  OUTLINED_FUNCTION_1(v2);
  v1[21] = v3;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v7 = sub_237C05C2C();
  v1[24] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[25] = v8;
  v10 = *(v9 + 64) + 15;
  v1[26] = swift_task_alloc();
  v11 = sub_237C05ADC();
  v1[27] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[28] = v12;
  v14 = *(v13 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237A6FD4C, 0, 0);
}

uint64_t sub_237A6FD4C()
{
  v0[32] = [objc_opt_self() defaultManager];
  sub_2379F364C();
  v1 = v0[31];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v21 = v0[30];
  v22 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v23 = v0[23];
  v25 = v0[19];
  sub_2379F3528();
  sub_237C05C1C();
  sub_237C05C0C();
  (*(v6 + 8))(v4, v5);
  sub_237C05A2C();

  sub_237C05A3C();
  v7 = *(v3 + 8);
  v0[33] = v7;
  v0[34] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v22);
  (*(v3 + 16))(v23, v21, v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  sub_237A6F760(v23);
  v8 = v0[30];
  v9 = v0[23];

  sub_237A6FB28(v9);
  v10 = sub_237C05B1C();
  v0[35] = v10;
  v0[36] = v11;
  v12 = v10;
  v13 = v11;
  sub_2379E8EE0(0, &qword_27DE9B720, 0x277CBFF28);
  sub_237A2C2B0(v12, v13);
  v14 = sub_237A42E3C(v12, v13);
  v0[37] = v14;
  v15 = v14;
  v16 = v0[21];
  v17 = v0[22];
  v18 = v0[20];
  v26 = objc_opt_self();
  v24 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v0[38] = v24;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_237A7023C;
  swift_continuation_init();
  v0[17] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  sub_237C08A0C();
  (*(v16 + 32))(boxed_opaque_existential_0, v17, v18);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_237A42F28;
  v0[13] = &block_descriptor_4;
  [v26 loadModelAsset:v15 configuration:v24 completionHandler:?];
  (*(v16 + 8))(boxed_opaque_existential_0, v18);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_237A7023C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_237A70458;
  }

  else
  {
    v3 = sub_237A7034C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237A7034C()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[27];
  v13 = v0[26];
  v14 = v0[23];
  v15 = v0[22];
  sub_2379E86D4(v0[35], v0[36]);

  v10 = v0[18];
  sub_237A70570(v6);

  v3(v7, v9);
  v3(v5, v9);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_237A70458()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[30];
  v19 = v0[38];
  v20 = v0[31];
  v9 = v0[27];
  swift_willThrow();
  sub_2379E86D4(v4, v2);

  sub_237A70570(v6);
  v7(v8, v9);
  v7(v20, v9);
  v10 = v0[39];
  v12 = v0[30];
  v11 = v0[31];
  v13 = v0[29];
  v14 = v0[26];
  v16 = v0[22];
  v15 = v0[23];

  v17 = v0[1];

  return v17();
}

void sub_237A70570(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C059EC();
  v9[0] = 0;
  LODWORD(a1) = [a1 removeItemAtURL:v2 error:v9];

  v3 = v9[0];
  if (a1)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_237C0593C();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

void sub_237A70684(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  HIDWORD(v73) = a2;
  v63 = a3;
  v6 = sub_237C0602C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v72 = v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v16 = MEMORY[0x2383DDC00](0);
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  type metadata accessor for CMLTable();
  OUTLINED_FUNCTION_103();
  *(swift_allocObject() + 16) = v17;
  type metadata accessor for _DataTable();
  OUTLINED_FUNCTION_75_2();
  v18 = OUTLINED_FUNCTION_125();
  v77 = sub_237B6C578(v18);
  LOBYTE(v78) = 0;
  v64 = a1;
  v19 = sub_237C05D8C();
  v20 = 0;
  v74 = v19[2];
  v65 = v6;
  v66 = 0x8000000237C199E0;
  v70 = v9 + 16;
  v71 = v9 + 8;
  v68 = v19;
  v69 = v9;
  while (1)
  {
    if (v74 == v20)
    {

      v55 = sub_237C05DBC();
      OUTLINED_FUNCTION_12_0(v55);
      (*(v56 + 8))(v64);
      v57 = v78;
      v58 = v63;
      *v63 = v77;
      *(v58 + 8) = v57;
      return;
    }

    if (v20 >= v19[2])
    {
      break;
    }

    v21 = *(v9 + 16);
    v21(v15, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v6);
    v22 = v72;
    v23 = OUTLINED_FUNCTION_84();
    (v21)(v23);
    sub_237A72900(v22, BYTE4(v73) & 1, &v75);
    if (v4)
    {

      v59 = sub_237C05DBC();
      OUTLINED_FUNCTION_12_0(v59);
      (*(v60 + 8))(v64);
      v61 = OUTLINED_FUNCTION_50_5();
      v62(v61, v6);
      sub_2379DBC9C(v77, v78);
      return;
    }

    v24 = v75;
    v25 = v76;
    v26 = v15;
    v27 = sub_237C0600C();
    sub_237B6C670(v27, v28, v29, v30, v31, v32, v33, v34, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v28, v81, v82);
    v35 = v77;
    if (v78)
    {
      v67 = 0;
      v75 = v77;
      v36 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      v37 = sub_237C0925C();
      if (v37)
      {
        v38 = v37;
        sub_2379DBC9C(v35, 1);
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v38 = swift_allocError();
        *v48 = v35;
      }

      v15 = v26;
      v9 = v69;
      v4 = v67;
LABEL_14:
      sub_2379DBC9C(v77, v78);

      v77 = v38;
      LOBYTE(v78) = 1;
LABEL_15:
      v49 = v38;
      v50 = 1;
      goto LABEL_16;
    }

    if (v25)
    {
      v75 = 0;
      v76 = 0xE000000000000000;

      sub_237C08EDC();

      v75 = 0xD000000000000021;
      v76 = v66;
      MEMORY[0x2383DC360](v27, v80);
      MEMORY[0x2383DC360](39, 0xE100000000000000);
      v39 = v75;
      v40 = v76;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v38 = swift_allocError();
      *v41 = v39;
      v41[1] = v40;
      OUTLINED_FUNCTION_38_4(v38, v41);
      OUTLINED_FUNCTION_72_3(v42, v43);
      v4 = 0;
      v15 = v26;
      sub_2379DBC9C(v35, 0);
      v9 = v69;
      goto LABEL_14;
    }

    v44 = v77[2];
    v45 = v24[2];
    sub_2379DBCF4(v77, 0);
    v46 = OUTLINED_FUNCTION_88();
    sub_2379DBCF4(v46, v47);

    sub_237A303B4(v27, v80, v45);
    v53 = OUTLINED_FUNCTION_88();
    sub_2379DBC9C(v53, v54);

    sub_2379DBC9C(v35, 0);

    v38 = v77;
    v15 = v26;
    if (v78)
    {
      v6 = v65;
      v9 = v69;
      goto LABEL_15;
    }

    sub_2379DBCF4(v77, 0);
    sub_237B6C588();
    v25 = 0;
    v50 = 0;
    v6 = v65;
    v9 = v69;
LABEL_16:
    sub_2379DBC9C(v24, v25);
    v51 = OUTLINED_FUNCTION_50_5();
    v52(v51, v6);
    sub_2379DBC9C(v38, v50);
    ++v20;
    v19 = v68;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_237A70BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC98, &qword_237C0EC00);
  v4 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_0();
  v38 = v5;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_138();
  v37 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = sub_237C05CFC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a3;
  v20 = *(a3 + 8);
  v21 = *(a3 + 16);
  v22 = *(a3 + 17);
  sub_237C05D0C();
  v23 = sub_237C05CEC();
  (*(v14 + 8))(v18, v11);
  if ((v22 & 1) == 0)
  {
    if (v21)
    {
      v42 = 0;
      MEMORY[0x2383DD970](&v42, 8);
    }

    if (v19 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v25 = sub_237C05D1C();
    __swift_storeEnumTagSinglePayload(v40, 1, 1, v25);
    return sub_237A7644C(0, v41);
  }

  if (v23 < 50)
  {
    goto LABEL_7;
  }

  v24 = dbl_237C0CE20[v23 < 0xC8];
LABEL_8:
  v27 = v39;
  v28 = *(v39 + 48);
  sub_237C05DBC();
  sub_237C05C4C();
  v29 = v37;
  sub_237A7B7A0(v10, v37, &qword_27DE9BC98, &qword_237C0EC00);
  v30 = *(v27 + 48);
  v31 = sub_237C05D1C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 32);
  v34 = v40;
  v33(v40, v29, v31);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v31);
  v35 = v38;
  sub_237A763DC(v10, v38);
  v33(v41, v35 + *(v27 + 48), v31);
  v36 = *(v32 + 8);
  v36(v35, v31);
  return (v36)(v29 + v30, v31);
}

uint64_t sub_237A70ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0(v292);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v9);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDF0, &qword_237C0EC88);
  OUTLINED_FUNCTION_0(v280);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v15);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDF8, &qword_237C0EC90);
  OUTLINED_FUNCTION_0(v277);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v21);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v290);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v27);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0(v288);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v33);
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v286);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v39);
  v40 = *a1;
  LODWORD(a1) = *(a1 + 8);
  v295 = a2;
  sub_237C05DAC();
  v298 = a1;
  if (a1)
  {
    v41 = MEMORY[0x2383DDAC0](0);
    if (!v41)
    {
      goto LABEL_164;
    }

    v42 = v41;
    type metadata accessor for CMLSequence();
    v43 = OUTLINED_FUNCTION_11_2();
    *(v43 + 16) = v42;
    v297 = v43;
    *(v43 + 24) = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_12(v40);
    sub_237B6C208(v44);
    sub_2379DBC9C(v40, 0);
    v297 = v322;
  }

  v296 = v40;
  *&v322 = v40;
  OUTLINED_FUNCTION_41_6();
  BYTE8(v322) = v45;
  MLDataTable.columnTypes.getter(v46, v47, v48, v49, v50, v51, v52, v53, v273, v275, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
  v303 = v54;
  v55 = 0;
  v56 = 0;
  v284 = v5 + 8;
  v278 = v11 + 8;
  v274 = v17 + 8;
  v283 = v23 + 8;
  v282 = v29 + 8;
  v281 = v35 + 8;
LABEL_6:
  v57 = v297;
  while (1)
  {
    v58 = sub_237A2E9F4();
    if (v55 == sub_237A017E8(0, v58))
    {
      break;
    }

    sub_237A2E9C8(v55);
    v311 = sub_237A2DE60();
    v312 = v59;

    v60 = sub_237A2E9F4();
    if (v55 >= sub_237A017E8(0, v60))
    {
      goto LABEL_128;
    }

    ++v55;
    v61 = v303;
    if (*(v303 + 16))
    {
      v62 = sub_237ACAC78(v311, v312);
      if (v63)
      {
        v64 = *(*(v61 + 56) + v62);
        v307 = v55;
        switch(v64)
        {
          case 1:
            OUTLINED_FUNCTION_41_6();
            if (v84)
            {
              goto LABEL_158;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v85 = swift_allocObject();
            v86 = OUTLINED_FUNCTION_53_5(v85);
            OUTLINED_FUNCTION_15_12(v86);
            sub_237A60248(v87);
            v88 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v88, v89);
            if (v322 != 1)
            {
              v270 = 0;
              goto LABEL_163;
            }

            v90 = v57[2];
            v91 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v91, v92);
            v93 = sub_237A2F128();
            v94 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v94, v95);
            if (v93 < 0)
            {
              goto LABEL_135;
            }

            if (v93)
            {
              OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8C14();
              v96 = v315[0];
              do
              {
                OUTLINED_FUNCTION_15_12(v57);
                OUTLINED_FUNCTION_74_2(v97);
                v98 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v98, v99);
                if (v323 != 1)
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                }

                OUTLINED_FUNCTION_82_2();
                if (v82)
                {
                  OUTLINED_FUNCTION_106(v100);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8C14();
                  v96 = v315[0];
                }

                OUTLINED_FUNCTION_42_2();
              }

              while (!v83);
            }

            else
            {
              v96 = MEMORY[0x277D84F90];
            }

            *&v322 = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE48, &qword_237C0ECC8);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BE50);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5(v318);
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v101 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v101, v102);
            v103 = OUTLINED_FUNCTION_33_5(&v314 + 8);
            v105 = &v319;
LABEL_41:
            v104(v103, *(v105 - 32));
            v57 = v297;
            v55 = v307;
            continue;
          case 2:
            OUTLINED_FUNCTION_41_6();
            if (v166)
            {
              OUTLINED_FUNCTION_67_2();
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v311, v312);
              OUTLINED_FUNCTION_68_1();
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v57 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v57, v257);
LABEL_150:
              sub_2379DBC9C(v57, v258);
              __break(1u);
LABEL_151:
              OUTLINED_FUNCTION_67_2();
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v311, v312);
              OUTLINED_FUNCTION_68_1();
              v56 = *(&v322 + 1);
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              *&v314 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v314, v259);
LABEL_152:
              sub_2379DBC9C(v314, v256);
              __break(1u);

              goto LABEL_153;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v167 = swift_allocObject();
            v168 = OUTLINED_FUNCTION_53_5(v167);
            OUTLINED_FUNCTION_15_12(v168);
            sub_237A60248(v169);
            v170 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v170, v171);
            if (v322 != 2)
            {
              v258 = 0;
              goto LABEL_150;
            }

            v172 = v57[2];
            v173 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v173, v174);
            v175 = sub_237A2F128();
            v176 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v176, v177);
            if (v175 < 0)
            {
              goto LABEL_139;
            }

            if (v175)
            {
              OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8A54();
              v178 = 0;
              v179 = v315[0];
              do
              {
                OUTLINED_FUNCTION_15_12(v57);
                OUTLINED_FUNCTION_74_2(v180);
                v181 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v181, v182);
                v183 = v322;
                if (v323 != 2)
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                  v183 = 0uLL;
                }

                v315[0] = v179;
                v185 = *(v179 + 16);
                v184 = *(v179 + 24);
                if (v185 >= v184 >> 1)
                {
                  OUTLINED_FUNCTION_106(v184);
                  v314 = v186;
                  sub_237AC8A54();
                  v183 = v314;
                  v179 = v315[0];
                }

                ++v178;
                *(v179 + 16) = v185 + 1;
                *(v179 + 16 * v185 + 32) = v183;
              }

              while (v175 != v178);
            }

            else
            {
              v179 = MEMORY[0x277D84F90];
            }

            *&v322 = v179;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BAE0);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5(v320);
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v251 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v251, v252);
            v128 = OUTLINED_FUNCTION_33_5(v315);
            v130 = &v321;
LABEL_125:
            v129(v128, *(v130 - 32));
            break;
          case 3:
            v301 = 32;
            OUTLINED_FUNCTION_41_6();
            if (v187)
            {
              OUTLINED_FUNCTION_67_2();
LABEL_153:
              OUTLINED_FUNCTION_19_13();
              sub_237C08EDC();

              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v311, v312);
              OUTLINED_FUNCTION_68_1();
              v260 = v322;
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v261 = swift_allocError();
              v294 = v261;
              *v262 = v260;
              OUTLINED_FUNCTION_38_4(v261, v262);
              v264 = 1;
              *(v263 + 48) = 1;
LABEL_154:
              sub_2379DBC9C(v294, v264);
              __break(1u);

LABEL_155:
              OUTLINED_FUNCTION_7_18("DataTable has no column named ");
              MEMORY[0x2383DC360](v311, v312);
              OUTLINED_FUNCTION_68_1();
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v57 = swift_allocError();
              OUTLINED_FUNCTION_8_18(v57, v265);
LABEL_157:
              sub_2379DBC9C(v57, v266);
              __break(1u);
LABEL_158:
              OUTLINED_FUNCTION_67_2();
              goto LABEL_161;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v188 = swift_allocObject();
            v188[2] = v61;
            OUTLINED_FUNCTION_15_12(v188);
            sub_237A60248(v189);
            v190 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v190, v191);
            v294 = v188;
            if (v322 != 3)
            {
              v264 = 0;
              goto LABEL_154;
            }

            v192 = v188[2];
            v193 = OUTLINED_FUNCTION_52_5();
            sub_2379DBCF4(v193, v194);
            v195 = sub_237A2F128();
            v196 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v196, v197);
            if (v195 < 0)
            {
              goto LABEL_138;
            }

            if (v195)
            {
              v321 = MEMORY[0x277D84F90];
              sub_237AC8BF4();
              v198 = 0;
              v199 = v321;
              v293 = v195;
              while (1)
              {
                v306 = v199;
                OUTLINED_FUNCTION_15_12(v188);
                sub_237A607E0(v198, v200);
                v201 = OUTLINED_FUNCTION_52_5();
                sub_2379DBC9C(v201, v202);
                v203 = v322;
                if (v323 == 3)
                {
                  v302 = *(&v322 + 1);

                  v204 = sub_237A2E9F4();
                  if (sub_237A2E9F4() < 0)
                  {
                    goto LABEL_131;
                  }

                  v205 = sub_237A2E9F4();
                  if (v204 < 0 || v205 < v204)
                  {
                    goto LABEL_132;
                  }

                  if (v204)
                  {
                    v300 = v198;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B2A8, &qword_237C0CB58);
                    v206 = swift_allocObject();
                    v207 = _swift_stdlib_malloc_size(v206);
                    v208 = 0;
                    v206[2] = v204;
                    v206[3] = 2 * ((v207 - 32) / 24);
                    v299 = v206;
                    v209 = v206 + 4;
                    v305 = v203;
                    v304 = v204;
                    while (1)
                    {
                      if (v208 == sub_237A2E9F4())
                      {
                        goto LABEL_140;
                      }

                      v210 = sub_237A2E9C8(v208);
                      v211 = sub_237A2E910();
                      v313 = v208 + 1;
                      *&v314 = v208;
                      switch(v211)
                      {
                        case 1:
                          v239 = *(v210 + 16);

                          sub_237B0E848();
                          v241 = v240;

                          v214 = 0;
                          v213 = v241;
                          v215 = 1;
                          goto LABEL_110;
                        case 2:

                          v213 = sub_237A2DE60();
                          v214 = v237;
                          v215 = 2;

                          goto LABEL_110;
                        case 3:
                          v238 = sub_237B0DD68(*(v210 + 16));
                          if (!v238)
                          {
                            goto LABEL_143;
                          }

                          type metadata accessor for CMLSequence();
                          v213 = OUTLINED_FUNCTION_11_2();
                          *(v213 + 16) = v238;
                          *(v213 + 24) = 1;

                          v214 = 0;
                          v215 = 3;
                          goto LABEL_110;
                        case 4:
                          if (!sub_237B0DDC8(*(v210 + 16)))
                          {
                            goto LABEL_142;
                          }

                          type metadata accessor for CMLDictionary();
                          inited = swift_initStackObject();
                          OUTLINED_FUNCTION_53_5(inited);
                          v213 = MEMORY[0x277D84F98];
                          v317 = MEMORY[0x277D84F98];
                          swift_retain_n();
                          v217 = 0;
                          break;
                        case 5:

                          v213 = 0;
                          v214 = 0;
                          v215 = 6;
                          goto LABEL_110;
                        case 6:

                          sub_237AC8278(v242, &v322);
                          v213 = v322;
                          if (!v322)
                          {
                            goto LABEL_141;
                          }

                          v214 = 0;
                          v215 = 5;
                          goto LABEL_110;
                        default:
                          v212 = *(v210 + 16);

                          v213 = sub_237B0ECCC(v212);

                          v214 = 0;
                          v215 = 0;
                          goto LABEL_110;
                      }

                      while (v217 != sub_237A2EAA4())
                      {
                        sub_237A2EB64(v217);
                        v217 = sub_237B6A974(v217);
                        v218 = sub_237A2DE60();
                        v220 = v219;

                        sub_237AFC548(v221, &v322);

                        v308 = *(&v322 + 1);
                        v222 = v322;
                        v310 = v323;
                        *&v322 = v218;
                        *(&v322 + 1) = v220;
                        LOBYTE(v323) = 2;
                        v223 = sub_237ACB180(v218, v220, 2);
                        v225 = *(v213 + 16);
                        v226 = (v224 & 1) == 0;
                        v227 = __OFADD__(v225, v226);
                        v228 = v225 + v226;
                        if (v227)
                        {
                          goto LABEL_129;
                        }

                        v229 = v224;
                        if (*(v213 + 24) < v228)
                        {
                          sub_237ABF994(v228, 1);
                          v213 = v317;
                          v223 = sub_237ACB180(v322, *(&v322 + 1), v323);
                          if ((v229 & 1) != (v230 & 1))
                          {
                            sub_237C0932C();
                            __break(1u);
LABEL_167:
                            OUTLINED_FUNCTION_50();
                            v271 = swift_allocError();
                            swift_willThrow();

                            v316 = v271;
                            v272 = v271;
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
                            if (swift_dynamicCast())
                            {
                              v315[0] = 0;
                              v315[1] = 0xE000000000000000;
                              sub_237C08EDC();
                              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
                              sub_237C0907C();
                              MEMORY[0x2383DC360](39, 0xE100000000000000);
                              sub_237C090DC();
                              __break(1u);
                              JUMPOUT(0x237A728C8);
                            }

                            sub_2379E8CE8(v222, v308, v310);

                            sub_2379E8CE8(v322, *(&v322 + 1), v323);

                            while (1)
                            {
LABEL_165:
                              swift_unexpectedError();
                              __break(1u);
                              OUTLINED_FUNCTION_56_4();
                            }
                          }
                        }

                        if (v229)
                        {
                          goto LABEL_167;
                        }

                        *(v213 + 8 * (v223 >> 6) + 64) |= 1 << v223;
                        v231 = *(v213 + 48) + 24 * v223;
                        v232 = v323;
                        *v231 = v322;
                        *(v231 + 16) = v232;
                        v233 = *(v213 + 56) + 24 * v223;
                        v234 = v308;
                        *v233 = v222;
                        *(v233 + 8) = v234;
                        *(v233 + 16) = v310;
                        v235 = *(v213 + 16);
                        v227 = __OFADD__(v235, 1);
                        v236 = v235 + 1;
                        if (v227)
                        {
                          goto LABEL_130;
                        }

                        *(v213 + 16) = v236;
                      }

                      v215 = 4;

                      v214 = 0;
                      v55 = v307;
                      v204 = v304;
LABEL_110:
                      if (v314 >= sub_237A2E9F4())
                      {
                        break;
                      }

                      *v209 = v213;
                      v209[1] = v214;
                      *(v209 + 16) = v215;
                      v209 += 3;
                      v208 = v313;
                      if (v313 == v204)
                      {
                        OUTLINED_FUNCTION_92_1();
                        v188 = v294;
                        v195 = v293;
                        v198 = v300;
                        v243 = v299;
                        goto LABEL_115;
                      }
                    }

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
                    OUTLINED_FUNCTION_92_1();
                    __break(1u);
LABEL_141:
                    __break(1u);
LABEL_142:
                    __break(1u);
LABEL_143:
                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);

                    __break(1u);
LABEL_144:
                    OUTLINED_FUNCTION_67_2();
                    OUTLINED_FUNCTION_19_13();
                    sub_237C08EDC();

                    OUTLINED_FUNCTION_7_18("DataTable has no column named ");
                    MEMORY[0x2383DC360](v311, v312);
                    OUTLINED_FUNCTION_68_1();
                    v56 = *(&v322 + 1);
                    sub_2379E8AF0();
                    OUTLINED_FUNCTION_50();
                    v57 = swift_allocError();
                    OUTLINED_FUNCTION_8_18(v57, v267);
LABEL_160:
                    sub_2379DBC9C(v57, v268);
                    __break(1u);

LABEL_161:
                    OUTLINED_FUNCTION_19_13();
                    sub_237C08EDC();

                    OUTLINED_FUNCTION_7_18("DataTable has no column named ");
                    MEMORY[0x2383DC360](v311, v312);
                    OUTLINED_FUNCTION_68_1();
                    sub_2379E8AF0();
                    OUTLINED_FUNCTION_50();
                    v57 = swift_allocError();
                    OUTLINED_FUNCTION_8_18(v57, v269);
LABEL_163:
                    sub_2379DBC9C(v57, v270);
                    __break(1u);
LABEL_164:
                    __break(1u);
                    goto LABEL_165;
                  }

                  v244 = v302;
                  sub_2379E8CE8(v203, v302, 3);
                  sub_2379E8CE8(v203, v244, 3);
                  v243 = MEMORY[0x277D84F90];
                }

                else
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                  v243 = 0;
                }

LABEL_115:
                v199 = v306;
                v321 = v306;
                v246 = *(v306 + 16);
                v245 = *(v306 + 24);
                if (v246 >= v245 >> 1)
                {
                  OUTLINED_FUNCTION_106(v245);
                  sub_237AC8BF4();
                  v199 = v321;
                }

                ++v198;
                *(v199 + 16) = v246 + 1;
                *(v199 + 8 * v246 + 32) = v243;
                if (v198 == v195)
                {
                  goto LABEL_124;
                }
              }
            }

            v199 = MEMORY[0x277D84F90];
LABEL_124:
            *&v322 = v199;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE30, &qword_237C0ECB8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE38, &qword_237C0ECC0);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BE40);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5(&v308);
            sub_237C05EFC();
            sub_237C05D4C();
            v253 = OUTLINED_FUNCTION_52_5();
            sub_2379DBC9C(v253, v254);
            v128 = OUTLINED_FUNCTION_33_5(&v307);
            v130 = &v309;
            goto LABEL_125;
          case 4:
            v301 = 32;
            OUTLINED_FUNCTION_41_6();
            if (v131)
            {
              goto LABEL_151;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v132 = swift_allocObject();
            v133 = OUTLINED_FUNCTION_53_5(v132);
            OUTLINED_FUNCTION_15_12(v133);
            sub_237A60248(v134);
            v135 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v135, v136);
            *&v314 = v57;
            if (v322 != 4)
            {
              v256 = 0;
              goto LABEL_152;
            }

            v137 = v57[2];
            v138 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v138, v139);
            v140 = sub_237A2F128();
            v141 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v141, v142);
            if (v140 < 0)
            {
              goto LABEL_136;
            }

            if (v140)
            {
              v315[0] = MEMORY[0x277D84F90];
              sub_237AC8BD4();
              v150 = 0;
              v151 = v315[0];
              do
              {
                OUTLINED_FUNCTION_15_12(v57);
                OUTLINED_FUNCTION_74_2(v152);
                v153 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v153, v154);
                v155 = v322;
                if (v323 == 4)
                {
                  v156 = *(v322 + 16);
                  if (v156)
                  {
                    v157 = v140;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE28, &qword_237C0ECB0);
                    v158 = swift_allocObject();
                    v159 = _swift_stdlib_malloc_size(v158);
                    v158[2] = v156;
                    v158[3] = 2 * ((v159 - 32) / 48);
                    v160 = sub_237BA1DAC(&v322, (v158 + 4), v156, v155);
                    v161 = *(&v322 + 1);
                    v162 = v323;
                    v163 = v324;

                    sub_2379E8FD0(v161, v162, v163);
                    if (v160 != v156)
                    {
                      goto LABEL_133;
                    }

                    v55 = v307;
                    v140 = v157;
                    v57 = v314;
                  }

                  else
                  {
                    sub_2379E8CE8(v322, *(&v322 + 1), 4);
                    v158 = MEMORY[0x277D84F90];
                  }
                }

                else
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                  v158 = 0;
                }

                v315[0] = v151;
                v165 = *(v151 + 16);
                v164 = *(v151 + 24);
                if (v165 >= v164 >> 1)
                {
                  OUTLINED_FUNCTION_106(v164);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8BD4();
                  v151 = v315[0];
                }

                ++v150;
                *(v151 + 16) = v165 + 1;
                *(v151 + 8 * v165 + 32) = v158;
              }

              while (v140 != v150);
            }

            else
            {
              v151 = MEMORY[0x277D84F90];
            }

            sub_237B99480(v151, v143, v144, v145, v146, v147, v148, v149, v274, v276, v277);
            v248 = v247;

            *&v322 = v248;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE10, &qword_237C0ECA0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE18, &qword_237C0ECA8);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BE20, &qword_27DE9BE18, &qword_237C0ECA8);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_66_3(&v312);
            OUTLINED_FUNCTION_87_1();
            v249 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v249, v250);
            v128 = OUTLINED_FUNCTION_50_5();
            v130 = &v313;
            goto LABEL_125;
          case 5:
            OUTLINED_FUNCTION_41_6();
            if (v108)
            {
              OUTLINED_FUNCTION_67_2();
              goto LABEL_155;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v109 = swift_allocObject();
            v110 = OUTLINED_FUNCTION_53_5(v109);
            OUTLINED_FUNCTION_15_12(v110);
            sub_237A60248(v111);
            v112 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v112, v113);
            if (v322 != 5)
            {
              v266 = 0;
              goto LABEL_157;
            }

            v114 = v57[2];
            v115 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v115, v116);
            v117 = sub_237A2F128();
            v118 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v118, v119);
            if (v117 < 0)
            {
              goto LABEL_137;
            }

            v120 = MEMORY[0x277D84F90];
            if (v117)
            {
              v315[0] = MEMORY[0x277D84F90];
              sub_237C08FCC();
              v121 = 0;
              do
              {
                OUTLINED_FUNCTION_15_12(v57);
                OUTLINED_FUNCTION_74_2(v122);
                v123 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v123, v124);
                if (v323 != 5)
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                }

                ++v121;
                sub_237C08F8C();
                v125 = *(v315[0] + 16);
                sub_237C08FEC();
                sub_237C08FFC();
                sub_237C08F9C();
              }

              while (v117 != v121);
              v120 = v315[0];
            }

            *&v322 = v120;
            sub_237A36634();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BE00, &qword_237C0EC98);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BE08, &qword_27DE9BE00, &qword_237C0EC98);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_66_3(&v322);
            OUTLINED_FUNCTION_87_1();
            v126 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v126, v127);
            v128 = OUTLINED_FUNCTION_50_5();
            v130 = &v322 + 1;
            goto LABEL_125;
          case 6:
            goto LABEL_24;
          default:
            OUTLINED_FUNCTION_41_6();
            if (v65)
            {
              goto LABEL_144;
            }

            OUTLINED_FUNCTION_14_14();
            OUTLINED_FUNCTION_70_2();
            OUTLINED_FUNCTION_69_2();
            type metadata accessor for _UntypedColumn();
            OUTLINED_FUNCTION_103();
            v66 = swift_allocObject();
            v67 = OUTLINED_FUNCTION_53_5(v66);
            OUTLINED_FUNCTION_15_12(v67);
            sub_237A60248(v68);
            v69 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v69, v70);
            if (v322)
            {
              v268 = 0;
              goto LABEL_160;
            }

            v71 = v57[2];
            v72 = OUTLINED_FUNCTION_88();
            sub_2379DBCF4(v72, v73);
            v74 = sub_237A2F128();
            v75 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v75, v76);
            if (v74 < 0)
            {
              goto LABEL_134;
            }

            if (v74)
            {
              OUTLINED_FUNCTION_26_9(MEMORY[0x277D84F90]);
              sub_237AC8C34();
              v77 = v315[0];
              do
              {
                OUTLINED_FUNCTION_15_12(v57);
                OUTLINED_FUNCTION_74_2(v78);
                v79 = OUTLINED_FUNCTION_88();
                sub_2379DBC9C(v79, v80);
                if (v323)
                {
                  sub_2379E8CE8(v322, *(&v322 + 1), v323);
                }

                OUTLINED_FUNCTION_82_2();
                if (v82)
                {
                  OUTLINED_FUNCTION_106(v81);
                  OUTLINED_FUNCTION_49_2();
                  sub_237AC8C34();
                  v77 = v315[0];
                }

                OUTLINED_FUNCTION_42_2();
              }

              while (!v83);
            }

            else
            {
              v77 = MEMORY[0x277D84F90];
            }

            *&v322 = v77;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
            OUTLINED_FUNCTION_44();
            OUTLINED_FUNCTION_91_0(&qword_27DE9BAB8);
            OUTLINED_FUNCTION_47_6();
            OUTLINED_FUNCTION_34_5(&v316);
            sub_237C05EFC();
            OUTLINED_FUNCTION_44_4();
            v106 = OUTLINED_FUNCTION_88();
            sub_2379DBC9C(v106, v107);
            v103 = OUTLINED_FUNCTION_33_5(&v314);
            v105 = &v317;
            goto LABEL_41;
        }

        goto LABEL_6;
      }
    }

LABEL_24:
  }

  sub_2379DBC9C(v296, v298);
}

uint64_t sub_237A72900@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v639 = a2;
  v661 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F8, &qword_237C0CA08);
  v6 = OUTLINED_FUNCTION_20(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_0();
  v607 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_58();
  v605 = v11;
  v589 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B0, &unk_237C15250);
  OUTLINED_FUNCTION_0(v589);
  v604 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  v603 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B120, &qword_237C0CA20);
  v18 = OUTLINED_FUNCTION_20(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v602 = v21;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_58();
  v601 = v23;
  v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0(v587);
  v600 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_23();
  v599 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B118, &qword_237C0CA18);
  v30 = OUTLINED_FUNCTION_20(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_0();
  v598 = v33;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_58();
  v596 = v35;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0A0, &qword_237C0E2D0);
  OUTLINED_FUNCTION_0(v586);
  v595 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23();
  v594 = v40;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B090, &unk_237C14050);
  OUTLINED_FUNCTION_0(v611);
  v593 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_23();
  v610 = v45;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB0, &qword_237C0EC10);
  OUTLINED_FUNCTION_0(v606);
  v597 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_23();
  v621 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB8, &qword_237C0EC18);
  OUTLINED_FUNCTION_20(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_23();
  v590 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  OUTLINED_FUNCTION_20(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_23();
  v608 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC0, &qword_237C0EC20);
  OUTLINED_FUNCTION_20(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_23();
  v609 = v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  OUTLINED_FUNCTION_20(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_23();
  v612 = v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  OUTLINED_FUNCTION_20(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_23();
  v613 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  OUTLINED_FUNCTION_20(v76);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_23();
  v614 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  OUTLINED_FUNCTION_20(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_23();
  v615 = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_20(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_23();
  v616 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  OUTLINED_FUNCTION_20(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_23();
  v618 = v95;
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
  v96 = OUTLINED_FUNCTION_0(v630);
  v617 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_14_0();
  v592 = v100;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_138();
  v628 = v102;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_58();
  v629 = v104;
  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  v105 = OUTLINED_FUNCTION_0(v632);
  v619 = v106;
  v108 = *(v107 + 64);
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_14_0();
  v620 = v109;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_58();
  v631 = v111;
  v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v112 = OUTLINED_FUNCTION_0(v635);
  v624 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_14_0();
  v591 = v116;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_138();
  v633 = v118;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_58();
  v634 = v120;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  v121 = OUTLINED_FUNCTION_0(v636);
  v622 = v122;
  v124 = *(v123 + 64);
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_14_0();
  v623 = v125;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_58();
  v637 = v127;
  v644 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC8, &qword_237C0EC28);
  OUTLINED_FUNCTION_0(v644);
  v625 = v128;
  v130 = *(v129 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_23();
  v643 = v132;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  v133 = OUTLINED_FUNCTION_0(v646);
  v638 = v134;
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_14_0();
  v588 = v137;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_138();
  v647 = v139;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_58();
  v645 = v141;
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  v142 = OUTLINED_FUNCTION_0(v640);
  v649 = v143;
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_14_0();
  v626 = v146;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_138();
  v627 = v148;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_58();
  v642 = v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCD0, &qword_237C0EC30);
  v152 = OUTLINED_FUNCTION_20(v151);
  v154 = *(v153 + 64);
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_14_0();
  v653 = v155;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_58();
  *&v652 = v157;
  *&v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCD8, &qword_237C0EC38);
  OUTLINED_FUNCTION_0(v655);
  v641 = v158;
  v160 = *(v159 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_23();
  *&v654 = v162;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0(v659);
  v648 = v163;
  v165 = *(v164 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_23();
  v657 = v167;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0(v168);
  *&v650 = v169;
  v171 = *(v170 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v172);
  v174 = &v586 - v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B060, &qword_237C0C9D0);
  OUTLINED_FUNCTION_0(v175);
  v651 = v176;
  v178 = *(v177 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v179);
  v181 = &v586 - v180;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0(v182);
  v658 = v183;
  v185 = *(v184 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v186);
  v188 = &v586 - v187;
  v189 = a1;
  v190 = sub_237C05FFC();
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v181 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD80, &qword_27DE9AB98, &unk_237C0B900);
    v191 = v188;
    v192 = sub_237C08B3C();
    LOBYTE(v174) = v182;
    if (!v192)
    {
      v221 = OUTLINED_FUNCTION_83_2();
      v222(v221);
LABEL_17:
      v181 = v661;
      OUTLINED_FUNCTION_17_11();
      MEMORY[0x28223BE20](v223);
      OUTLINED_FUNCTION_3_28();
LABEL_24:
      sub_237BBDC94(sub_237A7B8A0);
      v235 = OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_12_0(v235);
      (*(v236 + 8))(v189);
      goto LABEL_25;
    }

    v193 = v192;
    OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
    v194 = *&v667[0];
    v191 = v188;
    sub_237C08B2C();
    if ((v193 & 0x8000000000000000) == 0)
    {
      v656 = v189;
      do
      {
        OUTLINED_FUNCTION_28_5();
        sub_237C08B9C();
        v196 = *v195;
        v197 = *(v195 + 8);
        v198 = OUTLINED_FUNCTION_59_3();
        v199(v198);
        *&v667[0] = v194;
        v201 = *(v194 + 16);
        v200 = *(v194 + 24);
        if (v201 >= v200 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v200);
          LODWORD(v659) = v202;
          sub_237AC8A94();
          v194 = *&v667[0];
        }

        *(v194 + 16) = v201 + 1;
        OUTLINED_FUNCTION_58_4(v194 + 24 * v201);
        v191 = v188;
        sub_237C08B6C();
        --v193;
      }

      while (v193);
      v203 = OUTLINED_FUNCTION_83_2();
      v204(v203);
      v189 = v656;
      goto LABEL_17;
    }

    __break(1u);
LABEL_130:
    (*(v189 + 8))(v642, v193);
LABEL_98:
    OUTLINED_FUNCTION_32_6();
    MEMORY[0x28223BE20](v359);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    v360 = OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_12_0(v360);
    (*(v361 + 8))(v656);
    goto LABEL_25;
  }

  v205 = v168;
  v206 = v657;
  v207 = v189;
  if (swift_dynamicCastMetatype())
  {
    sub_237C05FEC();
    v208 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD78, &qword_27DE9B060, &qword_237C0C9D0);
    v191 = v181;
    v174 = v175;
    sub_237C08B3C();
    OUTLINED_FUNCTION_61_4();
    if (v209)
    {
      v210 = v209;
      v656 = v189;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v211 = *&v667[0];
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if ((v210 & 0x8000000000000000) == 0)
      {
        do
        {
          OUTLINED_FUNCTION_28_5();
          sub_237C08B9C();
          v213 = *v212;
          v214 = *(v212 + 4);
          v215 = OUTLINED_FUNCTION_59_3();
          v216(v215);
          *&v667[0] = v211;
          v217 = v174;
          v219 = *(v211 + 16);
          v218 = *(v211 + 24);
          if (v219 >= v218 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v218);
            LODWORD(v659) = v220;
            sub_237AC8A94();
            v211 = *&v667[0];
          }

          *(v211 + 16) = v219 + 1;
          OUTLINED_FUNCTION_58_4(v211 + 24 * v219);
          v191 = v181;
          sub_237C08B6C();
          --v210;
          v174 = v217;
        }

        while (v210);
        v224 = *(v651 + 8);
        v225 = OUTLINED_FUNCTION_55();
        v226(v225);
        v189 = v656;
        v181 = v661;
        goto LABEL_23;
      }

      __break(1u);
LABEL_136:
      v181 = v656;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080);
      OUTLINED_FUNCTION_36_4();
      if (swift_dynamicCastMetatype())
      {
        OUTLINED_FUNCTION_12_17();
        sub_237C05FEC();
        v423 = OUTLINED_FUNCTION_13_14();
        sub_237A783D0(v423, v424);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
        OUTLINED_FUNCTION_23_2();
        if (!swift_dynamicCastMetatype())
        {
          goto LABEL_143;
        }

        OUTLINED_FUNCTION_12_17();
        sub_237C05FEC();
        v431 = OUTLINED_FUNCTION_13_14();
        sub_237A77FC0(v431, v432);
      }

LABEL_160:
      if (!v3)
      {
        v447 = sub_237C0602C();
        OUTLINED_FUNCTION_12_0(v447);
        result = (*(v448 + 8))(v181);
        v191 = *&v671[0];
        LOBYTE(v174) = BYTE8(v671[0]);
        goto LABEL_163;
      }

      goto LABEL_161;
    }

LABEL_22:
    v231 = *(v651 + 8);
    v232 = OUTLINED_FUNCTION_55();
    v233(v232);
LABEL_23:
    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v234);
    OUTLINED_FUNCTION_3_28();
    goto LABEL_24;
  }

  v227 = swift_dynamicCastMetatype();
  v181 = v661;
  if (v227)
  {
    v228 = v174;
    v656 = v189;
    sub_237C05FEC();
    OUTLINED_FUNCTION_1_28(&qword_27DE9BD70, &qword_27DE9AB88, &qword_237C0B8F0);
    v191 = v174;
    LOBYTE(v174) = v205;
    v229 = sub_237C08B3C();
    if (v229)
    {
      v189 = v229;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v230 = *&v667[0];
      v191 = v228;
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if ((v189 & 0x8000000000000000) == 0)
      {
        do
        {
          OUTLINED_FUNCTION_28_5();
          sub_237C08B9C();
          v351 = *v350;
          v352 = *(v350 + 8);
          v353 = OUTLINED_FUNCTION_59_3();
          v354(v353);
          *&v667[0] = v230;
          v356 = *(v230 + 16);
          v355 = *(v230 + 24);
          v181 = v356 + 1;
          if (v356 >= v355 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v355);
            LODWORD(v659) = v349;
            sub_237AC8A94();
            v230 = *&v667[0];
          }

          *(v230 + 16) = v181;
          OUTLINED_FUNCTION_58_4(v230 + 24 * v356);
          v191 = v228;
          sub_237C08B6C();
          --v189;
        }

        while (v189);
        v357 = OUTLINED_FUNCTION_76_2();
        v358(v357);
        OUTLINED_FUNCTION_61_4();
        goto LABEL_98;
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_31:
    v243 = OUTLINED_FUNCTION_76_2();
    v244(v243);
    goto LABEL_98;
  }

  if (swift_dynamicCastMetatype())
  {
    v238 = v206;
    sub_237C05FEC();
    LOBYTE(v174) = OUTLINED_FUNCTION_1_28(&qword_27DE9BD68, &qword_27DE9ACA0, &unk_237C0E0E0);
    v191 = v206;
    v239 = v659;
    OUTLINED_FUNCTION_55();
    v240 = sub_237C08B3C();
    v241 = v207;
    if (v240)
    {
      v242 = v240;
      v656 = v241;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v181 = *&v667[0];
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55();
      sub_237C08B2C();
      if (v242 < 0)
      {
        __break(1u);
        goto LABEL_31;
      }

      do
      {
        OUTLINED_FUNCTION_28_5();
        v392 = sub_237C08B9C();
        v394 = *v393;
        v395 = v393[1];

        v396 = OUTLINED_FUNCTION_11_18();
        v392(v396);
        if (v395)
        {
          v397 = v394;
        }

        else
        {
          v397 = 0;
        }

        if (v395)
        {
          v398 = 2;
        }

        else
        {
          v398 = 6;
        }

        *&v667[0] = v181;
        v400 = *(v181 + 16);
        v399 = *(v181 + 24);
        if (v400 >= v399 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v399);
          LODWORD(v658) = v389;
          v391 = v390;
          sub_237AC8A94();
          v397 = v391;
          v398 = v658;
          v181 = *&v667[0];
        }

        *(v181 + 16) = v400 + 1;
        v401 = v181 + 24 * v400;
        *(v401 + 32) = v397;
        *(v401 + 40) = v395;
        *(v401 + 48) = v398;
        v191 = v238;
        v402 = v659;
        sub_237C08B6C();
        --v242;
      }

      while (v242);
      v403 = OUTLINED_FUNCTION_2_19();
      v404(v403, v402);
      v241 = v656;
      v181 = v661;
    }

    else
    {
      v268 = OUTLINED_FUNCTION_2_19();
      v269(v268, v239);
    }

    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v405);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    v406 = OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_12_0(v406);
    (*(v407 + 8))(v241);
    goto LABEL_25;
  }

  v245 = sub_237C05BFC();
  OUTLINED_FUNCTION_36_4();
  v246 = swift_dynamicCastMetatype();
  v205 = v660;
  if (v246)
  {
    v247 = v654;
    v659 = v245;
    sub_237C05FEC();
    v174 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD60, &qword_27DE9BCD8, &qword_237C0EC38);
    v191 = v247;
    v248 = v655;
    OUTLINED_FUNCTION_55();
    v249 = sub_237C08B3C();
    if (v249)
    {
      v250 = v249;
      v656 = v207;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      v208 = *&v667[0];
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55();
      sub_237C08B2C();
      if (v250 < 0)
      {
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v657 = (v659 - 1);
      v658 = v174;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v251 = sub_237C08B9C();
        v253 = OUTLINED_FUNCTION_85_1(v251, v252);
        v254 = v652;
        sub_237A7B7A0(v253, v652, &qword_27DE9BCD0, &qword_237C0EC30);
        v255 = OUTLINED_FUNCTION_11_18();
        (v191)(v255);
        v256 = v653;
        sub_237A7B7A0(v254, v653, &qword_27DE9BCD0, &qword_237C0EC30);
        v257 = OUTLINED_FUNCTION_117_0();
        v258 = v659;
        if (__swift_getEnumTagSinglePayload(v257, v259, v659) == 1)
        {
          sub_237A7B808(v254, &qword_27DE9BCD0, &qword_237C0EC30);
          sub_237A7B808(v256, &qword_27DE9BCD0, &qword_237C0EC30);
          v260 = 6;
          v261 = 0;
        }

        else
        {
          sub_237C05BDC();
          v261 = v262;
          sub_237A7B808(v254, &qword_27DE9BCD0, &qword_237C0EC30);
          v263 = *(*(v258 - 8) + 8);
          v264 = OUTLINED_FUNCTION_84();
          v265(v264);
          v260 = 1;
        }

        *&v667[0] = v208;
        v174 = *(v208 + 16);
        v266 = *(v208 + 24);
        if (v174 >= v266 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v266);
          sub_237AC8A94();
          v208 = *&v667[0];
        }

        *(v208 + 16) = v174 + 1;
        v267 = v208 + 24 * v174;
        *(v267 + 32) = v261;
        *(v267 + 40) = 0;
        *(v267 + 48) = v260;
        v191 = v654;
        LOBYTE(v174) = v658;
        sub_237C08B6C();
        --v250;
        v181 = v661;
      }

      while (v250);
      v270 = *(v641 + 8);
      v271 = OUTLINED_FUNCTION_84();
      v272(v271);
      v273 = v656;
    }

    else
    {
      v297 = OUTLINED_FUNCTION_2_19();
      v298(v297, v248);
      v273 = v207;
    }

    OUTLINED_FUNCTION_32_6();
    MEMORY[0x28223BE20](v299);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    v300 = OUTLINED_FUNCTION_45_2();
    OUTLINED_FUNCTION_12_0(v300);
    (*(v301 + 8))(v273);
LABEL_25:

    goto LABEL_26;
  }

  v656 = v189;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  OUTLINED_FUNCTION_36_4();
  if (swift_dynamicCastMetatype())
  {
    v208 = v638;
    if (v639)
    {
      v274 = v642;
      sub_237C05FEC();
      v174 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD58, &qword_27DE9B0D0, &unk_237C15270);
      v191 = v274;
      v275 = v640;
      v276 = sub_237C08B3C();
      if (v276)
      {
        v277 = MEMORY[0x277D84F90];
        *&v667[0] = MEMORY[0x277D84F90];
        *&v655 = v276;
        OUTLINED_FUNCTION_46_4();
        OUTLINED_FUNCTION_37_3();
        v658 = v174;
        sub_237C08B2C();
        v189 = v649;
        if ((v655 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_152;
        }

        v278 = 0;
        *&v654 = v208 + 16;
        v653 = v208 + 8;
        v652 = xmmword_237C0B660;
        v208 = v645;
        v174 = v646;
        while (1)
        {
          v657 = v278 + 1;
          if (__OFADD__(v278, 1))
          {
            goto LABEL_146;
          }

          OUTLINED_FUNCTION_28_5();
          v3 = sub_237C08B9C();
          v280 = *v279;

          v281 = OUTLINED_FUNCTION_11_18();
          v3(v281);
          if (v280)
          {
            v660 = *(v280 + 16);
            if (v660)
            {
              *&v671[0] = v277;
              sub_237AC8AD4();
              v282 = v660;
              v208 = 0;
              v283 = *&v671[0];
              while (v208 < *(v280 + 16))
              {
                v284 = *(v280 + 8 * v208 + 32);
                if (v284 != v284)
                {
                  sub_2379E8AF0();
                  OUTLINED_FUNCTION_50();
                  v321 = swift_allocError();
                  *v322 = 0xD00000000000001FLL;
                  v322[1] = 0x8000000237C199A0;
                  OUTLINED_FUNCTION_38_4(v321, v322);
                  OUTLINED_FUNCTION_72_3(v323, v324);

                  v325 = sub_237C0602C();
                  OUTLINED_FUNCTION_12_0(v325);
                  (*(v326 + 8))(v656);
                  (*(v189 + 8))(v642, v640);
                }

                *&v671[0] = v283;
                v286 = *(v283 + 16);
                v285 = *(v283 + 24);
                if (v286 >= v285 >> 1)
                {
                  OUTLINED_FUNCTION_106(v285);
                  OUTLINED_FUNCTION_84_2();
                  sub_237AC8AD4();
                  v282 = v660;
                  v283 = *&v671[0];
                }

                ++v208;
                *(v283 + 16) = v286 + 1;
                *(v283 + 4 * v286 + 32) = v284;
                v277 = MEMORY[0x277D84F90];
                v189 = v649;
                if (v282 == v208)
                {
                  v208 = v645;
                  v174 = v646;
                  goto LABEL_61;
                }
              }

              __break(1u);
LABEL_143:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B160, &qword_237C0CA48);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v433 = OUTLINED_FUNCTION_13_14();
                sub_237A786C4(v433, v434);
                goto LABEL_160;
              }

LABEL_147:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v435 = OUTLINED_FUNCTION_13_14();
                sub_237A789B8(v435, v436);
                goto LABEL_160;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B158, &qword_237C0CA40);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v437 = OUTLINED_FUNCTION_13_14();
                sub_237A78CAC(v437, v438);
                goto LABEL_160;
              }

LABEL_152:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE8, &qword_237C0EC40);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v439 = OUTLINED_FUNCTION_13_14();
                sub_237A78FA0(v439, v440);
                goto LABEL_160;
              }

LABEL_155:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B190, &qword_237C152D0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v441 = OUTLINED_FUNCTION_13_14();
                sub_237A79588(v441, v442);
                goto LABEL_160;
              }

LABEL_158:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE58, &unk_237C0C6F0);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                OUTLINED_FUNCTION_12_17();
                sub_237C05FEC();
                v443 = OUTLINED_FUNCTION_13_14();
                sub_237A79294(v443, v444);
                goto LABEL_160;
              }

LABEL_165:
              LOBYTE(v174) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCF0, &qword_237C0EC48);
              OUTLINED_FUNCTION_23_2();
              if (swift_dynamicCastMetatype())
              {
                sub_237C05FEC();
                v191 = v208;
                v647 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD18, &qword_27DE9BCB0, &qword_237C0EC10);
                v645 = sub_237C08B3C();
                if (v645)
                {
                  v680 = MEMORY[0x277D84F90];
                  v449 = v645;
                  OUTLINED_FUNCTION_46_4();
                  v646 = v680;
                  sub_237C08B2C();
                  if ((v449 & 0x8000000000000000) == 0)
                  {
                    v648 = 0;
                    while (1)
                    {
                      if (__OFADD__(v648++, 1))
                      {
                        __break(1u);
                        break;
                      }

                      v451 = sub_237C08B9C();
                      v453 = *v452;

                      v454 = OUTLINED_FUNCTION_11_18();
                      v451(v454);
                      v660 = v453;
                      if (v453)
                      {
                        v174 = *(v660 + 16);
                        if (v174)
                        {
                          v679 = MEMORY[0x277D84F90];
                          sub_237AC8AB4();
                          *&v655 = v679;
                          v191 = v660;
                          v455 = sub_237B024B4(v660);
                          v658 = v456;
                          v659 = v191 + 8;
                          for (i = (v174 - 1); ; i = v657 - 1)
                          {
                            v657 = i;
                            if (v455 < 0 || v455 >= 1 << *(v660 + 32))
                            {
                              break;
                            }

                            *&v654 = v455 >> 6;
                            if ((v659[v455 >> 6] & (1 << v455)) == 0)
                            {
                              goto LABEL_252;
                            }

                            if (v658 != *(v660 + 36))
                            {
                              goto LABEL_253;
                            }

                            v458 = v660;
                            sub_2379E8F20(*(v660 + 48) + 40 * v455, v671);
                            v459 = *(v458 + 56) + 32 * v455;
                            v191 = v671;
                            sub_237A7B7A0(v459, v673, &qword_27DE9A998, &unk_237C0C100);
                            v667[0] = v671[0];
                            v667[1] = v671[1];
                            v668 = v672;
                            v669 = v673[0];
                            v670 = v673[1];
                            sub_237A7B7A0(v667, v666, &qword_27DE9BD20, &qword_237C0EC50);
                            sub_237A7B7A0(v666, v664, &qword_27DE9BD28, &qword_237C0EC58);
                            if (v664[3])
                            {
                              v460 = OUTLINED_FUNCTION_81_1();
                              memcpy(v460, v461, 0x48uLL);
                              v462 = OUTLINED_FUNCTION_81_1();
                              sub_237A7B7A0(v462, v463, &qword_27DE9BD20, &qword_237C0EC50);
                              if (v664[8])
                              {
                                v464 = OUTLINED_FUNCTION_60_5();
                                sub_2379DAD24(v464, v663);
                                sub_2379E8F7C(v664);
                                v465 = OUTLINED_FUNCTION_81_1();
                                sub_237A7B7A0(v465, v466, &qword_27DE9BD20, &qword_237C0EC50);
                                v191 = v664;
                                sub_237C08E6C();
                                sub_2379E8F7C(v664);
                                sub_237AFCC90(&v662, &v674);
                                if (v205)
                                {
                                  __swift_destroy_boxed_opaque_existential_1(v663);
LABEL_220:
                                  sub_237A7B808(v665, &qword_27DE9BD20, &qword_237C0EC50);
                                  v510 = OUTLINED_FUNCTION_60_5();
                                  sub_237A7B808(v510, v511, v512);
                                  sub_237A7B808(v666, &qword_27DE9BD28, &qword_237C0EC58);

                                  v513 = sub_237C0602C();
                                  OUTLINED_FUNCTION_12_0(v513);
                                  (*(v514 + 8))(v181);
                                  sub_237A7B808(v667, &qword_27DE9BD20, &qword_237C0EC50);
                                  v515 = OUTLINED_FUNCTION_35_5();
                                  v516(v515);
                                }

                                v467 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v467, &qword_27DE9A998, &unk_237C0C100);
                                sub_2379FED88(v663, v664);
                                sub_237AFCC90(v664, &v676);
                                __swift_destroy_boxed_opaque_existential_1(v663);
                                sub_237A7B808(v665, &qword_27DE9BD20, &qword_237C0EC50);
                                v651 = v676;
                                *&v652 = v677;
                                v468 = v678;
                              }

                              else
                              {
                                v469 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v469, &qword_27DE9A998, &unk_237C0C100);
                                sub_2379E8F7C(v664);
                                v470 = OUTLINED_FUNCTION_81_1();
                                sub_237A7B7A0(v470, v471, &qword_27DE9BD20, &qword_237C0EC50);
                                v191 = v664;
                                sub_237C08E6C();
                                sub_2379E8F7C(v664);
                                sub_237AFCC90(v663, &v674);
                                if (v205)
                                {
                                  goto LABEL_220;
                                }

                                sub_237A7B808(v665, &qword_27DE9BD20, &qword_237C0EC50);
                                v472 = OUTLINED_FUNCTION_60_5();
                                sub_237A7B808(v472, &qword_27DE9A998, &unk_237C0C100);
                                *&v652 = 0;
                                v651 = 0;
                                v676 = 0;
                                v677 = 0;
                                v468 = 6;
                                v678 = 6;
                              }
                            }

                            else
                            {
                              sub_237A7B808(v664, &qword_27DE9BD28, &qword_237C0EC58);
                              *&v652 = 0;
                              v651 = 0;
                              v674 = 0uLL;
                              v675 = 6;
                              v676 = 0;
                              v677 = 0;
                              v468 = 6;
                              v678 = 6;
                            }

                            sub_237A7B808(v666, &qword_27DE9BD28, &qword_237C0EC58);
                            sub_237A7B808(v667, &qword_27DE9BD20, &qword_237C0EC50);
                            v650 = v674;
                            LODWORD(v649) = v675;
                            v679 = v655;
                            v174 = *(v655 + 16);
                            v473 = *(v655 + 24);
                            v653 = v174 + 1;
                            if (v174 >= v473 >> 1)
                            {
                              OUTLINED_FUNCTION_106(v473);
                              v191 = &v679;
                              sub_237AC8AB4();
                              *&v655 = v679;
                            }

                            v474 = v655;
                            *(v655 + 16) = v653;
                            v475 = v474 + 48 * v174;
                            *(v475 + 32) = v650;
                            *(v475 + 48) = v649;
                            v476 = v652;
                            *(v475 + 56) = v651;
                            *(v475 + 64) = v476;
                            *(v475 + 72) = v468;
                            if (v455 >= -(-1 << *(v660 + 32)))
                            {
                              goto LABEL_254;
                            }

                            if ((v659[v654] & (1 << v455)) == 0)
                            {
                              goto LABEL_255;
                            }

                            if (v658 != *(v660 + 36))
                            {
                              goto LABEL_256;
                            }

                            v477 = sub_237C08E3C();
                            if (!v657)
                            {
                              goto LABEL_193;
                            }

                            v455 = v477;
                            v658 = *(v660 + 36);
                          }

                          __break(1u);
LABEL_252:
                          __break(1u);
LABEL_253:
                          __break(1u);
LABEL_254:
                          __break(1u);
LABEL_255:
                          __break(1u);
LABEL_256:
                          __break(1u);
LABEL_257:
                          (*(v604 + 8))(v603, v589);
                          OUTLINED_FUNCTION_32_6();
                          MEMORY[0x28223BE20](v573);
                          OUTLINED_FUNCTION_3_28();
                          sub_237BBDC94(sub_237A7B748);
                          v574 = OUTLINED_FUNCTION_45_2();
                          OUTLINED_FUNCTION_12_0(v574);
                          (*(v575 + 8))(v181);
LABEL_266:

LABEL_163:
                          v181 = v661;
LABEL_26:
                          *v181 = v191;
                          *(v181 + 8) = v174 & 1;
                          return result;
                        }

                        *&v655 = MEMORY[0x277D84F90];
LABEL_193:
                        if (*(v655 + 16))
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BD30, &qword_237C0EC60);
                          OUTLINED_FUNCTION_125();
                          v480 = sub_237C0912C();
                        }

                        else
                        {
                          v480 = MEMORY[0x277D84F98];
                        }

                        *&v671[0] = v480;
                        sub_237A7B42C(v655, 1, v671);
                        if (v205)
                        {
                          goto LABEL_272;
                        }

                        v478 = *&v671[0];
                        v479 = 4;
                      }

                      else
                      {
                        v478 = 0;
                        v479 = 6;
                      }

                      v680 = v646;
                      v174 = *(v646 + 16);
                      v481 = *(v646 + 24);
                      if (v174 >= v481 >> 1)
                      {
                        OUTLINED_FUNCTION_106(v481);
                        OUTLINED_FUNCTION_49_2();
                        sub_237AC8A94();
                        v646 = v680;
                      }

                      v482 = v646;
                      *(v646 + 16) = v174 + 1;
                      v483 = v482 + 24 * v174;
                      *(v483 + 32) = v478;
                      *(v483 + 40) = 0;
                      *(v483 + 48) = v479;
                      v191 = v208;
                      sub_237C08B6C();
                      if (v648 == v645)
                      {
                        v539 = OUTLINED_FUNCTION_35_5();
                        v541 = v540(v539);
                        goto LABEL_207;
                      }
                    }
                  }

                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_272:
                  result = swift_unexpectedError();
                  __break(1u);
                  return result;
                }

LABEL_206:
                v487 = OUTLINED_FUNCTION_35_5();
                v541 = v488(v487);
                v646 = MEMORY[0x277D84F90];
LABEL_207:
                *&v671[0] = v646;
                MEMORY[0x28223BE20](v541);
                OUTLINED_FUNCTION_3_28();
LABEL_249:
                sub_237BBDC94(sub_237A7B8A0);
                v565 = OUTLINED_FUNCTION_24_10();
                OUTLINED_FUNCTION_12_0(v565);
                (*(v566 + 8))(v181);
                goto LABEL_266;
              }

              v657 = sub_237A36634();
              if (swift_dynamicCastMetatype())
              {
                v174 = v610;
                OUTLINED_FUNCTION_89_0();
                v191 = v174;
                v659 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD10, &qword_27DE9B090, &unk_237C14050);
                v484 = sub_237C08B3C();
                if (v484)
                {
                  v485 = v484;
                  OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
                  v486 = *&v667[0];
                  v191 = v610;
                  sub_237C08B2C();
                  if (v485 < 0)
                  {
                    __break(1u);
                    goto LABEL_206;
                  }

                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v576 = sub_237C08B9C();
                    v578 = *v577;
                    v579 = *v577;
                    v580 = OUTLINED_FUNCTION_11_18();
                    v576(v580);
                    if (v578)
                    {
                      MLDataValue.MultiArrayType.init(_:)(v579);
                      v658 = *&v671[0];
                      v581 = 5;
                    }

                    else
                    {
                      v658 = 0;
                      v581 = 6;
                    }

                    *&v667[0] = v486;
                    v174 = *(v486 + 16);
                    v582 = *(v486 + 24);
                    if (v174 >= v582 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v582);
                      sub_237AC8A94();
                      v486 = *&v667[0];
                    }

                    *(v486 + 16) = v174 + 1;
                    v583 = v486 + 24 * v174;
                    *(v583 + 32) = v658;
                    *(v583 + 40) = 0;
                    *(v583 + 48) = v581;
                    v191 = v610;
                    sub_237C08B6C();
                    --v485;
                  }

                  while (v485);
                  v517 = (*(v593 + 8))(v610, v611);
                }

                else
                {
                  v517 = (*(v593 + 8))(v610, v611);
                  v486 = MEMORY[0x277D84F90];
                }

                *&v671[0] = v486;
                MEMORY[0x28223BE20](v517);
                OUTLINED_FUNCTION_3_28();
                sub_237BBDC94(sub_237A7B8A0);
                v584 = OUTLINED_FUNCTION_24_10();
                OUTLINED_FUNCTION_12_0(v584);
                (*(v585 + 8))(v181);
                goto LABEL_266;
              }

              if (swift_dynamicCastMetatype())
              {
                v174 = v594;
                OUTLINED_FUNCTION_89_0();
                v191 = v174;
                v658 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD08, &qword_27DE9B0A0, &qword_237C0E2D0);
                v489 = sub_237C08B3C();
                if (v489)
                {
                  v490 = v489;
                  *&v667[0] = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_46_4();
                  OUTLINED_FUNCTION_37_3();
                  sub_237C08B2C();
                  if (v490 < 0)
                  {
                    goto LABEL_269;
                  }

                  OUTLINED_FUNCTION_18_15(v624);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v491 = v594;
                    v492 = sub_237C08B9C();
                    v494 = OUTLINED_FUNCTION_85_1(v492, v493);
                    v495 = v596;
                    sub_237A7B7A0(v494, v596, &qword_27DE9B118, &qword_237C0CA18);
                    v496 = OUTLINED_FUNCTION_11_18();
                    v491(v496);
                    sub_237A7B7A0(v495, v598, &qword_27DE9B118, &qword_237C0CA18);
                    v497 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v497, v498, v635) == 1)
                    {
                      sub_237A7B808(v596, &qword_27DE9B118, &qword_237C0CA18);
                      sub_237A7B808(v598, &qword_27DE9B118, &qword_237C0CA18);
                      v174 = 0;
                      v499 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v500(v591, v598, v635);
                      OUTLINED_FUNCTION_79_2();
                      v501 = OUTLINED_FUNCTION_84();
                      v502(v501);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
                      OUTLINED_FUNCTION_36_4();
                      v503 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v503);
                      OUTLINED_FUNCTION_78_1();
                      v504 = OUTLINED_FUNCTION_55();
                      v505(v504);
                      sub_237A7B808(v596, &qword_27DE9B118, &qword_237C0CA18);
                      v174 = *&v671[0];
                      v499 = 5;
                    }

                    *&v667[0] = v659;
                    v507 = v659[2];
                    v506 = v659[3];
                    if (v507 >= v506 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v506);
                      OUTLINED_FUNCTION_49_2();
                      sub_237AC8A94();
                      v659 = *&v667[0];
                    }

                    v508 = v659;
                    v659[2] = v507 + 1;
                    v509 = v508 + 24 * v507;
                    *(v509 + 32) = v174;
                    *(v509 + 40) = 0;
                    *(v509 + 48) = v499;
                    v191 = v594;
                    sub_237C08B6C();
                    --v490;
                  }

                  while (v490);
                  (*(v595 + 8))(v594, v586);
                }

                else
                {
                  (*(v595 + 8))(v594, v586);
                  v659 = MEMORY[0x277D84F90];
                }

LABEL_248:
                OUTLINED_FUNCTION_80_2();
                MEMORY[0x28223BE20](v564);
                OUTLINED_FUNCTION_3_28();
                goto LABEL_249;
              }

              if (swift_dynamicCastMetatype())
              {
                v174 = v599;
                OUTLINED_FUNCTION_89_0();
                v191 = v174;
                v658 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD00, &qword_27DE9B098, &qword_237C15210);
                v518 = sub_237C08B3C();
                if (v518)
                {
                  v519 = v518;
                  *&v667[0] = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_46_4();
                  OUTLINED_FUNCTION_37_3();
                  sub_237C08B2C();
                  if (v519 < 0)
                  {
                    goto LABEL_270;
                  }

                  OUTLINED_FUNCTION_18_15(v617);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v520 = v599;
                    v521 = sub_237C08B9C();
                    v523 = OUTLINED_FUNCTION_85_1(v521, v522);
                    v524 = v601;
                    sub_237A7B7A0(v523, v601, &qword_27DE9B120, &qword_237C0CA20);
                    v525 = OUTLINED_FUNCTION_11_18();
                    v520(v525);
                    sub_237A7B7A0(v524, v602, &qword_27DE9B120, &qword_237C0CA20);
                    v526 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v526, v527, v630) == 1)
                    {
                      sub_237A7B808(v601, &qword_27DE9B120, &qword_237C0CA20);
                      sub_237A7B808(v602, &qword_27DE9B120, &qword_237C0CA20);
                      v174 = 0;
                      v528 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v529 = v592;
                      v530 = v630;
                      v531(v592, v602, v630);
                      OUTLINED_FUNCTION_79_2();
                      v532(v629, v529, v530);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);
                      OUTLINED_FUNCTION_36_4();
                      v533 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v533);
                      OUTLINED_FUNCTION_78_1();
                      v534(v529, v530);
                      sub_237A7B808(v601, &qword_27DE9B120, &qword_237C0CA20);
                      v174 = *&v671[0];
                      v528 = 5;
                    }

                    *&v667[0] = v659;
                    v536 = v659[2];
                    v535 = v659[3];
                    if (v536 >= v535 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v535);
                      OUTLINED_FUNCTION_49_2();
                      sub_237AC8A94();
                      v659 = *&v667[0];
                    }

                    v537 = v659;
                    v659[2] = v536 + 1;
                    v538 = v537 + 24 * v536;
                    *(v538 + 32) = v174;
                    *(v538 + 40) = 0;
                    *(v538 + 48) = v528;
                    v191 = v599;
                    sub_237C08B6C();
                    --v519;
                  }

                  while (v519);
                  (*(v600 + 8))(v599, v587);
                }

                else
                {
                  (*(v600 + 8))(v599, v587);
                  v659 = MEMORY[0x277D84F90];
                }

                goto LABEL_248;
              }

              if (swift_dynamicCastMetatype())
              {
                v174 = v603;
                OUTLINED_FUNCTION_89_0();
                OUTLINED_FUNCTION_1_28(&qword_27DE9BCF8, &qword_27DE9B0B0, &unk_237C15250);
                v191 = v174;
                v542 = sub_237C08B3C();
                if (!v542)
                {
                  goto LABEL_257;
                }

                v543 = v542;
                *&v667[0] = MEMORY[0x277D84F90];
                sub_237B05E78(v542);
                sub_237C08B2C();
                if ((v543 & 0x8000000000000000) == 0)
                {
                  OUTLINED_FUNCTION_18_15(v638);
                  do
                  {
                    OUTLINED_FUNCTION_28_5();
                    v544 = v603;
                    v545 = sub_237C08B9C();
                    v547 = OUTLINED_FUNCTION_85_1(v545, v546);
                    v548 = v605;
                    sub_237A7B7A0(v547, v605, &qword_27DE9B0F8, &qword_237C0CA08);
                    v549 = OUTLINED_FUNCTION_11_18();
                    v544(v549);
                    sub_237A7B7A0(v548, v607, &qword_27DE9B0F8, &qword_237C0CA08);
                    v550 = OUTLINED_FUNCTION_117_0();
                    if (__swift_getEnumTagSinglePayload(v550, v551, v646) == 1)
                    {
                      sub_237A7B808(v605, &qword_27DE9B0F8, &qword_237C0CA08);
                      sub_237A7B808(v607, &qword_27DE9B0F8, &qword_237C0CA08);
                      v659 = 0;
                      v552 = 6;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_65_2();
                      v553(v588, v607, v646);
                      OUTLINED_FUNCTION_79_2();
                      v554 = OUTLINED_FUNCTION_84();
                      v555(v554);
                      OUTLINED_FUNCTION_45();
                      sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
                      OUTLINED_FUNCTION_36_4();
                      v556 = sub_237C08BFC();
                      MLDataValue.MultiArrayType.init(_:)(v556);
                      OUTLINED_FUNCTION_78_1();
                      v557 = OUTLINED_FUNCTION_55();
                      v558(v557);
                      sub_237A7B808(v605, &qword_27DE9B0F8, &qword_237C0CA08);
                      v659 = *&v671[0];
                      v552 = 5;
                    }

                    LODWORD(v658) = v552;
                    v559 = *&v667[0];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v560 = *(v559 + 16);
                      sub_237AC8A94();
                      v559 = *&v667[0];
                    }

                    v562 = *(v559 + 16);
                    v561 = *(v559 + 24);
                    v174 = v562 + 1;
                    if (v562 >= v561 >> 1)
                    {
                      OUTLINED_FUNCTION_9_16(v561);
                      sub_237AC8A94();
                      v559 = *&v667[0];
                    }

                    *(v559 + 16) = v174;
                    v563 = v559 + 24 * v562;
                    *(v563 + 32) = v659;
                    *(v563 + 40) = 0;
                    *(v563 + 48) = v658;
                    v191 = v603;
                    sub_237C08B6C();
                    --v543;
                  }

                  while (v543);
                  goto LABEL_257;
                }

                goto LABEL_271;
              }

              *&v671[0] = 0xD000000000000016;
              *(&v671[0] + 1) = 0x8000000237C19980;
              sub_237C05FFC();
              v567 = sub_237C094DC();
              MEMORY[0x2383DC360](v567);

              MEMORY[0x2383DC360](46, 0xE100000000000000);
              v568 = v671[0];
              sub_2379E8AF0();
              OUTLINED_FUNCTION_50();
              v569 = swift_allocError();
              *v570 = v568;
              OUTLINED_FUNCTION_38_4(v569, v570);
              OUTLINED_FUNCTION_72_3(v571, v572);
LABEL_161:
              v445 = sub_237C0602C();
              OUTLINED_FUNCTION_12_0(v445);
              return (*(v446 + 8))(v181);
            }

            v283 = v277;
LABEL_61:
            *&v671[0] = v283;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
            v289 = OUTLINED_FUNCTION_75_2();
            *(v289 + 16) = v652;
            *(v289 + 32) = v660;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
            OUTLINED_FUNCTION_44();
            sub_237A7B85C(&qword_27DE9BD50, &qword_27DE9BCE0, &unk_237C15280);
            sub_237C082BC();
            sub_237A36634();
            OUTLINED_FUNCTION_79_2();
            v290(v647, v208, v174);
            OUTLINED_FUNCTION_45();
            sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
            OUTLINED_FUNCTION_23_2();
            v291 = sub_237C08BFC();
            MLDataValue.MultiArrayType.init(_:)(v291);

            OUTLINED_FUNCTION_78_1();
            v292(v208, v174);
            v287 = *&v671[0];
            v288 = 5;
          }

          else
          {
            v287 = 0;
            v288 = 6;
          }

          v293 = v659;
          *&v667[0] = v659;
          v295 = v659[2];
          v294 = v659[3];
          if (v295 >= v294 >> 1)
          {
            OUTLINED_FUNCTION_9_16(v294);
            sub_237AC8A94();
            v293 = *&v667[0];
          }

          *(v293 + 16) = v295 + 1;
          v659 = v293;
          v296 = v293 + 24 * v295;
          *(v296 + 32) = v287;
          *(v296 + 40) = 0;
          *(v296 + 48) = v288;
          v191 = v642;
          v193 = v640;
          sub_237C08B6C();
          v278 = v657;
          v208 = v645;
          v174 = v646;
          v189 = v649;
          if (v657 == v655)
          {
            goto LABEL_130;
          }
        }
      }

      v362 = OUTLINED_FUNCTION_2_19();
      v363(v362, v275);
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE0, &unk_237C15280);
  OUTLINED_FUNCTION_125();
  v658 = v302;
  v303 = swift_dynamicCastMetatype();
  v304 = v639;
  v305 = v638;
  if (v303)
  {
    if ((v639 & 1) == 0)
    {
LABEL_100:
      OUTLINED_FUNCTION_12_17();
      v190 = v656;
      sub_237C05FEC();
      v364 = OUTLINED_FUNCTION_13_14();
      sub_237A7668C(v364, v365);
      goto LABEL_101;
    }

    v306 = v643;
    v208 = v656;
    sub_237C05FEC();
    v307 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD48, &qword_27DE9BCC8, &qword_237C0EC28);
    v191 = v306;
    LOBYTE(v174) = v644;
    v659 = v307;
    v308 = sub_237C08B3C();
    if (v308)
    {
      v309 = v308;
      v205 = v305;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_54_3();
      v181 = v659;
      sub_237C08B2C();
      if (v309 < 0)
      {
        __break(1u);
        goto LABEL_155;
      }

      v657 = (v305 + 16);
      *&v655 = v305 + 8;
      v654 = xmmword_237C0B660;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v310 = sub_237C08B9C();
        OUTLINED_FUNCTION_71_2(v310, v311);
        v312 = OUTLINED_FUNCTION_11_18();
        v3(v312);
        v313 = v647;
        if (v305)
        {
          *&v671[0] = v305;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v314 = OUTLINED_FUNCTION_75_2();
          *(v314 + 16) = v654;
          *(v314 + 32) = *(v305 + 16);
          OUTLINED_FUNCTION_44();
          v3 = sub_237A7B85C(&qword_27DE9BD50, &qword_27DE9BCE0, &unk_237C15280);

          v315 = v645;
          sub_237C082BC();
          sub_237A36634();
          (*v657)(v313, v315, v646);
          OUTLINED_FUNCTION_45();
          sub_237A7B85C(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290);
          v316 = OUTLINED_FUNCTION_73_2();
          MLDataValue.MultiArrayType.init(_:)(v316);

          OUTLINED_FUNCTION_65_2();
          v317 = OUTLINED_FUNCTION_23_2();
          v318(v317);
        }

        OUTLINED_FUNCTION_86_1();
        if (v320)
        {
          OUTLINED_FUNCTION_9_16(v319);
          OUTLINED_FUNCTION_84_2();
          sub_237AC8A94();
        }

        OUTLINED_FUNCTION_55_4();
        v191 = v643;
        LOBYTE(v174) = v644;
        v181 = v659;
        sub_237C08B6C();
        --v309;
      }

      while (v309);
      v370 = *(v625 + 8);
      v371 = OUTLINED_FUNCTION_36_4();
      v372(v371);
      OUTLINED_FUNCTION_61_4();
    }

    else
    {
      v408 = *(v625 + 8);
      v409 = OUTLINED_FUNCTION_23_2();
      v410(v409);
    }

LABEL_139:
    OUTLINED_FUNCTION_17_11();
    MEMORY[0x28223BE20](v428);
    OUTLINED_FUNCTION_3_28();
    sub_237BBDC94(sub_237A7B8A0);
    v429 = OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_12_0(v429);
    (*(v430 + 8))(v656);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  OUTLINED_FUNCTION_125();
  v657 = v327;
  if (swift_dynamicCastMetatype())
  {
    v328 = v624;
    if ((v304 & 1) == 0)
    {
      v411 = v623;
      OUTLINED_FUNCTION_90_1();
      v3 = v205;
      sub_237A76CCC(v411, v671);
      goto LABEL_101;
    }

    v329 = v637;
    OUTLINED_FUNCTION_90_1();
    v330 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD40, &qword_27DE9B0C0, &qword_237C0E240);
    v191 = v329;
    v208 = v636;
    v174 = v330;
    v331 = sub_237C08B3C();
    if (v331)
    {
      v332 = v331;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_37_3();
      v205 = v174;
      sub_237C08B2C();
      if (v332 < 0)
      {
        __break(1u);
        goto LABEL_158;
      }

      v333 = v328;
      v334 = (v328 + 16);
      *&v655 = v333 + 8;
      v654 = xmmword_237C0B660;
      v658 = v174;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v335 = sub_237C08B9C();
        OUTLINED_FUNCTION_71_2(v335, v336);
        v337 = OUTLINED_FUNCTION_11_18();
        v3(v337);
        v339 = v634;
        v338 = v635;
        v340 = v633;
        if (v205)
        {
          *&v671[0] = v205;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v341 = OUTLINED_FUNCTION_75_2();
          *(v341 + 16) = v654;
          *(v341 + 32) = *(v205 + 16);
          OUTLINED_FUNCTION_44();
          v3 = sub_237A7B85C(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200);

          sub_237C082BC();
          sub_237A36634();
          (*v334)(v340, v339, v338);
          OUTLINED_FUNCTION_45();
          sub_237A7B85C(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0);
          v342 = OUTLINED_FUNCTION_73_2();
          MLDataValue.MultiArrayType.init(_:)(v342);

          OUTLINED_FUNCTION_65_2();
          v343 = OUTLINED_FUNCTION_23_2();
          v344(v343);
          v174 = *&v671[0];
          v181 = 5;
        }

        else
        {
          v174 = 0;
          v181 = 6;
        }

        v345 = v659;
        *&v667[0] = v659;
        v347 = v659[2];
        v346 = v659[3];
        if (v347 >= v346 >> 1)
        {
          OUTLINED_FUNCTION_9_16(v346);
          OUTLINED_FUNCTION_84_2();
          sub_237AC8A94();
          v345 = *&v667[0];
        }

        *(v345 + 16) = v347 + 1;
        v659 = v345;
        v348 = v345 + 24 * v347;
        *(v348 + 32) = v174;
        *(v348 + 40) = 0;
        *(v348 + 48) = v181;
        LOBYTE(v174) = v636;
        v191 = v637;
        v205 = v658;
        sub_237C08B6C();
        --v332;
      }

      while (v332);
      v412 = *(v622 + 8);
      v413 = OUTLINED_FUNCTION_36_4();
      v414(v413);
      OUTLINED_FUNCTION_61_4();
    }

    else
    {
      v417 = OUTLINED_FUNCTION_2_19();
      v418(v417, v208);
    }

    goto LABEL_139;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  OUTLINED_FUNCTION_125();
  v659 = v373;
  if (swift_dynamicCastMetatype())
  {
    if ((v304 & 1) == 0)
    {
      v419 = v620;
      OUTLINED_FUNCTION_90_1();
      v3 = v205;
      sub_237A7730C(v419, v671);
      goto LABEL_101;
    }

    v374 = v631;
    OUTLINED_FUNCTION_90_1();
    v208 = OUTLINED_FUNCTION_1_28(&qword_27DE9BD38, &qword_27DE9B0B8, &unk_237C14040);
    v191 = v374;
    LOBYTE(v174) = v632;
    OUTLINED_FUNCTION_55_1();
    v375 = sub_237C08B3C();
    if (v375)
    {
      v376 = v375;
      OUTLINED_FUNCTION_10_15(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_54_3();
      OUTLINED_FUNCTION_55_1();
      sub_237C08B2C();
      if (v376 < 0)
      {
        __break(1u);
        goto LABEL_165;
      }

      v658 = v617 + 16;
      v657 = (v617 + 8);
      v655 = xmmword_237C0B660;
      do
      {
        OUTLINED_FUNCTION_28_5();
        v377 = sub_237C08B9C();
        OUTLINED_FUNCTION_71_2(v377, v378);
        v379 = OUTLINED_FUNCTION_11_18();
        v3(v379);
        v381 = v629;
        v380 = v630;
        v382 = v628;
        if (v205)
        {
          *&v671[0] = v205;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          v383 = OUTLINED_FUNCTION_75_2();
          *(v383 + 16) = v655;
          *(v383 + 32) = *(v205 + 16);
          OUTLINED_FUNCTION_44();
          v3 = sub_237A7B85C(&qword_27DE9B810, &qword_27DE9ACF0, &unk_237C14060);

          sub_237C082BC();
          sub_237A36634();
          (*v658)(v382, v381, v380);
          OUTLINED_FUNCTION_45();
          sub_237A7B85C(&qword_27DE9B128, &qword_27DE9B0F0, &qword_237C0DD30);
          v384 = OUTLINED_FUNCTION_73_2();
          MLDataValue.MultiArrayType.init(_:)(v384);

          v385 = *v657;
          v386 = OUTLINED_FUNCTION_23_2();
          v387(v386);
          v181 = 5;
        }

        else
        {
          v181 = 6;
        }

        OUTLINED_FUNCTION_86_1();
        if (v320)
        {
          OUTLINED_FUNCTION_9_16(v388);
          OUTLINED_FUNCTION_84_2();
          sub_237AC8A94();
        }

        OUTLINED_FUNCTION_55_4();
        LOBYTE(v174) = v632;
        v191 = v631;
        sub_237C08B6C();
        --v376;
      }

      while (v376);
      v420 = *(v619 + 8);
      v421 = OUTLINED_FUNCTION_23_2();
      v422(v421);
      OUTLINED_FUNCTION_61_4();
    }

    else
    {
      v425 = *(v619 + 8);
      v426 = OUTLINED_FUNCTION_23_2();
      v427(v426);
    }

    goto LABEL_139;
  }

  v208 = v621;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  OUTLINED_FUNCTION_36_4();
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_12_17();
  v190 = v656;
  sub_237C05FEC();
  v415 = OUTLINED_FUNCTION_13_14();
  sub_237A7794C(v415, v416);
LABEL_101:
  if (!v3)
  {
    v368 = sub_237C0602C();
    OUTLINED_FUNCTION_12_0(v368);
    result = (*(v369 + 8))(v190);
    v191 = *&v671[0];
    LOBYTE(v174) = BYTE8(v671[0]);
    goto LABEL_26;
  }

  v366 = sub_237C0602C();
  OUTLINED_FUNCTION_12_0(v366);
  return (*(v367 + 8))(v190);
}

uint64_t sub_237A763DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC98, &qword_237C0EC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A7644C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCA0, &qword_237C0EC08);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = sub_237C05CFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237C05DBC();
  sub_237C05C3C();
  (*(v9 + 16))(v7, v12, v8);
  v13 = *(v4 + 44);
  sub_237A76634();
  sub_237C08B2C();
  v14 = *(v4 + 48);
  sub_237C08B5C();
  (*(v9 + 8))(v12, v8);
  v15 = *&v7[v14];
  result = sub_237A7B808(v7, &qword_27DE9BCA0, &qword_237C0EC08);
  if (v15 >= a1)
  {
    return sub_237C05C7C();
  }

  __break(1u);
  return result;
}

unint64_t sub_237A76634()
{
  result = qword_27DE9BCA8;
  if (!qword_27DE9BCA8)
  {
    sub_237C05CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BCA8);
  }

  return result;
}

uint64_t sub_237A7668C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0D0, &unk_237C15270);
  sub_237A7B85C(&qword_27DE9BD58, &qword_27DE9B0D0, &unk_237C15270);
  v6 = sub_237C08B3C();
  v7 = MEMORY[0x277D84F90];
  v47 = v5;
  if (!v6)
  {
LABEL_39:
    v56[0] = v7;
    MEMORY[0x28223BE20](v6);
    v41 = sub_237BBDC94(sub_237A7B8A0);
    v43 = v42;
    (*(*(v47 - 8) + 8))(a1);

    *a2 = v41;
    *(a2 + 8) = v43 & 1;
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v46 = v6;
  sub_237AC8A94();
  v49 = v7;
  sub_237C08B2C();
  if (v46 < 0)
  {
    goto LABEL_43;
  }

  v8 = 0;
  v45 = a1;
  while (1)
  {
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_42;
    }

    v48 = v10;
    v11 = sub_237C08B9C();
    v13 = *v12;

    v11(v56, 0);
    if (v13)
    {
      break;
    }

    v52 = 0;
    v36 = 6;
LABEL_34:
    v37 = v49;
    v57 = v49;
    v38 = *(v49 + 16);
    if (v38 >= *(v49 + 24) >> 1)
    {
      sub_237AC8A94();
      v37 = v57;
    }

    *(v37 + 16) = v38 + 1;
    v49 = v37;
    v39 = v37 + 24 * v38;
    *(v39 + 32) = v52;
    *(v39 + 40) = 0;
    *(v39 + 48) = v36;
    v6 = sub_237C08B6C();
    v8 = v48;
    if (v48 == v46)
    {
      v7 = v49;
      goto LABEL_39;
    }
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_13:
    v23 = MEMORY[0x2383DDAC0](0);
    if (!v23)
    {
      goto LABEL_46;
    }

    v24 = v23;
    type metadata accessor for CMLSequence();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 1;
    v50 = *(v15 + 16);
    v52 = v25;
    if (v50)
    {
      v26 = 0;
      v27 = (v15 + 48);
      while (2)
      {
        if (v26 < *(v15 + 16))
        {
          v28 = *(v27 - 2);
          v29 = *(v27 - 1);
          ++v26;
          v30 = *v27;
          switch(*v27)
          {
            case 1:
              v34 = sub_237B0F594(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v34;
              if (v34)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v28, v29, 2);

              v33 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v56[0] = *(v27 - 2);

              v33 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v56[0] = *(v27 - 2);

              v33 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v56[0] = *(v27 - 2);
              v35 = v28;
              v33 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v33 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v31 = sub_237B0F164(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v31;
              if (!v31)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v33 = sub_237A2E764(v32, 1);
LABEL_30:
              sub_237A2DE9C(v33);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v28, v29, v30);

              v27 += 24;
              if (v50 == v26)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v36 = 3;
    a1 = v45;
    goto LABEL_34;
  }

  v55 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v16 = 0;
  v15 = v55;
  v17 = MEMORY[0x277D83B88];
  while (1)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_41;
    }

    v18 = *(v13 + 8 * v16 + 32);
    v56[3] = v17;
    v56[0] = v18;
    sub_237AFCC90(v56, &v53);
    if (v3)
    {
      break;
    }

    v19 = v53;
    v20 = v54;
    v55 = v15;
    v21 = *(v15 + 16);
    if (v21 >= *(v15 + 24) >> 1)
    {
      v51 = v53;
      sub_237AC8A94();
      v19 = v51;
      v17 = MEMORY[0x277D83B88];
      v15 = v55;
    }

    ++v16;
    *(v15 + 16) = v21 + 1;
    v22 = v15 + 24 * v21;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    if (v14 == v16)
    {
      goto LABEL_13;
    }
  }

  (*(*(v47 - 8) + 8))(v45);
}

uint64_t sub_237A76CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0C0, &qword_237C0E240);
  sub_237A7B85C(&qword_27DE9BD40, &qword_27DE9B0C0, &qword_237C0E240);
  v6 = sub_237C08B3C();
  v7 = MEMORY[0x277D84F90];
  v47 = v5;
  if (!v6)
  {
LABEL_39:
    v56[0] = v7;
    MEMORY[0x28223BE20](v6);
    v41 = sub_237BBDC94(sub_237A7B8A0);
    v43 = v42;
    (*(*(v47 - 8) + 8))(a1);

    *a2 = v41;
    *(a2 + 8) = v43 & 1;
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v46 = v6;
  sub_237AC8A94();
  v49 = v7;
  sub_237C08B2C();
  if (v46 < 0)
  {
    goto LABEL_43;
  }

  v8 = 0;
  v45 = a1;
  while (1)
  {
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_42;
    }

    v48 = v10;
    v11 = sub_237C08B9C();
    v13 = *v12;

    v11(v56, 0);
    if (v13)
    {
      break;
    }

    v52 = 0;
    v36 = 6;
LABEL_34:
    v37 = v49;
    v57 = v49;
    v38 = *(v49 + 16);
    if (v38 >= *(v49 + 24) >> 1)
    {
      sub_237AC8A94();
      v37 = v57;
    }

    *(v37 + 16) = v38 + 1;
    v49 = v37;
    v39 = v37 + 24 * v38;
    *(v39 + 32) = v52;
    *(v39 + 40) = 0;
    *(v39 + 48) = v36;
    v6 = sub_237C08B6C();
    v8 = v48;
    if (v48 == v46)
    {
      v7 = v49;
      goto LABEL_39;
    }
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_13:
    v23 = MEMORY[0x2383DDAC0](0);
    if (!v23)
    {
      goto LABEL_46;
    }

    v24 = v23;
    type metadata accessor for CMLSequence();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 1;
    v50 = *(v15 + 16);
    v52 = v25;
    if (v50)
    {
      v26 = 0;
      v27 = (v15 + 48);
      while (2)
      {
        if (v26 < *(v15 + 16))
        {
          v28 = *(v27 - 2);
          v29 = *(v27 - 1);
          ++v26;
          v30 = *v27;
          switch(*v27)
          {
            case 1:
              v34 = sub_237B0F594(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v34;
              if (v34)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v28, v29, 2);

              v33 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v56[0] = *(v27 - 2);

              v33 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v56[0] = *(v27 - 2);

              v33 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v56[0] = *(v27 - 2);
              v35 = v28;
              v33 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v33 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v31 = sub_237B0F164(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v31;
              if (!v31)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v33 = sub_237A2E764(v32, 1);
LABEL_30:
              sub_237A2DE9C(v33);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v28, v29, v30);

              v27 += 24;
              if (v50 == v26)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v36 = 3;
    a1 = v45;
    goto LABEL_34;
  }

  v55 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v16 = 0;
  v15 = v55;
  v17 = MEMORY[0x277D83A90];
  while (1)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_41;
    }

    v18 = *(v13 + 4 * v16 + 32);
    v56[3] = v17;
    LODWORD(v56[0]) = v18;
    sub_237AFCC90(v56, &v53);
    if (v3)
    {
      break;
    }

    v19 = v53;
    v20 = v54;
    v55 = v15;
    v21 = *(v15 + 16);
    if (v21 >= *(v15 + 24) >> 1)
    {
      v51 = v53;
      sub_237AC8A94();
      v19 = v51;
      v17 = MEMORY[0x277D83A90];
      v15 = v55;
    }

    ++v16;
    *(v15 + 16) = v21 + 1;
    v22 = v15 + 24 * v21;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    if (v14 == v16)
    {
      goto LABEL_13;
    }
  }

  (*(*(v47 - 8) + 8))(v45);
}

uint64_t sub_237A7730C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0B8, &unk_237C14040);
  sub_237A7B85C(&qword_27DE9BD38, &qword_27DE9B0B8, &unk_237C14040);
  v6 = sub_237C08B3C();
  v7 = MEMORY[0x277D84F90];
  v47 = v5;
  if (!v6)
  {
LABEL_39:
    v56[0] = v7;
    MEMORY[0x28223BE20](v6);
    v41 = sub_237BBDC94(sub_237A7B8A0);
    v43 = v42;
    (*(*(v47 - 8) + 8))(a1);

    *a2 = v41;
    *(a2 + 8) = v43 & 1;
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v46 = v6;
  sub_237AC8A94();
  v49 = v7;
  sub_237C08B2C();
  if (v46 < 0)
  {
    goto LABEL_43;
  }

  v8 = 0;
  v45 = a1;
  while (1)
  {
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_42;
    }

    v48 = v10;
    v11 = sub_237C08B9C();
    v13 = *v12;

    v11(v56, 0);
    if (v13)
    {
      break;
    }

    v52 = 0;
    v36 = 6;
LABEL_34:
    v37 = v49;
    v57 = v49;
    v38 = *(v49 + 16);
    if (v38 >= *(v49 + 24) >> 1)
    {
      sub_237AC8A94();
      v37 = v57;
    }

    *(v37 + 16) = v38 + 1;
    v49 = v37;
    v39 = v37 + 24 * v38;
    *(v39 + 32) = v52;
    *(v39 + 40) = 0;
    *(v39 + 48) = v36;
    v6 = sub_237C08B6C();
    v8 = v48;
    if (v48 == v46)
    {
      v7 = v49;
      goto LABEL_39;
    }
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_13:
    v23 = MEMORY[0x2383DDAC0](0);
    if (!v23)
    {
      goto LABEL_46;
    }

    v24 = v23;
    type metadata accessor for CMLSequence();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = 1;
    v50 = *(v15 + 16);
    v52 = v25;
    if (v50)
    {
      v26 = 0;
      v27 = (v15 + 48);
      while (2)
      {
        if (v26 < *(v15 + 16))
        {
          v28 = *(v27 - 2);
          v29 = *(v27 - 1);
          ++v26;
          v30 = *v27;
          switch(*v27)
          {
            case 1:
              v34 = sub_237B0F594(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v34;
              if (v34)
              {
                goto LABEL_27;
              }

              goto LABEL_45;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v28, v29, 2);

              v33 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_48;
              }

              goto LABEL_30;
            case 3:
              v56[0] = *(v27 - 2);

              v33 = sub_237A91FA8();
              goto LABEL_30;
            case 4:
              v56[0] = *(v27 - 2);

              v33 = sub_237AFF290();
              goto LABEL_30;
            case 5:
              v56[0] = *(v27 - 2);
              v35 = v28;
              v33 = sub_237AC85C4();
              goto LABEL_30;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v33 = sub_237A2E78C();
              goto LABEL_30;
            default:
              v31 = sub_237B0F164(*(v27 - 2));
              if (v3)
              {
                goto LABEL_48;
              }

              v32 = v31;
              if (!v31)
              {
                goto LABEL_44;
              }

LABEL_27:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v33 = sub_237A2E764(v32, 1);
LABEL_30:
              sub_237A2DE9C(v33);
              if (v3)
              {
                goto LABEL_47;
              }

              sub_2379E8CE8(v28, v29, v30);

              v27 += 24;
              if (v50 == v26)
              {
                goto LABEL_32;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:

      while (1)
      {
LABEL_48:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_32:

    v36 = 3;
    a1 = v45;
    goto LABEL_34;
  }

  v55 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v16 = 0;
  v15 = v55;
  v17 = MEMORY[0x277D839F8];
  while (1)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_41;
    }

    v18 = *(v13 + 8 * v16 + 32);
    v56[3] = v17;
    v56[0] = v18;
    sub_237AFCC90(v56, &v53);
    if (v3)
    {
      break;
    }

    v19 = v53;
    v20 = v54;
    v55 = v15;
    v21 = *(v15 + 16);
    if (v21 >= *(v15 + 24) >> 1)
    {
      v51 = v53;
      sub_237AC8A94();
      v19 = v51;
      v17 = MEMORY[0x277D839F8];
      v15 = v55;
    }

    ++v16;
    *(v15 + 16) = v21 + 1;
    v22 = v15 + 24 * v21;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    if (v14 == v16)
    {
      goto LABEL_13;
    }
  }

  (*(*(v47 - 8) + 8))(v45);
}

uint64_t sub_237A7794C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B148, &qword_237C0CA38);
  sub_237A7B85C(&qword_27DE9BD88, &qword_27DE9B148, &qword_237C0CA38);
  v6 = sub_237C08B3C();
  v7 = MEMORY[0x277D84F90];
  v51 = v5;
  if (!v6)
  {
LABEL_40:
    v60[0] = v7;
    MEMORY[0x28223BE20](v6);
    v45 = sub_237BBDC94(sub_237A7B8A0);
    v47 = v46;
    (*(*(v51 - 8) + 8))(a1);

    *a2 = v45;
    *(a2 + 8) = v47 & 1;
    return result;
  }

  v61 = MEMORY[0x277D84F90];
  v50 = v6;
  sub_237AC8A94();
  v53 = v7;
  sub_237C08B2C();
  if (v50 < 0)
  {
    goto LABEL_44;
  }

  v8 = 0;
  v49 = a1;
  while (1)
  {
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_43;
    }

    v52 = v10;
    v11 = sub_237C08B9C();
    v13 = *v12;

    v11(v60, 0);
    if (v13)
    {
      break;
    }

    v56 = 0;
    v40 = 6;
LABEL_35:
    v41 = v53;
    v61 = v53;
    v42 = *(v53 + 16);
    if (v42 >= *(v53 + 24) >> 1)
    {
      sub_237AC8A94();
      v41 = v61;
    }

    *(v41 + 16) = v42 + 1;
    v53 = v41;
    v43 = v41 + 24 * v42;
    *(v43 + 32) = v56;
    *(v43 + 40) = 0;
    *(v43 + 48) = v40;
    a1 = v49;
    v6 = sub_237C08B6C();
    v8 = v52;
    if (v52 == v50)
    {
      v7 = v53;
      goto LABEL_40;
    }
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_14:
    v27 = MEMORY[0x2383DDAC0](0);
    if (!v27)
    {
      goto LABEL_47;
    }

    v28 = v27;
    type metadata accessor for CMLSequence();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v56 = v29;
    *(v29 + 24) = 1;
    v55 = *(v15 + 16);
    if (v55)
    {
      v30 = 0;
      v31 = (v15 + 48);
      while (2)
      {
        if (v30 < *(v15 + 16))
        {
          v32 = *(v31 - 2);
          v33 = *(v31 - 1);
          ++v30;
          v34 = *v31;
          switch(*v31)
          {
            case 1:
              v38 = sub_237B0F594(*(v31 - 2));
              if (v3)
              {
                goto LABEL_49;
              }

              v36 = v38;
              if (v38)
              {
                goto LABEL_28;
              }

              goto LABEL_46;
            case 2:
              type metadata accessor for CMLFeatureValue();
              sub_2379E9288(v32, v33, 2);

              v37 = sub_237A2E7CC();
              if (v3)
              {
                goto LABEL_49;
              }

              goto LABEL_31;
            case 3:
              v60[0] = *(v31 - 2);

              v37 = sub_237A91FA8();
              goto LABEL_31;
            case 4:
              v60[0] = *(v31 - 2);

              v37 = sub_237AFF290();
              goto LABEL_31;
            case 5:
              v60[0] = *(v31 - 2);
              v39 = v32;
              v37 = sub_237AC85C4();
              goto LABEL_31;
            case 6:
              type metadata accessor for CMLFeatureValue();
              v37 = sub_237A2E78C();
              goto LABEL_31;
            default:
              v35 = sub_237B0F164(*(v31 - 2));
              if (v3)
              {
                goto LABEL_49;
              }

              v36 = v35;
              if (!v35)
              {
                goto LABEL_45;
              }

LABEL_28:
              type metadata accessor for CMLFeatureValue();
              swift_allocObject();
              v37 = sub_237A2E764(v36, 1);
LABEL_31:
              sub_237A2DE9C(v37);
              if (v3)
              {
                goto LABEL_48;
              }

              sub_2379E8CE8(v32, v33, v34);

              v31 += 24;
              if (v55 == v30)
              {
                goto LABEL_33;
              }

              continue;
          }
        }

        break;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:

      while (1)
      {
LABEL_49:
        swift_unexpectedError();
        __break(1u);
      }
    }

LABEL_33:

    v40 = 3;
    goto LABEL_35;
  }

  v59 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v16 = 0;
  v15 = v59;
  v17 = (v13 + 40);
  while (1)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_42;
    }

    v18 = *(v17 - 1);
    v19 = *v17;
    v60[3] = MEMORY[0x277D837D0];
    v60[0] = v18;
    v60[1] = v19;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v60, &v57);
    if (v3)
    {
      break;
    }

    v20 = v14;

    v21 = v57;
    v22 = v58;
    v23 = v15;
    v59 = v15;
    v24 = *(v15 + 16);
    if (v24 >= *(v15 + 24) >> 1)
    {
      v54 = v57;
      sub_237AC8A94();
      v21 = v54;
      v23 = v59;
    }

    ++v16;
    *(v23 + 16) = v24 + 1;
    v15 = v23;
    v25 = v23 + 24 * v24;
    *(v25 + 32) = v21;
    *(v25 + 48) = v22;
    v17 += 2;
    v14 = v20;
    v26 = v20 == v16;
    v3 = 0;
    if (v26)
    {
      goto LABEL_14;
    }
  }

  (*(*(v51 - 8) + 8))(v49);
}

uint64_t sub_237A77FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  sub_237A7B85C(&qword_27DE9BD98, &qword_27DE9B580, &qword_237C0D770);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  v35 = v6;
  if (!result)
  {
LABEL_21:
    v41[0] = v8;
    MEMORY[0x28223BE20](result);
    v28 = sub_237BBDC94(sub_237A7B8A0);
    v30 = v29;
    (*(*(v35 - 8) + 8))(a1);

    *a2 = v28;
    *(a2 + 8) = v30 & 1;
    return result;
  }

  v9 = result;
  v42 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v36 = v8;
  result = sub_237C08B2C();
  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v34 = v9;
  v32 = a2;
  v10 = 0;
  v11 = MEMORY[0x277D84F70] + 8;
  v33 = a1;
  while (1)
  {
    if (__OFADD__(v10++, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v13 = sub_237C08B9C();
    v15 = *v14;

    v13(v41, 0);
    if (v15)
    {
      break;
    }

    v23 = 0;
    v24 = 6;
LABEL_16:
    v25 = v36;
    v42 = v36;
    v26 = *(v36 + 16);
    if (v26 >= *(v36 + 24) >> 1)
    {
      sub_237AC8A94();
      v25 = v42;
    }

    *(v25 + 16) = v26 + 1;
    v36 = v25;
    v27 = v25 + 24 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = 0;
    *(v27 + 48) = v24;
    result = sub_237C08B6C();
    if (v10 == v34)
    {
      a2 = v32;
      v8 = v36;
      goto LABEL_21;
    }
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_15:
    sub_237A7987C(v17, v41);

    v23 = v41[0];
    v24 = 3;
    a1 = v33;
    goto LABEL_16;
  }

  v40 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v17 = v40;
  v18 = v15 + 32;
  while (1)
  {
    sub_2379FED88(v18, v41);
    v37[3] = v11;
    v37[0] = swift_allocObject();
    sub_2379FED88(v41, v37[0] + 16);
    sub_237AFCC90(v37, &v38);
    if (v3)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v41);
    v19 = v38;
    v20 = v39;
    v40 = v17;
    v21 = *(v17 + 16);
    if (v21 >= *(v17 + 24) >> 1)
    {
      v31 = v38;
      sub_237AC8A94();
      v19 = v31;
      v17 = v40;
    }

    *(v17 + 16) = v21 + 1;
    v22 = v17 + 24 * v21;
    *(v22 + 32) = v19;
    *(v22 + 48) = v20;
    v18 += 32;
    if (!--v16)
    {
      goto LABEL_15;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v41);

  (*(*(v35 - 8) + 8))(v33);
}

uint64_t sub_237A783D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  sub_237A7B85C(&qword_27DE9BD90, &qword_27DE9B578, &qword_237C14020);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A79AF0(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A786C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B130, &qword_237C0CA28);
  sub_237A7B85C(&qword_27DE9BDA0, &qword_27DE9B130, &qword_237C0CA28);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7AB80(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A789B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B140, &unk_237C151F0);
  sub_237A7B85C(&qword_27DE9BDA8, &qword_27DE9B140, &unk_237C151F0);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A864(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A78CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B138, &qword_237C0CA30);
  sub_237A7B85C(&qword_27DE9BDB0, &qword_27DE9B138, &qword_237C0CA30);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A548(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A78FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCC0, &qword_237C0EC20);
  sub_237A7B85C(&qword_27DE9BDB8, &qword_27DE9BCC0, &qword_237C0EC20);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7A218(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A79294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCB8, &qword_237C0EC18);
  sub_237A7B85C(&qword_27DE9BDD0, &qword_27DE9BCB8, &qword_237C0EC18);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A79D28(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A79588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B168, &unk_237C151E0);
  sub_237A7B85C(&qword_27DE9BDC0, &qword_27DE9B168, &unk_237C151E0);
  result = sub_237C08B3C();
  v8 = MEMORY[0x277D84F90];
  if (result)
  {
    v9 = result;
    v30 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v8 = v30;
    result = sub_237C08B2C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v25 = a2;
      v26 = v9;
      v10 = 0;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v12 = sub_237C08B9C();
        v14 = *v13;

        v12(v27, 0);
        sub_237A7AE9C(v14, &v28);
        if (v3)
        {
          (*(*(v6 - 8) + 8))(a1, v6);
        }

        v15 = a1;

        v16 = v28;
        v17 = v29;
        v18 = v8;
        v30 = v8;
        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          v24 = v28;
          sub_237AC8A94();
          v16 = v24;
          v18 = v30;
        }

        *(v18 + 16) = v19 + 1;
        v8 = v18;
        v20 = v18 + 24 * v19;
        *(v20 + 32) = v16;
        *(v20 + 48) = v17;
        a1 = v15;
        result = sub_237C08B6C();
        ++v10;
        v3 = 0;
        if (v11 == v26)
        {
          a2 = v25;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v27[0] = v8;
    MEMORY[0x28223BE20](result);
    v21 = sub_237BBDC94(sub_237A7B8A0);
    v23 = v22;
    (*(*(v6 - 8) + 8))(a1, v6);

    *a2 = v21;
    *(a2 + 8) = v23 & 1;
  }

  return result;
}

uint64_t sub_237A7987C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  type metadata accessor for CMLSequence();
  v5 = OUTLINED_FUNCTION_11_2();
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (a1 + 48);
    v18 = a1;
    while (2)
    {
      if (v7 < *(a1 + 16))
      {
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        ++v7;
        v11 = *v8;
        switch(*v8)
        {
          case 1:
            if (sub_237B0F594(*(v8 - 2)))
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          case 2:
            type metadata accessor for CMLFeatureValue();
            sub_2379E9288(v9, v10, 2);

            v12 = sub_237A2E7CC();
            goto LABEL_15;
          case 3:
            v20 = *(v8 - 2);

            v12 = sub_237A91FA8();
            goto LABEL_15;
          case 4:
            v19 = *(v8 - 2);

            v12 = sub_237AFF290();
            goto LABEL_15;
          case 5:
            v21 = *(v8 - 2);
            v15 = v9;
            v12 = sub_237AC85C4();
            goto LABEL_15;
          case 6:
            type metadata accessor for CMLFeatureValue();
            v12 = sub_237A2E78C();
            goto LABEL_15;
          default:
            if (!sub_237B0F164(*(v8 - 2)))
            {
              goto LABEL_19;
            }

LABEL_12:
            type metadata accessor for CMLFeatureValue();
            OUTLINED_FUNCTION_11_2();
            v13 = OUTLINED_FUNCTION_117_0();
            v12 = sub_237A2E764(v13, v14);
LABEL_15:
            sub_237A2DE9C(v12);
            sub_2379E8CE8(v9, v10, v11);

            v8 += 24;
            a1 = v18;
            if (v6 == v7)
            {
              goto LABEL_16;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);

    OUTLINED_FUNCTION_56_4();
    while (1)
    {
      swift_unexpectedError();
      __break(1u);
      OUTLINED_FUNCTION_57_4();
    }
  }

LABEL_16:

  *a2 = v5;
  return result;
}

uint64_t sub_237A79AF0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = a2;
  if (!result)
  {
    *a2 = 0;
    a2[1] = 0;
    v12 = 6;
LABEL_14:
    *(v3 + 16) = v12;
    return result;
  }

  v4 = result;
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_13:
    result = sub_237A7987C(v6, v19);
    *v3 = v19[0];
    v3[1] = 0;
    v12 = 3;
    goto LABEL_14;
  }

  v22 = MEMORY[0x277D84F90];
  sub_237AC8A94();
  v6 = v22;
  v7 = v4 + 32;
  v15 = MEMORY[0x277D84F70] + 8;
  while (1)
  {
    sub_237A7B7A0(v7, v19, &qword_27DE9A998, &unk_237C0C100);
    sub_237A7B7A0(v19, &v16, &qword_27DE9A998, &unk_237C0C100);
    if (!v17)
    {
      sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
      sub_237A7B808(&v16, &qword_27DE9A998, &unk_237C0C100);
      v8 = 0uLL;
      v20 = 0u;
      v9 = 6;
      v21 = 6;
      goto LABEL_8;
    }

    sub_2379DAD24(&v16, v18);
    v17 = v15;
    *&v16 = swift_allocObject();
    sub_2379FED88(v18, v16 + 16);
    sub_237AFCC90(&v16, &v20);
    if (v2)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
    v8 = v20;
    v9 = v21;
LABEL_8:
    v22 = v6;
    v10 = *(v6 + 16);
    if (v10 >= *(v6 + 24) >> 1)
    {
      v13 = v8;
      sub_237AC8A94();
      v8 = v13;
      v6 = v22;
    }

    *(v6 + 16) = v10 + 1;
    v11 = v6 + 24 * v10;
    *(v11 + 32) = v8;
    *(v11 + 48) = v9;
    v7 += 32;
    if (!--v5)
    {
      v3 = a2;
      goto LABEL_13;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_237A7B808(v19, &qword_27DE9A998, &unk_237C0C100);
}

void sub_237A79D28(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a2;
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
    v31 = 6;
LABEL_28:
    *(v3 + 16) = v31;
    return;
  }

  v4 = a1;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_27:
    *v3 = sub_237B6A9C8(v6);
    v3[1] = 0;
    v31 = 4;
    goto LABEL_28;
  }

  v60 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v44 = v60;
  v9 = sub_237B024B4(v4);
  v10 = 0;
  v43 = v4 + 64;
  v35 = v7;
  v33 = v4 + 72;
  v34 = MEMORY[0x277D84F70] + 8;
  v36 = v5;
  v37 = v4;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v4 + 32))
  {
    v11 = v9 >> 6;
    if ((*(v43 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v4 + 36) != v7)
    {
      goto LABEL_32;
    }

    v42 = v7;
    v38 = v8;
    v12 = (*(v4 + 48) + 16 * v9);
    v13 = *v12;
    v14 = v12[1];
    sub_2379FED88(*(v4 + 56) + 32 * v9, v54);
    v52[0] = v13;
    v52[1] = v14;
    sub_2379DAD24(v54, &v53);
    sub_237A7B7A0(v52, v51, &qword_27DE9BDD8, &qword_237C0EC70);
    sub_237A7B7A0(v51, &v48, &qword_27DE9BDE0, &qword_237C0EC78);
    v41 = v10;
    if (*(&v48 + 1))
    {
      v50[0] = v48;
      v50[1] = v49[0];
      v50[2] = v49[1];
      sub_237A7B7A0(v50, &v48, &qword_27DE9BDD8, &qword_237C0EC70);
      v55 = v48;
      v56 = 2;
      sub_237A7B7A0(v50, v45, &qword_27DE9BDD8, &qword_237C0EC70);

      v47[3] = v34;
      v47[0] = swift_allocObject();
      sub_2379DAD24(&v46, (v47[0] + 16));
      sub_237AFCC90(v47, &v57);
      if (v2)
      {
        sub_2379E8CE8(v55, *(&v55 + 1), v56);
        sub_237A7B808(v50, &qword_27DE9BDD8, &qword_237C0EC70);
        __swift_destroy_boxed_opaque_existential_1(v49);
        sub_237A7B808(v51, &qword_27DE9BDE0, &qword_237C0EC78);
        sub_237A7B808(v52, &qword_27DE9BDD8, &qword_237C0EC70);

        return;
      }

      sub_237A7B808(v50, &qword_27DE9BDD8, &qword_237C0EC70);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v40 = v55;
      v15 = v56;
      v16 = v57;
      v39 = v58;
      v17 = v59;
    }

    else
    {

      sub_237A7B808(&v48, &qword_27DE9BDE0, &qword_237C0EC78);
      v39 = 0;
      v40 = 0uLL;
      v16 = 0;
      v55 = 0uLL;
      v17 = 6;
      v56 = 6;
      v57 = 0;
      v58 = 0;
      v15 = 6;
      v59 = 6;
    }

    sub_237A7B808(v51, &qword_27DE9BDE0, &qword_237C0EC78);
    sub_237A7B808(v52, &qword_27DE9BDD8, &qword_237C0EC70);
    v18 = v44;
    v60 = v44;
    v19 = *(v44 + 16);
    if (v19 >= *(v44 + 24) >> 1)
    {
      sub_237AC8AB4();
      v18 = v60;
    }

    *(v18 + 16) = v19 + 1;
    v20 = v18 + 48 * v19;
    *(v20 + 32) = v40;
    *(v20 + 48) = v15;
    *(v20 + 56) = v16;
    *(v20 + 64) = v39;
    *(v20 + 72) = v17;
    v4 = v37;
    v21 = 1 << *(v37 + 32);
    if (v9 >= v21)
    {
      goto LABEL_33;
    }

    v22 = *(v43 + 8 * v11);
    if ((v22 & (1 << v9)) == 0)
    {
      goto LABEL_34;
    }

    if (*(v37 + 36) != v42)
    {
      goto LABEL_35;
    }

    v23 = v22 & (-2 << (v9 & 0x3F));
    v44 = v18;
    if (v23)
    {
      v21 = __clz(__rbit64(v23)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v24 = v36;
      v25 = v41;
    }

    else
    {
      v26 = v11 << 6;
      v27 = v11 + 1;
      v28 = (v33 + 8 * v11);
      v24 = v36;
      v25 = v41;
      while (v27 < (v21 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          sub_2379E8FD0(v9, v42, v38 & 1);
          v21 = __clz(__rbit64(v29)) + v26;
          goto LABEL_24;
        }
      }

      sub_2379E8FD0(v9, v42, v38 & 1);
    }

LABEL_24:
    v8 = 0;
    v10 = v25 + 1;
    v9 = v21;
    v7 = v35;
    if (v10 == v24)
    {
      v3 = a2;
      v6 = v44;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_237A7A218(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
    v35 = 6;
LABEL_26:
    *(v4 + 16) = v35;
    return;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v35 = 4;
    goto LABEL_26;
  }

  v52 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v52;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v12 = v5 + 64;
  v40 = v8;
  v41 = v6;
  v39 = v5 + 72;
  v42 = v5 + 64;
  v43 = v5;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v45 = v11;
    v46 = v8;
    v44 = v9;
    v14 = (*(v5 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(v5 + 56) + 16 * v10);
    v18 = *v17;
    v19 = v17[1];
    *&v48 = v15;
    *(&v48 + 1) = v16;
    v49 = 2;
    v47[3] = MEMORY[0x277D837D0];
    v47[0] = v18;
    v47[1] = v19;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v47, &v50);
    if (v3)
    {
      sub_2379E8CE8(v48, *(&v48 + 1), v49);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v23 = v51;
    v52 = v7;
    v24 = *(v7 + 16);
    if (v24 >= *(v7 + 24) >> 1)
    {
      v36 = v50;
      v37 = v48;
      sub_237AC8AB4();
      v22 = v36;
      v20 = v37;
      v7 = v52;
    }

    *(v7 + 16) = v24 + 1;
    v25 = v7 + 48 * v24;
    *(v25 + 32) = v20;
    *(v25 + 48) = v21;
    *(v25 + 56) = v22;
    *(v25 + 72) = v23;
    v5 = v43;
    v26 = 1 << *(v43 + 32);
    if (v10 >= v26)
    {
      goto LABEL_30;
    }

    v12 = v42;
    v27 = *(v42 + 8 * v13);
    if ((v27 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    if (*(v43 + 36) != v46)
    {
      goto LABEL_32;
    }

    v28 = v27 & (-2 << (v10 & 0x3F));
    if (v28)
    {
      v26 = __clz(__rbit64(v28)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v29 = v41;
    }

    else
    {
      v30 = v13 << 6;
      v31 = v13 + 1;
      v32 = (v39 + 8 * v13);
      v29 = v41;
      while (v31 < (v26 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_2379E8FD0(v10, v46, v44 & 1);
          v26 = __clz(__rbit64(v33)) + v30;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v46, v44 & 1);
    }

LABEL_21:
    v3 = 0;
    v9 = 0;
    v11 = v45 + 1;
    v10 = v26;
    v8 = v40;
    if (v45 + 1 == v29)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

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
}

void sub_237A7A548(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v4 = a2;
  if (!a1)
  {
    *a2 = 0;
    a2[1] = 0;
    v33 = 6;
LABEL_26:
    *(v4 + 16) = v33;
    return;
  }

  v5 = a1;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_25:
    *v4 = sub_237B6A9C8(v7);
    v4[1] = 0;
    v33 = 4;
    goto LABEL_26;
  }

  v50 = MEMORY[0x277D84F90];
  sub_237AC8AB4();
  v7 = v50;
  v10 = sub_237B024B4(v5);
  v11 = 0;
  v43 = v5 + 64;
  v38 = v8;
  v39 = v6;
  v37 = v5 + 72;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v5 + 32))
  {
    v12 = v10 >> 6;
    if ((*(v43 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v5 + 36) != v8)
    {
      goto LABEL_29;
    }

    v42 = v8;
    v40 = v9;
    v13 = (*(v5 + 48) + 16 * v10);
    v14 = *(*(v5 + 56) + 4 * v10);
    v15 = v13[1];
    *&v46 = *v13;
    *(&v46 + 1) = v15;
    v47 = 2;
    v45 = MEMORY[0x277D83A90];
    v44[0] = v14;
    swift_bridgeObjectRetain_n();
    sub_237AFCC90(v44, &v48);
    if (v3)
    {
      sub_2379E8CE8(v46, *(&v46 + 1), v47);

      swift_bridgeObjectRelease_n();
      return;
    }

    v41 = v11;
    v16 = v5;
    swift_bridgeObjectRelease_n();
    v17 = v46;
    v18 = v47;
    v19 = v48;
    v20 = v49;
    v50 = v7;
    v21 = *(v7 + 16);
    if (v21 >= *(v7 + 24) >> 1)
    {
      v34 = v48;
      v35 = v46;
      sub_237AC8AB4();
      v19 = v34;
      v17 = v35;
      v7 = v50;
    }

    *(v7 + 16) = v21 + 1;
    v22 = v7 + 48 * v21;
    *(v22 + 32) = v17;
    *(v22 + 48) = v18;
    *(v22 + 56) = v19;
    *(v22 + 72) = v20;
    v23 = 1 << *(v16 + 32);
    if (v10 >= v23)
    {
      goto LABEL_30;
    }

    v24 = *(v43 + 8 * v12);
    if ((v24 & (1 << v10)) == 0)
    {
      goto LABEL_31;
    }

    v5 = v16;
    if (*(v16 + 36) != v42)
    {
      goto LABEL_32;
    }

    v25 = v24 & (-2 << (v10 & 0x3F));
    if (v25)
    {
      v23 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v26 = v39;
      v27 = v41;
    }

    else
    {
      v28 = v12 << 6;
      v29 = v12 + 1;
      v30 = (v37 + 8 * v12);
      v26 = v39;
      v27 = v41;
      while (v29 < (v23 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_2379E8FD0(v10, v42, v40 & 1);
          v23 = __clz(__rbit64(v31)) + v28;
          goto LABEL_21;
        }
      }

      sub_2379E8FD0(v10, v42, v40 & 1);
    }

LABEL_21:
    v9 = 0;
    v11 = v27 + 1;
    v10 = v23;
    v8 = v38;
    v3 = 0;
    if (v11 == v26)
    {
      v4 = a2;
      goto LABEL_25;
    }
  }

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
}