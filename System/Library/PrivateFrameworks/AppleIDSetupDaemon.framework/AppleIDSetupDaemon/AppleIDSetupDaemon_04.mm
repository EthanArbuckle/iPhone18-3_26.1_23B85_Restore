uint64_t sub_24083EA5C()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);
  v5 = *(v0 + 168);
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  (*(v7 + 8))(v5, v6);
  v2(v3, v4);
  v8 = *(v0 + 552);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506C48);
  v10 = v8;
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2407CF000, v11, v12, "Did not attempt fetching terms on source device due to error: %@", v13, 0xCu);
    sub_2407D9440(v14, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(MEMORY[0x277CED870] + 4);
  v21 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v18 = swift_task_alloc();
  *(v0 + 440) = v18;
  *v18 = v0;
  v18[1] = sub_24083BF04;
  v19 = *(v0 + 24);

  return v21(nullsub_1, 0);
}

uint64_t sub_24083ECA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3E10();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083ED78, v3, 0);
}

uint64_t sub_24083ED78()
{
  v33 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2408CC504(v15, v17, &v32);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Received sign in request: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v31, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v19 = v0[6];
    v20 = v0[7];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[4];
  v21 = v0[5];
  v23 = v0[3];
  v24 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00);
  v25 = swift_task_alloc();
  v0[10] = v25;
  v25[2] = v23;
  v25[3] = v21;
  v25[4] = v22;
  v26 = *(MEMORY[0x277D85A40] + 4);
  v27 = swift_task_alloc();
  v0[11] = v27;
  v28 = sub_2408D3E40();
  *v27 = v0;
  v27[1] = sub_24083F070;
  v29 = v0[2];

  return MEMORY[0x2822008A0](v29, v21, v24, 0xD000000000000010, 0x80000002408DADF0, sub_2408755EC, v25, v28);
}

uint64_t sub_24083F070()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_24083F1C4, v4, 0);
  }

  else
  {
    v6 = v3[9];
    v5 = v3[10];
    v7 = v3[8];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_24083F1C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_24083F23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v5 = sub_2408D3E10();
  v27 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v29 = &v25 - v15;
  v17 = sub_2408D4E60();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v18 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v31;
  *(v22 + 24) = v18;
  (*(v9 + 32))(v22 + v19, v12, v26);
  (*(v6 + 32))(v22 + v20, v28, v27);
  *(v22 + v21) = v23;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  swift_retain_n();

  sub_24083AB60(0, 0, v29, &unk_2408D8140, v22);
}

uint64_t sub_24083F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[66] = a7;
  v7[65] = a6;
  v7[63] = a4;
  v7[64] = a5;
  v9 = sub_2408D4B20();
  v7[67] = v9;
  v10 = *(v9 - 8);
  v7[68] = v10;
  v11 = *(v10 + 64) + 15;
  v7[69] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v7[70] = v12;
  v13 = *(v12 - 8);
  v7[71] = v13;
  v14 = *(v13 + 64) + 15;
  v7[72] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507568, &qword_2408D8148) - 8) + 64) + 15;
  v7[73] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
  v7[74] = v16;
  v17 = *(v16 - 8);
  v7[75] = v17;
  v18 = *(v17 + 64) + 15;
  v7[76] = swift_task_alloc();
  v19 = type metadata accessor for SignInReport(0);
  v7[77] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v7[81] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160) - 8) + 64) + 15;
  v7[84] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v7[85] = swift_task_alloc();
  v25 = sub_2408D3490();
  v7[86] = v25;
  v26 = *(v25 - 8);
  v7[87] = v26;
  v27 = *(v26 + 64) + 15;
  v7[88] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v7[89] = swift_task_alloc();
  v29 = sub_2408D3630();
  v7[90] = v29;
  v30 = *(v29 - 8);
  v7[91] = v30;
  v31 = *(v30 + 64) + 15;
  v7[92] = swift_task_alloc();
  v32 = sub_2408D3C20();
  v7[93] = v32;
  v33 = *(v32 - 8);
  v7[94] = v33;
  v34 = *(v33 + 64) + 15;
  v7[95] = swift_task_alloc();
  v7[96] = swift_task_alloc();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D30, &unk_2408D80C0);
  v7[97] = v35;
  v36 = *(v35 - 8);
  v7[98] = v36;
  v37 = *(v36 + 64) + 15;
  v7[99] = swift_task_alloc();
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v7[100] = swift_task_alloc();
  v7[101] = swift_task_alloc();
  v39 = sub_2408D38D0();
  v7[102] = v39;
  v40 = *(v39 - 8);
  v7[103] = v40;
  v41 = *(v40 + 64) + 15;
  v7[104] = swift_task_alloc();
  v7[105] = swift_task_alloc();
  v42 = sub_2408D3970();
  v7[106] = v42;
  v43 = *(v42 - 8);
  v7[107] = v43;
  v44 = *(v43 + 64) + 15;
  v7[108] = swift_task_alloc();
  v7[109] = swift_task_alloc();
  v7[110] = swift_task_alloc();
  v45 = *(*(sub_2408D3E40() - 8) + 64) + 15;
  v7[111] = swift_task_alloc();
  v46 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100) - 8) + 64) + 15;
  v7[112] = swift_task_alloc();
  v7[113] = swift_task_alloc();
  v7[114] = swift_task_alloc();
  v7[115] = swift_task_alloc();
  v7[116] = swift_task_alloc();
  v47 = sub_2408D3770();
  v7[117] = v47;
  v48 = *(v47 - 8);
  v7[118] = v48;
  v49 = *(v48 + 64) + 15;
  v7[119] = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507570, &qword_2408D8168) - 8) + 64) + 15;
  v7[120] = swift_task_alloc();
  v7[121] = swift_task_alloc();
  v7[122] = swift_task_alloc();
  v7[123] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083FC6C, a6, 0);
}

uint64_t sub_24083FC6C()
{
  v1 = v0[123];
  v3 = v0[63];
  v2 = v0[64];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v0[124] = v4;
  v5 = *(v4 - 8);
  v0[125] = v5;
  (*(v5 + 16))(v1, v3, v4);
  v6 = *(v5 + 56);
  v0[126] = v6;
  v0[127] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v105 = v6;
  v107 = v4;
  v6(v1, 0, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507578, &qword_2408D8170);
  v7 = swift_allocObject();
  v0[128] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507580, &qword_2408D8178);
  v9 = *(v8 + 52);
  v10 = (*(v8 + 48) + 3) & 0x1FFFFFFFCLL;
  v11 = swift_allocObject();
  *(v11 + ((*(*v11 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v12 = MEMORY[0x277D841D0];
  sub_2407EEE04(v1, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16), &qword_27E507570, &qword_2408D8168);
  sub_2407D9440(v1, &qword_27E507570, &qword_2408D8168);
  v110 = v7;
  *(v7 + 16) = v11;
  if (sub_2408D3DB0())
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v103 = v5;
    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Marked as terminal sign in, finishing sign in stream continuation early", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = v0[116];
    v17 = v0[115];
    v18 = v0[114];
    v19 = v0[71];
    v20 = v0[70];
    v21 = v0[65];

    v22 = *(*v21 + 208);
    swift_beginAccess();
    sub_2407EEE04(v21 + v22, v16, &qword_27E506DA8, &qword_2408D8100);
    (*(v19 + 56))(v17, 1, 1, v20);
    swift_beginAccess();
    sub_2407EEE6C(v17, v21 + v22);
    swift_endAccess();
    sub_2407EEE04(v16, v18, &qword_27E506DA8, &qword_2408D8100);
    v23 = (*(v19 + 48))(v18, 1, v20);
    v24 = v0[116];
    v25 = v0[114];
    if (v23 == 1)
    {
      sub_2407D9440(v0[116], &qword_27E506DA8, &qword_2408D8100);
      sub_2407D9440(v25, &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v32 = v0[71];
      v33 = v0[70];
      v0[62] = 0;
      sub_2408D4E90();
      sub_2407D9440(v24, &qword_27E506DA8, &qword_2408D8100);
      (*(v32 + 8))(v25, v33);
    }

    v34 = v0[122];
    v35 = *(v7 + 16);
    v36 = *(*v35 + *MEMORY[0x277D841D0] + 16);
    v37 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v35 + v37));
    sub_24080F060(v35 + v36, v34, &qword_27E507570, &qword_2408D8168);
    v105(v35 + v36, 1, 1, v107);
    os_unfair_lock_unlock((v35 + v37));

    v38 = (*(v103 + 48))(v34, 1, v107);
    v39 = v0[122];
    if (v38 != 1)
    {
      v41 = v0[111];
      v42 = v0[110];
      v43 = v0[64];
      sub_2408D3DE0();
      sub_2407F5C68(MEMORY[0x277D84F90]);
      sub_2408D3E30();
      sub_2408D4E20();

      (*(v103 + 8))(v39, v107);
LABEL_24:
      v71 = v0[123];
      v72 = v0[122];
      v73 = v0[121];
      v74 = v0[120];
      v75 = v0[119];
      v76 = v0[116];
      v77 = v0[115];
      v78 = v0[114];
      v79 = v0[113];
      v80 = v0[112];
      v82 = v0[111];
      v83 = v0[110];
      v84 = v0[109];
      v85 = v0[108];
      v86 = v0[105];
      v87 = v0[104];
      v88 = v0[101];
      v89 = v0[100];
      v90 = v0[99];
      v91 = v0[96];
      v92 = v0[95];
      v93 = v0[92];
      v94 = v0[89];
      v95 = v0[88];
      v96 = v0[85];
      v97 = v0[84];
      v98 = v0[83];
      v99 = v0[82];
      v100 = v0[80];
      v101 = v0[79];
      v102 = v0[78];
      v104 = v0[76];
      v106 = v0[73];
      v109 = v0[72];
      v111 = v0[69];

      v81 = v0[1];

      return v81();
    }

    v40 = v39;
LABEL_22:
    sub_2407D9440(v40, &qword_27E507570, &qword_2408D8168);
    goto LABEL_24;
  }

  v26 = v0[65];
  v27 = *(v26 + 248);
  v0[129] = v27;
  if (!v27)
  {
    v44 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v45 = swift_allocError();
    *v46 = 2;
    swift_willThrow();
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v47 = v45;
    v48 = sub_2408D4B10();
    v49 = sub_2408D4F20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v45;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_2407CF000, v48, v49, "Caught Sign In error: %@", v50, 0xCu);
      sub_2407D9440(v51, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v51, -1, -1);
      MEMORY[0x245CC9F60](v50, -1, -1);
    }

    v54 = v0[128];
    v55 = v0[127];
    v56 = v0[126];
    v57 = v0[125];
    v58 = v0[124];
    v59 = v0[120];

    v60 = *(v54 + 16);
    v61 = *(*v60 + *v44 + 16);
    v62 = (*(*v60 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v60 + v62));
    sub_24080F060(v60 + v61, v59, &qword_27E507570, &qword_2408D8168);
    v56(v60 + v61, 1, 1, v58);
    os_unfair_lock_unlock((v60 + v62));

    v63 = (*(v57 + 48))(v59, 1, v58);
    v64 = v0[128];
    if (v63 != 1)
    {
      v67 = v0[125];
      v68 = v0[124];
      v69 = v0[120];
      v0[58] = v45;
      v70 = v45;
      sub_2408D4E10();

      (*(v67 + 8))(v69, v68);
      goto LABEL_24;
    }

    v65 = v0[120];
    v66 = v0[128];

    v40 = v65;
    goto LABEL_22;
  }

  v28 = swift_allocObject();
  v0[130] = v28;
  *(v28 + 16) = v26;
  *(v28 + 24) = v110;
  v29 = *(MEMORY[0x277CED880] + 4);
  v108 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v30 = swift_task_alloc();
  v0[131] = v30;
  *v30 = v0;
  v30[1] = sub_2408407BC;

  return v108(v0 + 2, sub_240875954, v28);
}

uint64_t sub_2408407BC()
{
  v1 = *(*v0 + 1048);
  v2 = *(*v0 + 1040);
  v3 = *(*v0 + 1032);
  v4 = *(*v0 + 520);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_24084090C, v4, 0);
}

uint64_t sub_24084090C()
{
  v53 = v0;
  v1 = v0[119];
  v2 = v0[64];
  sub_2408D3DC0();
  v3 = sub_2408D3730();
  if (v4 >> 60 != 15)
  {
    sub_240875A6C(v3, v4);
    goto LABEL_16;
  }

  v5 = v0[109];
  v6 = v0[107];
  v7 = v0[106];
  v8 = v0[105];
  v9 = v0[65];
  v10 = v0[64];
  sub_2408D3DE0();
  sub_2408D38F0();
  v51 = *(v6 + 8);
  v51(v5, v7);
  swift_beginAccess();
  v11 = *(v9 + 256);
  v12 = v0[105];
  if (!*(v11 + 16))
  {
    (*(v0[103] + 8))(v0[105], v0[102]);
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v13 = *(v9 + 256);

  v14 = sub_2408CCBA8(v12);
  if ((v15 & 1) == 0)
  {
    v20 = v0[105];
    v21 = v0[103];
    v22 = v0[102];

    (*(v21 + 8))(v20, v22);
    goto LABEL_8;
  }

  v16 = v0[105];
  v17 = v0[103];
  v18 = v0[102];
  (*(v0[118] + 16))(v0[101], *(v11 + 56) + *(v0[118] + 72) * v14, v0[117]);
  (*(v17 + 8))(v16, v18);

  v19 = 0;
LABEL_9:
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[101];
  v50 = *(v23 + 56);
  v50(v25, v19, 1, v24);
  if (!(*(v23 + 48))(v25, 1, v24))
  {
    v26 = v0[101];
    sub_2408D3730();
  }

  v27 = v0[119];
  v28 = v0[118];
  v49 = v0[117];
  v29 = v0[110];
  v30 = v0[106];
  v31 = v0[104];
  v32 = v0[100];
  v33 = v0[64];
  sub_2407D9440(v0[101], &qword_27E5071D0, &unk_2408D9C70);
  sub_2408D3740();
  sub_2408D3DE0();
  sub_2408D38F0();
  v51(v29, v30);
  v50(v32, 1, 1, v49);
  swift_beginAccess();
  sub_2408C6DC8(v32, v31);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[67], qword_27E506C48);
  v34 = sub_2408D4B10();
  v35 = sub_2408D4F20();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[119];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52 = v38;
    *v37 = 136315138;
    swift_beginAccess();
    v39 = sub_2408D3730();
    v41 = v40;
    swift_endAccess();
    v0[54] = v39;
    v0[55] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507590, &qword_2408D81A0);
    v42 = sub_2408D4D40();
    v44 = sub_2408CC504(v42, v43, &v52);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_2407CF000, v34, v35, "Fetched cached SRP result archived data: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x245CC9F60](v38, -1, -1);
    MEMORY[0x245CC9F60](v37, -1, -1);
  }

LABEL_16:
  v45 = v0[66];
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v47 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_240840DCC, v47, v46);
}

uint64_t sub_240840DCC()
{
  v1 = v0[99];
  v2 = v0[66];
  sub_2408D3D10();
  v0[132] = 0;
  v3 = v0[65];

  return MEMORY[0x2822009F8](sub_240840E5C, v3, 0);
}

uint64_t sub_240840E5C()
{
  v1 = v0[99];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[65];
  v5 = sub_2408D3C30();
  v0[133] = v5;
  (*(v2 + 8))(v1, v3);
  v6 = *(v4 + 248);
  v0[134] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x277CED858] + 4);
    v80 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v8 = swift_task_alloc();
    v0[135] = v8;
    *v8 = v0;
    v8[1] = sub_240841534;
    v9 = v0[92];

    return v80(v9);
  }

  else
  {
    v11 = v0[119];
    v12 = v0[118];
    v13 = v0[117];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v14 = swift_allocError();
    *v15 = 2;
    swift_willThrow();

    (*(v12 + 8))(v11, v13);
    v16 = v0[5];
    v17 = __swift_project_boxed_opaque_existential_1(v0 + 2, v16);
    v18 = *(v16 - 8);
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    (*(v18 + 16))(v20, v17, v16);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v21 = v14;
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F20();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v14;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_2407CF000, v22, v23, "Caught Sign In error: %@", v24, 0xCu);
      sub_2407D9440(v25, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v25, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    v28 = v0[128];
    v29 = v0[127];
    v30 = v0[126];
    v31 = v0[125];
    v32 = v0[124];
    v33 = v0[120];

    v34 = *(v28 + 16);
    v35 = *(*v34 + *MEMORY[0x277D841D0] + 16);
    v36 = (*(*v34 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v34 + v36));
    sub_24080F060(v34 + v35, v33, &qword_27E507570, &qword_2408D8168);
    v30(v34 + v35, 1, 1, v32);
    os_unfair_lock_unlock((v34 + v36));

    v37 = (*(v31 + 48))(v33, 1, v32);
    v38 = v0[128];
    if (v37 == 1)
    {
      v39 = v0[120];
      v40 = v0[128];

      sub_2407D9440(v39, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v41 = v0[125];
      v42 = v0[124];
      v43 = v0[120];
      v0[58] = v14;
      v44 = v14;
      sub_2408D4E10();

      (*(v41 + 8))(v43, v42);
    }

    v45 = v0[123];
    v46 = v0[122];
    v47 = v0[121];
    v48 = v0[120];
    v49 = v0[119];
    v50 = v0[116];
    v51 = v0[115];
    v52 = v0[114];
    v53 = v0[113];
    v54 = v0[112];
    v56 = v0[111];
    v57 = v0[110];
    v58 = v0[109];
    v59 = v0[108];
    v60 = v0[105];
    v61 = v0[104];
    v62 = v0[101];
    v63 = v0[100];
    v64 = v0[99];
    v65 = v0[96];
    v66 = v0[95];
    v67 = v0[92];
    v68 = v0[89];
    v69 = v0[88];
    v70 = v0[85];
    v71 = v0[84];
    v72 = v0[83];
    v73 = v0[82];
    v74 = v0[80];
    v75 = v0[79];
    v76 = v0[78];
    v77 = v0[76];
    v78 = v0[73];
    v79 = v0[72];
    v81 = v0[69];

    v55 = v0[1];

    return v55();
  }
}

uint64_t sub_240841534()
{
  v1 = *(*v0 + 1080);
  v2 = *(*v0 + 1072);
  v3 = *(*v0 + 520);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_240841660, v3, 0);
}

uint64_t sub_240841660()
{
  v180 = v0;
  v1 = v0[118];
  v174 = v0[117];
  v176 = v0[133];
  v2 = v0[107];
  v165 = v0[106];
  v168 = v0[119];
  v171 = v0[100];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[94];
  v163 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v161 = v0[64];
  sub_2408D3540();
  (*(v7 + 8))(v6, v8);
  v159 = *(v5 + 16);
  v159(v4, v3, v163);
  sub_2408D3DE0();
  (*(v2 + 56))(v9, 0, 1, v165);
  sub_2408D3BF0();
  swift_beginAccess();
  (*(v1 + 16))(v171, v168, v174);
  (*(v1 + 56))(v171, 0, 1, v174);
  sub_2408D3A90();
  v166 = v176;
  sub_2408D3B70();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v10 = v0[65];
  v0[136] = __swift_project_value_buffer(v0[67], qword_27E506C48);

  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[65];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v179[0] = v15;
    *v14 = 136315138;
    v16 = *(v13 + 184);
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

    v17 = sub_2408D4EF0();
    v19 = v18;

    v20 = sub_2408CC504(v17, v19, v179);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2407CF000, v11, v12, "Resetting required services to original: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  v21 = v0[95];
  v22 = *(v0[65] + 184);

  sub_2408D3B30();

  v23 = sub_2408D4B10();
  v24 = sub_2408D4F20();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v0[65];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v179[0] = v27;
    *v26 = 136315138;
    v28 = *(v25 + 192);
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

    v29 = sub_2408D4EF0();
    v31 = v30;

    v32 = sub_2408CC504(v29, v31, v179);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2407CF000, v23, v24, "Resetting desired services to original: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v26, -1, -1);
  }

  v33 = v0[95];
  v34 = v0[88];
  v35 = v0[87];
  v36 = v0[86];
  v37 = v0[65];
  v38 = v0[64];
  v39 = v37[24];

  sub_2408D3AF0();
  sub_2408D3DF0();
  sub_2408D3C10();
  v40 = v37[22];
  __swift_project_boxed_opaque_existential_1(v37 + 18, v37[21]);
  (*(v35 + 104))(v34, *MEMORY[0x277CED208], v36);
  v41 = sub_2408D4770();
  (*(v35 + 8))(v34, v36);
  if ((v41 & 1) == 0)
  {
    goto LABEL_9;
  }

  v42 = v0[108];
  v43 = v0[107];
  v44 = v0[106];
  v45 = v0[85];
  v46 = v0[64];
  sub_2408D3DE0();
  sub_2408D37A0();
  (*(v43 + 8))(v42, v44);
  v47 = sub_2408D3720();
  LODWORD(v46) = (*(*(v47 - 8) + 48))(v45, 1, v47);
  sub_2407D9440(v45, &qword_27E506A18, &qword_2408D67E8);
  if (v46 != 1)
  {
    v63 = sub_2408D4B10();
    v64 = sub_2408D4F10();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = v0[95];
      v66 = v0[93];
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v179[0] = v68;
      *v67 = 136315138;
      swift_beginAccess();
      sub_2408763D8(&unk_27E5071B0, 255, MEMORY[0x277CED500]);
      v69 = sub_2408D5220();
      v71 = sub_2408CC504(v69, v70, v179);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_2407CF000, v63, v64, "Not modifying required/desired services from sign in model because age based account support is enabled: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x245CC9F60](v68, -1, -1);
      MEMORY[0x245CC9F60](v67, -1, -1);
    }
  }

  else
  {
LABEL_9:
    v48 = v0[110];
    v49 = v0[107];
    v50 = v0[106];
    v169 = v50;
    v172 = v0[95];
    v51 = v0[64];
    sub_2408D3DE0();
    v52 = sub_2408D3960();
    v53 = *(v49 + 8);
    v53(v48, v50);
    v54 = sub_2408D3B10();
    v56 = v55;
    v57 = sub_24086E620(v52, *v55);

    *v56 = v57;
    v54(v0 + 7, 0);
    sub_2408D3DE0();
    v58 = sub_2408D3960();
    v53(v48, v169);
    v59 = sub_2408D3AD0();
    v61 = v60;
    v62 = sub_24086E620(v58, *v60);

    *v61 = v62;
    v59(v0 + 11, 0);
  }

  v72 = sub_2408D4B10();
  v73 = sub_2408D4F20();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = v0[95];
    v75 = v0[93];
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v179[0] = v77;
    *v76 = 136315138;
    swift_beginAccess();
    sub_2408763D8(&unk_27E5071B0, 255, MEMORY[0x277CED500]);
    v78 = sub_2408D5220();
    v80 = sub_2408CC504(v78, v79, v179);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_2407CF000, v72, v73, "Attempting to sign in with model: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    MEMORY[0x245CC9F60](v77, -1, -1);
    MEMORY[0x245CC9F60](v76, -1, -1);
  }

  v81 = *(v0[65] + 248);
  v0[137] = v81;
  if (v81)
  {
    v82 = v0[95];
    v83 = v0[94];
    v84 = v0[93];
    v85 = v0[84];
    swift_beginAccess();
    v159(v85, v82, v84);
    (*(v83 + 56))(v85, 0, 1, v84);
    v86 = *(MEMORY[0x277CEDCB8] + 4);

    v87 = swift_task_alloc();
    v0[138] = v87;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v0[139] = v88;
    v89 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
    *v87 = v0;
    v87[1] = sub_240842C7C;
    v90 = v0[93];
    v91 = v0[84];

    return MEMORY[0x28213FC20](v91, sub_2407EE514, 0, sub_2407EE538, 0, v88, v90, v89);
  }

  else
  {
    v177 = v0[119];
    v92 = v0[118];
    v93 = v0[117];
    v94 = v0[96];
    v95 = v0[95];
    v96 = v0[94];
    v97 = v0[93];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v98 = swift_allocError();
    *v99 = 2;
    swift_willThrow();

    v100 = *(v96 + 8);
    v100(v94, v97);
    v100(v95, v97);
    (*(v92 + 8))(v177, v93);
    v101 = v0[5];
    v102 = __swift_project_boxed_opaque_existential_1(v0 + 2, v101);
    v103 = *(v101 - 8);
    v104 = *(v103 + 64) + 15;
    v105 = swift_task_alloc();
    (*(v103 + 16))(v105, v102, v101);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[67], qword_27E506C48);
    v106 = v98;
    v107 = sub_2408D4B10();
    v108 = sub_2408D4F20();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *v109 = 138412290;
      v111 = v98;
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v109 + 4) = v112;
      *v110 = v112;
      _os_log_impl(&dword_2407CF000, v107, v108, "Caught Sign In error: %@", v109, 0xCu);
      sub_2407D9440(v110, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v110, -1, -1);
      MEMORY[0x245CC9F60](v109, -1, -1);
    }

    v113 = v0[128];
    v114 = v0[127];
    v115 = v0[126];
    v116 = v0[125];
    v117 = v0[124];
    v118 = v0[120];

    v119 = *(v113 + 16);
    v120 = *(*v119 + *MEMORY[0x277D841D0] + 16);
    v121 = (*(*v119 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v119 + v121));
    sub_24080F060(v119 + v120, v118, &qword_27E507570, &qword_2408D8168);
    v115(v119 + v120, 1, 1, v117);
    os_unfair_lock_unlock((v119 + v121));

    v122 = (*(v116 + 48))(v118, 1, v117);
    v123 = v0[128];
    if (v122 == 1)
    {
      v124 = v0[120];
      v125 = v0[128];

      sub_2407D9440(v124, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v126 = v0[125];
      v127 = v0[124];
      v128 = v0[120];
      v0[58] = v98;
      v129 = v98;
      sub_2408D4E10();

      (*(v126 + 8))(v128, v127);
    }

    v130 = v0[123];
    v131 = v0[122];
    v132 = v0[121];
    v133 = v0[120];
    v134 = v0[119];
    v135 = v0[116];
    v136 = v0[115];
    v137 = v0[114];
    v138 = v0[113];
    v139 = v0[112];
    v142 = v0[111];
    v143 = v0[110];
    v144 = v0[109];
    v145 = v0[108];
    v146 = v0[105];
    v147 = v0[104];
    v148 = v0[101];
    v149 = v0[100];
    v150 = v0[99];
    v151 = v0[96];
    v152 = v0[95];
    v153 = v0[92];
    v154 = v0[89];
    v155 = v0[88];
    v156 = v0[85];
    v157 = v0[84];
    v158 = v0[83];
    v160 = v0[82];
    v162 = v0[80];
    v164 = v0[79];
    v167 = v0[78];
    v170 = v0[76];
    v173 = v0[73];
    v175 = v0[72];
    v178 = v0[69];

    v140 = v0[1];

    return v140();
  }
}

uint64_t sub_240842704()
{
  (*(v0[118] + 8))(v0[119], v0[117]);
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v0[132];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[67], qword_27E506C48);
  v7 = v6;
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v6;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v8, v9, "Caught Sign In error: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  v14 = v0[128];
  v15 = v0[127];
  v16 = v0[126];
  v17 = v0[125];
  v18 = v0[124];
  v19 = v0[120];

  v20 = *(v14 + 16);
  v21 = *(*v20 + *MEMORY[0x277D841D0] + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  sub_24080F060(v20 + v21, v19, &qword_27E507570, &qword_2408D8168);
  v16(v20 + v21, 1, 1, v18);
  os_unfair_lock_unlock((v20 + v22));

  v23 = (*(v17 + 48))(v19, 1, v18);
  v24 = v0[128];
  if (v23 == 1)
  {
    v25 = v0[120];
    v26 = v0[128];

    sub_2407D9440(v25, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v27 = v0[125];
    v28 = v0[124];
    v29 = v0[120];
    v0[58] = v6;
    v30 = v6;
    sub_2408D4E10();

    (*(v27 + 8))(v29, v28);
  }

  v31 = v0[123];
  v32 = v0[122];
  v33 = v0[121];
  v34 = v0[120];
  v35 = v0[119];
  v36 = v0[116];
  v37 = v0[115];
  v38 = v0[114];
  v39 = v0[113];
  v40 = v0[112];
  v43 = v0[111];
  v44 = v0[110];
  v45 = v0[109];
  v46 = v0[108];
  v47 = v0[105];
  v48 = v0[104];
  v49 = v0[101];
  v50 = v0[100];
  v51 = v0[99];
  v52 = v0[96];
  v53 = v0[95];
  v54 = v0[92];
  v55 = v0[89];
  v56 = v0[88];
  v57 = v0[85];
  v58 = v0[84];
  v59 = v0[83];
  v60 = v0[82];
  v61 = v0[80];
  v62 = v0[79];
  v63 = v0[78];
  v64 = v0[76];
  v65 = v0[73];
  v66 = v0[72];
  v67 = v0[69];

  v41 = v0[1];

  return v41();
}

uint64_t sub_240842C7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1104);
  v18 = *v2;
  *(*v2 + 1120) = v1;

  if (v1)
  {
    v6 = v4[137];
    v7 = v4[84];
    v8 = v4[65];
    sub_2407D9440(v7, &qword_27E507228, &qword_2408D8160);

    v9 = sub_240844240;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = v4[139];
    v13 = v4[137];
    v4[141] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v14 = sub_2408D4E00();
    v16 = v15;
    v9 = sub_240842E20;
    v10 = v14;
    v11 = v16;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_240842E20()
{
  v1 = v0[141];
  v2 = v0[137];
  v3 = v0[84];
  v4 = v0[65];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180);
  v0[142] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E507228, &qword_2408D8160);

  return MEMORY[0x2822009F8](sub_240842F28, v4, 0);
}

uint64_t sub_240842F28()
{
  v1 = v0[142];
  v2 = v0[65];
  v3 = swift_task_alloc();
  v0[143] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CEDE70] + 4);
  v5 = swift_task_alloc();
  v0[144] = v5;
  *v5 = v0;
  v5[1] = sub_240843000;
  v6 = v0[83];
  v7 = v0[77];

  return MEMORY[0x2821400E8](v6, &unk_2408D8190, v3, v7);
}

uint64_t sub_240843000()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v3 = *(*v0 + 520);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24084312C, v3, 0);
}

uint64_t sub_24084312C()
{
  v212 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 616);
  sub_2408D38A0();
  v6 = sub_2407F5E5C(MEMORY[0x277D84F90]);
  v7 = *(v5 + 20);
  *(v4 + v7) = v6;
  sub_2407EEE04(v1, v2, &unk_27E5071F0, &qword_2408D7640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v0 + 1088);
    v9 = *(v0 + 656);
    v10 = *v9;
    *(v0 + 472) = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v11 = v10;
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v211[0] = v15;
      *v14 = 136315138;
      *(v0 + 488) = v10;
      v16 = v10;
      v17 = sub_2408D4D40();
      v19 = sub_2408CC504(v17, v18, v211);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2407CF000, v12, v13, "Error occurred during sign, finishing setup flow: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x245CC9F60](v15, -1, -1);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v20 = *(v0 + 896);
    v21 = *(v0 + 568);
    v22 = *(v0 + 560);
    v23 = *(v0 + 520);
    v24 = *(*v23 + 208);
    swift_beginAccess();
    sub_2407EEE04(v23 + v24, v20, &qword_27E506DA8, &qword_2408D8100);
    v25 = (*(v21 + 48))(v20, 1, v22);
    v26 = *(v0 + 896);
    if (v25)
    {
      sub_2407D9440(*(v0 + 896), &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v70 = *(v0 + 576);
      v71 = *(v0 + 568);
      v72 = *(v0 + 560);
      (*(v71 + 16))(v70, *(v0 + 896), v72);
      sub_2407D9440(v26, &qword_27E506DA8, &qword_2408D8100);
      *(v0 + 480) = v10;
      v73 = v10;
      sub_2408D4E90();
      (*(v71 + 8))(v70, v72);
    }

    v74 = *(v0 + 1136);
    v75 = *(v0 + 1064);
    v206 = *(v0 + 952);
    v208 = v10;
    v76 = *(v0 + 944);
    v77 = *(v0 + 768);
    v198 = *(v0 + 760);
    v202 = *(v0 + 936);
    v78 = *(v0 + 752);
    v79 = *(v0 + 744);
    v80 = *(v0 + 664);
    v81 = *(v0 + 640);
    swift_willThrow();

    sub_2407D9440(v80, &unk_27E5071F0, &qword_2408D7640);
    v82 = *(v78 + 8);
    v82(v77, v79);
    sub_240875C68(v81, type metadata accessor for SignInReport);
    v82(v198, v79);
    (*(v76 + 8))(v206, v202);
    v83 = *(v0 + 40);
    v84 = __swift_project_boxed_opaque_existential_1((v0 + 16), v83);
    v85 = *(v83 - 8);
    v86 = *(v85 + 64) + 15;
    v87 = swift_task_alloc();
    (*(v85 + 16))(v87, v84, v83);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    if (qword_27E506918 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v29 = *(v0 + 600);
  sub_240875B98(*(v0 + 656), v28, type metadata accessor for SignInReport);
  sub_240875A08(v28, v27);
  v30 = *(v4 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F30, &unk_2408D72D0);
  v31 = sub_2408D51B0();
  v201 = v29;
  v205 = v31;
  v32 = v30 + 64;
  v33 = 1 << *(v30 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v30 + 64);
  v36 = (v33 + 63) >> 6;
  v197 = v31 + 64;
  v208 = v30;

  v37 = 0;
  if (v35)
  {
    while (1)
    {
      v38 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
LABEL_15:
      v41 = v38 | (v37 << 6);
      v42 = *(v0 + 608);
      v43 = *(v208[6] + 8 * v41);
      v44 = *(v0 + 592);
      v45 = v208[7] + 16 * v41;
      v46 = *v45;
      LOBYTE(v45) = *(v45 + 8);
      *(v0 + 448) = v46;
      *(v0 + 456) = v45;
      v47 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
      sub_2408D5340();
      *(v197 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      *(v205[6] + 8 * v41) = v47;
      (*(v201 + 32))(v205[7] + *(v201 + 72) * v41, v42, v44);
      v48 = v205[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        break;
      }

      v205[2] = v50;
      if (!v35)
      {
        goto LABEL_10;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_24:
    __swift_project_value_buffer(*(v0 + 536), qword_27E506C48);
    v88 = v208;
    v89 = sub_2408D4B10();
    v90 = sub_2408D4F20();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *v91 = 138412290;
      v93 = v208;
      v94 = _swift_stdlib_bridgeErrorToNSError();
      *(v91 + 4) = v94;
      *v92 = v94;
      _os_log_impl(&dword_2407CF000, v89, v90, "Caught Sign In error: %@", v91, 0xCu);
      sub_2407D9440(v92, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v92, -1, -1);
      MEMORY[0x245CC9F60](v91, -1, -1);
    }

    v95 = *(v0 + 1024);
    v96 = *(v0 + 1016);
    v97 = *(v0 + 1008);
    v98 = *(v0 + 1000);
    v99 = *(v0 + 992);
    v100 = *(v0 + 960);

    v101 = *(v95 + 16);
    v102 = *(*v101 + *MEMORY[0x277D841D0] + 16);
    v103 = (*(*v101 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v101 + v103));
    sub_24080F060(v101 + v102, v100, &qword_27E507570, &qword_2408D8168);
    v97(v101 + v102, 1, 1, v99);
    os_unfair_lock_unlock((v101 + v103));

    v104 = (*(v98 + 48))(v100, 1, v99);
    v105 = *(v0 + 1024);
    if (v104 == 1)
    {
      v106 = *(v0 + 960);
      v107 = *(v0 + 1024);

      sub_2407D9440(v106, &qword_27E507570, &qword_2408D8168);
    }

    else
    {
      v108 = *(v0 + 1000);
      v109 = *(v0 + 992);
      v110 = *(v0 + 960);
      *(v0 + 464) = v208;
      v111 = v208;
      sub_2408D4E10();

      (*(v108 + 8))(v110, v109);
    }

    goto LABEL_38;
  }

LABEL_10:
  v39 = v37;
  while (1)
  {
    v37 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v37 >= v36)
    {
      break;
    }

    v40 = *(v32 + 8 * v37);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v35 = (v40 - 1) & v40;
      goto LABEL_15;
    }
  }

  v51 = *(v0 + 1088);

  v52 = sub_2408D4B10();
  v53 = sub_2408D4F20();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = *(v0 + 640);
    v55 = *(v0 + 624);
    v56 = *(v0 + 616);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v211[0] = v58;
    *v57 = 136315138;
    swift_beginAccess();
    sub_240875C00(v54, v55, type metadata accessor for SignInReport);
    v59 = sub_2408D4D40();
    v61 = sub_2408CC504(v59, v60, v211);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_2407CF000, v52, v53, "Yielding sign in report: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x245CC9F60](v58, -1, -1);
    MEMORY[0x245CC9F60](v57, -1, -1);
  }

  v62 = *(v0 + 904);
  v63 = *(v0 + 568);
  v64 = *(v0 + 560);
  v65 = *(v0 + 520);
  v66 = *(*v65 + 208);
  swift_beginAccess();
  sub_2407EEE04(v65 + v66, v62, &qword_27E506DA8, &qword_2408D8100);
  v67 = (*(v63 + 48))(v62, 1, v64);
  v68 = *(v0 + 904);
  if (v67)
  {
    sub_2407D9440(*(v0 + 904), &qword_27E506DA8, &qword_2408D8100);
    v69 = 1;
  }

  else
  {
    v112 = *(v0 + 640);
    v113 = *(v0 + 624);
    v114 = *(v0 + 584);
    v115 = *(v0 + 576);
    v116 = *(v0 + 568);
    v117 = *(v0 + 560);
    (*(v116 + 16))(v115, *(v0 + 904), v117);
    sub_2407D9440(v68, &qword_27E506DA8, &qword_2408D8100);
    swift_beginAccess();
    sub_240875C00(v112, v113, type metadata accessor for SignInReport);
    sub_2408D4E80();
    (*(v116 + 8))(v115, v117);
    v69 = 0;
  }

  v118 = *(v0 + 584);
  v119 = *(v0 + 512);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507588, &qword_2408D8198);
  (*(*(v120 - 8) + 56))(v118, v69, 1, v120);
  sub_2407D9440(v118, &qword_27E507568, &qword_2408D8148);
  if (sub_2408D3DF0())
  {
    v121 = *(v0 + 552);
    sub_2408D4910();
    v122 = sub_2408D4B10();
    v123 = sub_2408D4F10();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&dword_2407CF000, v122, v123, "Marked as final sign in => Still waiting for termination request", v124, 2u);
      MEMORY[0x245CC9F60](v124, -1, -1);
    }

    v125 = *(v0 + 552);
    v126 = *(v0 + 544);
    v127 = *(v0 + 536);

    (*(v126 + 8))(v125, v127);
  }

  v128 = *(v0 + 1016);
  v129 = *(v0 + 1008);
  v130 = *(v0 + 1000);
  v131 = *(v0 + 992);
  v132 = *(v0 + 968);
  v133 = *(*(v0 + 1024) + 16);
  v134 = *(*v133 + *MEMORY[0x277D841D0] + 16);
  v135 = (*(*v133 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v133 + v135));
  sub_24080F060(v133 + v134, v132, &qword_27E507570, &qword_2408D8168);
  v129(v133 + v134, 1, 1, v131);
  os_unfair_lock_unlock((v133 + v135));

  v136 = (*(v130 + 48))(v132, 1, v131);
  v137 = *(v0 + 1136);
  v138 = *(v0 + 1064);
  if (v136 == 1)
  {
    v139 = *(v0 + 968);
    v140 = *(v0 + 768);
    v141 = *(v0 + 752);
    v142 = *(v0 + 744);
    v143 = *(v0 + 664);
    v144 = *(v0 + 1136);

    sub_2407D9440(v143, &unk_27E5071F0, &qword_2408D7640);
    v145 = *(v141 + 8);
    v145(v140, v142);
    sub_2407D9440(v139, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v146 = *(v0 + 1000);
    v147 = *(v0 + 992);
    v148 = *(v0 + 968);
    v149 = *(v0 + 888);
    v150 = *(v0 + 880);
    v209 = *(v0 + 768);
    v151 = *(v0 + 752);
    v199 = *(v0 + 664);
    v203 = *(v0 + 744);
    v152 = *(v0 + 512);
    sub_2408D3DE0();
    sub_2408D3E30();
    sub_2408D4E20();

    sub_2407D9440(v199, &unk_27E5071F0, &qword_2408D7640);
    v145 = *(v151 + 8);
    v145(v209, v203);
    (*(v146 + 8))(v148, v147);
  }

  v153 = *(v0 + 1024);
  v154 = *(v0 + 952);
  v155 = *(v0 + 944);
  v156 = *(v0 + 936);
  v157 = *(v0 + 760);
  v158 = *(v0 + 744);
  sub_240875C68(*(v0 + 640), type metadata accessor for SignInReport);
  v145(v157, v158);
  (*(v155 + 8))(v154, v156);
  v159 = *(v0 + 40);
  v160 = __swift_project_boxed_opaque_existential_1((v0 + 16), v159);
  v161 = *(v159 - 8);
  v162 = *(v161 + 64) + 15;
  v163 = swift_task_alloc();
  (*(v161 + 16))(v163, v160, v159);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
LABEL_38:
  v164 = *(v0 + 984);
  v165 = *(v0 + 976);
  v166 = *(v0 + 968);
  v167 = *(v0 + 960);
  v168 = *(v0 + 952);
  v169 = *(v0 + 928);
  v170 = *(v0 + 920);
  v171 = *(v0 + 912);
  v172 = *(v0 + 904);
  v173 = *(v0 + 896);
  v176 = *(v0 + 888);
  v177 = *(v0 + 880);
  v178 = *(v0 + 872);
  v179 = *(v0 + 864);
  v180 = *(v0 + 840);
  v181 = *(v0 + 832);
  v182 = *(v0 + 808);
  v183 = *(v0 + 800);
  v184 = *(v0 + 792);
  v185 = *(v0 + 768);
  v186 = *(v0 + 760);
  v187 = *(v0 + 736);
  v188 = *(v0 + 712);
  v189 = *(v0 + 704);
  v190 = *(v0 + 680);
  v191 = *(v0 + 672);
  v192 = *(v0 + 664);
  v193 = *(v0 + 656);
  v194 = *(v0 + 640);
  v195 = *(v0 + 632);
  v196 = *(v0 + 624);
  v200 = *(v0 + 608);
  v204 = *(v0 + 584);
  v207 = *(v0 + 576);
  v210 = *(v0 + 552);

  v174 = *(v0 + 8);

  return v174();
}

uint64_t sub_240844240()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 944);
  v3 = *(v0 + 936);
  v4 = *(v0 + 768);
  v5 = *(v0 + 760);
  v6 = *(v0 + 752);
  v7 = *(v0 + 744);

  v8 = *(v6 + 8);
  v8(v4, v7);
  v8(v5, v7);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 40);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  v11 = *(v9 - 8);
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  (*(v11 + 16))(v13, v10, v9);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v14 = *(v0 + 1120);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 536), qword_27E506C48);
  v15 = v14;
  v16 = sub_2408D4B10();
  v17 = sub_2408D4F20();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v14;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_2407CF000, v16, v17, "Caught Sign In error: %@", v18, 0xCu);
    sub_2407D9440(v19, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v19, -1, -1);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  v22 = *(v0 + 1024);
  v23 = *(v0 + 1016);
  v24 = *(v0 + 1008);
  v25 = *(v0 + 1000);
  v26 = *(v0 + 992);
  v27 = *(v0 + 960);

  v28 = *(v22 + 16);
  v29 = *(*v28 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v28 + v30));
  sub_24080F060(v28 + v29, v27, &qword_27E507570, &qword_2408D8168);
  v24(v28 + v29, 1, 1, v26);
  os_unfair_lock_unlock((v28 + v30));

  v31 = (*(v25 + 48))(v27, 1, v26);
  v32 = *(v0 + 1024);
  if (v31 == 1)
  {
    v33 = *(v0 + 960);
    v34 = *(v0 + 1024);

    sub_2407D9440(v33, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v35 = *(v0 + 1000);
    v36 = *(v0 + 992);
    v37 = *(v0 + 960);
    *(v0 + 464) = v14;
    v38 = v14;
    sub_2408D4E10();

    (*(v35 + 8))(v37, v36);
  }

  v39 = *(v0 + 984);
  v40 = *(v0 + 976);
  v41 = *(v0 + 968);
  v42 = *(v0 + 960);
  v43 = *(v0 + 952);
  v44 = *(v0 + 928);
  v45 = *(v0 + 920);
  v46 = *(v0 + 912);
  v47 = *(v0 + 904);
  v48 = *(v0 + 896);
  v51 = *(v0 + 888);
  v52 = *(v0 + 880);
  v53 = *(v0 + 872);
  v54 = *(v0 + 864);
  v55 = *(v0 + 840);
  v56 = *(v0 + 832);
  v57 = *(v0 + 808);
  v58 = *(v0 + 800);
  v59 = *(v0 + 792);
  v60 = *(v0 + 768);
  v61 = *(v0 + 760);
  v62 = *(v0 + 736);
  v63 = *(v0 + 712);
  v64 = *(v0 + 704);
  v65 = *(v0 + 680);
  v66 = *(v0 + 672);
  v67 = *(v0 + 664);
  v68 = *(v0 + 656);
  v69 = *(v0 + 640);
  v70 = *(v0 + 632);
  v71 = *(v0 + 624);
  v72 = *(v0 + 608);
  v73 = *(v0 + 584);
  v74 = *(v0 + 576);
  v75 = *(v0 + 552);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_240844804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507570, &qword_2408D8168);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v10 = sub_2408D35B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D3500();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v56 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - v23;
  sub_2408D35C0();
  if ((*(v15 + 48))(v13, 6, v14))
  {
    return sub_240875C68(v13, MEMORY[0x277CED338]);
  }

  v59 = v19;
  v60 = v9;
  v61 = a3;
  (*(v15 + 32))(v24, v13, v14);
  (*(v15 + 104))(v22, *MEMORY[0x277CED270], v14);
  v26 = sub_2408D34F0();
  v27 = *(v15 + 8);
  v27(v22, v14);
  if ((v26 & 1) == 0)
  {
    return (v27)(v24, v14);
  }

  v62 = v27;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v28 = sub_2408D4B20();
  __swift_project_value_buffer(v28, qword_27E506C48);
  v29 = *(v15 + 16);
  v30 = v59;
  v29(v59, v24, v14);
  v31 = sub_2408D4B10();
  v32 = sub_2408D4F30();
  v33 = os_log_type_enabled(v31, v32);
  v57 = a1;
  v58 = v29;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    v58(v36, v30, v14);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    v62(v30, v14);
    *(v34 + 4) = v37;
    *v35 = v37;
    _os_log_impl(&dword_2407CF000, v31, v32, "User cancelled during sign in with error: %@", v34, 0xCu);
    sub_2407D9440(v35, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v35, -1, -1);
    v38 = v34;
    v29 = v58;
    MEMORY[0x245CC9F60](v38, -1, -1);
  }

  else
  {

    v62(v30, v14);
  }

  v39 = v61;
  swift_beginAccess();
  v40 = *(v39 + 120);
  *(v39 + 120) = 0;

  v61 = sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
  v41 = swift_allocError();
  v29(v42, v24, v14);
  sub_24083B174(v41);

  v43 = *(v63 + 16);
  v44 = *(*v43 + *MEMORY[0x277D841D0] + 16);
  v45 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v43 + v45));
  v46 = v60;
  sub_24080F060(v43 + v44, v60, &qword_27E507570, &qword_2408D8168);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130);
  v48 = *(v47 - 8);
  (*(v48 + 56))(v43 + v44, 1, 1, v47);
  os_unfair_lock_unlock((v43 + v45));

  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_2407D9440(v46, &qword_27E507570, &qword_2408D8168);
  }

  else
  {
    v49 = swift_allocError();
    v58(v50, v24, v14);
    v64 = v49;
    sub_2408D4E10();
    (*(v48 + 8))(v46, v47);
  }

  v51 = v57[3];
  v52 = __swift_project_boxed_opaque_existential_1(v57, v51);
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  (*(v55 + 16))(&v56 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2408D4670();
  return (v62)(v24, v14);
}

uint64_t sub_240844F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_240844F74, a2, 0);
}

uint64_t sub_240844F74()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_240845014;
  v3 = v0[4];
  v4 = v0[2];

  return sub_240802688(v4, v3);
}

uint64_t sub_240845014()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_240845108(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AIDAServiceType(0);
  v4 = v3;
  v5 = sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
  v6 = 0;
  v13[1] = MEMORY[0x245CC9340](v2, v4, v5);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_24086A4D4(v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_240845250(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2408D3990();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_2408D4B20();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v10 = sub_2408D3500();
  v3[17] = v10;
  v11 = *(v10 - 8);
  v3[18] = v11;
  v12 = *(v11 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v3[24] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24084545C, v2, 0);
}

uint64_t sub_24084545C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v2 + 208);
  *(v2 + 208) = v1;

  v4 = sub_2408D34B0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[27] = sub_2408D34C0();
  sub_2408D4A00();
  v7 = sub_2408D48E0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[28] = sub_2408D48C0();
  sub_2408D48D0();
  v10 = swift_task_alloc();
  v0[29] = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  v11 = *(MEMORY[0x277CEDE70] + 4);
  v12 = swift_task_alloc();
  v0[30] = v12;
  v13 = sub_2408D3C80();
  v0[31] = v13;
  *v12 = v0;
  v12[1] = sub_2408455C4;
  v14 = v0[26];

  return MEMORY[0x2821400E8](v14, &unk_2408D7F30, v10, v13);
}

uint64_t sub_2408455C4()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 64);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408456F0, v3, 0);
}

uint64_t sub_2408456F0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v3, v4, &qword_27E506AB8, &qword_2408D7F20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33 = *(v0 + 248);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v36 = *(v0 + 200);
    v37 = *(v0 + 48);
    sub_2407D9440(*(v0 + 208), &qword_27E506AB8, &qword_2408D7F20);

    (*(*(v33 - 8) + 32))(v37, v36, v33);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v41 = *(v0 + 176);
    v40 = *(v0 + 184);
    v43 = *(v0 + 160);
    v42 = *(v0 + 168);
    v44 = *(v0 + 152);
    v46 = *(v0 + 120);
    v45 = *(v0 + 128);
    v47 = *(v0 + 96);
    v121 = *(v0 + 88);

    v48 = *(v0 + 8);
LABEL_29:

    return v48();
  }

  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 136);
  v12 = *v8;
  *(v0 + 256) = *v8;
  *(v0 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v9, &qword_27E506AB8, &qword_2408D7F20);
  *(v0 + 24) = v12;
  v13 = v12;
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);

    (*(v18 + 32))(v15, v14, v17);
    sub_2408D4910();
    v20 = *(v18 + 16);
    v20(v16, v15, v17);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F20();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 168);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v27 = 138412290;
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      v28 = v20;
      v20(v29, v24, v26);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v24;
      v32 = *(v25 + 8);
      v32(v31, v26);
      *(v27 + 4) = v30;
      *v120 = v30;
      v20 = v28;
      _os_log_impl(&dword_2407CF000, v21, v22, "Repair flow cancelled with %@", v27, 0xCu);
      sub_2407D9440(v120, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v120, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    else
    {

      v58 = v24;
      v32 = *(v25 + 8);
      v32(v58, v26);
    }

    v118 = v32;
    v59 = *(v0 + 176);
    v60 = *(v0 + 160);
    v62 = *(v0 + 136);
    v61 = *(v0 + 144);
    v63 = *(*(v0 + 112) + 8);
    v63(*(v0 + 128), *(v0 + 104));
    v20(v60, v59, v62);
    v64 = (*(v61 + 88))(v60, v62);
    v65 = *(v0 + 176);
    if (v64 == *MEMORY[0x277CED2D8] || v64 == *MEMORY[0x277CED270])
    {
      v82 = *(v0 + 136);
      v81 = *(v0 + 144);
      v84 = *(v0 + 80);
      v83 = *(v0 + 88);
      v85 = *(v0 + 72);
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      sub_2408D52B0();
      sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
      swift_allocError();
      (*(v84 + 16))(v86, v83, v85);
      swift_willThrow();
      (*(v84 + 8))(v83, v85);
      v118(v65, v82);
    }

    else
    {
      v122 = v63;
      v66 = *(v0 + 152);
      v67 = *(v0 + 136);
      v68 = *(v0 + 120);
      sub_2408D4910();
      v20(v66, v65, v67);
      v69 = sub_2408D4B10();
      v70 = sub_2408D4F20();
      v71 = os_log_type_enabled(v69, v70);
      v73 = *(v0 + 144);
      v72 = *(v0 + 152);
      v74 = *(v0 + 136);
      if (v71)
      {
        v75 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v75 = 138412290;
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        v76 = v20;
        v20(v77, v72, v74);
        v78 = _swift_stdlib_bridgeErrorToNSError();
        v79 = v74;
        v80 = v118;
        v118(v72, v79);
        *(v75 + 4) = v78;
        *v117 = v78;
        v20 = v76;
        _os_log_impl(&dword_2407CF000, v69, v70, "Unexpected %@ throwing as is.", v75, 0xCu);
        sub_2407D9440(v117, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v117, -1, -1);
        MEMORY[0x245CC9F60](v75, -1, -1);
      }

      else
      {

        v101 = v74;
        v80 = v118;
        v118(v72, v101);
      }

      v102 = *(v0 + 176);
      v103 = *(v0 + 160);
      v104 = *(v0 + 136);
      v105 = *(v0 + 112) + 8;
      v122(*(v0 + 120), *(v0 + 104));
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      v20(v106, v102, v104);
      swift_willThrow();
      v80(v102, v104);
      v80(v103, v104);
    }

    v49 = (v0 + 24);
    goto LABEL_28;
  }

  v49 = (v0 + 32);
  v50 = *(v0 + 96);
  v51 = *(v0 + 72);

  *(v0 + 32) = v12;
  v52 = v12;
  if (swift_dynamicCast())
  {
    v54 = *(v0 + 88);
    v53 = *(v0 + 96);
    v56 = *(v0 + 72);
    v55 = *(v0 + 80);

    (*(v55 + 32))(v54, v53, v56);
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    (*(v55 + 16))(v57, v54, v56);
    swift_willThrow();
    (*(v55 + 8))(v54, v56);
LABEL_28:

    v108 = *(v0 + 200);
    v107 = *(v0 + 208);
    v110 = *(v0 + 176);
    v109 = *(v0 + 184);
    v112 = *(v0 + 160);
    v111 = *(v0 + 168);
    v113 = *(v0 + 152);
    v115 = *(v0 + 120);
    v114 = *(v0 + 128);
    v116 = *(v0 + 96);
    v119 = *(v0 + 88);

    v48 = *(v0 + 8);
    goto LABEL_29;
  }

  *(v0 + 40) = v12;
  v87 = v12;
  if (swift_dynamicCast())
  {

    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 104), qword_27E507280);
    v88 = sub_2408D4B10();
    v89 = sub_2408D4F10();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_2407CF000, v88, v89, "caught user selected Manual, attempting local repair", v90, 2u);
      MEMORY[0x245CC9F60](v90, -1, -1);
    }

    v91 = *(v0 + 64);

    v92 = *(v91 + 128);
    v93 = swift_task_alloc();
    *(v0 + 288) = v93;
    *v93 = v0;
    v93[1] = sub_240846410;
    v94 = *(v0 + 48);
    v95 = *(v0 + 56);

    return sub_2407D2D20(v94, v95);
  }

  else
  {

    v97 = swift_task_alloc();
    *(v0 + 264) = v97;
    *(v97 + 16) = v12;
    v98 = *(MEMORY[0x277CED860] + 4);
    v123 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v99 = swift_task_alloc();
    *(v0 + 272) = v99;
    *v99 = v0;
    v99[1] = sub_2408462E8;
    v100 = *(v0 + 56);

    return v123();
  }
}

uint64_t sub_2408462E8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_240846820;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 64);

    v5 = sub_240846728;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240846410()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_240846630;
  }

  else
  {
    v6 = sub_24084653C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084653C()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 96);
  v13 = *(v0 + 88);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_240846630()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 152);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 96);
  v13 = *(v0 + 88);
  v14 = *(v0 + 296);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_240846728()
{
  v1 = v0[32];
  swift_willThrow();
  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[12];
  v14 = v0[11];
  v15 = v0[32];

  v12 = v0[1];

  return v12();
}

uint64_t sub_240846820()
{
  v1 = *(v0 + 264);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 152);
  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 96);
  v14 = *(v0 + 88);
  v15 = *(v0 + 280);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_240846920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_2408469E4(a1, a3);
}

uint64_t sub_2408469E4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2408D3A30();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507480, &qword_2408D7F40) - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v8 = sub_2408D3D60();
  v3[18] = v8;
  v9 = *(v8 - 8);
  v3[19] = v9;
  v10 = *(v9 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240846B48, v2, 0);
}

uint64_t sub_240846B48()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 144);
  v0[22] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277CED858] + 4);
    v18 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_240846DBC;
    v5 = v0[16];
    v6 = v0[12];

    return v18(v5);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E507280);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "We do not have a valid connector. Cancelling early.", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v12 = xmmword_2408D7CC0;
    *(v12 + 16) = 2;
    swift_willThrow();
    v14 = v0[20];
    v13 = v0[21];
    v16 = v0[16];
    v15 = v0[17];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_240846DBC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240846ECC, v2, 0);
}

uint64_t sub_240846ECC()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v0[5] = sub_2408D3630();
  v0[6] = sub_2408763D8(&qword_27E507498, 255, MEMORY[0x277CED360]);
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2408D39B0();
  (*(v3 + 8))(v2, v4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_240846FEC;
  v6 = v0[17];

  return sub_2407EF354(v6, (v0 + 2));
}

uint64_t sub_240846FEC()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 104);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_240847104, v3, 0);
}

uint64_t sub_240847104()
{
  v41 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v3, &qword_27E507480, &qword_2408D7F40);
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v4 = v0[13];
    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E507280);

    v6 = sub_2408D4B10();
    v7 = sub_2408D4F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[13];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      *v9 = 136315138;
      v0[10] = *(v8 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074A0, &qword_2408D7F50);
      v11 = sub_2408D4D40();
      v13 = sub_2408CC504(v11, v12, &v40);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_2407CF000, v6, v7, "Failed to get role with connector: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x245CC9F60](v10, -1, -1);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v14 = v0[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 2;
    swift_willThrow();

    v17 = v0[20];
    v16 = v0[21];
    v19 = v0[16];
    v18 = v0[17];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v23 = v0[20];
    v22 = v0[21];
    (*(v2 + 32))(v22, v3, v1);
    (*(v2 + 16))(v23, v22, v1);
    v24 = (*(v2 + 88))(v23, v1);
    if (v24 == *MEMORY[0x277CED560])
    {
      if (qword_27E506930 != -1)
      {
        swift_once();
      }

      v25 = sub_2408D4B20();
      __swift_project_value_buffer(v25, qword_27E507280);
      v26 = sub_2408D4B10();
      v27 = sub_2408D4F10();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2407CF000, v26, v27, "Repairing up as client", v28, 2u);
        MEMORY[0x245CC9F60](v28, -1, -1);
      }

      v29 = v0[22];

      v39 = sub_240847B44;
      v30 = swift_task_alloc();
      v0[25] = v30;
      *v30 = v0;
      v31 = sub_2408476DC;
    }

    else
    {
      if (v24 != *MEMORY[0x277CED568])
      {
        return sub_2408D5190();
      }

      if (qword_27E506930 != -1)
      {
        swift_once();
      }

      v32 = sub_2408D4B20();
      __swift_project_value_buffer(v32, qword_27E507280);
      v33 = sub_2408D4B10();
      v34 = sub_2408D4F10();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2407CF000, v33, v34, "Repairing up as server", v35, 2u);
        MEMORY[0x245CC9F60](v35, -1, -1);
      }

      v29 = v0[22];

      v39 = sub_24084E244;
      v30 = swift_task_alloc();
      v0[27] = v30;
      *v30 = v0;
      v31 = sub_24084796C;
    }

    v30[1] = v31;
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];

    return v39(v38, v36, v29);
  }
}

uint64_t sub_2408476DC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_2408478C0;
  }

  else
  {
    v6 = sub_240847808;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240847808()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  (*(v4 + 8))(v2, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408478C0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[26];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24084796C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 104);
  if (v0)
  {
    v6 = sub_240847A98;
  }

  else
  {
    v6 = sub_24087645C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240847A98()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];

  (*(v4 + 8))(v2, v3);
  v5 = v0[28];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_240847B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a2;
  v4[5] = v3;
  v4[3] = a1;
  v7 = sub_2408D3D90();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  v9 = *(v8 + 64) + 15;
  v4[8] = swift_task_alloc();
  v10 = sub_2408D3DA0();
  v4[9] = v10;
  v11 = *(v10 - 8);
  v4[10] = v11;
  v12 = *(v11 + 64) + 15;
  v4[11] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506AB8, &qword_2408D7F20);
  v4[12] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v15 = swift_task_alloc();
  v4[14] = v15;
  v4[15] = swift_task_alloc();
  v16 = swift_task_alloc();
  v4[16] = v16;
  *v16 = v4;
  v16[1] = sub_240847D24;

  return sub_240849084(v15, a2, a3);
}

uint64_t sub_240847D24()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2408482F0;
  }

  else
  {
    v6 = sub_240847E50;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240847E50()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  swift_storeEnumTagMultiPayload();
  sub_24080F060(v1, v2, &qword_27E506AB8, &qword_2408D7F20);
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  v0[18] = __swift_project_value_buffer(v4, qword_27E507280);
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F20();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2407CF000, v5, v6, "Sending finish repair command", v7, 2u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v8 = v0[5];

  v9 = *(v8 + 200);
  v0[19] = v9;
  if (v9)
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277CED5D0], v0[6]);
    v10 = *(MEMORY[0x277CED570] + 4);
    v33 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v11 = swift_task_alloc();
    v0[20] = v11;
    v12 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0]);
    *v11 = v0;
    v11[1] = sub_2408488A0;
    v13 = v0[11];
    v14 = v0[8];
    v15 = v0[6];

    return v33(v13, v14, v15, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    v17 = swift_allocError();
    *v18 = xmmword_2408D7CD0;
    *(v18 + 16) = 2;
    swift_willThrow();
    v19 = v0[18];
    v20 = sub_2408D4B10();
    v21 = sub_2408D4F30();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2407CF000, v20, v21, "Failed to send finish command", v22, 2u);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    v23 = v0[12];
    sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = v0[14];
    v26 = v0[15];
    v27 = v0[13];
    v28 = v0[11];
    v29 = v0[8];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      sub_2407D9440(v26, &qword_27E506AB8, &qword_2408D7F20);
    }

    else
    {
      v31 = v0[3];
      sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
      v32 = sub_2408D3C80();
      (*(*(v32 - 8) + 32))(v31, v27, v32);
    }

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_2408482F0()
{
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507280);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to repair as client with error: %@", v7, 0xCu);
    sub_2407D9440(v8, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v11 = v0[17];
  v12 = v0[15];
  v13 = v0[12];

  *v12 = v11;
  swift_storeEnumTagMultiPayload();
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v0[18] = __swift_project_value_buffer(v2, qword_27E507280);
  v14 = sub_2408D4B10();
  v15 = sub_2408D4F20();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2407CF000, v14, v15, "Sending finish repair command", v16, 2u);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  v17 = v0[5];

  v18 = *(v17 + 200);
  v0[19] = v18;
  if (v18)
  {
    (*(v0[7] + 104))(v0[8], *MEMORY[0x277CED5D0], v0[6]);
    v19 = *(MEMORY[0x277CED570] + 4);
    v42 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v20 = swift_task_alloc();
    v0[20] = v20;
    v21 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0]);
    *v20 = v0;
    v20[1] = sub_2408488A0;
    v22 = v0[11];
    v23 = v0[8];
    v24 = v0[6];

    return v42(v22, v23, v24, v21);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    v26 = swift_allocError();
    *v27 = xmmword_2408D7CD0;
    *(v27 + 16) = 2;
    swift_willThrow();
    v28 = v0[18];
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F30();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2407CF000, v29, v30, "Failed to send finish command", v31, 2u);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    v32 = v0[12];
    sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = v0[14];
    v35 = v0[15];
    v36 = v0[13];
    v37 = v0[11];
    v38 = v0[8];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      swift_willThrowTypedImpl();
      sub_2407D9440(v35, &qword_27E506AB8, &qword_2408D7F20);
    }

    else
    {
      v40 = v0[3];
      sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
      v41 = sub_2408D3C80();
      (*(*(v41 - 8) + 32))(v40, v36, v41);
    }

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_2408488A0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {
    v6 = v2[5];

    v7 = sub_240848C30;
  }

  else
  {
    v6 = v2[5];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v7 = sub_240848A00;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240848A00()
{
  v1 = *(MEMORY[0x277CED860] + 4);
  v6 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
  *v2 = v0;
  v2[1] = sub_240848AF8;
  v4 = *(v0 + 32);

  return v6(v0 + 184, sub_240810B34, 0, &unk_2408D78E8, 0, v3);
}

uint64_t sub_240848AF8()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  v5 = *(v2 + 40);
  if (v0)
  {

    v6 = sub_240876460;
  }

  else
  {
    v6 = sub_240848E60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240848C30()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Failed to send finish command", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = v0[12];
  sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  v11 = v0[11];
  v12 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v9, &qword_27E506AB8, &qword_2408D7F20);
  }

  else
  {
    v14 = v0[3];
    sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
    v15 = sub_2408D3C80();
    (*(*(v15 - 8) + 32))(v14, v10, v15);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_240848E60()
{
  v1 = v0[18];
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Successfully sent finish", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v0[12];
  sub_2407EEE04(v0[15], v0[13], &qword_27E506AB8, &qword_2408D7F20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = v0[14];
  v8 = v0[15];
  v9 = v0[13];
  v10 = v0[11];
  v11 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v8, &qword_27E506AB8, &qword_2408D7F20);
  }

  else
  {
    v13 = v0[3];
    sub_2407D9440(v0[15], &qword_27E506AB8, &qword_2408D7F20);
    v14 = sub_2408D3C80();
    (*(*(v14 - 8) + 32))(v13, v9, v14);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_240849084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_2408D48A0();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v9 = sub_2408D3EC0();
  v4[31] = v9;
  v10 = *(v9 - 8);
  v4[32] = v10;
  v11 = *(v10 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v12 = sub_2408D38D0();
  v4[38] = v12;
  v13 = *(v12 - 8);
  v4[39] = v13;
  v14 = *(v13 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v15 = sub_2408D3D90();
  v4[42] = v15;
  v16 = *(v15 - 8);
  v4[43] = v16;
  v17 = *(v16 + 64) + 15;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v18 = sub_2408D3DA0();
  v4[46] = v18;
  v19 = *(v18 - 8);
  v4[47] = v19;
  v20 = *(v19 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v21 = sub_2408D3D60();
  v4[55] = v21;
  v22 = *(v21 - 8);
  v4[56] = v22;
  v23 = *(v22 + 64) + 15;
  v4[57] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[58] = v24;
  v25 = *(v24 - 8);
  v4[59] = v25;
  v26 = *(v25 + 64) + 15;
  v4[60] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v28 = sub_2408D3970();
  v4[62] = v28;
  v29 = *(v28 - 8);
  v4[63] = v29;
  v30 = *(v29 + 64) + 15;
  v4[64] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240849528, v3, 0);
}

uint64_t sub_240849528()
{
  v1 = v0[66];
  v2 = *(v0[25] + 160);
  sub_2408D37F0();
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[63];
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_2407EEE04(v3, v4, &unk_27E506A20, &unk_2408D67F0);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = v0[65];
  if (v7 == 1)
  {
    sub_2407D9440(v0[65], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E507280);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Repair failed no primary account", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = v0[66];

    v14 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D71B0;
    v18 = *MEMORY[0x277CED1A0];
    *(inited + 32) = *MEMORY[0x277CED1A0];
    v19 = v18;
    v20 = sub_2408737B4(inited, &qword_27E507450, &unk_2408D7EF0);
    swift_setDeallocating();
    sub_240875C68(inited + 32, type metadata accessor for AIDAServiceType);
    *v16 = v20;
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277CED448], v14);
    swift_willThrow();
    sub_2407D9440(v13, &unk_27E506A20, &unk_2408D67F0);
    v21 = v0[66];
    v22 = v0[65];
    v23 = v0[64];
    v24 = v0[60];
    v25 = v0[61];
    v26 = v0[57];
    v28 = v0[53];
    v27 = v0[54];
    v30 = v0[51];
    v29 = v0[52];
    v36 = v0[50];
    v37 = v0[49];
    v38 = v0[48];
    v39 = v0[45];
    v40 = v0[44];
    v41 = v0[41];
    v42 = v0[40];
    v43 = v0[37];
    v44 = v0[36];
    v45 = v0[35];
    v46 = v0[34];
    v47 = v0[33];
    v48 = v0[30];
    v49 = v0[29];
    v50 = v0[28];

    v31 = v0[1];

    return v31();
  }

  else
  {
    (*(v0[63] + 32))(v0[64], v0[65], v0[62]);
    v33 = swift_task_alloc();
    v0[67] = v33;
    *v33 = v0;
    v33[1] = sub_240849A2C;
    v34 = v0[25];
    v35 = v0[23];

    return sub_240855BAC(v35);
  }
}

uint64_t sub_240849A2C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 536);
  v6 = *v2;
  *(v4 + 544) = v1;

  v7 = *(v4 + 200);
  if (v1)
  {
    v8 = sub_24084A0B0;
  }

  else
  {
    *(v4 + 932) = a1 & 1;
    v8 = sub_240849B6C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_240849B6C()
{
  if (*(v0 + 932) == 1)
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    *(v0 + 552) = __swift_project_value_buffer(v1, qword_27E507280);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F20();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Connecting transport for repair after user decided to proceed", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 488);

    v6 = sub_2408D3630();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = *(MEMORY[0x277CEDCB8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 560) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    *(v0 + 568) = v9;
    v10 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
    *v8 = v0;
    v8[1] = sub_24084A28C;
    v11 = *(v0 + 488);
    v12 = *(v0 + 184);

    return MEMORY[0x28213FC20](v11, sub_240811518, 0, sub_24081153C, 0, v9, v6, v10);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_27E507280);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F30();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "User decided to not proceed with repair, cancelled", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v17 = *(v0 + 528);
    v19 = *(v0 + 504);
    v18 = *(v0 + 512);
    v20 = *(v0 + 496);

    v21 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CED438], v21);
    swift_willThrow();
    (*(v19 + 8))(v18, v20);
    sub_2407D9440(v17, &unk_27E506A20, &unk_2408D67F0);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = *(v0 + 480);
    v27 = *(v0 + 488);
    v28 = *(v0 + 456);
    v30 = *(v0 + 424);
    v29 = *(v0 + 432);
    v32 = *(v0 + 408);
    v31 = *(v0 + 416);
    v35 = *(v0 + 400);
    v36 = *(v0 + 392);
    v37 = *(v0 + 384);
    v38 = *(v0 + 360);
    v39 = *(v0 + 352);
    v40 = *(v0 + 328);
    v41 = *(v0 + 320);
    v42 = *(v0 + 296);
    v43 = *(v0 + 288);
    v44 = *(v0 + 280);
    v45 = *(v0 + 272);
    v46 = *(v0 + 264);
    v47 = *(v0 + 240);
    v48 = *(v0 + 232);
    v49 = *(v0 + 224);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_24084A0B0()
{
  v1 = v0[66];
  (*(v0[63] + 8))(v0[64], v0[62]);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);
  v29 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[57];
  v9 = v0[53];
  v8 = v0[54];
  v11 = v0[51];
  v10 = v0[52];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[29];
  v28 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24084A28C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 560);
  v16 = *v2;
  *(*v2 + 576) = v1;

  if (v1)
  {
    v6 = v4[25];
    sub_2407D9440(v4[61], &qword_27E506A30, &qword_2408D6800);
    v7 = sub_24084AA60;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[71];
    v11 = v4[23];
    v4[73] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_24084A424;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_24084A424()
{
  v1 = v0[73];
  v2 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v3 = sub_2408D4680();
  v0[74] = v3;

  sub_2407D9440(v2, &qword_27E506A30, &qword_2408D6800);
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_24084A568;
  v5 = v0[60];
  v6 = v0[24];

  return sub_2408813B8(v5, v3);
}

uint64_t sub_24084A568()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24084A874;
  }

  else
  {
    v6 = sub_24084A694;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084A694()
{
  v0[77] = *(v0[25] + 136);
  v1 = swift_task_alloc();
  v0[78] = v1;
  *v1 = v0;
  v1[1] = sub_24084A748;
  v2 = v0[74];

  return sub_240828170(v2);
}

uint64_t sub_24084A748(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v7 = v4[25];
    v8 = sub_24084B078;
  }

  else
  {
    v7 = v4[77];
    v4[80] = a1;
    v8 = sub_24084AC3C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24084A874()
{
  v1 = v0[74];
  v2 = v0[66];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];

  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v2, &unk_27E506A20, &unk_2408D67F0);
  v33 = v0[76];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[64];
  v9 = v0[60];
  v10 = v0[61];
  v11 = v0[57];
  v13 = v0[53];
  v12 = v0[54];
  v15 = v0[51];
  v14 = v0[52];
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[45];
  v22 = v0[44];
  v23 = v0[41];
  v24 = v0[40];
  v25 = v0[37];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];

  v16 = v0[1];

  return v16();
}

uint64_t sub_24084AA60()
{
  v1 = v0[66];
  (*(v0[63] + 8))(v0[64], v0[62]);
  sub_2407D9440(v1, &unk_27E506A20, &unk_2408D67F0);
  v29 = v0[72];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[57];
  v9 = v0[53];
  v8 = v0[54];
  v11 = v0[51];
  v10 = v0[52];
  v14 = v0[50];
  v15 = v0[49];
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[44];
  v19 = v0[41];
  v20 = v0[40];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[30];
  v27 = v0[29];
  v28 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24084AC3C()
{
  v1 = v0[25];
  v0[81] = sub_2408709F8(v0[80]);

  return MEMORY[0x2822009F8](sub_24084ACB8, v1, 0);
}

uint64_t sub_24084ACB8()
{
  v1 = v0[24];
  (*(v0[56] + 104))(v0[57], *MEMORY[0x277CED560], v0[55]);

  return MEMORY[0x2822009F8](sub_24084AD40, v1, 0);
}

uint64_t sub_24084AD40()
{
  v1 = *(v0 + 192);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 56, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 80);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    *(v0 + 120) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  }

  else
  {
    sub_2407D9440(v0 + 56, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  v5 = *(v0 + 648);
  v6 = swift_task_alloc();
  *(v0 + 656) = v6;
  *v6 = v0;
  v6[1] = sub_24084AEB4;
  v7 = *(v0 + 480);
  v8 = *(v0 + 456);
  v9 = *(v0 + 200);

  return sub_2408595AC(v8, v7, v0 + 96, v5);
}

uint64_t sub_24084AEB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 656);
  v6 = *v2;
  v4[83] = a1;
  v4[84] = v1;

  v7 = v3[81];
  v8 = v3[57];
  v9 = v3[56];
  v10 = v3[55];
  v11 = v3[25];
  (*(v9 + 8))(v8, v10);

  sub_2407D9440((v4 + 12), &qword_27E507FA0, &qword_2408D7FB0);
  if (v1)
  {
    v12 = sub_24084B490;
  }

  else
  {
    v12 = sub_24084B284;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_24084B078()
{
  v1 = v0[74];
  v2 = v0[66];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v2, &unk_27E506A20, &unk_2408D67F0);
  v36 = v0[79];
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[64];
  v12 = v0[60];
  v13 = v0[61];
  v14 = v0[57];
  v16 = v0[53];
  v15 = v0[54];
  v18 = v0[51];
  v17 = v0[52];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[37];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[28];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24084B284()
{
  v20 = v0;
  v1 = v0[74];
  v2 = v0[69];
  v3 = v0[25];
  v4 = *(v3 + 200);
  *(v3 + 200) = v0[83];
  swift_retain_n();

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[83];
    v8 = v0[74];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    v0[20] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v11 = sub_2408D4D40();
    v13 = sub_2408CC504(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v0[21] = v7;
    sub_2408D3D80();

    v14 = sub_2408D4D40();
    v16 = sub_2408CC504(v14, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_2407CF000, v5, v6, "Configuring remote base for external use with model: %s router: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  v17 = v0[77];

  return MEMORY[0x2822009F8](sub_24084B69C, v17, 0);
}

uint64_t sub_24084B490()
{
  v1 = v0[74];
  v2 = v0[66];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[62];
  v7 = v0[59];
  v6 = v0[60];
  v8 = v0[58];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v2, &unk_27E506A20, &unk_2408D67F0);
  v36 = v0[84];
  v9 = v0[66];
  v10 = v0[65];
  v11 = v0[64];
  v12 = v0[60];
  v13 = v0[61];
  v14 = v0[57];
  v16 = v0[53];
  v15 = v0[54];
  v18 = v0[51];
  v17 = v0[52];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[37];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[28];

  v19 = v0[1];

  return v19();
}

uint64_t sub_24084B69C()
{
  v1 = v0[77];
  sub_240813A10(v0[74], v0[83]);

  v2 = *(MEMORY[0x277CED870] + 4);
  v6 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v3 = swift_task_alloc();
  v0[85] = v3;
  *v3 = v0;
  v3[1] = sub_24084B778;
  v4 = v0[23];

  return v6(sub_240811890, 0);
}

uint64_t sub_24084B778()
{
  v2 = *v1;
  v3 = *(*v1 + 680);
  v4 = *v1;
  *(*v1 + 688) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24084BB48;
  }

  else
  {
    v6 = sub_24084B8A4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084B8A4()
{
  v33 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 552);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 664);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315138;
    *(v0 + 152) = v5;
    sub_2408D3D80();

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Established router for repair: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = *(v0 + 512);
  v12 = *(v0 + 360);
  v13 = *(v0 + 336);
  v14 = *(v0 + 344);
  v15 = *(v0 + 328);
  v16 = *(v0 + 304);
  v17 = *(v0 + 312);
  sub_2408D38F0();
  v18 = sub_2408D38B0();
  v20 = v19;
  v21 = *(v17 + 8);
  *(v0 + 696) = v21;
  *(v0 + 704) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v16);
  *v12 = v18;
  v12[1] = v20;
  *(v0 + 920) = *MEMORY[0x277CED5C8];
  v22 = *(v14 + 104);
  *(v0 + 712) = v22;
  *(v0 + 720) = (v14 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v22(v12);
  v23 = *(MEMORY[0x277CED570] + 4);
  v31 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v24 = swift_task_alloc();
  *(v0 + 728) = v24;
  v25 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0]);
  *(v0 + 736) = v25;
  *v24 = v0;
  v24[1] = sub_24084BD60;
  v26 = *(v0 + 664);
  v27 = *(v0 + 432);
  v28 = *(v0 + 360);
  v29 = *(v0 + 336);

  return v31(v27, v28, v29, v25);
}

uint64_t sub_24084BB48()
{
  v1 = v0[83];
  v2 = v0[74];
  v3 = v0[66];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_2407D9440(v3, &unk_27E506A20, &unk_2408D67F0);
  v37 = v0[86];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[64];
  v13 = v0[60];
  v14 = v0[61];
  v15 = v0[57];
  v17 = v0[53];
  v16 = v0[54];
  v19 = v0[51];
  v18 = v0[52];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[48];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[33];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[28];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24084BD60()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v4 = *v1;
  *(*v1 + 744) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24084C788;
  }

  else
  {
    v6 = sub_24084BE8C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084BE8C()
{
  v127 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v4 + 16);
  *(v0 + 752) = v5;
  *(v0 + 760) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v3);
  v6 = *(v4 + 88);
  *(v0 + 768) = v6;
  *(v0 + 776) = (v4 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v7 = v6(v2, v3);
  *(v0 + 924) = v7;
  v8 = *(v0 + 552);
  if (v7 == *MEMORY[0x277CED5F0])
  {
    v9 = *(v0 + 424);
    v10 = *(v0 + 368);
    v11 = *(v0 + 376);
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v11 + 96);
    *(v0 + 784) = v16;
    *(v0 + 792) = (v11 + 96) & 0xFFFFFFFFFFFFLL | 0x41D000000000000;
    v16(v9, v10);
    v17 = *(v15 + 32);
    *(v0 + 800) = v17;
    *(v0 + 808) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v12, v9, v14);
    v18 = *(v15 + 16);
    *(v0 + 816) = v18;
    *(v0 + 824) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v13, v12, v14);
    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 288);
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    if (v21)
    {
      v25 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v126[0] = v121;
      *v25 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610]);
      v26 = sub_2408D5220();
      v28 = v27;
      v29 = *(v24 + 8);
      v29(v22, v23);
      v30 = sub_2408CC504(v26, v28, v126);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2407CF000, v19, v20, "Received generated symptom report from connected device: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v121);
      MEMORY[0x245CC9F60](v121, -1, -1);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    else
    {

      v29 = *(v24 + 8);
      v29(v22, v23);
    }

    *(v0 + 832) = v29;
    v45 = *(v0 + 296);
    v46 = sub_2408D3EB0();
    *(v0 + 840) = v46;
    v47 = *(v46 + 16);
    *(v0 + 848) = v47;
    if (v47)
    {
      v48 = *(v0 + 208);
      v49 = *(v0 + 216);
      v50 = *(v49 + 16);
      v49 += 16;
      v51 = *(v49 + 64);
      *(v0 + 928) = v51;
      v52 = (v51 + 32) & ~v51;
      *(v0 + 856) = *(v49 + 56);
      *(v0 + 864) = v50;
      *(v0 + 888) = 0;
      v53 = *(v0 + 232);
      *(v0 + 896) = v49 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50(v53, v46 + v52, v48);
      v54 = swift_task_alloc();
      *(v0 + 904) = v54;
      *v54 = v0;
      v54[1] = sub_24084D8DC;
      v55 = *(v0 + 664);
      v56 = *(v0 + 232);
      v57 = *(v0 + 200);

      return sub_240856D54(v56, v55);
    }

    else
    {

      v77 = *(v0 + 552);
      v78 = sub_2408D4B10();
      v79 = sub_2408D4F20();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_2407CF000, v78, v79, "Generating new symptom report for connected device", v80, 2u);
        MEMORY[0x245CC9F60](v80, -1, -1);
      }

      v120 = *(v0 + 712);
      v124 = *(v0 + 720);
      v81 = *(v0 + 920);
      v82 = *(v0 + 704);
      v83 = *(v0 + 696);
      v84 = *(v0 + 512);
      v85 = *(v0 + 352);
      v86 = *(v0 + 336);
      v87 = *(v0 + 320);
      v88 = *(v0 + 304);

      sub_2408D38F0();
      v89 = sub_2408D38B0();
      v91 = v90;
      v83(v87, v88);
      *v85 = v89;
      v85[1] = v91;
      v120(v85, v81, v86);
      v92 = *(MEMORY[0x277CED570] + 4);
      v125 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
      v93 = swift_task_alloc();
      *(v0 + 872) = v93;
      *v93 = v0;
      v93[1] = sub_24084C9A0;
      v94 = *(v0 + 736);
      v95 = *(v0 + 664);
      v96 = *(v0 + 408);
      v97 = *(v0 + 352);
      v98 = *(v0 + 336);

      return v125(v96, v97, v98, v94);
    }
  }

  else
  {
    v31 = *(v0 + 432);
    v32 = *(v0 + 416);
    v33 = *(v0 + 368);
    v122 = *(*(v0 + 376) + 8);
    v122(*(v0 + 424), v33);
    v5(v32, v31, v33);
    v34 = sub_2408D4B10();
    v35 = sub_2408D4F30();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 416);
    if (v36)
    {
      v38 = *(v0 + 384);
      v39 = *(v0 + 368);
      v40 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v126[0] = v119;
      *v40 = 136315138;
      v5(v38, v37, v39);
      v41 = sub_2408D4D40();
      v43 = v42;
      v122(v37, v39);
      v44 = sub_2408CC504(v41, v43, v126);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2407CF000, v34, v35, "Did not receive symptom report: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v119);
      MEMORY[0x245CC9F60](v119, -1, -1);
      MEMORY[0x245CC9F60](v40, -1, -1);
    }

    else
    {
      v59 = *(v0 + 368);

      v122(v37, v59);
    }

    v60 = *(v0 + 592);
    v61 = *(v0 + 504);
    v115 = *(v0 + 512);
    v117 = *(v0 + 528);
    v62 = *(v0 + 472);
    v111 = *(v0 + 480);
    v113 = *(v0 + 496);
    v107 = *(v0 + 664);
    v109 = *(v0 + 464);
    v63 = *(v0 + 432);
    v64 = *(v0 + 368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v65 = xmmword_2408D7CE0;
    *(v65 + 16) = 2;
    swift_willThrow();

    v122(v63, v64);
    (*(v62 + 8))(v111, v109);
    (*(v61 + 8))(v115, v113);
    sub_2407D9440(v117, &unk_27E506A20, &unk_2408D67F0);
    v66 = *(v0 + 528);
    v67 = *(v0 + 520);
    v68 = *(v0 + 512);
    v69 = *(v0 + 480);
    v70 = *(v0 + 488);
    v71 = *(v0 + 456);
    v73 = *(v0 + 424);
    v72 = *(v0 + 432);
    v75 = *(v0 + 408);
    v74 = *(v0 + 416);
    v99 = *(v0 + 400);
    v100 = *(v0 + 392);
    v101 = *(v0 + 384);
    v102 = *(v0 + 360);
    v103 = *(v0 + 352);
    v104 = *(v0 + 328);
    v105 = *(v0 + 320);
    v106 = *(v0 + 296);
    v108 = *(v0 + 288);
    v110 = *(v0 + 280);
    v112 = *(v0 + 272);
    v114 = *(v0 + 264);
    v116 = *(v0 + 240);
    v118 = *(v0 + 232);
    v123 = *(v0 + 224);

    v76 = *(v0 + 8);

    return v76();
  }
}

uint64_t sub_24084C788()
{
  v1 = v0[83];
  v2 = v0[74];
  v3 = v0[66];
  v5 = v0[63];
  v4 = v0[64];
  v6 = v0[62];
  v8 = v0[59];
  v7 = v0[60];
  v9 = v0[58];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  sub_2407D9440(v3, &unk_27E506A20, &unk_2408D67F0);
  v37 = v0[93];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[64];
  v13 = v0[60];
  v14 = v0[61];
  v15 = v0[57];
  v17 = v0[53];
  v16 = v0[54];
  v19 = v0[51];
  v18 = v0[52];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[48];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[33];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[28];

  v20 = v0[1];

  return v20();
}

uint64_t sub_24084C9A0()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(*v1 + 880) = v0;

  v5 = *(v2 + 200);
  if (v0)
  {
    v6 = sub_24084D674;
  }

  else
  {
    v6 = sub_24084CACC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084CACC()
{
  v170 = v0;
  v1 = *(v0 + 924);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 400);
  v6 = *(v0 + 368);
  (*(v0 + 752))(v5, *(v0 + 408), v6);
  if (v3(v5, v6) == v1)
  {
    v7 = *(v0 + 824);
    v8 = *(v0 + 816);
    v9 = *(v0 + 808);
    v10 = *(v0 + 800);
    v11 = *(v0 + 792);
    v12 = *(v0 + 552);
    v13 = *(v0 + 400);
    v15 = *(v0 + 272);
    v14 = *(v0 + 280);
    v16 = *(v0 + 248);
    (*(v0 + 784))(v13, *(v0 + 368));
    v10(v14, v13, v16);
    v8(v15, v14, v16);
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F20();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 832);
    v21 = *(v0 + 272);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    if (v19)
    {
      v164 = *(v0 + 832);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v169[0] = v25;
      *v24 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610]);
      v26 = sub_2408D5220();
      v28 = v27;
      v164(v21, v22);
      v29 = sub_2408CC504(v26, v28, v169);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2407CF000, v17, v18, "Received new symptom report: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x245CC9F60](v25, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    else
    {

      v20(v21, v22);
    }

    v48 = *(v0 + 296);
    v49 = *(v0 + 280);
    v50 = sub_2408D3E70();
    v51 = sub_2408D3E70();
    if (*(v51 + 16) <= *(v50 + 16) >> 3)
    {
      v169[0] = v50;
      sub_24086C360(v51);
    }

    else
    {
      sub_24086C694(v51, v50);
    }

    v71 = *(v0 + 824);
    v72 = *(v0 + 816);
    v161 = *(v0 + 552);
    v73 = *(v0 + 280);
    v74 = *(v0 + 256);
    v157 = *(v0 + 264);
    v76 = *(v0 + 240);
    v75 = *(v0 + 248);
    v77 = *(v0 + 176);
    sub_2408D3EA0();
    v72(v76, v73, v75);
    (*(v74 + 56))(v76, 0, 1, v75);
    sub_2408D3C60();
    v72(v157, v73, v75);
    v78 = sub_2408D4B10();
    v121 = sub_2408D4F10();
    v79 = os_log_type_enabled(v78, v121);
    v149 = *(v0 + 832);
    v129 = *(v0 + 592);
    v80 = *(v0 + 528);
    v81 = *(v0 + 504);
    v82 = *(v0 + 512);
    v167 = *(v0 + 496);
    v158 = *(v0 + 480);
    v162 = *(v0 + 472);
    v153 = *(v0 + 464);
    v83 = *(v0 + 376);
    v141 = *(v0 + 368);
    v145 = *(v0 + 432);
    v133 = *(v0 + 408);
    v137 = *(v0 + 296);
    v125 = *(v0 + 280);
    v85 = *(v0 + 256);
    v84 = *(v0 + 264);
    v86 = *(v0 + 248);
    if (v79)
    {
      v113 = *(v0 + 664);
      v87 = swift_slowAlloc();
      v117 = v80;
      v88 = swift_slowAlloc();
      v169[0] = v88;
      *v87 = 136315138;
      sub_2408763D8(&qword_27E5074B8, 255, MEMORY[0x277CED610]);
      v108 = v81;
      v110 = v82;
      v89 = sub_2408D5220();
      v91 = v90;
      v149(v84, v86);
      v92 = sub_2408CC504(v89, v91, v169);

      *(v87 + 4) = v92;
      _os_log_impl(&dword_2407CF000, v78, v121, "Successfully generated new symptom report: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v88);
      MEMORY[0x245CC9F60](v88, -1, -1);
      MEMORY[0x245CC9F60](v87, -1, -1);

      v149(v125, v86);
      v93 = *(v83 + 8);
      v93(v133, v141);
      v149(v137, v86);
      v93(v145, v141);
      (*(v162 + 8))(v158, v153);
      (*(v108 + 8))(v110, v167);
      v94 = v117;
    }

    else
    {

      v149(v84, v86);
      v149(v125, v86);
      v95 = *(v83 + 8);
      v95(v133, v141);
      v149(v137, v86);
      v95(v145, v141);
      (*(v162 + 8))(v158, v153);
      (*(v81 + 8))(v82, v167);
      v94 = v80;
    }

    sub_2407D9440(v94, &unk_27E506A20, &unk_2408D67F0);
    v96 = *(v0 + 528);
    v97 = *(v0 + 520);
    v98 = *(v0 + 512);
    v100 = *(v0 + 480);
    v99 = *(v0 + 488);
    v101 = *(v0 + 456);
    v103 = *(v0 + 424);
    v102 = *(v0 + 432);
    v105 = *(v0 + 408);
    v104 = *(v0 + 416);
    v111 = *(v0 + 400);
    v114 = *(v0 + 392);
    v118 = *(v0 + 384);
    v122 = *(v0 + 360);
    v126 = *(v0 + 352);
    v130 = *(v0 + 328);
    v134 = *(v0 + 320);
    v138 = *(v0 + 296);
    v142 = *(v0 + 288);
    v146 = *(v0 + 280);
    v150 = *(v0 + 272);
    v154 = *(v0 + 264);
    v159 = *(v0 + 240);
    v163 = *(v0 + 232);
    v168 = *(v0 + 224);

    v70 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 760);
    v31 = *(v0 + 752);
    v32 = *(v0 + 552);
    v33 = *(v0 + 408);
    v34 = *(v0 + 392);
    v35 = *(v0 + 368);
    v165 = *(*(v0 + 376) + 8);
    v165(*(v0 + 400), v35);
    v31(v34, v33, v35);
    v36 = sub_2408D4B10();
    v37 = sub_2408D4F30();
    if (os_log_type_enabled(v36, v37))
    {
      v160 = *(v0 + 760);
      v38 = *(v0 + 752);
      v40 = *(v0 + 384);
      v39 = *(v0 + 392);
      v41 = *(v0 + 368);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v169[0] = v43;
      *v42 = 136315138;
      v38(v40, v39, v41);
      v44 = sub_2408D4D40();
      v46 = v45;
      v165(v39, v41);
      v47 = sub_2408CC504(v44, v46, v169);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2407CF000, v36, v37, "Repair failed due to unexpected generate symptom report received: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x245CC9F60](v43, -1, -1);
      MEMORY[0x245CC9F60](v42, -1, -1);
    }

    else
    {
      v52 = *(v0 + 392);
      v53 = *(v0 + 368);

      v165(v52, v53);
    }

    v54 = *(v0 + 592);
    v55 = *(v0 + 504);
    v151 = *(v0 + 512);
    v155 = *(v0 + 528);
    v56 = *(v0 + 472);
    v143 = *(v0 + 480);
    v147 = *(v0 + 496);
    v135 = *(v0 + 832);
    v139 = *(v0 + 464);
    v127 = *(v0 + 664);
    v131 = *(v0 + 432);
    v57 = *(v0 + 408);
    v58 = *(v0 + 368);
    v115 = *(v0 + 256);
    v119 = *(v0 + 248);
    v123 = *(v0 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v59 = xmmword_2408D7CE0;
    *(v59 + 16) = 2;
    swift_willThrow();

    v165(v57, v58);
    v135(v123, v119);
    v165(v131, v58);
    (*(v56 + 8))(v143, v139);
    (*(v55 + 8))(v151, v147);
    sub_2407D9440(v155, &unk_27E506A20, &unk_2408D67F0);
    v60 = *(v0 + 528);
    v61 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = *(v0 + 480);
    v64 = *(v0 + 488);
    v65 = *(v0 + 456);
    v67 = *(v0 + 424);
    v66 = *(v0 + 432);
    v69 = *(v0 + 408);
    v68 = *(v0 + 416);
    v107 = *(v0 + 400);
    v109 = *(v0 + 392);
    v112 = *(v0 + 384);
    v116 = *(v0 + 360);
    v120 = *(v0 + 352);
    v124 = *(v0 + 328);
    v128 = *(v0 + 320);
    v132 = *(v0 + 296);
    v136 = *(v0 + 288);
    v140 = *(v0 + 280);
    v144 = *(v0 + 272);
    v148 = *(v0 + 264);
    v152 = *(v0 + 240);
    v156 = *(v0 + 232);
    v166 = *(v0 + 224);

    v70 = *(v0 + 8);
  }

  return v70();
}

uint64_t sub_24084D674()
{
  v33 = v0[104];
  v1 = v0[83];
  v2 = v0[74];
  v3 = v0[63];
  v41 = v0[64];
  v43 = v0[66];
  v39 = v0[62];
  v4 = v0[59];
  v35 = v0[58];
  v37 = v0[60];
  v5 = v0[54];
  v7 = v0[46];
  v6 = v0[47];
  v8 = v0[37];
  v9 = v0[31];
  v10 = v0[32];

  v33(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v37, v35);
  (*(v3 + 8))(v41, v39);
  sub_2407D9440(v43, &unk_27E506A20, &unk_2408D67F0);
  v44 = v0[110];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = v0[60];
  v15 = v0[61];
  v16 = v0[57];
  v18 = v0[53];
  v17 = v0[54];
  v20 = v0[51];
  v19 = v0[52];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[48];
  v26 = v0[45];
  v27 = v0[44];
  v28 = v0[41];
  v29 = v0[40];
  v30 = v0[37];
  v31 = v0[36];
  v32 = v0[35];
  v34 = v0[34];
  v36 = v0[33];
  v38 = v0[30];
  v40 = v0[29];
  v42 = v0[28];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24084D8DC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 904);
  v6 = *v2;
  *(v4 + 933) = a1;
  *(v4 + 912) = v1;

  v7 = *(v3 + 200);
  if (v1)
  {
    v8 = sub_24084DE7C;
  }

  else
  {
    v8 = sub_24084DA14;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24084DA14()
{
  v59 = v0;
  v1 = *(v0 + 896);
  v2 = *(v0 + 552);
  (*(v0 + 864))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v53 = *(v0 + 933);
    v5 = *(v0 + 224);
    v55 = *(v0 + 232);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136315394;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v10 = sub_2408D5220();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v5, v7);
    v14 = sub_2408CC504(v10, v12, &v58);

    *(v8 + 4) = v14;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v53;
    _os_log_impl(&dword_2407CF000, v3, v4, "Repaired symptom: %s with result: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    v13(v55, v7);
  }

  else
  {
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = *(v0 + 216);

    v19 = *(v18 + 8);
    v19(v16, v17);
    v19(v15, v17);
  }

  v20 = *(v0 + 888) + 1;
  if (v20 == *(v0 + 848))
  {
    v21 = *(v0 + 840);

    v22 = *(v0 + 552);
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F20();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2407CF000, v23, v24, "Generating new symptom report for connected device", v25, 2u);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    v54 = *(v0 + 712);
    v56 = *(v0 + 720);
    v26 = *(v0 + 920);
    v27 = *(v0 + 704);
    v28 = *(v0 + 696);
    v29 = *(v0 + 512);
    v30 = *(v0 + 352);
    v31 = *(v0 + 336);
    v32 = *(v0 + 320);
    v33 = *(v0 + 304);

    sub_2408D38F0();
    v34 = sub_2408D38B0();
    v36 = v35;
    v28(v32, v33);
    *v30 = v34;
    v30[1] = v36;
    v54(v30, v26, v31);
    v37 = *(MEMORY[0x277CED570] + 4);
    v57 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v38 = swift_task_alloc();
    *(v0 + 872) = v38;
    *v38 = v0;
    v38[1] = sub_24084C9A0;
    v39 = *(v0 + 736);
    v40 = *(v0 + 664);
    v41 = *(v0 + 408);
    v42 = *(v0 + 352);
    v43 = *(v0 + 336);

    return v57(v41, v42, v43, v39);
  }

  else
  {
    *(v0 + 888) = v20;
    v45 = *(v0 + 864);
    v46 = *(v0 + 232);
    v47 = *(v0 + 208);
    v48 = *(v0 + 840) + ((*(v0 + 928) + 32) & ~*(v0 + 928)) + *(v0 + 856) * v20;
    *(v0 + 896) = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v46, v48, v47);
    v49 = swift_task_alloc();
    *(v0 + 904) = v49;
    *v49 = v0;
    v49[1] = sub_24084D8DC;
    v50 = *(v0 + 664);
    v51 = *(v0 + 232);
    v52 = *(v0 + 200);

    return sub_240856D54(v51, v50);
  }
}

uint64_t sub_24084DE7C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 552);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 912);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v10 = (*(v0 + 216) + 8);
  if (v6)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to repair symptom: %@", v11, 0xCu);
    sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {
  }

  (*v10)(v8, v9);
  v15 = *(v0 + 888) + 1;
  if (v15 == *(v0 + 848))
  {
    v16 = *(v0 + 840);

    v17 = *(v0 + 552);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F20();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "Generating new symptom report for connected device", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v48 = *(v0 + 712);
    v49 = *(v0 + 720);
    v21 = *(v0 + 920);
    v22 = *(v0 + 704);
    v23 = *(v0 + 696);
    v24 = *(v0 + 512);
    v25 = *(v0 + 352);
    v26 = *(v0 + 336);
    v27 = *(v0 + 320);
    v28 = *(v0 + 304);

    sub_2408D38F0();
    v29 = sub_2408D38B0();
    v31 = v30;
    v23(v27, v28);
    *v25 = v29;
    v25[1] = v31;
    v48(v25, v21, v26);
    v32 = *(MEMORY[0x277CED570] + 4);
    v50 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
    v33 = swift_task_alloc();
    *(v0 + 872) = v33;
    *v33 = v0;
    v33[1] = sub_24084C9A0;
    v34 = *(v0 + 736);
    v35 = *(v0 + 664);
    v36 = *(v0 + 408);
    v37 = *(v0 + 352);
    v38 = *(v0 + 336);

    return v50(v36, v37, v38, v34);
  }

  else
  {
    *(v0 + 888) = v15;
    v40 = *(v0 + 864);
    v41 = *(v0 + 232);
    v42 = *(v0 + 208);
    v43 = *(v0 + 840) + ((*(v0 + 928) + 32) & ~*(v0 + 928)) + *(v0 + 856) * v15;
    *(v0 + 896) = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v41, v43, v42);
    v44 = swift_task_alloc();
    *(v0 + 904) = v44;
    *v44 = v0;
    v44[1] = sub_24084D8DC;
    v45 = *(v0 + 664);
    v46 = *(v0 + 232);
    v47 = *(v0 + 200);

    return sub_240856D54(v46, v45);
  }
}

uint64_t sub_24084E244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_2408D3C80();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();
  v9 = sub_2408D3500();
  v4[14] = v9;
  v10 = *(v9 - 8);
  v4[15] = v10;
  v11 = *(v10 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B0, &qword_2408D81C8) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = sub_2408D38D0();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v17 = sub_2408D3EC0();
  v4[26] = v17;
  v18 = *(v17 - 8);
  v4[27] = v18;
  v19 = *(v18 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v20 = sub_2408D3A30();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075B8, &unk_2408D81D0);
  v4[35] = v23;
  v24 = *(v23 - 8);
  v4[36] = v24;
  v25 = *(v24 + 64) + 15;
  v4[37] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C0, &qword_2408D90A0);
  v4[38] = v26;
  v27 = *(v26 - 8);
  v4[39] = v27;
  v28 = *(v27 + 64) + 15;
  v4[40] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900) - 8) + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24084E67C, v3, 0);
}

uint64_t sub_24084E67C()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[9];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  *(swift_task_alloc() + 16) = v2;
  (*(v4 + 104))(v3, *MEMORY[0x277D858A0], v5);
  sub_2408D4EC0();

  v8 = *(*v6 + 200);
  swift_beginAccess();
  sub_240876008(v2, v6 + v8, &qword_27E507328, &qword_2408D7900);
  swift_endAccess();
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  v0[42] = __swift_project_value_buffer(v9, qword_27E507280);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2407CF000, v10, v11, "Checking to see if we need to continue to repair", v12, 2u);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  v13 = *(MEMORY[0x277CED858] + 4);
  v18 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v14 = swift_task_alloc();
  v0[43] = v14;
  *v14 = v0;
  v14[1] = sub_24084E910;
  v15 = v0[34];
  v16 = v0[7];

  return v18(v15);
}

uint64_t sub_24084E910()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24084EA20, v2, 0);
}

uint64_t sub_24084EA20()
{
  v1 = *(v0[9] + 128);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = sub_24084EAC0;
  v3 = v0[34];
  v4 = v0[29];

  return sub_2407D5F4C(v4, v3);
}

uint64_t sub_24084EAC0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_24084F310;
  }

  else
  {
    v6 = sub_24084EBEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084EBEC()
{
  v87 = v0;
  v1 = v0[42];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  v79 = *(v0[27] + 16);
  v79(v0[28], v0[29], v0[26]);
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[30];
  v11 = v0[31];
  v80 = v10;
  v82 = v0[33];
  v12 = v0[27];
  v13 = v0[28];
  v14 = v0[26];
  if (v9)
  {
    v72 = v0[25];
    v73 = v0[23];
    v74 = v0[22];
    log = v7;
    v15 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v86[0] = v75;
    *v15 = 67109378;
    v16 = sub_2408D3E50() & 1;
    v17 = *(v12 + 8);
    v17(v13, v14);
    v18 = v17;
    *(v15 + 4) = v16;
    *(v15 + 8) = 2080;
    sub_2408D3A10();
    v19 = sub_2408D38B0();
    v21 = v20;
    (*(v73 + 8))(v72, v74);
    v22 = *(v11 + 8);
    v22(v82, v80);
    v23 = sub_2408CC504(v19, v21, v86);

    *(v15 + 10) = v23;
    _os_log_impl(&dword_2407CF000, log, v8, "Repairs needed: %{BOOL}d for altDSID: %s", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    MEMORY[0x245CC9F60](v75, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  else
  {
    v24 = *(v12 + 8);
    v24(v0[28], v0[26]);
    v18 = v24;

    v22 = *(v11 + 8);
    v22(v82, v80);
  }

  v0[46] = v18;
  v0[47] = v22;
  v25 = v0[29];
  v26 = sub_2408D3E50();
  v27 = v0[42];
  if (v26)
  {
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F20();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2407CF000, v28, v29, "Continuing to repair", v30, 2u);
      MEMORY[0x245CC9F60](v30, -1, -1);
    }

    v31 = v0[45];
    v32 = v0[34];
    v33 = v0[24];
    v34 = v0[21];
    v35 = v0[9];

    sub_2408D3A10();
    v36 = *(v35 + 160);
    sub_2408D3920();
    if (v31)
    {

      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    v65 = v0[29];
    v66 = v0[21];
    (*(v0[23] + 8))(v0[24], v0[22]);
    v67 = sub_2408D3970();
    (*(*(v67 - 8) + 56))(v66, v37, 1, v67);
    v68 = swift_task_alloc();
    v0[48] = v68;
    *(v68 + 16) = v65;
    *(v68 + 24) = v66;
    v69 = *(MEMORY[0x277CED860] + 4);
    v85 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v70 = swift_task_alloc();
    v0[49] = v70;
    *v70 = v0;
    v70[1] = sub_24084F4AC;
    v71 = v0[7];

    return v85();
  }

  else
  {
    v6(v0[32], v0[34], v0[30]);
    v38 = sub_2408D4B10();
    v39 = sub_2408D4F10();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[31];
    v42 = v0[32];
    v43 = v0[30];
    if (v40)
    {
      v44 = v0[25];
      v81 = v0[30];
      v46 = v0[22];
      v45 = v0[23];
      v76 = v0[31];
      v47 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v86[0] = v83;
      *v47 = 136315138;
      loga = v39;
      sub_2408D3A10();
      sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
      v48 = sub_2408D5220();
      v50 = v49;
      (*(v45 + 8))(v44, v46);
      v51 = v76 + 8;
      v22(v42, v81);
      v52 = sub_2408CC504(v48, v50, v86);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2407CF000, v38, loga, "No repairs are neeed for account: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x245CC9F60](v83, -1, -1);
      MEMORY[0x245CC9F60](v47, -1, -1);
    }

    else
    {

      v51 = v41 + 8;
      v22(v42, v43);
    }

    v0[55] = v51;
    v53 = v0[34];
    v54 = v0[29];
    v55 = v0[26];
    v56 = v0[27];
    v57 = v0[25];
    v58 = v0[22];
    v59 = v0[23];
    v60 = v0[10];
    v84 = v0[6];
    sub_2408D3A10();
    sub_2408D38B0();
    (*(v59 + 8))(v57, v58);
    v79(v60, v54, v55);
    (*(v56 + 56))(v60, 0, 1, v55);
    sub_2408D3C60();
    v61 = swift_task_alloc();
    v0[56] = v61;
    *v61 = v0;
    v61[1] = sub_24085089C;
    v62 = v0[9];
    v63 = v0[6];

    return sub_240850B6C(v63);
  }
}

uint64_t sub_24084F310()
{
  v1 = v0[39];
  (*(v0[31] + 8))(v0[34], v0[30]);
  v21 = v0[45];
  v2 = v0[41];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v12 = v0[25];
  v13 = v0[24];
  v14 = v0[21];
  v15 = v0[20];
  v16 = v0[19];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[16];
  v9 = v0[13];
  v20 = v0[10];
  (*(v1 + 8))(v0[40], v0[38]);
  sub_2407D9440(v2, &qword_27E507328, &qword_2408D7900);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24084F4AC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 72);

  if (v0)
  {
    v7 = sub_24084F7D8;
  }

  else
  {
    v7 = sub_24084F5F4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24084F5F4()
{
  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_24084F6AC;
  v2 = v0[34];
  v3 = v0[29];
  v4 = v0[20];
  v5 = v0[9];
  v6 = v0[7];

  return sub_240851228(v4, v6, v2, v3);
}

uint64_t sub_24084F6AC()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_24084FCA4;
  }

  else
  {
    v6 = sub_24084F9BC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24084F7D8()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 168);
  v6 = *(v0 + 248) + 8;
  (*(v0 + 376))(*(v0 + 272), *(v0 + 240));
  (*(v2 + 8))(v1, v3);
  sub_2407D9440(v5, &unk_27E506A20, &unk_2408D67F0);
  v26 = *(v0 + 400);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 296);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v14 = *(v0 + 80);
  (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
  sub_2407D9440(v7, &qword_27E507328, &qword_2408D7900);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24084F9BC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_2407D9440(v1, &qword_27E5075B0, &qword_2408D81C8);
    v4 = swift_task_alloc();
    *(v0 + 424) = v4;
    *v4 = v0;
    v4[1] = sub_240850388;
    v5 = *(v0 + 320);
    v6 = *(v0 + 272);
    v7 = *(v0 + 232);
    v8 = *(v0 + 104);
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);

    return sub_240851BC4(v8, v11, v6, v7, v9, v5);
  }

  else
  {
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    v15 = *(v0 + 304);
    v16 = *(v0 + 168);
    v17 = *(v0 + 48);
    v18 = *(v0 + 248) + 8;
    (*(v0 + 376))(*(v0 + 272), *(v0 + 240));
    (*(v14 + 8))(v13, v15);
    (*(v3 + 32))(v17, v1, v2);
    sub_2407D9440(v16, &unk_27E506A20, &unk_2408D67F0);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);
    v21 = *(v0 + 296);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 256);
    v25 = *(v0 + 224);
    v26 = *(v0 + 200);
    v30 = *(v0 + 192);
    v31 = *(v0 + 168);
    v32 = *(v0 + 160);
    v33 = *(v0 + 152);
    v34 = *(v0 + 144);
    v35 = *(v0 + 136);
    v27 = *(v0 + 128);
    v36 = *(v0 + 104);
    v37 = *(v0 + 80);
    v28 = (*(v0 + 216) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
    sub_2407D9440(v20, &qword_27E507328, &qword_2408D7900);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_24084FCA4()
{
  v1 = *(v0 + 416);
  *(v0 + 40) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 416);
  if ((v5 & 1) == 0)
  {
    v34 = *(v0 + 336);

    v35 = v6;
    v36 = sub_2408D4B10();
    v37 = sub_2408D4F30();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 416);
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v39;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_2407CF000, v36, v37, "Failed to setup as server (if needed) but will proceed if repair is needed: %@", v40, 0xCu);
      sub_2407D9440(v41, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v41, -1, -1);
      MEMORY[0x245CC9F60](v40, -1, -1);

LABEL_21:
      v58 = swift_task_alloc();
      *(v0 + 424) = v58;
      *v58 = v0;
      v58[1] = sub_240850388;
      v59 = *(v0 + 320);
      v60 = *(v0 + 272);
      v61 = *(v0 + 232);
      v62 = *(v0 + 104);
      v63 = *(v0 + 64);
      v64 = *(v0 + 72);
      v65 = *(v0 + 56);

      return sub_240851BC4(v62, v65, v60, v61, v63, v59);
    }

    v57 = v39;
LABEL_20:

    goto LABEL_21;
  }

  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);

  (*(v11 + 32))(v8, v7, v10);
  v12 = *(v11 + 16);
  v12(v9, v8, v10);
  v13 = (*(v11 + 88))(v9, v10);
  if (v13 != *MEMORY[0x277CED2D8] && v13 != *MEMORY[0x277CED270] && v13 != *MEMORY[0x277CED268])
  {
    v44 = *(v0 + 336);
    v12(*(v0 + 128), *(v0 + 144), *(v0 + 112));
    v45 = sub_2408D4B10();
    v46 = sub_2408D4F30();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 144);
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    v51 = *(v0 + 112);
    if (v47)
    {
      v81 = *(v0 + 144);
      v52 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v52 = 138412290;
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      v12(v53, v49, v51);
      v54 = _swift_stdlib_bridgeErrorToNSError();
      v55 = *(v50 + 8);
      v55(v49, v51);
      *(v52 + 4) = v54;
      *v80 = v54;
      _os_log_impl(&dword_2407CF000, v45, v46, "Failed to setup as server (if needed) but will proceed if repair is needed: %@", v52, 0xCu);
      sub_2407D9440(v80, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v80, -1, -1);
      MEMORY[0x245CC9F60](v52, -1, -1);

      v56 = v81;
    }

    else
    {

      v55 = *(v50 + 8);
      v55(v49, v51);
      v56 = v48;
    }

    v55(v56, v51);
    v55(*(v0 + 136), *(v0 + 112));
    v57 = *(v0 + 40);
    goto LABEL_20;
  }

  v16 = *(v0 + 312);
  v71 = *(v0 + 376);
  v73 = *(v0 + 304);
  v69 = *(v0 + 272);
  v18 = *(v0 + 240);
  v17 = *(v0 + 248);
  v78 = *(v0 + 216);
  v75 = *(v0 + 320);
  v77 = *(v0 + 168);
  v19 = *(v0 + 144);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
  swift_allocError();
  v12(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);
  v71(v69, v18);
  (*(v16 + 8))(v75, v73);

  sub_2407D9440(v77, &unk_27E506A20, &unk_2408D67F0);
  v23 = *(v0 + 200);
  v25 = *(v0 + 320);
  v24 = *(v0 + 328);
  v26 = *(v0 + 296);
  v28 = *(v0 + 264);
  v27 = *(v0 + 272);
  v29 = *(v0 + 256);
  v30 = *(v0 + 224);
  v66 = *(v0 + 192);
  v67 = *(v0 + 168);
  v68 = *(v0 + 160);
  v70 = *(v0 + 152);
  v72 = *(v0 + 144);
  v74 = *(v0 + 136);
  v76 = *(v0 + 128);
  v31 = *(v0 + 104);
  v79 = *(v0 + 80);
  (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
  sub_2407D9440(v24, &qword_27E507328, &qword_2408D7900);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_240850388()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2408506B8;
  }

  else
  {
    v6 = sub_2408504B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408504B4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 168);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 48);
  v9 = *(v0 + 248) + 8;
  (*(v0 + 376))(*(v0 + 272), *(v0 + 240));
  (*(v2 + 8))(v1, v3);
  (*(v6 + 32))(v8, v5, v7);
  sub_2407D9440(v4, &unk_27E506A20, &unk_2408D67F0);
  v10 = *(v0 + 320);
  v11 = *(v0 + 328);
  v12 = *(v0 + 296);
  v14 = *(v0 + 264);
  v13 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v22 = *(v0 + 192);
  v23 = *(v0 + 168);
  v24 = *(v0 + 160);
  v25 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = *(v0 + 136);
  v18 = *(v0 + 128);
  v28 = *(v0 + 104);
  v29 = *(v0 + 80);
  v19 = (*(v0 + 216) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
  sub_2407D9440(v11, &qword_27E507328, &qword_2408D7900);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2408506B8()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 168);
  v6 = *(v0 + 248) + 8;
  (*(v0 + 376))(*(v0 + 272), *(v0 + 240));
  (*(v2 + 8))(v1, v3);
  sub_2407D9440(v5, &unk_27E506A20, &unk_2408D67F0);
  v26 = *(v0 + 432);
  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 296);
  v11 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 256);
  v13 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v21 = *(v0 + 152);
  v22 = *(v0 + 144);
  v23 = *(v0 + 136);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v14 = *(v0 + 80);
  (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
  sub_2407D9440(v7, &qword_27E507328, &qword_2408D7900);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24085089C()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408509AC, v2, 0);
}

uint64_t sub_2408509AC()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  (*(v0 + 376))(*(v0 + 272), *(v0 + 240));
  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 296);
  v9 = *(v0 + 264);
  v8 = *(v0 + 272);
  v10 = *(v0 + 256);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v17 = *(v0 + 192);
  v18 = *(v0 + 168);
  v19 = *(v0 + 160);
  v20 = *(v0 + 152);
  v21 = *(v0 + 144);
  v22 = *(v0 + 136);
  v13 = *(v0 + 128);
  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v14 = (*(v0 + 216) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 368))(*(v0 + 232), *(v0 + 208));
  sub_2407D9440(v6, &qword_27E507328, &qword_2408D7900);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_240850B6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D38D0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D4400();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = sub_2408D3EC0();
  v2[11] = v10;
  v11 = *(v10 - 8);
  v2[12] = v11;
  v12 = *(v11 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240850D1C, v1, 0);
}

uint64_t sub_240850D1C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[2];
  sub_2408D3C40();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2407D9440(v0[10], &qword_27E506A98, &qword_2408D6828);
LABEL_6:
    v6 = v0[13];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[6];

    v10 = v0[1];

    return v10();
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  if (sub_2408D3E60() & 1) != 0 || (v5 = v0[13], (sub_2408D3E80()))
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
    goto LABEL_6;
  }

  v13 = v0[8];
  v12 = v0[9];
  v15 = v0[6];
  v14 = v0[7];
  v16 = v0[2];
  sub_2408D4420();
  v0[14] = sub_2408D4410();
  (*(v13 + 104))(v12, *MEMORY[0x277CEDA00], v14);
  sub_2408D3C70();
  v17 = *(MEMORY[0x277CEDA08] + 4);
  v21 = (*MEMORY[0x277CEDA08] + MEMORY[0x277CEDA08]);
  v18 = swift_task_alloc();
  v0[15] = v18;
  *v18 = v0;
  v18[1] = sub_240850F38;
  v19 = v0[9];
  v20 = v0[6];

  return v21(v19, v20);
}

uint64_t sub_240850F38()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;

  v5 = v2[14];
  v14 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  v9 = v2[5];
  v10 = v2[4];
  v11 = v2[3];
  if (v0)
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v14, v7);
    v12 = sub_240876444;
  }

  else
  {

    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v14, v7);
    v12 = sub_240851188;
  }

  return MEMORY[0x2822009F8](v12, v11, 0);
}

uint64_t sub_240851188()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240851228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v8 = sub_2408D3C80();
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[12] = v11;
  *v11 = v5;
  v11[1] = sub_24085136C;

  return sub_240853A54(a2, a4);
}

uint64_t sub_24085136C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 80);
    v7 = *(v4 + 88);
    v11 = v4 + 64;
    v9 = *(v4 + 64);
    v10 = *(v11 + 8);

    v12 = *(v6 + 8);

    return v12();
  }

  else
  {
    v14 = *(v4 + 40);
    *(v4 + 128) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2408514D8, v14, 0);
  }
}

uint64_t sub_2408514D8()
{
  if (*(v0 + 128) == 1)
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    *(v0 + 104) = __swift_project_value_buffer(v1, qword_27E507280);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F10();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Setup was performed, we are going to exit out", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(v0 + 40);

    v6 = *(v5 + 128);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_2408516C4;
    v8 = *(v0 + 88);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    return sub_2407D6730(v8, v9, v10);
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    (*(*(v0 + 56) + 56))(*(v0 + 16), 1, 1, *(v0 + 48));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_2408516C4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_240851B3C;
  }

  else
  {
    v6 = sub_2408517F0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408517F0()
{
  v37 = v0;
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];
  v5 = *(v0[7] + 16);
  v5(v0[10], v2, v4);
  v5(v3, v2, v4);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  if (v8)
  {
    v11 = v0[7];
    v35 = v7;
    v32 = v0[6];
    v33 = v0[8];
    v31 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v31 = 136315394;
    sub_2408D3C50();
    sub_2408D48A0();
    sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
    v12 = sub_2408D4EF0();
    v13 = v10;
    v15 = v14;

    v16 = *(v11 + 8);
    v16(v9, v32);
    v17 = sub_2408CC504(v12, v15, &v36);

    *(v31 + 4) = v17;
    *(v31 + 12) = 2080;
    v5(v33, v13, v32);
    v18 = sub_2408D4D40();
    v20 = v19;
    v16(v13, v32);
    v21 = sub_2408CC504(v18, v20, &v36);

    *(v31 + 14) = v21;
    _os_log_impl(&dword_2407CF000, v6, v35, "Finished repairing symptoms: %s with final report: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v34, -1, -1);
    MEMORY[0x245CC9F60](v31, -1, -1);
  }

  else
  {
    v23 = v0[6];
    v22 = v0[7];

    v24 = *(v22 + 8);
    v24(v10, v23);
    v24(v9, v23);
  }

  (*(v0[7] + 32))(v0[2], v0[11], v0[6]);
  v25 = v0[10];
  v26 = v0[11];
  v28 = v0[8];
  v27 = v0[9];
  (*(v0[7] + 56))(v0[2], 0, 1, v0[6]);

  v29 = v0[1];

  return v29();
}

uint64_t sub_240851B3C()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240851BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = sub_2408D3C80();
  v7[25] = v8;
  v9 = *(v8 - 8);
  v7[26] = v9;
  v10 = *(v9 + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C8, &qword_2408D81F8);
  v7[30] = v11;
  v12 = *(v11 - 8);
  v7[31] = v12;
  v13 = *(v12 + 64) + 15;
  v7[32] = swift_task_alloc();
  v14 = sub_2408D3D60();
  v7[33] = v14;
  v15 = *(v14 - 8);
  v7[34] = v15;
  v16 = *(v15 + 64) + 15;
  v7[35] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v7[36] = v17;
  v18 = *(v17 - 8);
  v7[37] = v18;
  v19 = *(v18 + 64) + 15;
  v7[38] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240851E0C, v6, 0);
}

uint64_t sub_240851E0C()
{
  v1 = v0[39];
  v2 = sub_2408D3630();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277CEDCB8] + 4);
  v4 = swift_task_alloc();
  v0[40] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  v0[41] = v5;
  v6 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
  *v4 = v0;
  v4[1] = sub_240851F88;
  v7 = v0[39];
  v8 = v0[19];

  return MEMORY[0x28213FC20](v7, sub_240811518, 0, sub_24081153C, 0, v5, v2, v6);
}

uint64_t sub_240851F88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v16 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v6 = v4[24];
    sub_2407D9440(v4[39], &qword_27E506A30, &qword_2408D6800);
    v7 = sub_240852800;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[41];
    v11 = v4[19];
    v4[43] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_240852120;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240852120()
{
  v1 = v0[43];
  v2 = v0[39];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v3 = sub_2408D4680();
  v0[44] = v3;

  sub_2407D9440(v2, &qword_27E506A30, &qword_2408D6800);
  v4 = swift_task_alloc();
  v0[45] = v4;
  *v4 = v0;
  v4[1] = sub_240852264;
  v5 = v0[38];
  v6 = v0[22];

  return sub_2408813B8(v5, v3);
}

uint64_t sub_240852264()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(*v1 + 368) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_24085273C;
  }

  else
  {
    v6 = sub_240852390;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240852390()
{
  v1 = v0[22];
  (*(v0[34] + 104))(v0[35], *MEMORY[0x277CED568], v0[33]);

  return MEMORY[0x2822009F8](sub_240852418, v1, 0);
}

uint64_t sub_240852418()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_2407D9440(v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v5 = swift_task_alloc();
  *(v0 + 376) = v5;
  *v5 = v0;
  v5[1] = sub_24085258C;
  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  v8 = *(v0 + 192);

  return sub_2408595AC(v7, v6, v0 + 56, 0);
}

uint64_t sub_24085258C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *(*v2 + 280);
  v7 = *(*v2 + 272);
  v8 = *(*v2 + 264);
  v9 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  (*(v7 + 8))(v6, v8);
  sub_2407D9440(v4 + 56, &qword_27E507FA0, &qword_2408D7FB0);
  v10 = *(v3 + 192);
  if (v1)
  {
    v11 = sub_240852C10;
  }

  else
  {
    v11 = sub_2408528BC;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_24085273C()
{
  v1 = v0[44];

  v2 = v0[46];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];

  v10 = v0[1];

  return v10();
}

uint64_t sub_240852800()
{
  v1 = v0[42];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[35];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];

  v9 = v0[1];

  return v9();
}

uint64_t sub_2408528BC()
{
  v30 = v0;
  v1 = v0[24];
  v2 = *(v1 + 200);
  *(v1 + 200) = v0[48];
  swift_retain_n();

  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v3 = v0[48];
  v4 = sub_2408D4B20();
  v0[50] = __swift_project_value_buffer(v4, qword_27E507280);

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F20();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[48];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v29 = v9;
    *v8 = 136315138;
    v0[17] = v7;
    sub_2408D3D80();

    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v29);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v5, v6, "Finished establishing router %s for repair", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  v13 = v0[48];
  v14 = v0[44];

  v15 = sub_2408D4B10();
  v16 = sub_2408D4F20();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[48];
    v18 = v0[44];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315394;
    v0[15] = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v21 = sub_2408D4D40();
    v23 = sub_2408CC504(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v0[16] = v17;
    sub_2408D3D80();

    v24 = sub_2408D4D40();
    v26 = sub_2408CC504(v24, v25, &v29);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_2407CF000, v15, v16, "Configuring remote base for external use with model: %s router: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  v27 = *(v0[24] + 136);
  v0[51] = v27;

  return MEMORY[0x2822009F8](sub_240852CF4, v27, 0);
}

uint64_t sub_240852C10()
{
  v1 = v0[44];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];

  (*(v3 + 8))(v2, v4);
  v5 = v0[49];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  v9 = v0[32];
  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[27];

  v13 = v0[1];

  return v13();
}

uint64_t sub_240852CF4()
{
  v1 = v0[51];
  v2 = v0[24];
  sub_240813A10(v0[44], v0[48]);

  return MEMORY[0x2822009F8](sub_240852D7C, v2, 0);
}

uint64_t sub_240852D7C()
{
  v1 = v0[32];
  v2 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075C0, &qword_2408D90A0);
  sub_2408D4EA0();
  v3 = sub_2407D917C(&qword_27E5075D0, &qword_27E507468, &qword_2408D7F10);
  v0[52] = v3;
  v4 = v0[24];
  v5 = *(MEMORY[0x277D858B8] + 4);
  v6 = swift_task_alloc();
  v0[53] = v6;
  *v6 = v0;
  v6[1] = sub_240852E90;
  v7 = v0[32];
  v8 = v0[30];

  return MEMORY[0x2822005A8](v0 + 57, v4, v3, v8, v0 + 14);
}

uint64_t sub_240852E90()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v7 = *v1;

  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_2408531E4;
  }

  else
  {
    v5 = sub_240852FA4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240852FA4()
{
  v23 = v0;
  if (*(v0 + 456))
  {
    v1 = *(v0 + 192);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    v2 = *(v1 + 128);
    v3 = swift_task_alloc();
    *(v0 + 432) = v3;
    *v3 = v0;
    v3[1] = sub_2408532F4;
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);

    return sub_2407D6730(v6, v4, v5);
  }

  else
  {
    v8 = *(v0 + 400);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      v13 = sub_2408D4D40();
      v15 = sub_2408CC504(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2407CF000, v9, v10, "Received report in stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x245CC9F60](v12, -1, -1);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v16 = *(v0 + 416);
    v17 = *(v0 + 192);
    v18 = *(MEMORY[0x277D858B8] + 4);
    v19 = swift_task_alloc();
    *(v0 + 424) = v19;
    *v19 = v0;
    v19[1] = sub_240852E90;
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);

    return MEMORY[0x2822005A8](v0 + 456, v17, v16, v21, v0 + 112);
  }
}

uint64_t sub_2408531E4()
{
  v1 = v0[48];
  v2 = v0[44];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];
  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = v0[14];
  v11 = v0[38];
  v10 = v0[39];
  v12 = v0[35];
  v13 = v0[32];
  v15 = v0[28];
  v14 = v0[29];
  v16 = v0[27];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2408532F4()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 192);
  if (v0)
  {
    v6 = sub_240853758;
  }

  else
  {
    v6 = sub_240853420;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240853420()
{
  v35 = v0;
  v1 = v0[50];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[18];
  v5 = *(v0[26] + 16);
  v5(v0[29], v4, v3);
  v5(v2, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[28];
  v9 = v0[29];
  if (v8)
  {
    v11 = v0[26];
    v33 = v7;
    v30 = v0[25];
    v31 = v0[27];
    v29 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v29 = 136315394;
    sub_2408D3C50();
    sub_2408D48A0();
    sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0]);
    v12 = sub_2408D4EF0();
    v13 = v10;
    v15 = v14;

    v16 = *(v11 + 8);
    v16(v9, v30);
    v17 = sub_2408CC504(v12, v15, &v34);

    *(v29 + 4) = v17;
    *(v29 + 12) = 2080;
    v5(v31, v13, v30);
    v18 = sub_2408D4D40();
    v20 = v19;
    v16(v13, v30);
    v21 = sub_2408CC504(v18, v20, &v34);

    *(v29 + 14) = v21;
    _os_log_impl(&dword_2407CF000, v6, v33, "Finished repairing symptoms: %s with final report: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  else
  {
    v23 = v0[25];
    v22 = v0[26];

    v24 = *(v22 + 8);
    v24(v10, v23);
    v24(v9, v23);
  }

  v25 = swift_task_alloc();
  v0[56] = v25;
  *v25 = v0;
  v25[1] = sub_240853848;
  v26 = v0[24];
  v27 = v0[18];

  return sub_240850B6C(v27);
}

uint64_t sub_240853758()
{
  v1 = v0[48];
  v2 = v0[44];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[36];

  (*(v4 + 8))(v3, v5);
  v6 = v0[55];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[35];
  v10 = v0[32];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];

  v14 = v0[1];

  return v14();
}

uint64_t sub_240853848()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240853958, v2, 0);
}

uint64_t sub_240853958()
{
  v1 = v0[48];
  v2 = v0[44];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  v7 = v0[35];
  v8 = v0[32];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];

  (*(v6 + 8))(v4, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_240853A54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_2408D3BA0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_2408D3AB0() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075D8, &qword_2408D8210) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_2408D3C20();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v16 = *(*(sub_2408D4660() - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = sub_2408D3EE0();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A98, &qword_2408D6828) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v21 = *(*(sub_2408D40F0() - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v22 = *(*(sub_2408D4090() - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v23 = sub_2408D4130();
  v3[27] = v23;
  v24 = *(v23 - 8);
  v3[28] = v24;
  v25 = *(v24 + 64) + 15;
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v26 = *(*(sub_2408D34E0() - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v27 = *(*(sub_2408D35F0() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v29 = sub_2408D3A60();
  v3[39] = v29;
  v30 = *(v29 - 8);
  v3[40] = v30;
  v31 = *(v30 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v32 = sub_2408D3A30();
  v3[44] = v32;
  v33 = *(v32 - 8);
  v3[45] = v33;
  v34 = *(v33 + 64) + 15;
  v3[46] = swift_task_alloc();
  v35 = sub_2408D3630();
  v3[47] = v35;
  v36 = *(v35 - 8);
  v3[48] = v36;
  v37 = *(v36 + 64) + 15;
  v3[49] = swift_task_alloc();
  v38 = sub_2408D4830();
  v3[50] = v38;
  v39 = *(v38 - 8);
  v3[51] = v39;
  v40 = *(v39 + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v41 = sub_2408D48A0();
  v3[54] = v41;
  v42 = *(v41 - 8);
  v3[55] = v42;
  v43 = *(v42 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240854118, v2, 0);
}

uint64_t sub_240854118()
{
  v1 = v0[3];
  v2 = sub_2408D3EB0();
  v71 = *(v2 + 16);
  if (v71)
  {
    v3 = 0;
    v4 = v0[55];
    v5 = v0[51];
    v6 = (v5 + 88);
    v74 = *MEMORY[0x277CEDD80];
    v67 = (v4 + 8);
    v7 = (v5 + 8);
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v8 = v0[53];
      v9 = v0[50];
      (*(v4 + 16))(v0[56], v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v0[54]);
      sub_2408D4840();
      v10 = *v6;
      if ((*v6)(v8, v9) == v74)
      {
        break;
      }

      v11 = v0[53];
      v12 = v0[50];
      ++v3;
      (*v67)(v0[56], v0[54]);
      (*v7)(v11, v12);
      if (v71 == v3)
      {
        goto LABEL_6;
      }
    }

    v29 = v0[57];
    v30 = v0[55];
    v70 = v0[54];
    v73 = v0[56];
    v32 = v0[52];
    v31 = v0[53];
    v33 = v0[50];

    v34 = *v7;
    (*v7)(v31, v33);
    (*(v30 + 32))(v29, v73, v70);
    sub_2408D4840();
    if (v10(v32, v33) != v74)
    {
      v44 = v0[52];
      v45 = v0[50];
      (*v67)(v0[57], v0[54]);
      v34(v44, v45);
      goto LABEL_7;
    }

    v35 = v0[52];
    (*(v0[51] + 96))(v35, v0[50]);
    v0[58] = *v35;
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v36 = sub_2408D4B20();
    v0[59] = __swift_project_value_buffer(v36, qword_27E507280);
    v37 = sub_2408D4B10();
    v38 = sub_2408D4F20();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2407CF000, v37, v38, "Calling remote base to start setup", v39, 2u);
      MEMORY[0x245CC9F60](v39, -1, -1);
    }

    v40 = *(MEMORY[0x277CED858] + 4);
    v76 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v41 = swift_task_alloc();
    v0[60] = v41;
    *v41 = v0;
    v41[1] = sub_240854718;
    v42 = v0[46];
    v43 = v0[2];

    return v76(v42);
  }

  else
  {
LABEL_6:

LABEL_7:
    if (qword_27E506930 != -1)
    {
LABEL_23:
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_27E507280);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F10();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "Determined that setup is not needed", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v18 = v0[56];
    v17 = v0[57];
    v20 = v0[52];
    v19 = v0[53];
    v21 = v0[49];
    v22 = v0[46];
    v24 = v0[42];
    v23 = v0[43];
    v25 = v0[41];
    v26 = v0[38];
    v46 = v0[37];
    v47 = v0[36];
    v48 = v0[35];
    v49 = v0[34];
    v50 = v0[33];
    v51 = v0[32];
    v52 = v0[31];
    v53 = v0[30];
    v54 = v0[29];
    v55 = v0[26];
    v56 = v0[25];
    v57 = v0[24];
    v58 = v0[23];
    v59 = v0[20];
    v60 = v0[19];
    v61 = v0[18];
    v62 = v0[17];
    v63 = v0[16];
    v64 = v0[13];
    v65 = v0[12];
    v66 = v0[11];
    v68 = v0[10];
    v69 = v0[9];
    v72 = v0[8];
    v75 = v0[5];

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_240854718()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240854828, v2, 0);
}

uint64_t sub_240854828()
{
  v50 = v0[58];
  v1 = v0[49];
  v2 = v0[46];
  v52 = v0[48];
  v53 = v0[47];
  v3 = v0[45];
  v27 = v0[44];
  v51 = v0[38];
  v48 = v0[37];
  v56 = v0[35];
  v57 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v24 = v0[32];
  v26 = v0[31];
  v28 = v0[30];
  v30 = v0[29];
  v6 = v0[27];
  v7 = v0[28];
  v54 = v0[26];
  v25 = v0[25];
  v29 = v0[24];
  v31 = v0[22];
  v32 = v0[23];
  v33 = v0[21];
  v55 = v0[20];
  v47 = v0[19];
  v36 = v0[18];
  v40 = v0[17];
  v42 = v0[16];
  v37 = v0[15];
  v38 = v0[14];
  v34 = v0[13];
  v35 = v0[12];
  v39 = v0[11];
  v41 = v0[10];
  v43 = v0[9];
  v44 = v0[7];
  v45 = v0[8];
  v46 = v0[6];
  v49 = v0[5];
  v8 = v0[4];
  sub_2408D39B0();
  (*(v3 + 8))(v2, v27);
  v0[61] = *(v8 + 136);
  sub_2408D3610();
  sub_2408D3580();
  sub_2408D3570();
  sub_2408D40A0();
  v9 = *(v7 + 8);
  v9(v5, v6);
  sub_2408D3570();
  sub_2408D4110();
  v9(v4, v6);
  sub_2408D3570();
  sub_2408D3FF0();
  v9(v24, v6);
  sub_2408D3570();
  sub_2408D4100();
  v9(v26, v6);
  sub_2408D3570();
  sub_2408D40D0();
  v9(v28, v6);
  v10 = sub_2408D3EC0();
  (*(*(v10 - 8) + 56))(v29, 1, 1, v10);
  sub_2408D3570();
  sub_2408D4070();
  v9(v30, v6);
  (*(v31 + 104))(v32, *MEMORY[0x277CED640], v33);
  sub_2408D4080();
  sub_2408D3520();
  v11 = sub_2408D3970();
  (*(*(v11 - 8) + 56))(v34, 1, 1, v11);
  v12 = sub_2408D3770();
  (*(*(v12 - 8) + 56))(v35, 1, 1, v12);
  sub_2408D3540();
  sub_2408D3AA0();
  v13 = *(v37 + 8);
  v13(v36, v38);
  sub_2408D3540();
  sub_2408D3B00();
  v13(v40, v38);
  sub_2408D3540();
  sub_2408D3AC0();
  v13(v42, v38);
  v14 = sub_2408D3A40();
  (*(*(v14 - 8) + 56))(v43, 1, 1, v14);
  (*(v44 + 104))(v45, *MEMORY[0x277CED4E8], v46);
  sub_2408D3BD0();
  v15 = sub_2408D3500();
  (*(*(v15 - 8) + 56))(v49, 1, 6, v15);
  sub_2408D3600();
  (*(v52 + 56))(v51, 0, 1, v53);
  v16 = *(MEMORY[0x277CEDCB8] + 4);
  v17 = swift_task_alloc();
  v0[62] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  v0[63] = v18;
  v19 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
  *v17 = v0;
  v17[1] = sub_240854EA8;
  v20 = v0[47];
  v21 = v0[38];
  v22 = v0[2];

  return MEMORY[0x28213FC20](v21, sub_240811518, 0, sub_24081153C, 0, v18, v20, v19);
}

uint64_t sub_240854EA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 496);
  v16 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {
    v6 = v4[4];
    sub_2407D9440(v4[38], &qword_27E506A30, &qword_2408D6800);
    v7 = sub_240855950;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[63];
    v11 = v4[2];
    v4[65] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_240855040;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240855040()
{
  v1 = v0[65];
  v2 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v3 = sub_2408D4680();
  v0[66] = v3;

  sub_2407D9440(v2, &qword_27E506A30, &qword_2408D6800);
  v4 = swift_task_alloc();
  v0[67] = v4;
  *v4 = v0;
  v4[1] = sub_240855188;
  v5 = v0[61];
  v6 = v0[43];

  return sub_240813C98(v6, v3);
}

uint64_t sub_240855188()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *(*v1 + 528);
  v5 = *v1;
  *(*v1 + 544) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_2408556F4;
  }

  else
  {
    v7 = sub_2408552D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2408552D0()
{
  v70 = v0;
  v1 = v0[59];
  v2 = *(v0[40] + 16);
  v2(v0[42], v0[43], v0[39]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[57];
  v7 = v0[55];
  v8 = v0[48];
  v65 = v0[49];
  v67 = v0[54];
  v9 = v0[42];
  v61 = v0[43];
  v63 = v0[47];
  if (v5)
  {
    v10 = v0[41];
    v53 = v0[40];
    v57 = v0[55];
    v11 = v0[39];
    v59 = v0[57];
    v12 = swift_slowAlloc();
    v55 = v4;
    v13 = swift_slowAlloc();
    v69 = v13;
    *v12 = 136315138;
    v2(v10, v9, v11);
    log = v3;
    v14 = v11;
    v15 = sub_2408D4D40();
    v17 = v16;
    v18 = *(v53 + 8);
    v18(v9, v14);
    v19 = sub_2408CC504(v15, v17, &v69);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2407CF000, log, v55, "Finished setup with report: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);

    v18(v61, v14);
    (*(v8 + 8))(v65, v63);
    (*(v57 + 8))(v59, v67);
  }

  else
  {
    v20 = v0[39];
    v21 = v0[40];

    v22 = *(v21 + 8);
    v22(v9, v20);
    v22(v61, v20);
    (*(v8 + 8))(v65, v63);
    (*(v7 + 8))(v6, v67);
  }

  v24 = v0[56];
  v23 = v0[57];
  v26 = v0[52];
  v25 = v0[53];
  v27 = v0[49];
  v28 = v0[46];
  v30 = v0[42];
  v29 = v0[43];
  v31 = v0[41];
  v32 = v0[38];
  v35 = v0[37];
  v36 = v0[36];
  v37 = v0[35];
  v38 = v0[34];
  v39 = v0[33];
  v40 = v0[32];
  v41 = v0[31];
  v42 = v0[30];
  v43 = v0[29];
  v44 = v0[26];
  v45 = v0[25];
  v46 = v0[24];
  v47 = v0[23];
  v48 = v0[20];
  v49 = v0[19];
  v50 = v0[18];
  loga = v0[17];
  v54 = v0[16];
  v56 = v0[13];
  v58 = v0[12];
  v60 = v0[11];
  v62 = v0[10];
  v64 = v0[9];
  v66 = v0[8];
  v68 = v0[5];

  v33 = v0[1];

  return v33(1);
}

uint64_t sub_2408556F4()
{
  v39 = v0[68];
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[46];
  v8 = v0[43];
  v11 = v0[42];
  v12 = v0[41];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[12];
  v34 = v0[11];
  v35 = v0[10];
  v36 = v0[9];
  v37 = v0[8];
  v38 = v0[5];
  (*(v0[48] + 8))(v0[49], v0[47]);
  (*(v3 + 8))(v1, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_240855950()
{
  v39 = v0[64];
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[46];
  v8 = v0[43];
  v11 = v0[42];
  v12 = v0[41];
  v13 = v0[38];
  v14 = v0[37];
  v15 = v0[36];
  v16 = v0[35];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[31];
  v21 = v0[30];
  v22 = v0[29];
  v23 = v0[26];
  v24 = v0[25];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[20];
  v28 = v0[19];
  v29 = v0[18];
  v30 = v0[17];
  v31 = v0[16];
  v32 = v0[13];
  v33 = v0[12];
  v34 = v0[11];
  v35 = v0[10];
  v36 = v0[9];
  v37 = v0[8];
  v38 = v0[5];
  (*(v0[48] + 8))(v0[49], v0[47]);
  (*(v3 + 8))(v1, v4);

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_240855BAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2408D3970();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_2408D4130();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_2408D3630();
  v2[12] = v10;
  v11 = *(v10 - 8);
  v2[13] = v11;
  v12 = *(v11 + 64) + 15;
  v2[14] = swift_task_alloc();
  v13 = sub_2408D3A30();
  v2[15] = v13;
  v14 = *(v13 - 8);
  v2[16] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v2[17] = v16;
  v17 = *(MEMORY[0x277CED858] + 4);
  v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v18 = swift_task_alloc();
  v2[18] = v18;
  *v18 = v2;
  v18[1] = sub_240855E1C;

  return v20(v16);
}

uint64_t sub_240855E1C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240855F2C, v2, 0);
}

uint64_t sub_240855F2C()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  sub_2408D39B0();
  sub_2408D3570();
  (*(v3 + 8))(v2, v4);
  LOBYTE(v1) = sub_2408D4070();
  (*(v7 + 8))(v5, v6);
  if (v1)
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E507280);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Asked to skip confirmation so not asking user", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[14];
    v13 = v0[11];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[4];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v17 = v0[1];

    return v17(1);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v18 = sub_2408D4B20();
    v0[19] = __swift_project_value_buffer(v18, qword_27E507280);
    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v19, v20, "Going ahead to ask user for confirmation", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    v22 = v0[8];

    v23 = [objc_opt_self() sharedInstance];
    sub_2408D37F0();
    v25 = v0[12];
    v26 = v0[13];
    v27 = v0[4];

    (*(v26 + 56))(v27, 1, 1, v25);
    v28 = *(MEMORY[0x277CEDCB8] + 4);
    v29 = swift_task_alloc();
    v0[20] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v0[21] = v30;
    v31 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
    *v29 = v0;
    v29[1] = sub_24085639C;
    v32 = v0[12];
    v33 = v0[4];
    v34 = v0[2];

    return MEMORY[0x28213FC20](v33, sub_240811518, 0, sub_24081153C, 0, v30, v32, v31);
  }
}

uint64_t sub_24085639C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v16 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v6 = v4[3];
    sub_2407D9440(v4[4], &qword_27E506A30, &qword_2408D6800);
    v7 = sub_240856924;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v10 = v4[21];
    v11 = v4[2];
    v4[23] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v12 = sub_2408D4E00();
    v14 = v13;
    v7 = sub_240856530;
    v8 = v12;
    v9 = v14;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_240856530()
{
  v1 = v0[23];
  v3 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v0[24] = sub_2408D4680();

  sub_2407D9440(v2, &qword_27E506A30, &qword_2408D6800);

  return MEMORY[0x2822009F8](sub_240856620, v3, 0);
}

uint64_t sub_240856620()
{
  v30 = v0;
  v1 = v0[19];
  v28 = *(v0[6] + 16);
  v28(v0[7], v0[8], v0[5]);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v8 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v26 = v3;
    v9 = sub_2408D5220();
    v11 = v10;
    v12 = *(v6 + 8);
    v13 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v5, v7);
    v14 = sub_2408CC504(v9, v11, &v29);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v2, v26, "Asking to confirm with account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x245CC9F60](v27, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {

    v12 = *(v6 + 8);
    v13 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v5, v7);
  }

  v0[25] = v12;
  v15 = v0[8];
  v16 = v0[5];
  v17 = v0[6];
  v18 = *(v0[3] + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
  v19 = *(v17 + 72);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2408D71B0;
  v28(v21 + v20, v15, v16);
  v22 = sub_240870BF0(v21);
  v0[26] = v22;
  swift_setDeallocating();
  v0[27] = v13;
  v12(v21 + v20, v16);
  swift_deallocClassInstance();
  v23 = swift_task_alloc();
  v0[28] = v23;
  *v23 = v0;
  v23[1] = sub_240856A0C;
  v24 = v0[24];

  return sub_240829748(v24, v22);
}

uint64_t sub_240856924()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v0[6] + 8))(v0[8], v0[5]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];
  v10 = v0[4];

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_240856A0C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *(*v2 + 208);
  v7 = *v2;
  *(v4 + 232) = v1;

  v8 = *(v4 + 24);
  if (v1)
  {
    v9 = sub_240856C5C;
  }

  else
  {
    *(v4 + 240) = a1 & 1;
    v9 = sub_240856B68;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_240856B68()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  v3(v4, v5);
  v6 = *(v0 + 240);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 32);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v12 = *(v0 + 8);

  return v12(v6);
}

uint64_t sub_240856C5C()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[8];
  v8 = v0[5];

  v3(v7, v8);
  (*(v5 + 8))(v4, v6);
  v9 = v0[29];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[11];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[4];

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_240856D54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D4830();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2408D38D0();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_2408D3970();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_2408D48A0();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240856F38, v2, 0);
}

uint64_t sub_240856F38()
{
  v84 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[2];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507280);
  v80 = *(v3 + 16);
  v80(v1, v4, v2);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[17];
  v11 = v0[14];
  v10 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v83[0] = v78;
    *v12 = 136315138;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v13 = sub_2408D5220();
    v15 = v14;
    v16 = v11;
    v17 = *(v10 + 8);
    v17(v9, v16);
    v18 = sub_2408CC504(v13, v15, v83);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v6, v7, "Attempting to repair symptom as client: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    MEMORY[0x245CC9F60](v78, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    v19 = v11;
    v17 = *(v10 + 8);
    v17(v9, v19);
  }

  v20 = v0[13];
  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v24 = v0[4];
  v25 = v0[2];
  sub_2408D4890();
  v26 = *(v24 + 160);
  sub_2408D3920();
  (*(v21 + 8))(v22, v23);
  v27 = v0[6];
  v28 = v0[7];
  v29 = v0[5];
  v30 = v0[2];
  sub_2408D4840();
  v31 = (*(v27 + 88))(v28, v29);
  if (v31 == *MEMORY[0x277CEDD80])
  {
    v32 = v0[7];
    (*(v0[6] + 96))(v32, v0[5]);
    v33 = *v32;

    v34 = sub_2408D4B10();
    v35 = sub_2408D4F10();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[12];
    v38 = v0[13];
    v39 = v0[11];
    if (v36)
    {
      v81 = v0[13];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v83[0] = v41;
      *v40 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
      v42 = sub_2408D4EF0();
      v44 = v43;

      v45 = sub_2408CC504(v42, v44, v83);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2407CF000, v34, v35, "Not repairing missing services symptom, this is expected for setup: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x245CC9F60](v41, -1, -1);
      MEMORY[0x245CC9F60](v40, -1, -1);

      (*(v37 + 8))(v81, v39);
    }

    else
    {

      (*(v37 + 8))(v38, v39);
    }

LABEL_14:
    v52 = v0[16];
    v51 = v0[17];
    v53 = v0[13];
    v54 = v0[10];
    v55 = v0[7];

    v56 = v0[1];

    return v56(0);
  }

  if (v31 == *MEMORY[0x277CEDDA8])
  {
    goto LABEL_10;
  }

  if (v31 != *MEMORY[0x277CEDD88])
  {
    if (v31 != *MEMORY[0x277CEDD90] && v31 != *MEMORY[0x277CEDDA0])
    {
      v80(v0[16], v0[2], v0[14]);
      v62 = sub_2408D4B10();
      v63 = sub_2408D4F40();
      v64 = os_log_type_enabled(v62, v63);
      v66 = v0[15];
      v65 = v0[16];
      v67 = v0[13];
      v68 = v0[14];
      v70 = v0[11];
      v69 = v0[12];
      if (v64)
      {
        v82 = v0[11];
        v71 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v83[0] = v79;
        *v71 = 136315138;
        sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
        v76 = v63;
        v72 = sub_2408D5220();
        v77 = v67;
        v74 = v73;
        v17(v65, v68);
        v75 = sub_2408CC504(v72, v74, v83);

        *(v71 + 4) = v75;
        _os_log_impl(&dword_2407CF000, v62, v76, "Asked to repair unexpected symptom kind: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v79);
        MEMORY[0x245CC9F60](v79, -1, -1);
        MEMORY[0x245CC9F60](v71, -1, -1);

        (*(v69 + 8))(v77, v82);
      }

      else
      {

        v17(v65, v68);
        (*(v69 + 8))(v67, v70);
      }

      (*(v0[6] + 8))(v0[7], v0[5]);
      goto LABEL_14;
    }

LABEL_10:
    v46 = swift_task_alloc();
    v0[20] = v46;
    *v46 = v0;
    v46[1] = sub_2408578C0;
    v47 = v0[13];
    v48 = v0[4];
    v49 = v0[2];

    return sub_2408739A0(v49, v47);
  }

  v57 = swift_task_alloc();
  v0[18] = v57;
  *v57 = v0;
  v57[1] = sub_240857780;
  v58 = v0[13];
  v59 = v0[3];
  v60 = v0[4];
  v61 = v0[2];

  return sub_2408580E0(v61, v58, v59);
}

uint64_t sub_240857780(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 152) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_240858024;
  }

  else
  {
    *(v4 + 201) = a1 & 1;
    v8 = sub_240857F64;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408578C0(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_240857D2C;
  }

  else
  {
    v8 = sub_2408579F8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408579F8()
{
  v1 = *(v0[4] + 208);
  v0[22] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277CED870] + 4);
    v13 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_240857BE4;

    return v13(sub_240811890, 0);
  }

  else
  {
    v5 = v0[12];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v6 = xmmword_2408D7CF0;
    *(v6 + 16) = 2;
    swift_willThrow();
    (*(v5 + 8))(v0[13], v0[11]);
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[13];
    v10 = v0[10];
    v11 = v0[7];

    v12 = v0[1];

    return v12(0);
  }
}

uint64_t sub_240857BE4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 192) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_240857EA8;
  }

  else
  {
    v7 = sub_240857DE8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240857D2C()
{
  v1 = v0[21];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_240857DE8()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 200);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_240857EA8()
{
  v1 = v0[24];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_240857F64()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 201);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_240858024()
{
  v1 = v0[19];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_2408580E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D38D0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D3970();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240858200, v3, 0);
}

uint64_t sub_240858200()
{
  v25 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E507280);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v14 = sub_2408D5220();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_2408CC504(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v6, v7, "Repairing CDP symptom for account: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[8];
  v19 = v0[3];
  sub_2408D38F0();
  v20 = swift_task_alloc();
  v0[12] = v20;
  *v20 = v0;
  v20[1] = sub_240858484;
  v21 = v0[8];
  v22 = v0[4];

  return sub_2407ED2BC(v21);
}

uint64_t sub_240858484()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[5];
    (*(v3[7] + 8))(v3[8], v3[6]);

    return MEMORY[0x2822009F8](sub_240858790, v4, 0);
  }

  else
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v3;
    v5[1] = sub_240858644;
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[3];
    v9 = v3[2];

    return sub_240858804(v9, v8, v6);
  }
}

uint64_t sub_240858644(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 88);
  v8 = *(v4 + 64);

  v9 = *(v6 + 8);
  if (v1)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1 & 1;
  }

  return v9(v10);
}

uint64_t sub_240858790()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_240858804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3D90();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D3DA0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v11 = sub_2408D3970();
  v4[15] = v11;
  v12 = *(v11 - 8);
  v4[16] = v12;
  v13 = *(v12 + 64) + 15;
  v4[17] = swift_task_alloc();
  v14 = sub_2408D48A0();
  v4[18] = v14;
  v15 = *(v14 - 8);
  v4[19] = v15;
  v16 = *(v15 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240858A0C, v3, 0);
}

uint64_t sub_240858A0C()
{
  v48 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v8 = v0[2];
  v7 = v0[3];
  v9 = sub_2408D4B20();
  v0[22] = __swift_project_value_buffer(v9, qword_27E507280);
  v10 = *(v3 + 16);
  v0[23] = v10;
  v0[24] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v45 = v10;
  v10(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[21];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[16];
  v18 = v0[17];
  v19 = v0[15];
  if (v13)
  {
    v43 = v12;
    v20 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v20 = 136315394;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v41 = v18;
    v21 = sub_2408D5220();
    v23 = v22;
    log = v11;
    v24 = *(v15 + 8);
    v24(v14, v16);
    v25 = sub_2408CC504(v21, v23, &v47);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v26 = sub_2408D5220();
    v28 = v27;
    (*(v17 + 8))(v41, v19);
    v29 = sub_2408CC504(v26, v28, &v47);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_2407CF000, log, v43, "Repairing symptom: %s for account: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v44, -1, -1);
    MEMORY[0x245CC9F60](v20, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v18, v19);
    v24 = *(v15 + 8);
    v24(v14, v16);
  }

  v0[25] = v24;
  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v45(v30, v0[2], v0[18]);
  (*(v31 + 104))(v30, *MEMORY[0x277CED5C0], v32);
  v33 = *(MEMORY[0x277CED570] + 4);
  v46 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);
  v34 = swift_task_alloc();
  v0[26] = v34;
  v35 = sub_2408763D8(&qword_27E5074A8, 255, MEMORY[0x277CED5E0]);
  *v34 = v0;
  v34[1] = sub_240858E44;
  v36 = v0[14];
  v37 = v0[8];
  v38 = v0[6];
  v39 = v0[4];

  return v46(v36, v37, v38, v35);
}

uint64_t sub_240858E44()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2408594E4;
  }

  else
  {
    v6 = sub_240858F70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240858F70()
{
  v77 = v0;
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = *(v3 + 16);
  v4(v1, v0[14], v2);
  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x277CED5E8])
  {
    v6 = v0[23];
    v5 = v0[24];
    v7 = v0[22];
    v8 = v0[20];
    v9 = v0[18];
    v10 = v0[13];
    v11 = v0[2];
    (*(v0[10] + 96))(v10, v0[9]);
    v12 = *v10;
    v6(v8, v11, v9);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    v15 = os_log_type_enabled(v13, v14);
    v74 = v0[25];
    v17 = v0[19];
    v16 = v0[20];
    v18 = v0[18];
    v19 = v0[14];
    v20 = v0[9];
    v21 = v0[10];
    if (v15)
    {
      v71 = v14;
      v22 = swift_slowAlloc();
      v72 = v12;
      v23 = swift_slowAlloc();
      v76[0] = v23;
      *v22 = 136315394;
      sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
      v69 = v20;
      v70 = v19;
      v24 = sub_2408D5220();
      v26 = v25;
      v74(v16, v18);
      v27 = sub_2408CC504(v24, v26, v76);

      *(v22 + 4) = v27;
      *(v22 + 12) = 1024;
      *(v22 + 14) = v72;
      _os_log_impl(&dword_2407CF000, v13, v71, "Successfully repaired symptom: %s: %{BOOL}d", v22, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v28 = v23;
      v12 = v72;
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);

      (*(v21 + 8))(v70, v69);
    }

    else
    {

      v74(v16, v18);
      (*(v21 + 8))(v19, v20);
    }

    v47 = v0[20];
    v46 = v0[21];
    v48 = v0[17];
    v50 = v0[13];
    v49 = v0[14];
    v52 = v0[11];
    v51 = v0[12];
    v53 = v0[8];

    v54 = v0[1];
    v55 = v12;
  }

  else
  {
    v29 = v0[22];
    v30 = v0[14];
    v31 = v0[12];
    v32 = v0[9];
    v33 = *(v0[10] + 8);
    v33(v0[13], v32);
    v4(v31, v30, v32);
    v34 = sub_2408D4B10();
    v35 = sub_2408D4F30();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[12];
    if (v36)
    {
      v38 = v0[11];
      v75 = v33;
      v39 = v0[9];
      v40 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76[0] = v73;
      *v40 = 136315138;
      v4(v38, v37, v39);
      v41 = sub_2408D4D40();
      v43 = v42;
      v44 = v39;
      v33 = v75;
      v75(v37, v44);
      v45 = sub_2408CC504(v41, v43, v76);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_2407CF000, v34, v35, "Repair failed due to unexpected repair response received: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x245CC9F60](v73, -1, -1);
      MEMORY[0x245CC9F60](v40, -1, -1);
    }

    else
    {
      v56 = v0[9];

      v33(v37, v56);
    }

    v57 = v0[14];
    v58 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v59 = xmmword_2408D7CE0;
    *(v59 + 16) = 2;
    swift_willThrow();
    v33(v57, v58);
    v61 = v0[20];
    v60 = v0[21];
    v62 = v0[17];
    v64 = v0[13];
    v63 = v0[14];
    v66 = v0[11];
    v65 = v0[12];
    v67 = v0[8];

    v54 = v0[1];
    v55 = 0;
  }

  return v54(v55);
}

uint64_t sub_2408594E4()
{
  v1 = v0[27];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2408595AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_2408D34E0();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = sub_2408D3A30();
  v5[14] = v12;
  v13 = *(v12 - 8);
  v5[15] = v13;
  v14 = *(v13 + 64) + 15;
  v5[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074F0, &qword_2408D8048) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v17 = sub_2408D3D60();
  v5[19] = v17;
  v18 = *(v17 - 8);
  v5[20] = v18;
  v19 = *(v18 + 64) + 15;
  v5[21] = swift_task_alloc();
  v20 = sub_2408D3630();
  v5[22] = v20;
  v21 = *(v20 - 8);
  v5[23] = v21;
  v22 = *(v21 + 64) + 15;
  v5[24] = swift_task_alloc();
  v23 = sub_2408D3C20();
  v5[25] = v23;
  v24 = *(v23 - 8);
  v5[26] = v24;
  v25 = *(v24 + 64) + 15;
  v5[27] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v27 = sub_2408D4760();
  v5[29] = v27;
  v28 = *(v27 - 8);
  v5[30] = v28;
  v29 = *(v28 + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24085995C, v4, 0);
}

uint64_t sub_24085995C()
{
  v1 = v0[31];
  v2 = v0[6];
  sub_2408D4750();
  v3 = *(v2 + 208);
  v0[32] = v3;
  if (v3)
  {
    (*(v0[23] + 56))(v0[28], 1, 1, v0[22]);
    v4 = *(MEMORY[0x277CEDCB8] + 4);

    v5 = swift_task_alloc();
    v0[33] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v0[34] = v6;
    v7 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
    *v5 = v0;
    v5[1] = sub_240859C34;
    v8 = v0[28];
    v9 = v0[22];

    return MEMORY[0x28213FC20](v8, sub_240811518, 0, sub_24081153C, 0, v6, v9, v7);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v10 = xmmword_2408D7CF0;
    *(v10 + 16) = 2;
    swift_willThrow();
    v11 = v0[28];
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[21];
    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    v18 = v0[12];
    v21 = v0[9];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_240859C34(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v18 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v6 = v4[32];
    v7 = v4[28];
    v8 = v4[6];
    sub_2407D9440(v7, &qword_27E506A30, &qword_2408D6800);

    v9 = sub_24085A99C;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = v4[34];
    v13 = v4[32];
    v4[36] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v14 = sub_2408D4E00();
    v16 = v15;
    v9 = sub_240859DD8;
    v10 = v14;
    v11 = v16;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_240859DD8()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v0[37] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E506A30, &qword_2408D6800);
  v4 = *(MEMORY[0x277CED858] + 4);
  v8 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_240859F28;
  v6 = v0[24];

  return v8(v6);
}

uint64_t sub_240859F28()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24085A024, 0, 0);
}

uint64_t sub_24085A024()
{
  v1 = v0[37];
  v2 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v9 = v0[6];
  sub_2408D3540();
  v10 = *(v8 + 8);
  v0[39] = v10;
  v0[40] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  sub_2408D4730();

  (*(v4 + 8))(v3, v6);

  return MEMORY[0x2822009F8](sub_24085A128, v9, 0);
}

uint64_t sub_24085A128()
{
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[20];
  v4 = v0[21];
  v14 = v0[31];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[5];
  v15 = v0[6];
  v9 = v0[2];
  sub_2408D3D80();
  (*(v3 + 16))(v4, v9, v6);
  v10 = sub_2408D38D0();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  (*(v1 + 16))(v7, v14, v2);
  (*(v1 + 56))(v7, 0, 1, v2);
  swift_allocObject();
  swift_weakInit();

  v0[41] = sub_2408D3D40();
  v0[42] = swift_allocObject();
  swift_weakInit();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);

  v12 = sub_2408D4E00();
  v0[43] = v12;
  v0[44] = v11;

  return MEMORY[0x2822009F8](sub_24085A368, v12, v11);
}

uint64_t sub_24085A368()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[6];
  sub_2408D3D00();

  return MEMORY[0x2822009F8](sub_24085A400, v3, 0);
}

uint64_t sub_24085A400()
{
  v1 = *(v0[6] + 208);
  v0[45] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277CED858] + 4);
    v18 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v3 = swift_task_alloc();
    v0[46] = v3;
    *v3 = v0;
    v3[1] = sub_24085A644;
    v4 = v0[16];

    return v18(v4);
  }

  else
  {
    v6 = v0[41];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v7 = xmmword_2408D7CF0;
    *(v7 + 16) = 2;
    swift_willThrow();

    v8 = v0[28];
    v9 = v0[27];
    v10 = v0[24];
    v11 = v0[21];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    v15 = v0[12];
    v17 = v0[9];
    (*(v0[30] + 8))(v0[31], v0[29]);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_24085A644()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24085A770, v3, 0);
}

uint64_t sub_24085A770()
{
  v21 = v0[39];
  v22 = v0[40];
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  sub_2408D39B0();
  (*(v4 + 8))(v3, v5);
  sub_2408D3580();
  v21(v1, v2);
  (*(v8 + 104))(v7, *MEMORY[0x277CED258], v9);
  LOBYTE(v3) = MEMORY[0x245CC7910](v6, v7);
  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v6, v9);
  if (v3)
  {
    v11 = v0[43];
    v12 = v0[44];

    return MEMORY[0x2822009F8](sub_24085AAB4, v11, v12);
  }

  else
  {
    (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
    v13 = *(MEMORY[0x277CED5A0] + 4);
    v23 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);
    v14 = swift_task_alloc();
    v0[47] = v14;
    v15 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80);
    *v14 = v0;
    v14[1] = sub_24085AC40;
    v16 = v0[41];
    v17 = v0[9];
    v18 = v0[7];
    v19 = v0[4];

    return v23(v17, v19, v18, v15);
  }
}

uint64_t sub_24085A99C()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[35];
  (*(v0[30] + 8))(v0[31], v0[29]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24085AAB4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 48);
  sub_2408D3D20();

  return MEMORY[0x2822009F8](sub_24085AB38, v2, 0);
}

uint64_t sub_24085AB38()
{
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v1 = *(MEMORY[0x277CED5A0] + 4);
  v9 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);
  v2 = swift_task_alloc();
  v0[47] = v2;
  v3 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80);
  *v2 = v0;
  v2[1] = sub_24085AC40;
  v4 = v0[41];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[4];

  return v9(v5, v7, v6, v3);
}

uint64_t sub_24085AC40()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  *(*v1 + 384) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24085AE80;
  }

  else
  {
    v6 = sub_24085AD6C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24085AD6C()
{
  v1 = v0[28];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[21];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v8 = v0[12];
  v12 = v0[9];
  (*(v0[30] + 8))(v0[31], v0[29]);

  v9 = v0[1];
  v10 = v0[41];

  return v9(v10);
}

uint64_t sub_24085AE80()
{
  v1 = v0[41];

  v2 = v0[28];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v9 = v0[13];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[48];
  (*(v0[30] + 8))(v0[31], v0[29]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24085AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_24085AFC4, 0, 0);
}

uint64_t sub_24085AFC4()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_24085B208;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    return sub_24085B56C(v6, v4, v5);
  }

  else
  {
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E507280);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "RemoteRepairService deallocated", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v12 = xmmword_2408D7D00;
    *(v12 + 16) = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24085B208()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_240876454;
  }

  else
  {
    v3 = sub_240876468;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24085B31C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_27E507280);
  v5 = sub_2408D4B10();
  v6 = sub_2408D4F20();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2407CF000, v5, v6, "Received router invalidation", v7, 2u);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Finishing repair stream continuation", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v13 = sub_2408D4E60();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v9;
    sub_24083AE60(0, 0, v3, &unk_2408D8068, v14);
  }

  return result;
}

uint64_t sub_24085B56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4B20();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D3D90();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_2408D4A40();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24085B6E8, v3, 0);
}

uint64_t sub_24085B6E8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CEDDF8])
  {
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[9];
    v7 = v0[10];
    (*(v0[13] + 96))(v4, v0[12]);
    (*(v7 + 32))(v5, v4, v6);
    v24 = sub_24085BE34;
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_24085B930;
    v9 = v0[11];
    v10 = v0[4];
    v11 = v0[5];
  }

  else
  {
    v12 = v0[8];
    sub_2408D4940();
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Routing to setup service from repair", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[5];
    v18 = v0[6];

    (*(v17 + 8))(v16, v18);
    v20 = *(v19 + 136);
    v24 = sub_24082C158;
    v21 = swift_task_alloc();
    v0[17] = v21;
    *v21 = v0;
    v21[1] = sub_24085BBD8;
    v9 = v0[3];
    v10 = v0[4];
  }

  v22 = v0[2];

  return v24(v22, v9, v10);
}

uint64_t sub_24085B930()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24085BB3C;
  }

  else
  {
    v6 = sub_24085BA5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24085BA5C()
{
  v1 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = *MEMORY[0x277CEDE20];
  v3 = sub_2408D4A50();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_24085BB3C()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24085BBD8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24085BD98;
  }

  else
  {
    v6 = sub_24085BD04;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24085BD04()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24085BD98()
{
  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24085BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v9 = sub_2408D3EC0();
  v4[20] = v9;
  v10 = *(v9 - 8);
  v4[21] = v10;
  v11 = *(v10 + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v12 = sub_2408D38D0();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v15 = sub_2408D3A30();
  v4[29] = v15;
  v16 = *(v15 - 8);
  v4[30] = v16;
  v17 = *(v16 + 64) + 15;
  v4[31] = swift_task_alloc();
  v18 = sub_2408D48A0();
  v4[32] = v18;
  v19 = *(v18 - 8);
  v4[33] = v19;
  v20 = *(v19 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v21 = sub_2408D3D90();
  v4[36] = v21;
  v22 = *(v21 - 8);
  v4[37] = v22;
  v23 = *(v22 + 64) + 15;
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24085C138, v3, 0);
}

uint64_t sub_24085C138()
{
  v96 = v0;
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  (*(v2 + 16))(v1, v0[13], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CED5C8])
  {
    v5 = v0[38];
    (*(v0[37] + 96))(v5, v0[36]);
    v6 = *v5;
    v0[39] = *v5;
    v7 = v5[1];
    v0[40] = v7;
    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    v0[41] = __swift_project_value_buffer(v8, qword_27E507280);

    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v95[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2408CC504(v6, v7, v95);
      _os_log_impl(&dword_2407CF000, v9, v10, "Received request to generate symptom report for alt dsid: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x245CC9F60](v12, -1, -1);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v13 = *(v0[15] + 208);
    v0[42] = v13;
    if (v13)
    {
      v14 = *(MEMORY[0x277CED858] + 4);
      v92 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

      v15 = swift_task_alloc();
      v0[43] = v15;
      *v15 = v0;
      v15[1] = sub_24085CB90;
      v16 = v0[31];

      return v92(v16);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v50 = xmmword_2408D7CF0;
    *(v50 + 16) = 2;
    swift_willThrow();
    goto LABEL_32;
  }

  if (v4 != *MEMORY[0x277CED5C0])
  {
    if (v4 == *MEMORY[0x277CED5D0])
    {
      if (qword_27E506930 != -1)
      {
        swift_once();
      }

      v39 = sub_2408D4B20();
      __swift_project_value_buffer(v39, qword_27E507280);
      v40 = sub_2408D4B10();
      v41 = sub_2408D4F20();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2407CF000, v40, v41, "Client told server the repair is finished", v42, 2u);
        MEMORY[0x245CC9F60](v42, -1, -1);
      }

      v43 = v0[19];
      v44 = v0[16];
      v45 = v0[17];
      v46 = v0[15];

      v47 = *(*v46 + 200);
      swift_beginAccess();
      sub_2407EEE04(v46 + v47, v43, &qword_27E507328, &qword_2408D7900);
      v48 = (*(v45 + 48))(v43, 1, v44);
      v49 = v0[19];
      if (v48)
      {
        sub_2407D9440(v0[19], &qword_27E507328, &qword_2408D7900);
      }

      else
      {
        v76 = v0[17];
        v75 = v0[18];
        v77 = v0[16];
        (*(v76 + 16))(v75, v0[19], v77);
        sub_2407D9440(v49, &qword_27E507328, &qword_2408D7900);
        v0[11] = 0;
        sub_2408D4E90();
        (*(v76 + 8))(v75, v77);
      }

      v78 = v0[12];
      v79 = *MEMORY[0x277CED5F8];
      v80 = sub_2408D3DA0();
      (*(*(v80 - 8) + 104))(v78, v79, v80);
      v81 = v0[38];
      v82 = v0[34];
      v83 = v0[35];
      v84 = v0[31];
      v86 = v0[27];
      v85 = v0[28];
      v87 = v0[26];
      v89 = v0[22];
      v88 = v0[23];
      v90 = v0[19];
      v94 = v0[18];

      v74 = v0[1];
      goto LABEL_35;
    }

    if (qword_27E506930 != -1)
    {
      swift_once();
    }

    v55 = sub_2408D4B20();
    __swift_project_value_buffer(v55, qword_27E507280);
    v56 = sub_2408D4B10();
    v57 = sub_2408D4F30();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2407CF000, v56, v57, "Received unknown repair request", v58, 2u);
      MEMORY[0x245CC9F60](v58, -1, -1);
    }

    v60 = v0[37];
    v59 = v0[38];
    v61 = v0[36];

    v62 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    swift_allocError();
    (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277CED450], v62);
    swift_willThrow();
    (*(v60 + 8))(v59, v61);
LABEL_32:
    v64 = v0[38];
    v66 = v0[34];
    v65 = v0[35];
    v67 = v0[31];
    v69 = v0[27];
    v68 = v0[28];
    v70 = v0[26];
    v72 = v0[22];
    v71 = v0[23];
    v73 = v0[19];
    v91 = v0[18];

    v74 = v0[1];
LABEL_35:

    return v74();
  }

  v18 = v0[38];
  v19 = v0[35];
  v20 = v0[32];
  v21 = v0[33];
  (*(v0[37] + 96))(v18, v0[36]);
  (*(v21 + 32))(v19, v18, v20);
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v22 = v0[34];
  v23 = v0[35];
  v24 = v0[32];
  v25 = v0[33];
  v26 = sub_2408D4B20();
  __swift_project_value_buffer(v26, qword_27E507280);
  (*(v25 + 16))(v22, v23, v24);
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F20();
  v29 = os_log_type_enabled(v27, v28);
  v31 = v0[33];
  v30 = v0[34];
  v32 = v0[32];
  if (v29)
  {
    v33 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v95[0] = v93;
    *v33 = 136315138;
    sub_2408763D8(&qword_27E506A38, 255, MEMORY[0x277CEDDC0]);
    v34 = sub_2408D5220();
    v36 = v35;
    v37 = *(v31 + 8);
    v37(v30, v32);
    v38 = sub_2408CC504(v34, v36, v95);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_2407CF000, v27, v28, "Received request to repair symptom: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x245CC9F60](v93, -1, -1);
    MEMORY[0x245CC9F60](v33, -1, -1);
  }

  else
  {

    v37 = *(v31 + 8);
    v37(v30, v32);
  }

  v0[52] = v37;
  v51 = swift_task_alloc();
  v0[53] = v51;
  *v51 = v0;
  v51[1] = sub_24085D5CC;
  v52 = v0[35];
  v53 = v0[14];
  v54 = v0[15];

  return sub_24085D97C(v52, v53);
}