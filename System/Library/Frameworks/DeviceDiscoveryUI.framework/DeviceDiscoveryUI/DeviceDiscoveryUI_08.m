uint64_t sub_238126930()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_23812699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = *MEMORY[0x277D85DE8];
  *(v8 + 352) = v43;
  *(v8 + 360) = v44;
  *(v8 + 320) = v41;
  *(v8 + 336) = v42;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  v9 = sub_238154F5C();
  *(v8 + 368) = v9;
  v10 = *(v9 - 8);
  *(v8 + 376) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808) - 8) + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  v13 = type metadata accessor for PermissionTask(0);
  *(v8 + 432) = v13;
  v14 = *(v13 - 8);
  *(v8 + 440) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 448) = swift_task_alloc();
  v16 = sub_2381536AC();
  *(v8 + 456) = v16;
  v17 = *(v16 - 8);
  *(v8 + 464) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v19 = type metadata accessor for _DDNodeDecoration.Kind(0);
  *(v8 + 496) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v21 = type metadata accessor for _DDNodeDecoration(0);
  *(v8 + 528) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v23 = sub_238154ABC();
  *(v8 + 560) = v23;
  v24 = *(v23 - 8);
  *(v8 + 568) = v24;
  v25 = *(v24 + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  v26 = sub_238154AAC();
  *(v8 + 584) = v26;
  v27 = *(v26 - 8);
  *(v8 + 592) = v27;
  v28 = *(v27 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v29 = sub_238152BAC();
  *(v8 + 616) = v29;
  v30 = *(v29 - 8);
  *(v8 + 624) = v30;
  v31 = *(v30 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v32 = sub_2381527EC();
  *(v8 + 648) = v32;
  v33 = *(v32 - 8);
  *(v8 + 656) = v33;
  v34 = *(v33 + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_projectBox();
  sub_238154F8C();
  *(v8 + 736) = sub_238154F7C();
  v35 = sub_238154F3C();
  *(v8 + 744) = v35;
  *(v8 + 752) = v36;
  v37 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_238126E94, v35, v36);
}

void sub_238126E94()
{
  v24 = *MEMORY[0x277D85DE8];
  v0[5] = &type metadata for RapportFeatureFlags;
  v0[6] = sub_23812277C();
  v1 = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    v2 = v0[91];
    swift_beginAccess();
    sub_238152B4C();
    swift_endAccess();
  }

  v3 = v0[91];
  v4 = v0[80];
  v5 = v0[78];
  v6 = v0[77];
  v7 = v0[36];
  v8 = type metadata accessor for DDDeviceDiscoveryView(0);
  v0[95] = v8;
  v9 = *(v7 + *(v8 + 44));
  swift_beginAccess();
  v10 = *(v5 + 16);
  v0[96] = v10;
  v0[97] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v3, v6);
  v11 = *(v7 + 40);
  v12 = *(v7 + 48);
  v13 = *((*MEMORY[0x277D85000] & *v9) + 0xB0);
  v23 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[98] = v15;
  *v15 = v0;
  v15[1] = sub_2381270F4;
  v16 = v0[88];
  v17 = v0[87];
  v18 = v0[80];
  v19 = v0[38];
  v20 = v0[39];
  v21 = v0[37];
  v22 = *MEMORY[0x277D85DE8];
  v26 = v0[40];
  v27 = v0[41];

  __asm { BRAA            X9, X16 }
}

uint64_t sub_2381270F4()
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 784);
  v4 = *v1;
  v2[99] = v0;

  v5 = v2[80];
  v6 = v2[78];
  v7 = v2[77];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (v0)
  {
    v9(v5, v7);
    v11 = v2[94];
    v12 = v2[93];
    v13 = sub_238128164;
  }

  else
  {
    v2[100] = v9;
    v2[101] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v5, v7);
    v11 = v2[94];
    v12 = v2[93];
    v13 = sub_2381272B4;
  }

  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_2381272B4()
{
  v181 = v0;
  v180 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 656);
  v7 = *(v0 + 648);

  v8 = *(v6 + 32);
  v8(v2, v4, v7);
  v8(v3, v5, v7);
  *(v0 + 816) = sub_2381527CC();
  *(v0 + 824) = v9;
  *(v0 + 825) = v10;
  *(v0 + 826) = v11;
  *(v0 + 827) = v12;
  *(v0 + 828) = v13;
  *(v0 + 829) = v14;
  *(v0 + 830) = v15;
  *(v0 + 831) = v16;
  *(v0 + 832) = sub_2381527CC();
  *(v0 + 840) = v17;
  *(v0 + 841) = v18;
  *(v0 + 842) = v19;
  *(v0 + 843) = v20;
  *(v0 + 844) = v21;
  *(v0 + 845) = v22;
  *(v0 + 846) = v23;
  *(v0 + 847) = v24;
  if (qword_27DEEA110 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v25 = *(v0 + 720);
    v26 = *(v0 + 712);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *(v0 + 656);
    v30 = *(v0 + 648);
    v31 = *(v0 + 320);
    v32 = sub_23815293C();
    __swift_project_value_buffer(v32, qword_27DEED680);
    v33 = *(v29 + 16);
    v33(v27, v25, v30);
    v33(v28, v26, v30);

    v34 = sub_23815291C();
    v35 = sub_2381550FC();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 688);
    v38 = *(v0 + 680);
    v39 = *(v0 + 656);
    v40 = *(v0 + 648);
    v168 = v33;
    if (v36)
    {
      v41 = *(v0 + 312);
      v42 = *(v0 + 320);
      v164 = v35;
      v43 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v178 = v173;
      *v43 = 136315650;
      *(v43 + 4) = sub_238085EAC(v41, v42, &v178);
      *(v43 + 12) = 2080;
      sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0]);
      v44 = sub_23815559C();
      v46 = v45;
      v47 = *(v39 + 8);
      v47(v37, v40);
      v48 = sub_238085EAC(v44, v46, &v178);

      *(v43 + 14) = v48;
      *(v43 + 22) = 2080;
      v49 = sub_23815559C();
      v51 = v50;
      v171 = v47;
      v47(v38, v40);
      v52 = sub_238085EAC(v49, v51, &v178);

      *(v43 + 24) = v52;
      _os_log_impl(&dword_238060000, v34, v164, "Creating endpoint for service name: %s and endpointUUID: %s and agentUUID: %s", v43, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383EA8A0](v173, -1, -1);
      MEMORY[0x2383EA8A0](v43, -1, -1);
    }

    else
    {

      v53 = *(v39 + 8);
      v53(v38, v40);
      v171 = v53;
      v53(v37, v40);
    }

    v54 = *(v0 + 808);
    v55 = *(v0 + 800);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = *(v0 + 728);
    v59 = *(v0 + 632);
    v60 = *(v0 + 616);
    v61 = *(v0 + 312);
    v62 = *(v0 + 320);
    sub_238154D3C();
    nw_endpoint_create_application_service();

    nw_endpoint_set_agent_identifier();
    swift_beginAccess();
    v57(v59, v58, v60);
    v63 = sub_2381313CC(v59);
    v65 = v64;
    v55(v59, v60);
    if (!v65)
    {
      v84 = sub_23815291C();
      v85 = sub_2381550FC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_238060000, v84, v85, "Endpoint does not have a device ID, generating a random one", v86, 2u);
        MEMORY[0x2383EA8A0](v86, -1, -1);
      }

      v87 = *(v0 + 672);
      v88 = *(v0 + 656);
      v89 = *(v0 + 648);

      sub_2381527DC();
      sub_23815279C();
      v171(v87, v89);
      v83 = *(v0 + 792);
      goto LABEL_12;
    }

    v66 = *(v0 + 792);
    log = *(v0 + 608);
    v175 = *(v0 + 600);
    v67 = *(v0 + 592);
    v165 = *(v0 + 584);
    v68 = *(v0 + 576);
    v69 = *(v0 + 568);
    v70 = *(v0 + 560);
    v72 = *(v0 + 296);
    v71 = *(v0 + 304);
    v178 = v63;
    v179 = v65;
    MEMORY[0x2383E9410](46, 0xE100000000000000);
    MEMORY[0x2383E9410](v72, v71);
    v73 = sub_238128D8C(v178, v179);
    v75 = v74;
    sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540]);
    sub_238154A9C();
    sub_238085D80(v73, v75);
    sub_2381294AC(v73, v75);
    v152 = v75;
    sub_238085CA0(v73, v75);
    sub_238154A8C();
    (*(v69 + 8))(v68, v70);
    (*(v67 + 16))(v175, log, v165);
    sub_23812F7E0(&qword_27DEED8E8, MEMORY[0x277CC5290]);
    sub_238154E9C();
    v76 = *(v0 + 248);
    v77 = *(v0 + 256);
    v78 = *(v76 + 16);
    v155 = v73;
    v158 = v66;
    if (v77 == v78)
    {
      break;
    }

    if ((v77 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v79 = MEMORY[0x277D84F90];
    while (v77 < *(v76 + 16))
    {
      v115 = *(v76 + 32 + v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_238157F20;
      *(v116 + 56) = MEMORY[0x277D84B78];
      *(v116 + 64) = MEMORY[0x277D84BC0];
      *(v116 + 32) = v115;
      v117 = sub_238154CEC();
      v119 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_2380BB558(0, *(v79 + 2) + 1, 1, v79);
      }

      v121 = *(v79 + 2);
      v120 = *(v79 + 3);
      if (v121 >= v120 >> 1)
      {
        v79 = sub_2380BB558((v120 > 1), v121 + 1, 1, v79);
      }

      ++v77;
      *(v79 + 2) = v121 + 1;
      v122 = &v79[16 * v121];
      *(v122 + 4) = v117;
      *(v122 + 5) = v119;
      if (v78 == v77)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v79 = MEMORY[0x277D84F90];
LABEL_8:
  v80 = *(v0 + 608);
  v81 = *(v0 + 592);
  v82 = *(v0 + 584);

  *(v0 + 280) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2380711D4(&qword_27DEEBB78, &qword_27DEEBB70, &qword_238159970);
  sub_238154C6C();
  sub_238085CA0(v155, v152);

  (*(v81 + 8))(v80, v82);
  v83 = v158;
LABEL_12:
  v90 = *(v0 + 520);
  v92 = *(v0 + 488);
  v91 = *(v0 + 496);
  v94 = *(v0 + 344);
  v93 = *(v0 + 352);
  sub_238154D3C();

  nw_endpoint_set_device_id();

  swift_storeEnumTagMultiPayload();
  v95 = sub_23815467C();

  sub_2381536BC();
  if (v83)
  {
    v96 = *MEMORY[0x277D85DE8];

    return swift_unexpectedError();
  }

  else
  {
    v159 = *(v0 + 760);
    v176 = *(v0 + 720);
    loga = *(v0 + 656);
    v166 = *(v0 + 712);
    v150 = *(v0 + 672);
    v153 = *(v0 + 648);
    v98 = *(v0 + 552);
    v99 = *(v0 + 528);
    v100 = *(v0 + 488);
    v101 = *(v0 + 456);
    v102 = *(v0 + 464);
    v156 = *(v0 + 360);
    v103 = *(v0 + 336);
    v104 = *(v0 + 288);
    sub_23812C0A8(*(v0 + 520), v98, type metadata accessor for _DDNodeDecoration.Kind);
    *(v98 + *(v99 + 20)) = v95;
    (*(v102 + 32))(v98 + *(v99 + 24), v100, v101);
    v105 = *v104;
    sub_2380A9944(v103, v98);
    sub_23812ECB0(v98, type metadata accessor for _DDNodeDecoration);
    v168(v150, v103, v153);
    swift_getKeyPath();
    swift_getKeyPath();
    v106 = sub_238152A7C();
    sub_23809F86C(107, v150);
    v106(v0 + 120, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    sub_238154FCC();
    v107 = v104 + *(v159 + 84);
    v108 = *v107;
    v109 = *(v107 + 1);
    swift_unknownObjectRetain();
    v108();
    swift_unknownObjectRelease_n();
    v171(v166, v153);
    v171(v176, v153);
    v110 = *(v0 + 432);
    v111 = *(v0 + 440);
    v112 = *(v0 + 424);
    v113 = *(v0 + 288);
    v114 = *(*(v0 + 760) + 68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
    sub_23815470C();
    if ((*(v111 + 48))(v112, 1, v110) == 1)
    {
      sub_238071284(*(v0 + 424), &unk_27DEED6A0, &unk_23815E808);
    }

    else
    {
      v123 = *(v0 + 432);
      v124 = *(v0 + 336);
      sub_23812C0A8(*(v0 + 424), *(v0 + 448), type metadata accessor for PermissionTask);
      v125 = *(v123 + 20);
      v126 = sub_2381527AC();
      v127 = *(v0 + 448);
      if (v126)
      {
        v129 = *(v0 + 408);
        v128 = *(v0 + 416);
        (*(*(v0 + 440) + 56))(v128, 1, 1, *(v0 + 432));
        sub_2380712E4(v128, v129, &unk_27DEED6A0, &unk_23815E808);
        sub_23815471C();
        sub_238071284(v128, &unk_27DEED6A0, &unk_23815E808);
      }

      sub_23812ECB0(v127, type metadata accessor for PermissionTask);
    }

    v130 = *(v0 + 720);
    v131 = *(v0 + 712);
    v132 = *(v0 + 704);
    v133 = *(v0 + 696);
    v134 = *(v0 + 688);
    v135 = *(v0 + 680);
    v136 = *(v0 + 672);
    v137 = *(v0 + 664);
    v138 = *(v0 + 640);
    v139 = *(v0 + 632);
    v142 = *(v0 + 608);
    v143 = *(v0 + 600);
    v144 = *(v0 + 576);
    v145 = *(v0 + 552);
    v146 = *(v0 + 544);
    v147 = *(v0 + 536);
    v148 = *(v0 + 520);
    v149 = *(v0 + 512);
    v151 = *(v0 + 504);
    v154 = *(v0 + 488);
    v157 = *(v0 + 480);
    v160 = *(v0 + 472);
    logb = *(v0 + 448);
    v167 = *(v0 + 424);
    v169 = *(v0 + 416);
    v170 = *(v0 + 408);
    v172 = *(v0 + 400);
    v174 = *(v0 + 392);
    v177 = *(v0 + 384);

    v140 = *(v0 + 8);
    v141 = *MEMORY[0x277D85DE8];

    return v140();
  }
}

uint64_t sub_238128164()
{
  v146 = v0;
  v145[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 792);
  v2 = *(v0 + 736);
  v3 = *(v0 + 384);
  v4 = *(v0 + 368);

  *(v0 + 264) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 400);
    v8 = *(v0 + 376);
    v7 = *(v0 + 384);
    v9 = *(v0 + 368);

    (*(v8 + 32))(v6, v7, v9);
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 664);
    v11 = *(v0 + 656);
    v12 = *(v0 + 648);
    v14 = *(v0 + 392);
    v13 = *(v0 + 400);
    v15 = *(v0 + 368);
    v16 = *(v0 + 376);
    v17 = *(v0 + 336);
    v18 = sub_23815293C();
    __swift_project_value_buffer(v18, qword_27DEED680);
    v136 = *(v11 + 16);
    v136(v10, v17, v12);
    v19 = *(v16 + 16);
    v19(v14, v13, v15);
    v20 = sub_23815291C();
    v21 = sub_2381550DC();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 664);
    v24 = *(v0 + 656);
    v25 = *(v0 + 648);
    v140 = *(v0 + 392);
    v26 = *(v0 + 368);
    v27 = *(v0 + 376);
    if (v22)
    {
      v128 = v21;
      v28 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v145[0] = v132;
      *v28 = 136315394;
      sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0]);
      v119 = v19;
      v122 = v20;
      v29 = sub_23815559C();
      v31 = v30;
      (*(v24 + 8))(v23, v25);
      v32 = sub_238085EAC(v29, v31, v145);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2112;
      sub_23812F7E0(&qword_27DEEC4A0, MEMORY[0x277D85678]);
      swift_allocError();
      v119(v33, v140, v26);
      v34 = _swift_stdlib_bridgeErrorToNSError();
      v35 = *(v27 + 8);
      v35(v140, v26);
      *(v28 + 14) = v34;
      *v125 = v34;
      _os_log_impl(&dword_238060000, v122, v128, "Attempt to connect to node %s cancelled: %@", v28, 0x16u);
      sub_238071284(v125, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v125, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v132);
      MEMORY[0x2383EA8A0](v132, -1, -1);
      MEMORY[0x2383EA8A0](v28, -1, -1);
    }

    else
    {

      v35 = *(v27 + 8);
      v35(v140, v26);
      (*(v24 + 8))(v23, v25);
    }

    v57 = *(v0 + 512);
    v58 = *(v0 + 496);
    v59 = *(v0 + 480);
    v61 = *(v0 + 344);
    v60 = *(v0 + 352);
    swift_storeEnumTagMultiPayload();
    v62 = sub_23815467C();

    sub_2381536BC();
    v117 = *(v0 + 672);
    v120 = *(v0 + 648);
    v142 = v35;
    v74 = *(v0 + 544);
    v75 = *(v0 + 528);
    v76 = *(v0 + 480);
    v77 = *(v0 + 456);
    v78 = *(v0 + 464);
    v130 = *(v0 + 368);
    v134 = *(v0 + 400);
    v123 = *(v0 + 360);
    v126 = *(v0 + 376);
    v79 = *(v0 + 336);
    v80 = *(v0 + 288);
    sub_23812C0A8(*(v0 + 512), v74, type metadata accessor for _DDNodeDecoration.Kind);
    *(v74 + *(v75 + 20)) = v62;
    (*(v78 + 32))(v74 + *(v75 + 24), v76, v77);
    v81 = *v80;
    sub_2380A9944(v79, v74);
    sub_23812ECB0(v74, type metadata accessor for _DDNodeDecoration);
    v136(v117, v79, v120);
    swift_getKeyPath();
    swift_getKeyPath();
    v82 = sub_238152A7C();
    sub_23809F86C(107, v117);
    v82(v0 + 88, 0);

    sub_238154FCC();
    v142(v134, v130);
    v73 = *(v0 + 264);
  }

  else
  {

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v36 = *(v0 + 792);
    v37 = sub_23815293C();
    __swift_project_value_buffer(v37, qword_27DEED680);
    v38 = v36;
    v39 = sub_23815291C();
    v40 = sub_2381550DC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 792);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v41;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_238060000, v39, v40, "Error while attempting to connect and interact with node: %@", v42, 0xCu);
      sub_238071284(v43, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v43, -1, -1);
      MEMORY[0x2383EA8A0](v42, -1, -1);
    }

    v46 = *(v0 + 792);
    v48 = *(v0 + 496);
    v47 = *(v0 + 504);
    v49 = *(v0 + 472);
    v51 = *(v0 + 344);
    v50 = *(v0 + 352);

    swift_getErrorValue();
    v53 = *(v0 + 176);
    v52 = *(v0 + 184);
    v54 = *(v0 + 192);
    *v47 = sub_23815563C();
    v47[1] = v55;
    swift_storeEnumTagMultiPayload();
    v56 = sub_23815467C();

    sub_2381536BC();
    v141 = *(v0 + 792);
    v63 = *(v0 + 656);
    v129 = *(v0 + 672);
    v133 = *(v0 + 648);
    v64 = *(v0 + 536);
    v65 = *(v0 + 528);
    v66 = *(v0 + 464);
    v67 = *(v0 + 472);
    v68 = *(v0 + 456);
    v138 = *(v0 + 360);
    v69 = *(v0 + 336);
    v70 = *(v0 + 288);
    sub_23812C0A8(*(v0 + 504), v64, type metadata accessor for _DDNodeDecoration.Kind);
    *(v64 + *(v65 + 20)) = v56;
    (*(v66 + 32))(v64 + *(v65 + 24), v67, v68);
    v71 = *v70;
    sub_2380A9944(v69, v64);
    sub_23812ECB0(v64, type metadata accessor for _DDNodeDecoration);
    (*(v63 + 16))(v129, v69, v133);
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = sub_238152A7C();
    sub_23809F86C(107, v129);
    v72(v0 + 56, 0);

    sub_238154FCC();
    v73 = v141;
  }

  v83 = *(v0 + 432);
  v84 = *(v0 + 440);
  v85 = *(v0 + 424);
  v86 = *(v0 + 288);
  v87 = *(*(v0 + 760) + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
  sub_23815470C();
  if ((*(v84 + 48))(v85, 1, v83) == 1)
  {
    sub_238071284(*(v0 + 424), &unk_27DEED6A0, &unk_23815E808);
  }

  else
  {
    v88 = *(v0 + 432);
    v89 = *(v0 + 336);
    sub_23812C0A8(*(v0 + 424), *(v0 + 448), type metadata accessor for PermissionTask);
    v90 = *(v88 + 20);
    v91 = sub_2381527AC();
    v92 = *(v0 + 448);
    if (v91)
    {
      v94 = *(v0 + 408);
      v93 = *(v0 + 416);
      (*(*(v0 + 440) + 56))(v93, 1, 1, *(v0 + 432));
      sub_2380712E4(v93, v94, &unk_27DEED6A0, &unk_23815E808);
      sub_23815471C();
      sub_238071284(v93, &unk_27DEED6A0, &unk_23815E808);
    }

    sub_23812ECB0(v92, type metadata accessor for PermissionTask);
  }

  v95 = *(v0 + 720);
  v96 = *(v0 + 712);
  v97 = *(v0 + 704);
  v98 = *(v0 + 696);
  v99 = *(v0 + 688);
  v100 = *(v0 + 680);
  v101 = *(v0 + 672);
  v102 = *(v0 + 664);
  v103 = *(v0 + 640);
  v104 = *(v0 + 632);
  v108 = *(v0 + 608);
  v109 = *(v0 + 600);
  v110 = *(v0 + 576);
  v111 = *(v0 + 552);
  v112 = *(v0 + 544);
  v113 = *(v0 + 536);
  v114 = *(v0 + 520);
  v115 = *(v0 + 512);
  v116 = *(v0 + 504);
  v118 = *(v0 + 488);
  v121 = *(v0 + 480);
  v124 = *(v0 + 472);
  v127 = *(v0 + 448);
  v131 = *(v0 + 424);
  v135 = *(v0 + 416);
  v137 = *(v0 + 408);
  v139 = *(v0 + 400);
  v143 = *(v0 + 392);
  v144 = *(v0 + 384);

  v105 = *(v0 + 8);
  v106 = *MEMORY[0x277D85DE8];

  return v105();
}

uint64_t sub_238128D8C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED900, &qword_23815EC58);
  if (swift_dynamicCast())
  {
    sub_23812F930(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_2381525FC();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_238071284(__src, &qword_27DEED908, &qword_23815EC60);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_23815544C();
  }

  sub_2381297E8(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_23812F828(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2381298B0(sub_23812F8C8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_23815271C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_23812976C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_238154E0C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_238154E3C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_23815544C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_23812976C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_238154E1C();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_23815272C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_23815272C();
    sub_238087244(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_238087244(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_238085D80(*&__src[0], *(&__src[0] + 1));

  sub_238085CA0(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2381292D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_238129354(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

id sub_2381293D0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_238154C8C();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_23815266C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2381294AC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_238154ABC();
      sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540]);
      result = sub_238154A7C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_23812968C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23812968C(uint64_t a1, uint64_t a2)
{
  result = sub_2381525AC();
  if (!result || (result = sub_2381525DC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2381525CC();
      sub_238154ABC();
      sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540]);
      return sub_238154A7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23812976C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_238154E4C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2383E9460](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2381297E8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_23812C110(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2381525EC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_23815259C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_23815270C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2381298B0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_238085CA0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_238085CA0(v6, v5);
    *v3 = xmmword_23815E7E0;
    sub_238085CA0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2381525AC() && __OFSUB__(v6, sub_2381525DC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2381525EC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_23815258C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_23812A114(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_238085CA0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_23815E7E0;
    sub_238085CA0(0, 0xC000000000000000);
    sub_2381526DC();
    result = sub_23812A114(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_238129C54@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_23812C110(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23812C1C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23812C244(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_238129CE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2381525AC();
    if (v10)
    {
      v11 = sub_2381525DC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2381525CC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2381525AC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2381525DC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2381525CC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238129F18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23812C3A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238085CA0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_238129CE8(v14, a3, a4, &v13);
  v10 = v4;
  sub_238085CA0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *sub_23812A0A8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_23812A114(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_2381525AC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_2381525DC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_2381525CC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_23812A1C8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_23815542C();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23812A21C()
{
  result = qword_27DEED6E8;
  if (!qword_27DEED6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED6E8);
  }

  return result;
}

uint64_t sub_23812A2B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238152E1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23812A3FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_238152E1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23812A52C()
{
  type metadata accessor for DeviceBrowserViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2381531EC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for _DDAirDropMetadataCache(319);
      if (v2 <= 0x3F)
      {
        sub_23812A908(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_238152CEC();
          if (v4 <= 0x3F)
          {
            sub_238152E1C();
            if (v5 <= 0x3F)
            {
              sub_23815289C();
              if (v6 <= 0x3F)
              {
                sub_2381528EC();
                if (v7 <= 0x3F)
                {
                  sub_23812A908(319, &qword_27DEED718, MEMORY[0x277D04788], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_23812A9EC(319, &qword_27DEED720, &unk_27DEED6A0, &unk_23815E808, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_23812A9EC(319, &qword_27DEED728, &qword_27DEEADE8, &qword_238158E00, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        sub_238067930();
                        if (v11 <= 0x3F)
                        {
                          sub_23812A864();
                          if (v12 <= 0x3F)
                          {
                            sub_23812A9EC(319, &qword_27DEEB2B0, &unk_27DEED750, &qword_238159750, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_23812A908(319, &unk_27DEECD90, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                              if (v14 <= 0x3F)
                              {
                                sub_23812A958();
                                if (v15 <= 0x3F)
                                {
                                  sub_23812A9EC(319, &qword_27DEED768, &unk_27DEED6B8, &qword_23815E818, MEMORY[0x277CE10B8]);
                                  if (v16 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_23812A864()
{
  if (!qword_27DEED738)
  {
    sub_23812A8BC();
    v0 = sub_23815530C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED738);
    }
  }
}

unint64_t sub_23812A8BC()
{
  result = qword_27DEED740;
  if (!qword_27DEED740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEED740);
  }

  return result;
}

void sub_23812A908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23812A958()
{
  if (!qword_27DEED760)
  {
    type metadata accessor for DDDeviceAccessController();
    sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED760);
    }
  }
}

void sub_23812A9EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23812AA54()
{
  result = qword_27DEED7D0;
  if (!qword_27DEED7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED6E0, &qword_23815E838);
    sub_23812AAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED7D0);
  }

  return result;
}

unint64_t sub_23812AAE0()
{
  result = qword_27DEED7D8;
  if (!qword_27DEED7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED6D0, &qword_23815E828);
    sub_2380711D4(&qword_27DEED7E0, &unk_27DEED7E8, &qword_23815E968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED7D8);
  }

  return result;
}

uint64_t sub_23812ABBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2381527EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23812AC7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2381527EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23812AD20()
{
  sub_23812ADAC();
  if (v0 <= 0x3F)
  {
    sub_2381527EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23812ADAC()
{
  if (!qword_27DEED808)
  {
    v0 = sub_238154FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED808);
    }
  }
}

unint64_t sub_23812AE14()
{
  result = qword_27DEED810;
  if (!qword_27DEED810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED810);
  }

  return result;
}

uint64_t sub_23812AE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDDeviceDiscoveryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23812AED0()
{
  v2 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238088780;

  return sub_238123A04(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 56);

  v12 = v1[10];
  v13 = sub_238152E1C();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);

  v14 = *(v0 + v3 + v1[14] + 8);

  v15 = *(v0 + v3 + v1[15]);

  v16 = *(v0 + v3 + v1[16] + 8);

  v17 = (v0 + v3 + v1[17]);
  v18 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v19 = *v17;

    v20 = *(v18 + 20);
    v21 = sub_2381527EC();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    v22 = *&v17[*(v18 + 24) + 8];
  }

  v23 = *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930) + 28)];

  v24 = (v5 + v1[18]);
  v25 = v24[1];
  if (v25 >> 60 != 15)
  {
    sub_238085CA0(*v24, v25);
  }

  v26 = v24[2];

  v27 = *(v5 + v1[19] + 8);

  v28 = *(v5 + v1[21] + 8);

  v29 = (v5 + v1[22]);
  if (*v29)
  {
    v30 = v29[1];
  }

  v31 = (v5 + v1[23]);
  if (*v31)
  {
    v32 = v31[1];
  }

  v33 = *(v5 + v1[24] + 8);

  v34 = (v5 + v1[25]);
  v35 = v34[1];
  if (v35 >> 60 != 15)
  {
    sub_238085CA0(*v34, v35);
  }

  v36 = (v5 + v1[27]);
  v37 = *v36;

  v38 = v36[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23812B2C4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23812B314(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23812B388()
{
  result = qword_27DEED850;
  if (!qword_27DEED850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED818, &qword_23815E9F8);
    sub_2380F9094();
    sub_23812F7E0(&qword_27DEED860, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED850);
  }

  return result;
}

uint64_t sub_23812B4C0()
{
  v1 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_238088780;

  return sub_2381244EC();
}

uint64_t sub_23812B58C()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 40);

  v7 = v0 + v3;
  v8 = *(v0 + v3);

  v9 = *(v0 + v3 + 8);

  v10 = *(v0 + v3 + 16);

  v11 = *(v0 + v3 + 32);

  v12 = *(v0 + v3 + 48);

  v13 = *(v0 + v3 + 56);

  v14 = v1[10];
  v15 = sub_238152E1C();
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);

  v16 = *(v0 + v3 + v1[14] + 8);

  v17 = *(v0 + v3 + v1[15]);

  v18 = *(v0 + v3 + v1[16] + 8);

  v19 = (v0 + v3 + v1[17]);
  v20 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *v19;

    v22 = *(v20 + 20);
    v23 = sub_2381527EC();
    (*(*(v23 - 8) + 8))(&v19[v22], v23);
    v24 = *&v19[*(v20 + 24) + 8];
  }

  v25 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930) + 28)];

  v26 = (v7 + v1[18]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_238085CA0(*v26, v27);
  }

  v28 = v26[2];

  v29 = *(v7 + v1[19] + 8);

  v30 = *(v7 + v1[21] + 8);

  v31 = (v7 + v1[22]);
  if (*v31)
  {
    v32 = v31[1];
  }

  v33 = (v7 + v1[23]);
  if (*v33)
  {
    v34 = v33[1];
  }

  v35 = *(v7 + v1[24] + 8);

  v36 = (v7 + v1[25]);
  v37 = v36[1];
  if (v37 >> 60 != 15)
  {
    sub_238085CA0(*v36, v37);
  }

  v38 = (v7 + v1[27]);
  v39 = *v38;

  v40 = v38[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23812B894(uint64_t a1)
{
  v4 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238087150;

  return sub_238125B08(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_23812B998(uint64_t a1)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_238125098(a1);
}

uint64_t sub_23812B9FC()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v55 = *(*(v1 - 1) + 80);
  v2 = (v55 + 32) & ~v55;
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_238152BAC();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 80);
  v6 = *(v56 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v2;
  v9 = *(v0 + v2);

  v10 = *(v0 + v2 + 8);

  v11 = *(v0 + v2 + 16);

  v12 = *(v0 + v2 + 32);

  v13 = *(v0 + v2 + 48);

  v14 = *(v0 + v2 + 56);

  v15 = v1[10];
  v16 = sub_238152E1C();
  (*(*(v16 - 8) + 8))(v0 + v2 + v15, v16);

  v17 = *(v0 + v2 + v1[14] + 8);

  v18 = *(v0 + v2 + v1[15]);

  v19 = *(v0 + v2 + v1[16] + 8);

  v20 = (v0 + v2 + v1[17]);
  v21 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = *v20;

    v23 = *(v21 + 20);
    v24 = sub_2381527EC();
    (*(*(v24 - 8) + 8))(&v20[v23], v24);
    v25 = *&v20[*(v21 + 24) + 8];
  }

  v26 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930) + 28)];

  v27 = (v8 + v1[18]);
  v28 = v27[1];
  if (v28 >> 60 != 15)
  {
    sub_238085CA0(*v27, v28);
  }

  v29 = v27[2];

  v30 = *(v8 + v1[19] + 8);

  v31 = *(v8 + v1[21] + 8);

  v32 = (v8 + v1[22]);
  if (*v32)
  {
    v33 = v32[1];
  }

  v34 = (v8 + v1[23]);
  if (*v34)
  {
    v35 = v34[1];
  }

  v36 = *(v8 + v1[24] + 8);

  v37 = (v8 + v1[25]);
  v38 = v37[1];
  if (v38 >> 60 != 15)
  {
    sub_238085CA0(*v37, v38);
  }

  v39 = (v2 + v3 + v5) & ~v5;
  v40 = (v6 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = v5;
  v44 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = v55 | v43;

  v47 = (v8 + v1[27]);
  v48 = *v47;

  v49 = v47[1];

  (*(v56 + 8))(v0 + v39, v57);
  v50 = *(v0 + v40);

  v51 = *(v0 + v41 + 8);

  v52 = *(v0 + v42 + 8);

  sub_238085CA0(*(v0 + v44), *(v0 + v44 + 8));
  v53 = *(v0 + v45 + 8);

  return MEMORY[0x2821FE8E8](v0, v45 + 16, v46 | 7);
}

uint64_t sub_23812BDEC(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_238152BAC() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v1 + 24);
  v26 = *(v1 + 16);
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v1 + v9);
  v22 = *(v1 + v10 + 8);
  v23 = *(v1 + v10);
  v15 = *(v1 + v11);
  v14 = *(v1 + v11 + 8);
  v16 = *(v1 + v12);
  v17 = *(v1 + v12 + 8);
  v18 = *(v1 + v13);
  v19 = *(v1 + v13 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = sub_238088780;

  return sub_238125F84(a1, v26, v25, v1 + v5, v1 + v8, v24, v23, v22);
}

uint64_t sub_23812BFD4(uint64_t a1)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_23812C5C4(a1);
}

uint64_t sub_23812C068()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23812C0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23812C110(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23812C1C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2381525EC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23815259C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23815270C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23812C244(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2381525EC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_23815259C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23812C2C8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED8D0, &qword_23815EC08);
  v10 = sub_2380711D4(&qword_27DEED8D8, &qword_27DEED8D0, &qword_23815EC08);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_238129C54(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_23812C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2381525AC();
  v11 = result;
  if (result)
  {
    result = sub_2381525DC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2381525CC();
  sub_238129CE8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23812C45C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238085D80(a3, a4);
          return sub_238129F18(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_23812C5C4(uint64_t a1)
{
  v380 = type metadata accessor for DDDeviceDiscoveryView(0);
  v350 = *(v380 - 1);
  v2 = *(v350 + 64);
  MEMORY[0x28223BE20](v380);
  v352 = v3;
  v353 = &v326 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v357 = &v326 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v338 = &v326 - v9;
  v339 = sub_238152EBC();
  v340 = *(v339 - 8);
  v10 = *(v340 + 64);
  MEMORY[0x28223BE20](v339);
  v335 = &v326 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v379 = sub_238152BAC();
  v381 = *(v379 - 1);
  v12 = *(v381 + 64);
  v13 = MEMORY[0x28223BE20](v379);
  v354 = &v326 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v337 = &v326 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v343 = &v326 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v345 = &v326 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v355 = &v326 - v22;
  MEMORY[0x28223BE20](v21);
  v370 = &v326 - v23;
  v367 = sub_2381536AC();
  v366 = *(v367 - 8);
  v24 = *(v366 + 64);
  v25 = MEMORY[0x28223BE20](v367);
  v349 = &v326 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v363 = &v326 - v27;
  v364 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v28 = *(*(v364 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v364);
  v347 = (&v326 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v360 = &v326 - v31;
  v365 = type metadata accessor for _DDNodeDecoration(0);
  v32 = *(*(v365 - 1) + 64);
  v33 = MEMORY[0x28223BE20](v365);
  v348 = &v326 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v361 = &v326 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v368 = &v326 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v369 = &v326 - v41;
  MEMORY[0x28223BE20](v40);
  v372 = &v326 - v42;
  v373 = type metadata accessor for PermissionTask(0);
  v375 = *(v373 - 8);
  v43 = v375[8];
  MEMORY[0x28223BE20](v373);
  v362 = (&v326 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v376 = &v326 - v47;
  v48 = sub_2381527EC();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v371 = &v326 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v346 = &v326 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v344 = &v326 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v356 = &v326 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v61 = &v326 - v60;
  v62 = MEMORY[0x28223BE20](v59);
  v359 = &v326 - v63;
  v351 = v64;
  MEMORY[0x28223BE20](v62);
  v66 = &v326 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x28223BE20](v67 - 8);
  v336 = &v326 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v342 = &v326 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = &v326 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v326 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = &v326 - v79;
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v81 = sub_23815293C();
  v82 = __swift_project_value_buffer(v81, qword_27DEED680);
  v382 = a1;
  sub_2380712E4(a1, v80, &qword_27DEEC9F0, &qword_23815A090);
  v374 = v82;
  v83 = sub_23815291C();
  v84 = sub_2381550FC();
  v85 = os_log_type_enabled(v83, v84);
  v341 = v61;
  if (v85)
  {
    v378 = v66;
    v86 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v384 = v334;
    *v86 = 136315138;
    sub_2380712E4(v80, v78, &qword_27DEEC9F0, &qword_23815A090);
    v87 = (*(v49 + 48))(v78, 1, v48);
    v377 = v49;
    v358 = v48;
    if (v87 == 1)
    {
      v88 = 0x20676E697373694DLL;
      sub_238071284(v78, &qword_27DEEC9F0, &qword_23815A090);
      v89 = 0xEE00444965646F4ELL;
    }

    else
    {
      v88 = sub_23815279C();
      v89 = v90;
      (*(v49 + 8))(v78, v48);
    }

    sub_238071284(v80, &qword_27DEEC9F0, &qword_23815A090);
    v91 = sub_238085EAC(v88, v89, &v384);

    *(v86 + 4) = v91;
    _os_log_impl(&dword_238060000, v83, v84, "Node (%s) tapped", v86, 0xCu);
    v92 = v334;
    __swift_destroy_boxed_opaque_existential_1(v334);
    MEMORY[0x2383EA8A0](v92, -1, -1);
    MEMORY[0x2383EA8A0](v86, -1, -1);

    v49 = v377;
    v66 = v378;
    v48 = v358;
  }

  else
  {

    sub_238071284(v80, &qword_27DEEC9F0, &qword_23815A090);
  }

  sub_2380712E4(v382, v75, &qword_27DEEC9F0, &qword_23815A090);
  v93 = *(v49 + 48);
  v94 = v93(v75, 1, v48);
  v95 = v383;
  if (v94 == 1)
  {
    sub_238071284(v75, &qword_27DEEC9F0, &qword_23815A090);
    v96 = v95 + v380[21];
    v97 = *(v96 + 1);
    return (*v96)(0);
  }

  v329 = v93;
  v330 = v49 + 48;
  v99 = *(v49 + 32);
  v333 = v49 + 32;
  v332 = v99;
  v99(v66, v75, v48);
  v100 = v379;
  v101 = v49;
  v102 = swift_allocBox();
  v382 = v103;
  v334 = *v95;
  v104 = v334[3];
  v105 = sub_238152A2C();
  v106 = v384;
  MEMORY[0x28223BE20](v105);
  *(&v326 - 2) = v66;
  v107 = v376;
  sub_2380D23F8(sub_23812F98C, v106, v376);

  v108 = v381;
  if ((*(v381 + 48))(v107, 1, v100) != 1)
  {
    v378 = v66;
    (*(v108 + 32))(v382, v107, v100);
    v122 = v380[17];
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
    v371 = v122;
    v124 = v372;
    v328 = v123;
    sub_23815470C();
    v125 = v373;
    v126 = (v375[6])(v124, 1, v373);
    v377 = v101;
    v331 = v102;
    if (v126 == 1)
    {
      v376 = 0;
      sub_238071284(v124, &unk_27DEED6A0, &unk_23815E808);
      v127 = v379;
    }

    else
    {
      v129 = v362;
      sub_23812C0A8(v124, v362, type metadata accessor for PermissionTask);
      v130 = v101;
      v131 = *(v101 + 16);
      v372 = *(v125 + 20);
      v132 = v359;
      v131(v359, v129 + v372, v48);
      v133 = v360;
      swift_storeEnumTagMultiPayload();
      v327 = sub_23815467C();
      v134 = (v129 + *(v125 + 24));
      v135 = *v134;
      v136 = v134[1];

      v137 = v363;
      sub_2381536BC();
      v376 = 0;
      v138 = v361;
      sub_23812C0A8(v133, v361, type metadata accessor for _DDNodeDecoration.Kind);
      v139 = v365;
      *&v138[*(v365 + 5)] = v327;
      (*(v366 + 32))(&v138[*(v139 + 6)], v137, v367);
      sub_2380A9944(v132, v138);
      sub_23812ECB0(v138, type metadata accessor for _DDNodeDecoration);
      v140 = *(v130 + 8);
      v140(v132, v48);
      v141 = *v129;
      sub_238154FCC();
      v142 = v129;
      v143 = v369;
      (v375[7])(v369, 1, 1, v125);
      sub_2380712E4(v143, v368, &unk_27DEED6A0, &unk_23815E808);
      sub_23815471C();
      sub_238071284(v143, &unk_27DEED6A0, &unk_23815E808);
      LOBYTE(v133) = sub_2381527AC();
      sub_23812ECB0(v142, type metadata accessor for PermissionTask);
      v127 = v379;
      if (v133)
      {
        v140(v378, v48);
      }
    }

    v144 = v381;
    v145 = v382;
    v146 = *(v381 + 16);
    v147 = v370;
    (v146)(v370, v382, v127);
    v148 = sub_238152B5C();
    v150 = v149;
    v151 = *(v144 + 8);
    v381 = v144 + 8;
    v151(v147, v127);
    if (v150 >> 60 == 15)
    {
      v152 = v383;
      v153 = v383[4];
      v154 = v376;
      if (v153)
      {
        v155 = (v383 + v380[24]);
        v156 = v155[1];
        v157 = v377;
        if (v156)
        {
          v372 = v383[3];
          v380 = *v155;
          sub_238152CEC();

          v382 = sub_238152CAC();
          sub_238152C7C();
          v158 = v378;
          v159 = sub_23815279C();
          v161 = v160;
          v162 = v347;
          *v347 = CGSizeMake;
          *(v162 + 8) = 0;
          swift_storeEnumTagMultiPayload();
          v163 = sub_23815467C();

          v370 = v153;
          v164 = v349;
          v374 = v159;
          v381 = v161;
          sub_2381536BC();
          if (v154)
          {
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v165 = v348;
          sub_23812C0A8(v162, v348, type metadata accessor for _DDNodeDecoration.Kind);
          v166 = v365;
          *(v165 + *(v365 + 5)) = v163;
          (*(v366 + 32))(v165 + *(v166 + 6), v164, v367);
          sub_2380A9944(v158, v165);
          sub_23812ECB0(v165, type metadata accessor for _DDNodeDecoration);
          v362 = sub_238154FBC();
          v167 = *(v362 - 1);
          v361 = *(v167 + 56);
          v364 = v167 + 56;
          (v361)(v357, 1, 1, v362);
          v168 = v353;
          sub_23812AE68(v152, v353);
          v169 = v377;
          v170 = *(v377 + 16);
          v376 = (v377 + 16);
          v379 = v170;
          (v170)(v356, v158, v48);
          v366 = sub_238154F8C();

          v171 = sub_238154F7C();
          v172 = v152;
          v173 = *(v350 + 80);
          v174 = (v173 + 48) & ~v173;
          v363 = v156;
          v175 = *(v169 + 80);
          v176 = (v352 + v175 + v174) & ~v175;
          v367 = v173 | v175;
          v177 = swift_allocObject();
          v178 = MEMORY[0x277D85700];
          v177[2] = v171;
          v177[3] = v178;
          v177[4] = v380;
          v177[5] = v156;
          v365 = type metadata accessor for DDDeviceDiscoveryView;
          sub_23812C0A8(v168, v177 + v174, type metadata accessor for DDDeviceDiscoveryView);
          v179 = v177 + v176;
          v180 = v356;
          v332(v179, v356, v48);
          v181 = v357;
          v360 = sub_2381351C8(0, 0, v357, &unk_23815EBE8, v177);
          (v361)(v181, 1, 1, v362);
          sub_23812AE68(v172, v168);
          (v379)(v180, v378, v48);

          v366 = sub_238154F7C();
          v182 = (v173 + 40) & ~v173;
          v183 = (v352 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
          v184 = (v183 + 23) & 0xFFFFFFFFFFFFFFF8;
          v185 = (v184 + 23) & 0xFFFFFFFFFFFFFFF8;
          v186 = (v175 + v185 + 8) & ~v175;
          v187 = (v351 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
          v188 = v48;
          v189 = swift_allocObject();
          *(v189 + 2) = v366;
          v190 = v331;
          *(v189 + 3) = MEMORY[0x277D85700];
          *(v189 + 4) = v190;
          sub_23812C0A8(v353, &v189[v182], v365);
          v191 = &v189[v183];
          v192 = v370;
          *v191 = v372;
          v191[1] = v192;
          v193 = &v189[v184];
          v194 = v363;
          *v193 = v380;
          v193[1] = v194;
          *&v189[v185] = v382;
          v332(&v189[v186], v356, v188);
          v195 = &v189[v187];
          v196 = v374;
          v197 = v381;
          *v195 = v374;
          v195[1] = v197;
          *&v189[(v187 + 23) & 0xFFFFFFFFFFFFFFF8] = v360;
          v198 = sub_2380D2A4C(0, 0, v357, &unk_23815EBF8, v189);
          v199 = v373;
          v200 = v369;
          v201 = v378;
          (v379)(&v369[*(v373 + 20)], v378, v188);
          *v200 = v198;
          v202 = (v200 + *(v199 + 24));
          *v202 = v196;
          v202[1] = v197;
          (v375[7])(v200, 0, 1, v199);
          sub_2380712E4(v200, v368, &unk_27DEED6A0, &unk_23815E808);
          sub_23815471C();

          sub_238071284(v200, &unk_27DEED6A0, &unk_23815E808);
          (*(v377 + 8))(v201, v188);
        }

        v242 = v344;
        v227 = v378;
        (*(v377 + 16))(v344, v378, v48);
        v229 = sub_23815291C();
        v230 = v48;
        v231 = sub_2381550DC();
        if (!os_log_type_enabled(v229, v231))
        {

          v249 = *(v157 + 8);
          v249(v242, v230);
          v249(v227, v230);
        }

        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v384 = v233;
        *v232 = 136315138;
        sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0]);
        v243 = sub_23815559C();
        v245 = v244;
        v246 = v242;
        v239 = *(v157 + 8);
        v239(v246, v230);
        v247 = sub_238085EAC(v243, v245, &v384);

        *(v232 + 4) = v247;
        v241 = "No serviceIdentifier for nodeID: %s, not handling tap";
      }

      else
      {
        v226 = v377;
        v227 = v378;
        v228 = v346;
        (*(v377 + 16))(v346, v378, v48);
        v229 = sub_23815291C();
        v230 = v48;
        v231 = sub_2381550DC();
        if (!os_log_type_enabled(v229, v231))
        {

          v248 = *(v226 + 8);
          v248(v228, v230);
          v248(v227, v230);
        }

        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v384 = v233;
        *v232 = 136315138;
        sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0]);
        v234 = sub_23815559C();
        v235 = v226;
        v237 = v236;
        v238 = v228;
        v239 = *(v235 + 8);
        v239(v238, v230);
        v240 = sub_238085EAC(v234, v237, &v384);

        *(v232 + 4) = v240;
        v241 = "No bundleID for nodeID: %s, not handling tap";
      }

      _os_log_impl(&dword_238060000, v229, v231, v241, v232, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v233);
      MEMORY[0x2383EA8A0](v233, -1, -1);
      MEMORY[0x2383EA8A0](v232, -1, -1);

      v239(v227, v230);
    }

    sub_238087244(v148, v150);
    v203 = v355;
    v375 = v146;
    (v146)(v355, v145, v127);
    v204 = sub_238152B5C();
    v206 = v376;
    if (v205 >> 60 == 15)
    {
      v151(v203, v127);
    }

    else
    {
      v207 = v203;
      v208 = v204;
      v209 = v205;
      v210 = sub_23812C2C8(&unk_284AEE950);
      v358 = v48;
      v211 = v210;
      v213 = v212;
      v214 = sub_23812C45C(v208, v209, v210, v212);
      v215 = v211;
      v48 = v358;
      sub_238085CA0(v215, v213);
      sub_238087244(v208, v209);
      v216 = v207;
      v145 = v382;
      v151(v216, v127);
      if (v214)
      {
        v217 = v345;
        (v375)(v345, v145, v127);
        v218 = sub_238152B6C();
        v151(v217, v127);
        if (!v218)
        {

          v250 = sub_23815291C();
          v251 = sub_2381550DC();

          if (os_log_type_enabled(v250, v251))
          {
            v252 = swift_slowAlloc();
            v253 = swift_slowAlloc();
            v385 = v253;
            *v252 = 136315138;
            swift_beginAccess();
            v254 = v354;
            v255 = v145;
            v256 = v151;
            v257 = v379;
            (v375)(v354, v255, v379);
            v258 = sub_238152B3C();
            v260 = v259;
            v256(v254, v257);
            v261 = sub_238085EAC(v258, v260, &v385);

            *(v252 + 4) = v261;
            _os_log_impl(&dword_238060000, v250, v251, "No NW endpoint for endpoint: %s, not handling tap", v252, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v253);
            MEMORY[0x2383EA8A0](v253, -1, -1);
            MEMORY[0x2383EA8A0](v252, -1, -1);
          }

          (*(v377 + 8))(v378, v358);
        }

        if (*(v383 + v380[13]) == 1)
        {
          v219 = v343;
          (v375)(v343, v145, v127);
          v220 = v342;
          sub_238130414(v342);
          v151(v219, v127);
          v221 = v358;
          v222 = v329(v220, 1, v358);
          v223 = v377;
          if (v222 == 1)
          {
            sub_238071284(v220, &qword_27DEEC9F0, &qword_23815A090);
          }

          else
          {
            v266 = v341;
            v332(v341, v220, v221);
            v267 = v338;
            sub_2380A92A8(v266, v338);
            v268 = v267;
            v269 = v340;
            v270 = v267;
            v271 = v339;
            if ((*(v340 + 48))(v270, 1, v339) != 1)
            {
              v282 = v335;
              (*(v269 + 32))(v335, v268, v271);
              v283 = v383 + v380[23];
              v284 = *v283;
              v285 = v271;
              if (*v283)
              {
                v286 = *(v283 + 1);
                v287 = sub_23815256C();
                v288 = *(v287 + 48);
                v289 = *(v287 + 52);
                swift_allocObject();

                sub_23815255C();
                sub_23812F7E0(&unk_27DEED8C0, MEMORY[0x277CD9168]);
                v290 = sub_23815254C();
                if (v206)
                {

                  v292 = v206;
                  v293 = sub_23815291C();
                  v294 = sub_2381550DC();

                  if (os_log_type_enabled(v293, v294))
                  {
                    v295 = swift_slowAlloc();
                    v296 = swift_slowAlloc();
                    v384 = v296;
                    *v295 = 136315138;
                    v385 = v206;
                    v297 = v206;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
                    v298 = sub_238154D2C();
                    v300 = sub_238085EAC(v298, v299, &v384);

                    *(v295 + 4) = v300;
                    _os_log_impl(&dword_238060000, v293, v294, "Failed to encode browse result: %s", v295, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v296);
                    MEMORY[0x2383EA8A0](v296, -1, -1);
                    MEMORY[0x2383EA8A0](v295, -1, -1);
                    sub_23807A454(v284);

                    swift_unknownObjectRelease();
                    (*(v340 + 8))(v335, v339);
                  }

                  else
                  {
                    sub_23807A454(v284);

                    swift_unknownObjectRelease();
                    (*(v340 + 8))(v282, v285);
                  }

                  v323 = *(v377 + 8);
                  v324 = v341;
                }

                else
                {
                  v311 = v290;
                  v312 = v291;

                  sub_238085D80(v311, v312);
                  v313 = sub_23815291C();
                  v314 = sub_2381550FC();
                  sub_238085CA0(v311, v312);
                  if (os_log_type_enabled(v313, v314))
                  {
                    v315 = swift_slowAlloc();
                    v383 = swift_slowAlloc();
                    v384 = v383;
                    *v315 = 136315138;
                    sub_238085D80(v311, v312);
                    v316 = sub_2381526EC();
                    v318 = v317;
                    sub_238085CA0(v311, v312);
                    v319 = sub_238085EAC(v316, v318, &v384);
                    v282 = v335;

                    *(v315 + 4) = v319;
                    _os_log_impl(&dword_238060000, v313, v314, "Encoded browse result: %s", v315, 0xCu);
                    v320 = v383;
                    __swift_destroy_boxed_opaque_existential_1(v383);
                    MEMORY[0x2383EA8A0](v320, -1, -1);
                    v321 = v315;
                    v285 = v339;
                    MEMORY[0x2383EA8A0](v321, -1, -1);
                  }

                  v322 = v341;
                  v284(v311, v312);
                  sub_23807A454(v284);
                  sub_238085CA0(v311, v312);
                  swift_unknownObjectRelease();
                  (*(v340 + 8))(v282, v285);
                  v323 = *(v377 + 8);
                  v324 = v322;
                }

                v325 = v358;
                v323(v324, v358);
                v323(v378, v325);
              }

              else
              {
                v304 = sub_23815291C();
                v305 = sub_2381550DC();
                v306 = os_log_type_enabled(v304, v305);
                v307 = v341;
                if (v306)
                {
                  v308 = swift_slowAlloc();
                  *v308 = 0;
                  _os_log_impl(&dword_238060000, v304, v305, "No browserResultDataCallback set", v308, 2u);
                  MEMORY[0x2383EA8A0](v308, -1, -1);
                }

                swift_unknownObjectRelease();

                (*(v269 + 8))(v282, v271);
                v309 = *(v377 + 8);
                v310 = v358;
                v309(v307, v358);
                v309(v378, v310);
              }
            }

            v223 = v377;
            (*(v377 + 8))(v266, v221);
            sub_238071284(v268, &qword_27DEEBA10, &qword_23815D910);
            v127 = v379;
          }

          v272 = sub_23815291C();
          v273 = sub_2381550DC();

          if (os_log_type_enabled(v272, v273))
          {
            v274 = swift_slowAlloc();
            v275 = swift_slowAlloc();
            v385 = v275;
            *v274 = 136315138;
            swift_beginAccess();
            v276 = v337;
            (v375)(v337, v145, v127);
            v277 = v336;
            sub_238130414(v336);
            v151(v276, v127);
            v278 = v358;
            if (v329(v277, 1, v358) == 1)
            {
              v279 = 0x20676E697373694DLL;
              sub_238071284(v277, &qword_27DEEC9F0, &qword_23815A090);
              v280 = 0xEC00000044495555;
              v281 = v377;
            }

            else
            {
              v279 = sub_23815279C();
              v301 = v277;
              v280 = v302;
              v281 = v377;
              (*(v377 + 8))(v301, v278);
            }

            v303 = sub_238085EAC(v279, v280, &v385);

            *(v274 + 4) = v303;
            _os_log_impl(&dword_238060000, v272, v273, "Unable to fetch browser result for uuid: %s", v274, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v275);
            MEMORY[0x2383EA8A0](v275, -1, -1);
            MEMORY[0x2383EA8A0](v274, -1, -1);
            swift_unknownObjectRelease();

            (*(v281 + 8))(v378, v278);
          }

          else
          {

            swift_unknownObjectRelease();
            (*(v223 + 8))(v378, v358);
          }
        }

        else
        {
          v262 = v383 + v380[21];
          v263 = *v262;
          v264 = *(v262 + 1);
          v265 = swift_unknownObjectRetain();
          v263(v265);
          swift_unknownObjectRelease_n();
          (*(v377 + 8))(v378, v358);
        }
      }
    }

    v224 = *(v383 + v380[26] + 8);
    v225 = v354;
    (v375)(v354, v145, v127);
    sub_23808BE60(v225);
    v151(v225, v127);
    (*(v377 + 8))(v378, v48);
  }

  sub_238071284(v107, &unk_27DEED890, &qword_2381593F0);
  swift_deallocBox();
  v109 = v101;
  v110 = v371;
  (*(v101 + 16))(v371, v66, v48);
  v111 = sub_23815291C();
  v112 = v48;
  v113 = sub_2381550DC();
  if (os_log_type_enabled(v111, v113))
  {
    v114 = v66;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v384 = v116;
    *v115 = 136315138;
    sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0]);
    v117 = sub_23815559C();
    v119 = v118;
    v120 = *(v109 + 8);
    v120(v110, v112);
    v121 = sub_238085EAC(v117, v119, &v384);

    *(v115 + 4) = v121;
    _os_log_impl(&dword_238060000, v111, v113, "No endpoint for nodeID: %s, not handling tap", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x2383EA8A0](v116, -1, -1);
    MEMORY[0x2383EA8A0](v115, -1, -1);

    return (v120)(v114, v112);
  }

  else
  {

    v128 = *(v109 + 8);
    v128(v110, v112);
    return (v128)(v66, v112);
  }
}

uint64_t sub_23812ECB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23812ED10()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v43 = *(*(v1 - 1) + 64);
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v44 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 40);

  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = *(v0 + v3 + 8);

  v12 = *(v0 + v3 + 16);

  v13 = *(v0 + v3 + 32);

  v14 = *(v0 + v3 + 48);

  v15 = *(v0 + v3 + 56);

  v16 = v1[10];
  v17 = sub_238152E1C();
  (*(*(v17 - 8) + 8))(v0 + v3 + v16, v17);

  v18 = *(v0 + v3 + v1[14] + 8);

  v19 = *(v0 + v3 + v1[15]);

  v20 = *(v0 + v3 + v1[16] + 8);

  v21 = (v0 + v3 + v1[17]);
  v22 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = *v21;

    (*(v5 + 8))(&v21[*(v22 + 20)], v4);
    v24 = *&v21[*(v22 + 24) + 8];
  }

  v25 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930) + 28)];

  v26 = (v9 + v1[18]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_238085CA0(*v26, v27);
  }

  v28 = v26[2];

  v29 = *(v9 + v1[19] + 8);

  v30 = *(v9 + v1[21] + 8);

  v31 = (v9 + v1[22]);
  if (*v31)
  {
    v32 = v31[1];
  }

  v33 = (v9 + v1[23]);
  if (*v33)
  {
    v34 = v33[1];
  }

  v35 = *(v9 + v1[24] + 8);

  v36 = (v9 + v1[25]);
  v37 = v36[1];
  if (v37 >> 60 != 15)
  {
    sub_238085CA0(*v36, v37);
  }

  v38 = (v3 + v43 + v6) & ~v6;

  v39 = (v9 + v1[27]);
  v40 = *v39;

  v41 = v39[1];

  (*(v5 + 8))(v0 + v38, v4);

  return MEMORY[0x2821FE8E8](v0, v38 + v44, v2 | v6 | 7);
}

uint64_t sub_23812F090(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2381527EC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_238087150;

  return sub_238126454(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_23812F1F4()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v56 = *(*(v1 - 1) + 80);
  v2 = (v56 + 40) & ~v56;
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v55 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = v0 + v2;
  v10 = *(v0 + v2);

  v11 = *(v0 + v2 + 8);

  v12 = *(v0 + v2 + 16);

  v13 = *(v0 + v2 + 32);

  v14 = *(v0 + v2 + 48);

  v15 = *(v0 + v2 + 56);

  v16 = v1[10];
  v17 = sub_238152E1C();
  (*(*(v17 - 8) + 8))(v0 + v2 + v16, v17);

  v18 = *(v0 + v2 + v1[14] + 8);

  v19 = *(v0 + v2 + v1[15]);

  v20 = *(v0 + v2 + v1[16] + 8);

  v21 = (v0 + v2 + v1[17]);
  v22 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {
    v23 = *v21;

    (*(v5 + 8))(&v21[*(v22 + 20)], v4);
    v24 = *&v21[*(v22 + 24) + 8];
  }

  v25 = *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930) + 28)];

  v26 = (v9 + v1[18]);
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_238085CA0(*v26, v27);
  }

  v28 = v26[2];

  v29 = *(v9 + v1[19] + 8);

  v30 = *(v9 + v1[21] + 8);

  v31 = (v9 + v1[22]);
  if (*v31)
  {
    v32 = v31[1];
  }

  v33 = (v9 + v1[23]);
  if (*v33)
  {
    v34 = v33[1];
  }

  v57 = v5;
  v58 = v4;
  v35 = *(v9 + v1[24] + 8);

  v36 = (v9 + v1[25]);
  v37 = v36[1];
  if (v37 >> 60 != 15)
  {
    sub_238085CA0(*v36, v37);
  }

  v38 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v6 + v40 + 8) & ~v6;
  v42 = v6;
  v43 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = v56 | v42;

  v46 = (v9 + v1[27]);
  v47 = *v46;

  v48 = v46[1];

  v49 = *(v0 + v38 + 8);

  v50 = *(v0 + v39 + 8);

  v51 = *(v0 + v40);

  (*(v57 + 8))(v0 + v41, v58);
  v52 = *(v0 + v43 + 8);

  v53 = *(v0 + v44);

  return MEMORY[0x2821FE8E8](v0, v44 + 8, v45 | 7);
}

uint64_t sub_23812F5E0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_2381527EC() - 8);
  v10 = (*(v9 + 64) + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[2];
  v23 = v1[3];
  v22 = v1[4];
  v20 = *(v1 + v6 + 8);
  v21 = *(v1 + v6);
  v11 = v1 + v7;
  v13 = *(v1 + v7);
  v12 = *(v11 + 1);
  v14 = *(v1 + v8);
  v15 = *(v1 + v10);
  v16 = *(v1 + v10 + 8);
  v17 = *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_238088780;

  return sub_23812699C(a1, v24, v23, v22, v1 + v5, v21, v20, v13);
}

uint64_t sub_23812F7E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23812F828(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2381525EC();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2381525BC();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_23815270C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_23812F8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_23812A0A8(sub_23812F948, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_23812F930(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23812F9BC()
{
  v1 = sub_238152B5C();
  v2 = v0;
  result = 0;
  if (v0 >> 60 != 15)
  {
    sub_238085D80(v1, v0);
    v4 = sub_238131B34(v1, v2);
    if (v5)
    {
      v6 = v4;
      sub_238087244(v1, v2);
    }

    else
    {
      v11 = v1;
      v12 = v2;
      sub_238085D80(v1, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED930, &qword_23815EC70);
      if (swift_dynamicCast())
      {
        sub_23812F930(v9, v13);
        __swift_project_boxed_opaque_existential_1(v13, v14);
        v7 = sub_23815554C();
        sub_238087244(v1, v2);
        if (v7)
        {
          __swift_project_boxed_opaque_existential_1(v13, v14);
          sub_23815553C();
          sub_238087244(v1, v2);
          v8 = *&v9[0];
          __swift_destroy_boxed_opaque_existential_1(v13);
          return v8;
        }

        __swift_destroy_boxed_opaque_existential_1(v13);
      }

      else
      {
        sub_238087244(v1, v2);
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_238071284(v9, &unk_27DEED938, &qword_23815EC78);
      }

      v6 = sub_238131910(v1, v2);
    }

    sub_238087244(v1, v2);
    return v6;
  }

  return result;
}

uint64_t sub_23812FBA4()
{
  v1 = sub_238152BAC();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238131658();
  v8 = 0;
  v9 = v7 >> 60;
  if (v7 >> 60 == 15)
  {
    return v8;
  }

  v10 = v6;
  v11 = v7;
  v12 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
LABEL_9:
    if (v12 != 2)
    {
      v8 = 0;
      goto LABEL_15;
    }

    v13 = v1;
    v17 = *(v10 + 16);
    v18 = sub_2381525AC();
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = v18;
    v20 = sub_2381525DC();
    if (!__OFSUB__(v17, v20))
    {
      v1 = (v17 - v20 + v19);
      sub_2381525CC();
      if (v1)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v8 = v6;
  if (!v12)
  {
LABEL_15:
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v21 = sub_23815293C();
    __swift_project_value_buffer(v21, qword_27DEED910);
    (*(v2 + 16))(v5, v0, v1);
    v22 = sub_23815291C();
    v23 = sub_2381550CC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v9;
      v25 = v24;
      v26 = swift_slowAlloc();
      v35 = v10;
      v27 = v26;
      v37 = v26;
      *v25 = 136315394;
      v28 = sub_238152B3C();
      v29 = v1;
      v31 = v30;
      (*(v2 + 8))(v5, v29);
      v32 = sub_238085EAC(v28, v31, &v37);

      *(v25 + 4) = v32;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v8;
      _os_log_impl(&dword_238060000, v22, v23, "Signature for %s: %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x2383EA8A0](v27, -1, -1);
      MEMORY[0x2383EA8A0](v25, -1, -1);
      sub_238087244(v35, v11);
    }

    else
    {
      sub_238087244(v10, v11);

      (*(v2 + 8))(v5, v1);
    }

    return v8;
  }

  v13 = v1;
  if (v6 > v6 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = sub_2381525AC();
  if (v14)
  {
    v15 = v14;
    v16 = sub_2381525DC();
    if (__OFSUB__(v10, v16))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      sub_2381525CC();
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v1 = (v10 - v16 + v15);
    sub_2381525CC();
    if (v1)
    {
LABEL_13:
      v8 = *v1;
      v1 = v13;
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_26:
  result = sub_2381525CC();
  __break(1u);
  return result;
}

uint64_t sub_23812FEFC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_238154B8C();
  v30 = *(v1 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED928, &qword_23815EC68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_238154BDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238154BEC();
  v14 = sub_238152B5C();
  v16 = v15;

  if (v16 >> 60 == 15)
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    __swift_project_value_buffer(v17, qword_27DEED910);
    v18 = sub_23815291C();
    v19 = sub_2381550DC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v22 = sub_238154BEC();
      v24 = sub_238085EAC(v22, v23, &v32);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_238060000, v18, v19, "Failed to get value for key: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2383EA8A0](v21, -1, -1);
      MEMORY[0x2383EA8A0](v20, -1, -1);
    }

    v25 = sub_238154B6C();
    v26 = *(*(v25 - 8) + 56);
    v27 = v25;
    v28 = v31;

    return v26(v28, 1, 1, v27);
  }

  else
  {
    sub_238154BBC();
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_238154BCC();
    sub_238154B7C();
    sub_238087244(v14, v16);
    (*(v30 + 8))(v4, v1);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_238130414@<X0>(uint64_t a1@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = sub_238152BAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &uu[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (!sub_238152B6C())
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v17 = sub_23815293C();
    __swift_project_value_buffer(v17, qword_27DEED910);
    (*(v4 + 16))(v7, v1, v3);
    v18 = sub_23815291C();
    v19 = sub_2381550EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *uu = v21;
      *v20 = 136315138;
      v22 = sub_238152B3C();
      v24 = v23;
      (*(v4 + 8))(v7, v3);
      v25 = sub_238085EAC(v22, v24, uu);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_238060000, v18, v19, "Could not convert endpoint to nw_endpoint %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x2383EA8A0](v21, -1, -1);
      MEMORY[0x2383EA8A0](v20, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    goto LABEL_19;
  }

  *uu = 0;
  v32 = 0;
  nw_endpoint_get_service_identifier();
  if (uuid_is_null(uu))
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v8 = sub_23815293C();
    __swift_project_value_buffer(v8, qword_27DEED910);
    v9 = sub_23815291C();
    v10 = sub_2381550CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_238060000, v9, v10, "No UUID provided by nw_endpoint_get_service_identifier, attempting to generate one with the wifiSignature", v11, 2u);
      MEMORY[0x2383EA8A0](v11, -1, -1);
    }

    v12 = sub_23812FBA4();
    if (v13)
    {
      v14 = sub_23815291C();
      v15 = sub_2381550DC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_238060000, v14, v15, "No signature to create UUID with, unable to create UUID", v16, 2u);
        MEMORY[0x2383EA8A0](v16, -1, -1);
      }

      swift_unknownObjectRelease();
LABEL_19:
      v28 = sub_2381527EC();
      result = (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
      goto LABEL_20;
    }

    sub_2381313E4(v12, a1);
  }

  else
  {
    sub_2381527BC();
  }

  swift_unknownObjectRelease();
  v26 = sub_2381527EC();
  result = (*(*(v26 - 8) + 56))(a1, 0, 1, v26);
LABEL_20:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238130894()
{
  v1 = v0;
  v2 = sub_238154BAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_238152E1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277CD90A0])
  {
    (*(v8 + 96))(v11, v7);
    v12 = *(v11 + 1);

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
    sub_238154B9C();
    (*(v3 + 8))(v6, v2);
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEED910);
    v17 = sub_23815291C();
    v18 = sub_2381550FC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_238060000, v17, v18, "Successfully decoded custom data as WABrowserAgentInterface.DescriptorToAgent, returning true for isWifiAware", v19, 2u);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }

    sub_238085CA0(v14, v13);

    v20 = sub_238152E0C();
    (*(*(v20 - 8) + 8))(&v11[v15], v20);
    return 1;
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }
}

uint64_t sub_238130D2C()
{
  v1 = sub_238152E1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_238130894() & 1) == 0)
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEED910);
    v16 = sub_23815291C();
    v17 = sub_2381550DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238060000, v16, v17, "Attempted to fetch wifiAwareServiceName on a non-wifiAware descriptor, returning nil", v18, 2u);
      MEMORY[0x2383EA8A0](v18, -1, -1);
    }

    return 0;
  }

  (*(v2 + 16))(v5, v0, v1);
  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x277CD90A0])
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  (*(v2 + 96))(v5, v1);
  v6 = *v5;
  v7 = v5[1];
  sub_238085CA0(v5[2], v5[3]);
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v8 = sub_23815293C();
  __swift_project_value_buffer(v8, qword_27DEED910);

  v9 = sub_23815291C();
  v10 = sub_2381550FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_238085EAC(v6, v7, &v21);
    _os_log_impl(&dword_238060000, v9, v10, "Successfully got wifiAwareServiceName from descriptor: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2383EA8A0](v12, -1, -1);
    MEMORY[0x2383EA8A0](v11, -1, -1);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0) + 64);
  v14 = sub_238152E0C();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  return v6;
}

uint64_t sub_23813109C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED910);
  __swift_project_value_buffer(v0, qword_27DEED910);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_238131128(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_238152BAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238152B6C())
  {
    if (a2())
    {
      v9 = sub_238154DEC();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return v9;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_27DEEA118 != -1)
    {
      swift_once();
    }

    v14 = sub_23815293C();
    __swift_project_value_buffer(v14, qword_27DEED910);
    (*(v5 + 16))(v8, a1, v4);
    v15 = sub_23815291C();
    v16 = sub_2381550EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v19 = sub_238152B3C();
      v21 = v20;
      (*(v5 + 8))(v8, v4);
      v22 = sub_238085EAC(v19, v21, &v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_238060000, v15, v16, "Could not convert endpoint to nw_endpoint %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2383EA8A0](v18, -1, -1);
      MEMORY[0x2383EA8A0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }

  return 0;
}

void sub_2381313E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2381527EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2381527BC();
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v9 = sub_23815293C();
  __swift_project_value_buffer(v9, qword_27DEED910);
  (*(v5 + 16))(v8, a2, v4);
  v10 = sub_23815291C();
  v11 = sub_2381550CC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    v14 = sub_23815279C();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_238085EAC(v14, v16, &v19);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a1;
    _os_log_impl(&dword_238060000, v10, v11, "Created UUID: %s from %ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2383EA8A0](v13, -1, -1);
    MEMORY[0x2383EA8A0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_238131658()
{
  v1 = sub_238152BAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA118 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEED910);
  (*(v2 + 16))(v5, v0, v1);
  v7 = sub_23815291C();
  v8 = sub_2381550CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_238152B3C();
    v13 = v12;
    (*(v2 + 8))(v5, v1);
    v14 = sub_238085EAC(v11, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_238060000, v7, v8, "Attempted to fetch signature data for %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return sub_238152B5C();
}

void *sub_23813189C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAD18, &qword_238158C98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_238131910(uint64_t a1, unint64_t a2)
{
  sub_238085D80(a1, a2);
  v4 = *(sub_2381319B8(a1, a2) + 16);
  v5 = sub_238154D5C();

  return v5;
}

uint64_t sub_23813197C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_238154D5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2381319B8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23815276C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_238085CA0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_23813189C(v11, 0);
      v15 = sub_2381526FC();
      sub_238085CA0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_238131B34(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2381525AC();
  if (a1)
  {
    a1 = sub_2381525DC();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2381525AC() || !__OFSUB__(v5, sub_2381525DC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2381525CC();
LABEL_16:
  result = sub_238154D5C();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_238131E44(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = (a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  v5 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss);
  v6 = *(a1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss + 8);
  *v4 = v3;
  v4[1] = v2;

  return sub_23807A454(v5);
}

uint64_t sub_238131EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238132E40();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_238131F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238132E40();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_238131FA8()
{
  sub_238132E40();
  sub_23815408C();
  __break(1u);
}

id sub_238131FD0()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController;
  v2 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController];
  }

  else
  {
    v4 = sub_238132034(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_238132034(char *a1)
{
  type metadata accessor for CNDDUISecureContactViewController();
  v2 = [swift_getObjCClassFromMetadata() viewControllerForContact_];
  [v2 setAllowsEditing_];
  [v2 setActions_];
  [v2 setDisplayMode_];
  [v2 setDelegate_];

  sub_23807CB28(1);
  v3 = type metadata accessor for SnapshottingContactViewController();
  v38 = v3;
  aBlock[0] = a1;
  v4 = a1;
  v5 = sub_238154C8C();

  if (v3)
  {
    v6 = __swift_project_boxed_opaque_existential_1(aBlock, v3);
    v7 = *(v3 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_2381555BC();
    (*(v7 + 8))(v10, v3);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v13 = [v12 initWithTitle:v5 style:2 target:v11 action:{sel_didTapDone, aBlock[0]}];

  swift_unknownObjectRelease();
  v14 = v2;
  v15 = [v14 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEC040, &unk_23815AF90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2381590E0;
  *(v16 + 32) = v13;
  sub_23807A3F8(0, &qword_27DEED9F8, 0x277D751E0);
  v17 = v13;
  v18 = sub_238154ECC();

  [v15 setLeftBarButtonItems_];

  v19 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  result = [v19 view];
  if (result)
  {
    v21 = result;
    v22 = [objc_opt_self() mainScreen];
    [v22 bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    [v21 setFrame_];
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v19;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_238132ECC;
    *(v33 + 24) = v32;
    v39 = sub_23807BEF4;
    v40 = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23813264C;
    v38 = &block_descriptor_9;
    v34 = _Block_copy(aBlock);
    v35 = v19;

    [v31 performWithoutAnimation_];

    _Block_release(v34);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v35;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2381324F8(void *a1)
{
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
  result = [a1 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = result;
  [result setNeedsLayout];

  result = [a1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = result;
  [result layoutIfNeeded];

  [a1 beginAppearanceTransition:1 animated:0];

  return [a1 endAppearanceTransition];
}

void sub_23813275C(char a1)
{
  if (a1)
  {
    v2 = sub_238131FD0();
    [v1 addChildViewController_];

    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController;
      v6 = [*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] view];
      if (v6)
      {
        v7 = v6;
        [v4 addSubview_];

        v8 = [*&v1[v5] view];
        if (v8)
        {
          v9 = v8;
          [v8 setAlpha_];

          v10 = objc_opt_self();
          v11 = swift_allocObject();
          *(v11 + 16) = v1;
          v42 = sub_23813331C;
          v43 = v11;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_238106D10;
          v41 = &block_descriptor_35;
          v12 = _Block_copy(&aBlock);
          v13 = v1;

          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          v42 = sub_238133324;
          v43 = v14;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_23811A13C;
          v41 = &block_descriptor_41;
          v15 = _Block_copy(&aBlock);
          v16 = v13;

          [v10 animateWithDuration:v12 animations:v15 completion:0.3];
          _Block_release(v15);
          _Block_release(v12);
          return;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView;
  [*&v1[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] removeFromSuperview];
  v18 = sub_238131FD0();
  v19 = [v18 view];

  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = [v19 snapshotViewAfterScreenUpdates_];

  v21 = *&v1[v17];
  *&v1[v17] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = v22;
    v24 = [v1 view];
    if (!v24)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v25 = v24;
    [v24 addSubview_];
  }

  v26 = *&v1[v17];
  if (v26)
  {
    v27 = objc_opt_self();
    v37 = v26;
    v28 = [v27 mainScreen];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v37 setFrame_];
  }
}

void sub_238132B28()
{
  v0 = sub_238131FD0();
  v1 = [v0 view];

  if (v1)
  {
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id sub_238132CF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_238132DEC()
{
  result = qword_27DEED9E0;
  if (!qword_27DEED9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED9E0);
  }

  return result;
}

unint64_t sub_238132E40()
{
  result = qword_27DEED9E8;
  if (!qword_27DEED9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEED9E8);
  }

  return result;
}

uint64_t sub_238132E94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238132EFC()
{
  v0 = sub_2381549FC();
  v28 = *(v0 - 8);
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238154A2C();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238154A4C();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  sub_23807A3F8(0, &qword_27DEEBA50, 0x277D85C78);
  v16 = sub_23815517C();
  sub_238154A3C();
  sub_238154A6C();
  v17 = *(v9 + 8);
  v17(v13, v8);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v25;
  aBlock[4] = sub_238133278;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238106D10;
  aBlock[3] = &block_descriptor_29;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  sub_238154A0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2380D0B70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEECFC0, &qword_23815ABE0);
  sub_2381332B8();
  sub_23815537C();
  MEMORY[0x2383E9780](v15, v7, v3, v20);
  _Block_release(v20);

  (*(v28 + 8))(v3, v0);
  (*(v26 + 8))(v7, v27);
  return (v17)(v15, v24);
}

void sub_238133278()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase);
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase) = 1;
  if ((v2 & 1) == 0)
  {
    sub_23813275C(1);
  }
}

unint64_t sub_2381332B8()
{
  result = qword_27DEEBC90;
  if (!qword_27DEEBC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEECFC0, &qword_23815ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEBC90);
  }

  return result;
}

uint64_t sub_238133364(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2381333B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV11HeaderStateOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 - 1;
  if (v2 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_SaySSG7symbols_SS4textSS13secondaryLinetSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI17NameDropViewModelV20ContactProviderStateOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2381334BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238133504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_23813358C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v4 = *a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    sub_23813393C();
    return sub_23815523C() & 1;
  }

  return result;
}

BOOL sub_238133638(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_238133668@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_238133694@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_238133780@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23813379C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_238133988(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_2381337E0()
{
  result = qword_27DEEDA00;
  if (!qword_27DEEDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA00);
  }

  return result;
}

unint64_t sub_238133838()
{
  result = qword_27DEEDA08;
  if (!qword_27DEEDA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA08);
  }

  return result;
}

unint64_t sub_238133890()
{
  result = qword_27DEEDA10;
  if (!qword_27DEEDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA10);
  }

  return result;
}

unint64_t sub_2381338E8()
{
  result = qword_27DEEDA18;
  if (!qword_27DEEDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA18);
  }

  return result;
}

unint64_t sub_23813393C()
{
  result = qword_27DEEBFF0;
  if (!qword_27DEEBFF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEEBFF0);
  }

  return result;
}

uint64_t sub_238133988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_2381339C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238133A28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_238133A80(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HighlightedStringView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x96)
  {
    goto LABEL_17;
  }

  if (a2 + 65386 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65386 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65386;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65386;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65386;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6B;
  v8 = v6 - 107;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for HighlightedStringView(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65386 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65386 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x96)
  {
    v4 = 0;
  }

  if (a2 > 0x95)
  {
    v5 = ((a2 - 150) >> 16) + 1;
    *result = a2 - 150;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 106;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238133C48@<X0>(__int16 a1@<W0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v46 = a2;
  v44 = HIBYTE(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEAC30, &qword_2381584F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA20, &qword_23815F360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA28, &qword_23815F368);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = &v42 - v14;
  v15 = sub_23815264C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_23815260C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v45 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  sub_23807CB28(v2);
  sub_23815263C();
  sub_23815261C();
  v48[0] = sub_23807CB28(v44);
  v48[1] = v24;
  v25 = sub_2381527FC();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_2381340C4();
  sub_2380704A0();
  sub_23815267C();
  sub_238071284(v6, &unk_27DEEAC30, &qword_2381584F0);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v26 = &qword_27DEEDA20;
    v27 = &qword_23815F360;
    v28 = v10;
  }

  else
  {
    v29 = v43;
    sub_23813411C(v10, v43);
    v30 = [objc_opt_self() systemBlueColor];
    v31 = sub_23815465C();
    sub_23813418C();
    v32 = sub_23815262C();
    v47 = v31;
    sub_2381341F0();
    sub_23815265C();
    v32(v48, 0);
    v26 = &qword_27DEEDA28;
    v27 = &qword_23815F368;
    v28 = v29;
  }

  sub_238071284(v28, v26, v27);
  (*(v18 + 16))(v45, v23, v17);
  v33 = sub_23815437C();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = (*(v18 + 8))(v23, v17);
  v41 = v46;
  *v46 = v33;
  v41[1] = v35;
  *(v41 + 16) = v37 & 1;
  v41[3] = v39;
  return result;
}

unint64_t sub_2381340C4()
{
  result = qword_27DEEDA30;
  if (!qword_27DEEDA30)
  {
    sub_23815260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA30);
  }

  return result;
}

uint64_t sub_23813411C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDA28, &qword_23815F368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23813418C()
{
  result = qword_27DEEDA38;
  if (!qword_27DEEDA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDA28, &qword_23815F368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA38);
  }

  return result;
}

unint64_t sub_2381341F0()
{
  result = qword_27DEEDA40;
  if (!qword_27DEEDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEDA40);
  }

  return result;
}

uint64_t sub_238134264(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_23813445C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for _DDDevicePickerView()
{
  result = qword_27DEEDA70;
  if (!qword_27DEEDA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23813468C()
{
  sub_238134A04();
  if (v0 <= 0x3F)
  {
    sub_238134A98();
    if (v1 <= 0x3F)
    {
      sub_238134C78(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_238134B2C(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          sub_238134C14(319, &qword_27DEEA900, &qword_27DEEA850, &qword_2381580D8, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_238134C78(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_238134B2C(319, &qword_27DEEA358, MEMORY[0x277CDFAA0]);
              if (v6 <= 0x3F)
              {
                sub_238134B2C(319, &qword_27DEEA910, MEMORY[0x277CDF3E0]);
                if (v7 <= 0x3F)
                {
                  sub_23807A964();
                  if (v8 <= 0x3F)
                  {
                    sub_238134B80();
                    if (v9 <= 0x3F)
                    {
                      sub_23807A9F8();
                      if (v10 <= 0x3F)
                      {
                        sub_23812A958();
                        if (v11 <= 0x3F)
                        {
                          sub_238134C14(319, &qword_27DEEDA98, &qword_27DEEBB70, &qword_238159970, MEMORY[0x277CE10B8]);
                          if (v12 <= 0x3F)
                          {
                            sub_238134C78(319, &unk_27DEECD90, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_238067930();
                              if (v14 <= 0x3F)
                              {
                                sub_238134C78(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for CGSize(319);
                                  if (v16 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_238134A04()
{
  if (!qword_27DEEDA80)
  {
    type metadata accessor for DeviceBrowserViewModel(255);
    sub_23814F050(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEDA80);
    }
  }
}

void sub_238134A98()
{
  if (!qword_27DEEDA88)
  {
    type metadata accessor for _DDContactInfoCache(255);
    sub_23814F050(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEDA88);
    }
  }
}

void sub_238134B2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_238134B80()
{
  if (!qword_27DEEDA90)
  {
    type metadata accessor for _DDWirelessSettingsController();
    sub_23814F050(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEDA90);
    }
  }
}

void sub_238134C14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_238134C78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_238134D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_238153EBC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_238153ECC();
}

uint64_t sub_238134E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_238153EBC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_238153ECC();
}

uint64_t sub_238134F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2380712E4(a3, v24 - v10, &qword_27DEEBA00, &qword_23815B4A0);
  v12 = sub_238154FBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238071284(v11, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_238154F3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_238154D3C() + 32;
      sub_23815362C();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  sub_23815362C();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2381351E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2380712E4(a3, v24 - v10, &qword_27DEEBA00, &qword_23815B4A0);
  v12 = sub_238154FBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238071284(v11, &qword_27DEEBA00, &qword_23815B4A0);
  }

  else
  {
    sub_238154FAC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_238154F3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_238154D3C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238071284(a3, &qword_27DEEBA00, &qword_23815B4A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

__n128 sub_23813549C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  result = v8;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_238135540(__int128 *a1, void **a2)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = *(a1 + 64);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23808E888(&v14, v12);
  sub_238152A8C();

  v12[2] = v9;
  v12[3] = v10;
  v13 = v11;
  v12[0] = v7;
  v12[1] = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v16;
  v10 = v17;
  v11 = v18;
  v7 = v14;
  v8 = v15;
  sub_23808E888(&v14, v6);
  v4;
  sub_238152A9C();
  sub_238088B04(v12);
  sub_23808E828(v12);
  return sub_23808E828(&v14);
}

uint64_t sub_238135680(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_23815486C();
      v5 = sub_238154F0C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_23815486C();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_2381357DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_23813585C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

uint64_t sub_2381358CC()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEEDA48);
  __swift_project_value_buffer(v0, qword_27DEEDA48);
  v1 = _DDUICoreLog();
  return sub_23815294C();
}

uint64_t sub_238135928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDDevicePickerView();
  sub_2380712E4(v1 + *(v12 + 28), v11, &qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153A0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238135B30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for _DDDevicePickerView();
  sub_2380712E4(v1 + *(v12 + 32), v11, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v11, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  v14 = *v11;
  sub_2381550EC();
  v15 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_238135D18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for _DDDevicePickerView();
  sub_2380712E4(v1 + *(v12 + 36), v11, &unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_23807121C(v11, a1, &qword_27DEEA850, &qword_2381580D8);
  }

  v14 = *v11;
  sub_2381550EC();
  v15 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

double sub_238135F00()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for _DDDevicePickerView() + 40));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_2381550EC();
  v9 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  sub_2380700D8(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_23813605C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDDevicePickerView();
  sub_2380712E4(v1 + *(v12 + 44), v11, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153A2C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238136264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDDevicePickerView();
  sub_2380712E4(v1 + *(v12 + 48), v11, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2381537EC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void *sub_23813646C()
{
  result = sub_238154F0C();
  result[2] = 6;
  result[4] = 9142498;
  result[5] = 0xA300000000000000;
  result[6] = 9142498;
  result[7] = 0xA300000000000000;
  result[8] = 9142498;
  result[9] = 0xA300000000000000;
  result[10] = 9142498;
  result[11] = 0xA300000000000000;
  result[12] = 9142498;
  result[13] = 0xA300000000000000;
  result[14] = 9142498;
  result[15] = 0xA300000000000000;
  qword_27DEEDA60 = result;
  return result;
}

uint64_t sub_2381364CC()
{
  v1 = sub_238153F1C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v49 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v46[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v48 = &v46[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v46[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v46[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v46[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v46[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v46[-v24];
  v54 = v0;
  sub_238135B30(&v46[-v24]);
  v26 = v2[13];
  v52 = *MEMORY[0x277CE0560];
  v51 = v26;
  v26(v23);
  v50 = v2[7];
  v50(v23, 0, 1, v1);
  v53 = v5;
  v27 = *(v5 + 48);
  sub_2380712E4(v25, v10, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v23, &v10[v27], &qword_27DEEA850, &qword_2381580D8);
  v60 = v2;
  v28 = v2[6];
  if (v28(v10, 1, v1) == 1)
  {
    v58 = v28;
    sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
    if (v58(&v10[v27], 1, v1) == 1)
    {
      sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
      goto LABEL_8;
    }

LABEL_6:
    v30 = v10;
LABEL_14:
    sub_238071284(v30, &qword_27DEEA848, &qword_2381580D0);
    goto LABEL_15;
  }

  v29 = v59;
  sub_2380712E4(v10, v59, &qword_27DEEA850, &qword_2381580D8);
  if (v28(&v10[v27], 1, v1) == 1)
  {
    sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
    (v60[1])(v29, v1);
    goto LABEL_6;
  }

  v58 = v28;
  v31 = &v10[v27];
  v32 = v49;
  (v60[4])(v49, v31, v1);
  sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570]);
  v47 = sub_238154C7C();
  v33 = v60[1];
  v33(v32, v1);
  sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
  v33(v59, v1);
  sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
  if ((v47 & 1) == 0)
  {
LABEL_15:
    v39 = 0;
    return v39 & 1;
  }

LABEL_8:
  v34 = v56;
  sub_238135D18(v56);
  v35 = v55;
  v51(v55, v52, v1);
  v50(v35, 0, 1, v1);
  v36 = *(v53 + 48);
  v37 = v57;
  sub_2380712E4(v34, v57, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v35, &v37[v36], &qword_27DEEA850, &qword_2381580D8);
  v38 = v58;
  if (v58(v37, 1, v1) != 1)
  {
    v40 = v48;
    sub_2380712E4(v37, v48, &qword_27DEEA850, &qword_2381580D8);
    if (v38(&v37[v36], 1, v1) != 1)
    {
      v42 = v35;
      v43 = v60;
      v44 = v49;
      (v60[4])(v49, &v37[v36], v1);
      sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570]);
      v39 = sub_238154C7C();
      v45 = v43[1];
      v45(v44, v1);
      sub_238071284(v42, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
      v45(v40, v1);
      sub_238071284(v37, &qword_27DEEA850, &qword_2381580D8);
      return v39 & 1;
    }

    sub_238071284(v35, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
    (v60[1])(v40, v1);
    goto LABEL_13;
  }

  sub_238071284(v35, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v34, &qword_27DEEA850, &qword_2381580D8);
  if (v38(&v37[v36], 1, v1) != 1)
  {
LABEL_13:
    v30 = v37;
    goto LABEL_14;
  }

  sub_238071284(v37, &qword_27DEEA850, &qword_2381580D8);
  v39 = 1;
  return v39 & 1;
}

uint64_t sub_238136C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for _DDDevicePickerView();
  v4 = *(v3 - 8);
  v63 = v3 - 8;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = v6;
  v8 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAE0, &unk_23815F450);
  v62 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAD8, &qword_23815F448);
  v60 = *(v59 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v64 = &v39 - v14;
  *v12 = sub_238153DEC();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB48, &unk_23815F488);
  sub_238137478(v1, &v12[*(v15 + 44)]);
  sub_23814EF88(v1, v8, type metadata accessor for _DDDevicePickerView);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = *(v4 + 80);
  v18 = swift_allocObject();
  sub_23814E8B0(v8, v18 + v16, type metadata accessor for _DDDevicePickerView);
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAF8, &qword_23815F460) + 36)];
  v48 = v12;
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = sub_238149C38;
  *(v19 + 3) = v18;
  v43 = v2;
  sub_23814EF88(v2, v8, type metadata accessor for _DDDevicePickerView);
  v20 = swift_allocObject();
  sub_23814E8B0(v8, v20 + v16, type metadata accessor for _DDDevicePickerView);
  v21 = &v12[*(v9 + 36)];
  *v21 = sub_238149C50;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  *&v70 = sub_23807CB28(96);
  *(&v70 + 1) = v22;
  sub_2380704A0();
  v54 = sub_23815438C();
  v53 = v23;
  v49 = v24;
  v52 = v25;
  v26 = v2 + *(v63 + 84);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v65) = v27;
  *(&v65 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v44 = *(&v70 + 1);
  v42 = v70;
  v45 = v71;
  sub_23814EF88(v2, v8, type metadata accessor for _DDDevicePickerView);
  v29 = swift_allocObject();
  sub_23814E8B0(v8, v29 + v16, type metadata accessor for _DDDevicePickerView);
  v57 = type metadata accessor for _DDDevicePickerView;
  sub_23814EF88(v2, v8, type metadata accessor for _DDDevicePickerView);
  v58 = v7;
  v55 = v17;
  v40 = swift_allocObject();
  v56 = type metadata accessor for _DDDevicePickerView;
  sub_23814E8B0(v8, v40 + v16, type metadata accessor for _DDDevicePickerView);
  sub_23814EF88(v2, v8, type metadata accessor for _DDDevicePickerView);
  v41 = swift_allocObject();
  sub_23814E8B0(v8, v41 + v16, type metadata accessor for _DDDevicePickerView);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v47 = sub_23814965C();
  v50 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
  v51 = sub_23807B04C();
  LOBYTE(v17) = v49;
  v30 = v54;
  v31 = v53;
  v32 = v48;
  sub_23815450C();

  sub_238070490(v30, v31, v17 & 1);

  sub_238071284(v32, &qword_27DEEDAE0, &unk_23815F450);

  v33 = v43;
  v34 = *(v43 + *(v63 + 72) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v67 = v72;
  v68 = v73;
  v69 = v74;
  v65 = v70;
  v66 = v71;
  sub_23814EF88(v33, v8, v57);
  v35 = swift_allocObject();
  sub_23814E8B0(v8, v35 + v16, v56);
  *&v70 = v62;
  *(&v70 + 1) = v46;
  *&v71 = MEMORY[0x277CE0BD8];
  *(&v71 + 1) = &type metadata for _DDPinEntryAlertView;
  *&v72 = v47;
  *(&v72 + 1) = v50;
  *&v73 = MEMORY[0x277CE0BC8];
  *(&v73 + 1) = v51;
  swift_getOpaqueTypeConformance2();
  sub_2380D0648();
  v36 = v59;
  v37 = v64;
  sub_23815455C();

  v72 = v67;
  v73 = v68;
  v74 = v69;
  v70 = v65;
  v71 = v66;
  sub_23808E828(&v70);
  return (*(v60 + 8))(v37, v36);
}

uint64_t sub_238137478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v226 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB60, &qword_23815F540);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v227 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v225 = &v190 - v7;
  *&v230 = type metadata accessor for _DDDevicePickerView();
  v210 = *(v230 - 8);
  v8 = *(v210 + 64);
  MEMORY[0x28223BE20](v230);
  v211 = v9;
  v212 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB68, &qword_23815F548);
  v214 = *(v218 - 8);
  v10 = *(v214 + 64);
  MEMORY[0x28223BE20](v218);
  v213 = &v190 - v11;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB70, &qword_23815F550);
  v12 = *(*(v215 - 8) + 64);
  MEMORY[0x28223BE20](v215);
  v216 = &v190 - v13;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB78, &qword_23815F558);
  v14 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v217 = &v190 - v15;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB80, &qword_23815F560);
  v16 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219);
  v220 = &v190 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB88, &qword_23815F568);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v224 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v232 = &v190 - v22;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB90, &unk_23815F570);
  v23 = *(*(v209 - 8) + 64);
  MEMORY[0x28223BE20](v209);
  v201 = &v190 - v24;
  v25 = sub_2381547FC();
  v197 = *(v25 - 8);
  v198 = v25;
  v26 = *(v197 + 64);
  MEMORY[0x28223BE20](v25);
  v196 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0);
  v28 = *(*(v195 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v195);
  v199 = &v190 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v194 = &v190 - v32;
  MEMORY[0x28223BE20](v31);
  v200 = &v190 - v33;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB98, &qword_23815F580);
  v34 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v36 = &v190 - v35;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBA0, &qword_23815F588);
  v37 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v39 = &v190 - v38;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBA8, &qword_23815F590);
  v223 = *(v229 - 8);
  v40 = *(v223 + 64);
  MEMORY[0x28223BE20](v229);
  v42 = &v190 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBB0, &qword_23815F598);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v193 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v190 = &v190 - v48;
  MEMORY[0x28223BE20](v47);
  v204 = &v190 - v49;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBB8, &qword_23815F5A0);
  v50 = *(*(v207 - 8) + 64);
  MEMORY[0x28223BE20](v207);
  v208 = &v190 - v51;
  *&v203 = sub_238152F3C();
  *&v202 = *(v203 - 8);
  v52 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v54 = &v190 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBC0, &qword_23815F5A8);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v58 = &v190 - v57;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBC8, &qword_23815F5B0);
  v59 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v61 = &v190 - v60;
  *&v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBD0, &qword_23815F5B8);
  v228 = *(v233 - 8);
  v62 = *(v228 + 64);
  MEMORY[0x28223BE20](v233);
  v206 = &v190 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBD8, &qword_23815F5C0);
  v65 = *(*(v64 - 8) + 64);
  v66 = MEMORY[0x28223BE20](v64 - 8);
  v231 = &v190 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v234 = &v190 - v68;
  v235 = a1;
  v69 = sub_238139870();
  v222 = sub_2381533AC();
  v70 = MEMORY[0x2383E79D0]();
  v71 = sub_23815337C();

  if ((((v69 - 3) < 0xFEu) & ~v71) != 0 || v69 == 3)
  {
    (*(v228 + 56))(v234, 1, 1, v233);
    v79 = v235;
  }

  else
  {
    v72 = v235;
    v73 = *(v235 + 8);
    v74 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType;
    if (*(v73 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 2)
    {
      *v58 = sub_238153DEC();
      *(v58 + 1) = 0;
      v58[16] = 1;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCA8, &qword_23815F7D0);
      sub_2381433E4(v72, &v58[*(v75 + 44)]);
      sub_238139870();
      if (*(v73 + v74) == 1 && (sub_238152F1C(), v76 = sub_238152EEC(), (*(v202 + 8))(v54, v203), (v76 & 1) != 0))
      {
        v77 = 0;
        v78 = 0x4024000000000000;
      }

      else
      {
        v78 = 0x4030000000000000;
        v77 = 0x4030000000000000;
      }

      v82 = v206;
      v83 = sub_2381540FC();
      sub_23807121C(v58, v61, &qword_27DEEDBC0, &qword_23815F5A8);
      v84 = &v61[*(v205 + 36)];
      *v84 = v83;
      *(v84 + 1) = v78;
      *(v84 + 2) = 0x4030000000000000;
      *(v84 + 3) = v77;
      *(v84 + 4) = 0x4030000000000000;
      v84[40] = 0;
      sub_2380712E4(v61, v208, &qword_27DEEDBC8, &qword_23815F5B0);
      swift_storeEnumTagMultiPayload();
      sub_23814BF64();
      sub_2380711D4(&qword_27DEEDCA0, &qword_27DEEDB90, &unk_23815F570);
      sub_238153ECC();
      v85 = v61;
      v86 = &qword_27DEEDBC8;
      v87 = &qword_23815F5B0;
    }

    else
    {
      sub_238139B64(v42);
      if (sub_238139870() == 2)
      {
        v80 = sub_2381540FC();
        sub_2380712E4(v42, v39, &qword_27DEEDBA8, &qword_23815F590);
        v39[*(v192 + 36)] = v80;
        sub_2380712E4(v39, v36, &qword_27DEEDBA0, &qword_23815F588);
        swift_storeEnumTagMultiPayload();
        sub_23814BDFC();
        sub_23814BEB4();
        v81 = v190;
        sub_238153ECC();
        sub_238071284(v39, &qword_27DEEDBA0, &qword_23815F588);
      }

      else
      {
        sub_2380712E4(v42, v36, &qword_27DEEDBA8, &qword_23815F590);
        swift_storeEnumTagMultiPayload();
        sub_23814BDFC();
        sub_23814BEB4();
        v81 = v190;
        sub_238153ECC();
      }

      v88 = v196;
      sub_238071284(v42, &qword_27DEEDBA8, &qword_23815F590);
      sub_23807121C(v81, v204, &qword_27DEEDBB0, &qword_23815F598);
      sub_2381547EC();
      v89 = sub_2381540EC();
      sub_238152EFC();
      v90 = sub_238152EEC();
      (*(v202 + 8))(v54, v203);
      v91 = 0uLL;
      v92 = 0uLL;
      if (v90)
      {
        sub_23815377C();
        *(&v92 + 1) = v93;
        *(&v91 + 1) = v94;
      }

      v202 = v92;
      v203 = v91;
      v95 = v194;
      (*(v197 + 32))(v194, v88, v198);
      v96 = v95 + *(v195 + 36);
      *v96 = v89;
      v97 = v203;
      *(v96 + 24) = v202;
      *(v96 + 8) = v97;
      *(v96 + 40) = (v90 & 1) == 0;
      v98 = v200;
      sub_23807121C(v95, v200, &qword_27DEEC8F0, &qword_23815C8C0);
      v99 = v204;
      v100 = v193;
      sub_2380712E4(v204, v193, &qword_27DEEDBB0, &qword_23815F598);
      v101 = v199;
      sub_2380712E4(v98, v199, &qword_27DEEC8F0, &qword_23815C8C0);
      v102 = v201;
      sub_2380712E4(v100, v201, &qword_27DEEDBB0, &qword_23815F598);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC88, &qword_23815F7C8);
      sub_2380712E4(v101, v102 + *(v103 + 48), &qword_27DEEC8F0, &qword_23815C8C0);
      sub_238071284(v101, &qword_27DEEC8F0, &qword_23815C8C0);
      sub_238071284(v100, &qword_27DEEDBB0, &qword_23815F598);
      sub_2380712E4(v102, v208, &qword_27DEEDB90, &unk_23815F570);
      swift_storeEnumTagMultiPayload();
      sub_23814BF64();
      sub_2380711D4(&qword_27DEEDCA0, &qword_27DEEDB90, &unk_23815F570);
      v82 = v206;
      sub_238153ECC();
      sub_238071284(v102, &qword_27DEEDB90, &unk_23815F570);
      sub_238071284(v98, &qword_27DEEC8F0, &qword_23815C8C0);
      v85 = v99;
      v86 = &qword_27DEEDBB0;
      v87 = &qword_23815F598;
    }

    sub_238071284(v85, v86, v87);
    v104 = v234;
    v79 = v235;
    sub_23807121C(v82, v234, &qword_27DEEDBD0, &qword_23815F5B8);
    (*(v228 + 56))(v104, 0, 1, v233);
  }

  v105 = *(v79 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v106 = *(v267 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v107 = *(v267 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v108 = *(v267 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v109 = *(v267 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *&v233 = v105;
  sub_238152A8C();

  v110 = *(v267 + 16);

  v228 = v109;
  v111 = v235;
  v112 = v106 | v107 | v108 | v109 | v110;
  v113 = v112 != 0;
  LODWORD(v209) = v112 == 0;
  v114 = *(v235 + *(v230 + 56) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v115 = v267;
  v208 = v114;
  if (v267 == 8 || (v116 = *(v233 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType), v116 == 2))
  {
    if (v113)
    {
LABEL_25:
      LODWORD(v207) = v110 != 0;
      LODWORD(v206) = v228 != 0;
      v135 = sub_23813A3DC();
      v136 = v209;
      v137 = v135 & v209;
      v138 = v212;
      sub_23814EF88(v111, v212, type metadata accessor for _DDDevicePickerView);
      v139 = (*(v210 + 80) + 17) & ~*(v210 + 80);
      v140 = v139 + v211;
      v141 = swift_allocObject();
      *(v141 + 16) = v106 != 0;
      sub_23814E8B0(v138, v141 + v139, type metadata accessor for _DDDevicePickerView);
      v142 = (v141 + v140);
      *v142 = v107 != 0;
      v142[1] = v108 != 0;
      v142[2] = v207;
      v142[3] = v206;
      v142[4] = v136;
      v142[5] = v137 & 1;
      *&v264[0] = sub_23814B9F8;
      *(&v264[0] + 1) = v141;
      sub_238154B0C();
      sub_238154AFC();
      v143 = sub_2380A0C84();
      *(&v268 + 1) = type metadata accessor for DevicePickerViewDropDelegate();
      *&v269[0] = sub_23814F050(&qword_27DEEDBE0, type metadata accessor for DevicePickerViewDropDelegate);
      *&v267 = v143;
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBE8, &qword_23815F778);
      v145 = sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778);
      v146 = v213;
      sub_23815453C();

      __swift_destroy_boxed_opaque_existential_1(&v267);
      v147 = v214;
      v148 = v218;
      (*(v214 + 16))(v216, v146, v218);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
      sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
      *&v267 = v144;
      *(&v267 + 1) = v145;
      swift_getOpaqueTypeConformance2();
      v149 = v217;
      sub_238153ECC();
      sub_2380712E4(v149, v220, &qword_27DEEDB78, &qword_23815F558);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
      sub_23814BAB4();
      sub_23814BB6C();
      sub_238153ECC();
      v134 = v233;
      sub_238071284(v149, &qword_27DEEDB78, &qword_23815F558);
      (*(v147 + 8))(v146, v148);
      goto LABEL_29;
    }

    if (sub_23813A3DC() & 1) != 0 || (v117 = v111 + *(v230 + 80), v118 = *v117, v119 = *(v117 + 8), LOBYTE(v267) = v118, *(&v267 + 1) = v119, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0), sub_23815470C(), (v264[0]))
    {
      if ((sub_23813A3DC() & 1) == 0)
      {
        v120 = v111 + *(v230 + 80);
        v121 = *v120;
        v122 = *(v120 + 8);
        LOBYTE(v267) = v121;
        *(&v267 + 1) = v122;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
        sub_23815470C();
        if (LOBYTE(v264[0]) == 1)
        {
          v123 = *(v233 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
          v124 = sub_2381540EC();
          LOBYTE(v254) = 0;
          *(&v254 + 1) = v114;
          LOBYTE(v255) = v123;
          BYTE8(v255) = v124;
          v256 = 0u;
          v257 = 0u;
          v258 = 1;
          v237[64] = 1;
          memset(&v237[32], 0, 32);
          *v237 = v254;
          *&v237[16] = v255;
          LOBYTE(v239) = 1;
          v261 = 0u;
          v262 = 0u;
          v263 = 1;
          v259 = v254;
          v260 = v255;
          *&v244[23] = v255;
          memset(&v244[39], 0, 32);
          v244[71] = 1;
          *&v244[7] = v254;
          v253 = 1;
          *&v264[0] = 0;
          BYTE8(v264[0]) = 1;
          *(v264 + 9) = *v244;
          *(&v264[4] + 9) = *&v244[64];
          *(&v264[3] + 9) = *&v244[48];
          *(&v264[2] + 9) = *&v244[32];
          *(&v264[1] + 9) = *&v244[16];
          *(&v264[5] + 1) = 0;
          v265 = 1;
          v267 = v264[0];
          v268 = v264[1];
          LOBYTE(v272) = 1;
          v270 = v264[4];
          v271 = *&v264[5];
          v269[0] = v264[2];
          v269[1] = v264[3];
          v125 = v114;
          sub_2380712E4(&v254, &v247, &qword_27DEEDC58, &qword_23815F7B0);
          sub_2380712E4(&v259, &v247, &qword_27DEEDC58, &qword_23815F7B0);
          sub_238071284(v237, &qword_27DEEDC58, &qword_23815F7B0);
          v126 = v271;
          v127 = v216;
          *(v216 + 4) = v270;
          *(v127 + 5) = v126;
          v127[96] = v272;
          v128 = v268;
          *v127 = v267;
          *(v127 + 1) = v128;
          v129 = v269[1];
          *(v127 + 2) = v269[0];
          *(v127 + 3) = v129;
          swift_storeEnumTagMultiPayload();
          sub_2380712E4(v264, &v247, &qword_27DEEDC60, &qword_23815F7B8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
          sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
          v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDBE8, &qword_23815F778);
          v131 = sub_2380711D4(&qword_27DEEDBF0, &qword_27DEEDBE8, &qword_23815F778);
          *&v247 = v130;
          *(&v247 + 1) = v131;
          swift_getOpaqueTypeConformance2();
          v132 = v217;
          sub_238153ECC();
          sub_2380712E4(v132, v220, &qword_27DEEDB78, &qword_23815F558);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
          sub_23814BAB4();
          sub_23814BB6C();
          sub_238153ECC();
          sub_238071284(v264, &qword_27DEEDC60, &qword_23815F7B8);
          sub_238071284(&v254, &qword_27DEEDC58, &qword_23815F7B0);
          v133 = v132;
          v134 = v233;
          sub_238071284(v133, &qword_27DEEDB78, &qword_23815F558);
          goto LABEL_29;
        }
      }

      goto LABEL_25;
    }

    LOBYTE(v247) = 1;
    v244[0] = 1;
    *&v264[0] = 0;
    BYTE8(v264[0]) = 1;
    v266 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
    sub_238153ECC();
    v156 = v271;
    v157 = v220;
    *(v220 + 64) = v270;
    *(v157 + 80) = v156;
    *(v157 + 96) = v272;
    v158 = v268;
    *v157 = v267;
    *(v157 + 16) = v158;
    v159 = v269[1];
    *(v157 + 32) = v269[0];
    *(v157 + 48) = v159;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
    sub_23814BAB4();
    sub_23814BB6C();
    sub_238153ECC();
  }

  else
  {
    v150 = sub_2381540EC();
    LOBYTE(v267) = 1;
    LOBYTE(v239) = v115;
    *(&v239 + 1) = v114;
    LOBYTE(v240) = v116;
    BYTE8(v240) = v150;
    v241 = 0u;
    v242 = 0u;
    v243 = 1;
    v263 = 1;
    v261 = 0u;
    v262 = 0u;
    v259 = v239;
    v260 = v240;
    v238 = 1;
    v258 = 1;
    v256 = 0u;
    v257 = 0u;
    v254 = v239;
    v255 = v240;
    *&v237[23] = v240;
    memset(&v237[39], 0, 32);
    v237[71] = 1;
    *&v237[7] = v239;
    v236 = 1;
    *v244 = 0;
    v244[8] = 1;
    *&v244[9] = *v237;
    *&v244[73] = *&v237[64];
    *&v244[57] = *&v237[48];
    *&v244[41] = *&v237[32];
    *&v244[25] = *&v237[16];
    v245 = 0;
    v246 = 1;
    v247 = *v244;
    v248 = *&v244[16];
    v252 = 1;
    v250 = *&v244[64];
    v251 = *&v244[80];
    v249[0] = *&v244[32];
    v249[1] = *&v244[48];
    v151 = v114;
    sub_2380712E4(&v239, &v267, &qword_27DEEDC58, &qword_23815F7B0);
    sub_2380712E4(&v254, &v267, &qword_27DEEDC58, &qword_23815F7B0);
    sub_238071284(&v259, &qword_27DEEDC58, &qword_23815F7B0);
    v253 = 0;
    v264[4] = v250;
    v264[5] = v251;
    v265 = v252;
    v264[0] = v247;
    v264[1] = v248;
    v264[2] = v249[0];
    v264[3] = v249[1];
    v266 = 0;
    sub_2380712E4(v244, &v267, &qword_27DEEDC60, &qword_23815F7B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDBF8, &qword_23815F780);
    sub_2380711D4(&qword_27DEEDC00, &qword_27DEEDBF8, &qword_23815F780);
    sub_238153ECC();
    v152 = v271;
    v153 = v220;
    *(v220 + 64) = v270;
    *(v153 + 80) = v152;
    *(v153 + 96) = v272;
    v154 = v268;
    *v153 = v267;
    *(v153 + 16) = v154;
    v155 = v269[1];
    *(v153 + 32) = v269[0];
    *(v153 + 48) = v155;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC08, &qword_23815F788);
    sub_23814BAB4();
    sub_23814BB6C();
    sub_238153ECC();
    sub_238071284(v244, &qword_27DEEDC60, &qword_23815F7B8);
    sub_238071284(&v239, &qword_27DEEDC58, &qword_23815F7B0);
  }

  v134 = v233;
LABEL_29:
  if (*(v134 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 2)
  {
    v160 = v235;
    if (v228)
    {
      if (qword_27DEEA130 != -1)
      {
        swift_once();
      }

      *&v264[0] = 0xD000000000000017;
      *(&v264[0] + 1) = 0x80000002381632E0;
      *&v264[1] = 0xD000000000000043;
      *(&v264[1] + 1) = 0x8000000238163300;
      *&v264[2] = qword_27DEEDA68;
      BYTE8(v264[2]) = 0;
    }

    else
    {
      v162 = 0xE000000000000000;
      *&v267 = 0;
      *(&v267 + 1) = 0xE000000000000000;
      sub_23815541C();

      *&v267 = 0xD000000000000024;
      *(&v267 + 1) = 0x8000000238163350;
      v163 = (*(v160 + *(v230 + 64) + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
      if (v163[1])
      {
        v164 = *v163;
        sub_2380F9130();

        v165 = sub_2380F3278();
        if (v165)
        {
          v166 = v165;
          v167 = [v165 localizedName];
          v168 = sub_238154CCC();
          v162 = v169;

          v165 = v168;
        }

        else
        {
          v162 = 0xE000000000000000;
        }
      }

      else
      {
        v165 = 0;
      }

      MEMORY[0x2383E9410](v165, v162);

      MEMORY[0x2383E9410](46, 0xE100000000000000);
      v170 = v267;
      if (qword_27DEEA130 != -1)
      {
        swift_once();
      }

      *&v264[0] = 0xD000000000000019;
      *(&v264[0] + 1) = 0x8000000238163380;
      v264[1] = v170;
      *&v264[2] = qword_27DEEDA68;
      BYTE8(v264[2]) = 1;
    }

    sub_23814BD18();

    sub_238153ECC();
    v171 = *&v269[0];
    v230 = v268;
    v233 = v267;
    v244[0] = 1;
    v237[0] = BYTE8(v269[0]);
    sub_23814BD6C();
    sub_23814BD6C();
    sub_23814BDB4();
    LOBYTE(v247) = 0;
    *&v264[0] = 0;
    BYTE8(v264[0]) = v244[0];
    v264[1] = v233;
    v264[2] = v230;
    *&v264[3] = v171;
    WORD4(v264[3]) = v237[0];
    sub_23814BD6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC20, &qword_23815F790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC28, &qword_23815F798);
    sub_2380711D4(&qword_27DEEDC30, &qword_27DEEDC20, &qword_23815F790);
    sub_23814BC9C();
    sub_238153ECC();
    sub_23814BDB4();
    sub_23814BDB4();
    *(&v264[2] + 10) = *(v269 + 10);
    v264[1] = v268;
    v264[2] = v269[0];
    v273 = v267;
    v274 = v268;
    v275[0] = v269[0];
    *(v275 + 10) = *(&v264[2] + 10);
    *(v269 + 10) = *(&v264[2] + 10);
  }

  else
  {
    if ((sub_23813A3DC() & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , v267 != 8))
    {
      v161 = 0;
    }

    else
    {
      sub_23813D514(&v267);
      v161 = v267;
    }

    LOBYTE(v247) = 1;
    *&v264[0] = v161;
    BYTE9(v264[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC20, &qword_23815F790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC28, &qword_23815F798);
    sub_2380711D4(&qword_27DEEDC30, &qword_27DEEDC20, &qword_23815F790);
    sub_23814BC9C();
    sub_238153ECC();

    *(&v264[2] + 10) = *(v269 + 10);
    v264[1] = v268;
    v264[2] = v269[0];
    v273 = v267;
    v274 = v268;
    v275[0] = v269[0];
    *(v275 + 10) = *(&v264[2] + 10);
    *(v269 + 10) = *(&v264[2] + 10);
  }

  sub_2380712E4(&v267, v264, &qword_27DEEDC40, &qword_23815F7A0);
  v172 = sub_238139870();
  v173 = MEMORY[0x2383E79D0]();
  v174 = sub_23815337C();

  if ((((v172 - 3) < 0xFEu) & ~v174) != 0 || v172 == 3)
  {
    v176 = v225;
    sub_238139B64(v225);
    v175 = 0;
  }

  else
  {
    v175 = 1;
    v176 = v225;
  }

  (*(v223 + 56))(v176, v175, 1, v229);
  v177 = v176;
  v178 = v231;
  sub_2380712E4(v234, v231, &qword_27DEEDBD8, &qword_23815F5C0);
  v179 = v232;
  v180 = v224;
  sub_2380712E4(v232, v224, &qword_27DEEDB88, &qword_23815F568);
  v181 = v227;
  sub_2380712E4(v177, v227, &qword_27DEEDB60, &qword_23815F540);
  v182 = v178;
  v183 = v226;
  sub_2380712E4(v182, v226, &qword_27DEEDBD8, &qword_23815F5C0);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC48, &qword_23815F7A8);
  sub_2380712E4(v180, v183 + v184[12], &qword_27DEEDB88, &qword_23815F568);
  v185 = (v183 + v184[16]);
  v186 = v274;
  v247 = v273;
  v248 = v274;
  v187 = v275[0];
  v249[0] = v275[0];
  v188 = *(v275 + 10);
  *(v249 + 10) = *(v275 + 10);
  *v185 = v273;
  v185[1] = v186;
  v185[2] = v187;
  *(v185 + 42) = v188;
  sub_2380712E4(v181, v183 + v184[20], &qword_27DEEDB60, &qword_23815F540);
  sub_2380712E4(&v247, v264, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(&v267, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(v177, &qword_27DEEDB60, &qword_23815F540);
  sub_238071284(v179, &qword_27DEEDB88, &qword_23815F568);
  sub_238071284(v234, &qword_27DEEDBD8, &qword_23815F5C0);
  sub_238071284(v181, &qword_27DEEDB60, &qword_23815F540);
  v264[0] = v273;
  v264[1] = v274;
  v264[2] = v275[0];
  *(&v264[2] + 10) = *(v275 + 10);
  sub_238071284(v264, &qword_27DEEDC40, &qword_23815F7A0);
  sub_238071284(v180, &qword_27DEEDB88, &qword_23815F568);
  return sub_238071284(v231, &qword_27DEEDBD8, &qword_23815F5C0);
}

uint64_t sub_238139870()
{
  v1 = sub_23815313C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_238152F3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F1C();
  v14 = sub_238152EEC();
  v15 = *(v10 + 8);
  v15(v13, v9);
  if (v14)
  {
    v16 = *(v0 + 8);
    v17 = *(*(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_airDropMetadataCache) + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient);

    sub_23815316C();

    (*(v2 + 32))(v6, v8, v1);
    v18 = (*(v2 + 88))(v6, v1);
    if (MEMORY[0x277D54978] && v18 == *MEMORY[0x277D54978])
    {
      (*(v2 + 96))(v6, v1);
      v19 = sub_2381527EC();
      (*(*(v19 - 8) + 8))(v6, v19);
      return 2;
    }

    else if (MEMORY[0x277D54988] && v18 == *MEMORY[0x277D54988])
    {
      return 2;
    }

    else
    {
      (*(v2 + 8))(v6, v1);
      if (*(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType) == 1)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    sub_238152F2C();
    v21 = sub_238152EEC();
    v15(v13, v9);
    if (v21)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238139B64@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDC80, &qword_23815F7C0);
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  MEMORY[0x28223BE20](v2);
  v96 = &v81 - v4;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCC8, &qword_23815F808);
  v5 = *(*(v92 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v92);
  v95 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v81 - v8;
  v9 = sub_2381547FC();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v81 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238152F3C();
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCD0, &qword_23815F810);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v91 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v81 - v19;
  v20 = type metadata accessor for _DDContactInfoCache.ContactInfo.Key(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_2381537EC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_238153A2C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_238139870() == 1)
  {
    v34 = 34;
  }

  else
  {
    v34 = 48;
  }

  v100 = *(v1 + 24);
  v101 = v34;
  v35 = sub_238135F00();
  sub_23813605C(v33);
  v93 = v1;
  result = sub_238136264(v28);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v30 + 16))(v23 + *(v20 + 32), v33, v29);
  (*(v25 + 16))(v23 + *(v20 + 36), v28, v24);
  *v23 = 0;
  v23[1] = 0;
  v37 = v101;
  v23[2] = v101;
  v23[3] = v37;
  v23[4] = v35;
  v38 = sub_2380C3CE8(v23);
  v40 = v39;
  v87 = v41;
  LODWORD(v100) = v42;
  v43 = ~v42;
  sub_23814EFF0(v23, type metadata accessor for _DDContactInfoCache.ContactInfo.Key);
  (*(v25 + 8))(v28, v24);
  (*(v30 + 8))(v33, v29);
  if (v43)
  {
    v44 = v93;
    v45 = sub_238139870();
    sub_2381533AC();
    v46 = MEMORY[0x2383E79D0]();
    v47 = sub_23815337C();

    if ((((v45 - 3) < 0xFEu) & ~v47) != 0 || v45 == 3)
    {
      v57 = v84;
      sub_238152F1C();
      v58 = sub_238152EEC();
      (*(v85 + 8))(v57, v86);
      v49 = v94;
      v50 = v95;
      v59 = v90;
      v54 = v88;
      if (v58)
      {
        v48 = 1;
        v53 = v90;
        v51 = v92;
        v52 = v89;
      }

      else
      {
        v60 = v81;
        sub_2381547EC();
        v61 = v60;
        v62 = v89;
        (*(v54 + 32))(v59, v61, v89);
        v52 = v62;
        v48 = 0;
        v53 = v59;
        v51 = v92;
      }
    }

    else
    {
      v48 = 1;
      v49 = v94;
      v50 = v95;
      v51 = v92;
      v52 = v89;
      v53 = v90;
      v54 = v88;
    }

    v63 = v53;
    (*(v54 + 56))(v53, v48, 1, v52);
    if (sub_238139870() == 3)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0x4020000000000000;
    }

    *v49 = sub_238153D1C();
    *(v49 + 8) = v64;
    *(v49 + 16) = 0;
    v65 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCD8, &qword_23815F818) + 44);
    v83 = v38;
    v82 = v40;
    v66 = v87;
    sub_23813F930(v38, v40, v87, v100 & 1, v44, v101, v65);
    v67 = sub_238139870();
    v68 = sub_23814270C(*(*(v44 + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType), v67);
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v75 = sub_2381540FC();
    v76 = v49 + *(v51 + 36);
    *v76 = v75;
    *(v76 + 8) = v68;
    *(v76 + 16) = v70;
    *(v76 + 24) = v72;
    *(v76 + 32) = v74;
    *(v76 + 40) = 0;
    v77 = v91;
    sub_2380712E4(v63, v91, &qword_27DEEDCD0, &qword_23815F810);
    sub_2380712E4(v49, v50, &qword_27DEEDCC8, &qword_23815F808);
    v78 = v50;
    v79 = v96;
    sub_2380712E4(v77, v96, &qword_27DEEDCD0, &qword_23815F810);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDCE0, &qword_23815F820);
    sub_2380712E4(v78, v79 + *(v80 + 48), &qword_27DEEDCC8, &qword_23815F808);
    sub_2380B3F60(v83, v82, v66, v100);
    sub_238071284(v49, &qword_27DEEDCC8, &qword_23815F808);
    sub_238071284(v63, &qword_27DEEDCD0, &qword_23815F810);
    sub_238071284(v78, &qword_27DEEDCC8, &qword_23815F808);
    sub_238071284(v77, &qword_27DEEDCD0, &qword_23815F810);
    v56 = v99;
    sub_23807121C(v79, v99, &qword_27DEEDC80, &qword_23815F7C0);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v56 = v99;
  }

  return (*(v97 + 56))(v56, v55, 1, v98);
}

uint64_t sub_23813A3DC()
{
  v34 = sub_238153F1C();
  v0 = *(v34 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = sub_238153A0C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238135928(v20);
  v21 = sub_2381539FC();
  (*(v17 + 8))(v20, v16);
  if (v21)
  {
    goto LABEL_2;
  }

  sub_238135D18(v15);
  v23 = v34;
  (*(v0 + 104))(v13, *MEMORY[0x277CE0558], v34);
  (*(v0 + 56))(v13, 0, 1, v23);
  v24 = *(v3 + 48);
  sub_2380712E4(v15, v6, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v13, &v6[v24], &qword_27DEEA850, &qword_2381580D8);
  v25 = *(v0 + 48);
  if (v25(v6, 1, v23) != 1)
  {
    v26 = v33;
    sub_2380712E4(v6, v33, &qword_27DEEA850, &qword_2381580D8);
    if (v25(&v6[v24], 1, v23) != 1)
    {
      v27 = v32;
      (*(v0 + 32))(v32, &v6[v24], v23);
      sub_23814F050(&qword_27DEEA858, MEMORY[0x277CE0570]);
      v28 = v26;
      v22 = sub_238154C7C();
      v29 = *(v0 + 8);
      v29(v27, v23);
      sub_238071284(v13, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v15, &qword_27DEEA850, &qword_2381580D8);
      v29(v28, v23);
      sub_238071284(v6, &qword_27DEEA850, &qword_2381580D8);
      return v22 & 1;
    }

    sub_238071284(v13, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v15, &qword_27DEEA850, &qword_2381580D8);
    (*(v0 + 8))(v26, v23);
    goto LABEL_8;
  }

  sub_238071284(v13, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v15, &qword_27DEEA850, &qword_2381580D8);
  if (v25(&v6[v24], 1, v23) != 1)
  {
LABEL_8:
    sub_238071284(v6, &qword_27DEEA848, &qword_2381580D0);
    v22 = 0;
    return v22 & 1;
  }

  sub_238071284(v6, &qword_27DEEA850, &qword_2381580D8);
LABEL_2:
  v22 = 1;
  return v22 & 1;
}

double sub_23813A8E4@<D0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, char a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v51 = a8;
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v52 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE58, &qword_23815FA30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE60, &qword_23815FA38);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE68, &qword_23815FA40);
  v46 = *(v48 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v25 = &v42 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE70, &qword_23815FA48);
  v49 = *(v26 - 8);
  v50 = v26;
  v27 = *(v49 + 64);
  MEMORY[0x28223BE20](v26);
  v47 = &v42 - v28;
  v53 = a2;
  v54 = a3;
  v55 = a1;
  v42 = a1;
  v56 = a4;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v60 = v51;
  v51 = a10;
  v61 = a10;
  sub_2381540DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE78, &qword_23815FA50);
  sub_23814C7C4();
  sub_2381537CC();
  v30 = *a3;
  v29 = a3[1];
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_23814F050(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel);
  sub_2381539CC();
  swift_getKeyPath();
  sub_2381539DC();

  v31 = sub_2381527EC();
  v32 = sub_2380711D4(&qword_27DEEDE98, &qword_27DEEDE60, &qword_23815FA38);
  v33 = sub_23814F050(&qword_27DEEB990, MEMORY[0x277CC95F0]);
  sub_23815444C();
  sub_238071284(v17, &qword_27DEEDE58, &qword_23815FA30);
  (*(v19 + 8))(v22, v18);
  if (sub_238139870() == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v34 = *(v62 + 16);

    v35 = *(a3 + *(type metadata accessor for _DDDevicePickerView() + 108));
  }

  *&v62 = v18;
  *(&v62 + 1) = v31;
  *&v63 = v32;
  *(&v63 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v36 = v47;
  v37 = v48;
  sub_23815443C();
  (*(v46 + 8))(v25, v37);
  if (v51)
  {
    sub_23815392C();
  }

  sub_2381548DC();
  sub_2381538EC();
  v38 = v52;
  (*(v49 + 32))(v52, v36, v50);
  v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEA0, &qword_23815FA88) + 36));
  v40 = v63;
  *v39 = v62;
  v39[1] = v40;
  result = *&v64;
  v39[2] = v64;
  return result;
}

__n128 sub_23813AE8C@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  HIDWORD(v28) = a8;
  v33 = a9;
  v30 = a10;
  v17 = sub_238153EDC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE90, &qword_23815FA58);
  v31 = *(v32 - 8);
  v19 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v21 = &v28 - v20;
  v29 = sub_238153DFC();
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = BYTE4(v28);
  LODWORD(v42) = 0;
  sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428]);
  sub_23815570C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEB0, &qword_23815FB00);
  sub_2380711D4(&qword_27DEEDEB8, &qword_27DEEDEB0, &qword_23815FB00);
  v22 = v30;
  sub_2381537BC();
  if (v22)
  {
    sub_23815392C();
  }

  sub_2381548DC();
  sub_238153A8C();
  v23 = v33;
  (*(v31 + 32))(v33, v21, v32);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE78, &qword_23815FA50) + 36);
  v25 = v47;
  *(v24 + 64) = v46;
  *(v24 + 80) = v25;
  *(v24 + 96) = v48;
  v26 = v43;
  *v24 = v42;
  *(v24 + 16) = v26;
  result = v45;
  *(v24 + 32) = v44;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_23813B214@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v226 = a7;
  v232 = a6;
  v234 = a5;
  v236 = a4;
  v237 = a3;
  v233 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEC0, &qword_23815FB08);
  v230 = *(v10 - 8);
  v231 = v10;
  v11 = *(v230 + 64);
  MEMORY[0x28223BE20](v10);
  v225 = &v212 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEC8, &qword_23815FB10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v251 = &v212 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v258 = &v212 - v17;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDED0, &qword_23815FB18);
  v260 = *(v253 - 8);
  v18 = *(v260 + 64);
  MEMORY[0x28223BE20](v253);
  v241 = &v212 - v19;
  v20 = sub_2381547FC();
  v222 = *(v20 - 8);
  v223 = v20;
  v21 = *(v222 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v215 = &v212 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v221 = &v212 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v212 - v27;
  MEMORY[0x28223BE20](v26);
  v238 = &v212 - v29;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC8F0, &qword_23815C8C0);
  v246 = *(v252 - 8);
  v30 = *(v246 + 64);
  v31 = MEMORY[0x28223BE20](v252);
  v214 = &v212 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v213 = &v212 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v219 = &v212 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v220 = &v212 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v218 = &v212 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v217 = &v212 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v212 - v44;
  MEMORY[0x28223BE20](v43);
  v216 = &v212 - v46;
  v47 = sub_238152F3C();
  v243 = *(v47 - 8);
  v244 = v47;
  v48 = *(v243 + 64);
  MEMORY[0x28223BE20](v47);
  v242 = &v212 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDED8, &qword_23815FB20);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v227 = &v212 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v235 = &v212 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v228 = &v212 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v245 = &v212 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = &v212 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEE0, &qword_23815FB28);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v256 = &v212 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v257 = &v212 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v250 = &v212 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v254 = &v212 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v261 = &v212 - v73;
  MEMORY[0x28223BE20](v72);
  v255 = &v212 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEE8, &qword_23815FB30);
  v76 = *(v75 - 8);
  v77 = *(v76 + 64);
  v78 = MEMORY[0x28223BE20](v75);
  v224 = &v212 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v240 = &v212 - v81;
  MEMORY[0x28223BE20](v80);
  v83 = &v212 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEF0, &qword_23815FB38);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x28223BE20](v84 - 8);
  v249 = &v212 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v90 = a2;
  v91 = &v212 - v89;
  v259 = v90;
  v247 = v88;
  v248 = &v212 - v89;
  v229 = a1;
  if (a1)
  {
    sub_23813CE8C(0, v88, v83);
    sub_23807121C(v83, v91, &qword_27DEEDEE8, &qword_23815FB30);
    (*(v76 + 56))(v91, 0, 1, v75);
  }

  else
  {
    (*(v76 + 56))(&v212 - v89, 1, 1, v75);
  }

  v239 = v83;
  if (v237)
  {
    v92 = v242;
    sub_238152F2C();
    v93 = sub_238152EEC();
    (*(v243 + 8))(v92, v244);
    v212 = v28;
    if (v93)
    {
      v94 = 1;
    }

    else
    {
      sub_2381533AC();
      v97 = MEMORY[0x2383E79D0]();
      v98 = sub_23815337C();

      v94 = 1;
      if (v98 & 1) == 0 && (v229)
      {
        v99 = v238;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v100 = sub_23815413C();
        }

        else
        {
          v100 = sub_23815412C();
        }

        v101 = v100;
        (*(v222 + 32))(v45, v99, v223);
        v102 = &v45[*(v252 + 36)];
        *v102 = v101;
        *(v102 + 8) = 0u;
        *(v102 + 24) = 0u;
        v102[40] = 1;
        v103 = v216;
        sub_23807121C(v45, v216, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v103, v61, &qword_27DEEC8F0, &qword_23815C8C0);
        v94 = 0;
      }
    }

    (*(v246 + 56))(v61, v94, 1, v252);
    sub_23813CE8C(1, v247, v83);
    v104 = v245;
    sub_2380712E4(v61, v245, &qword_27DEEDED8, &qword_23815FB20);
    v105 = v83;
    v106 = v83;
    v107 = v240;
    sub_2380712E4(v105, v240, &qword_27DEEDEE8, &qword_23815FB30);
    v108 = v241;
    sub_2380712E4(v104, v241, &qword_27DEEDED8, &qword_23815FB20);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v107, v108 + *(v109 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v106, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v61, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v107, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v104, &qword_27DEEDED8, &qword_23815FB20);
    v96 = v255;
    sub_23807121C(v108, v255, &qword_27DEEDED0, &qword_23815FB18);
    v95 = 0;
    v28 = v212;
  }

  else
  {
    v95 = 1;
    v96 = v255;
  }

  v110 = v260 + 56;
  v111 = *(v260 + 56);
  v112 = 1;
  v111(v96, v95, 1, v253);
  v260 = v110;
  v238 = v111;
  if (v236)
  {
    v113 = v242;
    sub_238152F2C();
    v114 = sub_238152EEC();
    (*(v243 + 8))(v113, v244);
    if (v114)
    {
      v115 = 1;
      v116 = v239;
    }

    else
    {
      sub_2381533AC();
      v117 = MEMORY[0x2383E79D0]();
      v118 = sub_23815337C();

      v115 = 1;
      v116 = v239;
      if (v118 & 1) == 0 && ((v229 | v237))
      {
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v119 = sub_23815413C();
        }

        else
        {
          v119 = sub_23815412C();
        }

        v120 = v119;
        v121 = v218;
        (*(v222 + 32))(v218, v28, v223);
        v122 = &v121[*(v252 + 36)];
        *v122 = v120;
        *(v122 + 8) = 0u;
        *(v122 + 24) = 0u;
        v122[40] = 1;
        v123 = v121;
        v124 = v217;
        sub_23807121C(v123, v217, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v124, v228, &qword_27DEEC8F0, &qword_23815C8C0);
        v115 = 0;
      }
    }

    v125 = v228;
    (*(v246 + 56))(v228, v115, 1, v252);
    sub_23813CE8C(2, v247, v116);
    v126 = v245;
    sub_2380712E4(v125, v245, &qword_27DEEDED8, &qword_23815FB20);
    v127 = v116;
    v128 = v116;
    v129 = v240;
    sub_2380712E4(v127, v240, &qword_27DEEDEE8, &qword_23815FB30);
    v130 = v241;
    sub_2380712E4(v126, v241, &qword_27DEEDED8, &qword_23815FB20);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v129, v130 + *(v131 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v128, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v125, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v129, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v126, &qword_27DEEDED8, &qword_23815FB20);
    sub_23807121C(v130, v261, &qword_27DEEDED0, &qword_23815FB18);
    v112 = 0;
    v111 = v238;
  }

  v111(v261, v112, 1, v253);
  if (v234)
  {
    v132 = v242;
    sub_238152F2C();
    v133 = sub_238152EEC();
    (*(v243 + 8))(v132, v244);
    v134 = 1;
    v135 = v239;
    if ((v133 & 1) == 0)
    {
      sub_2381533AC();
      v136 = MEMORY[0x2383E79D0]();
      v137 = sub_23815337C();

      v134 = 1;
      if (v137 & 1) == 0 && ((v229 | v237 | v236))
      {
        v138 = v221;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v139 = sub_23815413C();
        }

        else
        {
          v139 = sub_23815412C();
        }

        v140 = v139;
        v141 = v219;
        (*(v222 + 32))(v219, v138, v223);
        v142 = &v141[*(v252 + 36)];
        *v142 = v140;
        *(v142 + 8) = 0u;
        *(v142 + 24) = 0u;
        v142[40] = 1;
        v143 = v141;
        v144 = v220;
        sub_23807121C(v143, v220, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v144, v235, &qword_27DEEC8F0, &qword_23815C8C0);
        v134 = 0;
      }
    }

    v145 = v235;
    (*(v246 + 56))(v235, v134, 1, v252);
    v146 = v224;
    sub_23813CE8C(4, v247, v224);
    LODWORD(v228) = sub_23815412C();
    sub_23815377C();
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    LODWORD(v221) = sub_2381540FC();
    LOBYTE(v311[0]) = 0;
    LOBYTE(v304) = 1;
    sub_2381548EC();
    sub_238153A8C();
    *&v262[55] = v316;
    *&v262[71] = v317;
    *&v262[87] = v318;
    *&v262[103] = v319;
    *&v262[7] = v313;
    *&v262[23] = v314;
    *&v262[39] = v315;
    v155 = v245;
    sub_2380712E4(v145, v245, &qword_27DEEDED8, &qword_23815FB20);
    sub_2380712E4(v146, v135, &qword_27DEEDEE8, &qword_23815FB30);
    v156 = v135;
    v157 = v225;
    sub_2380712E4(v155, v225, &qword_27DEEDED8, &qword_23815FB20);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF20, &qword_23815FB68);
    sub_2380712E4(v156, v157 + *(v158 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    v159 = v157 + *(v158 + 64);
    *v159 = v228;
    *(v159 + 8) = v148;
    *(v159 + 16) = v150;
    *(v159 + 24) = v152;
    *(v159 + 32) = v154;
    *(v159 + 40) = 0;
    *(v159 + 48) = v221;
    *(v159 + 56) = 0u;
    *(v159 + 72) = 0u;
    *(v159 + 88) = 1;
    v160 = *&v262[80];
    *(v159 + 153) = *&v262[64];
    *(v159 + 169) = v160;
    *(v159 + 185) = *&v262[96];
    *(v159 + 200) = *&v262[111];
    v161 = *&v262[16];
    *(v159 + 89) = *v262;
    *(v159 + 105) = v161;
    v162 = *&v262[48];
    *(v159 + 121) = *&v262[32];
    *(v159 + 137) = v162;
    v163 = v146;
    v111 = v238;
    sub_238071284(v163, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v235, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v156, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v155, &qword_27DEEDED8, &qword_23815FB20);
    v164 = v258;
    sub_23807121C(v157, v258, &qword_27DEEDEC0, &qword_23815FB08);
    (*(v230 + 56))(v164, 0, 1, v231);
  }

  else
  {
    (*(v230 + 56))(v258, 1, 1, v231);
  }

  v165 = v259;
  if (v232)
  {
    v166 = v242;
    sub_238152F2C();
    v167 = sub_238152EEC();
    (*(v243 + 8))(v166, v244);
    if (v167)
    {
      v168 = 1;
      v169 = v239;
    }

    else
    {
      sub_2381533AC();
      v172 = MEMORY[0x2383E79D0]();
      v173 = sub_23815337C();

      v169 = v239;
      if (v173 & 1) == 0 && ((v229 & 1) != 0 || (v237 & 1) != 0 || (v236 & 1) != 0 || (v234))
      {
        v174 = v215;
        sub_2381547EC();
        if ((sub_2381364CC() & 1) != 0 || sub_238139870())
        {
          v175 = sub_23815413C();
        }

        else
        {
          v175 = sub_23815412C();
        }

        v176 = v175;
        v177 = v214;
        (*(v222 + 32))(v214, v174, v223);
        v178 = &v177[*(v252 + 36)];
        *v178 = v176;
        *(v178 + 8) = 0u;
        *(v178 + 24) = 0u;
        v178[40] = 1;
        v179 = v177;
        v180 = v213;
        sub_23807121C(v179, v213, &qword_27DEEC8F0, &qword_23815C8C0);
        sub_23807121C(v180, v227, &qword_27DEEC8F0, &qword_23815C8C0);
        v168 = 0;
      }

      else
      {
        v168 = 1;
      }
    }

    v181 = v227;
    (*(v246 + 56))(v227, v168, 1, v252);
    sub_23813CE8C(3, v247, v169);
    v182 = v169;
    v183 = v245;
    sub_2380712E4(v181, v245, &qword_27DEEDED8, &qword_23815FB20);
    v184 = v240;
    sub_2380712E4(v182, v240, &qword_27DEEDEE8, &qword_23815FB30);
    v185 = v241;
    sub_2380712E4(v183, v241, &qword_27DEEDED8, &qword_23815FB20);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF18, &qword_23815FB60);
    sub_2380712E4(v184, v185 + *(v186 + 48), &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v182, &qword_27DEEDEE8, &qword_23815FB30);
    sub_238071284(v181, &qword_27DEEDED8, &qword_23815FB20);
    sub_238071284(v184, &qword_27DEEDEE8, &qword_23815FB30);
    v165 = v259;
    sub_238071284(v183, &qword_27DEEDED8, &qword_23815FB20);
    v171 = v254;
    sub_23807121C(v185, v254, &qword_27DEEDED0, &qword_23815FB18);
    v170 = 0;
    v111 = v238;
  }

  else
  {
    v170 = 1;
    v171 = v254;
  }

  v111(v171, v170, 1, v253);
  if (sub_23813A3DC())
  {
    if (v226)
    {
      v187 = *(v165 + *(type metadata accessor for _DDDevicePickerView() + 56) + 8);
      sub_2381548DC();
      sub_238153A8C();
      *&v264[55] = v323;
      *&v264[71] = v324;
      *&v264[87] = v325;
      *&v264[103] = v326;
      *&v264[7] = v320;
      *&v264[23] = v321;
      *&v264[39] = v322;
      v188 = v187;
      v189 = sub_2381540EC();
      LOBYTE(v297) = 0;
      *(&v297 + 1) = v188;
      LOBYTE(v298[0]) = 0;
      *(&v298[4] + 1) = *&v264[64];
      *(&v298[5] + 1) = *&v264[80];
      *(&v298[6] + 1) = *&v264[96];
      *&v298[7] = *&v264[111];
      *(v298 + 1) = *v264;
      *(&v298[1] + 1) = *&v264[16];
      *(&v298[2] + 1) = *&v264[32];
      *(&v298[3] + 1) = *&v264[48];
      BYTE8(v298[7]) = v189;
      v299 = 0u;
      *&v263[71] = v298[3];
      *&v263[87] = v298[4];
      *&v263[103] = v298[5];
      *&v263[119] = v298[6];
      *&v263[7] = v297;
      *&v263[23] = v298[0];
      *&v263[39] = v298[1];
      *&v263[55] = v298[2];
      *&v263[135] = v298[7];
      v300 = 0u;
      memset(&v263[151], 0, 32);
      *(&v305[4] + 1) = *&v264[64];
      *(&v305[5] + 1) = *&v264[80];
      *(&v305[6] + 1) = *&v264[96];
      *(v305 + 1) = *v264;
      *(&v305[1] + 1) = *&v264[16];
      *(&v305[2] + 1) = *&v264[32];
      LOBYTE(v281[0]) = 1;
      LOBYTE(v279[0]) = 1;
      LOBYTE(v301) = 1;
      v263[183] = 1;
      LOBYTE(v265) = 1;
      LOBYTE(v304) = 0;
      *(&v304 + 1) = v188;
      LOBYTE(v305[0]) = 0;
      *&v305[7] = *&v264[111];
      *(&v305[3] + 1) = *&v264[48];
      BYTE8(v305[7]) = v189;
      v306 = 0u;
      v307 = 0u;
      LOBYTE(v308) = 1;
      sub_2380712E4(&v297, v311, &qword_27DEEDF10, &qword_23815FB58);
      sub_238071284(&v304, &qword_27DEEDF10, &qword_23815FB58);
      *(&v311[8] + 9) = *&v263[128];
      *(&v311[9] + 9) = *&v263[144];
      *(&v311[10] + 9) = *&v263[160];
      *(&v311[4] + 9) = *&v263[64];
      *(&v311[5] + 9) = *&v263[80];
      *(&v311[6] + 9) = *&v263[96];
      *(&v311[7] + 9) = *&v263[112];
      *(v311 + 9) = *v263;
      *(&v311[1] + 9) = *&v263[16];
      *(&v311[2] + 9) = *&v263[32];
      *&v311[0] = 0;
      BYTE8(v311[0]) = 1;
      *(&v311[11] + 9) = *&v263[176];
      *(&v311[3] + 9) = *&v263[48];
      *(&v311[12] + 1) = 0;
      LOBYTE(v312) = 1;
      CGSizeMake(v311);
      v293 = v311[10];
      v294 = v311[11];
      v295 = v311[12];
      LOBYTE(v296) = v312;
      v289 = v311[6];
      v290 = v311[7];
      v291 = v311[8];
      v292 = v311[9];
      v285 = v311[2];
      v286 = v311[3];
      v287 = v311[4];
      v288 = v311[5];
      v283 = v311[0];
      v284 = v311[1];
    }

    else
    {
      sub_23814C918(&v283);
    }

    sub_23813D514(v311);
    v275 = v293;
    v276 = v294;
    v277 = v295;
    v271 = v289;
    v272 = v290;
    v273 = v291;
    v274 = v292;
    v267 = v285;
    v268 = v286;
    v269 = v287;
    v270 = v288;
    v265 = v283;
    v266 = v284;
    v279[10] = v293;
    v279[11] = v294;
    v279[12] = v295;
    v279[6] = v289;
    v279[7] = v290;
    v279[8] = v291;
    v279[9] = v292;
    v279[2] = v285;
    v279[3] = v286;
    v279[4] = v287;
    v279[5] = v288;
    v279[0] = v283;
    v279[1] = v284;
    v300 = v293;
    v301 = v294;
    v302 = v295;
    v298[5] = v289;
    v298[6] = v290;
    v298[7] = v291;
    v299 = v292;
    v298[1] = v285;
    v298[2] = v286;
    v298[3] = v287;
    v298[4] = v288;
    v190 = *&v311[0];
    v278 = v296;
    v280 = v296;
    LOBYTE(v303) = v296;
    v297 = v283;
    v298[0] = v284;
    sub_2380712E4(v279, v311, &qword_27DEEDF08, &qword_23815FB50);
    v281[10] = v275;
    v281[11] = v276;
    v281[12] = v277;
    v282 = v278;
    v281[6] = v271;
    v281[7] = v272;
    v281[8] = v273;
    v281[9] = v274;
    v281[2] = v267;
    v281[3] = v268;
    v281[4] = v269;
    v281[5] = v270;
    v281[0] = v265;
    v281[1] = v266;
    sub_238071284(v281, &qword_27DEEDF08, &qword_23815FB50);
    v307 = v300;
    v308 = v301;
    v309 = v302;
    v305[5] = v298[5];
    v305[6] = v298[6];
    v305[7] = v298[7];
    v306 = v299;
    v305[1] = v298[1];
    v305[2] = v298[2];
    v305[3] = v298[3];
    v305[4] = v298[4];
    v304 = v297;
    v305[0] = v298[0];
    *&v310 = v303;
    *(&v310 + 1) = v190;
    CGSizeMake(&v304);
    v311[10] = v307;
    v311[11] = v308;
    v311[12] = v309;
    v312 = v310;
    v311[6] = v305[5];
    v311[7] = v305[6];
    v311[8] = v305[7];
    v311[9] = v306;
    v311[2] = v305[1];
    v311[3] = v305[2];
    v311[4] = v305[3];
    v311[5] = v305[4];
    v311[0] = v304;
    v311[1] = v305[0];
  }

  else
  {
    sub_23814C8F4(v311);
  }

  v191 = v249;
  sub_2380712E4(v248, v249, &qword_27DEEDEF0, &qword_23815FB38);
  v192 = v250;
  sub_2380712E4(v255, v250, &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v261, v257, &qword_27DEEDEE0, &qword_23815FB28);
  v193 = v251;
  sub_2380712E4(v258, v251, &qword_27DEEDEC8, &qword_23815FB10);
  sub_2380712E4(v254, v256, &qword_27DEEDEE0, &qword_23815FB28);
  v293 = v311[10];
  v294 = v311[11];
  v295 = v311[12];
  v296 = v312;
  v289 = v311[6];
  v290 = v311[7];
  v291 = v311[8];
  v292 = v311[9];
  v285 = v311[2];
  v286 = v311[3];
  v287 = v311[4];
  v288 = v311[5];
  v283 = v311[0];
  v284 = v311[1];
  v194 = v233;
  sub_2380712E4(v191, v233, &qword_27DEEDEF0, &qword_23815FB38);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDEF8, &qword_23815FB40);
  sub_2380712E4(v192, v194 + v195[12], &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v257, v194 + v195[16], &qword_27DEEDEE0, &qword_23815FB28);
  sub_2380712E4(v193, v194 + v195[20], &qword_27DEEDEC8, &qword_23815FB10);
  sub_2380712E4(v256, v194 + v195[24], &qword_27DEEDEE0, &qword_23815FB28);
  v196 = v195[28];
  v197 = v292;
  v300 = v293;
  v301 = v294;
  v198 = v294;
  v199 = v295;
  v302 = v295;
  v303 = v296;
  v200 = v290;
  v201 = v291;
  v298[7] = v291;
  v299 = v292;
  v202 = v289;
  v203 = v288;
  v298[5] = v289;
  v298[6] = v290;
  v204 = v285;
  v205 = v284;
  v298[1] = v285;
  v298[2] = v286;
  v206 = v286;
  v207 = v287;
  v298[3] = v287;
  v298[4] = v288;
  v297 = v283;
  v208 = v283;
  v298[0] = v284;
  v209 = (v194 + v196);
  v209[10] = v293;
  v209[11] = v198;
  v210 = v296;
  v209[12] = v199;
  v209[13] = v210;
  v209[6] = v202;
  v209[7] = v200;
  v209[8] = v201;
  v209[9] = v197;
  v209[2] = v204;
  v209[3] = v206;
  v209[4] = v207;
  v209[5] = v203;
  *v209 = v208;
  v209[1] = v205;
  sub_2380712E4(&v297, &v304, &qword_27DEEDF00, &qword_23815FB48);
  sub_238071284(v254, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v258, &qword_27DEEDEC8, &qword_23815FB10);
  sub_238071284(v261, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v255, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v248, &qword_27DEEDEF0, &qword_23815FB38);
  v307 = v293;
  v308 = v294;
  v309 = v295;
  v310 = v296;
  v305[5] = v289;
  v305[6] = v290;
  v305[7] = v291;
  v306 = v292;
  v305[1] = v285;
  v305[2] = v286;
  v305[3] = v287;
  v305[4] = v288;
  v304 = v283;
  v305[0] = v284;
  sub_238071284(&v304, &qword_27DEEDF00, &qword_23815FB48);
  sub_238071284(v256, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v251, &qword_27DEEDEC8, &qword_23815FB10);
  sub_238071284(v257, &qword_27DEEDEE0, &qword_23815FB28);
  sub_238071284(v250, &qword_27DEEDEE0, &qword_23815FB28);
  return sub_238071284(v249, &qword_27DEEDEF0, &qword_23815FB38);
}

uint64_t sub_23813CE8C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF28, &qword_23815FB70);
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF30, &qword_23815FB78);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v33 = v29 - v12;
  v13 = sub_238153EDC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF38, &qword_23815FB80);
  v15 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v17 = v29 - v16;
  v18 = sub_238139870();
  if (v18 == 1)
  {
    v19 = sub_238153DFC();
    v30 = v7;
    MEMORY[0x28223BE20](v19);
    v29[-2] = v3;
    LOBYTE(v29[-1]) = a1;
    LODWORD(v38) = 0;
    sub_23814F050(&qword_27DEEDEA8, MEMORY[0x277CE0428]);
    sub_23815570C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0F8, &qword_23815FC78);
    sub_23814D79C(&qword_27DEEE100, &qword_27DEEE0F8, &qword_23815FC78, sub_23814D818);
    sub_2381537BC();
    v20 = sub_23815494C();
    v21 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v22 = v38;
    v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEE0D8, &qword_23815FC68) + 36)];
    *v23 = v20;
    v23[1] = v22;
    KeyPath = swift_getKeyPath();
    v25 = &v17[*(v31 + 36)];
    *v25 = KeyPath;
    v25[8] = 0;
    sub_2380712E4(v17, v33, &qword_27DEEDF38, &qword_23815FB80);
    swift_storeEnumTagMultiPayload();
    sub_23814D530();
    sub_23814D6CC();
    sub_238153ECC();
    return sub_238071284(v17, &qword_27DEEDF38, &qword_23815FB80);
  }

  else
  {
    v29[1] = v29;
    MEMORY[0x28223BE20](v18);
    v29[-4] = v3;
    LOBYTE(v29[-3]) = a1;
    v29[-2] = a2;
    v27 = sub_238153D1C();
    v37 = 1;
    sub_238146268(a1, &v38);
    v47 = *&v39[80];
    v48 = *&v39[96];
    v49 = *&v39[112];
    v43 = *&v39[16];
    v44 = *&v39[32];
    v45 = *&v39[48];
    v46 = *&v39[64];
    v41 = v38;
    v42 = *v39;
    v51[6] = *&v39[80];
    v51[7] = *&v39[96];
    v51[8] = *&v39[112];
    v51[2] = *&v39[16];
    v51[3] = *&v39[32];
    v51[4] = *&v39[48];
    v51[5] = *&v39[64];
    v50 = v39[128];
    v52 = v39[128];
    v51[0] = v38;
    v51[1] = *v39;
    sub_2380712E4(&v41, &v35, &qword_27DEEDF40, &qword_23815FB88);
    sub_238071284(v51, &qword_27DEEDF40, &qword_23815FB88);
    *&v36[55] = v44;
    *&v36[39] = v43;
    *&v36[103] = v47;
    *&v36[119] = v48;
    *&v36[135] = v49;
    v36[151] = v50;
    *&v36[71] = v45;
    *&v36[87] = v46;
    *&v36[7] = v41;
    *&v36[23] = v42;
    *&v39[97] = *&v36[96];
    *&v39[113] = *&v36[112];
    *&v39[129] = *&v36[128];
    *&v39[33] = *&v36[32];
    *&v39[49] = *&v36[48];
    *&v39[65] = *&v36[64];
    *&v39[81] = *&v36[80];
    *&v39[1] = *v36;
    v38 = v27;
    v39[0] = v37;
    v40 = *&v36[144];
    *&v39[17] = *&v36[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF48, &qword_23815FB90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDF50, &qword_23815FB98);
    sub_2380711D4(&qword_27DEEDF58, &qword_27DEEDF48, &qword_23815FB90);
    sub_23814C950();
    sub_23815482C();
    v28 = v30;
    (*(v30 + 16))(v33, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_23814D530();
    sub_23814D6CC();
    sub_238153ECC();
    return (*(v28 + 8))(v10, v7);
  }
}

uint64_t sub_23813D514@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDE40, &qword_23815F960);
  v2 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v64[-v3];
  v4 = type metadata accessor for _DDDevicePickerEducationView();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = sub_238152E1C();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_238152DEC();
  v70 = *(v12 - 8);
  v71 = v12;
  v13 = *(v70 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v64[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v64[-v17];
  v19 = sub_238152F3C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v74 = *(v1 + 8);
  v68 = OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType;
  LODWORD(v22) = *(v74 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browserType);
  v72 = v1;
  if (!v22 && ((sub_2381364CC() & 1) != 0 || (sub_23813A3DC() & 1) != 0))
  {
    v29 = sub_2381540FC();
    goto LABEL_13;
  }

  sub_238152F1C();
  v24 = sub_238152EEC();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) != 0 && *(v74 + v68) == 1)
  {
    v25 = sub_2381540EC();
    v26 = sub_23815413C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238158810;
    v28 = sub_23815411C();
    *(inited + 32) = v28;
    v25 = sub_2381540EC();
    *(inited + 33) = v25;
    v26 = sub_23815413C();
    sub_23815413C();
    if (sub_23815413C() != v28)
    {
      v26 = sub_23815413C();
    }
  }

  sub_23815413C();
  if (sub_23815413C() != v25)
  {
    v29 = sub_23815413C();
LABEL_13:
    v26 = v29;
  }

  v65 = v26;
  v30 = v69;
  (*(v8 + 16))(v11, v74 + OBJC_IVAR____TtC17DeviceDiscoveryUI22DeviceBrowserViewModel_browseDescriptor, v69);
  sub_238152D6C();
  (*(v8 + 8))(v11, v30);
  nw_browse_descriptor_get_browse_scope();
  swift_unknownObjectRelease();
  sub_238152DDC();
  sub_238152D8C();
  sub_23814F050(&qword_27DEEBA08, MEMORY[0x277CD90C8]);
  v31 = v71;
  v32 = sub_23815535C();
  v33 = *(v70 + 8);
  v33(v16, v31);
  v33(v18, v31);
  v78 = &type metadata for SharingFeatureFlags;
  v79 = sub_23807ABE4();
  LOBYTE(v76) = 1;
  LOBYTE(v33) = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(&v76);
  LOBYTE(v30) = v33 & v32;
  v34 = type metadata accessor for _DDDevicePickerView();
  v35 = v72;
  v36 = *(v72 + v34[13] + 8);
  v37 = *(v72 + v34[15] + 8);
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v38 = v4[5];
  *(v7 + v38) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v39 = v4[6];
  *(v7 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v40 = v4[7];
  *(v7 + v40) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v41 = v7 + v4[10];
  v75 = 0;
  v42 = v37;
  sub_2381546FC();
  v43 = v77;
  *v41 = v76;
  *(v41 + 1) = v43;
  v44 = v7 + v4[11];
  v75 = 0;
  sub_2381546FC();
  v45 = v77;
  *v44 = v76;
  *(v44 + 1) = v45;
  v46 = (v7 + v4[8]);
  type metadata accessor for _DDAskToAirDropManager();
  sub_23814F050(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager);
  v47 = v36;
  *v46 = sub_2381539BC();
  v46[1] = v48;
  v49 = (v7 + v4[9]);
  type metadata accessor for _DDPinPairingManager();
  sub_23814F050(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
  *v49 = sub_2381539BC();
  v49[1] = v50;
  *(v7 + v4[12]) = v30 & 1;
  if ((v30 & 1) != 0 || (sub_2381364CC() & 1) == 0 && (sub_238071D48()) && *(v74 + v68) != 2)
  {
    v51 = *(v35 + v34[14] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v76 == 8)
    {
      sub_23815377C();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v60 = v66;
      sub_23814EF88(v7, v66, type metadata accessor for _DDDevicePickerEducationView);
      v61 = &v60[*(v67 + 36)];
      *v61 = v65;
      *(v61 + 1) = v53;
      *(v61 + 2) = v55;
      *(v61 + 3) = v57;
      *(v61 + 4) = v59;
      v61[40] = 0;
      sub_23814C6C4();
    }
  }

  v62 = sub_2381547BC();
  result = sub_23814EFF0(v7, type metadata accessor for _DDDevicePickerEducationView);
  *v73 = v62;
  return result;
}

uint64_t sub_23813DD84(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();
}

uint64_t sub_23813DE00(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2380712E4(a1, &v13 - v9, &qword_27DEEC9F0, &qword_23815A090);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2380712E4(v10, v8, &qword_27DEEC9F0, &qword_23815A090);

  sub_238152A9C();
  return sub_238071284(v10, &qword_27DEEC9F0, &qword_23815A090);
}

uint64_t sub_23813DF30(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for _DDDevicePickerView() + 60) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v3 == 1)
  {
    return sub_238103664();
  }

  return result;
}

uint64_t sub_23813DFC8(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20[-v9];
  v11 = a1 + *(v3 + 88);
  v12 = *v11;
  v13 = *(v11 + 8);
  v20[16] = v12;
  v21 = v13;
  v20[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();
  v14 = sub_238154FBC();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_23814EF88(a1, v6, type metadata accessor for _DDDevicePickerView);
  sub_238154F8C();
  v15 = sub_238154F7C();
  v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_23814E8B0(v6, v17 + v16, type metadata accessor for _DDDevicePickerView);
  sub_2381351E4(0, 0, v10, &unk_23815F4E8, v17);
}

uint64_t sub_23813E1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2381554BC();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_238154F8C();
  v4[8] = sub_238154F7C();
  v9 = sub_238154F3C();
  v4[9] = v9;
  v4[10] = v8;

  return MEMORY[0x2822009F8](sub_23813E2F0, v9, v8);
}

uint64_t sub_23813E2F0()
{
  v1 = *(v0 + 56);
  sub_23815562C();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_23813E3BC;
  v3 = *(v0 + 56);

  return sub_23814A898(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_23813E3BC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 80);
  v9 = *(v2 + 72);
  if (v0)
  {
    v10 = sub_23813E61C;
  }

  else
  {
    v10 = sub_23813E554;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_23813E554()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);

  v4 = (v3 + *(type metadata accessor for _DDDevicePickerView() + 80));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 104) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815471C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23813E61C()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_23813E688(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23814EF88(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23814E8B0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for _DDDevicePickerView);
  return sub_23815474C();
}

uint64_t sub_23813E7DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238154C8C();
  v4 = sub_238154C8C();
  v5 = DDUILocalizedString();

  sub_238154CCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_238158810;
  v7 = *(v1 + *(type metadata accessor for _DDDevicePickerView() + 64) + 8);
  v8 = *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID + 8);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
  sub_2380F9130();

  v10 = sub_2380F3278();
  if (!v10)
  {
    v8 = 0;
LABEL_4:
    v11 = 0xE000000000000000;
    goto LABEL_5;
  }

  v21 = v10;
  v22 = [v10 localizedName];
  v8 = sub_238154CCC();
  v11 = v23;

LABEL_5:
  v12 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2380F1440();
  *(v6 + 64) = v13;
  *(v6 + 32) = v8;
  *(v6 + 40) = v11;
  v14 = *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName);
  v15 = *(v7 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_activePairingDeviceName + 8);
  *(v6 + 96) = v12;
  *(v6 + 104) = v13;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = sub_23807CB28(100);
  }

  *(v6 + 72) = v14;
  *(v6 + 80) = v16;

  sub_238154C9C();

  sub_2380704A0();
  result = sub_23815438C();
  *a1 = result;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_23813EA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _DDDevicePickerView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23814EF88(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23814E8B0(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _DDDevicePickerView);
  v8 = sub_2381537AC();
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2381546FC();
  v30 = v37;
  v28 = v36;
  v29 = v38;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v11 = v36;
  v27 = v37;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v12 = v36;
  v13 = v37;
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v14 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager();
  sub_23814F050(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
  v15 = v14;
  v16 = sub_2381539BC();
  v18 = v17;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v19 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_23814F050(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v20 = v19;
  result = sub_2381539BC();
  *a1 = 6;
  v22 = v32 & 1;
  v23 = v31 & 1;
  v24 = v30;
  *(a1 + 8) = v28;
  *(a1 + 16) = v24;
  *(a1 + 24) = v29;
  *(a1 + 32) = v11;
  *(a1 + 33) = v36;
  *(a1 + 36) = *(&v36 + 3);
  *(a1 + 40) = v27;
  *(a1 + 48) = v12;
  *(a1 + 49) = v34;
  *(a1 + 52) = *(&v34 + 3);
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  *(a1 + 68) = *&v40[3];
  *(a1 + 65) = *v40;
  *(a1 + 72) = v33;
  *(a1 + 80) = v23;
  *(a1 + 84) = *&v39[3];
  *(a1 + 81) = *v39;
  *(a1 + 88) = v16;
  *(a1 + 96) = v18;
  *(a1 + 104) = result;
  *(a1 + 112) = v25;
  *(a1 + 120) = sub_23814AD50;
  *(a1 + 128) = v7;
  return result;
}

uint64_t sub_23813ED7C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = a2[3];
  v26 = a2[2];
  v27 = v4;
  v28 = *(a2 + 64);
  v5 = a2[1];
  v24 = *a2;
  v25 = v5;
  if (qword_27DEEA120 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEEDA48);
  sub_23808E888(&v24, &v22);
  v7 = sub_23815291C();
  v8 = sub_2381550BC();
  sub_23808E828(&v24);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = sub_23808884C();
    v13 = sub_238085EAC(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_238060000, v7, v8, "New DeviceAccessController state: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2383EA8A0](v10, -1, -1);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v14 = v24;
  if (v28 == 2)
  {
    v19 = (a3 + *(type metadata accessor for _DDDevicePickerView() + 76));
    v17 = *v19;
    v18 = *(v19 + 1);
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_12:
    LOBYTE(v22) = v17;
    v23 = v18;
    goto LABEL_13;
  }

  if (v28 == 3)
  {
    v15 = vorrq_s8(v26, v27);
    if (!(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *(&v25 + 1) | v25 | *(&v24 + 1) | v24))
    {
      v20 = (a3 + *(type metadata accessor for _DDDevicePickerView() + 76));
      v17 = *v20;
      v18 = *(v20 + 1);
      goto LABEL_12;
    }
  }

  v16 = (a3 + *(type metadata accessor for _DDDevicePickerView() + 76));
  v17 = *v16;
  v18 = *(v16 + 1);
LABEL_10:
  LOBYTE(v22) = v17;
  v23 = v18;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_23813EFD0@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAA0, &qword_23815F418);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v70 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAA8, &qword_23815F420);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v7 = &v70 - v6;
  v8 = sub_238152F3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAB0, &qword_23815F428);
  v82 = *(v77 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v77);
  v86 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAB8, &qword_23815F430);
  v78 = *(v15 - 8);
  v16 = *(v78 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v70 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v75 = &v70 - v22;
  MEMORY[0x28223BE20](v21);
  v76 = &v70 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAC0, &qword_23815F438);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDAC8, &qword_23815F440);
  v83 = *(v28 - 8);
  v84 = v28;
  v29 = *(v83 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - v30;
  if (sub_238139870() == 1)
  {
    sub_238136C8C(v27);
    v32 = (v1 + *(type metadata accessor for _DDDevicePickerView() + 112));
    v33 = *v32;
    v34 = v32[1];
    sub_2381548DC();
    sub_2381538EC();
    v35 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEDB28, &qword_23815F478) + 36)];
    v36 = v88;
    *v35 = v87;
    *(v35 + 1) = v36;
    *(v35 + 2) = v89;
    v37 = sub_23815497C();
    v38 = &v27[*(v24 + 36)];
    *v38 = v37;
    v38[1] = v34;
    sub_238149948();
    sub_2381497A0();
    sub_238134D20(v27, v24);
    v39 = &qword_27DEEDAC0;
    v40 = &qword_23815F438;
    v41 = v27;
  }

  else
  {
    v72 = v15;
    v73 = v24;
    sub_238136C8C(v86);
    sub_238152F2C();
    v42 = sub_238152EEC();
    (*(v9 + 8))(v12, v8);
    if (v42)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 16))(v81, v86, v77);
      swift_storeEnumTagMultiPayload();
      v71 = sub_238149488();
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
      v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
      v48 = sub_23814965C();
      v49 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v50 = sub_23807B04C();
      *&v87 = v46;
      *(&v87 + 1) = v47;
      *&v88 = MEMORY[0x277CE0BD8];
      *(&v88 + 1) = &type metadata for _DDPinEntryAlertView;
      *&v89 = v48;
      *(&v89 + 1) = v49;
      v90 = MEMORY[0x277CE0BC8];
      v91 = v50;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v52 = sub_2380D0648();
      *&v87 = v45;
      *(&v87 + 1) = &type metadata for DAPairingState;
      *&v88 = OpaqueTypeConformance2;
      *(&v88 + 1) = v52;
      swift_getOpaqueTypeConformance2();
      v53 = v74;
      sub_238153ECC();
    }

    else
    {
      v54 = sub_2381540FC();
      v55 = v77;
      (*(v82 + 16))(v7, v86, v77);
      v56 = v81;
      v7[*(v80 + 36)] = v54;
      sub_2380712E4(v7, v56, &qword_27DEEDAA8, &qword_23815F420);
      swift_storeEnumTagMultiPayload();
      v71 = sub_238149488();
      v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAD8, &qword_23815F448);
      v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEDAE0, &unk_23815F450);
      v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
      v59 = sub_23814965C();
      v60 = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
      v61 = sub_23807B04C();
      *&v87 = v57;
      *(&v87 + 1) = v58;
      *&v88 = MEMORY[0x277CE0BD8];
      *(&v88 + 1) = &type metadata for _DDPinEntryAlertView;
      *&v89 = v59;
      *(&v89 + 1) = v60;
      v90 = MEMORY[0x277CE0BC8];
      v91 = v61;
      v62 = swift_getOpaqueTypeConformance2();
      v63 = sub_2380D0648();
      *&v87 = v70;
      *(&v87 + 1) = &type metadata for DAPairingState;
      *&v88 = v62;
      *(&v88 + 1) = v63;
      swift_getOpaqueTypeConformance2();
      v53 = v74;
      v44 = v55;
      v43 = v82;
      sub_238153ECC();
      sub_238071284(v7, &qword_27DEEDAA8, &qword_23815F420);
    }

    v64 = v72;
    (*(v43 + 8))(v86, v44);
    sub_2381497A0();
    v65 = *(v78 + 16);
    v66 = v75;
    v65(v75, v53, v64);
    sub_238071284(v53, &qword_27DEEDAB8, &qword_23815F430);
    v67 = v76;
    v65(v76, v66, v64);
    sub_238071284(v66, &qword_27DEEDAB8, &qword_23815F430);
    v68 = v79;
    v65(v79, v67, v64);
    sub_238149948();
    sub_238134E18(v68, v73, v64);
    sub_238071284(v68, &qword_27DEEDAB8, &qword_23815F430);
    v41 = v67;
    v39 = &qword_27DEEDAB8;
    v40 = &qword_23815F430;
  }

  sub_238071284(v41, v39, v40);
  sub_238149BA8();
  (*(v83 + 16))(v85, v31, v84);
  return sub_238071284(v31, &qword_27DEEDAC8, &qword_23815F440);
}