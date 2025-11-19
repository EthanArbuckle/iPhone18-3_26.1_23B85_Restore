uint64_t sub_24088D170()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24088D280, v2, 0);
}

uint64_t sub_24088D280()
{
  v125 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v119 = *(v0 + 568);
  v8 = *(v0 + 552);
  v112 = *(v0 + 624);
  v116 = *(v0 + 544);
  v9 = *(v0 + 536);
  sub_2408D3570();
  (*(v5 + 8))(v4, v6);
  sub_2407F0568();
  sub_2408D4910();
  (*(v2 + 16))(v112, v1, v3);
  v113 = *(v8 + 16);
  v113(v119, v7, v116);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = *(v0 + 552);
  v17 = *(v0 + 536);
  v18 = *(v0 + 504);
  v120 = *(v0 + 496);
  if (v12)
  {
    v105 = *(v0 + 544);
    v103 = *(v0 + 568);
    v109 = *(v0 + 536);
    v19 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v124[0] = v107;
    *v19 = 136315394;
    sub_2408B4B40(&qword_27E507A08, 255, MEMORY[0x277CED7B0]);
    v101 = v11;
    v20 = sub_2408D5220();
    v22 = v21;
    log = v10;
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = sub_2408CC504(v20, v22, v124);

    *(v19 + 4) = v24;
    *(v19 + 12) = 256;
    LOBYTE(v24) = sub_2408D46F0();
    v25 = *(v16 + 8);
    v25(v103, v105);
    *(v19 + 14) = v24;
    _os_log_impl(&dword_2407CF000, log, v101, "Creating transport for SK server with discoveryModel: %s and advertisementFlags: %hhu", v19, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    MEMORY[0x245CC9F60](v107, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);

    v26 = *(v18 + 8);
    v26(v109, v120);
  }

  else
  {
    v25 = *(v16 + 8);
    v25(*(v0 + 568), *(v0 + 544));

    v23 = *(v14 + 8);
    v23(v13, v15);
    v26 = *(v18 + 8);
    v26(v17, v120);
  }

  v91 = v25;
  v92 = v23;
  v121 = v26;
  *(v0 + 680) = v26;
  *(v0 + 672) = v25;
  *(v0 + 664) = v23;
  v27 = *(v0 + 632);
  v28 = *(v0 + 576);
  v29 = *(v0 + 560);
  v30 = *(v0 + 544);
  v31 = *(v0 + 464);
  v110 = *(v0 + 488);
  v93 = *(v0 + 448);
  v94 = *(v0 + 440);
  v95 = *(v0 + 432);
  v96 = *(v0 + 416);
  v97 = *(v0 + 424);
  v98 = *(v0 + 408);
  v32 = *(v0 + 376);
  v33 = *(v0 + 384);
  v34 = *(v0 + 368);
  v35 = sub_2408D49A0();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  sub_2408D4110();
  sub_2408D3FF0();
  v113(v29, v28, v30);
  sub_2408D4100();
  v36 = swift_allocObject();
  swift_weakInit();
  sub_2407D91C4(v0 + 16, v0 + 56);
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v34;
  sub_2407D2554((v0 + 56), (v37 + 4));
  v37[9] = v32;
  sub_2408B31E8();

  sub_2408D4C60();
  *(v0 + 344) = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v96 + 104))(v97, *MEMORY[0x277D85260], v98);
  sub_2408D4FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038);
  sub_2408D3470();
  swift_beginAccess();
  v38 = off_28130F0A0;
  if (off_28130F0A0)
  {
    v39 = *(v0 + 520);
    v40 = *(v0 + 488);

    v38(v40);
    sub_2407D1854(v38);
    sub_2407D2554((v0 + 136), v0 + 96);
    sub_2408D4910();
    sub_2407D91C4(v0 + 96, v0 + 176);
    v41 = sub_2408D4B10();
    v42 = sub_2408D4F20();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 520);
    v45 = *(v0 + 496);
    v46 = *(v0 + 504);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124[0] = v48;
      *v47 = 136315138;
      sub_2407D91C4(v0 + 176, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A00, &qword_2408D9260);
      v49 = sub_2408D4D40();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v52 = sub_2408CC504(v49, v51, v124);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2407CF000, v41, v42, "Activating SetupKit server %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x245CC9F60](v48, -1, -1);
      MEMORY[0x245CC9F60](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    }

    v121(v44, v45);
    v75 = *(v0 + 120);
    v76 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v75);
    v77 = *(v76 + 8);
    v78 = *(MEMORY[0x277CED550] + 4);
    v79 = swift_task_alloc();
    *(v0 + 688) = v79;
    *v79 = v0;
    v79[1] = sub_24088DE80;

    return MEMORY[0x28213F250](v75, v77);
  }

  else
  {
    v53 = *(v0 + 528);
    sub_2408D4910();
    v54 = sub_2408D4B10();
    v55 = sub_2408D4F40();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2407CF000, v54, v55, "Unexpectedly found no V1AppleIDSetupServerInit", v56, 2u);
      MEMORY[0x245CC9F60](v56, -1, -1);
    }

    v57 = *(v0 + 528);
    v58 = *(v0 + 496);
    v59 = *(v0 + 504);
    v60 = *(v0 + 400);
    v61 = *(v0 + 376);

    v121(v57, v58);
    v62 = *(v61 + 16);
    v63 = *(*v62 + *MEMORY[0x277D841D0] + 16);
    v64 = (*(*v62 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v62 + v64));
    sub_24080F060(v62 + v63, v60, &qword_27E506EA8, &unk_2408D9130);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v66 = *(v65 - 8);
    (*(v66 + 56))(v62 + v63, 1, 1, v65);
    os_unfair_lock_unlock((v62 + v64));

    v67 = (*(v66 + 48))(v60, 1, v65);
    v114 = *(v0 + 616);
    v117 = *(v0 + 608);
    v122 = *(v0 + 632);
    v68 = *(v0 + 576);
    v69 = *(v0 + 552);
    v70 = *(v0 + 544);
    v71 = *(v0 + 480);
    v72 = *(v0 + 488);
    v73 = *(v0 + 472);
    v74 = *(v0 + 400);
    if (v67 == 1)
    {
      (*(v71 + 8))(*(v0 + 488), *(v0 + 472));
      v91(v68, v70);
      v92(v122, v117);
      sub_2407D9440(v74, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      *(v0 + 360) = swift_allocError();
      sub_2408D4E10();
      (*(v71 + 8))(v72, v73);
      v91(v68, v70);
      v92(v122, v117);
      (*(v66 + 8))(v74, v65);
    }

    v80 = *(v0 + 632);
    v81 = *(v0 + 624);
    v82 = *(v0 + 600);
    v83 = *(v0 + 576);
    v84 = *(v0 + 568);
    v85 = *(v0 + 560);
    v86 = *(v0 + 536);
    v87 = *(v0 + 528);
    v88 = *(v0 + 520);
    loga = *(v0 + 512);
    v102 = *(v0 + 488);
    v104 = *(v0 + 464);
    v106 = *(v0 + 456);
    v108 = *(v0 + 448);
    v111 = *(v0 + 440);
    v115 = *(v0 + 424);
    v118 = *(v0 + 400);
    v123 = *(v0 + 392);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v89 = *(v0 + 8);

    return v89();
  }
}

uint64_t sub_24088DE80()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 384);
  if (v0)
  {
    v6 = sub_24088E230;
  }

  else
  {
    v6 = sub_24088DFAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24088DFAC()
{
  v33 = v0[79];
  v35 = v0[83];
  v27 = v0[77];
  v29 = v0[84];
  v31 = v0[76];
  v25 = v0[72];
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[60];
  v4 = v0[61];
  v5 = v0[59];
  v6 = v0[48];
  v8 = v0[15];
  v7 = v0[16];
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 12, v8);
  v0[30] = v8;
  v0[31] = *(v7 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 27);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  (*(v3 + 8))(v4, v5);
  v29(v25, v2);
  v35(v33, v31);
  swift_beginAccess();
  sub_2408B3974((v0 + 27), v6 + 120, &qword_27E506E98, &qword_2408D7FA0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v11 = v0[79];
  v12 = v0[78];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[71];
  v16 = v0[70];
  v17 = v0[67];
  v18 = v0[66];
  v19 = v0[65];
  v22 = v0[64];
  v23 = v0[61];
  v24 = v0[58];
  v26 = v0[57];
  v28 = v0[56];
  v30 = v0[55];
  v32 = v0[53];
  v34 = v0[50];
  v36 = v0[49];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v20 = v0[1];

  return v20();
}

uint64_t sub_24088E230()
{
  v1 = v0[87];
  v2 = v0[64];
  sub_2408D4910();
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[87];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Caught error while attempting to activate server %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v0[85];
  v13 = v0[63];
  v12 = v0[64];
  v14 = v0[62];
  v15 = v0[49];
  v16 = v0[47];

  v11(v12, v14);
  v17 = v0[5];
  v18 = __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
  v19 = *(v17 - 8);
  v20 = *(v19 + 64) + 15;
  v21 = swift_task_alloc();
  (*(v19 + 16))(v21, v18, v17);
  sub_2408D4670();

  v22 = *(v16 + 16);
  v23 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v22 + v24));
  sub_24080F060(v22 + v23, v15, &qword_27E506EA8, &unk_2408D9130);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v26 = *(v25 - 8);
  (*(v26 + 56))(v22 + v23, 1, 1, v25);
  os_unfair_lock_unlock((v22 + v24));

  v27 = (*(v26 + 48))(v15, 1, v25);
  v28 = v0[87];
  v29 = v0[83];
  v56 = v0[77];
  v58 = v0[84];
  v60 = v0[76];
  v62 = v0[79];
  v54 = v0[72];
  v30 = v0[69];
  v31 = v0[68];
  v32 = v0[60];
  v33 = v0[61];
  v34 = v0[59];
  v35 = v0[49];
  if (v27 == 1)
  {

    (*(v32 + 8))(v33, v34);
    v58(v54, v31);
    v29(v62, v60);
    sub_2407D9440(v35, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v0[44] = v28;
    v52 = v29;
    v36 = v28;
    v37 = v28;
    sub_2408D4E10();

    (*(v32 + 8))(v33, v34);
    v58(v54, v31);
    v52(v62, v60);
    (*(v26 + 8))(v35, v25);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[75];
  v41 = v0[72];
  v42 = v0[71];
  v43 = v0[70];
  v44 = v0[67];
  v45 = v0[66];
  v46 = v0[65];
  v49 = v0[64];
  v50 = v0[61];
  v51 = v0[58];
  v53 = v0[57];
  v55 = v0[56];
  v57 = v0[55];
  v59 = v0[53];
  v61 = v0[50];
  v63 = v0[49];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v47 = v0[1];

  return v47();
}

uint64_t sub_24088E78C(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v5 = sub_2408D4FD0();
  v3[51] = v5;
  v6 = *(v5 - 8);
  v3[52] = v6;
  v7 = *(v6 + 64) + 15;
  v3[53] = swift_task_alloc();
  v8 = sub_2408D4FC0();
  v3[54] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v10 = *(*(sub_2408D4C70() - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v11 = *(*(sub_2408D40F0() - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v3[59] = v13;
  v14 = *(v13 - 8);
  v3[60] = v14;
  v15 = *(v14 + 64) + 15;
  v3[61] = swift_task_alloc();
  v16 = sub_2408D4B20();
  v3[62] = v16;
  v17 = *(v16 - 8);
  v3[63] = v17;
  v18 = *(v17 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v19 = sub_2408D4710();
  v3[68] = v19;
  v20 = *(v19 - 8);
  v3[69] = v20;
  v21 = *(v20 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v22 = sub_2408D4350();
  v3[73] = v22;
  v23 = *(v22 - 8);
  v3[74] = v23;
  v24 = *(v23 + 64) + 15;
  v3[75] = swift_task_alloc();
  v25 = sub_2408D4130();
  v3[76] = v25;
  v26 = *(v25 - 8);
  v3[77] = v26;
  v27 = *(v26 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088EB74, v2, 0);
}

uint64_t sub_24088EB74()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = swift_allocObject();
  v0[80] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CED880] + 4);
  v8 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v5 = swift_task_alloc();
  v0[81] = v5;
  *v5 = v0;
  v5[1] = sub_24088EC7C;
  v6 = v0[46];

  return v8(v0 + 2, sub_2408B3924, v3);
}

uint64_t sub_24088EC7C()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 640);
  v4 = *v0;

  v5 = *(MEMORY[0x277CED858] + 4);
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v1[82] = v6;
  *v6 = v4;
  v6[1] = sub_24088EE08;
  v7 = v1[75];
  v8 = v1[46];

  return v10(v7);
}

uint64_t sub_24088EE08()
{
  v1 = *(*v0 + 656);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24088EF18, v2, 0);
}

uint64_t sub_24088EF18()
{
  v125 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);
  v119 = *(v0 + 568);
  v8 = *(v0 + 552);
  v112 = *(v0 + 624);
  v116 = *(v0 + 544);
  v9 = *(v0 + 536);
  sub_2408D42B0();
  (*(v5 + 8))(v4, v6);
  sub_2407F0568();
  sub_2408D4910();
  (*(v2 + 16))(v112, v1, v3);
  v113 = *(v8 + 16);
  v113(v119, v7, v116);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = *(v0 + 552);
  v17 = *(v0 + 536);
  v18 = *(v0 + 504);
  v120 = *(v0 + 496);
  if (v12)
  {
    v105 = *(v0 + 544);
    v103 = *(v0 + 568);
    v109 = *(v0 + 536);
    v19 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v124[0] = v107;
    *v19 = 136315394;
    sub_2408B4B40(&qword_27E507A08, 255, MEMORY[0x277CED7B0]);
    v101 = v11;
    v20 = sub_2408D5220();
    v22 = v21;
    log = v10;
    v23 = *(v14 + 8);
    v23(v13, v15);
    v24 = sub_2408CC504(v20, v22, v124);

    *(v19 + 4) = v24;
    *(v19 + 12) = 256;
    LOBYTE(v24) = sub_2408D46F0();
    v25 = *(v16 + 8);
    v25(v103, v105);
    *(v19 + 14) = v24;
    _os_log_impl(&dword_2407CF000, log, v101, "Creating transport for SK server with discoveryModel: %s and advertisementFlags: %hhu", v19, 0xFu);
    __swift_destroy_boxed_opaque_existential_0Tm(v107);
    MEMORY[0x245CC9F60](v107, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);

    v26 = *(v18 + 8);
    v26(v109, v120);
  }

  else
  {
    v25 = *(v16 + 8);
    v25(*(v0 + 568), *(v0 + 544));

    v23 = *(v14 + 8);
    v23(v13, v15);
    v26 = *(v18 + 8);
    v26(v17, v120);
  }

  v91 = v25;
  v92 = v23;
  v121 = v26;
  *(v0 + 680) = v26;
  *(v0 + 672) = v25;
  *(v0 + 664) = v23;
  v27 = *(v0 + 632);
  v28 = *(v0 + 576);
  v29 = *(v0 + 560);
  v30 = *(v0 + 544);
  v31 = *(v0 + 464);
  v110 = *(v0 + 488);
  v93 = *(v0 + 448);
  v94 = *(v0 + 440);
  v95 = *(v0 + 432);
  v96 = *(v0 + 416);
  v97 = *(v0 + 424);
  v98 = *(v0 + 408);
  v32 = *(v0 + 376);
  v33 = *(v0 + 384);
  v34 = *(v0 + 368);
  v35 = sub_2408D49A0();
  (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  sub_2408D4110();
  sub_2408D3FF0();
  v113(v29, v28, v30);
  sub_2408D4100();
  v36 = swift_allocObject();
  swift_weakInit();
  sub_2407D91C4(v0 + 16, v0 + 56);
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v34;
  sub_2407D2554((v0 + 56), (v37 + 4));
  v37[9] = v32;
  sub_2408B31E8();

  sub_2408D4C60();
  *(v0 + 344) = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v96 + 104))(v97, *MEMORY[0x277D85260], v98);
  sub_2408D4FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038);
  sub_2408D3470();
  swift_beginAccess();
  v38 = off_28130F0A0;
  if (off_28130F0A0)
  {
    v39 = *(v0 + 520);
    v40 = *(v0 + 488);

    v38(v40);
    sub_2407D1854(v38);
    sub_2407D2554((v0 + 136), v0 + 96);
    sub_2408D4910();
    sub_2407D91C4(v0 + 96, v0 + 176);
    v41 = sub_2408D4B10();
    v42 = sub_2408D4F20();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 520);
    v45 = *(v0 + 496);
    v46 = *(v0 + 504);
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v124[0] = v48;
      *v47 = 136315138;
      sub_2407D91C4(v0 + 176, v0 + 256);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A00, &qword_2408D9260);
      v49 = sub_2408D4D40();
      v51 = v50;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
      v52 = sub_2408CC504(v49, v51, v124);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2407CF000, v41, v42, "Activating SetupKit server %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v48);
      MEMORY[0x245CC9F60](v48, -1, -1);
      MEMORY[0x245CC9F60](v47, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 176));
    }

    v121(v44, v45);
    v75 = *(v0 + 120);
    v76 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v75);
    v77 = *(v76 + 8);
    v78 = *(MEMORY[0x277CED550] + 4);
    v79 = swift_task_alloc();
    *(v0 + 688) = v79;
    *v79 = v0;
    v79[1] = sub_24088FB18;

    return MEMORY[0x28213F250](v75, v77);
  }

  else
  {
    v53 = *(v0 + 528);
    sub_2408D4910();
    v54 = sub_2408D4B10();
    v55 = sub_2408D4F40();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2407CF000, v54, v55, "Unexpectedly found no V1AppleIDSetupServerInit", v56, 2u);
      MEMORY[0x245CC9F60](v56, -1, -1);
    }

    v57 = *(v0 + 528);
    v58 = *(v0 + 496);
    v59 = *(v0 + 504);
    v60 = *(v0 + 400);
    v61 = *(v0 + 376);

    v121(v57, v58);
    v62 = *(v61 + 16);
    v63 = *(*v62 + *MEMORY[0x277D841D0] + 16);
    v64 = (*(*v62 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v62 + v64));
    sub_24080F060(v62 + v63, v60, &qword_27E506EA8, &unk_2408D9130);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v66 = *(v65 - 8);
    (*(v66 + 56))(v62 + v63, 1, 1, v65);
    os_unfair_lock_unlock((v62 + v64));

    v67 = (*(v66 + 48))(v60, 1, v65);
    v114 = *(v0 + 616);
    v117 = *(v0 + 608);
    v122 = *(v0 + 632);
    v68 = *(v0 + 576);
    v69 = *(v0 + 552);
    v70 = *(v0 + 544);
    v71 = *(v0 + 480);
    v72 = *(v0 + 488);
    v73 = *(v0 + 472);
    v74 = *(v0 + 400);
    if (v67 == 1)
    {
      (*(v71 + 8))(*(v0 + 488), *(v0 + 472));
      v91(v68, v70);
      v92(v122, v117);
      sub_2407D9440(v74, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      *(v0 + 360) = swift_allocError();
      sub_2408D4E10();
      (*(v71 + 8))(v72, v73);
      v91(v68, v70);
      v92(v122, v117);
      (*(v66 + 8))(v74, v65);
    }

    v80 = *(v0 + 632);
    v81 = *(v0 + 624);
    v82 = *(v0 + 600);
    v83 = *(v0 + 576);
    v84 = *(v0 + 568);
    v85 = *(v0 + 560);
    v86 = *(v0 + 536);
    v87 = *(v0 + 528);
    v88 = *(v0 + 520);
    loga = *(v0 + 512);
    v102 = *(v0 + 488);
    v104 = *(v0 + 464);
    v106 = *(v0 + 456);
    v108 = *(v0 + 448);
    v111 = *(v0 + 440);
    v115 = *(v0 + 424);
    v118 = *(v0 + 400);
    v123 = *(v0 + 392);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

    v89 = *(v0 + 8);

    return v89();
  }
}

uint64_t sub_24088FB18()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 384);
  if (v0)
  {
    v6 = sub_2408B5310;
  }

  else
  {
    v6 = sub_2408B5340;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24088FC44(void *a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v164 = a4;
  v163 = a3;
  v6 = sub_2408D35B0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v166 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2408D3500();
  v175 = *(v9 - 8);
  v10 = *(v175 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v158 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v152 - v13;
  v162 = sub_2408D3FD0();
  v161 = *(v162 - 8);
  v14 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = &v152 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v153 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v156 = &v152 - v21;
  MEMORY[0x28223BE20](v20);
  v154 = &v152 - v22;
  v173 = sub_2408D4090();
  v182 = *(v173 - 8);
  v23 = *(v182 + 64);
  v24 = MEMORY[0x28223BE20](v173);
  v169 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v172 = &v152 - v26;
  v181 = sub_2408D4130();
  v171 = *(v181 - 8);
  v27 = *(v171 + 64);
  v28 = MEMORY[0x28223BE20](v181);
  v168 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v170 = &v152 - v30;
  v176 = sub_2408D3FC0();
  v179 = *(v176 - 8);
  v31 = *(v179 + 64);
  v32 = MEMORY[0x28223BE20](v176);
  v167 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v174 = &v152 - v34;
  v35 = sub_2408D3630();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v152 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_2408D4B20();
  v180 = *(v178 - 8);
  v40 = *(v180 + 64);
  v41 = MEMORY[0x28223BE20](v178);
  v152 = &v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v155 = &v152 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v152 - v45;
  sub_2408D4910();
  v47 = *(v36 + 16);
  v183 = a2;
  v47(v39, a2, v35);
  v48 = sub_2408D4B10();
  v49 = sub_2408D4F20();
  v50 = os_log_type_enabled(v48, v49);
  v165 = a1;
  v177 = v9;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v184 = v52;
    *v51 = 136315138;
    sub_2408B4B40(&qword_27E507A30, 255, MEMORY[0x277CED360]);
    v53 = sub_2408D5220();
    v55 = v54;
    (*(v36 + 8))(v39, v35);
    v56 = sub_2408CC504(v53, v55, &v184);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2407CF000, v48, v49, "Received updated model via tap: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    MEMORY[0x245CC9F60](v52, -1, -1);
    v57 = v51;
    v9 = v177;
    MEMORY[0x245CC9F60](v57, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v39, v35);
  }

  v159 = *(v180 + 8);
  v159(v46, v178);
  v58 = v170;
  sub_2408D3570();
  v59 = v172;
  sub_2408D40A0();
  v60 = *(v171 + 8);
  v60(v58, v181);
  v61 = v182;
  v62 = *(v182 + 88);
  v63 = v173;
  v64 = v62(v59, v173);
  v65 = *MEMORY[0x277CED758];
  v66 = v176;
  if (v64 == *MEMORY[0x277CED758])
  {
    (*(v61 + 96))(v59, v63);
    (*(v179 + 32))(v174, v59, v66);
    v67 = sub_2408D3FB0();
    if (v67 != 2 && (v67 & 1) != 0)
    {
      v68 = v66;
      v69 = v178;
      if (qword_27E506920 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v69, qword_27E506E60);
      v70 = sub_2408D4B10();
      v71 = sub_2408D4F20();
      v72 = os_log_type_enabled(v70, v71);
      v73 = v175;
      v74 = v154;
      v75 = v165;
      if (v72)
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2407CF000, v70, v71, "Proximity connector detected manual selection, invalidating, untapping, resuming", v76, 2u);
        MEMORY[0x245CC9F60](v76, -1, -1);
      }

      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v77 = swift_allocError();
      (*(v73 + 104))(v78, *MEMORY[0x277CED2D8], v9);
      sub_2407F0D64();

      v79 = *(v164 + 16);
      v80 = *(*v79 + *MEMORY[0x277D841D0] + 16);
      v81 = (*(*v79 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v79 + v81));
      sub_24080F060(v79 + v80, v74, &qword_27E506EA8, &unk_2408D9130);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v83 = *(v82 - 8);
      (*(v83 + 56))(v79 + v80, 1, 1, v82);
      os_unfair_lock_unlock((v79 + v81));

      if ((*(v83 + 48))(v74, 1, v82) == 1)
      {
        sub_2407D9440(v74, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        sub_2408B3B50();
        v184 = swift_allocError();
        sub_2408D4E10();
        (*(v83 + 8))(v74, v82);
      }

      v140 = v75[3];
      v141 = __swift_project_boxed_opaque_existential_1(v75, v140);
      v142 = *(*(v140 - 8) + 64);
      MEMORY[0x28223BE20](v141);
      (*(v144 + 16))(&v152 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v179 + 8))(v174, v68);
    }

    v84 = v66;
    (*(v179 + 8))(v174, v66);
  }

  else
  {
    v84 = v176;
    (*(v61 + 8))(v59, v63);
  }

  v85 = v168;
  sub_2408D3570();
  v86 = v169;
  sub_2408D40A0();
  v60(v85, v181);
  if (v62(v86, v63) == v65)
  {
    (*(v182 + 96))(v86, v63);
    v87 = v86;
    v88 = v179;
    v89 = v167;
    (*(v179 + 32))(v167, v87, v84);
    v90 = v160;
    sub_2408D3FA0();
    v91 = v161;
    v92 = v162;
    v93 = (*(v161 + 88))(v90, v162);
    v94 = v175;
    if (v93 == *MEMORY[0x277CED6B8])
    {
      (*(v91 + 8))(v90, v92);
      v95 = v155;
      sub_2408D4910();
      v96 = sub_2408D4B10();
      v97 = sub_2408D4F20();
      v98 = os_log_type_enabled(v96, v97);
      v99 = v177;
      if (v98)
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_2407CF000, v96, v97, "Proximity connector detected cancellation, invalidating, untapping.", v100, 2u);
        MEMORY[0x245CC9F60](v100, -1, -1);
      }

      v159(v95, v178);
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v101 = swift_allocError();
      v102 = *(v94 + 104);
      v102(v103, *MEMORY[0x277CED2D8], v99);
      sub_2407F0D64();

      v104 = *(v164 + 16);
      v105 = *(*v104 + *MEMORY[0x277D841D0] + 16);
      v106 = (*(*v104 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v104 + v106));
      v107 = v156;
      sub_24080F060(v104 + v105, v156, &qword_27E506EA8, &unk_2408D9130);
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v109 = *(v108 - 8);
      (*(v109 + 56))(v104 + v105, 1, 1, v108);
      os_unfair_lock_unlock((v104 + v106));

      if ((*(v109 + 48))(v107, 1, v108) == 1)
      {
        sub_2407D9440(v107, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v133 = swift_allocError();
        v102(v134, *MEMORY[0x277CED270], v99);
        v184 = v133;
        sub_2408D4E10();
        (*(v109 + 8))(v107, v108);
      }

      v135 = v165[3];
      v136 = __swift_project_boxed_opaque_existential_1(v165, v135);
      v137 = *(*(v135 - 8) + 64);
      MEMORY[0x28223BE20](v136);
      (*(v139 + 16))(&v152 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v179 + 8))(v167, v176);
    }

    (*(v88 + 8))(v89, v84);
    (*(v91 + 8))(v90, v92);
  }

  else
  {
    (*(v182 + 8))(v86, v63);
    v94 = v175;
  }

  v110 = v177;
  v111 = v166;
  sub_2408D35C0();
  if ((*(v94 + 48))(v111, 6, v110))
  {
    return sub_2408B4AE0(v111, MEMORY[0x277CED338]);
  }

  v113 = v157;
  (*(v94 + 32))(v157, v111, v110);
  v114 = *MEMORY[0x277CED270];
  v115 = *(v94 + 104);
  v116 = v158;
  v115(v158, v114, v110);
  v117 = sub_2408D34F0();
  v118 = *(v94 + 8);
  v118(v116, v110);
  result = (v118)(v113, v110);
  if (v117)
  {
    v119 = v152;
    sub_2408D4910();
    v120 = sub_2408D4B10();
    v121 = sub_2408D4F20();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_2407CF000, v120, v121, "Proximity connector detected failed state (User cancelled), untapping, resuming", v122, 2u);
      MEMORY[0x245CC9F60](v122, -1, -1);
    }

    v159(v119, v178);
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    v123 = swift_allocError();
    v115(v124, *MEMORY[0x277CED2D8], v110);
    sub_2407F0D64();

    v125 = *(v164 + 16);
    v126 = *(*v125 + *MEMORY[0x277D841D0] + 16);
    v127 = *(*v125 + 48) + 3;
    v128 = v110;
    v183 = v115;
    v129 = v127 & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v125 + v129));
    v130 = v153;
    sub_24080F060(v125 + v126, v153, &qword_27E506EA8, &unk_2408D9130);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v132 = *(v131 - 8);
    (*(v132 + 56))(v125 + v126, 1, 1, v131);
    os_unfair_lock_unlock((v125 + v129));

    if ((*(v132 + 48))(v130, 1, v131) == 1)
    {
      sub_2407D9440(v130, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v145 = swift_allocError();
      v183(v146, v114, v128);
      v184 = v145;
      sub_2408D4E10();
      (*(v132 + 8))(v130, v131);
    }

    v147 = v165[3];
    v148 = __swift_project_boxed_opaque_existential_1(v165, v147);
    v149 = *(*(v147 - 8) + 64);
    MEMORY[0x28223BE20](v148);
    (*(v151 + 16))(&v152 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_2408D4670();
  }

  return result;
}

uint64_t sub_24089116C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v149 = a4;
  v148 = a3;
  v150 = a1;
  v151 = sub_2408D42F0();
  v5 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151);
  v152 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2408D3FD0();
  v146 = *(v147 - 8);
  v7 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v141 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v143 = &v139 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v139 - v15;
  v162 = sub_2408D4090();
  v167 = *(v162 - 8);
  v17 = *(v167 + 64);
  v18 = MEMORY[0x28223BE20](v162);
  v155 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v139 - v20;
  v165 = sub_2408D4130();
  v158 = *(v165 - 8);
  v21 = *(v158 + 64);
  v22 = MEMORY[0x28223BE20](v165);
  v154 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v156 = &v139 - v24;
  v25 = sub_2408D3FC0();
  v164 = *(v25 - 8);
  v26 = *(v164 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v160 = &v139 - v30;
  v31 = sub_2408D4350();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2408D4B20();
  v166 = *(v163 - 8);
  v36 = *(v166 + 64);
  v37 = MEMORY[0x28223BE20](v163);
  v140 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v142 = &v139 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v139 - v41;
  sub_2408D4910();
  v43 = *(v32 + 16);
  v159 = a2;
  v43(v35, a2, v31);
  v44 = sub_2408D4B10();
  v45 = sub_2408D4F20();
  v46 = os_log_type_enabled(v44, v45);
  v161 = v25;
  v153 = v29;
  v139 = v16;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v171 = v48;
    *v47 = 136315138;
    sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960]);
    v49 = sub_2408D5220();
    v51 = v50;
    (*(v32 + 8))(v35, v31);
    v52 = sub_2408CC504(v49, v51, &v171);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_2407CF000, v44, v45, "Received updated model via tap: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    MEMORY[0x245CC9F60](v48, -1, -1);
    MEMORY[0x245CC9F60](v47, -1, -1);
  }

  else
  {

    (*(v32 + 8))(v35, v31);
  }

  v144 = *(v166 + 8);
  v144(v42, v163);
  v53 = v156;
  sub_2408D42B0();
  v54 = v157;
  sub_2408D40A0();
  v55 = *(v158 + 8);
  v55(v53, v165);
  v56 = v167;
  v57 = *(v167 + 88);
  v58 = v162;
  v59 = v57(v54, v162);
  v60 = *MEMORY[0x277CED758];
  v61 = v164;
  if (v59 == *MEMORY[0x277CED758])
  {
    (*(v56 + 96))(v54, v58);
    v62 = v54;
    v63 = v161;
    (*(v61 + 32))(v160, v62, v161);
    v64 = sub_2408D3FB0();
    if (v64 != 2 && (v64 & 1) != 0)
    {
      v65 = v61;
      if (qword_27E506920 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v163, qword_27E506E60);
      v66 = sub_2408D4B10();
      v67 = sub_2408D4F20();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v139;
      if (v68)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_2407CF000, v66, v67, "Proximity connector detected manual selection, invalidating, untapping, resuming", v70, 2u);
        MEMORY[0x245CC9F60](v70, -1, -1);
      }

      v71 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v72 = swift_allocError();
      (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277CED2D8], v71);
      sub_2407F0D64();

      v74 = *(v149 + 16);
      v75 = *(*v74 + *MEMORY[0x277D841D0] + 16);
      v76 = (*(*v74 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v74 + v76));
      sub_24080F060(v74 + v75, v69, &qword_27E506EA8, &unk_2408D9130);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v78 = *(v77 - 8);
      (*(v78 + 56))(v74 + v75, 1, 1, v77);
      os_unfair_lock_unlock((v74 + v76));

      if ((*(v78 + 48))(v69, 1, v77) == 1)
      {
        sub_2407D9440(v69, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        sub_2408B3B50();
        *&v171 = swift_allocError();
        sub_2408D4E10();
        (*(v78 + 8))(v69, v77);
      }

      v134 = v150[3];
      v135 = __swift_project_boxed_opaque_existential_1(v150, v134);
      v136 = *(*(v134 - 8) + 64);
      MEMORY[0x28223BE20](v135);
      (*(v138 + 16))(&v139 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v65 + 8))(v160, v63);
    }

    (*(v61 + 8))(v160, v63);
    v58 = v162;
  }

  else
  {
    (*(v56 + 8))(v54, v58);
  }

  v79 = v154;
  sub_2408D42B0();
  v80 = v155;
  sub_2408D40A0();
  v55(v79, v165);
  if (v57(v80, v58) == v60)
  {
    (*(v167 + 96))(v80, v58);
    v81 = v164;
    v82 = v153;
    v83 = v161;
    (*(v164 + 32))(v153, v80, v161);
    v84 = v145;
    sub_2408D3FA0();
    v85 = v146;
    v86 = v147;
    if ((*(v146 + 88))(v84, v147) == *MEMORY[0x277CED6B8])
    {
      (*(v85 + 8))(v84, v86);
      v87 = v142;
      sub_2408D4910();
      v88 = sub_2408D4B10();
      v89 = sub_2408D4F20();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_2407CF000, v88, v89, "Proximity connector detected cancellation, invalidating, untapping.", v90, 2u);
        MEMORY[0x245CC9F60](v90, -1, -1);
      }

      v144(v87, v163);
      v91 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v92 = swift_allocError();
      v93 = *(*(v91 - 8) + 104);
      v93(v94, *MEMORY[0x277CED2D8], v91);
      sub_2407F0D64();

      v95 = *(v149 + 16);
      v96 = *(*v95 + *MEMORY[0x277D841D0] + 16);
      v97 = (*(*v95 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v95 + v97));
      v98 = v143;
      sub_24080F060(v95 + v96, v143, &qword_27E506EA8, &unk_2408D9130);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v100 = *(v99 - 8);
      (*(v100 + 56))(v95 + v96, 1, 1, v99);
      os_unfair_lock_unlock((v95 + v97));

      if ((*(v100 + 48))(v98, 1, v99) == 1)
      {
        sub_2407D9440(v98, &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v119 = swift_allocError();
        v93(v120, *MEMORY[0x277CED270], v91);
        *&v171 = v119;
        sub_2408D4E10();
        (*(v100 + 8))(v98, v99);
      }

      v121 = v161;
      v122 = v150[3];
      v123 = __swift_project_boxed_opaque_existential_1(v150, v122);
      v124 = *(*(v122 - 8) + 64);
      MEMORY[0x28223BE20](v123);
      (*(v126 + 16))(&v139 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2408D4670();
      return (*(v164 + 8))(v153, v121);
    }

    (*(v81 + 8))(v82, v83);
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    (*(v167 + 8))(v80, v58);
  }

  v101 = v152;
  sub_2408D4300();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_2408B4AE0(v101, MEMORY[0x277CED950]);
  }

  v102 = *(v101 + 16);
  v169[0] = *v101;
  v169[1] = v102;
  v170 = *(v101 + 32);
  v171 = xmmword_2408D73A0;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v103 = MEMORY[0x245CC8890](v169, &v171);
  result = sub_2408B2E38(v169);
  if (v103)
  {
    v105 = v140;
    sub_2408D4910();
    v106 = sub_2408D4B10();
    v107 = sub_2408D4F20();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_2407CF000, v106, v107, "Proximity connector detected failed state (User cancelled), untapping, resuming", v108, 2u);
      MEMORY[0x245CC9F60](v108, -1, -1);
    }

    v144(v105, v163);
    v109 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    v110 = swift_allocError();
    v111 = *(*(v109 - 8) + 104);
    v111(v112, *MEMORY[0x277CED2D8], v109);
    sub_2407F0D64();

    v113 = *(v149 + 16);
    v114 = *(*v113 + *MEMORY[0x277D841D0] + 16);
    v115 = (*(*v113 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v113 + v115));
    v116 = v141;
    sub_24080F060(v113 + v114, v141, &qword_27E506EA8, &unk_2408D9130);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v118 = *(v117 - 8);
    (*(v118 + 56))(v113 + v114, 1, 1, v117);
    os_unfair_lock_unlock((v113 + v115));

    if ((*(v118 + 48))(v116, 1, v117) == 1)
    {
      sub_2407D9440(v116, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v127 = swift_allocError();
      v111(v128, *MEMORY[0x277CED270], v109);
      v168 = v127;
      sub_2408D4E10();
      (*(v118 + 8))(v116, v117);
    }

    v129 = v150[3];
    v130 = __swift_project_boxed_opaque_existential_1(v150, v129);
    v131 = *(*(v129 - 8) + 64);
    MEMORY[0x28223BE20](v130);
    (*(v133 + 16))(&v139 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0));
    return sub_2408D4670();
  }

  return result;
}

uint64_t sub_240892648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v75 = a8;
  v76 = a5;
  v77 = a7;
  v80 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v64[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v64[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v64[-v21];
  v23 = sub_2408D4B20();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v68 = &v64[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v64[-v27];
  sub_2408D4910();
  v74 = a1;
  sub_2407D91C4(a1, v84);
  v29 = *(v16 + 16);
  v73 = a3;
  v29(v22, a3, v15);
  v30 = sub_2408D4B10();
  v31 = sub_2408D4F20();
  v32 = os_log_type_enabled(v30, v31);
  v72 = v15;
  v70 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v65 = v31;
    v34 = v33;
    v35 = swift_slowAlloc();
    v69 = v16;
    v66 = v35;
    v83[0] = v35;
    *v34 = 136315394;
    sub_2407D91C4(v84, v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v36 = sub_2408D4D40();
    v67 = a6;
    v37 = v36;
    v38 = v20;
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    v41 = sub_2408CC504(v37, v40, v83);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v29(v38, v22, v15);
    v20 = v38;
    v42 = sub_2408D4D40();
    v44 = v43;
    (*(v69 + 8))(v22, v15);
    v45 = v42;
    a6 = v67;
    v46 = sub_2408CC504(v45, v44, v83);

    *(v34 + 14) = v46;
    _os_log_impl(&dword_2407CF000, v30, v65, "BLE server (%s changed to state: %s", v34, 0x16u);
    v47 = v66;
    swift_arrayDestroy();
    v16 = v69;
    MEMORY[0x245CC9F60](v47, -1, -1);
    MEMORY[0x245CC9F60](v34, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v22, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
  }

  v48 = v79;
  v49 = *(v78 + 8);
  v49(v28, v79);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    v80 = a9;
    v52 = sub_2408D4E60();
    (*(*(v52 - 8) + 56))(v81, 1, 1, v52);
    v53 = v72;
    v70(v20, v73, v72);
    sub_2407D91C4(v74, v84);
    sub_2407D91C4(a6, v82);
    v54 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v55 = (v71 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    *(v58 + 2) = 0;
    *(v58 + 3) = 0;
    *(v58 + 4) = v51;
    (*(v16 + 32))(&v58[v54], v20, v53);
    *&v58[v55] = v76;
    sub_2407D2554(v84, &v58[v56]);
    sub_2407D2554(v82, &v58[v57]);
    *&v58[(v57 + 47) & 0xFFFFFFFFFFFFFFF8] = v77;

    sub_2408938C4(0, 0, v81, v80, v58);
  }

  else
  {
    v60 = v68;
    sub_2408D4910();
    v61 = sub_2408D4B10();
    v62 = sub_2408D4F30();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2407CF000, v61, v62, "Cannot handle state change, self is released", v63, 2u);
      MEMORY[0x245CC9F60](v63, -1, -1);
    }

    return (v49)(v60, v48);
  }
}

uint64_t sub_240892CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v26;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[9] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[11] = v14;
  v15 = *(v14 - 8);
  v8[12] = v15;
  v16 = *(v15 + 64) + 15;
  v8[13] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[15] = v18;
  v19 = *(v18 - 8);
  v8[16] = v19;
  v20 = *(v19 + 64) + 15;
  v8[17] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v22 = swift_task_alloc();
  v8[19] = v22;
  v23 = swift_task_alloc();
  v8[20] = v23;
  *v23 = v8;
  v23[1] = sub_240892F0C;

  return sub_240895734(v22, a5, 1, a6, a7);
}

uint64_t sub_240892F0C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2408934A8;
  }

  else
  {
    v3 = sub_240893020;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240893020()
{
  v1 = v0[18];
  sub_2407EEE04(v0[19], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[18];
    sub_2407D9440(v0[19], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
    v5 = &qword_27E5079A0;
    v6 = &qword_2408D9180;
LABEL_5:
    sub_2407D9440(v4, v5, v6);
    goto LABEL_7;
  }

  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[7];
  v13 = v0[8];
  v14 = *(v2 + 48);
  sub_2407D2554(v7, (v0 + 2));
  (*(v10 + 32))(v8, v7 + v14, v9);
  v15 = v12[3];
  v16 = __swift_project_boxed_opaque_existential_1(v12, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v15);
  sub_2408D4670();

  v20 = *(v13 + 16);
  v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  sub_24080F060(v20 + v21, v11, &qword_27E506EA8, &unk_2408D9130);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v24 = *(v23 - 8);
  (*(v24 + 56))(v20 + v21, 1, 1, v23);
  os_unfair_lock_unlock((v20 + v22));

  v25 = (*(v24 + 48))(v11, 1, v23);
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[17];
  v29 = v0[14];
  v30 = v0[15];
  if (v25 == 1)
  {
    (*(v27 + 8))(v0[17], v0[15]);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2407D9440(v26, &qword_27E5079A0, &qword_2408D9180);
    v5 = &qword_27E506EA8;
    v6 = &unk_2408D9130;
    v4 = v29;
    goto LABEL_5;
  }

  v46 = v0[19];
  v31 = v0[12];
  v32 = v0[13];
  v33 = v0[10];
  v44 = v0[9];
  v45 = v0[11];
  sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030);
  v43 = v29;
  sub_2408D43D0();
  v34 = *(v44 + 48);
  sub_2407D91C4((v0 + 2), v33);
  (*(v31 + 32))(v33 + v34, v32, v45);
  sub_2408D4E20();
  (*(v27 + 8))(v28, v30);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2407D9440(v46, &qword_27E5079A0, &qword_2408D9180);
  (*(v24 + 8))(v43, v23);
LABEL_7:
  v36 = v0[18];
  v35 = v0[19];
  v37 = v0[17];
  v39 = v0[13];
  v38 = v0[14];
  v40 = v0[10];

  v41 = v0[1];

  return v41();
}

uint64_t sub_2408934A8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];

  v7 = v0[1];
  v8 = v0[21];

  return v7();
}

uint64_t sub_240893550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v26;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[9] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[11] = v14;
  v15 = *(v14 - 8);
  v8[12] = v15;
  v16 = *(v15 + 64) + 15;
  v8[13] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[15] = v18;
  v19 = *(v18 - 8);
  v8[16] = v19;
  v20 = *(v19 + 64) + 15;
  v8[17] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v22 = swift_task_alloc();
  v8[19] = v22;
  v23 = swift_task_alloc();
  v8[20] = v23;
  *v23 = v8;
  v23[1] = sub_2408937B0;

  return sub_240897BA8(v22, a5, 1, a6, a7);
}

uint64_t sub_2408937B0()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2408B5314;
  }

  else
  {
    v3 = sub_2408B52FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408938C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2407EEE04(a3, v24 - v10, &unk_27E506BD0, &qword_2408D7AB0);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2408D4E00();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2408D4D50() + 32;

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

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

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

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_240893B70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a4;
  v52 = a7;
  v60 = a6;
  v58 = a5;
  v8 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v59 = v50 - v17;
  v18 = sub_2408D4FD0();
  v56 = *(v18 - 8);
  v57 = v18;
  v19 = *(v56 + 64);
  MEMORY[0x28223BE20](v18);
  v55 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2408D4FC0();
  v21 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v54 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2408D4C70();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_2408D4780();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2408D4990();
  if (v30)
  {
    v31 = v30;
    v61 = a3;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507990, &qword_2408D9150);
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();

    v35 = sub_2408D4A70();
    v50[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
    (*(v26 + 104))(v29, *MEMORY[0x277CEDCF0], v25);
    v36 = swift_allocObject();
    swift_weakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = a2;
    v37[4] = v35;
    v38 = objc_allocWithZone(MEMORY[0x277D54CE8]);
    v51 = v31;

    v50[1] = [v38 init];
    v50[0] = sub_2408B31E8();
    sub_2408D4C60();
    v61 = MEMORY[0x277D84F90];
    sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
    sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
    sub_2408D5080();
    (*(v56 + 104))(v55, *MEMORY[0x277D85260], v57);
    sub_2408D4FF0();
    v39 = v51;
    v40 = sub_2408D43C0();
    v41 = sub_2408D4E60();
    v42 = v59;
    (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
    v43 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
    v44 = swift_allocObject();
    v44[2] = v8;
    v44[3] = v43;
    v44[4] = v40;
    v44[5] = v8;
    v44[6] = v35;
    swift_retain_n();

    sub_24083AB60(0, 0, v42, v52, v44);
  }

  else
  {
    v45 = *(a3 + 16);
    v46 = *(*v45 + *MEMORY[0x277D841D0] + 16);
    v47 = (*(*v45 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v45 + v47));
    sub_24080F060(v45 + v46, v14, &qword_27E506EA8, &unk_2408D9130);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v49 = *(v48 - 8);
    (*(v49 + 56))(v45 + v46, 1, 1, v48);
    os_unfair_lock_unlock((v45 + v47));

    if ((*(v49 + 48))(v14, 1, v48) == 1)
    {
      sub_2407D9440(v14, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      v61 = swift_allocError();
      sub_2408D4E10();
      (*(v49 + 8))(v14, v48);
    }
  }
}

uint64_t sub_2408942B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a6;
  v75 = a8;
  v70 = a7;
  v73 = a5;
  v78 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v63 - v19;
  v21 = sub_2408D4B20();
  v76 = *(v21 - 8);
  v22 = *(v76 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v65 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - v25;
  sub_2408D4910();
  v77 = v14;
  v27 = *(v14 + 16);
  v69 = a3;
  v27(v20, a3, v13);

  v28 = sub_2408D4B10();
  v29 = sub_2408D4F20();

  v30 = os_log_type_enabled(v28, v29);
  v72 = a1;
  v68 = v18;
  v66 = v27;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v79 = v13;
    v32 = v31;
    v63 = swift_slowAlloc();
    v80 = a1;
    v81[0] = v63;
    *v32 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
    v33 = sub_2408D4D40();
    v64 = v21;
    v35 = sub_2408CC504(v33, v34, v81);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v27(v18, v20, v79);
    v36 = sub_2408D4D40();
    v38 = v37;
    v39 = v77;
    (*(v77 + 8))(v20, v79);
    v40 = sub_2408CC504(v36, v38, v81);
    v21 = v64;

    *(v32 + 14) = v40;
    _os_log_impl(&dword_2407CF000, v28, v29, "BLE client (%s changed to state: %s", v32, 0x16u);
    v41 = v63;
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v41, -1, -1);
    v42 = v32;
    v13 = v79;
    MEMORY[0x245CC9F60](v42, -1, -1);

    v43 = *(v76 + 8);
    v43(v26, v21);
    v44 = v39;
  }

  else
  {

    v45 = v77;
    (*(v77 + 8))(v20, v13);
    v43 = *(v76 + 8);
    v43(v26, v21);
    v44 = v45;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v48 = sub_2408D4E60();
    v49 = v71;
    (*(*(v48 - 8) + 56))(v71, 1, 1, v48);
    v50 = v68;
    v66(v68, v69, v13);
    v51 = v13;
    v52 = v44;
    v53 = (*(v44 + 80) + 40) & ~*(v44 + 80);
    v54 = (v67 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    *(v56 + 4) = v47;
    (*(v52 + 32))(&v56[v53], v50, v51);
    v57 = v72;
    *&v56[v54] = v73;
    *&v56[v55] = v57;
    *&v56[(v55 + 15) & 0xFFFFFFFFFFFFFFF8] = v74;

    sub_24083AB60(0, 0, v49, v75, v56);
  }

  else
  {
    v59 = v65;
    sub_2408D4910();
    v60 = sub_2408D4B10();
    v61 = sub_2408D4F30();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2407CF000, v60, v61, "Cannot handle state change, self is released", v62, 2u);
      MEMORY[0x245CC9F60](v62, -1, -1);
    }

    return (v43)(v59, v21);
  }
}

uint64_t sub_2408948A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[24] = v11;
  v12 = *(v11 - 8);
  v8[25] = v12;
  v13 = *(v12 + 64) + 15;
  v8[26] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[29] = v15;
  v16 = *(v15 - 8);
  v8[30] = v16;
  v17 = *(v16 + 64) + 15;
  v8[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240894AA8, 0, 0);
}

uint64_t sub_240894AA8()
{
  v1 = v0[20];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_240894BB8;
  v3 = v0[33];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  return sub_240895734(v3, v4, 0, v5, (v0 + 2));
}

uint64_t sub_240894BB8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_2408950B4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = sub_240894CD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240894CD4()
{
  v1 = v0[32];
  sub_2407EEE04(v0[33], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[32];
    sub_2407D9440(v0[33], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
  }

  else
  {
    v6 = v0[31];
    v5 = v0[32];
    v7 = v0[29];
    v8 = v0[30];
    v9 = v0[21];
    v10 = *(v2 + 48);
    sub_2407D2554(v5, (v0 + 7));
    (*(v8 + 32))(v6, v5 + v10, v7);
    sub_2408D4A90();
    v11 = v0[15];
    if (v11)
    {
      v12 = v0[27];
      v13 = *(v11 + 16);

      v14 = *(*v13 + *MEMORY[0x277D841D0] + 16);
      v15 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v13 + v15));
      sub_24080F060(v13 + v14, v12, &qword_27E506EA8, &unk_2408D9130);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v17 = *(v16 - 8);
      (*(v17 + 56))(v13 + v14, 1, 1, v16);
      os_unfair_lock_unlock((v13 + v15));

      if ((*(v17 + 48))(v12, 1, v16) == 1)
      {
        sub_2407D9440(v0[27], &qword_27E506EA8, &unk_2408D9130);
      }

      else
      {
        v18 = v0[31];
        v19 = v0[29];
        v21 = v0[26];
        v20 = v0[27];
        v22 = v0[25];
        v40 = v0[24];
        v23 = v0[22];
        v24 = v0[23];
        sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030);
        sub_2408D43D0();
        v25 = *(v23 + 48);
        sub_2407D91C4((v0 + 7), v24);
        (*(v22 + 32))(v24 + v25, v21, v40);
        sub_2408D4E20();
        (*(v17 + 8))(v20, v16);
      }
    }

    v26 = v0[33];
    v28 = v0[30];
    v27 = v0[31];
    v29 = v0[29];
    v30 = v0[21];
    v0[16] = 0;
    sub_2408D4AA0();
    (*(v28 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v4 = v26;
  }

  sub_2407D9440(v4, &qword_27E5079A0, &qword_2408D9180);
  v32 = v0[32];
  v31 = v0[33];
  v33 = v0[31];
  v35 = v0[27];
  v34 = v0[28];
  v36 = v0[26];
  v37 = v0[23];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2408950B4()
{
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2408D4A90();
  v2 = v0[12];
  if (v2)
  {
    v3 = v0[28];
    v4 = *(v2 + 16);

    v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    sub_24080F060(v4 + v5, v3, &qword_27E506EA8, &unk_2408D9130);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v8 = *(v7 - 8);
    (*(v8 + 56))(v4 + v5, 1, 1, v7);
    os_unfair_lock_unlock((v4 + v6));

    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_2407D9440(v0[28], &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v9 = v0[35];
      v10 = v0[28];
      v0[14] = v9;
      v11 = v9;
      sub_2408D4E10();
      (*(v8 + 8))(v10, v7);
    }
  }

  v12 = v0[35];
  v13 = v0[21];
  v0[13] = 0;
  sub_2408D4AA0();

  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[31];
  v18 = v0[27];
  v17 = v0[28];
  v19 = v0[26];
  v20 = v0[23];

  v21 = v0[1];

  return v21();
}

uint64_t sub_240895308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[22] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[24] = v11;
  v12 = *(v11 - 8);
  v8[25] = v12;
  v13 = *(v12 + 64) + 15;
  v8[26] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[29] = v15;
  v16 = *(v15 - 8);
  v8[30] = v16;
  v17 = *(v16 + 64) + 15;
  v8[31] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240895508, 0, 0);
}

uint64_t sub_240895508()
{
  v1 = v0[20];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018);
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_240895618;
  v3 = v0[33];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];

  return sub_240897BA8(v3, v4, 0, v5, (v0 + 2));
}

uint64_t sub_240895618()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_2408B5320;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = sub_2408B532C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240895734(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = v5;
  *(v6 + 168) = a2;
  *(v6 + 176) = a4;
  *(v6 + 154) = a3;
  *(v6 + 160) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  *(v6 + 200) = v7;
  v8 = *(v7 - 8);
  *(v6 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v10 = sub_2408D40F0();
  *(v6 + 240) = v10;
  v11 = *(v10 - 8);
  *(v6 + 248) = v11;
  *(v6 + 256) = *(v11 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  *(v6 + 288) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  *(v6 + 320) = v14;
  v15 = *(v14 - 8);
  *(v6 + 328) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v17 = sub_2408D4B20();
  *(v6 + 408) = v17;
  v18 = *(v17 - 8);
  *(v6 + 416) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240895A90, v5, 0);
}

uint64_t sub_240895A90()
{
  v339 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 400);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  sub_2408D4910();
  v7 = v2;
  v8 = *(v4 + 16);
  v8(v7, v6, v3);
  sub_2407D91C4(v5, v0 + 16);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  v330 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v316 = *(v0 + 504);
    v302 = *(v0 + 416);
    v308 = *(v0 + 408);
    v12 = *(v0 + 392);
    v11 = *(v0 + 400);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v292 = *(v0 + 154);
    v15 = swift_slowAlloc();
    v297 = swift_slowAlloc();
    v338[0] = v297;
    *v15 = 136315650;
    v8(v12, v11, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2408CC504(v16, v18, v338);

    *(v0 + 153) = v292 & 1;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, v338);

    *(v15 + 14) = v23;
    v24 = v19;
    *(v15 + 22) = 2080;
    sub_2407D91C4(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v25 = sub_2408D4D40();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v28 = sub_2408CC504(v25, v27, v338);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_2407CF000, v9, v10, "Handling BLE state: %s, role: %s, base: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v297, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    v29 = *(v302 + 8);
    v29(v316, v308);
  }

  else
  {
    v30 = *(v0 + 504);
    v31 = *(v0 + 408);
    v32 = *(v0 + 416);
    v33 = *(v0 + 400);
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v24 = *(v35 + 8);
    v24(v33, v34);
    v29 = *(v32 + 8);
    v29(v30, v31);
  }

  *(v0 + 512) = v24;
  v36 = *(v0 + 384);
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);
  v330(v36, *(v0 + 168), v37);
  v39 = (*(v38 + 88))(v36, v37);
  if (v39 == *MEMORY[0x277CEDA68])
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v330(v40, *(v0 + 384), v41);
    (*(v42 + 96))(v40, v41);
    v43 = *v40;
    if (*(v40 + 8) == 1)
    {
      v309 = v24;
      v317 = v29;
      v44 = *(v0 + 424);
      v45 = v43;
      sub_2408D4920();
      v46 = v43;
      v47 = sub_2408D4B10();
      v48 = sub_2408D4F30();
      sub_24080F17C(v43, 1);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v43;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_2407CF000, v47, v48, "BLE state: Completed result: %@", v49, 0xCu);
        sub_2407D9440(v50, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v50, -1, -1);
        MEMORY[0x245CC9F60](v49, -1, -1);
      }

      v54 = *(v0 + 416);
      v53 = *(v0 + 424);
      v55 = *(v0 + 408);
      v56 = *(v0 + 384);
      v58 = *(v0 + 320);
      v57 = *(v0 + 328);
      v59 = *(v0 + 192);

      v317(v53, v55);
      v60 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v61 = swift_allocError();
      (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277CED2D8], v60);
      sub_2407F0D64();

      swift_willThrow();
      sub_24080F17C(v43, 1);
      v309(v56, v58);
      goto LABEL_9;
    }

    v94 = *(v0 + 432);
    sub_2408D4920();
    v95 = sub_2408D4B10();
    v96 = sub_2408D4F20();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2407CF000, v95, v96, "BLE state: Completed success", v97, 2u);
      MEMORY[0x245CC9F60](v97, -1, -1);

      sub_24080F17C(v43, 0);
    }

    else
    {
    }

    v124 = *(v0 + 384);
    v125 = *(v0 + 320);
    v126 = *(v0 + 328);
    v127 = *(v0 + 416) + 8;
    v29(*(v0 + 432), *(v0 + 408));
    v128 = v124;
    v129 = v125;
    goto LABEL_27;
  }

  if (v39 != *MEMORY[0x277CEDA58])
  {
    if (v39 == *MEMORY[0x277CEDA50])
    {
      v98 = *(v0 + 368);
      v99 = *(v0 + 320);
      v100 = *(v0 + 328);
      v330(v98, *(v0 + 384), v99);
      (*(v100 + 96))(v98, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B0, &qword_2408D91A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2407D9440(*(v0 + 368), &qword_27E5079B0, &qword_2408D91A0);
        goto LABEL_36;
      }

      v158 = *(v0 + 456);
      v159 = *(v0 + 368);
      v161 = *(v0 + 224);
      v160 = *(v0 + 232);
      v162 = *(v0 + 200);
      v163 = *(v0 + 208);
      v164 = *(v163 + 32);
      *(v0 + 600) = v164;
      *(v0 + 608) = (v163 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v164(v160, v159, v162);
      sub_2408D4910();
      v165 = *(v163 + 16);
      v165(v161, v160, v162);
      v166 = sub_2408D4B10();
      v167 = sub_2408D4F20();
      v168 = os_log_type_enabled(v166, v167);
      v169 = *(v0 + 456);
      v170 = *(v0 + 408);
      v336 = *(v0 + 416);
      v171 = *(v0 + 224);
      if (v168)
      {
        v322 = v29;
        v328 = *(v0 + 408);
        v312 = *(v0 + 456);
        v172 = *(v0 + 208);
        v173 = *(v0 + 216);
        v174 = *(v0 + 200);
        v175 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v338[0] = v304;
        *v175 = 136315138;
        v165(v173, v171, v174);
        v176 = sub_2408D4D40();
        v177 = v167;
        v179 = v178;
        v180 = *(v172 + 8);
        v180(v171, v174);
        v181 = sub_2408CC504(v176, v179, v338);

        *(v175 + 4) = v181;
        _os_log_impl(&dword_2407CF000, v166, v177, "BLE state: Successfully paired and got final transport: %s", v175, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v304);
        MEMORY[0x245CC9F60](v304, -1, -1);
        MEMORY[0x245CC9F60](v175, -1, -1);

        v322(v312, v328);
      }

      else
      {
        v250 = *(v0 + 200);
        v249 = *(v0 + 208);

        v180 = *(v249 + 8);
        v180(v171, v250);
        v29(v169, v170);
      }

      *(v0 + 616) = v180;
      v251 = *(MEMORY[0x277CED870] + 4);
      v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v252 = swift_task_alloc();
      *(v0 + 624) = v252;
      *v252 = v0;
      v252[1] = sub_2408977C4;
      v253 = *(v0 + 176);
      v225 = sub_24089D208;
    }

    else
    {
      if (v39 == *MEMORY[0x277CEDA48])
      {
        v130 = *(v0 + 488);
        v131 = *(v0 + 360);
        v132 = *(v0 + 320);
        v133 = *(v0 + 328);
        v135 = *(v0 + 304);
        v134 = *(v0 + 312);
        v330(v131, *(v0 + 384), v132);
        (*(v133 + 96))(v131, v132);
        sub_24080F060(v131, v134, &qword_27E506EF8, &qword_2408D76B0);
        sub_2408D4910();
        sub_2407EEE04(v134, v135, &qword_27E506EF8, &qword_2408D76B0);
        v136 = sub_2408D4B10();
        v137 = sub_2408D4F10();
        v138 = os_log_type_enabled(v136, v137);
        v139 = *(v0 + 488);
        v140 = *(v0 + 408);
        v141 = *(v0 + 304);
        if (v138)
        {
          v311 = v24;
          v321 = v29;
          v143 = *(v0 + 288);
          v142 = *(v0 + 296);
          v334 = *(v0 + 416);
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v338[0] = v145;
          *v144 = 136315138;
          v327 = v139;
          sub_2407EEE04(v141, v142, &qword_27E506EF8, &qword_2408D76B0);
          v146 = sub_2408D4D40();
          v148 = v147;
          sub_2407D9440(v141, &qword_27E506EF8, &qword_2408D76B0);
          v149 = v146;
          v24 = v311;
          v150 = sub_2408CC504(v149, v148, v338);

          *(v144 + 4) = v150;
          _os_log_impl(&dword_2407CF000, v136, v137, "BLE state: Legacy setup finished with result: %s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v145);
          MEMORY[0x245CC9F60](v145, -1, -1);
          MEMORY[0x245CC9F60](v144, -1, -1);

          v321(v327, v140);
        }

        else
        {

          sub_2407D9440(v141, &qword_27E506EF8, &qword_2408D76B0);
          v29(v139, v140);
        }

        v244 = *(v0 + 384);
        v245 = *(v0 + 320);
        v246 = *(v0 + 328);
        v247 = *(v0 + 312);
        type metadata accessor for ProximityTransportConnector.LegacySetupCompleted();
        sub_2408B4B40(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
        swift_allocError();
        sub_2407EEE04(v247, v248, &qword_27E506EF8, &qword_2408D76B0);
        swift_willThrow();
        sub_2407D9440(v247, &qword_27E506EF8, &qword_2408D76B0);
        v24(v244, v245);
LABEL_9:
        v64 = *(v0 + 496);
        v63 = *(v0 + 504);
        v66 = *(v0 + 480);
        v65 = *(v0 + 488);
        v68 = *(v0 + 464);
        v67 = *(v0 + 472);
        v69 = *(v0 + 448);
        v70 = *(v0 + 456);
        v72 = *(v0 + 432);
        v71 = *(v0 + 440);
        v266 = *(v0 + 424);
        v267 = *(v0 + 400);
        v269 = *(v0 + 392);
        v271 = *(v0 + 384);
        v273 = *(v0 + 376);
        v275 = *(v0 + 368);
        v277 = *(v0 + 360);
        v279 = *(v0 + 352);
        v281 = *(v0 + 344);
        v283 = *(v0 + 336);
        v285 = *(v0 + 312);
        v287 = *(v0 + 304);
        v289 = *(v0 + 296);
        v293 = *(v0 + 280);
        v298 = *(v0 + 272);
        v303 = *(v0 + 264);
        v310 = *(v0 + 232);
        v318 = *(v0 + 224);
        v326 = *(v0 + 216);

        v73 = *(v0 + 8);
LABEL_41:

        return v73();
      }

      if (v39 == *MEMORY[0x277CEDA28] || v39 == *MEMORY[0x277CEDA18] || v39 == *MEMORY[0x277CEDA60] || v39 == *MEMORY[0x277CEDA38])
      {
        v226 = *(v0 + 440);
        v227 = *(v0 + 336);
        v228 = *(v0 + 320);
        v229 = *(v0 + 168);
        v301 = *(v0 + 328) + 8;
        v24(*(v0 + 384), v228);
        sub_2408D4910();
        v330(v227, v229, v228);
        v230 = sub_2408D4B10();
        v231 = sub_2408D4F20();
        v232 = os_log_type_enabled(v230, v231);
        v233 = *(v0 + 440);
        v234 = *(v0 + 408);
        v307 = *(v0 + 416);
        if (v232)
        {
          v291 = *(v0 + 408);
          v296 = *(v0 + 440);
          v235 = *(v0 + 392);
          v236 = *(v0 + 336);
          v315 = v24;
          v237 = *(v0 + 320);
          v238 = swift_slowAlloc();
          v325 = v29;
          v239 = swift_slowAlloc();
          v338[0] = v239;
          *v238 = 136315138;
          v330(v235, v236, v237);
          v240 = sub_2408D4D40();
          v242 = v241;
          v315(v236, v237);
          v243 = sub_2408CC504(v240, v242, v338);

          *(v238 + 4) = v243;
          _os_log_impl(&dword_2407CF000, v230, v231, "BLE state: Ignoring state: %s", v238, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v239);
          MEMORY[0x245CC9F60](v239, -1, -1);
          MEMORY[0x245CC9F60](v238, -1, -1);

          v325(v296, v291);
        }

        else
        {
          v254 = *(v0 + 336);
          v255 = *(v0 + 320);

          v24(v254, v255);
          v29(v233, v234);
        }

        goto LABEL_40;
      }

      if (v39 != *MEMORY[0x277CEDA30])
      {
        if (v39 == *MEMORY[0x277CEDA40])
        {
          v256 = *(v0 + 496);
          sub_2408D4910();
          v257 = sub_2408D4B10();
          v258 = sub_2408D4F20();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            *v259 = 0;
            _os_log_impl(&dword_2407CF000, v257, v258, "BLE state: Received a legacy setup started state update", v259, 2u);
            MEMORY[0x245CC9F60](v259, -1, -1);
          }

          v260 = *(v0 + 496);
          v261 = *(v0 + 408);
          v262 = *(v0 + 416);
          v263 = *(v0 + 384);
          v264 = *(v0 + 320);
          v265 = *(v0 + 328);

          v29(v260, v261);
          v128 = v263;
          v129 = v264;
LABEL_27:
          v24(v128, v129);
LABEL_40:
          v202 = *(v0 + 160);
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
          (*(*(v203 - 8) + 56))(v202, 1, 1, v203);
          v205 = *(v0 + 496);
          v204 = *(v0 + 504);
          v207 = *(v0 + 480);
          v206 = *(v0 + 488);
          v209 = *(v0 + 464);
          v208 = *(v0 + 472);
          v211 = *(v0 + 448);
          v210 = *(v0 + 456);
          v212 = *(v0 + 432);
          v213 = *(v0 + 440);
          v268 = *(v0 + 424);
          v270 = *(v0 + 400);
          v272 = *(v0 + 392);
          v274 = *(v0 + 384);
          v276 = *(v0 + 376);
          v278 = *(v0 + 368);
          v280 = *(v0 + 360);
          v282 = *(v0 + 352);
          v284 = *(v0 + 344);
          v286 = *(v0 + 336);
          v288 = *(v0 + 312);
          v290 = *(v0 + 304);
          v295 = *(v0 + 296);
          v300 = *(v0 + 280);
          v306 = *(v0 + 272);
          v314 = *(v0 + 264);
          v324 = *(v0 + 232);
          v329 = *(v0 + 224);
          v337 = *(v0 + 216);

          v73 = *(v0 + 8);
          goto LABEL_41;
        }

        if (v39 != *MEMORY[0x277CEDA20])
        {
LABEL_36:
          v182 = *(v0 + 464);
          v183 = *(v0 + 344);
          v184 = *(v0 + 320);
          v185 = *(v0 + 168);
          sub_2408D4910();
          v330(v183, v185, v184);
          v186 = sub_2408D4B10();
          v187 = sub_2408D4F20();
          v188 = os_log_type_enabled(v186, v187);
          v294 = *(v0 + 416);
          v299 = *(v0 + 408);
          v305 = *(v0 + 464);
          if (v188)
          {
            v189 = *(v0 + 392);
            v313 = v24;
            v323 = v29;
            v190 = *(v0 + 344);
            v192 = *(v0 + 320);
            v191 = *(v0 + 328);
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            v338[0] = v194;
            *v193 = 136315138;
            v330(v189, v190, v192);
            v195 = sub_2408D4D40();
            v197 = v196;
            v313(v190, v192);
            v198 = sub_2408CC504(v195, v197, v338);

            *(v193 + 4) = v198;
            _os_log_impl(&dword_2407CF000, v186, v187, "BLE state Unhandled state: %s", v193, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v194);
            MEMORY[0x245CC9F60](v194, -1, -1);
            MEMORY[0x245CC9F60](v193, -1, -1);

            v323(v305, v299);
            v313(*(v0 + 384), *(v0 + 320));
          }

          else
          {
            v199 = *(v0 + 344);
            v201 = *(v0 + 320);
            v200 = *(v0 + 328);

            v24(v199, v201);
            v29(v305, v299);
            v24(*(v0 + 384), *(v0 + 320));
          }

          goto LABEL_40;
        }
      }

      v214 = *(v0 + 448);
      v215 = *(v0 + 328) + 8;
      v24(*(v0 + 384), *(v0 + 320));
      sub_2408D4910();
      v216 = sub_2408D4B10();
      v217 = sub_2408D4F10();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&dword_2407CF000, v216, v217, "Handling BLE connection invalidation", v218, 2u);
        MEMORY[0x245CC9F60](v218, -1, -1);
      }

      v219 = *(v0 + 448);
      v220 = *(v0 + 408);
      v221 = *(v0 + 416);

      v29(v219, v220);
      v222 = *(MEMORY[0x277CED870] + 4);
      v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v223 = swift_task_alloc();
      *(v0 + 640) = v223;
      *v223 = v0;
      v223[1] = sub_2408978F0;
      v224 = *(v0 + 176);
      v225 = sub_24089D4FC;
    }

    v156 = v225;
    v157 = 0;
LABEL_59:

    return v335(v156, v157);
  }

  v74 = *(v0 + 376);
  v75 = *(v0 + 320);
  v76 = *(v0 + 328);
  v330(v74, *(v0 + 384), v75);
  (*(v76 + 96))(v74, v75);
  v77 = sub_2408D4800();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 88))(v74, v77);
  if (v79 == *MEMORY[0x277CEDD20])
  {
    v80 = *(v0 + 480);
    v81 = *(v0 + 376);
    (*(v78 + 96))(v81, v77);
    v83 = *v81;
    v82 = *(v81 + 8);
    *(v0 + 520) = v82;
    v84 = *(v81 + 16);
    sub_2408D4910();

    v85 = sub_2408D4B10();
    v86 = sub_2408D4F20();

    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 480);
    v90 = *(v0 + 408);
    v89 = *(v0 + 416);
    if (v87)
    {
      v331 = *(v0 + 480);
      v91 = v84;
      v92 = swift_slowAlloc();
      v319 = v29;
      v93 = swift_slowAlloc();
      v338[0] = v93;
      *v92 = 136315394;
      *(v92 + 4) = sub_2408CC504(v83, v82, v338);
      *(v92 + 12) = 1024;
      *(v92 + 14) = v91;
      _os_log_impl(&dword_2407CF000, v85, v86, "BLE state:  Presenting pin code: %s of type: %d", v92, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      MEMORY[0x245CC9F60](v93, -1, -1);
      MEMORY[0x245CC9F60](v92, -1, -1);

      v319(v331, v90);
    }

    else
    {

      v29(v88, v90);
    }

    v151 = *(v0 + 272);

    sub_2408D4F70();

    v152 = swift_task_alloc();
    *(v0 + 544) = v152;
    v152[2] = v83;
    v152[3] = v82;
    v152[4] = v151;
    v153 = *(MEMORY[0x277CED870] + 4);
    v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v154 = swift_task_alloc();
    *(v0 + 552) = v154;
    *v154 = v0;
    v154[1] = sub_24089755C;
    v155 = *(v0 + 176);
    v156 = sub_2408B4258;
    v157 = v152;
    goto LABEL_59;
  }

  if (v79 != *MEMORY[0x277CEDD28])
  {
    (*(v78 + 8))(*(v0 + 376), v77);
    goto LABEL_36;
  }

  v320 = v29;
  v101 = *(v0 + 472);
  v102 = *(v0 + 376);
  v103 = *(v0 + 280);
  (*(v78 + 96))(v102, v77);
  v104 = *v102;
  *(v0 + 528) = *(v102 + 3);
  *(v0 + 536) = *(v102 + 4);
  sub_2408D4F70();
  sub_2408D4910();
  v105 = sub_2408D4B10();
  v106 = sub_2408D4F20();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 67109120;
    *(v107 + 4) = v104;
    _os_log_impl(&dword_2407CF000, v105, v106, "BLE state:  Request pin code of type: %d", v107, 8u);
    MEMORY[0x245CC9F60](v107, -1, -1);
  }

  v108 = *(v0 + 472);
  v109 = *(v0 + 408);
  v110 = *(v0 + 416);
  v111 = *(v0 + 280);
  v112 = *(v0 + 264);
  v332 = *(v0 + 256);
  v113 = *(v0 + 240);
  v114 = *(v0 + 248);
  v115 = *(v0 + 184);

  v320(v108, v109);
  v116 = swift_task_alloc();
  *(v0 + 568) = v116;
  *(v116 + 16) = v111;
  sub_2407D91C4(v115, v0 + 56);
  (*(v114 + 16))(v112, v111, v113);
  v117 = (*(v114 + 80) + 56) & ~*(v114 + 80);
  v118 = swift_allocObject();
  *(v0 + 576) = v118;
  sub_2407D2554((v0 + 56), v118 + 16);
  (*(v114 + 32))(v118 + v117, v112, v113);
  v119 = *(MEMORY[0x277CED860] + 4);
  v333 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v120 = swift_task_alloc();
  *(v0 + 584) = v120;
  *v120 = v0;
  v120[1] = sub_240897690;
  v121 = *(v0 + 176);
  v122 = MEMORY[0x277CEDD30];

  return v333(v0 + 136, sub_2408B40A4, v116, &unk_2408D92E8, v118, v122);
}

uint64_t sub_24089755C()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v10 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_2408B5324;
  }

  else
  {
    v6 = v2[68];
    v7 = v2[65];
    v8 = v2[24];

    v5 = sub_2408B5338;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240897690()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v10 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_2408B530C;
  }

  else
  {
    v6 = v2[72];
    v7 = v2[71];
    v8 = v2[24];

    v5 = sub_2408B531C;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408977C4()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_2408B5328;
  }

  else
  {
    v6 = sub_2408B5300;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408978F0()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[62];
    v5 = v2[63];
    v8 = v2[60];
    v7 = v2[61];
    v9 = v2[58];
    v10 = v2[59];
    v12 = v2[56];
    v11 = v2[57];
    v13 = v2[55];
    v18 = v2[54];
    v19 = v2[53];
    v20 = v2[50];
    v21 = v2[49];
    v22 = v2[48];
    v23 = v2[47];
    v24 = v2[46];
    v25 = v2[45];
    v26 = v2[44];
    v27 = v2[43];
    v28 = v2[42];
    v29 = v2[39];
    v30 = v2[38];
    v31 = v2[37];
    v32 = v2[35];
    v33 = v2[34];
    v34 = v2[33];
    v35 = v2[29];
    v36 = v2[28];
    v14 = v2[27];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = v2[24];

    return MEMORY[0x2822009F8](sub_2408B533C, v17, 0);
  }
}

uint64_t sub_240897BA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = v5;
  *(v6 + 168) = a2;
  *(v6 + 176) = a4;
  *(v6 + 154) = a3;
  *(v6 + 160) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  *(v6 + 200) = v7;
  v8 = *(v7 - 8);
  *(v6 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  v10 = sub_2408D40F0();
  *(v6 + 240) = v10;
  v11 = *(v10 - 8);
  *(v6 + 248) = v11;
  *(v6 + 256) = *(v11 + 64);
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  *(v6 + 288) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  *(v6 + 320) = v14;
  v15 = *(v14 - 8);
  *(v6 + 328) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  v17 = sub_2408D4B20();
  *(v6 + 408) = v17;
  v18 = *(v17 - 8);
  *(v6 + 416) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240897F04, v5, 0);
}

uint64_t sub_240897F04()
{
  v339 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 400);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  sub_2408D4910();
  v7 = v2;
  v8 = *(v4 + 16);
  v8(v7, v6, v3);
  sub_2407D91C4(v5, v0 + 16);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  v330 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v316 = *(v0 + 504);
    v302 = *(v0 + 416);
    v308 = *(v0 + 408);
    v12 = *(v0 + 392);
    v11 = *(v0 + 400);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    v292 = *(v0 + 154);
    v15 = swift_slowAlloc();
    v297 = swift_slowAlloc();
    v338[0] = v297;
    *v15 = 136315650;
    v8(v12, v11, v14);
    v16 = sub_2408D4D40();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v14);
    v20 = sub_2408CC504(v16, v18, v338);

    *(v0 + 153) = v292 & 1;
    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, v338);

    *(v15 + 14) = v23;
    v24 = v19;
    *(v15 + 22) = 2080;
    sub_2407D91C4(v0 + 16, v0 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v25 = sub_2408D4D40();
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v28 = sub_2408CC504(v25, v27, v338);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_2407CF000, v9, v10, "Handling BLE state: %s, role: %s, base: %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v297, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);

    v29 = *(v302 + 8);
    v29(v316, v308);
  }

  else
  {
    v30 = *(v0 + 504);
    v31 = *(v0 + 408);
    v32 = *(v0 + 416);
    v33 = *(v0 + 400);
    v34 = *(v0 + 320);
    v35 = *(v0 + 328);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v24 = *(v35 + 8);
    v24(v33, v34);
    v29 = *(v32 + 8);
    v29(v30, v31);
  }

  *(v0 + 512) = v24;
  v36 = *(v0 + 384);
  v37 = *(v0 + 320);
  v38 = *(v0 + 328);
  v330(v36, *(v0 + 168), v37);
  v39 = (*(v38 + 88))(v36, v37);
  if (v39 == *MEMORY[0x277CEDA68])
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 320);
    v42 = *(v0 + 328);
    v330(v40, *(v0 + 384), v41);
    (*(v42 + 96))(v40, v41);
    v43 = *v40;
    if (*(v40 + 8) == 1)
    {
      v309 = v24;
      v317 = v29;
      v44 = *(v0 + 424);
      v45 = v43;
      sub_2408D4920();
      v46 = v43;
      v47 = sub_2408D4B10();
      v48 = sub_2408D4F30();
      sub_24080F17C(v43, 1);
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        v51 = v43;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v49 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_2407CF000, v47, v48, "BLE state: Completed result: %@", v49, 0xCu);
        sub_2407D9440(v50, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v50, -1, -1);
        MEMORY[0x245CC9F60](v49, -1, -1);
      }

      v54 = *(v0 + 416);
      v53 = *(v0 + 424);
      v55 = *(v0 + 408);
      v56 = *(v0 + 384);
      v58 = *(v0 + 320);
      v57 = *(v0 + 328);
      v59 = *(v0 + 192);

      v317(v53, v55);
      v60 = sub_2408D3500();
      sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v61 = swift_allocError();
      (*(*(v60 - 8) + 104))(v62, *MEMORY[0x277CED2D8], v60);
      sub_2407F0D64();

      swift_willThrow();
      sub_24080F17C(v43, 1);
      v309(v56, v58);
      goto LABEL_9;
    }

    v94 = *(v0 + 432);
    sub_2408D4920();
    v95 = sub_2408D4B10();
    v96 = sub_2408D4F20();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2407CF000, v95, v96, "BLE state: Completed success", v97, 2u);
      MEMORY[0x245CC9F60](v97, -1, -1);

      sub_24080F17C(v43, 0);
    }

    else
    {
    }

    v124 = *(v0 + 384);
    v125 = *(v0 + 320);
    v126 = *(v0 + 328);
    v127 = *(v0 + 416) + 8;
    v29(*(v0 + 432), *(v0 + 408));
    v128 = v124;
    v129 = v125;
    goto LABEL_27;
  }

  if (v39 != *MEMORY[0x277CEDA58])
  {
    if (v39 == *MEMORY[0x277CEDA50])
    {
      v98 = *(v0 + 368);
      v99 = *(v0 + 320);
      v100 = *(v0 + 328);
      v330(v98, *(v0 + 384), v99);
      (*(v100 + 96))(v98, v99);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B0, &qword_2408D91A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2407D9440(*(v0 + 368), &qword_27E5079B0, &qword_2408D91A0);
        goto LABEL_36;
      }

      v158 = *(v0 + 456);
      v159 = *(v0 + 368);
      v161 = *(v0 + 224);
      v160 = *(v0 + 232);
      v162 = *(v0 + 200);
      v163 = *(v0 + 208);
      v164 = *(v163 + 32);
      *(v0 + 600) = v164;
      *(v0 + 608) = (v163 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v164(v160, v159, v162);
      sub_2408D4910();
      v165 = *(v163 + 16);
      v165(v161, v160, v162);
      v166 = sub_2408D4B10();
      v167 = sub_2408D4F20();
      v168 = os_log_type_enabled(v166, v167);
      v169 = *(v0 + 456);
      v170 = *(v0 + 408);
      v336 = *(v0 + 416);
      v171 = *(v0 + 224);
      if (v168)
      {
        v322 = v29;
        v328 = *(v0 + 408);
        v312 = *(v0 + 456);
        v172 = *(v0 + 208);
        v173 = *(v0 + 216);
        v174 = *(v0 + 200);
        v175 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v338[0] = v304;
        *v175 = 136315138;
        v165(v173, v171, v174);
        v176 = sub_2408D4D40();
        v177 = v167;
        v179 = v178;
        v180 = *(v172 + 8);
        v180(v171, v174);
        v181 = sub_2408CC504(v176, v179, v338);

        *(v175 + 4) = v181;
        _os_log_impl(&dword_2407CF000, v166, v177, "BLE state: Successfully paired and got final transport: %s", v175, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v304);
        MEMORY[0x245CC9F60](v304, -1, -1);
        MEMORY[0x245CC9F60](v175, -1, -1);

        v322(v312, v328);
      }

      else
      {
        v250 = *(v0 + 200);
        v249 = *(v0 + 208);

        v180 = *(v249 + 8);
        v180(v171, v250);
        v29(v169, v170);
      }

      *(v0 + 616) = v180;
      v251 = *(MEMORY[0x277CED870] + 4);
      v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v252 = swift_task_alloc();
      *(v0 + 624) = v252;
      *v252 = v0;
      v252[1] = sub_24089A594;
      v253 = *(v0 + 176);
      v225 = sub_24089D398;
    }

    else
    {
      if (v39 == *MEMORY[0x277CEDA48])
      {
        v130 = *(v0 + 488);
        v131 = *(v0 + 360);
        v132 = *(v0 + 320);
        v133 = *(v0 + 328);
        v135 = *(v0 + 304);
        v134 = *(v0 + 312);
        v330(v131, *(v0 + 384), v132);
        (*(v133 + 96))(v131, v132);
        sub_24080F060(v131, v134, &qword_27E506EF8, &qword_2408D76B0);
        sub_2408D4910();
        sub_2407EEE04(v134, v135, &qword_27E506EF8, &qword_2408D76B0);
        v136 = sub_2408D4B10();
        v137 = sub_2408D4F10();
        v138 = os_log_type_enabled(v136, v137);
        v139 = *(v0 + 488);
        v140 = *(v0 + 408);
        v141 = *(v0 + 304);
        if (v138)
        {
          v311 = v24;
          v321 = v29;
          v143 = *(v0 + 288);
          v142 = *(v0 + 296);
          v334 = *(v0 + 416);
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v338[0] = v145;
          *v144 = 136315138;
          v327 = v139;
          sub_2407EEE04(v141, v142, &qword_27E506EF8, &qword_2408D76B0);
          v146 = sub_2408D4D40();
          v148 = v147;
          sub_2407D9440(v141, &qword_27E506EF8, &qword_2408D76B0);
          v149 = v146;
          v24 = v311;
          v150 = sub_2408CC504(v149, v148, v338);

          *(v144 + 4) = v150;
          _os_log_impl(&dword_2407CF000, v136, v137, "BLE state: Legacy setup finished with result: %s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v145);
          MEMORY[0x245CC9F60](v145, -1, -1);
          MEMORY[0x245CC9F60](v144, -1, -1);

          v321(v327, v140);
        }

        else
        {

          sub_2407D9440(v141, &qword_27E506EF8, &qword_2408D76B0);
          v29(v139, v140);
        }

        v244 = *(v0 + 384);
        v245 = *(v0 + 320);
        v246 = *(v0 + 328);
        v247 = *(v0 + 312);
        type metadata accessor for ProximityTransportConnector.LegacySetupCompleted();
        sub_2408B4B40(&qword_27E5075E0, 255, type metadata accessor for ProximityTransportConnector.LegacySetupCompleted);
        swift_allocError();
        sub_2407EEE04(v247, v248, &qword_27E506EF8, &qword_2408D76B0);
        swift_willThrow();
        sub_2407D9440(v247, &qword_27E506EF8, &qword_2408D76B0);
        v24(v244, v245);
LABEL_9:
        v64 = *(v0 + 496);
        v63 = *(v0 + 504);
        v66 = *(v0 + 480);
        v65 = *(v0 + 488);
        v68 = *(v0 + 464);
        v67 = *(v0 + 472);
        v69 = *(v0 + 448);
        v70 = *(v0 + 456);
        v72 = *(v0 + 432);
        v71 = *(v0 + 440);
        v266 = *(v0 + 424);
        v267 = *(v0 + 400);
        v269 = *(v0 + 392);
        v271 = *(v0 + 384);
        v273 = *(v0 + 376);
        v275 = *(v0 + 368);
        v277 = *(v0 + 360);
        v279 = *(v0 + 352);
        v281 = *(v0 + 344);
        v283 = *(v0 + 336);
        v285 = *(v0 + 312);
        v287 = *(v0 + 304);
        v289 = *(v0 + 296);
        v293 = *(v0 + 280);
        v298 = *(v0 + 272);
        v303 = *(v0 + 264);
        v310 = *(v0 + 232);
        v318 = *(v0 + 224);
        v326 = *(v0 + 216);

        v73 = *(v0 + 8);
LABEL_41:

        return v73();
      }

      if (v39 == *MEMORY[0x277CEDA28] || v39 == *MEMORY[0x277CEDA18] || v39 == *MEMORY[0x277CEDA60] || v39 == *MEMORY[0x277CEDA38])
      {
        v226 = *(v0 + 440);
        v227 = *(v0 + 336);
        v228 = *(v0 + 320);
        v229 = *(v0 + 168);
        v301 = *(v0 + 328) + 8;
        v24(*(v0 + 384), v228);
        sub_2408D4910();
        v330(v227, v229, v228);
        v230 = sub_2408D4B10();
        v231 = sub_2408D4F20();
        v232 = os_log_type_enabled(v230, v231);
        v233 = *(v0 + 440);
        v234 = *(v0 + 408);
        v307 = *(v0 + 416);
        if (v232)
        {
          v291 = *(v0 + 408);
          v296 = *(v0 + 440);
          v235 = *(v0 + 392);
          v236 = *(v0 + 336);
          v315 = v24;
          v237 = *(v0 + 320);
          v238 = swift_slowAlloc();
          v325 = v29;
          v239 = swift_slowAlloc();
          v338[0] = v239;
          *v238 = 136315138;
          v330(v235, v236, v237);
          v240 = sub_2408D4D40();
          v242 = v241;
          v315(v236, v237);
          v243 = sub_2408CC504(v240, v242, v338);

          *(v238 + 4) = v243;
          _os_log_impl(&dword_2407CF000, v230, v231, "BLE state: Ignoring state: %s", v238, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v239);
          MEMORY[0x245CC9F60](v239, -1, -1);
          MEMORY[0x245CC9F60](v238, -1, -1);

          v325(v296, v291);
        }

        else
        {
          v254 = *(v0 + 336);
          v255 = *(v0 + 320);

          v24(v254, v255);
          v29(v233, v234);
        }

        goto LABEL_40;
      }

      if (v39 != *MEMORY[0x277CEDA30])
      {
        if (v39 == *MEMORY[0x277CEDA40])
        {
          v256 = *(v0 + 496);
          sub_2408D4910();
          v257 = sub_2408D4B10();
          v258 = sub_2408D4F20();
          if (os_log_type_enabled(v257, v258))
          {
            v259 = swift_slowAlloc();
            *v259 = 0;
            _os_log_impl(&dword_2407CF000, v257, v258, "BLE state: Received a legacy setup started state update", v259, 2u);
            MEMORY[0x245CC9F60](v259, -1, -1);
          }

          v260 = *(v0 + 496);
          v261 = *(v0 + 408);
          v262 = *(v0 + 416);
          v263 = *(v0 + 384);
          v264 = *(v0 + 320);
          v265 = *(v0 + 328);

          v29(v260, v261);
          v128 = v263;
          v129 = v264;
LABEL_27:
          v24(v128, v129);
LABEL_40:
          v202 = *(v0 + 160);
          v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
          (*(*(v203 - 8) + 56))(v202, 1, 1, v203);
          v205 = *(v0 + 496);
          v204 = *(v0 + 504);
          v207 = *(v0 + 480);
          v206 = *(v0 + 488);
          v209 = *(v0 + 464);
          v208 = *(v0 + 472);
          v211 = *(v0 + 448);
          v210 = *(v0 + 456);
          v212 = *(v0 + 432);
          v213 = *(v0 + 440);
          v268 = *(v0 + 424);
          v270 = *(v0 + 400);
          v272 = *(v0 + 392);
          v274 = *(v0 + 384);
          v276 = *(v0 + 376);
          v278 = *(v0 + 368);
          v280 = *(v0 + 360);
          v282 = *(v0 + 352);
          v284 = *(v0 + 344);
          v286 = *(v0 + 336);
          v288 = *(v0 + 312);
          v290 = *(v0 + 304);
          v295 = *(v0 + 296);
          v300 = *(v0 + 280);
          v306 = *(v0 + 272);
          v314 = *(v0 + 264);
          v324 = *(v0 + 232);
          v329 = *(v0 + 224);
          v337 = *(v0 + 216);

          v73 = *(v0 + 8);
          goto LABEL_41;
        }

        if (v39 != *MEMORY[0x277CEDA20])
        {
LABEL_36:
          v182 = *(v0 + 464);
          v183 = *(v0 + 344);
          v184 = *(v0 + 320);
          v185 = *(v0 + 168);
          sub_2408D4910();
          v330(v183, v185, v184);
          v186 = sub_2408D4B10();
          v187 = sub_2408D4F20();
          v188 = os_log_type_enabled(v186, v187);
          v294 = *(v0 + 416);
          v299 = *(v0 + 408);
          v305 = *(v0 + 464);
          if (v188)
          {
            v189 = *(v0 + 392);
            v313 = v24;
            v323 = v29;
            v190 = *(v0 + 344);
            v192 = *(v0 + 320);
            v191 = *(v0 + 328);
            v193 = swift_slowAlloc();
            v194 = swift_slowAlloc();
            v338[0] = v194;
            *v193 = 136315138;
            v330(v189, v190, v192);
            v195 = sub_2408D4D40();
            v197 = v196;
            v313(v190, v192);
            v198 = sub_2408CC504(v195, v197, v338);

            *(v193 + 4) = v198;
            _os_log_impl(&dword_2407CF000, v186, v187, "BLE state Unhandled state: %s", v193, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v194);
            MEMORY[0x245CC9F60](v194, -1, -1);
            MEMORY[0x245CC9F60](v193, -1, -1);

            v323(v305, v299);
            v313(*(v0 + 384), *(v0 + 320));
          }

          else
          {
            v199 = *(v0 + 344);
            v201 = *(v0 + 320);
            v200 = *(v0 + 328);

            v24(v199, v201);
            v29(v305, v299);
            v24(*(v0 + 384), *(v0 + 320));
          }

          goto LABEL_40;
        }
      }

      v214 = *(v0 + 448);
      v215 = *(v0 + 328) + 8;
      v24(*(v0 + 384), *(v0 + 320));
      sub_2408D4910();
      v216 = sub_2408D4B10();
      v217 = sub_2408D4F10();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&dword_2407CF000, v216, v217, "Handling BLE connection invalidation", v218, 2u);
        MEMORY[0x245CC9F60](v218, -1, -1);
      }

      v219 = *(v0 + 448);
      v220 = *(v0 + 408);
      v221 = *(v0 + 416);

      v29(v219, v220);
      v222 = *(MEMORY[0x277CED870] + 4);
      v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v223 = swift_task_alloc();
      *(v0 + 640) = v223;
      *v223 = v0;
      v223[1] = sub_24089AB54;
      v224 = *(v0 + 176);
      v225 = sub_24089D6C4;
    }

    v156 = v225;
    v157 = 0;
LABEL_59:

    return v335(v156, v157);
  }

  v74 = *(v0 + 376);
  v75 = *(v0 + 320);
  v76 = *(v0 + 328);
  v330(v74, *(v0 + 384), v75);
  (*(v76 + 96))(v74, v75);
  v77 = sub_2408D4800();
  v78 = *(v77 - 8);
  v79 = (*(v78 + 88))(v74, v77);
  if (v79 == *MEMORY[0x277CEDD20])
  {
    v80 = *(v0 + 480);
    v81 = *(v0 + 376);
    (*(v78 + 96))(v81, v77);
    v83 = *v81;
    v82 = *(v81 + 8);
    *(v0 + 520) = v82;
    v84 = *(v81 + 16);
    sub_2408D4910();

    v85 = sub_2408D4B10();
    v86 = sub_2408D4F20();

    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 480);
    v90 = *(v0 + 408);
    v89 = *(v0 + 416);
    if (v87)
    {
      v331 = *(v0 + 480);
      v91 = v84;
      v92 = swift_slowAlloc();
      v319 = v29;
      v93 = swift_slowAlloc();
      v338[0] = v93;
      *v92 = 136315394;
      *(v92 + 4) = sub_2408CC504(v83, v82, v338);
      *(v92 + 12) = 1024;
      *(v92 + 14) = v91;
      _os_log_impl(&dword_2407CF000, v85, v86, "BLE state:  Presenting pin code: %s of type: %d", v92, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      MEMORY[0x245CC9F60](v93, -1, -1);
      MEMORY[0x245CC9F60](v92, -1, -1);

      v319(v331, v90);
    }

    else
    {

      v29(v88, v90);
    }

    v151 = *(v0 + 272);

    sub_2408D4F70();

    v152 = swift_task_alloc();
    *(v0 + 544) = v152;
    v152[2] = v83;
    v152[3] = v82;
    v152[4] = v151;
    v153 = *(MEMORY[0x277CED870] + 4);
    v335 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v154 = swift_task_alloc();
    *(v0 + 552) = v154;
    *v154 = v0;
    v154[1] = sub_2408999D0;
    v155 = *(v0 + 176);
    v156 = sub_2408B3564;
    v157 = v152;
    goto LABEL_59;
  }

  if (v79 != *MEMORY[0x277CEDD28])
  {
    (*(v78 + 8))(*(v0 + 376), v77);
    goto LABEL_36;
  }

  v320 = v29;
  v101 = *(v0 + 472);
  v102 = *(v0 + 376);
  v103 = *(v0 + 280);
  (*(v78 + 96))(v102, v77);
  v104 = *v102;
  *(v0 + 528) = *(v102 + 3);
  *(v0 + 536) = *(v102 + 4);
  sub_2408D4F70();
  sub_2408D4910();
  v105 = sub_2408D4B10();
  v106 = sub_2408D4F20();
  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    *v107 = 67109120;
    *(v107 + 4) = v104;
    _os_log_impl(&dword_2407CF000, v105, v106, "BLE state:  Request pin code of type: %d", v107, 8u);
    MEMORY[0x245CC9F60](v107, -1, -1);
  }

  v108 = *(v0 + 472);
  v109 = *(v0 + 408);
  v110 = *(v0 + 416);
  v111 = *(v0 + 280);
  v112 = *(v0 + 264);
  v332 = *(v0 + 256);
  v113 = *(v0 + 240);
  v114 = *(v0 + 248);
  v115 = *(v0 + 184);

  v320(v108, v109);
  v116 = swift_task_alloc();
  *(v0 + 568) = v116;
  *(v116 + 16) = v111;
  sub_2407D91C4(v115, v0 + 56);
  (*(v114 + 16))(v112, v111, v113);
  v117 = (*(v114 + 80) + 56) & ~*(v114 + 80);
  v118 = swift_allocObject();
  *(v0 + 576) = v118;
  sub_2407D2554((v0 + 56), v118 + 16);
  (*(v114 + 32))(v118 + v117, v112, v113);
  v119 = *(MEMORY[0x277CED860] + 4);
  v333 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v120 = swift_task_alloc();
  *(v0 + 584) = v120;
  *v120 = v0;
  v120[1] = sub_240899F88;
  v121 = *(v0 + 176);
  v122 = MEMORY[0x277CEDD30];

  return v333(v0 + 136, sub_2408B3464, v116, &unk_2408D91B0, v118, v122);
}

uint64_t sub_2408999D0()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v10 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_240899D5C;
  }

  else
  {
    v6 = v2[68];
    v7 = v2[65];
    v8 = v2[24];

    v5 = sub_240899B04;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240899B04()
{
  v1 = v0[64];
  v2 = v0[48];
  v3 = v0[40];
  v4 = v0[41];
  (*(v0[31] + 8))(v0[34], v0[30]);
  v1(v2, v3);
  v5 = v0[20];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v8 = v0[62];
  v7 = v0[63];
  v10 = v0[60];
  v9 = v0[61];
  v12 = v0[58];
  v11 = v0[59];
  v14 = v0[56];
  v13 = v0[57];
  v15 = v0[54];
  v16 = v0[55];
  v19 = v0[53];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[43];
  v28 = v0[42];
  v29 = v0[39];
  v30 = v0[38];
  v31 = v0[37];
  v32 = v0[35];
  v33 = v0[34];
  v34 = v0[33];
  v35 = v0[29];
  v36 = v0[28];
  v37 = v0[27];

  v17 = v0[1];

  return v17();
}

uint64_t sub_240899D5C()
{
  v1 = v0[68];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[48];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[34];
  v8 = v0[30];
  v9 = v0[31];

  (*(v9 + 8))(v7, v8);
  v3(v4, v5);
  v41 = v0[70];
  v11 = v0[62];
  v10 = v0[63];
  v13 = v0[60];
  v12 = v0[61];
  v15 = v0[58];
  v14 = v0[59];
  v17 = v0[56];
  v16 = v0[57];
  v19 = v0[54];
  v18 = v0[55];
  v22 = v0[53];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[44];
  v30 = v0[43];
  v31 = v0[42];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[33];
  v38 = v0[29];
  v39 = v0[28];
  v40 = v0[27];

  v20 = v0[1];

  return v20();
}

uint64_t sub_240899F88()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v10 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v4 = v2[24];
    v5 = sub_24089A35C;
  }

  else
  {
    v6 = v2[72];
    v7 = v2[71];
    v8 = v2[24];

    v5 = sub_24089A0BC;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24089A0BC()
{
  v1 = *(v0 + 536);
  v41 = *(v0 + 384);
  v43 = *(v0 + 512);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 280);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  (*(v0 + 528))(v7, v8, v9);

  sub_2408B3554(v7, v8, v9);
  (*(v5 + 8))(v4, v6);
  v43(v41, v2);
  v10 = *(v0 + 160);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v13 = *(v0 + 496);
  v12 = *(v0 + 504);
  v15 = *(v0 + 480);
  v14 = *(v0 + 488);
  v17 = *(v0 + 464);
  v16 = *(v0 + 472);
  v19 = *(v0 + 448);
  v18 = *(v0 + 456);
  v20 = *(v0 + 432);
  v21 = *(v0 + 440);
  v24 = *(v0 + 424);
  v25 = *(v0 + 400);
  v26 = *(v0 + 392);
  v27 = *(v0 + 384);
  v28 = *(v0 + 376);
  v29 = *(v0 + 368);
  v30 = *(v0 + 360);
  v31 = *(v0 + 352);
  v32 = *(v0 + 344);
  v33 = *(v0 + 336);
  v34 = *(v0 + 312);
  v35 = *(v0 + 304);
  v36 = *(v0 + 296);
  v37 = *(v0 + 280);
  v38 = *(v0 + 272);
  v39 = *(v0 + 264);
  v40 = *(v0 + 232);
  v42 = *(v0 + 224);
  v44 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24089A35C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[67];
  v4 = v0[64];
  v5 = v0[48];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[35];
  v9 = v0[30];
  v10 = v0[31];

  (*(v10 + 8))(v8, v9);
  v4(v5, v6);
  v42 = v0[74];
  v12 = v0[62];
  v11 = v0[63];
  v14 = v0[60];
  v13 = v0[61];
  v16 = v0[58];
  v15 = v0[59];
  v18 = v0[56];
  v17 = v0[57];
  v20 = v0[54];
  v19 = v0[55];
  v23 = v0[53];
  v24 = v0[50];
  v25 = v0[49];
  v26 = v0[48];
  v27 = v0[47];
  v28 = v0[46];
  v29 = v0[45];
  v30 = v0[44];
  v31 = v0[43];
  v32 = v0[42];
  v33 = v0[39];
  v34 = v0[38];
  v35 = v0[37];
  v36 = v0[35];
  v37 = v0[34];
  v38 = v0[33];
  v39 = v0[29];
  v40 = v0[28];
  v41 = v0[27];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24089A594()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *v1;
  *(*v1 + 632) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_24089A940;
  }

  else
  {
    v6 = sub_24089A6C0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24089A6C0()
{
  v1 = v0[76];
  v2 = v0[75];
  v40 = v0[48];
  v42 = v0[64];
  v3 = v0[41];
  v38 = v0[40];
  v4 = v0[29];
  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[20];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  v9 = *(v8 + 48);
  sub_2407D91C4(v6, v7);
  v2(v7 + v9, v4, v5);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v42(v40, v38);
  v11 = v0[62];
  v10 = v0[63];
  v13 = v0[60];
  v12 = v0[61];
  v15 = v0[58];
  v14 = v0[59];
  v17 = v0[56];
  v16 = v0[57];
  v18 = v0[54];
  v19 = v0[55];
  v22 = v0[53];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[47];
  v27 = v0[46];
  v28 = v0[45];
  v29 = v0[44];
  v30 = v0[43];
  v31 = v0[42];
  v32 = v0[39];
  v33 = v0[38];
  v34 = v0[37];
  v35 = v0[35];
  v36 = v0[34];
  v37 = v0[33];
  v39 = v0[29];
  v41 = v0[28];
  v43 = v0[27];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24089A940()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 384);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 208) + 8;
  (*(v0 + 616))(*(v0 + 232), *(v0 + 200));
  v1(v2, v3);
  v37 = *(v0 + 632);
  v7 = *(v0 + 496);
  v6 = *(v0 + 504);
  v9 = *(v0 + 480);
  v8 = *(v0 + 488);
  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  v13 = *(v0 + 448);
  v12 = *(v0 + 456);
  v15 = *(v0 + 432);
  v14 = *(v0 + 440);
  v18 = *(v0 + 424);
  v19 = *(v0 + 400);
  v20 = *(v0 + 392);
  v21 = *(v0 + 384);
  v22 = *(v0 + 376);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v25 = *(v0 + 352);
  v26 = *(v0 + 344);
  v27 = *(v0 + 336);
  v28 = *(v0 + 312);
  v29 = *(v0 + 304);
  v30 = *(v0 + 296);
  v31 = *(v0 + 280);
  v32 = *(v0 + 272);
  v33 = *(v0 + 264);
  v34 = *(v0 + 232);
  v35 = *(v0 + 224);
  v36 = *(v0 + 216);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24089AB54()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[62];
    v5 = v2[63];
    v8 = v2[60];
    v7 = v2[61];
    v9 = v2[58];
    v10 = v2[59];
    v12 = v2[56];
    v11 = v2[57];
    v13 = v2[55];
    v18 = v2[54];
    v19 = v2[53];
    v20 = v2[50];
    v21 = v2[49];
    v22 = v2[48];
    v23 = v2[47];
    v24 = v2[46];
    v25 = v2[45];
    v26 = v2[44];
    v27 = v2[43];
    v28 = v2[42];
    v29 = v2[39];
    v30 = v2[38];
    v31 = v2[37];
    v32 = v2[35];
    v33 = v2[34];
    v34 = v2[33];
    v35 = v2[29];
    v36 = v2[28];
    v14 = v2[27];

    v15 = *(v4 + 8);

    return v15();
  }

  else
  {
    v17 = v2[24];

    return MEMORY[0x2822009F8](sub_24089AE0C, v17, 0);
  }
}

uint64_t sub_24089AE0C()
{
  v1 = v0[20];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v4 = v0[62];
  v3 = v0[63];
  v6 = v0[60];
  v5 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  v10 = v0[56];
  v9 = v0[57];
  v11 = v0[54];
  v12 = v0[55];
  v15 = v0[53];
  v16 = v0[50];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[43];
  v24 = v0[42];
  v25 = v0[39];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[27];

  v13 = v0[1];

  return v13();
}

uint64_t sub_24089B028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v31 = a2;
  v32 = a3;
  v35 = sub_2408D3FD0();
  v33 = *(v35 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2408D35F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v30 = sub_2408D4090();
  v15 = *(v30 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v30);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2408D35B0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2408D3500();
  (*(*(v23 - 8) + 56))(v22, 2, 6, v23);
  sub_2408D35D0();
  sub_2408D3610();
  (*(v8 + 104))(v12, *MEMORY[0x277CED350], v7);
  sub_2408D35E0();
  v24 = *(v8 + 8);
  v24(v12, v7);
  v24(v14, v7);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  v26 = v32;
  *v6 = v31;
  *(v6 + 1) = v26;
  v27 = sub_2408D40F0();
  (*(*(v27 - 8) + 16))(&v6[v25], v34, v27);
  (*(v33 + 104))(v6, *MEMORY[0x277CED6A0], v35);

  sub_2408D3F90();
  (*(v15 + 104))(v18, *MEMORY[0x277CED758], v30);
  v28 = sub_2408D3560();
  sub_2408D40B0();
  return v28(v36, 0);
}

uint64_t sub_24089B3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v6 = sub_2408D3FD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2408D4090();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2408D42F0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
  *v10 = a2;
  *(v10 + 1) = a3;
  v19 = sub_2408D40F0();
  (*(*(v19 - 8) + 16))(&v10[v18], v23, v19);
  (*(v7 + 104))(v10, *MEMORY[0x277CED6A0], v6);

  sub_2408D3F90();
  (*(v12 + 104))(v15, *MEMORY[0x277CED758], v11);
  v20 = sub_2408D42A0();
  sub_2408D40B0();
  return v20(v24, 0);
}

uint64_t sub_24089B67C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3FD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2408D4090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2408D35B0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2408D3500();
  (*(*(v17 - 8) + 56))(v16, 2, 6, v17);
  sub_2408D35D0();
  v18 = sub_2408D40F0();
  (*(*(v18 - 8) + 16))(v7, a2, v18);
  (*(v4 + 104))(v7, *MEMORY[0x277CED698], v3);
  sub_2408D3F70();
  (*(v9 + 104))(v12, *MEMORY[0x277CED750], v8);
  v19 = sub_2408D3560();
  sub_2408D40B0();
  return v19(v21, 0);
}

uint64_t sub_24089B914(uint64_t a1, uint64_t a2)
{
  v3 = sub_2408D3FD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2408D4090();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2408D42F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  v15 = sub_2408D40F0();
  (*(*(v15 - 8) + 16))(v7, a2, v15);
  (*(v4 + 104))(v7, *MEMORY[0x277CED698], v3);
  sub_2408D3F70();
  (*(v9 + 104))(v12, *MEMORY[0x277CED750], v8);
  v16 = sub_2408D42A0();
  sub_2408D40B0();
  return v16(v18, 0);
}

uint64_t sub_24089BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4B20();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D40F0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v11 = sub_2408D3FD0();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = sub_2408D4090();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = sub_2408D4130();
  v4[20] = v17;
  v18 = *(v17 - 8);
  v4[21] = v18;
  v19 = *(v18 + 64) + 15;
  v4[22] = swift_task_alloc();
  v20 = sub_2408D3F80();
  v4[23] = v20;
  v21 = *(v20 - 8);
  v4[24] = v21;
  v22 = *(v21 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089BE28, 0, 0);
}

uint64_t sub_24089BE28()
{
  v102 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[3];
  sub_2408D3570();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  if ((*(v6 + 88))(v4, v5) != *MEMORY[0x277CED750])
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C8, &qword_2408D91C8);
    sub_2407D917C(&qword_27E5079D0, &qword_27E5079C8, &qword_2408D91C8);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277CED520], v44);
    swift_willThrow();
LABEL_6:
    v46 = v0[25];
    v47 = v0[22];
    v48 = v0[19];
    v49 = v0[16];
    v51 = v0[12];
    v50 = v0[13];
    v52 = v0[11];
    v53 = v0[8];

    v54 = v0[1];
    goto LABEL_13;
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[15];
  (*(v0[18] + 96))(v11, v0[17]);
  (*(v9 + 32))(v8, v11, v10);
  sub_2408D3F50();
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == *MEMORY[0x277CED6A8])
  {
    v16 = v0[16];
    v17 = v0[13];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[8];
    v23 = v0[5];
    (*(v0[15] + 96))(v16, v0[14]);
    (*(v21 + 32))(v17, v16, v20);
    sub_2408D4920();
    v24 = *(v21 + 16);
    v24(v18, v23, v20);
    v24(v19, v17, v20);
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F10();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[12];
    v100 = v0[11];
    v29 = v0[9];
    v30 = v0[10];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];
    if (v27)
    {
      log = v25;
      v34 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v101[0] = v98;
      *v34 = 136315394;
      sub_2408B4B40(&qword_27E5079E0, 255, MEMORY[0x277CED798]);
      v99 = v31;
      v96 = v33;
      v35 = sub_2408D5220();
      v95 = v26;
      v37 = v36;
      v38 = *(v30 + 8);
      v38(v28, v29);
      v39 = sub_2408CC504(v35, v37, v101);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = sub_2408D5220();
      v42 = v41;
      v38(v100, v29);
      v43 = sub_2408CC504(v40, v42, v101);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_2407CF000, log, v95, "Code type changed from: %s to %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v98, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);

      (*(v32 + 8))(v99, v96);
    }

    else
    {

      v38 = *(v30 + 8);
      v38(v100, v29);
      v38(v28, v29);
      (*(v32 + 8))(v31, v33);
    }

    v67 = v0[24];
    v66 = v0[25];
    v68 = v0[23];
    v69 = v0[13];
    v70 = v0[9];
    v71 = v0[2];
    v72 = sub_2408D40E0();
    v38(v69, v70);
    (*(v67 + 8))(v66, v68);
    *v71 = v72;
    *(v71 + 8) = 0;
    *(v71 + 16) = 1;
    v73 = *MEMORY[0x277CEDCB0];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v74 - 8) + 104))(v71, v73, v74);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B0])
  {
    v56 = v0[15];
    v55 = v0[16];
    v57 = v0[14];
    v58 = v0[9];
    v59 = v0[10];
    v60 = v0[2];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v56 + 96))(v55, v57);
    v61 = *v55;
    v62 = *(v55 + 1);
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
    *v60 = v61;
    *(v60 + 8) = v62;
    *(v60 + 16) = 0;
    v64 = *MEMORY[0x277CEDCB0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v65 - 8) + 104))(v60, v64, v65);
    (*(v59 + 8))(&v55[v63], v58);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B8])
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_19:
    v85 = v0[24];
    v84 = v0[25];
    v86 = v0[23];
    v87 = v0[4];
    v88 = v87[4];
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    sub_2408D3CE0();
    sub_2408D4E30();
    sub_2408B4B40(&qword_27E5079E8, 255, MEMORY[0x277D85678]);
    swift_allocError();
    sub_2408D4C80();
    swift_willThrow();
    (*(v85 + 8))(v84, v86);
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277CED690])
  {
    goto LABEL_19;
  }

  v90 = v0[15];
  v89 = v0[16];
  v91 = v0[14];
  v92 = v0[2];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v93 = *MEMORY[0x277CEDCA8];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
  (*(*(v94 - 8) + 104))(v92, v93, v94);
  (*(v90 + 8))(v89, v91);
LABEL_12:
  v75 = v0[25];
  v76 = v0[22];
  v77 = v0[19];
  v78 = v0[16];
  v80 = v0[12];
  v79 = v0[13];
  v81 = v0[11];
  v82 = v0[8];

  v54 = v0[1];
LABEL_13:

  return v54();
}

uint64_t sub_24089C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4B20();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D40F0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v11 = sub_2408D3FD0();
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = sub_2408D4090();
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = sub_2408D4130();
  v4[20] = v17;
  v18 = *(v17 - 8);
  v4[21] = v18;
  v19 = *(v18 + 64) + 15;
  v4[22] = swift_task_alloc();
  v20 = sub_2408D3F80();
  v4[23] = v20;
  v21 = *(v20 - 8);
  v4[24] = v21;
  v22 = *(v21 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089C96C, 0, 0);
}

uint64_t sub_24089C96C()
{
  v102 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[3];
  sub_2408D42B0();
  sub_2408D40A0();
  (*(v2 + 8))(v1, v3);
  if ((*(v6 + 88))(v4, v5) != *MEMORY[0x277CED750])
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C8, &qword_2408D91C8);
    sub_2407D917C(&qword_27E5079D0, &qword_27E5079C8, &qword_2408D91C8);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277CED520], v44);
    swift_willThrow();
LABEL_6:
    v46 = v0[25];
    v47 = v0[22];
    v48 = v0[19];
    v49 = v0[16];
    v51 = v0[12];
    v50 = v0[13];
    v52 = v0[11];
    v53 = v0[8];

    v54 = v0[1];
    goto LABEL_13;
  }

  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v11 = v0[19];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[15];
  (*(v0[18] + 96))(v11, v0[17]);
  (*(v9 + 32))(v8, v11, v10);
  sub_2408D3F50();
  v15 = (*(v14 + 88))(v12, v13);
  if (v15 == *MEMORY[0x277CED6A8])
  {
    v16 = v0[16];
    v17 = v0[13];
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    v22 = v0[8];
    v23 = v0[5];
    (*(v0[15] + 96))(v16, v0[14]);
    (*(v21 + 32))(v17, v16, v20);
    sub_2408D4920();
    v24 = *(v21 + 16);
    v24(v18, v23, v20);
    v24(v19, v17, v20);
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F10();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[12];
    v100 = v0[11];
    v29 = v0[9];
    v30 = v0[10];
    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];
    if (v27)
    {
      log = v25;
      v34 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v101[0] = v98;
      *v34 = 136315394;
      sub_2408B4B40(&qword_27E5079E0, 255, MEMORY[0x277CED798]);
      v99 = v31;
      v96 = v33;
      v35 = sub_2408D5220();
      v95 = v26;
      v37 = v36;
      v38 = *(v30 + 8);
      v38(v28, v29);
      v39 = sub_2408CC504(v35, v37, v101);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2080;
      v40 = sub_2408D5220();
      v42 = v41;
      v38(v100, v29);
      v43 = sub_2408CC504(v40, v42, v101);

      *(v34 + 14) = v43;
      _os_log_impl(&dword_2407CF000, log, v95, "Code type changed from: %s to %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v98, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);

      (*(v32 + 8))(v99, v96);
    }

    else
    {

      v38 = *(v30 + 8);
      v38(v100, v29);
      v38(v28, v29);
      (*(v32 + 8))(v31, v33);
    }

    v67 = v0[24];
    v66 = v0[25];
    v68 = v0[23];
    v69 = v0[13];
    v70 = v0[9];
    v71 = v0[2];
    v72 = sub_2408D40E0();
    v38(v69, v70);
    (*(v67 + 8))(v66, v68);
    *v71 = v72;
    *(v71 + 8) = 0;
    *(v71 + 16) = 1;
    v73 = *MEMORY[0x277CEDCB0];
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v74 - 8) + 104))(v71, v73, v74);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B0])
  {
    v56 = v0[15];
    v55 = v0[16];
    v57 = v0[14];
    v58 = v0[9];
    v59 = v0[10];
    v60 = v0[2];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v56 + 96))(v55, v57);
    v61 = *v55;
    v62 = *(v55 + 1);
    v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079C0, &qword_2408D91C0) + 48);
    *v60 = v61;
    *(v60 + 8) = v62;
    *(v60 + 16) = 0;
    v64 = *MEMORY[0x277CEDCB0];
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
    (*(*(v65 - 8) + 104))(v60, v64, v65);
    (*(v59 + 8))(&v55[v63], v58);
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CED6B8])
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_19:
    v85 = v0[24];
    v84 = v0[25];
    v86 = v0[23];
    v87 = v0[4];
    v88 = v87[4];
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    sub_2408D3CE0();
    sub_2408D4E30();
    sub_2408B4B40(&qword_27E5079E8, 255, MEMORY[0x277D85678]);
    swift_allocError();
    sub_2408D4C80();
    swift_willThrow();
    (*(v85 + 8))(v84, v86);
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277CED690])
  {
    goto LABEL_19;
  }

  v90 = v0[15];
  v89 = v0[16];
  v91 = v0[14];
  v92 = v0[2];
  (*(v0[24] + 8))(v0[25], v0[23]);
  v93 = *MEMORY[0x277CEDCA8];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079D8, &qword_2408D91D0);
  (*(*(v94 - 8) + 104))(v92, v93, v94);
  (*(v90 + 8))(v89, v91);
LABEL_12:
  v75 = v0[25];
  v76 = v0[22];
  v77 = v0[19];
  v78 = v0[16];
  v80 = v0[12];
  v79 = v0[13];
  v81 = v0[11];
  v82 = v0[8];

  v54 = v0[1];
LABEL_13:

  return v54();
}

uint64_t sub_24089D208()
{
  v0 = sub_2408D4090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2408D35B0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2408D3500();
  (*(*(v9 - 8) + 56))(v8, 2, 6, v9);
  sub_2408D35D0();
  (*(v1 + 104))(v4, *MEMORY[0x277CED760], v0);
  v10 = sub_2408D3560();
  sub_2408D40B0();
  return v10(v12, 0);
}

uint64_t sub_24089D398()
{
  v0 = sub_2408D4090();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2408D42F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  (*(v1 + 104))(v4, *MEMORY[0x277CED760], v0);
  v7 = sub_2408D42A0();
  sub_2408D40B0();
  return v7(v9, 0);
}

uint64_t sub_24089D4FC()
{
  v0 = sub_2408D35B0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D4130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D3570();
  v9 = sub_2408B5344();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v11 = *MEMORY[0x277CED2A0];
    v12 = sub_2408D3500();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v3, v11, v12);
    (*(v13 + 56))(v3, 0, 6, v12);
    return sub_2408D35D0();
  }

  return result;
}

uint64_t sub_24089D6C4()
{
  v0 = sub_2408D42F0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2408D4130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D42B0();
  v9 = sub_2408B5344();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    *v3 = xmmword_2408D8E50;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    return sub_2408D4310();
  }

  return result;
}

uint64_t sub_24089D828(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D35F0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = sub_2408D3630();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[10] = v9;
  v10 = *(MEMORY[0x277CED858] + 4);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v11 = swift_task_alloc();
  v2[11] = v11;
  *v11 = v2;
  v11[1] = sub_24089D9A8;

  return v13(v9);
}

uint64_t sub_24089D9A8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24089DAB8, v2, 0);
}

uint64_t sub_24089DAB8()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_2408D3610();
  (*(v6 + 104))(v5, *MEMORY[0x277CED350], v7);
  v8 = sub_2408D35E0();
  v9 = *(v6 + 8);
  v9(v5, v7);
  v9(v4, v7);
  (*(v2 + 8))(v1, v3);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *(v10 + 16) = v8 & 1;
  v11 = *(MEMORY[0x277CED870] + 4);
  v15 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_24089DC40;
  v13 = v0[2];

  return v15(sub_2408B4B88, v10);
}

uint64_t sub_24089DC40()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_24089DDAC, v4, 0);
  }

  else
  {
    v5 = v3[12];
    v6 = v3[10];
    v7 = v3[6];
    v8 = v3[7];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_24089DDAC()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_24089DE38()
{
  v0 = sub_2408D3FD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2408D4090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2408D35B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2408D3500();
  (*(*(v14 - 8) + 56))(v13, 2, 6, v14);
  sub_2408D35D0();
  (*(v1 + 104))(v4, *MEMORY[0x277CED690], v0);
  sub_2408D3F90();
  (*(v6 + 104))(v9, *MEMORY[0x277CED758], v5);
  v15 = sub_2408D3560();
  sub_2408D40B0();
  return v15(v17, 0);
}

uint64_t sub_24089E08C()
{
  v0 = sub_2408D3FD0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_2408D4090();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2408D42F0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  swift_storeEnumTagMultiPayload();
  sub_2408D4310();
  (*(v1 + 104))(v4, *MEMORY[0x277CED690], v0);
  sub_2408D3F90();
  (*(v6 + 104))(v9, *MEMORY[0x277CED758], v5);
  v12 = sub_2408D42A0();
  sub_2408D40B0();
  return v12(v14, 0);
}

uint64_t sub_24089E2B4()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E5078C0);
  __swift_project_value_buffer(v0, qword_27E5078C0);
  return sub_2408D48F0();
}

uint64_t sub_24089E300()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E50, &unk_2408D6ED0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
  (*(v1 + 104))(v4, *MEMORY[0x277CED808], v0);
  result = sub_2408D41F0();
  qword_27E5078D8 = result;
  return result;
}

uint64_t sub_24089E3F8()
{
  result = sub_2408D4A10();
  qword_28130F620 = result;
  *algn_28130F628 = v1;
  return result;
}

uint64_t sub_24089E41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_2408D47A0();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A48, &qword_2408D9350);
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = sub_2408D4B20();
  v3[15] = v9;
  v10 = *(v9 - 8);
  v3[16] = v10;
  v11 = *(v10 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089E5C8, 0, 0);
}

uint64_t sub_24089E5C8()
{
  v47 = v0;
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[3];
  v6 = v0[4];
  sub_2408D4900();
  v7 = *(v4 + 16);
  v0[20] = v7;
  v0[21] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45 = v7;
  v7(v2, v5, v3);

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v42 = v0[16];
    v43 = v0[15];
    v44 = v0[19];
    v10 = v0[13];
    v39 = v0[14];
    v11 = v0[10];
    v12 = v0[11];
    v40 = v9;
    v13 = v0[4];
    v14 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46 = v41;
    *v14 = 136315394;
    v0[2] = v13;
    sub_2408D4B70();

    v15 = sub_2408D4D40();
    v17 = sub_2408CC504(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v45(v10, v39, v11);
    v18 = sub_2408D4D40();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v39, v11);
    v22 = sub_2408CC504(v18, v20, &v46);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2407CF000, v8, v40, "Sending coordinated model update to session (%s: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v41, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);

    v23 = *(v42 + 8);
    v23(v44, v43);
  }

  else
  {
    v24 = v0[19];
    v25 = v0[15];
    v26 = v0[16];
    v27 = v0[14];
    v28 = v0[10];
    v29 = v0[11];

    v21 = *(v29 + 8);
    v21(v27, v28);
    v23 = *(v26 + 8);
    v23(v24, v25);
  }

  v0[22] = v21;
  v0[23] = v23;
  v30 = v0[5];
  v45(v0[8], v0[3], v0[10]);
  swift_storeEnumTagMultiPayload();
  v31 = *(MEMORY[0x277CEDE38] + 4);
  v32 = swift_task_alloc();
  v0[24] = v32;
  v33 = MEMORY[0x277CEDCF8];
  sub_2408B4B40(&qword_27E507448, 255, MEMORY[0x277CEDCF8]);
  sub_2408B4B40(&qword_27E507438, 255, v33);
  *v32 = v0;
  v32[1] = sub_24089E97C;
  v35 = v0[8];
  v34 = v0[9];
  v37 = v0[4];
  v36 = v0[5];

  return MEMORY[0x282140020](v34, v35);
}

uint64_t sub_24089E97C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  sub_2408B4AE0(*(v2 + 64), MEMORY[0x277CEDCF8]);
  if (v0)
  {
    v5 = sub_24089F014;
  }

  else
  {
    v5 = sub_24089EAC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24089EAC4()
{
  v67 = v0;
  v1 = v0[7];
  v2 = v0[5];
  sub_2408B3C58(v0[9], v1, MEMORY[0x277CEDCF8]);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  sub_2408B4AE0(v1, MEMORY[0x277CEDCF8]);
  if (v2 == 7)
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[18];
    v6 = v0[12];
    v7 = v0[10];
    v8 = v0[3];
    sub_2408D4900();
    v4(v6, v8, v7);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[22];
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      v17 = sub_2408D3CA0() & 1;
      v12(v13, v15);
      *(v16 + 4) = v17;
      _os_log_impl(&dword_2407CF000, v9, v10, "Sent model update and received receipt back (expectsResponse: %{BOOL}d)", v16, 8u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {
      v12(v0[12], v0[10]);
    }

    v35 = v9;
    v36 = v0[23];
    v38 = v0[18];
    v37 = v0[19];
    v39 = v0[16];
    v40 = v0[17];
    v42 = v0[14];
    v41 = v0[15];
    v43 = v0[13];
    v44 = v0[9];
    v60 = v0[12];
    v61 = v0[8];
    v63 = v0[7];
    v65 = v0[6];

    v36(v38, v41);
    sub_2408B4AE0(v44, MEMORY[0x277CEDCF8]);

    v45 = v0[1];
  }

  else
  {
    v18 = v0[17];
    v19 = v0[9];
    v20 = v0[6];
    sub_2408D4900();
    sub_2408B3C58(v19, v20, MEMORY[0x277CEDCF8]);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F30();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[23];
    v25 = v0[16];
    v26 = v0[17];
    v27 = v0[15];
    v28 = v0[6];
    if (v23)
    {
      v64 = v0[23];
      v29 = swift_slowAlloc();
      v62 = v26;
      v30 = swift_slowAlloc();
      v66 = v30;
      *v29 = 136315138;
      v31 = sub_2408D4790();
      v33 = v32;
      sub_2408B4AE0(v28, MEMORY[0x277CEDCF8]);
      v34 = sub_2408CC504(v31, v33, &v66);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2407CF000, v21, v22, "Failed to send model update via session, got unexpected response back: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v30);
      MEMORY[0x245CC9F60](v30, -1, -1);
      MEMORY[0x245CC9F60](v29, -1, -1);

      v64(v62, v27);
    }

    else
    {

      sub_2408B4AE0(v28, MEMORY[0x277CEDCF8]);
      v24(v26, v27);
    }

    v46 = v0[9];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A50, &qword_2408D9358);
    sub_2407D917C(&qword_27E507A58, &qword_27E507A50, &qword_2408D9358);
    swift_allocError();
    *v48 = 0xD000000000000031;
    v48[1] = 0x80000002408DAEE0;
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277CED518], v47);
    swift_willThrow();
    sub_2408B4AE0(v46, MEMORY[0x277CEDCF8]);
    v50 = v0[18];
    v49 = v0[19];
    v51 = v0[17];
    v53 = v0[13];
    v52 = v0[14];
    v54 = v0[12];
    v56 = v0[8];
    v55 = v0[9];
    v57 = v0[6];
    v58 = v0[7];

    v45 = v0[1];
  }

  return v45();
}

uint64_t sub_24089F014()
{
  v13 = v0[25];
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24089F0FC(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_2408D4B20();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507A20, &qword_2408D92A0);
  v3[23] = v7;
  v8 = *(v7 - 8);
  v3[24] = v8;
  v9 = *(v8 + 64) + 15;
  v3[25] = swift_task_alloc();
  v10 = sub_2408D4220();
  v3[26] = v10;
  v11 = *(v10 - 8);
  v3[27] = v11;
  v12 = *(v11 + 64) + 15;
  v3[28] = swift_task_alloc();
  v13 = sub_2408D4350();
  v3[29] = v13;
  v14 = *(v13 - 8);
  v3[30] = v14;
  v15 = *(v14 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v16 = sub_2408D3490();
  v3[33] = v16;
  v17 = *(v16 - 8);
  v3[34] = v17;
  v18 = *(v17 + 64) + 15;
  v3[35] = swift_task_alloc();
  v19 = sub_2408D47A0();
  v3[36] = v19;
  v20 = *(v19 - 8);
  v3[37] = v20;
  v21 = *(v20 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24089F3E0, 0, 0);
}

uint64_t sub_24089F3E0()
{
  v119 = v0;
  if (qword_27E506958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = *(v0 + 120);
  *(v0 + 328) = __swift_project_value_buffer(*(v0 + 136), qword_27E5078C0);
  sub_2408B3C58(v2, v1, MEMORY[0x277CEDCF8]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 320);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v118[0] = v8;
    *v7 = 136315138;
    v9 = sub_2408D4790();
    v11 = v10;
    sub_2408B4AE0(v6, MEMORY[0x277CEDCF8]);
    v12 = sub_2408CC504(v9, v11, v118);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v3, v4, "Received age migration message %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v6, MEMORY[0x277CEDCF8]);
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v15 = *(v0 + 264);
  (*(v14 + 104))(v13, *MEMORY[0x277CED1F0], v15);
  v16 = sub_2408D3480();
  (*(v14 + 8))(v13, v15);
  if ((v16 & 1) == 0)
  {
    v32 = *(v0 + 152);
    sub_2408D4930();
    v33 = sub_2408D4B10();
    v34 = sub_2408D4F30();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2407CF000, v33, v34, "Not allowing mach age migration service calls, disabled", v35, 2u);
      MEMORY[0x245CC9F60](v35, -1, -1);
    }

    v37 = *(v0 + 144);
    v36 = *(v0 + 152);
    v38 = *(v0 + 136);

    (*(v37 + 8))(v36, v38);
    sub_2408B3CC0();
    v39 = swift_allocError();
    swift_willThrow();
    v40 = *(v0 + 288);
    v41 = *(v0 + 296);
    v42 = *(v0 + 112);
    sub_2408D4440();

    v43 = *(v0 + 16);
    v44 = *(v0 + 32);
    *(v42 + 32) = *(v0 + 48);
    *v42 = v43;
    *(v42 + 16) = v44;
    swift_storeEnumTagMultiPayload();
    (*(v41 + 56))(v42, 0, 1, v40);
    goto LABEL_42;
  }

  v17 = *(v0 + 288);
  sub_2408B3C58(*(v0 + 120), *(v0 + 312), MEMORY[0x277CEDCF8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_31;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 312), *(v0 + 208));
      v45 = sub_2408D4B10();
      v46 = sub_2408D4F10();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_2407CF000, v45, v46, "Forwarding anisette request to AgeMigrationService", v47, 2u);
        MEMORY[0x245CC9F60](v47, -1, -1);
      }

      v48 = swift_task_alloc();
      *(v0 + 360) = v48;
      *v48 = v0;
      v48[1] = sub_2408A0278;
      v49 = *(v0 + 224);
      v50 = *(v0 + 128);
      v51 = *(v0 + 112);

      return sub_2408A1C1C(v51, v49);
    }

    else
    {
      v64 = *(v0 + 248);
      v63 = *(v0 + 256);
      v65 = *(v0 + 232);
      v66 = *(v0 + 240);
      (*(v66 + 32))(v63, *(v0 + 312), v65);
      (*(v66 + 16))(v64, v63, v65);
      v67 = sub_2408D4B10();
      v68 = sub_2408D4F10();
      v69 = os_log_type_enabled(v67, v68);
      v71 = *(v0 + 240);
      v70 = *(v0 + 248);
      v72 = *(v0 + 232);
      if (v69)
      {
        v73 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v118[0] = v115;
        *v73 = 136315138;
        sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960]);
        v74 = sub_2408D5220();
        v76 = v75;
        v77 = *(v71 + 8);
        v77(v70, v72);
        v78 = sub_2408CC504(v74, v76, v118);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_2407CF000, v67, v68, "Migrating using model %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        MEMORY[0x245CC9F60](v115, -1, -1);
        MEMORY[0x245CC9F60](v73, -1, -1);
      }

      else
      {

        v77 = *(v71 + 8);
        v77(v70, v72);
      }

      *(v0 + 336) = v77;
      v95 = swift_task_alloc();
      *(v0 + 344) = v95;
      *v95 = v0;
      v95[1] = sub_2408A0004;
      v96 = *(v0 + 256);
      v97 = *(v0 + 128);

      return sub_2408A0B3C(v0 + 56, v96);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v53 = *(v0 + 176);
      sub_2408B4AE0(*(v0 + 312), MEMORY[0x277CEDCF8]);
      sub_2408D4930();
      v26 = sub_2408D4B10();
      v54 = sub_2408D4F30();
      if (os_log_type_enabled(v26, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2407CF000, v26, v54, "Receiving a report is unexpected.", v55, 2u);
        MEMORY[0x245CC9F60](v55, -1, -1);
      }

      v56 = *(v0 + 288);
      v57 = *(v0 + 296);
      v58 = *(v0 + 176);
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v19 = *(v0 + 312);
        v20 = *(v0 + 168);
        v21 = *v19;
        v22 = v19[1];
        v23 = v19[2];
        v24 = v19[3];
        v25 = v19[4];
        sub_2408D4930();
        sub_2408B3C10(v21, v22);
        v26 = sub_2408D4B10();
        v27 = sub_2408D4F30();
        sub_2408B2DE8(v21, v22);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412290;
          sub_2408B2C28();
          swift_allocError();
          *v30 = v21;
          v30[1] = v22;
          v30[2] = v23;
          v30[3] = v24;
          v30[4] = v25;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 4) = v31;
          *v29 = v31;
          _os_log_impl(&dword_2407CF000, v26, v27, "Received error message: %@", v28, 0xCu);
          sub_2407D9440(v29, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v29, -1, -1);
          MEMORY[0x245CC9F60](v28, -1, -1);
        }

        else
        {
          sub_2408B2DE8(v21, v22);
        }

        v56 = *(v0 + 288);
        v57 = *(v0 + 296);
        v58 = *(v0 + 168);
LABEL_39:
        v98 = *(v0 + 136);
        v99 = *(v0 + 144);
        v100 = *(v0 + 112);

        (*(v99 + 8))(v58, v98);
        (*(v57 + 56))(v100, 1, 1, v56);
LABEL_42:
        v103 = *(v0 + 312);
        v102 = *(v0 + 320);
        v104 = *(v0 + 304);
        v105 = *(v0 + 280);
        v107 = *(v0 + 248);
        v106 = *(v0 + 256);
        v108 = *(v0 + 224);
        v109 = *(v0 + 200);
        v111 = *(v0 + 168);
        v110 = *(v0 + 176);
        v113 = *(v0 + 160);
        v117 = *(v0 + 152);

        v112 = *(v0 + 8);

        return v112();
      }

LABEL_31:
      v79 = *(v0 + 304);
      v80 = *(v0 + 160);
      v81 = *(v0 + 120);
      sub_2408D4930();
      sub_2408B3C58(v81, v79, MEMORY[0x277CEDCF8]);
      v82 = sub_2408D4B10();
      v83 = sub_2408D4F30();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 304);
      v86 = *(v0 + 160);
      v88 = *(v0 + 136);
      v87 = *(v0 + 144);
      if (v84)
      {
        v116 = *(v0 + 160);
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v118[0] = v90;
        *v89 = 136315138;
        v91 = sub_2408D4790();
        v93 = v92;
        sub_2408B4AE0(v85, MEMORY[0x277CEDCF8]);
        v94 = sub_2408CC504(v91, v93, v118);

        *(v89 + 4) = v94;
        _os_log_impl(&dword_2407CF000, v82, v83, "Received unknown message %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v90);
        MEMORY[0x245CC9F60](v90, -1, -1);
        MEMORY[0x245CC9F60](v89, -1, -1);

        (*(v87 + 8))(v116, v88);
      }

      else
      {

        sub_2408B4AE0(v85, MEMORY[0x277CEDCF8]);
        (*(v87 + 8))(v86, v88);
      }

      v101 = *(v0 + 312);
      (*(*(v0 + 296) + 56))(*(v0 + 112), 1, 1, *(v0 + 288));
      sub_2408B4AE0(v101, MEMORY[0x277CEDCF8]);
      goto LABEL_42;
    }

    v59 = *(v0 + 128);
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 312), *(v0 + 184));
    *(v0 + 376) = *(v59 + 64);
    v60 = *(MEMORY[0x277CED878] + 4);
    v114 = (*MEMORY[0x277CED878] + MEMORY[0x277CED878]);

    v61 = swift_task_alloc();
    *(v0 + 384) = v61;
    *v61 = v0;
    v61[1] = sub_2408A04D4;
    v62 = *(v0 + 200);

    return v114(v62);
  }
}

uint64_t sub_2408A0004()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_2408A0858;
  }

  else
  {
    v3 = sub_2408A0118;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408A0118()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 112);
  v4 = *(v0 + 240) + 8;
  (*(v0 + 336))(*(v0 + 256), *(v0 + 232));
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  *(v3 + 32) = *(v0 + 88);
  *v3 = v5;
  *(v3 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v1);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 304);
  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2408A0278()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_2408A09CC;
  }

  else
  {
    v3 = sub_2408A038C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408A038C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[14];
  (*(v0[27] + 8))(v0[28], v0[26]);
  swift_storeEnumTagMultiPayload();
  (*(v2 + 56))(v3, 0, 1, v1);
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[35];
  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[28];
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v16 = v0[20];
  v17 = v0[19];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2408A04D4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 104) = a1;
  *(v3 + 96) = v1;
  v4 = *(v2 + 384);
  v5 = *(v2 + 376);
  v7 = *v1;

  return MEMORY[0x2822009F8](sub_2408A05F4, 0, 0);
}

uint64_t sub_2408A05F4()
{
  v33 = v0;
  v1 = *(v0 + 328);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = 0x6465747065636361;
    }

    else
    {
      v10 = 0x64657463656A6572;
    }

    v11 = sub_2408CC504(v10, 0xE800000000000000, &v32);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v2, v3, "Model update was %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v13 = *(v0 + 192);
    v12 = *(v0 + 200);
    v14 = *(v0 + 184);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v17 = *(v0 + 112);
  swift_storeEnumTagMultiPayload();
  (*(v16 + 56))(v17, 0, 1, v15);
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v20 = *(v0 + 304);
  v21 = *(v0 + 280);
  v23 = *(v0 + 248);
  v22 = *(v0 + 256);
  v24 = *(v0 + 224);
  v25 = *(v0 + 200);
  v27 = *(v0 + 168);
  v26 = *(v0 + 176);
  v30 = *(v0 + 160);
  v31 = *(v0 + 152);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_2408A0858()
{
  v1 = *(v0 + 240) + 8;
  (*(v0 + 336))(*(v0 + 256), *(v0 + 232));
  v2 = *(v0 + 352);
  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 112);
  sub_2408D4440();

  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 48);
  *v5 = v6;
  *(v5 + 16) = v7;
  swift_storeEnumTagMultiPayload();
  (*(v4 + 56))(v5, 0, 1, v3);
  v9 = *(v0 + 312);
  v8 = *(v0 + 320);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  v13 = *(v0 + 248);
  v12 = *(v0 + 256);
  v14 = *(v0 + 224);
  v15 = *(v0 + 200);
  v17 = *(v0 + 168);
  v16 = *(v0 + 176);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2408A09CC()
{
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
  v1 = *(v0 + 368);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 112);
  sub_2408D4440();

  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v4 + 32) = *(v0 + 48);
  *v4 = v5;
  *(v4 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v4, 0, 1, v2);
  v8 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 304);
  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2408A0B3C(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v5 = *(*(sub_2408D4260() - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v3[48] = v6;
  v7 = *(v6 - 8);
  v3[49] = v7;
  v8 = *(v7 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v9 = sub_2408D4350();
  v3[52] = v9;
  v10 = *(v9 - 8);
  v3[53] = v10;
  v11 = *(v10 + 64) + 15;
  v3[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A0CD8, 0, 0);
}

uint64_t sub_2408A0CD8()
{
  v24 = v0;
  if (qword_27E506958 != -1)
  {
    swift_once();
  }

  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  v4 = v0[44];
  v5 = sub_2408D4B20();
  v0[55] = __swift_project_value_buffer(v5, qword_27E5078C0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[53];
  v9 = v0[54];
  v11 = v0[52];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    sub_2408B4B40(&qword_27E507910, 255, MEMORY[0x277CED960]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Received migrate request with model %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v0[56] = *(v0[45] + 64);
  v18 = *(MEMORY[0x277CED868] + 4);
  v22 = (*MEMORY[0x277CED868] + MEMORY[0x277CED868]);

  v19 = swift_task_alloc();
  v0[57] = v19;
  *v19 = v0;
  v19[1] = sub_2408A0F7C;
  v20 = v0[44];

  return v22(v20);
}

uint64_t sub_2408A0F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_2408A19C8;
  }

  else
  {
    v5 = *(v2 + 448);

    v4 = sub_2408A1098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_2408A1098()
{
  if (qword_27E506960 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = v0[48];
  v3 = v0[49];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v7 = qword_27E5078D8;
  type metadata accessor for ProximityTransportConnector();
  v8 = swift_allocObject();
  v0[59] = v8;

  swift_defaultActor_initialize();
  *(v8 + 152) = 0;
  *(v8 + 136) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 112) = v7;
  sub_2408B4B40(&qword_27E506EA0, 255, type metadata accessor for ProximityTransportConnector);
  sub_2408D4280();
  sub_2408D3F40();
  v34 = *(v3 + 16);
  v34(v5, v1, v2);
  v9 = *(v3 + 56);
  v0[60] = v9;
  v0[61] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v33 = v9;
  v9(v5, 0, 1, v2);
  swift_beginAccess();
  sub_2408C70EC(v5, v4);
  swift_endAccess();
  v10 = *(v6 + 64);
  v11 = objc_opt_self();
  v32 = v10;

  v31 = [v11 sharedInstance];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v13 = result;
    v14 = v0[50];
    v15 = v0[48];
    v28 = v0[47];
    v16 = v0[45];
    v29 = v0[46];
    v30 = v0[55];
    v17 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078F8, &unk_2408D9040);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v0[62] = v21;

    swift_defaultActor_initialize();
    v22 = *(*v21 + 144);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
    (*(*(v23 - 8) + 56))(&v21[v22], 1, 1, v23);
    *&v21[*(*v21 + 152)] = 0;
    *(v21 + 14) = v32;
    *(v21 + 15) = v31;
    *(v21 + 16) = v13;
    *(v21 + 17) = v8;
    *(v21 + 18) = v17;
    v0[10] = v18;
    v0[11] = sub_2407D917C(&qword_27E507900, &qword_27E5078F8, &unk_2408D9040);
    v0[7] = v21;
    swift_beginAccess();

    sub_2408B3974((v0 + 7), v16 + 72, &qword_27E5078E8, &qword_2408D9028);
    swift_endAccess();
    sub_2407D917C(&qword_27E507908, &qword_27E5078F8, &unk_2408D9040);
    sub_2408D4280();
    sub_2408D3F40();
    v34(v29, v14, v15);
    v33(v29, 0, 1, v15);
    swift_beginAccess();
    sub_2408C70EC(v29, v28);
    swift_endAccess();
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2407CF000, v24, v25, "Beginning migration", v26, 2u);
      MEMORY[0x245CC9F60](v26, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[63] = v27;
    *v27 = v0;
    v27[1] = sub_2408A15EC;

    return sub_2408A2B10((v0 + 2));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2408A15EC()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_2408A1A6C;
  }

  else
  {
    v3 = sub_2408A1700;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408A1700()
{
  v29 = v0;
  v1 = *(v0 + 440);
  sub_2408B2C7C(v0 + 16, v0 + 96);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  sub_2408B2CD8(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    sub_2408B2C7C(v0 + 16, v0 + 136);
    v6 = sub_2408D4430();
    v8 = v7;
    sub_2408B2CD8(v0 + 16);
    v9 = sub_2408CC504(v6, v8, &v28);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received migration report %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v22 = *(v0 + 488);
  v23 = *(v0 + 496);
  v10 = *(v0 + 480);
  v26 = *(v0 + 472);
  v27 = *(v0 + 432);
  v11 = *(v0 + 400);
  v24 = *(v0 + 408);
  v13 = *(v0 + 384);
  v12 = *(v0 + 392);
  v14 = *(v0 + 368);
  v15 = *(v0 + 376);
  v16 = *(v0 + 360);
  v25 = *(v0 + 344);
  sub_2408D3F40();
  v10(v14, 1, 1, v13);
  swift_beginAccess();
  sub_2408C70EC(v14, v15);
  swift_endAccess();

  v17 = *(v12 + 8);
  v17(v11, v13);
  sub_2408D3F40();
  v10(v14, 1, 1, v13);
  swift_beginAccess();
  sub_2408C70EC(v14, v15);
  swift_endAccess();

  v17(v24, v13);
  v18 = *(v0 + 16);
  v19 = *(v0 + 32);
  *(v25 + 32) = *(v0 + 48);
  *v25 = v18;
  *(v25 + 16) = v19;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2408A19C8()
{
  v1 = v0[56];

  v2 = v0[58];
  v3 = v0[54];
  v5 = v0[50];
  v4 = v0[51];
  v7 = v0[46];
  v6 = v0[47];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408A1A6C()
{
  v17 = v0[61];
  v18 = v0[62];
  v1 = v0[60];
  v2 = v0[50];
  v19 = v0[51];
  v20 = v0[59];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v5 = v0[47];
  v7 = v0[45];
  sub_2408D3F40();
  v1(v6, 1, 1, v3);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v8 = *(v4 + 8);
  v8(v2, v3);
  sub_2408D3F40();
  v1(v6, 1, 1, v3);
  swift_beginAccess();
  sub_2408C70EC(v6, v5);
  swift_endAccess();

  v8(v19, v3);
  v9 = v0[64];
  v10 = v0[54];
  v12 = v0[50];
  v11 = v0[51];
  v14 = v0[46];
  v13 = v0[47];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2408A1C1C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2408A1C40, 0, 0);
}

uint64_t sub_2408A1C40()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  sub_2407EEE04(v1 + 72, v0 + 56, &qword_27E5078E8, &qword_2408D9028);
  if (*(v0 + 80))
  {
    sub_2407D2554((v0 + 56), v0 + 16);
    if (qword_27E506958 != -1)
    {
      swift_once();
    }

    v2 = sub_2408D4B20();
    __swift_project_value_buffer(v2, qword_27E5078C0);
    v3 = sub_2408D4B10();
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Performing anisette request", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    v8 = *(v7 + 24);
    v20 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 144) = v10;
    *v10 = v0;
    v10[1] = sub_2408A1F9C;
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);

    return v20(v11, v12, v6, v7);
  }

  else
  {
    sub_2407D9440(v0 + 56, &qword_27E5078E8, &qword_2408D9028);
    if (qword_27E506958 != -1)
    {
      swift_once();
    }

    v14 = sub_2408D4B20();
    __swift_project_value_buffer(v14, qword_27E5078C0);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F40();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2407CF000, v15, v16, "We should only be performing an anisette request as part of migration, which should have established the AgeMigrationService", v17, 2u);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    sub_2408B2C28();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2408A1F9C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2408A2114;
  }

  else
  {
    v3 = sub_2408A20B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2408A20B0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408A2114()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2408A2178()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  sub_2407D9440(v0 + 72, &qword_27E5078E8, &qword_2408D9028);
  return v0;
}

uint64_t sub_2408A21E0()
{
  sub_2408A2178();

  return swift_deallocClassInstance();
}

double sub_2408A2284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2408D4C40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = *v2;
  v13 = sub_2408D4E60();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v6 + 32))(v15 + v14, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;

  sub_24083AB60(0, 0, v11, &unk_2408D9020, v15);

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_2408A2488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_2408C4014(a1, a2, WitnessTable);
}

uint64_t sub_2408A255C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_2408B4B40(&qword_27E5078E0, a2, type metadata accessor for MachAgeMigrationService);
  result = sub_2408B4B40(&qword_27E506F88, v3, type metadata accessor for MachAgeMigrationService);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2408A25E0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v32 - v12;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v14 = sub_2408D4B20();
  __swift_project_value_buffer(v14, qword_27E507CB8);
  v15 = a1;
  v16 = sub_2408D4B10();
  v17 = sub_2408D4F10();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v18 = 136315394;
    v19 = sub_2408D53B0();
    v33 = v16;
    v21 = a1;
    v22 = v5;
    v23 = sub_2408CC504(v19, v20, &v37);

    *(v18 + 4) = v23;
    v5 = v22;
    a1 = v21;
    *(v18 + 12) = 2112;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    v16 = v33;
    v26 = v34;
    *v34 = v25;
    _os_log_impl(&dword_2407CF000, v16, v17, "%s handling isolated cancellation with error: %@", v18, 0x16u);
    sub_2407D9440(v26, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v26, -1, -1);
    v27 = v35;
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  v28 = *(*v2 + 144);
  swift_beginAccess();
  sub_2407EEE04(v2 + v28, v13, &qword_27E507328, &qword_2408D7900);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_2407D9440(v13, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_2407D9440(v13, &qword_27E507328, &qword_2408D7900);
    v36 = a1;
    v29 = a1;
    sub_2408D4E90();
    (*(v6 + 8))(v9, v5);
  }

  v36 = a1;
  type metadata accessor for ProximityTransportConnector();
  sub_2408B4B40(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector);
  sub_2408D3640();
  if (*(v2 + *(*v2 + 152)))
  {
    v36 = a1;
    sub_2408D3D80();
    sub_2408B4B40(&qword_27E506DB8, 255, MEMORY[0x277CED5B0]);

    sub_2408D4270();
  }

  v30 = v2[14];
  v36 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
  sub_2407D917C(&qword_27E507920, &qword_27E507918, &qword_2408D9068);
  sub_2408D4270();
}

uint64_t sub_2408A2B10(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_2408D4B20();
  v2[33] = v3;
  v4 = *(v3 - 8);
  v2[34] = v4;
  v5 = *(v4 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A2BD0, v1, 0);
}

uint64_t sub_2408A2BD0()
{
  v1 = sub_2408D34B0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[36] = sub_2408D34C0();
  sub_2408D49F0();
  v4 = sub_2408D48E0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[37] = sub_2408D48C0();
  sub_2408D48D0();
  v7 = *(MEMORY[0x277CEDE70] + 4);
  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_2408A2CF8;
  v9 = v0[32];
  v10 = MEMORY[0x277CEDA10];

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D9060, v9, v10);
}

uint64_t sub_2408A2CF8()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 256);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408A2E08, v2, 0);
}

uint64_t sub_2408A2E08()
{
  v55 = v0;
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 312) = v3;
  *(v0 + 320) = v4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v0 + 328) = v5;
  *(v0 + 336) = v6;
  v7 = *(v0 + 48);
  *(v0 + 344) = v7;
  v8 = *(v0 + 56);
  sub_2408D48B0();
  sub_2408D34A0();
  v9 = *(v0 + 288);
  v10 = *(v0 + 296);
  if ((v8 & 1) == 0)
  {
    v27 = *(v0 + 296);

LABEL_17:
    v35 = *(v0 + 280);
    v36 = *(v0 + 248);

    *v36 = v3;
    v36[1] = v4;
    v36[2] = v5;
    v36[3] = v6;
    v36[4] = v7;
    v26 = *(v0 + 8);
LABEL_18:

    return v26();
  }

  *(v0 + 224) = v3;
  v11 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2408B2DDC(v3, v4, v5, v6, v7, 1);
  *(v0 + 232) = v3;
  v12 = v3;
  if (swift_dynamicCast())
  {
    v13 = *(v0 + 120);
    *(v0 + 64) = *(v0 + 104);
    *(v0 + 80) = v13;
    *(v0 + 96) = *(v0 + 136);
    if (sub_240880F60())
    {
      sub_2408B2DDC(v3, v4, v5, v6, v7, 1);
      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(*(v0 + 264), qword_27E507CB8);
      sub_2408B2E8C(v0 + 64, v0 + 144);
      v14 = sub_2408D4B10();
      v15 = sub_2408D4F30();
      sub_2408B2E38(v0 + 64);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v54 = v17;
        *v16 = 136315138;
        v18 = *(v0 + 80);
        *(v0 + 184) = *(v0 + 64);
        *(v0 + 200) = v18;
        *(v0 + 216) = *(v0 + 96);
        sub_2408B2C28();
        v19 = sub_2408D5290();
        v21 = sub_2408CC504(v19, v20, &v54);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2407CF000, v14, v15, "Age migration flow cancelled with error %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x245CC9F60](v17, -1, -1);
        MEMORY[0x245CC9F60](v16, -1, -1);
      }

      sub_2408B2C28();
      swift_allocError();
      v22 = *(v0 + 96);
      v23 = *(v0 + 80);
      *v24 = *(v0 + 64);
      *(v24 + 16) = v23;
      *(v24 + 32) = v22;
      swift_willThrow();

      v25 = *(v0 + 280);

      v26 = *(v0 + 8);
      goto LABEL_18;
    }

    sub_2408B2E38(v0 + 64);
  }

  *(v0 + 240) = v3;
  v28 = v3;
  if (swift_dynamicCast())
  {
    sub_2408B2DDC(v3, v4, v5, v6, v7, 1);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 264), qword_27E507CB8);
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F10();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2407CF000, v29, v30, "AgeMigrationService caught user selected manual", v31, 2u);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    v32 = *(v0 + 256);

    sub_2408B2C28();
    v33 = swift_allocError();
    *v34 = xmmword_2408D73A0;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 16) = 0;
    sub_2408A25E0(v33);

    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v4 = 1;
    goto LABEL_17;
  }

  v38 = *(v0 + 280);

  sub_2408D48F0();
  v39 = v3;
  v40 = sub_2408D4B10();
  v41 = sub_2408D4F30();
  sub_2408B2DDC(v3, v4, v5, v6, v7, 1);
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = v3;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v42 + 4) = v45;
    *v43 = v45;
    _os_log_impl(&dword_2407CF000, v40, v41, "Received error during migration: %@", v42, 0xCu);
    sub_2407D9440(v43, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v43, -1, -1);
    MEMORY[0x245CC9F60](v42, -1, -1);
  }

  v47 = *(v0 + 272);
  v46 = *(v0 + 280);
  v49 = *(v0 + 256);
  v48 = *(v0 + 264);

  (*(v47 + 8))(v46, v48);
  *(v0 + 352) = *(v49 + 112);
  v50 = swift_task_alloc();
  *(v0 + 360) = v50;
  *(v50 + 16) = v3;
  v51 = *(MEMORY[0x277CED860] + 4);
  v53 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v52 = swift_task_alloc();
  *(v0 + 368) = v52;
  *v52 = v0;
  v52[1] = sub_2408A34B0;

  return v53();
}

uint64_t sub_2408A34B0()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v10 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v4 = v2[32];
    v5 = sub_2408A3654;
  }

  else
  {
    v6 = v2[44];
    v7 = v2[45];
    v8 = v2[32];

    v5 = sub_2408A35E0;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A35E0()
{
  v1 = v0[39];
  swift_willThrow();
  v2 = v0[39];
  v3 = v0[35];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2408A3654()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  sub_2408B2DDC(*(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), 1);

  v3 = *(v0 + 376);
  v4 = *(v0 + 280);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2408A36E0(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = sub_2408D3D60();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A37FC, v1, 0);
}

uint64_t sub_2408A37FC()
{
  v0[26] = *(v0[18] + 112);
  v0[15] = sub_2408D4350();
  v0[16] = sub_2408B4B40(&qword_27E507928, 255, MEMORY[0x277CED960]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  v2 = *(MEMORY[0x277CED858] + 4);
  v5 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_2408A3918;

  return v5(boxed_opaque_existential_1);
}

uint64_t sub_2408A3918()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408A3A44, v3, 0);
}

uint64_t sub_2408A3A44()
{
  v1 = *(v0[18] + 136);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_2408A3AE4;
  v3 = v0[19];

  return sub_2407EF354(v3, (v0 + 12));
}

uint64_t sub_2408A3AE4()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 144);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return MEMORY[0x2822009F8](sub_2408A3BFC, v3, 0);
}

uint64_t sub_2408A3BFC()
{
  v62 = v0;
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
    sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080);
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
LABEL_3:
    v6 = v0[24];
    v5 = v0[25];
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[19];

    v10 = v0[1];

    return v10();
  }

  v13 = v0[24];
  v12 = v0[25];
  (*(v2 + 32))(v12, v3, v1);
  v14 = *(v2 + 16);
  v14(v13, v12, v1);
  v15 = (*(v2 + 88))(v13, v1);
  if (v15 == *MEMORY[0x277CED560])
  {
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v16 = sub_2408D4B20();
    __swift_project_value_buffer(v16, qword_27E507CB8);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F10();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Beginning migration from parent device", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }

    v20 = swift_task_alloc();
    v0[36] = v20;
    *v20 = v0;
    v20[1] = sub_2408A46A8;
    v21 = v0[18];

    return sub_2408A6704((v0 + 2));
  }

  else
  {
    if (v15 != *MEMORY[0x277CED568])
    {
      if (v15 == *MEMORY[0x277CED558])
      {
        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v28 = sub_2408D4B20();
        __swift_project_value_buffer(v28, qword_27E507CB8);
        v29 = sub_2408D4B10();
        v30 = sub_2408D4F30();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_2407CF000, v29, v30, "Unexpected role 'none', failing", v31, 2u);
          MEMORY[0x245CC9F60](v31, -1, -1);
        }

        v32 = v0[25];
        v33 = v0[20];
        v34 = v0[21];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
        sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080);
        swift_allocError();
        *v35 = 0;
        swift_willThrow();
        (*(v34 + 8))(v32, v33);
      }

      else
      {
        if (qword_27E506980 != -1)
        {
          swift_once();
        }

        v36 = v0[25];
        v37 = v0[23];
        v38 = v0[20];
        v39 = sub_2408D4B20();
        __swift_project_value_buffer(v39, qword_27E507CB8);
        v14(v37, v36, v38);
        v40 = sub_2408D4B10();
        v41 = sub_2408D4F30();
        v42 = os_log_type_enabled(v40, v41);
        v43 = v0[23];
        if (v42)
        {
          v44 = v0[21];
          v45 = v0[22];
          v46 = v0[20];
          v47 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v61 = v60;
          *v47 = 136315138;
          v14(v45, v43, v46);
          v48 = sub_2408D4D40();
          v50 = v49;
          v51 = v46;
          v52 = *(v44 + 8);
          v52(v43, v51);
          v53 = sub_2408CC504(v48, v50, &v61);

          *(v47 + 4) = v53;
          _os_log_impl(&dword_2407CF000, v40, v41, "Unexpected role '%s', failing", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);
          MEMORY[0x245CC9F60](v60, -1, -1);
          MEMORY[0x245CC9F60](v47, -1, -1);
        }

        else
        {
          v54 = v0[20];
          v55 = v0[21];

          v52 = *(v55 + 8);
          v52(v43, v54);
        }

        v57 = v0[24];
        v56 = v0[25];
        v58 = v0[20];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507930, &qword_2408D9080);
        sub_2407D917C(&qword_27E507938, &qword_27E507930, &qword_2408D9080);
        swift_allocError();
        *v59 = 0;
        swift_willThrow();
        v52(v56, v58);
        v52(v57, v58);
      }

      goto LABEL_3;
    }

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v22 = sub_2408D4B20();
    __swift_project_value_buffer(v22, qword_27E507CB8);
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F10();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v23, v24, "Beginning migration from device that reset birthday to child", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v26 = swift_task_alloc();
    v0[29] = v26;
    *v26 = v0;
    v26[1] = sub_2408A43DC;
    v27 = v0[18];

    return sub_2408A4960((v0 + 7));
  }
}

uint64_t sub_2408A43DC()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_2408A45F4;
  }

  else
  {
    *(v2 + 248) = *(v2 + 56);
    *(v2 + 264) = *(v2 + 72);
    *(v2 + 280) = *(v2 + 88);
    v5 = sub_2408A4510;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A4510()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 264);
  v10 = v7;
  v11 = *(v0 + 248);
  (*(*(v0 + 168) + 8))(*(v0 + 200), *(v0 + 160));

  *v6 = v11;
  *(v6 + 16) = v10;
  *(v6 + 32) = v1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2408A45F4()
{
  (*(v0[21] + 8))(v0[25], v0[20]);
  v1 = v0[30];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408A46A8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_2408A48AC;
  }

  else
  {
    v6 = *(v2 + 32);
    *(v2 + 304) = *(v2 + 16);
    *(v2 + 320) = v6;
    *(v2 + 336) = *(v2 + 48);
    v5 = sub_2408A47D0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A47D0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 192);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v9 = *(v0 + 320);
  v10 = *(v0 + 304);
  (*(*(v0 + 168) + 8))(*(v0 + 200), *(v0 + 160));

  *v6 = v10;
  *(v6 + 16) = v9;
  *(v6 + 32) = v1;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2408A48AC()
{
  (*(v0[21] + 8))(v0[25], v0[20]);
  v1 = v0[37];
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408A4960(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C8, &qword_2408D81F8);
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v7 = sub_2408D3D60();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = sub_2408D4350();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v17 = sub_2408D38D0();
  v2[25] = v17;
  v18 = *(v17 - 8);
  v2[26] = v18;
  v19 = *(v18 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B8, &unk_2408D81D0);
  v2[29] = v20;
  v21 = *(v20 - 8);
  v2[30] = v21;
  v22 = *(v21 + 64) + 15;
  v2[31] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C0, &qword_2408D90A0);
  v2[32] = v23;
  v24 = *(v23 - 8);
  v2[33] = v24;
  v25 = *(v24 + 64) + 15;
  v2[34] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A4D38, v1, 0);
}

uint64_t sub_2408A4D38()
{
  v1 = v0[36];
  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[10];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v0[37] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[38] = v9;
  v0[39] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 1, 1, v7);
  *(swift_task_alloc() + 16) = v1;
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2408D4EC0();

  v10 = *(*v6 + 144);
  v0[40] = v10;
  swift_beginAccess();
  sub_2408B2EE8(v1, v6 + v10);
  swift_endAccess();
  v0[41] = v6[14];
  v11 = *(MEMORY[0x277CED858] + 4);
  v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = sub_2408A4F2C;
  v13 = v0[23];

  return v15(v13);
}

uint64_t sub_2408A4F2C()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408A5058, v3, 0);
}

uint64_t sub_2408A5058()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  sub_2408D4330();
  (*(v4 + 8))(v1, v3);
  v5 = sub_2408D3970();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_2407D9440(v0[24], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E507CB8);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Account does not have an ID. Cannot continue", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v12 = v0[33];
    v11 = v0[34];
    v13 = v0[32];

    sub_2408B2C28();
    swift_allocError();
    *v14 = xmmword_2408D7390;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 0;
    swift_willThrow();
    (*(v12 + 8))(v11, v13);
    v15 = v0[35];
    v16 = v0[34];
    v17 = v0[31];
    v19 = v0[27];
    v18 = v0[28];
    v21 = v0[23];
    v20 = v0[24];
    v22 = v0[20];
    v39 = v0[17];
    v40 = v0[14];
    v41 = v0[13];
    sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v26 = v0[27];
    v25 = v0[28];
    v27 = v0[25];
    v28 = v0[26];
    v29 = v0[24];
    sub_2408D38F0();
    (*(v6 + 8))(v29, v5);
    (*(v28 + 32))(v25, v26, v27);
    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v30 = sub_2408D4B20();
    v0[43] = __swift_project_value_buffer(v30, qword_27E507CB8);
    v31 = sub_2408D4B10();
    v32 = sub_2408D4F20();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2407CF000, v31, v32, "Beginning handshake to establish connection", v33, 2u);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    v34 = v0[10];

    v35 = *(v34 + 112);
    v0[44] = v35;
    v36 = *(v34 + 136);

    v37 = swift_task_alloc();
    v0[45] = v37;
    *v37 = v0;
    v37[1] = sub_2408A54D0;
    v38 = v0[20];

    return sub_2408849B4(v38, v35);
  }
}

uint64_t sub_2408A54D0()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 352);
  v6 = *(v2 + 80);

  if (v0)
  {
    v7 = sub_2408A58E8;
  }

  else
  {
    v7 = sub_2408A5618;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2408A5618()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[14];
  (*(v0[16] + 104))(v0[17], *MEMORY[0x277CED568], v0[15]);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_2408A572C;
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[10];

  return sub_2408AD208(v7, v6, v8);
}

uint64_t sub_2408A572C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v7 = v3[17];
  v8 = v3[16];
  v9 = v3[15];
  v10 = v3[14];
  v11 = v3[10];
  sub_2407D9440(v10, &qword_27E507F00, &qword_2408D6D50);
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v12 = sub_2408A5B78;
  }

  else
  {
    v12 = sub_2408A5A40;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_2408A58E8()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  (*(v0[26] + 8))(v0[28], v0[25]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[31];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[46];
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408A5A40()
{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[13];
  v4 = v0[10];
  v5 = *(*v4 + 152);
  v6 = *(v4 + v5);
  *(v4 + v5) = v0[48];

  sub_2408D4EA0();
  v7 = sub_2407D917C(&qword_27E507940, &qword_27E5078F8, &unk_2408D9040);
  v0[50] = v7;
  v8 = v0[10];
  v9 = *(MEMORY[0x277D858B8] + 4);
  v10 = swift_task_alloc();
  v0[51] = v10;
  *v10 = v0;
  v10[1] = sub_2408A5CF0;
  v11 = v0[13];
  v12 = v0[11];

  return MEMORY[0x2822005A8](v0 + 55, v8, v7, v12, v0 + 8);
}

uint64_t sub_2408A5B78()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[35];
  v8 = v0[34];
  v9 = v0[31];
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v17 = v0[17];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[49];
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v15 = v0[1];

  return v15();
}

uint64_t sub_2408A5CF0()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v7 = *v1;

  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2408A60EC;
  }

  else
  {
    v5 = sub_2408A5E04;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A5E04()
{
  v26 = v0;
  if (*(v0 + 440))
  {
    v2 = *(v0 + 312);
    v1 = *(v0 + 320);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    v5 = *(v0 + 280);
    v6 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    v4(v5, 1, 1, v3);
    swift_beginAccess();
    sub_2408B3974(v5, v6 + v1, &qword_27E507328, &qword_2408D7900);
    swift_endAccess();
    *(v0 + 416) = *(v6 + 112);
    v7 = *(MEMORY[0x277CED860] + 4);
    v24 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

    v8 = swift_task_alloc();
    *(v0 + 424) = v8;
    *v8 = v0;
    v8[1] = sub_2408A6298;

    return v24();
  }

  else
  {
    v10 = *(v0 + 344);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315138;
      v15 = sub_2408D4D40();
      v17 = sub_2408CC504(v15, v16, &v25);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2407CF000, v11, v12, "Received report in migration stream: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x245CC9F60](v14, -1, -1);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v18 = *(v0 + 400);
    v19 = *(v0 + 80);
    v20 = *(MEMORY[0x277D858B8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 408) = v21;
    *v21 = v0;
    v21[1] = sub_2408A5CF0;
    v22 = *(v0 + 104);
    v23 = *(v0 + 88);

    return MEMORY[0x2822005A8](v0 + 440, v19, v18, v23, v0 + 64);
  }
}

uint64_t sub_2408A60EC()
{
  v1 = v0[48];
  v2 = v0[33];
  v24 = v0[32];
  v26 = v0[34];
  v22 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];

  (*(v8 + 8))(v9, v10);
  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v22, v4);
  (*(v2 + 8))(v26, v24);
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[31];
  v15 = v0[27];
  v14 = v0[28];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[20];
  v21 = v0[17];
  v23 = v0[14];
  v25 = v0[13];
  v27 = v0[8];
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2408A6298()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 416);
  v6 = *(v2 + 80);

  if (v0)
  {
    v7 = sub_2408A657C;
  }

  else
  {
    v7 = sub_2408A63E0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2408A63E0()
{
  v1 = v0[48];
  v2 = v0[36];
  v3 = v0[33];
  v14 = v0[34];
  v15 = v0[35];
  v13 = v0[32];
  v4 = v0[28];
  v16 = v0[31];
  v17 = v0[27];
  v6 = v0[25];
  v5 = v0[26];
  v18 = v0[24];
  v19 = v0[23];
  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[18];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[13];
  v10 = v0[9];

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v13);
  sub_2407D9440(v2, &qword_27E507328, &qword_2408D7900);

  *v10 = xmmword_2408D8E60;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  v11 = v0[1];

  return v11();
}

uint64_t sub_2408A657C()
{
  v1 = v0[48];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v9 = v0[19];
  v8 = v0[20];
  v10 = v0[18];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[31];
  v15 = v0[27];
  v14 = v0[28];
  v17 = v0[23];
  v16 = v0[24];
  v18 = v0[20];
  v21 = v0[17];
  v22 = v0[14];
  v23 = v0[13];
  v24 = v0[54];
  sub_2407D9440(v0[36], &qword_27E507328, &qword_2408D7900);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2408A6704(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = *(*(sub_2408D44C0() - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v5 = sub_2408D3D60();
  v2[18] = v5;
  v6 = *(v5 - 8);
  v2[19] = v6;
  v7 = *(v6 + 64) + 15;
  v2[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v2[21] = v8;
  v9 = *(v8 - 8);
  v2[22] = v9;
  v10 = *(v9 + 64) + 15;
  v2[23] = swift_task_alloc();
  v11 = swift_task_alloc();
  v2[24] = v11;
  *v11 = v2;
  v11[1] = sub_2408A68C8;

  return sub_2408A7ED8();
}

uint64_t sub_2408A68C8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 184);
    v8 = *(v4 + 160);
    v10 = *(v4 + 128);
    v9 = *(v4 + 136);
    v11 = *(v4 + 120);

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v14 = *(v4 + 112);
    *(v4 + 320) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2408A6A50, v14, 0);
  }
}

uint64_t sub_2408A6A50()
{
  if (*(v0 + 320) == 1)
  {
    v1 = [*(*(v0 + 112) + 120) primaryAuthKitAccount];
    if (v1)
    {

      if (qword_27E506980 != -1)
      {
        swift_once();
      }

      v2 = sub_2408D4B20();
      *(v0 + 200) = __swift_project_value_buffer(v2, qword_27E507CB8);
      v3 = sub_2408D4B10();
      v4 = sub_2408D4F20();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_2407CF000, v3, v4, "Connecting transport for age migration", v5, 2u);
        MEMORY[0x245CC9F60](v5, -1, -1);
      }

      v6 = *(v0 + 112);

      v7 = *(v6 + 112);
      *(v0 + 208) = v7;
      v8 = *(v6 + 136);

      v9 = swift_task_alloc();
      *(v0 + 216) = v9;
      *v9 = v0;
      v9[1] = sub_2408A6E20;
      v10 = *(v0 + 184);

      return sub_2408849B4(v10, v7);
    }

    if (qword_27E506980 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_27E507CB8);
    v13 = sub_2408D4B10();
    v18 = sub_2408D4F30();
    if (!os_log_type_enabled(v13, v18))
    {
      v16 = 7;
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2407CF000, v13, v18, "Parent does not have a primary account, will not be eligible to help child device migrate.", v15, 2u);
    v16 = 7;
    goto LABEL_19;
  }

  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v12 = sub_2408D4B20();
  __swift_project_value_buffer(v12, qword_27E507CB8);
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F30();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2407CF000, v13, v14, "Parent decided not to connect to child device", v15, 2u);
    v16 = 1;
LABEL_19:
    MEMORY[0x245CC9F60](v15, -1, -1);
    goto LABEL_21;
  }

  v16 = 1;
LABEL_21:

  sub_2408B2C28();
  swift_allocError();
  *v19 = 0;
  v19[1] = v16;
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = 0;
  swift_willThrow();
  v20 = *(v0 + 184);
  v21 = *(v0 + 160);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 120);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2408A6E20()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  v6 = *(v2 + 112);

  if (v0)
  {
    v7 = sub_2408A7228;
  }

  else
  {
    v7 = sub_2408A6F68;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2408A6F68()
{
  v1 = v0[17];
  (*(v0[19] + 104))(v0[20], *MEMORY[0x277CED560], v0[18]);
  v2 = sub_2408D38D0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_2408A706C;
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];

  return sub_2408AD208(v5, v4, v6);
}

uint64_t sub_2408A706C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  v4[30] = a1;
  v4[31] = v1;

  v7 = v3[20];
  v8 = v3[19];
  v9 = v3[18];
  v10 = v3[17];
  v11 = v3[14];
  sub_2407D9440(v10, &qword_27E507F00, &qword_2408D6D50);
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v12 = sub_2408A7554;
  }

  else
  {
    v12 = sub_2408A72C8;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_2408A7228()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408A72C8()
{
  v26 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 112);
  v3 = *(*v2 + 152);
  v4 = *(v2 + v3);
  *(v2 + v3) = *(v0 + 240);
  swift_retain_n();

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 240);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    *(v0 + 96) = v7;
    sub_2408D3D80();

    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v25);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v5, v6, "Established router for age migration: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v13 = *(v0 + 200);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v14, v15, "Fetching sensitive information from child device", v16, 2u);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  *(v0 + 56) = xmmword_2408D8E70;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  v17 = *(MEMORY[0x277CED570] + 4);
  v24 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  v19 = sub_2408B3BA4();
  *v18 = v0;
  v18[1] = sub_2408A760C;
  v20 = *(v0 + 240);
  v21 = *(v0 + 120);
  v22 = MEMORY[0x277CEDB00];

  return v24(v21, v0 + 56, v22, v19);
}

uint64_t sub_2408A7554()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408A760C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 264) = v0;

  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_2408A78F8;
  }

  else
  {
    v5 = sub_2408A7724;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A7724()
{
  sub_2408B309C(v0[15], v0[16]);
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_2408A77CC;
  v2 = v0[30];
  v3 = v0[16];
  v4 = v0[14];

  return sub_2408A8328((v0 + 2), v3, v2);
}

uint64_t sub_2408A77CC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_2408A7C48;
  }

  else
  {
    v6 = sub_2408A7B4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408A78F8()
{
  v1 = v0[33];
  v0[36] = *(v0[14] + 112);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CED870] + 4);
  v6 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_2408A79E8;

  return v6(sub_2408B3BF8, v2);
}

uint64_t sub_2408A79E8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = v2[37];
  v6 = v2[36];
  v7 = v2[14];

  if (v0)
  {
    v8 = sub_2408A7E04;
  }

  else
  {
    v8 = sub_2408A7D30;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408A7B4C()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v0 + 104);

  sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
  (*(v3 + 8))(v2, v4);
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  *(v9 + 32) = *(v0 + 48);
  *v9 = v10;
  *(v9 + 16) = v11;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408A7C48()
{
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = v0[16];

  sub_2408B4AE0(v5, MEMORY[0x277CEDB08]);
  (*(v3 + 8))(v2, v4);
  v6 = v0[35];
  v7 = v0[23];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408A7D30()
{
  v1 = v0[33];
  v2 = v0[30];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();

  (*(v4 + 8))(v3, v5);
  v6 = v0[33];
  v7 = v0[23];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408A7E04()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 312);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 120);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2408A7EF8()
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[3] = __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Asking user for confirmation to connect before proceeding", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v0[2];

  v0[4] = *(v5 + 112);
  v6 = *(MEMORY[0x277CED860] + 4);
  v10 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_2408A80B0;
  v8 = MEMORY[0x277D839B0];

  return v10(v0 + 7, sub_2408C0D58, 0, &unk_2408D99F8, 0, v8);
}

uint64_t sub_2408A80B0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_2408A82C0;
  }

  else
  {
    v6 = *(v2 + 32);
    v7 = *(v2 + 16);

    v5 = sub_2408A81D8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A81D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User made the connection decision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_2408A82C0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

uint64_t sub_2408A8328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[59] = a3;
  v4[60] = v3;
  v4[57] = a1;
  v4[58] = a2;
  v5 = sub_2408D42E0();
  v4[61] = v5;
  v6 = *(v5 - 8);
  v4[62] = v6;
  v7 = *(v6 + 64) + 15;
  v4[63] = swift_task_alloc();
  v8 = sub_2408D42F0();
  v4[64] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v10 = sub_2408D4350();
  v4[66] = v10;
  v11 = *(v10 - 8);
  v4[67] = v11;
  v12 = *(v11 + 64) + 15;
  v4[68] = swift_task_alloc();
  v13 = sub_2408D44A0();
  v4[69] = v13;
  v14 = *(v13 - 8);
  v4[70] = v14;
  v15 = *(v14 + 64) + 15;
  v4[71] = swift_task_alloc();
  v16 = sub_2408D44C0();
  v4[72] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408A851C, v3, 0);
}

uint64_t sub_2408A851C()
{
  v49 = v0;
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 600);
  v2 = *(v0 + 464);
  v3 = sub_2408D4B20();
  *(v0 + 608) = __swift_project_value_buffer(v3, qword_27E507CB8);
  sub_2408B3C58(v2, v1, MEMORY[0x277CEDB08]);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 600);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 136315138;
    v10 = sub_2408D44B0();
    v12 = v11;
    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
    v13 = sub_2408CC504(v10, v12, &v48);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Received response from child device: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
  }

  v14 = *(v0 + 576);
  sub_2408B3C58(*(v0 + 464), *(v0 + 592), MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_2408B3C58(*(v0 + 464), *(v0 + 584), MEMORY[0x277CEDB08]);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F40();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 584);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = v21;
      *v20 = 136315138;
      v22 = sub_2408D44B0();
      v24 = v23;
      sub_2408B4AE0(v19, MEMORY[0x277CEDB08]);
      v25 = sub_2408CC504(v22, v24, &v48);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2407CF000, v16, v17, "Unexpectedly received %s before a request was sent to the child device.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    else
    {

      sub_2408B4AE0(v19, MEMORY[0x277CEDB08]);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v32 = v0 + 56;
    v33 = swift_task_alloc();
    *(v0 + 888) = v33;
    *v33 = v0;
    v33[1] = sub_2408A9DE8;
    v34 = *(v0 + 472);
    v35 = *(v0 + 480);
    v36 = v0 + 256;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    v37 = *(v0 + 592);
    v38 = *v37;
    *(v0 + 648) = *v37;
    v39 = v37[1];
    *(v0 + 656) = v39;
    v40 = v37[2];
    *(v0 + 664) = v40;
    v41 = v37[3];
    *(v0 + 672) = v41;
    v42 = v37[4];
    *(v0 + 680) = v42;
    *&v43 = v38;
    *(&v43 + 1) = v39;
    *&v44 = v40;
    *(&v44 + 1) = v41;
    *(v0 + 32) = v44;
    *(v0 + 16) = v43;
    v32 = v0 + 16;
    *(v0 + 48) = v42;
    v45 = swift_task_alloc();
    *(v0 + 688) = v45;
    *v45 = v0;
    v45[1] = sub_2408A8BD0;
    v34 = *(v0 + 472);
    v46 = *(v0 + 480);
    v36 = v0 + 416;
LABEL_16:

    return sub_2408AC08C(v36, v34, v32);
  }

  v26 = *(v0 + 568);
  v27 = *(v0 + 480);
  (*(*(v0 + 560) + 32))(v26, *(v0 + 592), *(v0 + 552));
  *(v0 + 616) = *(v27 + 112);
  v28 = swift_task_alloc();
  *(v0 + 624) = v28;
  *(v28 + 16) = v26;
  v29 = *(MEMORY[0x277CED860] + 4);
  v47 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v30 = swift_task_alloc();
  *(v0 + 632) = v30;
  *v30 = v0;
  v30[1] = sub_2408A8A9C;

  return v47();
}

uint64_t sub_2408A8A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v10 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = v2[60];
    v5 = sub_2408A930C;
  }

  else
  {
    v6 = v2[78];
    v7 = v2[77];
    v8 = v2[60];

    v5 = sub_2408A8D18;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A8BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v14 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = *(v2 + 480);
    v5 = sub_2408AA0B4;
  }

  else
  {
    v6 = *(v2 + 680);
    v7 = *(v2 + 672);
    v8 = *(v2 + 664);
    v9 = *(v2 + 656);
    v10 = *(v2 + 648);
    v11 = *(v2 + 480);
    v12 = *(v2 + 432);
    *(v2 + 896) = *(v2 + 416);
    *(v2 + 912) = v12;
    *(v2 + 928) = *(v2 + 448);
    sub_2408B2DE8(v10, v9);
    v5 = sub_2408A9FCC;
    v4 = v11;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A8D18()
{
  v0[88] = *(v0[60] + 112);
  v1 = *(MEMORY[0x277CED858] + 4);
  v5 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

  v2 = swift_task_alloc();
  v0[89] = v2;
  *v2 = v0;
  v2[1] = sub_2408A8DDC;
  v3 = v0[68];

  return v5(v3);
}

uint64_t sub_2408A8DDC()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v3 = *(*v0 + 480);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408A8F08, v3, 0);
}

uint64_t sub_2408A8F08()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_2408D4300();
  (*(v2 + 8))(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v7 = *(v0 + 568);
      v8 = *(v0 + 504);
      sub_2408D4480();
      v9 = swift_task_alloc();
      *(v0 + 720) = v9;
      *v9 = v0;
      v9[1] = sub_2408A9408;
      v10 = *(v0 + 504);
      v11 = *(v0 + 472);
      v12 = *(v0 + 480);

      return sub_2408AA190(v0 + 376, v11, v10);
    }

    v38 = *(v0 + 608);
    v39 = sub_2408D4B10();
    v40 = sub_2408D4F40();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2407CF000, v39, v40, "Unexpectedly exited model coordinated update while not in migration finished or failed state.", v41, 2u);
      MEMORY[0x245CC9F60](v41, -1, -1);
    }

    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v42 = swift_task_alloc();
    *(v0 + 832) = v42;
    *v42 = v0;
    v42[1] = sub_2408A9A88;
    v43 = *(v0 + 472);
    v44 = *(v0 + 480);
    v45 = v0 + 296;
    v46 = v0 + 96;
    goto LABEL_16;
  }

  v14 = *(v0 + 520);
  v15 = v14[4];
  v16 = *(v14 + 1);
  *(v0 + 176) = *v14;
  *(v0 + 192) = v16;
  *(v0 + 208) = v15;
  v18 = *v14;
  v17 = v14[1];
  v20 = v14[2];
  v19 = v14[3];
  v21 = v14[4];
  *(v0 + 136) = xmmword_2408D8E50;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 152) = 0;
  if ((MEMORY[0x245CC8890](v0 + 176, v0 + 136) & 1) == 0)
  {
    *(v0 + 216) = v18;
    *(v0 + 224) = v17;
    *(v0 + 232) = v20;
    *(v0 + 240) = v19;
    *(v0 + 248) = v21;
    v47 = swift_task_alloc();
    *(v0 + 776) = v47;
    *v47 = v0;
    v47[1] = sub_2408A974C;
    v43 = *(v0 + 472);
    v48 = *(v0 + 480);
    v45 = v0 + 336;
    v46 = v0 + 216;
LABEL_16:

    return sub_2408AC08C(v45, v43, v46);
  }

  v49 = v20;
  v50 = v19;
  v51 = v21;
  v22 = *(v0 + 608);
  v23 = sub_2408D4B10();
  v24 = sub_2408D4F20();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2407CF000, v23, v24, "Detected connection invalidation. Not attempting to send a response to the child device", v25, 2u);
    MEMORY[0x245CC9F60](v25, -1, -1);
  }

  v26 = *(v0 + 568);
  v27 = *(v0 + 560);
  v28 = *(v0 + 552);

  (*(v27 + 8))(v26, v28);
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 584);
  v32 = *(v0 + 568);
  v33 = *(v0 + 544);
  v34 = *(v0 + 520);
  v35 = *(v0 + 504);
  v36 = *(v0 + 456);

  *v36 = v18;
  v36[1] = v17;
  v36[2] = v49;
  v36[3] = v50;
  v36[4] = v51;
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2408A930C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[69];

  (*(v4 + 8))(v3, v5);
  v6 = v0[80];
  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[73];
  v10 = v0[71];
  v11 = v0[68];
  v12 = v0[65];
  v13 = v0[63];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2408A9408()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v11 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 480);
    (*(*(v2 + 496) + 8))(*(v2 + 504), *(v2 + 488));
    v5 = sub_2408A966C;
  }

  else
  {
    v7 = *(v2 + 496);
    v6 = *(v2 + 504);
    v4 = *(v2 + 480);
    v8 = *(v2 + 488);
    v9 = *(v2 + 392);
    *(v2 + 736) = *(v2 + 376);
    *(v2 + 752) = v9;
    *(v2 + 768) = *(v2 + 408);
    (*(v7 + 8))(v6, v8);
    v5 = sub_2408A9568;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A9568()
{
  (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  v1 = *(v0 + 768);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 456);
  v12 = *(v0 + 752);
  v13 = *(v0 + 736);

  *v9 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2408A966C()
{
  (*(v0[70] + 8))(v0[71], v0[69]);
  v1 = v0[91];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[65];
  v8 = v0[63];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408A974C()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v9 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = *(v2 + 480);
    v5 = sub_2408A9998;
  }

  else
  {
    v6 = *(v2 + 480);
    v7 = *(v2 + 352);
    *(v2 + 792) = *(v2 + 336);
    *(v2 + 808) = v7;
    *(v2 + 824) = *(v2 + 368);
    sub_2408B2E38(v2 + 176);
    v5 = sub_2408A9890;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A9890()
{
  (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  v1 = *(v0 + 824);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 456);
  v12 = *(v0 + 808);
  v13 = *(v0 + 792);

  *v9 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2408A9998()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  sub_2408B2E38((v0 + 22));
  (*(v2 + 8))(v1, v3);
  v4 = v0[98];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[65];
  v11 = v0[63];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408A9A88()
{
  v2 = *v1;
  v3 = *(*v1 + 832);
  v8 = *v1;
  *(*v1 + 840) = v0;

  v4 = *(v2 + 480);
  if (v0)
  {
    v5 = sub_2408A9CE4;
  }

  else
  {
    v6 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v6;
    *(v2 + 880) = *(v2 + 328);
    v5 = sub_2408A9BBC;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408A9BBC()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_2408B4AE0(*(v0 + 520), MEMORY[0x277CED950]);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 880);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);
  v8 = *(v0 + 568);
  v9 = *(v0 + 544);
  v10 = *(v0 + 520);
  v11 = *(v0 + 504);
  v12 = *(v0 + 456);
  v15 = *(v0 + 864);
  v16 = *(v0 + 848);

  *v12 = v16;
  *(v12 + 16) = v15;
  *(v12 + 32) = v4;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2408A9CE4()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  sub_2408B4AE0(v0[65], MEMORY[0x277CED950]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[105];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[65];
  v11 = v0[63];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408A9DE8()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 600);
    v6 = *(v2 + 592);
    v7 = *(v2 + 584);
    v8 = *(v2 + 568);
    v9 = *(v2 + 544);
    v10 = *(v2 + 520);
    v11 = *(v2 + 504);
  }

  else
  {
    v13 = *(v2 + 288);
    v14 = *(v2 + 600);
    v15 = *(v2 + 592);
    v16 = *(v2 + 584);
    v17 = *(v2 + 568);
    v18 = *(v2 + 544);
    v19 = *(v2 + 520);
    v20 = *(v2 + 504);
    v21 = *(v2 + 456);
    v23 = *(v2 + 272);
    v24 = *(v2 + 256);

    *v21 = v24;
    *(v21 + 16) = v23;
    *(v21 + 32) = v13;
  }

  v12 = *(v4 + 8);

  return v12();
}

uint64_t sub_2408A9FCC()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 544);
  v7 = *(v0 + 520);
  v8 = *(v0 + 504);
  v9 = *(v0 + 456);
  v12 = *(v0 + 912);
  v13 = *(v0 + 896);

  *v9 = v13;
  *(v9 + 16) = v12;
  *(v9 + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2408AA0B4()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = v0[83];
  sub_2408B2DE8(v0[81], v0[82]);
  v4 = v0[87];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[71];
  v9 = v0[68];
  v10 = v0[65];
  v11 = v0[63];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408AA190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = sub_2408D42F0();
  v4[55] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v7 = sub_2408D4350();
  v4[57] = v7;
  v8 = *(v7 - 8);
  v4[58] = v8;
  v9 = *(v8 + 64) + 15;
  v4[59] = swift_task_alloc();
  v10 = sub_2408D44C0();
  v4[60] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408AA2E4, v3, 0);
}

uint64_t sub_2408AA2E4()
{
  if (qword_27E506980 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_27E507CB8);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Sending migration step finished command to child device", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  *(v0 + 336) = xmmword_2408D8E80;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  *(v0 + 352) = 0;
  v5 = *(MEMORY[0x277CED570] + 4);
  v12 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v6 = swift_task_alloc();
  *(v0 + 536) = v6;
  v7 = sub_2408B3BA4();
  *v6 = v0;
  v6[1] = sub_2408AA478;
  v8 = *(v0 + 512);
  v9 = *(v0 + 416);
  v10 = MEMORY[0x277CEDB00];

  return v12(v8, v0 + 336, v10, v7);
}

uint64_t sub_2408AA478()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_2408AAAC8;
  }

  else
  {
    v5 = sub_2408AA590;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408AA590()
{
  v49 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  sub_2408B309C(*(v0 + 512), v2);
  sub_2408B3C58(v2, v3, MEMORY[0x277CEDB08]);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 504);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v48 = v9;
    *v8 = 136315138;
    v10 = sub_2408D44B0();
    v12 = v11;
    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
    v13 = sub_2408CC504(v10, v12, &v48);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v4, v5, "Received response from child device after sending migration step finished state. Response: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    sub_2408B4AE0(v7, MEMORY[0x277CEDB08]);
  }

  v14 = *(v0 + 480);
  sub_2408B3C58(*(v0 + 520), *(v0 + 496), MEMORY[0x277CEDB08]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = *(v0 + 496);
      v33 = *v32;
      *(v0 + 584) = *v32;
      v34 = v32[1];
      *(v0 + 592) = v34;
      v35 = v32[2];
      *(v0 + 600) = v35;
      v36 = v32[3];
      *(v0 + 608) = v36;
      v37 = v32[4];
      *(v0 + 616) = v37;
      *&v38 = v33;
      *(&v38 + 1) = v34;
      *&v39 = v35;
      *(&v39 + 1) = v36;
      *(v0 + 32) = v39;
      *(v0 + 16) = v38;
      v40 = v0 + 16;
      *(v0 + 48) = v37;
      v41 = swift_task_alloc();
      *(v0 + 624) = v41;
      *v41 = v0;
      v41[1] = sub_2408AAE20;
      v42 = *(v0 + 432);
      v43 = *(v0 + 416);
      v44 = v0 + 296;
LABEL_16:

      return sub_2408AC08C(v44, v43, v40);
    }

    sub_2408B4AE0(*(v0 + 496), MEMORY[0x277CEDB08]);
LABEL_11:
    v21 = *(v0 + 528);
    sub_2408B3C58(*(v0 + 520), *(v0 + 488), MEMORY[0x277CEDB08]);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F40();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 488);
    if (v24)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136315138;
      v28 = sub_2408D44B0();
      v30 = v29;
      sub_2408B4AE0(v25, MEMORY[0x277CEDB08]);
      v31 = sub_2408CC504(v28, v30, &v48);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2407CF000, v22, v23, "Unexpectedly received %s before a request was sent to the child device.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x245CC9F60](v27, -1, -1);
      MEMORY[0x245CC9F60](v26, -1, -1);
    }

    else
    {

      sub_2408B4AE0(v25, MEMORY[0x277CEDB08]);
    }

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    v40 = v0 + 56;
    v45 = swift_task_alloc();
    *(v0 + 752) = v45;
    *v45 = v0;
    v45[1] = sub_2408AB8D8;
    v46 = *(v0 + 432);
    v43 = *(v0 + 416);
    v44 = v0 + 216;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_11;
  }

  v16 = *(v0 + 424);
  *(v0 + 552) = *(*(v0 + 432) + 112);
  v17 = swift_task_alloc();
  *(v0 + 560) = v17;
  *(v17 + 16) = v16;
  v18 = *(MEMORY[0x277CED860] + 4);
  v47 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);

  v19 = swift_task_alloc();
  *(v0 + 568) = v19;
  *v19 = v0;
  v19[1] = sub_2408AACBC;

  return v47();
}

uint64_t sub_2408AAAC8()
{
  v22 = v0;
  v1 = v0[68];
  v2 = v0[66];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[68];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[47];
    v9 = v0[48];
    v11 = v0[49];
    v12 = sub_2408D5290();
    v14 = sub_2408CC504(v12, v13, &v21);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Received error after attempting to send migration step finished state to child: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v15 = v0[68];
  v0[106] = *(v0[54] + 112);
  v16 = swift_task_alloc();
  v0[107] = v16;
  *(v16 + 16) = v15;
  v17 = *(MEMORY[0x277CED870] + 4);
  v20 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

  v18 = swift_task_alloc();
  v0[108] = v18;
  *v18 = v0;
  v18[1] = sub_2408ABDB8;

  return v20(sub_2408B3BF8, v16);
}