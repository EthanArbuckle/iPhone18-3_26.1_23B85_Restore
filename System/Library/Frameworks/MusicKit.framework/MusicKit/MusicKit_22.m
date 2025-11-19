uint64_t sub_2173B3E58()
{
  OUTLINED_FUNCTION_209();
  v1 = *(v0 + 392);
  v2 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
  *(v0 + 472) = *(v1 + 72);
  *(v0 + 592) = *(v1 + 80);
  v3 = swift_allocObject();
  *(v0 + 480) = v3;
  *(v3 + 16) = xmmword_2177586E0;
  *(v0 + 488) = *v2;
  *(v0 + 496) = v2[1];
  sub_2177513F8();
  v4 = v2[11];
  v5 = v2[12];
  v6 = *(OUTLINED_FUNCTION_16_24(v2 + 8) + 40);
  OUTLINED_FUNCTION_66_3();
  v13 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v0 + 504) = v10;
  *v10 = v0;
  v11 = OUTLINED_FUNCTION_51_10(v10);

  return v13(v11);
}

uint64_t sub_2173B3FDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 504);
  *v3 = *v1;
  v2[64] = v6;
  v2[65] = v7;
  v2[66] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2173B40E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_171_0();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_184_0();
  a24 = v26;
  v29 = v26;
  if (v26[65])
  {
    v30 = v26[64];
    v31 = v26[60];
    v33 = v26[57];
    v32 = v26[58];
    v35 = v26[48];
    v34 = v26[49];
    v36 = *(v29 + 464);
    sub_2177513F8();

    (*(v34 + 16))(v33, v32, v35);
    v38 = *(v31 + 16);
    v37 = *(v31 + 24);
    v39 = v38 + 1;
    v40 = *(v29 + 480);
    if (v38 >= v37 >> 1)
    {
LABEL_75:
      OUTLINED_FUNCTION_9_23(v37);
      v40 = v167;
    }

    v41 = *(v29 + 472);
    v42 = *(v29 + 456);
    v43 = *(v29 + 384);
    v44 = *(v29 + 392);
    v45 = (*(v29 + 592) + 32) & ~*(v29 + 592);
    (*(v44 + 8))(*(v29 + 464), v43);
    *(v40 + 16) = v39;
    (*(v44 + 32))(v40 + v45 + v41 * v38, v42, v43);
  }

  else
  {
    v40 = v26[60];
  }

  v46 = *(v29 + 528);
  v47 = *(v29 + 288);
  a14 = sub_2173B5738(*(v47 + 112));
  sub_217751DE8();
  sub_2173B7304(&a14);
  if (v46)
  {

    OUTLINED_FUNCTION_172_1();
  }

  else
  {
    v179 = v47;

    v50 = a14;
    v51 = *(a14 + 16);
    v180 = v29;
    if (v51)
    {
      v182 = v40;
      a14 = MEMORY[0x277D84F90];
      sub_217275C90();
      v52 = 0;
      v53 = a14;
      v54 = *(a14 + 16);
      v55 = 16 * v54;
      do
      {
        v38 = *(v50 + v52 + 32);
        v56 = *(v50 + v52 + 40);
        a14 = v53;
        v57 = *(v53 + 24);
        sub_217751DE8();
        if (v54 >= v57 >> 1)
        {
          sub_217275C90();
          v53 = a14;
        }

        *(v53 + 16) = v54 + 1;
        v58 = v53 + v55;
        *(v58 + 32) = v38;
        *(v58 + 40) = v56;
        v55 += 16;
        v52 += 24;
        ++v54;
        --v51;
      }

      while (v51);
      v29 = v180;
      v59 = *(v180 + 448);

      *(v180 + 232) = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
      OUTLINED_FUNCTION_25_22();
      sub_217283840(v60, v61, &unk_2177677B0);
      v39 = sub_217751ED8();

      sub_2177513F8();

      v40 = v182;
      OUTLINED_FUNCTION_14_21();
      if (v63)
      {
LABEL_77:
        OUTLINED_FUNCTION_9_23(v62);
        v40 = v174;
      }

      OUTLINED_FUNCTION_32_16();
      v64 = *(v29 + 448);
      v65 = *(v29 + 384);
      v66 = *(v29 + 392);
      *(v40 + 16) = v39;
      (*(v66 + 32))(v40 + ((v67 + 32) & ~v67) + v68 * v38, v64, v65);
    }

    else
    {
    }

    v38 = *(*(v29 + 288) + 104);
    v69 = *(v38 + 16);
    v70 = MEMORY[0x277D84F90];
    if (v69)
    {
      v183 = v40;
      a14 = MEMORY[0x277D84F90];
      sub_217275C90();
      v70 = a14;
      v71 = (v38 + 32);
      v72 = *(a14 + 16);
      v73 = 16 * v72;
      v74 = 0x6C75736552706F74;
      do
      {
        if (*v71)
        {
          v38 = v74;
        }

        else
        {
          v38 = 0x736D726574;
        }

        if (*v71)
        {
          v75 = 0xEA00000000007374;
        }

        else
        {
          v75 = 0xE500000000000000;
        }

        a14 = v70;
        v76 = v72 + 1;
        if (v72 >= *(v70 + 24) >> 1)
        {
          OUTLINED_FUNCTION_47_10();
          v79 = v78;
          sub_217275C90();
          v74 = v79;
          v70 = a14;
        }

        *(v70 + 16) = v76;
        v77 = v70 + v73;
        *(v77 + 32) = v38;
        *(v77 + 40) = v75;
        v73 += 16;
        ++v71;
        v72 = v76;
        --v69;
      }

      while (v69);
      v29 = v180;
      v40 = v183;
    }

    v80 = *(v29 + 440);
    *(v29 + 240) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    OUTLINED_FUNCTION_25_22();
    sub_217283840(v81, v82, &unk_2177677B0);
    v39 = sub_217751ED8();

    sub_2177513F8();

    OUTLINED_FUNCTION_14_21();
    if (v63)
    {
      OUTLINED_FUNCTION_9_23(v83);
      v40 = v168;
    }

    OUTLINED_FUNCTION_32_16();
    v84 = *(v29 + 440);
    v85 = *(v29 + 384);
    v86 = *(v29 + 392);
    v88 = OUTLINED_FUNCTION_5_33(v87);
    v91 = *(v86 + 32);
    v90 = v86 + 32;
    v89 = v91;
    v91(v88);
    *(v29 + 224) = v40;
    v92 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsRequest);
    v93 = *(v29 + 288);
    if (v92 && *(v93 + 57) == 1)
    {
      v94 = *(v29 + 432);
      sub_2177513F8();
      OUTLINED_FUNCTION_14_21();
      if (v63)
      {
LABEL_81:
        OUTLINED_FUNCTION_9_23(v95);
        v40 = v178;
      }

      OUTLINED_FUNCTION_32_16();
      v96 = *(v29 + 432);
      v97 = *(v29 + 384);
      v99 = OUTLINED_FUNCTION_5_33(v98);
      v89(v99);
      *(v29 + 224) = v40;
      v93 = *(v29 + 288);
    }

    if ((*(v93 + 24) & 1) == 0)
    {
      v100 = *(v29 + 424);
      *(v29 + 272) = *(v93 + 16);
      sub_217752FC8();
      v39 = v101;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v63)
      {
LABEL_79:
        OUTLINED_FUNCTION_9_23(v102);
        v40 = v175;
      }

      OUTLINED_FUNCTION_32_16();
      v103 = *(v29 + 424);
      v104 = *(v29 + 384);
      v106 = OUTLINED_FUNCTION_5_33(v105);
      v89(v106);
      *(v29 + 224) = v40;
      v93 = *(v29 + 288);
    }

    if ((*(v93 + 40) & 1) == 0)
    {
      v107 = *(v29 + 416);
      v38 = "limit[results:topResults]";
      *(v29 + 264) = *(v93 + 32);
      sub_217752FC8();
      v39 = v108;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v63)
      {
        OUTLINED_FUNCTION_9_23(v109);
        v40 = v176;
      }

      OUTLINED_FUNCTION_32_16();
      v110 = *(v29 + 416);
      v111 = *(v29 + 384);
      v113 = OUTLINED_FUNCTION_5_33(v112);
      v89(v113);
      *(v29 + 224) = v40;
      v93 = *(v29 + 288);
    }

    if ((*(v93 + 56) & 1) == 0)
    {
      v114 = *(v29 + 408);
      v38 = "search/suggestions";
      *(v29 + 256) = *(v93 + 48);
      sub_217752FC8();
      v39 = v115;
      sub_2177513F8();

      OUTLINED_FUNCTION_14_21();
      if (v63)
      {
        OUTLINED_FUNCTION_9_23(v116);
        v40 = v177;
      }

      OUTLINED_FUNCTION_32_16();
      v117 = *(v29 + 408);
      v118 = *(v29 + 384);
      v120 = OUTLINED_FUNCTION_5_33(v119);
      v89(v120);
      *(v29 + 224) = v40;
    }

    v121 = *(v179 + 112);
    v122 = *(v121 + 16);
    sub_217751DE8();
    v123 = 0;
    v184 = MEMORY[0x277D84F90];
LABEL_47:
    v37 = 32 * v123 + 32;
    while (v122 != v123)
    {
      if (v123 >= *(v121 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v39 = v37 + 32;
      ++v123;
      v124 = dynamic_cast_existential_1_conditional(*(v121 + v37));
      v37 = v39;
      if (v124)
      {
        v126 = v90;
        v127 = v89;
        v29 = (*(v125 + 24))(*(v29 + 288) + 64, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);
        v39 = *(v29 + 16);
        v38 = *(v184 + 16);
        v128 = (v38 + v39);
        if (__OFADD__(v38, v39))
        {
          __break(1u);
          goto LABEL_77;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v184;
        if (!isUniquelyReferenced_nonNull_native || v128 > *(v184 + 24) >> 1)
        {
          if (v38 <= v128)
          {
            v131 = v38 + v39;
          }

          else
          {
            v131 = v38;
          }

          sub_2172B1A50(isUniquelyReferenced_nonNull_native, v131, 1, v184);
          v130 = v132;
        }

        v89 = v127;
        v90 = v126;
        v184 = v130;
        if (!*(v29 + 16))
        {

          v29 = v180;
          if (!v39)
          {
            goto LABEL_47;
          }

          __break(1u);
          break;
        }

        v102 = *(v130 + 16);
        if (((*(v130 + 24) >> 1) - v102) < v39)
        {
          __break(1u);
          goto LABEL_79;
        }

        v38 = v180;
        v133 = *(v180 + 472);
        v134 = *(v180 + 384);
        v135 = (*(v180 + 592) + 32) & ~*(v180 + 592);
        swift_arrayInitWithCopy();
        v29 = v180;

        if (!v39)
        {
          goto LABEL_47;
        }

        v136 = *(v184 + 16);
        v137 = __OFADD__(v136, v39);
        v95 = v136 + v39;
        if (!v137)
        {
          *(v184 + 16) = v95;
          goto LABEL_47;
        }

        __break(1u);
        goto LABEL_81;
      }
    }

    v138 = sub_2173B1A88(v184);
    sub_2175438A8(v138);
    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v140 = *(v29 + 392);
    v139 = *(v29 + 400);
    v141 = *(v29 + 384);
    v142 = __swift_project_value_buffer(v141, qword_280BE7428);
    (*(v140 + 16))(v139, v142, v141);
    v143 = *(v29 + 224);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_49_11();
      v169 = OUTLINED_FUNCTION_39_7();
      sub_2172B1A50(v169, v170, v171, v143);
      v143 = v172;
    }

    v145 = *(v143 + 16);
    v144 = *(v143 + 24);
    if (v145 >= v144 >> 1)
    {
      sub_2172B1A50(v144 > 1, v145 + 1, 1, v143);
      v143 = v173;
    }

    *(v29 + 536) = v143;
    OUTLINED_FUNCTION_32_16();
    v146 = *(v29 + 400);
    v147 = *(v29 + 384);
    v148 = *(v29 + 288);
    *(v143 + 16) = v145 + 1;
    (v89)(v143 + ((v149 + 32) & ~v149) + v150 * v145, v146, v147);
    v151 = v148[11];
    v152 = v148[12];
    v153 = OUTLINED_FUNCTION_16_24(v148 + 8);
    v154 = *(v153 + 16);
    v181 = v153 + 16;
    OUTLINED_FUNCTION_66_3();
    v185 = v155 + *v155;
    v157 = *(v156 + 4);
    v158 = swift_task_alloc();
    *(v29 + 544) = v158;
    *v158 = v29;
    OUTLINED_FUNCTION_51_10(v158);
    OUTLINED_FUNCTION_172_1();

    return v161(v159, v160, v161, v162, v163, v164, v165, v166, a9, 0, v179, v181, v185, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2173B4B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = *(v18 + 480);

  v20 = *(v18 + 528);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B4C28()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  *v3 = *v1;
  v2[69] = v6;
  v2[70] = v7;
  v2[71] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2173B4D30()
{
  v38 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = v0[69];
  sub_2177188E8(v2, v1);
  strcpy(v37, "/v1/catalog/");
  BYTE5(v37[1]) = 0;
  HIWORD(v37[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  v3 = v37[0];
  v4 = v37[1];
  v35 = v37[0];
  v36 = v37[1];
  if ((" to MusicCatalogSearchable." & 0x2F00000000000000) != 0x2000000000000000)
  {
    v37[0] = 47;
    v37[1] = 0xE100000000000000;
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177ACF70);
    MEMORY[0x21CEA23B0](47, 0xE100000000000000);

    v3 = v35;
    v4 = v36;
  }

  v5 = v0[70];
  v6 = v0[67];
  v7 = v0[47];
  v8 = v0[45];
  v9 = v0[42];
  v31 = v0[44];
  v32 = v0[43];
  v29 = v0[41];
  v30 = v0[40];
  v10 = v0[38];
  v11 = v0[39];
  v27 = v0[46];
  v28 = v0[37];
  v33 = v0[36];
  sub_2172CA838(v33 + 64, (v0 + 2));
  sub_217751DE8();
  sub_2173B6DA4(v3, v4, v6, 1, v0 + 2, v7);

  sub_2173B8280(v7, v27, type metadata accessor for MusicAPI.Endpoint);
  sub_2173B8280(v27, v8, type metadata accessor for MusicAPI.Endpoint);
  (*(v10 + 16))(v11, v8, v28);
  sub_2177512B8();
  sub_2173B82E0(v8, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v29 + 16))(v31, v9, v30);
  v12 = (v31 + *(v32 + 20));
  swift_beginAccess();
  v13 = off_280BEBCD0;

  (v13)(v14);

  v16 = v0[10];
  v15 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v16);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v16, v15, v12);
  (*(v29 + 8))(v9, v30);
  sub_2173B82E0(v27, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_21725EE54(v33 + 64, v12);
  v17 = v12[3];
  v18 = v12[4];
  v19 = *(OUTLINED_FUNCTION_16_24(v12) + 104);
  OUTLINED_FUNCTION_66_3();
  v34 = (v20 + *v20);
  v22 = *(v21 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[72] = v23;
  *v23 = v24;
  v23[1] = sub_2173B512C;
  v25 = v0[44];

  return (v34)(v0 + 25, v25, v17, v18);
}

uint64_t sub_2173B512C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173B5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = *(v18 + 536);

  v20 = *(v18 + 568);
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B5300()
{
  v1 = v0[73];
  v2 = v0[36];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[27];
  v6 = sub_217751348();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_217751338();
  sub_2172CA838(v2 + 64, (v0 + 12));
  JSONDecoder.dataRequestConfiguration.setter((v0 + 12));
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  v9 = SharedRelatedItemStore.init()();
  v10 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v10);
  sub_2173B7370();
  sub_217751308();
  if (v1)
  {
    v11 = v0[47];
    v12 = v0[44];

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_6_27();
    sub_2173B82E0(v11, v13);
    OUTLINED_FUNCTION_7_25();
    sub_2173B82E0(v12, v14);
    v16 = v0[57];
    v15 = v0[58];
    v18 = v0[55];
    v17 = v0[56];
    v20 = v0[53];
    v19 = v0[54];
    v22 = v0[51];
    v21 = v0[52];
    v23 = v0[50];
    v24 = v0[47];
    v42 = v0[46];
    v44 = v0[45];
    v46 = v0[44];
    v48 = v0[42];
    v50 = v0[39];

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v27 = v0[61];
    v26 = v0[62];
    v35 = v0[58];
    v36 = v0[57];
    v37 = v0[56];
    v38 = v0[55];
    v39 = v0[54];
    v40 = v0[53];
    v41 = v0[52];
    v43 = v0[51];
    v45 = v0[50];
    v47 = v0[46];
    v49 = v0[45];
    v33 = v0[47];
    v34 = v0[44];
    v51 = v0[42];
    v52 = v0[39];
    v28 = v0[35];
    v29 = v0[31];
    sub_2172CA838(v0[36] + 64, (v0 + 17));
    sub_217751DE8();
    sub_2173B5988(v29, v27, v26, (v0 + 17), v9, v28);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_6_27();
    sub_2173B82E0(v33, v30);
    OUTLINED_FUNCTION_7_25();
    sub_2173B82E0(v34, v31);

    OUTLINED_FUNCTION_0_2();
  }

  return v25();
}

uint64_t sub_2173B5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = v18[47];
  v20 = v18[44];
  OUTLINED_FUNCTION_6_27();
  sub_2173B82E0(v21, v22);
  OUTLINED_FUNCTION_7_25();
  sub_2173B82E0(v20, v23);
  v24 = v18[73];
  OUTLINED_FUNCTION_10_21();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2173B5738(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_217751DE8();
  v3 = MEMORY[0x277D84F90];
  v4 = 32;
  if (v2)
  {
    while (1)
    {
      v5 = dynamic_cast_existential_1_conditional(*(a1 + v4));
      if (!v5)
      {
        break;
      }

      OUTLINED_FUNCTION_40(v5, v6);
      v8 = v7();
      v9 = *(v8 + 16);
      v10 = *(v3 + 16);
      if (__OFADD__(v10, v9))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

      v11 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v10 + v9 > *(v3 + 24) >> 1)
      {
        sub_2172B199C();
        v3 = v12;
      }

      if (*(v11 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v9)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v3 + 16);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v15;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_16;
        }
      }

      v4 += 32;
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    sub_217752AA8();
    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD000000000000038);
    v20 = sub_217753348();
    MEMORY[0x21CEA23B0](v20);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    OUTLINED_FUNCTION_42_10();
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
LABEL_14:

    sub_2173DAE08(v3, v16);
    v18 = v17;

    return v18;
  }

  return result;
}

uint64_t sub_2173B5950(char a1)
{
  if (a1)
  {
    return 0x6C75736552706F74;
  }

  else
  {
    return 0x736D726574;
  }
}

void sub_2173B5988(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v171 = a5;
  v172 = a4;
  v169 = a2;
  v170 = a3;
  v166 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24710, &unk_2177A28C0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v177 = &v164 - v12;
  v168 = type metadata accessor for CatalogSearchRawResponse.TopResult();
  v13 = OUTLINED_FUNCTION_45_0(v168);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  OUTLINED_FUNCTION_1();
  v167 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24708, &unk_217758C90);
  v182 = OUTLINED_FUNCTION_0_0(v19);
  v183 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v182, v23);
  OUTLINED_FUNCTION_31();
  *&v180 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_99();
  v165 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28, v29);
  v181 = &v164 - v30;
  v164 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  v31 = OUTLINED_FUNCTION_0_0(v164);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31, v36);
  OUTLINED_FUNCTION_31();
  v175 = v37;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v38, v39);
  OUTLINED_FUNCTION_99();
  v173 = v40;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v41, v42);
  OUTLINED_FUNCTION_99();
  v178 = v43;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v44, v45);
  OUTLINED_FUNCTION_99();
  v179 = v46;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v164 - v49;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v164 - v53;
  v55 = 0;
  v176 = MEMORY[0x277D84F90];
  if (a1)
  {
    v56 = a1;
  }

  else
  {
    v56 = MEMORY[0x277D84F90];
  }

  v57 = *(v56 + 16);
  v174 = v33;
  while (1)
  {
    if (v57 == v55)
    {
      v70 = 0;
      v175 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v57 == v70)
          {

            v81 = *(v175 + 16);
            if (v81)
            {
              v82 = *(v164 + 32);
              v83 = v175 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
              v84 = *(v33 + 72);
              v85 = MEMORY[0x277D84F90];
              v86 = v177;
              do
              {
                OUTLINED_FUNCTION_0_45();
                v87 = v179;
                sub_2173B8280(v83, v179, v88);
                sub_2171F5110(v87 + v82, v86, &qword_27CB24710, &unk_2177A28C0);
                OUTLINED_FUNCTION_1_40();
                sub_2173B82E0(v87, v89);
                if (__swift_getEnumTagSinglePayload(v86, 1, v182) == 1)
                {
                  sub_2171F0738(v86, &qword_27CB24710, &unk_2177A28C0);
                }

                else
                {
                  sub_217283888(v86, v180);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v92 = *(v85 + 16);
                    v93 = OUTLINED_FUNCTION_39_7();
                    sub_2172B22D4(v93, v94, v95, v85);
                    v85 = v96;
                  }

                  v91 = *(v85 + 16);
                  v90 = *(v85 + 24);
                  if (v91 >= v90 >> 1)
                  {
                    OUTLINED_FUNCTION_57(v90);
                    OUTLINED_FUNCTION_47_10();
                    sub_2172B22D4(v97, v98, v99, v85);
                    v85 = v100;
                  }

                  *(v85 + 16) = v91 + 1;
                  sub_217283888(v180, v85 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v91);
                  v86 = v177;
                }

                v83 += v84;
                --v81;
              }

              while (v81);
            }

            else
            {

              v85 = MEMORY[0x277D84F90];
            }

            v210 = 0;
            memset(v209, 0, sizeof(v209));
            v101 = MEMORY[0x277D84F90];
            v102 = OUTLINED_FUNCTION_52_12();
            v103 = OUTLINED_FUNCTION_52_12();
            v180 = xmmword_2177586D0;
            v204 = xmmword_2177586D0;
            v206 = 0u;
            v207 = 0u;
            v208 = 0u;
            v205 = v85;
            v211 = v102;
            v212 = v103;
            v182 = *(v85 + 16);
            v177 = v102;
            sub_217751DE8();
            v175 = v103;
            sub_217751DE8();
            v104 = 0;
            v179 = v101;
LABEL_41:
            v105 = v167;
            while (v182 != v104)
            {
              if (v104 >= *(v85 + 16))
              {
                goto LABEL_88;
              }

              v106 = (*(v183 + 80) + 32) & ~*(v183 + 80);
              v107 = *(v183 + 72);
              v108 = v181;
              sub_2171F5110(v85 + v106 + v107 * v104, v181, &qword_27CB24708, &unk_217758C90);
              sub_2173B8280(v108, v105, type metadata accessor for CatalogSearchRawResponse.TopResult);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 10)
              {
                OUTLINED_FUNCTION_28_17();
                sub_217283888(v108, v165);
                v111 = v179;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v198 = v111;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  OUTLINED_FUNCTION_49_11();
                  v113 = OUTLINED_FUNCTION_39_7();
                  sub_217276528(v113, v114, v115);
                  v111 = v198;
                }

                v117 = *(v111 + 16);
                v116 = *(v111 + 24);
                if (v117 >= v116 >> 1)
                {
                  v118 = OUTLINED_FUNCTION_57(v116);
                  sub_217276528(v118, v117 + 1, 1);
                  v111 = v198;
                }

                ++v104;
                *(v111 + 16) = v117 + 1;
                v179 = v111;
                sub_217283888(v165, v111 + v106 + v117 * v107);
                goto LABEL_41;
              }

              sub_2171F0738(v108, &qword_27CB24708, &unk_217758C90);
              OUTLINED_FUNCTION_28_17();
              ++v104;
            }

            sub_2171F5110(v209, v203, &qword_27CB24188, &dword_217758930);
            v198 = v180;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v199 = v179;
            v119 = v176;
            v203[5] = v177;
            v203[6] = v175;
            v120 = *(v176 + 16);
            if (v120)
            {
              *&v184 = MEMORY[0x277D84F90];
              sub_217751DE8();
              sub_217751DE8();
              sub_217276600(0, v120, 0);
              v183 = v184;
              v121 = v119 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
              *&v180 = *(v174 + 72);
              do
              {
                OUTLINED_FUNCTION_0_45();
                v122 = v178;
                sub_2173B8280(v121, v178, v123);
                if (v122[4])
                {
                  v124 = v122[3];
                  v181 = v122[4];
                  v182 = v124;
                }

                else
                {
                  v181 = 0xE000000000000000;
                  v182 = 0;
                }

                v125 = v122[2];
                v126 = v122[5];
                v127 = v122[6];
                if (v125)
                {
                  v128 = v122[1];
                }

                else
                {
                  v128 = 0;
                }

                if (v125)
                {
                  v129 = v122[2];
                }

                else
                {
                  v129 = 0xE000000000000000;
                }

                v130 = v122[6];
                sub_217751DE8();
                sub_217751DE8();
                sub_217751DE8();
                OUTLINED_FUNCTION_1_40();
                sub_2173B82E0(v122, v131);
                v132 = v183;
                *&v184 = v183;
                v134 = *(v183 + 16);
                v133 = *(v183 + 24);
                if (v134 >= v133 >> 1)
                {
                  OUTLINED_FUNCTION_57(v133);
                  OUTLINED_FUNCTION_47_10();
                  sub_217276600(v137, v138, v139);
                  v132 = v184;
                }

                *(v132 + 16) = v134 + 1;
                v183 = v132;
                v135 = (v132 + 48 * v134);
                v136 = v181;
                v135[4] = v182;
                v135[5] = v136;
                v135[6] = v128;
                v135[7] = v129;
                v135[8] = v126;
                v135[9] = v127;
                v121 += v180;
                --v120;
              }

              while (v120);
            }

            else
            {
              sub_217751DE8();
              sub_217751DE8();

              v183 = MEMORY[0x277D84F90];
            }

            v140 = v179;
            v197 = 0;
            v195 = 0u;
            v196 = 0u;
            v141 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsResponse);
            v144 = v171;
            v143 = v172;
            if (v141)
            {
              OUTLINED_FUNCTION_40(v141, v142);
              v146 = v145();
              v148 = v147;
              sub_2172CA838(v143, v192);
              sub_2171F5110(&v204, &v184, &qword_27CB24308, &unk_217767A90);
              v149 = *(v148 + 8);
              *(&v193[1] + 1) = v146;
              *&v193[2] = v148;
              __swift_allocate_boxed_opaque_existential_0(v193);

              v150 = v170;
              sub_217751DE8();
              v149(v169, v150, v192, &v184, v144, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration, v146, v148);
              v140 = v179;
              v141 = sub_2171F0738(&v195, &qword_27CB26E70, &unk_217767A80);
              v195 = v193[0];
              v196 = v193[1];
              v197 = *&v193[2];
            }

            memset(v193, 0, 40);
            MEMORY[0x28223BE20](v141, v142);
            v162 = v144;
            v163 = v143;
            v151 = sub_2172E4CDC(sub_2173B8338, (&v164 - 4), v140);
            sub_2171F5110(v193, &v184, &qword_27CB24188, &dword_217758930);
            v152 = *(&v185 + 1);
            sub_2171F0738(v193, &qword_27CB24188, &dword_217758930);
            if (v152)
            {
              v154 = v184;
              v153 = v185;
              v155 = v186;
              v156 = v166;
            }

            else
            {
              v155 = *(&v185 + 1);
              v154 = 0uLL;
              v156 = v166;
              if (*(&v185 + 1))
              {
                sub_2171F0738(&v184, &qword_27CB24188, &dword_217758930);
                v154 = 0uLL;
                v155 = 0;
              }

              v153 = 0uLL;
            }

            v157 = v172;
            *&v184 = v151;
            BYTE8(v184) = 0;
            v185 = v154;
            v186 = v153;
            v187 = v155;
            v188 = 0u;
            v189 = 0u;
            v190 = v177;
            v191 = v175;
            sub_2171F5110(&v195, v194, &qword_27CB26E70, &unk_217767A80);
            v158 = v170;
            *(v156 + 152) = v169;
            *(v156 + 160) = v158;
            *v156 = v183;
            sub_2171F5110(&v184, v192, &qword_27CB26E78, &qword_217785AC0);
            if (v192[11])
            {
              memcpy(v193, v192, 0x68uLL);
            }

            else
            {
              sub_2174AA020();
              if (v192[11])
              {
                sub_2171F0738(v192, &qword_27CB26E78, &qword_217785AC0);
              }
            }

            memcpy((v156 + 8), v193, 0x68uLL);
            sub_2171F5110(v194, v192, &qword_27CB26E70, &unk_217767A80);
            v159 = v192[3];
            if (v192[3])
            {
              v160 = v192[4];
              __swift_project_boxed_opaque_existential_1(v192, v192[3]);
              sub_2171F9380(v159, v160, v193);

              OUTLINED_FUNCTION_169_1(v194);
              sub_2171F0738(&v184, &qword_27CB26E78, &qword_217785AC0);
              OUTLINED_FUNCTION_169_1(&v195);
              sub_21733AB9C(v157);
              OUTLINED_FUNCTION_169_1(&v198);
              OUTLINED_FUNCTION_169_1(&v204);
              __swift_destroy_boxed_opaque_existential_1(v192);
            }

            else
            {

              OUTLINED_FUNCTION_169_1(v194);
              sub_2171F0738(&v184, &qword_27CB26E78, &qword_217785AC0);
              OUTLINED_FUNCTION_169_1(&v195);
              sub_21733AB9C(v157);
              sub_2171F0738(&v198, &qword_27CB24308, &unk_217767A90);
              sub_2171F0738(&v204, &qword_27CB24308, &unk_217767A90);
              OUTLINED_FUNCTION_169_1(v192);
              memset(v193, 0, 40);
            }

            v161 = v193[1];
            *(v156 + 112) = v193[0];
            *(v156 + 128) = v161;
            *(v156 + 144) = *&v193[2];
            return;
          }

          if (v70 >= *(v56 + 16))
          {
            goto LABEL_87;
          }

          v71 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v72 = *(v33 + 72);
          OUTLINED_FUNCTION_0_45();
          sub_2173B8280(v73, v50, v74);
          if ((*v50 & 1) == 0)
          {
            break;
          }

LABEL_23:
          sub_2173B821C(v50, v173);
          v77 = v175;
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v204 = v77;
          if ((v78 & 1) == 0)
          {
            OUTLINED_FUNCTION_49_11();
            OUTLINED_FUNCTION_39_7();
            sub_217276620();
            v77 = v204;
          }

          v80 = *(v77 + 16);
          v79 = *(v77 + 24);
          if (v80 >= v79 >> 1)
          {
            OUTLINED_FUNCTION_57(v79);
            OUTLINED_FUNCTION_47_10();
            sub_217276620();
            v77 = v204;
          }

          ++v70;
          *(v77 + 16) = v80 + 1;
          v175 = v77;
          sub_2173B821C(v173, v77 + v71 + v80 * v72);
          v33 = v174;
        }

        v75 = sub_217753058();

        if (v75)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_1_40();
        sub_2173B82E0(v50, v76);
        ++v70;
      }
    }

    if (v55 >= *(v56 + 16))
    {
      break;
    }

    v58 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v59 = *(v33 + 72);
    OUTLINED_FUNCTION_0_45();
    sub_2173B8280(v60, v54, v61);
    if (*v54)
    {
      v62 = sub_217753058();

      if (v62)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_1_40();
      sub_2173B82E0(v54, v63);
      ++v55;
    }

    else
    {

LABEL_11:
      sub_2173B821C(v54, v175);
      v64 = v176;
      v65 = swift_isUniquelyReferenced_nonNull_native();
      *&v204 = v64;
      if ((v65 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        OUTLINED_FUNCTION_39_7();
        sub_217276620();
        v64 = v204;
      }

      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_57(v66);
        v176 = v69;
        sub_217276620();
        v68 = v176;
        v64 = v204;
      }

      ++v55;
      *(v64 + 16) = v68;
      v176 = v64;
      sub_2173B821C(v175, v64 + v58 + v67 * v59);
      v33 = v174;
    }
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_2173B6778()
{
  sub_217752DC8();
  OUTLINED_FUNCTION_44_1();

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

uint64_t sub_2173B67C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2173B6778();
  *a2 = result;
  return result;
}

uint64_t sub_2173B67F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2173B5950(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2173B6908()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;

  return MusicCatalogSearchSuggestionsRequest.catalogResponse()();
}

uint64_t static MusicCatalogSearchSuggestionsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
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
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(a1 + 57) != *(a2 + 57))
  {
    return 0;
  }

  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  __swift_project_boxed_opaque_existential_1((a1 + 64), v8);
  v10 = *(v9 + 112);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v10(a2 + 64, v11, v8, v9) & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 104);
  v13 = *(a2 + 104);
  sub_217273E7C();
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  v15 = *(a1 + 112);
  v16 = *(a2 + 112);

  return sub_217270BE0(v15, v16);
}

void MusicCatalogSearchSuggestionsRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_217751FF8();
  if (*(v1 + 24) == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = v1[2];
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
  }

  if (*(v1 + 40) == 1)
  {
    sub_217753208();
  }

  else
  {
    v6 = v1[4];
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
  }

  if (*(v1 + 56) == 1)
  {
    sub_217753208();
  }

  else
  {
    v7 = v1[6];
    sub_217753208();
    MEMORY[0x21CEA3550](v7);
  }

  v8 = *(v1 + 57);
  sub_217753208();
  v9 = v1[11];
  v10 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v9);
  (*(v10 + 120))(a1, v9, v10);
  v11 = v1[13];
  sub_2172832B8();
  v12 = v1[14];

  sub_21727D7C8(a1, v12);
}

uint64_t MusicCatalogSearchSuggestionsRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173B6CA4()
{
  sub_2177531E8();
  MusicCatalogSearchSuggestionsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t *static MusicCatalogSearchSuggestionsRequest.supportedTypeValues.getter()
{
  v1 = sub_2175F30F4();
  v2 = sub_2173B19F4(v1, sub_2176F77F4, sub_2176F865C);
  v9 = v2;
  v3 = dynamic_cast_existential_1_conditional(&type metadata for MusicCatalogSearchSuggestionsResponse);
  if (v3)
  {
    OUTLINED_FUNCTION_40(v3, v4);
    v5();
    v7 = (*(v6 + 40))();
    v0 = &v9;
    sub_217543D94(v7);
    v2 = v9;
  }

  sub_2173DB0E4(v2);
  OUTLINED_FUNCTION_44_1();

  return v0;
}

uint64_t sub_2173B6DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v62 = a4;
  v57 = a3;
  v63 = a6;
  v64 = a2;
  v61 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v55 - v12;
  v14 = sub_2177516D8();
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15, v20);
  OUTLINED_FUNCTION_1();
  v58 = (v22 - v21);
  v23 = sub_217751518();
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v59 = v25;
  v60 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24, v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  v32 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v33 = *(v32 + 24);
  v34 = OUTLINED_FUNCTION_44_1();
  v36 = v35(v34, v32);
  v38 = v37;
  v39 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v40 = *(v39 + 32);
  v41 = OUTLINED_FUNCTION_44_1();
  v43 = v42(v41, v39);
  v45 = v44;
  sub_217751508();
  sub_217751DE8();
  v56 = v36;
  sub_2177514D8();
  sub_217751DE8();
  MEMORY[0x21CEA17F0](v43, v45);
  v46 = v64;
  sub_217751DE8();
  v47 = v57;
  MEMORY[0x21CEA1810](v61, v46);
  if (*(v47 + 16))
  {
    sub_217751DE8();
    sub_217751458();
  }

  sub_217751488();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_2171F0738(v13, &unk_27CB277C0, &qword_217758DC0);
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_217752AA8();
    OUTLINED_FUNCTION_44_10();
    MEMORY[0x21CEA23B0](0xD000000000000036);
    MEMORY[0x21CEA23B0](v61, v64);
    MEMORY[0x21CEA23B0](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_42_10();
    result = sub_217752D08();
    __break(1u);
  }

  else
  {
    sub_21733AB9C(a5);

    v48 = *(v17 + 32);
    v49 = v58;
    v48(v58, v13, v14);
    v50 = v63;
    v48(v63, v49, v14);
    v51 = type metadata accessor for MusicAPI.Endpoint();
    result = (*(v59 + 32))(v50 + v51[5], v31, v60);
    *(v50 + v51[6]) = v62 & 1;
    v53 = (v50 + v51[7]);
    *v53 = v56;
    v53[1] = v38;
    v54 = (v50 + v51[8]);
    *v54 = v43;
    v54[1] = v45;
  }

  return result;
}

uint64_t sub_2173B728C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_2173B7304(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217492390(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2173B73C4(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_2173B7370()
{
  result = qword_27CB26E30;
  if (!qword_27CB26E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E30);
  }

  return result;
}

uint64_t sub_2173B73C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_217752FB8();
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
        v6 = sub_217752348();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2173B7598(v7, v8, a1, v4);
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
    return sub_2173B74B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2173B74B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 + 24);
        if (result == *v10 && *(v10 + 32) == *(v10 + 8))
        {
          break;
        }

        result = sub_217753058();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 24);
        v12 = *(v10 + 32);
        v14 = *(v10 + 40);
        v15 = *(v10 + 16);
        *(v10 + 24) = *v10;
        *(v10 + 40) = v15;
        *v10 = v13;
        *(v10 + 8) = v12;
        *(v10 + 16) = v14;
        v10 -= 24;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2173B7598(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 24 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 24 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_217753058();
        }

        v10 = v9 + 2;
        v18 = 24 * v9;
        v19 = (v11 + 24 * v9 + 56);
        while (v10 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_217753058()))
          {
            break;
          }

          ++v10;
          v19 += 3;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v10)
        {
          v21 = 24 * v10 - 8;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = *(v25 + 16);
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_121;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          v93 = v5;
          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v10 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v10 - 24;
            v92 = v9;
            v35 = v9 - v10;
            do
            {
              v36 = v35;
              v37 = v34;
              do
              {
                v38 = *(v37 + 24) == *v37 && *(v37 + 32) == *(v37 + 8);
                if (v38 || (sub_217753058() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v40 = *(v37 + 24);
                v39 = *(v37 + 32);
                v41 = *(v37 + 40);
                v42 = *(v37 + 16);
                *(v37 + 24) = *v37;
                *(v37 + 40) = v42;
                *v37 = v40;
                *(v37 + 8) = v39;
                *(v37 + 16) = v41;
                v37 -= 24;
              }

              while (!__CFADD__(v36++, 1));
              ++v10;
              v34 += 24;
              --v35;
            }

            while (v10 != v32);
            v10 = v32;
            v9 = v92;
          }

          v5 = v93;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2310(0, v8[2] + 1, 1, v8);
        v8 = v88;
      }

      v45 = v8[2];
      v44 = v8[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        sub_2172B2310(v44 > 1, v45 + 1, 1, v8);
        v8 = v89;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v10;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = &v47[2 * v49];
          v84 = v83[1];
          sub_2173B7C1C((*a3 + 24 * *v81), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v82)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v49 > v86)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v84;
          if (v49 >= v86)
          {
            goto LABEL_107;
          }

          v46 = v86 - 1;
          memmove(&v47[2 * v49], v83 + 2, 16 * (v86 - 1 - v49));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_2173B7AE4(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_2173B7AE4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_217717044(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_2173B7C1C((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_2173B7C1C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2175000D8(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_217753058() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2175000D8(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_217753058() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = 24 * ((v10 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

unint64_t sub_2173B7DF8()
{
  result = qword_27CB26E38;
  if (!qword_27CB26E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E38);
  }

  return result;
}

uint64_t sub_2173B7E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2173B7E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogSearchSuggestionsRequest.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173B7FD8()
{
  result = qword_27CB26E40;
  if (!qword_27CB26E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E40);
  }

  return result;
}

unint64_t sub_2173B8070()
{
  result = qword_27CB26E58;
  if (!qword_27CB26E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E58);
  }

  return result;
}

unint64_t sub_2173B80C4()
{
  result = qword_280BE4108;
  if (!qword_280BE4108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE4108);
  }

  return result;
}

uint64_t sub_2173B821C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogSearchSuggestionsRawResponse.Suggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2173B8280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_43(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2173B82E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2173B8358()
{
  result = qword_27CB24868;
  if (!qword_27CB24868)
  {
    sub_217751428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24868);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return sub_217751DC8();
}

MusicKit::MusicLyrics __swiftcall MusicLyrics.init(hasLyrics:hasTimeSyncedLyrics:hasCustomLyrics:customLyrics:)(Swift::Bool_optional hasLyrics, Swift::Bool_optional hasTimeSyncedLyrics, Swift::Bool_optional hasCustomLyrics, Swift::String_optional customLyrics)
{
  *v4 = hasLyrics;
  *(v4 + 1) = hasTimeSyncedLyrics;
  *(v4 + 2) = hasCustomLyrics;
  *(v4 + 8) = customLyrics;
  LOBYTE(result.customLyrics.value._object) = hasCustomLyrics;
  LOBYTE(result.customLyrics.value._countAndFlagsBits) = hasTimeSyncedLyrics;
  result.hasLyrics = hasLyrics;
  return result;
}

uint64_t MusicLyrics.customLyrics.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_217751DE8();
  return v1;
}

uint64_t MusicLyrics.customLyrics.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MusicLyrics.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  if (v4 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v9 == 2 || ((v9 ^ v4) & 1) != 0)
    {
      return v14;
    }
  }

  if (v5 == 2)
  {
    if (v10 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v10 == 2 || ((v10 ^ v5) & 1) != 0)
    {
      return v14;
    }
  }

  if (v6 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = 0;
    if (v11 == 2 || ((v11 ^ v6) & 1) != 0)
    {
      return v14;
    }
  }

  if (v8)
  {
    if (!v13)
    {
      return 0;
    }

    v15 = v7 == v12 && v8 == v13;
    if (!v15 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2173B8790(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636972794C736168 && a2 == 0xE900000000000073;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000002177AD140 == a2;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F74737543736168 && a2 == 0xEF73636972794C6DLL;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x794C6D6F74737563 && a2 == 0xEC00000073636972)
      {

        return 3;
      }

      else
      {
        v9 = sub_217753058();

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

unint64_t sub_2173B8904(char a1)
{
  result = 0x636972794C736168;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x6F74737543736168;
      break;
    case 3:
      result = 0x794C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2173B89AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2173B8790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2173B89D4(uint64_t a1)
{
  v2 = sub_2173B8DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2173B8A10(uint64_t a1)
{
  v2 = sub_2173B8DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicLyrics.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (*v0 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v1 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (v2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!v4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicLyrics.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  sub_2177531E8();
  MusicLyrics.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2173B8B9C()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  sub_2177531E8();
  MusicLyrics.hash(into:)();
  return sub_217753238();
}

uint64_t MusicLyrics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E88, &qword_217767AB0);
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = v17 - v11;
  v19 = v1[1];
  v18 = v1[2];
  v13 = *(v1 + 1);
  v17[1] = *(v1 + 2);
  v17[2] = v13;
  v14 = a1[4];
  v15 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173B8DA4();
  sub_2177532F8();
  v23 = 0;
  OUTLINED_FUNCTION_3_41();
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_3_41();
    v21 = 2;
    OUTLINED_FUNCTION_3_41();
    v20 = 3;
    sub_217752EF8();
  }

  return (*(v7 + 8))(v12, v4);
}

unint64_t sub_2173B8DA4()
{
  result = qword_27CB26E90;
  if (!qword_27CB26E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26E90);
  }

  return result;
}

uint64_t MusicLyrics.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E98, &qword_217767AB8);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v22 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173B8DA4();
  sub_2177532C8();
  if (!v2)
  {
    v28 = 0;
    OUTLINED_FUNCTION_0_46();
    v15 = sub_217752E28();
    v27 = 1;
    OUTLINED_FUNCTION_0_46();
    v16 = sub_217752E28();
    v26 = 2;
    OUTLINED_FUNCTION_0_46();
    v24 = sub_217752E28();
    v25 = 3;
    OUTLINED_FUNCTION_0_46();
    v17 = sub_217752E18();
    v20 = v19;
    v21 = *(v8 + 8);
    v23 = v17;
    v21(v13, v5);
    *a2 = v15;
    *(a2 + 1) = v16;
    *(a2 + 2) = v24;
    *(a2 + 8) = v23;
    *(a2 + 16) = v20;
    sub_217751DE8();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicLyrics.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  OUTLINED_FUNCTION_1_41();
  v5 = Optional<A>.musicKit_prettyDescription.getter(v4);
  MEMORY[0x21CEA23B0](v5);

  MEMORY[0x21CEA23B0](0x636972794C736168, 0xEB00000000203A73);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v11 = v6;
  v7 = Optional<A>.musicKit_prettyDescription.getter(v2);
  MEMORY[0x21CEA23B0](v7);

  MEMORY[0x21CEA23B0](0xD000000000000017, v11);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v12 = v8;
  v9 = Optional<A>.musicKit_prettyDescription.getter(v3);
  MEMORY[0x21CEA23B0](v9);

  MEMORY[0x21CEA23B0](0xD000000000000013, v12);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return v13;
}

uint64_t MusicLyrics.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  OUTLINED_FUNCTION_1_41();
  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  strcpy(v13, "\n  hasLyrics: ");
  HIBYTE(v13[1]) = -18;
  v6 = Optional<A>.musicKit_prettyDescription.getter(v3);
  MEMORY[0x21CEA23B0](v6);

  MEMORY[0x21CEA23B0](v13[0], v13[1]);

  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v13[1] = v7;
  v8 = Optional<A>.musicKit_prettyDescription.getter(v4);
  MEMORY[0x21CEA23B0](v8);

  MEMORY[0x21CEA23B0](0xD000000000000019, v13[1]);

  OUTLINED_FUNCTION_5_34();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v13[1] = v9;
  v10 = Optional<A>.musicKit_prettyDescription.getter(v5);
  MEMORY[0x21CEA23B0](v10);

  MEMORY[0x21CEA23B0](0xD000000000000015, v13[1]);

  if (v2)
  {
    OUTLINED_FUNCTION_5_34();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v13[1] = v11;
    MEMORY[0x21CEA23B0](v1, v2);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000013, v13[1]);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return v13[2];
}

unint64_t sub_2173B9394()
{
  result = qword_27CB26EA0;
  if (!qword_27CB26EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EA0);
  }

  return result;
}

uint64_t sub_2173B93E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2173B943C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicLyrics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2173B9580()
{
  result = qword_27CB26EA8;
  if (!qword_27CB26EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EA8);
  }

  return result;
}

unint64_t sub_2173B95D8()
{
  result = qword_27CB26EB0;
  if (!qword_27CB26EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EB0);
  }

  return result;
}

unint64_t sub_2173B9630()
{
  result = qword_27CB26EB8;
  if (!qword_27CB26EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26EB8);
  }

  return result;
}

uint64_t sub_2173B9684()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173B96C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2173B9700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2173B978C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  __src[0] = a1;
  *a3 = sub_217752FC8();
  a3[1] = v5;
  memcpy(v8, a2, 0x49uLL);
  v6 = type metadata accessor for MusicLibraryRequest();
  UncheckedSendableWrapper.init(_:)(v8, v6, __src);
  return memcpy(a3 + 2, __src, 0x49uLL);
}

uint64_t sub_2173B9830(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[55] = a5;
  v7[56] = a6;
  v7[53] = a1;
  v7[54] = a4;
  memcpy(v7 + 41, v6, 0x59uLL);
  v11 = swift_task_alloc();
  v7[57] = v11;
  *v11 = v7;
  v11[1] = sub_2173B9900;

  return sub_2173B9C9C((v7 + 2), a2, a3 & 1, a4);
}

uint64_t sub_2173B9900()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 456);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 464) = v0;

  if (v0)
  {
    v6 = sub_2173B9C84;
  }

  else
  {
    v6 = sub_2173B9A08;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2173B9A08()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);
  v3 = *(v0 + 432);
  v4 = *(v3 + 16);
  v5 = *(*(v3 + 24) + 8);
  v6 = type metadata accessor for MusicItemCollection();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v0 + 120, v0 + 16, v6);
  type metadata accessor for MusicItemCollection();
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 424);
    (*(v7 + 8))(v0 + 16, v6);
    memcpy(v8, (v0 + 224), 0x68uLL);
    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 440);
    v12 = sub_2177528F8();
    *(v0 + 224) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    OUTLINED_FUNCTION_41_0(v12);
    (*(v13 + 8))(v0 + 224);
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000048, 0x80000002177AD190);
    v14 = sub_217753348();
    MEMORY[0x21CEA23B0](v14);

    MEMORY[0x21CEA23B0](0xD00000000000001ELL, 0x80000002177AD1E0);
    v15 = sub_217753348();
    MEMORY[0x21CEA23B0](v15);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    return sub_217752D08();
  }
}

uint64_t sub_2173B9C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 912) = a4;
  *(v5 + 193) = a3;
  *(v5 + 904) = a2;
  *(v5 + 896) = a1;
  v6 = v4[1];
  *(v5 + 920) = *v4;
  *(v5 + 928) = v6;
  memcpy((v5 + 120), v4 + 2, 0x49uLL);
  sub_217751DE8();

  return MEMORY[0x2822009F8](sub_2173B9D34, 0, 0);
}

uint64_t sub_2173B9D34()
{
  v1 = *(v0 + 928);
  if (!v1)
  {
    return sub_217752D08();
  }

  result = *(v0 + 920);
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    v25 = *(v0 + 928);

    return sub_217752D08();
  }

  if ((v1 & 0x1000000000000000) == 0)
  {
    if ((v1 & 0x2000000000000000) != 0)
    {
      if (*(v0 + 920) == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_9_24();
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v9)
              {
                break;
              }

              v7 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (*(v0 + 920) != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v9)
            {
              break;
            }

            v7 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_9_24();
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v9)
            {
              break;
            }

            v7 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
            if (v9)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_69;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v44 = *(v0 + 928);
        result = sub_217752B88();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_2();
                if (!v9 & v8)
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v9)
                {
                  goto LABEL_69;
                }

                v7 = v16 + v15;
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_2_5();
                if (v9)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

        goto LABEL_83;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_69;
              }

              v20 = 10 * v7;
              if ((v7 * 10) >> 64 != (10 * v7) >> 63)
              {
                goto LABEL_69;
              }

              v7 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_69;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_69:
        v7 = 0;
        v12 = 1;
LABEL_70:
        v23 = *(v0 + 928);
        v24 = v12;

        if (v24)
        {
          return sub_217752D08();
        }

        goto LABEL_74;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v9)
              {
                goto LABEL_69;
              }

              v7 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_69;
              }

              OUTLINED_FUNCTION_2_5();
              if (v9)
              {
                goto LABEL_70;
              }
            }
          }

LABEL_60:
          v12 = 0;
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v7 = sub_2175B1ECC(result, *(v0 + 928), 10);
  v27 = v26;

  if (v27)
  {
    return sub_217752D08();
  }

LABEL_74:
  v28 = *(v0 + 160);
  *(v0 + 840) = *(v0 + 144);
  *(v0 + 856) = v28;
  v30 = *(v0 + 144);
  v29 = *(v0 + 160);
  *(v0 + 872) = *(v0 + 176);
  *(v0 + 936) = v7;
  v31 = *(v0 + 912);
  v32 = *(v0 + 193);
  v33 = *(v0 + 904);
  v34 = *(v0 + 120);
  *(v0 + 944) = v34;
  v35 = *(v0 + 128);
  *(v0 + 952) = v35;
  *(v0 + 888) = *(v0 + 192);
  if (v32)
  {
    v36 = v35;
  }

  else
  {
    v36 = v33;
  }

  *(v0 + 200) = v34;
  *(v0 + 208) = v36;
  *(v0 + 216) = v7;
  *(v0 + 224) = v30;
  *(v0 + 240) = v29;
  *(v0 + 256) = *(v0 + 176);
  *(v0 + 272) = *(v0 + 192);
  memcpy((v0 + 280), (v0 + 200), 0x49uLL);
  v37 = *(v31 + 16);
  v38 = *(v31 + 24);
  v39 = type metadata accessor for MusicLibraryRequest();
  *(v0 + 960) = v39;
  v40 = type metadata accessor for UncheckedSendableWrapper();
  OUTLINED_FUNCTION_41_0(v40);
  (*(v41 + 16))(v0 + 360, v0 + 120);
  v42 = *(v39 - 8);
  *(v0 + 968) = v42;
  (*(v42 + 16))(v0 + 440, v0 + 200, v39);
  v43 = swift_task_alloc();
  *(v0 + 976) = v43;
  *v43 = v0;
  v43[1] = sub_2173BA194;

  return MusicLibraryRequest.response()();
}

uint64_t sub_2173BA194()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[122];
  v6 = v2[121];
  *v4 = *v1;
  v3[123] = v0;

  v7 = v6 + 8;
  v3[124] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = v2[120];
  if (v0)
  {
    memcpy(v3 + 75, v3 + 35, 0x49uLL);
    v9 = *v7;
    v3[126] = *v7;
    v9(v3 + 75, v8);
    v10 = sub_2173BA408;
  }

  else
  {
    memcpy(v3 + 95, v3 + 35, 0x49uLL);
    v11 = *v7;
    v3[125] = *v7;
    v11(v3 + 95, v8);
    v10 = sub_2173BA340;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2173BA340()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 1000);
  v2 = *(v0 + 992);
  v3 = *(v0 + 960);
  v4 = *(v0 + 936);
  v5 = 904;
  if (*(v0 + 193))
  {
    v5 = 952;
  }

  v6 = *(v0 + v5);
  v7 = *(v0 + 896);
  *(v0 + 680) = *(v0 + 944);
  *(v0 + 688) = v6;
  *(v0 + 696) = v4;
  *(v0 + 752) = *(v0 + 888);
  v8 = *(v0 + 856);
  *(v0 + 704) = *(v0 + 840);
  *(v0 + 720) = v8;
  *(v0 + 736) = *(v0 + 872);
  v1(v0 + 680, v3);
  memcpy(v7, (v0 + 16), 0x68uLL);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2173BA408()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 1008);
  v2 = *(v0 + 992);
  v3 = *(v0 + 960);
  v4 = 904;
  if (*(v0 + 193))
  {
    v4 = 952;
  }

  v5 = *(v0 + v4);
  v6 = *(v0 + 936);
  *(v0 + 520) = *(v0 + 944);
  *(v0 + 528) = v5;
  *(v0 + 536) = v6;
  *(v0 + 592) = *(v0 + 888);
  v7 = *(v0 + 856);
  *(v0 + 544) = *(v0 + 840);
  *(v0 + 560) = v7;
  *(v0 + 576) = *(v0 + 872);
  v1(v0 + 520, v3);
  v8 = *(v0 + 8);
  v9 = *(v0 + 984);

  return v8();
}

uint64_t sub_2173BA4BC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4 && v5)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_217753058();
    }
  }

  return result;
}

uint64_t sub_2173BA504()
{
  if (!v0[1])
  {
    return sub_217753208();
  }

  v1 = *v0;
  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2173BA57C()
{
  sub_2177531E8();
  sub_2173BA504();
  return sub_217753238();
}

uint64_t sub_2173BA5BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2173BA694;

  return sub_2173B9830(a1, a2, a3 & 1, a6, a4, a5);
}

uint64_t sub_2173BA694()
{
  OUTLINED_FUNCTION_10();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2173BA788()
{
  sub_2177531E8();
  sub_2173BA504();
  return sub_217753238();
}

uint64_t sub_2173BA7C4(uint64_t *a1)
{
  v4 = sub_217752B38();
  v5 = OUTLINED_FUNCTION_0_39(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  OUTLINED_FUNCTION_11_2();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217753298();
  OUTLINED_FUNCTION_2_43();
  sub_217752B08();
  v12 = sub_217752B48();
  swift_allocError();
  v14 = v13;
  (*(v7 + 16))(v13, v2, v1);
  v15 = *MEMORY[0x277D84168];
  OUTLINED_FUNCTION_41_0(v12);
  (*(v16 + 104))(v14);
  swift_willThrow();
  (*(v7 + 8))(v2, v1);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2173BA934(void *a1, uint64_t a2)
{
  v7 = sub_217752B68();
  v8 = OUTLINED_FUNCTION_0_39(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  OUTLINED_FUNCTION_11_2();
  memcpy(__dst, v2, 0x59uLL);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2177532D8();
  OUTLINED_FUNCTION_2_43();
  sub_217752B08();
  v15 = sub_217752B78();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26EC0, &qword_217786330) + 48);
  v17[3] = a2;
  v19 = swift_allocObject();
  *v17 = v19;
  memcpy((v19 + 16), __dst, 0x59uLL);
  (*(v10 + 16))(v17 + v18, v4, v3);
  v20 = *MEMORY[0x277D841A8];
  OUTLINED_FUNCTION_41_0(v15);
  (*(v21 + 104))(v17);
  swift_willThrow();
  OUTLINED_FUNCTION_41_0(a2);
  (*(v22 + 16))(v24, __dst, a2);
  return (*(v10 + 8))(v4, v3);
}

char *sub_2173BAB60()
{
  if (qword_280BE9F10 != -1)
  {
    OUTLINED_FUNCTION_1_42();
    swift_once();
  }

  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  result = [qword_280C029A0 authorizationStatusForScopes_];
  v1 = result;
  switch(result)
  {
    case 0uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44();
      }

      v2 = sub_217751AF8();
      __swift_project_value_buffer(v2, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v23 = v5;
      v9 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v6, v7, v8);
      OUTLINED_FUNCTION_5_35(v9);
      *(v1 + 14) = sub_21729C0E8(0x65746544746F6E2ELL, 0xEE0064656E696D72, &v23);
      v10 = "Failed to %s because the music authorization status is set to %s. Please make sure to request authorization for your app to access the user's Apple Music data using MusicAuthorization.request().";
      break;
    case 1uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44();
      }

      v11 = sub_217751AF8();
      __swift_project_value_buffer(v11, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v23 = v5;
      v15 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v12, v13, v14);
      OUTLINED_FUNCTION_5_35(v15);
      *(v1 + 14) = sub_21729C0E8(0x6465696E65642ELL, 0xE700000000000000, &v23);
      v10 = "Failed to %s because the music authorization status is set to %s. This is recoverable by guiding your user to the privacy settings, so they can grant your app access to Apple Music.";
      break;
    case 2uLL:
      if (qword_280BE73E0 != -1)
      {
        OUTLINED_FUNCTION_2_44();
      }

      v16 = sub_217751AF8();
      __swift_project_value_buffer(v16, qword_280C023A8);
      sub_217751DE8();
      v3 = sub_217751AD8();
      v4 = sub_217752808();

      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_19;
      }

      swift_slowAlloc();
      v5 = OUTLINED_FUNCTION_8_29();
      v23 = v5;
      v20 = OUTLINED_FUNCTION_4_46(4.8151e-34, v5, v17, v18, v19);
      OUTLINED_FUNCTION_5_35(v20);
      *(v1 + 14) = sub_21729C0E8(0x636972747365722ELL, 0xEB00000000646574, &v23);
      v10 = "Failed to %s because the music authorization status is set to %s. Access to MusicKit is restricted in a way that the user cannot change.";
      break;
    case 3uLL:
      return result;
    default:
      sub_217752AA8();
      v22 = OUTLINED_FUNCTION_7_26();
      MEMORY[0x21CEA23B0](v22);
      type metadata accessor for ICCloudServiceAuthorizationStatus(0);
      sub_217752C78();
      MEMORY[0x21CEA23B0](46, 0xE100000000000000);
      OUTLINED_FUNCTION_6_28();
      OUTLINED_FUNCTION_3_42();
      result = sub_217752D08();
      __break(1u);
      return result;
  }

  _os_log_impl(&dword_2171EE000, v3, v4, v10, v1, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x21CEA4360](v5, -1, -1);
  MEMORY[0x21CEA4360](v1, -1, -1);
LABEL_19:

  sub_217354318();
  swift_allocError();
  *v21 = 1;
  return swift_willThrow();
}

uint64_t sub_2173BAFBC()
{
  if (qword_280BE9F10 != -1)
  {
    OUTLINED_FUNCTION_1_42();
    swift_once();
  }

  if (qword_280BEAE60 != -1)
  {
    OUTLINED_FUNCTION_0_48();
    swift_once();
  }

  v1 = qword_280C029A0;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2173BB124;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CB26EC8, &qword_217767E98);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2173BB324;
  v0[13] = &block_descriptor_4;
  v0[14] = v2;
  [v1 requestAuthorizationForScopes:2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2173BB124()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2173BB204, 0, 0);
}

uint64_t sub_2173BB204()
{
  v1 = *(v0 + 144);
  if (v1 >= 4)
  {
    sub_217752AA8();
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    MEMORY[0x21CEA23B0](0xD000000000000038, 0x80000002177AD3A0);
    *(v0 + 144) = v1;
    type metadata accessor for ICCloudServiceAuthorizationStatus(0);
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    OUTLINED_FUNCTION_6_28();
    OUTLINED_FUNCTION_3_42();
    return sub_217752D08();
  }

  else
  {
    **(v0 + 152) = v1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2173BB324(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_217717518(v3, a2);
}

_BYTE *storeEnumTagSinglePayload for MusicAuthorization(_BYTE *result, int a2, int a3)
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

void *sub_2173BB41C@<X0>(void *__src@<X5>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v12;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  result = memcpy((a9 + 40), __src, 0x68uLL);
  *(a9 + 144) = a7;
  *(a9 + 152) = a8;
  return result;
}

uint64_t MusicCatalogChart.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogChart.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_217751DE8();
  return OUTLINED_FUNCTION_93();
}

uint64_t MusicCatalogChart.items.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(*(a1 + 24) + 8);
  v6 = type metadata accessor for MusicItemCollection();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + 40, v6);
}

uint64_t sub_2173BB544@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogChart.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static MusicCatalogChart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v10 || (sub_217753058()) && *(a1 + 16) == *(a2 + 16))
  {
    v11 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (v11 || (sub_217753058()) && (static MusicItemCollection<>.== infix(_:_:)(a1 + 40, a2 + 40, a3, *(a4 + 8), a5))
    {
      v12 = *(a1 + 152);
      v13 = *(a2 + 152);
      if (v12)
      {
        if (v13)
        {
          v14 = *(a1 + 144) == *(a2 + 144) && v12 == v13;
          if (v14 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t MusicCatalogChart<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  sub_217751FF8();
  MEMORY[0x21CEA3550](*(v2 + 16));
  v7 = v2[3];
  v8 = v2[4];
  sub_217751FF8();
  v9 = *(a2 + 16);
  v10 = *(*(a2 + 24) + 8);
  v11 = type metadata accessor for MusicItemCollection();
  MusicItemCollection<>.hash(into:)(a1, v11);
  if (!v2[19])
  {
    return sub_217753208();
  }

  v12 = v2[18];
  sub_217753208();

  return sub_217751FF8();
}

uint64_t MusicCatalogChart<>.hashValue.getter(uint64_t a1)
{
  sub_2177531E8();
  MusicCatalogChart<>.hash(into:)(v3, a1);
  return sub_217753238();
}

uint64_t sub_2173BB7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2177531E8();
  MusicCatalogChart<>.hash(into:)(v6, a2);
  return sub_217753238();
}

uint64_t MusicCatalogChart<>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2171FF30C(a1, v21);
  sub_21737EA04(v21, v22);
  if (!v4)
  {
    v9 = type metadata accessor for CatalogRawChart();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v21, v22, v9);
    v11 = a1[3];
    v12 = a1[4];
    v13 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    Decoder.dataRequestConfiguration.getter(v11, v12);
    v15 = a1[3];
    v16 = a1[4];
    v17 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v17, v18);
    Decoder.sharedRelatedItemStore.getter();
    sub_21737F0E8(v21, &v20, a2, &type metadata for AnyMusicDataRequestConfiguration, a3, &protocol witness table for AnyMusicDataRequestConfiguration, a4);
    (*(v10 + 8))(v22, v9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicCatalogChart<>.encode(to:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  Encoder.dataRequestConfiguration.getter(v4, v5);
  sub_21737F41C(a2, v10);
  sub_21733AB9C(&v9);
  v6 = *(a2 + 16);
  v7 = type metadata accessor for CatalogRawChart();
  sub_21737ED84(a1, v7);
  return (*(*(v7 - 8) + 8))(v10, v7);
}

unint64_t sub_2173BBAC4(char a1, uint64_t a2)
{
  to._countAndFlagsBits = 0x22203A646920200ALL;
  to._object = 0xE800000000000000;
  MEMORY[0x21CEA23B0](*v2, *(v2 + 8));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  strcpy(v14, ",\n  kind: ");
  BYTE3(v14[1]) = 0;
  HIDWORD(v14[1]) = -369098752;
  v5 = 0x706F54797469632ELL;
  v6 = 0xEF706F546C61626FLL;
  if (*(v2 + 16) == 1)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x6C47796C6961642ELL;
  }

  if (*(v2 + 16))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x616C5074736F6D2ELL;
  }

  if (*(v2 + 16))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000646579;
  }

  MEMORY[0x21CEA23B0](v7, v8);

  MEMORY[0x21CEA23B0](v14[0], v14[1]);

  strcpy(v14, ",\n  title: ");
  BYTE5(v14[1]) = 0;
  HIWORD(v14[1]) = -5120;
  MEMORY[0x21CEA23B0](*(v2 + 24), *(v2 + 32));
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  MEMORY[0x21CEA23B0](v14[0], v14[1]);

  v9 = *(a2 + 16);
  v10 = *(*(a2 + 24) + 8);
  type metadata accessor for MusicItemCollection();
  swift_getWitnessTable();
  v11._countAndFlagsBits = 0x736D657469;
  v11._object = 0xE500000000000000;
  RandomAccessCollection.musicKit_appendDescription(label:forDebugging:to:)(v11, a1 & 1, &to);
  if (MusicItemCollection.hasNextBatch.getter())
  {
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD410);
  }

  sub_217752AA8();

  v12 = sub_217753348();
  MEMORY[0x21CEA23B0](v12);

  MEMORY[0x21CEA23B0](10302, 0xE200000000000000);
  MEMORY[0x21CEA23B0](to._countAndFlagsBits, to._object);

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t sub_2173BBDD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2173BBE14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2173BBE54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MusicCatalogChartsRequest.response()()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_217282D8C;

  return sub_2173BC97C();
}

uint64_t MusicCatalogChartsRequest.init(genre:kinds:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  swift_beginAccess();
  v8 = off_280BEBCD0;

  (v8)(&v32, v9);

  v10 = v34;
  v11 = v35;
  __swift_project_boxed_opaque_existential_1(&v32, v34);
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v10, v11, v7 + 40);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  v12 = *(a3 + 16);
  if (v12)
  {
    v28 = a1;
    v29 = a2;
    v30 = v7;
    v31 = MEMORY[0x277D84F90];
    sub_217276E20();
    v13 = 0;
    v14 = 32;
    v15 = v31;
    while (v13 < *(a3 + 16))
    {
      if (!dynamic_cast_existential_1_conditional(*(a3 + v14)))
      {
        goto LABEL_12;
      }

      (*(v16 + 8))(&v32);
      v17 = v32;
      v19 = v33;
      v18 = v34;
      v21 = *(v31 + 16);
      v20 = *(v31 + 24);
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_57(v20);
        v27 = v23;
        sub_217276E20();
        v17 = v27;
      }

      *(v31 + 16) = v21 + 1;
      v22 = v31 + 32 * v21;
      *(v22 + 32) = v17;
      ++v13;
      *(v22 + 48) = v19;
      *(v22 + 56) = v18;
      v14 += 16;
      if (v12 == v13)
      {

        a2 = v29;
        v7 = v30;
        a1 = v28;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    v26 = sub_217753348();
    MEMORY[0x21CEA23B0](v26);

    MEMORY[0x21CEA23B0](0xD00000000000002FLL, 0x80000002177AD460);
    result = OUTLINED_FUNCTION_19_4();
    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_10:
    v25 = *(a1 + 16);
    *(v7 + 80) = *a1;
    *(v7 + 96) = v25;
    *(v7 + 112) = *(a1 + 32);
    *(v7 + 128) = *(a1 + 48);
    *(v7 + 136) = a2;
    *(v7 + 144) = v15;
    *(v7 + 152) = 0;
  }

  return result;
}

double MusicCatalogChartsRequest.genre.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_2173C2BB0(v1 + 80, v5);
  if (v8 == 1)
  {
    sub_2173C2BE8(v5);
  }

  else
  {
    sub_2171F0738(a1, &unk_27CB27760, &unk_21775A2D0);

    v4 = v5[1];
    *a1 = v5[0];
    *(a1 + 16) = v4;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void *MusicCatalogChartsRequest.kinds.getter()
{
  sub_2173C2BB0(v0 + 80, v3);
  if (v4)
  {
    sub_2173C2BE8(v3);
    return &unk_28295F518;
  }

  else
  {
    v1 = v3[7];

    sub_2171F0738(v3, &unk_27CB27760, &unk_21775A2D0);
  }

  return v1;
}

uint64_t sub_2173BC370()
{
  sub_2173C2BB0(v0 + 80, v3);
  if (v4 == 1)
  {
    sub_2173C2BE8(v3);
    return 0;
  }

  else
  {
    v1 = v3[7];

    sub_2171F0738(v3, &unk_27CB27760, &unk_21775A2D0);
  }

  return v1;
}

uint64_t MusicCatalogChartsRequest.types.getter()
{
  sub_2173C2BB0(v0 + 80, &v29);
  if (v34)
  {
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_20_6();
    sub_2173BC7FC(KeyPath, v2);

    v3 = v27;
  }

  else
  {

    v3 = v33;
    sub_2171F0738(&v29, &unk_27CB27760, &unk_21775A2D0);
  }

  v4 = *(v3 + 16);
  if (v4)
  {
    v28 = MEMORY[0x277D84F90];
    sub_217276EB0(0, v4, 0);
    v5 = 0;
    v6 = v28;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = dynamic_cast_existential_1_conditional(*(v7 - 3));
      if (!v10)
      {
        goto LABEL_15;
      }

      v12 = v10;
      v13 = v11;
      v15 = *(v28 + 16);
      v14 = *(v28 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = OUTLINED_FUNCTION_57(v14);
        sub_217276EB0(v17, v15 + 1, 1);
      }

      *(v28 + 16) = v15 + 1;
      v16 = v28 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      ++v5;
      v7 += 4;
      if (v4 == v5)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_15:
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x726F662065707954, 0xEF2065756C617620);
    sub_217751DE8();
    sub_217285954(1);
    v19 = sub_217752918();
    v21 = v20;

    v29 = 46;
    v30 = 0xE100000000000000;
    MEMORY[0x21CEA23B0](v19, v21);

    v23 = v29;
    v22 = v30;
    sub_217751DE8();
    v29 = sub_2172857F8(1uLL);
    v30 = v24;
    v31 = v25;
    v32 = v26;
    sub_217285A70();
    sub_217751DE8();
    sub_217752048();

    MEMORY[0x21CEA23B0](v23, v22);

    MEMORY[0x21CEA23B0](0xD000000000000031, 0x80000002177AD490);
    result = OUTLINED_FUNCTION_19_4();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t MusicCatalogChartsRequest.limit.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t MusicCatalogChartsRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t MusicCatalogChartsRequest.offset.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t MusicCatalogChartsRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t sub_2173BC7B8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  result = MusicItemTypeValue.catalogResourceTypes.getter();
  *a2 = result;
  return result;
}

void sub_2173BC7FC(uint64_t a1@<X3>, void *a2@<X8>)
{
  static URL.resourceTypes(extractedFrom:)();
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v22 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = 24 * v5; ; i += 24)
  {
    if (v6 == v5)
    {

      *a2 = v22;
      return;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v8 = *(v4 + i + 48);
    v10 = *(v4 + i + 32);
    v9 = *(v4 + i + 40);
    sub_217751DE8();
    sub_2173C2A00(v10, v9, v8, a1, v23);

    v11 = v23[0];
    v12 = v23[1];
    v14 = v23[2];
    v13 = v23[3];
    if (v23[0])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v22 + 16);
        sub_2172B1AC0();
        v22 = v19;
      }

      v15 = *(v22 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v22 + 24) >> 1)
      {
        sub_2172B1AC0();
        v16 = v15 + 1;
        v22 = v20;
      }

      ++v5;
      *(v22 + 16) = v16;
      v17 = (v22 + 32 * v15);
      v17[4] = v11;
      v17[5] = v12;
      v17[6] = v14;
      v17[7] = v13;
      goto LABEL_2;
    }

    sub_2172AC65C(0);
    ++v5;
  }

  __break(1u);
}

uint64_t sub_2173BC97C()
{
  OUTLINED_FUNCTION_10();
  v1[57] = v2;
  v1[58] = v0;
  v3 = sub_2177516D8();
  v1[59] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_66_3();
  v1[60] = v5;
  v7 = *(v6 + 64) + 15;
  v1[61] = swift_task_alloc();
  v8 = sub_2177512F8();
  v1[62] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_66_3();
  v1[63] = v10;
  v12 = *(v11 + 64) + 15;
  v1[64] = swift_task_alloc();
  v13 = type metadata accessor for MusicDataRequest();
  v1[65] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[66] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v16 = swift_task_alloc();
  v1[69] = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[70] = v17;
  *v17 = v18;
  v17[1] = sub_2173BCB38;

  return sub_2173BD7B0(v16, v0 + 80);
}

uint64_t sub_2173BCB38()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173BCC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = v14[68];
  v16 = v14[67];
  v17 = v14[66];
  v19 = v14[63];
  v18 = v14[64];
  v21 = v14[61];
  v20 = v14[62];
  v22 = v14[59];
  v23 = v14[60];
  v49 = v14[65];
  v51 = v14[58];
  sub_2172CB230(v14[69], v15);
  sub_2172CB230(v15, v16);
  (*(v23 + 16))(v21, v16, v22);
  sub_2177512B8();
  sub_2173C2E74(v16, type metadata accessor for MusicAPI.Endpoint);
  sub_217751268();
  (*(v19 + 16))(v17, v18, v20);
  v24 = (v17 + *(v49 + 20));
  swift_beginAccess();
  v25 = off_280BEBCD0;

  (v25)(v26);

  v27 = v14[40];
  __swift_project_boxed_opaque_existential_1(v14 + 36, v14[39]);
  v28 = OUTLINED_FUNCTION_153();
  MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v28, v29, v30);
  (*(v19 + 8))(v18, v20);
  sub_2173C2E74(v15, type metadata accessor for MusicAPI.Endpoint);
  __swift_destroy_boxed_opaque_existential_1(v14 + 36);
  sub_21725EE54(v51 + 40, v24);
  v31 = v24[4];
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v32 = OUTLINED_FUNCTION_5_4();
  v33 = *(v32 + 104);
  v50 = v32 + 104;
  OUTLINED_FUNCTION_66_3();
  v52 = v34 + *v34;
  v36 = *(v35 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v14[72] = v37;
  *v37 = v38;
  v37[1] = sub_2173BCEC0;
  v39 = v14[66];
  OUTLINED_FUNCTION_120_0();

  return v44(v40, v41, v42, v43, v44, v45, v46, v47, a9, v50, v52, a12, a13, a14);
}

uint64_t sub_2173BCEC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173BCFBC()
{
  v45 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  *(v0 + 592) = v3;
  *(v0 + 600) = v4;
  v5 = *(v0 + 448);
  *(v0 + 608) = v5;
  v6 = sub_217751348();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 616) = sub_217751338();
  sub_2172CA838(v2 + 40, v0 + 328);
  JSONDecoder.dataRequestConfiguration.setter(v0 + 328);
  type metadata accessor for SharedRelatedItemStore();
  swift_allocObject();
  *(v0 + 624) = SharedRelatedItemStore.init()();
  v9 = swift_retain_n();
  JSONDecoder.sharedRelatedItemStore.setter(v9);
  sub_2173C2ECC();
  sub_217751308();
  if (v1)
  {
    v10 = *(v0 + 552);
    v11 = *(v0 + 528);

    sub_217275694(v3, v4);

    OUTLINED_FUNCTION_1_17();
    sub_2173C2E74(v10, v12);
    OUTLINED_FUNCTION_21();
    sub_2173C2E74(v11, v13);
    v14 = *(v0 + 552);
    v15 = *(v0 + 544);
    v16 = *(v0 + 536);
    v17 = *(v0 + 528);
    v18 = *(v0 + 512);
    v19 = *(v0 + 488);

    OUTLINED_FUNCTION_20_0();

    return v20();
  }

  else
  {
    v22 = *(v0 + 464);
    v23 = *(v0 + 160);
    *(v0 + 96) = *(v0 + 144);
    *(v0 + 112) = v23;
    *(v0 + 128) = *(v0 + 176);
    sub_2173C2BB0(v22 + 80, v0 + 16);
    if (*(v0 + 88))
    {
      v24 = *(v0 + 464);
      v25 = *(v0 + 16);
      v26 = *(v0 + 24);
      KeyPath = swift_getKeyPath();
      sub_2173BC7FC(KeyPath, v40);
    }

    else
    {
      v28 = *(v0 + 72);

      v29 = *(v0 + 80);
      sub_2171F0738(v0 + 16, &unk_27CB27760, &unk_21775A2D0);
    }

    v30 = *(v0 + 464);
    sub_2173BC370();
    sub_2172CA838(v30 + 40, v0 + 368);
    sub_2175E7B50();
    v31 = v40[0];
    v32 = v40[1];
    *(v0 + 632) = v40[0];
    *(v0 + 640) = v32;
    v33 = v41;
    v34 = v42;
    *(v0 + 648) = v41;
    *(v0 + 656) = v34;
    v35 = v43;
    v36 = v44;
    *(v0 + 664) = v43;
    *(v0 + 672) = v36;
    *(v0 + 240) = v31;
    *(v0 + 248) = v32;
    *(v0 + 256) = v33;
    *(v0 + 264) = v34;
    *(v0 + 272) = v35;
    *(v0 + 280) = v36;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 680) = v37;
    *v37 = v38;
    v37[1] = sub_2173BD3A0;
    v39 = *(v0 + 464);

    return sub_2173BDBF4(v0 + 192, (v0 + 240));
  }
}

uint64_t sub_2173BD2F0()
{
  v1 = v0[69];
  v2 = v0[66];
  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v3, v4);
  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v2, v5);
  v6 = v0[73];
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_2173BD3A0()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 680);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v3[86] = v0;

  if (!v0)
  {
    v9 = v3[84];
    v10 = v3[83];
    v11 = v3[82];
    v12 = v3[81];
    v13 = v3[80];
    v14 = v3[79];
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2173BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v15 = *(v14 + 624);
  v16 = *(v14 + 616);
  v17 = *(v14 + 608);
  v18 = *(v14 + 600);
  v19 = *(v14 + 592);
  v20 = *(v14 + 552);
  v21 = *(v14 + 544);
  v22 = *(v14 + 536);
  v23 = *(v14 + 528);
  v38 = *(v14 + 512);
  v39 = *(v14 + 488);
  v24 = *(v14 + 456);

  sub_217275694(v19, v18);

  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v20, v25);
  v26 = *(v14 + 208);
  v27 = *(v14 + 224);
  *v24 = *(v14 + 192);
  v24[1] = v26;
  v24[2] = v27;
  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v23, v28);

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14);
}

uint64_t sub_2173BD5F4()
{
  v1 = *(v0 + 568);
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173BD688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  v38 = v14[83];
  v39 = v14[84];
  v15 = v14[82];
  v16 = v14[81];
  v17 = v14[80];
  v18 = v14[79];
  v19 = v14[78];
  v20 = v14[77];
  v21 = v14[76];
  v22 = v14[75];
  v23 = v14[74];
  v24 = v14[69];
  v37 = v14[66];

  sub_217275694(v23, v22);

  OUTLINED_FUNCTION_1_17();
  sub_2173C2E74(v24, v25);

  OUTLINED_FUNCTION_21();
  sub_2173C2E74(v37, v26);
  v27 = v14[86];
  OUTLINED_FUNCTION_34_15();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, a12, a13, a14);
}

uint64_t sub_2173BD7B0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = *(*(type metadata accessor for MusicAPI.Endpoint() - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173BD850, 0, 0);
}

uint64_t sub_2173BD850()
{
  OUTLINED_FUNCTION_30_0();
  sub_2173C2BB0(*(v0 + 168), v0 + 16);
  if (*(v0 + 88))
  {
    v1 = *(v0 + 176);
    v2 = *(v0 + 24);
    sub_2173BF94C(*(v0 + 16), *(v0 + 184));
    v12 = *(v0 + 184);
    v13 = *(v0 + 160);

    sub_2172CB2E8(v12, v13);
    v15 = *(v0 + 184);
    v14 = *(v0 + 192);

    OUTLINED_FUNCTION_20_0();

    return v16();
  }

  else
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    *(v0 + 200) = v4;
    *(v0 + 208) = v3;
    v6 = *(v0 + 32);
    *(v0 + 96) = *(v0 + 16);
    *(v0 + 112) = v6;
    *(v0 + 128) = *(v0 + 48);
    *(v0 + 144) = v5;
    *(v0 + 152) = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 216) = v7;
    *v7 = v8;
    v7[1] = sub_2173BD9CC;
    v9 = *(v0 + 192);
    v10 = *(v0 + 176);

    return sub_2173BE4A4(v9, v0 + 96, v4, (v0 + 152));
  }
}

uint64_t sub_2173BD9CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 216);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  v3[28] = v0;

  v9 = v3[25];
  if (!v0)
  {
    v10 = v3[26];
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2173BDADC()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[24];
  v2 = v0[20];
  sub_2171F0738((v0 + 12), &unk_27CB27760, &unk_21775A2D0);
  sub_2172CB2E8(v1, v2);
  v4 = v0[23];
  v3 = v0[24];

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2173BDB6C()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[26];
  sub_2171F0738((v0 + 12), &unk_27CB27760, &unk_21775A2D0);

  v2 = v0[28];
  v4 = v0[23];
  v3 = v0[24];

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2173BDBF4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v4;
  *(v3 + 64) = a2[2];
  return MEMORY[0x2822009F8](sub_2173BDC24, 0, 0);
}

uint64_t sub_2173BDC24()
{
  v1 = v0[3];
  v2 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v3 = *(v2 + 56);
  v4 = OUTLINED_FUNCTION_20_6();
  if (v5(v4))
  {
    v6 = swift_task_alloc();
    v0[10] = v6;
    *v6 = v0;
    v6[1] = sub_2173BDD80;
    v7 = v0[3];
    v8 = OUTLINED_FUNCTION_58_10(v0[4]);

    return sub_2173BFE9C(v8);
  }

  else
  {
    v10 = v0[8];
    v11 = v0[9];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v15 = v0[2];
    *v15 = v0[4];
    v15[1] = v14;
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v10;
    v15[5] = v11;
    OUTLINED_FUNCTION_37_13();
    v17 = v16;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();

    return v17();
  }
}

uint64_t sub_2173BDD80()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  *v4 = *v1;
  v3[11] = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v3[12] = v11;
    *v11 = v7;
    v11[1] = sub_2173BDEE8;
    v12 = v3[3];
    v13 = OUTLINED_FUNCTION_58_10(v3[5]);

    return sub_2173C06C8(v13);
  }
}

uint64_t sub_2173BDEE8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  *v4 = v7;
  v3[13] = v8;
  v3[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[15] = v12;
    *v12 = v7;
    v12[1] = sub_2173BE044;
    v13 = v3[3];
    v14 = OUTLINED_FUNCTION_58_10(v3[6]);

    return sub_2173C0EF4(v14);
  }
}

uint64_t sub_2173BE044()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  *v4 = v7;
  v3[16] = v8;
  v3[17] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[18] = v12;
    *v12 = v7;
    v12[1] = sub_2173BE1A0;
    v13 = v3[3];
    v14 = OUTLINED_FUNCTION_58_10(v3[7]);

    return sub_2173C1720(v14);
  }
}

uint64_t sub_2173BE1A0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  OUTLINED_FUNCTION_155();
  v5 = v4;
  OUTLINED_FUNCTION_10_2();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v10 = v9;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2173BE2AC()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[2];
  v12 = v0[8];
  sub_217751DE8();
  sub_217751DE8();
  sub_2175E8440();
  *v6 = v9;
  v6[1] = v10;
  v6[2] = v11;
  OUTLINED_FUNCTION_20_0();

  return v7();
}

uint64_t sub_2173BE374()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173BE3D0()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[11];

  v2 = v0[17];
  v3 = v0[13];

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2173BE434()
{
  OUTLINED_FUNCTION_10();
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[19];
  v4 = v0[16];

  OUTLINED_FUNCTION_20_0();

  return v5();
}

uint64_t sub_2173BE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[34] = a3;
  v5[35] = v4;
  v5[32] = a1;
  v5[33] = a2;
  v7 = sub_217751428();
  v5[36] = v7;
  v8 = *(v7 - 8);
  v5[37] = v8;
  v9 = *(v8 + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a4;
  v5[52] = v10;
  v5[53] = v11;

  return MEMORY[0x2822009F8](sub_2173BE618, 0, 0);
}

uint64_t sub_2173BE618()
{
  if (sub_217696E10(1u, *(v2 + 272)))
  {
    if (**(v2 + 280))
    {
      v4 = 0x706F742D79746963;
    }

    else
    {
      v4 = 0x7261684379746963;
    }

    if (**(v2 + 280))
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEA00000000007374;
    }

    sub_2172AFF2C();
    OUTLINED_FUNCTION_57_10(v6);
    if (v8)
    {
      OUTLINED_FUNCTION_57(v7);
      OUTLINED_FUNCTION_52_13();
      sub_2172AFF2C();
      v1 = v41;
    }

    *(v1 + 16) = v0;
    v9 = v1 + 16 * v3;
    *(v9 + 32) = v4;
    *(v9 + 40) = v5;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (sub_217696E10(2u, *(v2 + 272)))
  {
    if (**(v2 + 280))
    {
      v10 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xD000000000000014;
    }

    if (**(v2 + 280))
    {
      v11 = "it";
    }

    else
    {
      v11 = "incremental-loader";
    }

    v12 = v11 | 0x8000000000000000;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = *(v1 + 16);
      OUTLINED_FUNCTION_17();
      sub_2172AFF2C();
      v1 = v43;
    }

    v3 = *(v1 + 16);
    v13 = *(v1 + 24);
    if (v3 >= v13 >> 1)
    {
      OUTLINED_FUNCTION_57(v13);
      OUTLINED_FUNCTION_52_13();
      sub_2172AFF2C();
      v1 = v44;
    }

    *(v1 + 16) = v3 + 1;
    v14 = v1 + 16 * v3;
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
  }

  *(v2 + 432) = v1;
  sub_2171F5110(*(v2 + 264), v2 + 72, &unk_27CB27760, &unk_21775A2D0);
  if (*(v2 + 80))
  {
    v15 = *(v2 + 408);
    v16 = *(v2 + 416);
    v17 = *(v2 + 288);
    v18 = *(v2 + 296);
    v19 = *(v2 + 88);
    *(v2 + 16) = *(v2 + 72);
    *(v2 + 32) = v19;
    *(v2 + 48) = *(v2 + 104);
    *(v2 + 64) = *(v2 + 120);
    v20 = *(v2 + 16);
    v21 = *(v2 + 24);
    sub_2177513F8();
    (*(v18 + 16))(v15, v16, v17);
    sub_2172B1A50(0, 1, 1, MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_57_10(v22);
    if (v8)
    {
      OUTLINED_FUNCTION_57(v23);
      OUTLINED_FUNCTION_52_13();
      sub_2172B1A50(v36, v37, v38, v39);
      v16 = v40;
    }

    v24 = *(v2 + 408);
    v25 = *(v2 + 288);
    v26 = *(v2 + 296);
    (*(v26 + 8))(*(v2 + 416), v25);
    *(v16 + 16) = v15;
    (*(v26 + 32))(v16 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v3, v24, v25);
    sub_21728418C(v2 + 16);
  }

  else
  {
    sub_2171F0738(v2 + 72, &unk_27CB27760, &unk_21775A2D0);
    v16 = MEMORY[0x277D84F90];
  }

  *(v2 + 440) = v16;
  v27 = *(v2 + 280);
  v28 = v27[9];
  __swift_project_boxed_opaque_existential_1(v27 + 5, v27[8]);
  v29 = *(OUTLINED_FUNCTION_5_4() + 40);
  OUTLINED_FUNCTION_66_3();
  v45 = (v30 + *v30);
  v32 = *(v31 + 4);
  v33 = swift_task_alloc();
  *(v2 + 448) = v33;
  *v33 = v2;
  v33[1] = sub_2173BE9BC;
  v34 = OUTLINED_FUNCTION_20_6();

  return v45(v34);
}

uint64_t sub_2173BE9BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  *v3 = *v1;
  v2[57] = v6;
  v2[58] = v7;
  v2[59] = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2173BEAC4()
{
  v1 = v0;
  v2 = v0[58];
  if (v2)
  {
    v3 = v0[57];
    v4 = v0[55];
    v6 = v0[49];
    v5 = v0[50];
    v8 = v0[36];
    v7 = v0[37];
    v9 = v1[50];
    sub_2177513F8();

    v10 = OUTLINED_FUNCTION_36_13();
    v11(v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1[55];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v126 = *(v13 + 16);
      v127 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v127, v128, v129, v13);
      v13 = v130;
    }

    OUTLINED_FUNCTION_32_17();
    if (v15)
    {
      sub_2172B1A50(v14 > 1, v2, 1, v13);
      v13 = v131;
    }

    v17 = v1[49];
    v16 = v1[50];
    OUTLINED_FUNCTION_17_15();
    v18();
    v19 = OUTLINED_FUNCTION_2_45();
    v20(v19);
  }

  else
  {
    v13 = v0[55];
  }

  v21 = v1[54];
  v22 = sub_2176E6868(v1[53]);
  v23 = *(v21 + 16);
  if (v23)
  {
    if (qword_280BE8A38 != -1)
    {
      swift_once();
    }

    v24 = v1[59];
    v25 = *algn_280BE8A48;
    v26 = byte_280BE8A50;
    v1[25] = qword_280BE8A40;
    v1[26] = v25;
    *(v1 + 216) = v26;
    *(swift_task_alloc() + 16) = v1 + 25;
    LOBYTE(v24) = sub_2173DD9E8();

    if ((v24 & 1) == 0)
    {
      v28 = qword_280BE8A40;
      v27 = *algn_280BE8A48;
      v29 = byte_280BE8A50;
      sub_217751DE8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = *(v22 + 16);
        OUTLINED_FUNCTION_17();
        sub_2172B199C();
        v22 = v169;
      }

      v30 = *(v22 + 16);
      if (v30 >= *(v22 + 24) >> 1)
      {
        sub_2172B199C();
        v22 = v170;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 24 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      *(v31 + 48) = v29;
    }
  }

  v32 = *(v22 + 16);
  if (v32)
  {
    v171 = v23;
    v172 = v13;
    v173 = v1;
    v175 = MEMORY[0x277D84F90];
    sub_217275C90();
    v33 = 0;
    v34 = *(v175 + 16);
    v35 = 16 * v34;
    do
    {
      v36 = *(v22 + v33 + 32);
      v37 = *(v22 + v33 + 40);
      v38 = *(v175 + 24);
      sub_217751DE8();
      if (v34 >= v38 >> 1)
      {
        sub_217275C90();
      }

      *(v175 + 16) = v34 + 1;
      v39 = v175 + v35;
      *(v39 + 32) = v36;
      *(v39 + 40) = v37;
      v35 += 16;
      v33 += 24;
      ++v34;
      --v32;
    }

    while (v32);
    v1 = v173;
    v40 = v173[48];

    v173[28] = v175;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    v13 = v172;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = *(v172 + 16);
      v133 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v133, v134, v135, v172);
      v13 = v136;
    }

    OUTLINED_FUNCTION_51_11();
    v23 = v171;
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v41);
      v13 = v137;
    }

    v42 = v173[48];
    v43 = v173[36];
    v44 = OUTLINED_FUNCTION_15_23(v173[37]);
    v45(v44);
  }

  else
  {
  }

  if (v23)
  {
    v46 = v1[47];
    *v1[35];
    *v1[35];
    v1[29] = v1[54];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_2173C2F20();
    sub_217751ED8();

    sub_2177513F8();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v138 = *(v13 + 16);
      v139 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v139, v140, v141, v13);
      v13 = v142;
    }

    OUTLINED_FUNCTION_51_11();
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v47);
      v13 = v143;
    }

    v48 = v1[47];
    v49 = v1[36];
    v50 = OUTLINED_FUNCTION_15_23(v1[37]);
    v51(v50);
  }

  else
  {
    v52 = v1[54];
  }

  v53 = v1[35];
  if ((*(v53 + 16) & 1) == 0)
  {
    v55 = v1[45];
    v54 = v1[46];
    v57 = v1[36];
    v56 = v1[37];
    v1[31] = *(v53 + 8);
    sub_217752FC8();
    sub_2177513F8();

    v58 = OUTLINED_FUNCTION_36_13();
    v59(v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = *(v13 + 16);
      v145 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v145, v146, v147, v13);
      v13 = v148;
    }

    OUTLINED_FUNCTION_32_17();
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v60);
      v13 = v149;
    }

    v62 = v1[45];
    v61 = v1[46];
    OUTLINED_FUNCTION_17_15();
    v63();
    v64 = OUTLINED_FUNCTION_2_45();
    v65(v64);
    v53 = v1[35];
  }

  if ((*(v53 + 32) & 1) == 0)
  {
    v67 = v1[43];
    v66 = v1[44];
    v69 = v1[36];
    v68 = v1[37];
    v1[30] = *(v53 + 24);
    sub_217752FC8();
    sub_2177513F8();

    v70 = OUTLINED_FUNCTION_36_13();
    v71(v70);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v150 = *(v13 + 16);
      v151 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v151, v152, v153, v13);
      v13 = v154;
    }

    OUTLINED_FUNCTION_32_17();
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v72);
      v13 = v155;
    }

    v74 = v1[43];
    v73 = v1[44];
    OUTLINED_FUNCTION_17_15();
    v75();
    v76 = OUTLINED_FUNCTION_2_45();
    v77(v76);
    v53 = v1[35];
  }

  if (*(v53 + 1) == 1)
  {
    v79 = v1[41];
    v78 = v1[42];
    v81 = v1[36];
    v80 = v1[37];
    sub_2177513F8();
    v82 = OUTLINED_FUNCTION_56_9();
    v83(v82);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v156 = *(v13 + 16);
      v157 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v157, v158, v159, v13);
      v13 = v160;
    }

    OUTLINED_FUNCTION_32_17();
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v84);
      v13 = v161;
    }

    v86 = v1[41];
    v85 = v1[42];
    OUTLINED_FUNCTION_17_15();
    v87();
    v88 = OUTLINED_FUNCTION_2_45();
    v89(v88);
    v53 = v1[35];
  }

  if (*(v53 + 33) == 1)
  {
    v91 = v1[39];
    v90 = v1[40];
    v93 = v1[36];
    v92 = v1[37];
    sub_2177513F8();
    v94 = OUTLINED_FUNCTION_56_9();
    v95(v94);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v162 = *(v13 + 16);
      v163 = OUTLINED_FUNCTION_17();
      sub_2172B1A50(v163, v164, v165, v13);
      v13 = v166;
    }

    OUTLINED_FUNCTION_32_17();
    if (v15)
    {
      OUTLINED_FUNCTION_9_23(v96);
      v13 = v167;
    }

    v98 = v1[39];
    v97 = v1[40];
    OUTLINED_FUNCTION_17_15();
    v99();
    v100 = OUTLINED_FUNCTION_2_45();
    v101(v100);
  }

  if (qword_280BE7420 != -1)
  {
    swift_once();
  }

  v103 = v1[37];
  v102 = v1[38];
  v104 = v1[36];
  v105 = __swift_project_value_buffer(v104, qword_280BE7428);
  (*(v103 + 16))(v102, v105, v104);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v120 = *(v13 + 16);
    v121 = OUTLINED_FUNCTION_17();
    sub_2172B1A50(v121, v122, v123, v13);
    v13 = v124;
  }

  OUTLINED_FUNCTION_51_11();
  if (v15)
  {
    OUTLINED_FUNCTION_9_23(v106);
    v13 = v125;
  }

  v1[60] = v13;
  v107 = v1[38];
  v109 = v1[35];
  v108 = v1[36];
  v110 = OUTLINED_FUNCTION_15_23(v1[37]);
  v111(v110);
  v112 = v109[9];
  __swift_project_boxed_opaque_existential_1(v109 + 5, v109[8]);
  v113 = *(OUTLINED_FUNCTION_5_4() + 16);
  OUTLINED_FUNCTION_66_3();
  v174 = (v114 + *v114);
  v116 = *(v115 + 4);
  v117 = swift_task_alloc();
  v1[61] = v117;
  *v117 = v1;
  v117[1] = sub_2173BF520;
  v118 = OUTLINED_FUNCTION_20_6();

  return v174(v118);
}

uint64_t sub_2173BF420()
{
  v2 = v0[54];
  v1 = v0[55];

  v3 = v0[59];
  OUTLINED_FUNCTION_40_14();

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_2173BF520()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_42_0();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v5;
  v2[24] = v0;
  v7 = *(v6 + 488);
  v8 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v9 = v8;
  *(v10 + 496) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2173BF624()
{
  v24 = v0;
  if (qword_280BE8078 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[60];
  v4 = v0[51];
  v5 = v0[52];
  v6 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[43];
  v18 = v0[42];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[39];
  v22 = v0[38];
  v7 = v0[35];
  v8 = v0[32];
  sub_2177188E8(v2, v1);
  strcpy(v23, "/v1/catalog/");
  BYTE5(v23[1]) = 0;
  HIWORD(v23[1]) = -5120;
  MEMORY[0x21CEA23B0](v2, v1);
  MEMORY[0x21CEA23B0](0x737472616863, 0xE600000000000000);
  MEMORY[0x21CEA23B0](47, 0xE100000000000000);

  sub_2172CA838(v7 + 40, (v0 + 16));
  sub_217751DE8();
  sub_2173B6DA4(v23[0], v23[1], v3, 1, v0 + 16, v8);

  OUTLINED_FUNCTION_20_0();

  return v9();
}

uint64_t sub_2173BF854()
{
  v1 = *(v0 + 480);

  v2 = *(v0 + 496);
  OUTLINED_FUNCTION_40_14();

  OUTLINED_FUNCTION_20_0();

  return v3();
}

uint64_t sub_2173BF94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50[6] = a1;
  v3 = sub_217751908();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_217751928();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217751428();
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v44 - v18;
  v20 = type metadata accessor for MusicAPI.Endpoint();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20, v22);
  v44 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v44 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v44 - v30;
  sub_2172CA838(v2 + 40, v50);
  sub_217751DE8();
  sub_217434F08();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_2171F0738(v19, &qword_27CB277B0, &qword_2177684B0);
    sub_2177518E8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    sub_21725EDFC();
    sub_217751618();
    sub_217751918();
    (*(v46 + 8))(v10, v6);
    return swift_willThrow();
  }

  else
  {
    sub_2172CB2E8(v19, v31);
    sub_2172CB230(v31, v27);
    v33 = v47;
    v34 = v48;
    if ((*(v2 + 16) & 1) == 0)
    {
      v50[0] = *(v2 + 8);
      sub_217752FC8();
      v35 = v45;
      sub_2177513F8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
      v36 = *(v33 + 72);
      v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2177586E0;
      (*(v33 + 16))(v38 + v37, v35, v34);
      v39 = v44;
      MusicAPI.Endpoint.applying(_:)();
      swift_setDeallocating();
      sub_217275AFC();
      (*(v33 + 8))(v35, v34);
      sub_2173C2E74(v27, type metadata accessor for MusicAPI.Endpoint);
      sub_2172CB2E8(v39, v27);
    }

    if (qword_280BE7420 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v34, qword_280BE7428);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26E28, &qword_21776DBB0);
    v41 = *(v33 + 72);
    v42 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2177586E0;
    (*(v33 + 16))(v43 + v42, v40, v34);
    MusicAPI.Endpoint.applying(_:)();
    swift_setDeallocating();
    sub_217275AFC();
    sub_2173C2E74(v27, type metadata accessor for MusicAPI.Endpoint);
    return sub_2173C2E74(v31, type metadata accessor for MusicAPI.Endpoint);
  }
}

uint64_t sub_2173BFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB248E8, &qword_21775A380, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Album))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_217509B44(v20, v21);
    }

    if (qword_280BE85B8 != -1)
    {
      OUTLINED_FUNCTION_41_1();
    }

    OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v32 = off_280BE71C8;
    v33 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
    if (v33)
    {
      OUTLINED_FUNCTION_30_18(v33, v34);
      v35 = OUTLINED_FUNCTION_153();
      v14(v35);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v36 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v36, v37, v38, v39, v40);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_19_14(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_3_43(v42);
    OUTLINED_FUNCTION_120_0();

    return sub_21755EB98(v44);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C0100()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173C01FC()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 624);

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2173C0260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB248E8, &qword_21775A380);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = *(*(v15 + 624) + 16);
    OUTLINED_FUNCTION_17();
    sub_2172B1D58();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1D58();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB25388, &unk_21775D410);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB248E8, &qword_21775A380, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Album))
  {
    goto LABEL_10;
  }

  if (qword_280BE85B8 != -1)
  {
    OUTLINED_FUNCTION_41_1();
  }

  OUTLINED_FUNCTION_46_14(&xmmword_280BE85C0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v40 = off_280BE71C8;
  v41 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v41)
  {
    OUTLINED_FUNCTION_12_20(v41, v42);
    v43 = OUTLINED_FUNCTION_150_0();
    v14(v43);
    OUTLINED_FUNCTION_20_23();
    v44 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v44, v45, v46, v47, v48);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_217509B44(v37, v38);
    }
  }

  else
  {
  }

  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_19_14(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_3_43(v50);
  OUTLINED_FUNCTION_120_0();

  return sub_21755EB98(v52);
}

uint64_t sub_2173C054C()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB248E8, &qword_21775A380);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 656);

  return v1();
}

uint64_t sub_2173C05B8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[78];

    v3[82] = v0;
  }

  else
  {
    v3[81] = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2173C06E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB248F8, &unk_21775A370, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_21750928C(v20, v21);
    }

    if (qword_280BE7F40 != -1)
    {
      OUTLINED_FUNCTION_45_2();
    }

    OUTLINED_FUNCTION_46_14(&xmmword_280BE7F48);
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v32 = off_280BE71C8;
    v33 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
    if (v33)
    {
      OUTLINED_FUNCTION_30_18(v33, v34);
      v35 = OUTLINED_FUNCTION_153();
      v14(v35);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v36 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v36, v37, v38, v39, v40);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_19_14(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_3_43(v42);
    OUTLINED_FUNCTION_120_0();

    return sub_21755DFF8(v44);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C092C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173C0A28()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 624);

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2173C0A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB25380, &unk_21775DAA0);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB248F8, &unk_21775A370);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = *(*(v15 + 624) + 16);
    OUTLINED_FUNCTION_17();
    sub_2172B1C98();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1C98();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB25380, &unk_21775DAA0);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB248F8, &unk_21775A370, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for MusicVideo))
  {
    goto LABEL_10;
  }

  if (qword_280BE7F40 != -1)
  {
    OUTLINED_FUNCTION_45_2();
  }

  OUTLINED_FUNCTION_46_14(&xmmword_280BE7F48);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v40 = off_280BE71C8;
  v41 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v41)
  {
    OUTLINED_FUNCTION_12_20(v41, v42);
    v43 = OUTLINED_FUNCTION_150_0();
    v14(v43);
    OUTLINED_FUNCTION_20_23();
    v44 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v44, v45, v46, v47, v48);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_21750928C(v37, v38);
    }
  }

  else
  {
  }

  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_19_14(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_3_43(v50);
  OUTLINED_FUNCTION_120_0();

  return sub_21755DFF8(v52);
}

uint64_t sub_2173C0D78()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB248F8, &unk_21775A370);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 656);

  return v1();
}

uint64_t sub_2173C0DE4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[78];

    v3[82] = v0;
  }

  else
  {
    v3[81] = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2173C0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB24918, &unk_217768490, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_217508FA4(v20, v21);
    }

    if (qword_280BE84D8 != -1)
    {
      OUTLINED_FUNCTION_44_0();
    }

    OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v32 = off_280BE71C8;
    v33 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
    if (v33)
    {
      OUTLINED_FUNCTION_30_18(v33, v34);
      v35 = OUTLINED_FUNCTION_153();
      v14(v35);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v36 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v36, v37, v38, v39, v40);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_19_14(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_3_43(v42);
    OUTLINED_FUNCTION_120_0();

    return sub_21755DC2C(v44);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C1158()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173C1254()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 624);

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2173C12B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB24918, &unk_217768490);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = *(*(v15 + 624) + 16);
    OUTLINED_FUNCTION_17();
    sub_2172B1AF0();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1AF0();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &unk_27CB28230, &unk_21775CD50);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB24918, &unk_217768490, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist))
  {
    goto LABEL_10;
  }

  if (qword_280BE84D8 != -1)
  {
    OUTLINED_FUNCTION_44_0();
  }

  OUTLINED_FUNCTION_46_14(&xmmword_280BE84E0);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v40 = off_280BE71C8;
  v41 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v41)
  {
    OUTLINED_FUNCTION_12_20(v41, v42);
    v43 = OUTLINED_FUNCTION_150_0();
    v14(v43);
    OUTLINED_FUNCTION_20_23();
    v44 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v44, v45, v46, v47, v48);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_217508FA4(v37, v38);
    }
  }

  else
  {
  }

  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_19_14(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_3_43(v50);
  OUTLINED_FUNCTION_120_0();

  return sub_21755DC2C(v52);
}

uint64_t sub_2173C15A4()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB24918, &unk_217768490);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 656);

  return v1();
}

uint64_t sub_2173C1610()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[78];

    v3[82] = v0;
  }

  else
  {
    v3[81] = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2173C1740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_43_6();
  if (v15)
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_69_11(&qword_27CB24908, &unk_21775A360, v16);
    if (dynamic_cast_existential_1_conditional(&type metadata for Song))
    {
LABEL_3:
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_18_21(v17);
      *v18 = v19;
      OUTLINED_FUNCTION_3_43(v18);
      OUTLINED_FUNCTION_120_0();

      return sub_2175086EC(v20, v21);
    }

    if (qword_280BEB230 != -1)
    {
      OUTLINED_FUNCTION_42_11();
    }

    OUTLINED_FUNCTION_46_14(&xmmword_280BEB238);
    if (qword_280BE71C0 != -1)
    {
      OUTLINED_FUNCTION_1_43();
    }

    v32 = off_280BE71C8;
    v33 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
    if (v33)
    {
      OUTLINED_FUNCTION_30_18(v33, v34);
      v35 = OUTLINED_FUNCTION_153();
      v14(v35);
      OUTLINED_FUNCTION_5_4();
      swift_isUniquelyReferenced_nonNull_native();
      v36 = OUTLINED_FUNCTION_0_49();
      sub_21755F7E4(v36, v37, v38, v39, v40);
    }

    else
    {
      sub_217751DE8();
    }

    if (v32[2])
    {
      OUTLINED_FUNCTION_7_27();
      sub_217632574();
      OUTLINED_FUNCTION_66_9();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v41 = swift_task_alloc();
    v42 = OUTLINED_FUNCTION_19_14(v41);
    *v42 = v43;
    OUTLINED_FUNCTION_3_43(v42);
    OUTLINED_FUNCTION_120_0();

    return sub_21755D0B0(v44);
  }

  else
  {
    OUTLINED_FUNCTION_37_13();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2173C1984()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 632);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v3 + 640) = v0;

  if (!v0)
  {
    *(v3 + 648) = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2173C1A80()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 624);

  OUTLINED_FUNCTION_60_13();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2173C1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_13_23();
  OUTLINED_FUNCTION_68_9(v18, v19, &qword_27CB27820, &qword_21775DAB0);
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_65_10(v20, v21, &qword_27CB24908, &unk_21775A360);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v54 = *(*(v15 + 624) + 16);
    OUTLINED_FUNCTION_17();
    sub_2172B1BD8();
  }

  OUTLINED_FUNCTION_39_8();
  if (v23)
  {
    OUTLINED_FUNCTION_16_25(v22);
    sub_2172B1BD8();
  }

  OUTLINED_FUNCTION_38_10();
  OUTLINED_FUNCTION_50_9();
  sub_2171F0738(v15 + 496, &qword_27CB27820, &qword_21775DAB0);
  OUTLINED_FUNCTION_49_12();
  OUTLINED_FUNCTION_21_19();
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_25_23();
    OUTLINED_FUNCTION_120_0();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_6_29();
  OUTLINED_FUNCTION_64_12(&qword_27CB24908, &unk_21775A360, v33);
  if (dynamic_cast_existential_1_conditional(&type metadata for Song))
  {
    goto LABEL_10;
  }

  if (qword_280BEB230 != -1)
  {
    OUTLINED_FUNCTION_42_11();
  }

  OUTLINED_FUNCTION_46_14(&xmmword_280BEB238);
  if (qword_280BE71C0 != -1)
  {
    OUTLINED_FUNCTION_1_43();
  }

  v40 = off_280BE71C8;
  v41 = dynamic_cast_existential_1_conditional(&type metadata for _MusicLibraryMapping.ItemKind);
  if (v41)
  {
    OUTLINED_FUNCTION_12_20(v41, v42);
    v43 = OUTLINED_FUNCTION_150_0();
    v14(v43);
    OUTLINED_FUNCTION_20_23();
    v44 = OUTLINED_FUNCTION_0_49();
    sub_21755F7E4(v44, v45, v46, v47, v48);
  }

  else
  {
    sub_217751DE8();
  }

  if (v40[2])
  {
    OUTLINED_FUNCTION_7_27();
    sub_217632574();
    OUTLINED_FUNCTION_67_9();
    if (v40)
    {
LABEL_10:
      v34 = swift_task_alloc();
      v35 = OUTLINED_FUNCTION_18_21(v34);
      *v35 = v36;
      OUTLINED_FUNCTION_3_43(v35);
      OUTLINED_FUNCTION_120_0();

      return sub_2175086EC(v37, v38);
    }
  }

  else
  {
  }

  v49 = swift_task_alloc();
  v50 = OUTLINED_FUNCTION_19_14(v49);
  *v50 = v51;
  OUTLINED_FUNCTION_3_43(v50);
  OUTLINED_FUNCTION_120_0();

  return sub_21755D0B0(v52);
}

uint64_t sub_2173C1DD0()
{
  OUTLINED_FUNCTION_10();
  sub_2171F0738(v0 + 16, &qword_27CB24908, &unk_21775A360);
  OUTLINED_FUNCTION_20_0();
  v2 = *(v0 + 656);

  return v1();
}

uint64_t sub_2173C1E3C()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 664);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[78];

    v3[82] = v0;
  }

  else
  {
    v3[81] = 0;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2173C1F4C(uint64_t a1, uint64_t a2)
{
  sub_2173C2BB0(a1, v35);
  sub_2173C2BB0(a2, v36);
  if ((v35[72] & 1) == 0)
  {
    sub_2173C2BB0(v35, v31);
    v5 = v33;
    v6 = v34;
    if (v40)
    {

      sub_2171F0738(v31, &unk_27CB27760, &unk_21775A2D0);
LABEL_12:
      sub_2171F0738(v35, &qword_27CB26F68, &qword_217768448);
LABEL_36:
      v15 = 0;
      return v15 & 1;
    }

    v25[0] = v31[0];
    v25[1] = v31[1];
    v25[2] = v31[2];
    v27 = v36[0];
    v8 = v38;
    v7 = v39;
    v28 = v36[1];
    v29 = v36[2];
    v26 = v32;
    v30 = v37;
    if (*(&v31[0] + 1))
    {
      sub_2171F5110(v25, v21, &unk_27CB27760, &unk_21775A2D0);
      if (*(&v27 + 1))
      {
        v18 = v27;
        v19[0] = v28;
        v19[1] = v29;
        v20 = v30;
        v9 = v21[0] == v27 && v21[1] == *(&v27 + 1);
        if (!v9 && (sub_217753058() & 1) == 0)
        {
          sub_21728418C(&v18);
          sub_21728418C(v21);
          sub_2171F0738(v25, &unk_27CB27760, &unk_21775A2D0);
LABEL_33:

LABEL_34:

          goto LABEL_35;
        }

        v10 = v23;
        v11 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        v12 = *(v11 + 104);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v14 = v12(v19, v13, v10, v11);
        sub_21728418C(&v18);
        sub_21728418C(v21);
        sub_2171F0738(v25, &unk_27CB27760, &unk_21775A2D0);
        if ((v14 & 1) == 0)
        {
          goto LABEL_33;
        }

LABEL_29:
        v16 = sub_2172849D0(v5, v8);

        if (v16)
        {
          v15 = sub_217270BE0(v6, v7);

          sub_2173C2BE8(v35);
          return v15 & 1;
        }

        goto LABEL_34;
      }

      sub_21728418C(v21);
    }

    else
    {
      if (!*(&v27 + 1))
      {
        sub_2171F0738(v25, &unk_27CB27760, &unk_21775A2D0);
        goto LABEL_29;
      }
    }

    sub_2171F0738(v25, &qword_27CB26F70, &unk_217768450);
LABEL_35:
    sub_2173C2BE8(v35);
    goto LABEL_36;
  }

  sub_2173C2BB0(v35, v25);
  if (v40 != 1)
  {

    goto LABEL_12;
  }

  if (*&v25[0] == *&v36[0] && *(&v25[0] + 1) == *(&v36[0] + 1))
  {
  }

  else
  {
    v4 = sub_217753058();

    if ((v4 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  sub_2173C2BE8(v35);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_2173C2308(uint64_t a1)
{
  sub_2173C2BB0(v1, v16);
  if (v20)
  {
    MEMORY[0x21CEA3550](1);
    sub_217751FF8();
  }

  else
  {
    v4 = v18;
    v3 = v19;
    v14[0] = v16[0];
    v14[1] = v16[1];
    v14[2] = v16[2];
    v15 = v17;
    MEMORY[0x21CEA3550](0);
    sub_2171F5110(v14, v12, &unk_27CB27760, &unk_21775A2D0);
    if (*(&v12[0] + 1))
    {
      v8 = v12[0];
      v9 = v12[1];
      v10 = v12[2];
      v11 = v13;
      sub_217753208();
      sub_217751FF8();
      v5 = *(&v10 + 1);
      v6 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
      (*(v6 + 112))(a1, v5, v6);
      sub_21728418C(&v8);
    }

    else
    {
      sub_217753208();
    }

    sub_2172849DC(a1, v4);

    sub_21727D7C8(a1, v3);
    sub_2171F0738(v14, &unk_27CB27760, &unk_21775A2D0);
  }
}

uint64_t sub_2173C2494()
{
  sub_2177531E8();
  sub_2173C2308(v1);
  return sub_217753238();
}

uint64_t sub_2173C24E0()
{
  sub_2177531E8();
  sub_2173C2308(v1);
  return sub_217753238();
}

uint64_t static MusicCatalogChartsRequest.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = a2[32];
  if (a1[32])
  {
    if (a2[32])
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

LABEL_16:
  if (a1[33] != a2[33])
  {
    return 0;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  v9 = *(v8 + 112);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241B8, &unk_2177583E0);
  if ((v9(a2 + 40, v10, v7, v8) & 1) == 0)
  {
    return 0;
  }

  return sub_2173C1F4C((a1 + 80), (a2 + 80));
}

uint64_t MusicCatalogChartsRequest.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  sub_217753208();
  v4 = v1[1];
  sub_217753208();
  if (v1[16] == 1)
  {
    sub_217753208();
  }

  else
  {
    v5 = *(v1 + 1);
    sub_217753208();
    MEMORY[0x21CEA3550](v5);
  }

  if (v1[32] == 1)
  {
    sub_217753208();
  }

  else
  {
    v6 = *(v1 + 3);
    sub_217753208();
    MEMORY[0x21CEA3550](v6);
  }

  MEMORY[0x21CEA3550](v1[33]);
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v7);
  (*(v8 + 120))(a1, v7, v8);
  return sub_2173C2308(a1);
}

uint64_t MusicCatalogChartsRequest.hashValue.getter()
{
  sub_2177531E8();
  MusicCatalogChartsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173C27A4()
{
  sub_2177531E8();
  MusicCatalogChartsRequest.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2173C27E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217758490;
  if (qword_280BE62F0 != -1)
  {
    swift_once();
  }

  v2 = qword_280BE6308;
  v1 = unk_280BE6310;
  *(v0 + 32) = xmmword_280BE62F8;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v3 = qword_280BE6378;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_280BE6390;
  v4 = unk_280BE6398;
  *(v0 + 64) = xmmword_280BE6380;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  v6 = qword_280BE6220;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_280BE6238;
  v7 = unk_280BE6240;
  *(v0 + 96) = xmmword_280BE6228;
  *(v0 + 112) = v8;
  *(v0 + 120) = v7;
  v9 = qword_280BEB138;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_280BEB150;
  v10 = unk_280BEB158;
  *(v0 + 128) = xmmword_280BEB140;
  *(v0 + 144) = v11;
  *(v0 + 152) = v10;
  off_27CB26F50 = v0;

  return sub_217751DE8();
}

uint64_t static MusicCatalogChartsRequest.supportedTypeValues.getter()
{
  if (qword_27CB23B70 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2173C29D0(unint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2173C29EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2173C2A00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v19 = a2;
  v20 = a4;
  LOBYTE(v5) = a3;
  v18 = result;
  v16 = a5;
  if (qword_27CB23B70 != -1)
  {
LABEL_10:
    result = swift_once();
  }

  v6 = 0;
  v7 = *(off_27CB26F50 + 2);
  v21 = off_27CB26F50;
  v22 = v7;
  v17 = v5 & 1;
  v8 = (off_27CB26F50 + 56);
  while (v22 != v6)
  {
    if (v6 >= v21[2])
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = *(v8 - 1);
    v5 = *v8;
    v10 = *(v8 - 3);
    v11 = *(v8 - 2);
    v24 = v10;
    v25 = v11;
    v26 = v9;
    v27 = v5;
    swift_bridgeObjectRetain_n();
    swift_getAtKeyPath();

    v23 = &v16;
    v24 = v18;
    v25 = v19;
    LOBYTE(v26) = v17;
    MEMORY[0x28223BE20](v12, v13);
    v14 = sub_2173DD9E8();

    if (v14)
    {
      goto LABEL_8;
    }

    ++v6;
    v8 += 4;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  v5 = 0;
LABEL_8:
  v15 = v16;
  *v16 = v10;
  v15[1] = v11;
  v15[2] = v9;
  v15[3] = v5;
  return result;
}

unint64_t sub_2173C2C1C()
{
  result = qword_27CB26F58;
  if (!qword_27CB26F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit5GenreVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2173C2C9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_2173C2CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2173C2D54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 72);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2173C2D90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_2173C2DE0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_2173C2E20()
{
  result = qword_27CB26F60;
  if (!qword_27CB26F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F60);
  }

  return result;
}

uint64_t sub_2173C2E74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_43(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_2173C2ECC()
{
  result = qword_27CB26F78;
  if (!qword_27CB26F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26F78);
  }

  return result;
}

unint64_t sub_2173C2F20()
{
  result = qword_280BE2320;
  if (!qword_280BE2320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24C58, &unk_2177677B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2320);
  }

  return result;
}

void OUTLINED_FUNCTION_11_28()
{
  *(v0 + 176) = v3;
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  *(v0 + 184) = v1;
  *(v0 + 192) = v4;
  *(v0 + 200) = v5;
  *(v0 + 208) = v2;
  *(v0 + 320) = v6;
  *(v0 + 328) = v7;
}

unint64_t OUTLINED_FUNCTION_15_23@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 16) = v1;
  v4 = *(a1 + 32);
  return v3 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_20_23()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_21_19()
{
  *(v2 + 16) = v1;

  return memcpy((v2 + 160 * v3 + 32), (v0 + 160), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_34_15()
{
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[64];
  v7 = v0[61];
}

uint64_t OUTLINED_FUNCTION_40_14()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[49];
  v4 = v0[50];
  v7 = v0[47];
  v6 = v0[48];
  v9 = v0[45];
  v8 = v0[46];
  v10 = v0[43];
  v11 = v0[44];
  v13 = v0[42];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[39];
  v17 = v0[38];
}

uint64_t OUTLINED_FUNCTION_42_11()
{

  return swift_once();
}

void OUTLINED_FUNCTION_46_14(uint64_t *a1@<X8>)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
}

uint64_t OUTLINED_FUNCTION_49_12()
{

  return sub_2171F0738(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_50_9()
{

  return sub_2171F0738(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_57_10(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *(result + 16) + 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_12@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2171F5110(a3 + 192, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_65_10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F5110(v4, v4 + 160, a3, a4);
}

uint64_t OUTLINED_FUNCTION_67_9()
{
}

uint64_t OUTLINED_FUNCTION_68_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2171F5110(v4 + 496, v4 + 216, a3, a4);
}

uint64_t OUTLINED_FUNCTION_69_11@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2171F5110(a3 + 32, v3 + 16, a1, a2);
}

uint64_t static PartialMusicProperty.attribute<A>(_:for:)()
{
  OUTLINED_FUNCTION_6_30();
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_13_24(*v1 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicAttributeProperty();
  OUTLINED_FUNCTION_2_46();
  MusicAttributeProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

{
  OUTLINED_FUNCTION_6_30();
  v2 = *(v0 + 208);
  v3 = *(*v1 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicAttributeProperty();
  OUTLINED_FUNCTION_2_46();
  MusicAttributeProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

uint64_t static PartialMusicProperty.extendedAttribute<A>(_:for:typeDescription:supportedSources:)()
{
  OUTLINED_FUNCTION_18_22();
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_13_24(*v1 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicExtendedAttributeProperty();
  v3 = OUTLINED_FUNCTION_0_50();
  sub_2173C419C(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return v0;
}

uint64_t static PartialMusicProperty.metadata<A>(_:for:)()
{
  OUTLINED_FUNCTION_6_30();
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_13_24(*v1 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicMetadataProperty();
  OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

{
  OUTLINED_FUNCTION_6_30();
  v2 = *(v0 + 208);
  v3 = *(*v1 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicMetadataProperty();
  OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.__allocating_init(_:)();
  OUTLINED_FUNCTION_39_9();
  return v0;
}

uint64_t MusicRelationshipProperty.__allocating_init(_:kind:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  OUTLINED_FUNCTION_45_13();
  MusicRelationshipProperty.init(_:kind:)();
  return v0;
}

uint64_t sub_2173C352C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

    if (!(a1 | a2))
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a1 ^ 1 | a2)
    {
      if (a6 != 2 || a4 != 2)
      {
        return 0;
      }
    }

    else if (a6 != 2 || a4 != 1)
    {
      return 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  else if (!a6)
  {
LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_217753058();
    }

    return 1;
  }

  return 0;
}

uint64_t MusicItem<>.with(_:preferredSource:options:)(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *(v4 + 32) = *a3;
  *(v4 + 33) = *a4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_19(v5);
  *v6 = v7;
  v6[1] = sub_2173C36CC;

  return MusicItem<>.with(_:preferredSource:options:)();
}

uint64_t sub_2173C36CC()
{
  OUTLINED_FUNCTION_10();
  v2 = *(*v1 + 16);
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  *(v5 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v9 = *(v3 + 8);

    return v9();
  }
}

void sub_2173C3830()
{
  OUTLINED_FUNCTION_214();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 64);
  (*(*v0 + 144))(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, v2, v7, *(v0 + 65));
  sub_217751DE8();
  sub_217751DE8();
  sub_2173C6730(v1, v2, v7);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_213();
}

uint64_t static AnyMusicProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_2173C352C(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a2 + 48), *(a2 + 56), *(a2 + 64)) & 1) == 0 || (sub_217270790(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 96);
  v9 = *(a2 + 96);

  return sub_21727533C(v8, v9);
}

void sub_2173C3A00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_217751FF8();
  if (*(v2 + 40))
  {
    v6 = *(v2 + 32);
    sub_217753208();
    sub_217751DE8();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_2173C3AA8(a1, *(v2 + 48), *(v2 + 56), *(v2 + 64));
  sub_217281100(a1, *(v2 + 88));
  v7 = *(v2 + 96);

  sub_2172834CC(a1, v7);
}

uint64_t sub_2173C3AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v4 = 2;
LABEL_5:
    MEMORY[0x21CEA3550](v4);

    return sub_217751FF8();
  }

  if (a2 | a3)
  {
    if (a2 ^ 1 | a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x21CEA3550](v6);
}

uint64_t sub_2173C3B50(uint64_t a1, uint64_t a2, char a3)
{
  sub_2177531E8();
  sub_2173C3AA8(v7, a1, a2, a3);
  return sub_217753238();
}

uint64_t sub_2173C3BE4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2177531E8();
  sub_2173C3AA8(v5, v1, v2, v3);
  return sub_217753238();
}

void sub_2173C3C48()
{
  v1 = *(v0 + 72);
  v2 = sub_217204DD0(v1);
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEA2E30](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v7 = *(v5 + 32);
    v8 = *(v5 + 40);
    sub_217751DE8();

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v4 + 16);
        sub_2172AFF2C();
        v4 = v12;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_2172AFF2C();
        v4 = v13;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      v3 = v6;
    }
  }

  if ((*(v17 + 65) & 1) == 0)
  {
    v14 = *(v17 + 40);
    if (v14)
    {
      v15 = *(v17 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2177586E0;
      *(inited + 32) = v15;
      *(inited + 40) = v14;
      sub_217751DE8();
      sub_2175437A8(inited);
    }
  }
}

uint64_t AnyMusicProperty.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_2173C6748(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return v0;
}

uint64_t AnyMusicProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_28_18();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2173C3E74()
{
  sub_2177531E8();
  sub_2173C3A00(v1);
  return sub_217753238();
}

uint64_t sub_2173C3F20()
{
  sub_2177531E8();
  v1 = *v0;
  sub_2173C3A00(v3);
  return sub_217753238();
}

double MusicAttributeProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_28_18();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 2;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v4;
  *(v2 + 88) = v4;
  *(v2 + 96) = &unk_282959AF8;
  return result;
}

void *static PartialMusicProperty.extendedAttribute<A>(_:scopedTo:for:typeDescription:supportedSources:)()
{
  OUTLINED_FUNCTION_17_16();
  v3 = *(v1 + 208);
  v4 = *(*v2 + *MEMORY[0x277D84DE8] + 8);
  type metadata accessor for MusicExtendedAttributeProperty();
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v5 = OUTLINED_FUNCTION_3_44();
  return sub_2173C407C(v5, v6, v7, v8, v9, v0);
}

{
  OUTLINED_FUNCTION_17_16();
  v3 = *(v1 + 208);
  OUTLINED_FUNCTION_13_24(*v2 + *MEMORY[0x277D84DE8]);
  type metadata accessor for MusicExtendedAttributeProperty();
  OUTLINED_FUNCTION_36_14();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v4 = OUTLINED_FUNCTION_3_44();
  return sub_2173C407C(v4, v5, v6, v7, v8, v0);
}

uint64_t MusicRelationshipProperty.__allocating_init(_:kind:supportedSources:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_36_14();
  MusicRelationshipProperty.init(_:kind:supportedSources:)(v8, v5, a3, a4);
  return v4;
}

uint64_t sub_2173C42A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_46_15();
  v9 = *(v6 + 208);
  v10 = *v8 + *MEMORY[0x277D84DE8];
  OUTLINED_FUNCTION_5_36();
  type metadata accessor for MusicRelationshipProperty();
  sub_217751DE8();
  sub_217751DE8();
  v11 = OUTLINED_FUNCTION_42_12();
  return a6(v11);
}

uint64_t sub_2173C4358(uint64_t a1, uint64_t a2, char *a3)
{
  OUTLINED_FUNCTION_46_15();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v6 = OUTLINED_FUNCTION_36_14();
  sub_2173C5240(v6, v4, a3);
  return v3;
}

uint64_t static PartialMusicProperty.association<A>(_:for:supportedSources:)()
{
  OUTLINED_FUNCTION_6_30();
  v2 = *(v0 + 208);
  v3 = *v1 + *MEMORY[0x277D84DE8];
  OUTLINED_FUNCTION_5_36();
  type metadata accessor for MusicRelationshipProperty();
  sub_217751DE8();
  return MusicRelationshipProperty.__allocating_init(_:kind:)();
}

uint64_t static PartialMusicProperty.association<A>(_:for:supportedSources:options:)()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_46_15();
  v2 = *(v0 + 208);
  v3 = *v1 + *MEMORY[0x277D84DE8];
  OUTLINED_FUNCTION_5_36();
  type metadata accessor for MusicRelationshipProperty();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_42_12();
  return sub_2173C4518();
}

uint64_t sub_2173C4518()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_4_47();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_50();
  sub_2173C53E4(v1, v2, v3, v4, v5);
  return v0;
}

uint64_t MusicMetadataProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_2_46();
  MusicMetadataProperty.init(_:)(v1, v2);
  return v0;
}

uint64_t sub_2173C4630()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_0_50();
  sub_2173C5D50(v1, v2, v3, v4);
  return v0;
}

uint64_t sub_2173C4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_24_18();
  v9 = *v8;
  v10 = *(v6 + 208);
  v11 = *(*v8 + 264);
  v12 = *(v9 + 280);
  type metadata accessor for MusicMetadataProperty();
  sub_217751DE8();

  sub_217751DE8();
  v13 = OUTLINED_FUNCTION_3_44();
  return a6(v13);
}

uint64_t sub_2173C4738()
{
  OUTLINED_FUNCTION_20_24();
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_0_50();
  sub_2173C5EE8();
  return v0;
}

uint64_t sub_2173C47B8()
{
  swift_beginAccess();
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_2173C47F0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2173C4894()
{
  sub_2173C3830();
  v1 = v0;
  v2 = sub_2173C47B8();
  sub_2173C47F0(v2, v3 & 1);
  return v1;
}

uint64_t PartialMusicAsyncProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_1_44();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MusicAttributeProperty.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v3;
  *(v2 + 88) = v3;
  *(v2 + 96) = &unk_282959AF8;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_2173C4994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 65) = a8;
  *(v11 + 72) = a9;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  return OUTLINED_FUNCTION_5_26();
}

unint64_t sub_2173C49BC()
{
  OUTLINED_FUNCTION_33_15();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v2 = *(v1 + 216);
  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v5 = *(v4 + 224);
  v6 = sub_217753348();
  MEMORY[0x21CEA23B0](v6);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0xD000000000000017;
}

uint64_t MusicExtendedAttributeProperty.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_2_46();
  MusicExtendedAttributeProperty.init(_:)();
  return v0;
}

uint64_t MusicExtendedAttributeProperty.init(_:)()
{
  OUTLINED_FUNCTION_143();
  OUTLINED_FUNCTION_0_41();
  v4 = *(v3 + 264);
  v5 = sub_217753348();
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = 0;
  v7 = MEMORY[0x277D84F90];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = v7;
  *(v1 + 88) = v7;
  *(v1 + 96) = &unk_282959AF8;
  return v1;
}

uint64_t MusicExtendedAttributeProperty.__allocating_init(_:supportedSources:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_1_44();
  swift_allocObject();
  OUTLINED_FUNCTION_45_13();
  MusicExtendedAttributeProperty.init(_:supportedSources:)();
  return v0;
}

uint64_t MusicExtendedAttributeProperty.init(_:supportedSources:)()
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_0_41();
  v5 = *(v4 + 264);
  v6 = sub_217753348();
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v6;
  *(v1 + 56) = v7;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 64) = 0;
  *(v1 + 72) = v8;
  *(v1 + 80) = v8;
  *(v1 + 88) = v8;
  *(v1 + 96) = v0;
  return v1;
}

uint64_t sub_2173C4C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 64) = 0;
  *(v5 + 72) = v6;
  *(v5 + 80) = v6;
  *(v5 + 88) = v6;
  *(v5 + 96) = a5;
  return v5;
}

void *sub_2173C4C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = MEMORY[0x277D84F90];
  if (a3)
  {
    if (*(a3 + 16))
    {
      v26[1] = v26;
      v29 = a3;
      MEMORY[0x28223BE20](a1, a2);
      v27 = a4;
      v28 = a5;
      v16 = v15[33];
      v25[2] = v15[32];
      v25[3] = v16;
      v25[4] = v15[34];
      v25[5] = a1;
      v25[6] = a2;
      v25[7] = a6;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26F98, qword_217768A20);
      v18 = type metadata accessor for MusicExtendedAttributeProperty();
      v19 = sub_2173C71E0();
      v20 = v17;
      v14 = MEMORY[0x277D84F90];
      sub_2175FA70C(sub_2173C71B8, v25, v20, v18, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v21);

      type metadata accessor for AnyMusicProperty();
      a4 = v27;
      v22 = sub_217752C68();
      a5 = v28;

      a6 = &unk_282959AF8;
      v23 = 1;
    }

    else
    {

      v23 = 0;
      v22 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v23 = 0;
    v22 = MEMORY[0x277D84F90];
  }

  v7[12] = a6;
  v7[13] = 0;
  *(v7 + 112) = 1;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = 0;
  v7[5] = 0;
  v7[6] = a4;
  v7[7] = a5;
  *(v7 + 64) = 0;
  *(v7 + 65) = v23;
  v7[9] = v22;
  v7[10] = v14;
  v7[11] = v14;
  return v7;
}

uint64_t sub_2173C4E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  type metadata accessor for MusicExtendedAttributeProperty();
  v13[0] = v10;
  v13[1] = v9;
  v14 = v11;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  result = sub_2173C4F00(a2, a3, v13, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2173C4F64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(*v4 + 264);
  v11 = sub_217753348();
  *(v4 + 104) = 0;
  *(v4 + 112) = 1;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  *(v4 + 48) = v11;
  *(v4 + 56) = v12;
  v13 = MEMORY[0x277D84F90];
  *(v4 + 64) = 0;
  *(v4 + 72) = v13;
  *(v4 + 80) = v13;
  *(v4 + 88) = v13;
  *(v4 + 96) = a4;
  return v4;
}

unint64_t sub_2173C4FEC()
{
  OUTLINED_FUNCTION_33_15();
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v2 = *(v1 + 256);
  v3 = sub_217753348();
  MEMORY[0x21CEA23B0](v3);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v5 = *(v4 + 264);
  v6 = sub_217753348();
  MEMORY[0x21CEA23B0](v6);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEA23B0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

uint64_t *MusicRelationshipProperty.init(_:kind:)()
{
  OUTLINED_FUNCTION_143();
  v3 = *v1;
  v5 = *v4;
  *(v1 + 113) = *v4;
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v9 = *(v3 + 264);
    v6 = sub_217753348();
    v8 = 1;
  }

  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[2] = v2;
  v1[3] = v0;
  OUTLINED_FUNCTION_27_21(v6, v7, v8);
  *(v1 + 65) = 0;
  v10 = MEMORY[0x277D84F90];
  v1[9] = MEMORY[0x277D84F90];
  v1[10] = v10;
  v1[11] = v10;
  v1[12] = &unk_282959AF8;
  return v1;
}

uint64_t *MusicRelationshipProperty.init(_:kind:supportedSources:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a3;
  *(v4 + 113) = *a3;
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v13 = *(v8 + 264);
    v10 = sub_217753348();
    v12 = 1;
  }

  v4[13] = 0;
  *(v4 + 112) = 1;
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_27_21(v10, v11, v12);
  v14 = MEMORY[0x277D84F90];
  *(v4 + 65) = 0;
  v4[9] = v14;
  v4[10] = v14;
  v4[11] = v14;
  v4[12] = a4;
  return v4;
}

uint64_t *sub_2173C5240(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v18 = a1;
  v5 = *v3;
  v6 = *v3;
  v7 = *a3;
  *(v3 + 113) = *a3;
  v8 = *(v5 + 264);
  if (v7)
  {
    v9 = 0;
    v10 = 2;
    v11 = 1;
  }

  else
  {
    v12 = *(v5 + 264);
    a1 = sub_217753348();
    v11 = a1;
    v9 = a2;
    v10 = 1;
  }

  MEMORY[0x28223BE20](a1, a2);
  v16 = *(v6 + 256);
  v17 = *(v6 + 272);
  type metadata accessor for PartialMusicProperty();
  sub_217752418();
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_11_29();
  v13 = sub_217752148();

  v4[13] = 0;
  *(v4 + 112) = 1;
  v4[2] = v18;
  v4[3] = a2;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = v11;
  v4[7] = v9;
  *(v4 + 64) = v10;
  *(v4 + 65) = 0;
  v14 = MEMORY[0x277D84F90];
  v4[9] = MEMORY[0x277D84F90];
  v4[10] = v13;
  v4[11] = v14;
  v4[12] = &unk_282959AF8;
  return v4;
}

uint64_t *sub_2173C53E4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *a3;
  *(v5 + 113) = *a3;
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_26_20();
  }

  else
  {
    v15 = *(v10 + 264);
    v12 = sub_217753348();
    v14 = 1;
  }

  v5[13] = 0;
  *(v5 + 112) = 1;
  v5[2] = a1;
  v5[3] = a2;
  OUTLINED_FUNCTION_27_21(v12, v13, v14);
  v16 = MEMORY[0x277D84F90];
  *(v5 + 65) = 0;
  v5[9] = v16;
  v5[10] = v16;
  v5[11] = a5;
  v5[12] = a4;
  return v5;
}

uint64_t sub_2173C5494()
{
  v12 = *(*v0 + 256);
  v13 = *(*v0 + 264);
  v14 = *(*v0 + 280);
  type metadata accessor for PartialMusicAsyncProperty();
  sub_217752418();
  type metadata accessor for AnyMusicProperty();
  OUTLINED_FUNCTION_11_29();
  sub_217752148();
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  v4 = *(v0 + 64);
  v10 = v0[11];
  v11 = v0[12];
  v9 = v0[10];
  sub_2173C5A40(v0[2], v0[3], v0[4], v0[5], v2, v3, v4, *(v0 + 65), v5);
  v7 = v6;
  sub_217751DE8();
  sub_217751DE8();
  sub_2173C6730(v2, v3, v4);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return v7;
}

uint64_t sub_2173C5648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = dynamic_cast_existential_1_conditional(a2);
  if (!result)
  {
    goto LABEL_5;
  }

  v6 = static CloudResourceConvertible.catalogTypes.getter();
  if (!v6[2])
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = v6[4];
  v7 = v6[5];
  sub_217751DE8();

  v10 = (*(*v4 + 176))(v9);
  v11 = *(v10 + 40);
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;

LABEL_6:
  *a3 = v10;
  return result;
}

uint64_t sub_2173C5710()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v24[0] = *(*v0 + 256);
  v24[1] = v2;
  v3 = type metadata accessor for MusicRelationshipProperty();
  if (v3 == v1)
  {
    v5 = v3;
    v6 = v0[2];
    v7 = v0[3];
    LOBYTE(v24[0]) = *(v0 + 113);
    v8 = v0[4];
    v9 = v0[6];
    v10 = v0[7];
    v11 = *(v0 + 64);
    v23 = v0[12];
    v21 = v0[11];
    v19 = v0[9];
    v20 = v0[10];
    v18 = *(v0 + 65);
    v12 = v0[5];
    v13 = v5;
    sub_2173C5980(v6, v7, v24, v8, v12, v9, v10, v11, v18, v4, v19, v20);
    v22 = v14;
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_39_9();
      sub_217751DE8();
      sub_2173C6730(v9, v10, v11);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      return v13;
    }

    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_217751DE8();
    sub_217751DE8();
    sub_2173C6730(v9, v10, v11);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000016, 0x80000002177AD580);
    v16 = *v22;
    v17 = sub_217753348();
    MEMORY[0x21CEA23B0](v17);

    MEMORY[0x21CEA23B0](0xD00000000000004DLL, 0x80000002177AD5A0);
  }

  else
  {
    OUTLINED_FUNCTION_30_19();
  }

  result = OUTLINED_FUNCTION_19_15();
  __break(1u);
  return result;
}

__n128 sub_2173C5980(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, __n128 a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  *(v18 + 113) = *a3;
  *(v18 + 96) = a12;
  *(v18 + 104) = 0;
  *(v18 + 112) = 1;
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  *(v18 + 64) = a8;
  *(v18 + 65) = a9;
  result = a10;
  *(v18 + 72) = a10;
  *(v18 + 88) = a11;
  return result;
}

double sub_2173C5A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8, __n128 a9)
{
  v10 = 0;
  *&result = sub_2173C5980(a1, a2, &v10, a3, a4, a5, a6, a7, a8, a9, a9.n128_i64[0], a9.n128_i64[1]).n128_u64[0];
  return result;
}

unint64_t sub_2173C5AA0()
{
  v1 = *v0;
  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_16_26();
  v3 = *(v2 + 256);
  v4 = sub_217753348();
  MEMORY[0x21CEA23B0](v4);

  OUTLINED_FUNCTION_48_11();
  OUTLINED_FUNCTION_16_26();
  v6 = *(v5 + 264);
  v7 = sub_217753348();
  MEMORY[0x21CEA23B0](v7);

  OUTLINED_FUNCTION_22_20();
  MEMORY[0x21CEA23B0](v0[2], v0[3]);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  if (*(v0 + 113) == 1)
  {
    BYTE8(v9) = 0;
    MEMORY[0x21CEA23B0](0x203A646E696B202CLL, 0xE90000000000002ELL);
    *&v9 = *(v0 + 113);
    sub_217752C78();
    MEMORY[0x21CEA23B0](*(&v9 + 1), 0xE000000000000000);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t MusicRelationshipProperty.__deallocating_deinit()
{
  AnyMusicProperty.deinit();
  v0 = OUTLINED_FUNCTION_4_47();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t MusicRelationshipPropertyKind.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t MusicMetadataProperty.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = 0;
  *(v2 + 112) = 1;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = xmmword_217768550;
  *(v2 + 64) = 2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 72) = MEMORY[0x277D84F90];
  *(v2 + 80) = v3;
  *(v2 + 88) = v3;
  *(v2 + 96) = &unk_282959AF8;
  return OUTLINED_FUNCTION_5_26();
}

uint64_t sub_2173C5D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_22();
  OUTLINED_FUNCTION_0_41();
  v10 = *(v9 + 256);
  v11 = static CloudResourceConvertible.catalogTypes.getter();
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];
    sub_217751DE8();

    v21 = v13;
    v22 = v12;
    MEMORY[0x21CEA23B0](58, 0xE100000000000000);
    v14 = *(a3 + 16);
    v15 = *(a3 + 24);
    sub_217751DE8();
    MEMORY[0x21CEA23B0](v14, v15);

    *(v4 + 104) = 0;
    *(v4 + 112) = 1;
    *(v4 + 16) = v6;
    *(v4 + 24) = v5;
    *(v4 + 32) = v21;
    *(v4 + 40) = v22;
    *(v4 + 48) = xmmword_217768550;
    *(v4 + 64) = 2;
    v16 = MEMORY[0x277D84F90];
    *(v4 + 72) = MEMORY[0x277D84F90];
    *(v4 + 80) = v16;
    *(v4 + 88) = v16;
    *(v4 + 96) = a4;

    return v4;
  }

  else
  {

    OUTLINED_FUNCTION_23_1();
    sub_217752AA8();
    OUTLINED_FUNCTION_30_19();
    MEMORY[0x21CEA23B0](v18 + 30, v19 | 0x8000000000000000);
    v20 = sub_217753348();
    MEMORY[0x21CEA23B0](v20);

    OUTLINED_FUNCTION_38_11();
    result = OUTLINED_FUNCTION_19_15();
    __break(1u);
  }

  return result;
}