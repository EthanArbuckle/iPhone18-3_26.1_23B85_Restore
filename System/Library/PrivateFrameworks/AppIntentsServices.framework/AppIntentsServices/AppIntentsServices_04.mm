void sub_2219DA994(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v125 = *(a1 + 16);
  v123 = v4;
  v124 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v117 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v117 - v20;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v121 = v9;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v10);
  v24 = 0;
  v126 = 0;
  v122 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v17, v21, v10);
    sub_221BCDF88();
    v24 = sub_221BCDFA8();
    v126 = v25;
    v26 = *(v11 + 8);
    v26(v15, v10);
    v26(v17, v10);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v27 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v28, v2);
  }

  v29 = off_27CFBC778;
  swift_beginAccess();
  v120 = v29;
  v30 = *&v29[v2];
  v31 = &unk_27CFBC000;
  if (*(v30 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v128, &qword_27CFB7FD0, &qword_221BD2888);
    v32 = *(&v129 + 1);
    if (*(&v129 + 1))
    {
      v33 = v130;
      __swift_project_boxed_opaque_existential_0(&v128, *(&v129 + 1));
      v119 = v2;
      v34 = v3;
      v35 = v6;
      v36 = v5;
      v37 = *(v33 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v32, v33);
      v31 = &unk_27CFBC000;
      v5 = v36;
      v6 = v35;
      v3 = v34;
      v2 = v119;

      __swift_destroy_boxed_opaque_existential_0(&v128);
    }

    else
    {
      sub_2219EC58C(&v128, &qword_27CFB7FD0);
    }
  }

  if (*(v3 + 33))
  {
    sub_2219BAF0C(v2 + v31[241], &v128, &qword_27CFB7FD0, &qword_221BD2888);
    v39 = *(&v129 + 1);
    if (*(&v129 + 1))
    {
      v40 = v130;
      __swift_project_boxed_opaque_existential_0(&v128, *(&v129 + 1));
      v41 = v121;
      sub_2219E7D00(v121);
      (*(v40 + 24))(v41, v39, v40);
      (*(v6 + 8))(v41, v5);
      __swift_destroy_boxed_opaque_existential_0(&v128);
    }

    else
    {
      sub_2219EC58C(&v128, &qword_27CFB7FD0);
    }

    v45 = *(v2 + qword_27CFBC770);
    if (v45)
    {
      v46 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v45);
      v47 = sub_221BCCD68();
      v48 = sub_221BCDA78();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *&v128 = v50;
        *v49 = 136315394;
        v51 = sub_2219CB3CC();
        v53 = sub_2219A6360(v51, v52, &v128);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        v54 = sub_221BCE198();
        v118 = v24;
        if (!v54)
        {
          v54 = swift_allocError();
        }

        v55 = v54;
        v56 = v45();
        v58 = v57;

        v59 = sub_2219A6360(v56, v58, &v128);

        *(v49 + 14) = v59;
        _os_log_impl(&dword_221989000, v47, v48, "%s %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v50, -1, -1);
        MEMORY[0x223DA4C00](v49, -1, -1);
        sub_22198B60C(v45);

        v24 = v118;
      }

      else
      {

        sub_22198B60C(v45);
      }

      goto LABEL_42;
    }

    v74 = *(v2 + qword_27CFDED20 + 17);

    v75 = sub_221BCCD68();
    v76 = sub_221BCDA78();

    v77 = os_log_type_enabled(v75, v76);
    if (v74)
    {
      if (v77)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v128 = v79;
        *v78 = 136315395;
        v80 = sub_2219CB3CC();
        v82 = v24;
        v83 = sub_2219A6360(v80, v81, &v128);

        *(v78 + 4) = v83;
        *(v78 + 12) = 2085;
        v84 = sub_221BCE288();
        v86 = sub_2219A6360(v84, v85, &v128);

        *(v78 + 14) = v86;
        v24 = v82;
        v87 = "%sFailed with %{sensitive}s";
LABEL_37:
        v97 = v76;
        goto LABEL_38;
      }
    }

    else if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v128 = v79;
      *v78 = 136315395;
      v98 = sub_2219CB3CC();
      v100 = v24;
      v101 = sub_2219A6360(v98, v99, &v128);

      *(v78 + 4) = v101;
      *(v78 + 12) = 2081;
      v102 = sub_221BCE288();
      v104 = sub_2219A6360(v102, v103, &v128);

      *(v78 + 14) = v104;
      v24 = v100;
      v87 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  v131 = v123;
  v132 = v125;
  v133 = v124;
  sub_2219BAF0C(v2 + v31[241], &v128, &qword_27CFB7FD0, &qword_221BD2888);
  v42 = *(&v129 + 1);
  if (*(&v129 + 1))
  {
    v43 = v130;
    __swift_project_boxed_opaque_existential_0(&v128, *(&v129 + 1));
    v44 = v121;
    (*(v6 + 104))(v121, *MEMORY[0x277CD8AC8], v5);
    (*(v43 + 24))(v44, v42, v43);
    (*(v6 + 8))(v44, v5);
    __swift_destroy_boxed_opaque_existential_0(&v128);
  }

  else
  {
    sub_2219EC58C(&v128, &qword_27CFB7FD0);
  }

  v60 = *(v2 + qword_27CFBC768);
  if (!v60)
  {

    sub_2219BAF0C(v3, &v128, &qword_27CFB8150, &qword_221BD2A98);
    v75 = sub_221BCCD68();
    v88 = sub_221BCDA98();

    if (os_log_type_enabled(v75, v88))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *&v128 = v79;
      *v78 = 136315394;
      v89 = sub_2219CB3CC();
      v91 = v24;
      v92 = sub_2219A6360(v89, v90, &v128);

      *(v78 + 4) = v92;
      *(v78 + 12) = 2080;
      v93 = sub_2219C1710(&v131, *(v2 + qword_27CFDED20 + 17));
      v95 = v94;
      sub_2219EC58C(v3, &qword_27CFB8150);
      v96 = sub_2219A6360(v93, v95, &v128);
      v24 = v91;

      *(v78 + 14) = v96;
      v87 = "%sCompleted with %s";
      v97 = v88;
LABEL_38:
      _os_log_impl(&dword_221989000, v75, v97, v87, v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v79, -1, -1);
      MEMORY[0x223DA4C00](v78, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    sub_2219EC58C(v3, &qword_27CFB8150);
    goto LABEL_42;
  }

  v61 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768));

  sub_2219BAF0C(v3, &v128, &qword_27CFB8150, &qword_221BD2A98);
  v62 = sub_221BCCD68();
  v63 = sub_221BCDA98();

  if (!os_log_type_enabled(v62, v63))
  {

    sub_22198B60C(v60);
    goto LABEL_41;
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v127 = v65;
  *v64 = 136315394;
  v66 = sub_2219CB3CC();
  v68 = sub_2219A6360(v66, v67, &v127);
  v118 = v24;
  v69 = v68;

  *(v64 + 4) = v69;
  *(v64 + 12) = 2080;
  v128 = v131;
  v129 = v132;
  LOBYTE(v130) = v133;
  v70 = v60(&v128);
  v72 = v71;
  sub_2219EC58C(v3, &qword_27CFB8150);
  v73 = sub_2219A6360(v70, v72, &v127);
  v24 = v118;

  *(v64 + 14) = v73;
  _os_log_impl(&dword_221989000, v62, v63, "%s%s", v64, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v65, -1, -1);
  MEMORY[0x223DA4C00](v64, -1, -1);
  sub_22198B60C(v60);

LABEL_42:
  v105 = v122;
  v106 = v126;
  sub_2219E7E58(v24, v126, v122 == 1);
  if (v105 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v107 = *(v2 + 40);
    v108 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      *&v125 = *(v2 + qword_27CFBC780);
      v118 = v24;
      v109 = *(v2 + qword_27CFBC780 + 8);
      v110 = *(v2 + qword_27CFBC780 + 16);
      v111 = sub_2219CB440();
      v113 = v112;
      *&v128 = 0;
      *(&v128 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v114 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v114);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v115 = v128;
      v116 = *&v120[v2];

      sub_221BB52B0(v125, v109, v110, v111, v113, v118, v106, v115, *(&v115 + 1));
    }
  }
}

void sub_2219DB7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  LODWORD(v187) = v27;
  v188 = v28;
  v189 = v29;
  v30 = sub_221BCCE38();
  v31 = OUTLINED_FUNCTION_0_2(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v36);
  v38 = &v183 - v37;
  v39 = sub_221BCDFB8();
  v40 = OUTLINED_FUNCTION_0_2(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_5();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_156();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v53);
    return;
  }

  v185 = v23;
  OUTLINED_FUNCTION_61_0();
  v55 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v21 + v55, v22, &qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_151(v22);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_175(v56, &a16);
  if (!v57)
  {
    v58 = OUTLINED_FUNCTION_90(v42);
    v59(v58, v22, v39);
    sub_221BCDF88();
    v60 = sub_221BCDFA8();
    OUTLINED_FUNCTION_225(v60, v61);
    v22 = *(v42 + 8);
    (v22)(v47, v39);
    v62 = OUTLINED_FUNCTION_16();
    (v22)(v62);
  }

  if (*(v21 + qword_27CFBC798))
  {
    v63 = *(v21 + qword_27CFBC798);

    OUTLINED_FUNCTION_110(v64);
  }

  v65 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a13);
  if (v66)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
    if (v193)
    {
      v22 = v194;
      OUTLINED_FUNCTION_62_0(&v191, v193);
      v67 = v33;
      v68 = v30;
      LOBYTE(v55) = v22 + 32;
      v69 = *(v22 + 32);

      OUTLINED_FUNCTION_3_11();
      v69();
      v65 = &unk_27CFBC000;
      v30 = v68;
      v33 = v67;

      __swift_destroy_boxed_opaque_existential_0(&v191);
    }

    else
    {
      sub_2219EC58C(&v191, &qword_27CFB7FD0);
    }
  }

  if ((v187 & 1) == 0)
  {
    v74 = v33;
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
    v70 = v193;
    v75 = v189;
    if (v193)
    {
      v76 = v30;
      v77 = v194;
      OUTLINED_FUNCTION_15_3();
      (*(v74 + 104))(v38, *MEMORY[0x277CD8AC8], v76);
      v78 = *(v77 + 24);
      OUTLINED_FUNCTION_74();
      v79();
      (*(v74 + 8))(v38, v76);
      __swift_destroy_boxed_opaque_existential_0(&v191);
    }

    else
    {
      sub_2219EC58C(&v191, &qword_27CFB7FD0);
    }

    v80 = v188;
    OUTLINED_FUNCTION_45_0(qword_27CFBC768);
    v82 = qword_27CFBC758;
    if (v70)
    {
      v83 = *(v81 + 8);
      v84 = OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_228(v84);
      v85 = OUTLINED_FUNCTION_50_0();
      sub_2219EC098(v85, v86, v87);
      v88 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_209();
      if (os_log_type_enabled(v88, v55))
      {
        v89 = OUTLINED_FUNCTION_103();
        v188 = OUTLINED_FUNCTION_105();
        v190[0] = v188;
        v90 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_150(v90, v91);
        OUTLINED_FUNCTION_149();
        *(v89 + 4) = v74;
        *(v89 + 12) = 2080;
        v191 = v80;
        v192 = v75;
        v70(&v191);
        OUTLINED_FUNCTION_185();
        v92 = OUTLINED_FUNCTION_50_0();
        sub_2219EC0A4(v92, v93, v94);
        sub_2219A6360(v83, v74, v190);
        OUTLINED_FUNCTION_215();
        *(v89 + 14) = v83;
        OUTLINED_FUNCTION_201(&dword_221989000, v95, v55, "%s%s");
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v96 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v96);

        goto LABEL_49;
      }

      v115 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v115);
    }

    else
    {

      v97 = OUTLINED_FUNCTION_50_0();
      sub_2219EC098(v97, v98, v99);
      v100 = v26 + v82;
      v70 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_188();
      if (OUTLINED_FUNCTION_211())
      {
        OUTLINED_FUNCTION_103();
        v101 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_46_0(v101);
        v102 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v102, v103);
        OUTLINED_FUNCTION_149();
        *(v38 + 4) = v74;
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_218(qword_27CFDED20);
        v104 = OUTLINED_FUNCTION_86();
        sub_2219C17CC(v104, v105, v106);
        OUTLINED_FUNCTION_185();
        v107 = OUTLINED_FUNCTION_50_0();
        sub_2219EC0A4(v107, v108, v109);
        v110 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v110, v74, v111);
        OUTLINED_FUNCTION_215();
        *(v38 + 14) = v100;
        OUTLINED_FUNCTION_51_0(&dword_221989000, v112, v113, "%sCompleted with %s");
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
LABEL_44:
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_45;
      }
    }

    v116 = OUTLINED_FUNCTION_50_0();
    sub_2219EC0A4(v116, v117, v118);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v65[241]);
  v70 = v193;
  if (v193)
  {
    v184 = v30;
    v187 = OUTLINED_FUNCTION_47();
    v71 = v188;
    OUTLINED_FUNCTION_244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v72 = sub_221BCE198();
      if (v72)
      {
        v73 = v72;
        sub_2219EC0A4(v71, v189, 1);
      }

      else
      {
        v73 = OUTLINED_FUNCTION_17_2();
        *v119 = v71;
      }

      v120 = sub_221BCC328();

      v121 = [v120 domain];
      v22 = sub_221BCD388();
      v123 = v122;

      v124 = [v120 code];
      v55 = v185;
      *v185 = v22;
      *(v55 + 8) = v123;
      *(v55 + 16) = v124;
      v114 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v114 = MEMORY[0x277CD8AC0];
      v55 = v185;
    }

    v30 = v184;
    (*(v33 + 104))(v55, *v114, v184);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v125();
    (*(v33 + 8))(v55, v30);
    __swift_destroy_boxed_opaque_existential_0(&v191);
  }

  else
  {
    sub_2219EC58C(&v191, &qword_27CFB7FD0);
    v71 = v188;
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC770);
  if (v70)
  {
    v127 = *(v126 + 8);

    v128 = OUTLINED_FUNCTION_87();
    sub_2219EC098(v128, v129, v130);
    v131 = OUTLINED_FUNCTION_1_0();
    v132 = OUTLINED_FUNCTION_207(v131);
    sub_221BCDA78();
    OUTLINED_FUNCTION_209();
    v133 = OUTLINED_FUNCTION_87();
    sub_2219EC0A4(v133, v134, v135);
    if (os_log_type_enabled(v132, v55))
    {
      v136 = OUTLINED_FUNCTION_103();
      v137 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_46_0(v137);
      v138 = OUTLINED_FUNCTION_248(4.8151e-34);
      OUTLINED_FUNCTION_102(v138, v139);
      OUTLINED_FUNCTION_149();
      *(v136 + 4) = v22;
      OUTLINED_FUNCTION_130();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v140 = OUTLINED_FUNCTION_208();
      if (v140)
      {
        v141 = v140;
        sub_2219EC0A4(v71, v189, 1);
      }

      else
      {
        v141 = OUTLINED_FUNCTION_112();
        *v162 = v71;
      }

      v70(v141);
      OUTLINED_FUNCTION_184();

      v163 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v163, v71, v164);
      OUTLINED_FUNCTION_144();

      *(v136 + 14) = v127;
      OUTLINED_FUNCTION_247(&dword_221989000, v132, v55, "%s %s");
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    v165 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v165);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_177(qword_27CFDED20);

  v142 = OUTLINED_FUNCTION_87();
  sub_2219EC098(v142, v143, v144);
  v70 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v145 = OUTLINED_FUNCTION_87();
  sub_2219EC0A4(v145, v146, v147);
  v148 = OUTLINED_FUNCTION_169();
  if (v30)
  {
    if (v148)
    {
      OUTLINED_FUNCTION_103();
      v149 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v149);
      v150 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v150, v151);
      OUTLINED_FUNCTION_149();
      *(v30 + 4) = v22;
      OUTLINED_FUNCTION_116(2085);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v152 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v152, v153);
      OUTLINED_FUNCTION_5_1();
      *(v30 + 14) = v71;
      v156 = "%sFailed with %{sensitive}s";
LABEL_43:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v154, v155, v156);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_44;
    }
  }

  else if (v148)
  {
    OUTLINED_FUNCTION_103();
    v157 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v157);
    v158 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v158, v159);
    OUTLINED_FUNCTION_149();
    *(v30 + 4) = v22;
    OUTLINED_FUNCTION_116(2081);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v160 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v160, v161);
    OUTLINED_FUNCTION_5_1();
    *(v30 + 14) = v71;
    v156 = "%sFailed with %{private}s";
    goto LABEL_43;
  }

LABEL_45:

LABEL_49:
  OUTLINED_FUNCTION_48_0(&a16);
  OUTLINED_FUNCTION_133(v186, v166, v167);
  if (v70 != 1 && (*(v26 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    OUTLINED_FUNCTION_176(qword_27CFBC780);
    v188 = v168;
    v189 = v169;
    OUTLINED_FUNCTION_189(v170);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v171 = sub_221BCE3F8();
    v172 = OUTLINED_FUNCTION_101(v171, 1000.0);
    OUTLINED_FUNCTION_100(v172, v173, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v174 = v192;
    OUTLINED_FUNCTION_77(&a13);
    OUTLINED_FUNCTION_7_4();
    v183 = v174;
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v175, v176, v177, v178, v179, v180, v181, v182, v183);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DC328()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v134 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_221BCCE38();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v133 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v15 = (v14 - v13);
  v16 = sub_221BCDFB8();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_5();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_157();
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v30);
    return;
  }

  v130 = v7;
  v131 = v8;
  OUTLINED_FUNCTION_61_0();
  v32 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v0 + v32, v1, &qword_27CFB7FC8, &qword_221BD2880);
  v33 = 0;
  v132 = OUTLINED_FUNCTION_151(v1);
  if (v132 != 1)
  {
    v34 = OUTLINED_FUNCTION_90(v19);
    v35(v34, v1, v16);
    sub_221BCDF88();
    v33 = sub_221BCDFA8();
    v32 = *(v19 + 8);
    v36 = OUTLINED_FUNCTION_118();
    (v32)(v36);
    v37 = OUTLINED_FUNCTION_16();
    (v32)(v37);
  }

  if (*(v0 + qword_27CFBC798))
  {
    v38 = *(v0 + qword_27CFBC798);

    OUTLINED_FUNCTION_160(v39);
  }

  v40 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v129 = v40;
  v41 = *&v40[v2];
  v42 = &unk_27CFBC000;
  if (*(v41 + 16))
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v24 = v138;
    if (v138)
    {
      v1 = v139;
      OUTLINED_FUNCTION_62_0(&v136, v138);
      v43 = v5;
      v44 = v33;
      v32 = v1 + 32;
      v45 = *(v1 + 32);

      OUTLINED_FUNCTION_3_11();
      v45();
      v42 = &unk_27CFBC000;
      v33 = v44;
      v5 = v43;

      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {
      sub_2219EC58C(&v136, &qword_27CFB7FD0);
    }
  }

  if (v134)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v42[241]);
    v46 = v138;
    if (v138)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2219E7D00(v15);
      v47 = OUTLINED_FUNCTION_26_2();
      v48(v47);
      (*(v133 + 8))(v15, v131);
      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {
      sub_2219EC58C(&v136, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC770);
    if (v46)
    {
      v135 = v33;
      v53 = *(v52 + 8);

      v54 = OUTLINED_FUNCTION_1_0();
      v55 = OUTLINED_FUNCTION_207(v54);
      sub_221BCDA78();
      OUTLINED_FUNCTION_209();
      if (os_log_type_enabled(v55, v5))
      {
        v56 = OUTLINED_FUNCTION_103();
        v136 = OUTLINED_FUNCTION_105();
        *v56 = 136315394;
        v57 = sub_2219CB3CC();
        OUTLINED_FUNCTION_102(v57, v58);
        OUTLINED_FUNCTION_148();
        *(v56 + 4) = v24;
        *(v56 + 12) = 2080;
        v59 = sub_221BCE198();
        if (!v59)
        {
          v59 = OUTLINED_FUNCTION_17_2();
        }

        v60 = v59;
        v46();
        OUTLINED_FUNCTION_143();

        v61 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v61, v1, v62);
        OUTLINED_FUNCTION_97();

        *(v56 + 14) = v53;
        OUTLINED_FUNCTION_240(&dword_221989000, v63, v64, "%s %s");
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v65 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v65);
      }

      else
      {

        v105 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v105);
      }

      v33 = v135;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_177(qword_27CFDED20);

    v84 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_153_0();
    v85 = OUTLINED_FUNCTION_169();
    if (v24)
    {
      if (v85)
      {
        OUTLINED_FUNCTION_103();
        v86 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_46_0(v86);
        v87 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v87, v88);
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_158();
        v89 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v89, v90);
        OUTLINED_FUNCTION_5_1();
        *(v24 + 14) = v33;
        v93 = "%sFailed with %{sensitive}s";
LABEL_38:
        OUTLINED_FUNCTION_41_0(&dword_221989000, v91, v92, v93);
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_39;
      }
    }

    else if (v85)
    {
      OUTLINED_FUNCTION_103();
      v107 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v107);
      v108 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v108, v109);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_159();
      v110 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v110, v111);
      OUTLINED_FUNCTION_5_1();
      *(v24 + 14) = v33;
      v93 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v42[241]);
  v49 = v138;
  if (v138)
  {
    OUTLINED_FUNCTION_13_3();
    v24 = v131;
    (*(v133 + 104))(v15, *MEMORY[0x277CD8AC8], v131);
    v50 = OUTLINED_FUNCTION_26_2();
    v51(v50);
    v1 = v133 + 8;
    (*(v133 + 8))(v15, v131);
    __swift_destroy_boxed_opaque_existential_0(&v136);
  }

  else
  {
    sub_2219EC58C(&v136, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC768);
  v68 = qword_27CFBC758;
  if (v49)
  {
    v69 = *(v67 + 8);
    v70 = OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_228(v70);
    OUTLINED_FUNCTION_220();
    sub_2219EBFA8(v71, v72, v73);
    v74 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_251();
    if (os_log_type_enabled(v74, v15))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_39_0();
      v75 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_250(v75, v76);
      OUTLINED_FUNCTION_5_1();
      *(v24 + 4) = v33;
      OUTLINED_FUNCTION_174();
      v136 = v130;
      v137 = v5;
      (v49)(&v136);
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_220();
      sub_2219EC020(v77, v78, v79);
      v80 = OUTLINED_FUNCTION_92();
      sub_2219A6360(v80, v81, v82);
      OUTLINED_FUNCTION_144();

      *(v24 + 14) = v69;
      _os_log_impl(&dword_221989000, v74, v15, "%s%s", v24, 0x16u);
      OUTLINED_FUNCTION_190();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v83 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v83);

      goto LABEL_43;
    }

    v106 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v106);
  }

  else
  {

    OUTLINED_FUNCTION_220();
    sub_2219EBFA8(v94, v95, v96);
    v97 = v2 + v68;
    v84 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_188();
    if (OUTLINED_FUNCTION_211())
    {
      OUTLINED_FUNCTION_103();
      v136 = OUTLINED_FUNCTION_43_0();
      v98 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v98, v99);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_218(qword_27CFDED20);
      sub_2219C17CC(v130, v5, v100);
      OUTLINED_FUNCTION_143();
      sub_2219EC020(v130, v5, 0);
      v101 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v101, v1, v102);
      OUTLINED_FUNCTION_97();

      *(v32 + 14) = v97;
      OUTLINED_FUNCTION_51_0(&dword_221989000, v103, v104, "%sCompleted with %s");
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
LABEL_39:
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_220();
  sub_2219EC020(v112, v113, v114);
LABEL_43:
  OUTLINED_FUNCTION_191(v33, v66, v132 == 1);
  if (v132 != 1 && (*(v2 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    OUTLINED_FUNCTION_176(qword_27CFBC780);
    OUTLINED_FUNCTION_189(v115);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v116 = sub_221BCE3F8();
    v117 = OUTLINED_FUNCTION_101(v116, 1000.0);
    OUTLINED_FUNCTION_100(v117, v118, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v119 = v137;
    v120 = *&v129[v2];

    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v121, v122, v123, v124, v125, v126, v127, v128, v119);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DCCF8(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v148 = a1;
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v146 = &v141 - v11;
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v141 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v141 - v22;
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 36))
  {

    os_unfair_lock_unlock((v3 + 32));
    return;
  }

  v143 = v10;
  v144 = v6;
  v145 = v5;
  *(v3 + 36) = 1;
  os_unfair_lock_unlock((v3 + 32));
  v24 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v3 + v24, v23, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v12);
  v26 = 0;
  v147 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v19, v23, v12);
    sub_221BCDF88();
    v26 = sub_221BCDFA8();
    v147 = v27;
    v28 = *(v13 + 8);
    v28(v17, v12);
    v28(v19, v12);
  }

  if (*(v3 + qword_27CFBC798))
  {
    v29 = *(v3 + qword_27CFBC798);

    sub_2219E7A60(v30, v3);
  }

  v31 = off_27CFBC778;
  swift_beginAccess();
  v142 = v31;
  v32 = v148;
  if (!*(*&v31[v3] + 16))
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_2219BAF0C(v3 + qword_27CFBC788, &v150, &qword_27CFB7FD0, &qword_221BD2888);
    v46 = v152;
    if (v152)
    {
      LODWORD(v146) = v4;
      v47 = v153;
      v48 = __swift_project_boxed_opaque_existential_0(&v150, v152);
      v149[5] = v32;
      v49 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v149);
        v149[0] = v32;
        v50 = v32;
        v51 = sub_221BCE198();
        v141 = v48;
        if (v51)
        {
          v52 = v51;
          sub_2219EBF9C(v32);
        }

        else
        {
          v52 = swift_allocError();
          *v85 = v32;
        }

        v86 = sub_221BCC328();

        v87 = [v86 domain];
        v88 = sub_221BCD388();
        v90 = v89;

        v91 = [v86 code];
        v84 = v143;
        *v143 = v88;
        v84[1] = v90;
        v84[2] = v91;
        v83 = MEMORY[0x277CD8AB8];
        v32 = v148;
      }

      else
      {
        v83 = MEMORY[0x277CD8AC0];
        v84 = v143;
      }

      v92 = v144;
      v93 = v145;
      (*(v144 + 104))(v84, *v83, v145);
      (*(v47 + 24))(v84, v46, v47);
      (*(v92 + 8))(v84, v93);
      __swift_destroy_boxed_opaque_existential_0(&v150);
    }

    else
    {
      sub_2219EC58C(&v150, &qword_27CFB7FD0);
    }

    v94 = *(v3 + qword_27CFBC770);
    if (v94)
    {
      v145 = v26;
      LODWORD(v146) = EnumTagSinglePayload;
      v95 = *(v3 + qword_27CFBC770 + 8);

      sub_2219EBF90(v32);
      sub_22198BEB8(v94);
      v96 = sub_221BCCD68();
      v97 = sub_221BCDA78();

      sub_2219EBF9C(v32);
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v150 = v144;
        *v98 = 136315394;
        v99 = sub_2219CB3CC();
        v101 = sub_2219A6360(v99, v100, &v150);

        *(v98 + 4) = v101;
        *(v98 + 12) = 2080;
        v149[0] = v32;
        v102 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v103 = sub_221BCE198();
        if (v103)
        {
          v104 = v103;
          sub_2219EBF9C(v32);
        }

        else
        {
          v104 = swift_allocError();
          *v124 = v32;
        }

        v125 = v94(v104);
        v127 = v126;

        v128 = sub_2219A6360(v125, v127, &v150);

        *(v98 + 14) = v128;
        _os_log_impl(&dword_221989000, v96, v97, "%s %s", v98, 0x16u);
        v129 = v144;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v129, -1, -1);
        MEMORY[0x223DA4C00](v98, -1, -1);
      }

      sub_22198B60C(v94);
      EnumTagSinglePayload = v146;
      v26 = v145;
      goto LABEL_47;
    }

    v105 = *(v3 + qword_27CFDED20 + 17);

    sub_2219EBF90(v32);
    v70 = sub_221BCCD68();
    v106 = sub_221BCDA78();

    sub_2219EBF9C(v32);
    v107 = os_log_type_enabled(v70, v106);
    if (v105)
    {
      if (!v107)
      {
        goto LABEL_43;
      }

      v73 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v150 = v108;
      *v73 = 136315395;
      v109 = sub_2219CB3CC();
      v111 = v32;
      v112 = sub_2219A6360(v109, v110, &v150);

      *(v73 + 4) = v112;
      *(v73 + 12) = 2085;
      v149[0] = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v113 = sub_221BCE288();
      v115 = sub_2219A6360(v113, v114, &v150);

      *(v73 + 14) = v115;
      v116 = "%sFailed with %{sensitive}s";
    }

    else
    {
      if (!v107)
      {
        goto LABEL_43;
      }

      v73 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v150 = v108;
      *v73 = 136315395;
      v117 = sub_2219CB3CC();
      v119 = v32;
      v120 = sub_2219A6360(v117, v118, &v150);

      *(v73 + 4) = v120;
      *(v73 + 12) = 2081;
      v149[0] = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v121 = sub_221BCE288();
      v123 = sub_2219A6360(v121, v122, &v150);

      *(v73 + 14) = v123;
      v116 = "%sFailed with %{private}s";
    }

    _os_log_impl(&dword_221989000, v70, v106, v116, v73, 0x16u);
    swift_arrayDestroy();
    v82 = v108;
    goto LABEL_42;
  }

  sub_2219BAF0C(v3 + qword_27CFBC788, &v150, &qword_27CFB7FD0, &qword_221BD2888);
  v33 = v152;
  if (v152)
  {
    v34 = v153;
    __swift_project_boxed_opaque_existential_0(&v150, v152);
    v35 = v3;
    v36 = EnumTagSinglePayload;
    v37 = *(v34 + 32);

    v37(v38, 0x697274654D736961, 0xEA00000000007363, v33, v34);
    EnumTagSinglePayload = v36;
    v3 = v35;
    v32 = v148;

    __swift_destroy_boxed_opaque_existential_0(&v150);
    goto LABEL_12;
  }

  sub_2219EC58C(&v150, &qword_27CFB7FD0);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_2219BAF0C(v3 + qword_27CFBC788, &v150, &qword_27CFB7FD0, &qword_221BD2888);
  v39 = v152;
  if (v152)
  {
    v40 = v153;
    __swift_project_boxed_opaque_existential_0(&v150, v152);
    v41 = EnumTagSinglePayload;
    v42 = v26;
    v43 = v4;
    v4 = v144;
    v44 = v146;
    v45 = v145;
    (*(v144 + 104))(v146, *MEMORY[0x277CD8AC8], v145);
    (*(v40 + 24))(v44, v39, v40);
    (*(v4 + 8))(v44, v45);
    LOBYTE(v4) = v43;
    v26 = v42;
    EnumTagSinglePayload = v41;
    v32 = v148;
    __swift_destroy_boxed_opaque_existential_0(&v150);
  }

  else
  {
    sub_2219EC58C(&v150, &qword_27CFB7FD0);
  }

  v53 = *(v3 + qword_27CFBC768);
  if (!v53)
  {

    sub_2219EBF90(v32);
    v70 = sub_221BCCD68();
    v71 = v4;
    v72 = sub_221BCDA98();

    sub_2219EBF9C(v32);
    if (os_log_type_enabled(v70, v72))
    {
      v73 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v150 = v146;
      *v73 = 136315394;
      v74 = sub_2219CB3CC();
      v76 = v32;
      v77 = sub_2219A6360(v74, v75, &v150);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      v78 = sub_2219C1894(v76, v71 & 1, *(v3 + qword_27CFDED20 + 17));
      v80 = sub_2219A6360(v78, v79, &v150);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_221989000, v70, v72, "%sCompleted with %s", v73, 0x16u);
      v81 = v146;
      swift_arrayDestroy();
      v82 = v81;
LABEL_42:
      MEMORY[0x223DA4C00](v82, -1, -1);
      MEMORY[0x223DA4C00](v73, -1, -1);
    }

LABEL_43:

    goto LABEL_47;
  }

  v54 = v4;
  v55 = *(v3 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v3 + qword_27CFBC768));

  sub_2219EBF90(v32);
  v56 = sub_221BCCD68();
  v57 = sub_221BCDA98();

  sub_2219EBF9C(v32);
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    LODWORD(v146) = EnumTagSinglePayload;
    v59 = v58;
    v60 = swift_slowAlloc();
    v145 = v26;
    v144 = v55;
    v61 = v60;
    v149[0] = v60;
    *v59 = 136315394;
    v62 = sub_2219CB3CC();
    v64 = v32;
    v65 = sub_2219A6360(v62, v63, v149);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    v150 = v64;
    LOBYTE(v151) = v54 & 1;
    v66 = v53(&v150);
    v68 = sub_2219A6360(v66, v67, v149);

    *(v59 + 14) = v68;
    _os_log_impl(&dword_221989000, v56, v57, "%s%s", v59, 0x16u);
    swift_arrayDestroy();
    v26 = v145;
    MEMORY[0x223DA4C00](v61, -1, -1);
    v69 = v59;
    EnumTagSinglePayload = v146;
    MEMORY[0x223DA4C00](v69, -1, -1);
    sub_22198B60C(v53);
  }

  else
  {

    sub_22198B60C(v53);
  }

LABEL_47:
  sub_2219E7E58(v26, v147, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v3 + 56) & 1) == 0)
  {
    v130 = *(v3 + 40);
    v131 = *(v3 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v132 = *(v3 + qword_27CFBC780);
      v148 = *(v3 + qword_27CFBC780 + 8);
      v133 = *(v3 + qword_27CFBC780 + 16);
      v134 = sub_2219CB440();
      v136 = v135;
      v150 = 0;
      v151 = 0xE000000000000000;
      sub_221BCDE68();
      v137 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v137);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v138 = v150;
      v139 = v151;
      v140 = *&v142[v3];

      sub_221BB52B0(v132, v148, v133, v134, v136, v26, v147, v138, v139);
    }
  }
}

void sub_2219DDD60(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v121 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v116 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v116 - v20;
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 36))
  {

    os_unfair_lock_unlock((v3 + 32));
    return;
  }

  v119 = v7;
  v120 = v6;
  v118 = a1;
  *(v3 + 36) = 1;
  os_unfair_lock_unlock((v3 + 32));
  v22 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v3 + v22, v21, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v10);
  v122 = 0;
  v24 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v17, v21, v10);
    sub_221BCDF88();
    v122 = sub_221BCDFA8();
    v24 = v25;
    v26 = *(v11 + 8);
    v26(v15, v10);
    v26(v17, v10);
  }

  if (*(v3 + qword_27CFBC798))
  {
    v27 = *(v3 + qword_27CFBC798);

    sub_2219E7A60(v28, v3);
  }

  v29 = off_27CFBC778;
  swift_beginAccess();
  v117 = v29;
  if (*(*&v29[v3] + 16))
  {
    sub_2219BAF0C(v3 + qword_27CFBC788, &v124, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = v126;
    if (!v126)
    {
      sub_2219EC58C(&v124, &qword_27CFB7FD0);
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    v31 = v127;
    __swift_project_boxed_opaque_existential_0(&v124, v126);
    v116 = v3;
    v32 = *(v31 + 32);

    v32(v33, 0x697274654D736961, 0xEA00000000007363, v30, v31);
    v3 = v116;

    __swift_destroy_boxed_opaque_existential_0(&v124);
  }

  if ((a2 & 0x100) == 0)
  {
LABEL_13:
    sub_2219BAF0C(v3 + qword_27CFBC788, &v124, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = v126;
    if (v126)
    {
      v35 = v127;
      __swift_project_boxed_opaque_existential_0(&v124, v126);
      v37 = v119;
      v36 = v120;
      v38 = v121;
      (*(v119 + 104))(v121, *MEMORY[0x277CD8AC8], v120);
      (*(v35 + 24))(v38, v34, v35);
      (*(v37 + 8))(v38, v36);
      __swift_destroy_boxed_opaque_existential_0(&v124);
    }

    else
    {
      sub_2219EC58C(&v124, &qword_27CFB7FD0);
    }

    v42 = *(v3 + qword_27CFBC768);
    if (!v42)
    {

      v72 = v118;
      sub_2219EBF78(v118, a2, 0);
      v73 = sub_221BCCD68();
      v74 = sub_221BCDA98();

      sub_2219EBF84(v72, a2, 0);
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        LODWORD(v120) = EnumTagSinglePayload;
        v76 = v75;
        v77 = swift_slowAlloc();
        v124 = v77;
        *v76 = 136315394;
        v78 = sub_2219CB3CC();
        v80 = sub_2219A6360(v78, v79, &v124);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = sub_2219C1894(v72, a2 & 1, *(v3 + qword_27CFDED20 + 17));
        v83 = sub_2219A6360(v81, v82, &v124);

        *(v76 + 14) = v83;
        _os_log_impl(&dword_221989000, v73, v74, "%sCompleted with %s", v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v77, -1, -1);
        v84 = v76;
        EnumTagSinglePayload = v120;
        MEMORY[0x223DA4C00](v84, -1, -1);
      }

      goto LABEL_42;
    }

    LODWORD(v120) = EnumTagSinglePayload;
    v43 = *(v3 + qword_27CFBC768 + 8);
    sub_22198BEB8(v42);

    v44 = v118;
    sub_2219EBF78(v118, a2, 0);
    v45 = sub_221BCCD68();
    v46 = sub_221BCDA98();

    sub_2219EBF84(v44, a2, 0);
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v119 = v43;
      v48 = v47;
      v121 = swift_slowAlloc();
      v123 = v121;
      *v48 = 136315394;
      v49 = sub_2219CB3CC();
      v51 = sub_2219A6360(v49, v50, &v123);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2080;
      v124 = v44;
      LOBYTE(v125) = a2 & 1;
      v52 = v42(&v124);
      v54 = v24;
      v55 = sub_2219A6360(v52, v53, &v123);

      *(v48 + 14) = v55;
      v24 = v54;
      _os_log_impl(&dword_221989000, v45, v46, "%s%s", v48, 0x16u);
      v56 = v121;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v56, -1, -1);
      MEMORY[0x223DA4C00](v48, -1, -1);
      sub_22198B60C(v42);
    }

    else
    {

      sub_22198B60C(v42);
    }

    goto LABEL_35;
  }

LABEL_16:
  sub_2219BAF0C(v3 + qword_27CFBC788, &v124, &qword_27CFB7FD0, &qword_221BD2888);
  v39 = v126;
  if (v126)
  {
    v40 = v127;
    __swift_project_boxed_opaque_existential_0(&v124, v126);
    v41 = v121;
    sub_2219E7D00(v121);
    (*(v40 + 24))(v41, v39, v40);
    (*(v119 + 8))(v41, v120);
    __swift_destroy_boxed_opaque_existential_0(&v124);
  }

  else
  {
    sub_2219EC58C(&v124, &qword_27CFB7FD0);
  }

  v121 = v24;
  v57 = *(v3 + qword_27CFBC770);
  if (!v57)
  {
    v85 = *(v3 + qword_27CFDED20 + 17);

    v86 = sub_221BCCD68();
    v87 = sub_221BCDA78();

    v88 = os_log_type_enabled(v86, v87);
    if (v85)
    {
      if (v88)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v124 = v90;
        *v89 = 136315395;
        v91 = sub_2219CB3CC();
        v93 = sub_2219A6360(v91, v92, &v124);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2085;
        v94 = sub_221BCE288();
        v96 = sub_2219A6360(v94, v95, &v124);

        *(v89 + 14) = v96;
        v97 = "%sFailed with %{sensitive}s";
LABEL_39:
        _os_log_impl(&dword_221989000, v86, v87, v97, v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v90, -1, -1);
        MEMORY[0x223DA4C00](v89, -1, -1);
      }
    }

    else if (v88)
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v124 = v90;
      *v89 = 136315395;
      v98 = sub_2219CB3CC();
      v100 = sub_2219A6360(v98, v99, &v124);

      *(v89 + 4) = v100;
      *(v89 + 12) = 2081;
      v101 = sub_221BCE288();
      v103 = sub_2219A6360(v101, v102, &v124);

      *(v89 + 14) = v103;
      v97 = "%sFailed with %{private}s";
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v58 = *(v3 + qword_27CFBC770 + 8);

  sub_22198BEB8(v57);
  v59 = sub_221BCCD68();
  v60 = sub_221BCDA78();

  if (!os_log_type_enabled(v59, v60))
  {

    sub_22198B60C(v57);
LABEL_41:
    v24 = v121;
    goto LABEL_42;
  }

  LODWORD(v120) = EnumTagSinglePayload;
  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v124 = v62;
  *v61 = 136315394;
  v63 = sub_2219CB3CC();
  v65 = sub_2219A6360(v63, v64, &v124);

  *(v61 + 4) = v65;
  *(v61 + 12) = 2080;
  v66 = sub_221BCE198();
  if (!v66)
  {
    v66 = swift_allocError();
  }

  v67 = v66;
  v68 = v57();
  v70 = v69;

  v71 = sub_2219A6360(v68, v70, &v124);

  *(v61 + 14) = v71;
  _os_log_impl(&dword_221989000, v59, v60, "%s %s", v61, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v62, -1, -1);
  MEMORY[0x223DA4C00](v61, -1, -1);
  sub_22198B60C(v57);

  v24 = v121;
LABEL_35:
  EnumTagSinglePayload = v120;
LABEL_42:
  sub_2219E7E58(v122, v24, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v3 + 56) & 1) == 0)
  {
    v104 = *(v3 + 40);
    v105 = *(v3 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v106 = *(v3 + qword_27CFBC780);
      v107 = *(v3 + qword_27CFBC780 + 8);
      v121 = v24;
      v108 = *(v3 + qword_27CFBC780 + 16);
      v109 = sub_2219CB440();
      v111 = v110;
      v124 = 0;
      v125 = 0xE000000000000000;
      sub_221BCDE68();
      v112 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v112);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v113 = v124;
      v114 = v125;
      v115 = *&v117[v3];

      sub_221BB52B0(v106, v107, v108, v109, v111, v122, v121, v113, v114);
    }
  }
}

void sub_2219DEB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v192 = v23;
  v191 = v24;
  v196 = v25;
  v27 = v26;
  v201 = v28;
  v194 = v29;
  v30 = v22;
  v32 = v31;
  v34 = v33;
  v190[3] = a22;
  v190[2] = a21;
  v200 = sub_221BCCE38();
  v35 = OUTLINED_FUNCTION_0_2(v200);
  v199 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v39);
  v41 = v190 - v40;
  v42 = sub_221BCDFB8();
  v43 = OUTLINED_FUNCTION_0_2(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_5();
  v50 = (v48 - v49);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v55);
  v57 = v190 - v56;
  os_unfair_lock_lock((v22 + 32));
  if (*(v22 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v58);
    return;
  }

  v193 = v27;
  LODWORD(v197) = v32;
  OUTLINED_FUNCTION_61_0();
  v60 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v22 + v60, v57, &qword_27CFB7FC8, &qword_221BD2880);
  v61 = OUTLINED_FUNCTION_119();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, v62, v42);
  OUTLINED_FUNCTION_226();
  if (v64 != 1)
  {
    v65 = OUTLINED_FUNCTION_90(v45);
    v66(v65, v57, v42);
    sub_221BCDF88();
    v67 = sub_221BCDFA8();
    OUTLINED_FUNCTION_225(v67, v68);
    v57 = *(v45 + 8);
    (v57)(v50, v42);
    v69 = OUTLINED_FUNCTION_16();
    (v57)(v69);
  }

  if (*(v22 + qword_27CFBC798))
  {
    v70 = *(v22 + qword_27CFBC798);

    OUTLINED_FUNCTION_110(v71);
  }

  v72 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(v207);
  v73 = v197;
  if (!v74)
  {
LABEL_12:
    if ((v73 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v72[241]);
  v57 = v205;
  if (v205)
  {
    v50 = v206;
    OUTLINED_FUNCTION_62_0(&v203, v205);
    v75 = EnumTagSinglePayload;
    v76 = v34;
    v77 = *(v50 + 4);

    OUTLINED_FUNCTION_3_11();
    v77();
    v72 = &unk_27CFBC000;
    v73 = v197;
    v34 = v76;
    EnumTagSinglePayload = v75;

    __swift_destroy_boxed_opaque_existential_0(&v203);
    goto LABEL_12;
  }

  sub_2219EC58C(&v203, &qword_27CFB7FD0);
  if ((v73 & 0x100) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v72[241]);
    v78 = v205;
    if (v205)
    {
      v57 = v206;
      OUTLINED_FUNCTION_15_3();
      v79 = v199;
      (*(v199 + 104))(v41, *MEMORY[0x277CD8AC8], v200);
      (*(v57 + 3))(v41, v78, v57);
      v80 = *(v79 + 8);
      v50 = (v79 + 8);
      v81 = OUTLINED_FUNCTION_140();
      v82(v81);
      __swift_destroy_boxed_opaque_existential_0(&v203);
    }

    else
    {
      sub_2219EC58C(&v203, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC768);
    if (v78)
    {
      v92 = *(v91 + 8);
      v93 = OUTLINED_FUNCTION_72();
      v194(v93);

      v94 = OUTLINED_FUNCTION_84();
      sub_2219EC1F8(v94, v95, v96, v201);
      v97 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_198();
      v98 = OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_202(v98, v99, v100);
      if (os_log_type_enabled(v97, v41))
      {
        v101 = OUTLINED_FUNCTION_103();
        LODWORD(v201) = EnumTagSinglePayload;
        v102 = v101;
        v200 = OUTLINED_FUNCTION_105();
        v202[0] = v200;
        v103 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_150(v103, v104);
        OUTLINED_FUNCTION_245();
        *(v102 + 4) = v50;
        OUTLINED_FUNCTION_173();
        v203 = v34;
        LOBYTE(v204) = v73 & 1;
        v34 = v92;
        v105 = (v78)(&v203);
        OUTLINED_FUNCTION_150(v105, v106);
        OUTLINED_FUNCTION_5_1();
        *(v102 + 14) = v92;
        OUTLINED_FUNCTION_214(&dword_221989000, v97, v41, "%s%s");
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        EnumTagSinglePayload = v201;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v196(v78, v92);
      }

      else
      {

        v126 = OUTLINED_FUNCTION_72();
        (v196)(v126);
      }

      goto LABEL_46;
    }

    v108 = OUTLINED_FUNCTION_84();
    sub_2219EC1F8(v108, v109, v110, v201);
    v111 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_153_0();
    v112 = OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_202(v112, v113, v114);
    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_103();
      v115 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v115);
      v116 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v116, v117);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 4) = v57;
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_218(qword_27CFDED20);
      v119 = sub_2219C1948(v34, v73 & 1, v118, v191);
      OUTLINED_FUNCTION_102(v119, v120);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v57;
      v123 = "%sCompleted with %s";
LABEL_42:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v121, v122, v123);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_43;
    }

    goto LABEL_43;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v72[241]);
  v83 = v205;
  if (v205)
  {
    v197 = OUTLINED_FUNCTION_47();
    v202[5] = v34;
    v84 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v202);
      v202[0] = v34;
      v85 = v34;
      v86 = sub_221BCE198();
      if (v86)
      {
        v87 = v86;
        v88 = OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_202(v88, v89, v90);
      }

      else
      {
        v87 = OUTLINED_FUNCTION_17_2();
        *v127 = v34;
      }

      v128 = sub_221BCC328();

      v129 = [v128 domain];
      v130 = sub_221BCD388();
      v132 = v131;

      v133 = [v128 code];
      v125 = v195;
      *v195 = v130;
      v125[1] = v132;
      v125[2] = v133;
      v124 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v124 = MEMORY[0x277CD8AC0];
      v125 = v195;
    }

    v134 = v199;
    v135 = v125;
    v41 = v200;
    (*(v199 + 104))(v125, *v124, v200);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v136();
    v137 = *(v134 + 8);
    v57 = (v134 + 8);
    v137(v135, v41);
    __swift_destroy_boxed_opaque_existential_0(&v203);
  }

  else
  {
    sub_2219EC58C(&v203, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC770);
  if (v83)
  {
    v139 = *(v138 + 8);

    v140 = OUTLINED_FUNCTION_85();
    sub_2219EC1F8(v140, v141, v142, v201);
    v143 = OUTLINED_FUNCTION_1_0();
    v144 = OUTLINED_FUNCTION_207(v143);
    sub_221BCDA78();
    OUTLINED_FUNCTION_198();
    v145 = OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_202(v145, v146, v147);
    if (os_log_type_enabled(v144, v41))
    {
      LODWORD(v201) = EnumTagSinglePayload;
      v148 = OUTLINED_FUNCTION_103();
      v200 = OUTLINED_FUNCTION_105();
      v203 = v200;
      v149 = OUTLINED_FUNCTION_216(4.8151e-34);
      OUTLINED_FUNCTION_102(v149, v150);
      OUTLINED_FUNCTION_5_1();
      *(v148 + 4) = v57;
      OUTLINED_FUNCTION_173();
      v202[0] = v34;
      v151 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v152 = OUTLINED_FUNCTION_208();
      if (v152)
      {
        v153 = v152;
        v154 = OUTLINED_FUNCTION_85();
        OUTLINED_FUNCTION_202(v154, v155, v156);
      }

      else
      {
        v153 = OUTLINED_FUNCTION_112();
        *v170 = v34;
      }

      (v83)(v153);
      OUTLINED_FUNCTION_185();

      v171 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v171, v73, v172);
      OUTLINED_FUNCTION_215();
      *(v148 + 14) = v139;
      OUTLINED_FUNCTION_214(&dword_221989000, v144, v41, "%s %s");
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      v173 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v173);
      EnumTagSinglePayload = v201;
    }

    else
    {

      v164 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v164);
    }

    goto LABEL_46;
  }

  v157 = v34;
  v34 = *(v30 + qword_27CFDED20 + 17);

  sub_2219EC1F8(v157, v73, 1, v201);
  v111 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_202(v157, v73, 1);
  v158 = OUTLINED_FUNCTION_169();
  if (v34)
  {
    if (v158)
    {
      OUTLINED_FUNCTION_103();
      v159 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v159);
      v160 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v160, v161);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_158();
      v202[0] = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v162 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v162, v163);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v57;
      v123 = "%sFailed with %{sensitive}s";
      goto LABEL_42;
    }
  }

  else if (v158)
  {
    OUTLINED_FUNCTION_103();
    v165 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v165);
    v166 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v166, v167);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_159();
    v202[0] = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v168 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v168, v169);
    OUTLINED_FUNCTION_5_1();
    *(v34 + 14) = v57;
    v123 = "%sFailed with %{private}s";
    goto LABEL_42;
  }

LABEL_43:

LABEL_46:
  v174 = v198;
  OUTLINED_FUNCTION_133(v198, v107, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v30 + 56) & 1) == 0)
  {
    v175 = *(v30 + 40);
    v176 = *(v30 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      OUTLINED_FUNCTION_176(qword_27CFBC780);
      v200 = v177;
      v201 = v178;
      OUTLINED_FUNCTION_189(v179);
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_187();

      OUTLINED_FUNCTION_28_1();
      v180 = sub_221BCE3F8();
      v181 = OUTLINED_FUNCTION_101(v180, 1000.0);
      OUTLINED_FUNCTION_100(v181, v182, 1.0e-15);
      sub_221BCD978();
      OUTLINED_FUNCTION_168();
      v183 = v203;
      v184 = v204;
      OUTLINED_FUNCTION_77(v207);
      OUTLINED_FUNCTION_7_4();
      v190[0] = v184;
      OUTLINED_FUNCTION_31_1();
      sub_221BB52B0(v185, v186, v187, v188, v189, v174, v34, v183, v190[0]);
      OUTLINED_FUNCTION_155();
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DF75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v146 = v26;
  v28 = v27;
  v148 = v29;
  v149 = v30;
  v147 = v31;
  v32 = v21;
  v34 = v33;
  v36 = v35;
  v37 = sub_221BCCE38();
  v38 = OUTLINED_FUNCTION_0_2(v37);
  v150 = v39;
  v151 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_0();
  v44 = (v43 - v42);
  v45 = sub_221BCDFB8();
  v46 = OUTLINED_FUNCTION_0_2(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_22_2();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_156();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v56);
    return;
  }

  v144 = v28;
  v145 = v36;
  OUTLINED_FUNCTION_61_0();
  v58 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v58 + v21, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v59 = OUTLINED_FUNCTION_151(v22);
  v60 = 0;
  OUTLINED_FUNCTION_175(v59, &a16);
  if (!v61)
  {
    v62 = OUTLINED_FUNCTION_90(v48);
    v63(v62, v22, v45);
    sub_221BCDF88();
    v60 = sub_221BCDFA8();
    v58 = *(v48 + 8);
    v58(v23, v45);
    v64 = OUTLINED_FUNCTION_16();
    (v58)(v64);
  }

  if (*(v21 + qword_27CFBC798))
  {
    v65 = *(v21 + qword_27CFBC798);

    OUTLINED_FUNCTION_160(v66);
  }

  v67 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a12);
  if (!v68)
  {
LABEL_12:
    if ((v34 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v67[241]);
  v22 = v154;
  if (v154)
  {
    v69 = v155;
    OUTLINED_FUNCTION_62_0(&v152, v154);
    v70 = v34;
    v71 = v60;
    v58 = (v69 + 32);
    v72 = *(v69 + 32);

    OUTLINED_FUNCTION_3_11();
    v72();
    v67 = &unk_27CFBC000;
    v60 = v71;
    v34 = v70;

    __swift_destroy_boxed_opaque_existential_0(&v152);
    goto LABEL_12;
  }

  sub_2219EC58C(&v152, &qword_27CFB7FD0);
  if ((v34 & 0x100) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v67[241]);
    v73 = v154;
    if (v154)
    {
      v22 = v155;
      OUTLINED_FUNCTION_15_3();
      (*(v150 + 104))(v44, *MEMORY[0x277CD8AC8], v151);
      (*(v22 + 24))(v44, v73, v22);
      v74 = *(v150 + 8);
      v75 = OUTLINED_FUNCTION_140();
      v76(v75);
      __swift_destroy_boxed_opaque_existential_0(&v152);
    }

    else
    {
      sub_2219EC58C(&v152, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0(qword_27CFBC768);
    if (v73)
    {
      v79 = *(v78 + 8);
      v80 = OUTLINED_FUNCTION_94();
      v147(v80);

      v148(v145, v34, 0);
      v81 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_198();
      v149(v145, v34, 0);
      if (os_log_type_enabled(v81, v44))
      {
        v82 = OUTLINED_FUNCTION_103();
        OUTLINED_FUNCTION_105();
        v83 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_250(v83, v84);
        OUTLINED_FUNCTION_245();
        *(v82 + 4) = v60;
        OUTLINED_FUNCTION_173();
        v152 = v145;
        LOBYTE(v153) = v34 & 1;
        v85 = (v73)(&v152);
        OUTLINED_FUNCTION_250(v85, v86);
        OUTLINED_FUNCTION_5_1();
        *(v82 + 14) = v34;
        OUTLINED_FUNCTION_214(&dword_221989000, v81, v44, "%s%s");
        OUTLINED_FUNCTION_190();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v87 = OUTLINED_FUNCTION_94();
        v144(v87);
      }

      else
      {

        v121 = OUTLINED_FUNCTION_94();
        v144(v121);
      }

      goto LABEL_39;
    }

    v148(v145, v34, 0);
    v73 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_153_0();
    v149(v145, v34, 0);
    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_103();
      v106 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v106);
      v107 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v107, v108);
      OUTLINED_FUNCTION_149();
      *(v34 + 4) = v22;
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_218(qword_27CFDED20);
      v110 = sub_2219C1948(v145, v34 & 1, v109, v146);
      OUTLINED_FUNCTION_102(v110, v111);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v34;
      v114 = "%sCompleted with %s";
LABEL_37:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v112, v113, v114);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_38;
    }

    goto LABEL_38;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v67[241]);
  v73 = v154;
  if (v154)
  {
    OUTLINED_FUNCTION_13_3();
    sub_2219E7D00(v44);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v77();
    (*(v150 + 8))(v44, v151);
    __swift_destroy_boxed_opaque_existential_0(&v152);
  }

  else
  {
    sub_2219EC58C(&v152, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC770);
  if (v73)
  {
    v89 = *(v88 + 8);

    v90 = OUTLINED_FUNCTION_1_0();
    v91 = OUTLINED_FUNCTION_207(v90);
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    if (os_log_type_enabled(v91, v58))
    {
      v92 = OUTLINED_FUNCTION_103();
      v93 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_146(v93);
      v94 = OUTLINED_FUNCTION_213(4.8151e-34);
      v96 = OUTLINED_FUNCTION_102(v94, v95);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2080;
      v97 = sub_221BCE198();
      v143 = v60;
      if (!v97)
      {
        v97 = OUTLINED_FUNCTION_17_2();
      }

      v98 = v97;
      v73();
      v100 = v99;

      v101 = OUTLINED_FUNCTION_64();
      v103 = sub_2219A6360(v101, v100, v102);

      *(v92 + 14) = v103;
      OUTLINED_FUNCTION_201(&dword_221989000, v104, v58, "%s %s");
      OUTLINED_FUNCTION_197();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v105 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v105);

      v60 = v143;
    }

    else
    {

      v122 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v122);
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_177(qword_27CFDED20);

  v73 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v115 = OUTLINED_FUNCTION_169();
  if (v34)
  {
    if (v115)
    {
      OUTLINED_FUNCTION_103();
      v116 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v116);
      v117 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v117, v118);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_158();
      v119 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v119, v120);
      OUTLINED_FUNCTION_5_1();
      *(v34 + 14) = v58;
      v114 = "%sFailed with %{sensitive}s";
      goto LABEL_37;
    }
  }

  else if (v115)
  {
    OUTLINED_FUNCTION_103();
    v123 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v123);
    v124 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v124, v125);
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_159();
    v126 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v126, v127);
    OUTLINED_FUNCTION_5_1();
    *(v34 + 14) = v58;
    v114 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  OUTLINED_FUNCTION_48_0(&a16);
  OUTLINED_FUNCTION_191(v60, v128, v129);
  if (v73 != 1 && (*(v32 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    OUTLINED_FUNCTION_176(qword_27CFBC780);
    OUTLINED_FUNCTION_189(v130);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v131 = sub_221BCE3F8();
    v132 = OUTLINED_FUNCTION_101(v131, 1000.0);
    OUTLINED_FUNCTION_100(v132, v133, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v134 = v153;
    OUTLINED_FUNCTION_77(&a12);
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v135, v136, v137, v138, v139, v140, v141, v142, v134);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219E0184(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v141) = a3;
  v140 = a2;
  v142 = a1;
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v133 - v11;
  v13 = sub_221BCDFB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v133 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v133 - v23;
  os_unfair_lock_lock((v4 + 32));
  if (*(v4 + 36))
  {

    os_unfair_lock_unlock((v4 + 32));
    return;
  }

  v136 = v9;
  *(v4 + 36) = 1;
  os_unfair_lock_unlock((v4 + 32));
  v25 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v4 + v25, v24, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);
  v139 = 0;
  v138 = 0;
  v137 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v14 + 32))(v20, v24, v13);
    sub_221BCDF88();
    v139 = sub_221BCDFA8();
    v138 = v27;
    v28 = *(v14 + 8);
    v28(v17, v13);
    v28(v20, v13);
  }

  if (*(v4 + qword_27CFBC798))
  {
    v29 = *(v4 + qword_27CFBC798);

    sub_2219E7A60(v30, v4);
  }

  v31 = off_27CFBC778;
  swift_beginAccess();
  v135 = v31;
  v32 = *&v31[v4];
  v33 = &unk_27CFBC000;
  if (*(v32 + 16))
  {
    sub_2219BAF0C(v4 + qword_27CFBC788, &v144, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = v146;
    if (v146)
    {
      v35 = v147;
      __swift_project_boxed_opaque_existential_0(&v144, v146);
      v36 = v6;
      v37 = v5;
      v38 = *(v35 + 32);

      v38(v39, 0x697274654D736961, 0xEA00000000007363, v34, v35);
      v33 = &unk_27CFBC000;
      v5 = v37;
      v6 = v36;

      __swift_destroy_boxed_opaque_existential_0(&v144);
    }

    else
    {
      sub_2219EC58C(&v144, &qword_27CFB7FD0);
    }
  }

  if (v141)
  {
    sub_2219BAF0C(v4 + v33[241], &v144, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v146;
    if (v146)
    {
      v134 = v5;
      v41 = v147;
      v141 = __swift_project_boxed_opaque_existential_0(&v144, v146);
      v42 = v142;
      v143[5] = v142;
      v43 = v142;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v143);
        v143[0] = v42;
        v44 = v42;
        v45 = sub_221BCE198();
        if (v45)
        {
          v46 = v45;
          sub_2219EBE84(v42, v140, 1);
        }

        else
        {
          v46 = swift_allocError();
          *v76 = v42;
        }

        v77 = sub_221BCC328();

        v78 = [v77 domain];
        v79 = sub_221BCD388();
        v81 = v80;

        v82 = [v77 code];
        v75 = v136;
        *v136 = v79;
        v75[1] = v81;
        v75[2] = v82;
        v74 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v74 = MEMORY[0x277CD8AC0];
        v75 = v136;
      }

      v83 = v134;
      (*(v6 + 104))(v75, *v74, v134);
      (*(v41 + 24))(v75, v40, v41);
      (*(v6 + 8))(v75, v83);
      __swift_destroy_boxed_opaque_existential_0(&v144);
    }

    else
    {
      sub_2219EC58C(&v144, &qword_27CFB7FD0);
      v42 = v142;
    }

    v51 = *(v4 + qword_27CFBC770);
    if (v51)
    {
      v84 = *(v4 + qword_27CFBC770 + 8);

      v85 = v140;
      sub_2219EBE78(v42, v140, 1);
      sub_22198BEB8(v51);
      v53 = sub_221BCCD68();
      v86 = sub_221BCDA78();

      sub_2219EBE84(v42, v85, 1);
      if (os_log_type_enabled(v53, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v144 = v88;
        *v87 = 136315394;
        v89 = sub_2219CB3CC();
        v91 = sub_2219A6360(v89, v90, &v144);

        *(v87 + 4) = v91;
        *(v87 + 12) = 2080;
        v143[0] = v42;
        v92 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v93 = sub_221BCE198();
        if (v93)
        {
          v94 = v93;
          sub_2219EBE84(v42, v140, 1);
        }

        else
        {
          v94 = swift_allocError();
          *v114 = v42;
        }

        v115 = v51(v94);
        v117 = v116;

        v118 = sub_2219A6360(v115, v117, &v144);

        *(v87 + 14) = v118;
        _os_log_impl(&dword_221989000, v53, v86, "%s %s", v87, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v88, -1, -1);
        MEMORY[0x223DA4C00](v87, -1, -1);
      }

      goto LABEL_45;
    }

    v95 = *(v4 + qword_27CFDED20 + 17);

    v96 = v140;
    sub_2219EBE78(v42, v140, 1);
    v63 = sub_221BCCD68();
    v97 = sub_221BCDA78();

    sub_2219EBE84(v42, v96, 1);
    v98 = os_log_type_enabled(v63, v97);
    if (v95)
    {
      if (v98)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v144 = v100;
        *v99 = 136315395;
        v101 = sub_2219CB3CC();
        v103 = sub_2219A6360(v101, v102, &v144);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2085;
        v143[0] = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v104 = sub_221BCE288();
        v106 = sub_2219A6360(v104, v105, &v144);

        *(v99 + 14) = v106;
        v107 = "%sFailed with %{sensitive}s";
LABEL_40:
        _os_log_impl(&dword_221989000, v63, v97, v107, v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v100, -1, -1);
        v73 = v99;
        goto LABEL_41;
      }
    }

    else if (v98)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v144 = v100;
      *v99 = 136315395;
      v108 = sub_2219CB3CC();
      v110 = sub_2219A6360(v108, v109, &v144);

      *(v99 + 4) = v110;
      *(v99 + 12) = 2081;
      v143[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v111 = sub_221BCE288();
      v113 = sub_2219A6360(v111, v112, &v144);

      *(v99 + 14) = v113;
      v107 = "%sFailed with %{private}s";
      goto LABEL_40;
    }

LABEL_42:

    goto LABEL_46;
  }

  sub_2219BAF0C(v4 + v33[241], &v144, &qword_27CFB7FD0, &qword_221BD2888);
  v47 = v146;
  if (v146)
  {
    v48 = v5;
    v49 = v147;
    __swift_project_boxed_opaque_existential_0(&v144, v146);
    (*(v6 + 104))(v12, *MEMORY[0x277CD8AC8], v48);
    (*(v49 + 24))(v12, v47, v49);
    (*(v6 + 8))(v12, v48);
    __swift_destroy_boxed_opaque_existential_0(&v144);
  }

  else
  {
    sub_2219EC58C(&v144, &qword_27CFB7FD0);
  }

  v50 = v142;
  v51 = *(v4 + qword_27CFBC768);
  if (!v51)
  {

    v63 = sub_221BCCD68();
    v64 = sub_221BCDA98();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v144 = v66;
      *v65 = 136315394;
      v67 = sub_2219CB3CC();
      v69 = sub_2219A6360(v67, v68, &v144);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = sub_2219C19DC(v50, v140, *(v4 + qword_27CFDED20 + 17));
      v72 = sub_2219A6360(v70, v71, &v144);

      *(v65 + 14) = v72;
      _os_log_impl(&dword_221989000, v63, v64, "%sCompleted with %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v66, -1, -1);
      v73 = v65;
LABEL_41:
      MEMORY[0x223DA4C00](v73, -1, -1);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v52 = *(v4 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v4 + qword_27CFBC768));

  v53 = sub_221BCCD68();
  v54 = sub_221BCDA98();

  if (!os_log_type_enabled(v53, v54))
  {
LABEL_45:

    sub_22198B60C(v51);
    goto LABEL_46;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v143[0] = v56;
  *v55 = 136315394;
  v57 = sub_2219CB3CC();
  v59 = sub_2219A6360(v57, v58, v143);

  *(v55 + 4) = v59;
  *(v55 + 12) = 2080;
  v144 = v50;
  v145 = v140;
  v60 = v51(&v144);
  v62 = sub_2219A6360(v60, v61, v143);

  *(v55 + 14) = v62;
  _os_log_impl(&dword_221989000, v53, v54, "%s%s", v55, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v56, -1, -1);
  MEMORY[0x223DA4C00](v55, -1, -1);
  sub_22198B60C(v51);

LABEL_46:
  v119 = v137;
  v120 = v139;
  v121 = v138;
  sub_2219E7E58(v139, v138, v137 == 1);
  if (v119 != 1 && (*(v4 + 56) & 1) == 0)
  {
    v122 = *(v4 + 40);
    v123 = *(v4 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v124 = *(v4 + qword_27CFBC780);
      v141 = *(v4 + qword_27CFBC780 + 8);
      v142 = v124;
      v125 = *(v4 + qword_27CFBC780 + 16);
      v126 = sub_2219CB440();
      v128 = v127;
      v144 = 0;
      v145 = 0xE000000000000000;
      sub_221BCDE68();
      v129 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v129);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v130 = v144;
      v131 = v145;
      v132 = *&v135[v4];

      sub_221BB52B0(v142, v141, v125, v126, v128, v120, v121, v130, v131);
    }
  }
}

void sub_2219E10FC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v123) = a3;
  v7 = sub_221BCCE38();
  v122 = *(v7 - 8);
  v8 = *(v122 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v117 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v117 - v21;
  os_unfair_lock_lock((v4 + 32));
  if (*(v4 + 36))
  {

    os_unfair_lock_unlock((v4 + 32));
    return;
  }

  v118 = a1;
  v119 = a2;
  *(v4 + 36) = 1;
  os_unfair_lock_unlock((v4 + 32));
  v23 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v4 + v23, v22, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v11);
  v25 = 0;
  v121 = 0;
  v120 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v18, v22, v11);
    sub_221BCDF88();
    v25 = sub_221BCDFA8();
    v121 = v26;
    v27 = *(v12 + 8);
    v27(v15, v11);
    v27(v18, v11);
  }

  if (*(v4 + qword_27CFBC798))
  {
    v28 = *(v4 + qword_27CFBC798);

    sub_2219E7A60(v29, v4);
  }

  v30 = off_27CFBC778;
  swift_beginAccess();
  v117 = v30;
  v31 = *&v30[v4];
  v32 = &unk_27CFBC000;
  if (*(v31 + 16))
  {
    sub_2219BAF0C(v4 + qword_27CFBC788, &v125, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = v127;
    if (v127)
    {
      v34 = v128;
      __swift_project_boxed_opaque_existential_0(&v125, v127);
      v35 = v7;
      v36 = v25;
      v37 = *(v34 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v33, v34);
      v32 = &unk_27CFBC000;
      v25 = v36;
      v7 = v35;

      __swift_destroy_boxed_opaque_existential_0(&v125);
    }

    else
    {
      sub_2219EC58C(&v125, &qword_27CFB7FD0);
    }
  }

  if (v123)
  {
    sub_2219BAF0C(v4 + v32[241], &v125, &qword_27CFB7FD0, &qword_221BD2888);
    v39 = v127;
    if (v127)
    {
      v40 = v128;
      __swift_project_boxed_opaque_existential_0(&v125, v127);
      sub_2219E7D00(v10);
      (*(v40 + 24))(v10, v39, v40);
      (*(v122 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_0(&v125);
    }

    else
    {
      sub_2219EC58C(&v125, &qword_27CFB7FD0);
    }

    v44 = *(v4 + qword_27CFBC770);
    if (v44)
    {
      v123 = v25;
      v45 = *(v4 + qword_27CFBC770 + 8);

      sub_22198BEB8(v44);
      v46 = sub_221BCCD68();
      v47 = sub_221BCDA78();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v125 = v49;
        *v48 = 136315394;
        v50 = sub_2219CB3CC();
        v52 = sub_2219A6360(v50, v51, &v125);

        *(v48 + 4) = v52;
        *(v48 + 12) = 2080;
        v53 = sub_221BCE198();
        if (!v53)
        {
          v53 = swift_allocError();
        }

        v54 = v53;
        v55 = v44();
        v57 = v56;

        v58 = sub_2219A6360(v55, v57, &v125);

        *(v48 + 14) = v58;
        _os_log_impl(&dword_221989000, v46, v47, "%s %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v49, -1, -1);
        MEMORY[0x223DA4C00](v48, -1, -1);
        sub_22198B60C(v44);
      }

      else
      {

        sub_22198B60C(v44);
      }

      v25 = v123;
      goto LABEL_41;
    }

    v72 = *(v4 + qword_27CFDED20 + 17);

    v73 = sub_221BCCD68();
    v74 = sub_221BCDA78();

    v75 = os_log_type_enabled(v73, v74);
    if (v72)
    {
      if (v75)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v125 = v77;
        *v76 = 136315395;
        v78 = sub_2219CB3CC();
        v80 = v25;
        v81 = sub_2219A6360(v78, v79, &v125);

        *(v76 + 4) = v81;
        *(v76 + 12) = 2085;
        v82 = sub_221BCE288();
        v84 = sub_2219A6360(v82, v83, &v125);

        *(v76 + 14) = v84;
        v25 = v80;
        v85 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v73, v74, v85, v76, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v77, -1, -1);
        v95 = v76;
        goto LABEL_39;
      }
    }

    else if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v125 = v77;
      *v76 = 136315395;
      v96 = sub_2219CB3CC();
      v98 = v25;
      v99 = sub_2219A6360(v96, v97, &v125);

      *(v76 + 4) = v99;
      *(v76 + 12) = 2081;
      v100 = sub_221BCE288();
      v102 = sub_2219A6360(v100, v101, &v125);

      *(v76 + 14) = v102;
      v25 = v98;
      v85 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_41;
  }

  sub_2219BAF0C(v4 + v32[241], &v125, &qword_27CFB7FD0, &qword_221BD2888);
  v41 = v127;
  if (v127)
  {
    v42 = v128;
    __swift_project_boxed_opaque_existential_0(&v125, v127);
    v43 = v122;
    (*(v122 + 104))(v10, *MEMORY[0x277CD8AC8], v7);
    (*(v42 + 24))(v10, v41, v42);
    (*(v43 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_0(&v125);
  }

  else
  {
    sub_2219EC58C(&v125, &qword_27CFB7FD0);
  }

  v59 = *(v4 + qword_27CFBC768);
  if (!v59)
  {

    v73 = sub_221BCCD68();
    v86 = sub_221BCDA98();

    if (os_log_type_enabled(v73, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v125 = v88;
      *v87 = 136315394;
      v89 = sub_2219CB3CC();
      v91 = sub_2219A6360(v89, v90, &v125);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v92 = sub_2219C19DC(v118, v119, *(v4 + qword_27CFDED20 + 17));
      v94 = sub_2219A6360(v92, v93, &v125);

      *(v87 + 14) = v94;
      _os_log_impl(&dword_221989000, v73, v86, "%sCompleted with %s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v88, -1, -1);
      v95 = v87;
LABEL_39:
      MEMORY[0x223DA4C00](v95, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v60 = *(v4 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v4 + qword_27CFBC768));

  v61 = sub_221BCCD68();
  v62 = sub_221BCDA98();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v124 = v64;
    *v63 = 136315394;
    v65 = sub_2219CB3CC();
    v67 = v25;
    v68 = sub_2219A6360(v65, v66, &v124);

    *(v63 + 4) = v68;
    *(v63 + 12) = 2080;
    v125 = v118;
    v126 = v119;
    v69 = v59(&v125);
    v71 = sub_2219A6360(v69, v70, &v124);

    *(v63 + 14) = v71;
    v25 = v67;
    _os_log_impl(&dword_221989000, v61, v62, "%s%s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v64, -1, -1);
    MEMORY[0x223DA4C00](v63, -1, -1);
    sub_22198B60C(v59);
  }

  else
  {

    sub_22198B60C(v59);
  }

LABEL_41:
  v103 = v120;
  v104 = v121;
  sub_2219E7E58(v25, v121, v120 == 1);
  if (v103 != 1 && (*(v4 + 56) & 1) == 0)
  {
    v105 = *(v4 + 40);
    v106 = *(v4 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v107 = *(v4 + qword_27CFBC780);
      v122 = *(v4 + qword_27CFBC780 + 8);
      v123 = v107;
      v108 = *(v4 + qword_27CFBC780 + 16);
      v109 = v25;
      v110 = sub_2219CB440();
      v112 = v111;
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_221BCDE68();
      v113 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v113);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v114 = v125;
      v115 = v126;
      v116 = *&v117[v4];

      sub_221BB52B0(v123, v122, v108, v110, v112, v109, v104, v114, v115);
    }
  }
}

void sub_2219E1E30(uint64_t a1)
{
  v2 = v1;
  v4 = *a1;
  v147 = *(a1 + 8);
  v5 = *(a1 + 24);
  v146 = *(a1 + 16);
  v145 = v5;
  LODWORD(v148) = *(a1 + 32);
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v144 = (&v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v143 = &v138 - v11;
  v12 = sub_221BCDFB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v138 - v22;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v141 = v7;
  v142 = v6;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v24 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v24, v23, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v12);
  v26 = 0;
  v149 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v13 + 32))(v19, v23, v12);
    sub_221BCDF88();
    v26 = sub_221BCDFA8();
    v149 = v27;
    v28 = *(v13 + 8);
    v28(v16, v12);
    v28(v19, v12);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v29 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v30, v2);
  }

  v31 = off_27CFBC778;
  swift_beginAccess();
  v140 = v31;
  v32 = *&v31[v2];
  v33 = &unk_27CFBC000;
  if (*(v32 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v154, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = *(&v155 + 1);
    if (*(&v155 + 1))
    {
      v35 = v156;
      __swift_project_boxed_opaque_existential_0(&v154, *(&v155 + 1));
      v139 = v4;
      v36 = v26;
      v37 = *(v35 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v34, v35);
      v33 = &unk_27CFBC000;
      v4 = v139;
      v26 = v36;

      __swift_destroy_boxed_opaque_existential_0(&v154);
    }

    else
    {
      sub_2219EC58C(&v154, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 34))
  {
    sub_2219BAF0C(v2 + v33[241], &v154, &qword_27CFB7FD0, &qword_221BD2888);
    v39 = *(&v155 + 1);
    if (*(&v155 + 1))
    {
      v148 = v156;
      v40 = __swift_project_boxed_opaque_existential_0(&v154, *(&v155 + 1));
      v153 = v4;
      v41 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v150);
        *&v150 = v4;
        v42 = v4;
        v43 = sub_221BCE198();
        v147 = v40;
        if (v43)
        {
          v44 = v43;
          v45 = v4;
          sub_2219EC58C(a1, &qword_27CFB8120);
        }

        else
        {
          v44 = swift_allocError();
          v45 = v4;
          *v81 = v4;
        }

        v82 = sub_221BCC328();

        v83 = [v82 domain];
        v84 = sub_221BCD388();
        v86 = v85;

        v87 = [v82 code];
        v80 = v144;
        *v144 = v84;
        v80[1] = v86;
        v80[2] = v87;
        v79 = MEMORY[0x277CD8AB8];
        v4 = v45;
      }

      else
      {
        v79 = MEMORY[0x277CD8AC0];
        v80 = v144;
      }

      v88 = v141;
      v89 = v80;
      v90 = v142;
      (*(v141 + 104))(v80, *v79, v142);
      (*(v148 + 24))(v89, v39);
      (*(v88 + 8))(v89, v90);
      __swift_destroy_boxed_opaque_existential_0(&v154);
    }

    else
    {
      sub_2219EC58C(&v154, &qword_27CFB7FD0);
    }

    v91 = *(v2 + qword_27CFBC770);
    if (v91)
    {
      v92 = v4;
      LODWORD(v147) = EnumTagSinglePayload;
      v148 = v26;
      v93 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(a1, &v154, &qword_27CFB8120, &qword_221BD2A40);
      sub_22198BEB8(v91);
      v94 = sub_221BCCD68();
      v95 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&v154 = v146;
        *v96 = 136315394;
        v97 = sub_2219CB3CC();
        v99 = sub_2219A6360(v97, v98, &v154);

        *(v96 + 4) = v99;
        *(v96 + 12) = 2080;
        *&v150 = v92;
        v100 = v92;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v101 = sub_221BCE198();
        if (v101)
        {
          v102 = v101;
          sub_2219EC58C(a1, &qword_27CFB8120);
        }

        else
        {
          v102 = swift_allocError();
          *v121 = v92;
        }

        v122 = v91(v102);
        v124 = v123;

        v125 = sub_2219A6360(v122, v124, &v154);

        *(v96 + 14) = v125;
        _os_log_impl(&dword_221989000, v94, v95, "%s %s", v96, 0x16u);
        v126 = v146;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v126, -1, -1);
        MEMORY[0x223DA4C00](v96, -1, -1);
      }

      sub_22198B60C(v91);
      v26 = v148;
      EnumTagSinglePayload = v147;
      goto LABEL_49;
    }

    v103 = v4;
    v104 = *(v2 + qword_27CFDED20 + 17);

    if (v104)
    {
      sub_2219BAF0C(a1, &v154, &qword_27CFB8120, &qword_221BD2A40);
      v67 = sub_221BCCD68();
      v105 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v67, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v154 = v107;
        *v106 = 136315395;
        v108 = sub_2219CB3CC();
        v110 = sub_2219A6360(v108, v109, &v154);

        *(v106 + 4) = v110;
        *(v106 + 12) = 2085;
        *&v150 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v111 = sub_221BCE288();
        v113 = sub_2219A6360(v111, v112, &v154);

        *(v106 + 14) = v113;
        v114 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v67, v105, v114, v106, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v107, -1, -1);
        v78 = v106;
        goto LABEL_44;
      }
    }

    else
    {
      sub_2219BAF0C(a1, &v154, &qword_27CFB8120, &qword_221BD2A40);
      v67 = sub_221BCCD68();
      v105 = sub_221BCDA78();

      sub_2219EC58C(a1, &qword_27CFB8120);
      if (os_log_type_enabled(v67, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        *&v154 = v107;
        *v106 = 136315395;
        v115 = sub_2219CB3CC();
        v117 = sub_2219A6360(v115, v116, &v154);

        *(v106 + 4) = v117;
        *(v106 + 12) = 2081;
        *&v150 = v103;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v118 = sub_221BCE288();
        v120 = sub_2219A6360(v118, v119, &v154);

        *(v106 + 14) = v120;
        v114 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_45:

    goto LABEL_49;
  }

  *&v150 = v4;
  *(&v150 + 1) = v147;
  *&v151 = v146;
  *(&v151 + 1) = v145;
  v152 = v148 & 0x101;
  sub_2219BAF0C(v2 + v33[241], &v154, &qword_27CFB7FD0, &qword_221BD2888);
  v46 = *(&v155 + 1);
  if (*(&v155 + 1))
  {
    v47 = v156;
    __swift_project_boxed_opaque_existential_0(&v154, *(&v155 + 1));
    v48 = v141;
    v49 = v143;
    v50 = v142;
    (*(v141 + 104))(v143, *MEMORY[0x277CD8AC8], v142);
    (*(v47 + 24))(v49, v46, v47);
    (*(v48 + 8))(v49, v50);
    __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    sub_2219EC58C(&v154, &qword_27CFB7FD0);
  }

  v51 = *(v2 + qword_27CFBC768);
  if (!v51)
  {

    sub_2219BAF0C(a1, &v154, &qword_27CFB8120, &qword_221BD2A40);
    v67 = sub_221BCCD68();
    v68 = sub_221BCDA98();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v154 = v70;
      *v69 = 136315394;
      v71 = sub_2219CB3CC();
      v73 = sub_2219A6360(v71, v72, &v154);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v74 = sub_2219C1A84(&v150, *(v2 + qword_27CFDED20 + 17));
      v76 = v75;
      sub_2219EC58C(a1, &qword_27CFB8120);
      v77 = sub_2219A6360(v74, v76, &v154);

      *(v69 + 14) = v77;
      _os_log_impl(&dword_221989000, v67, v68, "%sCompleted with %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v70, -1, -1);
      v78 = v69;
LABEL_44:
      MEMORY[0x223DA4C00](v78, -1, -1);
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  v52 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768));

  sub_2219BAF0C(a1, &v154, &qword_27CFB8120, &qword_221BD2A40);
  v53 = sub_221BCCD68();
  v54 = sub_221BCDA98();

  if (!os_log_type_enabled(v53, v54))
  {

    sub_22198B60C(v51);
LABEL_30:
    sub_2219EC58C(a1, &qword_27CFB8120);
    goto LABEL_49;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  LODWORD(v147) = EnumTagSinglePayload;
  v57 = v56;
  v153 = v56;
  *v55 = 136315394;
  v58 = sub_2219CB3CC();
  v60 = sub_2219A6360(v58, v59, &v153);
  v148 = v26;
  v61 = v60;

  *(v55 + 4) = v61;
  *(v55 + 12) = 2080;
  v154 = v150;
  v155 = v151;
  LOWORD(v156) = v152;
  v62 = v51(&v154);
  v64 = v63;
  sub_2219EC58C(a1, &qword_27CFB8120);
  v65 = sub_2219A6360(v62, v64, &v153);
  v26 = v148;

  *(v55 + 14) = v65;
  _os_log_impl(&dword_221989000, v53, v54, "%s%s", v55, 0x16u);
  swift_arrayDestroy();
  v66 = v57;
  EnumTagSinglePayload = v147;
  MEMORY[0x223DA4C00](v66, -1, -1);
  MEMORY[0x223DA4C00](v55, -1, -1);
  sub_22198B60C(v51);

LABEL_49:
  v127 = v149;
  sub_2219E7E58(v26, v149, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0)
  {
    v128 = *(v2 + 40);
    v129 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v130 = *(v2 + qword_27CFBC780 + 8);
      v148 = *(v2 + qword_27CFBC780);
      v147 = v130;
      v131 = *(v2 + qword_27CFBC780 + 16);
      v132 = sub_2219CB440();
      v134 = v133;
      *&v154 = 0;
      *(&v154 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v135 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v135);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v136 = v154;
      v137 = *&v140[v2];

      sub_221BB52B0(v148, v147, v131, v132, v134, v26, v127, v136, *(&v136 + 1));
    }
  }
}

void sub_2219E2F94(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 8);
  v123 = *a1;
  v122 = v4;
  v5 = *(a1 + 24);
  v121 = *(a1 + 16);
  v120 = v5;
  LODWORD(v124) = *(a1 + 32);
  v6 = sub_221BCCE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v115 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v115 - v21;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v118 = v10;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v23 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v23, v22, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v11);
  v25 = 0;
  v125 = 0;
  v119 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v18, v22, v11);
    sub_221BCDF88();
    v25 = sub_221BCDFA8();
    v125 = v26;
    v27 = *(v12 + 8);
    v27(v15, v11);
    v27(v18, v11);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v28 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v29, v2);
  }

  v30 = off_27CFBC778;
  swift_beginAccess();
  v117 = v30;
  v31 = *&v30[v2];
  v32 = &unk_27CFBC000;
  if (*(v31 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v127, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = *(&v128 + 1);
    if (*(&v128 + 1))
    {
      v34 = v129;
      __swift_project_boxed_opaque_existential_0(&v127, *(&v128 + 1));
      v116 = v2;
      v35 = *(v34 + 32);

      v35(v36, 0x697274654D736961, 0xEA00000000007363, v33, v34);
      v32 = &unk_27CFBC000;
      v2 = v116;

      __swift_destroy_boxed_opaque_existential_0(&v127);
    }

    else
    {
      sub_2219EC58C(&v127, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 34))
  {
    sub_2219BAF0C(v2 + v32[241], &v127, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = *(&v128 + 1);
    if (*(&v128 + 1))
    {
      v38 = v129;
      __swift_project_boxed_opaque_existential_0(&v127, *(&v128 + 1));
      v39 = v118;
      sub_2219E7D00(v118);
      (*(v38 + 24))(v39, v37, v38);
      (*(v7 + 8))(v39, v6);
      __swift_destroy_boxed_opaque_existential_0(&v127);
    }

    else
    {
      sub_2219EC58C(&v127, &qword_27CFB7FD0);
    }

    v43 = *(v2 + qword_27CFBC770);
    if (v43)
    {
      v44 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v43);
      v45 = sub_221BCCD68();
      v46 = sub_221BCDA78();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v127 = v48;
        *v47 = 136315394;
        v49 = sub_2219CB3CC();
        v51 = sub_2219A6360(v49, v50, &v127);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        v52 = sub_221BCE198();
        v115 = v25;
        if (!v52)
        {
          v52 = swift_allocError();
        }

        v53 = v52;
        v54 = v43();
        v56 = v55;

        v57 = sub_2219A6360(v54, v56, &v127);

        *(v47 + 14) = v57;
        _os_log_impl(&dword_221989000, v45, v46, "%s %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v48, -1, -1);
        MEMORY[0x223DA4C00](v47, -1, -1);
        sub_22198B60C(v43);

        v25 = v115;
      }

      else
      {

        sub_22198B60C(v43);
      }

      goto LABEL_42;
    }

    v72 = *(v2 + qword_27CFDED20 + 17);

    v73 = sub_221BCCD68();
    v74 = sub_221BCDA78();

    v75 = os_log_type_enabled(v73, v74);
    if (v72)
    {
      if (v75)
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v127 = v77;
        *v76 = 136315395;
        v78 = sub_2219CB3CC();
        v80 = v25;
        v81 = sub_2219A6360(v78, v79, &v127);

        *(v76 + 4) = v81;
        *(v76 + 12) = 2085;
        v82 = sub_221BCE288();
        v84 = sub_2219A6360(v82, v83, &v127);

        *(v76 + 14) = v84;
        v25 = v80;
        v85 = "%sFailed with %{sensitive}s";
LABEL_37:
        v95 = v74;
        goto LABEL_38;
      }
    }

    else if (v75)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v127 = v77;
      *v76 = 136315395;
      v96 = sub_2219CB3CC();
      v98 = v25;
      v99 = sub_2219A6360(v96, v97, &v127);

      *(v76 + 4) = v99;
      *(v76 + 12) = 2081;
      v100 = sub_221BCE288();
      v102 = sub_2219A6360(v100, v101, &v127);

      *(v76 + 14) = v102;
      v25 = v98;
      v85 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  *&v130 = v123;
  *(&v130 + 1) = v122;
  *&v131 = v121;
  *(&v131 + 1) = v120;
  v132 = v124 & 0x101;
  sub_2219BAF0C(v2 + v32[241], &v127, &qword_27CFB7FD0, &qword_221BD2888);
  v40 = *(&v128 + 1);
  if (*(&v128 + 1))
  {
    v41 = v129;
    __swift_project_boxed_opaque_existential_0(&v127, *(&v128 + 1));
    v42 = v118;
    (*(v7 + 104))(v118, *MEMORY[0x277CD8AC8], v6);
    (*(v41 + 24))(v42, v40, v41);
    (*(v7 + 8))(v42, v6);
    __swift_destroy_boxed_opaque_existential_0(&v127);
  }

  else
  {
    sub_2219EC58C(&v127, &qword_27CFB7FD0);
  }

  v58 = *(v2 + qword_27CFBC768);
  if (!v58)
  {

    sub_2219BAF0C(a1, &v127, &qword_27CFB8110, &qword_221BD2A30);
    v73 = sub_221BCCD68();
    v86 = sub_221BCDA98();

    if (os_log_type_enabled(v73, v86))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v127 = v77;
      *v76 = 136315394;
      v87 = sub_2219CB3CC();
      v89 = v25;
      v90 = sub_2219A6360(v87, v88, &v127);

      *(v76 + 4) = v90;
      *(v76 + 12) = 2080;
      v91 = sub_2219C1A84(&v130, *(v2 + qword_27CFDED20 + 17));
      v93 = v92;
      sub_2219EC58C(a1, &qword_27CFB8110);
      v94 = sub_2219A6360(v91, v93, &v127);
      v25 = v89;

      *(v76 + 14) = v94;
      v85 = "%sCompleted with %s";
      v95 = v86;
LABEL_38:
      _os_log_impl(&dword_221989000, v73, v95, v85, v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v77, -1, -1);
      MEMORY[0x223DA4C00](v76, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    sub_2219EC58C(a1, &qword_27CFB8110);
    goto LABEL_42;
  }

  v59 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768));

  sub_2219BAF0C(a1, &v127, &qword_27CFB8110, &qword_221BD2A30);
  v60 = sub_221BCCD68();
  v61 = sub_221BCDA98();

  if (!os_log_type_enabled(v60, v61))
  {

    sub_22198B60C(v58);
    goto LABEL_41;
  }

  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v126 = v63;
  *v62 = 136315394;
  v64 = sub_2219CB3CC();
  v66 = sub_2219A6360(v64, v65, &v126);
  v115 = v25;
  v67 = v66;

  *(v62 + 4) = v67;
  *(v62 + 12) = 2080;
  v127 = v130;
  v128 = v131;
  LOWORD(v129) = v132;
  v68 = v58(&v127);
  v70 = v69;
  sub_2219EC58C(a1, &qword_27CFB8110);
  v71 = sub_2219A6360(v68, v70, &v126);
  v25 = v115;

  *(v62 + 14) = v71;
  _os_log_impl(&dword_221989000, v60, v61, "%s%s", v62, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v63, -1, -1);
  MEMORY[0x223DA4C00](v62, -1, -1);
  sub_22198B60C(v58);

LABEL_42:
  v103 = v119;
  v104 = v125;
  sub_2219E7E58(v25, v125, v119 == 1);
  if (v103 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v105 = *(v2 + 40);
    v106 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v124 = *(v2 + qword_27CFBC780);
      v115 = v25;
      v107 = *(v2 + qword_27CFBC780 + 8);
      v108 = *(v2 + qword_27CFBC780 + 16);
      v109 = sub_2219CB440();
      v111 = v110;
      *&v127 = 0;
      *(&v127 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v112 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v112);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v113 = v127;
      v114 = *&v117[v2];

      sub_221BB52B0(v124, v107, v108, v109, v111, v115, v104, v113, *(&v113 + 1));
    }
  }
}

void sub_2219E3E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v23;
  a21 = v24;
  v25 = v21;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v197 = v32;
  v195 = sub_221BCCE38();
  v33 = OUTLINED_FUNCTION_0_2(v195);
  v194 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_231();
  v38 = sub_221BCDFB8();
  v39 = OUTLINED_FUNCTION_0_2(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_5();
  v46 = (v44 - v45);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_22_2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v51);
  v53 = v190 - v52;
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v54);
    return;
  }

  LODWORD(v192) = v27;
  v190[2] = v31;
  OUTLINED_FUNCTION_61_0();
  v56 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65();
  sub_2219BAF0C(v21 + v56, v53, &qword_27CFB7FC8, &qword_221BD2880);
  v57 = OUTLINED_FUNCTION_151(v53);
  v196 = 0;
  v193 = 0;
  OUTLINED_FUNCTION_175(v57, &a13);
  if (!v58)
  {
    v59 = OUTLINED_FUNCTION_90(v41);
    v60(v59, v53, v38);
    sub_221BCDF88();
    v196 = sub_221BCDFA8();
    v193 = v61;
    v62 = *(v41 + 8);
    v62(v46, v38);
    v63 = OUTLINED_FUNCTION_16();
    (v62)(v63);
  }

  if (*(v21 + qword_27CFBC798))
  {
    v64 = *(v21 + qword_27CFBC798);

    OUTLINED_FUNCTION_110(v65);
  }

  v66 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v190[0] = v66;
  v67 = *&v66[v25];
  v68 = v192;
  if (!*(v67 + 16))
  {
LABEL_12:
    if (v68)
    {
      goto LABEL_13;
    }

LABEL_18:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v73 = v202;
    if (v202)
    {
      OUTLINED_FUNCTION_13_3();
      v80 = *MEMORY[0x277CD8AC8];
      OUTLINED_FUNCTION_227();
      v81 = v195;
      v82(v22);
      v83 = OUTLINED_FUNCTION_55_0();
      v84(v83);
      v85 = *(v46 + 1);
      v46 = (v46 + 8);
      v85(v22, v81);
      __swift_destroy_boxed_opaque_existential_0(&v199);
    }

    else
    {
      sub_2219EC58C(&v199, &qword_27CFB7FD0);
    }

    v86 = v197;
    OUTLINED_FUNCTION_45_0(qword_27CFBC768);
    v88 = qword_27CFBC758;
    if (v73)
    {
      v89 = *(v87 + 8);
      OUTLINED_FUNCTION_228(v73);
      v90 = OUTLINED_FUNCTION_137();
      v92 = *(v91 - 256);
      sub_2219EBD1C(v90, v92, v29, 0);
      v22 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_246();
      if (os_log_type_enabled(v22, v46))
      {
        v93 = OUTLINED_FUNCTION_103();
        v194 = v29;
        v94 = v93;
        v197 = OUTLINED_FUNCTION_105();
        v198[0] = v197;
        v95 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_150(v95, v96);
        v195 = v89;
        OUTLINED_FUNCTION_245();
        *(v94 + 4) = v56;
        *(v94 + 12) = 2080;
        v199 = v86;
        v200 = v92;
        v97 = v194;
        v201 = v194;
        v98 = v73(&v199);
        v100 = v99;
        sub_2219EBD6C(v86, v92, v97, 0);
        v101 = sub_2219A6360(v98, v100, v198);

        *(v94 + 14) = v101;
        OUTLINED_FUNCTION_201(&dword_221989000, v102, v46, "%s%s");
        OUTLINED_FUNCTION_190();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v103);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v104);
        sub_22198B60C(v73);

        goto LABEL_49;
      }

      sub_22198B60C(v73);
      v123 = v86;
      v124 = v92;
    }

    else
    {

      v105 = OUTLINED_FUNCTION_137();
      sub_2219EBD1C(v105, *(v106 - 256), v29, 0);
      v107 = v25 + v88;
      v73 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_188();
      if (OUTLINED_FUNCTION_211())
      {
        OUTLINED_FUNCTION_103();
        v108 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_46_0(v108);
        v109 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v109, v110);
        OUTLINED_FUNCTION_149();
        unk_27CFBC004 = v46;
        OUTLINED_FUNCTION_83();
        v111 = *(v25 + qword_27CFDED20 + 17);
        v112 = OUTLINED_FUNCTION_86();
        sub_2219C1B40(v112, v113, v29, v114);
        OUTLINED_FUNCTION_185();
        v115 = OUTLINED_FUNCTION_86();
        sub_2219EBD6C(v115, v116, v29, 0);
        v117 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v117, v46, v118);
        OUTLINED_FUNCTION_215();
        *(&qword_27CFBC008 + 6) = v107;
        OUTLINED_FUNCTION_51_0(&dword_221989000, v119, v120, "%sCompleted with %s");
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00](v121);
LABEL_44:
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_45;
      }

      v123 = OUTLINED_FUNCTION_86();
    }

    sub_2219EBD6C(v123, v124, v29, 0);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v46 = v202;
  if (v202)
  {
    v69 = v203;
    OUTLINED_FUNCTION_62_0(&v199, v202);
    v70 = v29;
    v56 = v69 + 32;
    v71 = *(v69 + 32);

    OUTLINED_FUNCTION_3_11();
    v71(v72);
    v68 = v192;
    v29 = v70;

    __swift_destroy_boxed_opaque_existential_0(&v199);
    goto LABEL_12;
  }

  sub_2219EC58C(&v199, &qword_27CFB7FD0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v73 = v202;
  if (v202)
  {
    v74 = v29;
    v22 = v203;
    v192 = __swift_project_boxed_opaque_existential_0(&v199, v202);
    v75 = v197;
    OUTLINED_FUNCTION_244();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v76 = sub_221BCE198();
      if (v76)
      {
        v77 = v76;
        v78 = OUTLINED_FUNCTION_137();
        sub_2219EBD6C(v78, *(v79 - 256), v29, 1);
      }

      else
      {
        v77 = OUTLINED_FUNCTION_17_2();
        *v125 = v75;
      }

      v126 = sub_221BCC328();

      v127 = [v126 domain];
      v128 = sub_221BCD388();
      v130 = v129;

      v46 = [v126 code];
      v131 = v191;
      *v191 = v128;
      v131[1] = v130;
      v131[2] = v46;
      v122 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v122 = MEMORY[0x277CD8AC0];
    }

    v132 = *v122;
    OUTLINED_FUNCTION_227();
    v134 = v133;
    v135 = v195;
    v136(v133);
    v137 = *(v22 + 24);
    OUTLINED_FUNCTION_74();
    v138();
    v139 = *(v46 + 1);
    v46 = (v46 + 8);
    v139(v134, v135);
    __swift_destroy_boxed_opaque_existential_0(&v199);
    v29 = v74;
  }

  else
  {
    sub_2219EC58C(&v199, &qword_27CFB7FD0);
    v75 = v197;
  }

  OUTLINED_FUNCTION_45_0(qword_27CFBC770);
  if (v73)
  {
    v141 = *(v140 + 8);

    v142 = OUTLINED_FUNCTION_137();
    OUTLINED_FUNCTION_242(v142, v143);
    v144 = OUTLINED_FUNCTION_1_0();
    v22 = OUTLINED_FUNCTION_207(v144);
    sub_221BCDA78();
    OUTLINED_FUNCTION_198();
    v145 = OUTLINED_FUNCTION_120();
    sub_2219EBD6C(v145, v146, v29, 1);
    if (os_log_type_enabled(v22, v29))
    {
      v147 = OUTLINED_FUNCTION_103();
      v197 = OUTLINED_FUNCTION_105();
      v199 = v197;
      v148 = OUTLINED_FUNCTION_248(4.8151e-34);
      OUTLINED_FUNCTION_102(v148, v149);
      OUTLINED_FUNCTION_149();
      *(v147 + 4) = v46;
      OUTLINED_FUNCTION_130();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v150 = OUTLINED_FUNCTION_208();
      if (v150)
      {
        v151 = v150;
        v152 = OUTLINED_FUNCTION_137();
        sub_2219EBD6C(v152, *(v153 - 256), v29, 1);
      }

      else
      {
        v151 = OUTLINED_FUNCTION_112();
        *v172 = v75;
      }

      v73(v151);
      OUTLINED_FUNCTION_184();

      v173 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v173, v75, v174);
      OUTLINED_FUNCTION_144();

      *(v147 + 14) = v141;
      OUTLINED_FUNCTION_247(&dword_221989000, v22, v29, "%s %s");
      OUTLINED_FUNCTION_190();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    v175 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v175);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_177(qword_27CFDED20);

  v154 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_242(v154, v155);
  v73 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v156 = OUTLINED_FUNCTION_120();
  sub_2219EBD6C(v156, v157, v29, 1);
  v158 = OUTLINED_FUNCTION_169();
  if (v22)
  {
    if (v158)
    {
      OUTLINED_FUNCTION_103();
      v159 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v159);
      v160 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v160, v161);
      OUTLINED_FUNCTION_149();
      *(v22 + 4) = v46;
      OUTLINED_FUNCTION_116(2085);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v162 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v162, v163);
      OUTLINED_FUNCTION_5_1();
      *(v22 + 14) = v75;
      v166 = "%sFailed with %{sensitive}s";
LABEL_43:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v164, v165, v166);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_44;
    }
  }

  else if (v158)
  {
    OUTLINED_FUNCTION_103();
    v167 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v167);
    v168 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v168, v169);
    OUTLINED_FUNCTION_149();
    *(v22 + 4) = v46;
    OUTLINED_FUNCTION_116(2081);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v170 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v170, v171);
    OUTLINED_FUNCTION_5_1();
    *(v22 + 14) = v75;
    v166 = "%sFailed with %{private}s";
    goto LABEL_43;
  }

LABEL_45:

LABEL_49:
  OUTLINED_FUNCTION_48_0(&a13);
  OUTLINED_FUNCTION_133(v196, v176, v177);
  if (v73 != 1 && (*(v25 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95() & 1) == 0)
  {
    v178 = *(v25 + qword_27CFBC780);
    v197 = *(v25 + qword_27CFBC780 + 8);
    OUTLINED_FUNCTION_189(v25 + qword_27CFBC780);
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v179 = sub_221BCE3F8();
    v180 = OUTLINED_FUNCTION_101(v179, 1000.0);
    OUTLINED_FUNCTION_100(v180, v181, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v182 = v199;
    v183 = v200;
    OUTLINED_FUNCTION_77(&a11);
    OUTLINED_FUNCTION_7_4();
    v190[0] = v183;
    OUTLINED_FUNCTION_31_1();
    sub_221BB52B0(v184, v185, v186, v187, v188, v189, v22, v182, v190[0]);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219E4A38(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v133) = a4;
  v9 = sub_221BCCE38();
  v131 = *(v9 - 8);
  v132 = v9;
  v10 = *(v131 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_221BCDFB8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v125 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v125 - v23;
  os_unfair_lock_lock((v5 + 32));
  if (*(v5 + 36))
  {

    os_unfair_lock_unlock((v5 + 32));
    return;
  }

  v127 = a1;
  v128 = a2;
  *(v5 + 36) = 1;
  os_unfair_lock_unlock((v5 + 32));
  v25 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v5 + v25, v24, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v13);
  v129 = 0;
  v130 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v14 + 32))(v20, v24, v13);
    sub_221BCDF88();
    v27 = sub_221BCDFA8();
    v129 = v28;
    v130 = v27;
    v29 = *(v14 + 8);
    v29(v17, v13);
    v29(v20, v13);
  }

  if (*(v5 + qword_27CFBC798))
  {
    v30 = *(v5 + qword_27CFBC798);

    sub_2219E7A60(v31, v5);
  }

  v32 = off_27CFBC778;
  swift_beginAccess();
  v126 = v32;
  v33 = *&v32[v5];
  v34 = &unk_27CFBC000;
  if (*(v33 + 16))
  {
    sub_2219BAF0C(v5 + qword_27CFBC788, &v135, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v138;
    if (v138)
    {
      v36 = v139;
      __swift_project_boxed_opaque_existential_0(&v135, v138);
      v37 = a3;
      v38 = EnumTagSinglePayload;
      v39 = *(v36 + 32);

      v39(v40, 0x697274654D736961, 0xEA00000000007363, v35, v36);
      v34 = &unk_27CFBC000;
      EnumTagSinglePayload = v38;
      a3 = v37;

      __swift_destroy_boxed_opaque_existential_0(&v135);
    }

    else
    {
      sub_2219EC58C(&v135, &qword_27CFB7FD0);
    }
  }

  if (v133)
  {
    sub_2219BAF0C(v5 + v34[241], &v135, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v138;
    if (v138)
    {
      v42 = v139;
      __swift_project_boxed_opaque_existential_0(&v135, v138);
      sub_2219E7D00(v12);
      (*(v42 + 24))(v12, v41, v42);
      (*(v131 + 8))(v12, v132);
      __swift_destroy_boxed_opaque_existential_0(&v135);
    }

    else
    {
      sub_2219EC58C(&v135, &qword_27CFB7FD0);
    }

    v47 = *(v5 + qword_27CFBC770);
    if (v47)
    {
      LODWORD(v133) = EnumTagSinglePayload;
      v48 = *(v5 + qword_27CFBC770 + 8);

      sub_22198BEB8(v47);
      v49 = sub_221BCCD68();
      v50 = sub_221BCDA78();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v135 = v52;
        *v51 = 136315394;
        v53 = sub_2219CB3CC();
        v55 = sub_2219A6360(v53, v54, &v135);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = sub_221BCE198();
        if (!v56)
        {
          v56 = swift_allocError();
        }

        v57 = v56;
        v58 = v47();
        v60 = v59;

        v61 = sub_2219A6360(v58, v60, &v135);

        *(v51 + 14) = v61;
        _os_log_impl(&dword_221989000, v49, v50, "%s %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v52, -1, -1);
        MEMORY[0x223DA4C00](v51, -1, -1);
        sub_22198B60C(v47);
      }

      else
      {

        sub_22198B60C(v47);
      }

      EnumTagSinglePayload = v133;
      goto LABEL_43;
    }

    v78 = *(v5 + qword_27CFDED20 + 17);

    v79 = sub_221BCCD68();
    v80 = sub_221BCDA78();

    v81 = os_log_type_enabled(v79, v80);
    if (v78)
    {
      if (v81)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v135 = v83;
        *v82 = 136315395;
        v84 = sub_2219CB3CC();
        v86 = sub_2219A6360(v84, v85, &v135);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2085;
        v87 = sub_221BCE288();
        v89 = sub_2219A6360(v87, v88, &v135);

        *(v82 + 14) = v89;
        v90 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v79, v80, v90, v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v83, -1, -1);
        v103 = v82;
        goto LABEL_39;
      }
    }

    else if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v135 = v83;
      *v82 = 136315395;
      v106 = sub_2219CB3CC();
      v108 = sub_2219A6360(v106, v107, &v135);

      *(v82 + 4) = v108;
      *(v82 + 12) = 2081;
      v109 = sub_221BCE288();
      v111 = sub_2219A6360(v109, v110, &v135);

      *(v82 + 14) = v111;
      v90 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_43;
  }

  sub_2219BAF0C(v5 + v34[241], &v135, &qword_27CFB7FD0, &qword_221BD2888);
  v43 = v138;
  if (v138)
  {
    v44 = v139;
    __swift_project_boxed_opaque_existential_0(&v135, v138);
    v46 = v131;
    v45 = v132;
    (*(v131 + 104))(v12, *MEMORY[0x277CD8AC8], v132);
    (*(v44 + 24))(v12, v43, v44);
    (*(v46 + 8))(v12, v45);
    __swift_destroy_boxed_opaque_existential_0(&v135);
  }

  else
  {
    sub_2219EC58C(&v135, &qword_27CFB7FD0);
  }

  v62 = v128;
  v63 = *(v5 + qword_27CFBC768);
  if (!v63)
  {

    v91 = v127;
    sub_2219EBC94(v127, v62, a3, 0);
    v79 = sub_221BCCD68();
    v92 = v62;
    v93 = sub_221BCDA98();

    if (os_log_type_enabled(v79, v93))
    {
      v94 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v135 = v133;
      *v94 = 136315394;
      v95 = sub_2219CB3CC();
      v97 = sub_2219A6360(v95, v96, &v135);

      *(v94 + 4) = v97;
      *(v94 + 12) = 2080;
      v98 = sub_2219C1B40(v91, v92, a3, *(v5 + qword_27CFDED20 + 17));
      v100 = v99;
      sub_2219EBCD8(v91, v92, a3, 0);
      v101 = sub_2219A6360(v98, v100, &v135);

      *(v94 + 14) = v101;
      _os_log_impl(&dword_221989000, v79, v93, "%sCompleted with %s", v94, 0x16u);
      v102 = v133;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v102, -1, -1);
      v103 = v94;
LABEL_39:
      MEMORY[0x223DA4C00](v103, -1, -1);
      goto LABEL_40;
    }

    v104 = v91;
    v105 = v62;
LABEL_42:
    sub_2219EBCD8(v104, v105, a3, 0);
    goto LABEL_43;
  }

  v64 = *(v5 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v5 + qword_27CFBC768));

  v65 = v127;
  sub_2219EBC94(v127, v62, a3, 0);
  v66 = sub_221BCCD68();
  v67 = sub_221BCDA98();

  if (!os_log_type_enabled(v66, v67))
  {

    sub_22198B60C(v63);
    v104 = v65;
    v105 = v62;
    goto LABEL_42;
  }

  v68 = swift_slowAlloc();
  v132 = swift_slowAlloc();
  v134 = v132;
  *v68 = 136315394;
  LODWORD(v131) = v67;
  v69 = sub_2219CB3CC();
  v71 = sub_2219A6360(v69, v70, &v134);
  LODWORD(v133) = EnumTagSinglePayload;
  v72 = v71;

  *(v68 + 4) = v72;
  *(v68 + 12) = 2080;
  v135 = v65;
  v136 = v62;
  v137 = a3;
  v73 = v63(&v135);
  v75 = v74;
  sub_2219EBCD8(v65, v62, a3, 0);
  v76 = sub_2219A6360(v73, v75, &v134);
  EnumTagSinglePayload = v133;

  *(v68 + 14) = v76;
  _os_log_impl(&dword_221989000, v66, v131, "%s%s", v68, 0x16u);
  v77 = v132;
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v77, -1, -1);
  MEMORY[0x223DA4C00](v68, -1, -1);
  sub_22198B60C(v63);

LABEL_43:
  v113 = v129;
  v112 = v130;
  sub_2219E7E58(v130, v129, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v5 + 56) & 1) == 0)
  {
    v114 = *(v5 + 40);
    v115 = *(v5 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v116 = *(v5 + qword_27CFBC780);
      v132 = *(v5 + qword_27CFBC780 + 8);
      v133 = v116;
      v117 = *(v5 + qword_27CFBC780 + 16);
      v118 = sub_2219CB440();
      v120 = v119;
      v135 = 0;
      v136 = 0xE000000000000000;
      sub_221BCDE68();
      v121 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v121);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v122 = v135;
      v123 = v136;
      v124 = *&v126[v5];

      sub_221BB52B0(v133, v132, v117, v118, v120, v112, v113, v122, v123);
    }
  }
}

void sub_2219E5804(uint64_t a1)
{
  v2 = v1;
  v172 = a1;
  v170 = sub_221BCCE38();
  v169 = *(v170 - 8);
  v3 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v166 = (&v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v165 = &v159 - v6;
  v7 = sub_221BCC558();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v163 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v167 = &v159 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v159 - v14;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8108, &qword_221BD2A20);
  v16 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v18 = (&v159 - v17);
  v19 = sub_221BCDFB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v159 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v159 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v159 - v29;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v164 = v15;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v31 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v31, v30, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v19);
  v33 = 0;
  v168 = 0;
  v162 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v20 + 32))(v26, v30, v19);
    sub_221BCDF88();
    v33 = sub_221BCDFA8();
    v168 = v34;
    v35 = *(v20 + 8);
    v35(v23, v19);
    v35(v26, v19);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v36 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v37, v2);
  }

  v38 = off_27CFBC778;
  swift_beginAccess();
  v160 = v38;
  v39 = *&v38[v2];
  v40 = &unk_27CFBC000;
  if (*(v39 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v174, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v176;
    if (v176)
    {
      v42 = v177;
      __swift_project_boxed_opaque_existential_0(&v174, v176);
      v161 = v8;
      v43 = *(v42 + 32);

      v43(v44, 0x697274654D736961, 0xEA00000000007363, v41, v42);
      v40 = &unk_27CFBC000;
      v8 = v161;

      __swift_destroy_boxed_opaque_existential_0(&v174);
    }

    else
    {
      sub_2219EC58C(&v174, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v172, v18, &qword_27CFB8108, &qword_221BD2A20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v18;
    sub_2219BAF0C(v2 + v40[241], &v174, &qword_27CFB7FD0, &qword_221BD2888);
    v46 = v176;
    if (v176)
    {
      v47 = v177;
      __swift_project_boxed_opaque_existential_0(&v174, v176);
      v173[5] = v45;
      v48 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v173);
        v173[0] = v45;
        v49 = v45;
        v50 = sub_221BCE198();
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = swift_allocError();
          *v95 = v45;
        }

        v96 = sub_221BCC328();

        v97 = [v96 domain];
        v98 = sub_221BCD388();
        v100 = v99;

        v101 = [v96 code];
        v102 = v166;
        *v166 = v98;
        v102[1] = v100;
        v92 = v102;
        v102[2] = v101;
        v91 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v91 = MEMORY[0x277CD8AC0];
        v92 = v166;
      }

      v103 = v169;
      v104 = v170;
      (*(v169 + 104))(v92, *v91, v170);
      (*(v47 + 24))(v92, v46, v47);
      (*(v103 + 8))(v92, v104);
      __swift_destroy_boxed_opaque_existential_0(&v174);
    }

    else
    {
      sub_2219EC58C(&v174, &qword_27CFB7FD0);
    }

    v105 = *(v2 + qword_27CFBC770);
    if (v105)
    {
      v106 = *(v2 + qword_27CFBC770 + 8);
      v107 = v45;

      v108 = v45;
      sub_22198BEB8(v105);
      v109 = sub_221BCCD68();
      v110 = sub_221BCDA78();

      if (os_log_type_enabled(v109, v110))
      {
        v172 = v33;
        v111 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        v174 = v171;
        *v111 = 136315394;
        v112 = sub_2219CB3CC();
        v114 = sub_2219A6360(v112, v113, &v174);

        *(v111 + 4) = v114;
        *(v111 + 12) = 2080;
        v173[0] = v45;
        v115 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v116 = sub_221BCE198();
        if (v116)
        {
          v117 = v116;
        }

        else
        {
          v117 = swift_allocError();
          *v140 = v45;
        }

        v141 = v105(v117);
        v143 = v142;

        v144 = sub_2219A6360(v141, v143, &v174);

        *(v111 + 14) = v144;
        _os_log_impl(&dword_221989000, v109, v110, "%s %s", v111, 0x16u);
        v145 = v171;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v145, -1, -1);
        MEMORY[0x223DA4C00](v111, -1, -1);

        sub_22198B60C(v105);
        goto LABEL_49;
      }

      sub_22198B60C(v105);
      goto LABEL_46;
    }

    v118 = *(v2 + qword_27CFDED20 + 17);

    v119 = v45;
    v120 = sub_221BCCD68();
    v121 = sub_221BCDA78();

    v122 = os_log_type_enabled(v120, v121);
    if (v118)
    {
      if (v122)
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v174 = v124;
        *v123 = 136315395;
        v125 = sub_2219CB3CC();
        v127 = sub_2219A6360(v125, v126, &v174);

        *(v123 + 4) = v127;
        *(v123 + 12) = 2085;
        v173[0] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v128 = sub_221BCE288();
        v130 = v129;

        v131 = sub_2219A6360(v128, v130, &v174);

        *(v123 + 14) = v131;
        v132 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v120, v121, v132, v123, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v124, -1, -1);
        MEMORY[0x223DA4C00](v123, -1, -1);
LABEL_45:

LABEL_46:
        goto LABEL_50;
      }
    }

    else if (v122)
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v174 = v124;
      *v123 = 136315395;
      v133 = sub_2219CB3CC();
      v135 = sub_2219A6360(v133, v134, &v174);

      *(v123 + 4) = v135;
      *(v123 + 12) = 2081;
      v173[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v136 = sub_221BCE288();
      v138 = v137;

      v139 = sub_2219A6360(v136, v138, &v174);

      *(v123 + 14) = v139;
      v132 = "%sFailed with %{private}s";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  (*(v8 + 32))(v164, v18, v7);
  sub_2219BAF0C(v2 + v40[241], &v174, &qword_27CFB7FD0, &qword_221BD2888);
  v52 = v176;
  if (v176)
  {
    v53 = v177;
    __swift_project_boxed_opaque_existential_0(&v174, v176);
    v54 = v169;
    v55 = v165;
    v56 = v170;
    (*(v169 + 104))(v165, *MEMORY[0x277CD8AC8], v170);
    (*(v53 + 24))(v55, v52, v53);
    (*(v54 + 8))(v55, v56);
    __swift_destroy_boxed_opaque_existential_0(&v174);
  }

  else
  {
    sub_2219EC58C(&v174, &qword_27CFB7FD0);
  }

  v57 = v167;
  v58 = *(v2 + qword_27CFBC768);
  v59 = *(v8 + 16);
  if (v58)
  {
    v161 = v8;
    v60 = *(v2 + qword_27CFBC768 + 8);
    v61 = v164;
    v59(v167, v164, v7);
    sub_22198BEB8(v58);

    v62 = v7;
    v63 = sub_221BCCD68();
    v64 = sub_221BCDA98();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v174 = v171;
      *v65 = 136315394;
      LODWORD(v170) = v64;
      v66 = sub_2219CB3CC();
      v68 = sub_2219A6360(v66, v67, &v174);
      v172 = v33;
      v69 = v68;

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v70 = v58(v57);
      v72 = v71;
      v73 = *(v161 + 8);
      v73(v57, v62);
      v74 = sub_2219A6360(v70, v72, &v174);
      v33 = v172;

      *(v65 + 14) = v74;
      _os_log_impl(&dword_221989000, v63, v170, "%s%s", v65, 0x16u);
      v75 = v171;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v75, -1, -1);
      MEMORY[0x223DA4C00](v65, -1, -1);

      sub_22198B60C(v58);
      v73(v164, v62);
    }

    else
    {

      sub_22198B60C(v58);
      v93 = *(v161 + 8);
      v93(v57, v62);
      v93(v61, v62);
    }
  }

  else
  {
    v76 = v163;
    v77 = v164;
    v59(v163, v164, v7);

    v78 = sub_221BCCD68();
    v79 = v7;
    v80 = sub_221BCDA98();

    if (os_log_type_enabled(v78, v80))
    {
      v81 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      v174 = v171;
      *v81 = 136315394;
      v82 = sub_2219CB3CC();
      v84 = sub_2219A6360(v82, v83, &v174);

      *(v81 + 4) = v84;
      *(v81 + 12) = 2080;
      v85 = sub_2219C1CB0(v76, *(v2 + qword_27CFDED20 + 17));
      v87 = v86;
      v172 = v33;
      v88 = *(v8 + 8);
      v88(v76, v79);
      v89 = sub_2219A6360(v85, v87, &v174);

      *(v81 + 14) = v89;
      _os_log_impl(&dword_221989000, v78, v80, "%sCompleted with %s", v81, 0x16u);
      v90 = v171;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v90, -1, -1);
      MEMORY[0x223DA4C00](v81, -1, -1);

      v88(v164, v79);
LABEL_49:
      v33 = v172;
      goto LABEL_50;
    }

    v94 = *(v8 + 8);
    v94(v76, v79);
    v94(v77, v79);
  }

LABEL_50:
  v146 = v162;
  v147 = v168;
  sub_2219E7E58(v33, v168, v162 == 1);
  if (v146 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v148 = *(v2 + 40);
    v149 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v150 = *(v2 + qword_27CFBC780);
      v171 = *(v2 + qword_27CFBC780 + 8);
      v172 = v150;
      v151 = *(v2 + qword_27CFBC780 + 16);
      v152 = sub_2219CB440();
      v154 = v153;
      v174 = 0;
      v175 = 0xE000000000000000;
      sub_221BCDE68();
      v155 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v155);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v156 = v174;
      v157 = v175;
      v158 = *&v160[v2];

      sub_221BB52B0(v172, v171, v151, v152, v154, v33, v147, v156, v157);
    }
  }
}

void sub_2219E6AB8(uint64_t a1)
{
  v2 = v1;
  v150 = a1;
  v3 = sub_221BCCE38();
  v146 = *(v3 - 8);
  v147 = v3;
  v4 = *(v146 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_221BCC558();
  v8 = *(v7 - 8);
  v148 = v7;
  v149 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v143 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v140 - v12;
  MEMORY[0x28223BE20](v14);
  v151 = &v140 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F8, &qword_221BD2A10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v140 - v18;
  v20 = sub_221BCDFB8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v140 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v140 - v30;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v141 = v13;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v32 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v32, v31, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v20);
  v144 = 0;
  v145 = 0;
  v142 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v21 + 32))(v27, v31, v20);
    sub_221BCDF88();
    v34 = sub_221BCDFA8();
    v144 = v35;
    v145 = v34;
    v36 = *(v21 + 8);
    v36(v24, v20);
    v36(v27, v20);
  }

  if (*(v2 + qword_27CFBC798))
  {
    v37 = *(v2 + qword_27CFBC798);

    sub_2219E7A60(v38, v2);
  }

  v39 = off_27CFBC778;
  swift_beginAccess();
  v140 = v39;
  v40 = *&v39[v2];
  v41 = &unk_27CFBC000;
  if (*(v40 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v152, &qword_27CFB7FD0, &qword_221BD2888);
    v42 = v154;
    if (v154)
    {
      v43 = v155;
      __swift_project_boxed_opaque_existential_0(&v152, v154);
      v44 = *(v43 + 32);

      v44(v45, 0x697274654D736961, 0xEA00000000007363, v42, v43);
      v41 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(&v152);
    }

    else
    {
      sub_2219EC58C(&v152, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v150, v19, &qword_27CFB80F8, &qword_221BD2A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2219BAF0C(v2 + v41[241], &v152, &qword_27CFB7FD0, &qword_221BD2888);
    v46 = v154;
    if (v154)
    {
      v47 = v155;
      __swift_project_boxed_opaque_existential_0(&v152, v154);
      sub_2219E7D00(v6);
      (*(v47 + 24))(v6, v46, v47);
      (*(v146 + 8))(v6, v147);
      __swift_destroy_boxed_opaque_existential_0(&v152);
    }

    else
    {
      sub_2219EC58C(&v152, &qword_27CFB7FD0);
    }

    v58 = *(v2 + qword_27CFBC770);
    if (v58)
    {
      v59 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v58);
      v60 = sub_221BCCD68();
      v61 = sub_221BCDA78();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v152 = v63;
        *v62 = 136315394;
        v64 = sub_2219CB3CC();
        v66 = sub_2219A6360(v64, v65, &v152);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        v67 = sub_221BCE198();
        if (!v67)
        {
          v67 = swift_allocError();
        }

        v68 = v67;
        v69 = v58();
        v71 = v70;

        v72 = sub_2219A6360(v69, v71, &v152);

        *(v62 + 14) = v72;
        _os_log_impl(&dword_221989000, v60, v61, "%s %s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v63, -1, -1);
        MEMORY[0x223DA4C00](v62, -1, -1);
        sub_22198B60C(v58);
      }

      else
      {

        sub_22198B60C(v58);
      }

      goto LABEL_40;
    }

    v92 = *(v2 + qword_27CFDED20 + 17);

    v93 = sub_221BCCD68();
    v94 = sub_221BCDA78();

    v95 = os_log_type_enabled(v93, v94);
    if (v92)
    {
      if (v95)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v152 = v97;
        *v96 = 136315395;
        v98 = sub_2219CB3CC();
        v100 = sub_2219A6360(v98, v99, &v152);

        *(v96 + 4) = v100;
        *(v96 + 12) = 2085;
        v101 = sub_221BCE288();
        v103 = sub_2219A6360(v101, v102, &v152);

        *(v96 + 14) = v103;
        v104 = "%sFailed with %{sensitive}s";
LABEL_37:
        _os_log_impl(&dword_221989000, v93, v94, v104, v96, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v97, -1, -1);
        MEMORY[0x223DA4C00](v96, -1, -1);
      }
    }

    else if (v95)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v152 = v97;
      *v96 = 136315395;
      v119 = sub_2219CB3CC();
      v121 = sub_2219A6360(v119, v120, &v152);

      *(v96 + 4) = v121;
      *(v96 + 12) = 2081;
      v122 = sub_221BCE288();
      v124 = sub_2219A6360(v122, v123, &v152);

      *(v96 + 14) = v124;
      v104 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

    goto LABEL_40;
  }

  v48 = v149;
  v49 = v151;
  v50 = v19;
  v51 = v148;
  (*(v149 + 32))(v151, v50, v148);
  sub_2219BAF0C(v2 + v41[241], &v152, &qword_27CFB7FD0, &qword_221BD2888);
  v52 = v154;
  if (v154)
  {
    v53 = v155;
    __swift_project_boxed_opaque_existential_0(&v152, v154);
    v55 = v146;
    v54 = v147;
    (*(v146 + 104))(v6, *MEMORY[0x277CD8AC8], v147);
    v56 = *(v53 + 24);
    v57 = v53;
    v49 = v151;
    v56(v6, v52, v57);
    (*(v55 + 8))(v6, v54);
    __swift_destroy_boxed_opaque_existential_0(&v152);
  }

  else
  {
    sub_2219EC58C(&v152, &qword_27CFB7FD0);
  }

  v73 = *(v2 + qword_27CFBC768);
  v74 = *(v48 + 16);
  v75 = v143;
  if (v73)
  {
    v76 = *(v2 + qword_27CFBC768 + 8);
    v77 = v141;
    v74(v141, v49, v51);
    sub_22198BEB8(v73);

    v78 = sub_221BCCD68();
    v79 = sub_221BCDA98();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v152 = v150;
      *v80 = 136315394;
      v81 = sub_2219CB3CC();
      v83 = sub_2219A6360(v81, v82, &v152);

      *(v80 + 4) = v83;
      *(v80 + 12) = 2080;
      v84 = v73(v77);
      v86 = v85;
      v147 = v76;
      v87 = *(v149 + 8);
      v88 = v77;
      v89 = v148;
      v87(v88, v148);
      v90 = sub_2219A6360(v84, v86, &v152);

      *(v80 + 14) = v90;
      _os_log_impl(&dword_221989000, v78, v79, "%s%s", v80, 0x16u);
      v91 = v150;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v91, -1, -1);
      MEMORY[0x223DA4C00](v80, -1, -1);

      sub_22198B60C(v73);
      v87(v151, v89);
    }

    else
    {

      sub_22198B60C(v73);
      v118 = *(v149 + 8);
      v118(v77, v51);
      v118(v49, v51);
    }
  }

  else
  {
    v74(v143, v49, v51);

    v105 = sub_221BCCD68();
    v106 = sub_221BCDA98();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v152 = v108;
      *v107 = 136315394;
      LODWORD(v150) = v106;
      v109 = sub_2219CB3CC();
      v111 = v48;
      v112 = sub_2219A6360(v109, v110, &v152);

      *(v107 + 4) = v112;
      *(v107 + 12) = 2080;
      v113 = sub_2219C1CB0(v75, *(v2 + qword_27CFDED20 + 17));
      v115 = v114;
      v116 = *(v111 + 8);
      v116(v75, v51);
      v117 = sub_2219A6360(v113, v115, &v152);

      *(v107 + 14) = v117;
      _os_log_impl(&dword_221989000, v105, v150, "%sCompleted with %s", v107, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v108, -1, -1);
      MEMORY[0x223DA4C00](v107, -1, -1);

      v116(v151, v51);
    }

    else
    {

      v125 = *(v48 + 8);
      v125(v75, v51);
      v125(v49, v51);
    }
  }

LABEL_40:
  v126 = v142;
  v128 = v144;
  v127 = v145;
  sub_2219E7E58(v145, v144, v142 == 1);
  if (v126 != 1 && (*(v2 + 56) & 1) == 0)
  {
    v129 = *(v2 + 40);
    v130 = *(v2 + 48);
    if ((sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
    {
      v131 = *(v2 + qword_27CFBC780);
      v150 = *(v2 + qword_27CFBC780 + 8);
      v151 = v131;
      v132 = *(v2 + qword_27CFBC780 + 16);
      v133 = sub_2219CB440();
      v135 = v134;
      v152 = 0;
      v153 = 0xE000000000000000;
      sub_221BCDE68();
      v136 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v136);

      MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
      sub_221BCE3F8();
      sub_221BCD978();
      MEMORY[0x223DA31F0](29549, 0xE200000000000000);
      v137 = v152;
      v138 = v153;
      v139 = *&v140[v2];

      sub_221BB52B0(v151, v150, v132, v133, v135, v127, v128, v137, v138);
    }
  }
}

uint64_t sub_2219E7A60(uint64_t a1, uint64_t a2)
{
  v3 = sub_221BCCD18();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v30 = v5;
  v31 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v29 = v9 - v8;
  v10 = sub_221BCCCD8();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  v19 = *(a2 + qword_27CFBC780);
  v20 = *(a2 + qword_27CFBC780 + 16);
  v21 = sub_221BCCCF8();
  sub_221BCCD28();
  v28 = sub_221BCDBB8();
  result = sub_221BCDC78();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v13 + 8))(v18, v10);
  }

  v27 = v13;
  if ((v20 & 1) == 0)
  {
    if (v19)
    {
      v23 = v19;
LABEL_9:

      sub_221BCCD58();

      if ((*(v30 + 88))(v29, v31) == *MEMORY[0x277D85B00])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v30 + 8))(v29, v31);
        v24 = "";
      }

      OUTLINED_FUNCTION_117();
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v21, v28, v26, v23, v24, v25, 2u);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v13 = v27;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v19 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v23 = &v32;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2219E7D00@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
    v2 = sub_221BCE198();
    if (!v2)
    {
      v2 = swift_allocError();
    }

    v3 = v2;
    v4 = sub_221BCC328();

    v5 = [v4 domain];
    v6 = sub_221BCD388();
    v8 = v7;

    v9 = [v4 code];
    *a1 = v6;
    a1[1] = v8;
    a1[2] = v9;
    v10 = MEMORY[0x277CD8AB8];
  }

  else
  {
    v10 = MEMORY[0x277CD8AC0];
  }

  v11 = *v10;
  v12 = sub_221BCCE38();
  return (*(*(v12 - 8) + 104))(a1, v11, v12);
}

void sub_2219E7E58(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(v3 + qword_27CFBC790 + 8) & 1) == 0)
  {
    v5 = *(v3 + qword_27CFBC790);
    v6 = (v3 + qword_27CFDED20);
    v7 = *(v3 + qword_27CFDED20 + 16);
    if (v7 == 2 || (v7 & 1) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
      inited = swift_initStackObject();
      v9 = inited;
      *(inited + 16) = xmmword_221BD26F0;
      *(inited + 32) = 0x6F6974617265706FLL;
      *(inited + 40) = 0xE90000000000006ELL;
      v10 = MEMORY[0x277D83B88];
      *(inited + 48) = v5;
      *(inited + 72) = v10;
      *(inited + 80) = 0x746E65696C63;
      *(inited + 88) = 0xE600000000000000;
      v11 = *v6;
      v12 = v6[1];
      v13 = MEMORY[0x277D837D0];
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v11 = 0x6E776F6E6B6E75;
        v14 = 0xE700000000000000;
      }

      *(inited + 96) = v11;
      *(inited + 104) = v14;
      *(inited + 120) = v13;
      *(inited + 128) = 0x746567726174;
      *(inited + 136) = 0xE600000000000000;
      v15 = off_27CFBC778;
      swift_beginAccess();
      v16 = *&v15[v3];

      sub_221B9C448(7368801, 0xE300000000000000, v16, v26);
      swift_endAccess();
      if (v27)
      {
        sub_2219A1AB0(v26, (v9 + 144));
      }

      else
      {
        *(v9 + 168) = v13;
        *(v9 + 144) = 0x6E776F6E6B6E75;
        *(v9 + 152) = 0xE700000000000000;
      }

      *(v9 + 176) = 0x6E6F697461727564;
      *(v9 + 184) = 0xE800000000000000;
      if (a3)
      {
        *(v9 + 216) = MEMORY[0x277D83B88];
        *(v9 + 192) = -1;
      }

      else
      {
        v17 = sub_221BCE3F8();
        v27 = MEMORY[0x277D839F8];
        v26[0] = v18 * 1.0e-18 + v17;
        sub_2219A1AB0(v26, (v9 + 192));
      }

      v19 = MEMORY[0x277D837D0];
      v20 = sub_221BCD2C8();
      OUTLINED_FUNCTION_243();
      sub_221B9C448(0x6E6F69746361, 0xE600000000000000, *&v15[v3], v24);
      if (v25)
      {
        sub_2219A1AB0(v24, v26);
        swift_endAccess();
        sub_22199B650(v26, v24);
        swift_isUniquelyReferenced_nonNull_native();
        *&v22 = v20;
        sub_221B9F8D4(v24, 1701667182, 0xE400000000000000);
        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      else
      {
        sub_2219EC58C(v24, &qword_27CFB7FF8);
        swift_endAccess();
      }

      OUTLINED_FUNCTION_243();
      sub_221B9C448(0x7954797469746E65, 0xEA00000000006570, *&v15[v3], v24);
      if (v25)
      {
        sub_2219A1AB0(v24, v26);
        swift_endAccess();
        swift_beginAccess();
        sub_221B9C448(1684957547, 0xE400000000000000, *&v15[v3], &v22);
        if (v23)
        {
          sub_2219A1AB0(&v22, v24);
          swift_endAccess();
          *&v22 = 0;
          *(&v22 + 1) = 0xE000000000000000;
          OUTLINED_FUNCTION_241();
          MEMORY[0x223DA31F0](46, 0xE100000000000000);
          OUTLINED_FUNCTION_241();
          v23 = v19;
          sub_2219A1AB0(&v22, v21);
          swift_isUniquelyReferenced_nonNull_native();
          sub_221B9F8D4(v21, 1701667182, 0xE400000000000000);
          __swift_destroy_boxed_opaque_existential_0(v24);
        }

        else
        {
          sub_2219EC58C(&v22, &qword_27CFB7FF8);
          swift_endAccess();
        }

        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      else
      {
        sub_2219EC58C(v24, &qword_27CFB7FF8);
        swift_endAccess();
      }

      if (qword_27CFB7340 != -1)
      {
        swift_once();
      }

      sub_221BB4DB0(v20);

      sub_221BB4CFC();
    }
  }
}

uint64_t sub_2219E8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8320()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[3];
  v1 = v0[4];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return v7(v6);
}

uint64_t sub_2219E83D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E84D0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 24);
  sub_2219CC674(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_2219E8528()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CBF48(v0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v3 = *(v1 + 56);

  return v2();
}

uint64_t sub_2219E8594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2219E85B8, 0, 0);
}

uint64_t sub_2219E85B8()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[3];
  v1 = v0[4];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return v7(v6);
}

uint64_t sub_2219E8670()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E8768()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 24);
  sub_2219CC6D4(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_2219E87C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CBF9C(v0);
  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v3 = *(v1 + 56);

  return v2();
}

uint64_t sub_2219E882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8844()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[2];
  v1 = v0[3];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v9 = v3;
  v4 = *(v1 + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2219E890C;
  v6 = v0[4];
  v7 = v0[2];

  return v9();
}

uint64_t sub_2219E890C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E8A04()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 16);
  sub_2219D12F8();
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_2219E8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8AFC()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[3];
  v1 = v0[4];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return v7(v6);
}

uint64_t sub_2219E8BB4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E8CAC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_126();
  sub_2219CC794(v3, v4, v5, v6, sub_2219D2F44);
  OUTLINED_FUNCTION_4_3();

  return v7();
}

uint64_t sub_2219E8D2C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_127();
  sub_2219CC038(v0, v2, v3, v4);
  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v6 = *(v1 + 56);

  return v5();
}

uint64_t sub_2219E8DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E8DC4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[18];
  v1 = v0[19];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[21] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_36_1(v4);

  return v7(v6);
}

uint64_t sub_2219E8E7C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E8F74()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_180();
  v7 = *(v2 + 128);
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = v7;
  v8 = OUTLINED_FUNCTION_27_2();
  sub_2219EC38C(v8, v9, v10, v11, v12);
  sub_2219D4FC4(v5);
  v13 = OUTLINED_FUNCTION_27_2();
  sub_2219EC434(v13, v14, v15, v16, v17);
  *v6 = v0;
  *(v6 + 8) = v1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_2219E9018()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_113();
  sub_2219D3F00(v0);

  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v4 = *(v2 + 176);

  return v3();
}

uint64_t sub_2219E908C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E90A4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[7] = v4;
  *v4 = v5;
  v4[1] = sub_2219E9168;
  v6 = v0[6];
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219E9168()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E942C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9444()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[18];
  v1 = v0[19];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[21] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_36_1(v4);

  return v7(v6);
}

uint64_t sub_2219E94FC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E95F4()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_180();
  *(v1 + 64) = v0;
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = *(v1 + 128);
  v6 = OUTLINED_FUNCTION_27_2();
  sub_2219EC0B0(v6, v7, v8, v9, v10);
  sub_2219DA994(v4);
  v11 = OUTLINED_FUNCTION_27_2();
  sub_2219EC114(v11, v12, v13, v14, v15);
  v16 = *(v1 + 128);
  v17 = *(v1 + 112);
  *v5 = *(v1 + 96);
  *(v5 + 16) = v17;
  *(v5 + 32) = v16;
  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_2219E969C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_113();
  sub_2219D983C(v0);

  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v4 = *(v2 + 176);

  return v3();
}

uint64_t sub_2219E9710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9728()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[7] = v4;
  *v4 = v5;
  v4[1] = sub_2219E97EC;
  v6 = v0[6];
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219E97EC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E98E4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_162();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4();
  sub_2219DDD60(v2, v3);

  v4 = OUTLINED_FUNCTION_54_0();

  return v5(v4);
}

uint64_t sub_2219E995C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_199();
  sub_2219DCCF8(v0, 256);

  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v3 = *(v1 + 64);

  return v2();
}

uint64_t sub_2219E99D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E99EC()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[7] = v4;
  *v4 = v5;
  v4[1] = sub_2219E9AB0;
  v6 = v0[6];
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219E9AB0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E9D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219E9D8C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_2219E9E50;
  v6 = v0[7];
  v7 = v0[5];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219E9E50()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219E9F48()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[4];
  v2 = v0[5];
  sub_2219E10FC(v0[2], v0[3], 0);
  *v1 = *(v0 + 1);
  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_2219E9FB0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = v1;
  sub_2219E0184(v1, 0, 1);

  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v5 = *(v0 + 72);

  return v4();
}

uint64_t sub_2219EA038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA050()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[18];
  v1 = v0[19];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[21] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_36_1(v4);

  return v7(v6);
}

uint64_t sub_2219EA108()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219EA200()
{
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  v7 = *(v0 + 129);
  *(v0 + 56) = *(v0 + 96);
  if (v7)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = v8 | v6;
  *(v0 + 90) = 0;

  sub_221998178(v4, v5);
  sub_2219E2F94(v0 + 56);

  sub_2219982C4(v4, v5);
  v9 = *(v0 + 104);
  v10 = *(v0 + 128);
  v11 = *(v0 + 129);
  v12 = *(v0 + 112);
  *v2 = *(v0 + 96);
  *(v2 + 8) = v9;
  *(v2 + 16) = v12;
  *(v2 + 32) = v10;
  *(v2 + 33) = v11;
  OUTLINED_FUNCTION_4_3();

  return v13();
}

uint64_t sub_2219EA2EC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  *(v0 + 50) = 1;
  v3 = v1;
  sub_2219E1E30(v0 + 16);

  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v5 = *(v0 + 176);

  return v4();
}

uint64_t sub_2219EA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA3A0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[6];
  v1 = v0[7];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_2219EA464;
  v6 = v0[8];
  v7 = v0[6];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219EA464()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219EA55C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];

  v6 = OUTLINED_FUNCTION_4();
  sub_2219E4A38(v6, v7, v5, 0);

  v8 = *(v0 + 3);
  *v2 = v0[2];
  *(v2 + 8) = v8;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_253();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2219EA688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA6A0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[5];
  v1 = v0[6];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_2219EA764;
  v6 = v0[7];
  v7 = v0[5];
  v8 = OUTLINED_FUNCTION_35_1();

  return v9(v8);
}

uint64_t sub_2219EA764()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219EA85C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = OUTLINED_FUNCTION_4();
  sub_2219EBFB4(v5, v6);
  OUTLINED_FUNCTION_4();
  sub_2219DC328();
  v7 = OUTLINED_FUNCTION_4();
  sub_2219EC02C(v7, v8);
  *v2 = *(v0 + 1);
  OUTLINED_FUNCTION_4_3();

  return v9();
}

uint64_t sub_2219EA968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219EA980()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[3];
  v1 = v0[4];
  sub_2219CC0DC();
  OUTLINED_FUNCTION_0_19();
  v3 = *(v1 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[6] = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_2(v4);

  return v7(v6);
}

uint64_t sub_2219EAA38()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 56) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219EAB30()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 24);
  sub_2219CC84C(*(v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_2219EAB88()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_233();
  sub_2219CC038(v0, &qword_27CFB8108, &qword_221BD2A20, sub_2219E5804);
  swift_willThrow();
  OUTLINED_FUNCTION_25();
  v3 = *(v1 + 56);

  return v2();
}

BOOL sub_2219EAC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_221BCE308();
  sub_221BCD448();
  v7 = sub_221BCE358();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_221BCE1B8();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_2219EAD04(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    sub_221BCE308();
    MEMORY[0x223DA4060](v4);
    v6 = sub_221BCE358();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

uint64_t sub_2219EADB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || (result = sub_2219EAD04(1u, a1), (result & 1) != 0))
  {
    if (!a2)
    {
      return Entitlement.Contains.evaluate()(a3);
    }

    result = sub_2219EAD04(1u, a2);
    if ((result & 1) == 0)
    {
      return Entitlement.Contains.evaluate()(a3);
    }
  }

  *a3 = xmmword_221BD04D0;
  return result;
}

uint64_t sub_2219EAE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 && (result = sub_2219EAD04(1u, a1), (result & 1) == 0) || a2 && (result = sub_2219EAD04(1u, a2), (result & 1) != 0))
  {
    *a5 = xmmword_221BD04D0;
  }

  else
  {
    swift_beginAccess();
    v10 = off_2817DA010;

    LOBYTE(v10) = (v10)(a3, a4, sub_221BC3464, 0);

    if (v10)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
    }

    else
    {
      sub_221BCDE68();

      result = MEMORY[0x223DA31F0](0x20646C756F687320, 0xEF65757274206562);
      *a5 = a3;
      *(a5 + 8) = a4;
    }
  }

  return result;
}

void sub_2219EAF6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && (sub_2219EAD04(1u, a1) & 1) == 0 || a2 && (sub_2219EAD04(1u, a2) & 1) != 0)
  {
    *a3 = xmmword_221BD04D0;
  }

  else
  {
    Entitlement.AnyOf.evaluate()(a3);
  }
}

uint64_t sub_2219EB03C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 128);
  return sub_2219C7F0C(*(v0 + 32), v0 + 40);
}

uint64_t sub_2219EB050()
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_152();

  return sub_2219C8038(v7, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_2219EB100()
{
  result = qword_27CFB7F68;
  if (!qword_27CFB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7F68);
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

uint64_t sub_2219EB240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t *a4@<X2>)
{
  v5 = *a4;
  v4 = a4[1];
  v6 = a4[2];
  return sub_2219EADB4(a1, a2, a3);
}

uint64_t objectdestroy_19Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_36Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_2219EB320()
{
  result = qword_27CFB7FA0;
  if (!qword_27CFB7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7FA0);
  }

  return result;
}

uint64_t sub_2219EB374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 && a5 != 2)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_2219EB418(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v16 = *(v2 + 64);
  v10 = *(v2 + 80);
  v11 = *(v2 + 88);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219CA70C;

  return sub_2219C7298(a1, a2, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2219EB514()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_74();

  return sub_2219E8594(v7, v8, v9, v3);
}

unint64_t sub_2219EB5B8()
{
  result = qword_27CFB7FE8;
  if (!qword_27CFB7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB7FE8);
  }

  return result;
}

uint64_t sub_2219EB60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2219EB6D8()
{
  result = qword_27CFB8028;
  if (!qword_27CFB8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8028);
  }

  return result;
}

uint64_t sub_2219EB7B4()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_167();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v6[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_53_0();

  return sub_2219C34C0(v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_2219EB8C0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_2_15(v4);
  *v5 = v6;
  v5[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_74();

  return sub_2219E8308(v7, v8, v9, v3);
}

uint64_t sub_2219EB964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_234(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2219EB9A8()
{
  result = qword_27CFB8078;
  if (!qword_27CFB8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8078);
  }

  return result;
}

uint64_t sub_2219EBA50()
{
  OUTLINED_FUNCTION_104();
  v1 = v0[3];
  v20 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_15(v9);
  *v10 = v11;
  v10[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_53_0();

  return sub_2219C5370(v12, v13, v14, v15, v16, v17, v18, v7);
}

uint64_t sub_2219EBB7C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_167();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_15(v6);
  *v7 = v8;
  v7[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_53_0();

  return sub_2219C946C(v9, v10, v11, v12, v13, v14, v15, v4);
}

unint64_t sub_2219EBC40()
{
  result = qword_27CFB80C8;
  if (!qword_27CFB80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB80C8);
  }

  return result;
}

uint64_t sub_2219EBC94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2219EBCD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

id sub_2219EBD1C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

void sub_2219EBD6C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_2219EBDBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2219EBE04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_2219EBE10(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_2219EBE78(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

void sub_2219EBE84(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

id sub_2219EBF40(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_2219EBF4C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_2219EBF58(id result, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EBF40(result, a2 & 1);
  }

  return result;
}

void sub_2219EBF68(void *a1, char a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_2219EBF4C(a1, a2 & 1);
  }
}

id sub_2219EBF78(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_2219EBF84(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_2219EBFA8(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EBFB4(a1, a2);
  }

  return a1;
}

uint64_t sub_2219EBFB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2219EBFC8(a1, a2);
  }

  return a1;
}

uint64_t sub_2219EBFC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2219EC020(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2219EC02C(a1, a2);
  }

  return a1;
}

uint64_t sub_2219EC02C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2219EC040(a1, a2);
  }

  return a1;
}

uint64_t sub_2219EC040(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_2219EC098(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_2219EBFB4(a1, a2);
  }
}

void sub_2219EC0A4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_2219EC02C(a1, a2);
  }
}

id sub_2219EC0B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {

    return a1;
  }

  else
  {
  }
}

void sub_2219EC114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 < 0)
  {
  }

  else
  {
  }
}

id sub_2219EC1D8(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_2219EC1E8(id a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

id sub_2219EC1F8(id a1, char a2, char a3, uint64_t (*a4)(id, void))
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return a4(a1, a2 & 1);
  }
}

void sub_2219EC20C(id a1, char a2, char a3, void (*a4)(id, void))
{
  if (a3)
  {
  }

  else
  {
    a4(a1, a2 & 1);
  }
}

uint64_t sub_2219EC27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  return a2;
}

uint64_t sub_2219EC2D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_2_1(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  return a2;
}

uint64_t sub_2219EC334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

id sub_2219EC38C(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  result = a1;
  if ((a5 & 1) == 0)
  {

    return sub_2219EC3F4(a2, a3);
  }

  return result;
}

uint64_t sub_2219EC3F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  return result;
}

void sub_2219EC434(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    sub_2219EC49C(a2, a3);
  }
}

uint64_t sub_2219EC49C(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2219EC4DC()
{
  result = qword_27CFB81A8;
  if (!qword_27CFB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB81A8);
  }

  return result;
}

uint64_t sub_2219EC58C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_234(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_16()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_5_8()
{
  result = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_4()
{
  *(v0 - 176) = 0;
  *(v0 - 168) = 0xE000000000000000;

  return sub_221BCDE68();
}

void OUTLINED_FUNCTION_21_2(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void (*a24)(uint64_t), void (*a25)(uint64_t), uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int16 a29, uint64_t a30, uint64_t a31, void (*a32)(uint64_t), void (*a33)(uint64_t, uint64_t))
{
  LOWORD(a17) = v33;

  sub_2219CB5C4(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a9, a17, v34, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t OUTLINED_FUNCTION_24_1()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return sub_221BCE408();
}

uint64_t OUTLINED_FUNCTION_25_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[5];
  result = v2[2];
  v5 = v2[3];
  return result;
}

void OUTLINED_FUNCTION_28_1()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 160);
  v4 = *(v2 + 144);
  return v2 + 96;
}

uint64_t OUTLINED_FUNCTION_39_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_41_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_47()
{
  v3 = *(v1 - 144);

  return __swift_project_boxed_opaque_existential_0((v1 - 176), v0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_51_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_52_0(uint64_t result)
{
  *(result + 16) = v6;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = v2;
  *(result + 56) = v1;
  *(result + 57) = 0;
  return result;
}

void OUTLINED_FUNCTION_61_0()
{
  *(v0 + 36) = 1;

  os_unfair_lock_unlock((v0 + 32));
}

uint64_t OUTLINED_FUNCTION_63_0()
{
  v2 = *(v0 - 168);
  *(v0 - 176) = *(v0 - 176);
  *(v0 - 168) = v2;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_65()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_77@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(a1 - 256));
}

void OUTLINED_FUNCTION_89(uint64_t *a1@<X8>)
{
  v1 = *(a1 + 40);
  v3 = a1[3];
  v2 = a1[4];
  v4 = *(a1 + 16);
  v6 = *a1;
  v5 = a1[1];
}

uint64_t OUTLINED_FUNCTION_93()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_95()
{

  return sub_221BCE408();
}

uint64_t OUTLINED_FUNCTION_98()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_102(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 176));
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_105()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1)
{

  return sub_2219E7A60(a1, v1);
}

uint64_t OUTLINED_FUNCTION_112()
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_113()
{
  v2 = *(v0 + 176);
  *(v0 + 16) = v2;
  v3 = *(v0 + 144);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 256;

  return v2;
}

uint64_t OUTLINED_FUNCTION_114@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2219BAF0C(v3 + a3, v4 - 176, a1, a2);
}

uint64_t OUTLINED_FUNCTION_125(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_128()
{
}

uint64_t OUTLINED_FUNCTION_129()
{
  v2 = *(v0 - 256);

  return swift_arrayDestroy();
}

id OUTLINED_FUNCTION_130()
{
  *(v1 + 12) = 2080;
  *(v2 - 224) = v0;

  return v0;
}

void OUTLINED_FUNCTION_131(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

id OUTLINED_FUNCTION_132(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_133(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 - 280);

  sub_2219E7E58(a1, v5, a3);
}

uint64_t OUTLINED_FUNCTION_134(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

id OUTLINED_FUNCTION_135()
{
  __swift_destroy_boxed_opaque_existential_0((v1 - 224));
  *(v1 - 224) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_136()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_138()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_141(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), void (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int16 a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t), void (*a30)(uint64_t, uint64_t))
{
  v35 = *(v33 - 80);

  sub_2219CB5C4(v35, v31, a3, v32, a5, v30, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

void OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_221BB52B0(a1, a2, a3, a4, a5, v10, v11, v9, a9);
}

uint64_t OUTLINED_FUNCTION_148()
{
}

uint64_t OUTLINED_FUNCTION_149()
{
}

uint64_t OUTLINED_FUNCTION_150(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 224));
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_153_0()
{
}

void OUTLINED_FUNCTION_154(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_155()
{
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1)
{

  return sub_2219E7A60(a1, v1);
}

void OUTLINED_FUNCTION_162()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_166()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_168()
{

  JUMPOUT(0x223DA31F0);
}

BOOL OUTLINED_FUNCTION_169()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_171()
{

  JUMPOUT(0x223DA31F0);
}

void OUTLINED_FUNCTION_176(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v4 = *v2;
  v3 = v2[1];
}

void OUTLINED_FUNCTION_180()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[15];
  v0[7] = v0[12];
}

void OUTLINED_FUNCTION_187()
{

  JUMPOUT(0x223DA31F0);
}

uint64_t OUTLINED_FUNCTION_188()
{
}

uint64_t OUTLINED_FUNCTION_189@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);

  return sub_2219CB440();
}

uint64_t OUTLINED_FUNCTION_190()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_191(uint64_t a1, uint64_t a2, char a3)
{

  sub_2219E7E58(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_192@<X0>(uint64_t *a1@<X8>)
{
  v7 = *a1;
  v8 = *(v5 + v4);
  v9 = *(v5 + v3);
  v10 = *(v5 + v2);
  v11 = *(v5 + v1);

  return sub_2219EB374(v7, v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_193()
{
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
}

uint64_t OUTLINED_FUNCTION_194()
{
  v4 = *(v2 - 248);

  return sub_2219BAF0C(v4, v2 - 176, v0, v1);
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_198()
{
}

id OUTLINED_FUNCTION_199()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 64);

  return v3;
}

void OUTLINED_FUNCTION_201(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_202(void *a1, char a2, char a3)
{
  v5 = *(v3 - 320);

  sub_2219EC20C(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_203(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return __swift_destroy_boxed_opaque_existential_0(&a9);
}

uint64_t OUTLINED_FUNCTION_204()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_207(uint64_t a1)
{
  sub_22198BEB8(a1);

  return sub_221BCCD68();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_221BCE198();
}

uint64_t OUTLINED_FUNCTION_209()
{
}

uint64_t OUTLINED_FUNCTION_210()
{

  return swift_task_alloc();
}

BOOL OUTLINED_FUNCTION_211()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_213(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

void OUTLINED_FUNCTION_214(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_215()
{
}

uint64_t OUTLINED_FUNCTION_216(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_224()
{
  v1 = v0[104];
  v2 = v0[103];
  result = v0[102];
  v4 = v0[96];
  return result;
}

uint64_t OUTLINED_FUNCTION_225(uint64_t result, uint64_t a2)
{
  *(v2 - 272) = result;
  *(v2 - 280) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1)
{
  sub_22198BEB8(a1);
}

double OUTLINED_FUNCTION_232()
{
  *(v3 + 104) = v2;
  result = 0.0;
  *(v3 + 88) = 0u;
  *(v3 + 72) = v0;
  *(v3 + 80) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_236@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void OUTLINED_FUNCTION_239()
{

  os_unfair_lock_lock(v0 + 8);
}

void OUTLINED_FUNCTION_240(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_241()
{

  return sub_221BCE018();
}

id OUTLINED_FUNCTION_242@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);

  return sub_2219EBD1C(a1, v4, v2, 1);
}

uint64_t OUTLINED_FUNCTION_243()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_244()
{
  *(v1 - 184) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_245()
{
}

uint64_t OUTLINED_FUNCTION_246()
{
}

void OUTLINED_FUNCTION_247(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_248(float a1)
{
  *v1 = a1;

  return sub_2219CB3CC();
}

uint64_t OUTLINED_FUNCTION_249()
{
}

uint64_t OUTLINED_FUNCTION_250(uint64_t a1, unint64_t a2)
{

  return sub_2219A6360(a1, a2, (v2 - 184));
}

uint64_t OUTLINED_FUNCTION_251()
{
}

void sub_2219ED94C()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD048 = 0;
  unk_27CFDD050 = 0;
  byte_27CFDD058 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED984()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD0A8 = 0;
  unk_27CFDD0B0 = 0;
  byte_27CFDD0B8 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED9BC()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD108 = 0;
  unk_27CFDD110 = 0;
  byte_27CFDD118 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void sub_2219ED9F4()
{
  OUTLINED_FUNCTION_1_19();
  qword_27CFDD168 = 0;
  unk_27CFDD170 = 0;
  byte_27CFDD178 = v0;
  OUTLINED_FUNCTION_0_20(v0);
}

void OUTLINED_FUNCTION_0_20(char a1@<W8>)
{
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = 0;
  *(v1 + 72) = a1;
  *(v1 + 80) = 0;
  *(v1 + 88) = a1;
}

uint64_t sub_2219EDA70(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221BCDDA8())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_221BCDF28();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DA3BF0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_221BCDEF8();
      v12 = *(v16 + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_2219EDBE4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_221BCDDA8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_221BCDF28();
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x223DA3BF0](v8, a1);
        }

        else
        {
          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        ++v8;
        v11 = swift_allocObject();
        *(v11 + 16) = a2;
        *(v11 + 24) = a3;

        sub_221BB8ED4(v10, sub_2219B1AA0, v11);

        sub_221BCDEF8();
        v12 = *(v13 + 16);
        sub_221BCDF38();
        sub_221BCDF48();
        sub_221BCDF08();
      }

      while (v6 != v8);
      return v13;
    }
  }

  return result;
}

void sub_2219EDD48(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 displayRepresentation];
  if (v7)
  {
    v8 = v7;
    v9 = sub_221B85444(a2, a3);
  }

  else
  {
    v9 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 56) = 0;
}

uint64_t sub_2219EDDBC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier);
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0);
  sub_2219A1CC8(v3 + *(v4 + 28), &qword_27CFB82B0, &unk_221BD2990);
  v5 = OUTLINED_FUNCTION_103_0();
  sub_2219BAF0C(v5, v6, v7, &unk_221BD2990);
  os_unfair_lock_unlock(v3);
  return sub_2219A1CC8(a1, &qword_27CFB82B0, &unk_221BD2990);
}

void sub_2219EDE7C(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier);
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0);
  sub_2219BAF0C(v3 + *(v4 + 28), a1, &qword_27CFB82B0, &unk_221BD2990);

  os_unfair_lock_unlock(v3);
}

void sub_2219EDEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, const void *a22)
{
  OUTLINED_FUNCTION_21();
  v68 = v24;
  v69 = v23;
  v70 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  ObjectType = swift_getObjectType();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v39);
  v41 = &v68 - v40;
  v42 = *a21;
  memcpy(v75, a22, sizeof(v75));
  v43 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate__executorIdentifier];
  v44 = sub_221BCC558();
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v44);
  *v43 = 0;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B8, &qword_221BD2BE0) + 28);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82C0, &qword_221BD2BE8);
  OUTLINED_FUNCTION_8_1(v46);
  bzero(v43 + v45, *(v47 + 64));
  sub_2219F6938(v41, v43 + v45);
  *&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_actionMetadata] = v33;
  v48 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate];
  *v48 = v31;
  v48[1] = v29;
  v49 = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 16);
  v72 = v27;
  v53 = v27;
  v54 = v68;
  v52(&v22[v49], v53, v50);
  *&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] = v35;
  v55 = &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_effectiveBundleIdentifier];
  v56 = v70;
  *v55 = v69;
  v55[1] = v56;
  sub_2219A1B08(v54, &v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment]);
  v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy] = v42;
  memcpy(&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment], v75, 0x64uLL);
  v74.receiver = v22;
  v74.super_class = ObjectType;
  v57 = v33;
  swift_unknownObjectRetain();

  v58 = objc_msgSendSuper2(&v74, sel_init);
  v59 = qword_27CFB6CC0;
  v60 = v58;
  if (v59 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  os_unfair_lock_lock(&dword_27CFB81C0);
  v61 = v60;
  sub_221BBA664(&v73, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  os_unfair_lock_unlock(&dword_27CFB81C0);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v54);
  (*(v51 + 8))(v72, v50);

  OUTLINED_FUNCTION_22();
}

void sub_2219EE1E0()
{
  OUTLINED_FUNCTION_21();
  ObjectType = swift_getObjectType();
  v2 = sub_221BCC558();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v17 = sub_221BCCD88();
  __swift_project_value_buffer(v17, qword_27CFDEDB0);
  v18 = v0;
  v19 = sub_221BCCD68();
  v20 = sub_221BCDA68();

  if (os_log_type_enabled(v19, v20))
  {
    v38 = v10;
    v39 = v5;
    v21 = OUTLINED_FUNCTION_68();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v21 = 136315650;
    v22 = (*&v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v23 = ObjectType;
    v25 = *v22;
    v24 = v22[1];

    v26 = sub_2219A6360(v25, v24, &v42);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v41 = v23;
    v27 = sub_221BCE478();
    v29 = v28;
    v30 = sub_2219A6360(v27, v28, &v42);

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    sub_2219EDE7C(v16);
    if (__swift_getEnumTagSinglePayload(v16, 1, v2))
    {
      sub_2219A1CC8(v16, &qword_27CFB82B0, &unk_221BD2990);
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v34 = v38;
      v33 = v39;
      (*(v39 + 16))(v38, v16, v2);
      sub_2219A1CC8(v16, &qword_27CFB82B0, &unk_221BD2990);
      v32 = sub_221BCC4E8();
      v31 = v35;
      v36 = *(v33 + 8);
      v29 = v33 + 8;
      v36(v34, v2);
    }

    sub_2219A6360(v32, v31, &v42);
    OUTLINED_FUNCTION_112_0();
    *(v21 + 24) = v29;
    _os_log_impl(&dword_221989000, v19, v20, "[%s] %s deinit for %s", v21, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_21_3();

    ObjectType = v41;
  }

  else
  {
  }

  v43.receiver = v18;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_dealloc);
  OUTLINED_FUNCTION_22();
}

uint64_t _s14descr283510D89C29PerformActionExecutorDelegateCMa()
{
  result = qword_27CFB8280;
  if (!qword_27CFB8280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2219EE680()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80A8, &qword_221BD2BF0);
  OUTLINED_FUNCTION_0_2(v7);
  v82 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v14 = sub_221BCC558();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v83 = v16;
  v84 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_93_0(v19);
  v20 = v0[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy];
  v85 = v0;
  v79 = v6;
  if (v20)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v21 = sub_221BCCD88();
    __swift_project_value_buffer(v21, qword_27CFDEDB0);
    v22 = v0;
    v23 = v6;
    v24 = v4;
    v25 = v2;
    v26 = sub_221BCCD68();
    v27 = sub_221BCDA98();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_131_0();
      v28 = OUTLINED_FUNCTION_83_0();
      v77 = OUTLINED_FUNCTION_105();
      v86 = v77;
      *v2 = 136315907;
      OUTLINED_FUNCTION_53_1(*&v22[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher]);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      v29 = OUTLINED_FUNCTION_111();
      sub_221BCC528();

      sub_2219AC8D8();
      sub_221BCE168();
      v30 = OUTLINED_FUNCTION_87_0();
      v31(v30);
      v32 = sub_2219A6360(v29, 0x278482000uLL, &v86);

      *(v2 + 14) = v32;
      OUTLINED_FUNCTION_130_0(2117);
      if (v2)
      {
        v33 = v2;
        v34 = v2;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v35 = OUTLINED_FUNCTION_123();
      }

      v52 = v78;
      *(v2 + 34) = v35;
      *(v28 + 8) = v36;
      v53 = "[%s] Executor %s didPerformActionWithResult with result=%{sensitive}@, error=%{sensitive}@";
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v37 = sub_221BCCD88();
    __swift_project_value_buffer(v37, qword_27CFDEDB0);
    v38 = v0;
    v39 = v6;
    v40 = v4;
    v41 = v2;
    v26 = sub_221BCCD68();
    v42 = sub_221BCDA98();

    if (os_log_type_enabled(v26, v42))
    {
      OUTLINED_FUNCTION_131_0();
      v43 = OUTLINED_FUNCTION_83_0();
      v77 = OUTLINED_FUNCTION_105();
      v86 = v77;
      *v2 = 136315907;
      OUTLINED_FUNCTION_53_1(*&v38[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher]);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      v44 = OUTLINED_FUNCTION_111();
      sub_221BCC528();

      sub_2219AC8D8();
      sub_221BCE168();
      v45 = OUTLINED_FUNCTION_87_0();
      v46(v45);
      v47 = sub_2219A6360(v44, 0x278482000uLL, &v86);

      *(v2 + 14) = v47;
      OUTLINED_FUNCTION_130_0(2113);
      if (v2)
      {
        v48 = v2;
        v34 = v2;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        v50 = v49;
      }

      else
      {
        v34 = 0;
        v49 = OUTLINED_FUNCTION_123();
      }

      v52 = v78;
      *(v2 + 34) = v49;
      *(v43 + 8) = v50;
      v53 = "[%s] Executor %s didPerformActionWithResult with result=%{private}@, error=%{private}@";
LABEL_18:
      _os_log_impl(&dword_221989000, v26, v52, v53, v2, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB7630, qword_221BD0790);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_44_0();

      v7 = v80;
      v13 = v81;
      v2 = v34;
      if (!v4)
      {
        goto LABEL_19;
      }

LABEL_13:
      v86 = v4;
      v51 = v4;
      sub_221BCD798();
      goto LABEL_27;
    }
  }

  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:
  if (v2)
  {
    v54 = v82;
    (*(v82 + 16))(v13, v85 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation, v7);
    v55 = v2;
  }

  else
  {
    v81 = v13;
    v54 = v82;
    v56 = v85;
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v57 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v57, qword_27CFDEDB0);
    v58 = v56;
    v59 = v79;
    v60 = sub_221BCCD68();
    v61 = sub_221BCDA78();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_103();
      v63 = OUTLINED_FUNCTION_105();
      v80 = v7;
      v86 = v63;
      *v62 = 136315394;
      v64 = (*&v58[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v65 = *v64;
      v66 = v64[1];

      v67 = sub_2219A6360(v65, v66, &v86);
      v2 = 0;

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      v68 = [v59 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v69 = sub_221BCE168();
      v70 = *(v83 + 8);
      v71 = OUTLINED_FUNCTION_64_0();
      v72(v71);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v62 + 14) = v69;
      _os_log_impl(&dword_221989000, v60, v61, "[%s] EXECUTOR %s COMPLETED WITH NO RESULT NOR ERROR", v62, 0x16u);
      swift_arrayDestroy();
      v7 = v80;
      v54 = v82;
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_22_3();
    }

    v73 = &v58[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_continuation];
    v13 = v81;
    (*(v54 + 16))(v81, v73, v7);
    sub_2219A1218();
    v55 = OUTLINED_FUNCTION_17_2();
    *v74 = 0u;
    *(v74 + 16) = 0u;
    *(v74 + 32) = 5;
  }

  v86 = v55;
  v75 = v2;
  sub_221BCD788();
  (*(v54 + 8))(v13, v7);
LABEL_27:
  OUTLINED_FUNCTION_22();
}

void sub_2219EEDF8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_221BCC558();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v65 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  if (*(v1 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v13 = sub_221BCCD88();
    __swift_project_value_buffer(v13, qword_27CFDEDB0);
    v14 = v1;
    v15 = v7;
    v16 = v5;
    v17 = v3;
    v18 = sub_221BCCD68();
    v19 = sub_221BCDA98();

    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_127_0();
      v20 = OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_105();
      *v1 = 136315907;
      v21 = (*(v14 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher) + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v22 = *v21;
      v23 = v21[1];

      v24 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v24, v25, v26);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 1) = v22;
      *(v1 + 6) = 2080;
      v27 = [v15 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v28 = sub_221BCE168();
      v29 = *(v65 + 8);
      v30 = OUTLINED_FUNCTION_70_0();
      v31(v30);
      v32 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v32, v33, v34);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 14) = v28;
      OUTLINED_FUNCTION_110_0(2117);
      if (v3)
      {
        v35 = v3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        v37 = v36;
      }

      else
      {
        v36 = OUTLINED_FUNCTION_123();
      }

      v62 = v64;
      *(v1 + 34) = v36;
      *(v20 + 8) = v37;
      v63 = "[%s] Executor %s didCompleteExecution with result=%{sensitive}@, error=%{sensitive}@";
LABEL_17:
      _os_log_impl(&dword_221989000, v18, v62, v63, v1, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB7630, qword_221BD0790);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_23();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_44_0();

      goto LABEL_18;
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v38 = sub_221BCCD88();
    __swift_project_value_buffer(v38, qword_27CFDEDB0);
    v39 = v1;
    v40 = v7;
    v41 = v5;
    v42 = v3;
    v18 = sub_221BCCD68();
    v43 = sub_221BCDA98();

    if (os_log_type_enabled(v18, v43))
    {
      OUTLINED_FUNCTION_127_0();
      v44 = OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_105();
      *v1 = 136315907;
      v45 = (*(v39 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher) + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v46 = *v45;
      v47 = v45[1];

      v48 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v48, v49, v50);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 1) = v46;
      *(v1 + 6) = 2080;
      v51 = [v40 identifier];
      sub_221BCC528();

      sub_2219AC8D8();
      v52 = sub_221BCE168();
      v53 = *(v65 + 8);
      v54 = OUTLINED_FUNCTION_70_0();
      v55(v54);
      v56 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v56, v57, v58);
      OUTLINED_FUNCTION_112_0();
      *(v1 + 14) = v52;
      OUTLINED_FUNCTION_110_0(2113);
      if (v3)
      {
        v59 = v3;
        v60 = _swift_stdlib_bridgeErrorToNSError();
        v61 = v60;
      }

      else
      {
        v60 = OUTLINED_FUNCTION_123();
      }

      v62 = v64;
      *(v1 + 34) = v60;
      *(v44 + 8) = v61;
      v63 = "[%s] Executor %s didCompleteExecution with result=%{private}@, error=%{private}@";
      goto LABEL_17;
    }
  }

LABEL_18:
  sub_2219EF28C();
  OUTLINED_FUNCTION_22();
}

void sub_2219EF28C()
{
  OUTLINED_FUNCTION_21();
  swift_getObjectType();
  v1 = sub_221BCC558();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  if (qword_27CFB6CC0 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  os_unfair_lock_lock(&dword_27CFB81C0);

  os_unfair_lock_unlock(&dword_27CFB81C0);
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v16 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v16, qword_27CFDEDB0);
  v17 = v0;
  v38 = sub_221BCCD68();
  v18 = sub_221BCDA98();

  if (os_log_type_enabled(v38, v18))
  {
    v37 = v4;
    v19 = OUTLINED_FUNCTION_68();
    v39 = swift_slowAlloc();
    *v19 = 136315650;
    v20 = (*&v17[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher] + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
    v21 = *v20;
    v22 = v20[1];

    v23 = sub_2219A6360(v21, v22, &v39);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_221BCE478();
    v26 = sub_2219A6360(v24, v25, &v39);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    sub_2219EDE7C(v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v1))
    {
      sub_2219A1CC8(v15, &qword_27CFB82B0, &unk_221BD2990);
      v27 = 0xE300000000000000;
      v28 = 7104878;
    }

    else
    {
      v31 = v37;
      (*(v37 + 16))(v9, v15, v1);
      sub_2219A1CC8(v15, &qword_27CFB82B0, &unk_221BD2990);
      v28 = sub_221BCC4E8();
      v27 = v32;
      v33 = *(v31 + 8);
      v34 = OUTLINED_FUNCTION_118_0();
      v35(v34);
    }

    sub_2219A6360(v28, v27, &v39);
    OUTLINED_FUNCTION_112_0();
    *(v19 + 24) = v1;
    _os_log_impl(&dword_221989000, v38, v18, "[%s] %s invalidated for %s", v19, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_13_4();

    OUTLINED_FUNCTION_22();
  }

  else
  {
    OUTLINED_FUNCTION_22();
  }
}

void sub_2219EF618(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(uint64_t))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v14 = a5;
  v13 = OUTLINED_FUNCTION_118();
  a6(v13);
}

uint64_t sub_2219EF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return MEMORY[0x2822009F8](sub_2219EF6D0, 0, 0);
}

uint64_t sub_2219EF6D0()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_actionMetadata);
  sub_2219F2D44(*(v0 + 152));
  *(v0 + 160) = v2;
  v3 = *(v0 + 152);
  if (!v2)
  {
    v43 = [*(v0 + 152) parameterName];
    v44 = sub_221BCD388();
    v46 = v45;

    sub_2219ACADC();
    v47 = OUTLINED_FUNCTION_17_2();
    *v48 = v44;
    v48[1] = v46;
    v49 = OUTLINED_FUNCTION_107_0(v47, v48);

    [v3 respondWithError_];
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_26_1();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 144);
  v5 = [*(v0 + 152) providedValues];
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v6 = sub_221BCD668();

  v102 = sub_2219A69A0(v6);
  v7 = 0;
  v8 = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment;
  *(v0 + 168) = OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment;
  v9 = v0;
  v10 = v4 + v8;
  v98 = v6 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F98];
  v99 = v6;
  v97 = v6 & 0xFFFFFFFFFFFFFF8;
  v95 = v0;
LABEL_3:
  v94 = v11;
  *(v9 + 176) = v12;
  *(v9 + 184) = v11;
  v96 = v12;
  while (1)
  {
    if (v102 == v7)
    {
      v10 = v95;
      v38 = *(v95 + 152);

      v39 = [v38 dialog];
      *(v95 + 192) = v39;
      if (v39)
      {
        v40 = swift_task_alloc();
        *(v95 + 200) = v40;
        *v40 = v95;
        OUTLINED_FUNCTION_57_1(v40);
        OUTLINED_FUNCTION_26_1();

        return sub_22199B0DC();
      }

      *(v95 + 232) = 0;
      *(v95 + 240) = 0;
      *(v95 + 248) = 0;
      if (qword_280FA8FE0 == -1)
      {
LABEL_35:
        v52 = *(v10 + 144);
        v53 = sub_221BCCD88();
        *(v10 + 256) = OUTLINED_FUNCTION_178(v53, qword_280FA9008);
        v54 = v52;
        v55 = sub_221BCCD68();
        sub_221BCDA98();

        if (OUTLINED_FUNCTION_97_0())
        {
          v56 = *(v95 + 144);
          OUTLINED_FUNCTION_74_0();
          v103 = OUTLINED_FUNCTION_42_0();
          *v4 = 136315138;
          v57 = (*(v56 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_dispatcher) + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
          v58 = *v57;
          v59 = v57[1];

          v60 = OUTLINED_FUNCTION_27();
          v63 = sub_2219A6360(v60, v61, v62);

          *(v4 + 4) = v63;
          v10 = v95;
          OUTLINED_FUNCTION_10_3(&dword_221989000, v64, v65, "[%s] NeedsDisambiguation: waiting for client response...");
          __swift_destroy_boxed_opaque_existential_0(v103);
          OUTLINED_FUNCTION_23();
          OUTLINED_FUNCTION_20_1();
        }

        v100 = *(v10 + 184);
        v66 = *(v10 + 160);
        v67 = *(v10 + 144);
        v68 = *(v10 + 152);
        v69 = (v67 + *(v10 + 168));
        v71 = *(v67 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate);
        v70 = *(v67 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
        swift_getObjectType();
        v72 = OUTLINED_FUNCTION_14_5();
        sub_2219F6C8C(v72, v73, v74);
        v75 = v66;
        v76 = [v68 parameterName];
        v77 = sub_221BCD388();
        v79 = v78;

        v80 = v69[4];
        __swift_project_boxed_opaque_existential_0(v69, v69[3]);
        v81 = OUTLINED_FUNCTION_27_3();
        v82(v81);
        *(v10 + 80) = &type metadata for AnyIntentParameterMetadata;
        *(v10 + 88) = &protocol witness table for AnyIntentParameterMetadata;
        OUTLINED_FUNCTION_49();
        v83 = swift_allocObject();
        *(v10 + 56) = v83;
        sub_2219BCDE0(v75, v77, v79, (v83 + 16));
        *(v10 + 48) = 0;
        *(v10 + 32) = 0u;
        *(v10 + 16) = 0u;
        *(v10 + 96) = v100;
        v84 = *(v70 + 16);
        OUTLINED_FUNCTION_43_1();
        v101 = v85 + *v85;
        v87 = *(v86 + 4);
        v88 = swift_task_alloc();
        *(v10 + 264) = v88;
        *v88 = v10;
        OUTLINED_FUNCTION_32_2(v88);
        OUTLINED_FUNCTION_26_1();

        __asm { BRAA            X3, X16 }
      }

LABEL_47:
      OUTLINED_FUNCTION_2_16();
      goto LABEL_35;
    }

    if (v98)
    {
      v13 = MEMORY[0x223DA3BF0](v7, v99);
    }

    else
    {
      if (v7 >= *(v97 + 16))
      {
        goto LABEL_41;
      }

      v13 = *(v99 + 8 * v7 + 32);
    }

    v14 = v13;
    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v15 = *(v10 + 24);
    v16 = *(v10 + 32);
    __swift_project_boxed_opaque_existential_0(v10, v15);
    v17 = *(v16 + 24);
    v18 = v14;
    v19 = v17(v15, v16);
    v21 = v20;
    v22 = [v18 displayRepresentation];
    if (v22)
    {

      v23 = v94;
      v24 = *(v94 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_221B9EAA0(v24);
      if (__OFADD__(v96[2], (v26 & 1) == 0))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v93 = v26;
      v92 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8330, &qword_221BD2CA8);
      if (sub_221BCE028())
      {
        v27 = sub_221B9EAA0(v24);
        v29 = v93;
        if ((v93 & 1) != (v28 & 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v92;
        v29 = v93;
      }

      if (v29)
      {
        *(v96[7] + 8 * v27) = v7;
      }

      else
      {
        v96[(v27 >> 6) + 8] |= 1 << v27;
        *(v96[6] + 8 * v27) = v24;
        *(v96[7] + 8 * v27) = v7;
        v30 = v96[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_46;
        }

        v96[2] = v32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(v94 + 16);
        sub_2219B3D84();
        v23 = v36;
      }

      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_119_0(v33);
        sub_2219B3D84();
        v11 = v37;
      }

      else
      {
        v11 = v23;
      }

      v9 = v95;
      *(v95 + 136) = &off_28351B418;
      *(v95 + 104) = v19;
      *(v95 + 112) = v21;
      *(v95 + 120) = v18;
      *(v95 + 128) = &type metadata for LNValueBackedDisplayRepresentable;
      *(v11 + 16) = v34 + 1;
      sub_22198B358((v95 + 104), v11 + 40 * v34 + 32);
      ++v7;
      v12 = v96;
      goto LABEL_3;
    }

    ++v7;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  OUTLINED_FUNCTION_26_1();

  return sub_221BCE228();
}