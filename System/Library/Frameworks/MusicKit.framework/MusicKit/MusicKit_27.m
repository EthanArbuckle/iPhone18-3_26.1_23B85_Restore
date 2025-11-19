uint64_t sub_21741D65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_21741DB64(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21741DD94, 0, 0);
}

uint64_t sub_21741DD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_217438204(v42, v43);
}

uint64_t sub_21741E388()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21741E480()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21741E588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21741E9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_21741EED4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21741F104, 0, 0);
}

uint64_t sub_21741F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_217438D8C(v42, v43);
}

uint64_t sub_21741F6F8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21741F7F0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21741F8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21741FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217420244(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217420474, 0, 0);
}

uint64_t sub_217420474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_217439914(v42, v43);
}

uint64_t sub_217420A68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217420B60()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217420C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2174210AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_2174215B4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174217E4, 0, 0);
}

uint64_t sub_2174217E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743A49C(v42, v43);
}

uint64_t sub_217421DD8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217421ED0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217421FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217422924(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217422B54, 0, 0);
}

uint64_t sub_217422B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743B024(v42, v43);
}

uint64_t sub_217423148()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217423240()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217423348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217423C94(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217423EC4, 0, 0);
}

uint64_t sub_217423EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743BBAC(v42, v43);
}

uint64_t sub_2174244B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174245B0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174246B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217424AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217425004(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217425234, 0, 0);
}

uint64_t sub_217425234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743C734(v42, v43);
}

uint64_t sub_217425828()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217425920()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217425A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_217425E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217426374(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174265A4, 0, 0);
}

uint64_t sub_2174265A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743D2BC(v42, v43);
}

uint64_t sub_217426B98()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217426C90()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217426D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_2174271DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_2174276E4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217427914, 0, 0);
}

uint64_t sub_217427914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743DE44(v42, v43);
}

uint64_t sub_217427F08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217428000()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_217428108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_217428A54(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217428C84, 0, 0);
}

uint64_t sub_217428C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_46:
      OUTLINED_FUNCTION_717();

      return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v141 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v141, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          v27 = (v28 + 216);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v128, v129, v130, v131);
            v26 = v132;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v133 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v133, v134, v135, v26);
            v26 = v136;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v27 = [objc_opt_self() mainBundle], v80 = NSBundle.isMusicApp.getter(), v27, !v80))
          {
            v89 = OUTLINED_FUNCTION_353();
            v90(v89);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v81 = OUTLINED_FUNCTION_308();
            v82(v81);
            OUTLINED_FUNCTION_356();
            a22 = v84;
            if (v67)
            {
              v137 = OUTLINED_FUNCTION_341(v83);
              sub_2172B1A50(v137, v138, v139, v26);
              v26 = v140;
            }

            v85 = OUTLINED_FUNCTION_112_10();
            v30(v85);
            v86 = OUTLINED_FUNCTION_148();
            v30(v86);
            v87 = OUTLINED_FUNCTION_113_9();
            v88(v87);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v91 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v91, v92, v93);
        v94 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry.Item);
        if (v94)
        {
          OUTLINED_FUNCTION_224_3(v94, v95);
          v97 = OUTLINED_FUNCTION_1032(v96);
          v99 = v98(v97);
          v27 = (v28 + 208);
          sub_21754383C(v99);
        }

        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v101 = OUTLINED_FUNCTION_66_10(v100, qword_280BE7428);
        v102(v101);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v115 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v115, v116, v117, v118);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v103);
        }

        v104 = OUTLINED_FUNCTION_4_54();
        v105(v104);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v27, v106);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v119, v120, v121, v122);
      v26 = v123;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v124 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v124, v125, v126, v26);
      v26 = v127;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743E9CC(v42, v43);
}

uint64_t sub_2174292B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174293A8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2174294B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  v29 = v26[62];
  if (v29)
  {
    OUTLINED_FUNCTION_186_4();

    v30 = OUTLINED_FUNCTION_146_6();
    v31(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v109 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v109, v110, v111, v112);
      v33 = v113;
    }

    OUTLINED_FUNCTION_103();
    if (v34)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v114, v115, v116, v117);
      v33 = v118;
    }

    v36 = v26[41];
    v35 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v37();
    v38 = OUTLINED_FUNCTION_87_0();
    v39(v38);
    v26[26] = v33;
  }

  else
  {
    v33 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v41 = v41 || v40 == 4;
  if (v41)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v40 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v42 = OUTLINED_FUNCTION_146_6();
  v43(v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v100 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v100, v101, v102, v103);
    v33 = v104;
  }

  OUTLINED_FUNCTION_103();
  if (v34)
  {
    v105 = OUTLINED_FUNCTION_11_1(v44);
    sub_2172B1A50(v105, v106, v107, v33);
    v33 = v108;
  }

  v45 = OUTLINED_FUNCTION_92_9();
  v46(v45);
  v47 = OUTLINED_FUNCTION_87_0();
  v48(v47);
  v26[26] = v33;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v41)
  {
    OUTLINED_FUNCTION_793();
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v49);
      v29 = v26 + 27;
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v51 = OUTLINED_FUNCTION_108_9();
      v52(v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v119, v120, v121, v122);
        v33 = v123;
      }

      OUTLINED_FUNCTION_162_0();
      if (v34)
      {
        v124 = OUTLINED_FUNCTION_11_1(v53);
        sub_2172B1A50(v124, v125, v126, v33);
        v33 = v127;
      }

      v54 = OUTLINED_FUNCTION_9_29();
      v27(v54);
      OUTLINED_FUNCTION_794();
      if (v55 != v56 || (v29 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v29, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v34)
        {
          v128 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v128, v129, v130, v33);
          v33 = v131;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v33;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  v71 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry.Item);
  if (v71)
  {
    OUTLINED_FUNCTION_224_3(v71, v72);
    v74 = OUTLINED_FUNCTION_1032(v73);
    v76 = v75(v74);
    v29 = v26 + 26;
    sub_21754383C(v76);
  }

  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v78 = OUTLINED_FUNCTION_66_10(v77, qword_280BE7428);
  v79(v78);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v92 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v92, v93, v94, v95);
  }

  OUTLINED_FUNCTION_159_0();
  if (v34)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v96, v97, v98, v99);
  }

  v80 = OUTLINED_FUNCTION_0_57();
  v81(v80);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C(v29, v82);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    v34 = (v28 + 112);
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v81 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v81, v82, v83);
          v84 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry.Item);
          if (v84)
          {
            OUTLINED_FUNCTION_224_3(v84, v85);
            v87 = OUTLINED_FUNCTION_1032(v86);
            v89 = v88(v87);
            v34 = (v28 + 208);
            sub_21754383C(v89);
          }

          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v91 = OUTLINED_FUNCTION_66_10(v90, qword_280BE7428);
          v92(v91);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v105 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v105, v106, v107, v108);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v93);
          }

          v94 = OUTLINED_FUNCTION_0_57();
          v95(v94);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v34, v96);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v98(v97, v98, v99, v100, v101, v102, v103, v104, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          v34 = (v28 + 216);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v118, v119, v120, v121);
            v26 = v122;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v123 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v123, v124, v125, v26);
            v26 = v126;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v34 = [objc_opt_self() mainBundle], v70 = NSBundle.isMusicApp.getter(), v34, !v70))
          {
            v79 = OUTLINED_FUNCTION_353();
            v80(v79);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v71 = OUTLINED_FUNCTION_210_4();
            v72(v71);
            OUTLINED_FUNCTION_356();
            a23 = v74;
            if (v56)
            {
              v127 = OUTLINED_FUNCTION_341(v73);
              sub_2172B1A50(v127, v128, v129, v26);
              v26 = v130;
            }

            v75 = OUTLINED_FUNCTION_69_12();
            v30(v75);
            v76 = OUTLINED_FUNCTION_148();
            v30(v76);
            v77 = OUTLINED_FUNCTION_39_11();
            v78(v77);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v109, v110, v111, v112);
      v26 = v113;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v114 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v114, v115, v116, v26);
      v26 = v117;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v131 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v131, a24, a25, a26);
}

uint64_t sub_217429E6C(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742A09C, 0, 0);
}

uint64_t sub_21742A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_46:
      OUTLINED_FUNCTION_717();

      return v108(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v141 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v141, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          v27 = (v28 + 216);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v128 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v128, v129, v130, v131);
            v26 = v132;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v133 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v133, v134, v135, v26);
            v26 = v136;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v27 = [objc_opt_self() mainBundle], v80 = NSBundle.isMusicApp.getter(), v27, !v80))
          {
            v89 = OUTLINED_FUNCTION_353();
            v90(v89);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v81 = OUTLINED_FUNCTION_308();
            v82(v81);
            OUTLINED_FUNCTION_356();
            a22 = v84;
            if (v67)
            {
              v137 = OUTLINED_FUNCTION_341(v83);
              sub_2172B1A50(v137, v138, v139, v26);
              v26 = v140;
            }

            v85 = OUTLINED_FUNCTION_112_10();
            v30(v85);
            v86 = OUTLINED_FUNCTION_148();
            v30(v86);
            v87 = OUTLINED_FUNCTION_113_9();
            v88(v87);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v91 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v91, v92, v93);
        v94 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry);
        if (v94)
        {
          OUTLINED_FUNCTION_224_3(v94, v95);
          v97 = OUTLINED_FUNCTION_1032(v96);
          v99 = v98(v97);
          v27 = (v28 + 208);
          sub_21754383C(v99);
        }

        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v101 = OUTLINED_FUNCTION_66_10(v100, qword_280BE7428);
        v102(v101);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v115 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v115, v116, v117, v118);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v103);
        }

        v104 = OUTLINED_FUNCTION_4_54();
        v105(v104);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v27, v106);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v119, v120, v121, v122);
      v26 = v123;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v124 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v124, v125, v126, v26);
      v26 = v127;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_21743F554(v42, v43);
}

uint64_t sub_21742A6C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742A7C0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  v29 = v26[62];
  if (v29)
  {
    OUTLINED_FUNCTION_186_4();

    v30 = OUTLINED_FUNCTION_146_6();
    v31(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v109 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v109, v110, v111, v112);
      v33 = v113;
    }

    OUTLINED_FUNCTION_103();
    if (v34)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v114, v115, v116, v117);
      v33 = v118;
    }

    v36 = v26[41];
    v35 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v37();
    v38 = OUTLINED_FUNCTION_87_0();
    v39(v38);
    v26[26] = v33;
  }

  else
  {
    v33 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v41 = v41 || v40 == 4;
  if (v41)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v40 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v42 = OUTLINED_FUNCTION_146_6();
  v43(v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v100 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v100, v101, v102, v103);
    v33 = v104;
  }

  OUTLINED_FUNCTION_103();
  if (v34)
  {
    v105 = OUTLINED_FUNCTION_11_1(v44);
    sub_2172B1A50(v105, v106, v107, v33);
    v33 = v108;
  }

  v45 = OUTLINED_FUNCTION_92_9();
  v46(v45);
  v47 = OUTLINED_FUNCTION_87_0();
  v48(v47);
  v26[26] = v33;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v41)
  {
    OUTLINED_FUNCTION_793();
    if ((v50 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v49);
      v29 = v26 + 27;
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v51 = OUTLINED_FUNCTION_108_9();
      v52(v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v119, v120, v121, v122);
        v33 = v123;
      }

      OUTLINED_FUNCTION_162_0();
      if (v34)
      {
        v124 = OUTLINED_FUNCTION_11_1(v53);
        sub_2172B1A50(v124, v125, v126, v33);
        v33 = v127;
      }

      v54 = OUTLINED_FUNCTION_9_29();
      v27(v54);
      OUTLINED_FUNCTION_794();
      if (v55 != v56 || (v29 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v29, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v34)
        {
          v128 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v128, v129, v130, v33);
          v33 = v131;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v33;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  v71 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry);
  if (v71)
  {
    OUTLINED_FUNCTION_224_3(v71, v72);
    v74 = OUTLINED_FUNCTION_1032(v73);
    v76 = v75(v74);
    v29 = v26 + 26;
    sub_21754383C(v76);
  }

  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v78 = OUTLINED_FUNCTION_66_10(v77, qword_280BE7428);
  v79(v78);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v92 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v92, v93, v94, v95);
  }

  OUTLINED_FUNCTION_159_0();
  if (v34)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v96, v97, v98, v99);
  }

  v80 = OUTLINED_FUNCTION_0_57();
  v81(v80);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C(v29, v82);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v84(v83, v84, v85, v86, v87, v88, v89, v90, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    v34 = (v28 + 112);
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v81 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v81, v82, v83);
          v84 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry);
          if (v84)
          {
            OUTLINED_FUNCTION_224_3(v84, v85);
            v87 = OUTLINED_FUNCTION_1032(v86);
            v89 = v88(v87);
            v34 = (v28 + 208);
            sub_21754383C(v89);
          }

          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v91 = OUTLINED_FUNCTION_66_10(v90, qword_280BE7428);
          v92(v91);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v105 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v105, v106, v107, v108);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v93);
          }

          v94 = OUTLINED_FUNCTION_0_57();
          v95(v94);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v34, v96);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v98(v97, v98, v99, v100, v101, v102, v103, v104, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          v34 = (v28 + 216);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v118, v119, v120, v121);
            v26 = v122;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v123 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v123, v124, v125, v26);
            v26 = v126;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v34 = [objc_opt_self() mainBundle], v70 = NSBundle.isMusicApp.getter(), v34, !v70))
          {
            v79 = OUTLINED_FUNCTION_353();
            v80(v79);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v71 = OUTLINED_FUNCTION_210_4();
            v72(v71);
            OUTLINED_FUNCTION_356();
            a23 = v74;
            if (v56)
            {
              v127 = OUTLINED_FUNCTION_341(v73);
              sub_2172B1A50(v127, v128, v129, v26);
              v26 = v130;
            }

            v75 = OUTLINED_FUNCTION_69_12();
            v30(v75);
            v76 = OUTLINED_FUNCTION_148();
            v30(v76);
            v77 = OUTLINED_FUNCTION_39_11();
            v78(v77);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v109, v110, v111, v112);
      v26 = v113;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v114 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v114, v115, v116, v26);
      v26 = v117;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v131 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v131, a24, a25, a26);
}

uint64_t sub_21742B284(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742B4B4, 0, 0);
}

uint64_t sub_21742B4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_2174400DC(v42, v43);
}

uint64_t sub_21742BAA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742BBA0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_21742C5F4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v6 = *(v5 - 8);
  v3[33] = v6;
  v7 = *(v6 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v8 = *(*(sub_217751908() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v9 = sub_217751928();
  v3[44] = v9;
  v10 = *(v9 - 8);
  v3[45] = v10;
  v11 = *(v10 + 64) + 15;
  v3[46] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v13 = type metadata accessor for MusicAPI.Endpoint();
  v3[48] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742C824, 0, 0);
}

uint64_t sub_21742C824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(unint64_t), void (*a22)(void), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_472();
  if ((v32 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v63)
    {
      v33 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v33, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      sub_2171FF280(v34, v35);
      OUTLINED_FUNCTION_268();
      v36 = sub_217751918();
      v37 = OUTLINED_FUNCTION_177_5(v36);
      v38(v37);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      OUTLINED_FUNCTION_628();

      OUTLINED_FUNCTION_490();
LABEL_44:
      OUTLINED_FUNCTION_717();

      return v103(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_70_9();
      v136 = v49 + *v49;
      v51 = *(v50 + 4);
      v52 = swift_task_alloc();
      v53 = OUTLINED_FUNCTION_826(v52);
      *v53 = v54;
      OUTLINED_FUNCTION_114_6(v53);
      OUTLINED_FUNCTION_717();

      return v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v136, a23, a24, a25, a26);
    }

    OUTLINED_FUNCTION_1185();
    v63 = v27 == 1 || v27 == 4;
    if (v63)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v27 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v74 = OUTLINED_FUNCTION_146_6();
          a22 = v75;
          v75(v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v123, v124, v125, v126);
            v26 = v127;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v128 = OUTLINED_FUNCTION_11_1(v76);
            sub_2172B1A50(v128, v129, v130, v26);
            v26 = v131;
          }

          v77 = OUTLINED_FUNCTION_9_29();
          v29(v77);
          OUTLINED_FUNCTION_794();
          if (v78 != v79 || (v80 = [objc_opt_self() mainBundle], v81 = NSBundle.isMusicApp.getter(), v80, !v81))
          {
            v90 = OUTLINED_FUNCTION_353();
            v91(v90);
          }

          else
          {
            a21 = v29;
            OUTLINED_FUNCTION_22_23();
            v82 = OUTLINED_FUNCTION_308();
            v83(v82);
            OUTLINED_FUNCTION_356();
            a22 = v85;
            if (v67)
            {
              v132 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v132, v133, v134, v26);
              v26 = v135;
            }

            v86 = OUTLINED_FUNCTION_112_10();
            v30(v86);
            v87 = OUTLINED_FUNCTION_148();
            v30(v87);
            v88 = OUTLINED_FUNCTION_113_9();
            v89(v88);
            *(v28 + 208) = v26;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_339();
        a9 = sub_217204DD0;
        OUTLINED_FUNCTION_51_13();
        sub_217441B48();

        v92 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v92, v93, v94);
        sub_21754383C(MEMORY[0x277D84F90]);
        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15();
        }

        OUTLINED_FUNCTION_792();
        v96 = OUTLINED_FUNCTION_66_10(v95, qword_280BE7428);
        v97(v96);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v110 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v110, v111, v112, v113);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v98);
        }

        v99 = OUTLINED_FUNCTION_4_54();
        v100(v99);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v28 + 208, v101);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v114, v115, v116, v117);
      v26 = v118;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v119 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v119, v120, v121, v26);
      v26 = v122;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v63)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v31);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_717();

  return sub_217440C64(v42, v43);
}

uint64_t sub_21742CE18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 416);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742CF10()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  v6 = *(v5 + 480);
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v7, v8);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742D018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  if (v26[62])
  {
    OUTLINED_FUNCTION_186_4();

    v29 = OUTLINED_FUNCTION_146_6();
    v30(v29);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v26[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v103, v104, v105, v106);
      v32 = v107;
    }

    OUTLINED_FUNCTION_103();
    if (v33)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v108, v109, v110, v111);
      v32 = v112;
    }

    v35 = v26[41];
    v34 = v26[42];
    OUTLINED_FUNCTION_155_8();
    v36();
    v37 = OUTLINED_FUNCTION_87_0();
    v38(v37);
    v26[26] = v32;
  }

  else
  {
    v32 = v26[59];
  }

  OUTLINED_FUNCTION_470();
  v40 = v40 || v39 == 4;
  if (v40)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v39 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7();

  v41 = OUTLINED_FUNCTION_146_6();
  v42(v41);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v94 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v94, v95, v96, v97);
    v32 = v98;
  }

  OUTLINED_FUNCTION_103();
  if (v33)
  {
    v99 = OUTLINED_FUNCTION_11_1(v43);
    sub_2172B1A50(v99, v100, v101, v32);
    v32 = v102;
  }

  v44 = OUTLINED_FUNCTION_92_9();
  v45(v44);
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  v26[26] = v32;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v40)
  {
    OUTLINED_FUNCTION_793();
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v48);
      sub_217752FC8();
      OUTLINED_FUNCTION_48_6();

      v50 = OUTLINED_FUNCTION_108_9();
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v113, v114, v115, v116);
        v32 = v117;
      }

      OUTLINED_FUNCTION_162_0();
      if (v33)
      {
        v118 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v118, v119, v120, v32);
        v32 = v121;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v27(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v56 = [objc_opt_self() mainBundle], v57 = NSBundle.isMusicApp.getter(), v56, !v57))
      {
        v66 = OUTLINED_FUNCTION_353();
        v67(v66);
      }

      else
      {
        a22 = v27;
        OUTLINED_FUNCTION_22_23();
        v58 = OUTLINED_FUNCTION_210_4();
        v59(v58);
        OUTLINED_FUNCTION_356();
        a23 = v61;
        if (v33)
        {
          v122 = OUTLINED_FUNCTION_341(v60);
          sub_2172B1A50(v122, v123, v124, v32);
          v32 = v125;
        }

        v62 = OUTLINED_FUNCTION_69_12();
        v28(v62);
        v63 = OUTLINED_FUNCTION_148();
        v28(v63);
        v64 = OUTLINED_FUNCTION_39_11();
        v65(v64);
        v26[26] = v32;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_51_13();
  sub_217441B48();

  v68 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v68, v69, v70);
  sub_21754383C(MEMORY[0x277D84F90]);
  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15();
  }

  OUTLINED_FUNCTION_792();
  v72 = OUTLINED_FUNCTION_66_10(v71, qword_280BE7428);
  v73(v72);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v86 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v86, v87, v88, v89);
  }

  OUTLINED_FUNCTION_159_0();
  if (v33)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v90, v91, v92, v93);
  }

  v74 = OUTLINED_FUNCTION_0_57();
  v75(v74);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C((v26 + 26), v76);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_717();

  return v78(v77, v78, v79, v80, v81, v82, v83, v84, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_21742D45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(unint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_777();
  OUTLINED_FUNCTION_799();
  OUTLINED_FUNCTION_1237();
  OUTLINED_FUNCTION_57_13();
  if (v32 || (OUTLINED_FUNCTION_1236(), !v27))
  {

    OUTLINED_FUNCTION_986();
  }

  else
  {
    OUTLINED_FUNCTION_987();
    v32 = v32 && v27 == 0xE200000000000000;
    if (v32)
    {

      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_441();
      OUTLINED_FUNCTION_1240();
      v31 = v26 ^ 1;
    }
  }

  OUTLINED_FUNCTION_169_6();
  v34 = *(v33 + 16);

  if (v34 == 1)
  {
    LODWORD(v34) = v28 + 112;
    sub_2174417EC();
    OUTLINED_FUNCTION_992(v35);
    if (v36)
    {
      OUTLINED_FUNCTION_881();
    }

    else
    {
      OUTLINED_FUNCTION_404();
    }
  }

  else
  {
    OUTLINED_FUNCTION_404();
  }

  OUTLINED_FUNCTION_13_28();
  if (!v32)
  {
    OUTLINED_FUNCTION_1185();
    if (v34 == 1 || v34 == 4)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v34 != 3)
      {
        if ((v31 & 1) == 0)
        {
LABEL_47:
          OUTLINED_FUNCTION_27_23();
          OUTLINED_FUNCTION_339();
          OUTLINED_FUNCTION_51_13();
          sub_217441B48();

          v82 = OUTLINED_FUNCTION_351();
          sub_2172CB1C4(v82, v83, v84);
          sub_21754383C(MEMORY[0x277D84F90]);
          if (qword_280BE7420 != -1)
          {
            OUTLINED_FUNCTION_45_15();
          }

          OUTLINED_FUNCTION_792();
          v86 = OUTLINED_FUNCTION_66_10(v85, qword_280BE7428);
          v87(v86);
          if ((OUTLINED_FUNCTION_1157() & 1) == 0)
          {
            v100 = OUTLINED_FUNCTION_87_11();
            sub_2172B1A50(v100, v101, v102, v103);
          }

          OUTLINED_FUNCTION_159_0();
          if (v56)
          {
            OUTLINED_FUNCTION_381(v88);
          }

          v89 = OUTLINED_FUNCTION_0_57();
          v90(v89);
          OUTLINED_FUNCTION_1168();

          OUTLINED_FUNCTION_1_17();
          sub_217498E7C(v28 + 208, v91);

          OUTLINED_FUNCTION_0_2();
          OUTLINED_FUNCTION_717();

          return v93(v92, v93, v94, v95, v96, v97, v98, v99, sub_217204DD0, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
        }

LABEL_36:
        OUTLINED_FUNCTION_793();
        if ((v63 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v62);
          sub_217752FC8();
          OUTLINED_FUNCTION_48_6();

          v64 = OUTLINED_FUNCTION_108_9();
          v65(v64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v113 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v113, v114, v115, v116);
            v26 = v117;
          }

          OUTLINED_FUNCTION_162_0();
          if (v56)
          {
            v118 = OUTLINED_FUNCTION_11_1(v66);
            sub_2172B1A50(v118, v119, v120, v26);
            v26 = v121;
          }

          v67 = OUTLINED_FUNCTION_9_29();
          v29(v67);
          OUTLINED_FUNCTION_794();
          if (v68 != v69 || (v70 = [objc_opt_self() mainBundle], v71 = NSBundle.isMusicApp.getter(), v70, !v71))
          {
            v80 = OUTLINED_FUNCTION_353();
            v81(v80);
          }

          else
          {
            a22 = v29;
            OUTLINED_FUNCTION_22_23();
            v72 = OUTLINED_FUNCTION_210_4();
            v73(v72);
            OUTLINED_FUNCTION_356();
            a23 = v75;
            if (v56)
            {
              v122 = OUTLINED_FUNCTION_341(v74);
              sub_2172B1A50(v122, v123, v124, v26);
              v26 = v125;
            }

            v76 = OUTLINED_FUNCTION_69_12();
            v30(v76);
            v77 = OUTLINED_FUNCTION_148();
            v30(v77);
            v78 = OUTLINED_FUNCTION_39_11();
            v79(v78);
            *(v28 + 208) = v26;
          }
        }

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7();

    v53 = OUTLINED_FUNCTION_146_6();
    v54(v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v104, v105, v106, v107);
      v26 = v108;
    }

    OUTLINED_FUNCTION_103();
    if (v56)
    {
      v109 = OUTLINED_FUNCTION_11_1(v55);
      sub_2172B1A50(v109, v110, v111, v26);
      v26 = v112;
    }

    v57 = OUTLINED_FUNCTION_92_9();
    v58(v57);
    v59 = OUTLINED_FUNCTION_87_0();
    v60(v59);
    OUTLINED_FUNCTION_836();
    if ((v61 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_1186();
  OUTLINED_FUNCTION_71_11();
  v126 = v37 + *v37;
  v39 = *(v38 + 4);
  v40 = swift_task_alloc();
  v41 = OUTLINED_FUNCTION_826(v40);
  *v41 = v42;
  OUTLINED_FUNCTION_176_7(v41);
  OUTLINED_FUNCTION_717();

  return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v126, a24, a25, a26);
}

uint64_t sub_21742D964(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742DA98;

  return sub_2173EE194((v1 + 2));
}

uint64_t sub_21742DA98()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742DB90()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEA34();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_2171F0790(v0 + 16, &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB24550, &qword_217758A58);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v6 = OUTLINED_FUNCTION_324();
    v7(v6);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21742DCC8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_1266();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21742DD28(uint64_t a1)
{
  v1[23] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v3 = sub_217751928();
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[28] = v6;
  *v6 = v1;
  v6[1] = sub_21742DE5C;

  return sub_2173EE608((v1 + 2));
}

uint64_t sub_21742DE5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742DF54()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEA70();
  OUTLINED_FUNCTION_1339();
  if (v1)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[24];
    sub_2171F0790((v0 + 15), &qword_27CB245B8, &qword_217758AE0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v7, v8);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v9 = OUTLINED_FUNCTION_324();
    v10(v9);
    swift_willThrow();
    sub_2171F0790((v0 + 2), &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_1512();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v3 = v0[23];
    v2 = v0[24];
    sub_2171F0790((v0 + 2), &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_857();

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_1322();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_21742E090()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_1512();

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_21742E0F0(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742E224;

  return sub_2173EE9F8((v1 + 2));
}

uint64_t sub_21742E224()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742E31C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEAAC();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_2171F0790(v0 + 16, &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB2AF60, &qword_217758C00);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v6 = OUTLINED_FUNCTION_324();
    v7(v6);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21742E454(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742E588;

  return sub_2173EEDE8((v1 + 2));
}

uint64_t sub_21742E588()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742E680()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEAE8();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_2171F0790(v0 + 16, &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB277F0, &unk_21775A2B0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v6 = OUTLINED_FUNCTION_324();
    v7(v6);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21742E7B8(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742E8EC;

  return sub_2173EF1D8((v1 + 2));
}

uint64_t sub_21742E8EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742E9E4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE9F8();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_2171F0790(v0 + 16, &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB275E0, &qword_2177589D0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v6 = OUTLINED_FUNCTION_324();
    v7(v6);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21742EB1C(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742EC50;

  return sub_2173EF5C8((v1 + 2));
}

uint64_t sub_21742EC50()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742ED48()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE898();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    sub_2171F0790(v0 + 16, &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB27760, &unk_21775A2D0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v4, v5);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v6 = OUTLINED_FUNCTION_324();
    v7(v6);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_21742EE80(uint64_t a1)
{
  v1[23] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v3 = sub_217751928();
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[28] = v6;
  *v6 = v1;
  v6[1] = sub_21742EFB4;

  return sub_2173EF9B8();
}

uint64_t sub_21742EFB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_21742F0AC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEB24();
  OUTLINED_FUNCTION_1339();
  if (v1)
  {
    v4 = v0[25];
    v5 = v0[26];
    v6 = v0[24];
    sub_2171F0790((v0 + 15), &unk_27CB28AA0, &qword_21775A020);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    sub_2171FF280(v7, v8);
    OUTLINED_FUNCTION_268();
    sub_217751918();
    v9 = OUTLINED_FUNCTION_324();
    v10(v9);
    swift_willThrow();
    sub_2171F0790((v0 + 2), &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_1512();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    v3 = v0[23];
    v2 = v0[24];
    sub_2171F0790((v0 + 2), &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_857();

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_1322();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_21742F1E8(uint64_t a1)
{
  v1[22] = a1;
  v2 = *(*(sub_217751908() - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_217751928();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[27] = v6;
  *v6 = v1;
  v6[1] = sub_21742F31C;

  return sub_2173EFD90((v1 + 2));
}