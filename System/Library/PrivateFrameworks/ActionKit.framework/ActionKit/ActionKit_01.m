void sub_23DE4DF80()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v2 = sub_23E1FBD5C();
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v27 = v8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = 0;
  v13 = *(v1 + 16);
  v28 = v5 + 16;
  v29 = v1;
  v26 = (v5 + 32);
  v14 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    (*(v5 + 16))(v11, v29 + v15 + v16 * v12, v2);
    if (sub_23E1FBCCC())
    {
      v25 = *v26;
      v25(v27, v11, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = *(v14 + 16);
        OUTLINED_FUNCTION_13_1();
        sub_23DE63E6C();
        v14 = v30;
      }

      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_9(v19);
        v24 = v22;
        sub_23DE63E6C();
        v21 = v24;
        v14 = v30;
      }

      ++v12;
      *(v14 + 16) = v21;
      v25(v14 + v15 + v20 * v16, v27, v2);
    }

    else
    {
      (*(v5 + 8))(v11, v2);
      ++v12;
    }
  }

  OUTLINED_FUNCTION_76();
}

void sub_23DE4E17C()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x28223BE20](v5);
  sub_23DE38DA8(0, &qword_27E32C3D0, 0x277CBEA60);
  v6 = sub_23E1FE3FC();
  if (v6)
  {
    v7 = v6;
    sub_23E1FDDDC();
  }

  sub_23E1FBD4C();
  sub_23DE4DF80();
  OUTLINED_FUNCTION_37();

  OUTLINED_FUNCTION_76();
}

unint64_t sub_23DE4E574()
{
  sub_23DE4DA6C();
  v0 = sub_23DE4E660();

  v1 = v0[2];
  if (v1 < 2)
  {
    return v0;
  }

  result = sub_23DE58DB4(1uLL, v1, v0);
  v4 = v3;
  v6 = v5 >> 1;
  for (i = (v7 + 16 * v3 + 8); ; i += 2)
  {
    if (v6 == v4)
    {
      swift_unknownObjectRelease();
      return v0;
    }

    if (v4 >= v6)
    {
      break;
    }

    result = *(i - 1);
    if (result != v0[4] || *i != v0[5])
    {
      result = sub_23E1FE75C();
      if ((result & 1) == 0)
      {
        sub_23DE570D4(v0);
        swift_unknownObjectRelease();
        return &unk_285023408;
      }
    }

    ++v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DE4E660()
{
  sub_23DE54DCC();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_23DE63E2C();
    v3 = 32;
    v4 = v13;
    do
    {
      v12 = *(v1 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
      v5 = sub_23E1FDC7C();
      v7 = v6;
      v9 = *(v13 + 16);
      v8 = *(v13 + 24);
      if (v9 >= v8 >> 1)
      {
        OUTLINED_FUNCTION_9(v8);
        OUTLINED_FUNCTION_60_0();
        sub_23DE63E2C();
      }

      *(v13 + 16) = v9 + 1;
      v10 = v13 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_23DE4E77C()
{
  sub_23DE38DA8(0, &qword_27E32C7C0, 0x277CCABB0);
  v0 = sub_23E1FE3FC();
  if (!v0)
  {
    return 5;
  }

  v1 = v0;
  v2 = sub_23E1FDF6C();

  return v2;
}

void sub_23DE4E7F4()
{
  OUTLINED_FUNCTION_90();
  v115 = v1;
  v116 = v0;
  v114 = v2;
  v3 = sub_23E1FBD5C();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v113 = v9;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - v11;
  v13 = sub_23E1FD03C();
  v14 = OUTLINED_FUNCTION_6_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v100 = v19;
  OUTLINED_FUNCTION_14_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v99 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_68_0();
  v118 = v24;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v99 - v26;
  v126 = MEMORY[0x277D84F90];
  v122 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v28 = sub_23E1FD02C();
  v29 = sub_23E1FE19C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = OUTLINED_FUNCTION_74_0();
    *v30 = 0;
    _os_log_impl(&dword_23DE30000, v28, v29, "WFSpotlightSearchAction: Creating separate queries for each result type", v30, 2u);
    OUTLINED_FUNCTION_56();
  }

  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v123 = v32;
  v32(v27, v13);
  sub_23DE4E17C();
  if (*(v33 + 16))
  {
    v35 = *(v6 + 16);
    v34 = v6 + 16;
    v108 = v35;
    v36 = *(v34 + 64);
    OUTLINED_FUNCTION_56_0();
    v99 = v37;
    v39 = v37 + v38;
    v106 = (v34 - 8);
    v107 = (v34 + 16);
    v109 = v34;
    v103 = *(v34 + 56);
    v121 = v40 - 1;
    *(&v41 + 1) = 4;
    v105 = xmmword_23E222370;
    *&v41 = 136315650;
    v102 = v41;
    *&v41 = *(v42 + 168);
    v101 = v41;
    v111 = v31;
    v112 = v13;
    v110 = v3;
    v117 = v23;
    while (1)
    {
      v119 = v39;
      v108(v12);
      v43 = objc_allocWithZone(MEMORY[0x277CC3508]);
      v44 = [v43 init];
      [v44 setMaxResultCount_];
      [v44 setMaxRankedResultCount_];
      [v44 setEnableRankedResults_];
      [v44 setDisableSemanticSearch_];
      v45 = v44;
      v46 = sub_23E1FDDCC();
      v47 = OUTLINED_FUNCTION_26_0();
      [v47 v48];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v49 = swift_allocObject();
      *(v49 + 16) = v105;
      *(v49 + 32) = sub_23DE4F0B4();
      *(v49 + 40) = v50;
      sub_23DE4F238();
      *(v49 + 48) = v51;
      *(v49 + 56) = v52;
      v53 = sub_23E1FDDCC();

      v54 = OUTLINED_FUNCTION_26_0();
      [v54 v55];

      v56 = sub_23DE4F500();
      sub_23DE5874C(v56, v45);

      v57 = objc_allocWithZone(MEMORY[0x277CC3500]);
      v120 = v45;
      v58 = v115;
      sub_23E1FB7BC();
      v59 = sub_23DE56998(v114, v58, v45);
      MEMORY[0x23EF045A0]();
      v60 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v60 >> 1)
      {
        OUTLINED_FUNCTION_9(v60);
        sub_23E1FDE0C();
      }

      OUTLINED_FUNCTION_45();
      sub_23E1FDE3C();
      v104 = v126;
      v61 = v118;
      sub_23E1FCB9C();
      v62 = v113;
      (*v107)(v113, v12, v3);
      v63 = sub_23E1FD02C();
      v64 = sub_23E1FE1AC();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_49_0();
        v66 = v3;
        v67 = OUTLINED_FUNCTION_48_0();
        v125 = swift_slowAlloc();
        *v65 = v102;
        v68 = v62;
        sub_23E1FBD3C();
        v69 = OUTLINED_FUNCTION_37();
        v71 = v70;
        (*v106)(v69, v66);
        sub_23DE56B40(v68, v71, &v125);
        OUTLINED_FUNCTION_37();

        *(v65 + 4) = v68;
        *(v65 + 12) = 2112;
        *(v65 + 14) = v59;
        *v67 = v59;
        *(v65 + 22) = 2080;
        v72 = sub_23DE587B8(v59);
        if (v72)
        {
          v73 = v72;
        }

        else
        {
          v73 = MEMORY[0x277D84F90];
        }

        v124 = v73;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
        sub_23DE58F64();
        v74 = sub_23E1FDB0C();
        v76 = v75;

        v77 = sub_23DE56B40(v74, v76, &v125);

        *(v65 + 24) = v77;
        _os_log_impl(&dword_23DE30000, v63, v64, "WFSpotlightSearchAction: Added query for type: %s: %@ %s", v65, 0x20u);
        sub_23DE58BD0(v67, &unk_27E32C190, &qword_23E224B70);
        OUTLINED_FUNCTION_21_0();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_16_1();
        v13 = v112;
        OUTLINED_FUNCTION_56();

        v78 = v118;
      }

      else
      {

        (*v106)(v62, v3);
        v78 = v61;
      }

      v123(v78, v13);
      v79 = v117;
      sub_23E1FCB9C();
      v80 = sub_23E1FD02C();
      v81 = sub_23E1FE1AC();
      if (OUTLINED_FUNCTION_51(v81))
      {
        v82 = OUTLINED_FUNCTION_38_0();
        v83 = OUTLINED_FUNCTION_49_0();
        v125 = v83;
        *v82 = v101;
        v84 = [v59 debugDescription];
        v85 = sub_23E1FDC1C();
        v87 = v86;

        v88 = v85;
        v79 = v117;
        v89 = sub_23DE56B40(v88, v87, &v125);
        v13 = v112;

        *(v82 + 4) = v89;
        _os_log_impl(&dword_23DE30000, v80, v81, "WFSpotlightSearchAction: Type query: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v83);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_16_1();
      }

      v123(v79, v13);
      v3 = v110;
      if (!v121)
      {
        break;
      }

      --v121;
      v39 = v119 + v103;
    }

    v90 = v104;
  }

  else
  {

    v90 = MEMORY[0x277D84F90];
  }

  v91 = v100;
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  v92 = sub_23E1FD02C();
  v93 = sub_23E1FE1DC();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = OUTLINED_FUNCTION_38_0();
    v95 = OUTLINED_FUNCTION_49_0();
    v125 = v95;
    *v94 = 136315138;
    sub_23DE4F6AC(v90);
    v98 = sub_23DE56B40(v96, v97, &v125);

    *(v94 + 4) = v98;
    _os_log_impl(&dword_23DE30000, v92, v93, "WFSpotlightSearchAction:\n\nCSUserQueries:\n%s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_16_1();
  }

  v123(v91, v13);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE4F0B4()
{
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v6 = *MEMORY[0x277CFC170];
  v7 = *(v3 + 104);
  v8 = OUTLINED_FUNCTION_26_0();
  v9(v8);
  OUTLINED_FUNCTION_50();
  v10 = sub_23E1FBD1C();
  v11 = *(v3 + 8);
  v12 = OUTLINED_FUNCTION_36_0();
  v13(v12);
  if (v10)
  {
    result = OUTLINED_FUNCTION_46_0();
    __break(1u);
  }

  else
  {
    sub_23E1FE5CC();

    v14 = sub_23E1FBCBC();
    MEMORY[0x23EF044F0](v14);

    MEMORY[0x23EF044F0](39, 0xE100000000000000);
    return 0xD000000000000024;
  }

  return result;
}

void sub_23DE4F238()
{
  OUTLINED_FUNCTION_90();
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v6 = *MEMORY[0x277CFC170];
  v7 = *(v3 + 104);
  v8 = OUTLINED_FUNCTION_26_0();
  v7(v8);
  OUTLINED_FUNCTION_50();
  v9 = sub_23E1FBD1C();
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_36_0();
  v10(v11);
  if ((v9 & 1) == 0)
  {
    v12 = *MEMORY[0x277CFC190];
    v13 = OUTLINED_FUNCTION_26_0();
    v7(v13);
    OUTLINED_FUNCTION_50();
    v14 = sub_23E1FBD1C();
    v15 = OUTLINED_FUNCTION_36_0();
    v10(v15);
    if (v14)
    {
      sub_23E1FE5CC();
      OUTLINED_FUNCTION_5();
      MEMORY[0x23EF044F0](0xD000000000000016);
      v16 = sub_23E1FBD0C();
      MEMORY[0x23EF044F0](v16);

      v17 = "ssageType == 'lnk'))";
      v18 = 0xD000000000000036;
    }

    else
    {
      v19 = *MEMORY[0x277CFC1A0];
      v20 = OUTLINED_FUNCTION_26_0();
      v7(v20);
      OUTLINED_FUNCTION_50();
      v21 = sub_23E1FBD1C();
      v22 = OUTLINED_FUNCTION_36_0();
      v10(v22);
      if ((v21 & 1) == 0)
      {
        sub_23E1FE5CC();

        v25 = sub_23E1FBD0C();
        MEMORY[0x23EF044F0](v25);

        v18 = 39;
        v24 = 0xE100000000000000;
        goto LABEL_8;
      }

      sub_23E1FE5CC();
      OUTLINED_FUNCTION_5();
      MEMORY[0x23EF044F0](0xD000000000000016);
      v23 = sub_23E1FBD0C();
      MEMORY[0x23EF044F0](v23);

      v17 = "(_kMDItemBundleID == '";
      v18 = 0xD000000000000044;
    }

    v24 = v17 | 0x8000000000000000;
LABEL_8:
    MEMORY[0x23EF044F0](v18, v24);
    OUTLINED_FUNCTION_76();
    return;
  }

  OUTLINED_FUNCTION_46_0();
  __break(1u);
}

uint64_t sub_23DE4F500()
{
  v0 = sub_23E1FBD5C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23E222340;
  *(v9 + 32) = 0xD00000000000001ALL;
  *(v9 + 40) = 0x800000023E24E820;
  (*(v3 + 104))(v8, *MEMORY[0x277CFC170], v0);
  sub_23DE58FC8(&qword_27E32C428, MEMORY[0x277CFC1C8]);
  v10 = sub_23E1FDB2C();
  (*(v3 + 8))(v8, v0);
  if ((v10 & 1) == 0)
  {
    v11 = sub_23E1FBD0C();
    v13 = v12;
    sub_23DE4CB98();
    v9 = v14;
    v14[2] = 2;
    v14[6] = v11;
    v14[7] = v13;
  }

  return v9;
}

void sub_23DE4F6AC(uint64_t a1)
{
  v2 = sub_23DE4D8B0(a1);
  if (!v2)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
    sub_23DE58F64();
    sub_23E1FDB0C();

    return;
  }

  v3 = v2;
  v13 = MEMORY[0x277D84F90];
  sub_23DE63E2C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EF04DD0](v4, a1);
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 debugDescription];
      v8 = sub_23E1FDC1C();
      v10 = v9;

      v11 = *(v13 + 16);
      if (v11 >= *(v13 + 24) >> 1)
      {
        sub_23DE63E2C();
      }

      ++v4;
      *(v13 + 16) = v11 + 1;
      v12 = v13 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_23DE4F824()
{
  OUTLINED_FUNCTION_23();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_23E1FD03C();
  v1[23] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[24] = v4;
  v6 = *(v5 + 64);
  v1[25] = OUTLINED_FUNCTION_91();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_23E1FDFEC();
  v1[28] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[29] = v8;
  v10 = *(v9 + 64);
  v1[30] = OUTLINED_FUNCTION_91();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v11 = sub_23E1FE01C();
  v1[33] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[34] = v12;
  v14 = *(v13 + 64);
  v1[35] = OUTLINED_FUNCTION_42();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C400, &qword_23E2241C8);
  OUTLINED_FUNCTION_25(v15);
  v17 = *(v16 + 64);
  v1[36] = OUTLINED_FUNCTION_42();
  v18 = sub_23E1FE02C();
  v1[37] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[38] = v19;
  v21 = *(v20 + 64);
  v1[39] = OUTLINED_FUNCTION_42();
  v22 = sub_23E1FE00C();
  v1[40] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[41] = v23;
  v25 = *(v24 + 64);
  v1[42] = OUTLINED_FUNCTION_42();
  v1[43] = sub_23E1FDECC();
  v1[44] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v27 = sub_23E1FDE6C();
  v1[45] = v27;
  v1[46] = v26;

  return MEMORY[0x2822009F8](sub_23DE4FA90, v27, v26);
}

uint64_t sub_23DE4FA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = MEMORY[0x277D84F90];
  *(v20 + 136) = MEMORY[0x277D84F90];
  v22 = (v20 + 136);
  v23 = sub_23DE4D8B0(*(v20 + 168));
  *(v20 + 376) = v23;
  v24 = MEMORY[0x277D7A440];
  if (v23)
  {
    v25 = *(v20 + 168);
    *(v20 + 448) = *MEMORY[0x277CC21D8];
    *(v20 + 384) = *v24;
    *(v20 + 392) = v21;
    v26 = v25 & 0xC000000000000001;
    sub_23DE570B0(0, (v25 & 0xC000000000000001) == 0, v25);
    v27 = *(v20 + 168);
    if (v26)
    {
      v28 = MEMORY[0x23EF04DD0](0, v27);
    }

    else
    {
      v28 = *(v27 + 32);
    }

    *(v20 + 400) = v28;
    *(v20 + 408) = 1;
    v65 = *(v20 + 336);
    v66 = *(v20 + 304);
    v67 = *(v20 + 312);
    v68 = *(v20 + 296);
    *(v20 + 144) = v21;
    sub_23E1FE03C();
    sub_23E1FDFFC();
    v69 = *(v66 + 8);
    v70 = OUTLINED_FUNCTION_30_0();
    v71(v70);
    *(v20 + 416) = v21;
    v72 = *(v20 + 344);
    *(v20 + 424) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_15_1();
    sub_23DE58FC8(v73, v74);
    v75 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v20 + 432) = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_10_1(v76);
    OUTLINED_FUNCTION_71_0();

    return MEMORY[0x282200308](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v29 = *(v20 + 352);

  v30 = *v24;
  v31 = *(v20 + 208);
  sub_23E1FCB9C();
  v32 = sub_23E1FD02C();
  v33 = sub_23E1FE19C();
  v142 = (v20 + 136);
  v146 = v20;
  if (os_log_type_enabled(v32, v33))
  {
    v140 = v33;
    log = v32;
    v34 = *(v20 + 232);
    v35 = OUTLINED_FUNCTION_52_0();
    *v35 = 134218240;
    v36 = *(v21 + 16);
    *(v35 + 4) = v36;
    *(v35 + 12) = 2048;
    v37 = sub_23E1FB7BC();
    v45 = 0;
    v46 = v21;
    while (v36 != v45)
    {
      if (v45 >= *(v21 + 16))
      {
        goto LABEL_58;
      }

      v47 = v21 + 8 * v45;
      v48 = *(v47 + 32);
      v49 = *(v48 + 16);
      v50 = *(v46 + 16);
      v51 = v50 + v49;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_59;
      }

      v52 = *(v47 + 32);
      sub_23E1FB7BC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v51 > *(v46 + 24) >> 1)
      {
        if (v50 <= v51)
        {
          v54 = v50 + v49;
        }

        else
        {
          v54 = v50;
        }

        sub_23DE4CD10(isUniquelyReferenced_nonNull_native, v54, 1, v46);
        v46 = v55;
      }

      if (*(v48 + 16))
      {
        v56 = *(v46 + 16);
        v57 = *(v46 + 24);
        OUTLINED_FUNCTION_66_0();
        if (v58 < v49)
        {
          goto LABEL_61;
        }

        v59 = *(v20 + 224);
        v60 = *(v34 + 80);
        OUTLINED_FUNCTION_56_0();
        v61 = *(v34 + 72);
        swift_arrayInitWithCopy();

        v21 = MEMORY[0x277D84F90];
        if (v49)
        {
          v62 = *(v46 + 16);
          v63 = __OFADD__(v62, v49);
          v64 = v62 + v49;
          if (v63)
          {
            goto LABEL_63;
          }

          *(v46 + 16) = v64;
        }
      }

      else
      {

        v21 = MEMORY[0x277D84F90];
        if (v49)
        {
          goto LABEL_60;
        }
      }

      ++v45;
    }

    v78 = *(v46 + 16);

    *(v35 + 14) = v78;
    v32 = log;
    _os_log_impl(&dword_23DE30000, log, v140, "WFSpotlightSearchAction: received results from %ld queries with a total of %ld items", v35, 0x16u);
    OUTLINED_FUNCTION_56();
    v22 = (v20 + 136);
  }

  v79 = *(v20 + 232);
  v80 = *(v20 + 208);
  v81 = *(v20 + 192);
  v82 = *(v20 + 184);

  v83 = *(v81 + 8);
  v84 = OUTLINED_FUNCTION_66();
  v85 = v20;
  v139 = v86;
  v86(v84);
  *(v20 + 160) = v21;
  swift_beginAccess();
  v87 = 0;
  v141 = v79;
  v88 = v21;
  v89 = v21;
LABEL_28:
  v90 = v85[22];
  v91 = *(v89 + 16);
  if (v91 >= sub_23DE4E77C() || (v92 = *(v88 + 16)) == 0)
  {
LABEL_52:
    v85[20] = v89;
    v116 = v85[25];
    sub_23E1FCB9C();
    v117 = sub_23E1FD02C();
    v118 = sub_23E1FE19C();
    if (OUTLINED_FUNCTION_51(v118))
    {
      v119 = OUTLINED_FUNCTION_38_0();
      *v119 = 134217984;
      *(v119 + 4) = *(v89 + 16);
      OUTLINED_FUNCTION_17_1(&dword_23DE30000, v120, v121, "WFSpotlightSearchAction: interleaved %ld items for final results");
      OUTLINED_FUNCTION_20_0();
    }

    v122 = v85[25];
    v123 = v85[23];

    v124 = OUTLINED_FUNCTION_45();
    v139(v124);
    OUTLINED_FUNCTION_45_0();
    sub_23DE50F78(v22 + 3);
    swift_endAccess();
    v125 = v85[42];
    v126 = v85[39];
    v128 = v85[35];
    v127 = v85[36];
    v129 = v85;
    v132 = v85 + 31;
    v131 = v85[31];
    v130 = v132[1];
    v133 = v129[30];
    v134 = v129[27];
    v143 = v129[26];
    loga = v129[25];
    v147 = v129[20];

    v135 = v129[1];
    OUTLINED_FUNCTION_71_0();

    __asm { BRAA            X2, X16 }
  }

  v37 = sub_23E1FB7BC();
  for (i = 0; ; ++i)
  {
    if (v92 == i)
    {

      v22 = v142;
      *v142 = v21;

      v98 = *(v21 + 16);
      if (!v98)
      {
        goto LABEL_52;
      }

      v99 = v87 % v98;
      if (*(*(v21 + 8 * (v87 % v98) + 32) + 16))
      {
        OUTLINED_FUNCTION_45_0();
        v37 = swift_isUniquelyReferenced_nonNull_native();
        if ((v37 & 1) == 0)
        {
          sub_23DF31A94(v21);
          v21 = v37;
        }

        if (v99 >= *(v21 + 16))
        {
          goto LABEL_64;
        }

        sub_23DE5101C(v85[30]);
        v85[17] = v21;
        swift_endAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = *(v89 + 16);
          v108 = OUTLINED_FUNCTION_6_1();
          sub_23DE4CD10(v108, v109, v110, v89);
          v89 = v111;
        }

        v101 = *(v89 + 16);
        v100 = *(v89 + 24);
        if (v101 >= v100 >> 1)
        {
          OUTLINED_FUNCTION_9(v100);
          OUTLINED_FUNCTION_61_0();
          sub_23DE4CD10(v112, v113, v114, v89);
          v89 = v115;
        }

        v102 = v85[30];
        v103 = v85[28];
        *(v89 + 16) = v101 + 1;
        v104 = *(v141 + 80);
        OUTLINED_FUNCTION_31_0();
        v37 = (*(v106 + 32))(v89 + v105 + *(v106 + 72) * v101);
      }

      v88 = v21;
      v63 = __OFADD__(v87++, 1);
      v21 = MEMORY[0x277D84F90];
      if (v63)
      {
        goto LABEL_62;
      }

      goto LABEL_28;
    }

    if (i >= *(v88 + 16))
    {
      break;
    }

    v94 = *(v88 + 8 * i + 32);
    if (*(v94 + 16))
    {
      sub_23E1FB7BC();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      if ((v37 & 1) == 0)
      {
        v95 = *(v21 + 16);
        OUTLINED_FUNCTION_13_1();
        sub_23DE64034();
      }

      v97 = *(v21 + 16);
      v96 = *(v21 + 24);
      if (v97 >= v96 >> 1)
      {
        OUTLINED_FUNCTION_9(v96);
        sub_23DE64034();
      }

      *(v21 + 16) = v97 + 1;
      *(v21 + 8 * v97 + 32) = v94;
      v85 = v146;
    }
  }

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
  return MEMORY[0x282200308](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE501C8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = *(v2 + 432);
  *v4 = *v1;
  *(v3 + 440) = v0;

  v6 = *(v2 + 424);
  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v7 = sub_23E1FDE6C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_23DE50DD4;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v7 = sub_23E1FDE6C();
      v9 = v10;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v11 = sub_23DE50348;
  }

  return MEMORY[0x2822009F8](v11, v7, v9);
}

uint64_t sub_23DE50348()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[53];

  v2 = v0[45];
  v3 = v0[46];

  return MEMORY[0x2822009F8](sub_23DE503A8, v2, v3);
}

void sub_23DE503A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint8_t *buf, uint64_t a14, os_log_t log, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  if (__swift_getEnumTagSinglePayload(*(v28 + 288), 1, *(v28 + 264)) != 1)
  {
    v31 = *(v28 + 448);
    v32 = *(v28 + 272);
    v33 = *(v32 + 32);
    v34 = OUTLINED_FUNCTION_35_0();
    v35(v34);
    v36 = *(v32 + 88);
    v37 = OUTLINED_FUNCTION_36_0();
    if (v38(v37) != v31)
    {
      (*(*(v28 + 272) + 8))(*(v28 + 280), *(v28 + 264));
      goto LABEL_74;
    }

    v39 = *(v28 + 416);
    v40 = *(v28 + 256);
    v41 = *(v28 + 248);
    v42 = *(v28 + 224);
    v43 = *(v28 + 232);
    (*(*(v28 + 272) + 96))(*(v28 + 280), *(v28 + 264));
    v29 = *(v43 + 32);
    v44 = OUTLINED_FUNCTION_35_0();
    (v29)(v44);
    v45 = *(v43 + 16);
    v46 = OUTLINED_FUNCTION_58_0();
    v47(v46);
    OUTLINED_FUNCTION_45_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v28 + 416);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

    goto LABEL_90;
  }

  v30 = *(v28 + 440);
  (*(*(v28 + 328) + 8))(*(v28 + 336), *(v28 + 320));
  OUTLINED_FUNCTION_45_0();
  sub_23DE50F78((v28 + 144));
  swift_endAccess();
  if (v30)
  {
    OUTLINED_FUNCTION_41();
    return;
  }

  a12 = 0;
  v61 = *(v28 + 144);
  if (*(v61 + 16))
  {
    v62 = *(v28 + 392);
    v63 = *(v28 + 144);
    sub_23E1FB7BC();
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(v28 + 392);
    if ((v64 & 1) == 0)
    {
      v207 = *(v65 + 16);
      OUTLINED_FUNCTION_6_1();
      sub_23DE4CD50();
      v65 = v208;
    }

    v66 = *(v65 + 16);
    if (v66 >= *(v65 + 24) >> 1)
    {
      OUTLINED_FUNCTION_61_0();
      sub_23DE4CD50();
      v65 = v209;
    }

    v67 = *(v28 + 400);
    v68 = *(v28 + 384);
    v69 = *(v28 + 216);
    v70 = *(v28 + 168);
    *(v65 + 16) = v66 + 1;
    *(v65 + 8 * v66 + 32) = v61;
    *(v28 + 136) = v65;
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v71 = v67;
    v72 = sub_23E1FD02C();
    v73 = sub_23E1FE1AC();
    if (OUTLINED_FUNCTION_51(v73))
    {
      v74 = *(v28 + 400);
      v75 = *(v28 + 168);
      v76 = OUTLINED_FUNCTION_52_0();
      *v76 = 134218240;
      *(v76 + 4) = *(v61 + 16);
      *(v76 + 12) = 2048;
      sub_23DE59420();
      if (v78)
      {
        v79 = -1;
      }

      else
      {
        v79 = v77;
      }

      *(v76 + 14) = v79;

      _os_log_impl(&dword_23DE30000, v72, v73, "WFSpotlightSearchAction: received %ld items from query %ld", v76, 0x16u);
      OUTLINED_FUNCTION_56();
      v29 = *(v28 + 400);
    }

    else
    {
      v80 = *(v28 + 168);

      v29 = *(v28 + 400);
      v72 = v29;
    }

    v81 = *(v28 + 216);
    v82 = *(v28 + 184);
    v83 = *(v28 + 192);

    v84 = *(v83 + 8);
    v85 = OUTLINED_FUNCTION_66();
    v86(v85);
  }

  else
  {

    v65 = *(v28 + 392);
  }

  v87 = *(v28 + 408);
  v49 = MEMORY[0x277D84F90];
  if (v87 != *(v28 + 376))
  {
    *(v28 + 392) = v65;
    v113 = *(v28 + 168);
    v114 = v113 & 0xC000000000000001;
    sub_23DE570B0(v87, (v113 & 0xC000000000000001) == 0, v113);
    v115 = *(v28 + 168);
    if (v114)
    {
      v116 = MEMORY[0x23EF04DD0](v87, v115);
    }

    else
    {
      v116 = *(v115 + 8 * v87 + 32);
    }

    *(v28 + 400) = v116;
    *(v28 + 408) = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_92:
      MEMORY[0x282200308](v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, buf, a14, log, a16, a17, a18, a19, a20);
      return;
    }

    v162 = *(v28 + 336);
    v164 = *(v28 + 304);
    v163 = *(v28 + 312);
    v165 = *(v28 + 296);
    *(v28 + 144) = v49;
    sub_23E1FE03C();
    sub_23E1FDFFC();
    (*(v164 + 8))(v163, v165);
    goto LABEL_73;
  }

  v88 = *(v28 + 352);

  v89 = *(v28 + 208);
  a11 = *(v28 + 384);
  sub_23E1FCB9C();
  v90 = sub_23E1FD02C();
  v91 = sub_23E1FE19C();
  if (os_log_type_enabled(v90, v91))
  {
    LODWORD(a14) = v91;
    log = v90;
    v92 = *(v28 + 232);
    v93 = OUTLINED_FUNCTION_52_0();
    *v93 = 134218240;
    *(v93 + 4) = *(v65 + 16);
    buf = v93;
    *(v93 + 12) = 2048;
    v94 = *(v65 + 16);
    sub_23E1FB7BC();
    for (i = 0; ; ++i)
    {
      if (v94 == i)
      {

        v124 = *(v49 + 16);

        *(buf + 14) = v124;
        v90 = log;
        _os_log_impl(&dword_23DE30000, log, a14, "WFSpotlightSearchAction: received results from %ld queries with a total of %ld items", buf, 0x16u);
        OUTLINED_FUNCTION_16_1();
        v49 = MEMORY[0x277D84F90];
        goto LABEL_45;
      }

      if (i >= *(v65 + 16))
      {
        break;
      }

      v96 = v65 + 8 * i;
      v97 = *(v96 + 32);
      v98 = *(v97 + 16);
      v99 = *(v49 + 16);
      v29 = v99 + v98;
      if (__OFADD__(v99, v98))
      {
        goto LABEL_84;
      }

      v100 = *(v96 + 32);
      sub_23E1FB7BC();
      v101 = swift_isUniquelyReferenced_nonNull_native();
      if (!v101 || v29 > *(v49 + 24) >> 1)
      {
        if (v99 <= v29)
        {
          v102 = v99 + v98;
        }

        else
        {
          v102 = v99;
        }

        sub_23DE4CD10(v101, v102, 1, v49);
        v49 = v103;
      }

      if (*(v97 + 16))
      {
        v104 = *(v49 + 16);
        v105 = *(v49 + 24);
        OUTLINED_FUNCTION_66_0();
        if (v106 < v98)
        {
          goto LABEL_86;
        }

        v107 = *(v28 + 224);
        v108 = *(v92 + 80);
        OUTLINED_FUNCTION_56_0();
        v109 = *(v92 + 72);
        swift_arrayInitWithCopy();

        if (v98)
        {
          v110 = *(v49 + 16);
          v111 = __OFADD__(v110, v98);
          v112 = v110 + v98;
          if (v111)
          {
            goto LABEL_88;
          }

          *(v49 + 16) = v112;
        }
      }

      else
      {

        if (v98)
        {
          goto LABEL_85;
        }
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    v198 = *(v49 + 16);
    v199 = OUTLINED_FUNCTION_6_1();
    sub_23DE4CD10(v199, v200, v201, v49);
    v49 = v202;
LABEL_6:
    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    if (v51 >= v50 >> 1)
    {
      OUTLINED_FUNCTION_9(v50);
      OUTLINED_FUNCTION_61_0();
      sub_23DE4CD10(v203, v204, v205, v49);
      v49 = v206;
    }

    v52 = *(v28 + 248);
    v53 = *(v28 + 256);
    v54 = *(v28 + 224);
    v55 = *(v28 + 232);
    *(v49 + 16) = v51 + 1;
    v56 = *(v55 + 80);
    OUTLINED_FUNCTION_31_0();
    (v29)(v49 + v57 + *(v55 + 72) * v51);
    *(v28 + 144) = v49;
    swift_endAccess();
    v58 = *(v55 + 8);
    v59 = OUTLINED_FUNCTION_50();
    v60(v59);
LABEL_73:
    *(v28 + 416) = v49;
LABEL_74:
    v166 = *(v28 + 344);
    *(v28 + 424) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_15_1();
    sub_23DE58FC8(v167, v168);
    v169 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v28 + 432) = v170;
    *v170 = v171;
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_41();

    goto LABEL_92;
  }

LABEL_45:
  v125 = *(v28 + 232);
  v126 = *(v28 + 208);
  v128 = *(v28 + 184);
  v127 = *(v28 + 192);

  v129 = *(v127 + 8);
  v130 = OUTLINED_FUNCTION_66();
  a9 = v131;
  a10 = v127 + 8;
  v131(v130);
  *(v28 + 160) = v49;
  swift_beginAccess();
  v132 = 0;
  buf = (v125 + 32);
  a14 = v125;
  v133 = v49;
  while (1)
  {
    v134 = *(v28 + 176);
    v135 = *(v133 + 16);
    if (v135 >= sub_23DE4E77C())
    {
      break;
    }

    v136 = *(v65 + 16);
    if (!v136)
    {
      break;
    }

    sub_23E1FB7BC();
    v137 = 0;
    v29 = v49;
    while (v136 != v137)
    {
      if (v137 >= *(v65 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v138 = *(v65 + 8 * v137++ + 32);
      if (*(v138 + 16))
      {
        log = v132;
        sub_23E1FB7BC();
        a16 = v29;
        v139 = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = *(v29 + 16);
          OUTLINED_FUNCTION_13_1();
          sub_23DE64034();
        }

        v142 = *(v29 + 16);
        v141 = *(v29 + 24);
        if (v142 >= v141 >> 1)
        {
          OUTLINED_FUNCTION_9(v141);
          sub_23DE64034();
        }

        *(v29 + 16) = v142 + 1;
        *(v29 + 8 * v142 + 32) = v138;
        v49 = MEMORY[0x277D84F90];
        v133 = v139;
        v132 = log;
      }
    }

    *(v28 + 136) = v29;

    v143 = *(v29 + 16);
    if (!v143)
    {
      break;
    }

    v144 = v132 % v143;
    if (*(*(v29 + 8 * (v132 % v143) + 32) + 16))
    {
      OUTLINED_FUNCTION_45_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23DF31A94(v29);
        v29 = v152;
      }

      if (v144 >= *(v29 + 16))
      {
        goto LABEL_89;
      }

      sub_23DE5101C(*(v28 + 240));
      *(v28 + 136) = v29;
      swift_endAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v153 = *(v133 + 16);
        v154 = OUTLINED_FUNCTION_6_1();
        sub_23DE4CD10(v154, v155, v156, v133);
        v133 = v157;
      }

      v146 = *(v133 + 16);
      v145 = *(v133 + 24);
      if (v146 >= v145 >> 1)
      {
        OUTLINED_FUNCTION_9(v145);
        OUTLINED_FUNCTION_61_0();
        sub_23DE4CD10(v158, v159, v160, v133);
        v133 = v161;
      }

      v147 = *(v28 + 240);
      v148 = *(v28 + 224);
      *(v133 + 16) = v146 + 1;
      v149 = *(a14 + 80);
      OUTLINED_FUNCTION_31_0();
      (*(v151 + 32))(v133 + v150 + *(v151 + 72) * v146);
    }

    v65 = v29;
    v111 = __OFADD__(v132++, 1);
    if (v111)
    {
      goto LABEL_87;
    }
  }

  *(v28 + 160) = v133;
  v172 = *(v28 + 200);
  sub_23E1FCB9C();
  v173 = sub_23E1FD02C();
  v174 = sub_23E1FE19C();
  if (OUTLINED_FUNCTION_51(v174))
  {
    v175 = OUTLINED_FUNCTION_38_0();
    *v175 = 134217984;
    *(v175 + 4) = *(v133 + 16);
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v176, v177, "WFSpotlightSearchAction: interleaved %ld items for final results");
    OUTLINED_FUNCTION_20_0();
  }

  v178 = *(v28 + 200);
  v179 = *(v28 + 184);

  v180 = OUTLINED_FUNCTION_45();
  a9(v180);
  OUTLINED_FUNCTION_45_0();
  sub_23DE50F78((v28 + 160));
  swift_endAccess();
  v181 = *(v28 + 336);
  v182 = *(v28 + 312);
  v184 = *(v28 + 280);
  v183 = *(v28 + 288);
  v186 = *(v28 + 248);
  v185 = *(v28 + 256);
  v187 = *(v28 + 240);
  v188 = *(v28 + 216);
  bufa = *(v28 + 208);
  v211 = *(v28 + 200);
  loga = *(v28 + 160);

  v189 = *(v28 + 8);
  OUTLINED_FUNCTION_41();

  v192(v190, v191, v192, v193, v194, v195, v196, v197, a9, a10, a11, 0, bufa, v211, loga, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE50DD4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[53];
  v0[19] = v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  swift_willThrowTypedImpl();

  v2 = v0[45];
  v3 = v0[46];

  return MEMORY[0x2822009F8](sub_23DE50E6C, v2, v3);
}

uint64_t sub_23DE50E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = v18[52];
  v21 = v18[49];
  v20 = v18[50];
  v22 = v18[44];
  v24 = v18[41];
  v23 = v18[42];
  v26 = v18[39];
  v25 = v18[40];
  v28 = v18[35];
  v27 = v18[36];
  v42 = v18[32];
  v43 = v18[31];
  v44 = v18[30];
  v45 = v18[27];
  v46 = v18[26];
  v47 = v18[25];

  v29 = *(v24 + 8);
  v30 = OUTLINED_FUNCTION_30_0();
  v31(v30);

  OUTLINED_FUNCTION_19();
  v32 = v18[55];
  OUTLINED_FUNCTION_26();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, v44, v45, v46, v47, a16, a17, a18);
}

uint64_t sub_23DE50F78(uint64_t *a1)
{
  v2 = sub_23E1FDFEC();
  OUTLINED_FUNCTION_25(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23DF31AA8(v5);
    v5 = v11;
  }

  v6 = *(v5 + 16);
  v7 = *(v4 + 80);
  OUTLINED_FUNCTION_56_0();
  v12[0] = v5 + v9;
  v12[1] = v8;
  result = sub_23DE57558(v12);
  *a1 = v5;
  return result;
}

uint64_t sub_23DE5101C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C410, &unk_23E2241D0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v10 - v6;
  v8 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_23DF19510(*v1, &v10 - v6);
  v9 = sub_23E1FDFEC();
  result = __swift_getEnumTagSinglePayload(v7, 1, v9);
  if (result != 1)
  {
    result = (*(*(v9 - 8) + 32))(a1, v7, v9);
    if (*(v8 + 16))
    {
      return sub_23DE58E20(0, 1);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_23DE5112C()
{
  OUTLINED_FUNCTION_23();
  v1[18] = v0;
  v2 = sub_23E1FD03C();
  v1[19] = v2;
  OUTLINED_FUNCTION_8(v2);
  v1[20] = v3;
  v5 = *(v4 + 64);
  v1[21] = OUTLINED_FUNCTION_91();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_23E1FDECC();
  v1[24] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v7 = sub_23E1FDE6C();
  v1[25] = v7;
  v1[26] = v6;

  return MEMORY[0x2822009F8](sub_23DE51220, v7, v6);
}

uint64_t sub_23DE51220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v17 = *(v16 + 144);
  [objc_opt_self() prepare];
  v18 = [v17 input];
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v20 = [v18 items];

  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v21 = sub_23E1FDDEC();

  result = sub_23DE4D8B0(v21);
  if (!result)
  {

LABEL_9:
    v26 = *(v16 + 192);

    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
LABEL_10:
    sub_23DE58BD0(v16 + 96, &qword_27E32C320, &unk_23E224B40);
    goto LABEL_11;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x23EF04DD0](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = *(v21 + 32);
  }

  v24 = v23;

  sub_23DE38DA8(0, &qword_280DAE1D0, 0x277CCACA8);
  v25 = [v24 objectForClass_];

  if (v25)
  {
    sub_23E1FE49C();
    swift_unknownObjectRelease();
  }

  else
  {
    a11 = 0u;
    a12 = 0u;
  }

  *(v16 + 96) = a11;
  *(v16 + 112) = a12;
  if (!*(v16 + 120))
  {
    v96 = *(v16 + 192);

    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v76 = *(v16 + 136);
    v77 = HIBYTE(v76) & 0xF;
    if ((v76 & 0x2000000000000000) == 0)
    {
      v77 = *(v16 + 128) & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v78 = *(v16 + 184);
      *(v16 + 216) = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      sub_23E1FB7BC();
      v79 = sub_23E1FD02C();
      v80 = sub_23E1FE19C();

      v81 = os_log_type_enabled(v79, v80);
      v82 = *(v16 + 184);
      v83 = *(v16 + 152);
      v84 = *(v16 + 160);
      if (v81)
      {
        v85 = OUTLINED_FUNCTION_38_0();
        v100 = OUTLINED_FUNCTION_49_0();
        *v85 = 136315138;
        v86 = OUTLINED_FUNCTION_35_0();
        *(v85 + 4) = sub_23DE56B40(v86, v87, v88);
        _os_log_impl(&dword_23DE30000, v79, v80, "WFSpotlightSearchAction: with input %s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();
      }

      v89 = *(v84 + 8);
      v90 = OUTLINED_FUNCTION_30_0();
      v89(v90);
      *(v16 + 224) = v89;
      v91 = *(v16 + 144);
      OUTLINED_FUNCTION_35_0();
      sub_23DE4E7F4();
      *(v16 + 232) = v92;

      v93 = swift_task_alloc();
      *(v16 + 240) = v93;
      *v93 = v16;
      v93[1] = sub_23DE518C8;
      v94 = *(v16 + 144);
      OUTLINED_FUNCTION_26();

      return sub_23DE4F824();
    }

    v98 = *(v16 + 192);
  }

  else
  {
    v97 = *(v16 + 192);
  }

LABEL_11:
  v27 = *(v16 + 176);
  v28 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v29 = sub_23E1FD02C();
  v30 = sub_23E1FE1BC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_74_0();
    *v31 = 0;
    _os_log_impl(&dword_23DE30000, v29, v30, "WFSpotlightSearchAction: no search input", v31, 2u);
    OUTLINED_FUNCTION_20_0();
  }

  v32 = MEMORY[0x277D837D0];
  v33 = *(v16 + 176);
  v34 = *(v16 + 152);
  v35 = *(v16 + 160);

  v36 = *(v35 + 8);
  v37 = OUTLINED_FUNCTION_30_0();
  v99 = v38;
  v38(v37);
  v39 = *MEMORY[0x277D7CB30];
  sub_23E1FDC1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v41 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_23E1FDC1C();
  *(inited + 40) = v42;
  sub_23E1FDCBC();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v43 = qword_280DAE278;
  v44 = sub_23E1FDBDC();
  v45 = sub_23E1FDBDC();

  v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

  v47 = sub_23E1FDC1C();
  v49 = v48;

  *(inited + 72) = v32;
  *(inited + 48) = v47;
  *(inited + 56) = v49;
  v50 = sub_23E1FDABC();
  v51 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v52 = OUTLINED_FUNCTION_45();
  v54 = sub_23DE56A08(v52, v53, 6, v50);
  swift_willThrow();
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v55 = v54;
  v56 = sub_23E1FD02C();
  v57 = sub_23E1FE1BC();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = OUTLINED_FUNCTION_38_0();
    v59 = OUTLINED_FUNCTION_48_0();
    *v58 = 138412290;
    v60 = v54;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 4) = v61;
    *v59 = v61;
    _os_log_impl(&dword_23DE30000, v56, v57, "WFSpotlightSearchAction: error generating output %@", v58, 0xCu);
    sub_23DE58BD0(v59, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_16_1();
  }

  v63 = *(v16 + 176);
  v62 = *(v16 + 184);
  v65 = *(v16 + 160);
  v64 = *(v16 + 168);
  v66 = *(v16 + 152);

  v67 = OUTLINED_FUNCTION_64_0();
  v99(v67);
  swift_willThrow();

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_26();

  return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, v99, a11, *(&a11 + 1), a12, *(&a12 + 1), a13, a14, a15, a16);
}

uint64_t sub_23DE518C8()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = v4[30];
  v8 = *v1;
  *v6 = *v1;
  v5[31] = v3;
  v5[32] = v0;

  v9 = v4[29];

  if (v0)
  {
    v10 = v5[25];
    v11 = v5[26];

    return MEMORY[0x2822009F8](sub_23DE51C20, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[33] = v12;
    *v12 = v8;
    v12[1] = sub_23DE51A5C;
    v13 = v5[18];

    return sub_23DE52264();
  }
}

uint64_t sub_23DE51A5C()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v5 = v2[33];
  *v4 = *v1;
  *(v3 + 272) = v0;

  v6 = v2[31];

  v7 = v2[26];
  v8 = v2[25];
  if (v0)
  {
    v9 = sub_23DE51D8C;
  }

  else
  {
    v9 = sub_23DE51BA4;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23DE51BA4()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];

  OUTLINED_FUNCTION_7();

  return v5();
}

uint64_t sub_23DE51C20()
{
  v1 = v0[24];

  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[28];
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v5 = v2;
  v6 = sub_23E1FD02C();
  v7 = sub_23E1FE1BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_38_0();
    v9 = OUTLINED_FUNCTION_48_0();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v12, v13, "WFSpotlightSearchAction: error generating output %@");
    sub_23DE58BD0(v9, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_20_0();
  }

  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];

  v19 = OUTLINED_FUNCTION_64_0();
  v4(v19);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v20();
}

uint64_t sub_23DE51D8C()
{
  v1 = v0[24];

  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[28];
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  v5 = v2;
  v6 = sub_23E1FD02C();
  v7 = sub_23E1FE1BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_38_0();
    v9 = OUTLINED_FUNCTION_48_0();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_17_1(&dword_23DE30000, v12, v13, "WFSpotlightSearchAction: error generating output %@");
    sub_23DE58BD0(v9, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_20_0();
  }

  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[19];

  v19 = OUTLINED_FUNCTION_64_0();
  v4(v19);
  swift_willThrow();

  OUTLINED_FUNCTION_19();

  return v20();
}

uint64_t sub_23DE51F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23E1FDECC();
  v3[5] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();

  return MEMORY[0x2822009F8](sub_23DE5201C, v5, v4);
}

uint64_t sub_23DE5201C()
{
  OUTLINED_FUNCTION_4();
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
  v7[1] = sub_23DE520D4;
  v8 = v0[4];

  return sub_23DE5112C();
}

uint64_t sub_23DE520D4()
{
  OUTLINED_FUNCTION_33_0();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_23E1FBEBC();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_23DE52264()
{
  OUTLINED_FUNCTION_23();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_23E1FD03C();
  v1[19] = v3;
  OUTLINED_FUNCTION_8(v3);
  v1[20] = v4;
  v6 = *(v5 + 64);
  v1[21] = OUTLINED_FUNCTION_91();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v7 = sub_23E1FDFEC();
  v1[24] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[25] = v8;
  v10 = *(v9 + 64);
  v1[26] = OUTLINED_FUNCTION_42();
  sub_23E1FDECC();
  v1[27] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v12 = sub_23E1FDE6C();
  v1[28] = v12;
  v1[29] = v11;

  return MEMORY[0x2822009F8](sub_23DE523A4, v12, v11);
}

id sub_23DE523A4()
{
  sub_23DE38DA8(0, &unk_27E32C3E0, 0x277CC33B0);
  v3 = sub_23DE53778();
  v0[30] = v3;
  if (!v3)
  {
    goto LABEL_30;
  }

  v4 = v3;
  OUTLINED_FUNCTION_5();
  v5 = sub_23DE53778();
  v0[31] = v5;
  if (!v5)
  {
LABEL_29:

LABEL_30:
    v46 = v0[27];
    v47 = v0[22];

    v48 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v49 = sub_23E1FD02C();
    v50 = sub_23E1FE1BC();
    if (OUTLINED_FUNCTION_51(v50))
    {
      v51 = OUTLINED_FUNCTION_74_0();
      *v51 = 0;
      _os_log_impl(&dword_23DE30000, v49, v50, "WFSpotlightSearchAction: Spotlight CSCustomAttribute keys unavailable, halting execution.", v51, 2u);
      OUTLINED_FUNCTION_16_1();
    }

    v52 = v0[26];
    v54 = v0[22];
    v53 = v0[23];
    v56 = v0[20];
    v55 = v0[21];
    v57 = v0[19];

    v58 = *(v56 + 8);
    v59 = OUTLINED_FUNCTION_64_0();
    v60(v59);
    v61 = *MEMORY[0x277D7CB30];
    v62 = sub_23E1FDC1C();
    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23DE56A08(v62, v64, 16, 0);
    swift_willThrow();

    OUTLINED_FUNCTION_19();
LABEL_33:
    OUTLINED_FUNCTION_72_0();

    __asm { BRAA            X1, X16 }
  }

  v6 = v5;
  result = sub_23DE53778();
  v0[32] = result;
  if (!result)
  {

    v4 = v6;
    goto LABEL_29;
  }

  v8 = 0;
  v9 = *MEMORY[0x277D7A440];
  v0[33] = *(v0[17] + 16);
  v0[34] = v9;
  v10 = &selRef_kilocalorieUnit;
  v11 = &selRef_initWithActivityTypeIdentifier_isIndoor_;
  v12 = &unk_280DAE750;
  v13 = &off_278C24000;
  while (1)
  {
    v14 = v0[33];
    if (v8 == v14)
    {
      OUTLINED_FUNCTION_24_1();

      OUTLINED_FUNCTION_7();
      goto LABEL_33;
    }

    if (v8 >= v14)
    {
      break;
    }

    v1 = (v8 + 1);
    v0[35] = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_40;
    }

    v15 = v0[18];
    (*(v0[25] + 16))(v0[26], v0[17] + ((*(v0[25] + 80) + 32) & ~*(v0[25] + 80)) + *(v0[25] + 72) * v8, v0[24]);
    result = [v15 v10[474]];
    if (!result)
    {
      goto LABEL_41;
    }

    v16 = result;
    v17 = [result v11[484]];

    v0[36] = sub_23DE38DA8(0, v12, 0x277CFC2F8);
    v2 = sub_23E1FDDEC();

    if (v2 >> 62)
    {
      v18 = sub_23E1FE6AC();
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v0[18];

    if (v18 >= sub_23DE4E77C())
    {
      v38 = OUTLINED_FUNCTION_3_2();
      result = v39(v38);
      v8 = v1;
    }

    else
    {
      v20 = v0[31];
      v21 = v0[26];
      v22 = sub_23E1FDFDC();
      v2 = [v22 v13[247]];

      v23 = [v2 valueForCustomKey_];
      if (!v23 || (v0[14] = v23, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
      {
        v40 = OUTLINED_FUNCTION_3_2();
        result = v41(v40);
        goto LABEL_24;
      }

      v24 = v12;
      v25 = v11;
      v26 = v13;
      v27 = v0[30];
      v28 = v0[26];
      v2 = v0[9];
      v74 = v0[8];
      v0[37] = v2;
      v29 = sub_23E1FDFDC();
      v30 = v26;
      v1 = [v29 v26 + 116];

      v31 = [v1 valueForCustomKey_];
      if (v31 && (v0[15] = v31, (swift_dynamicCast() & 1) != 0))
      {
        v1 = v0[32];
        v32 = v0[26];
        v73 = v0[10];
        v0[38] = v0[11];
        v33 = sub_23E1FDFDC();
        v34 = [v33 v30 + 116];

        v35 = [v34 valueForCustomKey_];
        if (!v35)
        {
          v44 = OUTLINED_FUNCTION_3_2();
          v45(v44);

          v10 = &selRef_kilocalorieUnit;
          goto LABEL_23;
        }

        v0[16] = v35;
        v10 = &selRef_kilocalorieUnit;
        if (swift_dynamicCast())
        {
          v69 = v0[12];
          v68 = v0[13];
          v0[39] = v69;
          v0[40] = v68;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
          inited = swift_initStackObject();
          v0[41] = inited;
          *(inited + 16) = xmmword_23E222340;
          *(inited + 32) = v69;
          *(inited + 40) = v68;
          sub_23E1FB7BC();
          v71 = swift_task_alloc();
          v0[42] = v71;
          *v71 = v0;
          OUTLINED_FUNCTION_1_2(v71);
          OUTLINED_FUNCTION_72_0();

          return sub_23DE537EC();
        }

        v36 = OUTLINED_FUNCTION_3_2();
        v37(v36);
      }

      else
      {
        v42 = OUTLINED_FUNCTION_3_2();
        v43(v42);
      }

LABEL_23:
      v13 = v30;
      v11 = v25;
      v12 = v24;
LABEL_24:
      v8 = v0[35];
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_23DE529F8()
{
  OUTLINED_FUNCTION_4();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[42];
  v6 = *v1;
  OUTLINED_FUNCTION_58();
  *v7 = v6;
  v3[43] = v8;
  v3[44] = v0;

  v9 = v2[41];
  if (v0)
  {
    v10 = v3[37];
    v11 = v3[38];

    swift_setDeallocating();
    sub_23DF032A4();
    v12 = v3[28];
    v13 = v3[29];
    v14 = sub_23DE531B8;
  }

  else
  {
    swift_setDeallocating();
    sub_23DF032A4();
    v12 = v3[28];
    v13 = v3[29];
    v14 = sub_23DE52B4C;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

id sub_23DE52B4C()
{
  v79 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 272);
  v3 = *(v0 + 184);
  sub_23E1FCB9C();
  v4 = v1;
  v5 = sub_23E1FD02C();
  v6 = sub_23E1FE19C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 344);
    v8 = *(v0 + 288);
    v9 = *(v0 + 160);
    v75 = *(v0 + 152);
    v76 = *(v0 + 184);
    v10 = OUTLINED_FUNCTION_38_0();
    v11 = OUTLINED_FUNCTION_49_0();
    v78 = v11;
    *v10 = 136315138;
    v12 = [v7 items];
    v13 = sub_23E1FDDEC();

    v14 = MEMORY[0x23EF04600](v13, v8);
    v16 = v15;

    v17 = sub_23DE56B40(v14, v16, &v78);

    *(v10 + 4) = v17;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v18, v19, "WFSpotlightSearchAction: returning entities %s");
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_21_0();

    (*(v9 + 8))(v76, v75);
  }

  else
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 152);
    v22 = *(v0 + 160);

    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_50();
    v25(v24);
  }

  result = [*(v0 + 144) output];
  if (result)
  {
    v27 = result;
    v28 = *(v0 + 344);
    v29 = *(v0 + 320);
    v31 = *(v0 + 296);
    v30 = *(v0 + 304);

    v32 = [v28 items];
    if (!v32)
    {
      v33 = *(v0 + 288);
      sub_23E1FDDEC();
      v32 = sub_23E1FDDCC();
    }

    v34 = *(v0 + 344);
    v36 = *(v0 + 200);
    v35 = *(v0 + 208);
    v37 = *(v0 + 192);
    [v27 addItems_];

    v38 = *(v36 + 8);
    v39 = OUTLINED_FUNCTION_45();
    v40(v39);
    v41 = &off_278C24000;
LABEL_8:
    for (i = *(v0 + 280); ; ++i)
    {
      v43 = *(v0 + 264);
      if (i == v43)
      {
        break;
      }

      if (i >= v43)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v71 = *(v0 + 96);
        v70 = *(v0 + 104);
        *(v0 + 312) = v71;
        *(v0 + 320) = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
        inited = swift_initStackObject();
        *(v0 + 328) = inited;
        *(inited + 16) = xmmword_23E222340;
        *(inited + 32) = v71;
        *(inited + 40) = v70;
        sub_23E1FB7BC();
        v73 = swift_task_alloc();
        *(v0 + 336) = v73;
        *v73 = v0;
        OUTLINED_FUNCTION_1_2();

        return sub_23DE537EC();
      }

      *(v0 + 280) = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_33;
      }

      v44 = OUTLINED_FUNCTION_18_1();
      v45(v44);
      result = [v27 output];
      if (!result)
      {
        __break(1u);
        goto LABEL_38;
      }

      v46 = result;
      v47 = [result items];

      *(v0 + 288) = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      v48 = sub_23E1FDDEC();

      if (v48 >> 62)
      {
        v34 = sub_23E1FE6AC();
      }

      else
      {
        v34 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = *(v0 + 144);

      if (v34 < sub_23DE4E77C())
      {
        v34 = *(v0 + 248);
        v51 = *(v0 + 208);
        v52 = sub_23E1FDFDC();
        v53 = [v52 v41[247]];

        v27 = [v53 valueForCustomKey_];
        if (!v27 || (*(v0 + 112) = v27, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
        {
          v65 = OUTLINED_FUNCTION_3_2();
          v66(v65);
          goto LABEL_8;
        }

        v54 = v41;
        v55 = *(v0 + 240);
        v56 = *(v0 + 208);
        v34 = *(v0 + 72);
        v77 = *(v0 + 64);
        *(v0 + 296) = v34;
        v57 = sub_23E1FDFDC();
        v58 = [v57 v54 + 116];

        v27 = [v58 valueForCustomKey_];
        if (!v27 || (*(v0 + 120) = v27, (swift_dynamicCast() & 1) == 0))
        {
          v67 = OUTLINED_FUNCTION_3_2();
          v68(v67);
          goto LABEL_27;
        }

        v59 = *(v0 + 256);
        v60 = *(v0 + 208);
        v74 = *(v0 + 80);
        *(v0 + 304) = *(v0 + 88);
        v61 = sub_23E1FDFDC();
        v62 = [v61 attributeSet];

        v27 = [v62 valueForCustomKey_];
        if (!v27 || (*(v0 + 128) = v27, (swift_dynamicCast() & 1) == 0))
        {
          v63 = OUTLINED_FUNCTION_3_2();
          v64(v63);

LABEL_27:

          v41 = &off_278C24000;
          goto LABEL_8;
        }

        goto LABEL_34;
      }

      v49 = OUTLINED_FUNCTION_3_2();
      v50(v49);
    }

    OUTLINED_FUNCTION_24_1();

    OUTLINED_FUNCTION_7();

    return v69();
  }

  else
  {
LABEL_38:
    __break(1u);
  }

  return result;
}

id sub_23DE531B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_27();
  a25 = v27;
  a26 = v28;
  OUTLINED_FUNCTION_32();
  a24 = v26;
  v29 = v26[44];
  v30 = v26[40];
  v31 = v26[34];
  OUTLINED_FUNCTION_65();
  sub_23E1FCB9C();
  sub_23E1FB7BC();
  v32 = v29;
  v33 = sub_23E1FD02C();
  v34 = sub_23E1FE1BC();

  v35 = os_log_type_enabled(v33, v34);
  v36 = v26[44];
  v37 = v26[40];
  if (v35)
  {
    v38 = v26[39];
    a13 = v26[24];
    a14 = v26[26];
    v39 = v26[20];
    a11 = v26[21];
    a12 = v26[25];
    a10 = v26[19];
    v40 = OUTLINED_FUNCTION_52_0();
    v41 = OUTLINED_FUNCTION_48_0();
    v42 = OUTLINED_FUNCTION_49_0();
    a15 = v42;
    *v40 = 136315394;
    v43 = sub_23DE56B40(v38, v37, &a15);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2112;
    v44 = v36;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v45;
    *v41 = v45;
    _os_log_impl(&dword_23DE30000, v33, v34, "WFSpotlightSearchAction: entity hydration failed for instance %s with error %@", v40, 0x16u);
    sub_23DE58BD0(v41, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_20_0();
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_56();

    v47 = *(v39 + 8);
    v46 = (v39 + 8);
    v47(a11, a10);
    (*(a12 + 8))(a14, a13);
  }

  else
  {
    v49 = v26[25];
    v48 = v26[26];
    v50 = v26[24];
    v51 = v26[20];
    v43 = v26[21];
    v46 = v26[19];

    v52 = *(v51 + 8);
    v53 = OUTLINED_FUNCTION_66();
    v54(v53);
    v55 = *(v49 + 8);
    v34 = (v49 + 8);
    v56 = OUTLINED_FUNCTION_45();
    v57(v56);
  }

LABEL_4:
  for (i = v26[35]; ; ++i)
  {
    v59 = v26[33];
    if (i == v59)
    {
      break;
    }

    if (i >= v59)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v95 = v26[12];
      v94 = v26[13];
      v26[39] = v95;
      v26[40] = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      inited = swift_initStackObject();
      v26[41] = inited;
      *(inited + 16) = xmmword_23E222340;
      *(inited + 32) = v95;
      *(inited + 40) = v94;
      sub_23E1FB7BC();
      v97 = swift_task_alloc();
      v26[42] = v97;
      *v97 = v26;
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_26();

      return sub_23DE537EC();
    }

    v26[35] = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_27;
    }

    v60 = OUTLINED_FUNCTION_18_1();
    v61(v60);
    result = [v33 output];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v63 = result;
    v64 = [result items];

    v26[36] = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    v65 = sub_23E1FDDEC();

    if (v65 >> 62)
    {
      v66 = sub_23E1FE6AC();
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = v26[18];

    if (v66 < sub_23DE4E77C())
    {
      v69 = v26[31];
      v70 = v26[26];
      v71 = sub_23E1FDFDC();
      v72 = [v71 attributeSet];

      v33 = [v72 valueForCustomKey_];
      if (!v33 || (v26[14] = v33, v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C3F0, &unk_23E2241B8), (swift_dynamicCast() & 1) == 0))
      {
        v82 = OUTLINED_FUNCTION_3_2();
        v83(v82);
        goto LABEL_4;
      }

      v73 = v26[30];
      v74 = v26[26];
      v75 = v26[8];
      v26[37] = v26[9];
      v76 = sub_23E1FDFDC();
      v46 = [v76 attributeSet];

      v33 = [v46 valueForCustomKey_];
      if (!v33 || (v26[15] = v33, (swift_dynamicCast() & 1) == 0))
      {
        v84 = OUTLINED_FUNCTION_3_2();
        v85(v84);

        goto LABEL_4;
      }

      v34 = v26[32];
      v77 = v26[26];
      v46 = v26[10];
      v26[38] = v26[11];
      v78 = sub_23E1FDFDC();
      v79 = [v78 attributeSet];

      v33 = [v79 valueForCustomKey_];
      if (!v33 || (v26[16] = v33, (swift_dynamicCast() & 1) == 0))
      {
        v80 = OUTLINED_FUNCTION_3_2();
        v81(v80);

        goto LABEL_4;
      }

      goto LABEL_28;
    }

    v67 = OUTLINED_FUNCTION_3_2();
    v68(v67);
  }

  OUTLINED_FUNCTION_24_1();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

id sub_23DE53778()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_23E1FDBDC();

  v2 = [v0 initWithKeyName_];

  return v2;
}

uint64_t sub_23DE537EC()
{
  OUTLINED_FUNCTION_4();
  v26 = *MEMORY[0x277D85DE8];
  v1[25] = v2;
  v1[26] = v0;
  v1[23] = v3;
  v1[24] = v4;
  v1[21] = v5;
  v1[22] = v6;
  v7 = sub_23E1FE2EC();
  v1[27] = v7;
  OUTLINED_FUNCTION_8(v7);
  v1[28] = v8;
  v10 = *(v9 + 64);
  v1[29] = OUTLINED_FUNCTION_42();
  v11 = sub_23E1FE2FC();
  v1[30] = v11;
  OUTLINED_FUNCTION_8(v11);
  v1[31] = v12;
  v14 = *(v13 + 64);
  v1[32] = OUTLINED_FUNCTION_42();
  v15 = sub_23E1FD03C();
  v1[33] = v15;
  OUTLINED_FUNCTION_8(v15);
  v1[34] = v16;
  v18 = *(v17 + 64);
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C328, &qword_23E224130);
  OUTLINED_FUNCTION_25(v19);
  v21 = *(v20 + 64);
  v1[37] = OUTLINED_FUNCTION_42();
  v1[38] = sub_23E1FDECC();
  v1[39] = sub_23E1FDEBC();
  OUTLINED_FUNCTION_37();
  v22 = sub_23E1FDE6C();
  v1[40] = v22;
  v1[41] = v23;
  v24 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23DE539D8, v22, v23);
}

uint64_t sub_23DE539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  v31 = v28[37];
  v33 = v28[21];
  v32 = v28[22];
  sub_23E1FB7BC();
  OUTLINED_FUNCTION_35_0();
  sub_23E1FBCFC();
  v34 = sub_23E1FBD5C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v34);
  v36 = v28[37];
  if (EnumTagSinglePayload == 1)
  {
    v37 = v28[22];
    sub_23DE58BD0(v28[37], &unk_27E32C328, &qword_23E224130);
    sub_23E1FB7BC();
    v39 = v28[21];
    v38 = v28[22];
  }

  else
  {
    v39 = sub_23E1FBCEC();
    v38 = v40;
    OUTLINED_FUNCTION_21(v34);
    (*(v41 + 8))(v36, v34);
  }

  v28[42] = v39;
  v28[43] = v38;
  v42 = [objc_opt_self() sharedProvider];
  v137 = v39;
  v138 = v38;
  OUTLINED_FUNCTION_35_0();
  v43 = sub_23E1FDBDC();
  v44 = [v42 entitiesForBundleIdentifier_];

  sub_23DE38DA8(0, &qword_280DAE370, 0x277D23818);
  v45 = sub_23E1FDDEC();

  v46 = sub_23DE4D8B0(v45);
  v47 = 0;
  v139 = (v45 & 0xFFFFFFFFFFFFFF8);
  v140 = v45 & 0xC000000000000001;
  while (1)
  {
    if (v46 == v47)
    {
      v60 = v28[39];
      v61 = v28[35];
      v62 = v28[24];

      v63 = *MEMORY[0x277D7A440];
      sub_23E1FCB9C();
      sub_23E1FB7BC();
      sub_23E1FB7BC();
      v64 = sub_23E1FD02C();
      v65 = sub_23E1FE1BC();

      v66 = os_log_type_enabled(v64, v65);
      v68 = v28[34];
      v67 = v28[35];
      v69 = v28[33];
      if (v66)
      {
        v70 = v28[23];
        v139 = v28[24];
        v71 = OUTLINED_FUNCTION_52_0();
        a16 = swift_slowAlloc();
        *v71 = 136315394;
        v140 = v67;
        v72 = sub_23DE56B40(v137, v138, &a16);

        *(v71 + 4) = v72;
        *(v71 + 12) = 2080;
        *(v71 + 14) = sub_23DE56B40(v70, v139, &a16);
        _os_log_impl(&dword_23DE30000, v64, v65, "WFSpotlightSearchAction: no entity metadata bundle: %s type: %s", v71, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_56();
        OUTLINED_FUNCTION_56();

        (*(v68 + 8))(v140, v69);
      }

      else
      {

        (*(v68 + 8))(v67, v69);
      }

      v120 = *MEMORY[0x277D7CB30];
      v121 = sub_23E1FDC1C();
      v123 = v122;
      v124 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_23DE56A08(v121, v123, 16, 0);
      swift_willThrow();
      goto LABEL_38;
    }

    if (v140)
    {
      v48 = MEMORY[0x23EF04DD0](v47, v45);
    }

    else
    {
      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v48 = *(v45 + 8 * v47 + 32);
    }

    v49 = v48;
    v28[44] = v48;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_43;
    }

    v51 = v28[23];
    v50 = v28[24];
    v52 = [v48 identifier];
    v53 = sub_23E1FDC1C();
    v55 = v54;

    if (v53 == v51 && v55 == v50)
    {
      break;
    }

    v57 = v28[23];
    v58 = v28[24];
    v59 = sub_23E1FE75C();

    if (v59)
    {
      goto LABEL_20;
    }

    ++v47;
  }

LABEL_20:
  v73 = v28[36];

  v74 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v75 = v49;
  v76 = sub_23E1FD02C();
  v77 = sub_23E1FE1AC();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_38_0();
    v79 = OUTLINED_FUNCTION_48_0();
    *v78 = 138412290;
    *(v78 + 4) = v75;
    *v79 = v75;
    v80 = v75;
    OUTLINED_FUNCTION_73_0(&dword_23DE30000, v81, v82, "WFSpotlightSearchAction: entityMetadata %@");
    sub_23DE58BD0(v79, &unk_27E32C190, &qword_23E224B70);
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_21_0();
  }

  v139 = v75;
  v83 = v28[36];
  v85 = v28[33];
  v84 = v28[34];
  v86 = v28[25];

  v87 = *(v84 + 8);
  v88 = OUTLINED_FUNCTION_30_0();
  v89(v88);
  v90 = 0;
  v140 = MEMORY[0x277D84F90];
  a16 = MEMORY[0x277D84F90];
  v91 = *(v86 + 16);
  v92 = v86 + 40;
  v137 = v86 + 40;
LABEL_23:
  v93 = (v92 + 16 * v90);
  while (v91 != v90)
  {
    if (v90 >= v91)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v94 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      goto LABEL_42;
    }

    v96 = v28[23];
    v95 = v28[24];
    v98 = *(v93 - 1);
    v97 = *v93;
    objc_allocWithZone(MEMORY[0x277D23800]);
    sub_23E1FB7BC();
    sub_23E1FB7BC();
    v93 += 2;
    ++v90;
    if (sub_23DE56AB8())
    {
      MEMORY[0x23EF045A0]();
      v99 = *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v99 >> 1)
      {
        OUTLINED_FUNCTION_9(v99);
        sub_23E1FDE0C();
      }

      sub_23E1FDE3C();
      v140 = a16;
      v90 = v94;
      v92 = v137;
      goto LABEL_23;
    }
  }

  v100 = v28[31];
  v101 = v28[32];
  v103 = v28[29];
  v102 = v28[30];
  v105 = v28[27];
  v104 = v28[28];
  sub_23DE38DA8(0, &qword_27E32C338, 0x277D23B90);
  *v101 = v140;
  (*(v100 + 104))(v101, *MEMORY[0x277D23A18], v102);
  *v103 = v139;
  (*(v104 + 104))(v103, *MEMORY[0x277D23A40], v105);
  v106 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v107 = v139;
  [v106 init];
  v108 = sub_23E1FE30C();
  v28[45] = v108;
  v109 = [objc_opt_self() policyWithEntityMetadata_];
  v28[46] = v109;
  v28[18] = 0;
  v110 = [v109 connectionWithError_];
  v28[47] = v110;
  v111 = v28[18];
  if (v110)
  {
    v112 = v110;
    v28[2] = v28;
    v28[7] = v28 + 19;
    v28[3] = sub_23DE5428C;
    v113 = swift_continuation_init();
    v28[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C340, &qword_23E224138);
    v28[10] = MEMORY[0x277D85DD0];
    v28[11] = 1107296256;
    v28[12] = sub_23DE54D3C;
    v28[13] = &block_descriptor_1;
    v28[14] = v113;
    v114 = v111;
    [v112 performConfigurableQuery:v108 completionHandler:v28 + 10];
    v115 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_41();

    return MEMORY[0x282200938](v116);
  }

  v118 = v28[39];
  v119 = v111;

  sub_23E1FBECC();

  swift_willThrow();
LABEL_38:
  v126 = v28[36];
  v125 = v28[37];
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();
  v127 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_41();

  return v129(v128, v129, v130, v131, v132, v133, v134, v135, a9, a10, v137, v138, v139, v140, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE5428C()
{
  OUTLINED_FUNCTION_4();
  v11 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  OUTLINED_FUNCTION_58();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  v1[48] = v4;
  if (v4)
  {
    v5 = v1[43];

    v6 = v1[40];
    v7 = v1[41];
    v8 = sub_23DE54B5C;
  }

  else
  {
    v6 = v1[40];
    v7 = v1[41];
    v8 = sub_23DE543CC;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_23DE543CC()
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[19];
  v0[49] = v4;
  v5 = [v4 value];
  v6 = [v5 valueType];

  v7 = [v4 value];
  OUTLINED_FUNCTION_30_0();
  v8 = sub_23E1FDBDC();

  sub_23DE5881C(v1);
  if (v9)
  {
    v10 = sub_23E1FDBDC();
  }

  else
  {
    v10 = 0;
  }

  v11 = v0[26];
  v12 = [v6 wf:v7 contentCollectionFromLinkValue:v8 appBundleIdentifier:v10 displayedBundleIdentifier:1 disclosureLevel:?];
  v0[50] = v12;

  sub_23DE4E17C();
  sub_23DE54DCC();
  v14 = v13;
  v0[51] = v13;

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_23DE38DA8(0, &qword_280DAE6A0, 0x277D7C5C0);
    v17 = (v14 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = *v17;
      if (*v17 != v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v18 + 16);
          OUTLINED_FUNCTION_13_1();
          sub_23DE64074();
        }

        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          OUTLINED_FUNCTION_9(v21);
          sub_23DE64074();
        }

        *(v18 + 16) = v22 + 1;
        *(v18 + 8 * v22 + 32) = v19;
      }

      ++v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v0[52] = v18;
  v23 = v0[38];
  sub_23DE38DA8(0, &qword_27E32C350, 0x277CFC2A0);
  v24 = sub_23DE552A0(v18);
  v25 = sub_23DE553CC(v24, 0, 0);
  v0[53] = v25;
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v0[54] = sub_23E1FDEBC();
  v26 = swift_task_alloc();
  v0[55] = v26;
  v26[2] = v12;
  v26[3] = v25;
  v26[4] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C358, &qword_23E224150);
  v27 = *(MEMORY[0x277D859B8] + 4);
  v28 = swift_task_alloc();
  v0[56] = v28;
  *v28 = v0;
  v28[1] = sub_23DE54728;
  v29 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x282200740]();
}

uint64_t sub_23DE54728()
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v5 = v2[56];
  *v4 = *v1;
  v3[57] = v0;

  v6 = v2[55];
  v7 = v2[54];
  v8 = v2[52];
  if (v0)
  {
    v9 = v3[51];

    v10 = v3[40];
    v11 = v3[41];
    v12 = sub_23DE54C40;
  }

  else
  {

    v10 = v3[40];
    v11 = v3[41];
    v12 = sub_23DE548E8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_23DE548E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_46();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  v31 = v28[39];

  v32 = v28[20];
  v68 = MEMORY[0x277D84F90];
  v33 = sub_23DE4D8B0(v32);
  v34 = 0;
  v35 = v32 & 0xC000000000000001;
  v36 = v28[57];
  while (v33 != v34)
  {
    sub_23DE570B0(v34, v35 == 0, v32);
    if (v35)
    {
      v37 = MEMORY[0x23EF04DD0](v34, v32);
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
    }

    v39 = v28[51];
    a15 = v37;
    v40 = sub_23DE56310(&a15, v39);
    if (v36)
    {

      v61 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_41();
    }

    if (v40)
    {
      sub_23E1FE61C();
      v41 = *(v68 + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
    }

    else
    {
    }

    v36 = 0;
    ++v34;
  }

  v42 = v28[53];
  v44 = v28[50];
  v43 = v28[51];
  v45 = v28[49];
  v47 = v28[46];
  v46 = v28[47];
  v48 = v28[44];
  v49 = v28[45];
  v63 = v28[37];
  v64 = v28[36];
  v65 = v28[35];
  v66 = v28[32];
  v67 = v28[29];

  sub_23DE38DA8(0, &qword_27E32C360, 0x277CFC2E0);
  sub_23DE56610();

  v50 = v28[1];
  v51 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_41();

  return v54(v52, v53, v54, v55, v56, v57, v58, v59, v63, v64, v65, v66, v67, v68, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE54B5C()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[47];
  v2 = v0[48];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[39];

  swift_willThrow();

  v7 = v0[48];
  v9 = v0[36];
  v8 = v0[37];
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

uint64_t sub_23DE54C40()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 424);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 360);
  v7 = *(v0 + 312);

  v8 = *(v0 + 456);
  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  OUTLINED_FUNCTION_47_0();

  OUTLINED_FUNCTION_19();
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t *sub_23DE54D3C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_23DEEC878(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_23DEEC87C(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23DE54DCC()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v65 = sub_23E1FD03C();
  v2 = OUTLINED_FUNCTION_6_0(v65);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  v10 = sub_23E1FBD5C();
  v11 = OUTLINED_FUNCTION_6_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v71 = v16;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = *(v1 + 16);
  if (v20)
  {
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v70 = v22;
    v23 = *(v21 + 64);
    OUTLINED_FUNCTION_31_0();
    v25 = v1 + v24;
    v69 = (v21 + 72);
    v68 = *MEMORY[0x277CFC170];
    v64 = *MEMORY[0x277CFC1B0];
    v61 = *MEMORY[0x277CFC198];
    v60 = *MEMORY[0x277CFC178];
    v26 = *MEMORY[0x277CFC180];
    v58 = *MEMORY[0x277CFC1A0];
    v59 = v26;
    v57 = *MEMORY[0x277CFC188];
    v27 = *MEMORY[0x277CFC190];
    v55 = *MEMORY[0x277CFC1B8];
    v56 = v27;
    v28 = (v21 - 8);
    v54 = *MEMORY[0x277CFC1C0];
    v63 = (v4 + 8);
    v53 = *MEMORY[0x277CFC1A8];
    v62 = *MEMORY[0x277D7A440];
    v67 = *(v21 + 56);
    v29 = MEMORY[0x277D84F90];
    v66 = v21;
    while (1)
    {
      v30 = OUTLINED_FUNCTION_30_0();
      v31 = v70;
      (v70)(v30);
      v32 = v71;
      v31(v71, v19, v10);
      v33 = (*v69)(v32, v10);
      if (v33 != v68)
      {
        break;
      }

      sub_23E1FCB9C();
      v34 = sub_23E1FD02C();
      v35 = sub_23E1FE1BC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_74_0();
        *v36 = 0;
        _os_log_impl(&dword_23DE30000, v34, v35, "WFSpotlightSearchAction: Unexpected 'any' type in resultContentClasses computation", v36, 2u);
        OUTLINED_FUNCTION_56();
      }

      (*v63)(v9, v65);
      v37 = *v28;
      v38 = OUTLINED_FUNCTION_58_0();
      v39(v38);
LABEL_22:
      v25 += v67;
      if (!--v20)
      {
        goto LABEL_34;
      }
    }

    if (v33 == v64)
    {
      v40 = &unk_27E32C3C0;
      v41 = 0x277CFC288;
    }

    else if (v33 == v61)
    {
      v40 = &unk_280DAE6D8;
      v41 = 0x277CFC2B8;
    }

    else
    {
      if (v33 != v60)
      {
        if (v33 == v59)
        {
          v40 = &unk_27E32C3B0;
          v41 = 0x277CFC3C0;
          goto LABEL_17;
        }

        if (v33 == v58)
        {
          v40 = &unk_27E32C3A8;
          v41 = 0x277CFC470;
          goto LABEL_17;
        }

        if (v33 != v57)
        {
          if (v33 == v56)
          {
            v40 = &unk_27E32C3A0;
            v41 = 0x277CFC4C0;
            goto LABEL_17;
          }

          if (v33 == v55)
          {
            v40 = &unk_27E32C398;
            v41 = 0x277CFC4E8;
            goto LABEL_17;
          }

          if (v33 != v54 && v33 != v53)
          {
            sub_23E1FE74C();
            __break(1u);
            return;
          }
        }
      }

      v40 = &unk_280DAE6A0;
      v41 = 0x277D7C5C0;
    }

LABEL_17:
    v42 = sub_23DE38DA8(0, v40, v41);
    v43 = *v28;
    v44 = OUTLINED_FUNCTION_58_0();
    v45(v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v29 + 16);
      OUTLINED_FUNCTION_6_1();
      sub_23DE4CC50();
      v29 = v50;
    }

    v47 = *(v29 + 16);
    v46 = *(v29 + 24);
    if (v47 >= v46 >> 1)
    {
      OUTLINED_FUNCTION_9(v46);
      OUTLINED_FUNCTION_60_0();
      sub_23DE4CC50();
      v29 = v51;
    }

    *(v29 + 16) = v47 + 1;
    *(v29 + 8 * v47 + 32) = v42;
    goto LABEL_22;
  }

LABEL_34:
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE552A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_23DE64054(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23DE64054(v5 > 1, v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_23DE553CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C390, &qword_23E224190);
  v5 = sub_23E1FDDCC();

  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23DE554D8;
    v9[3] = &block_descriptor_17;
    v6 = _Block_copy(v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() requestForCoercingToContentClasses:v5 completionHandler:v6];
  _Block_release(v6);

  return v7;
}

void sub_23DE554D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23E1FB7CC();
  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_23DE55580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C370, &unk_23E224160);
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = sub_23E1FDECC();
  v5[23] = sub_23E1FDEBC();
  v11 = sub_23E1FDE6C();
  v5[24] = v11;
  v5[25] = v10;

  return MEMORY[0x2822009F8](sub_23DE556D0, v11, v10);
}

uint64_t sub_23DE556D0()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v1 = [*(v0 + 112) items];
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v2 = sub_23E1FDDEC();

  v40 = v2;
  v3 = sub_23DE4D8B0(v2);
  v39 = v3;
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
      return MEMORY[0x2822004E8](v3, v4, v5);
    }

    v6 = 0;
    v38 = **(v0 + 104);
    v37 = v2 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v7 = MEMORY[0x23EF04DD0](v6, v40);
      }

      else
      {
        v7 = *(v40 + 8 * v6 + 32);
      }

      v8 = v7;
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      v11 = *(v0 + 120);
      v12 = *(v0 + 128);
      v13 = sub_23E1FDEFC();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v15 = v14 + 2;
      v14[3] = 0;
      v14[4] = v8;
      v14[5] = v11;
      v14[6] = v12;
      sub_23DE58B60(v9, v10);
      LODWORD(v9) = __swift_getEnumTagSinglePayload(v10, 1, v13);
      v16 = v8;
      v17 = v11;
      sub_23E1FB7BC();
      v18 = *(v0 + 160);
      if (v9 == 1)
      {
        sub_23DE58BD0(*(v0 + 160), &qword_27E32CD50, &qword_23E22A9F0);
      }

      else
      {
        sub_23E1FDEEC();
        OUTLINED_FUNCTION_21(v13);
        (*(v19 + 8))(v18, v13);
      }

      if (*v15)
      {
        v20 = v14[3];
        v21 = *v15;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = sub_23E1FDE6C();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      sub_23E1FB7CC();
      if (v24 | v22)
      {
        v25 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v25 = 0;
      }

      ++v6;
      v26 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v25;
      *(v0 + 64) = v38;
      swift_task_create();

      sub_23DE58BD0(v26, &qword_27E32CD50, &qword_23E22A9F0);
    }

    while (v39 != v6);
  }

  v27 = *(v0 + 152);
  v28 = *(v0 + 104);
  v29 = MEMORY[0x277D84F90];
  *(v0 + 72) = MEMORY[0x277D84F90];
  v30 = *v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C380, &qword_23E224180);
  sub_23E1FDF1C();
  *(v0 + 208) = v29;
  v31 = *(v0 + 176);
  *(v0 + 216) = sub_23E1FDEBC();
  v32 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 224) = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_12_0(v33);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x2822004E8](v3, v4, v5);
}

uint64_t sub_23DE55A54()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    v9 = v3[26];
    v10 = v3[27];

    v11 = v3[24];
    v12 = v3[25];
    v13 = sub_23DE55CE8;
  }

  else
  {
    v14 = v3[27];

    v11 = v3[24];
    v12 = v3[25];
    v13 = sub_23DE55B64;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_23DE55B64()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[10];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x23EF045A0]();
    v3 = *((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v0[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v3 >> 1)
    {
      OUTLINED_FUNCTION_9(v3);
      sub_23E1FDE0C();
    }

    OUTLINED_FUNCTION_58_0();
    sub_23E1FDE3C();

    v0[26] = v0[9];
    v4 = v0[22];
    v5 = sub_23E1FDEBC();
    v0[27] = v5;
    v6 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    v0[28] = v7;
    *v7 = v8;
    OUTLINED_FUNCTION_12_0();
    v9 = MEMORY[0x277D85700];

    return MEMORY[0x2822004E8](v0 + 10, v5, v9);
  }

  else
  {
    v10 = v0[26];
    v11 = v0[23];
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[12];
    (*(v0[18] + 8))(v0[19], v0[17]);

    *v14 = v10;

    OUTLINED_FUNCTION_7();

    return v15();
  }
}

uint64_t sub_23DE55CE8()
{
  OUTLINED_FUNCTION_33_0();
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  v7 = *(v4 + 8);
  v8 = OUTLINED_FUNCTION_45();
  v9(v8);
  v10 = v0[11];

  OUTLINED_FUNCTION_19();

  return v11();
}

uint64_t sub_23DE55D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_23DE55DB0, 0, 0);
}

uint64_t sub_23DE55DB0()
{
  OUTLINED_FUNCTION_33_0();
  if ([*(v0 + 24) canPerformCoercion_])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 24);
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    v6 = sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    *v5 = v0;
    v5[1] = sub_23DE55F24;
    v7 = *(v0 + 16);

    return MEMORY[0x2822007B8](v7, 0, 0, 0xD000000000000052, 0x800000023E24E730, sub_23DE58C2C, v3, v6);
  }

  else
  {
    **(v0 + 16) = *(v0 + 24);
    OUTLINED_FUNCTION_19();
    v12 = v8;
    v10 = v9;

    return v12();
  }
}

uint64_t sub_23DE55F24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  OUTLINED_FUNCTION_7();

  return v6();
}

void sub_23DE56020(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_23DE38DA8(0, &qword_27E32C350, 0x277CFC2A0);
  v11 = sub_23DE552A0(a3);
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v14 = a2;
  v15 = sub_23DE553CC(v11, sub_23DE58C34, v13);
  [v14 performCoercion_];
}

void sub_23DE561D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a1 || (v7 = [a1 items], sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8), v8 = sub_23E1FDDEC(), v7, v9 = sub_23DE4D8B0(v8), , !v9))
  {
    v13 = a5;
    goto LABEL_8;
  }

  v10 = [a1 items];
  v11 = sub_23E1FDDEC();

  if ((v11 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EF04DD0](0, v11);
    goto LABEL_6;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 32);
LABEL_6:

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
    sub_23E1FDE8C();
    return;
  }

  __break(1u);
}

BOOL sub_23DE56310(void **a1, uint64_t a2)
{
  v4 = sub_23E1FD03C();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a2 + 16);
  for (i = 32; ; i += 8)
  {
    v11 = v9;
    if (v9-- == 0)
    {
      break;
    }

    v13 = *(a2 + i);
    if ([v8 isKindOfClass_])
    {
      return v11 != 0;
    }
  }

  v14 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v15 = v8;
  sub_23E1FB7BC();
  v16 = sub_23E1FD02C();
  v17 = sub_23E1FE1BC();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    HIDWORD(v32) = v17;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v20 = 138740483;
    *(v20 + 4) = v15;
    *v21 = v15;
    *(v20 + 12) = 2082;
    swift_getObjectType();
    v34 = v4;
    v22 = v15;
    v23 = sub_23E1FE88C();
    v25 = sub_23DE56B40(v23, v24, &v36);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C368, &qword_23E224158);
    v27 = MEMORY[0x23EF045E0](a2, v26);
    v29 = sub_23DE56B40(v27, v28, &v36);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_23DE30000, v16, BYTE4(v32), "WFSpotlightSearchAction: dropping item %{sensitive}@ due to unsupported type %{public}s (allowed types: %{public}s)", v20, 0x20u);
    sub_23DE58BD0(v21, &unk_27E32C190, &qword_23E224B70);
    MEMORY[0x23EF074C0](v21, -1, -1);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x23EF074C0](v30, -1, -1);
    MEMORY[0x23EF074C0](v20, -1, -1);

    (*(v35 + 8))(v7, v34);
  }

  else
  {

    (*(v35 + 8))(v7, v4);
  }

  return v11 != 0;
}

id sub_23DE56610()
{
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v0 = sub_23E1FDDCC();

  v1 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v1;
}

id WFSpotlightSearchAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFSpotlightSearchAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
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
  v11.super_class = type metadata accessor for WFSpotlightSearchAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id WFSpotlightSearchAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSpotlightSearchAction.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSpotlightSearchAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WFSpotlightSearchAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSpotlightSearchAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23DE56998(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23E1FDBDC();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithUserQueryString:v5 userQueryContext:a3];

  return v6;
}

id sub_23DE56A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_23DE56AB8()
{
  v1 = sub_23E1FDBDC();

  v2 = sub_23E1FDBDC();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t sub_23DE56B40(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_23E1FB7BC();
  v6 = sub_23DE56C04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_23DE48110(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23DE56C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23DE56D04(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_23E1FE60C();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23DE56D04(uint64_t a1, unint64_t a2)
{
  v4 = sub_23DE56D50(a1, a2);
  sub_23DE56E68(&unk_2850233E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23DE56D50(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_23E1FDD2C())
  {
    result = sub_23DE56F4C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_23E1FE58C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_23E1FE60C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23DE56E68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_23DE56FBC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23DE56F4C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C3D8, &unk_23E2241A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_23DE56FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C3D8, &unk_23E2241A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_23DE570B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23DE570D4(uint64_t a1)
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

  result = sub_23DE574E0(result, 1, sub_23DE4CB98);
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

void sub_23DE571A8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(v4, 1, sub_23DE4CF68);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  OUTLINED_FUNCTION_66_0();
  if (v9 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for WFExecutionPlatform(0);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v10 = *(v6 + 16);
  v5 = __OFADD__(v10, v1);
  v11 = v10 + v1;
  if (!v5)
  {
    *(v6 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_23DE57274(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(v4 + v3, 1, sub_23DE4D3CC);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  OUTLINED_FUNCTION_66_0();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 16 * v8 + 32), (a1 + 32), 16 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_23DE5733C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_41_0(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23DE574E0(result, 1, sub_23DE4D518);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_23E1FD6BC();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23DE57440(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23E1FE6AC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23E1FE5FC();
  *v1 = result;
  return result;
}

uint64_t sub_23DE574E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_23DE57558(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E1FE70C();
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
        sub_23E1FDFEC();
        v6 = sub_23E1FDE2C();
        *(v6 + 16) = v5;
      }

      v7 = sub_23E1FDFEC();
      OUTLINED_FUNCTION_25(v7);
      v9 = *(v8 + 80);
      OUTLINED_FUNCTION_31_0();
      v11[0] = v6 + v10;
      v11[1] = v5;
      sub_23DE578D8(v11, v12, a1, v4);
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
    return sub_23DE57680(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23DE57680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23E1FDFEC();
  v9 = OUTLINED_FUNCTION_6_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v43 = v12;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_0();
  v47 = v14;
  OUTLINED_FUNCTION_14_0();
  result = MEMORY[0x28223BE20](v15);
  v46 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v44 = *(v17 + 16);
    v45 = v17 + 16;
    v20 = *(v17 + 72);
    v21 = (v17 + 8);
    v22 = v19 + v20 * (a3 - 1);
    v40 = -v20;
    v41 = (v17 + 32);
    v23 = a1 - a3;
    v42 = v19;
    v34 = v20;
    v24 = v19 + v20 * a3;
    while (2)
    {
      v38 = v22;
      v39 = a3;
      v36 = v24;
      v37 = v23;
      do
      {
        v25 = v46;
        v26 = v44;
        v44(v46, v24, v8);
        v27 = v47;
        v26(v47, v22, v8);
        v28 = sub_23E1FDFCC();
        v29 = *v21;
        (*v21)(v27, v8);
        result = v29(v25, v8);
        if ((v28 & 1) == 0)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v30 = *v41;
        v31 = v43;
        (*v41)(v43, v24, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v30)(v22, v31, v8);
        v22 += v40;
        v24 += v40;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v39 + 1;
      v22 = v38 + v34;
      v23 = v37 - 1;
      v24 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23DE578D8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v130 = a1;
  v149 = sub_23E1FDFEC();
  v9 = OUTLINED_FUNCTION_6_0(v149);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v133 = v12;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_0();
  v142 = v14;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_68_0();
  v148 = v16;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x28223BE20](v17);
  v147 = &v126 - v19;
  v138 = v18;
  v139 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_102:
    v5 = *v130;
    if (!*v130)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v140 = v22;
      v120 = v22 + 16;
      v121 = *(v22 + 2);
      while (v121 >= 2)
      {
        if (!*v139)
        {
          goto LABEL_140;
        }

        v122 = v6;
        v123 = &v140[16 * v121];
        v6 = *v123;
        v22 = &v120[2 * v121];
        v124 = *(v22 + 1);
        sub_23DE581F4(*v139 + *(v138 + 72) * *v123, *v139 + *(v138 + 72) * *v22, *v139 + *(v138 + 72) * v124, v5);
        if (v122)
        {
          break;
        }

        if (v124 < v6)
        {
          goto LABEL_128;
        }

        if (v121 - 2 >= *v120)
        {
          goto LABEL_129;
        }

        *v123 = v6;
        *(v123 + 1) = v124;
        v125 = *v120 - v121;
        if (*v120 < v121)
        {
          goto LABEL_130;
        }

        v121 = *v120 - 1;
        sub_23DF20C0C(v22 + 16, v125, v22);
        *v120 = v121;
        v6 = 0;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v22 = sub_23DF20AE8(v22);
    goto LABEL_104;
  }

  v127 = a4;
  v21 = 0;
  v145 = (v18 + 8);
  v146 = v18 + 16;
  v144 = (v18 + 32);
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    v23 = v21++;
    if (v21 >= v20)
    {
      goto LABEL_32;
    }

    v129 = v6;
    v140 = v22;
    v141 = v20;
    v24 = *v139;
    v25 = *(v18 + 72);
    v5 = v23;
    v26 = *v139 + v25 * v21;
    v27 = *(v18 + 16);
    v28 = v147;
    v137 = v21;
    v29 = v149;
    v27(v147, v26, v149);
    v30 = v148;
    v135 = v27;
    v27(v148, v24 + v25 * v5, v29);
    LODWORD(v136) = sub_23E1FDFCC();
    v31 = *(v138 + 8);
    v31(v30, v29);
    v32 = v29;
    v21 = v137;
    v134 = v31;
    v31(v28, v32);
    v33 = v141;
    v128 = v5;
    v34 = v5 + 2;
    v143 = v25;
    v22 = (v24 + v25 * (v5 + 2));
    while (1)
    {
      v35 = v34;
      v36 = v21 + 1;
      if (v36 >= v33)
      {
        break;
      }

      v37 = v36;
      v38 = v147;
      v39 = v149;
      v40 = v135;
      (v135)(v147, v22, v149);
      v41 = v148;
      v40(v148, v26, v39);
      v42 = sub_23E1FDFCC() & 1;
      v43 = v41;
      v5 = v145;
      v44 = v134;
      (v134)(v43, v39);
      v45 = v38;
      v21 = v37;
      v44(v45, v39);
      v22 += v143;
      v26 += v143;
      v34 = v35 + 1;
      v33 = v141;
      if ((v136 & 1) != v42)
      {
        goto LABEL_9;
      }
    }

    v21 = v33;
LABEL_9:
    v6 = v129;
    if (v136)
    {
      v23 = v128;
      if (v21 < v128)
      {
        goto LABEL_134;
      }

      if (v128 >= v21)
      {
        v18 = v138;
        v22 = v140;
LABEL_32:
        v54 = v149;
        goto LABEL_33;
      }

      v5 = v21;
      v46 = v33 >= v35 ? v35 : v33;
      v47 = v143 * (v46 - 1);
      v48 = v143 * v46;
      v49 = v128 * v143;
      v137 = v21;
      do
      {
        if (v23 != --v5)
        {
          v50 = *v139;
          if (!*v139)
          {
            goto LABEL_141;
          }

          v51 = v149;
          v52 = *v144;
          (*v144)(v133, v50 + v49, v149);
          v53 = v49 < v47 || v50 + v49 >= v50 + v48;
          if (v53)
          {
            OUTLINED_FUNCTION_63_0();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v49 != v47)
          {
            OUTLINED_FUNCTION_63_0();
            swift_arrayInitWithTakeBackToFront();
          }

          v52(v50 + v47, v133, v51);
        }

        ++v23;
        v47 -= v143;
        v48 -= v143;
        v49 += v143;
      }

      while (v23 < v5);
      v6 = v129;
      v21 = v137;
      v18 = v138;
    }

    else
    {
      v18 = v138;
    }

    v22 = v140;
    v54 = v149;
    v23 = v128;
LABEL_33:
    v55 = v139[1];
    if (v21 < v55)
    {
      if (__OFSUB__(v21, v23))
      {
        goto LABEL_133;
      }

      if (v21 - v23 < v127)
      {
        break;
      }
    }

LABEL_49:
    if (v21 < v23)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = *(v22 + 2);
      v115 = OUTLINED_FUNCTION_6_1();
      sub_23DE4CE18(v115, v116, v117, v22);
      v22 = v118;
    }

    v73 = *(v22 + 2);
    v72 = *(v22 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      sub_23DE4CE18(v72 > 1, v73 + 1, 1, v22);
      v22 = v119;
    }

    *(v22 + 2) = v74;
    v75 = v22 + 32;
    v76 = &v22[16 * v73 + 32];
    *v76 = v23;
    *(v76 + 1) = v21;
    v143 = *v130;
    if (!v143)
    {
      goto LABEL_142;
    }

    if (v73)
    {
      v140 = v22;
      while (1)
      {
        v77 = v74 - 1;
        v78 = &v75[16 * v74 - 16];
        v79 = &v22[16 * v74];
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v80 = *(v22 + 4);
          v81 = *(v22 + 5);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_70:
          if (v83)
          {
            goto LABEL_119;
          }

          v95 = *v79;
          v94 = *(v79 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_122;
          }

          v99 = *(v78 + 1);
          v100 = v99 - *v78;
          if (__OFSUB__(v99, *v78))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v97, v100))
          {
            goto LABEL_127;
          }

          if (v97 + v100 >= v82)
          {
            if (v82 < v100)
            {
              v77 = v74 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v74 < 2)
        {
          goto LABEL_121;
        }

        v102 = *v79;
        v101 = *(v79 + 1);
        v90 = __OFSUB__(v101, v102);
        v97 = v101 - v102;
        v98 = v90;
LABEL_85:
        if (v98)
        {
          goto LABEL_124;
        }

        v104 = *v78;
        v103 = *(v78 + 1);
        v90 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v90)
        {
          goto LABEL_126;
        }

        if (v105 < v97)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v77 - 1 >= v74)
        {
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
          goto LABEL_136;
        }

        if (!*v139)
        {
          goto LABEL_139;
        }

        v109 = &v75[16 * v77 - 16];
        v110 = *v109;
        v22 = &v75[16 * v77];
        v111 = *(v22 + 1);
        sub_23DE581F4(*v139 + *(v138 + 72) * *v109, *v139 + *(v138 + 72) * *v22, *v139 + *(v138 + 72) * v111, v143);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v111 < v110)
        {
          goto LABEL_114;
        }

        v5 = 0;
        v6 = v75;
        v112 = *(v140 + 2);
        if (v77 > v112)
        {
          goto LABEL_115;
        }

        *v109 = v110;
        *(v109 + 1) = v111;
        if (v77 >= v112)
        {
          goto LABEL_116;
        }

        v74 = v112 - 1;
        sub_23DF20C0C(v22 + 16, v112 - 1 - v77, v22);
        v22 = v140;
        *(v140 + 2) = v112 - 1;
        v113 = v112 > 2;
        v75 = v6;
        v6 = 0;
        if (!v113)
        {
          goto LABEL_99;
        }
      }

      v84 = &v75[16 * v74];
      v85 = *(v84 - 8);
      v86 = *(v84 - 7);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 6);
      v88 = *(v84 - 5);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = *(v79 + 1);
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = *(v78 + 1);
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_131;
        }

        if (v82 < v108)
        {
          v77 = v74 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v18 = v138;
    v20 = v139[1];
    if (v21 >= v20)
    {
      goto LABEL_102;
    }
  }

  v56 = v23 + v127;
  if (__OFADD__(v23, v127))
  {
    goto LABEL_135;
  }

  if (v56 >= v55)
  {
    v56 = v139[1];
  }

  if (v56 < v23)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v21 == v56)
  {
    goto LABEL_49;
  }

  v128 = v23;
  v129 = v6;
  v57 = *v139;
  v58 = *(v18 + 72);
  v143 = *(v18 + 16);
  v59 = v57 + v58 * (v21 - 1);
  v60 = -v58;
  v61 = (v23 - v21);
  v140 = v22;
  v141 = v57;
  v131 = v58;
  v132 = v56;
  v62 = (v57 + v21 * v58);
LABEL_42:
  v136 = v59;
  v137 = v21;
  v134 = v62;
  v135 = v61;
  v63 = v59;
  while (1)
  {
    v64 = v147;
    v65 = v143;
    (v143)(v147, v62, v54);
    v66 = v148;
    v65(v148, v63, v149);
    v67 = sub_23E1FDFCC();
    v5 = v145;
    v68 = *v145;
    v69 = v66;
    v54 = v149;
    (*v145)(v69, v149);
    v68(v64, v54);
    if ((v67 & 1) == 0)
    {
LABEL_47:
      v21 = v137 + 1;
      v59 = v136 + v131;
      v61 = v135 - 1;
      v62 = &v134[v131];
      if (v137 + 1 == v132)
      {
        v21 = v132;
        v23 = v128;
        v6 = v129;
        v22 = v140;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v141)
    {
      break;
    }

    v70 = *v144;
    v71 = v142;
    (*v144)(v142, v62, v54);
    swift_arrayInitWithTakeFrontToBack();
    v70(v63, v71, v54);
    v63 += v60;
    v62 += v60;
    v53 = __CFADD__(v61++, 1);
    if (v53)
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_23DE581F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = a4;
  v62 = sub_23E1FDFEC();
  v7 = *(*(v62 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v62);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v59 = &v51 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v66 = a1;
  v65 = v63;
  v57 = (v11 + 8);
  v58 = (v11 + 16);
  v19 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v33 = v63;
    sub_23DF3180C(a2, v16 / v14, v63);
    v34 = v33 + v19 * v14;
    v35 = -v14;
    v36 = v34;
    v53 = -v14;
    v54 = a1;
LABEL_36:
    v37 = v36;
    v55 = a2;
    v56 = a2 + v35;
    v38 = a3;
    v51 = v36;
    while (1)
    {
      if (v34 <= v63)
      {
        v66 = a2;
        v64 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v61 = v38 + v35;
      v39 = v34 + v35;
      v40 = v59;
      v41 = *v58;
      v42 = v34;
      v43 = v62;
      (*v58)(v59, v39, v62);
      v44 = v60;
      v41(v60, v56, v43);
      LOBYTE(v41) = sub_23E1FDFCC();
      v45 = *v57;
      (*v57)(v44, v43);
      v45(v40, v43);
      if (v41)
      {
        v34 = v42;
        a3 = v61;
        if (v38 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v52;
          v35 = v53;
          a1 = v54;
        }

        else
        {
          v49 = v52;
          v35 = v53;
          v36 = v52;
          v15 = v38 == v55;
          v50 = v56;
          a2 = v56;
          a1 = v54;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v50;
            v36 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v61;
      if (v38 < v42 || v61 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v46;
        v34 = v39;
        v37 = v39;
        a1 = v54;
        a2 = v55;
        v35 = v53;
      }

      else
      {
        v37 = v39;
        v15 = v42 == v38;
        v38 = v61;
        v34 = v39;
        a1 = v54;
        a2 = v55;
        v35 = v53;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v46;
          v34 = v39;
          v37 = v39;
        }
      }
    }

    v66 = a2;
    v64 = v51;
  }

  else
  {
    v20 = v63;
    sub_23DF3180C(a1, (a2 - a1) / v14, v63);
    v56 = v20 + v18 * v14;
    v64 = v56;
    v61 = a3;
    while (v63 < v56 && a2 < a3)
    {
      v22 = a1;
      v23 = v59;
      v24 = *v58;
      v25 = v62;
      (*v58)(v59, a2, v62);
      v24(v60, v63, v25);
      LOBYTE(v24) = sub_23E1FDFCC();
      v26 = a2;
      v27 = *v57;
      v28 = OUTLINED_FUNCTION_66();
      (v27)(v28);
      v27(v23, v25);
      if (v24)
      {
        a2 = v26 + v14;
        v29 = v22;
        if (v22 < v26 || v22 >= a2)
        {
          OUTLINED_FUNCTION_55_0();
          swift_arrayInitWithTakeFrontToBack();
          a3 = v61;
        }

        else
        {
          a3 = v61;
          if (v22 != v26)
          {
            OUTLINED_FUNCTION_55_0();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v31 = v63 + v14;
        v29 = v22;
        if (v22 < v63 || v22 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
          a3 = v61;
        }

        else
        {
          a2 = v26;
          a3 = v61;
          if (v22 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v31;
        v63 = v31;
      }

      a1 = v29 + v14;
      v66 = a1;
    }
  }

LABEL_58:
  sub_23DF20AFC(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_23DE586E0(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  v3 = sub_23E1FDDEC();

  return v3;
}

void sub_23DE5874C(uint64_t a1, void *a2)
{
  v3 = sub_23E1FDDCC();

  [a2 setBundleIDs_];
}

uint64_t sub_23DE587B8(void *a1)
{
  v2 = [a1 filterQueries];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23E1FDDEC();

  return v3;
}

uint64_t sub_23DE5881C(void *a1)
{
  v1 = [a1 attributionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

void (*sub_23DE58880(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_23DE347B4(a3);
  v7 = OUTLINED_FUNCTION_26_0();
  sub_23DE570B0(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_36_0();
    v10 = MEMORY[0x23EF04DD0](v12);
  }

  *a1 = v10;
  return sub_23DE58904;
}

void (*sub_23DE5890C(void *a1, uint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_23DE347B4(a3);
  v7 = OUTLINED_FUNCTION_26_0();
  sub_23DE570B0(v7, v8, v9);
  if (v6)
  {
    v10 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_36_0();
    v10 = MEMORY[0x23EF04DD0](v12);
  }

  *a1 = v10;
  return sub_23DE59010;
}

uint64_t sub_23DE589E4()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_23DE4D8A8;

  return sub_23DE55580(v5, v3, v6, v7, v8);
}

uint64_t sub_23DE58AA0()
{
  OUTLINED_FUNCTION_33_0();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_23DE47040;

  return sub_23DE55D8C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_23DE58B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CD50, &qword_23E22A9F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE58BD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_21(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_23DE58C34(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  OUTLINED_FUNCTION_8(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = *(v3 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_23DE561D0(a1, a2, a3, v3 + v12, v13);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

{
  return sub_23DE48110(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_16(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_23DE58D04()
{
  OUTLINED_FUNCTION_4();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE47040;
  v6 = OUTLINED_FUNCTION_50();

  return v7(v6);
}

unint64_t sub_23DE58DB4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_23E1FB7BC();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23DE58E20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_23DE574E0(result, 1, sub_23DE4CD10);
  v8 = *v2;
  v9 = *(sub_23E1FDFEC() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_23DF3180C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_23DE58F64()
{
  result = qword_27E32C420;
  if (!qword_27E32C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32BA60, &unk_23E222770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C420);
  }

  return result;
}

uint64_t sub_23DE58FC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_2(uint64_t result)
{
  *(result + 8) = sub_23DE529F8;
  v2 = *(v1 + 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  result = v0[26];
  v2 = v0[24];
  v3 = *(v0[25] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  *(a1 + 8) = sub_23DE501C8;
  v2 = v1[42];
  v3 = v1[40];
  return v1[36];
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t result)
{
  *(result + 8) = sub_23DE55A54;
  v2 = *(v1 + 152);
  v3 = *(v1 + 136);
  return result;
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_17_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v3 = v0[25];
  result = v0[26];
  v4 = v0[24];
  v5 = v0[18];
  v6 = *(v3 + 16);
  v7 = v0[17] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  return result;
}

void OUTLINED_FUNCTION_20_0()
{

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_21_0()
{

  JUMPOUT(0x23EF074C0);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v6 = v0[26];
  v5 = v0[27];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
}

uint64_t OUTLINED_FUNCTION_38_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return sub_23E1FE68C();
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[29];
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_51(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_55_0()
{
  result = v0;
  v3 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_0@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

void OUTLINED_FUNCTION_73_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_slowAlloc();
}

uint64_t sub_23DE59448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a5 >> 1;
  while (1)
  {
    if (v7 == a4)
    {
      return 0;
    }

    result = sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
    if (a4 >= v7)
    {
      break;
    }

    v9 = *(a3 + 8 * a4);
    v10 = sub_23E1FE3BC();

    if (v10)
    {
      return a4;
    }

    ++a4;
  }

  __break(1u);
  return result;
}

void sub_23DE59500()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6(v4);
  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
LABEL_11:
      OUTLINED_FUNCTION_76();
      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EF04DD0](v8, v5);
      goto LABEL_6;
    }

    if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(v5 + 8 * v8 + 32);
LABEL_6:
    v10 = v9;
    sub_23DE38DA8(0, v3, v1);
    v11 = sub_23E1FE3BC();

    if (v11)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void WFGenerativeOutputTraversal.init(workflow:promptVariables:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  *(a3 + 8) = a2;
}

void WFGenerativeOutputTraversal.traverseWorkflow(for:)()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v3 = sub_23E1FD03C();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v59 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_4:
    v22 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v23 = sub_23E1FD02C();
    v24 = sub_23E1FE1BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23DE30000, v23, v24, "Cannot find action in workflow, returning []...", v25, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    v26 = *(v6 + 8);
    v27 = OUTLINED_FUNCTION_6_2();
    v28(v27);
LABEL_7:
    OUTLINED_FUNCTION_76();
    return;
  }

  v59[1] = v0;
  v60 = v14;
  v61 = v6;
  v62 = v3;
  v16 = Strong;
  v17 = [Strong actions];
  sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
  sub_23E1FDDEC();

  sub_23DE59500();
  v19 = v18;
  v21 = v20;

  if (v21)
  {

    v6 = v61;
    goto LABEL_4;
  }

  v59[0] = v16;
  v29 = sub_23DE5C91C(v2, &selRef_UUID);
  if (!v30)
  {
    v40 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v41 = sub_23E1FD02C();
    v42 = sub_23E1FE1AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_23DE30000, v41, v42, "Action does not have output id, returning []...", v43, 2u);
      OUTLINED_FUNCTION_5_2();
    }

    (*(v61 + 8))(v12, v62);
    goto LABEL_7;
  }

  v31 = v29;
  v32 = v30;
  v33 = [v59[0] actions];
  v34 = sub_23E1FDDEC();

  v35 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v36 = sub_23DE4D8B0(v34);
  if (v36 < v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  sub_23DE5C97C(v35, v34);
  sub_23DE5C97C(v37, v34);
  if ((v34 & 0xC000000000000001) == 0 || v35 == v37)
  {
    sub_23E1FB7BC();
  }

  else
  {
    if (v35 >= v37)
    {
      goto LABEL_31;
    }

    sub_23E1FB7BC();
    v38 = v35;
    do
    {
      v39 = v38 + 1;
      sub_23E1FE5DC();
      v38 = v39;
    }

    while (v37 != v39);
  }

  if (v34 >> 62)
  {
LABEL_29:

    v44 = sub_23E1FE6BC();
    v45 = v56;
    v35 = v57;
    v46 = v58;

    goto LABEL_24;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {

    v44 = v34 & 0xFFFFFFFFFFFFFF8;
    v45 = (v34 & 0xFFFFFFFFFFFFFF8) + 32;
    v46 = (2 * v37) | 1;
LABEL_24:
    sub_23DE59B78(v31, v32, v44, v45, v35, v46);
    swift_unknownObjectRelease();

    v47 = *MEMORY[0x277D7A440];
    v48 = v60;
    sub_23E1FCB9C();
    sub_23E1FB7BC();
    v49 = sub_23E1FD02C();
    v50 = sub_23E1FE1AC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v51 = 136315138;
      sub_23E1FBBDC();
      sub_23DE5C9D4();
      OUTLINED_FUNCTION_6_2();
      v53 = sub_23E1FDF5C();
      v55 = sub_23DE56B40(v53, v54, &v63);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_23DE30000, v49, v50, "WFGenerativeOutputTraversal inferred types: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_5_2();
      MEMORY[0x23EF074C0](v51, -1, -1);
    }

    (*(v61 + 8))(v48, v62);
    goto LABEL_7;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_23DE59B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v9 = sub_23E1FD03C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a6 >> 1;
  if ((a6 >> 1) <= a5)
  {
    goto LABEL_38;
  }

  v58 = v14;
  v59 = v12;
  v60 = v11;
  v67 = MEMORY[0x277D84FA0];
  v16 = a5;
  v63 = a4;
  v61 = a5;
  while (1)
  {
    if (v16 < a5 || v16 >= v15)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v18 = *(a4 + 8 * v16);
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (!v19)
    {
      ++v16;
      v27 = v18;
      sub_23DE5A9A0(v64, v65, 0);
      if (v28)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v29 = WFGenerativeOutputTraversal.traverseWorkflow(for:)();
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v46 = sub_23DE5B714(v16, a6 >> 1, v66, a4, a5, a6);
            sub_23DE5AB60(v27, v64, v65, v46, v47, v48, v49);
            v51 = v50;
            a4 = v63;
            swift_unknownObjectRelease();
            v29 = v51;
          }

          else
          {
            sub_23DE5B130();
          }
        }

        v67 = sub_23DE71D40(v29, v67);
      }

      goto LABEL_31;
    }

    v20 = v19;
    v21 = v18;
    v22 = [v20 groupedCloseAction];
    if (!v22)
    {
      goto LABEL_35;
    }

    v23 = v22;
    v24 = sub_23DE59448(v22, v66, a4, a5, a6);
    if (v25)
    {
      break;
    }

    v26 = v24;

    if ([v20 mode])
    {

      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        if (v26 < v16)
        {
          goto LABEL_40;
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_41;
        }

        v31 = v30;
        v32 = sub_23DE5B714(v16, v26 + 1, v66, a4, a5, a6);
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v62 = v21;
        v39 = v38;
        a5 = v61;
        sub_23DE5A008(v31, v64, v65, v32, v34, v36, v39);
        v41 = v40;
        swift_unknownObjectRelease();
      }

      else
      {
        if (v26 < v16)
        {
          goto LABEL_42;
        }

        if (__OFADD__(v26, 1))
        {
          goto LABEL_43;
        }

        v42 = sub_23DE5B714(v16, v26 + 1, v66, a4, a5, a6);
        v41 = sub_23DE5A550(v20, v64, v65, v42, v43, v44, v45);
        swift_unknownObjectRelease();
      }

      v67 = sub_23DE71D40(v41, v67);

      v16 = v26 + 1;
      a4 = v63;
    }

LABEL_31:
    if (v15 <= v16)
    {
      return;
    }
  }

LABEL_35:

  v52 = *MEMORY[0x277D7A440];
  v53 = v58;
  sub_23E1FCB9C();
  v54 = sub_23E1FD02C();
  v55 = sub_23E1FE1BC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_23DE30000, v54, v55, "WFControlFlowAction does not have close action, this should never happen", v56, 2u);
    MEMORY[0x23EF074C0](v56, -1, -1);
  }

  (*(v59 + 8))(v53, v60);
LABEL_38:
  v67 = MEMORY[0x277D84FA0];
}

void sub_23DE5A008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v14 = sub_23E1FBBDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v78 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v79 = &v64 - v19;
  v83 = sub_23DE5C91C(a1, &selRef_itemVariableName);
  v85 = v20;
  if (v20)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
    v22 = *(v15 + 72);
    v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v71 = *(v15 + 80);
    v72 = v22;
    v73 = v21;
    v24 = swift_allocObject();
    v70 = xmmword_23E222340;
    *(v24 + 16) = xmmword_23E222340;
    v25 = *MEMORY[0x277CFC0F0];
    v74 = v23;
    v75 = v15;
    v68 = *(v15 + 104);
    v69 = v15 + 104;
    v68(v24 + v23, v25, v14);
    sub_23DF20D38();
    v76 = v26;
    swift_unknownObjectRetain();
    v27 = sub_23DE5B790(1, a4, a5, a6, a7);
    v31 = sub_23DE5B864(1, v27, v28, v29, v30);
    v84 = v33;
    v35 = v34;
    v77 = v32;
    if (v34 == v32 >> 1)
    {
      v36 = v31;

LABEL_4:
      v37 = v76;
LABEL_27:
      v63 = sub_23DE59B78(a2, a3, v36, v84, v35, v77);
      sub_23DE71D40(v63, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = v14;
      v66 = a2;
      v67 = a3;
      v38 = v32 >> 1;
      v65 = v31;
      swift_unknownObjectRetain();
      v39 = v35;
      v80 = v38;
      v81 = v35;
      while (v39 < v38)
      {
        v40 = *(v84 + 8 * v39);
        v41 = v85;
        sub_23E1FB7BC();
        v87 = v40;
        sub_23DE5A9A0(v83, v41, 1);
        LOBYTE(v40) = v42;

        if (v40)
        {
          v43 = *(v82 + 8);
          if (v43 >> 62)
          {
            if (v43 < 0)
            {
              v51 = *(v82 + 8);
            }

            v44 = sub_23E1FE6AC();
            if (v44)
            {
LABEL_11:
              v45 = 0;
              v86 = v43 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v43 & 0xC000000000000001) != 0)
                {
                  v46 = MEMORY[0x23EF04DD0](v45, v43);
                }

                else
                {
                  if (v45 >= *(v86 + 16))
                  {
                    goto LABEL_29;
                  }

                  v46 = *(v43 + 8 * v45 + 32);
                }

                v47 = v46;
                v48 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  break;
                }

                v49 = [v46 action];
                if (v49)
                {
                  v50 = v49;
                  sub_23E1FE41C();

                  sub_23E1FE40C();
                  LOBYTE(v50) = sub_23E1FE3EC();

                  if (v50)
                  {

                    v52 = [v47 name];
                    v53 = sub_23E1FDC1C();
                    v55 = v54;

                    v56 = v78;
                    *v78 = v53;
                    v56[1] = v55;
                    v57 = v64;
                    v68(v56, *MEMORY[0x277CFC0D8], v64);
                    v58 = v75;
                    v59 = v79;
                    (*(v75 + 32))(v79, v56, v57);
                    v60 = v74;
                    v61 = swift_allocObject();
                    *(v61 + 16) = v70;
                    (*(v58 + 16))(v61 + v60, v59, v57);
                    sub_23DF20D38();
                    v37 = v62;
                    v36 = v65;
                    swift_unknownObjectRelease();

                    (*(v58 + 8))(v59, v57);
                    a3 = v67;
                    a2 = v66;
                    v35 = v81;
                    goto LABEL_27;
                  }
                }

                ++v45;
                if (v48 == v44)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
LABEL_29:
              __break(1u);
              break;
            }
          }

          else
          {
            v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v44)
            {
              goto LABEL_11;
            }
          }
        }

LABEL_20:
        ++v39;

        v38 = v80;
        v35 = v81;
        if (v39 == v80)
        {

          v36 = v65;
          swift_unknownObjectRelease();
          a3 = v67;
          a2 = v66;
          goto LABEL_4;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_23DE5A550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v58 = a4;
  v59 = a5;
  v60 = a7;
  v11 = sub_23E1FD03C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v19 = [a1 groupedCloseAction];
  if (v19)
  {
    v20 = v19;
    v52 = v18;
    v53 = v12;
    v54 = v11;
    v56 = a2;
    v57 = a3;
    sub_23DE5B130();
    v22 = v21;
    v23 = [a1 groupedIntermediaryActions];
    sub_23DE38DA8(0, &qword_27E32C440, 0x277D7C098);
    v24 = sub_23E1FDDEC();

    v61 = v24;
    v25 = v20;
    MEMORY[0x23EF045A0]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_25:
      sub_23E1FDE0C();
    }

    v55 = v25;
    sub_23E1FDE3C();
    v25 = v61;
    v26 = sub_23DE4D8B0(v61);
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    for (i = a6; ; i = v34)
    {
      if (v26 == v27)
      {

        return v22;
      }

      sub_23DE59014(v27, v28 == 0, v25);
      if (v28)
      {
        v30 = MEMORY[0x23EF04DD0](v27, v25);
      }

      else
      {
        v30 = *(v25 + 8 * v27 + 32);
      }

      v31 = v30;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v32 = sub_23DE59448(v30, v58, v59, a6, v60);
      if (v33)
      {
        break;
      }

      v34 = v32;
      v35 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_23;
      }

      if (v34 < v35)
      {
        goto LABEL_24;
      }

      v36 = sub_23DE5B714(v35, v34, v58, v59, a6, v60);
      v40 = sub_23DE59B78(v56, v57, v36, v37, v38, v39);
      swift_unknownObjectRelease();
      v22 = sub_23DE71D40(v40, v22);

      ++v27;
    }

    v45 = *MEMORY[0x277D7A440];
    v46 = v52;
    sub_23E1FCB9C();
    v47 = sub_23E1FD02C();
    v48 = sub_23E1FE1BC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_23DE30000, v47, v48, "Cannot find action in the workflow, erroring out.", v49, 2u);
      MEMORY[0x23EF074C0](v49, -1, -1);
    }

    (*(v53 + 8))(v46, v54);
  }

  else
  {
    v41 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v42 = sub_23E1FD02C();
    v43 = sub_23E1FE1BC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_23DE30000, v42, v43, "Control flow action in a incorrect state, exiting...", v44, 2u);
      MEMORY[0x23EF074C0](v44, -1, -1);
    }

    (*(v12 + 8))(v16, v11);
  }

  return MEMORY[0x277D84FA0];
}

void sub_23DE5A9A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = [v3 parameters];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  OUTLINED_FUNCTION_20();
  v7 = sub_23E1FDDEC();

  v8 = sub_23DE4D8B0(v7);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF04DD0](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 key];
      if (!v14)
      {
        sub_23E1FDC1C();
        v14 = sub_23E1FDBDC();
      }

      v15 = [v4 parameterStateForKey_];

      if (v15)
      {
        swift_getObjectType();
        sub_23DE5B920(a1, a2, a3 & 1);
        v17 = v16;
        swift_unknownObjectRelease();

        if (v17)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_23DE5AB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v66 = a5;
  v10 = sub_23E1FD03C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23E1FBBDC();
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v60 = &v58 - v19;
  v65 = sub_23DE5C91C(a1, &selRef_UUID);
  v67 = v20;
  if (v20)
  {
    v21 = a7 >> 1;
    if (a7 >> 1 == a6)
    {
LABEL_3:

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
      v22 = v61;
      v23 = *(v61 + 72);
      v24 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23E222340;
      (*(v22 + 104))(v25 + v24, *MEMORY[0x277CFC0F0], v62);

      sub_23DF20D38();
    }

    else
    {
      v64 = a7 >> 1;
      while (a6 < v21)
      {
        v68 = a6;
        v34 = *(v66 + 8 * a6);
        v35 = v67;
        sub_23E1FB7BC();
        sub_23DE5A9A0(v65, v35, 0);
        v37 = v36;

        if (v37)
        {
          v38 = *(v63 + 8);
          if (v38 >> 62)
          {
            if (v38 < 0)
            {
              v46 = *(v63 + 8);
            }

            v39 = sub_23E1FE6AC();
            if (v39)
            {
LABEL_14:
              v40 = 0;
              v69 = v38 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v38 & 0xC000000000000001) != 0)
                {
                  v41 = MEMORY[0x23EF04DD0](v40, v38);
                }

                else
                {
                  if (v40 >= *(v69 + 16))
                  {
                    goto LABEL_31;
                  }

                  v41 = *(v38 + 8 * v40 + 32);
                }

                v42 = v41;
                v43 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  break;
                }

                v44 = [v41 action];
                if (v44)
                {
                  v45 = v44;
                  sub_23E1FE41C();

                  sub_23E1FE40C();
                  LOBYTE(v45) = sub_23E1FE3EC();

                  if (v45)
                  {

                    v47 = [v42 name];
                    v48 = sub_23E1FDC1C();
                    v50 = v49;

                    v51 = v59;
                    *v59 = v48;
                    v51[1] = v50;
                    v53 = v61;
                    v52 = v62;
                    (*(v61 + 104))(v51, *MEMORY[0x277CFC0D8], v62);
                    v54 = v60;
                    (*(v53 + 32))(v60, v51, v52);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
                    v55 = *(v53 + 72);
                    v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
                    v57 = swift_allocObject();
                    *(v57 + 16) = xmmword_23E222340;
                    (*(v53 + 16))(v57 + v56, v54, v52);
                    sub_23DF20D38();

                    (*(v53 + 8))(v54, v52);
                    return;
                  }
                }

                ++v40;
                if (v43 == v39)
                {
                  goto LABEL_23;
                }
              }

              __break(1u);
LABEL_31:
              __break(1u);
              break;
            }
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v39)
            {
              goto LABEL_14;
            }
          }
        }

LABEL_23:
        a6 = v68 + 1;

        v21 = v64;
        if (a6 == v64)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v26 = *MEMORY[0x277D7A440];
    sub_23E1FCB9C();
    v27 = sub_23E1FD02C();
    v28 = sub_23E1FE1AC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23DE30000, v27, v28, "WFGenerativeOutputTraversal: Cannot get output uuid from WFChooseFromListAction", v29, 2u);
      MEMORY[0x23EF074C0](v29, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32DB60, &qword_23E224230);
    v30 = v61;
    v31 = *(v61 + 72);
    v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_23E222340;
    (*(v30 + 104))(v33 + v32, *MEMORY[0x277CFC0F0], v62);
    sub_23DF20D38();
  }
}

void sub_23DE5B130()
{
  OUTLINED_FUNCTION_90();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C448, &qword_23E224238);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_59();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = sub_23E1FBBDC();
  v16 = OUTLINED_FUNCTION_6_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_59();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v75 = &v62 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v74 = &v62 - v28;
  MEMORY[0x28223BE20](v27);
  v70 = &v62 - v29;
  v78 = v2;
  v76 = v6;
  v77 = v4;
  v30 = OUTLINED_FUNCTION_6_2();
  sub_23DE5A9A0(v30, v31, v32);
  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

  v80 = MEMORY[0x277D84FA0];
  v67 = v0;
  v34 = [v0 parameters];
  sub_23DE38DA8(0, &unk_27E32CD10, 0x277D7C6D8);
  OUTLINED_FUNCTION_20();
  v35 = sub_23E1FDDEC();

  v79 = sub_23DE4D8B0(v35);
  if (!v79)
  {
LABEL_28:

LABEL_29:
    OUTLINED_FUNCTION_76();
    return;
  }

  if (v79 >= 1)
  {
    v64 = v23;
    v65 = v11;
    v73 = v14;
    v36 = 0;
    v37 = v35 & 0xC000000000000001;
    v68 = (v18 + 16);
    v69 = (v18 + 32);
    v71 = (v18 + 8);
    HIDWORD(v62) = *MEMORY[0x277CFC0F8];
    LODWORD(v62) = *MEMORY[0x277CFC0E0];
    v38 = v67;
    v72 = v35 & 0xC000000000000001;
    v63 = (v18 + 104);
    v66 = v35;
    while (1)
    {
      if (v37)
      {
        v39 = MEMORY[0x23EF04DD0](v36, v35);
      }

      else
      {
        v39 = *(v35 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = [v39 key];
      if (!v41)
      {
        sub_23E1FDC1C();
        v41 = sub_23E1FDBDC();
      }

      v42 = [v38 parameterStateForKey_];

      if (v42)
      {
        swift_getObjectType();
        sub_23DE5B920(v76, v77, v78 & 1);
        if (v43)
        {
          v44 = v73;
          sub_23DE5B934(v73);
          if (__swift_getEnumTagSinglePayload(v44, 1, v15) == 1)
          {
            sub_23DE5CB68(v44, &qword_27E32C448, &qword_23E224238);
            ObjectType = swift_getObjectType();
            if (ObjectType == sub_23DE38DA8(0, &qword_27E32C450, 0x277D7C950) && (objc_opt_self(), (v56 = swift_dynamicCastObjCClass()) != 0))
            {
              v57 = [v56 processesIntoContentItems];
              v58 = v75;
              if (v57)
              {
                v59 = v75;
                v60 = v62;
              }

              else
              {
                v59 = v75;
                v60 = HIDWORD(v62);
              }

              (*v63)(v59, v60, v15);
              v61 = OUTLINED_FUNCTION_2_3();
              sub_23DF0342C(v61, v58);
              swift_unknownObjectRelease();

              (*v71)(v44, v15);
            }

            else
            {
              v46 = v65;
              sub_23DE5BA44();
              if (__swift_getEnumTagSinglePayload(v46, 1, v15) == 1)
              {
                swift_unknownObjectRelease();

                sub_23DE5CB68(v46, &qword_27E32C448, &qword_23E224238);
              }

              else
              {
                v52 = v64;
                (*v69)(v64, v46, v15);
                v53 = v75;
                (*v68)(v75, v52, v15);
                v54 = OUTLINED_FUNCTION_2_3();
                sub_23DF0342C(v54, v53);

                swift_unknownObjectRelease();
                v55 = *v71;
                (*v71)(v44, v15);
                v55(v52, v15);
              }

              v38 = v67;
              v37 = v72;
            }
          }

          else
          {
            v47 = v70;
            (*v69)(v70, v44, v15);
            v48 = v75;
            (*v68)(v75, v47, v15);
            v49 = OUTLINED_FUNCTION_2_3();
            sub_23DF0342C(v49, v48);

            swift_unknownObjectRelease();
            v50 = *v71;
            (*v71)(v44, v15);
            v51 = v47;
            v35 = v66;
            v37 = v72;
            v50(v51, v15);
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

LABEL_18:
      if (v79 == ++v36)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
}

uint64_t sub_23DE5B714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_23DE5B790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = a5 >> 1;
  v8 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = __OFSUB__(v8, result);
  v10 = v8 - result;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_23DE5CAB8(a4, v10 & ~(v10 >> 63), a5 >> 1);
  if (v13)
  {
    v14 = v7;
  }

  else
  {
    v14 = result;
  }

  if (v14 >= a4)
  {
    v15 = sub_23DE5B714(a4, v14, a2, a3, a4, a5);
    swift_unknownObjectRelease();
    return v15;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_23DE5B864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a5 >> 1;
    result = sub_23DE5CAB8(a4, result, a5 >> 1);
    if (v10)
    {
      result = v9;
    }

    if (v9 >= result)
    {
      v11 = sub_23DE5B714(result, v9, a2, a3, a4, a5);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_23DE5B920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_23DE5C458(a1, a2);
  }

  else
  {
    sub_23DE5C134(a1, a2);
  }
}

void sub_23DE5B934(uint64_t a1@<X8>)
{
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v2 = swift_dynamicCastObjCClass();
  if (v2 || (objc_opt_self(), OUTLINED_FUNCTION_20(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v3 = v2;
    swift_unknownObjectRetain();
    v5 = [v3 variable];
    sub_23DE5C664(v5, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = sub_23E1FBBDC();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
  }
}

void sub_23DE5BA44()
{
  OUTLINED_FUNCTION_90();
  v77 = v0;
  v75 = v1;
  v76 = v2;
  v4 = v3;
  v5 = sub_23E1FD03C();
  v6 = OUTLINED_FUNCTION_6_0(v5);
  v69 = v7;
  v70 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v71 = v11 - v10;
  v12 = sub_23E1FC92C();
  v13 = OUTLINED_FUNCTION_6_0(v12);
  v78 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C458, &qword_23E224240);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v67 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C460, &qword_23E224248);
  v25 = OUTLINED_FUNCTION_6_0(v24);
  v73 = v26;
  v74 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  v72 = &v67 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C448, &qword_23E224238);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v67 - v32;
  v34 = sub_23E1FBBDC();
  v35 = OUTLINED_FUNCTION_6_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  v42 = (v41 - v40);
  sub_23DE5B934(v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
  {
    v48 = *(v37 + 32);
    v48(v42, v33, v34);
    v48(v4, v42, v34);
    v47 = v4;
LABEL_15:
    v50 = 0;
    goto LABEL_16;
  }

  v43 = v4;
  sub_23DE5CB68(v33, &qword_27E32C448, &qword_23E224238);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v44 = MEMORY[0x277CFC0D0];
    goto LABEL_4;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v49 = MEMORY[0x277CFC108];
LABEL_14:
    (*(v37 + 104))(v4, *v49, v34);
    v47 = v4;
    goto LABEL_15;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v49 = MEMORY[0x277CFC0F0];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v49 = MEMORY[0x277CFC100];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v49 = MEMORY[0x277CFC0E8];
    goto LABEL_14;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()) || (objc_opt_self(), OUTLINED_FUNCTION_20(), swift_dynamicCastObjCClass()))
  {
    v49 = MEMORY[0x277CFC0F8];
    goto LABEL_14;
  }

  sub_23DE5CB04();
  v51 = v74;
  sub_23E1FE20C();
  if (__swift_getEnumTagSinglePayload(v23, 1, v51) == 1)
  {
    sub_23DE5CB68(v23, &qword_27E32C458, &qword_23E224240);
    v44 = MEMORY[0x277CFC0E0];
LABEL_4:
    v45 = *v44;
    v46 = *(v37 + 104);
LABEL_5:
    v46(v43, v45, v34);
    v47 = v43;
    goto LABEL_15;
  }

  v52 = *(v73 + 32);
  v53 = OUTLINED_FUNCTION_6_2();
  v54(v53);
  v55 = sub_23E1FC86C();
  v56 = 0;
  v57 = *(v55 + 16);
  v67 = v78 + 16;
  v68 = v57;
  v58 = (v78 + 8);
  while (v68 != v56)
  {
    if (v56 >= *(v55 + 16))
    {
      __break(1u);
      return;
    }

    (*(v78 + 16))(v19, v55 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v56, v12);
    sub_23E1FC88C();
    swift_getObjectType();
    sub_23DE5B920(v75, v76, v77 & 1);
    v60 = v59;
    swift_unknownObjectRelease();
    if (v60)
    {

      v65 = sub_23E1FC91C();
      (*v58)(v19, v12);
      (*(v73 + 8))(v72, v74);
      v46 = *(v37 + 104);
      v66 = MEMORY[0x277CFC108];
      if ((v65 & 1) == 0)
      {
        v66 = MEMORY[0x277CFC0F8];
      }

      v45 = *v66;
      goto LABEL_5;
    }

    ++v56;
    (*v58)(v19, v12);
  }

  v61 = *MEMORY[0x277D7A440];
  sub_23E1FCB9C();
  v62 = sub_23E1FD02C();
  v63 = sub_23E1FE1BC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_23DE30000, v62, v63, "Cannot find a row that uses the action output, this should never happen.", v64, 2u);
    MEMORY[0x23EF074C0](v64, -1, -1);
  }

  (*(v69 + 8))(v71, v70);
  (*(v73 + 8))(v72, v74);
  v47 = v43;
  v50 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v47, v50, 1, v34);
  OUTLINED_FUNCTION_76();
}

void sub_23DE5C134(uint64_t a1, uint64_t a2)
{
  v5 = [v2 containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  v6 = sub_23E1FDDEC();

  v34 = sub_23DE4D8B0(v6);
  if (!v34)
  {
LABEL_27:

    return;
  }

  v7 = 0;
  v35 = v6 & 0xC000000000000001;
  v30 = v6 + 32;
  v31 = v6 & 0xFFFFFFFFFFFFFF8;
  v28 = a1;
  v29 = a2;
  v32 = v6;
  while (1)
  {
    if (v35)
    {
      v8 = MEMORY[0x23EF04DD0](v7, v6);
    }

    else
    {
      if (v7 >= *(v31 + 16))
      {
        goto LABEL_33;
      }

      v8 = *(v30 + 8 * v7);
    }

    v9 = v8;
    if (__OFADD__(v7++, 1))
    {
      break;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = [v11 outputUUID];
      v14 = sub_23E1FDC1C();
      v16 = v15;

      if (v14 == a1 && v16 == a2)
      {

LABEL_16:
        v33 = v9;
        v19 = [v12 aggrandizements];
        sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
        v20 = sub_23E1FDDEC();

        v21 = sub_23DE4D8B0(v20);
        for (i = 0; v21 != i; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x23EF04DD0](i, v20);
          }

          else
          {
            if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v23 = *(v20 + 8 * i + 32);
          }

          v24 = v23;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            return;
          }
        }

        v25 = [v12 aggrandizements];

        v26 = sub_23E1FDDEC();
        v27 = sub_23DE4D8B0(v26);

        a1 = v28;
        a2 = v29;
        v6 = v32;
        if (!v27)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v18 = sub_23E1FE75C();

      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_26:
    if (v7 == v34)
    {
      goto LABEL_27;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_23DE5C458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 containedVariables];
  sub_23DE38DA8(0, &qword_27E32CC50, 0x277D7C9F8);
  v7 = sub_23E1FDDEC();

  v8 = sub_23DE4D8B0(v7);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      goto LABEL_21;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x23EF04DD0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v10 name];
    v13 = sub_23E1FDC1C();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {
    }

    else
    {
      v17 = sub_23E1FE75C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v18 = [v11 aggrandizements];
    sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
    v19 = sub_23E1FDDEC();

    if (v19 >> 62)
    {
      v20 = sub_23E1FE6AC();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v20)
    {

LABEL_21:

      return;
    }

LABEL_17:
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23DE5C664(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [a1 aggrandizements];
    sub_23DE38DA8(0, &qword_27E32C470, 0x277D7CA00);
    v4 = sub_23E1FDDEC();

    v5 = sub_23DE4D8B0(v4);
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_12;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x23EF04DD0](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        break;
      }
    }

    v13 = v9;

    [v13 coercionItemClass];

    swift_getObjCClassMetadata();
    sub_23DE38DA8(0, &qword_27E32CD40, 0x277CFC388);
    if (swift_dynamicCastMetatype())
    {
      v14 = MEMORY[0x277CFC0D0];
    }

    else
    {
      sub_23DE38DA8(0, &unk_280DAE6E0, 0x277CFC270);
      if (swift_dynamicCastMetatype())
      {
        v14 = MEMORY[0x277CFC108];
      }

      else
      {
        sub_23DE38DA8(0, &unk_280DAE700, 0x277CFC530);
        if (swift_dynamicCastMetatype())
        {
          v14 = MEMORY[0x277CFC0F8];
        }

        else
        {
          sub_23DE38DA8(0, &qword_280DAE710, 0x277CFC480);
          if (swift_dynamicCastMetatype())
          {
            v14 = MEMORY[0x277CFC100];
          }

          else
          {
            sub_23DE38DA8(0, &unk_280DAE720, 0x277CFC368);
            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_12;
            }

            v14 = MEMORY[0x277CFC0E8];
          }
        }
      }
    }

    v15 = *v14;
    v16 = sub_23E1FBBDC();
    (*(*(v16 - 8) + 104))(a2, v15, v16);
    v11 = a2;
    v12 = 0;
    v10 = v16;
  }

  else
  {
LABEL_12:
    v10 = sub_23E1FBBDC();
    v11 = a2;
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v10);
}

uint64_t sub_23DE5C91C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_23E1FDC1C();

  return v4;
}

uint64_t sub_23DE5C97C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_23E1FE6AC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_23DE5C9D4()
{
  result = qword_27E32CD30;
  if (!qword_27E32CD30)
  {
    sub_23E1FBBDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32CD30);
  }

  return result;
}

uint64_t sub_23DE5CA2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23DE5CA6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23DE5CAB8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_23DE5CB04()
{
  result = qword_27E32C468;
  if (!qword_27E32C468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E32C460, &qword_23E224248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C468);
  }

  return result;
}

uint64_t sub_23DE5CB68(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void OUTLINED_FUNCTION_5_2()
{

  JUMPOUT(0x23EF074C0);
}

id sub_23DE5CC34()
{
  v104 = sub_23E1FD89C();
  v101 = *(v104 - 8);
  v0 = *(v101 + 64);
  MEMORY[0x28223BE20](v104);
  v103 = &v95 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222360;
  v11 = *MEMORY[0x277D7CB18];
  v12 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x800000023E24EA50;
  v13 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = v11;
  v15 = v13;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v107 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v106 = v20;
  *(inited + 80) = v19;
  v21 = *MEMORY[0x277D7CB10];
  *(inited + 104) = v20;
  *(inited + 112) = v21;
  v22 = v21;
  v23 = sub_23E1FDABC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(inited + 120) = v23;
  v25 = *MEMORY[0x277D7CC18];
  *(inited + 144) = v24;
  *(inited + 152) = v25;
  v100 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_23E222340;
  v27 = *MEMORY[0x277D7CC30];
  *(v26 + 32) = *MEMORY[0x277D7CC30];
  v28 = v25;
  v29 = v27;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v30 = [v107 bundleURL];
  v96 = v9;
  v31 = v30;
  v105 = v5;
  sub_23E1FBF9C();

  v32 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v26 + 64) = v106;
  *(v26 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_23DE5D888(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v34 = sub_23E1FDABC();
  v35 = v100;
  *(inited + 160) = sub_23DF3BE54(v34);
  v36 = *MEMORY[0x277D7CB28];
  *(inited + 184) = v35;
  *(inited + 192) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 200) = &unk_2850234C8;
  v38 = *MEMORY[0x277D7CB48];
  *(inited + 224) = v37;
  *(inited + 232) = v38;
  *(inited + 240) = 0x6E65657247;
  *(inited + 248) = 0xE500000000000000;
  v39 = *MEMORY[0x277D7CB60];
  v40 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = v39;
  *(inited + 280) = 0x6C616E6F73726570;
  *(inited + 288) = 0xEF746F7073746F68;
  v41 = *MEMORY[0x277D7CCC0];
  *(inited + 304) = v40;
  *(inited + 312) = v41;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v43 = swift_initStackObject();
  v95 = xmmword_23E222350;
  *(v43 + 16) = xmmword_23E222350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x277D839B0];
  *(v43 + 48) = 0;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v42;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  *(v43 + 216) = v37;
  *(v43 + 184) = 0xE500000000000000;
  *(v43 + 192) = &unk_285023508;
  v45 = v36;
  v46 = v38;
  v47 = v39;
  v48 = v41;
  v49 = sub_23E1FDABC();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  *(inited + 320) = v49;
  v51 = *MEMORY[0x277D7CB90];
  *(inited + 344) = v50;
  *(inited + 352) = v51;
  v52 = v51;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v53 = v107;
  v54 = [v107 bundleURL];
  sub_23E1FBF9C();

  v55 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 360) = v56;
  v57 = *MEMORY[0x277D7CBA0];
  *(inited + 384) = v106;
  *(inited + 392) = v57;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v98 = swift_allocObject();
  v99 = xmmword_23E2235B0;
  *(v98 + 16) = xmmword_23E2235B0;
  v97 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v58 = swift_initStackObject();
  *(v58 + 16) = v95;
  v59 = *MEMORY[0x277D7CDF8];
  *(v58 + 32) = *MEMORY[0x277D7CDF8];
  *(v58 + 40) = 0xD000000000000014;
  *(v58 + 48) = 0x800000023E24EAF0;
  v60 = *MEMORY[0x277D7CE70];
  v61 = MEMORY[0x277D837D0];
  *(v58 + 64) = MEMORY[0x277D837D0];
  *(v58 + 72) = v60;
  *(v58 + 80) = 0x7475706E494657;
  *(v58 + 88) = 0xE700000000000000;
  v62 = *MEMORY[0x277D7CE80];
  *(v58 + 104) = v61;
  *(v58 + 112) = v62;
  v63 = v57;
  v64 = v59;
  v65 = v60;
  v66 = v62;
  *&v95 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v67 = v53;
  v68 = [v53 bundleURL];
  sub_23E1FBF9C();

  v69 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v58 + 120) = v70;
  v71 = *MEMORY[0x277D7CEA8];
  v72 = v106;
  *(v58 + 144) = v106;
  *(v58 + 152) = v71;
  v73 = v71;
  *&v95 = sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v74 = [v67 bundleURL];
  sub_23E1FBF9C();

  v75 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v58 + 184) = v72;
  *(v58 + 160) = v76;
  _s3__C3KeyVMa_0(0);
  sub_23DE5D888(&qword_280DAE748, _s3__C3KeyVMa_0);
  v77 = sub_23E1FDABC();
  v78 = sub_23DF3BE9C(v77);
  v79 = v98;
  *(v98 + 32) = v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1B0, &qword_23E224250);
  *(inited + 400) = v79;
  v81 = *MEMORY[0x277D7CB98];
  *(inited + 424) = v80;
  *(inited + 432) = v81;
  v82 = v81;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v83 = [v107 bundleURL];
  sub_23E1FBF9C();

  v84 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v86 = v85;
  v87 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v88 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 440) = v87;
  v89 = *MEMORY[0x277D7CF20];
  *(inited + 464) = v88;
  *(inited + 472) = v89;
  v90 = swift_allocObject();
  *(v90 + 16) = v99;
  (*(v101 + 104))(v103, *MEMORY[0x277D732F0], v104);
  v91 = objc_allocWithZone(sub_23E1FC85C());
  v92 = v89;
  *(v90 + 32) = sub_23E1FC84C();
  *(inited + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C480, &qword_23E224258);
  *(inited + 480) = v90;
  type metadata accessor for Key(0);
  sub_23DE5D888(&qword_280DAEDE0, type metadata accessor for Key);
  v93 = sub_23E1FDABC();
  return sub_23DF3BF9C(v93);
}

uint64_t sub_23DE5D888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GetCurrentWeatherConditionsAction.provider.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE61230(v1 + v3, &v7, &qword_27E32C498, &qword_23E224260);
  if (v8)
  {
    return sub_23DE36C8C(&v7, a1);
  }

  sub_23DE5CB68(&v7, &qword_27E32C498, &qword_23E224260);
  v5 = type metadata accessor for WFCurrentWeatherService();
  v6 = swift_allocObject();
  sub_23E1FC52C();
  *(v6 + 16) = sub_23E1FC4FC();
  a1[3] = v5;
  a1[4] = &off_285026900;
  *a1 = v6;
  sub_23DE5DA0C(a1, &v7);
  swift_beginAccess();
  sub_23DE5DA70(&v7, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_23DE5DA0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DE5DA70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C498, &qword_23E224260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE5DAE0(uint64_t a1, uint64_t *a2)
{
  sub_23DE5DA0C(a1, v5);
  v3 = *a2;
  return GetCurrentWeatherConditionsAction.provider.setter(v5);
}

uint64_t GetCurrentWeatherConditionsAction.provider.setter(__int128 *a1)
{
  sub_23DE36C8C(a1, v4);
  v2 = OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider;
  swift_beginAccess();
  sub_23DE5DA70(v4, v1 + v2);
  return swift_endAccess();
}

void (*GetCurrentWeatherConditionsAction.provider.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  GetCurrentWeatherConditionsAction.provider.getter(v3);
  return sub_23DE5DBDC;
}

void sub_23DE5DBDC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_23DE5DA0C(*a1, v2 + 40);
    GetCurrentWeatherConditionsAction.provider.setter((v2 + 40));
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    GetCurrentWeatherConditionsAction.provider.setter(*a1);
  }

  free(v2);
}

uint64_t GetCurrentWeatherConditionsAction.run(withInput:location:locationDisclosureLevel:)()
{
  OUTLINED_FUNCTION_23();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  sub_23E1FDECC();
  v1[10] = sub_23E1FDEBC();
  v5 = sub_23E1FDE6C();
  v1[11] = v5;
  v1[12] = v4;

  return MEMORY[0x2822009F8](sub_23DE5DCDC, v5, v4);
}

uint64_t sub_23DE5DCDC()
{
  v1 = v0[9];
  GetCurrentWeatherConditionsAction.provider.getter(v0 + 2);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_23DE5DE14;
  v7 = v0[7];

  return v9(v7, v2, v3);
}

uint64_t sub_23DE5DE14()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v5 = v2[13];
  v6 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v7 = v6;
  *(v9 + 112) = v8;
  *(v9 + 120) = v0;

  v10 = v2[12];
  v11 = v2[11];
  if (v0)
  {
    v12 = sub_23DE5E0CC;
  }

  else
  {
    v12 = sub_23DE5DF50;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

id sub_23DE5DF50()
{
  v14 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
  v13[3] = sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
  v13[0] = v1;
  sub_23DE38DA8(0, &unk_27E32C4A0, 0x277CFC238);
  v3 = *MEMORY[0x277D7A328];
  sub_23E1FDC1C();
  v4 = v1;
  v5 = sub_23DE5E134();
  v6 = sub_23DE5E198(v13, v5, v2);
  if (v6)
  {
    v7 = v6;
    result = [*(v0 + 72) output];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = *(v0 + 80);

    [v9 addItem_];
  }

  else
  {
    v11 = *(v0 + 80);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23DE5E0CC()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

id sub_23DE5E134()
{
  v0 = sub_23E1FDBDC();

  v1 = [swift_getObjCClassFromMetadata() locationWithSystemAppBundleIdentifier_];

  return v1;
}

id sub_23DE5E198(uint64_t *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v6 = sub_23E1FE73C();
  v7 = [swift_getObjCClassFromMetadata() itemWithObject:v6 origin:a2 disclosureLevel:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

id GetCurrentWeatherConditionsAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id GetCurrentWeatherConditionsAction.init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider);
  v8 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v9 = sub_23E1FDA9C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithIdentifier_definition_serializedParameters_, v8, a3, v9);

  if (v10)
  {
  }

  return v10;
}

id GetCurrentWeatherConditionsAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetCurrentWeatherConditionsAction.init()()
{
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_4(OBJC_IVAR___WFGetCurrentWeatherConditionsAction____lazy_storage___provider);
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init, v1);
}

id GetCurrentWeatherConditionsAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of WFCurrentWeatherProvider.fetchWeather(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23DE5E6BC;

  return v11(a1, a2, a3);
}

uint64_t sub_23DE5E6BC()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_0_3();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_23DE5E808(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B0, &qword_23E2246D0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4B8, &unk_23E224320);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4C0, &unk_23E2246E0);
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C690, &unk_23E224330);
  v2[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v2[15] = v14;
  v15 = *(v14 - 8);
  v2[16] = v15;
  v16 = *(v15 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v17 = sub_23E1FC4AC();
  v2[19] = v17;
  v18 = *(v17 - 8);
  v2[20] = v18;
  v19 = *(v18 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE5EABC, 0, 0);
}

uint64_t sub_23DE5EABC()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[9];
  v6 = v0[6];
  v7 = *(v0[3] + 16);
  sub_23E1FC4EC();
  sub_23E1FC4CC();
  sub_23E1FC4BC();
  v8 = *(MEMORY[0x277CE3200] + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_23DE5EBBC;
  v10 = v0[22];
  v11 = v0[18];
  v12 = v0[19];
  v13 = v0[14];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[6];
  v17 = v0[2];
  v20 = v0[15];
  v21 = v0[13];

  return MEMORY[0x282135620](v10, v11, v13, v17, v14, v15, v16, v12);
}

uint64_t sub_23DE5EBBC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v4 = v3;
  v6 = v5[23];
  v20 = v5[12];
  v7 = v5[11];
  v19 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = v5[7];
  v11 = v5[6];
  v12 = v5[5];
  v13 = v5[4];
  v14 = *v1;
  OUTLINED_FUNCTION_0_3();
  *v15 = v14;
  *(v16 + 192) = v0;

  (*(v12 + 8))(v11, v13);
  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v20, v19);
  if (v0)
  {
    v17 = sub_23DE5EFA4;
  }

  else
  {
    v17 = sub_23DE5EDEC;
  }

  return MEMORY[0x2822009F8](v17, 0, 0);
}

uint64_t sub_23DE5EDEC()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v8 = v0[15];
  v7 = v0[16];
  v12 = v0[14];
  v14 = v0[12];
  v15 = v0[9];
  v16 = v0[6];
  sub_23DE38DA8(0, &unk_27E32C630, off_278C01900);
  (*(v4 + 16))(v1, v2, v3);
  (*(v7 + 16))(v5, v6, v8);
  v9 = sub_23DE5F06C(v1, v5);
  v13 = sub_23DEBBBE0(v12);

  sub_23DE5CB68(v12, &qword_27E32C690, &unk_23E224330);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v3);

  v10 = v0[1];

  return v10(v13);
}

uint64_t sub_23DE5EFA4()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];
  v10 = v0[24];

  return v9();
}

void *sub_23DE5F06C(uint64_t a1, uint64_t a2)
{
  v271 = a2;
  v258 = sub_23E1FC6AC();
  v257 = *(v258 - 8);
  v3 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v255 = v218 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v256 = v218 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v254 = v218 - v9;
  v253 = sub_23E1FC66C();
  v252 = *(v253 - 8);
  v10 = *(v252 + 64);
  MEMORY[0x28223BE20](v253);
  v251 = v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E0, &unk_23E224690);
  v249 = *(v250 - 8);
  v12 = *(v249 + 64);
  MEMORY[0x28223BE20](v250);
  v248 = v218 - v13;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C4E8, &qword_23E224350);
  v244 = *(v246 - 8);
  v14 = *(v244 + 64);
  v15 = MEMORY[0x28223BE20](v246);
  v243 = v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v238 = v218 - v17;
  v247 = sub_23E1FC64C();
  v245 = *(v247 - 8);
  v18 = *(v245 + 64);
  v19 = MEMORY[0x28223BE20](v247);
  v236 = v218 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v241 = v218 - v21;
  v232 = sub_23E1FC5EC();
  v231 = *(v232 - 8);
  v22 = *(v231 + 64);
  v23 = MEMORY[0x28223BE20](v232);
  v230 = v218 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v228 = v218 - v25;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4F0, &qword_23E224358);
  v226 = *(v227 - 8);
  v26 = *(v226 + 64);
  v27 = MEMORY[0x28223BE20](v227);
  v224 = v218 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v222 = v218 - v29;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C650, &qword_23E224360);
  v269 = *(v263 - 8);
  v30 = *(v269 + 8);
  v31 = MEMORY[0x28223BE20](v263);
  v262 = v218 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v261 = v218 - v33;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C500, &qword_23E224368);
  v267 = *(v273 - 1);
  v34 = *(v267 + 64);
  v35 = MEMORY[0x28223BE20](v273);
  v268 = v218 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v260 = v218 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF70, &qword_23E224370);
  v39 = *(v38 - 1);
  v276 = v38;
  v277 = v39;
  v40 = v39[8];
  v41 = MEMORY[0x28223BE20](v38);
  v223 = v218 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v220 = v218 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = v218 - v45;
  v275 = sub_23E1FC54C();
  v47 = *(v275 - 1);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v275);
  v50 = v218 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_23E1FC08C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v55 = v218 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C510, &qword_23E224378);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v237 = v218 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v234 = v218 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v221 = v218 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v229 = v218 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v225 = v218 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v233 = v218 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v72 = v218 - v71;
  MEMORY[0x28223BE20](v70);
  v279 = a1;
  v270 = v218 - v73;
  sub_23DE44FD4(sub_23DE61210, v278, v218 - v73);
  sub_23E1FC43C();
  v242 = sub_23E1FC02C();
  v74 = *(v52 + 8);
  v259 = v51;
  v75 = v260;
  v218[1] = v52 + 8;
  v218[0] = v74;
  v74(v55, v51);
  sub_23E1FC48C();
  v240 = sub_23E1FC53C();
  v76 = v50;
  v77 = a1;
  v78 = v267;
  (*(v47 + 8))(v76, v275);
  sub_23E1FC3FC();
  v79 = v273;
  sub_23E1FBDCC();
  v82 = *(v78 + 8);
  v81 = v78 + 8;
  v80 = v82;
  v82(v75, v79);
  v83 = v268;
  v274 = v77;
  sub_23E1FC3FC();
  sub_23E1FBDAC();
  v82(v83, v79);
  v275 = sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
  sub_23E1FBDBC();
  v84 = v276;
  v235 = sub_23E1FBD8C();
  v85 = v277[1];
  v264 = v46;
  ++v277;
  v272 = v85;
  v85(v46, v84);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  v87 = sub_23E1FC67C();
  sub_23DF19528(v87, v72);

  v88 = sub_23E1FC30C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v88);
  v265 = v82;
  if (EnumTagSinglePayload == 1)
  {
    v90 = v75;
    v91 = v81;
    sub_23DE5CB68(v72, &unk_27E32C510, &qword_23E224378);
  }

  else
  {
    sub_23E1FC29C();
    (*(*(v88 - 1) + 8))(v72, v88);
    v92 = v273;
    sub_23E1FBDCC();
    v90 = v75;
    v91 = v81;
    v80(v75, v92);
  }

  v93 = sub_23E1FC67C();
  v94 = v233;
  sub_23DF19528(v93, v233);

  if (__swift_getEnumTagSinglePayload(v94, 1, v88) != 1)
  {
    sub_23E1FC29C();
    (*(*(v88 - 1) + 8))(v94, v88);
    v97 = v273;
    v95 = sub_23E1FBDAC();
    v265(v90, v97);
    if (EnumTagSinglePayload != 1)
    {
      if (v95)
      {
        v98 = v220;
        sub_23E1FBDBC();
        v99 = v276;
        v96 = sub_23E1FBD8C();
        v272(v98, v99);
        goto LABEL_12;
      }

LABEL_9:
      v96 = 0;
      goto LABEL_12;
    }

LABEL_8:

    goto LABEL_9;
  }

  sub_23DE5CB68(v94, &unk_27E32C510, &qword_23E224378);
  v95 = 0;
  v96 = 0;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_8;
  }

LABEL_12:
  v100 = sub_23E1FC67C();
  v101 = v225;
  sub_23DF19528(v100, v225);

  v102 = __swift_getEnumTagSinglePayload(v101, 1, v88);
  v103 = v265;
  if (v102 == 1)
  {
    sub_23DE5CB68(v101, &unk_27E32C510, &qword_23E224378);
  }

  else
  {
    sub_23E1FC27C();
    (*(*(v88 - 1) + 8))(v101, v88);
    v104 = v273;
    sub_23E1FBDCC();
    v103(v90, v104);
  }

  v105 = sub_23E1FC67C();
  v106 = v229;
  sub_23DF19528(v105, v229);

  v107 = __swift_getEnumTagSinglePayload(v106, 1, v88);
  v266 = v88;
  v239 = v86;
  v233 = v96;
  if (v107 == 1)
  {
    v108 = v91;
    sub_23DE5CB68(v106, &unk_27E32C510, &qword_23E224378);
    v109 = 0;
    v110 = 0;
    if (v102 != 1)
    {
      goto LABEL_23;
    }

LABEL_19:

    v110 = 0;
    goto LABEL_23;
  }

  sub_23E1FC27C();
  (*(*(v88 - 1) + 8))(v106, v88);
  v111 = v273;
  v109 = sub_23E1FBDAC();
  v103(v90, v111);
  v108 = v91;
  if (v102 == 1)
  {
    goto LABEL_19;
  }

  if (v109)
  {
    v112 = v223;
    sub_23E1FBDBC();
    v113 = v276;
    v110 = sub_23E1FBD8C();
    v272(v112, v113);
  }

  else
  {
    v110 = 0;
  }

LABEL_23:
  v229 = v110;
  sub_23E1FC41C();
  v114 = v90;
  v115 = v273;
  sub_23E1FBDCC();
  v103(v114, v115);
  v267 = v108;
  v116 = v268;
  sub_23E1FC41C();
  sub_23E1FBDAC();
  v103(v116, v115);
  v117 = v264;
  sub_23E1FBDBC();
  v118 = v276;
  v225 = sub_23E1FBD8C();
  v119 = v272;
  v272(v117, v118);
  v120 = v119;
  sub_23E1FC42C();
  v223 = sub_23E1FDBDC();

  v121 = v261;
  sub_23E1FC3EC();
  v122 = v263;
  sub_23E1FBDCC();
  v123 = v269 + 8;
  v124 = *(v269 + 1);
  v125 = v121;
  v126 = v122;
  v124(v125, v122);
  v219 = v124;
  v269 = v123;
  v127 = v262;
  sub_23E1FC3EC();
  sub_23E1FBDAC();
  v124(v127, v126);
  sub_23E1FBDBC();
  v220 = sub_23E1FBD8C();
  v128 = v118;
  v129 = v120;
  v120(v117, v128);
  v130 = v260;
  sub_23E1FC46C();
  sub_23E1FBDCC();
  v131 = v265;
  v265(v130, v115);
  v132 = v268;
  sub_23E1FC46C();
  sub_23E1FBDAC();
  v131(v132, v115);
  sub_23E1FBDBC();
  v133 = v276;
  v267 = sub_23E1FBD8C();
  v120(v117, v133);
  sub_23E1FC47C();
  v273 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v135 = v222;
  sub_23E1FC49C();
  v136 = v227;
  sub_23E1FBDCC();
  v137 = *(v226 + 8);
  v137(v135, v136);
  v138 = v224;
  sub_23E1FC49C();
  sub_23E1FBDAC();
  v137(v138, v136);
  sub_23E1FBDBC();
  v139 = v276;
  v268 = sub_23E1FBD8C();
  v140 = v129(v117, v139);
  v141 = v228;
  MEMORY[0x23EF02BF0](v140);
  v142 = v261;
  sub_23E1FC5DC();
  v143 = *(v231 + 8);
  v144 = v232;
  v143(v141, v232);
  v145 = v263;
  sub_23E1FBDCC();
  v146 = v219;
  v147 = (v219)(v142, v145);
  v148 = v230;
  MEMORY[0x23EF02BF0](v147);
  v149 = v262;
  sub_23E1FC5DC();
  v143(v148, v144);
  sub_23E1FBDAC();
  v146(v149, v145);
  sub_23E1FBDBC();
  v150 = v276;
  v151 = sub_23E1FBD8C();
  v272(v117, v150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C520, &qword_23E224380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v153 = v221;
  sub_23DE61230(v270, v221, &unk_27E32C510, &qword_23E224378);
  v154 = v266;
  v155 = __swift_getEnumTagSinglePayload(v153, 1, v266);
  v269 = v151;
  if (v155 == 1)
  {
    sub_23DE5CB68(v153, &unk_27E32C510, &qword_23E224378);
    *(inited + 32) = 0;
    *(inited + 40) = 1;

    v156 = MEMORY[0x277D84F90];
    v157 = v238;
    v158 = 0x277CCA000;
  }

  else
  {
    sub_23E1FC2AC();
    v160 = v159;
    (*(*(v154 - 1) + 8))(v153, v154);
    *(inited + 32) = v160;
    *(inited + 40) = 0;

    sub_23DE4CE40(0, 1, 1, MEMORY[0x277D84F90]);
    v156 = v161;
    v163 = *(v161 + 16);
    v162 = *(v161 + 24);
    v157 = v238;
    if (v163 >= v162 >> 1)
    {
      sub_23DE4CE40(v162 > 1, v163 + 1, 1, v161);
      v156 = v213;
    }

    v158 = 0x277CCA000uLL;
    *(v156 + 16) = v163 + 1;
    *(v156 + 8 * v163 + 32) = v160;
  }

  v164 = *(v156 + 16);
  if (v164)
  {
    v280 = MEMORY[0x277D84F90];
    sub_23E1FE63C();
    v165 = 32;
    do
    {
      [objc_allocWithZone(*(v158 + 2992)) initWithDouble_];
      sub_23E1FE61C();
      v166 = *(v280 + 16);
      sub_23E1FE64C();
      sub_23E1FE65C();
      sub_23E1FE62C();
      v165 += 8;
      --v164;
    }

    while (v164);

    v167 = v280;
  }

  else
  {

    v167 = MEMORY[0x277D84F90];
  }

  if (sub_23DE4D8B0(v167))
  {
    sub_23DE59014(0, (v167 & 0xC000000000000001) == 0, v167);
    if ((v167 & 0xC000000000000001) != 0)
    {
      v168 = MEMORY[0x23EF04DD0](0, v167);
    }

    else
    {
      v168 = *(v167 + 32);
    }

    v265 = v168;
  }

  else
  {
    v265 = 0;
  }

  v169 = v241;
  sub_23E1FC44C();
  sub_23E1FC62C();
  v170 = *(v245 + 8);
  v171 = v247;
  v170(v169, v247);
  v172 = v246;
  sub_23E1FBDCC();
  v173 = *(v244 + 8);
  v173(v157, v172);
  v174 = v236;
  sub_23E1FC44C();
  v175 = v243;
  sub_23E1FC62C();
  v170(v174, v171);
  sub_23E1FBDAC();
  v173(v175, v172);
  v176 = v264;
  sub_23E1FBDBC();
  v177 = v276;
  v275 = sub_23E1FBD8C();
  v272(v176, v177);
  sub_23E1FC44C();
  v178 = v248;
  sub_23E1FC63C();
  v170(v169, v171);
  v179 = v250;
  sub_23E1FBDCC();
  v181 = v180;
  (*(v249 + 8))(v178, v179);
  v182 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v183 = v251;
  sub_23E1FC45C();
  v184 = sub_23E1FC65C();
  (*(v252 + 8))(v183, v253);
  v185 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v186 = v270;
  v187 = v234;
  sub_23DE61230(v270, v234, &unk_27E32C510, &qword_23E224378);
  v188 = v266;
  if (__swift_getEnumTagSinglePayload(v187, 1, v266) == 1)
  {
    sub_23DE5CB68(v187, &unk_27E32C510, &qword_23E224378);
    v189 = v259;
    __swift_storeEnumTagSinglePayload(v254, 1, 1, v259);
    v190 = 0;
    v191 = v256;
    v192 = v237;
  }

  else
  {
    v193 = v255;
    sub_23E1FC2BC();
    (*(*(v188 - 1) + 8))(v187, v188);
    v194 = v254;
    sub_23E1FC69C();
    (*(v257 + 8))(v193, v258);
    v189 = v259;
    v195 = __swift_getEnumTagSinglePayload(v194, 1, v259);
    v191 = v256;
    v192 = v237;
    if (v195 == 1)
    {
      v190 = 0;
    }

    else
    {
      v196 = sub_23E1FC02C();
      v189 = v259;
      v190 = v196;
      (v218[0])(v194, v259);
    }

    v188 = v266;
  }

  sub_23DE61230(v186, v192, &unk_27E32C510, &qword_23E224378);
  if (__swift_getEnumTagSinglePayload(v192, 1, v188) == 1)
  {
    sub_23DE5CB68(v192, &unk_27E32C510, &qword_23E224378);
    __swift_storeEnumTagSinglePayload(v191, 1, 1, v189);
  }

  else
  {
    v197 = v255;
    sub_23E1FC2BC();
    (*(*(v188 - 1) + 8))(v192, v188);
    sub_23E1FC68C();
    v198 = v259;
    (*(v257 + 8))(v197, v258);
    if (__swift_getEnumTagSinglePayload(v191, 1, v198) != 1)
    {
      v199 = sub_23E1FC02C();
      (v218[0])(v191, v198);
      goto LABEL_49;
    }
  }

  v199 = 0;
LABEL_49:
  v200 = v242;
  v201 = v240;
  v202 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v276 = v199;
  v217 = v199;
  v272 = v190;
  v215 = v185;
  v216 = v190;
  v214 = v182;
  v203 = v265;
  v204 = v267;
  v205 = v220;
  v264 = v182;
  v206 = v223;
  v266 = v185;
  v207 = v225;
  v208 = v235;
  v209 = v233;
  v210 = v229;
  v277 = [v202 initWithDate:v200 location:v201 userTemperatureUnitString:0 temperature:v235 highTemperature:v233 lowTemperature:v229 feelsLikeTemperature:v225 localizedConditionString:v223 visibility:v220 dewpoint:v267 humidity:v273 pressure:v268 precipitationAmount:v269 precipitationChance:v265 windSpeed:v275 windDirection:v214 uvIndex:v215 sunriseTime:v216 sunsetTime:v217 localizedAirQualityIndex:0 localizedAirQualityCategory:0 pollutants:0];

  (*(*(v239 - 8) + 8))(v271);
  sub_23DE5CB68(v270, &unk_27E32C510, &qword_23E224378);
  v211 = sub_23E1FC4AC();
  (*(*(v211 - 8) + 8))(v274, v211);
  return v277;
}