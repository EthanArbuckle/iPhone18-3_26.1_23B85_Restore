uint64_t sub_23DEF6C34()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[3];

  v0[10] = OUTLINED_FUNCTION_168_1(v5, sel_parameterMetadataForIdentifier_);

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DEF6CC0()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = [v1 valueType];
    v4 = [v3 wf_unionValueType];
    *(v0 + 88) = v4;

    if (v4)
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 96) = v5;
      *v5 = v6;
      v5[1] = sub_23DEF6E1C;
      v7 = *(v0 + 80);
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v0 + 16);

      return WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)();
    }

    v13 = *(v0 + 24);

    v12 = *(v0 + 80);
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 112) = v12;
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 120) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_75_1(v14);

  return sub_23DEF1D6C();
}

uint64_t sub_23DEF6E1C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DEF6F18()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_7();

  return v3();
}

uint64_t sub_23DEF6F84()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DEF7080()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_7();

  return v2();
}

uint64_t sub_23DEF70E0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);

  v3 = *(v0 + 104);
  OUTLINED_FUNCTION_19();

  return v4();
}

uint64_t sub_23DEF7150()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 56);

  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_19();

  return v3();
}

uint64_t WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)()
{
  OUTLINED_FUNCTION_23();
  v1[47] = v2;
  v1[48] = v0;
  v1[45] = v3;
  v1[46] = v4;
  v1[43] = v5;
  v1[44] = v6;
  v1[49] = swift_getObjectType();
  v7 = sub_23E1FD4FC();
  v1[50] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[51] = v8;
  v10 = *(v9 + 64);
  v1[52] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FC6BC();
  v1[53] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[54] = v12;
  v14 = *(v13 + 64);
  v1[55] = OUTLINED_FUNCTION_42();
  v15 = sub_23E1FD4EC();
  v1[56] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[57] = v16;
  v18 = *(v17 + 64);
  v1[58] = OUTLINED_FUNCTION_91();
  v1[59] = swift_task_alloc();
  v19 = sub_23E1FD84C();
  v1[60] = v19;
  OUTLINED_FUNCTION_8(v19);
  v1[61] = v20;
  v22 = *(v21 + 64);
  v1[62] = OUTLINED_FUNCTION_42();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v23);
  v25 = *(v24 + 64);
  v1[63] = OUTLINED_FUNCTION_42();
  v26 = sub_23E1FD95C();
  v1[64] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[65] = v27;
  v29 = *(v28 + 64);
  v1[66] = OUTLINED_FUNCTION_91();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v30 = sub_23E1FD03C();
  v1[69] = v30;
  OUTLINED_FUNCTION_8(v30);
  v1[70] = v31;
  v33 = *(v32 + 64);
  v1[71] = OUTLINED_FUNCTION_91();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v34 = sub_23E1FD52C();
  v1[75] = v34;
  OUTLINED_FUNCTION_25(v34);
  v36 = *(v35 + 64);
  v1[76] = OUTLINED_FUNCTION_42();
  v37 = sub_23E1FD98C();
  OUTLINED_FUNCTION_25(v37);
  v39 = *(v38 + 64);
  v1[77] = OUTLINED_FUNCTION_42();
  v40 = sub_23E1FD46C();
  v1[78] = v40;
  OUTLINED_FUNCTION_8(v40);
  v1[79] = v41;
  v43 = *(v42 + 64);
  v1[80] = OUTLINED_FUNCTION_91();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v44 = sub_23E1FD42C();
  v1[85] = v44;
  OUTLINED_FUNCTION_8(v44);
  v1[86] = v45;
  v47 = *(v46 + 64);
  v1[87] = OUTLINED_FUNCTION_42();
  v48 = sub_23E1FD9BC();
  v1[88] = v48;
  OUTLINED_FUNCTION_8(v48);
  v1[89] = v49;
  v51 = *(v50 + 64);
  v1[90] = OUTLINED_FUNCTION_91();
  v1[91] = swift_task_alloc();
  v52 = sub_23E1FE12C();
  v1[92] = v52;
  OUTLINED_FUNCTION_8(v52);
  v1[93] = v53;
  v55 = *(v54 + 64);
  v1[94] = OUTLINED_FUNCTION_91();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v56 = sub_23E1FDA1C();
  v1[109] = v56;
  OUTLINED_FUNCTION_8(v56);
  v1[110] = v57;
  v59 = *(v58 + 64);
  v1[111] = OUTLINED_FUNCTION_91();
  v1[112] = swift_task_alloc();
  v60 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v60, v61, v62);
}

uint64_t sub_23DEF770C()
{
  v5 = v1;
  if (*(v1 + 368))
  {
    v0 = *(v1 + 360);
    v2 = *(v1 + 368);
  }

  else
  {
    v6 = [*(v1 + 384) key];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_177_1();
  }

  *(v1 + 912) = v2;
  *(v1 + 904) = v0;
  v7 = *(v1 + 896);
  v8 = *(v1 + 384);
  sub_23E1FB7BC();
  sub_23E1FD9EC();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v9 = swift_dynamicCastObjCClass();
    *(v5 + 920) = v9;
    if (v9)
    {
      v10 = *(v5 + 352);
      OUTLINED_FUNCTION_45();
      *(v5 + 928) = sub_23E1FDBDC();

      sub_23E1FDECC();
      *(v5 + 936) = OUTLINED_FUNCTION_223();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
LABEL_10:
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_156_1();

      return MEMORY[0x2822009F8](v14, v15, v16);
    }

LABEL_13:
    OUTLINED_FUNCTION_28_5();

    v18 = OUTLINED_FUNCTION_83_3();
    v19(v18);
    v20 = *(v5 + 344);
    v21 = MEMORY[0x277D72CB8];
LABEL_16:
    v24 = *v21;
    v25 = sub_23E1FD43C();
    OUTLINED_FUNCTION_5_0(v25);
    (*(v26 + 104))(v20, v24);
    v27 = *MEMORY[0x277D72B88];
    v28 = sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0(v28);
    v30 = *(v29 + 104);
    v31 = v20;
LABEL_17:
    v32 = v27;
LABEL_18:
    v30(v31, v32);
LABEL_19:
    v33 = *(v5 + 896);
    v34 = *(v5 + 888);
    v35 = *(v5 + 864);
    v36 = *(v5 + 856);
    v37 = v5;
    v38 = *(v5 + 848);
    v39 = v37[105];
    v40 = v37[104];
    v41 = v37[103];
    v42 = v37[102];
    v43 = v37[101];
    v384 = v37[100];
    v385 = v37[99];
    v386 = v37[98];
    v387 = v37[97];
    v388 = v37[96];
    v389 = v37[95];
    v390 = v37[94];
    v391 = v37[91];
    v393 = v37[90];
    v395 = v37[87];
    v397 = v37[84];
    v400 = v37[83];
    v403 = v37[82];
    v406 = v37[81];
    v409 = v37[80];
    v413 = v37[77];
    v417 = v37[76];
    v419 = v37[74];
    v422 = v37[73];
    v425 = v37[72];
    OUTLINED_FUNCTION_108_1();
    OUTLINED_FUNCTION_107_1();
    v442 = v37[63];
    v446 = v37[62];
    v449 = v37[59];
    v454 = v37[58];
    v460 = v37[55];
    v467 = v37[52];

    OUTLINED_FUNCTION_7();
    goto LABEL_20;
  }

  v11 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v12 = swift_dynamicCastObjCClass();
    *(v5 + 952) = v12;
    if (v12)
    {
      v13 = *(v5 + 352);
      OUTLINED_FUNCTION_45();
      *(v5 + 960) = sub_23E1FDBDC();

      sub_23E1FDECC();
      *(v5 + 968) = OUTLINED_FUNCTION_223();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v20 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v22 = OUTLINED_FUNCTION_178_1();
    v23(v22);

    v21 = MEMORY[0x277D72CA8];
    goto LABEL_16;
  }

  v46 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v47 = swift_dynamicCastObjCClass();
    *(v5 + 984) = v47;
    if (v47)
    {
      v48 = *(v5 + 352);
      OUTLINED_FUNCTION_45();
      *(v5 + 992) = sub_23E1FDBDC();

      sub_23E1FDECC();
      *(v5 + 1000) = OUTLINED_FUNCTION_223();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_28_5();

    v58 = OUTLINED_FUNCTION_83_3();
    v59(v58);
    v20 = *(v5 + 344);
    goto LABEL_29;
  }

  v49 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_179_1();
    v50 = *(v5 + 864);
    v51 = *(v5 + 728);
    v52 = *(v5 + 384);
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &unk_280DAE2D8, 0x277D7C9D8);
    OUTLINED_FUNCTION_113_0(&qword_280DAE2D0);
    v53 = *(v49 + 16);
    v54 = OUTLINED_FUNCTION_50();
    v55(v54);
    v56 = v52;
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_94_1();
    OUTLINED_FUNCTION_212();
    sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 864);
    goto LABEL_34;
  }

  v60 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_179_1();
    v61 = *(v5 + 856);
    v62 = *(v5 + 728);
    v63 = *(v5 + 384);
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &qword_27E32D6E8, 0x277D7C398);
    OUTLINED_FUNCTION_113_0(&qword_27E32D6F0);
    v64 = *(v60 + 16);
    v65 = OUTLINED_FUNCTION_50();
    v66(v65);
    v67 = v63;
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_94_1();
    OUTLINED_FUNCTION_212();
    sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
    OUTLINED_FUNCTION_191_1();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 856);
    goto LABEL_34;
  }

  v68 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v69 = *(v5 + 896);
    v70 = *(v5 + 888);
    v71 = *(v5 + 880);
    v72 = *(v5 + 872);
    v73 = *(v5 + 848);
    v74 = *(v5 + 728);
    v75 = *(v5 + 344);

    OUTLINED_FUNCTION_35_6();
    v76 = *(v71 + 16);
    v77 = OUTLINED_FUNCTION_36_5();
    v78(v77);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    sub_23DE38DA8(0, &unk_280DAE650, 0x277CFC350);
    OUTLINED_FUNCTION_204();
    v79 = v73;
    v0 = 0;
    static WFContentItem.toolkitTypeDefinition(context:)(v79, v80);
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 848);
    goto LABEL_34;
  }

  v91 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v92 = *(v5 + 384), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    OUTLINED_FUNCTION_221();
    OUTLINED_FUNCTION_20();
    v93 = swift_dynamicCastObjCClass();
    *(v5 + 1016) = v93;
    if (v93)
    {
      v94 = *(v5 + 352);
      OUTLINED_FUNCTION_45();
      *(v5 + 1024) = sub_23E1FDBDC();

      sub_23E1FDECC();
      *(v5 + 1032) = OUTLINED_FUNCTION_223();
      OUTLINED_FUNCTION_222();
      OUTLINED_FUNCTION_78();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_28_5();

    v95 = OUTLINED_FUNCTION_83_3();
    v96(v95);
    v20 = *(v5 + 344);
    goto LABEL_43;
  }

  v20 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v97 = OUTLINED_FUNCTION_178_1();
    v98(v97);

LABEL_43:
    v21 = MEMORY[0x277D72CD0];
    goto LABEL_16;
  }

  v99 = v5;
  v20 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (v20 = *(v5 + 384), objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v100 = OUTLINED_FUNCTION_61_1();
    v101(v100);

LABEL_29:
    v21 = MEMORY[0x277D72CE0];
    goto LABEL_16;
  }

  v20 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v102 = OUTLINED_FUNCTION_61_1();
    v103(v102);

    v21 = MEMORY[0x277D72CB0];
    goto LABEL_16;
  }

  v20 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v104 = OUTLINED_FUNCTION_61_1();
    v105(v104);

    v21 = MEMORY[0x277D72C40];
    goto LABEL_16;
  }

  v106 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_161_1();
    v107 = MEMORY[0x277D72BF8];
LABEL_55:
    v109 = *v107;
    v110 = *(v4 + 104);
    v111 = OUTLINED_FUNCTION_100_1();
    v112(v111);
    sub_23E1FD3FC();
    v113 = OUTLINED_FUNCTION_41_4();
    v114(v113);
    v115 = *(v3 + 8);
    v116 = OUTLINED_FUNCTION_33();
    v117(v116);
    goto LABEL_19;
  }

  v108 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_161_1();
    v107 = MEMORY[0x277D72BE0];
    goto LABEL_55;
  }

  v118 = *(v5 + 384);
  sub_23E1FC7CC();
  OUTLINED_FUNCTION_20();
  v119 = swift_dynamicCastClass();
  v120 = MEMORY[0x277D84F90];
  if (v119)
  {
    v121 = *(v5 + 672);
    v122 = *(v5 + 392);

    sub_23E1FE06C();
    v123 = *(v5 + 896);
    v124 = *(v5 + 880);
    v125 = *(v5 + 872);
    v128 = *(v5 + 616);
    v456 = *(v5 + 608);
    v129 = *(v5 + 600);
    v462 = *(v5 + 344);
    v468 = *(v5 + 672);
    *(v5 + 328) = *(v5 + 392);
    swift_getMetatypeMetadata();
    sub_23E1FDC7C();
    sub_23E1FD97C();
    *(v5 + 336) = v120;
    sub_23DF06038(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
    sub_23DF0607C(&qword_280DAE420, &qword_27E32D6E0, &qword_23E223788);
    sub_23E1FE4EC();
    sub_23E1FD50C();
    v130 = *(v124 + 8);
    v131 = OUTLINED_FUNCTION_164_1();
    v132(v131);
    v133 = *MEMORY[0x277D72B68];
    v134 = sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0(v134);
    v30 = *(v135 + 104);
    v31 = v462;
LABEL_60:
    v32 = v133;
    goto LABEL_18;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 840);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &unk_280DAE680, 0x277CFC3F0);
    v126 = OUTLINED_FUNCTION_5_11();
    v127(v126);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 840);
    goto LABEL_34;
  }

  v136 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 832);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE308, 0x277CFC4A0);
    v137 = OUTLINED_FUNCTION_5_11();
    v138(v137);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 832);
    goto LABEL_34;
  }

  v139 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 824);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE6D0, 0x277CFC430);
    v140 = OUTLINED_FUNCTION_5_11();
    v141(v140);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 824);
    goto LABEL_34;
  }

  v142 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 816);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6D8, 0x277CFC4E0);
    v143 = OUTLINED_FUNCTION_5_11();
    v144(v143);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 816);
    goto LABEL_34;
  }

  v145 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 808);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6D0, 0x277CFC378);
    v146 = OUTLINED_FUNCTION_5_11();
    v147(v146);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 808);
    goto LABEL_34;
  }

  v148 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 800);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6C8, 0x277CFC3A0);
    v149 = OUTLINED_FUNCTION_5_11();
    v150(v149);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 800);
    goto LABEL_34;
  }

  v151 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 792);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_27E32D6C0, 0x277CFC4A8);
    v152 = OUTLINED_FUNCTION_5_11();
    v153(v152);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 792);
    goto LABEL_34;
  }

  v154 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    OUTLINED_FUNCTION_12_13();
    v0 = *(v5 + 784);
    OUTLINED_FUNCTION_97_0();
    sub_23DE38DA8(0, &qword_280DAE6D8, 0x277CFC2B8);
    v155 = OUTLINED_FUNCTION_5_11();
    v156(v155);
    sub_23E1FE0EC();
    sub_23E1FC9EC();
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 784);
    goto LABEL_34;
  }

  v157 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    v158 = *(v5 + 384);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      v173 = *(v5 + 384);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v174 = swift_dynamicCastObjCClass();
      *(v5 + 1272) = v174;
      if (!v174)
      {
        v180 = *(v5 + 384);
        sub_23E1FC97C();
        OUTLINED_FUNCTION_20();
        if (swift_dynamicCastClass())
        {
          v181 = *(v5 + 896);
          v182 = *(v5 + 888);
          v183 = *(v5 + 880);
          v184 = *(v99 + 872);
          v185 = *(v99 + 752);
          v186 = *(v99 + 728);
          v469 = *(v99 + 640);

          sub_23E1FC96C();
          OUTLINED_FUNCTION_35_6();
          v187 = *(v183 + 16);
          v188 = OUTLINED_FUNCTION_35_0();
          v189(v188);
          sub_23E1FE0EC();
          sub_23E1FC9EC();
          OUTLINED_FUNCTION_94_1();
          sub_23E1FE0DC();
          sub_23E1FE15C();
          v202 = *(v99 + 472);
          v203 = *(v99 + 440);
          (*(*(v99 + 432) + 104))(v203, *MEMORY[0x277D7BE28], *(v99 + 424));
          static WFContentItem.toolkitPredicateTemplates(usage:seen:)(v203, MEMORY[0x277D84F90]);
          v204 = *(v99 + 880);
          v457 = *(v99 + 872);
          v463 = *(v99 + 896);
          v205 = *(v99 + 744);
          v448 = *(v99 + 736);
          v451 = *(v99 + 752);
          v5 = v99;
          v249 = *(v99 + 688);
          v411 = *(v99 + 680);
          v250 = *(v99 + 640);
          v424 = *(v99 + 648);
          v251 = *(v99 + 632);
          v252 = *(v99 + 624);
          v433 = *(v99 + 472);
          v253 = *(v99 + 456);
          v427 = *(v99 + 464);
          v428 = *(v99 + 448);
          v430 = *(v99 + 416);
          v470 = *(v99 + 400);
          v438 = *(v99 + 408);
          v444 = *(v99 + 344);
          (*(*(v99 + 432) + 8))(*(v99 + 440), *(v99 + 424));
          v415 = swift_allocBox();
          v255 = v254;
          v256 = swift_allocBox();
          (*(v251 + 16))(v257, v250, v252);
          *v255 = v256;
          (*(v249 + 104))(v255, *MEMORY[0x277D72C00], v411);
          *v424 = v415;
          (*(v251 + 104))(v424, *MEMORY[0x277D72D30], v252);
          (*(v253 + 16))(v427, v433, v428);
          sub_23E1FD47C();
          (*(v253 + 8))(v433, v428);
          (*(v251 + 8))(v250, v252);
          (*(v205 + 8))(v451, v448);
          (*(v204 + 8))(v463, v457);
          (*(v438 + 32))(v444, v430, v470);
          v133 = *MEMORY[0x277D72B60];
          v258 = sub_23E1FD41C();
          OUTLINED_FUNCTION_5_0(v258);
          v30 = *(v259 + 104);
          v31 = v444;
          goto LABEL_60;
        }

        sub_23E1FC72C();
        OUTLINED_FUNCTION_20();
        if (!swift_dynamicCastClass())
        {

          objc_opt_self();
          OUTLINED_FUNCTION_20();
          if (swift_dynamicCastObjCClass())
          {
            v233 = *(v5 + 568);
            v234 = *MEMORY[0x277D7A4E0];
            sub_23E1FCB9C();
            v235 = sub_23E1FD02C();
            v236 = sub_23E1FE1BC();
            if (os_log_type_enabled(v235, v236))
            {
              v237 = swift_slowAlloc();
              *v237 = 0;
              _os_log_impl(&dword_23DE30000, v235, v236, "Union parameters do not get a type definition", v237, 2u);
              OUTLINED_FUNCTION_56();
            }

            v238 = *(v5 + 896);
            v239 = *(v5 + 880);
            v240 = *(v5 + 872);
            v241 = *(v5 + 568);
            v242 = *(v5 + 560);
            v243 = *(v5 + 552);

            (*(v242 + 8))(v241, v243);
            ObjectType = swift_getObjectType();
            sub_23DEF1D18();
            OUTLINED_FUNCTION_31_5();
            *v245 = ObjectType;
            *(v245 + 8) = 0;
            swift_willThrow();
            v246 = *(v239 + 8);
            v247 = OUTLINED_FUNCTION_79();
            v248(v247);
          }

          else
          {
            OUTLINED_FUNCTION_104_1();
            v375 = *(v5 + 880);
            v376 = *(v5 + 872);
            v377 = *(v5 + 384);
            v378 = swift_getObjectType();
            sub_23DEF1D18();
            OUTLINED_FUNCTION_31_5();
            *v379 = v378;
            *(v379 + 8) = 0;
            swift_willThrow();
            v380 = *(v375 + 8);
            v381 = OUTLINED_FUNCTION_33();
            v382(v381);
          }

          goto LABEL_35;
        }

        *(v5 + 1472) = sub_23E1FC71C();
        v197 = swift_task_alloc();
        *(v5 + 1480) = v197;
        *v197 = v5;
        v197[1] = sub_23DEFFCEC;
        v198 = *(v5 + 376);
        v199 = *(v5 + 344);
        v200 = *(v5 + 352);
        OUTLINED_FUNCTION_156_1();

        return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)();
      }

      v175 = *(v5 + 352);
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v176 = swift_dynamicCastObjCClass();
      *(v5 + 1280) = v176;
      if (v176)
      {
        v177 = *(v5 + 352);
        OUTLINED_FUNCTION_45();
        *(v5 + 1288) = sub_23E1FDBDC();
        *(v5 + 1296) = sub_23E1FDECC();
        *(v5 + 1304) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        goto LABEL_10;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v194 = swift_dynamicCastObjCClass();
      *(v5 + 1408) = v194;
      v195 = *(v5 + 352);
      if (v194)
      {
        *(v5 + 1416) = sub_23E1FDECC();
        v196 = v195;
        *(v5 + 1424) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        goto LABEL_10;
      }

      v206 = [*(v5 + 352) identifier];
      v207 = sub_23E1FDC1C();
      v209 = v208;

      MEMORY[0x23EF044F0](46, 0xE100000000000000);
      v210 = OUTLINED_FUNCTION_45();
      MEMORY[0x23EF044F0](v210);

      v211 = v207;
      v212 = v209;
      v213 = *MEMORY[0x277D7A338];
      v214 = sub_23E1FDC1C();
      v216 = v215;
      v217 = *(v5 + 656);
      v218 = *(v5 + 632);
      v219 = *(v99 + 624);
      v220 = *(v99 + 384);
      OUTLINED_FUNCTION_174_1();
      v221 = swift_allocObject();
      v221[2] = v214;
      v221[3] = v216;
      v221[4] = v211;
      v221[5] = v212;
      *v217 = v221;
      v222 = *MEMORY[0x277D72D28];
      v223 = *(v218 + 104);
      v224 = OUTLINED_FUNCTION_100_1();
      v225(v224);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v226 = *(v99 + 384);
        *(v99 + 16) = v99;
        *(v99 + 24) = sub_23DEFF27C;
        v227 = swift_continuation_init();
        *(v99 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D5B8, &qword_23E2294D8);
        *(v99 + 80) = MEMORY[0x277D85DD0];
        *(v99 + 88) = 1107296256;
        *(v99 + 96) = sub_23DEEF88C;
        *(v99 + 104) = &block_descriptor_16;
        *(v99 + 112) = v227;
        v228 = v226;
        v229 = OUTLINED_FUNCTION_140_1();
        [v229 v230];
        OUTLINED_FUNCTION_156_1();

        return MEMORY[0x282200938](v231);
      }

      v260 = sub_23DF05E44(*(v99 + 1272));
      if (!v260)
      {
        v260 = v120;
      }

      v458 = v260;
      v452 = sub_23DE4D8B0(v260);
      if (!v452)
      {
LABEL_148:
        v5 = v99;
        v362 = *(v99 + 1272);
        v363 = *(v99 + 896);
        v364 = *(v99 + 880);
        v465 = *(v5 + 872);
        v472 = v363;
        v365 = *(v5 + 656);
        v366 = *(v5 + 648);
        v367 = *(v5 + 632);
        v368 = *(v5 + 624);
        v453 = v365;
        v436 = v362;
        v441 = *(v5 + 616);
        v369 = *(v5 + 488);
        v370 = *(v5 + 496);
        v371 = *(v5 + 480);
        v445 = *(v5 + 344);

        (*(v367 + 16))(v366, v365, v368);
        (*(v369 + 104))(v370, *MEMORY[0x277D73238], v371);
        v372 = [v436 localizedLabel];
        sub_23E1FDC1C();

        OUTLINED_FUNCTION_58_0();
        sub_23E1FD97C();
        sub_23E1FD83C();
        (*(v367 + 8))(v453, v368);
        (*(v364 + 8))(v472, v465);
        v27 = *MEMORY[0x277D72B48];
        v373 = sub_23E1FD41C();
        OUTLINED_FUNCTION_5_0(v373);
        v30 = *(v374 + 104);
        v31 = v445;
        goto LABEL_17;
      }

      v231 = sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928);
      if (v452 < 1)
      {
        __break(1u);
        return MEMORY[0x282200938](v231);
      }

      v464 = 0;
      v261 = *(v99 + 560);
      v421 = (*(v99 + 880) + 16);
      v429 = *(v99 + 520);
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v412 = v262;
      v416 = v263;
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v405 = v264;
      v408 = v265;
      OUTLINED_FUNCTION_103_1();
      OUTLINED_FUNCTION_15_4();
      v399 = v266;
      v402 = v267;
      v392 = (v268 + 8);
      v394 = *MEMORY[0x277D7A4E0];
      while (1)
      {
        if ((v458 & 0xC000000000000001) != 0)
        {
          v269 = MEMORY[0x23EF04DD0](v464, v458);
        }

        else
        {
          v269 = *(v458 + 8 * v464 + 32);
        }

        v471 = v269;
        sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
        v270 = sub_23E1FC9CC();
        if (v270)
        {
          v271 = v270;
          v272 = [v270 value];
          if (v272)
          {
            v273 = v272;
            v274 = *(v99 + 896);
            v275 = *(v99 + 888);
            v276 = *(v99 + 872);
            v434 = *(v99 + 1272);
            v439 = *(v99 + 544);
            v277 = *(v99 + 504);
            v278 = *(v99 + 384);
            sub_23E1FDC1C();

            (*v421)(v275, v274, v276);
            v279 = v278;
            v280 = v471;
            OUTLINED_FUNCTION_86_2();
            sub_23E1FD7AC();
            sub_23E1FD93C();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v332 = *(v120 + 16);
              v333 = OUTLINED_FUNCTION_6_1();
              sub_23DE4D4D8(v333, v334, v335, v120);
              v120 = v336;
            }

            v220 = *(v120 + 16);
            v281 = *(v120 + 24);
            if (v220 >= v281 >> 1)
            {
              OUTLINED_FUNCTION_9(v281);
              OUTLINED_FUNCTION_138_1();
              sub_23DE4D4D8(v337, v338, v339, v340);
              v120 = v341;
            }

            v217 = *(v99 + 544);
            v282 = *(v99 + 512);

            *(v120 + 16) = v220 + 1;
            goto LABEL_138;
          }
        }

        sub_23DE38DA8(0, &qword_27E32D698, off_278C01650);
        v283 = OUTLINED_FUNCTION_110_0();
        sub_23DE38DA8(v283, &qword_27E32C1A0, 0x277CCAD98);
        v284 = OUTLINED_FUNCTION_173_1();
        if (!v284)
        {
          goto LABEL_129;
        }

        v285 = v284;
        v286 = [v284 value];
        if (!v286)
        {
          break;
        }

        v287 = v286;
        v288 = *(v99 + 536);
        v289 = [v286 symbol];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_177_1();

        v290 = [v287 symbol];
        sub_23E1FDC1C();

        OUTLINED_FUNCTION_45();
        sub_23E1FD92C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v342 = *(v120 + 16);
          v343 = OUTLINED_FUNCTION_6_1();
          sub_23DE4D4D8(v343, v344, v345, v120);
          v120 = v346;
        }

        v220 = *(v120 + 16);
        v291 = *(v120 + 24);
        v292 = (v220 + 1);
        if (v220 >= v291 >> 1)
        {
          OUTLINED_FUNCTION_9(v291);
          OUTLINED_FUNCTION_138_1();
          sub_23DE4D4D8(v347, v348, v349, v350);
          v120 = v351;
        }

        v217 = *(v99 + 536);
        v293 = *(v99 + 512);

LABEL_137:
        *(v120 + 16) = v292;
LABEL_138:
        v312 = v120 + ((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v220;
        v313 = *(v429 + 32);
        OUTLINED_FUNCTION_73_3();
        v314();
LABEL_139:
        if (v452 == ++v464)
        {
          goto LABEL_148;
        }
      }

LABEL_129:
      sub_23DE38DA8(0, &qword_280DAE670, 0x277D7C6B0);
      v294 = OUTLINED_FUNCTION_110_0();
      sub_23DE38DA8(v294, &unk_27E32D6A0, 0x277D7C6B8);
      v295 = OUTLINED_FUNCTION_173_1();
      if (!v295)
      {
        goto LABEL_142;
      }

      v296 = v295;
      v297 = [v295 value];
      if (!v297 || (v298 = v297, v299 = [v297 number], v298, !v299))
      {

LABEL_142:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
        v315 = OUTLINED_FUNCTION_220();
        *(v315 + 16) = xmmword_23E224C10;
        *(v315 + 32) = 0xD000000000000018;
        *(v315 + 40) = v416;
        *(v315 + 48) = 0xD00000000000001ALL;
        *(v315 + 56) = v412;
        *(v315 + 64) = 0xD000000000000018;
        *(v315 + 72) = v408;
        *(v315 + 80) = 0xD00000000000001CLL;
        *(v315 + 88) = v405;
        *(v315 + 96) = 0xD000000000000020;
        *(v315 + 104) = v402;
        *(v315 + 112) = 0xD00000000000002BLL;
        *(v315 + 120) = v399;
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v317 = NSStringFromClass(ObjCClassFromMetadata);
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_151_1();

        *(v99 + 304) = v217;
        *(v99 + 312) = v220;
        v318 = swift_task_alloc();
        v319 = OUTLINED_FUNCTION_10_9(v318, v99 + 304);
        v217 = sub_23DEDEAA0(v319, v320, v321);
        swift_setDeallocating();
        sub_23DF032A4();

        if (v217)
        {
        }

        else
        {
          v322 = *(v99 + 576);
          sub_23E1FCB9C();
          v220 = v471;
          v323 = sub_23E1FD02C();
          v324 = sub_23E1FE1BC();

          if (os_log_type_enabled(v323, v324))
          {
            v325 = OUTLINED_FUNCTION_38_0();
            v326 = swift_slowAlloc();
            *v325 = 138412290;
            *(v325 + 4) = v220;
            *v326 = v220;
            v327 = v220;
            _os_log_impl(&dword_23DE30000, v323, v324, "Incompatible possible state for enumeration: %@", v325, 0xCu);
            sub_23DE58BD0(v326, &unk_27E32C190, &qword_23E224B70);
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();
          }

          else
          {
            v327 = v323;
            v323 = v220;
          }

          v217 = *(v99 + 576);
          v328 = *(v99 + 552);

          v329 = *v392;
          v330 = OUTLINED_FUNCTION_50();
          v331(v330);
        }

        goto LABEL_139;
      }

      v300 = *(v99 + 896);
      v301 = *(v99 + 888);
      v302 = *(v99 + 872);
      v435 = *(v99 + 1272);
      v440 = *(v99 + 528);
      v303 = *(v99 + 504);
      v431 = *(v99 + 384);
      v304 = [v299 integerValue];

      *(v99 + 320) = v304;
      sub_23E1FE71C();
      v305 = *v421;
      v306 = OUTLINED_FUNCTION_35_0();
      v307(v306);
      v308 = v431;
      v309 = v471;
      OUTLINED_FUNCTION_149_1();
      sub_23E1FD7AC();
      OUTLINED_FUNCTION_199();
      sub_23E1FD93C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v352 = *(v120 + 16);
        v353 = OUTLINED_FUNCTION_6_1();
        sub_23DE4D4D8(v353, v354, v355, v120);
        v120 = v356;
      }

      v220 = *(v120 + 16);
      v310 = *(v120 + 24);
      v292 = (v220 + 1);
      if (v220 >= v310 >> 1)
      {
        OUTLINED_FUNCTION_9(v310);
        OUTLINED_FUNCTION_138_1();
        sub_23DE4D4D8(v357, v358, v359, v360);
        v120 = v361;
      }

      v217 = *(v99 + 528);
      v311 = *(v99 + 512);

      goto LABEL_137;
    }
  }

  v159 = *(v5 + 384);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v160 = *(v5 + 896);
    v161 = *(v5 + 888);
    v162 = *(v5 + 880);
    v163 = *(v5 + 872);
    v164 = *(v5 + 776);
    v165 = *(v5 + 728);
    v166 = *(v5 + 712);
    v167 = *(v5 + 704);
    v168 = *(v5 + 376);
    OUTLINED_FUNCTION_187_1();
    sub_23DE38DA8(0, &unk_280DAE6C0, off_278C014F0);
    v169 = OUTLINED_FUNCTION_35_6();
    (*(v166 + 104))(v165, *MEMORY[0x277D733B8], v167, v169);
    (*(v162 + 16))(v161, v459, v163);
    v170 = v168;
    OUTLINED_FUNCTION_94_1();
    sub_23E1FE0DC();
    v0 = 0;
    static WFContentItem.toolkitTypeDefinition(context:)(v164, v466);
    OUTLINED_FUNCTION_28_5();
    v57 = *(v5 + 776);
LABEL_34:
    (*(*(v5 + 744) + 8))(v57, *(v5 + 736));
    v81 = OUTLINED_FUNCTION_83_3();
    v82(v81);
    if (!v0)
    {
      goto LABEL_19;
    }

LABEL_35:
    v83 = *(v5 + 896);
    v84 = *(v5 + 888);
    v85 = *(v5 + 864);
    v86 = v5;
    v87 = *(v5 + 856);
    v88 = v86[106];
    v89 = v86[105];
    OUTLINED_FUNCTION_32_3();
    v90 = v86[101];
    OUTLINED_FUNCTION_9_9();
    v396 = v86[84];
    v398 = v86[83];
    v401 = v86[82];
    v404 = v86[81];
    v407 = v86[80];
    v410 = v86[77];
    v414 = v86[76];
    v418 = v86[74];
    v420 = v86[73];
    v423 = v86[72];
    v426 = v86[71];
    OUTLINED_FUNCTION_87_2();
    v432 = v86[66];
    v437 = v86[63];
    v443 = v86[62];
    v447 = v86[59];
    v450 = v86[58];
    v455 = v86[55];
    v461 = v86[52];

    OUTLINED_FUNCTION_19();
LABEL_20:
    OUTLINED_FUNCTION_156_1();

    __asm { BRAA            X1, X16 }
  }

  v171 = *(v5 + 352);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v172 = swift_dynamicCastObjCClass();
  *(v5 + 1048) = v172;
  if (v172)
  {
    OUTLINED_FUNCTION_45();
    *(v5 + 1056) = sub_23E1FDBDC();
    *(v5 + 1064) = sub_23E1FDECC();
    *(v5 + 1072) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_10;
  }

  v178 = *(v5 + 352);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v179 = swift_dynamicCastObjCClass();
  *(v5 + 1152) = v179;
  if (v179)
  {
    sub_23E1FDECC();
    *(v5 + 1160) = OUTLINED_FUNCTION_195_1();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_10;
  }

  [*(v5 + 384) stateClass];
  swift_getObjCClassMetadata();
  v190 = swift_task_alloc();
  *(v5 + 1256) = v190;
  *v190 = v5;
  v190[1] = sub_23DEFD024;
  v191 = *(v5 + 344);
  v192 = *(v5 + 352);
  OUTLINED_FUNCTION_156_1();

  return sub_23DE3B9A4();
}

uint64_t sub_23DEF9BC0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[117];
  v2 = v0[116];
  v3 = v0[115];

  v0[118] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEF9C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 944);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [objc_opt_self() dateComponentsValueType];
    OUTLINED_FUNCTION_66();
    v47 = sub_23E1FE3BC();

    v48 = OUTLINED_FUNCTION_41_4();
    v49(v48);
    if (v47)
    {
      v50 = MEMORY[0x277D72C70];
      goto LABEL_6;
    }
  }

  else
  {
    v51 = OUTLINED_FUNCTION_41_4();
    v52(v51);
  }

  v50 = MEMORY[0x277D72CB8];
LABEL_6:
  v53 = OUTLINED_FUNCTION_163_0(v50);
  OUTLINED_FUNCTION_5_0(v53);
  v55 = *(v54 + 104);
  v56 = OUTLINED_FUNCTION_54();
  v57(v56);
  v58 = *MEMORY[0x277D72B88];
  v59 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v59);
  v61 = *(v60 + 104);
  v62 = OUTLINED_FUNCTION_54();
  v63(v62);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEF9EFC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];

  v0[122] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEF9F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 976);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [objc_opt_self() dateComponentsValueType];
    OUTLINED_FUNCTION_66();
    v47 = sub_23E1FE3BC();

    v48 = OUTLINED_FUNCTION_41_4();
    v49(v48);
    if (v47)
    {
      v50 = MEMORY[0x277D72C70];
      goto LABEL_6;
    }
  }

  else
  {
    v51 = OUTLINED_FUNCTION_41_4();
    v52(v51);
  }

  v50 = MEMORY[0x277D72CB8];
LABEL_6:
  v53 = OUTLINED_FUNCTION_163_0(v50);
  OUTLINED_FUNCTION_5_0(v53);
  v55 = *(v54 + 104);
  v56 = OUTLINED_FUNCTION_54();
  v57(v56);
  v58 = *MEMORY[0x277D72B88];
  v59 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v59);
  v61 = *(v60 + 104);
  v62 = OUTLINED_FUNCTION_54();
  v63(v62);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA238()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[123];

  v0[126] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEFA2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v44 = *(v42 + 1008);
  OUTLINED_FUNCTION_128_1();
  if (v44)
  {
    sub_23DE38DA8(0, &qword_280DAE608, 0x277D82BB8);
    v45 = [v44 valueType];
    v46 = [v45 wf_objectValueType];

    v47 = [objc_opt_self() attributedStringValueType];
    OUTLINED_FUNCTION_128_0();
    v48 = sub_23E1FE3BC();

    v49 = OUTLINED_FUNCTION_41_4();
    v50(v49);
    if (v48)
    {
      v51 = MEMORY[0x277D72C88];
      goto LABEL_6;
    }
  }

  else
  {
    v52 = OUTLINED_FUNCTION_41_4();
    v53(v52);
  }

  v51 = MEMORY[0x277D72CE0];
LABEL_6:
  v54 = OUTLINED_FUNCTION_163_0(v51);
  OUTLINED_FUNCTION_5_0(v54);
  v56 = *(v55 + 104);
  v57 = OUTLINED_FUNCTION_54();
  v58(v57);
  v59 = *MEMORY[0x277D72B88];
  v60 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v60);
  v62 = *(v61 + 104);
  v63 = OUTLINED_FUNCTION_54();
  v64(v63);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v66(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA590()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];

  v0[130] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEFA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_144_1();
  OUTLINED_FUNCTION_160_1();
  v43 = v42[130];
  v44 = v42[112];
  v45 = v42[110];
  v46 = v42[109];
  if (v43)
  {
    v47 = v42[91];
    v48 = v42[90];
    v49 = v42[89];
    v50 = v42[88];
    a38 = v42[44];
    v51 = [v43 valueType];
    sub_23E1FE05C();

    (*(v49 + 104))(v48, *MEMORY[0x277D733C0], v50);
    OUTLINED_FUNCTION_66();
    LOBYTE(v51) = sub_23E1FD9AC();

    v52 = *(v49 + 8);
    v52(v48, v50);
    v52(v47, v50);
    v53 = *(v45 + 8);
    v54 = OUTLINED_FUNCTION_50();
    v55(v54);
    if (v51)
    {
      v56 = MEMORY[0x277D72CA0];
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v42[44];
    v58 = *(v45 + 8);
    v59 = OUTLINED_FUNCTION_50();
    v60(v59);
  }

  v56 = MEMORY[0x277D72CD0];
LABEL_6:
  v61 = OUTLINED_FUNCTION_163_0(v56);
  OUTLINED_FUNCTION_5_0(v61);
  v63 = *(v62 + 104);
  v64 = OUTLINED_FUNCTION_54();
  v65(v64);
  v66 = *MEMORY[0x277D72B88];
  v67 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v67);
  v69 = *(v68 + 104);
  v70 = OUTLINED_FUNCTION_54();
  v71(v70);
  OUTLINED_FUNCTION_1_19();
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_15_11();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_143_1();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_23DEFA914()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[134];
  v2 = v0[132];
  v3 = v0[131];

  v0[135] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEFA994()
{
  v32 = v0;
  if (v0[135])
  {
    v2 = v0[133];
    v0[136] = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v3 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  else
  {
    v6 = v0[114];
    v7 = v0[73];
    v8 = v0[44];
    v9 = *MEMORY[0x277D7A4D8];
    sub_23E1FCB9C();
    v10 = v8;
    sub_23E1FB7BC();
    v11 = sub_23E1FD02C();
    v12 = sub_23E1FE1BC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[114];
      v14 = v0[113];
      v30 = v0[73];
      v15 = OUTLINED_FUNCTION_185_1();
      v31 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_23DE56B40(v14, v13, &v31);
      *(v15 + 12) = 2080;
      v16 = [v1 identifier];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_193_0();
      v17 = sub_23DE56B40(v14, v1, &v31);

      *(v15 + 14) = v17;
      OUTLINED_FUNCTION_211(&dword_23DE30000, v18, v19, "Missing parameter metadata for parameter %s in action: %s, throwing missingLinkParameterMetadata");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v6 + 8))(v30, v10);
    }

    else
    {
      v20 = v0[73];
      v21 = v0[70];
      v22 = v0[69];

      v23 = OUTLINED_FUNCTION_40_4();
      v24(v23);
    }

    v25 = v0[48];
    sub_23DEF1D18();
    v0[141] = OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_48_5(v26, 3);
    [v25 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v0[142] = v27;
    *v27 = v28;
    v27[1] = sub_23DEFB808;
    OUTLINED_FUNCTION_80_2();

    return sub_23DE3B9A4();
  }
}

uint64_t sub_23DEFAC58()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[136];
  v2 = v0[131];

  v0[137] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  OUTLINED_FUNCTION_95_0();
  a53 = v56;
  a54 = v57;
  OUTLINED_FUNCTION_116_1();
  a52 = v54;
  v58 = *(v54 + 1096);
  v59 = [v58 bundleIdentifier];

  if (!v59)
  {
    sub_23E1FDC1C();
    sub_23E1FDBDC();
    OUTLINED_FUNCTION_37();
  }

  v60 = [*(v54 + 1080) valueType];
  v61 = [v60 wf:v59 contentItemClassWithAppBundleIdentifier:?];

  if (v61 && (swift_getObjCClassMetadata(), sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    v62 = *(v54 + 1080);
    v63 = *(v54 + 912);

    v64 = [v62 valueType];
    objc_opt_self();
    v65 = swift_dynamicCastObjCClass();
    if (v65)
    {
      v66 = [v65 unitType];

      type metadata accessor for LNMeasurementUnitType(0);
      v68 = MEMORY[0x277D733E8];
    }

    else
    {

      v66 = 0;
      v67 = 0;
      v68 = 0;
      *(v54 + 232) = 0;
      *(v54 + 240) = 0;
    }

    v94 = *(v54 + 1080);
    v95 = *(v54 + 896);
    v96 = *(v54 + 888);
    v97 = *(v54 + 880);
    v98 = *(v54 + 872);
    v99 = *(v54 + 768);
    v100 = *(v54 + 376);
    v101 = *(v54 + 344);
    *(v54 + 224) = v66;
    *(v54 + 248) = v67;
    *(v54 + 256) = v68;
    sub_23DF05FA0(v54 + 224, v54 + 264, &qword_27E32D6B0, &unk_23E229730);
    v102 = [v94 valueType];
    v103 = *(v97 + 16);
    v104 = OUTLINED_FUNCTION_128_0();
    v105(v104);
    v106 = v100;
    sub_23E1FE0CC();
    static WFContentItem.toolkitTypeDefinition(context:)(v99, v101);
    v107 = *(v54 + 896);
    v108 = *(v54 + 880);
    v109 = *(v54 + 872);
    v110 = *(v54 + 768);
    v111 = *(v54 + 744);
    v112 = *(v54 + 736);

    v113 = *(v111 + 8);
    v114 = OUTLINED_FUNCTION_66();
    v115(v114);
    v116 = OUTLINED_FUNCTION_129_1();
    v117(v116);
    sub_23DE58BD0(v54 + 224, &qword_27E32D6B0, &unk_23E229730);
    OUTLINED_FUNCTION_126_0();
    v118 = *(v54 + 864);
    v119 = *(v54 + 856);
    v120 = *(v54 + 848);
    v121 = *(v54 + 840);
    OUTLINED_FUNCTION_43_3();
    v122 = *(v54 + 808);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_27_7();
    OUTLINED_FUNCTION_108_1();
    v135 = v124;
    v136 = v123;
    OUTLINED_FUNCTION_107_1();
    v137 = v126;
    v138 = v125;
    v139 = *(v54 + 504);
    v140 = *(v54 + 496);
    v141 = *(v54 + 472);
    v142 = *(v54 + 464);
    v143 = *(v54 + 440);
    v144 = *(v54 + 416);

    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_78_3();

    return v128(v127, v128, v129, v130, v131, v132, v133, v134, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, 0, a41, a42, a43, a44, a45, a46);
  }

  else
  {
    v69 = *(v54 + 912);
    v70 = *(v54 + 592);
    v71 = *(v54 + 352);
    v72 = *MEMORY[0x277D7A4D8];
    sub_23E1FCB9C();
    v73 = v71;
    sub_23E1FB7BC();
    v74 = sub_23E1FD02C();
    v75 = sub_23E1FE1BC();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v54 + 912);
      v77 = *(v54 + 904);
      v145 = *(v54 + 592);
      v78 = OUTLINED_FUNCTION_185_1();
      a41 = swift_slowAlloc();
      *v78 = 136315394;
      *(v78 + 4) = sub_23DE56B40(v77, v76, &a41);
      *(v78 + 12) = 2080;
      v79 = [v55 identifier];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_193_0();
      v80 = sub_23DE56B40(v77, v55, &a41);

      *(v78 + 14) = v80;
      OUTLINED_FUNCTION_211(&dword_23DE30000, v81, v82, "Missing content item class for parameter %s in action: %s, throwing missingLinkParameterContentItem");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_56();

      (*(v69 + 8))(v145, v73);
    }

    else
    {
      v83 = *(v54 + 592);
      v84 = *(v54 + 560);
      v85 = *(v54 + 552);

      v86 = OUTLINED_FUNCTION_40_4();
      v87(v86);
    }

    v88 = *(v54 + 384);
    sub_23DEF1D18();
    *(v54 + 1104) = OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_48_5(v89, 5);
    [v88 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v54 + 1112) = v90;
    *v90 = v91;
    v90[1] = sub_23DEFB308;
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_78_3();

    return sub_23DE3B9A4();
  }
}

uint64_t sub_23DEFB308()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 1112);
  v7 = *(v5 + 912);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v3 + 1120) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFB42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 896);
  v46 = *(v44 + 880);
  v47 = *(v44 + 872);

  v48 = *(v46 + 8);
  v49 = OUTLINED_FUNCTION_54();
  v50(v49);
  v51 = *(v44 + 896);
  v52 = *(v44 + 888);
  v53 = *(v44 + 864);
  v54 = *(v44 + 856);
  v55 = *(v44 + 848);
  v56 = *(v44 + 840);
  OUTLINED_FUNCTION_32_3();
  v57 = *(v44 + 808);
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFB60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[140];
  v48 = v46[138];
  v49 = v46[135];
  v50 = v46[112];
  v51 = v46[110];
  v52 = v46[109];
  swift_willThrow();

  v53 = *(v51 + 8);
  v54 = OUTLINED_FUNCTION_79();
  v55(v54);
  v70 = v46[138];
  OUTLINED_FUNCTION_126_0();
  v56 = v46[108];
  v57 = v46[107];
  v58 = v46[106];
  v59 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v60 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v70, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFB808()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 1136);
  v7 = *(v5 + 912);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v3 + 1144) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFB92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = OUTLINED_FUNCTION_197_0();
  v46(v45);
  v47 = v44[112];
  v48 = v44[111];
  v49 = v44[108];
  v50 = v44[107];
  v51 = v44[106];
  v52 = v44[105];
  OUTLINED_FUNCTION_32_3();
  v53 = v44[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFBAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[143];
  v48 = v46[141];
  v49 = v46[112];
  v50 = v46[110];
  v51 = v46[109];
  swift_willThrow();

  v52 = *(v50 + 8);
  v53 = OUTLINED_FUNCTION_79();
  v54(v53);
  v69 = v46[141];
  OUTLINED_FUNCTION_126_0();
  v55 = v46[108];
  v56 = v46[107];
  v57 = v46[106];
  v58 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v59 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v69, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFBCE8()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[145];
  v2 = v0[144];

  v0[146] = [v2 intentDescription];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFBD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1168);
  if (v45)
  {
    v46 = sub_23DF05EB0(*(v44 + 904), *(v44 + 912), v45);
    *(v44 + 1176) = v46;
    if (v46)
    {
      v47 = v46;
      v48 = [v46 codableAttribute];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 wf_contentItemClass];

        if (v50)
        {
          swift_getObjCClassMetadata();
          sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
          OUTLINED_FUNCTION_20();
          if (swift_dynamicCastMetatype())
          {
            v51 = *(v44 + 912);

            sub_23DE38DA8(0, &qword_280DAE678, 0x277CFC458);
            OUTLINED_FUNCTION_20();
            v52 = swift_dynamicCastMetatype();
            if (v52)
            {
              v53 = sub_23DE38DA8(0, &qword_27E32D6B8, 0x277CD3D50);
              v52 = v47;
              v54 = v53;
              v55 = MEMORY[0x277D733F0];
            }

            else
            {
              v54 = 0;
              v55 = 0;
              *(v44 + 152) = 0;
              *(v44 + 160) = 0;
            }

            v69 = *(v44 + 888);
            v70 = *(v44 + 880);
            v71 = *(v44 + 872);
            v72 = *(v44 + 760);
            v73 = *(v44 + 728);
            v74 = *(v44 + 712);
            v75 = *(v44 + 704);
            v101 = *(v44 + 376);
            v103 = *(v44 + 896);
            v105 = *(v44 + 344);
            *(v44 + 144) = v52;
            *(v44 + 168) = v54;
            *(v44 + 176) = v55;
            sub_23DF05FA0(v44 + 144, v44 + 184, &qword_27E32D6B0, &unk_23E229730);
            (*(v74 + 104))(v73, *MEMORY[0x277D733B8], v75);
            (*(v70 + 16))(v69, v103, v71);
            v76 = v101;
            sub_23E1FE0DC();
            static WFContentItem.toolkitTypeDefinition(context:)(v72, v105);
            v77 = *(v44 + 896);
            v78 = *(v44 + 880);
            v79 = *(v44 + 872);
            v80 = *(v44 + 760);
            v81 = *(v44 + 744);
            v82 = *(v44 + 736);

            (*(v81 + 8))(v80, v82);
            (*(v78 + 8))(v77, v79);
            sub_23DE58BD0(v44 + 144, &qword_27E32D6B0, &unk_23E229730);
            OUTLINED_FUNCTION_126_0();
            v83 = *(v44 + 864);
            v84 = *(v44 + 856);
            v85 = *(v44 + 848);
            v86 = *(v44 + 840);
            OUTLINED_FUNCTION_43_3();
            v87 = *(v44 + 808);
            OUTLINED_FUNCTION_2_17();
            OUTLINED_FUNCTION_108_1();
            v99 = v89;
            v100 = v88;
            OUTLINED_FUNCTION_107_1();
            OUTLINED_FUNCTION_176_1(v90);
            v102 = *(v44 + 440);
            v104 = *(v44 + 416);

            OUTLINED_FUNCTION_19();
            OUTLINED_FUNCTION_115_1();

            return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, v99, v100, a31, a32, a33, a34, a35, a36, v102, v104, 0, a40, a41, a42, a43, a44);
          }
        }
      }

      v61 = *(v44 + 384);
      sub_23DEF1D18();
      *(v44 + 1184) = OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_48_5(v62, 8);
      [v61 stateClass];
      swift_getObjCClassMetadata();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v44 + 1192) = v58;
      *v58 = v63;
      v60 = sub_23DEFC2FC;
    }

    else
    {
      v64 = *(v44 + 384);
      sub_23DEF1D18();
      *(v44 + 1208) = OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_48_5(v65, 7);
      [v64 stateClass];
      swift_getObjCClassMetadata();
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v44 + 1216) = v58;
      *v58 = v66;
      v60 = sub_23DEFC80C;
    }
  }

  else
  {
    v56 = *(v44 + 384);
    sub_23DEF1D18();
    *(v44 + 1232) = OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_48_5(v57, 6);
    [v56 stateClass];
    swift_getObjCClassMetadata();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v44 + 1240) = v58;
    *v58 = v59;
    v60 = sub_23DEFCD0C;
  }

  v58[1] = v60;
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_115_1();

  return sub_23DE3B9A4();
}

uint64_t sub_23DEFC2FC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 1192);
  v7 = *(v5 + 912);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v3 + 1200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFC420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1176);
  v46 = *(v44 + 896);
  v47 = *(v44 + 880);
  v48 = *(v44 + 872);

  v49 = *(v47 + 8);
  v50 = OUTLINED_FUNCTION_54();
  v51(v50);
  v52 = *(v44 + 896);
  v53 = *(v44 + 888);
  v54 = *(v44 + 864);
  v55 = *(v44 + 856);
  v56 = *(v44 + 848);
  v57 = *(v44 + 840);
  OUTLINED_FUNCTION_32_3();
  v58 = *(v44 + 808);
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFC608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[150];
  v48 = v46[148];
  v49 = v46[147];
  v50 = v46[146];
  v51 = v46[112];
  v52 = v46[110];
  v53 = v46[109];
  swift_willThrow();

  v54 = *(v52 + 8);
  v55 = OUTLINED_FUNCTION_79();
  v56(v55);
  v71 = v46[148];
  OUTLINED_FUNCTION_126_0();
  v57 = v46[108];
  v58 = v46[107];
  v59 = v46[106];
  v60 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v61 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v71, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFC80C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 1216);
  v7 = *(v5 + 912);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v3 + 1224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 896);
  v46 = *(v44 + 880);
  v47 = *(v44 + 872);

  v48 = *(v46 + 8);
  v49 = OUTLINED_FUNCTION_54();
  v50(v49);
  v51 = *(v44 + 896);
  v52 = *(v44 + 888);
  v53 = *(v44 + 864);
  v54 = *(v44 + 856);
  v55 = *(v44 + 848);
  v56 = *(v44 + 840);
  OUTLINED_FUNCTION_32_3();
  v57 = *(v44 + 808);
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_18_12();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFCB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[153];
  v48 = v46[151];
  v49 = v46[146];
  v50 = v46[112];
  v51 = v46[110];
  v52 = v46[109];
  swift_willThrow();

  v53 = *(v51 + 8);
  v54 = OUTLINED_FUNCTION_79();
  v55(v54);
  v70 = v46[151];
  OUTLINED_FUNCTION_126_0();
  v56 = v46[108];
  v57 = v46[107];
  v58 = v46[106];
  v59 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v60 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v70, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFCD0C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 1240);
  v7 = *(v5 + 912);
  v8 = *v1;
  OUTLINED_FUNCTION_2();
  *v9 = v8;
  *(v3 + 1248) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFCE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[156];
  v48 = v46[154];
  v49 = v46[112];
  v50 = v46[110];
  v51 = v46[109];
  swift_willThrow();

  v52 = *(v50 + 8);
  v53 = OUTLINED_FUNCTION_79();
  v54(v53);
  v69 = v46[154];
  OUTLINED_FUNCTION_126_0();
  v55 = v46[108];
  v56 = v46[107];
  v57 = v46[106];
  v58 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v59 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v69, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFD024()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_0_3();
  *v3 = v2;
  v5 = *(v4 + 1256);
  v6 = *(v4 + 912);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v9 + 1264) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23DEFD13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_116_1();
  v47 = v46[158];
  v48 = v46[112];
  v49 = v46[110];
  v50 = v46[109];
  swift_willThrow();
  v51 = *(v49 + 8);
  v52 = OUTLINED_FUNCTION_54();
  v53(v52);
  v68 = v46[158];
  OUTLINED_FUNCTION_126_0();
  v54 = v46[108];
  v55 = v46[107];
  v56 = v46[106];
  v57 = v46[105];
  OUTLINED_FUNCTION_43_3();
  v58 = v46[101];
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_6_10();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_78_3();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v68, a42, a43, a44, a45, a46);
}

uint64_t sub_23DEFD324()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[163];
  v2 = v0[161];
  v3 = v0[160];

  v0[164] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DEFD3A4()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 1312);
  if (v1)
  {
    v2 = [*(v0 + 1312) valueType];
    v3 = [v2 wf:v1 parameterDefinitionWithParameterMetadata:?];
    *(v0 + 1320) = v3;

    if (v3)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 enumMetadata];
        *(v0 + 1328) = v5;
        if (v5)
        {
          v6 = *(v0 + 1296);
          v7 = *(v0 + 912);

          OUTLINED_FUNCTION_174_1();
          *(v0 + 1336) = swift_allocObject();
          *(v0 + 1344) = sub_23E1FDEBC();
          OUTLINED_FUNCTION_37();
          sub_23E1FDE6C();
          OUTLINED_FUNCTION_78();
          goto LABEL_12;
        }

        v9 = *(v0 + 1312);
        v8 = *(v0 + 352);
      }

      else
      {
        v8 = *(v0 + 1312);
        v9 = *(v0 + 352);
      }
    }

    else
    {
      v8 = *(v0 + 1312);
    }
  }

  else
  {
    v8 = *(v0 + 352);
  }

  v10 = *(v0 + 1296);
  v11 = *(v0 + 352);
  *(v0 + 1360) = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
LABEL_12:
  OUTLINED_FUNCTION_79_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23DEFD538()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[168];
  v2 = v0[160];

  v0[169] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFD5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = *(v44 + 1352);
  v46 = *(v44 + 1336);
  v47 = *(v44 + 1328);
  v48 = *(v44 + 664);
  v49 = *(v44 + 632);
  v50 = *(v44 + 624);
  v92 = *(v44 + 376);
  v93 = *(v44 + 896);
  v51 = *(v44 + 344);
  v52 = [v45 bundleIdentifier];

  v53 = sub_23E1FDC1C();
  v55 = v54;

  v46[2] = v53;
  v46[3] = v55;
  v56 = [v47 identifier];
  sub_23E1FDC1C();
  OUTLINED_FUNCTION_193_0();
  v46[4] = v52;
  v46[5] = v55;
  *v48 = v46;
  (*(v49 + 104))(v48, *MEMORY[0x277D72D28], v50);
  sub_23E1FE1EC();
  v57 = *(v44 + 1328);
  v58 = *(v44 + 1320);
  v59 = *(v44 + 1312);
  v94 = *(v44 + 896);
  v60 = *(v44 + 880);
  v61 = *(v44 + 872);
  v62 = *(v44 + 664);
  v63 = *(v44 + 632);
  v64 = *(v44 + 624);
  v65 = *(v44 + 344);

  (*(v63 + 8))(v62, v64);
  (*(v60 + 8))(v94, v61);
  v66 = *MEMORY[0x277D72B48];
  v67 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v67);
  (*(v68 + 104))(v65, v66);
  OUTLINED_FUNCTION_1_19();
  v83 = v70;
  v84 = v69;
  v85 = *(v44 + 784);
  v86 = *(v44 + 776);
  v87 = *(v44 + 768);
  v88 = *(v44 + 760);
  v89 = *(v44 + 752);
  v90 = *(v44 + 728);
  v71 = *(v44 + 720);
  v72 = *(v44 + 696);
  OUTLINED_FUNCTION_27_7();
  v91 = *(v44 + 568);
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_137_1(v73);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_115_1();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, v83, v84, v85, v86, v87, v88, v89, v90, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v91, a31, a32, a33, a34, a35, a36, a37, 0, v94, a40, a41, a42, a43, a44);
}

uint64_t sub_23DEFDAD0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[170];
  v2 = v0[160];

  v0[171] = [v2 appIntentDescriptor];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFDB4C()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[171];
  v2 = v0[114];
  v3 = v0[113];
  v4 = [v1 intentIdentifier];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_58_0();
  v5 = sub_23E1FDBDC();
  v6 = WFCapitalizeFirstLetter();

  v7 = v0[114];
  if (v6)
  {
    sub_23E1FDC1C();
  }

  else
  {
    v8 = v0[113];
  }

  v9 = v0[162];
  OUTLINED_FUNCTION_216();
  v10 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v10);

  v0[172] = v15;
  v0[173] = v16;
  v0[174] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  v11 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DEFDC94()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[174];
  v2 = v0[160];

  v0[175] = [v2 appIntentDescriptor];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFE69C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[178];
  v2 = v0[176];

  v0[179] = [v2 queryMetadata];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFE718()
{
  OUTLINED_FUNCTION_142_0();
  v1 = v0[179];
  v2 = v0[114];
  v3 = v0[113];
  v4 = [v1 entityType];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_58_0();
  v5 = sub_23E1FDBDC();
  v6 = WFCapitalizeFirstLetter();

  v7 = v0[114];
  if (v6)
  {
    sub_23E1FDC1C();
  }

  else
  {
    v8 = v0[113];
  }

  v9 = v0[177];
  OUTLINED_FUNCTION_216();
  v10 = OUTLINED_FUNCTION_58_0();
  MEMORY[0x23EF044F0](v10);

  v0[180] = v15;
  v0[181] = v16;
  v0[182] = sub_23E1FDEBC();
  sub_23E1FDE6C();
  OUTLINED_FUNCTION_78();
  v11 = OUTLINED_FUNCTION_8_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_23DEFE860()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[182];
  v2 = v0[176];

  v0[183] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFF27C()
{
  OUTLINED_FUNCTION_23();
  v7 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DEFFCEC()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = v2[185];
  *v4 = *v1;
  *(v3 + 1488) = v0;

  v6 = v2[184];
  v7 = v2[114];

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23DEFFE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_147_1();
  v45 = OUTLINED_FUNCTION_197_0();
  v46(v45);
  v63 = v44[186];
  OUTLINED_FUNCTION_126_0();
  v47 = v44[108];
  v48 = v44[107];
  v49 = v44[106];
  v50 = v44[105];
  OUTLINED_FUNCTION_43_3();
  v51 = v44[101];
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_27_7();
  v62 = v44[71];
  OUTLINED_FUNCTION_87_2();
  OUTLINED_FUNCTION_137_1(v52);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_115_1();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v62, a31, a32, a33, a34, a35, a36, a37, a38, a39, v63, a41, a42, a43, a44);
}

uint64_t sub_23DF00008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a2;
  v7[8] = a3;
  v7[6] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF000C8, 0, 0);
}

uint64_t sub_23DF000C8()
{
  OUTLINED_FUNCTION_142_0();
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [*(v0 + 96) key];
    v2 = sub_23E1FDC1C();
    v1 = v4;
  }

  *(v0 + 128) = v2;
  *(v0 + 136) = v1;
  v5 = *(v0 + 56);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  *(v0 + 144) = v6;
  if (v6)
  {
    v7 = *(v0 + 80);
    sub_23E1FB7BC();
    OUTLINED_FUNCTION_49();
    *(v0 + 152) = sub_23E1FDBDC();
    *(v0 + 160) = sub_23E1FDECC();
    *(v0 + 168) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
LABEL_8:
    OUTLINED_FUNCTION_79_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v8 = *(v0 + 56);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v9 = swift_dynamicCastObjCClass();
  *(v0 + 224) = v9;
  v10 = *(v0 + 80);
  if (v9)
  {
    sub_23E1FDECC();
    sub_23E1FB7BC();
    *(v0 + 232) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    goto LABEL_8;
  }

  v14 = *(v0 + 96);
  v15 = *(v0 + 80);
  sub_23E1FB7BC();
  v16 = [v14 definition];
  v17 = [v16 objectForKey_];

  if (v17)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  OUTLINED_FUNCTION_201(v54, v53);
  if (!v18)
  {
    sub_23DE58BD0(v0 + 16, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_19;
  }

  if ((OUTLINED_FUNCTION_210() & 1) == 0)
  {
LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  if ((*(v0 + 272) & 1) == 0)
  {
    v44 = *(v0 + 136);
    v45 = *(v0 + 48);

    sub_23E1FD3AC();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
    goto LABEL_29;
  }

  v19 = 1;
LABEL_20:
  *(v0 + 274) = v19;
  v20 = *(v0 + 96);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v21 = swift_dynamicCastObjCClass();
  if (v21 && [v21 loadsDefaultStateAsynchronously])
  {
    OUTLINED_FUNCTION_54_3();

LABEL_29:
    OUTLINED_FUNCTION_194_1();

    v50 = OUTLINED_FUNCTION_119_1();

    return v51(v50);
  }

  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 56);
  v25 = sub_23E1FDBDC();
  v26 = OUTLINED_FUNCTION_140_1();
  v28 = [v26 v27];

  if (!v28)
  {
    v37 = *(v0 + 136);

    v38 = *(v0 + 48);
    sub_23E1FD3AC();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    v43 = *(v0 + 274);
    goto LABEL_29;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 264) = v29;
  *v29 = v30;
  OUTLINED_FUNCTION_91_3(v29);
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v36 = *(v0 + 56);
  v35 = *(v0 + 64);

  return sub_23DF01784(v33, v35, v36, v31, v32, v34);
}

uint64_t sub_23DF00464()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];

  v0[22] = OUTLINED_FUNCTION_168_1(v4, sel_parameterMetadataForIdentifier_);

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23DF004E0()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 176);
  if (!v1)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 48);

    sub_23E1FD3AC();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
LABEL_19:
    OUTLINED_FUNCTION_194_1();

    v33 = OUTLINED_FUNCTION_119_1();

    return v34(v33);
  }

  if (([v1 isOptional] & 1) != 0 || (OUTLINED_FUNCTION_217() & 1) != 0 || (OUTLINED_FUNCTION_217() & 2) != 0)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 176);
  v3 = [v2 valueType];
  v4 = [v3 wf:v2 parameterDefinitionWithParameterMetadata:0 dynamicOptionsSupport:?];

  if (v4)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 isUniqueEntity];

      if (v6)
      {
LABEL_8:
        v7 = 1;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v35 = *(v0 + 56);
  *(v0 + 184) = sub_23E1FC7EC();
  if (swift_dynamicCastClass())
  {
    v36 = *(v0 + 160);
    *(v0 + 192) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v37 = OUTLINED_FUNCTION_8_6();

    return MEMORY[0x2822009F8](v37, v38, v39);
  }

  v7 = 0;
LABEL_9:
  *(v0 + 273) = v7;
  if ((OUTLINED_FUNCTION_217() & 1) == 0)
  {
    if ((OUTLINED_FUNCTION_217() & 2) != 0 || (v8 = *(v0 + 96), objc_opt_self(), OUTLINED_FUNCTION_20(), (v9 = swift_dynamicCastObjCClass()) != 0) && [v9 loadsDefaultStateAsynchronously])
    {
      v10 = *(v0 + 176);
      OUTLINED_FUNCTION_54_3();
    }

    else
    {
      v26 = *(v0 + 136);
      v27 = *(v0 + 120);

      sub_23E1FD3AC();
      OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      sub_23DF061AC(*(v0 + 120), *(v0 + 48));
      v32 = *(v0 + 273);
    }

    goto LABEL_19;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 216) = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_76_3(v17);

  return sub_23DF01784(v19, v20, v21, v22, v23, v24);
}

uint64_t sub_23DF00784()
{
  OUTLINED_FUNCTION_23();
  v2 = v0[23];
  v1 = v0[24];

  v0[25] = sub_23E1FC7DC();
  v0[26] = v3;
  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DF007E8()
{
  OUTLINED_FUNCTION_4();
  if (*(v0 + 128) == *(v0 + 200) && *(v0 + 136) == *(v0 + 208))
  {
    v5 = *(v0 + 208);

    v4 = 0;
  }

  else
  {
    v2 = *(v0 + 208);
    v3 = sub_23E1FE75C();

    v4 = v3 ^ 1;
  }

  *(v0 + 273) = v4 & 1;
  if ([*(v0 + 176) capabilities])
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 216) = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_76_3(v9);

    return sub_23DF01784(v11, v12, v13, v14, v15, v16);
  }

  else
  {
    if (([*(v0 + 176) capabilities] & 2) != 0 || (v6 = *(v0 + 96), objc_opt_self(), OUTLINED_FUNCTION_20(), (v7 = swift_dynamicCastObjCClass()) != 0) && objc_msgSend(v7, sel_loadsDefaultStateAsynchronously))
    {
      v8 = *(v0 + 176);
      OUTLINED_FUNCTION_54_3();
    }

    else
    {
      v18 = *(v0 + 136);
      v19 = *(v0 + 120);

      sub_23E1FD3AC();
      OUTLINED_FUNCTION_142_1();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
      sub_23DF061AC(*(v0 + 120), *(v0 + 48));
      v24 = *(v0 + 273);
    }

    OUTLINED_FUNCTION_194_1();

    v25 = OUTLINED_FUNCTION_119_1();

    return v26(v25);
  }
}

uint64_t sub_23DF00990()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 216);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DF00A90()
{
  OUTLINED_FUNCTION_4();

  sub_23DF061AC(*(v0 + 120), *(v0 + 48));
  v1 = *(v0 + 273);
  OUTLINED_FUNCTION_194_1();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DF00B1C()
{
  OUTLINED_FUNCTION_23();
  v2 = v0[28];
  v1 = v0[29];

  v0[30] = [v2 intentDescription];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DF00B94()
{
  OUTLINED_FUNCTION_142_0();
  v1 = *(v0 + 240);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = sub_23DF05EB0(*(v0 + 128), *(v0 + 136), v1);
  *(v0 + 248) = v2;
  if (!v2)
  {
    v6 = *(v0 + 240);
LABEL_9:

LABEL_10:
    v7 = [*(v0 + 96) definition];
    v8 = [v7 objectForKey_];

    if (v8)
    {
      sub_23E1FE49C();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    OUTLINED_FUNCTION_201(v61, v60);
    if (v9)
    {
      if (OUTLINED_FUNCTION_210())
      {
        if ((*(v0 + 272) & 1) == 0)
        {
          v45 = *(v0 + 136);
          v46 = *(v0 + 48);

          sub_23E1FD3AC();
          OUTLINED_FUNCTION_153_0();
          OUTLINED_FUNCTION_18_0();
          __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
          goto LABEL_33;
        }

        v10 = 1;
LABEL_19:
        *(v0 + 274) = v10;
        v11 = *(v0 + 96);
        objc_opt_self();
        OUTLINED_FUNCTION_20();
        v12 = swift_dynamicCastObjCClass();
        if (v12 && [v12 loadsDefaultStateAsynchronously])
        {
          OUTLINED_FUNCTION_54_3();
        }

        else
        {
          v13 = *(v0 + 128);
          v14 = *(v0 + 136);
          v15 = *(v0 + 56);
          v16 = sub_23E1FDBDC();
          v17 = OUTLINED_FUNCTION_140_1();
          v19 = [v17 v18];

          if (v19)
          {
            swift_unknownObjectRelease();
            swift_task_alloc();
            OUTLINED_FUNCTION_31();
            *(v0 + 264) = v20;
            *v20 = v21;
            OUTLINED_FUNCTION_91_3(v20);
            v24 = *(v0 + 104);
            goto LABEL_27;
          }

          v25 = *(v0 + 136);

          v26 = *(v0 + 48);
          sub_23E1FD3AC();
          OUTLINED_FUNCTION_153_0();
          OUTLINED_FUNCTION_18_0();
          __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
          v31 = *(v0 + 274);
        }

LABEL_33:
        OUTLINED_FUNCTION_194_1();

        v58 = OUTLINED_FUNCTION_119_1();

        return v59(v58);
      }
    }

    else
    {
      sub_23DE58BD0(v0 + 16, &qword_27E32C320, &unk_23E224B40);
    }

    v10 = 0;
    goto LABEL_19;
  }

  v3 = v2;
  if ([v2 valueStyle] != 1)
  {
    v6 = *(v0 + 240);

    goto LABEL_9;
  }

  v4 = *(v0 + 96);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && [v5 loadsDefaultStateAsynchronously])
  {
    OUTLINED_FUNCTION_54_3();

LABEL_32:
    v57 = *(v0 + 248);

    goto LABEL_33;
  }

  v32 = *(v0 + 128);
  v33 = *(v0 + 136);
  v34 = *(v0 + 56);
  v35 = sub_23E1FDBDC();
  v36 = OUTLINED_FUNCTION_140_1();
  v38 = [v36 v37];

  if (!v38)
  {
    v51 = *(v0 + 136);

    v52 = *(v0 + 48);
    sub_23E1FD3AC();
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
    goto LABEL_32;
  }

  swift_unknownObjectRelease();
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 256) = v39;
  *v39 = v40;
  v39[1] = sub_23DF00F24;
  v22 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
LABEL_27:
  v41 = *(v0 + 96);
  v43 = *(v0 + 56);
  v42 = *(v0 + 64);

  return sub_23DF01784(v24, v42, v43, v22, v23, v41);
}

uint64_t sub_23DF00F24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 256);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DF01024()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 112);
  sub_23E1FD3AC();
  v3 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_93(v3, 1, v0);
  if (v4)
  {
    sub_23DE58BD0(v2, &unk_27E32D730, &unk_23E223790);
    v10 = *(v1 + 48);
    v11 = 1;
  }

  else
  {
    v5 = *(v1 + 48);
    OUTLINED_FUNCTION_21(v0);
    v7 = *(v6 + 32);
    v8 = OUTLINED_FUNCTION_35_0();
    v9(v8);
    v10 = v5;
    v11 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v11, 1, v0);
  v12 = *(v1 + 248);

  v14 = *(v1 + 112);
  v13 = *(v1 + 120);
  v15 = *(v1 + 104);

  v16 = *(v1 + 8);

  return v16(1);
}

uint64_t sub_23DF01134()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 264);
  v3 = *(v1 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23DF01234()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 104);
  sub_23E1FD3AC();
  v3 = OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_93(v3, 1, v0);
  if (v4)
  {
    sub_23DE58BD0(v2, &unk_27E32D730, &unk_23E223790);
    v5 = *(v1 + 48);
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
    v14 = *(v1 + 274);
  }

  else
  {
    v9 = *(v1 + 48);
    OUTLINED_FUNCTION_21(v0);
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_35_0();
    v13(v12);
    v14 = 1;
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
  }

  v19 = *(v1 + 112);
  v18 = *(v1 + 120);
  v20 = *(v1 + 104);

  v21 = *(v1 + 8);

  return v21(v14);
}

uint64_t WFParameter.toolkitParameterFlags(for:)()
{
  v1 = v0;
  v2 = sub_23E1FD76C();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v48 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v7);
  *&v47[0] = MEMORY[0x277D84F90];
  sub_23DF06038(&unk_280DAE590, MEMORY[0x277D73128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D6F8, &qword_23E229740);
  sub_23DF0607C(&unk_280DAE410, &unk_27E32D6F8, &qword_23E229740);
  sub_23E1FE4EC();
  if ([v0 isHidden])
  {
    sub_23E1FD75C();
    v8 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v8, v9);
    v10 = *(v48 + 8);
    v11 = OUTLINED_FUNCTION_203();
    v10(v11);
    v12 = OUTLINED_FUNCTION_164_1();
    v10(v12);
  }

  v13 = [v1 definition];
  v14 = [v13 objectForKey_];

  if (v14)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
    sub_23DE58BD0(v47, &qword_27E32C320, &unk_23E224B40);
    sub_23E1FD74C();
    v15 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v15, v16);
    v17 = *(v48 + 8);
    v18 = OUTLINED_FUNCTION_203();
    v17(v18);
    v19 = OUTLINED_FUNCTION_164_1();
    v17(v19);
  }

  else
  {
    memset(v47, 0, sizeof(v47));
    sub_23DE58BD0(v47, &qword_27E32C320, &unk_23E224B40);
  }

  v20 = [v1 key];
  v21 = sub_23E1FDC1C();
  v23 = v22;

  v24 = *MEMORY[0x277D7CD58];
  if (v21 == sub_23E1FDC1C() && v23 == v25)
  {

    goto LABEL_13;
  }

  v27 = sub_23E1FE75C();

  if (v27)
  {
LABEL_13:
    sub_23E1FD73C();
    v28 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v28, v29);
    v30 = *(v48 + 8);
    v31 = OUTLINED_FUNCTION_203();
    v30(v31);
    v32 = OUTLINED_FUNCTION_164_1();
    v30(v32);
  }

  v33 = [v1 key];
  v34 = sub_23E1FDC1C();
  v36 = v35;

  v37 = *MEMORY[0x277D7CD50];
  if (v34 == sub_23E1FDC1C() && v36 == v38)
  {

    goto LABEL_21;
  }

  v40 = sub_23E1FE75C();

  if (v40)
  {
LABEL_21:
    sub_23E1FD73C();
    v42 = OUTLINED_FUNCTION_128_0();
    sub_23DE7DD6C(v42, v43);
    v44 = *(v48 + 8);
    v45 = OUTLINED_FUNCTION_203();
    v44(v45);
    v46 = OUTLINED_FUNCTION_164_1();
    return (v44)(v46);
  }

  return result;
}

uint64_t sub_23DF01784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_23E1FDA1C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = sub_23E1FD41C();
  v6[12] = v11;
  v12 = *(v11 - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = *(*(type metadata accessor for ParameterStateToTypedValueContext(0) - 8) + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF0190C, 0, 0);
}

uint64_t sub_23DF0190C()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[15];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  (*(v0[13] + 16))(v0[14], v0[3], v0[12]);
  ParameterStateToTypedValueContext.init(from:)();
  OUTLINED_FUNCTION_58_0();
  v5 = sub_23E1FDBDC();
  v6 = [v4 defaultParameterStateForKey_];
  v0[16] = v6;

  if (v6)
  {
    v7 = v0[10];
    swift_getObjectType();
    sub_23E1FD9EC();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v0[17] = v8;
    *v8 = v9;
    v8[1] = sub_23DF01AB8;
    v10 = v0[15];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[7];
    v14 = v0[4];

    return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)();
  }

  else
  {
    sub_23DF0621C(v0[15]);
    sub_23E1FD3AC();
    v16 = v0[14];
    v17 = v0[15];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[2];
    OUTLINED_FUNCTION_18_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);

    OUTLINED_FUNCTION_19();

    return v25();
  }
}

uint64_t sub_23DF01AB8()
{
  OUTLINED_FUNCTION_33_0();
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = v2[10];
  v7 = v2[9];
  v8 = v2[8];
  if (v0)
  {

    v9 = *(v7 + 8);
  }

  else
  {
    v12 = *(v7 + 8);
  }

  v10 = OUTLINED_FUNCTION_50();
  v11(v10);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23DF01C38()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  v4 = v0[2];
  swift_unknownObjectRelease();
  sub_23DF0621C(v2);
  sub_23E1FD3AC();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v2);
  OUTLINED_FUNCTION_21(v2);
  v9 = *(v8 + 32);
  v10 = OUTLINED_FUNCTION_35_0();
  v11(v10);
  v13 = v0[14];
  v12 = v0[15];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[2];
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v2);

  OUTLINED_FUNCTION_19();

  return v20();
}

uint64_t sub_23DF01D2C()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  swift_unknownObjectRelease();
  sub_23DF0621C(v2);
  sub_23E1FD3AC();
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  sub_23DE58BD0(v3, &unk_27E32D730, &unk_23E223790);
  v8 = v0[14];
  v7 = v0[15];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[2];
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v2);

  OUTLINED_FUNCTION_19();

  return v15();
}

uint64_t sub_23DF01E08(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a5;
  v11 = sub_23E1FD33C();
  v72 = *(v11 - 8);
  v73 = v11;
  v12 = *(v72 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_23E1FD3DC();
  v64 = *(v66 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v70 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23E1FD46C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23E1FD3AC();
  v68 = *(v20 - 8);
  v69 = v20;
  v21 = *(v68 + 64);
  MEMORY[0x28223BE20](v20);
  v65 = (&v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_23E1FD03C();
  v63 = *(v23 - 8);
  v24 = *(v63 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *MEMORY[0x277D7A4D8];
  sub_23E1FCB9C();
  v28 = a2;
  sub_23E1FB7BC();
  v29 = sub_23E1FD02C();
  v30 = sub_23E1FE19C();

  v31 = os_log_type_enabled(v29, v30);
  v62 = a3;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v61 = a1;
    v33 = v32;
    v59 = swift_slowAlloc();
    v74 = v59;
    *v33 = 136315394;
    v34 = [v28 identifier];
    v57 = v28;
    v35 = v34;
    v36 = sub_23E1FDC1C();
    v58 = v30;
    v37 = a4;
    v38 = v36;
    v60 = v23;
    v39 = a6;
    v41 = v40;

    v42 = v38;
    a4 = v37;
    v43 = sub_23DE56B40(v42, v41, &v74);
    a6 = v39;

    *(v33 + 4) = v43;
    *(v33 + 12) = 2080;
    v44 = a3;
    v45 = v57;
    *(v33 + 14) = sub_23DE56B40(v44, v37, &v74);
    _os_log_impl(&dword_23DE30000, v29, v58, "Creating deferred default value %s:%s", v33, 0x16u);
    v46 = v59;
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v46, -1, -1);
    v47 = v33;
    a1 = v61;
    MEMORY[0x23EF074C0](v47, -1, -1);

    (*(v63 + 8))(v26, v60);
  }

  else
  {

    (*(v63 + 8))(v26, v23);
    v45 = v28;
  }

  sub_23E1FD34C();
  v48 = swift_allocBox();
  sub_23E1FD3EC();
  (*(v64 + 16))(v70, a6, v66);
  v49 = [v45 identifier];
  v50 = sub_23E1FDC1C();
  v52 = v51;

  *v14 = v50;
  v14[1] = v52;
  v14[2] = v62;
  v14[3] = a4;
  (*(v72 + 104))(v14, *MEMORY[0x277D728F8], v73);
  sub_23E1FB7BC();
  sub_23E1FD32C();
  v53 = v65;
  *v65 = v48;
  v55 = v68;
  v54 = v69;
  (*(v68 + 104))(v53, *MEMORY[0x277D72A40], v69);
  (*(v55 + 32))(a1, v53, v54);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v54);
  return 1;
}

uint64_t WFParameter.toolkitUnitType.getter()
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    sub_23DF05F00(v1, &selRef_unitType);
    if (v2)
    {
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();

      v3 = sub_23E1FE2BC();

      return v3;
    }

    return 22;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (!swift_dynamicCastObjCClass())
  {
    return 22;
  }

  v5 = *MEMORY[0x277D7A510];

  return sub_23E1FE2BC();
}

uint64_t sub_23DF02448@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7A628];
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72ED0];
    goto LABEL_13;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72ED0];
  v10 = MEMORY[0x277D72ED0];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D7A610];
  v12 = sub_23E1FDC1C();
  v14 = v13;
  if (v12 == sub_23E1FDC1C() && v14 == v15)
  {
    v10 = MEMORY[0x277D72EA0];
    goto LABEL_13;
  }

  v17 = sub_23E1FE75C();

  if (v17)
  {
    v10 = MEMORY[0x277D72EA0];
    goto LABEL_14;
  }

  v22 = *MEMORY[0x277D7A648];
  v23 = sub_23E1FDC1C();
  v25 = v24;
  if (v23 == sub_23E1FDC1C() && v25 == v26)
  {
    v10 = MEMORY[0x277D72EC0];
    goto LABEL_13;
  }

  v28 = sub_23E1FE75C();

  if (v28)
  {
    v10 = MEMORY[0x277D72EC0];
    goto LABEL_14;
  }

  v29 = *MEMORY[0x277D7A660];
  v30 = sub_23E1FDC1C();
  v32 = v31;
  if (v30 == sub_23E1FDC1C() && v32 == v33)
  {
    v10 = MEMORY[0x277D72EC8];
    goto LABEL_13;
  }

  v35 = sub_23E1FE75C();

  if (v35)
  {
    v10 = MEMORY[0x277D72EC8];
    goto LABEL_14;
  }

  v36 = *MEMORY[0x277D7A640];
  v37 = sub_23E1FDC1C();
  v39 = v38;
  if (v37 == sub_23E1FDC1C() && v39 == v40)
  {
    v10 = MEMORY[0x277D72EE8];
    goto LABEL_13;
  }

  v42 = sub_23E1FE75C();

  if (v42)
  {
    v10 = MEMORY[0x277D72EE8];
    goto LABEL_14;
  }

  v43 = *MEMORY[0x277D7A650];
  v44 = sub_23E1FDC1C();
  v46 = v45;
  if (v44 == sub_23E1FDC1C() && v46 == v47)
  {
    v10 = MEMORY[0x277D72EE0];
    goto LABEL_13;
  }

  v49 = sub_23E1FE75C();

  if (v49)
  {
    v10 = MEMORY[0x277D72EE0];
    goto LABEL_14;
  }

  v50 = *MEMORY[0x277D7A638];
  v51 = sub_23E1FDC1C();
  v53 = v52;
  if (v51 == sub_23E1FDC1C() && v53 == v54)
  {
    v10 = MEMORY[0x277D72EB0];
    goto LABEL_13;
  }

  v56 = sub_23E1FE75C();

  if (v56)
  {
    v10 = MEMORY[0x277D72EB0];
    goto LABEL_14;
  }

  v57 = *MEMORY[0x277D7A630];
  v58 = sub_23E1FDC1C();
  v60 = v59;
  if (v58 == sub_23E1FDC1C() && v60 == v61)
  {
    v10 = MEMORY[0x277D72EA8];
    goto LABEL_13;
  }

  v63 = sub_23E1FE75C();

  if (v63)
  {
    v10 = MEMORY[0x277D72EA8];
    goto LABEL_14;
  }

  v64 = *MEMORY[0x277D7A620];
  v65 = sub_23E1FDC1C();
  v67 = v66;
  if (v65 == sub_23E1FDC1C() && v67 == v68)
  {
    v10 = MEMORY[0x277D72E98];
    goto LABEL_13;
  }

  v70 = sub_23E1FE75C();

  if (v70)
  {
    v10 = MEMORY[0x277D72E98];
    goto LABEL_14;
  }

  v71 = *MEMORY[0x277D7A658];
  v72 = sub_23E1FDC1C();
  v74 = v73;
  if (v72 == sub_23E1FDC1C() && v74 == v75)
  {
    v10 = MEMORY[0x277D72ED8];
    goto LABEL_13;
  }

  v77 = sub_23E1FE75C();

  if (v77)
  {
    v10 = MEMORY[0x277D72ED8];
    goto LABEL_14;
  }

  v78 = *MEMORY[0x277D7A668];
  v79 = sub_23E1FDC1C();
  v81 = v80;
  if (v79 == sub_23E1FDC1C() && v81 == v82)
  {
    v10 = MEMORY[0x277D72EF0];
    goto LABEL_13;
  }

  v84 = sub_23E1FE75C();

  if (v84)
  {
    v10 = MEMORY[0x277D72EF0];
    goto LABEL_14;
  }

  v85 = *MEMORY[0x277D7A618];
  v86 = sub_23E1FDC1C();
  v88 = v87;
  v89 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72EB8];
  if (v86 == v89 && v88 == v90)
  {
LABEL_13:

    goto LABEL_14;
  }

  v92 = sub_23E1FE75C();

  if ((v92 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v18 = *v10;
  v19 = sub_23E1FD5AC();
  v20 = *(*(v19 - 8) + 104);

  return v20(a1, v18, v19);
}

uint64_t sub_23DF02A74@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7A5D8];
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72F18];
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72F18];
  v10 = MEMORY[0x277D72F18];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D7A5E8];
  v12 = sub_23E1FDC1C();
  v14 = v13;
  if (v12 == sub_23E1FDC1C() && v14 == v15)
  {
    v10 = MEMORY[0x277D72F08];
    goto LABEL_13;
  }

  v17 = sub_23E1FE75C();

  if (v17)
  {
    v10 = MEMORY[0x277D72F08];
    goto LABEL_14;
  }

  v22 = *MEMORY[0x277D7A5E0];
  v23 = sub_23E1FDC1C();
  v25 = v24;
  v26 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72F10];
  if (v23 == v26 && v25 == v27)
  {
    goto LABEL_13;
  }

  v29 = sub_23E1FE75C();

  if ((v29 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v18 = *v10;
  v19 = sub_23E1FD5EC();
  v20 = *(*(v19 - 8) + 104);

  return v20(a1, v18, v19);
}

uint64_t sub_23DF02C68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7A5C0];
  v3 = sub_23E1FDC1C();
  v5 = v4;
  if (v3 == sub_23E1FDC1C() && v5 == v6)
  {
    v10 = MEMORY[0x277D72F38];
    goto LABEL_13;
  }

  v8 = sub_23E1FE75C();

  v9 = MEMORY[0x277D72F38];
  v10 = MEMORY[0x277D72F38];
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D7A5D0];
  v12 = sub_23E1FDC1C();
  v14 = v13;
  if (v12 == sub_23E1FDC1C() && v14 == v15)
  {
    v10 = MEMORY[0x277D72F40];
    goto LABEL_13;
  }

  v17 = sub_23E1FE75C();

  if (v17)
  {
    v10 = MEMORY[0x277D72F40];
    goto LABEL_14;
  }

  v22 = *MEMORY[0x277D7A5C8];
  v23 = sub_23E1FDC1C();
  v25 = v24;
  if (v23 == sub_23E1FDC1C() && v25 == v26)
  {
    v10 = MEMORY[0x277D72F48];
    goto LABEL_13;
  }

  v28 = sub_23E1FE75C();

  if (v28)
  {
    v10 = MEMORY[0x277D72F48];
    goto LABEL_14;
  }

  v29 = *MEMORY[0x277D7A5B8];
  v30 = sub_23E1FDC1C();
  v32 = v31;
  v33 = sub_23E1FDC1C();
  v10 = MEMORY[0x277D72F30];
  if (v30 == v33 && v32 == v34)
  {
LABEL_13:

    goto LABEL_14;
  }

  v36 = sub_23E1FE75C();

  if ((v36 & 1) == 0)
  {
    v10 = v9;
  }

LABEL_14:
  v18 = *v10;
  v19 = sub_23E1FD5FC();
  v20 = *(*(v19 - 8) + 104);

  return v20(a1, v18, v19);
}

uint64_t sub_23DF02ED4()
{
  v0 = sub_23E1FD5FC();
  v38 = *(v0 - 8);
  v39 = v0;
  v1 = *(v38 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v36 = &v35 - v4;
  v40 = sub_23E1FD5EC();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_23E1FD5AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  sub_23E1FD5CC();
  (*(v13 + 104))(v17, *MEMORY[0x277D72ED0], v12);
  v20 = sub_23DE6185C(v19, v17);
  v21 = *(v13 + 8);
  v21(v17, v12);
  v21(v19, v12);
  if ((v20 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_23E1FD60C();
  v22 = v40;
  (*(v5 + 104))(v9, *MEMORY[0x277D72F18], v40);
  v23 = sub_23DE6197C(v11, v9);
  v24 = *(v5 + 8);
  v24(v9, v22);
  v24(v11, v22);
  if ((v23 & 1) == 0)
  {
    goto LABEL_6;
  }

  v25 = v36;
  sub_23E1FD61C();
  v27 = v37;
  v26 = v38;
  v28 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277D72F48], v39);
  v29 = sub_23DE619C4(v25, v27);
  v30 = *(v26 + 8);
  v30(v27, v28);
  v30(v25, v28);
  if ((v29 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((sub_23E1FD5DC() & 1) == 0 && (v31 = v35, v32 = v35 != 0, ((v32 ^ sub_23E1FD62C()) & 1) == 0))
  {
    v33 = (v31 != 0) ^ sub_23E1FD63C() ^ 1;
  }

  else
  {
LABEL_6:
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t sub_23DF032A4()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_23DF032E0()
{
  v1 = *(v0 + 16);
  type metadata accessor for WFExecutionPlatform(0);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_23DF0332C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D320, &qword_23E2288A0);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_167_1();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_23DF03384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_23E1FE75C() & 1;
  }
}

uint64_t sub_23DF033C8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_23E229690;
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

BOOL sub_23DF0342C(char *a1, char *a2)
{
  v33 = a1;
  v4 = sub_23E1FBBDC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v12 = *v2;
  v13 = *(*v2 + 40);
  OUTLINED_FUNCTION_111_0();
  sub_23DF06038(v14, v15);
  v38 = a2;
  v16 = sub_23E1FDADC();
  v35 = v12;
  v36 = v12 + 56;
  v17 = ~(-1 << *(v12 + 32));
  v37 = v7 + 16;
  v34 = v7 + 8;
  while (1)
  {
    v18 = v16 & v17;
    v19 = (1 << (v16 & v17)) & *(v36 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v19)
    {
      v25 = v32;
      v26 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v38;
      (*(v7 + 16))(v11, v38, v4);
      v39 = *v25;
      v29 = OUTLINED_FUNCTION_66();
      sub_23DF046D0(v29, v30, isUniquelyReferenced_nonNull_native);
      *v25 = v39;
      (*(v7 + 32))(v33, v28, v4);
      return v19 == 0;
    }

    v20 = *(v7 + 72) * v18;
    v21 = *(v7 + 16);
    v21(v11, *(v35 + 48) + v20, v4);
    OUTLINED_FUNCTION_111_0();
    sub_23DF06038(&qword_27E32D8D0, v22);
    v23 = sub_23E1FDB2C();
    v24 = *(v7 + 8);
    v24(v11, v4);
    if (v23)
    {
      break;
    }

    v16 = v18 + 1;
  }

  v24(v38, v4);
  v21(v33, *(v35 + 48) + v20, v4);
  return v19 == 0;
}

BOOL sub_23DF036C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v9 = sub_23E1FE87C();
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
    if (v14 || (sub_23E1FE75C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;
      sub_23E1FB7BC();
      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  sub_23E1FB7BC();
  v19 = OUTLINED_FUNCTION_58_0();
  sub_23DF04980(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_23DF0380C(char *a1, char *a2)
{
  v25 = a1;
  v4 = sub_23E1FD3DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
  v30 = a2;
  v11 = sub_23E1FDADC();
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
      sub_23DF04AE8(v8, v13, isUniquelyReferenced_nonNull_native);
      *v19 = v31;
      (*(v5 + 32))(v25, v22, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v27 + 48) + v15, v4);
    sub_23DF06038(&qword_27E32D720, MEMORY[0x277D72B00]);
    v17 = sub_23E1FDB2C();
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

BOOL sub_23DF03AD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v6 + 40);
  v8 = sub_23E1FE83C();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v10) == a2)
    {
      goto LABEL_6;
    }

    v8 = v10 + 1;
  }

  v12 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  v13 = OUTLINED_FUNCTION_79();
  sub_23DF04D98(v13, v14, v15);
  *v3 = v17;
LABEL_6:
  result = v11 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_23DF03BA0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23E1FBBDC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898);
  result = sub_23E1FE56C();
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
      sub_23DF033C8(0, (v33 + 63) >> 6, v12);
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
    sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
    result = sub_23E1FDADC();
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

uint64_t sub_23DF03EF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  result = sub_23E1FE56C();
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
      sub_23DF033C8(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_23E1FE84C();
    sub_23E1FDCCC();
    result = sub_23E1FE87C();
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

uint64_t sub_23DF04154(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23E1FD3DC();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D728, &unk_23E2298A0);
  result = sub_23E1FE56C();
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
      sub_23DF033C8(0, (v33 + 63) >> 6, v12);
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
    sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
    result = sub_23E1FDADC();
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

uint64_t sub_23DF044AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  result = sub_23E1FE56C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
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

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_23DF033C8(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_23E1FE83C();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23DF046D0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_23E1FBBDC();
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
      sub_23DF03BA0(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_23DF05384(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
      v15 = sub_23E1FDADC();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_23DF06038(&qword_27E32D8D0, MEMORY[0x277CFC118]);
        v17 = sub_23E1FDB2C();
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

    sub_23DF0501C(MEMORY[0x277CFC118]);
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
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_23DF04980(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_23DF03EF8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_23DF0569C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_23E1FE84C();
      sub_23E1FDCCC();
      result = sub_23E1FE87C();
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
        if (v19 || (sub_23E1FE75C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_23DF04EC4();
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
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_23DF04AE8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_23E1FD3DC();
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
      sub_23DF04154(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_23DF058D0(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
      v15 = sub_23E1FDADC();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_23DF06038(&qword_27E32D720, MEMORY[0x277D72B00]);
        v17 = sub_23E1FDB2C();
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

    sub_23DF0501C(MEMORY[0x277D72B00]);
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
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_23DF04D98(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23DF044AC(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_23DF05BE8(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      result = sub_23E1FE83C();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_23DF05244();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_23E1FE7AC();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_23DF04EC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  v2 = *v0;
  v3 = sub_23E1FE55C();
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
        result = sub_23E1FB7BC();
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

void *sub_23DF0501C(uint64_t (*a1)(void))
{
  v2 = v1;
  v3 = a1(0);
  v4 = OUTLINED_FUNCTION_6_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v28 - v9;
  v11 = OUTLINED_FUNCTION_128_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v13 = *v1;
  v14 = sub_23E1FE55C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v2;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v6 + 32;
    for (i = v6 + 16; v22; result = (*(v6 + 32))(*(v15 + 48) + v27, v10, v3))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v6 + 72) * (v24 | (v19 << 6));
      (*(v6 + 16))(v10, *(v13 + 48) + v27, v3);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v2 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v2 = v15;
  }

  return result;
}

void *sub_23DF05244()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  v2 = *v0;
  v3 = sub_23E1FE55C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_23DF05384(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23E1FBBDC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D710, &qword_23E229898);
  v10 = sub_23E1FE56C();
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
        sub_23DF06038(&qword_27E32CD30, MEMORY[0x277CFC118]);
        result = sub_23E1FDADC();
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

uint64_t sub_23DF0569C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D750, &qword_23E2298C8);
  result = sub_23E1FE56C();
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
        sub_23E1FE84C();
        sub_23E1FB7BC();
        sub_23E1FDCCC();
        result = sub_23E1FE87C();
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

uint64_t sub_23DF058D0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23E1FD3DC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D728, &unk_23E2298A0);
  v10 = sub_23E1FE56C();
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
        sub_23DF06038(&qword_27E32D718, MEMORY[0x277D72B00]);
        result = sub_23E1FDADC();
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

uint64_t sub_23DF05BE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D708, &qword_23E229890);
  result = sub_23E1FE56C();
  v6 = result;
  if (*(v3 + 16))
  {
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_23E1FE83C();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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
          goto LABEL_25;
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
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_23DF05DD4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDC1C();

  return v3;
}

uint64_t sub_23DF05E44(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C5E0, &qword_23E2265D0);
  v3 = sub_23E1FDDEC();

  return v3;
}

id sub_23DF05EB0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_23E1FDBDC();
  v5 = [a3 slotByName_];

  return v5;
}

uint64_t sub_23DF05F00(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_23E1FDC1C();
  }

  return OUTLINED_FUNCTION_49();
}

uint64_t sub_23DF05FA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_49();
  v9(v8);
  return a2;
}

uint64_t sub_23DF05FF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23DE38DA8(255, a2, a3);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DF06038(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DF0607C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t get_enum_tag_for_layout_string_So11WFParameterC9ActionKitE04ToolC15ConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23DF06100(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_23DF06140(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23DF06184(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_23DF061AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DF0621C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterStateToTypedValueContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_23()
{
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[87];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[74];
  v1 = v0[73];
  v20 = v0[72];
}

uint64_t OUTLINED_FUNCTION_1_19()
{
  result = v0[112];
  v2 = v0[111];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[103];
  v9 = v0[102];
  v10 = v0[101];
  v11 = v0[100];
  v12 = v0[99];
  return result;
}

void OUTLINED_FUNCTION_2_17()
{
  v2 = v0[100];
  v3 = v0[99];
  v4 = v0[98];
  v5 = v0[97];
  v6 = v0[96];
  v7 = v0[95];
  v8 = v0[94];
  v9 = v0[91];
  v10 = v0[90];
  v11 = v0[87];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  v15 = v0[81];
  v16 = v0[80];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[74];
  v1 = v0[73];
  v20 = v0[72];
}

void OUTLINED_FUNCTION_3_10()
{
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[87];
  v10 = v0[84];
  v11 = v0[83];
  v12 = v0[82];
  v13 = v0[81];
  v14 = v0[80];
  v15 = v0[77];
  v16 = v0[76];
  v17 = v0[74];
  v1 = v0[73];
  v18 = v0[72];
}

void OUTLINED_FUNCTION_4_14()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v6 = v0[100];
  v7 = v0[99];
  v8 = v0[98];
  v9 = v0[97];
  v5 = v0[96];
  v10 = v0[95];
}

uint64_t OUTLINED_FUNCTION_5_11()
{
  *(v2 - 96) = 0;
  *(v2 - 128) = 0u;
  *(v2 - 112) = 0u;
  v3 = *(v1 + 16);
  return v0;
}

uint64_t OUTLINED_FUNCTION_6_10()
{
  v10 = v0[71];
  v3 = v0[67];
  *(v1 - 168) = v0[68];
  *(v1 - 160) = v3;
  v5 = v0[62];
  v4 = v0[63];
  *(v1 - 152) = v0[66];
  *(v1 - 144) = v4;
  v7 = v0[58];
  v6 = v0[59];
  *(v1 - 136) = v5;
  *(v1 - 128) = v6;
  v8 = v0[55];
  *(v1 - 120) = v7;
  *(v1 - 112) = v8;
  *(v1 - 104) = v0[52];
}

char *OUTLINED_FUNCTION_7_10(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

void OUTLINED_FUNCTION_9_9()
{
  v3 = v0[100];
  v4 = v0[99];
  v5 = v0[98];
  v6 = v0[97];
  v7 = v0[96];
  v8 = v0[95];
  v9 = v0[94];
  v10 = v0[91];
  v1 = v0[90];
  v2 = v0[87];
}

unint64_t OUTLINED_FUNCTION_11_10()
{
  *(v1 + 16) = v2;
  v4 = *(v3 - 160);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(v3 - 104) = v1;
  result = v1 + v5 + *(v4 + 72) * v0;
  v7 = *(v4 + 32);
  v8 = *(v3 - 168);
  return result;
}

void OUTLINED_FUNCTION_12_13()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  v10 = v0[71];
  v3 = v0[67];
  *(v1 - 152) = v0[68];
  *(v1 - 144) = v3;
  v5 = v0[62];
  v4 = v0[63];
  *(v1 - 136) = v0[66];
  *(v1 - 128) = v4;
  v7 = v0[58];
  v6 = v0[59];
  *(v1 - 120) = v5;
  *(v1 - 112) = v6;
  v8 = v0[55];
  *(v1 - 104) = v7;
  *(v1 - 96) = v8;
  *(v1 - 88) = v0[52];
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  v9 = v0[94];
  v10 = v0[91];
  v11 = v0[90];
  v12 = v0[87];
  v13 = v0[84];
  v14 = v0[83];
  v15 = v0[82];
  v16 = v0[81];
  v17 = v0[80];
  v18 = v0[77];
  v19 = v0[76];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v3 = v0[68];
  *(v1 - 168) = v0[71];
  *(v1 - 160) = v3;
  v4 = v0[66];
  *(v1 - 152) = v0[67];
  *(v1 - 144) = v4;
  v5 = v0[62];
  *(v1 - 136) = v0[63];
  *(v1 - 128) = v5;
  v6 = v0[58];
  *(v1 - 120) = v0[59];
  *(v1 - 112) = v6;
  v7 = v0[52];
  *(v1 - 104) = v0[55];
  *(v1 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_18_12()
{
  v3 = v0[68];
  *(v1 - 160) = v0[71];
  *(v1 - 152) = v3;
  v4 = v0[66];
  *(v1 - 144) = v0[67];
  *(v1 - 136) = v4;
  v5 = v0[62];
  *(v1 - 128) = v0[63];
  *(v1 - 120) = v5;
  v6 = v0[58];
  *(v1 - 112) = v0[59];
  *(v1 - 104) = v6;
  v7 = v0[52];
  *(v1 - 96) = v0[55];
  *(v1 - 88) = v7;
}

__n128 OUTLINED_FUNCTION_19_5(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a19, uint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, unint64_t a24, unint64_t a25, unint64_t a26)
{
  result = a19;
  a1[1] = a19;
  a1[2].n128_u64[0] = 0xD000000000000018;
  a1[2].n128_u64[1] = a26;
  a1[3].n128_u64[0] = 0xD00000000000001ALL;
  a1[3].n128_u64[1] = a25;
  a1[4].n128_u64[0] = 0xD000000000000018;
  a1[4].n128_u64[1] = a24;
  a1[5].n128_u64[0] = 0xD00000000000001CLL;
  a1[5].n128_u64[1] = a23;
  a1[6].n128_u64[0] = 0xD000000000000020;
  a1[6].n128_u64[1] = a22;
  a1[7].n128_u64[0] = 0xD00000000000002BLL;
  a1[7].n128_u64[1] = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{
  *(a1 + 8) = sub_23DEF5A18;
  v2 = v1[71];
  v3 = v1[70];
  result = v1[9];
  v5 = v1[7];
  v6 = v1[3];
  v7 = v1[4];
  return result;
}

void OUTLINED_FUNCTION_27_7()
{
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[74];
  v1 = v0[73];
  v10 = v0[72];
}

void OUTLINED_FUNCTION_28_5()
{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[109];
}

void OUTLINED_FUNCTION_32_3()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_23E1FE0DC();
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

double OUTLINED_FUNCTION_35_6()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

char *OUTLINED_FUNCTION_39_3(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v2 + 16);
  return a1 + v3;
}

void OUTLINED_FUNCTION_43_3()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_2()
{

  return static WFContentItem.toolkitTypeDefinition(context:)(v0, v1);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[17];

  return sub_23DF01E08(v6, v4, v2, v7, v5, v3);
}

uint64_t OUTLINED_FUNCTION_61_1()
{
  result = v0[112];
  v2 = v0[109];
  v3 = v0[43];
  v4 = *(v0[110] + 8);
  return result;
}

void OUTLINED_FUNCTION_65_1()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[58];
  v4 = v0[55];
  v5 = v0[51];
  v6 = v0[52];
  v8 = v0[48];
  v9 = v0[47];
  v10 = v0[46];
  v11 = v0[43];
  v12 = v0[42];
  v13 = v0[39];
  v14 = v0[38];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[29];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v7 = v0[22];
}

uint64_t OUTLINED_FUNCTION_71_2(uint64_t a1)
{
  *(a1 + 8) = sub_23DEF02C0;
  result = *(v1 + 560);
  v3 = *(v1 + 160);
  return result;
}

id OUTLINED_FUNCTION_74_4()
{
  v2 = v0[49];
  v3 = v0[50];
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[31];
  v7 = v0[8];

  return v7;
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t a1)
{
  *(a1 + 8) = sub_23DEF6F84;
  v3 = v1[5];
  v2 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  return v1[2];
}

uint64_t OUTLINED_FUNCTION_76_3(uint64_t a1)
{
  *(a1 + 8) = sub_23DF00990;
  v2 = v1[16];
  v3 = v1[17];
  result = v1[15];
  v5 = v1[12];
  v7 = v1[7];
  v6 = v1[8];
  return result;
}

uint64_t OUTLINED_FUNCTION_80_2()
{
  v1 = v0[114];
  v2 = v0[113];
  result = v0[43];
  v4 = v0[44];
  return result;
}

uint64_t OUTLINED_FUNCTION_84_1()
{
  v4 = *(v2 + 104);
  result = v0 + v1;
  v6 = *(v3 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_88_3()
{
  result = 0;
  v4 = v1[110];
  v5 = v1[70];
  *(v2 - 120) = v0 & 0xC000000000000001;
  v6 = v1[65];
  *(v2 - 160) = v6;
  *(v2 - 168) = v6 + 32;
  return result;
}

uint64_t OUTLINED_FUNCTION_90_3()
{
  v3 = v0[159];
  *(v1 - 96) = v0[112];
  v4 = v0[110];
  v5 = v0[109];
  *(v1 - 120) = v0[82];
  *(v1 - 112) = v5;
  v6 = v0;
  v7 = v0[81];
  v8 = v6[79];
  v9 = v6[78];
  v10 = v6[77];
  v12 = v6[61];
  v11 = v6[62];
  v13 = v6[60];
  v14 = v6[43];
  *(v1 - 136) = v3;
  *(v1 - 128) = v14;
}

uint64_t OUTLINED_FUNCTION_91_3(uint64_t result)
{
  *(result + 8) = sub_23DF01134;
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_23E1FD97C();
}

uint64_t OUTLINED_FUNCTION_97_0()
{
  v3 = *(v0 + 728);
  v4 = *(v1 + 344);
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
  *(v0 + 24) = sub_23DEFF27C;

  return swift_continuation_init();
}

id OUTLINED_FUNCTION_112_0()
{
  v2 = *(*(v0 - 96) + 400);
  v3 = *(*(v0 - 96) + 392);
  v4 = *(*(v0 - 96) + 264);
  v5 = *(*(v0 - 96) + 256);
  v6 = *(*(v0 - 96) + 248);
  v7 = *(*(v0 - 96) + 64);

  return v7;
}

uint64_t OUTLINED_FUNCTION_113_0(unint64_t *a1)
{

  return sub_23DF05FF8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_114_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_23E1FC9CC();
}

void *OUTLINED_FUNCTION_122_0@<X0>(unsigned int *a1@<X8>)
{
  v3 = v2[62];
  v4 = v2[59];
  v5 = v2[60];
  v6 = v2[3];
  *v3 = v1;
  v7 = *a1;
  v8 = *(v5 + 104);
  return v3;
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v4 = *(v1 + 104);
  result = v0 + v2;
  v6 = *(v3 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  result = *(v0 + 896);
  v2 = *(v0 + 888);
  return result;
}

void OUTLINED_FUNCTION_128_1()
{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[44];
}

void OUTLINED_FUNCTION_130_1()
{
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[109];
  v5 = v0[66];
  *(v1 - 136) = v0[159];
  *(v1 - 128) = v5;
  v6 = v0[63];
  v7 = v0[48];
}

void OUTLINED_FUNCTION_131_0()
{
  v2 = *(v1 - 152);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16) + 1;
}

id OUTLINED_FUNCTION_133_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  *v15 = a15;
  *(v15 + 4) = v16;
  *a1 = v16;

  return v16;
}

__n128 *OUTLINED_FUNCTION_134_0(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_135_1()
{
  v3 = *(v1 + 32);

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_137_1@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  v6 = v2[62];
  v5 = v2[63];
  *(v3 - 144) = v2[66];
  *(v3 - 136) = v5;
  v8 = v2[58];
  v7 = v2[59];
  *(v3 - 128) = v6;
  *(v3 - 120) = v7;
  v9 = v2[55];
  *(v3 - 112) = v8;
  *(v3 - 104) = v9;
  *(v3 - 96) = v2[52];
}

uint64_t OUTLINED_FUNCTION_146_1()
{
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[109];
  v6 = v0[68];
  *(v1 - 136) = v0[159];
  *(v1 - 128) = v6;
  v7 = v0[63];
  v8 = v0[48];

  return sub_23E1FDC1C();
}

uint64_t OUTLINED_FUNCTION_154_0()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 104);

  return sub_23E1FD83C();
}

uint64_t OUTLINED_FUNCTION_155_0()
{
  v3 = v0[60];
  v2 = v0[61];
  v4 = v0[59];
  v5 = v0[3];

  return sub_23E1FD3CC();
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_23E1FD4AC();
}

uint64_t OUTLINED_FUNCTION_161_1()
{
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[43];
}

void OUTLINED_FUNCTION_162_0()
{
  *(v0 + 96) = 126;
  *(v0 + 104) = 0xE100000000000000;

  JUMPOUT(0x23EF044F0);
}

uint64_t OUTLINED_FUNCTION_163_0@<X0>(unsigned int *a1@<X8>)
{
  v3 = *(v1 + 344);
  v4 = *a1;

  return sub_23E1FD43C();
}

id OUTLINED_FUNCTION_168_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_170_1()
{
  v5 = *v0;
  v6 = v1[13];
  v1[14] = v2;
  v1[15] = v3;

  return sub_23E1FB7BC();
}

id OUTLINED_FUNCTION_171_1()
{
  v2 = v0[49];
  v3 = v0[50];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];
  v7 = v0[7];
  v8 = v0[4];

  return v8;
}

uint64_t OUTLINED_FUNCTION_173_1()
{

  return sub_23E1FC9CC();
}

void OUTLINED_FUNCTION_175_1()
{
  v1 = *(v0[2] + 16);
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
}

void OUTLINED_FUNCTION_176_1(uint64_t a1@<X8>)
{
  *(v3 - 160) = v1;
  *(v3 - 152) = a1;
  v4 = v2[62];
  *(v3 - 144) = v2[63];
  *(v3 - 136) = v4;
  v5 = v2[58];
  *(v3 - 128) = v2[59];
  *(v3 - 120) = v5;
}

uint64_t OUTLINED_FUNCTION_178_1()
{
  result = v0[112];
  v2 = v0[109];
  v3 = v0[43];
  v4 = *(v0[110] + 8);
  return result;
}

void OUTLINED_FUNCTION_179_1()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[109];
}

uint64_t OUTLINED_FUNCTION_181_0()
{
  v3 = *(v1 + 32);

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_182_0()
{

  return sub_23DE5733C(v0);
}

id OUTLINED_FUNCTION_183_0(void *a1)
{
  v3 = *(v1 + 536);

  return [a1 symbol];
}

uint64_t OUTLINED_FUNCTION_184_1()
{
  v2 = *(v0 - 136);

  return sub_23E1FD7AC();
}

uint64_t OUTLINED_FUNCTION_185_1()
{
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[44];

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_186_1()
{
  v2 = v0[61];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[21];

  return v6;
}

uint64_t OUTLINED_FUNCTION_187_1()
{
  v4 = *(v1 + 344);
  *(v2 - 144) = v0;
  *(v2 - 136) = v4;
}

uint64_t OUTLINED_FUNCTION_188_1()
{
  v3 = *(v1 + 168);

  return sub_23DE5733C(v0);
}

uint64_t OUTLINED_FUNCTION_189_1()
{
  v2 = *(v0 - 104);

  return swift_isUniquelyReferenced_nonNull_native();
}

id OUTLINED_FUNCTION_190_1()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[4];

  return v6;
}

uint64_t OUTLINED_FUNCTION_191_1()
{
  v3 = *(v1 - 136);

  return static WFContentItem.toolkitTypeDefinition(context:)(v0, v3);
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_193_0()
{
}

uint64_t OUTLINED_FUNCTION_194_1()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
}

uint64_t OUTLINED_FUNCTION_195_1()
{

  return sub_23E1FDEBC();
}

void OUTLINED_FUNCTION_196_1()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[36];
  v7 = v0[37];
}

uint64_t OUTLINED_FUNCTION_197_0()
{
  result = v0[112];
  v2 = v0[109];
  v3 = *(v0[110] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_198()
{
  result = *(v0 + 896);
  v2 = *(v0 + 888);
  return result;
}

void OUTLINED_FUNCTION_201(__n128 a1, __n128 a2)
{
  v2[1] = a2;
  v2[2] = a1;
  v3 = v2[2].n128_u64[1];
}

uint64_t OUTLINED_FUNCTION_209()
{
  v2 = *(v0 - 128);

  return sub_23E1FD93C();
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_211(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_212()
{
  v2 = *(v0 - 144);

  return sub_23E1FE0DC();
}

id OUTLINED_FUNCTION_213()
{
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[20];
  v5 = v0[4];

  return v5;
}

id OUTLINED_FUNCTION_214()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[4];

  return v5;
}

id OUTLINED_FUNCTION_215()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[4];

  return v5;
}

void OUTLINED_FUNCTION_216()
{

  JUMPOUT(0x23EF044F0);
}

id OUTLINED_FUNCTION_217()
{
  v3 = *(v1 + 176);

  return [v3 (v0 + 1912)];
}

uint64_t OUTLINED_FUNCTION_218()
{

  return sub_23E1FDDEC();
}

uint64_t OUTLINED_FUNCTION_220()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_221()
{
  v3 = *(v1 + 352);
  v4 = *(v0 + 288);

  return objc_opt_self();
}

uint64_t OUTLINED_FUNCTION_222()
{

  return sub_23E1FDE6C();
}

uint64_t OUTLINED_FUNCTION_223()
{

  return sub_23E1FDEBC();
}

uint64_t sub_23DF07798()
{
  v1[5] = v0;
  v2 = sub_23E1FD03C();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_23E1FDECC();
  v1[9] = sub_23E1FDEBC();
  v6 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF0788C, v6, v5);
}

id sub_23DF0788C()
{
  v1 = *MEMORY[0x277CBECE8];
  if (!WiFiManagerClientCreate())
  {
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    v10 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v11 = sub_23E1FD02C();
    v12 = sub_23E1FE1CC();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 48);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23DE30000, v11, v12, "Cannot create WiFiManager", v17, 2u);
      MEMORY[0x23EF074C0](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_14;
  }

  result = WiFiManagerClientCopyMisPassword();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 32) = result;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = *(v0 + 72);

    goto LABEL_14;
  }

  v3 = *(v0 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    v19 = *(v0 + 72);

    goto LABEL_14;
  }

  result = [*(v0 + 40) output];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = *(v0 + 72);

  v7 = sub_23E1FDBDC();

  [v5 addObject_];

LABEL_14:
  v20 = *(v0 + 64);

  v21 = *(v0 + 8);

  return v21();
}

id sub_23DF07B1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for GetHotspotPasswordAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_23DF07C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DF07C9C, v5, v4);
}

uint64_t sub_23DF07C9C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_23DE7F680;
  v8 = v0[4];
  v9 = v0[2];

  return sub_23DF07798();
}

id sub_23DF07DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DF07E54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetHotspotPasswordAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DF07EB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE662F0;

  return sub_23DF07C00(v2, v3, v4);
}

id sub_23DF07F98()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v410 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v410 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  v436 = xmmword_23E222330;
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  v434 = 0xD000000000000013;
  *(inited + 48) = 0x800000023E256BD0;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v14 = v7;
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v447 = qword_280DAE278;
  v15 = [qword_280DAE278 bundleURL];
  v445 = v3;
  sub_23E1FBF9C();

  v16 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v17 = v14;
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v446 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v22 = v21;
  v23 = sub_23E1FDABC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  v425 = v24;
  *(inited + 120) = v23;
  v25 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v24;
  *(inited + 152) = v25;
  v444 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v26 = swift_initStackObject();
  v424 = xmmword_23E222370;
  *(v26 + 16) = xmmword_23E222370;
  v27 = *MEMORY[0x277D7CC28];
  *(v26 + 32) = *MEMORY[0x277D7CC28];
  v28 = v25;
  v29 = v27;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v438 = inited;
  sub_23E1FC14C();
  v30 = v447;
  v31 = [v447 bundleURL];
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v26 + 40) = v33;
  v34 = *MEMORY[0x277D7CC30];
  v35 = v446;
  *(v26 + 64) = v446;
  *(v26 + 72) = v34;
  v36 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v37 = [v30 bundleURL];
  sub_23E1FBF9C();

  v38 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v26 + 104) = v35;
  *(v26 + 80) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v40 = sub_23E1FDABC();
  v41 = v444;
  v42 = sub_23DF3BE54(v40);
  v43 = MEMORY[0x277D7CCC8];
  v44 = v438;
  v438[20] = v42;
  v45 = *v43;
  v44[23] = v41;
  v44[24] = v45;
  v46 = MEMORY[0x277D839B0];
  *(v44 + 200) = 0;
  v47 = *MEMORY[0x277D7CB90];
  v44[28] = v46;
  v44[29] = v47;
  v48 = v44;
  v49 = v45;
  v50 = v47;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v51 = v447;
  v52 = [v447 bundleURL];
  sub_23E1FBF9C();

  v53 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v54 = v17;
  sub_23DE477A0();
  v48[30] = v55;
  v56 = *MEMORY[0x277D7CDD0];
  v57 = v446;
  v48[33] = v446;
  v48[34] = v56;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v58 = swift_initStackObject();
  v435 = xmmword_23E222380;
  *(v58 + 16) = xmmword_23E222380;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 0;
  *(v58 + 72) = MEMORY[0x277D839B0];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = v56;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v60 = v54;
  sub_23E1FC14C();
  v61 = [v51 bundleURL];
  sub_23E1FBF9C();

  v62 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v63 = v60;
  sub_23DE477A0();
  *(v58 + 96) = v64;
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 136) = 0xE500000000000000;
  v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v58 + 168) = v430;
  *(v58 + 144) = &unk_285024D00;
  v65 = MEMORY[0x277D837D0];
  v66 = sub_23E1FDABC();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v422 = v67;
  v68 = v438;
  v438[35] = v66;
  v69 = *MEMORY[0x277D7CBA0];
  v68[38] = v67;
  v68[39] = v69;
  v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v444 = swift_allocObject();
  *(v444 + 16) = xmmword_23E229910;
  v443 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v70 = swift_allocObject();
  v439 = xmmword_23E224700;
  *(v70 + 16) = xmmword_23E224700;
  v71 = *MEMORY[0x277D7CDF8];
  v437 = 0x800000023E24EAF0;
  *(v70 + 32) = v71;
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x800000023E24EAF0;
  v72 = *MEMORY[0x277D7CE08];
  *(v70 + 64) = v65;
  *(v70 + 72) = v72;
  v73 = v69;
  v433 = v71;
  v428 = v72;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v74 = v63;
  sub_23E1FC14C();
  v75 = [v447 bundleURL];
  sub_23E1FBF9C();

  v76 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v77 = v74;
  sub_23DE477A0();
  *(v70 + 80) = v78;
  v79 = *MEMORY[0x277D7CE70];
  v80 = v446;
  *(v70 + 104) = v446;
  *(v70 + 112) = v79;
  *(v70 + 120) = v434;
  *(v70 + 128) = 0x800000023E256D00;
  v81 = *MEMORY[0x277D7CE80];
  *(v70 + 144) = v65;
  *(v70 + 152) = v81;
  v420 = v79;
  v427 = v81;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v82 = v77;
  sub_23E1FC14C();
  v83 = [v447 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 160) = v85;
  v86 = *MEMORY[0x277D7CEA8];
  *(v70 + 184) = v80;
  *(v70 + 192) = v86;
  v432 = v86;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v87 = v447;
  v88 = [v447 bundleURL];
  sub_23E1FBF9C();

  v89 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 200) = v90;
  v91 = *MEMORY[0x277D7CEC8];
  v92 = v446;
  *(v70 + 224) = v446;
  *(v70 + 232) = v91;
  v421 = v91;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v93 = [v87 bundleURL];
  sub_23E1FBF9C();

  v94 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v70 + 240) = v95;
  v96 = *MEMORY[0x277D7CF10];
  *(v70 + 264) = v92;
  *(v70 + 272) = v96;
  v97 = MEMORY[0x277D837D0];
  *(v70 + 304) = MEMORY[0x277D837D0];
  *(v70 + 280) = 0x7468676952;
  *(v70 + 288) = 0xE500000000000000;
  _s3__C3KeyVMa_0(0);
  v441 = v98;
  v440 = sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v417 = v96;
  v99 = sub_23E1FDABC();
  v100 = sub_23DF3BE9C(v99);
  *(v444 + 32) = v100;
  v101 = swift_allocObject();
  *(v101 + 16) = v439;
  v102 = v433;
  *(v101 + 32) = v433;
  *(v101 + 40) = 0xD000000000000014;
  *(v101 + 48) = v437;
  v103 = v420;
  *(v101 + 64) = v97;
  *(v101 + 72) = v103;
  v431 = 0xD000000000000016;
  *(v101 + 80) = 0xD000000000000016;
  *(v101 + 88) = 0x800000023E256DC0;
  v104 = v427;
  *(v101 + 104) = v97;
  *(v101 + 112) = v104;
  v418 = v102;
  v420 = v103;
  v427 = v104;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v105 = v447;
  v106 = [v447 bundleURL];
  sub_23E1FBF9C();

  v107 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v101 + 120) = v108;
  v109 = v446;
  v110 = v432;
  *(v101 + 144) = v446;
  *(v101 + 152) = v110;
  v432 = v110;
  sub_23E1FDCBC();
  v433 = v111;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v112 = [v105 bundleURL];
  sub_23E1FBF9C();

  v113 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v101 + 160) = v114;
  v115 = v421;
  *(v101 + 184) = v109;
  *(v101 + 192) = v115;
  v419 = v115;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v116 = [v105 bundleURL];
  sub_23E1FBF9C();

  v117 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v101 + 200) = v118;
  v119 = v417;
  *(v101 + 224) = v109;
  *(v101 + 232) = v119;
  *(v101 + 240) = 0x7468676952;
  *(v101 + 248) = 0xE500000000000000;
  v120 = *MEMORY[0x277D7CF18];
  v121 = MEMORY[0x277D837D0];
  *(v101 + 264) = MEMORY[0x277D837D0];
  *(v101 + 272) = v120;
  *(v101 + 304) = v121;
  v122 = v121;
  *(v101 + 280) = 0x6E6F697461636F4CLL;
  *(v101 + 288) = 0xE800000000000000;
  v433 = v119;
  v123 = v120;
  v124 = sub_23E1FDABC();
  v125 = sub_23DF3BE9C(v124);
  *(v444 + 40) = v125;
  v126 = swift_allocObject();
  *(v126 + 16) = v439;
  v421 = 0xD000000000000019;
  v127 = v418;
  *(v126 + 32) = v418;
  *(v126 + 40) = 0xD000000000000019;
  *(v126 + 48) = 0x800000023E256EB0;
  v128 = v428;
  *(v126 + 64) = v122;
  *(v126 + 72) = v128;
  v418 = v127;
  v417 = v128;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v129 = v447;
  v130 = [v447 bundleURL];
  sub_23E1FBF9C();

  v131 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v126 + 104) = v446;
  *(v126 + 80) = v132;
  v133 = v431;
  *(v126 + 112) = sub_23E1FDBDC();
  *(v126 + 120) = 1;
  v134 = v420;
  *(v126 + 144) = MEMORY[0x277D839B0];
  *(v126 + 152) = v134;
  *(v126 + 160) = 0xD000000000000014;
  *(v126 + 168) = 0x800000023E256F60;
  v135 = v427;
  *(v126 + 184) = MEMORY[0x277D837D0];
  *(v126 + 192) = v135;
  v413 = v134;
  v414 = v135;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v136 = [v129 bundleURL];
  sub_23E1FBF9C();

  v137 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v138 = MEMORY[0x277D7CE88];
  *(v126 + 200) = v139;
  v140 = *v138;
  v141 = v446;
  *(v126 + 224) = v446;
  *(v126 + 232) = v140;
  *(v126 + 240) = v133;
  *(v126 + 248) = 0x800000023E256FB0;
  v142 = v419;
  *(v126 + 264) = MEMORY[0x277D837D0];
  *(v126 + 272) = v142;
  v415 = v142;
  v143 = v140;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v410 = v82;
  sub_23E1FC14C();
  v144 = [v447 bundleURL];
  sub_23E1FBF9C();

  v145 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v126 + 304) = v141;
  *(v126 + 280) = v146;
  v147 = sub_23E1FDABC();
  v148 = sub_23DF3BE9C(v147);
  *(v444 + 48) = v148;
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_23E222360;
  v428 = 0x800000023E250150;
  v151 = v417;
  v150 = v418;
  *(v149 + 32) = v418;
  *(v149 + 40) = 0xD000000000000014;
  *(v149 + 48) = 0x800000023E250150;
  *(v149 + 64) = MEMORY[0x277D837D0];
  *(v149 + 72) = v151;
  v152 = v150;
  v153 = v151;
  v154 = v152;
  v155 = v153;
  v417 = v154;
  *&v416 = v155;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v156 = [v447 bundleURL];
  sub_23E1FBF9C();

  v157 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v149 + 104) = v141;
  *(v149 + 80) = v158;
  v427 = "January 3”, “8:00pm”";
  v419 = 0xD000000000000012;
  *(v149 + 112) = sub_23E1FDBDC();
  v159 = MEMORY[0x277D839B0];
  *(v149 + 144) = MEMORY[0x277D839B0];
  *(v149 + 120) = 1;
  v418 = "DetectsAllDayDates";
  *(v149 + 152) = sub_23E1FDBDC();
  *(v149 + 184) = v159;
  *(v149 + 160) = 1;
  *(v149 + 192) = sub_23E1FDBDC();
  *(v149 + 200) = 0x6F7250656C696857;
  *(v149 + 208) = 0xEF676E6973736563;
  v160 = MEMORY[0x277D837D0];
  v161 = v413;
  v162 = v414;
  *(v149 + 224) = MEMORY[0x277D837D0];
  *(v149 + 232) = v161;
  v420 = 0xD000000000000017;
  *(v149 + 240) = 0xD000000000000017;
  *(v149 + 248) = 0x800000023E257160;
  *(v149 + 264) = v160;
  *(v149 + 272) = v162;
  v163 = v161;
  v164 = v162;
  v165 = v163;
  v166 = v164;
  v414 = v165;
  v413 = v166;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v167 = v447;
  v168 = [v447 bundleURL];
  sub_23E1FBF9C();

  v169 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v149 + 280) = v170;
  v171 = v432;
  *(v149 + 304) = v446;
  *(v149 + 312) = v171;
  v432 = v171;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v172 = [v167 bundleURL];
  sub_23E1FBF9C();

  v173 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v149 + 320) = v174;
  v175 = v446;
  v176 = v415;
  *(v149 + 344) = v446;
  *(v149 + 352) = v176;
  v415 = v176;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v177 = [v447 bundleURL];
  sub_23E1FBF9C();

  v178 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v149 + 384) = v175;
  *(v149 + 360) = v179;
  v180 = sub_23E1FDBDC();
  v412 = 0x800000023E257280;
  v181 = MEMORY[0x277D837D0];
  *(v149 + 424) = MEMORY[0x277D837D0];
  v411 = 0xD000000000000015;
  *(v149 + 392) = v180;
  *(v149 + 400) = 0xD000000000000015;
  *(v149 + 408) = 0x800000023E257280;
  *(v149 + 432) = sub_23E1FDBDC();
  strcpy((v149 + 440), "WFDetectedDate");
  *(v149 + 455) = -18;
  v182 = v433;
  *(v149 + 464) = v181;
  *(v149 + 472) = v182;
  *(v149 + 504) = v181;
  v183 = v181;
  *(v149 + 480) = 0x7468676952;
  *(v149 + 488) = 0xE500000000000000;
  v433 = v182;
  v184 = sub_23E1FDABC();
  v185 = sub_23DF3BE9C(v184);
  *(v444 + 56) = v185;
  v186 = swift_allocObject();
  *(v186 + 16) = v436;
  v187 = v417;
  *(v186 + 32) = v417;
  *(v186 + 40) = 0xD000000000000014;
  *(v186 + 48) = v428;
  v188 = v416;
  *(v186 + 64) = v183;
  *(v186 + 72) = v188;
  v428 = v187;
  v417 = v188;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v189 = [v447 bundleURL];
  sub_23E1FBF9C();

  v190 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v186 + 104) = v446;
  *(v186 + 80) = v191;
  *(v186 + 112) = sub_23E1FDBDC();
  v192 = MEMORY[0x277D839B0];
  *(v186 + 144) = MEMORY[0x277D839B0];
  *(v186 + 120) = 1;
  *(v186 + 152) = sub_23E1FDBDC();
  *(v186 + 184) = v192;
  *(v186 + 160) = 1;
  *(v186 + 192) = sub_23E1FDBDC();
  *(v186 + 200) = 0x6F7250656C696857;
  *(v186 + 208) = 0xEF676E6973736563;
  v193 = MEMORY[0x277D837D0];
  v195 = v413;
  v194 = v414;
  *(v186 + 224) = MEMORY[0x277D837D0];
  *(v186 + 232) = v194;
  v196 = v412;
  *(v186 + 240) = v411;
  *(v186 + 248) = v196;
  *(v186 + 264) = v193;
  *(v186 + 272) = v195;
  v418 = v194;
  v427 = v195;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v197 = v447;
  v198 = [v447 bundleURL];
  sub_23E1FBF9C();

  v199 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v186 + 280) = v200;
  v201 = v432;
  *(v186 + 304) = v446;
  *(v186 + 312) = v201;
  v432 = v201;
  sub_23E1FDCBC();
  *&v436 = v202;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v203 = [v197 bundleURL];
  sub_23E1FBF9C();

  v204 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v186 + 320) = v205;
  v206 = v446;
  v207 = v415;
  *(v186 + 344) = v446;
  *(v186 + 352) = v207;
  *&v416 = v207;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v208 = [v197 bundleURL];
  sub_23E1FBF9C();

  v209 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v186 + 384) = v206;
  *(v186 + 360) = v210;
  *(v186 + 392) = sub_23E1FDBDC();
  strcpy((v186 + 400), "WFDetectedDate");
  *(v186 + 415) = -18;
  v211 = MEMORY[0x277D837D0];
  v212 = v433;
  *(v186 + 424) = MEMORY[0x277D837D0];
  *(v186 + 432) = v212;
  *(v186 + 464) = v211;
  v213 = v211;
  *(v186 + 440) = 0x7468676952;
  *(v186 + 448) = 0xE500000000000000;
  v214 = sub_23E1FDABC();
  v215 = sub_23DF3BE9C(v214);
  *(v444 + 64) = v215;
  v216 = swift_initStackObject();
  *(v216 + 16) = xmmword_23E224710;
  v419 = 0x800000023E250E40;
  *&v436 = 0xD000000000000011;
  v217 = v428;
  *(v216 + 32) = v428;
  *(v216 + 40) = 0xD000000000000011;
  *(v216 + 48) = 0x800000023E250E40;
  v218 = v417;
  *(v216 + 64) = v213;
  *(v216 + 72) = v218;
  v415 = v217;
  v414 = v218;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v219 = v447;
  v220 = [v447 bundleURL];
  sub_23E1FBF9C();

  v221 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v216 + 80) = v222;
  v223 = v418;
  *(v216 + 104) = v446;
  *(v216 + 112) = v223;
  *(v216 + 120) = 0xD000000000000014;
  *(v216 + 128) = 0x800000023E2574B0;
  v224 = v427;
  *(v216 + 144) = MEMORY[0x277D837D0];
  *(v216 + 152) = v224;
  v417 = v223;
  v427 = v224;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v225 = [v219 bundleURL];
  sub_23E1FBF9C();

  v226 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v216 + 160) = v227;
  v228 = v446;
  v229 = v416;
  *(v216 + 184) = v446;
  *(v216 + 192) = v229;
  v428 = v229;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v230 = [v219 bundleURL];
  sub_23E1FBF9C();

  v231 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v216 + 224) = v228;
  *(v216 + 200) = v232;
  v233 = sub_23E1FDABC();
  v234 = sub_23DF3BE9C(v233);
  *(v444 + 72) = v234;
  v235 = swift_allocObject();
  *(v235 + 16) = v439;
  v237 = v414;
  v236 = v415;
  v238 = v431;
  *(v235 + 32) = v415;
  *(v235 + 40) = v238;
  *(v235 + 48) = 0x800000023E24FDA0;
  *(v235 + 64) = MEMORY[0x277D837D0];
  *(v235 + 72) = v237;
  v418 = v236;
  v431 = v237;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v239 = v447;
  v240 = [v447 bundleURL];
  sub_23E1FBF9C();

  v241 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v242 = MEMORY[0x277D7CE20];
  *&v416 = v235;
  *(v235 + 80) = v243;
  v244 = *v242;
  *(v235 + 104) = v446;
  *(v235 + 112) = v244;
  *(v235 + 120) = &unk_285024D30;
  v245 = *MEMORY[0x277D7CE38];
  *(v235 + 144) = v430;
  *(v235 + 152) = v245;
  v246 = swift_allocObject();
  *(v246 + 16) = xmmword_23E229920;
  v247 = v244;
  v248 = v245;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v249 = v239;
  v250 = [v239 bundleURL];
  sub_23E1FBF9C();

  v251 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v246 + 32) = v252;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v253 = [v249 bundleURL];
  sub_23E1FBF9C();

  v254 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v246 + 40) = v255;
  v256 = v246;
  v430 = v246;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v257 = v447;
  v258 = [v447 bundleURL];
  sub_23E1FBF9C();

  v259 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v256 + 48) = v260;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v261 = v257;
  v262 = [v257 bundleURL];
  sub_23E1FBF9C();

  v263 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v264 = v430;
  *(v430 + 7) = v265;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v266 = [v261 bundleURL];
  sub_23E1FBF9C();

  v267 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v264 + 8) = v268;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v269 = v447;
  v270 = [v447 bundleURL];
  sub_23E1FBF9C();

  v271 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v264 + 9) = v272;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v273 = [v269 bundleURL];
  sub_23E1FBF9C();

  v274 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v264 + 10) = v275;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v276 = v447;
  v277 = [v447 bundleURL];
  sub_23E1FBF9C();

  v278 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v264 + 11) = v279;
  sub_23E1FDCBC();
  v429 = v280;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v281 = v276;
  v282 = [v276 bundleURL];
  sub_23E1FBF9C();

  v283 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v284 = v430;
  *(v430 + 12) = v285;
  sub_23E1FDCBC();
  v429 = v286;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v287 = [v281 bundleURL];
  sub_23E1FBF9C();

  v288 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v284 + 13) = v289;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v290 = v447;
  v291 = [v447 bundleURL];
  sub_23E1FBF9C();

  v292 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v293 = v284;
  *(v284 + 14) = v294;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D1A0, &qword_23E224C20);
  v296 = v416;
  *(v416 + 160) = v293;
  v297 = v417;
  v296[23] = v295;
  v296[24] = v297;
  v296[25] = 0x547472656C414657;
  v296[26] = 0xEB00000000656D69;
  v298 = v427;
  v296[28] = MEMORY[0x277D837D0];
  v296[29] = v298;
  v415 = v297;
  v417 = v298;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v299 = v290;
  v300 = [v290 bundleURL];
  sub_23E1FBF9C();

  v301 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v296[30] = v302;
  v303 = v446;
  v304 = v428;
  v296[33] = v446;
  v296[34] = v304;
  v430 = v304;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v305 = [v299 bundleURL];
  sub_23E1FBF9C();

  v306 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v296[38] = v303;
  v296[35] = v307;
  v308 = sub_23E1FDABC();
  v309 = sub_23DF3BE9C(v308);
  *(v444 + 80) = v309;
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_23E224420;
  v311 = v418;
  *(v310 + 32) = v418;
  *(v310 + 40) = 0xD000000000000014;
  *(v310 + 48) = v437;
  v312 = v431;
  *(v310 + 64) = MEMORY[0x277D837D0];
  *(v310 + 72) = v312;
  v429 = v311;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v313 = v447;
  v314 = [v447 bundleURL];
  sub_23E1FBF9C();

  v315 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v310 + 80) = v316;
  v317 = v446;
  v318 = v415;
  *(v310 + 104) = v446;
  *(v310 + 112) = v318;
  *(v310 + 120) = v436;
  *(v310 + 128) = 0x800000023E2579A0;
  v319 = v417;
  *(v310 + 144) = MEMORY[0x277D837D0];
  *(v310 + 152) = v319;
  v427 = v318;
  v428 = v319;
  sub_23E1FDCBC();
  v418 = v320;
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v321 = v313;
  v322 = [v313 bundleURL];
  sub_23E1FBF9C();

  v323 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v310 + 160) = v324;
  v325 = v432;
  *(v310 + 184) = v317;
  *(v310 + 192) = v325;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v326 = v321;
  v327 = [v321 bundleURL];
  sub_23E1FBF9C();

  v328 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v310 + 200) = v329;
  v330 = v446;
  v331 = v430;
  *(v310 + 224) = v446;
  *(v310 + 232) = v331;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v332 = [v326 bundleURL];
  sub_23E1FBF9C();

  v333 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v310 + 240) = v334;
  v335 = *MEMORY[0x277D7CEE8];
  *(v310 + 264) = v330;
  *(v310 + 272) = v335;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E0, &qword_23E224C28);
  v336 = swift_allocObject();
  v416 = xmmword_23E222340;
  *(v336 + 16) = xmmword_23E222340;
  v417 = 0x800000023E24D710;
  v418 = 0x800000023E24D730;
  v337 = v335;
  v338 = MEMORY[0x277D837D0];
  *(v336 + 32) = sub_23E1FDABC();
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7E8, &unk_23E224C30);
  *(v310 + 280) = v336;
  v340 = v433;
  *(v310 + 304) = v339;
  *(v310 + 312) = v340;
  *(v310 + 344) = v338;
  *(v310 + 320) = 0x7468676952;
  *(v310 + 328) = 0xE500000000000000;
  v341 = sub_23E1FDABC();
  v342 = sub_23DF3BE9C(v341);
  *(v444 + 88) = v342;
  v343 = swift_allocObject();
  *(v343 + 16) = v439;
  *(v343 + 32) = v429;
  *(v343 + 40) = 0xD000000000000014;
  *(v343 + 48) = v437;
  v344 = v431;
  *(v343 + 64) = v338;
  *(v343 + 72) = v344;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v345 = v447;
  v346 = [v447 bundleURL];
  sub_23E1FBF9C();

  v347 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v343 + 80) = v348;
  v349 = v446;
  v350 = v427;
  *(v343 + 104) = v446;
  *(v343 + 112) = v350;
  *(v343 + 120) = v434;
  *(v343 + 128) = 0x800000023E257B00;
  v351 = v428;
  *(v343 + 144) = MEMORY[0x277D837D0];
  *(v343 + 152) = v351;
  *&v439 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v352 = [v345 bundleURL];
  sub_23E1FBF9C();

  v353 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v343 + 160) = v354;
  v355 = *MEMORY[0x277D7CE98];
  *(v343 + 184) = v349;
  *(v343 + 192) = v355;
  *(v343 + 200) = 1;
  v356 = v432;
  *(v343 + 224) = MEMORY[0x277D839B0];
  *(v343 + 232) = v356;
  v357 = v355;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v358 = v447;
  v359 = [v447 bundleURL];
  sub_23E1FBF9C();

  v360 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v343 + 240) = v361;
  v362 = v446;
  v363 = v430;
  *(v343 + 264) = v446;
  *(v343 + 272) = v363;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v364 = [v358 bundleURL];
  sub_23E1FBF9C();

  v365 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v343 + 304) = v362;
  *(v343 + 280) = v366;
  v367 = sub_23E1FDABC();
  v368 = sub_23DF3BE9C(v367);
  *(v444 + 96) = v368;
  v369 = swift_allocObject();
  *(v369 + 16) = xmmword_23E222350;
  v370 = v436;
  *(v369 + 32) = v429;
  *(v369 + 40) = v370;
  *(v369 + 48) = v419;
  v371 = *MEMORY[0x277D7CE00];
  v372 = MEMORY[0x277D837D0];
  *(v369 + 64) = MEMORY[0x277D837D0];
  *(v369 + 72) = v371;
  *(v369 + 80) = 1;
  v373 = v427;
  *(v369 + 104) = MEMORY[0x277D839B0];
  *(v369 + 112) = v373;
  *(v369 + 120) = 0x6E656857776F6853;
  *(v369 + 128) = 0xEB000000006E7552;
  v374 = v428;
  *(v369 + 144) = v372;
  *(v369 + 152) = v374;
  v375 = v371;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v376 = v447;
  v377 = [v447 bundleURL];
  sub_23E1FBF9C();

  v378 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v369 + 184) = v446;
  *(v369 + 160) = v379;
  v380 = sub_23E1FDABC();
  v381 = sub_23DF3BE9C(v380);
  v382 = v444;
  *(v444 + 104) = v381;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  v384 = v438;
  v438[40] = v382;
  v385 = *MEMORY[0x277D7CB98];
  v384[43] = v383;
  v384[44] = v385;
  v386 = v385;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v387 = [v376 bundleURL];
  sub_23E1FBF9C();

  v388 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v390 = v389;
  v391 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v392 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v384[45] = v391;
  v393 = *MEMORY[0x277D7CF20];
  v384[48] = v392;
  v384[49] = v393;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
  v394 = swift_allocObject();
  *(v394 + 16) = v435;
  *(v394 + 32) = 0xD000000000000018;
  *(v394 + 40) = 0x800000023E257CA0;
  v395 = MEMORY[0x277D837D0];
  *(v394 + 88) = MEMORY[0x277D837D0];
  v396 = v420;
  *(v394 + 56) = v395;
  *(v394 + 64) = v396;
  *(v394 + 72) = 0x800000023E24DBE0;
  v397 = swift_allocObject();
  *(v397 + 16) = v424;
  *(v397 + 32) = v436;
  *(v397 + 40) = 0x800000023E254400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8D8, &qword_23E225540);
  v398 = swift_allocObject();
  *(v398 + 16) = v416;
  v399 = swift_allocObject();
  *(v399 + 16) = v435;
  strcpy((v399 + 32), "WFParameterKey");
  *(v399 + 47) = -18;
  *(v399 + 48) = 0x6E656857776F6853;
  *(v399 + 56) = 0xEB000000006E7552;
  *(v399 + 72) = v395;
  *(v399 + 80) = 0xD000000000000010;
  *(v399 + 88) = v417;
  *(v399 + 96) = 1;
  *(v399 + 120) = MEMORY[0x277D839B0];
  *(v399 + 128) = 0x72756F7365524657;
  *(v399 + 168) = v395;
  *(v399 + 136) = 0xEF7373616C436563;
  *(v399 + 144) = 0xD00000000000001BLL;
  *(v399 + 152) = v418;
  v400 = v393;
  *(v398 + 32) = sub_23E1FDABC();
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C8E0, qword_23E225548);
  *(v397 + 48) = v398;
  *(v397 + 72) = v401;
  *(v397 + 80) = 0x72756F7365524657;
  *(v397 + 120) = v395;
  v402 = v421;
  *(v397 + 88) = 0xEF7373616C436563;
  *(v397 + 96) = v402;
  *(v397 + 104) = 0x800000023E24D560;
  v403 = sub_23E1FDABC();
  *(v394 + 120) = v422;
  *(v394 + 96) = v403;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C7B0, &qword_23E224B88);
  v384[50] = v394;
  v405 = *MEMORY[0x277D7D028];
  v384[53] = v404;
  v384[54] = v405;
  v406 = v405;
  v407 = sub_23E1FDABC();
  v384[58] = v425;
  v384[55] = v407;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v408 = sub_23E1FDABC();
  return sub_23DF3BF9C(v408);
}

uint64_t sub_23DF0B6FC()
{
  v0 = sub_23E1FBEEC();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v13 = sub_23E1FDBCC();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v3 + 104))(v8, *MEMORY[0x277CC9110], v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  return sub_23E1FBF1C();
}

void sub_23DF0B878()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_10();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FBF0C();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_23E1FB69C();
  sub_23E1FB67C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0BAA4()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D788, &qword_23E229DB0);
  v2 = sub_23DF0E250();
  v3 = sub_23DE66434(&qword_27E32D790, &qword_27E32D788, &qword_23E229DB0);

  return MEMORY[0x28210C568](KeyPath, sub_23DF0BB70, 0, v1, v2, v3);
}

uint64_t sub_23DF0BB70@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D798, &qword_23E229DB8);
  v2 = *(v1 - 8);
  v28 = v1;
  v29 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A0, &qword_23E229DC0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v25 = &v21 - v12;
  v32 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v23 = sub_23DF0E250();
  sub_23DF0D16C();
  sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8);
  v24 = v13;
  sub_23E1FB9AC();
  sub_23DE66434(&qword_27E32D7B8, &qword_27E32D7A0, &qword_23E229DC0);
  v14 = v7;
  sub_23E1FB91C();
  v22 = *(v31 + 8);
  v31 += 8;
  v22(v11, v7);
  v15 = v26;
  sub_23E1FB9EC();
  sub_23DE66434(&qword_27E32D7C0, &qword_27E32D798, &qword_23E229DB8);
  v16 = v27;
  v17 = v28;
  sub_23E1FB91C();
  v18 = *(v29 + 8);
  v18(v15, v17);
  v19 = v25;
  sub_23E1FB90C();
  v18(v16, v17);
  return (v22)(v19, v14);
}

uint64_t sub_23DF0BF50@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7C8, &qword_23E229DD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D0, &qword_23E229DD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_23DF0E250();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D8, &qword_23E229DE0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E8, &unk_23E229E40);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E0, &qword_23E229E10);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v13 = sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8);
  MEMORY[0x23EF02050](v10, &type metadata for SetDataRoamingAction, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x23EF02040](v12, &type metadata for SetDataRoamingAction, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_23DF0C2E8@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7C8, &qword_23E229DD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D0, &qword_23E229DD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7A8, &qword_23E229DC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_23DF0E250();
  sub_23E1FB81C();
  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7D8, &qword_23E229DE0);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7E0, &qword_23E229E10);
  sub_23E1FB7FC();

  sub_23E1FB80C();
  sub_23E1FB83C();
  sub_23E1FB7DC();
  v13 = sub_23DE66434(&qword_27E32D7B0, &qword_27E32D7A8, &qword_23E229DC8);
  MEMORY[0x23EF02050](v10, &type metadata for SetDataRoamingAction, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x23EF02040](v12, &type metadata for SetDataRoamingAction, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_23DF0C624()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23E1FC7FC();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  v13 = *MEMORY[0x277D7A2B8];
  *v12 = sub_23E1FDC1C();
  v12[1] = v14;
  (*(v7 + 104))(v12, *MEMORY[0x277D7BF38], v4);
  sub_23E1FC82C();
  sub_23E1FC81C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  type metadata accessor for Key(0);
  sub_23DE664D0();
  sub_23E1FDABC();
  v19 = objc_allocWithZone(sub_23E1FC83C());
  return sub_23E1FC80C();
}

void sub_23DF0C7DC()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_10();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7_4();
  v11 = sub_23E1FC1DC();
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBCC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FBF0C();
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v8 + 104))(v0, *MEMORY[0x277CC9110], v5);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  sub_23E1FB8EC();
  OUTLINED_FUNCTION_76();
}

void sub_23DF0C9DC()
{
  OUTLINED_FUNCTION_90();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v3);
  v56 = v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v55 = v47 - v9;
  v50 = sub_23E1FBEEC();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_23E1FC1DC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  v19 = sub_23E1FDBCC();
  v20 = OUTLINED_FUNCTION_25(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15();
  v53 = sub_23E1FBF0C();
  v23 = OUTLINED_FUNCTION_12(v53);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7F0, &qword_23E229E50);
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D7F8, &qword_23E229E58) - 8);
  v27 = *v26;
  v52 = *(*v26 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v54 = v29;
  *(v29 + 16) = xmmword_23E222370;
  v30 = v29 + v28;
  v47[1] = v26[14];
  *(v29 + v28) = 0;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v48 = *MEMORY[0x277CC9110];
  v31 = *(v10 + 104);
  v49 = v10 + 104;
  v51 = v31;
  v31(v14);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  v32 = v53;
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v53);
  v36 = sub_23E1FB75C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v36);
  OUTLINED_FUNCTION_15_12();
  v40 = (v30 + v52);
  v52 = v26[14];
  *v40 = 1;
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v51(v14, v48, v50);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_2();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v32);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v36);
  OUTLINED_FUNCTION_15_12();
  sub_23E1FB77C();
  sub_23DF0D3C0();
  sub_23E1FDABC();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0CE0C()
{
  v0 = sub_23E1FE6EC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DF0CE60(char a1)
{
  if (a1)
  {
    return 0x656C67676F74;
  }

  else
  {
    return 1852994932;
  }
}

unint64_t sub_23DF0CE9C()
{
  result = qword_280DAF320;
  if (!qword_280DAF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF320);
  }

  return result;
}

uint64_t sub_23DF0CF08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_23DF0CE0C();
  *a2 = result;
  return result;
}

uint64_t sub_23DF0CF38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DF0CE60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23DF0CFBC()
{
  result = qword_280DAF360;
  if (!qword_280DAF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF360);
  }

  return result;
}

unint64_t sub_23DF0D014()
{
  result = qword_280DAF338;
  if (!qword_280DAF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF338);
  }

  return result;
}

unint64_t sub_23DF0D06C()
{
  result = qword_280DAF318;
  if (!qword_280DAF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF318);
  }

  return result;
}

unint64_t sub_23DF0D0C4()
{
  result = qword_280DAF348;
  if (!qword_280DAF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF348);
  }

  return result;
}

unint64_t sub_23DF0D118()
{
  result = qword_280DAF340;
  if (!qword_280DAF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF340);
  }

  return result;
}

unint64_t sub_23DF0D16C()
{
  result = qword_280DAF358;
  if (!qword_280DAF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF358);
  }

  return result;
}

unint64_t sub_23DF0D1C4()
{
  result = qword_280DAF350;
  if (!qword_280DAF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF350);
  }

  return result;
}

unint64_t sub_23DF0D26C()
{
  result = qword_280DAE580;
  if (!qword_280DAE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE580);
  }

  return result;
}

uint64_t sub_23DF0D2C0(uint64_t a1)
{
  v2 = sub_23DF0D26C();

  return MEMORY[0x28210B458](a1, v2);
}

unint64_t sub_23DF0D310()
{
  result = qword_280DAF330;
  if (!qword_280DAF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF330);
  }

  return result;
}

unint64_t sub_23DF0D368()
{
  result = qword_280DAF310;
  if (!qword_280DAF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF310);
  }

  return result;
}

unint64_t sub_23DF0D3C0()
{
  result = qword_280DAF328;
  if (!qword_280DAF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF328);
  }

  return result;
}

uint64_t sub_23DF0D418(uint64_t a1)
{
  v2 = sub_23DF0D1C4();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_23DF0D468()
{
  result = qword_280DAF2F8;
  if (!qword_280DAF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF2F8);
  }

  return result;
}

unint64_t sub_23DF0D4C0()
{
  result = qword_280DAF308;
  if (!qword_280DAF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF308);
  }

  return result;
}

uint64_t sub_23DF0D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_23E1FD03C();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C028, &qword_23E2237A0);
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DF0D644, 0, 0);
}

uint64_t sub_23DF0D644()
{
  v1 = *(v0 + 168);
  sub_23E1FB5DC();
  v2 = *(v0 + 24);
  if (v2)
  {
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 96) = v2;
    v3 = *(v0 + 48);
    *(v0 + 104) = *(v0 + 32);
    *(v0 + 120) = v3;
    *(v0 + 136) = *(v0 + 64);
    *(v0 + 152) = *(v0 + 80);
    sub_23DED4C08((v0 + 88));
    if (v4)
    {
      v5 = v4;
      v6 = [v4 subscriptionContextUUID];
      v7 = *(v0 + 216);
      if (v6)
      {
        v8 = v6;
        v9 = *(v0 + 176);
        v10 = *(v0 + 216);
        sub_23E1FC0CC();

        sub_23E1FC0EC();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
        sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
        sub_23E1FB5DC();
        if (*(v0 + 224) == 1)
        {
          v15 = [v5 dataRoamingEnabled] ^ 1;
        }

        else
        {
          v34 = *(v0 + 184);
          sub_23E1FB5DC();
          v15 = *(v0 + 225);
        }

        v36 = *(v0 + 208);
        v35 = *(v0 + 216);
        v37 = *(v0 + 160);
        [v5 setDataRoamingEnabled_];
        sub_23E1FB54C();

        sub_23DE481FC(v0 + 16, &qword_27E32CA80, &qword_23E229D80);

        v33 = *(v0 + 8);
        goto LABEL_15;
      }

      sub_23E1FC0EC();
      OUTLINED_FUNCTION_18_0();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
      sub_23DE481FC(v7, &qword_27E32C028, &qword_23E2237A0);
      sub_23DE99EEC();
      swift_allocError();
      *v30 = 2;
      swift_willThrow();
    }

    else
    {
      v17 = *(v0 + 208);
      v18 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      v19 = sub_23E1FD02C();
      v20 = sub_23E1FE1BC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_23DE30000, v19, v20, "Could not find cellular plan matching UUID", v21, 2u);
        MEMORY[0x23EF074C0](v21, -1, -1);
      }

      v23 = *(v0 + 200);
      v22 = *(v0 + 208);
      v24 = *(v0 + 192);

      (*(v23 + 8))(v22, v24);
      sub_23DE99EEC();
      swift_allocError();
      *v25 = 0;
      swift_willThrow();
    }

    sub_23DE481FC(v0 + 16, &qword_27E32CA80, &qword_23E229D80);
  }

  else
  {
    sub_23DE99EEC();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  v32 = *(v0 + 208);
  v31 = *(v0 + 216);

  v33 = *(v0 + 8);
LABEL_15:

  return v33();
}

void sub_23DF0D97C()
{
  OUTLINED_FUNCTION_90();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA58, &unk_23E229D50);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v84 = v79 - v5;
  v6 = sub_23E1FB84C();
  v92 = OUTLINED_FUNCTION_6_0(v6);
  v93 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_15();
  v83 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v13 = OUTLINED_FUNCTION_25(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v82 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_9_10();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  v28 = v27 - v26;
  v29 = sub_23E1FC1DC();
  v30 = OUTLINED_FUNCTION_25(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_15();
  v33 = sub_23E1FDBCC();
  v34 = OUTLINED_FUNCTION_25(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15();
  v37 = sub_23E1FBF0C();
  v88 = v37;
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15();
  v79[2] = v40 - v39;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA68, &qword_23E22AE90);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v42 = *(v24 + 104);
  v90 = *MEMORY[0x277CC9110];
  v41 = v90;
  v91 = v23;
  v42(v28, v90, v23);
  v89 = v42;
  v87 = v24 + 104;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v42(v28, v41, v23);
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  v79[0] = v0;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v37);
  v46 = sub_23E1FB51C();
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v46);
  v86 = *MEMORY[0x277CBA308];
  v53 = v92;
  v54 = *(v93 + 104);
  v93 += 104;
  v85 = v54;
  v55 = v83;
  v54(v83);
  sub_23DE99E98();
  v80 = sub_23E1FB61C();
  v79[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D780, &unk_23E229D60);
  OUTLINED_FUNCTION_13_8();
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v56 = OUTLINED_FUNCTION_11_11();
  v57(v56);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v88);
  LOBYTE(v94) = 0;
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v46);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v46);
  v85(v55, v86, v53);
  sub_23DF0D26C();
  v82 = sub_23E1FB60C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CA70, &qword_23E226300);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  v67 = OUTLINED_FUNCTION_11_11();
  v68(v67);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3_11();
  sub_23E1FBF1C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v88);
  LOBYTE(v94) = 1;
  sub_23E1FDE4C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v46);
  v85(v55, v86, v92);
  sub_23E1FB64C();
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DF0E044(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23DE662F0;

  return sub_23DF0D54C(a1, v4, v5, v6);
}

void sub_23DF0E0F8(void *a1@<X8>)
{
  sub_23DF0D97C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}