uint64_t sub_221B7534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a3;
  v33 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v32 - v19;
  v21 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v13 + 16))(v16, a1, v12);
  v22 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v25 = v32;
  v24 = v33;
  *(v23 + 4) = a2;
  *(v23 + 5) = v25;
  *(v23 + 6) = a4;
  *(v23 + 7) = v24;
  *(v23 + 8) = a6;
  *(v23 + 9) = a7;
  (*(v13 + 32))(&v23[v22], v16, v12);

  sub_2219F7E3C();
  v27 = v26;
  v28 = (a7 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock(v28);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
  v30 = *(v29 + 1);
  *(v29 + 1) = v27;

  os_unfair_lock_unlock(v28);
}

uint64_t sub_221B755AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v19;
  v8[19] = v20;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v8[20] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  v8[22] = v11;
  v12 = *(v11 - 8);
  v8[23] = v12;
  v13 = *(v12 + 64) + 15;
  v8[24] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC28, &qword_221BE5D38);
  v8[25] = v14;
  v15 = *(v14 - 8);
  v8[26] = v15;
  v16 = *(v15 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B75730, 0, 0);
}

uint64_t sub_221B75730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v42 = v16[27];
  v18 = v16[23];
  v17 = v16[24];
  v19 = v16[22];
  v21 = v16[16];
  v20 = v16[17];
  v23 = v16[14];
  v22 = v16[15];
  v24 = v16[13];
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BF1170);
  sub_221B93ED0(v23, v22, v21, v20);
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  sub_221B74748(0, 0xE000000000000000);

  sub_221BCD838();
  v25 = *(v18 + 8);
  v26 = OUTLINED_FUNCTION_4();
  v27(v26);
  v28 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state;
  v16[28] = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v16[29] = v28;
  v29 = *(MEMORY[0x277D85798] + 4);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_11_18(v30);
  *v31 = v32;
  OUTLINED_FUNCTION_1_43(v31);
  v33 = OUTLINED_FUNCTION_15_14();

  return MEMORY[0x2822003E8](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B75898()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 240);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B7597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  v27 = *(v24 + 16);
  *(v24 + 248) = v27;
  v28 = *(v24 + 24);
  if (v28 == 255)
  {
    (*(*(v24 + 208) + 8))(*(v24 + 216), *(v24 + 200));
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    v42 = *(v24 + 144);
    v43 = sub_221BCCD88();
    __swift_project_value_buffer(v43, qword_27CFDEE58);

    v44 = sub_221BCCD68();
    v45 = sub_221BCDA98();

    if (os_log_type_enabled(v44, v45))
    {
      v47 = *(v24 + 160);
      v46 = *(v24 + 168);
      v48 = *(v24 + 144);
      v49 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_105();
      *v49 = 136315394;
      v50 = sub_2219A6360(*(v48 + 40), *(v48 + 48), &a13);
      OUTLINED_FUNCTION_50_7(v50);
      sub_221B74EE8(v46);
      v51 = sub_221BCD3D8();
      v53 = sub_2219A6360(v51, v52, &a13);

      *(v49 + 14) = v53;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_23();
    }

LABEL_39:
    v139 = *(v24 + 216);
    v140 = *(v24 + 192);
    v141 = *(v24 + 168);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_28_0();

    return v143(v142, v143, v144, v145, v146, v147, v148, v149, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    v29 = *(v24 + 144);
    v30 = sub_221BCCD88();
    v31 = __swift_project_value_buffer(v30, qword_27CFDEE58);
    *(v24 + 256) = v31;

    sub_221B7B8A8(v27, v28);
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA68();

    sub_221B61B30(v27, v28);
    if (os_log_type_enabled(v32, v33))
    {
      LODWORD(a11) = v33;
      a12 = v31;
      v34 = OUTLINED_FUNCTION_31_11();
      a10 = swift_slowAlloc();
      *(v24 + 88) = a10;
      *v34 = 136315650;
      *(v34 + 4) = sub_2219A6360(*(v31 + 40), *(v31 + 48), (v24 + 88));
      *(v34 + 12) = 2080;
      v36 = *v33;
      v35 = v33[1];
      v37 = v33[3];
      if (v37)
      {
        OUTLINED_FUNCTION_20_12();
        v39 = *(v38 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
        v40 = OUTLINED_FUNCTION_53_11();
        a9 = v27;
        *(v40 + 16) = xmmword_221BCF7F0;
        *(v40 + 32) = v36;
        *(v40 + 40) = v35;
        *(v40 + 48) = v39;
        *(v40 + 56) = v37;
        *(v24 + 96) = v40;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
        OUTLINED_FUNCTION_0_47();
        sub_221B7B8BC(v41, &qword_27CFB7520, &qword_221BD0770);
        sub_221BCD328();
      }

      else
      {
        v59 = v33[1];
      }

      v60 = OUTLINED_FUNCTION_70();
      v63 = sub_2219A6360(v60, v61, v62);

      *(v34 + 14) = v63;
      *(v34 + 22) = 2080;
      v64 = sub_221B2E4E8(v27, v28);
      v66 = sub_2219A6360(v64, v65, (v24 + 88));

      *(v34 + 24) = v66;
      _os_log_impl(&dword_221989000, v32, a11, "[%s] Stream for %s received an actor availability update: %s", v34, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_23();
    }

    else
    {
    }

    switch(v28)
    {
      case 1:
        v89 = *(v24 + 144);

        v90 = sub_221BCCD68();
        LODWORD(v91) = sub_221BCDA98();

        if (os_log_type_enabled(v90, v91))
        {
          v92 = *(v24 + 144);
          v93 = (v92 + *(v24 + 224));
          v94 = swift_slowAlloc();
          a12 = OUTLINED_FUNCTION_105();
          a13 = a12;
          *v94 = 136315394;
          *(v94 + 4) = sub_2219A6360(*(v92 + 40), *(v92 + 48), &a13);
          *(v94 + 12) = 2080;
          v95 = *v93;
          v96 = v93[1];
          v97 = v93[3];
          if (v97)
          {
            OUTLINED_FUNCTION_20_12();
            LODWORD(a11) = v91;
            v91 = *(v98 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
            v99 = OUTLINED_FUNCTION_53_11();
            *(v99 + 16) = xmmword_221BCF7F0;
            *(v99 + 32) = v95;
            *(v99 + 40) = v96;
            *(v99 + 48) = v91;
            *(v99 + 56) = v97;
            *(v24 + 32) = v99;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
            OUTLINED_FUNCTION_0_47();
            sub_221B7B8BC(v100, &qword_27CFB7520, &qword_221BD0770);
            OUTLINED_FUNCTION_19_12();
            LOBYTE(v91) = a11;
            v95 = sub_221BCD328();
            v102 = v101;

            v96 = v102;
          }

          else
          {
          }

          v131 = sub_2219A6360(v95, v96, &a13);

          *(v94 + 14) = v131;
          _os_log_impl(&dword_221989000, v90, v91, "[%s] Observation invalidated for %s", v94, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30_1();
          OUTLINED_FUNCTION_13_4();
        }

        v133 = *(v24 + 208);
        v132 = *(v24 + 216);
        v134 = *(v24 + 200);
        v135 = *(v24 + 144);
        sub_221B77C14();
        sub_221B61B30(v27, 1);
        v136 = *(v133 + 8);
        v137 = OUTLINED_FUNCTION_4();
        v138(v137);
        goto LABEL_39;
      case 2:
        v74 = *(v24 + 144);

        v75 = OUTLINED_FUNCTION_50_8();
        sub_221B7B8A8(v75, v76);
        v77 = sub_221BCCD68();
        v78 = sub_221BCDA98();

        if (os_log_type_enabled(v77, v78))
        {
          LODWORD(a12) = v78;
          v79 = *(v24 + 144);
          v80 = (v79 + *(v24 + 224));
          v81 = OUTLINED_FUNCTION_68();
          a10 = swift_slowAlloc();
          a11 = OUTLINED_FUNCTION_105();
          *(v24 + 40) = a11;
          *v81 = 136315650;
          *(v81 + 4) = sub_2219A6360(*(v79 + 40), *(v79 + 48), (v24 + 40));
          *(v81 + 12) = 2080;
          v83 = *v80;
          v82 = v80[1];
          v84 = v80[3];
          if (v84)
          {
            OUTLINED_FUNCTION_20_12();
            v86 = *(v85 + 16);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
            v87 = OUTLINED_FUNCTION_53_11();
            a9 = v27;
            *(v87 + 16) = xmmword_221BCF7F0;
            *(v87 + 32) = v83;
            *(v87 + 40) = v82;
            *(v87 + 48) = v86;
            *(v87 + 56) = v84;
            *(v24 + 48) = v87;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
            OUTLINED_FUNCTION_0_47();
            sub_221B7B8BC(v88, &qword_27CFB7520, &qword_221BD0770);
            OUTLINED_FUNCTION_19_12();
            sub_221BCD328();
          }

          else
          {
            v111 = v80[1];
          }

          v112 = OUTLINED_FUNCTION_70();
          v115 = sub_2219A6360(v112, v113, v114);

          *(v81 + 14) = v115;
          *(v81 + 22) = 2112;
          v116 = _swift_stdlib_bridgeErrorToNSError();
          *(v81 + 24) = v116;
          *a10 = v116;
          _os_log_impl(&dword_221989000, v77, a12, "[%s] Observation stopped for %s: %@", v81, 0x20u);
          sub_2219A1CC8(a10, &unk_27CFB7630, qword_221BD0790);
          OUTLINED_FUNCTION_30_1();
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30_1();
          OUTLINED_FUNCTION_13_4();
        }

        else
        {

          v103 = OUTLINED_FUNCTION_50_8();
          sub_221B61B30(v103, v104);
        }

        v117 = OUTLINED_FUNCTION_50_8();
        sub_221B61B30(v117, v118);
        goto LABEL_33;
      case 3:
LABEL_33:
        v119 = *(MEMORY[0x277D85798] + 4);
        v120 = swift_task_alloc();
        v121 = OUTLINED_FUNCTION_11_18(v120);
        *v121 = v122;
        OUTLINED_FUNCTION_1_43();
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_28_0();

        result = MEMORY[0x2822003E8](v123, v124, v125, v126, v127, v128, v129, v130, a9, a10, a11, a12, a13, a14, a15, a16);
        break;
      default:
        v67 = (*(v24 + 144) + *(v24 + 232));
        sub_221B5D0C8(v27, 0);
        os_unfair_lock_lock(v67);
        v68 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
        LOBYTE(v68) = v68[*(type metadata accessor for RemoteAppNotificationStream._State(0) + 32)];
        os_unfair_lock_unlock(v67);
        if (v68)
        {
          v69 = swift_task_alloc();
          *(v24 + 264) = v69;
          *v69 = v24;
          v69[1] = sub_221B76394;
          v70 = *(v24 + 144);
          OUTLINED_FUNCTION_28_0();

          result = sub_221B76B70(v71);
        }

        else
        {
          v105 = swift_task_alloc();
          *(v24 + 280) = v105;
          *v105 = v24;
          v105[1] = sub_221B7650C;
          v107 = *(v24 + 144);
          v106 = *(v24 + 152);
          OUTLINED_FUNCTION_28_0();

          result = sub_221B76DD4(v108, v109);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_221B76394()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B76490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_1_5();
  v17 = *(v16 + 248);
  OUTLINED_FUNCTION_55_11();
  OUTLINED_FUNCTION_55_11();
  v18 = *(MEMORY[0x277D85798] + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_11_18(v19);
  *v20 = v21;
  OUTLINED_FUNCTION_1_43();
  v22 = OUTLINED_FUNCTION_15_14();

  return MEMORY[0x2822003E8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B7650C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B76608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[34];
  v18 = v16[32];
  v19 = v16[18];

  v20 = v17;
  v21 = sub_221BCCD68();
  v22 = sub_221BCDA98();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_31_11();
    a9 = swift_slowAlloc();
    v16[9] = OUTLINED_FUNCTION_105();
    *v23 = 136315650;
    v24 = sub_2219A6360(*(v18 + 40), *(v18 + 48), v16 + 9);
    OUTLINED_FUNCTION_50_7(v24);
    v26 = *v19;
    v25 = v19[1];
    v27 = v19[3];
    if (v27)
    {
      OUTLINED_FUNCTION_20_12();
      v29 = *(v28 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v30 = OUTLINED_FUNCTION_53_11();
      *(v30 + 16) = xmmword_221BCF7F0;
      *(v30 + 32) = v26;
      *(v30 + 40) = v25;
      *(v30 + 48) = v29;
      *(v30 + 56) = v27;
      v16[10] = v30;
      OUTLINED_FUNCTION_50_8();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      OUTLINED_FUNCTION_62_7();
      OUTLINED_FUNCTION_0_47();
      sub_221B7B8BC(v31, &qword_27CFB7520, &qword_221BD0770);
      OUTLINED_FUNCTION_19_12();
      v21 = v26;
      v26 = sub_221BCD328();
      v33 = v32;

      v25 = v33;
    }

    else
    {
      v36 = v19[1];
    }

    v37 = v16[34];
    v38 = v16[31];
    sub_2219A6360(v26, v25, v16 + 9);

    OUTLINED_FUNCTION_66_5();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v39;
    *a9 = v39;
    OUTLINED_FUNCTION_3_18();
    _os_log_impl(v40, v41, v42, v43, v44, 0x20u);
    sub_2219A1CC8(a9, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_13_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_55_11();

    OUTLINED_FUNCTION_55_11();
  }

  else
  {
    v34 = v16[34];
    v35 = v16[31];
    OUTLINED_FUNCTION_69_5();

    OUTLINED_FUNCTION_69_5();
  }

  v45 = *(MEMORY[0x277D85798] + 4);
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_11_18(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822003E8](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B768BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[36];
  v18 = v16[32];
  v19 = v16[18];

  v20 = v17;
  v21 = sub_221BCCD68();
  v22 = sub_221BCDA98();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_31_11();
    a9 = swift_slowAlloc();
    v16[7] = OUTLINED_FUNCTION_105();
    *v23 = 136315650;
    v24 = sub_2219A6360(*(v18 + 40), *(v18 + 48), v16 + 7);
    OUTLINED_FUNCTION_50_7(v24);
    v26 = *v19;
    v25 = v19[1];
    v27 = v19[3];
    if (v27)
    {
      OUTLINED_FUNCTION_20_12();
      v29 = *(v28 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v30 = OUTLINED_FUNCTION_53_11();
      *(v30 + 16) = xmmword_221BCF7F0;
      *(v30 + 32) = v26;
      *(v30 + 40) = v25;
      *(v30 + 48) = v29;
      *(v30 + 56) = v27;
      v16[8] = v30;
      OUTLINED_FUNCTION_50_8();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      OUTLINED_FUNCTION_62_7();
      OUTLINED_FUNCTION_0_47();
      sub_221B7B8BC(v31, &qword_27CFB7520, &qword_221BD0770);
      OUTLINED_FUNCTION_19_12();
      v21 = v26;
      v26 = sub_221BCD328();
      v33 = v32;

      v25 = v33;
    }

    else
    {
      v36 = v19[1];
    }

    v37 = v16[36];
    v38 = v16[31];
    sub_2219A6360(v26, v25, v16 + 7);

    OUTLINED_FUNCTION_66_5();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 24) = v39;
    *a9 = v39;
    OUTLINED_FUNCTION_3_18();
    _os_log_impl(v40, v41, v42, v43, v44, 0x20u);
    sub_2219A1CC8(a9, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_13_4();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_55_11();

    OUTLINED_FUNCTION_55_11();
  }

  else
  {
    v34 = v16[36];
    v35 = v16[31];
    OUTLINED_FUNCTION_69_5();

    OUTLINED_FUNCTION_69_5();
  }

  v45 = *(MEMORY[0x277D85798] + 4);
  v46 = swift_task_alloc();
  v47 = OUTLINED_FUNCTION_11_18(v46);
  *v47 = v48;
  OUTLINED_FUNCTION_1_43();
  OUTLINED_FUNCTION_15_14();
  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822003E8](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B76B70(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221B76B90, 0, 0);
}

uint64_t sub_221B76B90()
{
  v1 = v0[3];
  v2 = v0[4];
  v4 = v2[5];
  v3 = v2[6];
  v5 = v2[2];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = v2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v10 = *(v2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v9 = *(v2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v11 = *(v8 + 3);
  if (v11)
  {
    v12 = v0[3];
    v13 = *(v8 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v14 = OUTLINED_FUNCTION_53_11();
    *(v14 + 16) = xmmword_221BCF7F0;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;
    *(v14 + 48) = v13;
    *(v14 + 56) = v11;
    v0[2] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    OUTLINED_FUNCTION_0_47();
    sub_221B7B8BC(v15, &qword_27CFB7520, &qword_221BD0770);
    OUTLINED_FUNCTION_19_12();
    v10 = sub_221BCD328();
    v9 = v16;
  }

  else
  {
    v17 = v0[3];
  }

  MEMORY[0x223DA31F0](v10, v9);

  sub_221BA1AC8();

  OUTLINED_FUNCTION_4_3();

  return v18();
}

uint64_t sub_221B76DD4(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = sub_221BCCD88();
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v9 = sub_221BCC558();
  v3[39] = v9;
  v10 = *(v9 - 8);
  v3[40] = v10;
  v11 = *(v10 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  v3[43] = v12;
  v13 = *(v12 - 8);
  v3[44] = v13;
  v3[45] = *(v13 + 64);
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B76FF8, 0, 0);
}

uint64_t sub_221B76FF8()
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);
  v6 = *(v5 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem);
  (*(v3 + 16))(v1, *(v0 + 240), v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v9 = type metadata accessor for RemoteAppNotificationSink();
  OUTLINED_FUNCTION_130_1(v9);

  v10 = sub_221B73924(v6, sub_221B7BAA8, v8);
  v11 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state;
  *(v0 + 376) = v10;
  *(v0 + 384) = v11;
  v12 = (v4 + v11);
  os_unfair_lock_lock((v4 + v11));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
  *(v0 + 108) = v13;
  v14 = v12 + v13;
  v15 = *(&v12->_os_unfair_lock_opaque + v13);
  *(&v12->_os_unfair_lock_opaque + v13) = v5;

  v16 = type metadata accessor for RemoteAppNotificationStream._State(0);
  *(v0 + 392) = v16;
  v17 = *(v16 + 28);
  v18 = *&v14[v17];
  *&v14[v17] = v10;

  os_unfair_lock_unlock(v12);

  sub_221BCD808();
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  *(v0 + 400) = __swift_project_value_buffer(*(v0 + 256), qword_27CFDEE58);
  if (qword_27CFB72F0 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 248);
  v22 = *(v0 + 232);
  memcpy((v0 + 16), &qword_27CFDEBD8, 0x59uLL);
  *(v0 + 408) = v21[5];
  *(v0 + 416) = v21[6];
  *(v0 + 424) = v21[3];
  *(v0 + 432) = v21[4];
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = swift_task_alloc();
  *(v0 + 440) = v31;
  v31[2] = v21;
  v31[3] = v22;
  v31[4] = v10;
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822009F8](v32, v33, v34);
}

uint64_t sub_221B772B8()
{
  v1 = v0[54];
  v25 = v0[53];
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v7 = v0[36];
  v8 = v0[34];
  (*(v0[33] + 16))(v8, v0[50], v0[32]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v4, v5, &qword_27CFB7F60, &qword_221BD6680);
  sub_221B702CC(v7, v6, &qword_27CFB7F58, &unk_221BD27E0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE60, &qword_221BE6910);
  OUTLINED_FUNCTION_130_1(v9);

  v10 = sub_2219CBEFC(v3, v2, v0 + 2, v8, 0, 0, 0, 0, 0, 0, v0 + 19);
  v0[56] = v10;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v11 = v0[55];
  v0[27] = v9;
  v0[28] = &off_28351D968;
  v12 = OUTLINED_FUNCTION_305_0();
  v0[57] = v12;
  v12[2] = v10;
  v12[3] = &unk_221BE6908;
  v12[4] = v11;
  v13 = *(MEMORY[0x277D85A70] + 4);

  v14 = swift_task_alloc();
  v0[58] = v14;
  *v14 = v0;
  v14[1] = sub_221B77518;
  v15 = v0[42];
  v27 = v0[39];
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B77518()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 464);
  v7 = *(v5 + 456);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 472) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B77650()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[38];
  v4 = v0[36];

  sub_2219A1CC8(v4, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v3, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8((v0 + 14), qword_27CFB7A80, &unk_221BD2800);
  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B7770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  v27 = *(v24 + 392);
  v28 = *(v24 + 336);
  v83 = *(v24 + 328);
  v84 = *(v24 + 400);
  v29 = *(v24 + 312);
  v30 = *(v24 + 320);
  v31 = (*(v24 + 248) + *(v24 + 384));
  v32 = v31 + *(v24 + 108);
  os_unfair_lock_lock(v31);
  v33 = *(v27 + 24);
  sub_2219A1CC8(&v32[v33], &qword_27CFB82B0, &unk_221BD2990);
  v34 = *(v30 + 16);
  v34(&v32[v33], v28, v29);
  __swift_storeEnumTagSinglePayload(&v32[v33], 0, 1, v29);
  v32[*(v27 + 32)] = 1;
  os_unfair_lock_unlock(v31);
  v34(v83, v28, v29);

  v35 = sub_221BCCD68();
  v36 = sub_221BCDA98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v24 + 408);
    v38 = *(v24 + 416);
    v39 = *(v24 + 328);
    v83 = *(v24 + 376);
    v84 = *(v24 + 336);
    v40 = *(v24 + 312);
    a9 = *(v24 + 320);
    v41 = *(v24 + 248);
    v42 = OUTLINED_FUNCTION_68();
    a10 = swift_slowAlloc();
    a13 = a10;
    *v42 = 136315650;
    v43 = OUTLINED_FUNCTION_312_0();
    *(v42 + 4) = sub_2219A6360(v43, v44, v45);
    *(v42 + 12) = 2080;
    v46 = *(v41 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
    v47 = *(v41 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
    v49 = *(v41 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 16);
    v48 = *(v41 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 24);

    v50 = OUTLINED_FUNCTION_312_0();
    v52 = sub_221998A0C(v50, v51, v49, v48);
    v54 = sub_2219A6360(v52, v53, &a13);

    *(v42 + 14) = v54;
    *(v42 + 22) = 2080;
    sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v55 = sub_221BCE168();
    v57 = v56;
    v58 = *(a9 + 8);
    v58(v39, v40);
    v59 = sub_2219A6360(v55, v57, &a13);

    *(v42 + 24) = v59;
    _os_log_impl(&dword_221989000, v35, v36, "[%s] Starting observation for %s with identifier %s", v42, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_23();

    v58(v84, v40);
  }

  else
  {
    v60 = *(v24 + 376);
    v62 = *(v24 + 328);
    v61 = *(v24 + 336);
    v63 = *(v24 + 312);
    v64 = *(v24 + 320);

    v65 = *(v64 + 8);
    v65(v62, v63);
    v65(v61, v63);
  }

  v66 = *(v24 + 368);
  v67 = *(v24 + 328);
  v68 = *(v24 + 336);
  v70 = *(v24 + 296);
  v69 = *(v24 + 304);
  v72 = *(v24 + 280);
  v71 = *(v24 + 288);
  v73 = *(v24 + 272);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_28_0();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, v83, v84, a13, a14, a15, a16);
}

uint64_t sub_221B77A78()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[38];
  v4 = v0[36];

  sub_2219A1CC8(v4, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v3, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8((v0 + 14), qword_27CFB7A80, &unk_221BD2800);
  sub_2219A1CC8((v0 + 24), qword_27CFB7A80, &unk_221BD2800);

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B77B4C()
{
  v2 = v0[46];
  v1 = v0[47];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[37];
  v5 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v9 = v0[34];

  OUTLINED_FUNCTION_25();
  v11 = v0[59];

  return v10();
}

void sub_221B77C14()
{
  v1 = (v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8);
  sub_221B7AF8C((&v1->_os_unfair_lock_opaque + *(v2 + 28)));

  os_unfair_lock_unlock(v1);
}

uint64_t sub_221B77C8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDE0, &qword_221BE67F8);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE20, &qword_221BE6810);
  OUTLINED_FUNCTION_0_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v14 = v19 - v13;
  v15 = (v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28);
  v17 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v15 + *(v17 + 36) + v16, v6, &qword_27CFBBDE0, &qword_221BE67F8);
  os_unfair_lock_unlock(v15);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2219A1CC8(v6, &qword_27CFBBDE0, &qword_221BE67F8);
    v19[0] = 0;
    v19[1] = 0xE000000000000000;
    sub_221BCDE68();
    MEMORY[0x223DA31F0](91, 0xE100000000000000);
    MEMORY[0x223DA31F0](*(v0 + 40), *(v0 + 48));
    MEMORY[0x223DA31F0](0xD00000000000004ELL, 0x8000000221BF1250);
    result = sub_221BCE058();
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v14, v6, v7);
    sub_221BCD838();
    return (*(v9 + 8))(v14, v7);
  }

  return result;
}

uint64_t sub_221B77EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE70, &qword_221BE6950);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v11 = sub_221BCCD88();
  __swift_project_value_buffer(v11, qword_27CFDEE58);

  v12 = sub_221BCCD68();
  v13 = sub_221BCDA98();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2219A6360(*(a2 + 40), *(a2 + 48), &v22);
    *(v15 + 12) = 2080;
    v17 = MEMORY[0x223DA33D0](a1, &type metadata for AppNotificationEvent);
    v19 = sub_2219A6360(v17, v18, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_221989000, v12, v13, "[%s] Received from remote sink: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v16, -1, -1);
    MEMORY[0x223DA4C00](v15, -1, -1);
  }

  v22 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  sub_221BCD818();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_221B78170(uint64_t a1, void *a2)
{
  v4 = a2[5];
  v3 = a2[6];
  v5 = a2[2];
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v8 = a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v10 = *(a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v9 = *(a2 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v11 = *(v8 + 3);
  if (v11)
  {
    v12 = *(v8 + 2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_221BCF7F0;
    *(v13 + 32) = v10;
    *(v13 + 40) = v9;
    *(v13 + 48) = v12;
    *(v13 + 56) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_221B7B8BC(&qword_27CFB7528, &qword_27CFB7520, &qword_221BD0770);
    v10 = sub_221BCD328();
    v9 = v14;
  }

  else
  {
  }

  MEMORY[0x223DA31F0](v10, v9);

  sub_221BA1AC8();
}

uint64_t sub_221B7837C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = sub_221BCCD88();
  v3[35] = v4;
  v5 = *(v4 - 8);
  v3[36] = v5;
  v6 = *(v5 + 64) + 15;
  v3[37] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v9 = sub_221BCC558();
  v3[42] = v9;
  v10 = *(v9 - 8);
  v3[43] = v10;
  v3[44] = *(v10 + 64);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE68, &qword_221BE6930);
  v3[47] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B785B8, 0, 0);
}

uint64_t sub_221B785B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_56_9();
  Strong = swift_weakLoadStrong();
  v16[51] = Strong;
  if (!Strong)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    v29 = v16[34];
    __swift_project_value_buffer(v16[35], qword_27CFDEE58);

    v30 = sub_221BCCD68();
    v31 = sub_221BCDA98();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = v16[33];
      v32 = v16[34];
      v34 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_68();
      *(v34 + 4) = OUTLINED_FUNCTION_65_8(4.8149e-34, a13, v35, v36, v37);
      OUTLINED_FUNCTION_67_7(&dword_221989000, v38, v39, "[%s] onTermination: RemoteAppNotificationStream already deallocated");
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_13_4();
    }

    goto LABEL_19;
  }

  v18 = v16[49];
  v19 = v16[50];
  v20 = v16[47];
  v21 = v16[48];
  a11 = Strong;
  a12 = v16[42];
  v22 = (Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28));
  v24 = *(v20 + 48);
  v25 = *v23;
  v16[52] = *v23;
  v26 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v23 + *(v26 + 24), v21 + v24, &qword_27CFB82B0, &unk_221BD2990);

  os_unfair_lock_unlock(v22);
  sub_2219F6938(v21 + v24, v19);
  sub_221B702CC(v19, v18, &qword_27CFB82B0, &unk_221BD2990);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, a12);
  v28 = v16[49];
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v16[49], &qword_27CFB82B0, &unk_221BD2990);
LABEL_18:
    v64 = v16[51];
    v63 = v16[52];
    v65 = v16[50];
    sub_221B77C14();

    sub_2219A1CC8(v65, &qword_27CFB82B0, &unk_221BD2990);
LABEL_19:
    OUTLINED_FUNCTION_48_9();

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_28_0();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v40 = *(v16[43] + 32);
  v40(v16[46], v16[49], v16[42]);
  if (!v25)
  {
    (*(v16[43] + 8))(v16[46], v16[42]);
    goto LABEL_18;
  }

  v41 = qword_27CFB73B0;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  v76 = v25;
  v16[53] = __swift_project_value_buffer(v16[35], qword_27CFDEE58);
  if (qword_27CFB72F8 != -1)
  {
    swift_once();
  }

  v43 = v16[45];
  v42 = v16[46];
  v45 = v16[43];
  v44 = v16[44];
  v46 = v16[41];
  v47 = v16[42];
  v75 = v16[39];
  memcpy(v16 + 2, &qword_27CFDEC38, 0x59uLL);
  v16[54] = a11[5];
  v16[55] = a11[6];
  v16[56] = a11[3];
  v16[57] = a11[4];
  (*(v45 + 16))(v43, v42, v47);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = swift_allocObject();
  v16[58] = v49;
  *(v49 + 16) = a11;
  v40(v49 + v48, v43, v47);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  v58 = swift_task_alloc();
  v16[59] = v58;
  v58[2] = a11;
  v58[3] = v76;
  v58[4] = v42;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v59, v60, v61);
}

uint64_t sub_221B78A28()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[55];
  v55 = v0[56];
  v56 = v0[54];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  (*(v0[36] + 16))(v0[37], v0[53], v0[35]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v4, v5, &qword_27CFB7F60, &qword_221BD6680);
  v8 = OUTLINED_FUNCTION_312_0();
  sub_221B702CC(v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_130_1(v12);

  v21 = OUTLINED_FUNCTION_37_6(v13, v14, v15, v16, v17, v18, v19, v20, v43, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  v29 = OUTLINED_FUNCTION_39_10(v21, v22, v23, v24, v25, v26, v27, v28, v44, v46, v48);
  v0[60] = v29;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v30 = v0[59];
  v0[27] = v12;
  v0[28] = &off_28351D968;
  v31 = OUTLINED_FUNCTION_305_0();
  v0[61] = v31;
  v31[2] = v29;
  v31[3] = &unk_221BE6940;
  v31[4] = v30;
  v32 = *(MEMORY[0x277D85A70] + 4);

  v33 = swift_task_alloc();
  v0[62] = v33;
  *v33 = v0;
  v33[1] = sub_221B78C60;
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_221B78C60()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[63] = v0;

  if (v0)
  {
    v9 = v3[61];
    v10 = v3[52];
  }

  else
  {
    v11 = v3[61];

    sub_2219A1CC8((v3 + 24), qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B78D90()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_9();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v1 + 112, qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B78E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[52];
  v14 = v12[46];
  v15 = v12[42];
  v16 = v12[43];

  v17 = *(v16 + 8);
  v18 = OUTLINED_FUNCTION_70();
  v19(v18);
  v21 = v12[51];
  v20 = v12[52];
  v22 = v12[50];
  sub_221B77C14();

  sub_2219A1CC8(v22, &qword_27CFB82B0, &unk_221BD2990);
  OUTLINED_FUNCTION_48_9();

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_221B78F44()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_9();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_68_6(v1 + 112);
  OUTLINED_FUNCTION_68_6(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B79004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[51];
  v18 = v16[52];
  v20 = v16[49];
  v19 = v16[50];
  v21 = v16[48];
  v23 = v16[45];
  v22 = v16[46];
  v25 = v16[42];
  v24 = v16[43];
  v26 = v16[41];
  v37 = v16[40];
  v38 = v16[39];
  v39 = v16[38];
  v40 = v16[37];

  sub_2219A1CC8(v19, &qword_27CFB82B0, &unk_221BD2990);
  (*(v24 + 8))(v22, v25);

  OUTLINED_FUNCTION_25();
  v27 = v16[63];
  OUTLINED_FUNCTION_28_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, a14, a15, a16);
}

unint64_t sub_221B79114(uint64_t a1)
{
  sub_221BCDE68();

  v2 = a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v3 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v4 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  v7 = sub_221998A0C(v3, v4, v5, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BEDFA0);
  sub_221BCC558();
  sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  return 0xD000000000000019;
}

uint64_t sub_221B79260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B792F8, 0, 0);
}

uint64_t sub_221B792F8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_70();
  v10(v9);
  v12 = *(v4 + qword_27CFDED20);
  v11 = *(v4 + qword_27CFDED20 + 8);
  v13 = *(v4 + qword_27CFDED20 + 17);
  v14 = objc_opt_self();

  v15 = [v14 sharedInstance];
  [v15 optInApple];

  v16 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v0[8] = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  OUTLINED_FUNCTION_24_12(v16);

  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_221B79464;
  v18 = v0[7];
  v19 = v0[4];

  return sub_221A44A08();
}

uint64_t sub_221B79464()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *(v4 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v9 + 80) = v0;

  sub_221B7BF50(v6, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B79590()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_3_29(*(v0 + 64));

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B795F0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[7];
  OUTLINED_FUNCTION_3_29(v0[8]);

  OUTLINED_FUNCTION_25();
  v3 = v0[10];

  return v2();
}

uint64_t sub_221B79654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B796EC, 0, 0);
}

uint64_t sub_221B796EC()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 200);
  v2 = *(v0 + 192) + qword_27CFDED20;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 17);
  v6 = objc_opt_self();

  v7 = [v6 sharedInstance];
  v8 = [v7 optInApple];

  v9 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  *(v0 + 232) = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v10 = (v1 + v9);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v8;
  *(v0 + 33) = v5;
  *(v0 + 40) = v12;
  *(v0 + 48) = v11;
  *(v0 + 56) = v13;
  *(v0 + 64) = v14;

  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_11_18(v15);
  *v16 = v17;
  v16[1] = sub_221B79834;
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v20 = *(v0 + 208);

  return sub_221A43008();
}

uint64_t sub_221B79834()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 248) = v0;

  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v11 = *(v3 + 48);
  if (v0)
  {
    *(v3 + 120) = *(v3 + 64);
    *(v3 + 104) = v11;
    *(v3 + 88) = v10;
    *(v3 + 72) = v9;
    sub_221A57E98(v3 + 72);
  }

  else
  {
    *(v3 + 176) = *(v3 + 64);
    *(v3 + 144) = v10;
    *(v3 + 160) = v11;
    *(v3 + 128) = v9;
    sub_221A57E98(v3 + 128);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B79974()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[23];
  v4 = (v0[25] + v0[29]);
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v5);
  (*(v6 + 32))(v3, v1);
  OUTLINED_FUNCTION_29_11(*v4, v4[1], v4[2], v4[3]);

  OUTLINED_FUNCTION_4_3();

  return v7();
}

uint64_t sub_221B79A24()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = v0[24];
  v3 = (v0[25] + v0[29]);
  OUTLINED_FUNCTION_29_11(*v3, v3[1], v3[2], v3[3]);

  OUTLINED_FUNCTION_25();
  v5 = v0[31];

  return v4();
}

uint64_t sub_221B79A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  v5 = sub_221BCCD88();
  v4[36] = v5;
  v6 = *(v5 - 8);
  v4[37] = v6;
  v7 = *(v6 + 64) + 15;
  v4[38] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v10 = sub_221BCC558();
  v4[43] = v10;
  v11 = *(v10 - 8);
  v4[44] = v11;
  v4[45] = *(v11 + 64);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE58, &qword_221BE68E8) - 8) + 64) + 15;
  v4[48] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v4[49] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B79CE0, 0, 0);
}

uint64_t sub_221B79CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  OUTLINED_FUNCTION_56_9();
  Strong = swift_weakLoadStrong();
  v24[53] = Strong;
  if (!Strong)
  {
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    v60 = v24[34];
    __swift_project_value_buffer(v24[36], qword_27CFDEE58);

    v61 = sub_221BCCD68();
    v62 = sub_221BCDA98();

    if (os_log_type_enabled(v61, v62))
    {
      v64 = v24[33];
      v63 = v24[34];
      v65 = swift_slowAlloc();
      v66 = OUTLINED_FUNCTION_68();
      a13 = v66;
      *(v65 + 4) = OUTLINED_FUNCTION_65_8(4.8149e-34, v66, v67, v68, v69);
      OUTLINED_FUNCTION_67_7(&dword_221989000, v70, v71, "[%s] resumeOn: RemoteAppNotificationStream already deallocated");
      __swift_destroy_boxed_opaque_existential_0(v66);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_13_4();
    }

    goto LABEL_16;
  }

  v28 = Strong;
  v29 = v24[52];
  v30 = v24[48];
  v31 = v24[35];
  v32 = (Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state);
  os_unfair_lock_lock((Strong + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state));
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8) + 28));
  v34 = *v33;
  *v33 = v31;

  v35 = type metadata accessor for RemoteAppNotificationStream._State(0);
  sub_221B702CC(v33 + *(v35 + 24), v30, &qword_27CFB82B0, &unk_221BD2990);
  v36 = *(v33 + *(v35 + 28));
  v24[54] = v36;

  os_unfair_lock_unlock(v32);
  sub_2219F6938(v30, v29);
  if (!v36)
  {
LABEL_5:
    if (qword_27CFB73B0 != -1)
    {
      OUTLINED_FUNCTION_3_17();
    }

    __swift_project_value_buffer(v24[36], qword_27CFDEE58);

    v41 = sub_221BCCD68();
    v42 = sub_221BCDA78();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v24[52];
    if (v43)
    {
      a9 = v24[50];
      a10 = v24[49];
      v45 = OUTLINED_FUNCTION_68();
      a11 = swift_slowAlloc();
      *v45 = 136315650;
      v105 = v44;
      a13 = a11;
      v46 = v28[5];
      v47 = v28[6];

      v48 = sub_2219A6360(v46, v47, &a13);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
      v50 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
      v52 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 16);
      v51 = *(v28 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 24);

      v53 = sub_221998A0C(v49, v50, v52, v51);
      v55 = sub_2219A6360(v53, v54, &a13);

      *(v45 + 14) = v55;
      *(v45 + 22) = 2080;
      sub_221B74EE8(a9);
      v56 = sub_221BCD3D8();
      v58 = sub_2219A6360(v56, v57, &a13);

      *(v45 + 24) = v58;
      _os_log_impl(&dword_221989000, v41, v42, "[%s] No remote sink for %s with identifier %s", v45, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_23();

      v59 = v105;
    }

    else
    {

      v59 = v44;
    }

    sub_2219A1CC8(v59, &qword_27CFB82B0, &unk_221BD2990);
LABEL_16:
    OUTLINED_FUNCTION_38_7();
    v106 = v72;

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_28_0();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, v106, a13, a14, a15, a16);
  }

  v37 = v24[51];
  v38 = v24[43];
  sub_221B702CC(v24[52], v37, &qword_27CFB82B0, &unk_221BD2990);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
  v40 = v24[51];
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v24[51], &qword_27CFB82B0, &unk_221BD2990);
    goto LABEL_5;
  }

  v107 = *(v24[44] + 32);
  v107(v24[47], v24[51], v24[43]);
  if (qword_27CFB73B0 != -1)
  {
    OUTLINED_FUNCTION_3_17();
  }

  v24[55] = __swift_project_value_buffer(v24[36], qword_27CFDEE58);
  if (qword_27CFB7300 != -1)
  {
    swift_once();
  }

  v83 = v24[46];
  v82 = v24[47];
  v85 = v24[44];
  v84 = v24[45];
  v86 = v24[42];
  v87 = v24[43];
  v103 = v24[40];
  v104 = v24[35];
  memcpy(v24 + 2, &qword_27CFDEC98, 0x59uLL);
  v24[56] = v28[5];
  v24[57] = v28[6];
  v24[58] = v28[3];
  v24[59] = v28[4];
  (*(v85 + 16))(v83, v82, v87);
  v88 = (*(v85 + 80) + 24) & ~*(v85 + 80);
  v89 = swift_allocObject();
  v24[60] = v89;
  *(v89 + 16) = v28;
  v107(v89 + v88, v83, v87);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  v98 = swift_task_alloc();
  v24[61] = v98;
  v98[2] = v28;
  v98[3] = v104;
  v98[4] = v82;
  v98[5] = v36;

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822009F8](v99, v100, v101);
}

uint64_t sub_221B7A334()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  v55 = v0[58];
  v56 = v0[56];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  (*(v0[37] + 16))(v0[38], v0[55], v0[36]);
  sub_221B702CC((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  sub_221B702CC(v4, v5, &qword_27CFB7F60, &qword_221BD6680);
  v8 = OUTLINED_FUNCTION_312_0();
  sub_221B702CC(v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_130_1(v12);

  v21 = OUTLINED_FUNCTION_37_6(v13, v14, v15, v16, v17, v18, v19, v20, v43, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  v29 = OUTLINED_FUNCTION_39_10(v21, v22, v23, v24, v25, v26, v27, v28, v44, v46, v48);
  v0[62] = v29;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v30 = v0[61];
  v0[27] = v12;
  v0[28] = &off_28351D968;
  v31 = OUTLINED_FUNCTION_305_0();
  v0[63] = v31;
  v31[2] = v29;
  v31[3] = &unk_221BE68F8;
  v31[4] = v30;
  v32 = *(MEMORY[0x277D85A70] + 4);

  v33 = swift_task_alloc();
  v0[64] = v33;
  *v33 = v0;
  v33[1] = sub_221B7A56C;
  OUTLINED_FUNCTION_12_12();

  return MEMORY[0x282200908](v34, v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_221B7A56C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 512);
  v7 = *(v5 + 504);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 520) = v0;

  if (!v0)
  {
    sub_2219A1CC8(v3 + 192, qword_27CFB7A80, &unk_221BD2800);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B7A6A4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_64_6();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219A1CC8(v1 + 112, qword_27CFB7A80, &unk_221BD2800);
  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B7A75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[53];
  v14 = v12[54];
  v15 = v12[52];
  v16 = v12[47];
  v17 = v12[43];
  v18 = v12[44];

  sub_2219A1CC8(v15, &qword_27CFB82B0, &unk_221BD2990);
  (*(v18 + 8))(v16, v17);
  OUTLINED_FUNCTION_38_7();
  v29 = v19;

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_221B7A85C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_64_6();

  sub_2219A1CC8(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_2219A1CC8(v0, &qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_68_6(v1 + 112);
  OUTLINED_FUNCTION_68_6(v1 + 192);

  v3 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221B7A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = v16[53];
  v18 = v16[54];
  v20 = v16[51];
  v19 = v16[52];
  v21 = v16[50];
  v23 = v16[47];
  v22 = v16[48];
  v24 = v16[46];
  v25 = v16[43];
  v26 = v16[44];
  v37 = v16[42];
  v38 = v16[41];
  v39 = v16[40];
  v40 = v16[39];
  v41 = v16[38];

  sub_2219A1CC8(v19, &qword_27CFB82B0, &unk_221BD2990);
  (*(v26 + 8))(v23, v25);

  OUTLINED_FUNCTION_25();
  v27 = v16[65];
  OUTLINED_FUNCTION_28_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, a14, a15, a16);
}

uint64_t sub_221B7AA3C(uint64_t a1)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001FLL, 0x8000000221BF1190);
  v2 = a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v3 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic);
  v4 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  v7 = sub_221998A0C(v3, v4, v5, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BF11B0);
  sub_221BCC558();
  sub_221B7BA60(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  return 0;
}

uint64_t sub_221B7AB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v6[7] = restarted;
  v8 = *(*(restarted - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B7AC2C, 0, 0);
}

uint64_t sub_221B7AC2C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_221BCC558();
  OUTLINED_FUNCTION_2_1(v6);
  v8 = *(v7 + 16);
  v9 = OUTLINED_FUNCTION_70();
  v10(v9);
  v12 = *(v4 + qword_27CFDED20);
  v11 = *(v4 + qword_27CFDED20 + 8);
  v13 = *(v4 + qword_27CFDED20 + 17);
  v14 = objc_opt_self();

  v15 = [v14 sharedInstance];
  [v15 optInApple];

  v16 = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  v0[9] = OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic;
  OUTLINED_FUNCTION_24_12(v16);

  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_221B7AD9C;
  v18 = v0[8];
  v19 = v0[6];
  v20 = v0[4];

  return sub_221A456B0();
}

uint64_t sub_221B7AD9C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v9 + 88) = v0;

  sub_221B7BF50(v6, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B7AEC8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_3_29(*(v0 + 72));

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B7AF28()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[8];
  OUTLINED_FUNCTION_3_29(v0[9]);

  OUTLINED_FUNCTION_25();
  v3 = v0[11];

  return v2();
}

uint64_t sub_221B7AF8C(void *a1)
{
  v2 = *a1;

  *a1 = 0;
  v3 = type metadata accessor for RemoteAppNotificationStream._State(0);
  v4 = *(v3 + 28);
  v5 = *(a1 + v4);

  *(a1 + v4) = 0;
  *(a1 + *(v3 + 32)) = 0;
  if (a1[1])
  {
    v7 = a1[1];
    sub_221BCD878();
  }

  a1[1] = 0;
  return result;
}

void *sub_221B7B024()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBDD8, &unk_221BE67E8);
  sub_221B7BF50(&v4[*(v5 + 28)], type metadata accessor for RemoteAppNotificationStream._State);
  v6 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 8);
  v7 = *(v0 + OBJC_IVAR____TtC18AppIntentsServices27RemoteAppNotificationStream_topic + 24);

  return v0;
}

uint64_t sub_221B7B0BC()
{
  sub_221B7B024();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_221B7B13C()
{
  sub_221B7B404(319, &qword_27CFBBDD0, type metadata accessor for RemoteAppNotificationStream._State, MEMORY[0x277D85458]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_221B7B270()
{
  sub_221B7B404(319, &qword_27CFBBDF8, type metadata accessor for RemoteAppIntentsActor, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_221B7B468(319, &qword_27CFBBE00, &qword_27CFBBE08, &qword_221BE6808);
    if (v1 <= 0x3F)
    {
      sub_221B7B404(319, qword_27CFB8FE0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_221B7B404(319, &qword_27CFBBE10, type metadata accessor for RemoteAppNotificationSink, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_221B7B468(319, &qword_27CFBBE18, &qword_27CFBBE20, &qword_221BE6810);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_221B7B404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_221B7B468(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_221BCDC98();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_221B7B500()
{
  v1 = *v0;
  sub_221B77C8C();
}

uint64_t sub_221B7B538(uint64_t a1)
{
  result = sub_221B7BA60(&qword_27CFBBE38, type metadata accessor for RemoteAppNotificationStream);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B7B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x6369706F74;
  *(inited + 40) = 0xE500000000000000;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v11 = OUTLINED_FUNCTION_53_11();
    *(v11 + 16) = xmmword_221BCF7F0;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 48) = a3;
    *(v11 + 56) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    OUTLINED_FUNCTION_0_47();
    sub_221B7B8BC(v12, &qword_27CFB7520, &qword_221BD0770);
    a1 = sub_221BCD328();
    a2 = v13;
  }

  else
  {
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_221BCD2C8();
  a5();
}

uint64_t sub_221B7B71C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAppNotificationStream._State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221B7B790()
{
  OUTLINED_FUNCTION_104();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  OUTLINED_FUNCTION_8_1(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0 + ((*(v2 + 80) + 80) & ~*(v2 + 80));
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_2_15(v12);
  *v13 = v14;
  v13[1] = sub_2219CA70C;
  OUTLINED_FUNCTION_95_0();

  return sub_221B755AC(v15, v16, v17, v18, v19, v20, v21, v22);
}

id sub_221B7B8A8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_221B5D0C8(result, a2);
  }

  return result;
}

uint64_t sub_221B7B8BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_221B7B904()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2219EC5F0;
  v7 = OUTLINED_FUNCTION_4();

  return sub_221B79A98(v7, v8, v5, v4);
}

uint64_t sub_221B7B9C0()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_16(v4);

  return sub_221B7AB90(v6, v7, v8, v9, v2, v1);
}

uint64_t sub_221B7BA60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221B7BAA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBE50, &unk_221BE68A0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_221B77EF0(a1, v5, v6);
}

uint64_t sub_221B7BB2C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_16(v3);

  return sub_221B79654(v5, v6, v7, v8, v1);
}

uint64_t sub_221B7BBC8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219EA968(v3, v4, v5, v6);
}

uint64_t sub_221B7BC54()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2219EC5F0;
  v6 = OUTLINED_FUNCTION_4();

  return sub_221B7837C(v6, v7, v4);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_221BCC558();
  OUTLINED_FUNCTION_0_2(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_26_6();
  v8(v7);
  v9 = OUTLINED_FUNCTION_29_5();

  return MEMORY[0x2821FE8E8](v9, v10, v11);
}

uint64_t sub_221B7BDB4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_221BCC558();
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_221B7BE28()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_167();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_15(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_16(v3);

  return sub_221B79260(v5, v6, v7, v8, v1);
}

uint64_t sub_221B7BEC4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_57_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_20(v1);

  return sub_2219E882C(v3, v4, v5, v6);
}

uint64_t sub_221B7BF50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_221B7BFB4(uint64_t a1)
{
  v3 = sub_221BCC558();
  OUTLINED_FUNCTION_8_1(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));

  return sub_221B74CB0(a1, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t result)
{
  *(result + 8) = sub_221B75898;
  v2 = *(v1 + 216);
  v3 = *(v1 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_29@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (*(v1 + 24) + a1);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  return sub_221B7B590(v5, v6, v7, v8, sub_221B62F44);
}

uint64_t OUTLINED_FUNCTION_24_12@<X0>(uint64_t a1@<X8>)
{
  v8 = (v5 + a1);
  v10 = *v8;
  result = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = v2 + *(v4 + 20);
  *v13 = v6;
  *(v13 + 8) = v1;
  *(v13 + 16) = v3;
  *(v13 + 17) = v7;
  v14 = (v2 + *(v4 + 24));
  *v14 = v10;
  v14[1] = result;
  v14[2] = v11;
  v14[3] = v12;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_221B7B590(a1, a2, a3, a4, sub_221B62F44);
}

uint64_t OUTLINED_FUNCTION_31_11()
{
  v2 = *(v0 + 144) + *(v0 + 224);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_38_7()
{
  v2 = v0[51];
  result = v0[52];
  v3 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v6 = v0[46];
  v8 = v0[41];
  v7 = v0[42];
  v10 = v0[39];
  v9 = v0[40];
  v11 = v0[38];
  return result;
}

uint64_t OUTLINED_FUNCTION_39_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return sub_2219CBEFC(a1, v12, v14 + 16, v15, v11, v13, 0, 0, a9, a10, a11);
}

uint64_t OUTLINED_FUNCTION_48_9()
{
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[37];
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_55_11()
{

  sub_221B61B30(v0, 0);
}

uint64_t OUTLINED_FUNCTION_56_9()
{
  v2 = *(v0 + 256);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_63_9()
{
  v2 = v0[59];
  v3 = v0[60];
  v4 = v0[58];
  v5 = v0[41];
  v6 = v0[39];
}

uint64_t OUTLINED_FUNCTION_64_6()
{
  v2 = v0[61];
  v3 = v0[62];
  v4 = v0[60];
  v5 = v0[42];
  v6 = v0[40];
}

uint64_t OUTLINED_FUNCTION_65_8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  *v7 = a1;

  return sub_2219A6360(v6, v5, va);
}

id OUTLINED_FUNCTION_66_5()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_67_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_68_6(uint64_t a1)
{

  return sub_2219A1CC8(a1, v1, v2);
}

void OUTLINED_FUNCTION_69_5()
{

  sub_221B61B30(v0, 0);
}

void sub_221B7C374()
{
  qword_27CFDEBD8 = 0;
  unk_27CFDEBE0 = 0;
  byte_27CFDEBE8 = 1;
  qword_27CFDEBF0 = "startObservingEvents";
  unk_27CFDEBF8 = 20;
  byte_27CFDEC00 = 2;
  qword_27CFDEC08 = 1;
  byte_27CFDEC10 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

void sub_221B7C3C4()
{
  qword_27CFDEC38 = 0;
  unk_27CFDEC40 = 0;
  byte_27CFDEC48 = 1;
  qword_27CFDEC50 = "stopObservingEvents";
  unk_27CFDEC58 = 19;
  byte_27CFDEC60 = 2;
  qword_27CFDEC68 = 1;
  byte_27CFDEC70 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

void sub_221B7C414()
{
  qword_27CFDEC98 = 0;
  unk_27CFDECA0 = 0;
  byte_27CFDECA8 = 1;
  qword_27CFDECB0 = "restartObservingEvents";
  unk_27CFDECB8 = 22;
  byte_27CFDECC0 = 2;
  qword_27CFDECC8 = 1;
  byte_27CFDECD0 = 0;
  OUTLINED_FUNCTION_0_45(1);
}

uint64_t sub_221B7C464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_221B7C4A8(uint64_t a1)
{
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  sub_221BCDB38();
  if (!v1)
  {
    v4 = OUTLINED_FUNCTION_172_3();
    sub_2219EBFB4(v4, v5);
  }

  v2 = OUTLINED_FUNCTION_172_3();
  sub_2219EC02C(v2, v3);
  return OUTLINED_FUNCTION_172_3();
}

void sub_221B7C5B8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a4;
  v66 = a5;
  v63 = a2;
  v64 = a3;
  v67 = a1;
  v69 = a6;
  v8 = *v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v61 - v11;
  v13 = sub_221BCC358();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v21 = v20 - v19;
  v68 = sub_221BCC418();
  v22 = OUTLINED_FUNCTION_0_2(v68);
  v71 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  v28 = v27 - v26;
  sub_221B7CCF4(v27 - v26);
  if (!v7)
  {
    v61[1] = v9;
    v62 = v8;
    v61[0] = v12;
    v29 = v67;
    v70[0] = sub_221B7D1D8(v67, v63, v64, v65, v66);
    v70[1] = v30;
    (*(v16 + 104))(v21, *MEMORY[0x277CC91D8], v13);
    sub_221A1CAA4();
    v31 = v69;
    sub_221BCC408();
    (*(v16 + 8))(v21, v13);

    v32 = v71 + 8;
    v33 = *(v71 + 8);
    v34 = v68;
    v33(v28, v68);
    v35 = [v29 data];
    sub_221BCC468();

    v36 = OUTLINED_FUNCTION_172_3();
    LOBYTE(v35) = sub_221AE9494(v36, v37);
    v38 = OUTLINED_FUNCTION_172_3();
    v40 = sub_2219EC040(v38, v39);
    v41 = v31;
    if (v35)
    {
      v42 = v33;
      if (qword_27CFB7398 != -1)
      {
        OUTLINED_FUNCTION_3_30();
        swift_once();
      }

      v43 = sub_221BCCD88();
      __swift_project_value_buffer(v43, qword_27CFDEE28);
      v44 = v29;
      v45 = sub_221BCCD68();
      v46 = sub_221BCDA78();

      if (os_log_type_enabled(v45, v46))
      {
        v71 = v32;
        v47 = swift_slowAlloc();
        v70[0] = swift_slowAlloc();
        *v47 = 136315394;
        v48 = [v44 filename];
        v49 = sub_221BCD388();
        v51 = v50;

        v52 = sub_2219A6360(v49, v51, v70);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v53 = [v44 fileURL];
        if (v53)
        {
          v54 = v53;
          v55 = v61[0];
          sub_221BCC3B8();

          v56 = 0;
          v34 = v68;
        }

        else
        {
          v56 = 1;
          v34 = v68;
          v55 = v61[0];
        }

        __swift_storeEnumTagSinglePayload(v55, v56, 1, v34);
        v57 = sub_221BCD3D8();
        v59 = sub_2219A6360(v57, v58, v70);

        *(v47 + 14) = v59;
        _os_log_impl(&dword_221989000, v45, v46, "INFile data is empty: %s, URL: %s", v47, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();

        v41 = v69;
      }

      else
      {
      }

      sub_221B82020();
      swift_allocError();
      *v60 = xmmword_221BD04D0;
      swift_willThrow();
      v42(v41, v34);
    }

    else
    {
      if (qword_27CFB7308 != -1)
      {
        OUTLINED_FUNCTION_1_44();
        v40 = swift_once();
      }

      MEMORY[0x28223BE20](v40);
      v61[-4] = v29;
      v61[-3] = v31;
      v61[-2] = v62;
      sub_221BCDB38();
    }
  }
}

uint64_t sub_221B7CB34()
{
  v0 = sub_221BCDB18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCD1F8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_221BCDAF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2219A1D20(0, &qword_27CFBBC30, 0x277D85C78);
  sub_221BCDAE8();
  sub_221BCD1D8();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v0);
  result = sub_221BCDB58();
  qword_27CFBBE90 = result;
  return result;
}

void sub_221B7CCF4(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_221BCC358();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221BCC418();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = [objc_opt_self() defaultManager];
  sub_221BAFD3C();

  if (!v1)
  {
    v24 = 7368052;
    v25 = 0xE300000000000000;
    v23 = *MEMORY[0x277CC91D8];
    v20 = v7;
    v22 = v3[13];
    v22(v6);
    v21 = sub_221A1CAA4();
    sub_221BCC408();
    v19 = v3[1];
    v19(v6, v2);
    v18 = *(v8 + 8);
    v16 = v12;
    v17 = v20;
    v18(v16, v20);
    v24 = 0x6946746E65746E49;
    v25 = 0xEB0000000073656CLL;
    (v22)(v6, v23, v2);
    sub_221BCC408();
    v19(v6, v2);
    v18(v14, v17);
  }
}

void sub_221B7CFC4()
{
  v1 = sub_221BCC358();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCC418();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  sub_221BAFD3C();

  if (!v0)
  {
    v12[0] = 0xD000000000000011;
    v12[1] = 0x8000000221BF13A0;
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    sub_221A1CAA4();
    sub_221BCC408();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_221B7D1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_221BCC558();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;

  v15 = sub_221B8B5A4(a1);
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    if (a5)
    {
      v27 = 61;
      v28 = 0xE100000000000000;
      MEMORY[0x223DA31F0](a4, a5);
      MEMORY[0x223DA31F0](v27, v28);
    }

    v27 = 45;
    v28 = 0xE100000000000000;
    MEMORY[0x223DA31F0](v17, v18);
  }

  else
  {
    v27 = 45;
    v28 = 0xE100000000000000;
    v19 = [a1 filename];
    v20 = sub_221BCD388();
    v22 = v21;

    MEMORY[0x223DA31F0](v20, v22);
  }

  MEMORY[0x223DA31F0](v27, v28);

  v27 = 45;
  v28 = 0xE100000000000000;
  sub_221BCC548();
  v23 = sub_221BCC4E8();
  v25 = v24;
  (*(v11 + 8))(v14, v10);
  MEMORY[0x223DA31F0](v23, v25);

  MEMORY[0x223DA31F0](v27, v28);

  return v29;
}

void sub_221B7D3F4(NSObject *a1, uint64_t a2)
{
  v135 = a2;
  v136 = a1;
  v142 = *MEMORY[0x277D85DE8];
  v3 = sub_221BCC418();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v133 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v134 = v127 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v127 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v127 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v127 - v16;
  v132 = objc_opt_self();
  v18 = [v132 defaultManager];
  sub_221B7CCF4(v17);
  v137 = v3;
  v138 = v4;
  if (v2)
  {
    v19 = v18;
    v20 = v2;
  }

  else
  {
    v21 = sub_221BCC388();
    (*(v4 + 8))(v17, v3);
    *&v140 = 0;
    v19 = v18;
    v22 = [v18 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v140];

    if (v22)
    {
      v23 = v140;
      goto LABEL_7;
    }

    v24 = v140;
    v25 = sub_221BCC338();

    swift_willThrow();
    v20 = v25;
  }

LABEL_7:
  sub_221B7CCF4(v15);
  sub_221BCC3E8();
  v26 = v138 + 1;
  v131 = v138[1];
  v131(v15, v137);
  v27 = sub_221BCD358();

  *&v140 = 0;
  v28 = v19;
  v29 = [v19 attributesOfFileSystemForPath:v27 error:&v140];

  v30 = v140;
  if (v29)
  {
    v130 = v26;
    v129 = 0;
    type metadata accessor for FileAttributeKey(0);
    v32 = v31;
    v33 = sub_221B82074(&qword_27CFB7590, type metadata accessor for FileAttributeKey);
    v34 = sub_221BCD298();
    v35 = v30;

    sub_221B9C308(*MEMORY[0x277CCA1D0], v34, &v140);

    if (!v141)
    {
      sub_2219A6860(&v140, &qword_27CFB7FF8, &qword_221BE6A00);
LABEL_18:
      sub_221B82020();
      swift_allocError();
      *v58 = xmmword_221BD0800;
      goto LABEL_19;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v128 = v28;
    v36 = v139;
    v37 = [v136 data];
    v38 = sub_221BCC468();
    v40 = v39;

    v41 = MEMORY[0x223DA21D0](v38, v40);
    sub_2219EC040(v38, v40);
    v42 = v41 < v36;
    v28 = v128;
    if (!v42)
    {
      goto LABEL_18;
    }

    v127[3] = v32;
    if (qword_27CFB7398 != -1)
    {
      swift_once();
    }

    v127[2] = v33;
    v43 = sub_221BCCD88();
    v44 = __swift_project_value_buffer(v43, qword_27CFDEE28);
    v45 = v137;
    v46 = v138[2];
    v138 += 2;
    v127[0] = v46;
    v46(v12, v135, v137);
    v127[1] = v44;
    v47 = sub_221BCCD68();
    v48 = sub_221BCDA68();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v129;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *&v140 = swift_slowAlloc();
      v52 = v140;
      *v51 = 136315138;
      sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
      v53 = sub_221BCE168();
      v55 = v54;
      v131(v12, v45);
      v56 = sub_2219A6360(v53, v55, &v140);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_221989000, v47, v48, "Persisting INFile data to: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x223DA4C00](v52, -1, -1);
      MEMORY[0x223DA4C00](v51, -1, -1);
    }

    else
    {

      v131(v12, v45);
    }

    v60 = v133;
    v61 = [v136 fileURL];
    v28 = v128;
    v62 = v134;
    if (v61)
    {
      v63 = v61;
      sub_221BCC3B8();

      if (sub_221BCC3C8())
      {
        v64 = sub_221BCC388();
        v65 = sub_221BCC388();
        *&v140 = 0;
        v66 = [v28 copyItemAtURL:v64 toURL:v65 error:&v140];

        if (!v66)
        {
          v96 = v140;
          sub_221BCC338();

          swift_willThrow();
          sub_221BCC3A8();

          v131(v62, v137);
          goto LABEL_21;
        }

        v67 = v140;
        v68 = [v136 removedOnCompletion];
        v69 = v137;
        if (v68)
        {
          v70 = sub_221BCC388();
          *&v140 = 0;
          v71 = [v28 removeItemAtURL:v70 error:&v140];

          v72 = v140;
          if (v71)
          {
            (v127[0])(v60, v62, v69);
            v73 = v72;
            v74 = v136;
            v75 = sub_221BCCD68();
            v76 = sub_221BCDA68();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              *&v140 = v138;
              *v77 = 136315394;
              v78 = [v74 debugDescription];
              v136 = v75;
              v79 = v78;
              v80 = sub_221BCD388();
              LODWORD(v133) = v76;
              v81 = v60;
              v83 = v82;

              v84 = sub_2219A6360(v80, v83, &v140);

              *(v77 + 4) = v84;
              *(v77 + 12) = 2080;
              sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
              v85 = sub_221BCE168();
              v87 = v86;
              v131(v81, v69);
              v88 = sub_2219A6360(v85, v87, &v140);

              *(v77 + 14) = v88;
              v89 = v136;
              _os_log_impl(&dword_221989000, v136, v133, "%s requested removal on completion, deleting source file %s", v77, 0x16u);
              v90 = v138;
              swift_arrayDestroy();
              MEMORY[0x223DA4C00](v90, -1, -1);
              v91 = v77;
              v28 = v128;
              MEMORY[0x223DA4C00](v91, -1, -1);
            }

            else
            {

              v131(v60, v69);
            }
          }

          else
          {
            v109 = v140;
            v110 = sub_221BCC338();

            swift_willThrow();
            v111 = v136;
            v112 = v110;
            v113 = sub_221BCCD68();
            v114 = sub_221BCDA78();

            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v136 = swift_slowAlloc();
              v138 = swift_slowAlloc();
              *&v140 = v138;
              *v115 = 136315394;
              v116 = [v111 debugDescription];
              v117 = sub_221BCD388();
              LODWORD(v133) = v114;
              v118 = v117;
              v120 = v119;

              v121 = sub_2219A6360(v118, v120, &v140);
              v28 = v128;

              *(v115 + 4) = v121;
              *(v115 + 12) = 2112;
              v122 = v110;
              v123 = _swift_stdlib_bridgeErrorToNSError();
              *(v115 + 14) = v123;
              v124 = v136;
              v136->isa = v123;
              _os_log_impl(&dword_221989000, v113, v133, "%s Failed to delete source file: %@", v115, 0x16u);
              sub_2219A6860(v124, &unk_27CFB7630, qword_221BD0790);
              MEMORY[0x223DA4C00](v124, -1, -1);
              v125 = v138;
              __swift_destroy_boxed_opaque_existential_0(v138);
              MEMORY[0x223DA4C00](v125, -1, -1);
              v126 = v115;
              v62 = v134;
              MEMORY[0x223DA4C00](v126, -1, -1);
            }

            else
            {
            }
          }
        }

        sub_221BCC3A8();
        v131(v62, v69);
LABEL_35:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEA8, &qword_221BE6A08);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_221BD19E0;
        v98 = *MEMORY[0x277CCA1B0];
        v99 = *MEMORY[0x277CCA1A0];
        *(inited + 32) = *MEMORY[0x277CCA1B0];
        *(inited + 40) = v99;
        type metadata accessor for FileProtectionType(0);
        v100 = v98;
        v101 = v99;
        v102 = sub_221BCD2C8();
        v103 = [v132 defaultManager];
        sub_221BB504C(v102);

        v104 = sub_221BCD278();

        sub_221BCC3E8();
        v105 = sub_221BCD358();

        *&v140 = 0;
        v106 = [v103 setAttributes:v104 ofItemAtPath:v105 error:&v140];

        if (v106)
        {
          v107 = v140;
          goto LABEL_20;
        }

        v108 = v140;
        sub_221BCC338();

        goto LABEL_19;
      }

      v131(v62, v137);
    }

    v92 = [v136 data];
    v93 = sub_221BCC468();
    v95 = v94;

    sub_221BCC498();
    sub_2219EC040(v93, v95);
    if (v50)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

  v57 = v140;
  sub_221BCC338();

LABEL_19:
  swift_willThrow();
LABEL_20:

LABEL_21:
  v59 = *MEMORY[0x277D85DE8];
}

void sub_221B7E160(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_2219A1D20(0, &qword_27CFBBEB8, 0x277CCA9F8);
  v10 = sub_221BCC3E8();
  v12 = sub_221B81EB4(v10, v11, &selRef_fileHandleForReadingAtPath_);
  if (!v12)
  {
    v19 = sub_221BCC3E8();
    v21 = v20;
    sub_221B82020();
    swift_allocError();
    *v22 = v19;
    v22[1] = v21;
    swift_willThrow();
    return;
  }

  v13 = v12;
  v14 = sub_221BCDA38();
  if (v5)
  {
    goto LABEL_11;
  }

  if (v14 <= a2)
  {
    sub_221B7E640(a1);
    goto LABEL_11;
  }

  if (__CFADD__(a2, a4))
  {
    __break(1u);
  }

  else
  {
    if (v14 <= a2 + a4)
    {
      sub_221B7E640(a1);
    }

    [v13 seekToFileOffset_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      v15 = sub_221BCDA28();
      v16 = *a5;
      v17 = a5[1];
      *a5 = v15;
      a5[1] = v18;
      sub_2219EC02C(v16, v17);
LABEL_11:
      sub_221B7E2D0(v13, a1);

      return;
    }
  }

  __break(1u);
}

void sub_221B7E2D0(void *a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_221BCC418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = 0;
  if ([a1 closeAndReturnError_])
  {
    v9 = qword_27CFB7398;
    v10 = v28[0];
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_221BCCD88();
    __swift_project_value_buffer(v11, qword_27CFDEE28);
    v12 = sub_221BCCD68();
    v13 = sub_221BCDA68();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_221989000, v12, v13, "Closing the fileHandle", v14, 2u);
      MEMORY[0x223DA4C00](v14, -1, -1);
    }
  }

  else
  {
    v15 = v28[0];
    v16 = sub_221BCC338();

    swift_willThrow();
    if (qword_27CFB7398 != -1)
    {
      swift_once();
    }

    v17 = sub_221BCCD88();
    __swift_project_value_buffer(v17, qword_27CFDEE28);
    (*(v5 + 16))(v8, a2, v4);
    v18 = sub_221BCCD68();
    v19 = sub_221BCDA78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28[0] = v21;
      *v20 = 136315138;
      v22 = sub_221BCC3E8();
      v24 = v23;
      (*(v5 + 8))(v8, v4);
      v25 = sub_2219A6360(v22, v24, v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_221989000, v18, v19, "Could not close fileHandle: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DA4C00](v21, -1, -1);
      MEMORY[0x223DA4C00](v20, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_221B7E640(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_221BCC418();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v5 + 32))(v13 + v12, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_2219F7E3C();
}

uint64_t sub_221B7E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_221BCC418();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B7E8FC, 0, 0);
}

uint64_t sub_221B7E8FC()
{
  v27 = v0;
  v1 = v0[8];
  v2 = v0[3];
  sub_221B7CFC4();
  v3 = v0[2];
  sub_221B7ECAC(v0[8]);
  v4 = *(v0[5] + 8);
  v4(v0[8], v0[4]);
  if (qword_27CFB7398 != -1)
  {
    OUTLINED_FUNCTION_3_30();
    swift_once();
  }

  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = sub_221BCCD88();
  __swift_project_value_buffer(v9, qword_27CFDEE28);
  (*(v7 + 16))(v5, v8, v6);
  v10 = sub_221BCCD68();
  v11 = sub_221BCDA68();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[7];
  v14 = v0[4];
  if (v12)
  {
    v15 = OUTLINED_FUNCTION_74_0();
    log = swift_slowAlloc();
    v26 = log;
    *v15 = 136315138;
    v16 = sub_221BCC3E8();
    v18 = v17;
    v4(v13, v14);
    v19 = sub_2219A6360(v16, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_221989000, v10, v11, "Marking file for deletion: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(log);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    v4(v13, v14);
  }

  sub_221B7F00C();
  v21 = v0[7];
  v20 = v0[8];
  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

void sub_221B7ECAC(uint64_t a1)
{
  v27 = a1;
  v3 = sub_221BCC418();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_221BCD3C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221BCC3E8();
  sub_221B81D54();

  sub_221BCD3B8();
  v12 = sub_221BCD398();
  v14 = v13;

  (*(v8 + 8))(v11, v7);
  if (v14 >> 60 == 15)
  {
    v27 = v2;
    if (qword_27CFB7398 != -1)
    {
      swift_once();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEE28);
    v16 = v28;
    v17 = v29;
    (*(v28 + 16))(v6, v1, v29);
    v18 = sub_221BCCD68();
    v19 = sub_221BCDA78();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      v22 = sub_221BCC3E8();
      v24 = v23;
      (*(v16 + 8))(v6, v17);
      v25 = sub_2219A6360(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_221989000, v18, v19, "Could not encode path for deletion: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x223DA4C00](v21, -1, -1);
      MEMORY[0x223DA4C00](v20, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v6, v17);
    }
  }

  else
  {
    sub_221B81DD4();
    sub_2219EC02C(v12, v14);
  }
}

void sub_221B7F00C()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v45 = [v0 sharedScheduler];
  OUTLINED_FUNCTION_13_17();
  v1 = sub_221BCD358();
  v2 = [v45 taskRequestForIdentifier_];

  if (v2)
  {

    v3 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_17_14();
  }

  else
  {
    OUTLINED_FUNCTION_13_17();
    v6 = sub_221BCD358();
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_9_22();
    aBlock[2] = v7;
    aBlock[3] = &block_descriptor_16;
    v8 = _Block_copy(aBlock);
    v15 = OUTLINED_FUNCTION_18_14(v8, sel_registerForTaskWithIdentifier_usingQueue_launchHandler_, v9, v10, v11, v12, v13, v14, v44, v45);
    _Block_release(v8);

    if ((v15 & 1) == 0)
    {
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48();
      }

      v16 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v16, qword_27CFDEDE0);
      v17 = sub_221BCCD68();
      v18 = sub_221BCDA78();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v19);
        OUTLINED_FUNCTION_19_13(&dword_221989000, v20, v21, "Unable to register deletion task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    sub_2219A1D20(0, &qword_27CFBBEC0, 0x277CF07C8);
    OUTLINED_FUNCTION_13_17();
    v22 = sub_2219A51F4();
    [v22 setScheduleAfter_];
    [v22 setTrySchedulingBefore_];
    [v22 setPriority_];
    v23 = [v0 sharedScheduler];
    aBlock[0] = 0;
    v24 = [v23 submitTaskRequest:v22 error:aBlock];

    if (v24)
    {
      v25 = qword_27CFB7380;
      v26 = aBlock[0];
      if (v25 != -1)
      {
        OUTLINED_FUNCTION_0_48();
      }

      v27 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v27, qword_27CFDEDE0);
      v28 = sub_221BCCD68();
      v29 = sub_221BCDA68();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v30);
        OUTLINED_FUNCTION_20_13(&dword_221989000, v31, v32, "Submitted deletion task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    else
    {
      v33 = aBlock[0];
      v34 = sub_221BCC338();

      swift_willThrow();
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48();
      }

      v35 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v35, qword_27CFDEDE0);
      v36 = v34;
      v37 = sub_221BCCD68();
      v38 = sub_221BCDA78();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_74_0();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v34;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_221989000, v37, v38, "Failed to submit maintenance task: %@", v39, 0xCu);
        sub_2219A6860(v40, &unk_27CFB7630, qword_221BD0790);
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }
    }

    v43 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_17_14();
  }
}

uint64_t sub_221B7F478()
{
  v1 = sub_221BCD1F8();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = sub_221BCD1B8();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    swift_once();
  }

  sub_221BCD1A8();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  OUTLINED_FUNCTION_6_22(v19);
  OUTLINED_FUNCTION_3_27(COERCE_DOUBLE(1107296256));
  v24 = v20;
  v25 = &block_descriptor_22;
  v21 = _Block_copy(aBlock);
  sub_221BCD1D8();
  OUTLINED_FUNCTION_14_17();
  _Block_release(v21);
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
}

void sub_221B7F654(void (**a1)(uint64_t, uint64_t))
{
  v141[2] = *MEMORY[0x277D85DE8];
  v2 = sub_221BCD3C8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v136 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_221BCC418();
  v137 = *(v5 - 8);
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v120 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v120 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v120 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v120 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  sub_221B7CFC4();
  v132 = a1;
  v133 = v14;
  v138 = v5;
  v134 = v17;
  v135 = v23;
  v130 = v11;
  v131 = v8;
  sub_221BCC3E8();
  sub_221BCD3B8();
  v27 = sub_221BCD348();
  v28 = v26;
  v29 = v27;
  v31 = v30;
  v129 = v28;

  v141[0] = v29;
  v141[1] = v31;
  v139 = 10;
  v140 = 0xE100000000000000;
  sub_221A1CAA4();
  v32 = sub_221BCDCC8();

  v33 = *(v32 + 16);
  v34 = v137;
  if (v33)
  {
    v141[0] = MEMORY[0x277D84F90];
    sub_2219A36BC(0, v33, 0);
    v35 = v141[0];
    v136 = v32;
    v36 = (v32 + 40);
    v37 = v133;
    do
    {
      v39 = *(v36 - 1);
      v38 = *v36;

      sub_221BCC378();

      v141[0] = v35;
      v41 = v35[2];
      v40 = v35[3];
      if (v41 >= v40 >> 1)
      {
        sub_2219A36BC(v40 > 1, v41 + 1, 1);
        v35 = v141[0];
      }

      v35[2] = v41 + 1;
      (*(v34 + 32))(v35 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v41, v20, v138);
      v36 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
    v37 = v133;
  }

  v42 = sub_221BC23F4(v35);
  sub_221B7CCF4(v135);
  v44 = v134;
  v125 = 0;
  v54 = 0;
  v55 = v42 + 56;
  v56 = 1 << *(v42 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & *(v42 + 56);
  v59 = ((v56 + 63) >> 6);
  v136 = (v34 + 16);
  v127 = v34 + 32;
  v132 = (v34 + 8);
  *&v43 = 136315138;
  v123 = v43;
  *&v43 = 136315394;
  v122 = v43;
  v60 = v138;
  v126 = v42;
  while (v58)
  {
    v61 = v54;
LABEL_22:
    v62 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v63 = *(v42 + 48) + *(v34 + 72) * (v62 | (v61 << 6));
    v128 = *(v34 + 16);
    v128(v44, v63, v60);
    (*(v34 + 32))(v37, v44, v60);
    v64 = v60;
    sub_221BCC3E8();
    sub_221BCC3E8();
    v65 = sub_221BCD528();

    if (v65)
    {
      v66 = [objc_opt_self() defaultManager];
      v67 = sub_221BCC388();
      v141[0] = 0;
      v68 = [v66 removeItemAtURL:v67 error:v141];

      if (v68)
      {
        v69 = qword_27CFB7398;
        v70 = v141[0];
        if (v69 != -1)
        {
          swift_once();
        }

        v71 = sub_221BCCD88();
        __swift_project_value_buffer(v71, qword_27CFDEE28);
        v72 = v130;
        v128(v130, v37, v138);
        v73 = sub_221BCCD68();
        v74 = sub_221BCDA68();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v124 = v75;
          v128 = swift_slowAlloc();
          v141[0] = v128;
          *v75 = v123;
          sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
          LODWORD(v121) = v74;
          v76 = sub_221BCE168();
          v77 = v72;
          v79 = v78;
          v80 = *v132;
          (*v132)(v77, v138);
          v81 = sub_2219A6360(v76, v79, v141);

          v82 = v124;
          *(v124 + 1) = v81;
          v83 = v73;
          v84 = v73;
          v85 = v82;
          _os_log_impl(&dword_221989000, v84, v121, "Removed file at: %s", v82, 0xCu);
          v86 = v128;
          __swift_destroy_boxed_opaque_existential_0(v128);
          MEMORY[0x223DA4C00](v86, -1, -1);
          MEMORY[0x223DA4C00](v85, -1, -1);
        }

        else
        {

          v80 = *v132;
          (*v132)(v72, v138);
        }

        v80(v37, v138);
        v60 = v138;
        v54 = v61;
        v44 = v134;
        v42 = v126;
      }

      else
      {
        v87 = v141[0];
        v88 = sub_221BCC338();

        swift_willThrow();
        if (qword_27CFB7398 != -1)
        {
          swift_once();
        }

        v89 = sub_221BCCD88();
        __swift_project_value_buffer(v89, qword_27CFDEE28);
        v90 = v131;
        v91 = v133;
        v128(v131, v133, v64);
        v92 = v88;
        v93 = sub_221BCCD68();
        v94 = sub_221BCDA78();
        v95 = v88;
        v96 = v94;
        v125 = v95;

        LODWORD(v124) = v96;
        v128 = v93;
        if (os_log_type_enabled(v93, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v141[0] = v121;
          *v97 = v122;
          sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
          v99 = sub_221BCE168();
          v100 = v90;
          v102 = v101;
          v120 = *v132;
          v120(v100, v64);
          v103 = sub_2219A6360(v99, v102, v141);

          *(v97 + 4) = v103;
          *(v97 + 12) = 2112;
          v104 = v125;
          v105 = v125;
          v106 = _swift_stdlib_bridgeErrorToNSError();
          *(v97 + 14) = v106;
          *v98 = v106;
          v107 = v128;
          _os_log_impl(&dword_221989000, v128, v124, "Failed to remove file at: %s, error: %@", v97, 0x16u);
          sub_2219A6860(v98, &unk_27CFB7630, qword_221BD0790);
          MEMORY[0x223DA4C00](v98, -1, -1);
          v108 = v121;
          __swift_destroy_boxed_opaque_existential_0(v121);
          MEMORY[0x223DA4C00](v108, -1, -1);
          MEMORY[0x223DA4C00](v97, -1, -1);

          v37 = v133;
          v60 = v138;
          v120(v133, v138);
          v125 = 0;
          v54 = v61;
          v42 = v126;
          v44 = v134;
        }

        else
        {

          v109 = *v132;
          (*v132)(v90, v138);
          v109(v91, v138);
          v44 = v134;
          v60 = v138;
          v125 = 0;
          v54 = v61;
          v37 = v91;
          v42 = v126;
        }
      }
    }

    else
    {
      (*v132)(v37, v60);
      v54 = v61;
      v42 = v126;
      v44 = v134;
    }
  }

  while (1)
  {
    v61 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
LABEL_40:
      swift_once();
      goto LABEL_10;
    }

    if (v61 >= v59)
    {
      break;
    }

    v58 = *(v55 + 8 * v61);
    ++v54;
    if (v58)
    {
      goto LABEL_22;
    }
  }

  v110 = [objc_opt_self() defaultManager];
  v111 = v129;
  v112 = sub_221BCC388();
  v141[0] = 0;
  v113 = [v110 removeItemAtURL:v112 error:v141];

  if (v113)
  {
    v114 = *v132;
    v115 = v141[0];
    v116 = v138;
    v114(v135, v138);
    v114(v111, v116);
    goto LABEL_13;
  }

  v117 = v141[0];
  v59 = sub_221BCC338();

  swift_willThrow();
  v118 = *v132;
  v119 = v138;
  (*v132)(v135, v138);
  v118(v111, v119);
  if (qword_27CFB7398 != -1)
  {
    goto LABEL_40;
  }

LABEL_10:
  v45 = sub_221BCCD88();
  __swift_project_value_buffer(v45, qword_27CFDEE28);
  v46 = v59;
  v47 = sub_221BCCD68();
  v48 = sub_221BCDA78();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = v59;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v52;
    *v50 = v52;
    _os_log_impl(&dword_221989000, v47, v48, "Failure during file removal: %@", v49, 0xCu);
    sub_2219A6860(v50, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v50, -1, -1);
    MEMORY[0x223DA4C00](v49, -1, -1);
  }

  else
  {
  }

LABEL_13:
  v53 = *MEMORY[0x277D85DE8];
}

uint64_t static RemoteFileStore.pruneCache()()
{
  v1 = sub_221BCD1F8();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  v10 = sub_221BCD1B8();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  if (qword_27CFB7308 != -1)
  {
    OUTLINED_FUNCTION_1_44();
    swift_once();
  }

  sub_221BCD1A8();
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  *(v19 + 24) = v0;
  OUTLINED_FUNCTION_6_22(v19);
  OUTLINED_FUNCTION_3_27(COERCE_DOUBLE(1107296256));
  v24 = v20;
  v25 = &block_descriptor_8;
  v21 = _Block_copy(aBlock);
  sub_221BCD1D8();
  OUTLINED_FUNCTION_14_17();
  _Block_release(v21);
  (*(v4 + 8))(v9, v1);
  (*(v13 + 8))(v18, v10);
}

uint64_t sub_221B80550()
{
  v177[4] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEB0, &unk_221BE6A10);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v174 = v151 - v2;
  v170 = sub_221BCC4D8();
  v157 = *(v170 - 8);
  v3 = *(v157 + 64);
  MEMORY[0x28223BE20](v170);
  v159 = v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v162 = v151 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v151 - v9;
  v176 = sub_221BCC418();
  v160 = *(v176 - 8);
  v11 = *(v160 + 64);
  MEMORY[0x28223BE20](v176);
  v13 = v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v151 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v151 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v151 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = v151 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = v151 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v151 - v30;
  sub_221B7CCF4(v10);
  v32 = v28;
  v172 = v16;
  v167 = v25;
  v152 = v22;
  v166 = v19;
  v163 = v13;
  v33 = v176;
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v176);
  v34 = v160;
  (*(v160 + 32))(v31, v10, v33);
  if (qword_27CFB7398 != -1)
  {
    swift_once();
  }

  v35 = sub_221BCCD88();
  v36 = __swift_project_value_buffer(v35, qword_27CFDEE28);
  v37 = v32;
  v38 = v31;
  v175 = *(v34 + 16);
  (v175)(v32, v31, v176);
  v171 = v36;
  v39 = sub_221BCCD68();
  v40 = sub_221BCDA68();
  v41 = os_log_type_enabled(v39, v40);
  v168 = v34 + 16;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v177[0] = v43;
    *v42 = 136315138;
    sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
    v44 = sub_221BCE168();
    v46 = v45;
    v173 = *(v34 + 8);
    v173(v37, v176);
    v47 = sub_2219A6360(v44, v46, v177);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_221989000, v39, v40, "Pruning cache at: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223DA4C00](v43, -1, -1);
    MEMORY[0x223DA4C00](v42, -1, -1);
  }

  else
  {

    v173 = *(v34 + 8);
    v173(v37, v176);
  }

  v48 = v162;
  v50 = v166;
  v49 = v167;
  v51 = [objc_opt_self() defaultManager];
  v52 = sub_221BCC388();
  v177[0] = 0;
  v53 = [v51 contentsOfDirectoryAtURL:v52 includingPropertiesForKeys:0 options:0 error:v177];

  v54 = v177[0];
  if (v53)
  {
    v155 = v38;
    v55 = sub_221BCD668();
    v56 = v54;

    sub_221BCC4C8();
    v58 = *(v55 + 16);
    if (v58)
    {
      v59 = (*(v160 + 80) + 32) & ~*(v160 + 80);
      v151[1] = v55;
      v60 = v55 + v59;
      v154 = (v157 + 32);
      v172 = (v160 + 8);
      v169 = *(v160 + 72);
      v153 = (v157 + 8);
      v161 = *MEMORY[0x277CCA108];
      *&v57 = 136315394;
      v156 = v57;
      *&v57 = 136315138;
      v158 = v57;
      v61 = v174;
      v165 = v51;
      while (1)
      {
        (v175)(v49, v60, v176);
        sub_221BCC3E8();
        v62 = sub_221BCD358();

        v177[0] = 0;
        v63 = [v51 attributesOfItemAtPath:v62 error:v177];

        v64 = v177[0];
        if (!v63)
        {
          v87 = v177[0];
          v88 = sub_221BCC338();

          swift_willThrow();
LABEL_19:
          v89 = v163;
          (v175)(v163, v49, v176);
          v90 = v88;
          v91 = sub_221BCCD68();
          v92 = sub_221BCDA78();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v177[0] = v95;
            *v93 = v156;
            v96 = sub_221BCC3E8();
            v97 = v89;
            v99 = v98;
            v173(v97, v176);
            v100 = sub_2219A6360(v96, v99, v177);

            *(v93 + 4) = v100;
            *(v93 + 12) = 2112;
            v101 = v88;
            v102 = _swift_stdlib_bridgeErrorToNSError();
            *(v93 + 14) = v102;
            *v94 = v102;
            _os_log_impl(&dword_221989000, v91, v92, "Could not remove: %s, error: %@", v93, 0x16u);
            sub_2219A6860(v94, &unk_27CFB7630, qword_221BD0790);
            v103 = v94;
            v51 = v165;
            MEMORY[0x223DA4C00](v103, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v95);
            v104 = v95;
            v49 = v167;
            MEMORY[0x223DA4C00](v104, -1, -1);
            v105 = v93;
            v50 = v166;
            MEMORY[0x223DA4C00](v105, -1, -1);

            v173(v49, v176);
          }

          else
          {

            v108 = v89;
            v109 = v176;
            v110 = v173;
            v173(v108, v176);
            v110(v49, v109);
          }

          v61 = v174;
          goto LABEL_31;
        }

        type metadata accessor for FileAttributeKey(0);
        sub_221B82074(&qword_27CFB7590, type metadata accessor for FileAttributeKey);
        v65 = sub_221BCD298();
        v66 = v64;

        if (!*(v65 + 16))
        {
          break;
        }

        v67 = sub_221B9E924(v161);
        if ((v68 & 1) == 0)
        {
          break;
        }

        sub_22199B650(*(v65 + 56) + 32 * v67, v177);

        v69 = v170;
        v70 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v174, v70 ^ 1u, 1, v69);
        v71 = v69;
        v61 = v174;
        if (__swift_getEnumTagSinglePayload(v174, 1, v71) == 1)
        {
          goto LABEL_16;
        }

        v72 = v61;
        v73 = v159;
        (*v154)(v159, v72, v170);
        sub_221BCC4B8();
        if (v74 >= 3600.0)
        {
          v111 = v152;
          (v175)(v152, v49, v176);
          v112 = sub_221BCCD68();
          v113 = sub_221BCDA68();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v177[0] = v115;
            *v114 = v158;
            v116 = sub_221BCC3E8();
            v118 = v117;
            v173(v111, v176);
            v119 = sub_2219A6360(v116, v118, v177);
            v51 = v165;

            *(v114 + 4) = v119;
            _os_log_impl(&dword_221989000, v112, v113, "Pruning: %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            MEMORY[0x223DA4C00](v115, -1, -1);
            v120 = v114;
            v49 = v167;
            MEMORY[0x223DA4C00](v120, -1, -1);
          }

          else
          {

            v173(v111, v176);
          }

          v121 = sub_221BCC388();
          v177[0] = 0;
          v122 = [v51 removeItemAtURL:v121 error:v177];

          if (!v122)
          {
            v125 = v177[0];
            v88 = sub_221BCC338();

            swift_willThrow();
            (*v153)(v159, v170);
            goto LABEL_19;
          }

          v123 = *v153;
          v124 = v177[0];
          v123(v159, v170);
        }

        else
        {
          (*v153)(v73, v170);
        }

        v173(v49, v176);
LABEL_30:
        v61 = v174;
LABEL_31:
        v60 += v169;
        if (!--v58)
        {

          v48 = v162;
          goto LABEL_37;
        }
      }

      __swift_storeEnumTagSinglePayload(v61, 1, 1, v170);
LABEL_16:
      sub_2219A6860(v61, &qword_27CFBBEB0, &unk_221BE6A10);
      (v175)(v50, v49, v176);
      v75 = sub_221BCCD68();
      v76 = sub_221BCDA78();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v177[0] = v78;
        *v77 = v158;
        v79 = sub_221BCC3E8();
        v81 = v80;
        v82 = v50;
        v83 = v176;
        v164 = v58;
        v84 = v173;
        v173(v82, v176);
        v85 = sub_2219A6360(v79, v81, v177);
        v51 = v165;

        *(v77 + 4) = v85;
        _os_log_impl(&dword_221989000, v75, v76, "Could not get creation date for: %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x223DA4C00](v78, -1, -1);
        v86 = v77;
        v49 = v167;
        MEMORY[0x223DA4C00](v86, -1, -1);

        v84(v49, v83);
        v58 = v164;
        v50 = v166;
      }

      else
      {

        v106 = v176;
        v107 = v173;
        v173(v50, v176);
        v107(v49, v106);
      }

      goto LABEL_30;
    }

LABEL_37:

    (*(v157 + 8))(v48, v170);
    result = (v173)(v155, v176);
  }

  else
  {
    v126 = v177[0];
    v127 = sub_221BCC338();

    swift_willThrow();
    v128 = v172;
    (v175)(v172, v38, v176);
    v129 = v127;
    v130 = sub_221BCCD68();
    v131 = sub_221BCDA78();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v155 = v38;
      v134 = v133;
      v135 = swift_slowAlloc();
      v165 = v51;
      v175 = v135;
      v177[0] = v135;
      *v132 = 136315394;
      sub_221B82074(&qword_27CFB9278, MEMORY[0x277CC9260]);
      v136 = v128;
      v137 = v176;
      v138 = sub_221BCE168();
      v140 = v139;
      v141 = v136;
      v142 = v173;
      v173(v141, v137);
      v143 = sub_2219A6360(v138, v140, v177);

      *(v132 + 4) = v143;
      *(v132 + 12) = 2112;
      v144 = v127;
      v145 = _swift_stdlib_bridgeErrorToNSError();
      *(v132 + 14) = v145;
      *v134 = v145;
      _os_log_impl(&dword_221989000, v130, v131, "Could not prune cache: %s, error: %@", v132, 0x16u);
      sub_2219A6860(v134, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v134, -1, -1);
      v146 = v175;
      __swift_destroy_boxed_opaque_existential_0(v175);
      MEMORY[0x223DA4C00](v146, -1, -1);
      MEMORY[0x223DA4C00](v132, -1, -1);

      result = v142(v155, v137);
    }

    else
    {

      v148 = v176;
      v149 = v173;
      v173(v128, v176);
      result = v149(v38, v148);
    }
  }

  v150 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_221B81658()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_221B80550();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_221B816B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void static RemoteFileStore.MaintenanceTask.register()()
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v54 = [v0 sharedScheduler];
  OUTLINED_FUNCTION_12_13();
  v1 = sub_221BCD358();
  v2 = [v54 taskRequestForIdentifier_];

  if (!v2)
  {
    OUTLINED_FUNCTION_12_13();
    v6 = sub_221BCD358();
    OUTLINED_FUNCTION_7_19();
    OUTLINED_FUNCTION_9_22();
    aBlock[2] = v7;
    aBlock[3] = &block_descriptor_3;
    v8 = _Block_copy(aBlock);
    v15 = OUTLINED_FUNCTION_18_14(v8, sel_registerForTaskWithIdentifier_usingQueue_launchHandler_, v9, v10, v11, v12, v13, v14, v53, v54);
    _Block_release(v8);

    if ((v15 & 1) == 0)
    {
      if (qword_27CFB7380 != -1)
      {
        OUTLINED_FUNCTION_0_48();
      }

      v16 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v16, qword_27CFDEDE0);
      v17 = sub_221BCCD68();
      v18 = sub_221BCDA78();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v19);
        OUTLINED_FUNCTION_19_13(&dword_221989000, v20, v21, "Unable to register maintenance task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    sub_2219A1D20(0, &qword_27CFBBE98, 0x277CF07D8);
    OUTLINED_FUNCTION_12_13();
    v22 = sub_2219A51F4();
    [v22 setInterval_];
    [v22 setPriority_];
    v23 = [v0 sharedScheduler];
    aBlock[0] = 0;
    v24 = [v23 submitTaskRequest:v22 error:aBlock];

    if (v24)
    {
      v25 = qword_27CFB7380;
      v26 = aBlock[0];
      if (v25 != -1)
      {
        OUTLINED_FUNCTION_0_48();
      }

      v27 = sub_221BCCD88();
      OUTLINED_FUNCTION_178(v27, qword_27CFDEDE0);
      v28 = sub_221BCCD68();
      v29 = sub_221BCDA68();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_15_15();
        OUTLINED_FUNCTION_16_13(v30);
        OUTLINED_FUNCTION_20_13(&dword_221989000, v31, v32, "Submitted maintenance task.");
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      goto LABEL_31;
    }

    v33 = aBlock[0];
    v34 = sub_221BCC338();

    swift_willThrow();
    v35 = sub_221BCC328();
    v36 = [v35 domain];
    v37 = sub_221BCD388();
    v39 = v38;

    v40 = *MEMORY[0x277CF07B8];
    if (v37 == sub_221BCD388() && v39 == v41)
    {
    }

    else
    {
      v43 = sub_221BCE1B8();

      if ((v43 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    if ([v35 code] == 5)
    {

LABEL_31:
      v52 = *MEMORY[0x277D85DE8];
      OUTLINED_FUNCTION_17_14();
      return;
    }

LABEL_26:
    if (qword_27CFB7380 != -1)
    {
      OUTLINED_FUNCTION_0_48();
    }

    v44 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v44, qword_27CFDEDE0);
    v45 = v34;
    v46 = sub_221BCCD68();
    v47 = sub_221BCDA78();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_74_0();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v34;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_221989000, v46, v47, "Failed to submit maintenance task: %@", v48, 0xCu);
      sub_2219A6860(v49, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }

    goto LABEL_31;
  }

  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17_14();
}

id sub_221B81C60(void *a1, const char *a2, void (*a3)(void))
{
  if (qword_27CFB7380 != -1)
  {
    OUTLINED_FUNCTION_0_48();
  }

  v6 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v6, qword_27CFDEDE0);
  v7 = sub_221BCCD68();
  v8 = sub_221BCDA68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_15_15();
    *v9 = 0;
    _os_log_impl(&dword_221989000, v7, v8, a2, v9, 2u);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  type metadata accessor for RemoteFileStore();
  a3();

  return [a1 setTaskCompleted];
}

uint64_t sub_221B81D54()
{

  v1 = sub_221BCD578();
  sub_221BCD498();
  return v1;
}

void sub_221B81DD4()
{
  sub_2219A1D20(0, &qword_27CFBBEB8, 0x277CCA9F8);
  v0 = sub_221BCC3E8();
  v2 = sub_221B81EB4(v0, v1, &selRef_fileHandleForWritingAtPath_);
  if (v2)
  {
    v3 = v2;
    [v2 seekToEndOfFile];
    v4 = sub_221BCC448();
    [v3 writeData_];

    [v3 closeFile];
  }

  else
  {
    sub_221BCC498();
  }
}

id sub_221B81EB4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = sub_221BCD358();

  v5 = [swift_getObjCClassFromMetadata() *a3];

  return v5;
}

_BYTE *storeEnumTagSinglePayload for RemoteFileStore.MaintenanceTask(_BYTE *result, int a2, int a3)
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

unint64_t sub_221B82020()
{
  result = qword_27CFBBEA0;
  if (!qword_27CFBBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBEA0);
  }

  return result;
}

uint64_t sub_221B82074(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221B820E0(uint64_t a1)
{
  v4 = *(sub_221BCC418() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_221B82200;

  return sub_221B7E824(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_221B82200()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t OUTLINED_FUNCTION_0_48()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_22(uint64_t result)
{
  *(v2 - 96) = v1;
  *(v2 - 88) = result;
  *(v2 - 128) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_14_17()
{

  JUMPOUT(0x223DA3890);
}

uint64_t OUTLINED_FUNCTION_15_15()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_18_14(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{

  return [a10 a2];
}

void OUTLINED_FUNCTION_19_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_20_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_221B824A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for RemoteFileDescriptor(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v3 exportedContent];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 content];
    sub_221B86810();

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_221B82A1C(v9);
      v17 = [v15 content];
      *(a2 + 24) = &type metadata for LocalFileRepresentation;
      *(a2 + 32) = &off_28351B7F0;

      *a2 = v17;
    }

    else
    {

      sub_221A5E41C(v9, v13);
      v18 = type metadata accessor for RemoteFileRepresentation(0);
      *(a2 + 24) = v18;
      *(a2 + 32) = &off_28351B7B0;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      sub_221A5E41C(v13, boxed_opaque_existential_1);
      sub_2219A1B08(a1, boxed_opaque_existential_1 + *(v18 + 20));
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

id sub_221B8267C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 value];
  v5 = [a1 valueType];
  v6 = [a1 displayRepresentation];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, sel_initWithValue_valueType_displayRepresentation_, v4, v5, v6);
  swift_unknownObjectRelease();

  v8 = v7;
  v9 = [a1 exportedContent];
  [v8 setExportedContent_];

  return v8;
}

id sub_221B82790(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_221B82A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221B82C10()
{
  v1 = [v0 viewData];
  v2 = sub_221BCC468();

  return v2;
}

uint64_t sub_221B82C68(void *a1)
{
  v1 = [a1 snippetModelData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_221BCC468();

  return v3;
}

uint64_t sub_221B82D0C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_221B82D88()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = *(v3 + 40);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_221B82EAC;

  return v8(v2, v3);
}

uint64_t sub_221B82EAC()
{
  OUTLINED_FUNCTION_0_49();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_118_0();
  }

  return v7(v6);
}

double sub_221B82FA4@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  sub_221B83498(v2, v8);
  v5 = swift_allocObject();
  result = *v8;
  v7 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v7;
  *(v5 + 48) = v9;
  *(v5 + 56) = v4;
  *a2 = sub_221B834D0;
  a2[1] = v5;
  return result;
}

uint64_t sub_221B83020(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  v6 = a2;
  return (*(v4 + 48))(&v6, v3, v4);
}

uint64_t sub_221B83094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B83120;

  return sub_221B82D68();
}

uint64_t sub_221B83120()
{
  OUTLINED_FUNCTION_0_49();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_118_0();
  }

  return v7(v6);
}

double TransferableExportable.exportedContent.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t dispatch thunk of TransferableData.data.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221B8336C;
  v6 = OUTLINED_FUNCTION_118_0();

  return v8(v6);
}

uint64_t sub_221B8336C()
{
  OUTLINED_FUNCTION_0_49();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_118_0();

  return v7(v6);
}

void sub_221B834F4(void *a1@<X0>, void (*a2)(void)@<X2>, unint64_t *a3@<X3>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDAC8();
  if (OUTLINED_FUNCTION_1_45())
  {
    a2(0);
    sub_221B83EA0(a3, a4);
    sub_221BCDAA8();
  }

  else
  {
    v10 = (a2)(0);
    __swift_storeEnumTagSinglePayload(a5, 1, 1, v10);
  }
}

uint64_t sub_221B835E8(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDAC8();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  sub_221BCDAA8();

  return v4;
}

void static IntentValueCodable.from(_:context:)(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDAC8();
  if (OUTLINED_FUNCTION_1_45())
  {
    v8 = *(a3 + 24);
    sub_221BCDAA8();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a4, 1, 1, a2);
  }
}

id sub_221B83754()
{
  v1 = sub_221BCC268();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCDAC8();
  (*(v2 + 16))(v5, v0, v1);
  sub_221B83EA0(&qword_27CFBBEE0, MEMORY[0x277CC88A8]);
  v7 = sub_221BCDAB8();
  v11[3] = v6;
  v11[0] = v7;
  sub_221B83D54();
  v8 = sub_221BCDB78();
  v9 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v11, v8);
}

id sub_221B838A8()
{
  v1 = sub_221BCC318();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCDAC8();
  (*(v2 + 16))(v5, v0, v1);
  sub_221B83EA0(&qword_27CFBBEF0, MEMORY[0x277CC8E50]);
  v7 = sub_221BCDAB8();
  v11[3] = v6;
  v11[0] = v7;
  sub_221B83D54();
  v8 = sub_221BCDB88();
  v9 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v11, v8);
}

id sub_221B839FC(uint64_t a1, uint64_t a2)
{
  v5[1] = a2;
  v5[3] = sub_221BCDAC8();
  v5[0] = sub_221BCDAB8();
  sub_221B83D54();
  v2 = sub_221BCDB98();
  v3 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v5, v2);
}

id IntentValueCodable.lnValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_221BCDAC8();
  (*(v5 + 16))(v8, v2, a1);
  v10 = *(a2 + 32);
  v11 = sub_221BCDAB8();
  v15[3] = v9;
  v15[0] = v11;
  v12 = (*(*(a2 + 16) + 16))(a1);
  v13 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v15, v12);
}

uint64_t sub_221B83C90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B835E8(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

unint64_t sub_221B83D54()
{
  result = qword_27CFBBED0;
  if (!qword_27CFBBED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBBED0);
  }

  return result;
}

uint64_t sub_221B83D98(uint64_t a1)
{
  v2 = MEMORY[0x277CC88A8];
  *(a1 + 24) = sub_221B83EA0(&qword_27CFBBED8, MEMORY[0x277CC88A8]);
  result = sub_221B83EA0(&qword_27CFBBEE0, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_221B83E1C(uint64_t a1)
{
  v2 = MEMORY[0x277CC8E50];
  *(a1 + 24) = sub_221B83EA0(&qword_27CFBBEE8, MEMORY[0x277CC8E50]);
  result = sub_221B83EA0(&qword_27CFBBEF0, v2);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_221B83EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_45()
{

  return swift_dynamicCast();
}

void sub_221B83F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = [a1 valueType];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = [v7 memberValueType];
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 memberValueTypes];
          sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
          v12 = sub_221BCD668();

          v13 = sub_2219A69A0(v12);
          for (i = 0; ; ++i)
          {
            if (v13 == i)
            {

              return;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x223DA3BF0](i, v12);
            }

            else
            {
              if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v15 = *(v12 + 8 * i + 32);
            }

            v16 = v15;
            if (__OFADD__(i, 1))
            {
              break;
            }

            v17 = (*(a4 + 16))(v15, a3, a4);

            if (v17)
            {

              return;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }

        else
        {
          v18 = [v8 memberValueType];
          (*(a4 + 16))();
        }
      }

      else
      {
      }
    }
  }
}

uint64_t _sSa18AppIntentsServicesAA26IntentValueSequenceElementRzlE4from_7contextSayxGSgSo7LNValueC_AA0dE17ConversionContext_ptFZ_0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v2 = swift_dynamicCast();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  MEMORY[0x28223BE20](v2);
  sub_221B84FB4();
  v3 = sub_221BCD5B8();

  return v3;
}

uint64_t sub_221B84284(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    v3 = sub_221B842E8(v1, *(a1 + 16), *(a1 + 24), *(a1 + 32));
    *(v1 + v2) = v3;
  }

  return v3;
}

uint64_t sub_221B842E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v11, v9);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
  v12 = sub_221BCD5B8();
  (*(v7 + 8))(v11, a2);
  return v12;
}

uint64_t sub_221B84424@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v4(AssociatedTypeWitness, v3);
  *a2 = result;
  return result;
}

uint64_t sub_221B844A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v1 + v2))
  {
    v3 = *(v1 + v2);
  }

  else
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    sub_221B84508();
    v3 = v7;
    *(v1 + v2) = v7;
  }

  return v3;
}

void sub_221B84508()
{
  v0 = type metadata accessor for LNValueCollector();
  v1 = sub_221B84284(v0);
  v14 = MEMORY[0x277D84FA0];
  v2 = sub_2219A69A0(v1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DA3BF0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v6 = [v4 valueType];
    sub_221BBA264(&v13, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_221B84608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for LNValueCollector();
  *(a5 + *(result + 44)) = a2;
  *(a5 + *(result + 48)) = a3;
  return result;
}

id sub_221B846A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41[0] = a2;
  v41[1] = a5;
  v7 = type metadata accessor for LNValueCollector();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v41 - v9;
  v11 = sub_221BCDC98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v41 - v14;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v41 - v23;
  (*(v12 + 16))(v15, a1, v11, v22);
  if (__swift_getEnumTagSinglePayload(v15, 1, a3) != 1)
  {
    (*(v16 + 32))(v24, v15, a3);
    (*(v16 + 16))(v20, v24, a3);
    sub_221B84608(v20, 0, 0, a3, v10);
    if (dynamic_cast_existential_1_conditional(a3))
    {
      v27 = (*(v26 + 16))();
      v28 = v43;
    }

    else
    {
      v28 = v43;
      v29 = sub_221B844A4(v43);
      if (sub_221BB954C(v29) < 2)
      {
        v27 = sub_2219A280C(v29);

        if (v27)
        {
          goto LABEL_9;
        }

        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v38 = dynamic_cast_existential_1_conditional(AssociatedTypeWitness);
        v25 = v38;
        if (!v38)
        {
          goto LABEL_10;
        }

        v40 = v39;
        if (dynamic_cast_existential_1_class_conditional(v38))
        {
          v30 = [objc_allocWithZone(MEMORY[0x277D23810]) init];
        }

        else
        {
          v30 = (*(v40 + 16))(v25, v40);
        }
      }

      else
      {
        sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
        sub_221BB9DCC(v29);

        v30 = sub_221BB956C();
      }

      v27 = v30;
    }

LABEL_9:
    v31 = objc_allocWithZone(MEMORY[0x277D23760]);
    v32 = [v31 initWithMemberValueType:v27 capabilities:v41[0]];
    v33 = sub_221B84284(v28);
    v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
    v44[0] = v33;
    v34 = objc_allocWithZone(MEMORY[0x277D23958]);
    v35 = v32;
    v25 = sub_2219A6260(v44, v35);

LABEL_10:
    (*(v42 + 8))(v10, v28);
    (*(v16 + 8))(v24, a3);
    return v25;
  }

  (*(v12 + 8))(v15, v11);
  return 0;
}

id Array<A>.lnValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = sub_221BCD748();
  OUTLINED_FUNCTION_0_51();
  WitnessTable = swift_getWitnessTable();
  return sub_221B846A4(&v7, 3, v4, WitnessTable, a3);
}

uint64_t sub_221B84BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static Array<A>.from(_:context:)(a1, a2, *(a3 + 16), *(a4 - 8));
  *a5 = result;
  return result;
}

uint64_t static Set<>.from(_:context:)(void *a1)
{
  result = _sSa18AppIntentsServicesAA26IntentValueSequenceElementRzlE4from_7contextSayxGSgSo7LNValueC_AA0dE17ConversionContext_ptFZ_0(a1);
  if (result)
  {
    sub_221BCD748();
    OUTLINED_FUNCTION_0_51();
    swift_getWitnessTable();
    return sub_221BCD9D8();
  }

  return result;
}

id Set<>.lnValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v4 = sub_221BCD9C8();
  WitnessTable = swift_getWitnessTable();
  return sub_221B846A4(&v7, 0, v4, WitnessTable, a3);
}

uint64_t sub_221B84CD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84D24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84D94@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = *(a3 - 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  result = static Set<>.from(_:context:)(a1);
  *a4 = result;
  return result;
}

uint64_t sub_221B84DC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84E18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B84E7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_221B84424(v1[4], a1);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dynamic_cast_existential_1_class_conditional(uint64_t a1)
{
  if (!swift_isClassType())
  {
    return 0;
  }

  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  return 0;
}

unint64_t sub_221B84FB4()
{
  result = qword_27CFBBEF8[0];
  if (!qword_27CFBBEF8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8008, &qword_221BD28C0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFBBEF8);
  }

  return result;
}

void sub_221B85018(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_221B7B468(319, &qword_27CFBBF80, &qword_27CFB8008, &qword_221BD28C0);
    if (v3 <= 0x3F)
    {
      sub_221B7B468(319, &qword_27CFBBF88, &qword_27CFBBF90, qword_221BE6DC8);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_221B850E8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_221B85234(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

id sub_221B85444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = [v2 title];
  if (a2)
  {
    v9 = sub_221BCD358();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 localizedStringForLocaleIdentifier_];

  v11 = sub_221BCD388();
  v13 = v12;

  sub_221BCC418();
  OUTLINED_FUNCTION_0_52();
  v14 = objc_allocWithZone(MEMORY[0x277D23910]);
  v15 = OUTLINED_FUNCTION_1_47(v11, v13);
  v16 = [v3 subtitle];
  if (v16)
  {
    v17 = v16;
    v18 = v15;
    if (a2)
    {
      v19 = v16;
      v20 = a1;
      v21 = sub_221BCD358();
    }

    else
    {
      v20 = a1;
      v23 = v16;
      v21 = 0;
    }

    v24 = [v17 localizedStringForLocaleIdentifier_];

    v25 = sub_221BCD388();
    v27 = v26;

    OUTLINED_FUNCTION_0_52();
    v28 = objc_allocWithZone(MEMORY[0x277D23910]);
    v22 = OUTLINED_FUNCTION_1_47(v25, v27);

    a1 = v20;
    v15 = v18;
  }

  else
  {
    v22 = 0;
  }

  v29 = [v3 image];
  v30 = sub_221B86158(v3);
  if (v30)
  {
    v35 = v30;
    sub_221B85B44(&v35, a1, a2, &v34);

    v31 = v34;
  }

  else
  {
    v31 = 0;
  }

  v32 = objc_allocWithZone(MEMORY[0x277D237D8]);
  return sub_221B860A4(v15, v22, v29, v31);
}

uint64_t sub_221B856C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 title];
  v5 = [v4 key];

  v6 = sub_221BCD388();
  v8 = v7;

  v9 = [v2 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 key];

    v12 = sub_221BCD388();
    v37 = v13;
  }

  else
  {
    v12 = 0;
    v37 = 0;
  }

  v14 = sub_221B86158(v2);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_2219A69A0(v16);
  v38 = v12;
  if (v17)
  {
    v18 = v17;
    result = sub_2219A2FB4(0, v17 & ~(v17 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    v33 = v8;
    v34 = v6;
    v35 = v2;
    v36 = a2;
    v20 = 0;
    v21 = v15;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DA3BF0](v20, v16);
      }

      else
      {
        v22 = *(v16 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 key];
      v25 = sub_221BCD388();
      v27 = v26;

      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2219A2FB4((v28 > 1), v29 + 1, 1);
      }

      ++v20;
      *(v15 + 16) = v29 + 1;
      v30 = v15 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v18 != v20);

    v2 = v35;
    a2 = v36;
    v8 = v33;
    v6 = v34;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v31 = [v2 image];
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v38;
  a2[3] = v37;
  a2[4] = v21;

  if (v31)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v32 = &protocol witness table for LNImage;
  }

  else
  {
    result = 0;
    v32 = 0;
  }

  a2[5] = v31;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = result;
  a2[9] = v32;
  return result;
}

uint64_t sub_221B85944(id a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 displayRepresentation];
    if (v4)
    {
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }

  return a2;
}

uint64_t DisplayRepresentation.init(title:subtitle:synonyms:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  if (a6)
  {
    result = sub_2219A1D20(0, &unk_27CFBB6E0, 0x277D23860);
    v10 = &protocol witness table for LNImage;
  }

  else
  {
    result = 0;
    v10 = 0;
  }

  a7[5] = a6;
  a7[6] = 0;
  a7[7] = 0;
  a7[8] = result;
  a7[9] = v10;
  return result;
}

uint64_t DisplayRepresentation.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DisplayRepresentation.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_221B85AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7B20, &qword_221BD15C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double DisplayRepresentation.init(title:subtitle:synonyms:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  result = 0.0;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0;
  return result;
}

uint64_t sub_221B85B44@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - v11;
  v13 = *a1;
  if (v13 >> 62)
  {
    result = sub_221BCDDA8();
    v14 = result;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
LABEL_14:
    *a4 = v15;
    return result;
  }

  v33 = MEMORY[0x277D84F90];
  result = sub_221BCDF28();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v32 = v14;
    v29 = a4;
    v30 = v4;
    v16 = 0;
    v17 = v13 & 0xC000000000000001;
    v18 = v13;
    do
    {
      if (v17)
      {
        v19 = MEMORY[0x223DA3BF0](v16, v13);
      }

      else
      {
        v19 = *(v13 + 8 * v16 + 32);
      }

      v20 = v19;
      if (a3)
      {
        v21 = sub_221BCD358();
      }

      else
      {
        v21 = 0;
      }

      ++v16;
      v22 = [v20 localizedStringForLocaleIdentifier_];

      v23 = sub_221BCD388();
      v25 = v24;

      v26 = sub_221BCC418();
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v26);
      v27 = objc_allocWithZone(MEMORY[0x277D23910]);
      sub_221B85FA0(v23, v25, 0, 0, v12);

      sub_221BCDEF8();
      v28 = *(v33 + 16);
      sub_221BCDF38();
      sub_221BCDF48();
      result = sub_221BCDF08();
      v13 = v18;
    }

    while (v32 != v16);
    v15 = v33;
    a4 = v29;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id LNImage.renderingMode.getter()
{
  v1 = [v0 inImage];
  v2 = [v1 _renderingMode];

  return v2;
}

id sub_221B85DD4()
{
  v1 = [v0 inImage];

  return v1;
}

id sub_221B85F04@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  result = [a1 displayRepresentation];
  if (result)
  {
    v8 = result;
    v9 = sub_221B85444(a2, a3);

    return sub_221B856C8(v9, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_221B85FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = sub_221BCD358();

  if (a4)
  {
    v10 = sub_221BCD358();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_221BCC418();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v11) != 1)
  {
    v12 = sub_221BCC388();
    (*(*(v11 - 8) + 8))(a5, v11);
  }

  v13 = [v6 initWithKey:v9 table:v10 bundleURL:v12];

  return v13;
}

id sub_221B860A4(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (a4)
  {
    sub_2219A1D20(0, &qword_27CFB7DE0, 0x277D23910);
    v9 = sub_221BCD658();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:a1 subtitle:a2 image:a3 synonyms:v9];

  return v10;
}

uint64_t sub_221B86158(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2219A1D20(0, &qword_27CFB7DE0, 0x277D23910);
  v3 = sub_221BCD668();

  return v3;
}

uint64_t sub_221B861D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_221B86218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_52()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

id OUTLINED_FUNCTION_1_47(uint64_t a1, uint64_t a2)
{

  return sub_221B85FA0(a1, a2, 0, 0, v2);
}

id static Calendar.RecurrenceRule.lnValueType.getter()
{
  v0 = [objc_opt_self() recurrenceRuleType];

  return v0;
}

void static Calendar.RecurrenceRule.from(_:context:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221BCDC08();
  if (swift_dynamicCast())
  {
    sub_221BCDBE8();
  }

  else
  {
    v4 = sub_221BCC598();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

id Calendar.RecurrenceRule.lnValue.getter()
{
  v1 = sub_221BCC598();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221BCDC08();
  (*(v2 + 16))(v5, v0, v1);
  v7 = sub_221BCDBF8();
  v11[3] = v6;
  v11[0] = v7;
  v8 = [objc_opt_self() recurrenceRuleType];
  v9 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v11, v8);
}

uint64_t sub_221B864E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  a3[3] = &type metadata for AnyTransferableData;
  a3[4] = &off_28351AF48;
  v6 = swift_allocObject();
  *a3 = v6;
  v6[5] = a1;
  v6[6] = a2;
  __swift_allocate_boxed_opaque_existential_1(v6 + 2);
  OUTLINED_FUNCTION_0_6(a1);
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_182();

  return v9();
}

id sub_221B86580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_221BCC388();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_221BCD358();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_221BCD358();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  v12 = sub_221BCC418();
  OUTLINED_FUNCTION_2_1(v12);
  (*(v13 + 8))(a1);
  return v11;
}

id sub_221B86688(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_221BCC448();
  v10 = sub_221BCD358();

  if (a6)
  {
    v11 = sub_221BCD358();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() fileWithData:v9 filename:v10 typeIdentifier:v11];

  sub_2219EC040(a1, a2);
  return v12;
}

uint64_t sub_221B86764()
{
  v0 = sub_221B8AE88();
  if (!v0)
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_6;
  }

  sub_221B9C308(*MEMORY[0x277CCA1C0], v0, &v3);

  if (!*(&v4 + 1))
  {
LABEL_6:
    sub_2219A1CC8(&v3, &qword_27CFB7FF8, &qword_221BE6A00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  return 0;
}

void sub_221B86810()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  OUTLINED_FUNCTION_45_10();
  v3 = sub_221BCC948();
  v4 = OUTLINED_FUNCTION_8_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  v7 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  if ([v2 _isFileURLBased] & 1) != 0 || (v14 = objc_msgSend(v2, sel_data), v15 = sub_221BCC468(), v17 = v16, v14, LOBYTE(v14) = sub_221AE9494(v15, v17), sub_2219EC040(v15, v17), (v14))
  {
    type metadata accessor for RemoteFileDescriptor(0);
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    v23 = [v2 data];
    sub_221BCC468();

    sub_221BCC938();
    OUTLINED_FUNCTION_19_14();
    sub_221B8B6F0(v24, v25);
    sub_221BCCB28();
    sub_221B16900(v13, v0);
    v26 = type metadata accessor for RemoteFileDescriptor(0);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v26);
    OUTLINED_FUNCTION_22();
  }
}

uint64_t IntentFileRepresentation.filename.getter()
{
  OUTLINED_FUNCTION_41_6();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_9_23();
  return v3(v2);
}

uint64_t IntentFileRepresentation.fileSize.getter()
{
  OUTLINED_FUNCTION_41_6();
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_9_23();
  return v3(v2);
}

uint64_t IntentFileRepresentation.fileURL.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_1_0();
  return v4(v3);
}

uint64_t IntentFileRepresentation.type.getter()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);
  v2 = *(v1 + 32);
  v3 = OUTLINED_FUNCTION_1_0();
  return v4(v3);
}

uint64_t sub_221B86B7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  v3 = *(v2 + 40);
  OUTLINED_FUNCTION_11_19();
  v11 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_6_23(v7);

  return v9(v8);
}

void IntentFileRepresentation.dataStream()(uint64_t (**a1)()@<X8>)
{
  sub_221B86D54(v1, &v15);
  OUTLINED_FUNCTION_49();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_47_7(v3, v4, v5, v6, v7, v8, v9, v10, v14, v11, v15);
  *(v12 + 48) = v13;
  *(v12 + 56) = 0x100000;
  *a1 = sub_221B834D0;
  a1[1] = v12;
}

void IntentFileRepresentation.dataStream(configuration:)(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  sub_221B86D54(v2, &v17);
  OUTLINED_FUNCTION_49();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_47_7(v5, v6, v7, v8, v9, v10, v11, v12, v16, v13, v17);
  *(v14 + 48) = v15;
  *(v14 + 56) = v4;
  *a2 = sub_221B8B8D8;
  a2[1] = v14;
}

void IntentFileRepresentation.init(data:filename:type:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31_12();
  v17 = OUTLINED_FUNCTION_0_0();
  sub_2219BAF0C(v17, v18, &qword_27CFB7D60, &qword_221BD1870);
  v19 = sub_221BCCC98();
  v20 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v20, v21, v19);
  if (v22)
  {
    sub_2219A1CC8(v0, &qword_27CFB7D60, &qword_221BD1870);
    v23 = 0;
    v25 = 0;
  }

  else
  {
    v23 = sub_221BCCC88();
    v25 = v24;
    OUTLINED_FUNCTION_0_6(v19);
    (*(v26 + 8))(v0, v19);
  }

  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  sub_2219EBFC8(v10, v8);
  v27 = sub_221B86688(v10, v8, v6, v4, v23, v25);
  v12[3] = &type metadata for LocalFileRepresentation;
  v12[4] = &off_28351B7F0;
  sub_2219EC040(v10, v8);
  *v12 = v27;
  sub_2219A1CC8(v2, &qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_22();
}

void IntentFileRepresentation.init(fileURL:filename:type:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v36 = v3;
  v37 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31_12();
  v13 = sub_221BCC418();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v21 = v20 - v19;
  v22 = *(v16 + 16);
  v23 = OUTLINED_FUNCTION_40_10();
  v24(v23);
  v25 = OUTLINED_FUNCTION_65_2();
  sub_2219BAF0C(v25, v26, &qword_27CFB7D60, &qword_221BD1870);
  v27 = sub_221BCCC98();
  v28 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v28, v29, v27);
  if (v30)
  {
    sub_2219A1CC8(v0, &qword_27CFB7D60, &qword_221BD1870);
    v31 = 0;
    v33 = 0;
  }

  else
  {
    v31 = sub_221BCCC88();
    v33 = v32;
    OUTLINED_FUNCTION_0_6(v27);
    (*(v34 + 8))(v0, v27);
  }

  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v35 = sub_221B86580(v21, v36, v37, v31, v33);
  v8[3] = &type metadata for LocalFileRepresentation;
  v8[4] = &off_28351B7F0;
  *v8 = v35;
  sub_2219A1CC8(v2, &qword_27CFB7D60, &qword_221BD1870);
  (*(v16 + 8))(v6, v13);
  OUTLINED_FUNCTION_22();
}

void IntentFileRepresentation.init(fileURL:filename:contentTypeIdentifer:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_221BCC418();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v20 = v19 - v18;
  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v21 = *(v15 + 16);
  v22 = OUTLINED_FUNCTION_40_10();
  v23(v22);
  v24 = sub_221B86580(v20, v7, v5, v3, v1);
  v11[3] = &type metadata for LocalFileRepresentation;
  v11[4] = &off_28351B7F0;
  *v11 = v24;
  (*(v15 + 8))(v9, v12);
  OUTLINED_FUNCTION_22();
}

uint64_t IntentFileRepresentation.lnValue.getter()
{
  OUTLINED_FUNCTION_41_6();
  v1 = *(v0 + 56);
  v2 = OUTLINED_FUNCTION_9_23();
  return v3(v2);
}

id static IntentFileRepresentation.lnValueType.getter()
{
  v0 = [objc_opt_self() fileValueType];

  return v0;
}

uint64_t static IntentFileRepresentation.canConvert(_:)(id a1)
{
  if (a1 && (v2 = [a1 valueType]) != 0)
  {
    v3 = v2;
    v4 = static IntentFileRepresentation.canConvertFrom(_:)(v2);
  }

  else
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v5 = sub_221BCCD88();
    __swift_project_value_buffer(v5, qword_27CFDEDF8);
    v6 = a1;
    v3 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v3, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v6;
      *v9 = a1;
      v10 = v6;
      _os_log_impl(&dword_221989000, v3, v7, "Could not get valueType for: %@", v8, 0xCu);
      sub_2219A1CC8(v9, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t static IntentFileRepresentation.canConvertFrom(_:)(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v2 = [objc_opt_self() fileValueType];
  OUTLINED_FUNCTION_1_0();
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000018, 0x8000000221BE7000, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A1CC8(v9, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v10);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v3 & 1;
}

void static IntentFileRepresentation.from(_:context:)()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_45_10();
  v6 = type metadata accessor for RemoteFileRepresentation(v5);
  v7 = OUTLINED_FUNCTION_2_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBEC8, &unk_221BE7040);
  OUTLINED_FUNCTION_8_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v18 = v47 - v17;
  v19 = type metadata accessor for RemoteFileDescriptor(0);
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v25 = v24 - v23;
  [v4 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  if (!swift_dynamicCast())
  {
    goto LABEL_22;
  }

  v26 = v48[0];
  sub_221B86810();
  OUTLINED_FUNCTION_49_4(v18, 1, v19);
  if (v27)
  {
    sub_2219A1CC8(v18, &qword_27CFBBEC8, &unk_221BE7040);
    *(v0 + 24) = &type metadata for LocalFileRepresentation;
    *(v0 + 32) = &off_28351B7F0;
    *v0 = v26;
  }

  else
  {
    sub_221B8B164(v18, v25);
    sub_221A0149C(v2, &v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7658, &unk_221BD0810);
    if (swift_dynamicCast())
    {
      sub_22199C218(v48, v53);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v47[0] = Strong, v47[1] = v53[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7788, &qword_221BE7070), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v51 + 1))
        {
          sub_2219A1D64(&v50, v48);
          OUTLINED_FUNCTION_17_15();
          sub_221B8B604(v25, v12);
          sub_221A0149C(v48, v12 + *(v6 + 20));
          *(v0 + 24) = v6;
          *(v0 + 32) = &off_28351B7B0;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
          sub_221B8B164(v12, boxed_opaque_existential_1);

          __swift_destroy_boxed_opaque_existential_0(v48);
          sub_22199C274(v53);
          OUTLINED_FUNCTION_1_48();
          sub_221B8B67C(v25, v31);
          goto LABEL_23;
        }
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
      }

      sub_2219A1CC8(&v50, &qword_27CFB7778, &qword_221BD0CD8);
      if (qword_27CFB7388 != -1)
      {
        OUTLINED_FUNCTION_4_10();
      }

      v37 = sub_221BCCD88();
      __swift_project_value_buffer(v37, qword_27CFDEDF8);
      sub_2219EB180(v53, v48);
      v38 = sub_221BCCD68();
      v39 = sub_221BCDA78();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v47[0] = v41;
        *v40 = 136315138;
        *&v50 = swift_unknownObjectWeakLoadStrong();
        *(&v50 + 1) = *(&v49 + 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBF98, &unk_221BE7060);
        v42 = sub_221BCD3D8();
        v44 = v43;
        sub_22199C274(v48);
        v45 = sub_2219A6360(v42, v44, v47);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_221989000, v38, v39, "Could not extract dispatcher from conversion context, got: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_23();
      }

      else
      {

        sub_22199C274(v48);
      }

      sub_22199C274(v53);
      OUTLINED_FUNCTION_1_48();
      sub_221B8B67C(v25, v46);
LABEL_22:
      *(v0 + 32) = 0;
      *v0 = 0u;
      *(v0 + 16) = 0u;
      goto LABEL_23;
    }

    v49 = 0u;
    memset(v48, 0, sizeof(v48));
    sub_2219A1CC8(v48, &qword_27CFB7660, &unk_221BE7050);
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v32 = sub_221BCCD88();
    __swift_project_value_buffer(v32, qword_27CFDEDF8);
    v33 = sub_221BCCD68();
    v34 = sub_221BCDA78();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_221989000, v33, v34, "Unexpected conversion context type", v35, 2u);
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_1_48();
    sub_221B8B67C(v25, v36);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_22();
}

void static IntentFileRepresentation.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v146 = sub_221BCCC98();
  v4 = OUTLINED_FUNCTION_0_2(v146);
  v140 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v138 = v9 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFA0, &qword_221BE7078);
  OUTLINED_FUNCTION_2_1(v142);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v145 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v15 = OUTLINED_FUNCTION_8_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_5();
  v139 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v137 - v21;
  MEMORY[0x28223BE20](v22);
  v144 = &v137 - v23;
  v150 = sub_221BCC418();
  v24 = OUTLINED_FUNCTION_0_2(v150);
  v147 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4_0();
  v141 = v29 - v28;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFA8, &unk_221BE7080);
  OUTLINED_FUNCTION_2_1(v149);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  v34 = &v137 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v36 = OUTLINED_FUNCTION_8_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_5();
  v148 = v39 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v137 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v137 - v45;
  v47 = *(v3 + 24);
  v48 = *(v3 + 32);
  v49 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v49, v50);
  v51 = (*(v48 + 8))(v47, v48);
  v53 = v52;
  v55 = v1[3];
  v54 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v55);
  v57 = v51 == (*(v54 + 8))(v55, v54) && v53 == v56;
  if (v57)
  {
  }

  else
  {
    v58 = sub_221BCE1B8();

    if ((v58 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v59 = *(v3 + 24);
  v60 = *(v3 + 32);
  v61 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v61, v62);
  v63 = *(v60 + 16);
  v64 = OUTLINED_FUNCTION_9_23();
  v66 = v65(v64);
  LOBYTE(v60) = v67;
  v68 = v1[3];
  v69 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v68);
  v70 = (*(v69 + 16))(v68, v69);
  if (v60)
  {
    v71 = v150;
  }

  else
  {
    v71 = v150;
    if (v66 != v70)
    {
      goto LABEL_31;
    }
  }

  v72 = *(v3 + 24);
  v73 = *(v3 + 32);
  v74 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v74, v75);
  v76 = *(v73 + 24);
  v77 = OUTLINED_FUNCTION_9_23();
  v78(v77);
  v79 = v1[3];
  v80 = v1[4];
  v81 = OUTLINED_FUNCTION_40_10();
  __swift_project_boxed_opaque_existential_0(v81, v82);
  v83 = *(v80 + 24);
  v84 = OUTLINED_FUNCTION_9_23();
  v85(v84);
  v86 = *(v149 + 48);
  OUTLINED_FUNCTION_58_10(v46, v34);
  OUTLINED_FUNCTION_58_10(v43, &v34[v86]);
  OUTLINED_FUNCTION_49_4(v34, 1, v71);
  if (!v57)
  {
    v87 = v148;
    sub_2219BAF0C(v34, v148, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_49_4(&v34[v86], 1, v71);
    if (!v88)
    {
      v92 = v147;
      v93 = &v34[v86];
      v94 = v141;
      (*(v147 + 32))(v141, v93, v71);
      OUTLINED_FUNCTION_20_14();
      sub_221B8B6F0(v95, v96);
      OUTLINED_FUNCTION_16();
      LODWORD(v150) = sub_221BCD338();
      v97 = *(v92 + 8);
      v97(v94, v71);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v98, v99, v100);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v101, v102, v103);
      v97(v148, v71);
      OUTLINED_FUNCTION_182();
      sub_2219A1CC8(v104, v105, v106);
      if ((v150 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

    sub_2219A1CC8(v43, &qword_27CFB7DD0, &unk_221BD19F0);
    OUTLINED_FUNCTION_35_10();
    (*(v147 + 8))(v87, v71);
LABEL_19:
    v89 = &qword_27CFBBFA8;
    v90 = &unk_221BE7080;
    v91 = v34;
LABEL_30:
    sub_2219A1CC8(v91, v89, v90);
    goto LABEL_31;
  }

  sub_2219A1CC8(v43, &qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_49_4(&v34[v86], 1, v71);
  if (!v57)
  {
    goto LABEL_19;
  }

  sub_2219A1CC8(v34, &qword_27CFB7DD0, &unk_221BD19F0);
LABEL_21:
  v107 = *(v3 + 24);
  v108 = *(v3 + 32);
  v109 = OUTLINED_FUNCTION_30_11();
  __swift_project_boxed_opaque_existential_0(v109, v110);
  v111 = *(v108 + 32);
  v112 = v144;
  v113 = OUTLINED_FUNCTION_9_23();
  v114(v113);
  v115 = v1[3];
  v116 = v1[4];
  v117 = OUTLINED_FUNCTION_40_10();
  __swift_project_boxed_opaque_existential_0(v117, v118);
  v119 = *(v116 + 32);
  v120 = v143;
  v121 = OUTLINED_FUNCTION_9_23();
  v122(v121);
  v123 = *(v142 + 48);
  v124 = v145;
  OUTLINED_FUNCTION_58_10(v112, v145);
  OUTLINED_FUNCTION_58_10(v120, v124 + v123);
  v125 = v146;
  OUTLINED_FUNCTION_49_4(v124, 1, v146);
  if (!v57)
  {
    v128 = v139;
    sub_2219BAF0C(v124, v139, &qword_27CFB7D60, &qword_221BD1870);
    OUTLINED_FUNCTION_49_4(v124 + v123, 1, v125);
    if (!v129)
    {
      v132 = v140;
      v133 = v138;
      (*(v140 + 32))(v138, v124 + v123, v125);
      sub_221B8B6F0(&qword_27CFBBFB0, MEMORY[0x277D85578]);
      OUTLINED_FUNCTION_40_10();
      sub_221BCD338();
      v134 = *(v132 + 8);
      v134(v133, v125);
      sub_2219A1CC8(v120, &qword_27CFB7D60, &qword_221BD1870);
      v135 = OUTLINED_FUNCTION_30_11();
      sub_2219A1CC8(v135, v136, &qword_221BD1870);
      v134(v128, v125);
      sub_2219A1CC8(v124, &qword_27CFB7D60, &qword_221BD1870);
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_35_10();
    v130 = OUTLINED_FUNCTION_30_11();
    sub_2219A1CC8(v130, v131, &qword_221BD1870);
    (*(v140 + 8))(v128, v125);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_35_10();
  v126 = OUTLINED_FUNCTION_30_11();
  sub_2219A1CC8(v126, v127, &qword_221BD1870);
  OUTLINED_FUNCTION_49_4(v124 + v123, 1, v125);
  if (!v57)
  {
LABEL_29:
    v89 = &qword_27CFBBFA0;
    v90 = &qword_221BE7078;
    v91 = v124;
    goto LABEL_30;
  }

  sub_2219A1CC8(v124, &qword_27CFB7D60, &qword_221BD1870);
LABEL_31:
  OUTLINED_FUNCTION_22();
}

uint64_t IntentFileRepresentation.description.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_2_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  OUTLINED_FUNCTION_2_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000023, 0x8000000221BF1530);
  OUTLINED_FUNCTION_46_7();
  v10 = v1[1];
  v11 = OUTLINED_FUNCTION_38_8();
  v13 = v12(v11);
  MEMORY[0x223DA31F0](v13);

  MEMORY[0x223DA31F0](0x7A6953656C696620, 0xEB00000000203A65);
  OUTLINED_FUNCTION_46_7();
  v14 = v1[2];
  v15 = OUTLINED_FUNCTION_38_8();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBFC0, &qword_221BE7090);
  v17 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v17);

  MEMORY[0x223DA31F0](0x4C5255656C696620, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_46_7();
  v18 = v1[3];
  v19 = OUTLINED_FUNCTION_38_8();
  v20(v19);
  v21 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v21);

  MEMORY[0x223DA31F0](0xD000000000000018, 0x8000000221BF1560);
  v22 = v0[3];
  v23 = v0[4];
  __swift_project_boxed_opaque_existential_0(v0, v22);
  (*(v23 + 32))(v22, v23);
  v24 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v24);

  MEMORY[0x223DA31F0](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_221B886B4()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_7_20();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_6_23(v6);

  return v8(v7);
}

uint64_t sub_221B887B0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_49();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  OUTLINED_FUNCTION_114_1();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_118_0();
  }

  return v7(v6);
}

uint64_t sub_221B888A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221B88930;

  return IntentDataStream.Iterator.next()();
}

uint64_t sub_221B88930()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_0_49();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v3;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;

  if (!v1)
  {
    v11 = *(v5 + 16);
    *v11 = v2;
    v11[1] = v0;
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_221B88A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_221B88AFC;

  return (sub_221B88C08)(a1, a2, a3);
}

uint64_t sub_221B88AFC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_221B88C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_221B88C2C, 0, 0);
}

uint64_t sub_221B88C2C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 48);
  v2 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  OUTLINED_FUNCTION_7_20();
  v10 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_6_23(v6);

  return v8(v7);
}

uint64_t sub_221B88D28()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_21_0();
  v7 = v6;
  OUTLINED_FUNCTION_9_0();
  *v8 = v7;
  v10 = *(v9 + 56);
  v11 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v12 = v11;
  v7[8] = v0;

  if (v0)
  {
    if (v7[4])
    {
      v13 = v7[5];
      v14 = v7[4];
      swift_getObjectType();
      v15 = sub_221BCD778();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    return MEMORY[0x2822009F8](sub_221B88E90, v15, v17);
  }

  else
  {
    v18 = v7[3];
    *v18 = v5;
    v18[1] = v3;
    v19 = *(v11 + 8);

    return v19();
  }
}

uint64_t sub_221B88E90()
{
  OUTLINED_FUNCTION_1_5();
  v0[2] = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  swift_willThrowTypedImpl();
  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t IntentDataStream.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_221B88F44()
{
  IntentDataStream.makeAsyncIterator()();
  v1 = *(v0 + 8);
}

uint64_t sub_221B88F78(void *a1)
{
  v1 = [a1 filename];
  sub_221BCD388();

  return OUTLINED_FUNCTION_16();
}

uint64_t sub_221B88FC8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  if ([a1 _isFileURLBased])
  {
    v13 = [a1 fileURL];
    if (v13)
    {
      v14 = v13;
      sub_221BCC3B8();

      v15 = sub_221BCC418();
      v16 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [a1 data];
    v12 = sub_221BCC468();

    v18 = OUTLINED_FUNCTION_16();
    v8 = MEMORY[0x223DA21D0](v18);
    v19 = OUTLINED_FUNCTION_16();
    sub_2219EC040(v19, v20);
    if ((v8 & 0x8000000000000000) == 0)
    {
      return v8;
    }

    __break(1u);
  }

  v15 = sub_221BCC418();
  v16 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v8, v16, 1, v15);
  v21 = OUTLINED_FUNCTION_0_0();
  sub_221A0FAB8(v21, v22);
  sub_221BCC418();
  v23 = OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_49_4(v23, v24, v15);
  if (v25)
  {
    sub_2219A1CC8(v12, &qword_27CFB7DD0, &unk_221BD19F0);
    return 0;
  }

  else
  {
    v8 = sub_221B86764();
    OUTLINED_FUNCTION_0_6(v15);
    v27 = *(v26 + 8);
    v28 = OUTLINED_FUNCTION_16();
    v29(v28);
  }

  return v8;
}

uint64_t sub_221B8918C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fileURL];
  if (v3)
  {
    v4 = v3;
    sub_221BCC3B8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_221BCC418();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

uint64_t sub_221B89208(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31_12();
  sub_221B8B5A4(a1);
  if (v7)
  {
    sub_221BCCCA8();
    v8 = sub_221BCCC98();
    v9 = OUTLINED_FUNCTION_9_1();
    if (!__swift_getEnumTagSinglePayload(v9, v10, v8))
    {
      OUTLINED_FUNCTION_0_6(v8);
      v16 = *(v15 + 32);
      v17 = OUTLINED_FUNCTION_0_0();
      v18(v17);
      v11 = OUTLINED_FUNCTION_49_9();
      return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    }

    sub_2219A1CC8(v1, &qword_27CFB7D60, &qword_221BD1870);
  }

  sub_221BCCC98();
  v11 = OUTLINED_FUNCTION_13_18();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_221B89318()
{
  OUTLINED_FUNCTION_8_0();
  v1 = [*(v0 + 16) data];
  sub_221BCC468();

  OUTLINED_FUNCTION_114_1();
  v2 = OUTLINED_FUNCTION_4();

  return v3(v2);
}

void *sub_221B893A4@<X0>(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 data];
  v6 = sub_221BCC468();
  v8 = v7;

  a3[3] = &type metadata for LocalFileRepresentation.DataStream;
  a3[4] = &off_28351B950;
  result = swift_allocObject();
  *a3 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = 0;
  return result;
}

id sub_221B8943C(void *a1)
{
  v7[3] = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 fileValueType];
  v5 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v7, v4);
}

uint64_t sub_221B89508()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B8B8E0;

  return sub_221B89304(v2);
}

unint64_t sub_221B895C0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 16);
  v3 = *v1;
  result = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = 0xF000000000000000;
  v7 = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      LODWORD(v8) = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_25;
      }

      v8 = v8;
      goto LABEL_6;
    case 2uLL:
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (!v11)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    case 3uLL:
      goto LABEL_19;
    default:
      v8 = BYTE6(v4);
LABEL_6:
      v12 = v8 < 1 || v5 >= v8;
      if (v12)
      {
        v7 = 0;
        v6 = 0xF000000000000000;
LABEL_19:
        v16 = *(v0 + 8);

        return v16(v7, v6);
      }

      result = MEMORY[0x223DA21D0](result);
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_23;
      }

      v12 = __CFADD__(v5, v3);
      v13 = v5 + v3;
      if (v12)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 >= result)
      {
        v14 = result;
      }

      else
      {
        v14 = v13;
      }

      if (v14 >= v5)
      {
        v7 = sub_221B896EC(v5, v14, v1[1], v1[2]);
        v6 = v15;
        v1[3] = v13;
        goto LABEL_19;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
  }
}

uint64_t sub_221B896EC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      if ((a3 & 0x80000000) != 0)
      {
        goto LABEL_17;
      }

      v4 = a3;
      v5 = a3 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a3 + 16);
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v5 = *(a3 + 24);
LABEL_6:
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v5 < v4)
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_8:
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (a2 >= a1)
      {
        return MEMORY[0x28211D2B0]();
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return MEMORY[0x28211D2B0]();
    default:
      goto LABEL_8;
  }
}

uint64_t sub_221B89768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B897F4;

  return sub_221B895AC();
}

uint64_t sub_221B897F4()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_0_49();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  OUTLINED_FUNCTION_114_1();
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_118_0();
  }

  return v7(v6);
}

void sub_221B898E4()
{
  OUTLINED_FUNCTION_21();
  v1 = sub_221BCC418();
  v2 = OUTLINED_FUNCTION_0_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v7 = type metadata accessor for RemoteFileDescriptor.Content(0);
  v8 = OUTLINED_FUNCTION_2_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v0, v0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v0;
    sub_221BCDE68();

    v12 = type metadata accessor for RemoteFileDescriptor(0);
    MEMORY[0x223DA31F0](*(v0 + *(v12 + 20)), *(v0 + *(v12 + 20) + 8));
    MEMORY[0x223DA31F0](0x223D726F72726520, 0xE800000000000000);
    v13 = [v11 localizedDescription];
    sub_221BCD388();

    v14 = OUTLINED_FUNCTION_1_0();
    MEMORY[0x223DA31F0](v14);

    MEMORY[0x223DA31F0](15906, 0xE200000000000000);

LABEL_13:
    OUTLINED_FUNCTION_22();
    return;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
  v16 = v0 + *(v15 + 48);
  v40 = *v16;
  v17 = v16[8];
  OUTLINED_FUNCTION_56_10(v15);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v4 + 32);
  v22 = OUTLINED_FUNCTION_65_2();
  v23(v22);
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BF15B0);
  v24 = type metadata accessor for RemoteFileDescriptor(0);
  MEMORY[0x223DA31F0](*(v0 + *(v24 + 20)), *(v0 + *(v24 + 20) + 8));
  MEMORY[0x223DA31F0](0x3D6C727520, 0xE500000000000000);
  OUTLINED_FUNCTION_20_14();
  sub_221B8B6F0(v25, v26);
  v27 = sub_221BCE168();
  MEMORY[0x223DA31F0](v27);

  MEMORY[0x223DA31F0](0x3D657A697320, 0xE600000000000000);
  v28 = 7104878;
  v29 = 0xE300000000000000;
  if (v17)
  {
LABEL_6:
    MEMORY[0x223DA31F0](v28, v29);

    MEMORY[0x223DA31F0](0x3D657079742029, 0xE700000000000000);
    if (v20)
    {
      v35 = v19;
    }

    else
    {
      v35 = 7104878;
    }

    if (v20)
    {
      v36 = v20;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    MEMORY[0x223DA31F0](v35, v36);

    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    v37 = *(v4 + 8);
    v38 = OUTLINED_FUNCTION_118_0();
    v39(v38);
    goto LABEL_13;
  }

  v30 = v19;
  v31 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  if ((v40 & 0x8000000000000000) == 0)
  {
    v32 = v31;
    v33 = [v31 stringFromByteCount_];

    v28 = sub_221BCD388();
    v29 = v34;

    v19 = v30;
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_221B89CA0()
{
  v0 = type metadata accessor for RemoteFileDescriptor(0);
  v1 = OUTLINED_FUNCTION_8_1(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  v4 = type metadata accessor for AppIntentsProtobuf_FileDescriptor(0);
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_19_14();
  sub_221B8B6F0(v8, v9);
  sub_221BCCB58();
  v11 = sub_221BCCB18();
  OUTLINED_FUNCTION_22_13();
  return v11;
}

uint64_t sub_221B89F38()
{
  v1 = (v0 + *(type metadata accessor for RemoteFileDescriptor(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221B89F74()
{
  v1 = type metadata accessor for RemoteFileDescriptor.Content(0);
  v2 = OUTLINED_FUNCTION_2_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v0, v7);
  OUTLINED_FUNCTION_4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_18_15();
    sub_221B8B67C(v7, v8);
    return 0;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    v11 = v7 + *(v10 + 48);
    v9 = *v11;
    v12 = *(v11 + 8);
    v13 = *(v7 + *(v10 + 64) + 8);

    v14 = sub_221BCC418();
    OUTLINED_FUNCTION_2_1(v14);
    (*(v15 + 8))(v7);
  }

  return v9;
}

uint64_t sub_221B8A07C()
{
  v1 = OUTLINED_FUNCTION_45_10();
  v2 = type metadata accessor for RemoteFileDescriptor.Content(v1);
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  v6 = OUTLINED_FUNCTION_65_2();
  sub_221B8B604(v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221BCC418();
    v8 = OUTLINED_FUNCTION_13_18();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    OUTLINED_FUNCTION_18_15();
    return sub_221B8B67C(v0, v12);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10(v14);
    v16 = *(v15 + 8);

    v17 = sub_221BCC418();
    OUTLINED_FUNCTION_2_1(v17);
    v19 = *(v18 + 32);
    v20 = OUTLINED_FUNCTION_0_0();
    v21(v20);
    v22 = OUTLINED_FUNCTION_49_9();
    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

uint64_t sub_221B8A17C()
{
  v1 = OUTLINED_FUNCTION_45_10();
  v2 = type metadata accessor for RemoteFileDescriptor.Content(v1);
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_31_12();
  OUTLINED_FUNCTION_0_53();
  v6 = OUTLINED_FUNCTION_65_2();
  sub_221B8B604(v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_221B8B67C(v0, type metadata accessor for RemoteFileDescriptor.Content);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10(v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = sub_221BCC418();
    OUTLINED_FUNCTION_2_1(v12);
    (*(v13 + 8))(v0);
    if (v11)
    {
      OUTLINED_FUNCTION_1_0();
      return sub_221BCCCA8();
    }
  }

  sub_221BCCC98();
  v15 = OUTLINED_FUNCTION_13_18();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_221B8A290()
{
  OUTLINED_FUNCTION_1_5();
  v1[9] = v0;
  v2 = type metadata accessor for RemoteFileDescriptor.Content(0);
  v1[10] = v2;
  OUTLINED_FUNCTION_8_1(v2);
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B8A31C, 0, 0);
}

uint64_t sub_221B8A31C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  OUTLINED_FUNCTION_0_53();
  sub_221B8B604(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *(v0 + 88);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = &type metadata for RemoteFileRepresentation.FailedDataStream;
    v8 = *v6;
    *(v0 + 40) = &type metadata for RemoteFileRepresentation.FailedDataStream;
    *(v0 + 48) = &off_28351B940;
    *(v0 + 16) = v8;
  }

  else
  {
    v9 = *(v0 + 72);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0);
    OUTLINED_FUNCTION_56_10(v10);
    v12 = *(v11 + 8);

    v13 = type metadata accessor for RemoteFileRepresentation.DataStream(0);
    *(v0 + 40) = v13;
    *(v0 + 48) = &off_28351B930;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v15 = *(v13 + 24);
    v16 = sub_221BCC418();
    OUTLINED_FUNCTION_2_1(v16);
    (*(v17 + 32))(boxed_opaque_existential_1 + v15, v6);
    v18 = type metadata accessor for RemoteFileRepresentation(0);
    sub_221A0149C(v9 + *(v18 + 20), (boxed_opaque_existential_1 + 1));
    *(boxed_opaque_existential_1 + *(v13 + 28)) = 0;
    *boxed_opaque_existential_1 = 0x100000;
    v7 = *(v0 + 40);
    v19 = *(v0 + 48);
  }

  *(v0 + 56) = xmmword_221BD8630;
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v7);
  OUTLINED_FUNCTION_7_20();
  v27 = v20 + *v20;
  v22 = *(v21 + 4);
  v23 = swift_task_alloc();
  *(v0 + 96) = v23;
  *v23 = v0;
  v24 = OUTLINED_FUNCTION_6_23(v23);

  return v25(v24);
}

uint64_t sub_221B8A524()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 96);
  *v3 = *v1;
  v2[13] = v6;
  v2[14] = v7;
  v2[15] = v0;

  if (v0)
  {
    v8 = sub_221B8A7A4;
  }

  else
  {
    v8 = sub_221B8A630;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221B8A630()
{
  OUTLINED_FUNCTION_14_3();
  if (v0[14] >> 60 == 15)
  {
    v1 = v0[11];
    v2 = v0[7];
    v3 = v0[8];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    OUTLINED_FUNCTION_114_1();
    v4 = OUTLINED_FUNCTION_4();

    return v5(v4);
  }

  else
  {
    v7 = v0[13];
    OUTLINED_FUNCTION_118_0();
    sub_221BCC4A8();
    v8 = OUTLINED_FUNCTION_118_0();
    sub_2219EC02C(v8, v9);
    v10 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    OUTLINED_FUNCTION_7_20();
    v17 = v11 + *v11;
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    v0[12] = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_6_23(v14);

    return v16(v15);
  }
}

uint64_t sub_221B8A7A4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[11];
  sub_2219EC040(v0[7], v0[8]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_221B8A818(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_45_10();
  v5 = type metadata accessor for RemoteFileDescriptor.Content(v4);
  v6 = OUTLINED_FUNCTION_2_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v11 = (v10 - v9);
  v12 = *a1;
  OUTLINED_FUNCTION_0_53();
  v13 = OUTLINED_FUNCTION_16();
  sub_221B8B604(v13, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v16 = *v11;
    v1[3] = &type metadata for RemoteFileRepresentation.FailedDataStream;
    v1[4] = &off_28351B940;
    *v1 = v16;
  }

  else
  {
    v17 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9310, &qword_221BE73E0) + 64) + 8);

    v18 = type metadata accessor for RemoteFileRepresentation.DataStream(0);
    v1[3] = v18;
    v1[4] = &off_28351B930;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    v20 = *(v18 + 24);
    v21 = sub_221BCC418();
    OUTLINED_FUNCTION_2_1(v21);
    (*(v22 + 32))(boxed_opaque_existential_1 + v20, v11);
    v23 = type metadata accessor for RemoteFileRepresentation(0);
    result = sub_221A0149C(v2 + *(v23 + 20), (boxed_opaque_existential_1 + 1));
    *(boxed_opaque_existential_1 + *(v18 + 28)) = 0;
    *boxed_opaque_existential_1 = v12;
  }

  return result;
}

uint64_t sub_221B8A998()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B8B8E0;

  return sub_221B8A290();
}

uint64_t sub_221B8AA3C()
{
  OUTLINED_FUNCTION_14_3();
  v2 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_0(v2 + 1, v2[4]);
  v3 = OUTLINED_FUNCTION_32_5();
  v4 = type metadata accessor for RemoteFileRepresentation.DataStream(v3);
  v6 = *(v4 + 24);
  v5 = *(v4 + 28);
  *(v1 + 104) = v5;
  *(v1 + 72) = *(v2 + v5);
  *(v1 + 80) = *v2;
  v7 = *v0;
  v8 = swift_task_alloc();
  *(v1 + 88) = v8;
  *v8 = v1;
  v8[1] = sub_221B8AB18;

  return sub_221B51588();
}

uint64_t sub_221B8AB18()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v0;
  v8 = v7[11];
  v9 = v7[10];
  v10 = v7[9];
  v11 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v12 = v11;
  *(v3 + 96) = v0;

  v13 = __CFADD__(v10, v9);
  *(v3 + 56) = v13;
  *(v3 + 48) = v10 + v9;
  *(v3 + 108) = v13;
  if (v0)
  {
    v14 = sub_221B8ACA8;
  }

  else
  {
    v14 = sub_221B8AC64;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_221B8AC64()
{
  if (*(v0 + 108))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    *(*(v0 + 64) + *(v0 + 104)) = *(v0 + 48);
    OUTLINED_FUNCTION_114_1();
    return v3();
  }

  return result;
}

uint64_t sub_221B8ACA8()
{
  if (*(v0 + 108))
  {
    __break(1u);
  }

  else
  {
    *(*(v0 + 64) + *(v0 + 104)) = *(v0 + 48);
    v1 = *(v0 + 96);
    return (*(v0 + 8))();
  }

  return result;
}

uint64_t sub_221B8ACDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221B8B8E0;

  return sub_221B8AA28();
}

uint64_t sub_221B8AD7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 16);
  swift_willThrow();
  v5 = *(v0 + 8);
  v2 = v1;
  v3 = *(v0 + 16);

  return v5();
}

uint64_t sub_221B8ADF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B8B8E0;

  return sub_221B8AD68(v2);
}

uint64_t sub_221B8AE88()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  sub_221BCC3E8();
  v1 = sub_221BCD358();

  v18 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v18];

  v3 = v18;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_221B8B6F0(&qword_27CFB7590, type metadata accessor for FileAttributeKey);
    OUTLINED_FUNCTION_4();
    v4 = sub_221BCD298();
    v5 = v3;
  }

  else
  {
    v6 = v18;
    v7 = sub_221BCC338();

    swift_willThrow();
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_2219A1D20(0, &qword_27CFBAF28, 0x277CCA9B8);
    swift_dynamicCast();
    v8 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7890, &qword_221BD0DD8);
    OUTLINED_FUNCTION_49();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_221BD19E0;
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_221BCDE68();

    v18 = 0xD000000000000015;
    v19 = 0x8000000221BF1590;
    v10 = [v8 description];
    v11 = sub_221BCD388();
    v13 = v12;

    MEMORY[0x223DA31F0](v11, v13);

    v14 = v18;
    v15 = v19;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = v14;
    *(v9 + 40) = v15;
    sub_221BCE2E8();

    v4 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_221B8B164(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

unint64_t sub_221B8B1CC()
{
  result = qword_27CFBBFC8;
  if (!qword_27CFBBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBBFC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentDataStreamConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentDataStreamConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_221B8B2F0()
{
  result = type metadata accessor for RemoteFileDescriptor.Content(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_221B8B364()
{
  sub_221B8B3E8();
  if (v0 <= 0x3F)
  {
    sub_2219A1D20(319, &qword_27CFBAF28, 0x277CCA9B8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_221B8B3E8()
{
  if (!qword_27CFBBFF0)
  {
    sub_221BCC418();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBBFC0, &qword_221BE7090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8338, &unk_221BD2DE0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CFBBFF0);
    }
  }
}

unint64_t sub_221B8B4B4()
{
  result = type metadata accessor for RemoteFileDescriptor(319);
  if (v1 <= 0x3F)
  {
    result = sub_221B8B538();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221B8B538()
{
  result = qword_27CFBC008;
  if (!qword_27CFBC008)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFBC008);
  }

  return result;
}

uint64_t sub_221B8B5A4(void *a1)
{
  v1 = [a1 typeIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_221BCD388();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221B8B604(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_32_5();
  v5 = v4(v3);
  OUTLINED_FUNCTION_2_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_221B8B67C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_221B8B6F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_221B8B760()
{
  result = sub_221B8B538();
  if (v1 <= 0x3F)
  {
    result = sub_221BCC418();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_221B8B828(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221B8B874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_20()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return sub_221B8B67C(v0, type metadata accessor for AppIntentsProtobuf_FileDescriptor);
}

uint64_t OUTLINED_FUNCTION_35_10()
{

  return sub_2219A1CC8(v2, v0, v1);
}

void *OUTLINED_FUNCTION_46_7()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_0(v0, v3);
}

__n128 OUTLINED_FUNCTION_47_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11)
{
  result = a10;
  *(a1 + 16) = a10;
  *(a1 + 32) = a11;
  return result;
}

uint64_t OUTLINED_FUNCTION_58_10(uint64_t a1, uint64_t a2)
{

  return sub_2219BAF0C(a1, a2, v2, v3);
}

uint64_t sub_221B8BB18(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v5 = v2(0);
  return (*(v4 + 8))(v5, v5, v1, v3, v4);
}

uint64_t sub_221B8BB80(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v1 = OUTLINED_FUNCTION_4_26();
  return v2(v1);
}

uint64_t static IntentValue.acceptVisitor(_:)(void *a1)
{
  OUTLINED_FUNCTION_7_21(a1);
  v1 = OUTLINED_FUNCTION_4_26();
  return v2(v1);
}

void sub_221B8BC18(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a1)
  {
    v4 = *(a3 + 32);
    v5 = a1;
    v4();
  }

  else
  {

    __swift_storeEnumTagSinglePayload(a4, 1, 1, a2);
  }
}

uint64_t _IntentValueConversionContext.init(origin:dispatcher:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  *(a4 + 40) = 0;
  swift_unknownObjectWeakInit();
  *a4 = v14;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  if (a2 && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7780, &unk_221BD0CE0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC028, &unk_221BE7540), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v16 + 1))
    {
      sub_22198B358(&v15, v18);
      v9 = v19;
      v10 = v20;
      __swift_project_boxed_opaque_existential_0(v18, v19);
      (*(v10 + 8))(v9, v10);
      v12 = v11;
      swift_unknownObjectRelease();
      *(a4 + 40) = v12;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v18);
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
  }

  sub_2219A6860(&v15, &qword_27CFBC020, &unk_221BE7530);
  *(a4 + 40) = a3;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void *sub_221B8BF48(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v3 = result;
    v4 = [v3 valueType];
    LOBYTE(a2) = a2();

    return (a2 & 1);
  }

  return result;
}

uint64_t sub_221B8BFB0(void *a1, uint64_t *a2, SEL *a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = [v9 valueType];
    v11 = sub_221B8C59C(v10, a2, a3, a4, a5);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_221B8C03C(void *a1, void (*a2)(void), uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = [v7 valueType];
    v9 = sub_221B8C744(v8, a2, a3, a4);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *static IntentValueTypeIdentifiable.canConvert(_:)(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = [v4 valueType];
    v6 = (*(*(a3 + 8) + 16))();

    return (v6 & 1);
  }

  return result;
}

uint64_t sub_221B8C198(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v2 = [objc_opt_self() attributedStringValueType];
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000010, 0x8000000221BF15D0, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A6860(v9, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }
  }

  return v3 & 1;
}

uint64_t sub_221B8C398(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  sub_2219A1D20(0, &qword_27CFBBED0, 0x277D237A8);
  v2 = sub_221BCDB88();
  v3 = sub_221BCDC58();

  if ((v3 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v4 = sub_221BCCD88();
    __swift_project_value_buffer(v4, qword_27CFDEDF8);
    v5 = a1;
    v6 = sub_221BCCD68();
    v7 = sub_221BCDA78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2080;
      v11 = v5;
      *(v8 + 14) = sub_2219A6360(0xD000000000000014, 0x8000000221BF15F0, &v13);
      _os_log_impl(&dword_221989000, v6, v7, "Cannot convert from %@ to %s", v8, 0x16u);
      sub_2219A6860(v9, &unk_27CFB7630, qword_221BD0790);
      MEMORY[0x223DA4C00](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223DA4C00](v10, -1, -1);
      MEMORY[0x223DA4C00](v8, -1, -1);
    }
  }

  return v3 & 1;
}

uint64_t sub_221B8C59C(void *a1, uint64_t *a2, SEL *a3, uint64_t a4, unint64_t a5)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v11 = *a2;
  v12 = [objc_opt_self() *a3];
  v13 = OUTLINED_FUNCTION_19_15();

  if ((v13 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v14 = sub_221BCCD88();
    __swift_project_value_buffer(v14, qword_27CFDEDF8);
    v15 = a1;
    v16 = sub_221BCCD68();
    v17 = sub_221BCDA78();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24 = v20;
      OUTLINED_FUNCTION_11_20(5.778e-34);
      *(v18 + 14) = sub_2219A6360(a4, a5, &v24);
      OUTLINED_FUNCTION_18_16(&dword_221989000, v21, v22, "Cannot convert from %@ to %s");
      sub_2219A6860(v19, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v13 & 1;
}

uint64_t sub_221B8C744(void *a1, void (*a2)(void), uint64_t a3, unint64_t a4)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  sub_2219A1D20(0, &qword_27CFBBED0, 0x277D237A8);
  a2();
  v9 = OUTLINED_FUNCTION_19_15();

  if ((v9 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v10 = sub_221BCCD88();
    __swift_project_value_buffer(v10, qword_27CFDEDF8);
    v11 = a1;
    v12 = sub_221BCCD68();
    v13 = sub_221BCDA78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      OUTLINED_FUNCTION_11_20(5.778e-34);
      *(v14 + 14) = sub_2219A6360(a3, a4, &v20);
      OUTLINED_FUNCTION_18_16(&dword_221989000, v17, v18, "Cannot convert from %@ to %s");
      sub_2219A6860(v15, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v9 & 1;
}

uint64_t static IntentValueTypeIdentifiable.canConvertFrom(_:)(void *a1)
{
  sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
  v2 = OUTLINED_FUNCTION_10_19();
  v4 = v3(v2);
  v5 = sub_221BCDC58();

  if ((v5 & 1) == 0)
  {
    if (qword_27CFB7388 != -1)
    {
      OUTLINED_FUNCTION_4_10();
    }

    v6 = sub_221BCCD88();
    __swift_project_value_buffer(v6, qword_27CFDEDF8);
    v7 = a1;
    v8 = sub_221BCCD68();
    v9 = sub_221BCDA78();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v7;
      *(v10 + 12) = 2080;
      v13 = v7;
      v14 = sub_221BCE478();
      v16 = sub_2219A6360(v14, v15, &v18);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_221989000, v8, v9, "Cannot convert from %@ to %s", v10, 0x16u);
      sub_2219A6860(v11, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_23();
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_23();
    }
  }

  return v5 & 1;
}

uint64_t _IntentValueConversionContext.origin.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t sub_221B8CCA4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  a3(0);
  v5 = OUTLINED_FUNCTION_12_14();
  return OUTLINED_FUNCTION_20_15(v5);
}

uint64_t sub_221B8CD20(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221B8CDA0(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_221B8CE20(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 8);
}

uint64_t sub_221B8CEA4(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 16);
}