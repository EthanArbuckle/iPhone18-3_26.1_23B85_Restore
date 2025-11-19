uint64_t sub_2174B6DC8()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v26 = v0[87];
  v27 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v25 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[80];
  v9 = v0[77];
  v28 = v2;
  v29 = v9;
  sub_2174B8A10();
  LODWORD(v9) = *(v9 + 81);
  sub_2174B8A10();
  (*(v7 + 16))(v6, v3, v8);
  sub_2177512B8();
  sub_2174B8A6C(v3, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v5 + 16))(v26, v4, v25);
  v10 = (v26 + *(v27 + 20));
  swift_beginAccess();
  v11 = off_280BEBCD0;

  (v11)(v12);

  v13 = v0[39];
  v14 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v13);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v13, v14, v10);
  (*(v5 + 8))(v4, v25);
  sub_2174B8A6C(v28, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  sub_21725EE54(v29 + 88, v10);
  v15 = v10[3];
  v16 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v15);
  v17 = *(v16 + 104);
  OUTLINED_FUNCTION_66_3();
  v30 = (v18 + *v18);
  v20 = *(v19 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[93] = v21;
  *v21 = v22;
  v21[1] = sub_2174B70C8;
  v23 = v0[87];

  return (v30)(v0 + 73, v23, v15, v16);
}

uint64_t sub_2174B70C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 744);
  v6 = *v1;
  OUTLINED_FUNCTION_42_0();
  *v7 = v6;
  *(v8 + 752) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174B71C8()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 616);
  v3 = *(v0 + 584);
  v4 = *(v0 + 592);
  v5 = *(v0 + 600);
  v6 = sub_217751348();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 88, v0 + 328);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 328);
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  SharedRelatedItemStore.init()();

  JSONDecoder.sharedRelatedItemStore.setter(v9);
  sub_2174B95C8();
  sub_217751308();
  if (v1)
  {
    v10 = *(v0 + 720);
    v11 = *(v0 + 696);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_0_59();
    sub_2174B8A6C(v10, v12);
    OUTLINED_FUNCTION_2_61();
    sub_2174B8A6C(v11, v13);
    v14 = *(v0 + 720);
    v15 = *(v0 + 712);
    v16 = *(v0 + 704);
    OUTLINED_FUNCTION_18_25();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v53 = v5;
    v18 = *(v0 + 632);
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    sub_2174B8A10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28518, &qword_21776D768);
    if (swift_dynamicCast())
    {
      sub_2171F3F0C((v0 + 408), v0 + 368);
      v21 = sub_21750DC9C();
      v23 = v22;
      v50 = v24;
      v26 = v25;
      v27 = sub_217751378();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_217751368();
      *(v0 + 528) = v21;
      *(v0 + 536) = v23;
      *(v0 + 544) = v50;
      *(v0 + 552) = v26;
      sub_2174B9B48();
      v30 = sub_217751358();
      v46 = *(v0 + 616);
      v31 = v30;
      v33 = v32;

      v34 = *(v0 + 400);
      v51 = *(v0 + 392);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v51);
      (*(v34 + 8))(v31, v33, v46 + 88, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v51, v34);
      sub_217275694(v31, v33);

      __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    }

    else
    {
      *(v0 + 440) = 0;
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      sub_2171F0738(v0 + 408, &qword_27CB28520, &qword_21776D770);
    }

    v35 = *(v0 + 616);
    sub_2174B961C(v0 + 16, v0 + 152);
    v36 = *(v35 + 40);
    sub_2172CA838(v35 + 88, v0 + 448);
    v37 = *(v0 + 280);
    sub_217751DE8();
    if (v37 > 1)
    {
      sub_217221020(v37);
      sub_2174BEF8C(v37);
      Array<A>.update(with:)(v38);
    }

    v39 = *(v0 + 720);
    v45 = *(v0 + 712);
    v47 = *(v0 + 704);
    v40 = *(v0 + 696);
    v48 = *(v0 + 680);
    v49 = *(v0 + 656);
    v52 = *(v0 + 632);
    v41 = *(v0 + 608);
    *(v0 + 520) = 0;
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    sub_2174B9678(v36, v0 + 448, v41);

    sub_217275694(v3, v4);

    sub_2171F0738(v0 + 488, &qword_27CB24188, &dword_217758930);
    sub_21733AB9C(v0 + 448);
    sub_2174B9AF4(v0 + 152);
    sub_2174B9AF4(v0 + 16);
    OUTLINED_FUNCTION_0_59();
    sub_2174B8A6C(v39, v42);
    OUTLINED_FUNCTION_2_61();
    sub_2174B8A6C(v40, v43);

    OUTLINED_FUNCTION_20_0();
  }

  return v17();
}

uint64_t sub_2174B76E4()
{
  v1 = v0[90];
  v2 = v0[87];
  OUTLINED_FUNCTION_0_59();
  sub_2174B8A6C(v3, v4);
  OUTLINED_FUNCTION_2_61();
  sub_2174B8A6C(v2, v5);
  v6 = v0[94];
  v7 = v0[90];
  v8 = v0[89];
  v9 = v0[88];
  OUTLINED_FUNCTION_18_25();

  OUTLINED_FUNCTION_20_0();

  return v10();
}

uint64_t sub_2174B77B0()
{
  v1 = v0[92];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
  OUTLINED_FUNCTION_18_25();

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2174B7860(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_217751428();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = type metadata accessor for MusicPersonalRecommendation();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v9 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v2[27] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174B7A3C, 0, 0);
}

void sub_2174B7A3C()
{
  v1 = v0;
  v0[2] = 0x6E656D6D6F636572;
  v2 = v0[9];
  v0[3] = 0xEF736E6F69746164;
  v3 = *(v2 + 64);
  if (v3 != 255 && (v3 & 1) != 0)
  {
    MEMORY[0x21CEA23B0](0x73656C75646F6D2FLL, 0xE800000000000000);
    v4 = v0[9];
  }

  v5 = v0[29];
  v6 = v0[27];
  v7 = MEMORY[0x277D84F90];
  v1[4] = MEMORY[0x277D84F90];
  v8 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v1[30] = v8;
  v9 = *(v8 + 48);
  OUTLINED_FUNCTION_11_36();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v1[29];
  if (EnumCaseMultiPayload)
  {
    v13 = v1[27];
    v12 = v1[28];
    OUTLINED_FUNCTION_9_33();
    sub_2174B8A6C(v14, v15);
    OUTLINED_FUNCTION_11_36();
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v1[28];
    if (v16 == 1)
    {
      v18 = v1[25];
      v19 = v1[23];
      sub_2174BA784();
      v20 = *(v18 + *(v19 + 48));
      if (v20 == 2 || (v20 & 1) == 0)
      {
        v36 = v1[3];

        if (qword_280BE73E0 != -1)
        {
          swift_once();
        }

        v37 = sub_217751AF8();
        __swift_project_value_buffer(v37, qword_280C023A8);
        v38 = sub_217751AD8();
        v39 = sub_217752808();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          MEMORY[0x21CEA4360](v40, -1, -1);
        }

        v41 = v1[25];

        sub_2174BA730();
        swift_allocError();
        swift_willThrow();
        OUTLINED_FUNCTION_3_55();
        sub_2174B8A6C(v41, v42);
        v44 = v1[28];
        v43 = v1[29];
        v46 = v1[25];
        v45 = v1[26];
        v48 = v1[21];
        v47 = v1[22];
        v49 = v1;
        v50 = v1[20];
        v52 = v49[18];
        v51 = v49[19];
        v53 = v49[17];
        v89 = v49[16];
        v90 = v49[15];
        v91 = v49[14];
        v92 = v49[13];
        v94 = v49[12];

        OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_998();

        __asm { BRAA            X1, X16 }
      }

      v21 = v1[25];
      sub_217752AA8();

      MEMORY[0x21CEA23B0](*v21, v21[1]);
      MEMORY[0x21CEA23B0](0x65732F776569762FLL, 0xED00006C6C612D65);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);

      OUTLINED_FUNCTION_3_55();
      v17 = v21;
    }

    else
    {
      v22 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters;
    }

    sub_2174B8A6C(v17, v22);
    goto LABEL_28;
  }

  v23 = *v11;
  v24 = *(*v11 + 16);
  if (v24)
  {
    v95 = v1[26];
    v25 = v1[24];
    OUTLINED_FUNCTION_21_25();
    sub_217276568();
    v26 = v7;
    v27 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v28 = *(v25 + 72);
    do
    {
      v29 = v1;
      v30 = v1[26];
      OUTLINED_FUNCTION_10_31();
      sub_2174B8A10();
      v31 = *v30;
      v32 = *(v95 + 8);
      sub_217751DE8();
      OUTLINED_FUNCTION_3_55();
      sub_2174B8A6C(v30, v33);
      v34 = v26[2];
      if (v34 >= v26[3] >> 1)
      {
        sub_217276568();
      }

      v26[2] = v34 + 1;
      v35 = &v26[2 * v34];
      v35[4] = v31;
      v35[5] = v32;
      v27 += v28;
      --v24;
      v1 = v29;
    }

    while (v24);

    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = *v11;

    v26 = MEMORY[0x277D84F90];
  }

  v57 = v26[2];
  v93 = v1;
  if (v57)
  {
    if (v57 == 1)
    {
      v58 = v26[4];
      v59 = v26[5];
      sub_217751DE8();

      MEMORY[0x21CEA23B0](v58, v59);

      MEMORY[0x21CEA23B0](47, 0xE100000000000000);

LABEL_28:
      v60 = MEMORY[0x277D84F90];
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_21_25();
    sub_217275C90();
    v62 = 0;
    v61 = v7;
    v63 = v7[2];
    v64 = 2 * v63;
    do
    {
      v65 = v26[v62 + 4];
      v66 = v26[v62 + 5];
      v67 = v61[3];
      sub_217751DE8();
      if (v63 >= v67 >> 1)
      {
        sub_217275C90();
      }

      v61[2] = v63 + 1;
      v68 = &v61[v64 + v62];
      *(v68 + 32) = v65;
      *(v68 + 40) = v66;
      v62 += 2;
      ++v63;
      --v57;
    }

    while (v57);

    v1 = v93;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v70 = v1[21];
  v69 = v1[22];
  v71 = v1[10];
  v72 = v1[11];
  v1[7] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_217283840(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0);
  sub_217751ED8();

  sub_2177513F8();

  (*(v72 + 16))(v70, v69, v71);
  sub_2172B1A50(0, 1, 1, MEMORY[0x277D84F90]);
  v60 = v73;
  v75 = *(v73 + 16);
  v74 = *(v73 + 24);
  if (v75 >= v74 >> 1)
  {
    sub_2172B1A50(v74 > 1, v75 + 1, 1, v73);
    v60 = v88;
  }

  v1 = v93;
  v76 = v93[21];
  v77 = v93[10];
  v78 = v93[11];
  (*(v78 + 8))(v93[22], v77);
  *(v60 + 16) = v75 + 1;
  (*(v78 + 32))(v60 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v75, v76, v77);
  v93[4] = v60;
LABEL_38:
  v1[31] = v60;
  v79 = v1[9];
  v80 = v79[15];
  __swift_project_boxed_opaque_existential_1(v79 + 11, v79[14]);
  v81 = *(v80 + 40);
  OUTLINED_FUNCTION_66_3();
  v96 = v82 + *v82;
  v84 = *(v83 + 4);
  v85 = swift_task_alloc();
  v1[32] = v85;
  *v85 = v1;
  v85[1] = sub_2174B8250;
  OUTLINED_FUNCTION_998();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2174B8250()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_0();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  v3[33] = v7;
  v3[34] = v8;
  v3[35] = v0;

  if (v0)
  {
    v9 = v3[3];
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_2174B8360()
{
  v1 = v0[34];
  if (v1)
  {
    v2 = v0[33];
    v3 = v0[31];
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v0[34];
    sub_2177513F8();

    v9 = OUTLINED_FUNCTION_146_6();
    v10(v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[31];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v12 = v77;
    }

    OUTLINED_FUNCTION_103();
    if (v14)
    {
      sub_2172B1A50(v13 > 1, v1, 1, v12);
      v12 = v78;
    }

    v16 = v0[19];
    v15 = v0[20];
    OUTLINED_FUNCTION_6_39();
    v17();
    v18 = OUTLINED_FUNCTION_87_0();
    v19(v18);
    v0[4] = v12;
  }

  else
  {
    v12 = v0[31];
  }

  v20 = v0[9];
  if ((*(v20 + 24) & 1) == 0)
  {
    v22 = v0[17];
    v21 = v0[18];
    v23 = v0[10];
    v24 = v0[11];
    v0[6] = *(v20 + 16);
    sub_217752FC8();
    sub_2177513F8();

    v25 = OUTLINED_FUNCTION_146_6();
    v26(v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v12 = v79;
    }

    OUTLINED_FUNCTION_103();
    if (v14)
    {
      OUTLINED_FUNCTION_3_49(v27);
      v12 = v80;
    }

    v29 = v0[17];
    v28 = v0[18];
    OUTLINED_FUNCTION_6_39();
    v30();
    v31 = OUTLINED_FUNCTION_87_0();
    v32(v31);
    v0[4] = v12;
    v20 = v0[9];
  }

  if ((*(v20 + 8) & 1) == 0)
  {
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[10];
    v36 = v0[11];
    v0[5] = *v20;
    sub_217752FC8();
    sub_2177513F8();

    v37 = OUTLINED_FUNCTION_146_6();
    v38(v37);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v12 = v81;
    }

    OUTLINED_FUNCTION_103();
    if (v14)
    {
      OUTLINED_FUNCTION_3_49(v39);
      v12 = v82;
    }

    v41 = v0[15];
    v40 = v0[16];
    OUTLINED_FUNCTION_6_39();
    v42();
    v43 = OUTLINED_FUNCTION_87_0();
    v44(v43);
    v0[4] = v12;
    v20 = v0[9];
  }

  if (*(v20 + *(v0[30] + 52)) == 1)
  {
    v46 = v0[13];
    v45 = v0[14];
    v47 = v0[10];
    v48 = v0[11];
    sub_2177513F8();
    (*(v48 + 16))(v46, v45, v47);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_8();
      v12 = v83;
    }

    OUTLINED_FUNCTION_103();
    if (v14)
    {
      OUTLINED_FUNCTION_3_49(v49);
      v12 = v84;
    }

    v51 = v0[13];
    v50 = v0[14];
    OUTLINED_FUNCTION_6_39();
    v52();
    v53 = OUTLINED_FUNCTION_87_0();
    v54(v53);
    v0[4] = v12;
    v20 = v0[9];
  }

  if (*(*(v20 + 40) + 16))
  {
    v55 = sub_217751DE8();
    sub_21754383C(v55);
    v20 = v0[9];
  }

  if (sub_217204DD0(*(v20 + 32)))
  {
    OUTLINED_FUNCTION_35_1();
    sub_2174844D4();
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v57 = v0[11];
  v56 = v0[12];
  v58 = v0[10];
  v59 = __swift_project_value_buffer(v58, qword_280BE7428);
  (*(v57 + 16))(v56, v59, v58);
  v60 = v0[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2172B1A50(0, *(v60 + 16) + 1, 1, v60);
    v60 = v75;
  }

  v62 = *(v60 + 16);
  v61 = *(v60 + 24);
  if (v62 >= v61 >> 1)
  {
    sub_2172B1A50(v61 > 1, v62 + 1, 1, v60);
    v60 = v76;
  }

  v64 = v0[28];
  v63 = v0[29];
  v65 = v0[26];
  v85 = v0[25];
  v86 = v0[22];
  v87 = v0[21];
  v88 = v0[20];
  v89 = v0[19];
  v90 = v0[18];
  v91 = v0[17];
  v92 = v0[16];
  v93 = v0[15];
  v94 = v0[14];
  v95 = v0[13];
  v66 = v0[11];
  v67 = v0[12];
  v69 = v0[9];
  v68 = v0[10];
  v70 = v0[8];
  *(v60 + 16) = v62 + 1;
  (*(v66 + 32))(v60 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v62, v67, v68);
  v71 = v0[2];
  v72 = v0[3];
  sub_2174B5E4C(v60, v69 + 88, v70);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_998();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2174B88EC()
{
  v1 = v0[31];

  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  v14 = v0[16];
  v15 = v0[15];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[35];

  OUTLINED_FUNCTION_20_0();

  return v12();
}

uint64_t sub_2174B8A10()
{
  OUTLINED_FUNCTION_169();
  v3 = v2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2174B8A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2174B8AC4(const void *a1)
{
  v2 = type metadata accessor for MusicPersonalRecommendation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2174B8A10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2174BA784();
      MEMORY[0x21CEA3550](2);
      MusicPersonalRecommendation.hash(into:)(a1);
      return sub_2174B8A6C(v6, type metadata accessor for MusicPersonalRecommendation);
    }

    else
    {
      return MEMORY[0x21CEA3550](0);
    }
  }

  else
  {
    v14 = *v11;
    MEMORY[0x21CEA3550](1);
    sub_2172833F4(a1, v14);
  }
}

uint64_t MusicPersonalRecommendationsRequest._Content._AdditionalContent.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t static MusicPersonalRecommendationsRequest._Content.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    v7 = *a2;
    v8 = *a1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_8;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_6;
  }

  v7 = a2[1];
  v8 = a1[1];
  if (v4 == v2)
  {
LABEL_7:
    v9 = sub_2172849D0(v8, v7);
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  sub_2174B6488();
  sub_2174B6488();
  sub_2174B64EC();
  sub_2174B64EC();
  return v9 & 1;
}

uint64_t MusicPersonalRecommendationsRequest._Content.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16) == 1)
  {
    v4 = v1[1];
    MEMORY[0x21CEA3550](1);
    v5 = v3;
    v3 = v4;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x21CEA3550](v5);

  return sub_2172849DC(a1, v3);
}

uint64_t MusicPersonalRecommendationsRequest._Content.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  OUTLINED_FUNCTION_238();
  if (v3 == 1)
  {
    MEMORY[0x21CEA3550](1);
    v4 = v1;
    v1 = v2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x21CEA3550](v4);
  sub_2172849DC(v6, v1);
  return sub_217753238();
}

uint64_t sub_2174B8F08()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_2177531E8();
  MusicPersonalRecommendationsRequest._Content.hash(into:)(v3);
  return sub_217753238();
}

BOOL static MusicPersonalRecommendationsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  sub_217273F78(*(a1 + 32), *(a2 + 32), a3, a4, a5, a6, a7, a8, v63, v64, v65, v66[0]);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 40);
  v14 = *(a2 + 40);
  sub_217270404();
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v19 = *(a2 + 48);
  v18 = *(a2 + 56);
  v20 = *(a2 + 64);
  if (v17 == 255)
  {
    v33 = OUTLINED_FUNCTION_173();
    sub_2174B6470(v33, v34, 255);
    if (v20 == 255)
    {
      v51 = OUTLINED_FUNCTION_5_3();
      sub_2174B6470(v51, v52, 255);
      v53 = OUTLINED_FUNCTION_173();
      sub_2174B64D4(v53, v54, 255);
      goto LABEL_25;
    }

    v35 = OUTLINED_FUNCTION_5_3();
    sub_2174B6470(v35, v36, v20);
LABEL_22:
    v45 = OUTLINED_FUNCTION_5_44();
    sub_2174B64D4(v45, v46, v47);
    v48 = OUTLINED_FUNCTION_5_3();
    sub_2174B64D4(v48, v49, v20);
    return 0;
  }

  v66[0] = *(a1 + 48);
  v66[1] = v16;
  v67 = v17;
  if (v20 == 255)
  {
    v37 = OUTLINED_FUNCTION_5_44();
    sub_2174B6470(v37, v38, v39);
    v40 = OUTLINED_FUNCTION_5_3();
    sub_2174B6470(v40, v41, 255);
    v42 = OUTLINED_FUNCTION_5_44();
    sub_2174B6470(v42, v43, v44);
    OUTLINED_FUNCTION_173();
    sub_2174B64EC();
    goto LABEL_22;
  }

  v63 = v19;
  v64 = v18;
  LOBYTE(v65) = v20 & 1;
  v21 = OUTLINED_FUNCTION_5_44();
  sub_2174B6470(v21, v22, v23);
  v24 = OUTLINED_FUNCTION_5_3();
  sub_2174B6470(v24, v25, v20);
  v26 = OUTLINED_FUNCTION_5_44();
  sub_2174B6470(v26, v27, v28);
  v29 = static MusicPersonalRecommendationsRequest._Content.== infix(_:_:)(v66, &v63);
  OUTLINED_FUNCTION_5_3();
  sub_2174B64EC();
  OUTLINED_FUNCTION_173();
  sub_2174B64EC();
  v30 = OUTLINED_FUNCTION_5_44();
  sub_2174B64D4(v30, v31, v32);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v55 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (*(a2 + 80))
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    v55 = 1;
  }

  if (v55)
  {
    return 0;
  }

LABEL_31:
  v56 = *(a2 + 81);
  if ((sub_217708908(*(a1 + 81)) & 1) == 0)
  {
    return 0;
  }

  v57 = *(a1 + 112);
  v58 = *(a1 + 120);
  __swift_project_boxed_opaque_existential_1((a1 + 88), v57);
  v59 = *(v58 + 112);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v59(a2 + 88, v60, v57, v58) & 1) == 0)
  {
    return 0;
  }

  v61 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v62 = *(v61 + 48);
  if ((sub_2174B6680() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + *(v61 + 52)) == *(a2 + *(v61 + 52));
}

uint64_t MusicPersonalRecommendationsRequest.hash(into:)(const void *a1)
{
  v2 = v1;
  if (*(v1 + 8) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v4 = *v1;
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v4);
  }

  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v5 = v1[2];
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v5);
  }

  sub_217281970(a1, v1[4]);
  sub_21727D208(a1, v1[5]);
  v6 = *(v1 + 64);
  if (v6 == 255)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v7 = v1[6];
    v8 = v1[7];
    OUTLINED_FUNCTION_24();
    if (v6)
    {
      MEMORY[0x21CEA3550](1);
      MEMORY[0x21CEA3550](v7);
      v9 = a1;
      v10 = v8;
    }

    else
    {
      MEMORY[0x21CEA3550](0);
      v9 = a1;
      v10 = v7;
    }

    sub_2172849DC(v9, v10);
  }

  if (*(v1 + 80) == 1)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v11 = v1[9];
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v11);
  }

  *(v1 + 81);
  *(v1 + 81);
  sub_217751FF8();

  v12 = v1[14];
  v13 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v12);
  (*(v13 + 120))(a1, v12, v13);
  v14 = type metadata accessor for MusicPersonalRecommendationsRequest(0);
  v15 = v1 + *(v14 + 48);
  sub_2174B8AC4(a1);
  return MEMORY[0x21CEA3550](*(v2 + *(v14 + 52)));
}

uint64_t sub_2174B939C(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_238();
  a1(v3);
  return sub_217753238();
}

uint64_t sub_2174B9400(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2177531E8();
  a4(v6);
  return sub_217753238();
}

uint64_t sub_2174B9444()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2174BA7E0;

  return MusicPersonalRecommendationsRequest.catalogResponse()();
}

uint64_t MusicPersonalRecommendationsRequest.Error.hashValue.getter()
{
  OUTLINED_FUNCTION_238();
  MEMORY[0x21CEA3550](0);
  return sub_217753238();
}

unint64_t sub_2174B95C8()
{
  result = qword_27CB28510;
  if (!qword_27CB28510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28510);
  }

  return result;
}

uint64_t sub_2174B9678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  if (v3[16] > 1)
  {
    v6 = v3[16];
    v7 = sub_217751DE8();
    sub_2174BEF8C(v7);
    v53 = v8;
  }

  else
  {
    sub_217751DE8();
  }

  sub_2172CE84C(v3[2], v51);
  if (!*(&v51[0] + 1))
  {
    v9 = &qword_27CB285B8;
    v10 = &unk_21776DB70;
    v11 = v51;
    goto LABEL_11;
  }

  memcpy(v52, v51, sizeof(v52));
  if (LOBYTE(v52[3]) == 2 || (v52[3] & 1) == 0)
  {
    v9 = &qword_27CB244A8;
    v10 = &unk_217758980;
    v11 = v52;
    goto LABEL_11;
  }

  sub_2174BA6D4();
  if (v38[2] == 1)
  {
    sub_2171F0738(v52, &qword_27CB244A8, &unk_217758980);
    v9 = &qword_27CB244B0;
    v10 = &unk_21776DB80;
    v11 = v38;
LABEL_11:
    sub_2171F0738(v11, v9, v10);
    v12 = sub_217751DE8();
    goto LABEL_12;
  }

  sub_2174BA6D4();
  sub_21728373C(v38);
  v27 = v41;
  if (!v41)
  {
    sub_2171F0738(v52, &qword_27CB244A8, &unk_217758980);
    v9 = &qword_27CB244B8;
    v10 = &unk_217758990;
    v11 = &v39;
    goto LABEL_11;
  }

  v34 = v40;
  v35 = v39;
  sub_2171FB568(v39, v40);
  v33 = sub_2174B5AAC(v27);
  sub_2171F0738(v52, &qword_27CB244A8, &unk_217758980);
  v28 = v43;
  v31 = v44;
  v32 = v42;
  v37 = v45;
  v29 = v47;
  v30 = v46;
  sub_2174BA6D4();
  v50[0] = v35;
  v50[1] = v34;
  v50[2] = v33;
  v50[3] = v32;
  v50[4] = v28;
  v50[5] = v31;
  v50[6] = v37;
  v50[7] = v30;
  v50[8] = v29;
  v50[14] = v48;
  v50[15] = v49;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(&v39, &qword_27CB244C0, &qword_21775D9C0);
  memcpy(v51, v50, 0x80uLL);
  sub_217751DE8();
  v12 = sub_2171F0738(v51, &qword_27CB285C0, &unk_21776DE90);
LABEL_12:
  MEMORY[0x28223BE20](v12, v13);
  sub_2172E4D18();
  v36 = v14;

  sub_2174BA6D4();
  if (*(&v51[1] + 1))
  {
    v52[0] = v51[0];
    v52[1] = v51[1];
    *&v52[2] = *&v51[2];
  }

  else
  {
    sub_2174B9E04(v53, a2, v52);
    if (*(&v51[1] + 1))
    {
      sub_2171F0738(v51, &qword_27CB24188, &dword_217758930);
    }
  }

  v15 = *v3;
  v16 = v3[1];
  v17 = v3[3];
  v18 = v3[4];
  v19 = v3[14];
  sub_2171FB568(*v3, v16);
  sub_217751DE8();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = sub_217751DC8();
  }

  v21 = v3[15];
  sub_217751DE8();
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = sub_217751DC8();
  }

  *a3 = v36;
  if (v16 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = v16;
  }

  if (v16 == 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = v15;
  }

  *(a3 + 8) = 0;
  v25 = v52[1];
  *(a3 + 16) = v52[0];
  *(a3 + 32) = v25;
  *(a3 + 48) = *&v52[2];
  *(a3 + 56) = v24;
  *(a3 + 64) = v23;
  *(a3 + 72) = v17;
  *(a3 + 80) = v18;
  *(a3 + 88) = v20;
  *(a3 + 96) = v22;
  sub_217751DE8();
}

unint64_t sub_2174B9B48()
{
  result = qword_27CB28528;
  if (!qword_27CB28528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28528);
  }

  return result;
}

uint64_t sub_2174B9B9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for MusicPersonalRecommendation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = *a1;
  v14 = a1[1];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25A90, &qword_21775DA98);
    swift_allocObject();

    sub_217751DE8();
    *a5 = sub_21733A488(v13, v14, a2, sub_2174BA6C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  }

  else
  {
    sub_2174BA6D4();
    sub_2172CA838(a3, &v17);
    v15 = *a4;
    sub_217751DE8();
    sub_2173349C8();
    sub_2174BA784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24978, &qword_21776DBA0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_2174B9D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_2174BA6D4();
  sub_2172CA838(a4, v9);
  v8 = *a6;

  sub_217751DE8();
  sub_2173349C8();
}

uint64_t sub_2174B9E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = result;
    v7 = *(v3 + 56);
    sub_2172CA838(a2, v12 + 8);
    *&v11 = v7;
    *(&v11 + 1) = v4;
    *&v12[0] = v5;
    v8 = swift_allocObject();
    v9 = v12[0];
    v8[1] = v11;
    v8[2] = v9;
    v10 = v12[2];
    v8[3] = v12[1];
    v8[4] = v10;
    sub_217751DE8();
    sub_217751DE8();
    result = sub_2171F0738(a3, &qword_27CB24188, &dword_217758930);
    *a3 = v8;
    *(a3 + 24) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
    *(a3 + 32) = &off_282969FA0;
  }

  return result;
}

unint64_t sub_2174B9F1C()
{
  result = qword_27CB28540;
  if (!qword_27CB28540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28540);
  }

  return result;
}

unint64_t sub_2174B9F74()
{
  result = qword_27CB28548;
  if (!qword_27CB28548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28548);
  }

  return result;
}

unint64_t sub_2174BA020()
{
  result = qword_27CB28558;
  if (!qword_27CB28558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28558);
  }

  return result;
}

uint64_t sub_2174BA09C()
{
  sub_2172E2E58(319, &qword_280BE7528);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2174BA1D8();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_2174BA548(319, &qword_27CB28578, MEMORY[0x277CC8918]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_2172E2E58(319, &qword_27CB28580);
    if (v6 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = type metadata accessor for MusicPersonalRecommendationsRequest.Parameters(319);
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_2174BA1D8()
{
  if (!qword_27CB28570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CB281D0, &qword_217758F58);
    v0 = sub_217752418();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB28570);
    }
  }
}

uint64_t sub_2174BA248(uint64_t a1, unsigned int a2)
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

uint64_t sub_2174BA288(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationsRequest._Content._AdditionalContent(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationsRequest.Error(_BYTE *result, int a2, int a3)
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

void sub_2174BA470()
{
  sub_2174BA4E4();
  if (v0 <= 0x3F)
  {
    sub_2174BA59C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2174BA4E4()
{
  if (!qword_27CB28598)
  {
    sub_2174BA548(0, &qword_27CB285A0, type metadata accessor for MusicPersonalRecommendation);
    if (!v1)
    {
      atomic_store(v0, &qword_27CB28598);
    }
  }
}

void sub_2174BA548(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217752418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2174BA59C()
{
  if (!qword_27CB285A8)
  {
    v0 = type metadata accessor for MusicPersonalRecommendation();
    if (!v1)
    {
      atomic_store(v0, &qword_27CB285A8);
    }
  }
}

uint64_t sub_2174BA62C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2174BA6D4()
{
  OUTLINED_FUNCTION_169();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_43(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

unint64_t sub_2174BA730()
{
  result = qword_27CB285C8;
  if (!qword_27CB285C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB285C8);
  }

  return result;
}

uint64_t sub_2174BA784()
{
  OUTLINED_FUNCTION_169();
  v3 = v2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_11_36()
{

  return sub_2174B8A10();
}

uint64_t OUTLINED_FUNCTION_18_25()
{
  v2 = v0[87];
  v3 = v0[85];
  v4 = v0[82];
  v5 = v0[79];
}

uint64_t sub_2174BA8BC(uint64_t a1)
{
  v2 = type metadata accessor for CloudStation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudPersonalRecommendation.Item();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28688, &unk_217798ED0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  v50 = *(v16 - 1);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v49 = &v49 - v22;
  v52 = MEMORY[0x277D84F90];
  v53 = v10;
  v23 = *(a1 + 16);
  v63 = a1;
  v64 = v23;
  v24 = 0;
  v54 = v6;
  while (v64 != v24)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v26 = v63 + ((*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80)) + *(*(v25 - 1) + 72) * v24;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_2174BFDF8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v66 = v24;
    if (EnumCaseMultiPayload == 2)
    {
      sub_2172CB34C(v15, &qword_27CB28688, &unk_217798ED0);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v28 = v25[10];
      v29 = v26 + v25[9];
      v30 = *v29;
      v56 = *(v29 + 8);
      v57 = *(v29 + 16);
      v31 = *(v26 + v28 + 8);
      v60 = *(v26 + v28);
      v32 = v25[11];
      v58 = v30;
      v59 = v32;
      memcpy(v65, (v26 + v32), sizeof(v65));
      v33 = *(v26 + v25[12]);
      v34 = *(v26 + v25[13]);
      v35 = v25[15];
      v61 = *(v26 + v25[14]);
      v36 = v61;
      v55 = *(v26 + v35);
      v37 = &v15[v16[9]];
      v38 = v56;
      *v37 = v58;
      *(v37 + 1) = v38;
      v37[16] = v57;
      v39 = &v15[v16[10]];
      *v39 = v60;
      *(v39 + 1) = v31;
      memcpy(&v15[v16[11]], (v26 + v59), 0x180uLL);
      *&v15[v16[12]] = v33;
      *&v15[v16[13]] = v34;
      *&v15[v16[14]] = v36;
      *&v15[v16[15]] = v55;
      v10 = v53;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v62, type metadata accessor for CloudStation);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    }

    else
    {
      sub_2174BFE50(v10, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2172CB34C(v15, &qword_27CB28688, &unk_217798ED0);
      v24 = v66 + 1;
    }

    else
    {
      v40 = v66;
      v61 = v16;
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B21E4(0, *(v52 + 16) + 1, 1, v52);
        v52 = v46;
      }

      v42 = *(v52 + 16);
      v41 = *(v52 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2172B21E4(v41 > 1, v42 + 1, 1, v52);
        v52 = v47;
      }

      v24 = v40 + 1;
      v43 = v52;
      *(v52 + 16) = v42 + 1;
      v44 = v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v45 = *(v50 + 72);
      sub_2174BFD48();
      v16 = v61;
    }
  }

  return v52;
}

uint64_t sub_2174BAE78(uint64_t a1)
{
  v2 = type metadata accessor for CloudPlaylist(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudPersonalRecommendation.Item();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB256B8, &qword_21775D770);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v50 = *(v16 - 1);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v51 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v49 = &v49 - v22;
  v52 = MEMORY[0x277D84F90];
  v53 = v10;
  v23 = *(a1 + 16);
  v63 = a1;
  v64 = v23;
  v24 = 0;
  v54 = v6;
  while (v64 != v24)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v26 = v63 + ((*(*(v25 - 1) + 80) + 32) & ~*(*(v25 - 1) + 80)) + *(*(v25 - 1) + 72) * v24;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_2174BFDF8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v66 = v24;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2172CB34C(v15, &qword_27CB256B8, &qword_21775D770);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v28 = v25[10];
      v29 = v26 + v25[9];
      v30 = *v29;
      v56 = *(v29 + 8);
      v57 = *(v29 + 16);
      v31 = *(v26 + v28 + 8);
      v60 = *(v26 + v28);
      v32 = v25[11];
      v58 = v30;
      v59 = v32;
      memcpy(v65, (v26 + v32), sizeof(v65));
      v33 = *(v26 + v25[12]);
      v34 = *(v26 + v25[13]);
      v35 = v25[15];
      v61 = *(v26 + v25[14]);
      v36 = v61;
      v55 = *(v26 + v35);
      v37 = &v15[v16[9]];
      v38 = v56;
      *v37 = v58;
      *(v37 + 1) = v38;
      v37[16] = v57;
      v39 = &v15[v16[10]];
      *v39 = v60;
      *(v39 + 1) = v31;
      memcpy(&v15[v16[11]], (v26 + v59), 0x180uLL);
      *&v15[v16[12]] = v33;
      *&v15[v16[13]] = v34;
      *&v15[v16[14]] = v36;
      *&v15[v16[15]] = v55;
      v10 = v53;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v62, type metadata accessor for CloudPlaylist);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    }

    else
    {
      sub_2174BFE50(v10, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2172CB34C(v15, &qword_27CB256B8, &qword_21775D770);
      v24 = v66 + 1;
    }

    else
    {
      v40 = v66;
      v61 = v16;
      sub_2174BFD48();
      sub_2174BFD48();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2220(0, *(v52 + 16) + 1, 1, v52);
        v52 = v46;
      }

      v42 = *(v52 + 16);
      v41 = *(v52 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_2172B2220(v41 > 1, v42 + 1, 1, v52);
        v52 = v47;
      }

      v24 = v40 + 1;
      v43 = v52;
      *(v52 + 16) = v42 + 1;
      v44 = v43 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v45 = *(v50 + 72);
      sub_2174BFD48();
      v16 = v61;
    }
  }

  return v52;
}

uint64_t sub_2174BB434(uint64_t a1)
{
  v2 = type metadata accessor for CloudAlbum(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v71 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudPersonalRecommendation.Item();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &unk_21775D5D0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25308, &unk_21775D5D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v58 = &v58 - v23;
  v24 = 0;
  v61 = MEMORY[0x277D84F90];
  v62 = v10;
  v25 = *(a1 + 16);
  v72 = a1;
  v73 = v25;
  v63 = v6;
  while (v73 != v24)
  {
    v26 = v17;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24948, &unk_21775A210);
    v28 = v72 + ((*(*(v27 - 1) + 80) + 32) & ~*(*(v27 - 1) + 80));
    v29 = *(*(v27 - 1) + 72);
    v75 = v24;
    v30 = v28 + v29 * v24;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v26);
    sub_2174BFDF8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2174BFE50(v10, type metadata accessor for CloudPersonalRecommendation.Item);
    }

    else
    {
      sub_2172CB34C(v16, &qword_27CB25308, v11);
      sub_2174BFDA0();
      sub_2174BFDF8();
      v31 = v27[10];
      v32 = (v30 + v27[9]);
      v33 = *v32;
      v66 = v32[1];
      v67 = *(v32 + 16);
      v34 = v30 + v31;
      v35 = *(v30 + v31);
      v36 = *(v34 + 8);
      v68 = v33;
      v69 = v35;
      v37 = v27[11];
      memcpy(v74, (v30 + v37), sizeof(v74));
      v38 = *(v30 + v27[12]);
      v39 = *(v30 + v27[13]);
      v40 = v27[15];
      v70 = *(v30 + v27[14]);
      v41 = v70;
      v64 = *(v30 + v40);
      v65 = v39;
      v42 = &v16[v26[9]];
      v43 = v66;
      *v42 = v68;
      *(v42 + 1) = v43;
      v42[16] = v67;
      v44 = &v16[v26[10]];
      *v44 = v69;
      *(v44 + 1) = v36;
      memcpy(&v16[v26[11]], (v30 + v37), 0x180uLL);
      *&v16[v26[12]] = v38;
      v45 = v64;
      *&v16[v26[13]] = v65;
      *&v16[v26[14]] = v41;
      *&v16[v26[15]] = v45;
      v10 = v62;
      sub_217751DE8();
      sub_217751DE8();
      sub_217284868();
      sub_217751DE8();
      v11 = &unk_21775D5D0;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2174BFE50(v71, type metadata accessor for CloudAlbum);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
    }

    v17 = v26;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v26);
    v47 = v75;
    if (EnumTagSinglePayload == 1)
    {
      sub_2172CB34C(v16, &qword_27CB25308, v11);
      v24 = v47 + 1;
    }

    else
    {
      v70 = v26;
      sub_2174BFD48();
      sub_2174BFD48();
      v48 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B225C(0, *(v61 + 16) + 1, 1, v61);
        v61 = v55;
      }

      v50 = *(v61 + 16);
      v49 = *(v61 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2172B225C(v49 > 1, v50 + 1, 1, v61);
        v61 = v56;
      }

      v51 = v75 + 1;
      v52 = v61;
      *(v61 + 16) = v50 + 1;
      v53 = v52 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v54 = *(v59 + 72);
      sub_2174BFD48();
      v11 = v48;
      v24 = v51;
      v17 = v70;
    }
  }

  return v61;
}

uint64_t sub_2174BB9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a5, a6, (a7 + 3));
  v9 = *(*(a5 - 8) + 8);

  return v9(a4, a5);
}

uint64_t sub_2174BBA70()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 4288) = v0;
  *(v1 + 4280) = v2;
  *(v1 + 4272) = v3;
  *(v1 + 194) = v4;
  *(v1 + 4264) = v5;
  *(v1 + 4256) = v6;
  v7 = sub_217751908();
  OUTLINED_FUNCTION_45_0(v7);
  v9 = *(v8 + 64);
  *(v1 + 4296) = OUTLINED_FUNCTION_28_7();
  v10 = sub_217751928();
  *(v1 + 4304) = v10;
  OUTLINED_FUNCTION_15_3(v10);
  *(v1 + 4312) = v11;
  v13 = *(v12 + 64);
  *(v1 + 4320) = OUTLINED_FUNCTION_28_7();
  v14 = sub_2177516D8();
  *(v1 + 4328) = v14;
  OUTLINED_FUNCTION_15_3(v14);
  *(v1 + 4336) = v15;
  v17 = *(v16 + 64);
  *(v1 + 4344) = OUTLINED_FUNCTION_28_7();
  v18 = sub_2177512F8();
  *(v1 + 4352) = v18;
  OUTLINED_FUNCTION_15_3(v18);
  *(v1 + 4360) = v19;
  v21 = *(v20 + 64);
  *(v1 + 4368) = OUTLINED_FUNCTION_28_7();
  v22 = type metadata accessor for MusicDataRequest();
  *(v1 + 4376) = v22;
  OUTLINED_FUNCTION_45_0(v22);
  v24 = *(v23 + 64);
  *(v1 + 4384) = OUTLINED_FUNCTION_28_7();
  v25 = type metadata accessor for MusicAPI.Endpoint();
  OUTLINED_FUNCTION_45_0(v25);
  v27 = *(v26 + 64) + 15;
  *(v1 + 4392) = swift_task_alloc();
  *(v1 + 4400) = swift_task_alloc();
  *(v1 + 4408) = swift_task_alloc();
  *(v1 + 4416) = swift_task_alloc();
  *(v1 + 4424) = swift_task_alloc();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  OUTLINED_FUNCTION_45_0(v28);
  v30 = *(v29 + 64);
  *(v1 + 4432) = OUTLINED_FUNCTION_28_7();
  v31 = sub_217751518();
  *(v1 + 4440) = v31;
  OUTLINED_FUNCTION_15_3(v31);
  *(v1 + 4448) = v32;
  v34 = *(v33 + 64);
  *(v1 + 4456) = OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_2174BBCD8()
{
  v1 = *(v0 + 4288);
  v2 = v1[1];
  if (!v2)
  {
    v7 = *(v0 + 4320);
    v8 = *(v0 + 4312);
    v9 = *(v0 + 4304);
    v10 = *(v0 + 4296);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_2171FF2C4(&qword_27CB241B0, MEMORY[0x277CC9AE8]);
    OUTLINED_FUNCTION_1_5();
    sub_217751618();
    sub_217751918();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_3_56();
    v45 = *(v0 + 4320);
    v46 = *(v0 + 4296);

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_13_3();

    __asm { BRAA            X1, X16 }
  }

  v3 = *v1;
  v4 = *(v0 + 4440);
  v5 = *(v0 + 4432);
  v6 = v1[1];
  sub_217751DE8();
  sub_2177514E8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v4) == 1)
  {
    sub_2172CB34C(*(v0 + 4432), &qword_27CB277B8, &unk_21776B220);
  }

  else
  {
    (*(*(v0 + 4448) + 32))(*(v0 + 4456), *(v0 + 4432), *(v0 + 4440));
    v13 = sub_217751438();
    if (*v14)
    {
      Array<A>.update(with:)(*(*(v0 + 4288) + 16));
    }

    v13(v0 + 4128, 0);
    v15 = *(v0 + 4456);
    v16 = *(v0 + 4448);
    v17 = *(v0 + 4440);
    v18 = sub_2177514F8();
    v5 = v19;
    (*(v16 + 8))(v15, v17);
    if (v5)
    {

      v3 = v18;
      v2 = v5;
    }
  }

  v20 = *(v0 + 4272);
  v21 = type metadata accessor for MusicPersonalRecommendation();
  *(v0 + 4464) = v21;
  v22 = *(v0 + 4288);
  v23 = *(v0 + 194);
  v24 = *(v0 + 4264);
  v25 = MEMORY[0x277D84F90];
  if (v21 == v20)
  {
    *(v0 + 216) = MEMORY[0x277D84F90];
    *(v0 + 224) = v25;
    OUTLINED_FUNCTION_542();
    v36 = OUTLINED_FUNCTION_56_12();
    v5(v36);

    v37 = *(v0 + 4040);
    __swift_project_boxed_opaque_existential_1((v0 + 4008), *(v0 + 4032));
    v38 = OUTLINED_FUNCTION_1_5();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v38, v39, v40);
    __swift_destroy_boxed_opaque_existential_1((v0 + 4008));
    *(v0 + 368) = v25;
    *(v0 + 376) = 0;
    *(v0 + 232) = v3;
    *(v0 + 240) = v2;
    *(v0 + 264) = 0;
    *(v0 + 280) = 0;
    *(v0 + 288) = 0;
    sub_21725EE54(v22 + 24, v0 + 328);
    *(v0 + 200) = v24;
    *(v0 + 208) = v23 & 1;
    memcpy((v0 + 2376), (v0 + 232), 0x59uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 4472) = v41;
    *v41 = v42;
    v41[1] = sub_2174BC1B8;
    v43 = *(v0 + 4416);
    OUTLINED_FUNCTION_13_3();

    return sub_21741B384();
  }

  else
  {
    *(v0 + 32) = MEMORY[0x277D84F90];
    *(v0 + 40) = v25;
    OUTLINED_FUNCTION_542();
    v26 = OUTLINED_FUNCTION_56_12();
    v5(v26);

    v27 = *(v0 + 4080);
    __swift_project_boxed_opaque_existential_1((v0 + 4048), *(v0 + 4072));
    v28 = OUTLINED_FUNCTION_1_5();
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v28, v29, v30);
    __swift_destroy_boxed_opaque_existential_1((v0 + 4048));
    *(v0 + 184) = v25;
    *(v0 + 192) = 0;
    *(v0 + 48) = v3;
    *(v0 + 56) = v2;
    *(v0 + 80) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    sub_21725EE54(v22 + 24, v0 + 144);
    *(v0 + 16) = v24;
    *(v0 + 24) = v23 & 1;
    memcpy((v0 + 2472), (v0 + 48), 0x59uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 4488) = v31;
    *v31 = v32;
    v31[1] = sub_2174BC530;
    v33 = *(v0 + 4408);
    OUTLINED_FUNCTION_13_3();

    return sub_217419E00();
  }
}

uint64_t sub_2174BC1B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 4472);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 4480) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174BC2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v23 = v17[553];
  v24 = v17[552];
  OUTLINED_FUNCTION_15_32();
  sub_2172CB34C((v17 + 25), &qword_27CB28680, &unk_21776DEA8);
  OUTLINED_FUNCTION_10_32();
  sub_2174BFDF8();
  OUTLINED_FUNCTION_93();
  sub_2174BFDF8();
  v25 = OUTLINED_FUNCTION_50_14();
  v26(v25);
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_12_25();
  sub_2174BFE50(v15, v27);
  OUTLINED_FUNCTION_647();
  v28 = OUTLINED_FUNCTION_27_25();
  v29(v28);
  v30 = v20 + *(a11 + 20);
  OUTLINED_FUNCTION_542();
  v31 = OUTLINED_FUNCTION_56_12();
  v18(v31);

  OUTLINED_FUNCTION_31_19();
  (*(v22 + 8))(v16, v21);
  sub_2174BFE50(v14, v19);
  OUTLINED_FUNCTION_26_26();
  v46 = v32 + *v32;
  v34 = *(v33 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v17[563] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_11_37(v35);
  OUTLINED_FUNCTION_120_0();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v46, a12, a13, a14);
}

uint64_t sub_2174BC458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  sub_2172CB34C(v14 + 200, &qword_27CB28680, &unk_21776DEA8);
  v15 = *(v14 + 4480);
  OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2174BC530()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 4488);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 4496) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174BC628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v23 = v17[553];
  v24 = v17[551];
  OUTLINED_FUNCTION_15_32();
  sub_2172CB34C((v17 + 2), &qword_27CB28630, &unk_21776DE80);
  OUTLINED_FUNCTION_10_32();
  sub_2174BFDF8();
  OUTLINED_FUNCTION_93();
  sub_2174BFDF8();
  v25 = OUTLINED_FUNCTION_50_14();
  v26(v25);
  OUTLINED_FUNCTION_453();
  OUTLINED_FUNCTION_12_25();
  sub_2174BFE50(v15, v27);
  OUTLINED_FUNCTION_647();
  v28 = OUTLINED_FUNCTION_27_25();
  v29(v28);
  v30 = v20 + *(a11 + 20);
  OUTLINED_FUNCTION_542();
  v31 = OUTLINED_FUNCTION_56_12();
  v18(v31);

  OUTLINED_FUNCTION_31_19();
  (*(v22 + 8))(v16, v21);
  sub_2174BFE50(v14, v19);
  OUTLINED_FUNCTION_26_26();
  v46 = v32 + *v32;
  v34 = *(v33 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v17[563] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_11_37(v35);
  OUTLINED_FUNCTION_120_0();

  return v41(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v46, a12, a13, a14);
}

uint64_t sub_2174BC7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  sub_2172CB34C(v14 + 16, &qword_27CB28630, &unk_21776DE80);
  v15 = *(v14 + 4496);
  OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2174BC8A8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 4504);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 4512) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174BC9A0()
{
  v1 = *(v0 + 4464);
  v2 = *(v0 + 4288);
  v3 = *(v0 + 4272);
  v4 = *(v0 + 4208);
  v5 = *(v0 + 4216);
  v419 = *(v0 + 4224);
  v6 = sub_217751348();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_217751338();
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  v10 = SharedRelatedItemStore.init()();
  v11 = v2 + 24;
  sub_2172CA838(v2 + 24, v0 + 3808);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 3808);
  v12 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v12);
  *(v0 + 1328) = 0;
  *(v0 + 1312) = 0u;
  *(v0 + 1296) = 0u;
  *(v0 + 1280) = 0u;
  *(v0 + 1264) = 0u;
  *(v0 + 1248) = 0u;
  *(v0 + 1232) = 0u;
  v13 = *(v0 + 4512);
  if (v1 == v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285C0, &unk_21776DE90);
    sub_2174BFB4C(&qword_27CB28658, &qword_27CB285C0, &unk_21776DE90, sub_2174BFBC8);
    OUTLINED_FUNCTION_44_15();
    if (!v13)
    {
      v385 = v4;
      v399 = v5;
      v409 = v10;
      v35 = (v0 + 3928);
      v36 = *(*(v0 + 4288) + 16);
      *(v0 + 3888) = 0u;
      *(v0 + 3904) = 0u;
      *(v0 + 3920) = 0;
      v37 = *(v0 + 952);
      v38 = *(v0 + 960);
      if (v38)
      {
        sub_2172CA838(v11, v0 + 2656);
        *(v0 + 2632) = v37;
        *(v0 + 2640) = v38;
        *(v0 + 2648) = v36;
        OUTLINED_FUNCTION_161_0();
        v39 = swift_allocObject();
        OUTLINED_FUNCTION_47_15(v39);
        sub_217751DE8();
        sub_217751DE8();
        sub_2172CB34C(v0 + 3888, &qword_27CB24188, &dword_217758930);
        *(v0 + 3888) = v39;
        *(v0 + 3912) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
        *(v0 + 3920) = &off_282969FA0;
      }

      v378 = (v0 + 1544);
      v40 = *(v0 + 3904);
      *(v0 + 3848) = *(v0 + 3888);
      *(v0 + 3864) = v40;
      *(v0 + 3880) = *(v0 + 3920);
      v41 = *(v0 + 912);
      v42 = swift_task_alloc();
      *(v42 + 16) = v409;
      *(v42 + 24) = v11;
      sub_2172E4D18();
      v413 = v43;

      sub_217284868();
      if (*(v0 + 3952))
      {

        sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
        v424 = *v35;
        v425 = *(v0 + 3944);
        v426 = *(v0 + 3960);
      }

      else
      {
        *(v0 + 4000) = 0;
        *(v0 + 3968) = 0u;
        *(v0 + 3984) = 0u;
        if (v38)
        {
          sub_2172CA838(v11, v0 + 3128);
          *(v0 + 3112) = v37;
          *(v0 + 3120) = v38;
          OUTLINED_FUNCTION_197();
          v96 = swift_allocObject();
          v97 = *(v0 + 3128);
          *(v96 + 16) = *(v0 + 3112);
          *(v96 + 32) = v97;
          *(v96 + 48) = *(v0 + 3144);
          *(v96 + 64) = *(v0 + 3160);
          sub_217751DE8();

          sub_2172CB34C(v0 + 3968, &qword_27CB24188, &dword_217758930);
          sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
          *(v0 + 3968) = v96;
          *(v0 + 3992) = &type metadata for MusicCatalogResourceIncrementalLoader;
          *(v0 + 4000) = &off_2829650B8;
        }

        else
        {

          sub_2172CB34C(v0 + 3848, &qword_27CB24188, &dword_217758930);
        }

        v424 = *(v0 + 3968);
        v425 = *(v0 + 3984);
        v426 = *(v0 + 4000);
        if (*(v0 + 3952))
        {
          sub_2172CB34C(v35, &qword_27CB24188, &dword_217758930);
        }
      }

      v374 = *(v0 + 4280);
      v163 = *(v0 + 4272);
      v164 = *(v0 + 896);
      v165 = *(v0 + 904);
      if (v165 == 1)
      {
        v166 = 0;
      }

      else
      {
        v166 = *(v0 + 896);
      }

      if (v165 == 1)
      {
        v167 = 0;
      }

      else
      {
        v167 = *(v0 + 904);
      }

      v168 = *(v0 + 920);
      v169 = *(v0 + 928);
      v170 = *(v0 + 1008);
      v171 = *(v0 + 1016);
      *(v0 + 1128) = v413;
      *(v0 + 1136) = 0;
      *(v0 + 1176) = v426;
      *(v0 + 1144) = v424;
      *(v0 + 1160) = v425;
      *(v0 + 1184) = v166;
      *(v0 + 1192) = v167;
      *(v0 + 1200) = v168;
      *(v0 + 1208) = v169;
      *(v0 + 1216) = v170;
      *(v0 + 1224) = v171;
      sub_217284868();
      sub_2171FB568(v164, v165);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28678, &qword_21776DEA0);
      type metadata accessor for MusicItemCollection();
      v172 = swift_dynamicCast();
      v173 = *(v0 + 4424);
      v174 = *(v0 + 4384);
      if ((v172 & 1) == 0)
      {
        v182 = *(v0 + 4280);
        v183 = *(v0 + 4272);
        v184 = *(v0 + 4256);
        *v378 = 0u;
        *(v0 + 1560) = 0u;
        *(v0 + 1576) = 0u;
        *(v0 + 1592) = 0u;
        *(v0 + 1608) = 0u;
        *(v0 + 1624) = 0u;
        *(v0 + 1640) = 0;
        v185 = sub_217752338();
        MusicItemCollection.init(arrayLiteral:)(v185, v183, v182, v184);

        sub_217275694(v385, v399);

        sub_2172CB34C(v0 + 1128, &qword_27CB28678, &qword_21776DEA0);
        v186 = sub_2177528F8();
        OUTLINED_FUNCTION_43(v186);
        v188 = *(v187 + 8);
        v188(v0 + 1232, v186);
        OUTLINED_FUNCTION_1_57();
        sub_2174BFE50(v173, v189);
        sub_2172CB34C(v0 + 896, &qword_27CB285C0, &unk_21776DE90);
        OUTLINED_FUNCTION_0_60();
        sub_2174BFE50(v174, v190);
        if (*(v0 + 1632))
        {
          v188(v378, v186);
        }

        goto LABEL_94;
      }

      v175 = *(v0 + 4256);

      sub_217275694(v385, v399);

      sub_2172CB34C(v0 + 1128, &qword_27CB28678, &qword_21776DEA0);
      v176 = sub_2177528F8();
      OUTLINED_FUNCTION_6_0(v176);
      (*(v177 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_1_57();
      sub_2174BFE50(v173, v178);
      sub_2172CB34C(v0 + 896, &qword_27CB285C0, &unk_21776DE90);
      OUTLINED_FUNCTION_0_60();
      sub_2174BFE50(v174, v179);
      v180 = v175;
      v181 = (v0 + 1544);
      goto LABEL_91;
    }

LABEL_9:
    v16 = *(v0 + 4424);
    v17 = *(v0 + 4384);
    v18 = *(v0 + 4280);
    v19 = *(v0 + 4272);

    sub_217275694(v4, v5);

    type metadata accessor for MusicItemCollection();
    v20 = OUTLINED_FUNCTION_25_30();
    OUTLINED_FUNCTION_6_0(v20);
    (*(v21 + 8))(v0 + 1232);
    OUTLINED_FUNCTION_1_57();
    sub_2174BFE50(v16, v22);
    OUTLINED_FUNCTION_0_60();
    sub_2174BFE50(v17, v23);
    v24 = *(v0 + 4456);
    v25 = *(v0 + 4432);
    v26 = *(v0 + 4424);
    v27 = *(v0 + 4416);
    v28 = *(v0 + 4408);
    v29 = *(v0 + 4400);
    v30 = *(v0 + 4392);
    v31 = *(v0 + 4384);
    v32 = *(v0 + 4368);
    v33 = *(v0 + 4344);
    v408 = *(v0 + 4320);
    v420 = *(v0 + 4296);

    OUTLINED_FUNCTION_20_0();
    goto LABEL_95;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25930, &unk_217797B70);
  sub_2174BFB4C(&qword_27CB28638, &qword_27CB25930, &unk_217797B70, sub_2174BFA64);
  OUTLINED_FUNCTION_44_15();
  if (v13)
  {
    goto LABEL_9;
  }

  v15 = *(v0 + 4272);
  v407 = v10;
  if (v15 == &type metadata for Album)
  {
    v324 = v11;
    v386 = v4;
    v393 = v9;
    v400 = v5;
    v44 = OUTLINED_FUNCTION_45_17();
    v45 = sub_2174BB434(v44);
    v47 = *(v0 + 408);
    v46 = *(v0 + 416);
    v49 = *(v0 + 424);
    v48 = *(v0 + 432);
    v51 = *(v0 + 440);
    v50 = *(v0 + 448);
    sub_217284868();
    v52 = *(v0 + 496);
    v53 = *(v0 + 504);
    v414 = v14;
    *(v0 + 640) = v14;
    v54 = v0 + 3488;
    v302 = v48;
    v309 = v9;
    *(v0 + 648) = v9;
    v55 = v53;
    *(v0 + 656) = v45;
    v349 = v46;
    v356 = v47;
    *(v0 + 664) = v47;
    v4 = v52;
    *(v0 + 672) = v46;
    *(v0 + 680) = v49;
    *(v0 + 688) = v48;
    *(v0 + 696) = v51;
    *(v0 + 704) = v50;
    *(v0 + 752) = v52;
    *(v0 + 760) = v53;
    v56 = *(v377 + 16);
    OUTLINED_FUNCTION_7_37();
    if (v50)
    {
      v57 = v324;
      sub_2172CA838(v324, v0 + 2784);
      *(v0 + 2760) = v51;
      *(v0 + 2768) = v50;
      *(v0 + 2776) = v56;
      OUTLINED_FUNCTION_161_0();
      v58 = swift_allocObject();
      v59 = OUTLINED_FUNCTION_18_26(v58);
      *(v60 + 48) = v59;
      *(v60 + 64) = v61;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v62 = v309;
      sub_2171FB568(v414, v309);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v63 = sub_2172CB34C(v54, &qword_27CB24188, &dword_217758930);
      *(v0 + 3488) = v51;
      *(v0 + 3512) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3520) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v62 = v309;
      sub_2171FB568(v414, v309);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v63 = sub_217751DE8();
      v57 = v324;
    }

    v115 = OUTLINED_FUNCTION_37_17(v63, v64, v65, v66, v67, v68, v69, v70, v280, v51, v50, v0 + 3488, v302, v309, 0, v324, v45, v339, v349, v356, v0 + 3448);
    OUTLINED_FUNCTION_36_18(v115, v116, v117, v118, v119, v120, v121, v122, v281, v287, v292, v297, v304, v312, v319, v326, v331, v341, v351, v358, v366, v0 + 3528, v4, v386, v393, v400, v407);
    v333 = sub_2172E49B0(sub_21733B438, v54, v332);

    sub_217284868();
    v5 = v403;
    v342 = v55;
    v123 = v62;
    if (*(v0 + 3552))
    {
      v124 = *(v0 + 4280);

      sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
      type metadata accessor for MusicItemCollection();
      v125 = OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_6_0(v125);
      (*(v126 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      v127 = *(v0 + 4280);
      if (v293)
      {
        v4 = v0 + 3000;
        sub_2172CA838(v57, v0 + 3016);
        *(v0 + 3000) = v288;
        *(v0 + 3008) = v293;
        OUTLINED_FUNCTION_197();
        v128 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v128);
        *(v129 + 64) = v130;
        sub_217751DE8();

        v55 = &dword_217758930;
        OUTLINED_FUNCTION_58_13(v0 + 3568);
        OUTLINED_FUNCTION_58_13(v367);
        OUTLINED_FUNCTION_57_15();
        v131 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v131);
        (*(v132 + 8))(v0 + 1232);
        *(v0 + 3568) = v57;
        *(v0 + 3592) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3600) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_57_15();
        v211 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v211);
        (*(v212 + 8))(v0 + 1232);
      }

      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_5_45();
      v5 = v403;
      if (*(v0 + 3552))
      {
        sub_2172CB34C(v372, &qword_27CB24188, &dword_217758930);
      }
    }

    v213 = *(v0 + 4280);
    if (v123 == 1)
    {
      v214 = 0;
    }

    else
    {
      v214 = v55;
    }

    if (v123 == 1)
    {
      v215 = 0;
    }

    else
    {
      v215 = v123;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 640, &qword_27CB24278, &unk_217759070);
    *(v0 + 2168) = v333;
    *(v0 + 2176) = v422;
    *(v0 + 2208) = OUTLINED_FUNCTION_33_19((v0 + 2177), v282, v288, v293, v298, v305, v313, v320, v327, v333, v342, v352, v359, v367, v372, v380, v389, v396, v403, v410, v414, v419, v422, *v423, *&v423[16]);
    *(v0 + 2224) = v214;
    *(v0 + 2232) = v215;
    *(v0 + 2240) = v363;
    *(v0 + 2248) = v57;
    *(v0 + 2256) = v383;
    *(v0 + 2264) = v346;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
    type metadata accessor for MusicItemCollection();
    goto LABEL_86;
  }

  if (v15 == &type metadata for Playlist)
  {
    v387 = v4;
    v394 = v9;
    v401 = v5;
    v71 = OUTLINED_FUNCTION_45_17();
    v72 = sub_2174BAE78(v71);
    v74 = *(v0 + 408);
    v73 = *(v0 + 416);
    v75 = *(v0 + 432);
    v310 = *(v0 + 424);
    v77 = *(v0 + 440);
    v76 = *(v0 + 448);
    sub_217284868();
    v78 = *(v0 + 496);
    v79 = *(v0 + 504);
    v415 = v14;
    *(v0 + 512) = v14;
    v317 = v9;
    *(v0 + 520) = v9;
    v80 = v79;
    *(v0 + 528) = v72;
    v350 = v73;
    v357 = v74;
    *(v0 + 536) = v74;
    v4 = v78;
    *(v0 + 544) = v73;
    v81 = v0 + 3288;
    *(v0 + 552) = v310;
    v311 = v75;
    *(v0 + 560) = v75;
    *(v0 + 568) = v77;
    *(v0 + 576) = v76;
    *(v0 + 624) = v78;
    *(v0 + 632) = v79;
    v82 = *(v377 + 16);
    OUTLINED_FUNCTION_7_37();
    if (v76)
    {
      sub_2172CA838(v11, v0 + 2720);
      *(v0 + 2696) = v77;
      *(v0 + 2704) = v76;
      *(v0 + 2712) = v82;
      OUTLINED_FUNCTION_161_0();
      v83 = swift_allocObject();
      v84 = OUTLINED_FUNCTION_18_26(v83);
      *(v85 + 48) = v84;
      *(v85 + 64) = v86;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v87 = v317;
      sub_2171FB568(v415, v317);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v88 = sub_2172CB34C(v81, &qword_27CB24188, &dword_217758930);
      *(v0 + 3288) = v77;
      *(v0 + 3312) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3320) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v87 = v317;
      sub_2171FB568(v415, v317);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v88 = sub_217751DE8();
    }

    v145 = OUTLINED_FUNCTION_37_17(v88, v89, v90, v91, v92, v93, v94, v95, v280, v286, v77, v76, v0 + 3288, v311, v317, 0, v72, v339, v350, v357, v0 + 3168);
    OUTLINED_FUNCTION_36_18(v145, v146, v147, v148, v149, v150, v151, v152, v283, v289, v294, v299, v306, v314, v321, v328, v334, v343, v353, v360, v368, v0 + 3248, v4, v387, v394, v401, v407);
    v336 = sub_2172E48FC(sub_21733B454, v81, v335);

    sub_217284868();
    v5 = v405;
    v344 = v80;
    v153 = v87;
    if (*(v0 + 3272))
    {
      v154 = *(v0 + 4280);

      sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
      type metadata accessor for MusicItemCollection();
      v155 = OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_6_0(v155);
      (*(v156 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_14_29();
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      v157 = *(v0 + 4280);
      if (v300)
      {
        v4 = v0 + 2944;
        sub_2172CA838(v11, v0 + 2960);
        *(v0 + 2944) = v295;
        *(v0 + 2952) = v300;
        OUTLINED_FUNCTION_197();
        v158 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v158);
        *(v159 + 64) = v160;
        sub_217751DE8();

        v80 = &dword_217758930;
        OUTLINED_FUNCTION_58_13(v0 + 4088);
        OUTLINED_FUNCTION_58_13(v369);
        OUTLINED_FUNCTION_57_15();
        v161 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v161);
        (*(v162 + 8))(v0 + 1232);
        *(v0 + 4088) = v11;
        *(v0 + 4112) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 4120) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v4, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_57_15();
        v221 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v221);
        (*(v222 + 8))(v0 + 1232);
      }

      OUTLINED_FUNCTION_14_29();
      OUTLINED_FUNCTION_5_45();
      v5 = v405;
      if (*(v0 + 3272))
      {
        sub_2172CB34C(v373, &qword_27CB24188, &dword_217758930);
      }
    }

    v223 = *(v0 + 4280);
    if (v153 == 1)
    {
      v224 = 0;
    }

    else
    {
      v224 = v80;
    }

    if (v153 == 1)
    {
      v225 = 0;
    }

    else
    {
      v225 = v153;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 512, &qword_27CB242C8, &unk_217758970);
    *(v0 + 1024) = v336;
    *(v0 + 1032) = v422;
    v226 = OUTLINED_FUNCTION_33_19((v0 + 1033), v284, v290, v295, v300, v307, v315, v322, v329, v336, v344, v354, v361, v369, v373, v381, v391, v397, v405, v411, v415, v419, v422, *v423, *&v423[16]);
    *(v227 + 31) = v226;
    *(v0 + 1080) = v224;
    *(v0 + 1088) = v225;
    *(v0 + 1096) = v364;
    *(v0 + 1104) = v11;
    *(v0 + 1112) = v384;
    *(v0 + 1120) = v347;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28230, &unk_21775CD50);
    type metadata accessor for MusicItemCollection();
    goto LABEL_86;
  }

  if (v15 == &type metadata for Station)
  {
    v395 = v9;
    v402 = v5;
    v325 = (v0 + 3608);
    v388 = *(v0 + 4288);
    v99 = *(v0 + 384);
    v98 = *(v0 + 392);
    v100 = *(v0 + 400);
    sub_2171FB568(v99, v98);
    v101 = sub_2174BA8BC(v100);
    v102 = *(v0 + 408);
    v416 = *(v0 + 416);
    v103 = *(v0 + 432);
    v303 = *(v0 + 424);
    v104 = *(v0 + 440);
    v365 = *(v0 + 448);
    sub_217284868();
    v106 = *(v0 + 496);
    v105 = *(v0 + 504);
    *(v0 + 768) = v99;
    v379 = v98;
    *(v0 + 776) = v98;
    v318 = v101;
    *(v0 + 784) = v101;
    v340 = v102;
    *(v0 + 792) = v102;
    v107 = v105;
    *(v0 + 800) = v416;
    v108 = (v0 + 3408);
    *(v0 + 808) = v303;
    *(v0 + 816) = v103;
    *(v0 + 824) = v104;
    *(v0 + 832) = v365;
    *(v0 + 880) = v106;
    *(v0 + 888) = v105;
    v109 = *(v388 + 16);
    OUTLINED_FUNCTION_7_37();
    v371 = v107;
    if (v365)
    {
      v388 = v4;
      sub_2172CA838(v11, v0 + 2848);
      *(v0 + 2824) = v104;
      *(v0 + 2832) = v365;
      *(v0 + 2840) = v109;
      OUTLINED_FUNCTION_161_0();
      v110 = swift_allocObject();
      v111 = OUTLINED_FUNCTION_18_26(v110);
      *(v112 + 48) = v111;
      *(v112 + 64) = v113;
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v99, v379);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2172CB34C(v108, &qword_27CB24188, &dword_217758930);
      *(v0 + 3408) = v104;
      *(v0 + 3432) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3440) = &off_282969FA0;
    }

    else
    {
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171FB568(v99, v379);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
    }

    v114 = v99;
    v191 = *(v0 + 3424);
    v192 = v0 + 3608;
    *v325 = *v108;
    *(v0 + 3624) = v191;
    *(v0 + 3640) = *(v0 + 3440);
    v193 = swift_task_alloc();
    OUTLINED_FUNCTION_36_18(v193, v194, v195, v196, v197, v198, v199, v200, v280, v286, v104, v0 + 3408, v103, 0, v318, v325, v106, v340, v0 + 3368, v99, v365, v371, v379, v388, v395, v402, v407);
    v201 = sub_2172E4848(sub_21733B5C0, v108, v323);

    sub_217284868();
    if (*(v0 + 3392))
    {
      v202 = *(v0 + 4280);

      sub_2172CB34C(v0 + 3608, &qword_27CB24188, &dword_217758930);
      type metadata accessor for MusicItemCollection();
      v203 = OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_6_0(v203);
      (*(v204 + 8))(v0 + 1232);
      OUTLINED_FUNCTION_5_45();
      v5 = v406;
      v205 = v416;
    }

    else
    {
      OUTLINED_FUNCTION_7_37();
      v392 = *(v0 + 4280);
      if (v370)
      {
        sub_2172CA838(v11, v0 + 3072);
        *(v0 + 3056) = v296;
        *(v0 + 3064) = v370;
        OUTLINED_FUNCTION_197();
        v206 = swift_allocObject();
        OUTLINED_FUNCTION_6_40(v206);
        *(v207 + 64) = v208;
        sub_217751DE8();

        sub_2172CB34C(v0 + 3328, &qword_27CB24188, &dword_217758930);
        v114 = v362;
        sub_2172CB34C(v192, &qword_27CB24188, &dword_217758930);
        type metadata accessor for MusicItemCollection();
        v209 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v209);
        (*(v210 + 8))(v0 + 1232);
        *(v0 + 3328) = v11;
        *(v0 + 3352) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3360) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v192, &qword_27CB24188, &dword_217758930);
        type metadata accessor for MusicItemCollection();
        v228 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v228);
        (*(v229 + 8))(v0 + 1232);
      }

      v205 = v416;
      OUTLINED_FUNCTION_5_45();
      v5 = v406;
      if (*(v0 + 3392))
      {
        sub_2172CB34C(v355, &qword_27CB24188, &dword_217758930);
      }
    }

    v230 = *(v0 + 4280);
    if (v382 == 1)
    {
      v231 = 0;
    }

    else
    {
      v231 = v114;
    }

    if (v382 == 1)
    {
      v232 = 0;
    }

    else
    {
      v232 = v382;
    }

    OUTLINED_FUNCTION_8_38();
    sub_2172CB34C(v0 + 768, &qword_27CB242F8, &qword_21775D6C0);
    *(v0 + 1752) = v201;
    *(v0 + 1760) = v422;
    *(v0 + 1792) = OUTLINED_FUNCTION_33_19((v0 + 1761), v285, v291, v296, v301, v308, v316, v323, v330, v337, v345, v355, v362, v370, v375, v382, v392, v398, v406, v412, v416, v419, v422, *v423, *&v423[16]);
    *(v0 + 1808) = v231;
    *(v0 + 1816) = v232;
    *(v0 + 1824) = v348;
    *(v0 + 1832) = v205;
    *(v0 + 1840) = v338;
    *(v0 + 1848) = v376;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255B8, &unk_21775D470);
    type metadata accessor for MusicItemCollection();
LABEL_86:
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_15();
    }

    v233 = OUTLINED_FUNCTION_48_14();
    memcpy(v233, v234, 0x68uLL);
    goto LABEL_89;
  }

  if (v15 == &type metadata for MusicPersonalRecommendation.Item)
  {
    v390 = v4;
    v404 = v5;
    v133 = *(*(v0 + 4288) + 16);
    *(v0 + 3760) = 0;
    *(v0 + 3728) = 0u;
    *(v0 + 3744) = 0u;
    v134 = *(v0 + 440);
    v135 = *(v0 + 448);
    if (v135)
    {
      sub_2172CA838(v11, v0 + 2592);
      *(v0 + 2568) = v134;
      *(v0 + 2576) = v135;
      *(v0 + 2584) = v133;
      OUTLINED_FUNCTION_161_0();
      v136 = swift_allocObject();
      OUTLINED_FUNCTION_47_15(v136);
      sub_217751DE8();
      sub_217751DE8();
      sub_2172CB34C(v0 + 3728, &qword_27CB24188, &dword_217758930);
      *(v0 + 3728) = v136;
      *(v0 + 3752) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
      *(v0 + 3760) = &off_282969FA0;
    }

    v137 = *(v0 + 3744);
    *(v0 + 3768) = *(v0 + 3728);
    *(v0 + 3784) = v137;
    *(v0 + 3800) = *(v0 + 3760);
    v138 = *(v0 + 400);
    v139 = swift_task_alloc();
    *(v139 + 16) = v10;
    *(v139 + 24) = v11;
    v140 = sub_2172E4E90(sub_21733C8E8, v139, v138);

    v141 = v0 + 3688;
    sub_217284868();
    if (*(v0 + 3712))
    {
      v142 = *(v0 + 4280);

      sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
      type metadata accessor for MusicItemCollection();
      v143 = OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_6_0(v143);
      (*(v144 + 8))(v0 + 1232);
      v427 = *(v0 + 3688);
      v428 = *(v0 + 3704);
      v429 = *(v0 + 3720);
      v5 = v404;
    }

    else
    {
      *(v0 + 3680) = 0;
      *(v0 + 3648) = 0u;
      *(v0 + 3664) = 0u;
      v216 = *(v0 + 4280);
      if (v135)
      {
        sub_2172CA838(v11, v0 + 2904);
        *(v0 + 2888) = v134;
        *(v0 + 2896) = v135;
        OUTLINED_FUNCTION_197();
        v217 = swift_allocObject();
        v218 = *(v0 + 2904);
        *(v217 + 16) = *(v0 + 2888);
        *(v217 + 32) = v218;
        *(v217 + 48) = *(v0 + 2920);
        *(v217 + 64) = *(v0 + 2936);
        sub_217751DE8();

        sub_2172CB34C(v0 + 3648, &qword_27CB24188, &dword_217758930);
        v141 = v0 + 3688;
        sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
        type metadata accessor for MusicItemCollection();
        v219 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v219);
        (*(v220 + 8))(v0 + 1232);
        *(v0 + 3648) = v217;
        *(v0 + 3672) = &type metadata for MusicCatalogResourceIncrementalLoader;
        *(v0 + 3680) = &off_2829650B8;
      }

      else
      {

        sub_2172CB34C(v0 + 3768, &qword_27CB24188, &dword_217758930);
        type metadata accessor for MusicItemCollection();
        v267 = OUTLINED_FUNCTION_25_30();
        OUTLINED_FUNCTION_6_0(v267);
        (*(v268 + 8))(v0 + 1232);
      }

      v5 = v404;
      v427 = *(v0 + 3648);
      v428 = *(v0 + 3664);
      v429 = *(v0 + 3680);
      if (*(v0 + 3712))
      {
        sub_2172CB34C(v141, &qword_27CB24188, &dword_217758930);
      }
    }

    v269 = *(v0 + 4280);
    v270 = *(v0 + 384);
    v271 = *(v0 + 392);
    if (v271 == 1)
    {
      v272 = 0;
    }

    else
    {
      v272 = *(v0 + 384);
    }

    if (v271 == 1)
    {
      v273 = 0;
    }

    else
    {
      v273 = *(v0 + 392);
    }

    v274 = *(v0 + 408);
    v275 = *(v0 + 416);
    v276 = *(v0 + 496);
    v277 = *(v0 + 504);
    *&v423[7] = v427;
    *&v423[23] = v428;
    *&v423[39] = v429;
    *(v0 + 1960) = v140;
    *(v0 + 1968) = 0;
    *(v0 + 1969) = *v423;
    *(v0 + 1985) = *&v423[16];
    *(v0 + 2000) = *&v423[31];
    *(v0 + 2016) = v272;
    *(v0 + 2024) = v273;
    *(v0 + 2032) = v274;
    *(v0 + 2040) = v275;
    *(v0 + 2048) = v276;
    *(v0 + 2056) = v277;
    sub_2171FB568(v270, v271);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25928, &unk_21775D9A0);
    type metadata accessor for MusicItemCollection();
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_38_15();
    }

    v278 = OUTLINED_FUNCTION_48_14();
    memcpy(v278, v279, 0x68uLL);
    v4 = v390;
  }

  else
  {
  }

LABEL_89:
  v235 = *(v0 + 4280);
  v236 = *(v0 + 4272);
  type metadata accessor for MusicItemCollection();
  v237 = OUTLINED_FUNCTION_25_30();
  v238 = *(v237 - 8);
  (*(v238 + 16))(v0 + 1440, v0 + 1232, v237);
  v239 = *(v0 + 4424);
  v240 = *(v0 + 4384);
  if (!*(v0 + 1528))
  {
    v247 = *(v0 + 4280);
    v417 = *(v0 + 4384);
    v248 = *(v0 + 4272);
    v249 = v4;
    v250 = *(v0 + 4256);
    v251 = sub_217752338();
    MusicItemCollection.init(arrayLiteral:)(v251, v248, v247, v250);

    sub_217275694(v249, v5);

    v252 = *(v238 + 8);
    v253 = OUTLINED_FUNCTION_48_14();
    v252(v253);
    OUTLINED_FUNCTION_1_57();
    sub_2174BFE50(v239, v254);
    sub_2172CB34C(v0 + 384, &qword_27CB25930, &unk_217797B70);
    OUTLINED_FUNCTION_0_60();
    sub_2174BFE50(v417, v255);
    if (*(v0 + 1528))
    {
      (v252)(v0 + 1440, v237);
    }

    goto LABEL_94;
  }

  v241 = *(v0 + 4256);

  sub_217275694(v4, v5);

  v242 = *(v238 + 8);
  v243 = OUTLINED_FUNCTION_48_14();
  v244(v243);
  OUTLINED_FUNCTION_1_57();
  sub_2174BFE50(v239, v245);
  sub_2172CB34C(v0 + 384, &qword_27CB25930, &unk_217797B70);
  OUTLINED_FUNCTION_0_60();
  sub_2174BFE50(v240, v246);
  v181 = (v0 + 1440);
  v180 = v241;
LABEL_91:
  memcpy(v180, v181, 0x68uLL);
LABEL_94:
  v256 = *(v0 + 4456);
  v257 = *(v0 + 4432);
  v258 = *(v0 + 4424);
  v259 = *(v0 + 4416);
  v260 = *(v0 + 4408);
  v261 = *(v0 + 4400);
  v262 = *(v0 + 4392);
  v263 = *(v0 + 4384);
  v264 = *(v0 + 4368);
  v265 = *(v0 + 4344);
  v418 = *(v0 + 4320);
  v421 = *(v0 + 4296);

  OUTLINED_FUNCTION_20_0();
LABEL_95:

  return v34();
}

uint64_t sub_2174BE708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[553];
  v16 = v14[548];
  OUTLINED_FUNCTION_1_57();
  sub_2174BFE50(v17, v18);
  OUTLINED_FUNCTION_0_60();
  sub_2174BFE50(v16, v19);
  v20 = v14[564];
  OUTLINED_FUNCTION_3_56();
  OUTLINED_FUNCTION_24_24();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

void sub_2174BE7E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a2);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v15 = *(v5 + 64);
  if (v15)
  {
    v16 = *(v5 + 56);
    (*(v11 + 16))(v14);
    sub_217751DE8();
    sub_217751DE8();
    sub_2174BB9F8(v16, v15, a1, v14, a3, a4, v20);
    OUTLINED_FUNCTION_161_0();
    v17 = swift_allocObject();
    v18 = v20[1];
    v17[1] = v20[0];
    v17[2] = v18;
    v19 = v20[3];
    v17[3] = v20[2];
    v17[4] = v19;
    sub_2172CB34C(a5, &qword_27CB24188, &dword_217758930);
    *a5 = v17;
    *(a5 + 24) = &type metadata for MusicPersonalRecommendationIncrementalLoader;
    *(a5 + 32) = &off_282969FA0;
  }
}

uint64_t sub_2174BE948()
{
  OUTLINED_FUNCTION_169();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = v1[2];
  v7 = v0[2];
  sub_217270404();
  if (v8)
  {
    v9 = v1[6];
    v10 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v9);
    v11 = *(v10 + 112);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
    return v11(v0 + 3, v12, v9, v10) & 1;
  }

  return 0;
}

uint64_t sub_2174BEA18(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    v4 = *v2;
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_21727D208(a1, v2[2]);
  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  return (*(v6 + 120))(a1, v5, v6);
}

uint64_t sub_2174BEAB8()
{
  sub_2177531E8();
  sub_2174BEA18(v1);
  return sub_217753238();
}

uint64_t sub_2174BEAF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_217282D8C;

  return sub_2174BBA70();
}

uint64_t sub_2174BEBCC()
{
  sub_2177531E8();
  sub_2174BEA18(v1);
  return sub_217753238();
}

uint64_t sub_2174BEC2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21722560C();
  *a2 = result;
  return result;
}

uint64_t sub_2174BEC5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217225658(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2174BEC90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21722560C();
  *a1 = result;
  return result;
}

uint64_t sub_2174BECB8(uint64_t a1)
{
  v2 = sub_2174BF64C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2174BECF4(uint64_t a1)
{
  v2 = sub_2174BF64C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2174BED30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285D8, &unk_21776DC20);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174BF64C();
  sub_2177532C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 1;
  v21[0] = sub_217752E68();
  v21[1] = v11;
  v12 = a1[3];
  v13 = a1[4];
  v14 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  Decoder.dataRequestConfiguration.getter(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
  sub_2174BF708(&qword_27CB285F0);
  sub_217752EA8();
  sub_2174BEF8C(v22);
  v17 = v16;
  v18 = OUTLINED_FUNCTION_1_37();
  v19(v18);
  v21[2] = v17;
  sub_2174BF6A0(v21, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2174BF6D8(v21);
}

void sub_2174BEF8C(uint64_t a1)
{
  v31 = sub_217751428();
  v2 = OUTLINED_FUNCTION_0_0(v31);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2, v7);
  OUTLINED_FUNCTION_1();
  v32 = a1;
  v33 = v9 - v8;
  v10 = 0;
  v13 = *(a1 + 64);
  v12 = a1 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v18 = MEMORY[0x277D84F90];
  if ((v15 & v11) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v19 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return;
    }

    v16 = *(v12 + 8 * v19);
    ++v10;
    if (v16)
    {
      v10 = v19;
      do
      {
LABEL_8:
        v20 = (v10 << 10) | (16 * __clz(__rbit64(v16)));
        v21 = (*(v32 + 48) + v20);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v32 + 56) + v20);
        v25 = *v24;
        v26 = v24[1];
        sub_217751DE8();
        sub_217751DE8();
        sub_2177513F8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2172B1A50(0, *(v18 + 16) + 1, 1, v18);
          v18 = v29;
        }

        v28 = *(v18 + 16);
        v27 = *(v18 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2172B1A50(v27 > 1, v28 + 1, 1, v18);
          v18 = v30;
        }

        v16 &= v16 - 1;
        *(v18 + 16) = v28 + 1;
        (*(v4 + 32))(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v28, v33, v31);
      }

      while (v16);
    }
  }

  __break(1u);
}

uint64_t sub_2174BF1B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285F8, &unk_21776DC30);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2174BF64C();
  sub_2177532F8();
  v18 = *v3;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  sub_21725E964();
  OUTLINED_FUNCTION_28_24();
  if (!v2)
  {
    *&v18 = sub_2174BF360(*(v3 + 2));
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB285E8, &qword_2177733C0);
    sub_2174BF708(&qword_27CB28600);
    OUTLINED_FUNCTION_28_24();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_2174BF360(uint64_t a1)
{
  v2 = sub_217751428();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_217751DC8();
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v15 = *(v5 + 16);
  v14 = v5 + 16;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v49 = (v14 - 8);
  v50 = v15;
  v47 = v2;
  v48 = *(v14 + 56);
  v46 = v11;
  while (1)
  {
    v50(v11, v16, v2);
    v17 = sub_217751418();
    if (!v18)
    {
      v34 = *v49;
      v35 = OUTLINED_FUNCTION_1_5();
      v36(v35);
      goto LABEL_13;
    }

    v19 = v18;
    v51 = v17;
    v20 = sub_217751408();
    v22 = v21;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = sub_21763246C(v20, v22);
    if (__OFADD__(v12[2], (v24 & 1) == 0))
    {
      break;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28608, &qword_21777B260);
    if (sub_217752CB8())
    {
      v27 = sub_21763246C(v20, v22);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_17;
      }

      v25 = v27;
    }

    if (v26)
    {

      v29 = (v12[7] + 16 * v25);
      v30 = v29[1];
      *v29 = v51;
      v29[1] = v19;

      v31 = *v49;
      v11 = v46;
      v2 = v47;
      v32 = OUTLINED_FUNCTION_1_5();
      v33(v32);
    }

    else
    {
      v12[(v25 >> 6) + 8] |= 1 << v25;
      v37 = (v12[6] + 16 * v25);
      *v37 = v20;
      v37[1] = v22;
      v38 = (v12[7] + 16 * v25);
      *v38 = v51;
      v38[1] = v19;
      v39 = *v49;
      v11 = v46;
      v2 = v47;
      v40 = OUTLINED_FUNCTION_1_5();
      v41(v40);
      v42 = v12[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_16;
      }

      v12[2] = v44;
    }

LABEL_13:
    v16 += v48;
    if (!--v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_217753178();
  __break(1u);
  return result;
}

unint64_t sub_2174BF64C()
{
  result = qword_27CB285E0;
  if (!qword_27CB285E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB285E0);
  }

  return result;
}

uint64_t sub_2174BF708(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB285E8, &qword_2177733C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicPersonalRecommendationIncrementalLoader.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2174BF864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2174BF8A4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2174BF908()
{
  result = qword_27CB28610;
  if (!qword_27CB28610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28610);
  }

  return result;
}

unint64_t sub_2174BF960()
{
  result = qword_27CB28618;
  if (!qword_27CB28618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28618);
  }

  return result;
}

unint64_t sub_2174BF9B8()
{
  result = qword_27CB28620;
  if (!qword_27CB28620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28620);
  }

  return result;
}

unint64_t sub_2174BFA10()
{
  result = qword_27CB28628;
  if (!qword_27CB28628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28628);
  }

  return result;
}

unint64_t sub_2174BFA64()
{
  result = qword_27CB28640;
  if (!qword_27CB28640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24948, &unk_21775A210);
    sub_2171FF2C4(&qword_27CB28648, type metadata accessor for CloudPersonalRecommendation.Item);
    sub_2171FF2C4(&qword_27CB28650, type metadata accessor for CloudPersonalRecommendation.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28640);
  }

  return result;
}

uint64_t sub_2174BFB4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2174BFBC8()
{
  result = qword_27CB28660;
  if (!qword_27CB28660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB244A8, &unk_217758980);
    sub_2174BFC54();
    sub_2174BFCA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28660);
  }

  return result;
}

unint64_t sub_2174BFC54()
{
  result = qword_27CB28668;
  if (!qword_27CB28668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28668);
  }

  return result;
}

unint64_t sub_2174BFCA8()
{
  result = qword_27CB28670;
  if (!qword_27CB28670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28670);
  }

  return result;
}

uint64_t sub_2174BFD48()
{
  OUTLINED_FUNCTION_169();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_43(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_93();
  v7(v6);
  return v0;
}

uint64_t sub_2174BFDA0()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_2174BFDF8()
{
  OUTLINED_FUNCTION_169();
  v2 = v1(0);
  OUTLINED_FUNCTION_43(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v0;
}

uint64_t sub_2174BFE50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_37(uint64_t a1)
{
  *(a1 + 8) = sub_2174BC8A8;
  v2 = *(v1 + 4384);
  return v1 + 4208;
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return sub_2174BFDA0();
}

__n128 OUTLINED_FUNCTION_18_26(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_26_26()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 3208));
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = v2 + 104;
  v4 = *(v2 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_45_17()
{
  v3 = v0[536];
  v1 = v0[50];
  sub_2171FB568(v0[48], v0[49]);
  return v1;
}

__n128 OUTLINED_FUNCTION_47_15(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 48) = result;
  *(a1 + 64) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_12()
{
  v2 = *v0;
  v3 = v0[1];
}

uint64_t OUTLINED_FUNCTION_57_15()
{

  return type metadata accessor for MusicItemCollection();
}

uint64_t OUTLINED_FUNCTION_58_13(uint64_t a1)
{

  return sub_2172CB34C(a1, v1, v2);
}

uint64_t AnyPropertyProvider.type.getter()
{
  OUTLINED_FUNCTION_40_17();
  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_33_20();
  v3(v2);
  v5 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(*(v4 + 8) + 48))(v5);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t AnyPropertyProvider.identifierSet.getter()
{
  OUTLINED_FUNCTION_40_17();
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_33_20();
  return v3(v2);
}

uint64_t AnyPropertyProvider.href.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 56);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t AnyPropertyProvider.rawAttributes.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 64);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t AnyPropertyProvider.rawRelationships.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 72);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t AnyPropertyProvider.rawAssociations.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t AnyPropertyProvider.rawMetadata.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 88);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t PropertyProvider.eraseToAnyPropertyProvider()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_41_0(a1);
  v5 = *(v4 + 16);

  return v5();
}

uint64_t static AnyPropertyProvider.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 104);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_2174C041C()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(qword_280BE35B8, type metadata accessor for PlaylistPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t PropertyProvider<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13, v14);
  v16 = v41 - v15;
  OUTLINED_FUNCTION_0();
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v24 = v23;
  v26 = *(v25 + 64);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v31 = v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v22, a1, a3, v29);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, a2);
    v33 = *(v24 + 32);
    v34 = OUTLINED_FUNCTION_48_2();
    v35(v34);
    v36 = sub_217751F08();
    (*(v24 + 8))(v31, a2);
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, a2);
    (*(v10 + 8))(v16, v8);
    v36 = 0;
  }

  return v36 & 1;
}

uint64_t sub_2174C0710()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE5E50, type metadata accessor for MusicVideoPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t AnyPropertyProvider.staticPropertyProvider.getter()
{
  OUTLINED_FUNCTION_40_17();
  v1 = *(v0 + 96);
  v2 = OUTLINED_FUNCTION_33_20();
  return v3(v2);
}

uint64_t AnyPropertyProvider.subscript.getter(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  (*(v7 + 96))(v11, v6, v7);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(*(v9 + 8) + 8))(a1, *(v5 + 208), a2, v8);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_2174C0F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_171();
  v103 = v23;
  v99 = v24;
  v100 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v90 = v32;
  v34 = v33;
  v36 = v35;
  v93 = *v33;
  v94 = v37;
  v38 = sub_2177528F8();
  v39 = OUTLINED_FUNCTION_0_0(v38);
  v101 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39, v43);
  OUTLINED_FUNCTION_31();
  v89 = v44;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v45, v46);
  OUTLINED_FUNCTION_99();
  v92 = v47;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v48, v49);
  OUTLINED_FUNCTION_99();
  v91 = v50;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v88 - v53;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v88 - v57;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v29);
  v62 = *(v27 + 16);
  v102 = v22;
  v105 = v31;
  v62(v31, v27);
  v104 = v34;
  OUTLINED_FUNCTION_49_17();
  v63 = OUTLINED_FUNCTION_48_15();
  v64 = v103;
  LOBYTE(v34) = sub_2173DDC78(v63, v65, v66);
  v97 = v64;
  v67 = v29;
  v68 = v101;

  if (v34)
  {
    (*(v27 + 8))(v104, *(v93 + 208), v67, v105, v27);
    (*(v68 + 8))(v36, v38);
    (*(v68 + 32))(v36, v58, v38);
  }

  v95 = v27;
  v96 = v36;
  v69 = v68;
  v70 = *(v68 + 16);
  v70(v54, v36, v38);
  v71 = v67;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, 1, v67);
  v73 = *(v69 + 8);
  v103 = v38;
  v98 = v73;
  v73(v54, v38);
  if (EnumTagSinglePayload == 1)
  {
    v74 = v91;
    v75 = v97;
    sub_2174C2C24(v104, v99, v105, v71, v94, v95, v100, a22, v91);
    v76 = v71;
    v77 = v75;
    if (v75)
    {
      v98(v96, v103);
      goto LABEL_11;
    }

    v78 = a22;
    v79 = v96;
    v80 = v103;
    v98(v96, v103);
    (*(v101 + 32))(v79, v74, v80);
  }

  else
  {
    v78 = a22;
    v76 = v71;
    v79 = v96;
    v77 = v97;
  }

  v81 = v92;
  v70(v92, v79, v103);
  v82 = v76;
  v83 = __swift_getEnumTagSinglePayload(v81, 1, v76);
  v84 = OUTLINED_FUNCTION_44_16();
  v85 = v98;
  (v98)(v84);
  if (v83 == 1)
  {
    v86 = v89;
    sub_2174C44CC(v104, v90, v99, v105, v82, *(v93 + 208), v94, v95, v89, v100, a21, v78);
    if (v77)
    {
      v85(v79, v103);
    }

    else
    {
      v87 = v103;
      v85(v79, v103);
      (*(v101 + 32))(v79, v86, v87);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C1380()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3570, type metadata accessor for RadioShowPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

void sub_2174C13F4()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v90 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v89 = v10;
  v11 = sub_217753268();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  OUTLINED_FUNCTION_81();
  v91 = type metadata accessor for CloudArtist.Attributes(0);
  OUTLINED_FUNCTION_41_0(v91);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_81();
  v102 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_150();
  v92 = v26;
  sub_2172A497C(v101);
  OUTLINED_FUNCTION_54_13();
  swift_bridgeObjectRetain_n();
  v27 = OUTLINED_FUNCTION_67_13();
  v31 = sub_2176B5914(v27, v28, v29, v30, v9, v7);
  v32 = v0;
  OUTLINED_FUNCTION_66_11(v31);
  v88 = v5;
  if (v52)
  {
    v33 = v31[4];
    v34 = v31[5];
    v35 = v31[6];
    v36 = v31[7];
    sub_217751DE8();

    v38 = MEMORY[0x21CEA2320](v33, v34, v35, v36);
    v39 = v37;
  }

  else
  {

    v38 = v9;
    v39 = v7;
  }

  v40 = v2;
  v41 = v2[3];
  v42 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v41);
  (*(v42 + 96))(v95, v41, v42);
  v43 = *&v95[24];
  __swift_project_boxed_opaque_existential_1(v95, *&v95[24]);
  OUTLINED_FUNCTION_26_1();
  v45 = (*(v44 + 64))(v43);
  __swift_destroy_boxed_opaque_existential_1(v95);
  if (!*(v45 + 16))
  {

    goto LABEL_9;
  }

  sub_21763246C(v38, v39);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
LABEL_9:
    v90(v48);
    v50 = type metadata accessor for CloudArtist(0);
    sub_2174C7220(v92 + *(v50 + 20), v102);
    *&v95[24] = v91;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v95);
    sub_2174C7220(v102, boxed_opaque_existential_0);
    sub_217753248();
    sub_217753258();
    sub_217752C58();
    while (1)
    {
      sub_217752D78();
      if (!*&v95[40])
      {
        break;
      }

      *v94 = *v95;
      *&v94[16] = *&v95[16];
      *&v94[32] = *&v95[32];
      if (*&v95[8])
      {
        v52 = *v94 == v38 && *&v94[8] == v39;
        if (v52 || (sub_217753058() & 1) != 0)
        {

          v96 = *v94;
          v97 = *&v94[16];
          v98 = *&v94[32];

          if (*(&v98 + 1))
          {
            v53 = sub_217751378();
            OUTLINED_FUNCTION_235_0(v53);
            sub_217751368();
            sub_2172CA838(v88, v95);
            JSONEncoder.dataRequestConfiguration.setter(v95);
            sub_2174C72E0(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes);
            sub_217751358();
            v32 = v0;
            if (v0)
            {

              v54 = OUTLINED_FUNCTION_31_20();
              v55(v54);
              sub_2174C7284(v102);
              sub_2171F0790(v92, &qword_27CB24728, &qword_217758CB0);
              sub_2171F0790(&v96, &qword_27CB286A8, &unk_21776DFA0);
              goto LABEL_28;
            }

            v74 = sub_217751348();
            OUTLINED_FUNCTION_235_0(v74);
            sub_217751338();
            sub_2172CA838(v88, v95);
            JSONDecoder.dataRequestConfiguration.setter(v95);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            OUTLINED_FUNCTION_7_0();
            sub_2173A4628(v75, v76);
            sub_217751308();
            v77 = *v95;
            OUTLINED_FUNCTION_30_23();
            v78 = OUTLINED_FUNCTION_53_15();
            sub_2173A21D4(v78, v79, v80, v81, v82, v77, v83);

            v84 = OUTLINED_FUNCTION_44_16();
            sub_217275694(v84, v85);

            v86 = OUTLINED_FUNCTION_31_20();
            v87(v86);
            sub_2174C7284(v102);
            sub_2171F0790(v92, &qword_27CB24728, &qword_217758CB0);
            sub_2171F0790(&v96, &qword_27CB286A8, &unk_21776DFA0);
            memcpy(v93, v95, 0x221uLL);
            memcpy(v94, v95, sizeof(v94));
            if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v94) == 1)
            {
              v49 = v95;
              goto LABEL_7;
            }

            v73 = v93;
LABEL_26:
            memcpy(v99, v73, sizeof(v99));
            memcpy(v89, v99, 0x221uLL);
            goto LABEL_29;
          }

LABEL_22:
          v56 = OUTLINED_FUNCTION_31_20();
          v57(v56);
          sub_2174C7284(v102);
          sub_2171F0790(v92, &qword_27CB24728, &qword_217758CB0);
          sub_2171F0790(&v96, &qword_27CB286A8, &unk_21776DFA0);
          memcpy(v100, v101, 0x221uLL);
          v32 = v0;
          goto LABEL_23;
        }
      }

      sub_2171F0790(v94, &qword_27CB286B0, &unk_21776E190);
    }

    v96 = 0u;
    v97 = 0u;
    v98 = 0u;

    goto LABEL_22;
  }

  v49 = v101;
LABEL_7:
  memcpy(v100, v49, 0x221uLL);
LABEL_23:
  v58 = v2[3];
  v59 = v40[4];
  v60 = OUTLINED_FUNCTION_201_2();
  __swift_project_boxed_opaque_existential_1(v60, v61);
  OUTLINED_FUNCTION_71_13();
  v62 = OUTLINED_FUNCTION_17_24();
  v63(v62);
  v64 = *&v94[24];
  __swift_project_boxed_opaque_existential_1(v94, *&v94[24]);
  OUTLINED_FUNCTION_26_1();
  v66 = (*(v65 + 64))(v64);
  __swift_destroy_boxed_opaque_existential_1(v94);
  OUTLINED_FUNCTION_30_23();
  v67 = OUTLINED_FUNCTION_53_15();
  sub_2173A21D4(v67, v68, v69, v70, v71, v66, v72);
  if (!v32)
  {
    sub_2171F0790(v100, &qword_27CB24400, &unk_21775E9A0);

    v73 = v95;
    goto LABEL_26;
  }

  sub_2171F0790(v100, &qword_27CB24400, &unk_21775E9A0);

LABEL_28:

LABEL_29:
  OUTLINED_FUNCTION_170();
}

void sub_2174C1BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  a19 = v28;
  a20 = v29;
  v172 = v26;
  v173 = v30;
  v32 = v31;
  v154 = v33;
  v160 = v34;
  v161 = v35;
  v149 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = a25;
  v171 = a24;
  v44 = a21;
  v45 = a22;
  v157 = sub_217753268();
  v46 = OUTLINED_FUNCTION_0_0(v157);
  v156 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46, v50);
  OUTLINED_FUNCTION_81();
  v169 = v51;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_0(AssociatedTypeWitness);
  v170 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55, v56);
  OUTLINED_FUNCTION_150();
  v181 = v57;
  v159 = type metadata accessor for CloudResource();
  OUTLINED_FUNCTION_0_0(v159);
  v158 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v61, v62);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_44_11(v63);
  v167 = sub_2177528F8();
  v64 = OUTLINED_FUNCTION_0_0(v167);
  v166 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64, v68);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v69, v70);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v71, v72);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v73, v74);
  v165 = &v146 - v75;
  OUTLINED_FUNCTION_5_5();
  v163 = v44;
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v44);
  OUTLINED_FUNCTION_55_13();
  swift_bridgeObjectRetain_n();
  v79 = OUTLINED_FUNCTION_67_13();
  v83 = sub_2176B5914(v79, v80, v81, v82, v40, v38);
  v168 = v27;
  OUTLINED_FUNCTION_66_11(v83);
  v164 = v38;
  v155 = v42;
  v153 = v32;
  v152 = v40;
  if (v99)
  {
    v84 = v83[4];
    v85 = v83[5];
    v86 = v83[6];
    v87 = v83[7];
    sub_217751DE8();

    v40 = MEMORY[0x21CEA2320](v84, v85, v86, v87);
    v89 = v88;
  }

  else
  {

    v89 = v38;
  }

  v90 = *(v171 + 64);
  v91 = OUTLINED_FUNCTION_76_9();
  v92 = *(v90(v91) + 16);
  v150 = v90;
  if (v92)
  {
    sub_21763246C(v40, v89);
    v94 = v93;

    if (v94)
    {
LABEL_22:
      v117 = v166;
      v118 = v162;
      v119 = v165;
      v120 = v167;
      (*(v166 + 16))(v162, v165, v167);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v118, 1, v163);
      v122 = *(v117 + 8);
      v122(v118, v120);
      if (EnumTagSinglePayload == 1)
      {
        v123 = OUTLINED_FUNCTION_76_9();
        v150(v123, v171);
        v124 = v151;
        OUTLINED_FUNCTION_64_16();
        v125 = v168;
        v154();
        v122(v119, v120);

        if (!v125)
        {
          v126 = *(v117 + 32);
          v126(v119, v124, v120);
          v126(v155, v119, v120);
        }
      }

      else
      {
        (*(v117 + 32))(v155, v119, v120);
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  v147 = a26;
  v146 = a23;
  v161(v95);
  (*(v43 + 144))(v45, v43);
  v96 = AssociatedTypeWitness;
  *(&v178 + 1) = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v177);
  (*(v170 + 16))(boxed_opaque_existential_0, v181, v96);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!v176[5])
    {

      v177 = 0u;
      v178 = 0u;
      v179 = 0u;

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_56_13();
    if (v98)
    {
      v99 = v175[0] == v40 && v98 == v89;
      if (v99 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(v175, &qword_27CB286B0, &unk_21776E190);
  }

  OUTLINED_FUNCTION_68_13();

  if (!*(&v179 + 1))
  {
LABEL_21:
    v112 = OUTLINED_FUNCTION_5_46();
    v113(v112);
    OUTLINED_FUNCTION_12_1(&a12);
    v114(v181, AssociatedTypeWitness);
    v115 = OUTLINED_FUNCTION_12_26();
    v116(v115);
    sub_2171F0790(&v177, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_22;
  }

  v100 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v100);
  v101 = sub_217751368();
  v102 = v146;
  v103 = v147;
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v146, v147, v176);
  JSONEncoder.dataRequestConfiguration.setter(v176);
  v104 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v105 = v168;
  v106 = sub_217751358();
  if (v105)
  {

    v108 = OUTLINED_FUNCTION_5_46();
    v109(v108);
    OUTLINED_FUNCTION_12_1(&a12);
    v111 = v181;
    goto LABEL_29;
  }

  v161 = v101;
  v127 = v106;
  v128 = v107;
  v129 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v129);
  v168 = 0;
  sub_217751338();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v102, v103, v176);
  JSONDecoder.dataRequestConfiguration.setter(v176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v130, v131);
  v132 = v168;
  sub_217751308();
  if (!v132)
  {
    OUTLINED_FUNCTION_64_16();
    v154();
    v168 = 0;

    sub_217275694(v127, v128);

    v138 = OUTLINED_FUNCTION_5_46();
    v139(v138);
    OUTLINED_FUNCTION_12_1(&a12);
    v140(v181, AssociatedTypeWitness);
    v141 = OUTLINED_FUNCTION_12_26();
    v142(v141);
    v143 = v166;
    v144 = v165;
    v145 = v167;
    (*(v166 + 8))(v165, v167);
    sub_2171F0790(&v177, &qword_27CB286A8, &unk_21776DFA0);
    (*(v143 + 32))(v144, v148, v145);
    goto LABEL_22;
  }

  sub_217275694(v127, v128);

  v133 = OUTLINED_FUNCTION_5_46();
  v134(v133);
  OUTLINED_FUNCTION_12_1(&a12);
  v111 = v181;
LABEL_29:
  v110(v111, v104);
  v135 = OUTLINED_FUNCTION_12_26();
  v136(v135);
  OUTLINED_FUNCTION_12_1(&v180);
  v137(v165, v167);
  sub_2171F0790(&v177, &qword_27CB286A8, &unk_21776DFA0);
LABEL_30:

  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_170();
}

void sub_2174C2668()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_2172A497C(__src);
  if (!*(v4 + 16) || (v9 = sub_21763246C(*(v6 + 16), *(v6 + 24)), (v10 & 1) == 0) || (v11 = *(v4 + 56) + 24 * v9, *(v11 + 16) != 5))
  {
    v17 = __src;
LABEL_7:
    memcpy(__dst, v17, sizeof(__dst));
    memcpy(v8, __dst, 0x221uLL);
    goto LABEL_8;
  }

  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v14);
  sub_217751DE8();
  sub_217751368();
  sub_2172CA838(v2, v23);
  JSONEncoder.dataRequestConfiguration.setter(v23);
  v23[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2173A4628(&qword_280BE2390, sub_21733AC44);
  v15 = sub_217751358();
  if (!v0)
  {
    v18 = v15;
    v19 = v16;
    sub_21726A608(v13, v12, 5);
    v20 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v20);
    sub_217751338();
    sub_2172CA838(v2, v23);
    JSONDecoder.dataRequestConfiguration.setter(v23);
    type metadata accessor for SharedRelatedItemStore();
    swift_allocObject();
    v21 = SharedRelatedItemStore.init()();
    JSONDecoder.sharedRelatedItemStore.setter(v21);
    sub_2174C7444();
    sub_217751308();

    sub_217275694(v18, v19);

    nullsub_1(v23, v22);
    v17 = v23;
    goto LABEL_7;
  }

  sub_21726A608(v13, v12, 5);
LABEL_8:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C28A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v46 = a6;
  v15 = sub_2177528F8();
  v48 = *(v15 - 8);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v38 - v18;
  result = __swift_storeEnumTagSinglePayload(a7, 1, 1, a4);
  if (*(a2 + 16))
  {
    result = sub_21763246C(*(a1 + 16), *(a1 + 24));
    if (v21)
    {
      v22 = *(a2 + 56) + 24 * result;
      if (*(v22 + 16) == 5)
      {
        v45 = a3;
        v24 = *v22;
        v23 = *(v22 + 8);
        v43 = a7;
        v44 = v23;
        v25 = sub_217751378();
        v26 = *(v25 + 48);
        v27 = *(v25 + 52);
        swift_allocObject();
        sub_217751DE8();
        v28 = sub_217751368();
        v41 = a5;
        v42 = a8;
        MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(a5, a8, v47);
        JSONEncoder.dataRequestConfiguration.setter(v47);
        v47[0] = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_2173A4628(&qword_280BE2390, sub_21733AC44);
        v39 = sub_217751358();
        v40 = v29;
        if (v8)
        {
          (*(v48 + 8))(v43, v15);

          return sub_21726A608(v24, v44, 5);
        }

        else
        {
          v38 = v28;
          sub_21726A608(v24, v44, 5);
          v30 = sub_217751348();
          v31 = *(v30 + 48);
          v32 = *(v30 + 52);
          swift_allocObject();
          sub_217751338();
          MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v41, v42, v47);
          JSONDecoder.dataRequestConfiguration.setter(v47);
          type metadata accessor for SharedRelatedItemStore();
          swift_allocObject();
          v33 = SharedRelatedItemStore.init()();
          JSONDecoder.sharedRelatedItemStore.setter(v33);
          v35 = v39;
          v34 = v40;
          sub_217751308();
          v36 = v43;
          v37 = v48;
          (*(v48 + 8))(v43, v15);

          sub_217275694(v35, v34);

          __swift_storeEnumTagSinglePayload(v19, 0, 1, a4);
          return (*(v37 + 32))(v36, v19, v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2174C2C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a1 + 64);
  if (v14 == 1)
  {
    v15 = (*(a6 + 72))(a3, a6);
LABEL_10:
    sub_2174C28A4(a1, v15, a2, a4, a5, a7, a9, a8);
  }

  if (v14 == 2 && !*(a1 + 56) && *(a1 + 48) == 1)
  {
    v15 = (*(a6 + 80))(a3, a6);
    goto LABEL_10;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
  type metadata accessor for AnyMusicProperty();
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
  result = sub_217752D08();
  __break(1u);
  return result;
}

void sub_2174C2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, _BYTE *a30)
{
  OUTLINED_FUNCTION_171();
  v82 = v30;
  v73 = v31;
  v74 = v32;
  v71 = v33;
  v72 = v34;
  v36 = v35;
  v70 = v37;
  v68 = v35;
  v69 = a30;
  v80 = a29;
  v81 = v38;
  v67 = a27;
  v79 = a26;
  v77 = a28;
  v78 = a25;
  v75 = a22;
  OUTLINED_FUNCTION_0();
  v40 = v39;
  v42 = *(v41 + 64);
  v76 = a24;
  v66 = a23;
  MEMORY[0x28223BE20](v43, v44);
  v65 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v46 = v45;
  v48 = *(v47 + 64);
  v51 = MEMORY[0x28223BE20](v49, v50);
  v52 = &v65 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v46 + 16))(v52, v51);
  v53 = v75;
  (*(v40 + 16))(&v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v75);
  v54 = (*(v46 + 80) + 112) & ~*(v46 + 80);
  v55 = (v48 + *(v40 + 80) + v54) & ~*(v40 + 80);
  v56 = swift_allocObject();
  v57 = v81;
  *(v56 + 2) = v82;
  *(v56 + 3) = v57;
  *(v56 + 4) = a21;
  *(v56 + 5) = v53;
  v58 = v76;
  *(v56 + 6) = a23;
  *(v56 + 7) = v58;
  v59 = v79;
  *(v56 + 8) = v78;
  *(v56 + 9) = v59;
  v60 = v77;
  *(v56 + 10) = v67;
  *(v56 + 11) = v60;
  v61 = v69;
  *(v56 + 12) = v80;
  *(v56 + 13) = v61;
  (*(v46 + 32))(&v56[v54], v52, a21);
  v62 = v75;
  (*(v40 + 32))(&v56[v55], v65, v75);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2174C3A50(v71, v68, sub_2174C7360, v56, v72, v73, v74, v82, v70, v81, AssociatedTypeWitness, v62, v66, v76, v78, v79, AssociatedConformanceWitness, v77, v80, v61);

  OUTLINED_FUNCTION_170();
}

void sub_2174C30F0()
{
  OUTLINED_FUNCTION_171();
  v29 = v1;
  v3 = v2;
  v30 = v4;
  v6 = v5;
  v32 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_150();
  v31 = v13;
  sub_2172A497C(v37);
  v14 = (v3 + 32);
  v15 = *(v3 + 16);
  while (1)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = 0xEF736D75626C612DLL;
    v17 = 0x6465727574616566;
    switch(*v14)
    {
      case 1:
        v17 = 0xD000000000000012;
        v16 = 0x80000002177AA5A0;
        break;
      case 2:
        break;
      case 3:
        v17 = 0xD000000000000012;
        v16 = 0x80000002177AA5D0;
        break;
      case 4:
        v18 = 1819047270;
        goto LABEL_12;
      case 5:
        v17 = 0x722D74736574616CLL;
        v16 = 0xEE00657361656C65;
        break;
      case 6:
        v18 = 1702259052;
LABEL_12:
        v17 = v18 | 0x626C612D00000000;
        v16 = 0xEB00000000736D75;
        break;
      case 7:
        v17 = 0x2D72616C696D6973;
        v16 = 0xEF73747369747261;
        break;
      case 8:
        v16 = 0xE700000000000000;
        v17 = 0x73656C676E6973;
        break;
      case 9:
        v17 = 0xD000000000000010;
        v16 = 0x80000002177AA630;
        break;
      case 0xA:
        v16 = 0xE900000000000073;
        v17 = 0x676E6F732D706F74;
        break;
      default:
        v17 = 0xD000000000000011;
        v16 = 0x80000002177AA580;
        break;
    }

    if (v17 == *(v6 + 16) && v16 == *(v6 + 24))
    {
      break;
    }

    v20 = sub_217753058();

    ++v14;
    --v15;
    if (v20)
    {
      goto LABEL_23;
    }
  }

LABEL_23:
  v30(v21);
  swift_getAtKeyPath();
  if (v34[2] == 1)
  {
    sub_2171F0790(v31, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(v34, &qword_27CB24AB0, &qword_217759088);
LABEL_25:

    memcpy(v36, v37, sizeof(v36));
LABEL_26:
    memcpy(v32, v36, 0x221uLL);
    goto LABEL_30;
  }

  memcpy(v35, v34, sizeof(v35));
  v22 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v22);
  sub_217751368();
  sub_2172CA838(v29, v34);
  JSONEncoder.dataRequestConfiguration.setter(v34);
  sub_21733C27C();
  v23 = sub_217751358();
  if (!v0)
  {
    v33 = v23;
    v38 = v24;
    v25 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v25);
    sub_217751338();
    sub_2172CA838(v29, v34);
    JSONDecoder.dataRequestConfiguration.setter(v34);
    type metadata accessor for SharedRelatedItemStore();
    swift_allocObject();
    v26 = SharedRelatedItemStore.init()();
    JSONDecoder.sharedRelatedItemStore.setter(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_7_0();
    sub_2173A4628(v27, v28);
    OUTLINED_FUNCTION_79_12();
    sub_2174C2668();

    sub_217275694(v33, v38);

    sub_21728463C(v35);
    sub_2171F0790(v31, &qword_27CB24728, &qword_217758CB0);

    memcpy(v36, v34, sizeof(v36));
    goto LABEL_26;
  }

  sub_21728463C(v35);
  sub_2171F0790(v31, &qword_27CB24728, &qword_217758CB0);

LABEL_30:
  OUTLINED_FUNCTION_170();
}

void sub_2174C35FC()
{
  OUTLINED_FUNCTION_171();
  v32 = v1;
  v29 = v2;
  v4 = v3;
  v30 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11, v12);
  OUTLINED_FUNCTION_150();
  v14 = v13;
  sub_2172A497C(v36);
  v15 = *(v4 + 16);
  v16 = (v4 + 32);
  while (1)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    v17 = 0xE600000000000000;
    v18 = 0x736D75626C61;
    switch(*v16)
    {
      case 1:
        v17 = 0xE700000000000000;
        v18 = 0x676F6C61746163;
        break;
      case 2:
        v18 = 0xD000000000000018;
        v17 = 0x80000002177AA650;
        break;
      case 3:
        v18 = 0x7365726E6567;
        break;
      case 4:
        v18 = 0x69762D636973756DLL;
        v17 = 0xEC000000736F6564;
        break;
      case 5:
        v17 = 0xE900000000000073;
        v18 = 0x7473696C79616C70;
        break;
      case 6:
        v17 = 0xE700000000000000;
        v18 = 0x6E6F6974617473;
        break;
      default:
        break;
    }

    if (v18 == *(v7 + 16) && v17 == *(v7 + 24))
    {
      break;
    }

    v20 = sub_217753058();

    ++v16;
    --v15;
    if (v20)
    {
      goto LABEL_18;
    }
  }

LABEL_18:
  v30(v21);
  swift_getAtKeyPath();
  if (v33[2] == 1)
  {
    sub_2171F0790(v14, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(v33, &qword_27CB24328, &unk_21775D440);
LABEL_20:

    memcpy(v35, v36, sizeof(v35));
LABEL_21:
    memcpy(v32, v35, 0x221uLL);
    goto LABEL_25;
  }

  memcpy(v34, v33, sizeof(v34));
  v22 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v22);
  sub_217751368();
  sub_2172CA838(v29, v33);
  JSONEncoder.dataRequestConfiguration.setter(v33);
  sub_21733C2D0();
  v23 = sub_217751358();
  if (!v0)
  {
    v31 = v23;
    v37 = v24;
    v25 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v25);
    sub_217751338();
    sub_2172CA838(v29, v33);
    JSONDecoder.dataRequestConfiguration.setter(v33);
    type metadata accessor for SharedRelatedItemStore();
    swift_allocObject();
    v26 = SharedRelatedItemStore.init()();
    JSONDecoder.sharedRelatedItemStore.setter(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_7_0();
    sub_2173A4628(v27, v28);
    OUTLINED_FUNCTION_79_12();
    sub_2174C2668();

    sub_217275694(v31, v37);

    sub_21726A204(v34);
    sub_2171F0790(v14, &qword_27CB24728, &qword_217758CB0);

    memcpy(v35, v33, sizeof(v35));
    goto LABEL_21;
  }

  sub_21726A204(v34);
  sub_2171F0790(v14, &qword_27CB24728, &qword_217758CB0);

LABEL_25:
  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C3A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{
  v93 = a8;
  v83 = a7;
  v84 = a6;
  v88 = a5;
  v81 = a4;
  v82 = a3;
  v75 = a2;
  v91 = a1;
  v96 = a9;
  v95 = a20;
  v92 = a15;
  v94 = a18;
  v87 = a19;
  v111 = a12;
  v90 = a16;
  v77 = sub_2177528F8();
  v76 = *(v77 - 8);
  v20 = *(v76 + 64);
  MEMORY[0x28223BE20](v77, v21);
  v71 = &v70[-v22];
  v74 = sub_2177528F8();
  v73 = *(v74 - 8);
  v23 = *(v73 + 64);
  MEMORY[0x28223BE20](v74, v24);
  v80 = &v70[-v25];
  v79 = *(a14 - 8);
  v26 = *(v79 + 64);
  MEMORY[0x28223BE20](v27, v28);
  v78 = &v70[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = type metadata accessor for CloudResource();
  v85 = *(v86 - 8);
  v30 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v31);
  v33 = &v70[-v32];
  v34 = sub_2177528F8();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v70[-v38];
  __swift_storeEnumTagSinglePayload(v96, 1, 1, a10);
  v110 = v88;
  v97 = v93;
  v98 = a10;
  v88 = a10;
  v99 = a11;
  v100 = v111;
  v101 = a13;
  v102 = a14;
  v103 = v92;
  v104 = v90;
  v40 = v94;
  v105 = a17;
  v106 = v94;
  v107 = v87;
  v108 = v95;
  v109 = v91;
  sub_217752418();
  swift_getWitnessTable();
  v41 = v39;
  v42 = v89;
  sub_217752198();
  if (__swift_getEnumTagSinglePayload(v39, 1, a13) == 1)
  {
    return (*(v35 + 8))(v39, v34);
  }

  v72 = v34;
  v82();
  v44 = v80;
  v84(v33);
  if (__swift_getEnumTagSinglePayload(v44, 1, a14) == 1)
  {
    (*(v85 + 8))(v33, v86);
    (*(v35 + 8))(v39, v72);
    return (*(v73 + 8))(v44, v74);
  }

  else
  {
    v89 = v33;
    v45 = v79;
    v46 = *(v79 + 32);
    v87 = v42;
    v47 = v78;
    v46(v78, v44, a14);
    v48 = sub_217751378();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_217751368();
    v52 = v75;
    MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v111, v40, &v110);
    JSONEncoder.dataRequestConfiguration.setter(&v110);
    v53 = v87;
    v54 = sub_217751358();
    v56 = v72;
    if (v53)
    {

      (*(v45 + 8))(v47, a14);
      (*(v85 + 8))(v89, v86);
      (*(v76 + 8))(v96, v77);
      return (*(v35 + 8))(v41, v56);
    }

    else
    {
      v84 = v51;
      v87 = a14;
      v95 = v41;
      v57 = v54;
      v58 = v55;
      v59 = sub_217751348();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_217751338();
      v62 = v94;
      MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v111, v94, &v110);
      JSONDecoder.dataRequestConfiguration.setter(&v110);
      type metadata accessor for SharedRelatedItemStore();
      swift_allocObject();
      v63 = SharedRelatedItemStore.init()();
      JSONDecoder.sharedRelatedItemStore.setter(v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_2173A4628(&qword_280BE2388, sub_21733AD70);
      sub_217751308();
      v64 = v52;
      v65 = v71;
      sub_2174C28A4(v91, v110, v64, v88, v111, v90, v71, v62);
      v66 = v78;

      sub_217275694(v57, v58);

      (*(v79 + 8))(v66, v87);
      (*(v85 + 8))(v89, v86);
      v67 = v76;
      v68 = v96;
      v69 = v77;
      (*(v76 + 8))(v96, v77);
      (*(v35 + 8))(v95, v72);
      return (*(v67 + 32))(v68, v65, v69);
    }
  }
}

uint64_t sub_2174C4454(uint64_t a1, uint64_t a2)
{
  if (sub_217753318() == *(a2 + 16) && v3 == *(a2 + 24))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217753058();
  }

  return v5 & 1;
}

uint64_t sub_2174C44CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v87 = a7;
  v88 = a4;
  v80 = a2;
  v18 = sub_2177528F8();
  v83 = *(v18 - 8);
  v84 = v18;
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v73 = (&v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22, v23);
  v72 = (&v69 - v24);
  v85 = a9;
  __swift_storeEnumTagSinglePayload(a9, 1, 1, a5);
  v25 = *(a1 + 64);
  v81 = a3;
  v86 = a10;
  v77 = a1;
  v75 = a5;
  if (v25 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v76 = (*(AssociatedConformanceWitness + 160))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v79 = &v69;
    MEMORY[0x28223BE20](v76, v28);
    v29 = a8;
    v69 = a11;
    KeyPath = swift_getKeyPath();
    v78 = &v69;
    MEMORY[0x28223BE20](KeyPath, v31);
    v73 = &v69 - 12;
    v79 = v32;
    v33 = swift_getAssociatedTypeWitness();
    v34 = swift_getAssociatedTypeWitness();
    v67 = swift_getAssociatedConformanceWitness();
    v68 = swift_getAssociatedConformanceWitness();
    v66 = a12;
    v65 = v69;
    v63 = v29;
    v64 = v86;
    v61 = v33;
    v62 = v34;
    v59 = a6;
    v60 = v87;
    v35 = sub_2174C775C;
    v37 = v72;
    v36 = v73;
    v38 = v77;
    v39 = v80;
    v40 = v81;
    v41 = v76;
  }

  else
  {
    v72 = a12;
    v74 = a8;
    if (v25 != 2 || *(a1 + 56) || *(a1 + 48) != 1)
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
      v91 = a1;
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
      result = sub_217752D08();
      __break(1u);
      return result;
    }

    v42 = swift_getAssociatedTypeWitness();
    v43 = swift_getAssociatedConformanceWitness();
    v76 = (*(v43 + 176))(v42, v43);
    v79 = &v69;
    MEMORY[0x28223BE20](v76, v44);
    v70 = a6;
    v45 = v86;
    v46 = v72;
    v47 = swift_getKeyPath();
    v78 = &v69;
    MEMORY[0x28223BE20](v47, v48);
    v71 = &v69 - 12;
    v79 = v49;
    v50 = swift_getAssociatedTypeWitness();
    v51 = swift_getAssociatedTypeWitness();
    v52 = swift_getAssociatedConformanceWitness();
    v53 = v76;
    v67 = v52;
    v68 = swift_getAssociatedConformanceWitness();
    v65 = a11;
    v66 = v46;
    v64 = v45;
    v62 = v51;
    v63 = v74;
    v61 = v50;
    v60 = v87;
    v59 = v70;
    v35 = sub_2174C7498;
    v37 = v73;
    v38 = v77;
    v39 = v80;
    v40 = v81;
    v41 = v53;
    v36 = v71;
  }

  v54 = v82;
  sub_2174C2DEC(v38, v39, v40, v41, v35, v36, v88, v75, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);
  if (v54)
  {
    (*(v83 + 8))(v85, v84);
  }

  else
  {
    v57 = v83;
    v56 = v84;
    v58 = v85;
    (*(v83 + 8))(v85, v84);

    return (*(v57 + 32))(v58, v37, v56);
  }
}

void sub_2174C4BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void (*a28)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_171();
  v73 = v28;
  v77 = v29;
  v71 = v30;
  v72 = v31;
  v33 = v32;
  v66 = v35;
  v67 = v34;
  v68 = a27;
  v69 = v36;
  v70 = a28;
  v64 = v32;
  v65 = a24;
  v75 = a23;
  v76 = v37;
  OUTLINED_FUNCTION_0();
  v39 = v38;
  v41 = *(v40 + 64);
  v74 = a25;
  v63 = a26;
  MEMORY[0x28223BE20](v42, v43);
  v62 = &v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v45 = v44;
  v47 = *(v46 + 64);
  v50 = MEMORY[0x28223BE20](v48, v49);
  v51 = &v61 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v45 + 16))(v51, v52, a21, v50);
  (*(v39 + 16))(&v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0), v33, a22);
  v53 = (*(v45 + 80) + 72) & ~*(v45 + 80);
  v54 = (v47 + *(v39 + 80) + v53) & ~*(v39 + 80);
  v55 = swift_allocObject();
  v56 = v75;
  v57 = v76;
  *(v55 + 2) = v77;
  *(v55 + 3) = v57;
  *(v55 + 4) = a21;
  *(v55 + 5) = a22;
  v58 = v65;
  *(v55 + 6) = v56;
  *(v55 + 7) = v58;
  *(v55 + 8) = v74;
  (*(v45 + 32))(&v55[v53], v51, a21);
  (*(v39 + 32))(&v55[v54], v62, a22);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v70(v67, v69, v64, v68, v55, v71, v72, v77, v76, AssociatedTypeWitness, a22, v75, AssociatedConformanceWitness, v74);

  OUTLINED_FUNCTION_69_13();
  OUTLINED_FUNCTION_170();
}

void sub_2174C4E54()
{
  OUTLINED_FUNCTION_171();
  v2 = v1;
  v84 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v81 = v12;
  v13 = sub_217753268();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v82 = v15;
  v83 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  OUTLINED_FUNCTION_81();
  v85 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  OUTLINED_FUNCTION_45_0(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v79 - v25;
  sub_2172A497C(v99);
  OUTLINED_FUNCTION_54_13();
  v89 = v27;
  swift_bridgeObjectRetain_n();
  v28 = OUTLINED_FUNCTION_67_13();
  v32 = sub_2176B5914(v28, v29, v30, v31, v11, v9);
  OUTLINED_FUNCTION_66_11(v32);
  v87 = v9;
  v88 = v11;
  v80 = v7;
  if (v51)
  {
    v33 = v32[4];
    v34 = v32[5];
    v86 = v26;
    v36 = v32[6];
    v35 = v32[7];
    sub_217751DE8();

    v11 = MEMORY[0x21CEA2320](v33, v34, v36, v35);
    v38 = v37;
    v26 = v86;
  }

  else
  {

    v38 = v9;
  }

  v39 = v2[3];
  v40 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v39);
  (*(v40 + 96))(v95, v39, v40);
  v41 = *&v95[24];
  __swift_project_boxed_opaque_existential_1(v95, *&v95[24]);
  OUTLINED_FUNCTION_26_1();
  v43 = (*(v42 + 88))(v41);
  __swift_destroy_boxed_opaque_existential_1(v95);
  if (*(v43 + 16))
  {
    sub_21763246C(v11, v38);
    v45 = v44;

    if (v45)
    {
LABEL_25:
      memcpy(v98, v99, 0x221uLL);
      v56 = v0;
      v57 = v87;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5(v46);
  v47 = *&v26[*(type metadata accessor for CloudArtist(0) + 32)];
  if (v47 == 1)
  {
    v48 = &qword_27CB24728;
    v49 = &qword_217758CB0;
    v50 = v26;
LABEL_24:
    sub_2171F0790(v50, v48, v49);
    goto LABEL_25;
  }

  v86 = v26;
  v96 = v47;
  *&v95[24] = &type metadata for CloudArtist.Metadata;
  *v95 = v47;
  sub_217221020(v47);
  sub_217751DE8();
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v95[40])
    {

      v92 = 0u;
      v93 = 0u;
      v94 = 0u;

      goto LABEL_23;
    }

    v91[0] = *v95;
    v91[1] = *&v95[16];
    v91[2] = *&v95[32];
    if (*&v95[8])
    {
      v51 = *&v91[0] == v11 && *(&v91[0] + 1) == v38;
      if (v51 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(v91, &qword_27CB286B0, &unk_21776E190);
  }

  v92 = v91[0];
  v93 = v91[1];
  v94 = v91[2];

  if (!*(&v94 + 1))
  {
LABEL_23:
    v54 = OUTLINED_FUNCTION_50_15();
    v55(v54);

    sub_2171F0790(v86, &qword_27CB24728, &qword_217758CB0);
    v48 = &qword_27CB286A8;
    v49 = &unk_21776DFA0;
    v50 = &v92;
    goto LABEL_24;
  }

  v52 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v52);
  sub_217751368();
  v53 = v80;
  sub_2172CA838(v80, v95);
  JSONEncoder.dataRequestConfiguration.setter(v95);
  sub_2174C74A0();
  sub_217751358();
  if (v0)
  {

    v73 = OUTLINED_FUNCTION_50_15();
    v74(v73);

    sub_2171F0790(v86, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0790(&v92, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_28;
  }

  v67 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v67);
  sub_217751338();
  sub_2172CA838(v53, v95);
  JSONDecoder.dataRequestConfiguration.setter(v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v68, v69);
  sub_217751308();
  v56 = 0;
  OUTLINED_FUNCTION_27_26();
  v70 = v87;
  sub_2173A21D4(v88, v87, v71, 0xE800000000000000, 1, v72, v95);

  v75 = OUTLINED_FUNCTION_48_2();
  sub_217275694(v75, v76);

  v77 = OUTLINED_FUNCTION_50_15();
  v78(v77);

  sub_2171F0790(v86, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0790(&v92, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v90, v95, 0x221uLL);
  memcpy(v91, v95, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v91) != 1)
  {

    v66 = v90;
    goto LABEL_30;
  }

  memcpy(v98, v95, 0x221uLL);
  v57 = v70;
LABEL_26:
  v58 = v88;
  v59 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_71_13();
  v60 = OUTLINED_FUNCTION_17_24();
  v61(v60);
  v62 = *(&v91[1] + 1);
  __swift_project_boxed_opaque_existential_1(v91, *(&v91[1] + 1));
  OUTLINED_FUNCTION_26_1();
  v64 = (*(v63 + 88))(v62);
  __swift_destroy_boxed_opaque_existential_1(v91);
  OUTLINED_FUNCTION_27_26();
  sub_2173A21D4(v58, v57, v65, 0xE800000000000000, 1, v64, v95);
  if (!v56)
  {
    sub_2171F0790(v98, &qword_27CB24400, &unk_21775E9A0);

    v66 = v95;
LABEL_30:
    memcpy(v97, v66, sizeof(v97));
    memcpy(v81, v97, 0x221uLL);
    goto LABEL_31;
  }

  sub_2171F0790(v98, &qword_27CB24400, &unk_21775E9A0);

LABEL_28:

LABEL_31:
  OUTLINED_FUNCTION_170();
}

void sub_2174C55D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171();
  a19 = v28;
  a20 = v29;
  v180 = v26;
  v181 = v30;
  v161 = v31;
  v33 = v32;
  v165 = v34;
  v166 = v35;
  v154[1] = v36;
  v38 = v37;
  v40 = v39;
  v164 = v41;
  v42 = a25;
  v179 = a24;
  v43 = a21;
  v44 = a22;
  v157 = sub_217753268();
  v45 = OUTLINED_FUNCTION_0_0(v157);
  v156 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45, v49);
  OUTLINED_FUNCTION_81();
  v168 = v50;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v155 = sub_2177528F8();
  OUTLINED_FUNCTION_0_0(v155);
  v154[2] = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v55, v56);
  v58 = v154 - v57;
  v177 = AssociatedTypeWitness;
  v167 = *(AssociatedTypeWitness - 8);
  v59 = *(v167 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v60, v61);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_44_11(v62);
  v171 = v44;
  v63 = type metadata accessor for CloudResource();
  OUTLINED_FUNCTION_0_0(v63);
  v169 = v64;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v67, v68);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_44_11(v69);
  v175 = sub_2177528F8();
  v70 = OUTLINED_FUNCTION_0_0(v175);
  v174 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v70, v74);
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v75, v76);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v77, v78);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x28223BE20](v79, v80);
  a10 = v154 - v81;
  OUTLINED_FUNCTION_5_5();
  v173 = v43;
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v43);
  OUTLINED_FUNCTION_55_13();
  swift_bridgeObjectRetain_n();
  v85 = OUTLINED_FUNCTION_67_13();
  v89 = sub_2176B5914(v85, v86, v87, v88, v40, v38);
  v176 = v27;
  OUTLINED_FUNCTION_66_11(v89);
  v159 = v40;
  v162 = v33;
  v160 = v38;
  if (v111)
  {
    v90 = v89[4];
    v91 = v89[5];
    v92 = v89[6];
    v93 = v89[7];
    sub_217751DE8();

    v95 = MEMORY[0x21CEA2320](v90, v91, v92, v93);
    v96 = v94;
  }

  else
  {

    v95 = v40;
    v96 = v38;
  }

  v158 = *(v179 + 88);
  v97 = v158(v181);
  v98 = v177;
  if (*(v97 + 16))
  {
    sub_21763246C(v95, v96);
    v100 = v99;

    if (v100)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v102 = v178;
  v166(v101);
  (*(v42 + 184))(v171, v42);
  if (__swift_getEnumTagSinglePayload(v58, 1, v98) == 1)
  {
    OUTLINED_FUNCTION_12_1(&v185 + 8);
    v103(v102, v63);
    OUTLINED_FUNCTION_12_1(v182);
    v104(v58, v155);
LABEL_10:
    OUTLINED_FUNCTION_65_14();
    v105 = v176;
    v106 = v173;
    goto LABEL_26;
  }

  v166 = v63;
  v165 = a26;
  v155 = a23;
  v107 = v167;
  v108 = v170;
  (*(v167 + 32))(v170, v58, v98);
  *(&v185 + 1) = v98;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v184);
  (*(v107 + 16))(boxed_opaque_existential_0, v108, v98);
  sub_217753248();
  v58 = sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!v183[5])
    {

      v184 = 0u;
      v185 = 0u;
      v186 = 0u;

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_56_13();
    if (v110)
    {
      v111 = v182[0] == v95 && v110 == v96;
      if (v111 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0790(v182, &qword_27CB286B0, &unk_21776E190);
  }

  OUTLINED_FUNCTION_68_13();

  if (!*(&v186 + 1))
  {
LABEL_24:
    v126 = OUTLINED_FUNCTION_4_60();
    v127(v126);
    v128 = OUTLINED_FUNCTION_11_38();
    v129(v128, v98);
    v130 = OUTLINED_FUNCTION_7_38();
    v131(v130);
    sub_2171F0790(&v184, &qword_27CB286A8, &unk_21776DFA0);
    OUTLINED_FUNCTION_65_14();
    goto LABEL_25;
  }

  v112 = sub_217751378();
  OUTLINED_FUNCTION_235_0(v112);
  v113 = sub_217751368();
  v114 = OUTLINED_FUNCTION_57_16();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v114, v115, v116);
  JSONEncoder.dataRequestConfiguration.setter(v183);
  swift_getAssociatedConformanceWitness();
  v117 = v170;
  v118 = v176;
  sub_217751358();
  v119 = v178;
  if (v118)
  {

    v120 = OUTLINED_FUNCTION_4_60();
    v121(v120);
    OUTLINED_FUNCTION_12_1(&v184 + 8);
    v122(v117, v98);
    OUTLINED_FUNCTION_12_1(&v185 + 8);
    v123(v119, v166);
    OUTLINED_FUNCTION_12_1(&a9);
    v124 = OUTLINED_FUNCTION_51_15();
    v125(v124);
    sub_2171F0790(&v184, &qword_27CB286A8, &unk_21776DFA0);
    goto LABEL_31;
  }

  v171 = v113;
  v137 = sub_217751348();
  OUTLINED_FUNCTION_235_0(v137);
  sub_217751338();
  v138 = OUTLINED_FUNCTION_57_16();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v138, v139, v140);
  JSONDecoder.dataRequestConfiguration.setter(v183);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_7_0();
  sub_2173A4628(v141, v142);
  sub_217751308();
  v143 = v154[0];
  OUTLINED_FUNCTION_46_19();
  v162();
  v176 = 0;

  v144 = OUTLINED_FUNCTION_201_2();
  sub_217275694(v144, v145);

  v146 = OUTLINED_FUNCTION_4_60();
  v147(v146);
  v148 = OUTLINED_FUNCTION_11_38();
  v149(v148, v177);
  v150 = OUTLINED_FUNCTION_7_38();
  v151(v150);
  v152 = v143;
  v58 = v174;
  v153 = a10;
  v95 = v175;
  (*(v174 + 1))(a10, v175);
  sub_2171F0790(&v184, &qword_27CB286A8, &unk_21776DFA0);
  (*(v58 + 4))(v153, v152, v95);
LABEL_25:
  v106 = v173;
  v105 = v176;
LABEL_26:
  v132 = v172;
  (*(v58 + 2))(v172, a10, v95);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v132, 1, v106);
  v134 = *(v58 + 1);
  v134(v132, v95);
  if (EnumTagSinglePayload == 1)
  {
    (v158)(v181, v179);
    OUTLINED_FUNCTION_46_19();
    v162();
    if (v105)
    {
      v134(a10, v95);
    }

    else
    {
      v135 = a10;
      v134(a10, v95);

      v136 = *(v58 + 4);
      v136(v135, v163, v95);
      v136(v164, a10, v95);
    }
  }

  else
  {
    (*(v58 + 4))(v164, a10, v95);
  }

LABEL_31:

  OUTLINED_FUNCTION_170();
}

uint64_t sub_2174C625C(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 112))(a1, v3, v4);
}

uint64_t AnyPropertyProvider.knownProperties.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_3_57();
  v3(v2);
  OUTLINED_FUNCTION_15_1(v9);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_44_1();
  v7(v6);
  return OUTLINED_FUNCTION_80_11(v9);
}

uint64_t sub_2174C6330(void *__src)
{
  memcpy(__dst, __src, 0x161uLL);
  sub_217269EF4(__dst, &v3);
  return AnyPropertyProvider.identifierSet.setter(__src);
}

uint64_t AnyPropertyProvider.identifierSet.setter(void *__src)
{
  v2 = v1;
  memcpy(v13, __src, sizeof(v13));
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v3 + 96);
  v5 = OUTLINED_FUNCTION_33_20();
  v6(v5);
  v7 = v15;
  v8 = v16;
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(*(v8 + 8) + 32))(v13, v7);
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  *&v13[24] = v9;
  *&v13[32] = *(v10 + 8);
  __swift_allocate_boxed_opaque_existential_0(v13);
  OUTLINED_FUNCTION_41_0(v9);
  (*(v11 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v2);
  sub_2171F3F0C(v13, v2);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t AnyPropertyProvider.staticPropertyProvider.setter(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v8 = v3;
  v9 = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_0(&v7);
  OUTLINED_FUNCTION_41_0(v3);
  (*(v5 + 16))();
  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_2171F3F0C(&v7, v1);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*AnyPropertyProvider.identifierSet.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x5D0uLL);
  *a1 = v3;
  v3[185] = v1;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v5 = *(v4 + 24);
  v6 = OUTLINED_FUNCTION_17_24();
  v7(v6);
  return sub_2174C65D4;
}

void sub_2174C65D4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[185];
  if (a2)
  {
    memcpy(v2 + 90, v2, 0x161uLL);
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v6 = *(v5 + 96);
    sub_217269EF4((v2 + 90), (v2 + 135));
    v6(v4, v5);
    v7 = v2[184];
    __swift_mutable_project_boxed_opaque_existential_1((v2 + 180), v2[183]);
    memcpy(__dst, v2 + 90, sizeof(__dst));
    OUTLINED_FUNCTION_60_16();
    v8();
    v9 = v2[183];
    v10 = v2[184];
    __swift_project_boxed_opaque_existential_1(v2 + 180, v9);
    v2[138] = v9;
    v2[139] = *(v10 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 135);
    OUTLINED_FUNCTION_41_0(v9);
    (*(v11 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C((v2 + 135), v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 180);
    memcpy(v2 + 45, v2, 0x161uLL);
    sub_217269F50((v2 + 45));
  }

  else
  {
    memcpy(__dst, v2, sizeof(__dst));
    v12 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    OUTLINED_FUNCTION_71_13();
    v13 = OUTLINED_FUNCTION_17_24();
    v14(v13);
    v15 = v2[49];
    __swift_mutable_project_boxed_opaque_existential_1((v2 + 45), v2[48]);
    OUTLINED_FUNCTION_60_16();
    v16();
    v17 = v2[48];
    v18 = v2[49];
    __swift_project_boxed_opaque_existential_1(v2 + 45, v17);
    v2[93] = v17;
    v2[94] = *(v18 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 90);
    OUTLINED_FUNCTION_41_0(v17);
    (*(v19 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C(v2 + 45, v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 45);
  }

  free(v2);
}

void (*AnyPropertyProvider.staticPropertyProvider.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x80uLL);
  *a1 = v3;
  v3[15] = v1;
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_71_13();
  v5 = OUTLINED_FUNCTION_17_24();
  v6(v5);
  return sub_2174C68DC;
}

void sub_2174C68DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    sub_2171FF30C(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    __swift_project_boxed_opaque_existential_1(v2 + 5, v4);
    v2[13] = v4;
    v2[14] = *(v5 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 10);
    OUTLINED_FUNCTION_41_0(v4);
    (*(v6 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C(v2 + 5, v3);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    v7 = v2[3];
    v8 = v2[4];
    __swift_project_boxed_opaque_existential_1(*a1, v7);
    v2[8] = v7;
    v2[9] = *(v8 + 8);
    __swift_allocate_boxed_opaque_existential_0(v2 + 5);
    OUTLINED_FUNCTION_41_0(v7);
    (*(v9 + 16))();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_2171F3F0C((v2 + 5), v3);
  }

  v10 = OUTLINED_FUNCTION_80_11(v2);

  free(v10);
}

uint64_t AnyPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_2174C6A98()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 112))(v4, v1, v2);
  return sub_217753238();
}

unint64_t sub_2174C6B0C()
{
  result = qword_27CB28690;
  if (!qword_27CB28690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28690);
  }

  return result;
}

void (*sub_2174C6B74(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = AnyPropertyProvider.identifierSet.modify(v2);
  return sub_2174C6BD0;
}

void sub_2174C6BD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2174C6C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2174C6B0C();

  return PropertyProvider<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_2174C6DC8()
{
  OUTLINED_FUNCTION_25_1();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6E20()
{
  swift_getWitnessTable();

  return PropertyProvider<>.combine(into:)();
}

uint64_t sub_2174C6E80()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_27CB286A0, type metadata accessor for PlaylistEntryPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6EF4()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE3748, type metadata accessor for StationPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6F68()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE7BD8, type metadata accessor for SongPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C6FDC()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3760, type metadata accessor for CuratorPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7050()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(qword_280BE3A60, type metadata accessor for AlbumPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C70C4()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_27CB28698, type metadata accessor for RecordLabelPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7138()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&qword_280BE3A50, type metadata accessor for GenrePropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C71AC()
{
  OUTLINED_FUNCTION_25_1();
  sub_2174C72E0(&unk_280BE3958, type metadata accessor for ArtistPropertyProvider);
  v0 = OUTLINED_FUNCTION_2_62();

  return PropertyProvider<>.isEqual<A>(to:)(v0, v1, v2, v3, v4);
}

uint64_t sub_2174C7220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudArtist.Attributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2174C7284(uint64_t a1)
{
  v2 = type metadata accessor for CloudArtist.Attributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2174C72E0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2174C7328()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_30_23();
  Dictionary<>.rawValue<A>(for:keyDescription:)(v2, v7, v3, 0xE900000000000065, v4, v5, v6);
}

uint64_t sub_2174C7360()
{
  v1 = v0[5];
  v2 = *(v0[4] - 8);
  v4 = v0[10];
  v3 = v0[11];
  OUTLINED_FUNCTION_78_9();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_78_9();
  v8 = *(v7 + 64);
  v10 = *(*(v9 - 8) + 80);
  v15 = OUTLINED_FUNCTION_38_16(v11, v9, v12, v13, v14);
  return v16(v15);
}

uint64_t sub_2174C7400(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v11 = *(v1 + 96);
  v12 = *(v1 + 104);
  v9 = *(v1 + 64);
  v10 = *(v1 + 80);
  return sub_2174C4454(a1, *(v1 + 112)) & 1;
}

unint64_t sub_2174C7444()
{
  result = qword_27CB286B8;
  if (!qword_27CB286B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286B8);
  }

  return result;
}

unint64_t sub_2174C74A0()
{
  result = qword_27CB286C0;
  if (!qword_27CB286C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286C0);
  }

  return result;
}

void sub_2174C74F4()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_27_26();
  Dictionary<>.rawValue<A>(for:keyDescription:)(v2, v7, v3, 0xE800000000000000, v4, v5, v6);
}

uint64_t objectdestroyTm_2()
{
  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_41_0(*(v0 + 32));
  v4 = *(v3 + 8);
  v5 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v6 = *(v3 + 64);
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_61_9();
  v10 = *(v9 + 64);
  v13 = v11 | v12;
  v15(v0 + v14);
  (*(v7 + 8))(v0 + v1, v2);

  return MEMORY[0x2821FE8E8](v0, v1 + v10, v13 | 7);
}

uint64_t sub_2174C7610()
{
  v1 = v0[5];
  v2 = *(v0[4] - 8);
  v4 = v0[7];
  v3 = v0[8];
  OUTLINED_FUNCTION_78_9();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_78_9();
  v8 = *(v7 + 64);
  v10 = *(*(v9 - 8) + 80);
  v15 = OUTLINED_FUNCTION_38_16(v11, v9, v12, v13, v14);
  return v16(v15);
}

double sub_2174C770C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v8 + 1) = v6[7];
  *&v8 = v6[5];
  *&result = Dictionary<>.structuredValue<A, B>(for:keyDescription:existingDecoder:configuration:)(a2, a3, a4, a5, 0, v6[10], a1, v6[3], a6, v8, v6[9]).n128_u64[0];
  return result;
}

void OUTLINED_FUNCTION_16_33()
{
  v1 = *(v0 - 128);
  v2 = *(v0 - 120);
  v3 = *(*(v0 - 152) + 208);
  v4 = *(v0 - 184);
  v5 = *(v0 - 136);
  v6 = *(v0 - 216);
  v7 = *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_45_18()
{
  v4 = *(v1 + 16);
  result = v0;
  *(v3 - 168) = v2;
  return result;
}

void OUTLINED_FUNCTION_46_19()
{
  v1 = *(v0 - 456);
  v2 = *(v0 - 448);
  v3 = *(v0 - 440);
}

uint64_t OUTLINED_FUNCTION_50_15()
{
  v1 = v0[4];
  v2 = *(v0[3] + 8);
  return v0[6];
}

uint64_t OUTLINED_FUNCTION_51_15()
{
  result = *(v0 - 72);
  v2 = *(v0 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_18()
{
  v2 = *(v0 + 16);
  result = *(v1 - 128);
  *(v1 - 136) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_53_15()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

void OUTLINED_FUNCTION_55_13()
{
  *(v0 - 144) = 46;
  *(v0 - 136) = 0xE100000000000000;
  *(v0 - 256) = v0 - 144;
}

__n128 OUTLINED_FUNCTION_56_13()
{
  v1 = *(v0 - 176);
  *(v0 - 240) = *(v0 - 192);
  *(v0 - 224) = v1;
  result = *(v0 - 160);
  *(v0 - 208) = result;
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_16()
{
  result = *(v0 - 488);
  v2 = *(v0 - 408);
  return result;
}

void OUTLINED_FUNCTION_59_9()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 - 160);
  v4 = *(v3 + 24);
  *(v0 - 224) = *(v3 + 16);
}

__n128 OUTLINED_FUNCTION_68_13()
{
  v1 = *(v0 - 224);
  *(v0 - 144) = *(v0 - 240);
  *(v0 - 128) = v1;
  result = *(v0 - 208);
  *(v0 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_79_12()
{
  v2 = *(v0 - 72);

  return sub_217751308();
}

void *sub_2174C7A58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 64))
  {
    goto LABEL_6;
  }

  if (*(a1 + 64) == 1)
  {
LABEL_5:
    OUTLINED_FUNCTION_13_30();
    v3 = off_280BEBCD0;

    (v3)(v45, v4);

    v5 = __swift_project_boxed_opaque_existential_1(v45, v46);
    OUTLINED_FUNCTION_9_34(v5, v6, v7, v8, v9, v10, v11, v12, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v13 = OUTLINED_FUNCTION_1_58();
    sub_2174C952C(v13, v14, v15, v16);
    goto LABEL_7;
  }

  if (*(a1 + 48) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_13_30();
    v3 = off_280BEBCD0;

    (v3)(v45, v17);

    v18 = __swift_project_boxed_opaque_existential_1(v45, v46);
    OUTLINED_FUNCTION_9_34(v18, v19, v20, v21, v22, v23, v24, v25, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v26 = OUTLINED_FUNCTION_1_58();
    sub_2174C90C0(v26, v27, v28, v29);
  }

  else
  {
    if (!(*(a1 + 48) ^ 1 | *(a1 + 56)))
    {
      goto LABEL_5;
    }

    OUTLINED_FUNCTION_13_30();
    v3 = off_280BEBCD0;

    (v3)(v45, v31);

    v32 = __swift_project_boxed_opaque_existential_1(v45, v46);
    OUTLINED_FUNCTION_9_34(v32, v33, v34, v35, v36, v37, v38, v39, v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v40 = OUTLINED_FUNCTION_1_58();
    sub_2174C8C54(v40, v41, v42, v43);
  }

LABEL_7:
  result = sub_21733AB9C(v47);
  if (!v3)
  {
    memcpy(__dst, __src, sizeof(__dst));
    return memcpy(a2, __dst, 0x221uLL);
  }

  return result;
}

unint64_t Artist.LegacyModelArtistPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001CLL;
  switch(*v0)
  {
    case 1:
    case 6:
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 2:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000031;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 0xA:
      result = 0xD000000000000025;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xC:
    case 0xD:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2174C7D28(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v117 = a7;
  v118 = a6;
  v119 = a5;
  v115 = a3;
  v116 = a4;
  v120 = a9;
  v13 = sub_217752B48();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v122 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = (&v106 - v20);
  v22 = sub_217752B38();
  v113 = *(v22 - 8);
  v114 = v22;
  v23 = *(v113 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v111 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v112 = &v106 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AE8, &qword_217766150);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8, v31);
  v121 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v106 - v35;
  sub_2172A497C(v136);
  v137 = v36;
  v37 = v36;
  v38 = v13;
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v13);
  v134[0] = 46;
  v134[1] = 0xE100000000000000;
  v124[2] = v134;
  sub_217751DE8();
  v39 = sub_2176B5914(1, 1, sub_2172CB708, v124, a1, a2);
  v40 = v39;
  v41 = v39[2];
  v123 = v9;
  if (v41 != 2)
  {

    if (*(a8 + 16) && (v77 = sub_21763246C(a1, a2), (v78 & 1) != 0))
    {
      v79 = *(a8 + 56) + 24 * v77;
      v81 = *(v79 + 8);
      v82 = *(v79 + 16);
      v132[0] = *v79;
      v80 = v132[0];
      v132[1] = v81;
      v133 = v82;
      sub_21726A5E0(v132[0], v81, v82);
      v83 = v123;
      (v118)(v134, v132);
      v123 = v83;
      if (v83)
      {
        sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);
        sub_21726A608(v80, v81, v82);
        return;
      }

      memcpy(v130, v134, 0x221uLL);
      memcpy(v131, v134, 0x221uLL);
      if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v131) == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
        v99 = swift_allocObject();
        v118 = v99;
        *(v99 + 16) = xmmword_2177586E0;
        *(v99 + 56) = &type metadata for DynamicCodingKey;
        *(v99 + 64) = sub_21738B390();
        *(v99 + 32) = a1;
        *(v99 + 40) = a2;
        v125 = 0;
        v126 = 0xE000000000000000;
        sub_217751DE8();
        sub_217752AA8();
        v128 = v125;
        v129 = v126;
        MEMORY[0x21CEA23B0](0xD000000000000010, 0x80000002177AC710);
        MEMORY[0x21CEA23B0](0x6B726F77747241, 0xE700000000000000);
        MEMORY[0x21CEA23B0](0xD000000000000013, 0x80000002177AC730);
        MEMORY[0x21CEA23B0](v115, v116);
        MEMORY[0x21CEA23B0](0x2065756C6176203BLL, 0xEC000000203A7369);
        v125 = v80;
        v126 = v81;
        v127 = v82;
        v100 = JSONValue.description.getter();
        v101 = v14;
        v103 = v102;
        sub_21726A608(v80, v81, v82);
        MEMORY[0x21CEA23B0](v100, v103);
        v14 = v101;

        MEMORY[0x21CEA23B0](46, 0xE100000000000000);
        v104 = v112;
        sub_217752B08();
        v75 = v137;
        sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);
        v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
        *v75 = &type metadata for Artwork;
        (*(v113 + 32))(&v75[v105], v104, v114);
        (*(v101 + 104))(v75, *MEMORY[0x277D84160], v38);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v38);
        v98 = v130;
        goto LABEL_27;
      }

      sub_21726A608(v80, v81, v82);
      v85 = v134;
    }

    else
    {
      v85 = v136;
    }

    memcpy(v135, v85, 0x221uLL);
    goto LABEL_18;
  }

  v42 = v9;
  v110 = v14;
  v43 = v39[4];
  v44 = v39[5];
  v46 = v39[6];
  v45 = v39[7];
  sub_217751DE8();
  v47 = MEMORY[0x21CEA2320](v43, v44, v46, v45);
  v49 = v48;

  if (!*(a8 + 16) || (v50 = sub_21763246C(v47, v49), (v51 & 1) == 0))
  {

    v84 = v136;
LABEL_15:
    memcpy(v135, v84, 0x221uLL);
    v14 = v110;
LABEL_18:
    v75 = v137;
    goto LABEL_19;
  }

  v109 = v47;
  v52 = *(a8 + 56) + 24 * v50;
  v54 = *v52;
  v53 = *(v52 + 8);
  v55 = *(v52 + 16);
  if (v55 == 5)
  {
    if (v40[2] < 2uLL)
    {
      __break(1u);
      return;
    }

    v56 = v40[8];
    v106 = v40[9];
    v107 = v56;
    v58 = v40[10];
    v57 = v40[11];
    v108 = v53;
    sub_21726A5E0(v54, v53, 5);
    sub_217751DE8();

    v59 = MEMORY[0x21CEA2320](v107, v106, v58, v57);
    v61 = v60;

    sub_2174C7D28(v134, v59, v61, v115, v116, 0, v118, v117, v54);
    if (v42)
    {
      sub_21726A608(v54, v108, 5);

      v134[0] = v42;
      v62 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
      if (swift_dynamicCast())
      {
        v63 = v110;
        v64 = (*(v110 + 88))(v21, v38);
        if (v64 == *MEMORY[0x277D84160])
        {
          v65 = v64;

          (*(v63 + 96))(v21, v38);
          v123 = *v21;
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
          v67 = *(v66 + 48);
          v68 = v113;
          v69 = v114;
          v117 = *(v113 + 32);
          v118 = v66;
          v70 = v21 + v67;
          v71 = v112;
          v117(v112, v70, v114);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_2177586E0;
          *(v72 + 56) = &type metadata for DynamicCodingKey;
          *(v72 + 64) = sub_21738B390();
          *(v72 + 32) = v109;
          *(v72 + 40) = v49;
          v131[0] = v72;
          v73 = sub_217752B18();
          sub_217543F4C(v73);
          sub_217752B28();
          v74 = v111;
          sub_217752B08();
          (*(v68 + 8))(v71, v69);
          v75 = v137;
          sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);
          v76 = *(v118 + 48);
          *v75 = v123;
          v117(&v75[v76], v74, v69);
          v14 = v110;
          (*(v110 + 104))(v75, v65, v38);
          __swift_storeEnumTagSinglePayload(v75, 0, 1, v38);

          memcpy(v135, v136, 0x221uLL);
          v123 = 0;
          goto LABEL_19;
        }

        sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);

        (*(v63 + 8))(v21, v38);
      }

      else
      {
        sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);
      }

      return;
    }

    v123 = 0;

    sub_21726A608(v54, v108, 5);

    v84 = v134;
    goto LABEL_15;
  }

  v90 = *(v52 + 8);
  sub_21726A5E0(*v52, v90, *(v52 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24848, &qword_21776E1A0);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_2177586E0;
  *(v91 + 56) = &type metadata for DynamicCodingKey;
  *(v91 + 64) = sub_21738B390();
  *(v91 + 32) = v109;
  *(v91 + 40) = v49;
  v134[0] = 0;
  v134[1] = 0xE000000000000000;
  sub_217752AA8();
  v131[0] = v134[0];
  v131[1] = v134[1];
  MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC750);
  MEMORY[0x21CEA23B0](v115, v116);
  MEMORY[0x21CEA23B0](0x2065756C6176203BLL, 0xEC000000203A7369);
  v92 = v54;
  v134[0] = v54;
  v134[1] = v90;
  LOBYTE(v134[2]) = v55;
  v93 = JSONValue.description.getter();
  v95 = v94;
  sub_21726A608(v92, v90, v55);
  MEMORY[0x21CEA23B0](v93, v95);

  MEMORY[0x21CEA23B0](46, 0xE100000000000000);
  v96 = v112;
  sub_217752B08();
  v75 = v137;
  sub_2171F0738(v137, &qword_27CB26AE8, &qword_217766150);
  v97 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0) + 48);
  *v75 = &type metadata for Artwork;
  (*(v113 + 32))(&v75[v97], v96, v114);
  v14 = v110;
  (*(v110 + 104))(v75, *MEMORY[0x277D84160], v38);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v38);
  v98 = v136;
LABEL_27:
  memcpy(v135, v98, 0x221uLL);
LABEL_19:
  v86 = v121;
  sub_2171F5110(v75, v121, &qword_27CB26AE8, &qword_217766150);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v86, 1, v38);
  v88 = v122;
  if (EnumTagSinglePayload == 1)
  {
    sub_2171F0738(v75, &qword_27CB26AE8, &qword_217766150);
    sub_2171F0738(v86, &qword_27CB26AE8, &qword_217766150);
    memcpy(v120, v135, 0x221uLL);
  }

  else
  {
    (*(v14 + 32))(v122, v86, v38);
    if (v119)
    {
      v134[0] = 0;
      v134[1] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AC6E0);
      sub_217752C78();
      sub_217751828();
    }

    swift_allocError();
    (*(v14 + 16))(v89, v88, v38);
    swift_willThrow();
    sub_2171F0738(v135, &qword_27CB24400, &unk_21775E9A0);
    (*(v14 + 8))(v88, v38);
    sub_2171F0738(v75, &qword_27CB26AE8, &qword_217766150);
  }
}

void *sub_2174C8AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = sub_217751378();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_217751368();
  sub_2172CA838(a4, __src);
  JSONEncoder.dataRequestConfiguration.setter(__src);
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3;
  sub_21733AC44();
  v16 = sub_217751358();
  if (v6)
  {
  }

  v18 = v16;
  v19 = v17;
  if (!a5)
  {
    v20 = sub_217751348();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_217751338();
  }

  sub_2172CA838(a4, __src);

  JSONDecoder.dataRequestConfiguration.setter(__src);
  sub_2174C7444();
  sub_217751308();

  sub_217275694(v18, v19);

  memcpy(__dst, __src, 0x221uLL);
  nullsub_1(__dst, v23);
  return memcpy(a6, __dst, 0x221uLL);
}

void *sub_2174C8C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v45 = a2;
  v33 = a4;
  sub_2172A497C(v44);
  v10 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v9 + 96))(v40, v10, v9);
  v11 = v40[3];
  v12 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v13 = (*(*(v12 + 8) + 16))(v11);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v40[0] = a1;
  v34[2] = v40;
  LOBYTE(v11) = sub_2173DDC78(sub_2174A6244, v34, v13);

  if (v11)
  {
    v14 = v6[3];
    v15 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v14);
    (*(v15 + 96))(v35, v14, v15);
    v16 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(*(v17 + 8) + 8))(v38, a1, &type metadata for Artist, &type metadata for Artwork, v16);
    __swift_destroy_boxed_opaque_existential_1(v35);
    memcpy(v39, v38, sizeof(v39));
    memcpy(v40, v39, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v40) != 1)
    {
      v25 = v39;
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (dynamic_cast_existential_1_conditional(&type metadata for Artwork))
    {
      v20 = v39;
      goto LABEL_7;
    }

    v26 = v39;
LABEL_14:
    v27 = memcpy(v43, v26, 0x221uLL);
    MEMORY[0x28223BE20](v27, v28);
    v32[2] = a3;
    sub_21725CF68(v45, v39);
    sub_2172CA838(a3, v38);
    v29 = swift_allocObject();
    v30 = *&v39[16];
    *(v29 + 16) = *v39;
    *(v29 + 32) = v30;
    *(v29 + 48) = *&v39[32];
    v31 = *&v38[16];
    *(v29 + 72) = *v38;
    *(v29 + 64) = *&v39[48];
    *(v29 + 88) = v31;
    *(v29 + 104) = *&v38[32];
    sub_2174CA7FC(v18, v19, a3, sub_2174CCFCC, v29, sub_2174CCF68, v32, v40);
    sub_2171F0738(v43, &qword_27CB24400, &unk_21775E9A0);

    if (!v5)
    {
      memcpy(v41, v40, sizeof(v41));
      return memcpy(v33, v41, 0x221uLL);
    }

    return result;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (!dynamic_cast_existential_1_conditional(&type metadata for Artwork))
  {
    v26 = v44;
    goto LABEL_14;
  }

  v20 = v44;
LABEL_7:
  memcpy(v42, v20, 0x221uLL);
  sub_21725CF68(v45, v39);
  sub_2172CA838(a3, v38);
  v21 = swift_allocObject();
  v22 = *&v39[16];
  *(v21 + 16) = *v39;
  *(v21 + 32) = v22;
  *(v21 + 48) = *&v39[32];
  v23 = *&v38[16];
  *(v21 + 72) = *v38;
  *(v21 + 64) = *&v39[48];
  *(v21 + 88) = v23;
  *(v21 + 104) = *&v38[32];
  sub_2174C4E54();
  sub_2171F0738(v42, &qword_27CB24400, &unk_21775E9A0);

  if (!v5)
  {
    v25 = v40;
LABEL_10:
    memcpy(v41, v25, sizeof(v41));
    return memcpy(v33, v41, 0x221uLL);
  }

  return result;
}

void *sub_2174C90C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v45 = a2;
  v33 = a4;
  sub_2172A497C(v44);
  v10 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v9 + 96))(v40, v10, v9);
  v11 = v40[3];
  v12 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v13 = (*(*(v12 + 8) + 16))(v11);
  __swift_destroy_boxed_opaque_existential_1(v40);
  v40[0] = a1;
  v34[2] = v40;
  LOBYTE(v11) = sub_2173DDC78(sub_2174A6244, v34, v13);

  if (v11)
  {
    v14 = v6[3];
    v15 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v14);
    (*(v15 + 96))(v35, v14, v15);
    v16 = v36;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(*(v17 + 8) + 8))(v38, a1, &type metadata for Artist, &type metadata for Artwork, v16);
    __swift_destroy_boxed_opaque_existential_1(v35);
    memcpy(v39, v38, sizeof(v39));
    memcpy(v40, v39, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v40) != 1)
    {
      v25 = v39;
      goto LABEL_10;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (dynamic_cast_existential_1_conditional(&type metadata for Artwork))
    {
      v20 = v39;
      goto LABEL_7;
    }

    v26 = v39;
LABEL_14:
    v27 = memcpy(v43, v26, 0x221uLL);
    MEMORY[0x28223BE20](v27, v28);
    v32[2] = a3;
    sub_21725CF68(v45, v39);
    sub_2172CA838(a3, v38);
    v29 = swift_allocObject();
    v30 = *&v39[16];
    *(v29 + 16) = *v39;
    *(v29 + 32) = v30;
    *(v29 + 48) = *&v39[32];
    v31 = *&v38[16];
    *(v29 + 72) = *v38;
    *(v29 + 64) = *&v39[48];
    *(v29 + 88) = v31;
    *(v29 + 104) = *&v38[32];
    sub_2174C97D8(v18, v19, a3, sub_2174CCFCC, v29, sub_2174CCD40, v32, v40);
    sub_2171F0738(v43, &qword_27CB24400, &unk_21775E9A0);

    if (!v5)
    {
      memcpy(v41, v40, sizeof(v41));
      return memcpy(v33, v41, 0x221uLL);
    }

    return result;
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (!dynamic_cast_existential_1_conditional(&type metadata for Artwork))
  {
    v26 = v44;
    goto LABEL_14;
  }

  v20 = v44;
LABEL_7:
  memcpy(v42, v20, 0x221uLL);
  sub_21725CF68(v45, v39);
  sub_2172CA838(a3, v38);
  v21 = swift_allocObject();
  v22 = *&v39[16];
  *(v21 + 16) = *v39;
  *(v21 + 32) = v22;
  *(v21 + 48) = *&v39[32];
  v23 = *&v38[16];
  *(v21 + 72) = *v38;
  *(v21 + 64) = *&v39[48];
  *(v21 + 88) = v23;
  *(v21 + 104) = *&v38[32];
  sub_2174C13F4();
  sub_2171F0738(v42, &qword_27CB24400, &unk_21775E9A0);

  if (!v5)
  {
    v25 = v40;
LABEL_10:
    memcpy(v41, v25, sizeof(v41));
    return memcpy(v33, v41, 0x221uLL);
  }

  return result;
}

void *sub_2174C952C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v32 = a2;
  sub_2172A497C(v31);
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v10);
  (*(v11 + 96))(v28, v10, v11);
  v12 = v28[3];
  v13 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v14 = (*(*(v13 + 8) + 16))(v12);
  __swift_destroy_boxed_opaque_existential_1(v28);
  v28[0] = a1;
  v22[2] = v28;
  LOBYTE(v12) = sub_2173DDC78(sub_2174A6244, v22, v14);

  if (v12)
  {
    v15 = v6[3];
    v16 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v15);
    (*(v16 + 96))(v23, v15, v16);
    v18 = v24;
    v17 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(*(v17 + 8) + 8))(__src, a1, &type metadata for Artist, &type metadata for Artwork, v18);
    __swift_destroy_boxed_opaque_existential_1(v23);
    memcpy(__dst, __src, 0x221uLL);
    memcpy(v28, __dst, 0x221uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v28) != 1)
    {
      v21 = __dst;
      goto LABEL_11;
    }

    v19 = __dst;
  }

  else
  {
    v19 = v31;
  }

  memcpy(v29, v19, 0x221uLL);
  sub_2174CA104(a1);
  if (v5)
  {
    return sub_2171F0738(v29, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_2171F0738(v29, &qword_27CB24400, &unk_21775E9A0);
  memcpy(__dst, v28, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(__dst) == 1)
  {
    sub_2174CA33C(a1, v32, a3, __src);
    v21 = __src;
  }

  else
  {
    v21 = v28;
  }

LABEL_11:
  memcpy(v30, v21, sizeof(v30));
  return memcpy(a4, v30, 0x221uLL);
}

void *sub_2174C97D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *__return_ptr, uint64_t, uint64_t, unint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v10 = v8;
  v79 = a6;
  v72 = a5;
  v73 = a4;
  v70 = a8;
  v15 = sub_217753268();
  v74 = *(v15 - 8);
  v75 = v15;
  v16 = *(v74 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v81 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for CloudArtist.Attributes(0);
  v19 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v20);
  v93 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v82 = &v69 - v25;
  sub_2172A497C(v92);
  v91[0] = 46;
  v91[1] = 0xE100000000000000;
  v83[2] = v91;
  swift_bridgeObjectRetain_n();
  v26 = sub_2176B5914(1, 1, sub_2171F87CC, v83, a1, a2);
  v27 = v9;
  v28 = v26[2];
  v76 = a7;
  v77 = a1;
  v78 = a2;
  v69 = a3;
  if (v28 == 2)
  {
    v29 = v26[4];
    v30 = v26[5];
    v31 = v26[6];
    v32 = v26[7];
    sub_217751DE8();

    v33 = MEMORY[0x21CEA2320](v29, v30, v31, v32);
    v35 = v34;
  }

  else
  {

    v33 = a1;
    v35 = a2;
  }

  v36 = v8[3];
  v37 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v36);
  (*(v37 + 96))(v86, v36, v37);
  v38 = *&v86[24];
  v39 = *&v86[32];
  __swift_project_boxed_opaque_existential_1(v86, *&v86[24]);
  v40 = (*(*(v39 + 8) + 64))(v38);
  __swift_destroy_boxed_opaque_existential_1(v86);
  if (*(v40 + 16))
  {
    sub_21763246C(v33, v35);
    v42 = v41;

    if (v42)
    {
      memcpy(v90, v92, 0x221uLL);
      goto LABEL_22;
    }
  }

  else
  {
  }

  v71 = v9;
  v44 = v82;
  v73(v43);
  v45 = v44 + *(type metadata accessor for CloudArtist(0) + 20);
  v46 = v93;
  sub_2174CCD5C(v45, v93, type metadata accessor for CloudArtist.Attributes);
  *&v86[24] = v80;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v86);
  sub_2174CCD5C(v46, boxed_opaque_existential_0, type metadata accessor for CloudArtist.Attributes);
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v86[40])
    {

      v87 = 0u;
      v88 = 0u;
      v89 = 0u;

      goto LABEL_21;
    }

    *v85 = *v86;
    *&v85[16] = *&v86[16];
    *&v85[32] = *&v86[32];
    if (*&v86[8])
    {
      v48 = *v85 == v33 && *&v85[8] == v35;
      if (v48 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0738(v85, &qword_27CB286B0, &unk_21776E190);
  }

  v87 = *v85;
  v88 = *&v85[16];
  v89 = *&v85[32];

  if (!*(&v89 + 1))
  {
LABEL_21:
    (*(v74 + 8))(v81, v75);
    sub_2174CCDBC(v93, type metadata accessor for CloudArtist.Attributes);
    sub_2171F0738(v82, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v87, &qword_27CB286A8, &unk_21776DFA0);
    memcpy(v90, v92, 0x221uLL);
    v27 = v71;
    goto LABEL_22;
  }

  v49 = sub_217751378();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_217751368();
  v52 = v69;
  sub_2172CA838(v69, v86);
  JSONEncoder.dataRequestConfiguration.setter(v86);
  sub_2174CCE14();
  v53 = v93;
  v54 = v71;
  v55 = sub_217751358();
  if (v54)
  {

    (*(v74 + 8))(v81, v75);
    sub_2174CCDBC(v53, type metadata accessor for CloudArtist.Attributes);
    sub_2171F0738(v82, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v87, &qword_27CB286A8, &unk_21776DFA0);
  }

  v65 = v55;
  v80 = v56;
  v66 = sub_217751348();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v52, v86);
  JSONDecoder.dataRequestConfiguration.setter(v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();
  v73 = v65;
  v79(v86, *v86, v77, v78);
  v27 = 0;

  sub_217275694(v73, v80);

  (*(v74 + 8))(v81, v75);
  sub_2174CCDBC(v93, type metadata accessor for CloudArtist.Attributes);
  sub_2171F0738(v82, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0738(&v87, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v84, v86, 0x221uLL);
  memcpy(v85, v86, sizeof(v85));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v85) != 1)
  {

    v63 = v84;
    goto LABEL_25;
  }

  memcpy(v90, v86, 0x221uLL);
LABEL_22:
  v57 = v77;
  v58 = v10[3];
  v59 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v58);
  (*(v59 + 96))(v85, v58, v59);
  v60 = *&v85[24];
  v61 = *&v85[32];
  __swift_project_boxed_opaque_existential_1(v85, *&v85[24]);
  v62 = (*(*(v61 + 8) + 64))(v60);
  __swift_destroy_boxed_opaque_existential_1(v85);
  v79(v86, v62, v57, v78);
  if (!v27)
  {
    sub_2171F0738(v90, &qword_27CB24400, &unk_21775E9A0);

    v63 = v86;
LABEL_25:
    memcpy(v91, v63, 0x221uLL);
    return memcpy(v70, v91, 0x221uLL);
  }

  sub_2171F0738(v90, &qword_27CB24400, &unk_21775E9A0);
}

void sub_2174CA09C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5[2] = a4;
  v5[3] = 0;
  sub_2174C7D28(a2, a3, 0x7475626972747461, 0xE900000000000065, 1, sub_2174CCF24, v5, a1, a5);
}

uint64_t sub_2174CA104(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 == 1)
  {
    v3 = v1[3];
    v4 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v3);
    (*(v4 + 96))(&v13, v3, v4);
    v6 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    (*(*(v5 + 8) + 72))(v6);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&v13);
    sub_2174C2668();
  }

  if (v2 == 2 && !*(a1 + 56) && *(a1 + 48) == 1)
  {
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    (*(v9 + 96))(&v13, v8, v9);
    v11 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(&v13, v14);
    (*(*(v10 + 8) + 80))(v11);
    goto LABEL_10;
  }

  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
  type metadata accessor for AnyMusicProperty();
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
  result = sub_217752D08();
  __break(1u);
  return result;
}

void *sub_2174CA33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v7 = *(a1 + 64);
  if (v7 == 1)
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_2174C7444();
    sub_2172E2188();
    swift_getKeyPath();
    sub_21725CF68(a2, &v19);
    sub_2172CA838(a3, &v16);
    v8 = swift_allocObject();
    v9 = v20;
    *(v8 + 16) = v19;
    *(v8 + 32) = v9;
    *(v8 + 48) = v21;
    v10 = v17;
    *(v8 + 72) = v16;
    *(v8 + 64) = v22;
    *(v8 + 88) = v10;
    *(v8 + 104) = v18;

    sub_2174C35FC();
  }

  else
  {
    if (v7 != 2 || (!*(a1 + 56) ? (v11 = *(a1 + 48) == 1) : (v11 = 0), !v11))
    {
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x79747265706F7250, 0xE900000000000020);
      type metadata accessor for AnyMusicProperty();
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177AEC50);
      result = sub_217752D08();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](a1, a2);
    sub_2174C7444();
    sub_2172E2188();
    swift_getKeyPath();
    sub_21725CF68(a2, &v19);
    sub_2172CA838(a3, &v16);
    v12 = swift_allocObject();
    v13 = v20;
    *(v12 + 16) = v19;
    *(v12 + 32) = v13;
    *(v12 + 48) = v21;
    v14 = v17;
    *(v12 + 72) = v16;
    *(v12 + 64) = v22;
    *(v12 + 88) = v14;
    *(v12 + 104) = v18;

    sub_2174C30F0();
  }

  if (!v4)
  {
    memcpy(v24, v23, sizeof(v24));
    return memcpy(v25, v24, 0x221uLL);
  }

  return result;
}

uint64_t sub_2174CA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = *(a2 + a3 - 48);
  v6 = *(a2 + a3 - 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for CloudResource();
  return a4(v7);
}

void *sub_2174CA7FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, void (*a6)(_BYTE *__return_ptr, uint64_t, uint64_t, unint64_t)@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v73 = a7;
  v76 = a6;
  v70 = a5;
  v71 = a4;
  v67 = a8;
  v13 = sub_217753268();
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v72 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v65 - v20;
  sub_2172A497C(v87);
  v86[0] = 46;
  v86[1] = 0xE100000000000000;
  v77[2] = v86;
  swift_bridgeObjectRetain_n();
  v22 = sub_2176B5914(1, 1, sub_2172CB708, v77, a1, a2);
  v23 = v22[2];
  v88 = v9;
  v74 = a1;
  v75 = a2;
  v66 = a3;
  if (v23 == 2)
  {
    v24 = v22[4];
    v25 = v22[5];
    v26 = v22[6];
    v27 = v22[7];
    sub_217751DE8();

    v28 = MEMORY[0x21CEA2320](v24, v25, v26, v27);
    v30 = v29;
  }

  else
  {

    v28 = a1;
    v30 = a2;
  }

  v31 = v8;
  v32 = v8[3];
  v33 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v32);
  (*(v33 + 96))(v83, v32, v33);
  v34 = *&v83[24];
  v35 = *&v83[32];
  __swift_project_boxed_opaque_existential_1(v83, *&v83[24]);
  v36 = (*(*(v35 + 8) + 88))(v34);
  __swift_destroy_boxed_opaque_existential_1(v83);
  if (*(v36 + 16))
  {
    sub_21763246C(v28, v30);
    v38 = v37;

    if (v38)
    {
LABEL_25:
      v52 = v87;
      goto LABEL_26;
    }
  }

  else
  {
  }

  v71(v39);
  v40 = *&v21[*(type metadata accessor for CloudArtist(0) + 32)];
  if (v40 == 1)
  {
    v41 = &qword_27CB24728;
    v42 = &qword_217758CB0;
    v43 = v21;
LABEL_24:
    sub_2171F0738(v43, v41, v42);
    goto LABEL_25;
  }

  v71 = v21;
  v84 = v40;
  *&v83[24] = &type metadata for CloudArtist.Metadata;
  *v83 = v40;
  sub_217221020(v40);
  sub_217751DE8();
  sub_217753248();
  sub_217753258();
  sub_217752C58();
  while (1)
  {
    sub_217752D78();
    if (!*&v83[40])
    {

      v80 = 0u;
      v81 = 0u;
      v82 = 0u;

      goto LABEL_23;
    }

    v79[0] = *v83;
    v79[1] = *&v83[16];
    v79[2] = *&v83[32];
    if (*&v83[8])
    {
      v44 = *&v79[0] == v28 && *(&v79[0] + 1) == v30;
      if (v44 || (sub_217753058() & 1) != 0)
      {
        break;
      }
    }

    sub_2171F0738(v79, &qword_27CB286B0, &unk_21776E190);
  }

  v80 = v79[0];
  v81 = v79[1];
  v82 = v79[2];

  if (!*(&v82 + 1))
  {
LABEL_23:
    (*(v68 + 8))(v72, v69);

    sub_2171F0738(v71, &qword_27CB24728, &qword_217758CB0);
    v41 = &qword_27CB286A8;
    v42 = &unk_21776DFA0;
    v43 = &v80;
    goto LABEL_24;
  }

  v45 = sub_217751378();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  sub_217751368();
  v48 = v66;
  sub_2172CA838(v66, v83);
  JSONEncoder.dataRequestConfiguration.setter(v83);
  sub_2174C74A0();
  v49 = v88;
  v50 = sub_217751358();
  if (v49)
  {

    (*(v68 + 8))(v72, v69);

    sub_2171F0738(v71, &qword_27CB24728, &qword_217758CB0);
    sub_2171F0738(&v80, &qword_27CB286A8, &unk_21776DFA0);
  }

  v60 = v50;
  v61 = v51;
  v62 = sub_217751348();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v48, v83);
  JSONDecoder.dataRequestConfiguration.setter(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  sub_2174CCE6C();
  sub_217751308();
  v76(v83, *v83, v74, v75);
  v88 = 0;

  sub_217275694(v60, v61);

  (*(v68 + 8))(v72, v69);

  sub_2171F0738(v71, &qword_27CB24728, &qword_217758CB0);
  sub_2171F0738(&v80, &qword_27CB286A8, &unk_21776DFA0);
  memcpy(v78, v83, sizeof(v78));
  memcpy(v79, v83, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v79) != 1)
  {

    memcpy(v86, v78, 0x221uLL);
    return memcpy(v67, v86, 0x221uLL);
  }

  v52 = v83;
LABEL_26:
  memcpy(v85, v52, 0x221uLL);
  v53 = v31[3];
  v54 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v53);
  (*(v54 + 96))(v79, v53, v54);
  v55 = *(&v79[1] + 1);
  v56 = *&v79[2];
  __swift_project_boxed_opaque_existential_1(v79, *(&v79[1] + 1));
  v57 = (*(*(v56 + 8) + 88))(v55);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v58 = v88;
  v76(v83, v57, v74, v75);
  if (!v58)
  {
    sub_2171F0738(v85, &qword_27CB24400, &unk_21775E9A0);

    memcpy(v86, v83, 0x221uLL);
    return memcpy(v67, v86, 0x221uLL);
  }

  sub_2171F0738(v85, &qword_27CB24400, &unk_21775E9A0);
}

void sub_2174CB03C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5[2] = a4;
  v5[3] = 0;
  sub_2174C7D28(a2, a3, 0x617461646174656DLL, 0xE800000000000000, 1, sub_2174CCFD0, v5, a1, a5);
}

uint64_t Artist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(const void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v143 = a4;
  v144 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  OUTLINED_FUNCTION_6_1();
  v142 = v11 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v141 = &v134 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v140 = &v134 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB286C8, &qword_217795300);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v134 - v22;
  v24 = type metadata accessor for ArtistPropertyProvider();
  v25 = OUTLINED_FUNCTION_43(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  OUTLINED_FUNCTION_6_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v134 - v34;
  memcpy(v156, a1, 0x161uLL);
  v147 = a2;
  if (([a2 respondsToSelector_] & 1) != 0 && (v36 = objc_msgSend(v147, sel_musicKit_modelObjectStorageDictionary)) != 0)
  {
    v37 = v36;
    v38 = sub_217751D98();
  }

  else
  {
    v38 = sub_217751DC8();
  }

  *&v146 = sub_21729F770(v38, v39, v40, v41, v42, v43, v44, v45, v134, v135, v136, countAndFlagsBits, v138, v139, v140, v141, v142, v143, v144, object, v146, *(&v146 + 1), v147, *v148, *&v148[8], *&v148[16], *&v148[24], *&v148[32], *&v148[40], *&v148[48], *&v148[56], *&v148[64], *&v148[72], *&v148[80], *&v148[88], *&v148[96], *&v148[104], *&v148[112]);

  memcpy(v152, a1, 0x161uLL);
  if (qword_280BE4A68 != -1)
  {
    swift_once();
  }

  v150[0] = xmmword_280BE4A70;
  LOBYTE(v150[1]) = byte_280BE4A80;
  v46 = qword_280BE4B80;
  sub_217751DE8();
  if (v46 != -1)
  {
    swift_once();
  }

  v149[0] = qword_280BE4B88;
  v149[1] = unk_280BE4B90;
  LOBYTE(v149[2]) = byte_280BE4B98;
  sub_217751DE8();
  v157.value.rawValue._countAndFlagsBits = v150;
  v157.value.rawValue._object = v149;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v151, v157, v158);

  object = v151[0].id.rawValue._object;
  countAndFlagsBits = v151[0].type.rawValue._countAndFlagsBits;
  v47 = v151[0].type.rawValue._object;
  HIDWORD(v138) = v151[0].type.isLibraryType;
  v139 = v151[0].href.value._countAndFlagsBits;
  v48 = v151[0].href.value._object;
  sub_2171F5110(a3, v151, &qword_27CB27590, &qword_21776ADF0);
  if (!v151[0].type.rawValue._object)
  {
    sub_2171F0738(v151, &qword_27CB27590, &qword_21776ADF0);
    memset(v152, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v152, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v152[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v152, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  sub_2171F3F0C(v152, v153);
  v49 = v154;
  v50 = v155;
  __swift_project_boxed_opaque_existential_1(v153, v154);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v49, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
    sub_2174CCA44(v23, v31);
    sub_2174CCD5C(v31, v35, type metadata accessor for ArtistPropertyProvider);
    memcpy(v152, v156, 0x161uLL);
    v51 = v24[46];
    memcpy(v149, (v31 + v51), 0x161uLL);
    memcpy(v148, (v31 + v51), sizeof(v148));
    sub_217269EF4(v149, v151);
    MusicIdentifierSet.union(_:)();
    memcpy(v150, v148, 0x161uLL);
    sub_217269F50(v150);
    sub_2174CCDBC(v31, type metadata accessor for ArtistPropertyProvider);
    sub_217269F50(v156);
    v52 = v24[46];
    memcpy(v152, &v35[v52], 0x161uLL);
    sub_217269F50(v152);
    memcpy(&v35[v52], v151, 0x161uLL);
    v53 = &v35[v24[47]];
    v54 = *(v53 + 1);
    sub_217751DE8();

    *v53 = countAndFlagsBits;
    *(v53 + 1) = v47;
    v53[16] = BYTE4(v138);
    v55 = &v35[v24[48]];
    v56 = *(v55 + 1);

    *v55 = v139;
    *(v55 + 1) = v48;
    __swift_destroy_boxed_opaque_existential_1(v153);
    goto LABEL_22;
  }

  __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
  sub_2171F0738(v23, &qword_27CB286C8, &qword_217795300);
  __swift_destroy_boxed_opaque_existential_1(v153);
LABEL_17:
  sub_217751DE8();
  sub_217751DE8();
  v136 = OUTLINED_FUNCTION_7_39();
  v135 = OUTLINED_FUNCTION_7_39();
  v134 = OUTLINED_FUNCTION_7_39();
  v57 = OUTLINED_FUNCTION_7_39();
  sub_2172A497C(v152);
  memcpy(v35, v152, 0x221uLL);
  *(v35 + 552) = 0u;
  v58 = v24[6];
  sub_2177516D8();
  OUTLINED_FUNCTION_15_10(&v35[v58]);
  *&v35[v24[7]] = 0;
  v59 = &v35[v24[8]];
  *v59 = xmmword_2177586D0;
  *(v59 + 1) = 0u;
  *(v59 + 2) = 0u;
  *(v59 + 3) = 0u;
  *&v35[v24[9]] = 0;
  *&v35[v24[10]] = 0;
  v35[v24[11]] = 2;
  v35[v24[12]] = 2;
  v35[v24[13]] = 2;
  v35[v24[14]] = 2;
  memcpy(&v35[v24[15]], v152, 0x221uLL);
  v60 = &v35[v24[16]];
  *v60 = 0;
  *(v60 + 1) = 0;
  OUTLINED_FUNCTION_15_10(&v35[v24[17]]);
  OUTLINED_FUNCTION_12_0(v24[18]);
  OUTLINED_FUNCTION_12_0(v24[19]);
  OUTLINED_FUNCTION_12_0(v24[20]);
  OUTLINED_FUNCTION_12_0(v24[21]);
  v61 = v24[22];
  sub_2177517D8();
  OUTLINED_FUNCTION_15_10(&v35[v61]);
  v35[v24[23]] = 3;
  OUTLINED_FUNCTION_15_10(&v35[v24[24]]);
  OUTLINED_FUNCTION_12_0(v24[25]);
  v62 = &v35[v24[26]];
  *(v62 + 12) = 0;
  *(v62 + 4) = 0u;
  *(v62 + 5) = 0u;
  *(v62 + 2) = 0u;
  *(v62 + 3) = 0u;
  *v62 = 0u;
  *(v62 + 1) = 0u;
  OUTLINED_FUNCTION_0_58(v24[27], 0);
  v63 = &v35[v24[28]];
  v63[6] = v64;
  v63[7] = v64;
  v63[4] = v64;
  v63[5] = v64;
  v63[2] = v64;
  v63[3] = v64;
  *v63 = v64;
  v63[1] = v64;
  OUTLINED_FUNCTION_0_58(v24[29], v64);
  OUTLINED_FUNCTION_0_58(v24[30], v65);
  OUTLINED_FUNCTION_0_58(v24[31], v66);
  OUTLINED_FUNCTION_0_58(v24[32], v67);
  OUTLINED_FUNCTION_0_58(v24[33], v68);
  OUTLINED_FUNCTION_0_58(v24[34], v69);
  OUTLINED_FUNCTION_0_58(v24[35], v70);
  OUTLINED_FUNCTION_0_58(v24[36], v71);
  OUTLINED_FUNCTION_0_58(v24[37], v72);
  OUTLINED_FUNCTION_0_58(v24[38], v73);
  OUTLINED_FUNCTION_0_58(v24[39], v74);
  OUTLINED_FUNCTION_0_58(v24[40], v75);
  OUTLINED_FUNCTION_0_58(v24[41], v76);
  OUTLINED_FUNCTION_0_58(v24[42], v77);
  OUTLINED_FUNCTION_0_58(v24[43], v78);
  *&v35[v24[44]] = 0;
  if (qword_280BE3968 != -1)
  {
    swift_once();
  }

  v79 = qword_280C01FC8;
  if (qword_280C01FC8 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v133 = sub_217752D28();

    object = v79;
    v79 = v133;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v35[v24[45]] = v79;
  v80 = &v35[v24[48]];
  memcpy(&v35[v24[46]], v156, 0x161uLL);
  v81 = &v35[v24[47]];
  *v81 = countAndFlagsBits;
  *(v81 + 1) = v47;
  v81[16] = BYTE4(v138);
  *v80 = v139;
  *(v80 + 1) = v48;
  v82 = v135;
  *&v35[v24[49]] = v136;
  *&v35[v24[50]] = v82;
  *&v35[v24[51]] = v134;
  *&v35[v24[52]] = v57;
LABEL_22:
  v83 = v146;
  v84 = sub_2172A3BC4(1, v146);
  v85 = v140;
  if ((v86 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v84, v24[18]);
  }

  sub_2174AFB9C(v147, v148);
  if (*&v148[24])
  {
    sub_2171F3F0C(v148, v149);
    sub_2171FF30C(v149, v152);
    v151[0].id.rawValue._countAndFlagsBits = 1;
    v151[0].id.rawValue._object = 0;
    v151[0].type.rawValue._object = 0;
    v151[0].type.rawValue._countAndFlagsBits = 0;
    Artwork.init(_:alternateText:existingColorAnalysis:)(v152, 0, 0, v151, v150);
    memcpy(v151, v150, 0x221uLL);
    nullsub_1(v151, v87);
    memcpy(v152, v35, 0x221uLL);
    sub_2171F0738(v152, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v35, v151, 0x221uLL);
    __swift_destroy_boxed_opaque_existential_1(v149);
  }

  else
  {
    sub_2171F0738(v148, &qword_27CB28308, &qword_21776C430);
  }

  v88 = sub_2172A3BC4(2, v83);
  if ((v89 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v88, v24[19]);
  }

  v90 = sub_2172A3BC4(3, v83);
  if ((v91 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v90, v24[20]);
  }

  v92 = sub_2172A3BC4(4, v83);
  if ((v93 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_2(v92, v24[21]);
  }

  sub_2172A3B98(v83, v85);
  object = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v85, 1, object) != 1)
  {
    v94 = v141;
    sub_2171F5110(v85, v141, &qword_27CB241C0, &qword_217759480);
    v95 = v24[22];
    sub_2171F0738(&v35[v95], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v94, &v35[v95]);
  }

  v96 = a3;
  sub_2171F0738(v85, &qword_27CB241C0, &qword_217759480);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v97 = qword_280BE8048;
  v98 = unk_280BE8050;
  v99 = byte_280BE8058;
  v100 = qword_280BE8060;
  v101 = unk_280BE8068;
  v102 = byte_280BE8070;
  *(&v152[1] + 1) = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v152[2] = sub_2171FEF88();
  v103 = swift_allocObject();
  *&v152[0] = v103;
  *(v103 + 16) = v97;
  *(v103 + 24) = v98;
  *(v103 + 32) = v99;
  *(v103 + 40) = v100;
  *(v103 + 48) = v101;
  *(v103 + 56) = v102;
  LOBYTE(v97) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v152);
  v104 = v96;
  v105 = v142;
  v106 = v146;
  if (v97)
  {
    sub_2172A3B80(6, v146);
    OUTLINED_FUNCTION_7_1();
    if (!v108)
    {
      v109 = v107;
      sub_2172A3B80(7, v106);
      OUTLINED_FUNCTION_7_1();
      if (!v108)
      {
        if (v109)
        {
          if (v110)
          {
            v112 = 0;
          }

          else
          {
            v112 = 2;
          }
        }

        else
        {
          v112 = v110 & 1;
        }

        goto LABEL_53;
      }
    }

    sub_2172A3B80(7, v106);
    OUTLINED_FUNCTION_7_1();
    if (!v108 && (v111 & 1) != 0)
    {
      v112 = 1;
LABEL_53:
      v35[v24[23]] = v112;
      goto LABEL_54;
    }

    sub_2172A3B80(6, v106);
    OUTLINED_FUNCTION_7_1();
    if (!v108 && (v113 & 1) != 0)
    {
      v112 = 2;
      goto LABEL_53;
    }
  }

LABEL_54:
  v114 = v24[13];
  if (v35[v114] == 2)
  {
    sub_2172A3B80(5, v106);
    OUTLINED_FUNCTION_7_1();
    if (!v108)
    {
      v35[v114] = v115;
    }
  }

  sub_2172A3B80(8, v106);
  OUTLINED_FUNCTION_7_1();
  if (!v108)
  {
    v35[v24[14]] = v116;
  }

  sub_2172A3B98(v106, v105);
  if (__swift_getEnumTagSinglePayload(v105, 1, object) != 1)
  {
    v117 = v141;
    sub_2171F5110(v105, v141, &qword_27CB241C0, &qword_217759480);
    v118 = v24[24];
    sub_2171F0738(&v35[v118], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v117, &v35[v118]);
  }

  sub_2171F0738(v105, &qword_27CB241C0, &qword_217759480);
  v119 = &v35[v24[16]];
  if (!v119[1])
  {
    v120 = sub_2172A3B68(11, v106);
    if (v121)
    {
      *v119 = v120;
      v119[1] = v121;
    }
  }

  v122 = sub_2172A3BC4(12, v106);
  if ((v123 & 1) == 0)
  {
    v122 = OUTLINED_FUNCTION_16_2(v122, v24[25]);
  }

  if (qword_280BE6870 != -1)
  {
    v122 = OUTLINED_FUNCTION_11_0();
  }

  *&v152[0] = qword_280BE6878;
  MEMORY[0x28223BE20](v122, v123);
  *(&v134 - 2) = v152;
  v124 = sub_2173DDC78(sub_2174A5E68, (&v134 - 4), v143);

  if (v124)
  {
    v125 = sub_2174AFB24(v106, 13);

    if (v125)
    {
      if (qword_280BE2A80 != -1)
      {
        swift_once();
      }

      v127 = qword_280BE2A98;
      v126 = unk_280BE2AA0;
      v146 = xmmword_280BE2A88;
      v128 = [objc_opt_self() identifierSetFromLegacyModelObject_];
      v151[0].id = v146;
      v151[0].type.rawValue._countAndFlagsBits = v127;
      v151[0].type.rawValue._object = v126;
      *&v150[0] = &unk_28295B368;
      LOBYTE(v149[0]) = 4;
      sub_217751DE8();
      sub_2172B6904(v128, &v151[0].id.rawValue._countAndFlagsBits, v150, v149, v152);
      memset(v150, 0, 40);
      swift_unknownObjectRetain();
      Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v125, v150, v151);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24620, &qword_217758B60);
      v129 = swift_allocObject();
      *(v129 + 16) = xmmword_2177586E0;
      sub_217284130(v151, v129 + 32);
      sub_2174AA468();
      v130 = v24[29];
      sub_2171F0738(&v35[v130], &qword_27CB25320, &unk_21776E020);
      memcpy(&v35[v130], v152, 0x68uLL);
      swift_unknownObjectRelease();
      sub_21728418C(v151);
    }
  }

  else
  {
  }

  *(&v152[1] + 1) = v24;
  *&v152[2] = &protocol witness table for ArtistPropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v152);
  sub_2174CCD5C(v35, boxed_opaque_existential_0, type metadata accessor for ArtistPropertyProvider);
  Artist.init(propertyProvider:)(v152, v144);
  swift_unknownObjectRelease();
  sub_2171F0738(v104, &qword_27CB27590, &qword_21776ADF0);
  return sub_2174CCDBC(v35, type metadata accessor for ArtistPropertyProvider);
}

uint64_t Artist.convertToLegacyModelStorageDictionary(for:)(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_6_1();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v107 - v10;
  HIDWORD(v108) = *a1;
  sub_2172A52D8();
  v12 = MEMORY[0x277D84F90];
  v116 = sub_217751DC8();
  if (qword_280BE6A00 != -1)
  {
    swift_once();
  }

  v13 = sub_2172A44CC();
  if (v14)
  {
    v13 = 0;
    v15 = 0;
    v114[2] = 0;
    v114[1] = 0;
  }

  else
  {
    v15 = MEMORY[0x277D83B88];
  }

  v114[0] = v13;
  v114[3] = v15;
  sub_21729D26C(v114, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255A0, &unk_21775D430);
  swift_allocObject();
  *&v106 = v12;
  *(&v106 + 1) = v12;
  v16 = sub_2173C381C(0x6B726F77747261, 0xE700000000000000, 0, 0, 0, 0, 2, 0, v106, v12, &unk_282959AF8);
  sub_2174C7A58(v16, v114);

  memcpy(v112, v114, 0x221uLL);
  memcpy(v113, v114, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v113) == 1)
  {
    memset(v115, 0, sizeof(v115));
  }

  else
  {
    memcpy(v109, v113, sizeof(v109));
    Artwork._convertToLegacyModelArtworkCatalog(rawCropStyle:)(0, 0, v115);
    sub_2171F0738(v112, &qword_27CB24400, &unk_21775E9A0);
  }

  sub_21729D26C(v115, 0);
  if (qword_280BE6938 != -1)
  {
    swift_once();
  }

  v17 = sub_2172A44CC();
  if (v18)
  {
    v17 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v19 = MEMORY[0x277D83B88];
  }

  v20 = OUTLINED_FUNCTION_2_63(v17, v19);
  sub_21729D26C(v20, 2);
  if (qword_280BE68C0 != -1)
  {
    swift_once();
  }

  v21 = sub_2172A44CC();
  if (v22)
  {
    v21 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v23 = MEMORY[0x277D83B88];
  }

  v24 = OUTLINED_FUNCTION_2_63(v21, v23);
  sub_21729D26C(v24, 3);
  if (qword_280BE68D8 != -1)
  {
    swift_once();
  }

  v25 = sub_2172A44CC();
  if (v26)
  {
    v25 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v27 = MEMORY[0x277D83B88];
  }

  v28 = OUTLINED_FUNCTION_2_63(v25, v27);
  sub_21729D26C(v28, 4);
  if (qword_280BE69B8 != -1)
  {
    swift_once();
  }

  sub_2176CAA04(qword_280C021B0, v29, v30, v31, v32, v33, v34, v35, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88], *&v109[96], *&v109[104], *&v109[112], *&v109[120], *&v109[128], *&v109[136], *&v109[144], *&v109[152]);
  v36 = sub_2177517D8();
  if (__swift_getEnumTagSinglePayload(v11, 1, v36) == 1)
  {
    sub_2171F0738(v11, &qword_27CB241C0, &qword_217759480);
    memset(v109, 0, 32);
  }

  else
  {
    *&v109[24] = v36;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v109);
    (*(*(v36 - 8) + 32))(boxed_opaque_existential_0, v11, v36);
  }

  v38 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v38, 9);
  if (qword_280BE8040 != -1)
  {
    OUTLINED_FUNCTION_14_3();
  }

  v39 = qword_280BE8048;
  v40 = unk_280BE8050;
  v41 = byte_280BE8058;
  v42 = qword_280BE8060;
  v43 = unk_280BE8068;
  v44 = byte_280BE8070;
  *&v109[24] = &type metadata for MusicFeatureFlag.UnderlyingFeatureFlag;
  *&v109[32] = sub_2171FEF88();
  v45 = swift_allocObject();
  *v109 = v45;
  *(v45 + 16) = v39;
  *(v45 + 24) = v40;
  *(v45 + 32) = v41;
  *(v45 + 40) = v42;
  *(v45 + 48) = v43;
  *(v45 + 56) = v44;
  LOBYTE(v39) = sub_217751978();
  __swift_destroy_boxed_opaque_existential_1(v109);
  v53 = MEMORY[0x277D839B0];
  if (v39)
  {
    if (qword_280BE6960 != -1)
    {
      OUTLINED_FUNCTION_10_33();
    }

    sub_2176CAA24(qword_280C02198, v46, v47, v48, v49, v50, v51, v52, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88], *&v109[96], *&v109[104], *&v109[112], *&v109[120], *&v109[128], *&v109[136]);
    *&v109[24] = v53;
    v109[0] = v109[0] == 2;
    v54 = OUTLINED_FUNCTION_6_41();
    sub_21729D26C(v54, 6);
  }

  if (qword_280BE6960 != -1)
  {
    OUTLINED_FUNCTION_10_33();
  }

  sub_2176CAA24(qword_280C02198, v46, v47, v48, v49, v50, v51, v52, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88], *&v109[96], *&v109[104], *&v109[112], *&v109[120], *&v109[128], *&v109[136]);
  *&v109[24] = v53;
  v109[0] = v109[0] == 1;
  v55 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v55, 7);
  if (qword_280BE68B0 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02148, v56, v57, v58, v59, v60, v61, v62, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[28], v109[30], v109[31], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88]);
  *&v109[24] = v53;
  v109[0] = v63 & 1;
  v64 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v64, 5);
  if (qword_280BE6840 != -1)
  {
    swift_once();
  }

  sub_2172A4358(qword_280C02130, v65, v66, v67, v68, v69, v70, v71, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[28], v109[30], v109[31], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88]);
  *&v109[24] = v53;
  v109[0] = v72 & 1;
  v73 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v73, 8);
  if (qword_280BE6918 != -1)
  {
    swift_once();
  }

  sub_2176CAA04(qword_280C02178, v74, v75, v76, v77, v78, v79, v80, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88], *&v109[96], *&v109[104], *&v109[112], *&v109[120], *&v109[128], *&v109[136], *&v109[144], *&v109[152]);
  if (__swift_getEnumTagSinglePayload(v7, 1, v36) == 1)
  {
    sub_2171F0738(v7, &qword_27CB241C0, &qword_217759480);
    memset(v109, 0, 32);
  }

  else
  {
    *&v109[24] = v36;
    v81 = __swift_allocate_boxed_opaque_existential_0(v109);
    (*(*(v36 - 8) + 32))(v81, v7, v36);
  }

  v82 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v82, 10);
  if (qword_280BE6898 != -1)
  {
    swift_once();
  }

  v83 = sub_2172A3FF0();
  if (v84)
  {
    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  v86 = 0xE000000000000000;
  *&v109[24] = MEMORY[0x277D837D0];
  if (v84)
  {
    v86 = v84;
  }

  *v109 = v85;
  *&v109[8] = v86;
  v87 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v87, 11);
  if (qword_280BE69F8 != -1)
  {
    swift_once();
  }

  v88 = sub_2172A44CC();
  if (v89)
  {
    v88 = OUTLINED_FUNCTION_8_39();
  }

  else
  {
    v90 = MEMORY[0x277D83B88];
  }

  v91 = OUTLINED_FUNCTION_2_63(v88, v90);
  sub_21729D26C(v91, 12);
  if (qword_280BE6870 != -1)
  {
    OUTLINED_FUNCTION_11_0();
  }

  sub_2176CA750(qword_280BE6878, v92, v93, v94, v95, v96, v97, v98, v107, v108, *v109, *&v109[8], *&v109[16], *&v109[24], *&v109[32], *&v109[40], *&v109[48], *&v109[56], *&v109[64], *&v109[72], *&v109[80], *&v109[88], *&v109[96], *&v109[104], *&v109[112], *&v109[120], *&v109[128], *&v109[136], *&v109[144], *&v109[152]);
  if (!*&v109[88])
  {
    v101 = &qword_27CB25320;
    v102 = &unk_21776E020;
    v103 = v109;
LABEL_65:
    sub_2171F0738(v103, v101, v102);
    memset(v109, 0, 32);
    goto LABEL_66;
  }

  sub_2172CE898();
  sub_2171F0738(v109, &qword_27CB27C80, &unk_21775D420);
  if (!v111[1])
  {
    v101 = &unk_27CB27760;
    v102 = &unk_21775A2D0;
    v103 = v111;
    goto LABEL_65;
  }

  v110 = BYTE4(v108);
  v100 = sub_2172A2B9C(&v110, v99);
  sub_21728418C(v111);
  *&v109[24] = sub_2173AB24C();
  *v109 = v100;
LABEL_66:
  v104 = OUTLINED_FUNCTION_6_41();
  sub_21729D26C(v104, 13);
  return v116;
}

uint64_t Artist.LegacyModelArtistPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_217752DC8();

  v4 = 14;
  if (v2 < 0xE)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2174CC9EC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Artist.LegacyModelArtistPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_2174CC9F8@<X0>(unint64_t *a1@<X8>)
{
  result = Artist.LegacyModelArtistPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2174CCA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistPropertyProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2174CCAAC()
{
  result = qword_280BE8570;
  if (!qword_280BE8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8570);
  }

  return result;
}

unint64_t sub_2174CCB00(uint64_t a1)
{
  *(a1 + 8) = sub_2172A52D8();
  result = sub_2174CCB30();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2174CCB30()
{
  result = qword_27CB286D0;
  if (!qword_27CB286D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286D0);
  }

  return result;
}

unint64_t sub_2174CCB88()
{
  result = qword_27CB286D8;
  if (!qword_27CB286D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB286D8);
  }

  return result;
}

uint64_t _s28LegacyModelArtistPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s28LegacyModelArtistPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2174CCD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_43(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2174CCDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2174CCE14()
{
  result = qword_280BE53E0;
  if (!qword_280BE53E0)
  {
    type metadata accessor for CloudArtist.Attributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE53E0);
  }

  return result;
}

unint64_t sub_2174CCE6C()
{
  result = qword_280BE2388;
  if (!qword_280BE2388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733AD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2388);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2174CCFF4(uint64_t a1)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  result = _s6LoaderC12LoadingStateOMa();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2174CD0B4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_2174CD0F4(a1);
  return v5;
}