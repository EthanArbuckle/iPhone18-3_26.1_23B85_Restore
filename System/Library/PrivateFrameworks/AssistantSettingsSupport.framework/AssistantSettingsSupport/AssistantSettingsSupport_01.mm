uint64_t sub_24140021C(char a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 40) = a1;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_24140029C, 0, 0);
}

uint64_t sub_24140029C()
{
  if (*(v0 + 40) == 1)
  {
    v1 = *(v0 + 16);
    sub_241402D00();
  }

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_241400340;
  v3 = *(v0 + 16);

  return sub_241400488();
}

uint64_t sub_241400340(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_241400488()
{
  v1[5] = v0;
  v2 = sub_24140E4AC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_24140E4DC();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = sub_24140E50C();
  v1[14] = v8;
  v9 = *(v8 - 8);
  v1[15] = v9;
  v10 = *(v9 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241400618, 0, 0);
}

uint64_t sub_241400618()
{
  v76 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[5];
  v5 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = (*(v2 + 88))(v1, v3);
  if (v6 == *MEMORY[0x277D0DFA8])
  {
    v7 = v0[16];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    (*(v0[15] + 96))(v7, v0[14]);
    (*(v10 + 32))(v8, v7, v9);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[7];
    v15 = sub_24140E72C();
    __swift_project_value_buffer(v15, qword_28120FD70);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_24140E70C();
    v17 = sub_24140ED6C();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = v73;
      *v22 = 136315394;
      *(v22 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v75);
      *(v22 + 12) = 2080;
      sub_2414087E8(&qword_27E542B80, MEMORY[0x277D0E058]);
      v23 = sub_24140EEFC();
      v25 = v24;
      v28 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v28;
      v28(v19, v21);
      v29 = sub_2413F10BC(v23, v25, &v75);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_2413B9000, v16, v17, "%s Availability Provider says GM is restricted: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v73, -1, -1);
      MEMORY[0x245CE6B00](v22, -1, -1);
    }

    else
    {

      v53 = *(v20 + 8);
      v27 = v20 + 8;
      v26 = v53;
      v53(v19, v21);
    }

    v0[21] = v27;
    v0[22] = v26;
    v54 = swift_task_alloc();
    v0[23] = v54;
    *v54 = v0;
    v54[1] = sub_241400FDC;
    v55 = v0[9];

    return sub_241407788(v55);
  }

  else if (v6 == *MEMORY[0x277D0DFB0])
  {
    v30 = v0[16];
    v31 = v0[13];
    v32 = v0[10];
    v33 = v0[11];
    (*(v0[15] + 96))(v30, v0[14]);
    (*(v33 + 32))(v31, v30, v32);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v34 = v0[12];
    v35 = v0[13];
    v36 = v0[10];
    v37 = v0[11];
    v38 = sub_24140E72C();
    __swift_project_value_buffer(v38, qword_28120FD70);
    (*(v37 + 16))(v34, v35, v36);
    v39 = sub_24140E70C();
    v40 = sub_24140ED6C();
    v41 = os_log_type_enabled(v39, v40);
    v43 = v0[11];
    v42 = v0[12];
    v44 = v0[10];
    if (v41)
    {
      v45 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = v74;
      *v45 = 136315394;
      *(v45 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v75);
      *(v45 + 12) = 2080;
      sub_2414087E8(&qword_28120FCF0, MEMORY[0x277D0E238]);
      v46 = sub_24140EEFC();
      v48 = v47;
      v51 = *(v43 + 8);
      v50 = v43 + 8;
      v49 = v51;
      v51(v42, v44);
      v52 = sub_2413F10BC(v46, v48, &v75);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_2413B9000, v39, v40, "%s Availability Provider says GM is unavailable: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v74, -1, -1);
      MEMORY[0x245CE6B00](v45, -1, -1);
    }

    else
    {

      v68 = *(v43 + 8);
      v50 = v43 + 8;
      v49 = v68;
      v68(v42, v44);
    }

    v0[17] = v50;
    v0[18] = v49;
    v69 = swift_task_alloc();
    v0[19] = v69;
    *v69 = v0;
    v69[1] = sub_241400E24;
    v70 = v0[13];
    v71 = v0[5];

    return sub_241402300(v70);
  }

  else if (v6 == *MEMORY[0x277D0E278])
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v57 = sub_24140E72C();
    __swift_project_value_buffer(v57, qword_28120FD70);
    v58 = sub_24140E70C();
    v59 = sub_24140ED6C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v75 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_2413F10BC(0x6174536863746566, 0xED00002928737574, &v75);
      _os_log_impl(&dword_2413B9000, v58, v59, "%s Availability Provider says GM is available.", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x245CE6B00](v61, -1, -1);
      MEMORY[0x245CE6B00](v60, -1, -1);
    }

    v62 = v0[16];
    v63 = v0[12];
    v64 = v0[13];
    v66 = v0[8];
    v65 = v0[9];

    v67 = v0[1];

    return v67(5);
  }

  else
  {
    v72 = v0[14];

    return MEMORY[0x2821FDEB8](v72, v72);
  }
}

uint64_t sub_241400E24(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_241400F24, 0, 0);
}

uint64_t sub_241400F24()
{
  v1 = *(v0 + 136);
  (*(v0 + 144))(*(v0 + 104), *(v0 + 80));
  v2 = *(v0 + 160);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_241400FDC(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_2414010DC, 0, 0);
}

uint64_t sub_2414010DC()
{
  v1 = *(v0 + 168);
  (*(v0 + 176))(*(v0 + 72), *(v0 + 48));
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_241401308(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2414088EC;

  return sub_241400488();
}

uint64_t sub_2414013B0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24140E4AC();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v6 = sub_24140E4DC();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = sub_24140E50C();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241401540, 0, 0);
}

uint64_t sub_241401540()
{
  v44 = v0;
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (!Strong)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v16 = sub_24140E72C();
    __swift_project_value_buffer(v16, qword_28120FD70);
    v17 = sub_24140E70C();
    v18 = sub_24140ED6C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v43);
      _os_log_impl(&dword_2413B9000, v17, v18, "%s Delegate is not set. Bailing.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CE6B00](v20, -1, -1);
      MEMORY[0x245CE6B00](v19, -1, -1);
    }

    goto LABEL_11;
  }

  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_241402D00();
  (*(v4 + 16))(v3, v7, v5);
  v8 = (*(v4 + 88))(v3, v5);
  if (v8 == *MEMORY[0x277D0DFA8])
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    (*(*(v0 + 128) + 96))(v9, *(v0 + 120));
    (*(v12 + 32))(v10, v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_241401ED8;
    v14 = *(v0 + 80);

    return sub_241407788(v14);
  }

  if (v8 == *MEMORY[0x277D0DFB0])
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    (*(*(v0 + 128) + 96))(v27, *(v0 + 120));
    (*(v30 + 32))(v28, v27, v29);
    v31 = swift_task_alloc();
    *(v0 + 152) = v31;
    *v31 = v0;
    v31[1] = sub_241401AB0;
    v32 = *(v0 + 112);
    v33 = *(v0 + 48);

    return sub_241402300(v32);
  }

  if (v8 == *MEMORY[0x277D0E278])
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v34 = sub_24140E72C();
    __swift_project_value_buffer(v34, qword_28120FD70);
    v35 = sub_24140E70C();
    v36 = sub_24140ED6C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v43);
      *(v37 + 12) = 2080;
      v39 = GMEligibilityContext.description.getter(5);
      v41 = sub_2413F10BC(v39, v40, &v43);

      *(v37 + 14) = v41;
      _os_log_impl(&dword_2413B9000, v35, v36, "%s Availability Provider says GM is available. Context: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v38, -1, -1);
      MEMORY[0x245CE6B00](v37, -1, -1);
    }

    [*(v0 + 144) updateWithContext_];
    swift_unknownObjectRelease();
LABEL_11:
    v21 = *(v0 + 136);
    v22 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 72);
    v24 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26();
  }

  v42 = *(v0 + 120);

  return MEMORY[0x2821FDEB8](v42, v42);
}

uint64_t sub_241401AB0(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_241401BB0, 0, 0);
}

uint64_t sub_241401BB0()
{
  v37 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 104);
    v34 = *(v0 + 160);
    v35 = *(v0 + 112);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v11 = 136315650;
    *(v11 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v36);
    *(v11 + 12) = 2080;
    sub_2414087E8(&qword_28120FCF0, MEMORY[0x277D0E238]);
    v32 = v9;
    v12 = sub_24140EEFC();
    v14 = v13;
    v15 = *(v10 + 8);
    v15(v8, v9);
    v16 = sub_2413F10BC(v12, v14, &v36);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = GMEligibilityContext.description.getter(v34);
    v19 = sub_2413F10BC(v17, v18, &v36);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Availability Provider says GM is unavailable: %s context: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v33, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);

    v15(v35, v9);
  }

  else
  {
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);

    v24 = *(v23 + 8);
    v24(v21, v22);
    v24(v20, v22);
  }

  [*(v0 + 144) updateWithContext_];
  swift_unknownObjectRelease();
  v25 = *(v0 + 136);
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_241401ED8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_241401FD8, 0, 0);
}

uint64_t sub_241401FD8()
{
  v37 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v34 = *(v0 + 176);
    v35 = *(v0 + 80);
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36 = v33;
    *v11 = 136315650;
    *(v11 + 4) = sub_2413F10BC(0xD000000000000015, 0x800000024141A750, &v36);
    *(v11 + 12) = 2080;
    sub_2414087E8(&qword_27E542B80, MEMORY[0x277D0E058]);
    v32 = v9;
    v12 = sub_24140EEFC();
    v14 = v13;
    v15 = *(v10 + 8);
    v15(v8, v9);
    v16 = sub_2413F10BC(v12, v14, &v36);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2080;
    v17 = GMEligibilityContext.description.getter(v34);
    v19 = sub_2413F10BC(v17, v18, &v36);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_2413B9000, v6, v7, "%s Availability Provider says GM is restricted: %s context: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v33, -1, -1);
    MEMORY[0x245CE6B00](v11, -1, -1);

    v15(v35, v9);
  }

  else
  {
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 56);
    v23 = *(v0 + 64);

    v24 = *(v23 + 8);
    v24(v21, v22);
    v24(v20, v22);
  }

  [*(v0 + 144) updateWithContext_];
  swift_unknownObjectRelease();
  v25 = *(v0 + 136);
  v26 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_241402300(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24140E4BC();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_24140E4DC();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24140241C, 0, 0);
}

uint64_t sub_24140241C()
{
  v81 = v0;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24140E70C();
  v7 = sub_24140ED6C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v80 = v78;
    *v13 = 136315138;
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]);
    v14 = sub_24140ED3C();
    v16 = v15;

    (*(v10 + 8))(v9, v11);
    v17 = sub_2413F10BC(v14, v16, &v80);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2413B9000, v6, v7, "Unavailability reasons: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x245CE6B00](v78, -1, -1);
    MEMORY[0x245CE6B00](v13, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  v21 = v0[2];
  v22 = sub_24140E4CC();
  v23 = *(v19 + 104);
  v23(v18, *MEMORY[0x277D0E110], v20);
  v24 = sub_2413FE81C(v18, v22);

  v25 = *(v19 + 8);
  v25(v18, v20);
  if (v24)
  {
    v26 = 18;
LABEL_25:
    v75 = v0[9];
    v76 = v0[6];

    v77 = v0[1];

    return v77(v26);
  }

  v27 = v0[6];
  v28 = v0[4];
  v29 = v0[2];
  v30 = sub_24140E4CC();
  v23(v27, *MEMORY[0x277D0E0B0], v28);
  v31 = sub_2413FE81C(v27, v30);

  v25(v27, v28);
  if (v31)
  {
    v26 = 19;
    goto LABEL_25;
  }

  v32 = v0[6];
  v33 = v0[4];
  v34 = v0[2];
  v35 = sub_24140E4CC();
  v23(v32, *MEMORY[0x277D0E130], v33);
  v36 = sub_2413FE81C(v32, v35);

  v25(v32, v33);
  if (v36)
  {
    v26 = 13;
    goto LABEL_25;
  }

  v37 = v0[4];
  v38 = v0[5];
  v39 = v0[2];
  v40 = sub_24140E4CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B90, &qword_2414137D0);
  v41 = *(v38 + 72);
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_241413020;
  v44 = v43 + v42;
  v23(v44, *MEMORY[0x277D0E1A0], v37);
  v23(v44 + v41, *MEMORY[0x277D0E120], v37);
  v45 = sub_241405F38(v43, v40);
  swift_setDeallocating();
  v46 = *(v43 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v47 = *(v45 + 16);

  if (v47)
  {
    v26 = 14;
    goto LABEL_25;
  }

  v48 = v0[6];
  v49 = v0[4];
  v50 = v0[2];
  v51 = sub_24140E4CC();
  v23(v48, *MEMORY[0x277D0E1B8], v49);
  v52 = sub_2413FE81C(v48, v51);

  v25(v48, v49);
  if (v52)
  {
    v26 = 15;
    goto LABEL_25;
  }

  v53 = v0[6];
  v54 = v0[4];
  v55 = v0[2];
  v56 = sub_24140E4CC();
  v23(v53, *MEMORY[0x277D0E1D0], v54);
  v57 = sub_2413FE81C(v53, v56);

  v25(v53, v54);
  if (v57)
  {
    v26 = 16;
    goto LABEL_25;
  }

  v58 = v0[6];
  v59 = v0[4];
  v60 = v0[2];
  v61 = sub_24140E4CC();
  v23(v58, *MEMORY[0x277D0E088], v59);
  v62 = sub_2413FE81C(v58, v61);

  v25(v58, v59);
  if (v62)
  {
    v26 = 17;
    goto LABEL_25;
  }

  v63 = v0[6];
  v64 = v0[4];
  v65 = v0[2];
  v66 = sub_24140E4CC();
  v23(v63, *MEMORY[0x277D0E0F8], v64);
  v67 = sub_2413FE81C(v63, v66);

  v25(v63, v64);
  if ((v67 & 1) == 0)
  {
    v26 = sub_24140701C(v0[2]);
    goto LABEL_25;
  }

  v68 = (v0[3] + OBJC_IVAR___GMSpecifierController_enrollmentProvider);
  v69 = v68[3];
  v70 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v71 = *(v70 + 16);
  v79 = (v71 + *v71);
  v72 = v71[1];
  v73 = swift_task_alloc();
  v0[10] = v73;
  *v73 = v0;
  v73[1] = sub_241402B78;

  return v79(v69, v70);
}

uint64_t sub_241402B78(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_241402C78, 0, 0);
}

uint64_t sub_241402C78()
{
  v1 = v0[11];
  v2 = sub_241406AA0(v0[2], v1);

  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5(v2);
}

void sub_241402D00()
{
  v1 = v0;
  v2 = sub_24140E50C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___GMSpecifierController_availability;
  swift_beginAccess();
  v27 = v3[2];
  v27(v6, &v0[v7], v2);
  v8 = sub_24140E4EC();
  v9 = v3[1];
  v9(v6, v2);
  if (v8)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v10 = sub_24140E72C();
    __swift_project_value_buffer(v10, qword_28120FD70);
    v26 = v1;
    v11 = sub_24140E70C();
    v12 = sub_24140ED6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25 = v9;
      v14 = v13;
      v24 = swift_slowAlloc();
      v28 = v24;
      *v14 = 136315394;
      *(v14 + 4) = sub_2413F10BC(0xD000000000000012, 0x800000024141A770, &v28);
      *(v14 + 12) = 1024;
      v27(v6, &v1[v7], v2);
      v15 = sub_24140E4EC();
      v25(v6, v2);
      *(v14 + 14) = v15 & 1;

      _os_log_impl(&dword_2413B9000, v11, v12, "%s Forcing download, isOkayToHaveAsset:%{BOOL}d.", v14, 0x12u);
      v16 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CE6B00](v16, -1, -1);
      MEMORY[0x245CE6B00](v14, -1, -1);
    }

    else
    {
    }

    type metadata accessor for GMDownloadUtility();
    swift_initStaticObject();
    sub_2413F1BF8();
  }

  else
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v17 = sub_24140E72C();
    __swift_project_value_buffer(v17, qword_28120FD70);
    v26 = v1;
    v18 = sub_24140E70C();
    v19 = sub_24140ED6C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = v9;
      v21 = v20;
      v24 = swift_slowAlloc();
      v28 = v24;
      *v21 = 136315394;
      *(v21 + 4) = sub_2413F10BC(0xD000000000000012, 0x800000024141A770, &v28);
      *(v21 + 12) = 1024;
      v27(v6, &v1[v7], v2);
      v22 = sub_24140E4EC();
      v25(v6, v2);
      *(v21 + 14) = v22 & 1;

      _os_log_impl(&dword_2413B9000, v18, v19, "%s skipping download, isOkayToHaveAsset:%{BOOL}d.", v21, 0x12u);
      v23 = v24;
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CE6B00](v23, -1, -1);
      MEMORY[0x245CE6B00](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_241403144()
{
  v1 = OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  sub_24140869C(v0 + v1, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  LOBYTE(v2) = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v2 & 1;
}

uint64_t sub_241403270(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___GMSpecifierController_optInStatusProvider;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 16))(a1, v4, v5);
  return swift_endAccess();
}

uint64_t sub_2414033E8()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_241403508;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B88, &qword_241413668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24140369C;
  v0[13] = &block_descriptor_1;
  v0[14] = v2;
  [v1 clearCFUWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241403508()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 144) = v2;
  if (v2)
  {
    v3 = sub_241403630;
  }

  else
  {
    v3 = sub_241403618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241403630()
{
  v1 = *(v0 + 144);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 144);

  return v2();
}

uint64_t sub_24140369C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2414038BC(const void *a1)
{
  *(v1 + 144) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_241403924, 0, 0);
}

uint64_t sub_241403924()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_241403A44;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B88, &qword_241413668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24140369C;
  v0[13] = &block_descriptor_46;
  v0[14] = v2;
  [v1 clearCFUWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241403A44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_241403BC8;
  }

  else
  {
    v3 = sub_241403B54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241403B54()
{
  (*(*(v0 + 144) + 16))();
  _Block_release(*(v0 + 144));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241403BC8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  swift_willThrow();
  v3 = sub_24140E1BC();

  (*(v1 + 16))(v1, v3);
  _Block_release(*(v0 + 144));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241403C68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v6 = sub_24140E72C();
  __swift_project_value_buffer(v6, qword_28120FD70);
  v7 = sub_24140E70C();
  v8 = sub_24140ED6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2413B9000, v7, v8, "Adding AFM Availability listeners", v9, 2u);
    MEMORY[0x245CE6B00](v9, -1, -1);
  }

  v10 = sub_24140ECDC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v12 = v1;
  sub_2413E7730(0, 0, v5, &unk_241413800, v11);
}

uint64_t sub_241403E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24140E50C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BB0, &qword_2414137F0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_24140E56C();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = sub_24140E5DC();
  v4[16] = v12;
  v13 = *(v12 - 8);
  v4[17] = v13;
  v14 = *(v13 + 64) + 15;
  v4[18] = swift_task_alloc();
  v15 = sub_24140E55C();
  v4[19] = v15;
  v16 = *(v15 - 8);
  v4[20] = v16;
  v17 = *(v16 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241404050, 0, 0);
}

uint64_t sub_241404050()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v17 = v0[13];
  v7 = (v0[6] + OBJC_IVAR___GMSpecifierController_availabilityProvider);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 32))(v8, v9);
  sub_24140E5BC();
  (*(v3 + 8))(v2, v4);
  sub_24140E54C();
  (*(v6 + 8))(v5, v17);
  v0[22] = OBJC_IVAR___GMSpecifierController_availability;
  v10 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8]);
  v11 = *(MEMORY[0x277D856D0] + 4);
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_2414041F4;
  v13 = v0[21];
  v14 = v0[19];
  v15 = v0[12];

  return MEMORY[0x282200308](v15, v14, v10);
}

uint64_t sub_2414041F4()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_241404738;
  }

  else
  {
    v3 = sub_241404308;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241404324()
{
  v43 = v0;
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[18];
    v5 = v0[15];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    (*(v0[20] + 8))(v0[21], v0[19]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v3 + 32))(v0[11], v1, v2);
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[7];
    v14 = v0[8];
    v15 = sub_24140E72C();
    __swift_project_value_buffer(v15, qword_28120FD70);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    v17 = sub_24140E70C();
    v18 = sub_24140ED6C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[10];
    v22 = v0[7];
    v21 = v0[8];
    if (v19)
    {
      v41 = v18;
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v23 = 136315394;
      *(v23 + 4) = sub_2413F10BC(0xD00000000000001BLL, 0x800000024141A7B0, &v42);
      *(v23 + 12) = 2080;
      sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280]);
      log = v17;
      v24 = v16;
      v25 = sub_24140EEFC();
      v27 = v26;
      v28 = *(v21 + 8);
      v28(v20, v22);
      v29 = v25;
      v16 = v24;
      v30 = sub_2413F10BC(v29, v27, &v42);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_2413B9000, log, v41, "%s Availability changes notification received. %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE6B00](v40, -1, -1);
      MEMORY[0x245CE6B00](v23, -1, -1);
    }

    else
    {

      v28 = *(v21 + 8);
      v28(v20, v22);
    }

    v0[25] = v28;
    v31 = v0[22];
    v33 = v0[8];
    v32 = v0[9];
    v35 = v0[6];
    v34 = v0[7];
    v16(v32, v0[11], v34);
    swift_beginAccess();
    (*(v33 + 40))(v35 + v31, v32, v34);
    swift_endAccess();
    v36 = swift_task_alloc();
    v0[26] = v36;
    *v36 = v0;
    v36[1] = sub_2414047C4;
    v37 = v0[11];
    v38 = v0[6];

    return sub_2414013B0(v37);
  }
}

uint64_t sub_241404738()
{
  *(v0 + 40) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2414047C4()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2414048C0, 0, 0);
}

uint64_t sub_2414048C0()
{
  v1 = *(v0 + 64) + 8;
  (*(v0 + 200))(*(v0 + 88), *(v0 + 56));
  v2 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8]);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_2414041F4;
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 96);

  return MEMORY[0x282200308](v7, v6, v2);
}

uint64_t sub_2414049B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v41 - v3;
  v5 = sub_24140E5DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24140E50C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v13 = sub_24140E72C();
  __swift_project_value_buffer(v13, qword_28120FD70);
  v14 = sub_24140E70C();
  v15 = sub_24140ED6C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2413B9000, v14, v15, "Adding ADM Availability listeners", v16, 2u);
    MEMORY[0x245CE6B00](v16, -1, -1);
  }

  v17 = v0;
  v18 = sub_24140E70C();
  v19 = sub_24140ED6C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = v20;
    v45 = swift_slowAlloc();
    v48 = v45;
    *v20 = 136315138;
    v42 = v9;
    v21 = v5;
    v22 = v4;
    v23 = *&v17[OBJC_IVAR___GMSpecifierController_availabilityProvider + 24];
    v24 = *&v17[OBJC_IVAR___GMSpecifierController_availabilityProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR___GMSpecifierController_availabilityProvider], v23);
    v25 = *(v24 + 40);
    v26 = v46;
    v43 = v19;
    v27 = v24;
    v4 = v22;
    v25(v23, v27);
    v28 = v47;
    sub_24140E53C();
    (*(v6 + 8))(v26, v21);
    sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280]);
    v29 = v42;
    v30 = sub_24140EEFC();
    v32 = v31;
    (*(v10 + 8))(v28, v29);
    v33 = sub_2413F10BC(v30, v32, &v48);

    v34 = v44;
    *(v44 + 1) = v33;
    v35 = v34;
    _os_log_impl(&dword_2413B9000, v18, v43, "current adm status: %s", v34, 0xCu);
    v36 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x245CE6B00](v36, -1, -1);
    MEMORY[0x245CE6B00](v35, -1, -1);
  }

  v37 = sub_24140ECDC();
  (*(*(v37 - 8) + 56))(v4, 1, 1, v37);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v17;
  v39 = v17;
  sub_2413E7730(0, 0, v4, &unk_2414137E8, v38);
}

uint64_t sub_241404E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_24140E50C();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BB0, &qword_2414137F0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v9 = sub_24140E56C();
  v4[12] = v9;
  v10 = *(v9 - 8);
  v4[13] = v10;
  v11 = *(v10 + 64) + 15;
  v4[14] = swift_task_alloc();
  v12 = sub_24140E5DC();
  v4[15] = v12;
  v13 = *(v12 - 8);
  v4[16] = v13;
  v14 = *(v13 + 64) + 15;
  v4[17] = swift_task_alloc();
  v15 = sub_24140E55C();
  v4[18] = v15;
  v16 = *(v15 - 8);
  v4[19] = v16;
  v17 = *(v16 + 64) + 15;
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241405060, 0, 0);
}

uint64_t sub_241405060()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v16 = v0[20];
  v17 = v0[12];
  v6 = v0[6];
  v7 = *(v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 24);
  v8 = *(v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR___GMSpecifierController_availabilityProvider), v7);
  (*(v8 + 40))(v7, v8);
  sub_24140E5BC();
  (*(v2 + 8))(v1, v3);
  sub_24140E54C();
  (*(v5 + 8))(v4, v17);
  v0[21] = OBJC_IVAR___GMSpecifierController_delegate;
  swift_beginAccess();
  v9 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8]);
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_241405218;
  v12 = v0[20];
  v13 = v0[18];
  v14 = v0[11];

  return MEMORY[0x282200308](v14, v13, v9);
}

uint64_t sub_241405218()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_2414058BC;
  }

  else
  {
    v3 = sub_24140532C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241405348()
{
  v57 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    goto LABEL_15;
  }

  (*(v3 + 32))(v0[10], v1, v2);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = sub_24140E72C();
  __swift_project_value_buffer(v8, qword_28120FD70);
  (*(v6 + 16))(v4, v5, v7);
  v9 = sub_24140E70C();
  v10 = sub_24140ED6C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[8];
  v13 = v0[9];
  v14 = v0[7];
  if (v11)
  {
    v52 = v10;
    v15 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v15 = 136315394;
    *(v15 + 4) = sub_2413F10BC(0xD00000000000001CLL, 0x800000024141A790, &v56);
    *(v15 + 12) = 2080;
    sub_2414087E8(&qword_28120FCE8, MEMORY[0x277D0E280]);
    v16 = sub_24140EEFC();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v13, v14);
    v20 = sub_2413F10BC(v16, v18, &v56);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_2413B9000, v9, v52, "%s ADM availability changes notification received. %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v54, -1, -1);
    MEMORY[0x245CE6B00](v15, -1, -1);
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v13, v14);
  }

  v21 = v0[21];
  v22 = v0[6];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v33 = sub_24140E70C();
    v34 = sub_24140ED6C();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v0[19];
    v36 = v0[20];
    v38 = v0[18];
    v39 = v0[10];
    v40 = v0[7];
    v41 = v0[8];
    if (v35)
    {
      v55 = v0[20];
      v42 = swift_slowAlloc();
      v53 = v19;
      v43 = swift_slowAlloc();
      v56 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_2413F10BC(0xD00000000000001CLL, 0x800000024141A790, &v56);
      _os_log_impl(&dword_2413B9000, v33, v34, "%s ADM delegate is not set. Bailing.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x245CE6B00](v43, -1, -1);
      MEMORY[0x245CE6B00](v42, -1, -1);

      v53(v39, v40);
      (*(v37 + 8))(v55, v38);
    }

    else
    {

      v19(v39, v40);
      (*(v37 + 8))(v36, v38);
    }

LABEL_15:
    v44 = v0[20];
    v45 = v0[17];
    v46 = v0[14];
    v48 = v0[10];
    v47 = v0[11];
    v49 = v0[9];

    v50 = v0[1];

    return v50();
  }

  v24 = v0[10];
  v25 = v0[7];
  v26 = v0[8] + 8;
  [Strong updateADMState];
  swift_unknownObjectRelease();
  v19(v24, v25);
  v27 = sub_2414087E8(&qword_28120FCE0, MEMORY[0x277D0E2A8]);
  v28 = *(MEMORY[0x277D856D0] + 4);
  v29 = swift_task_alloc();
  v0[22] = v29;
  *v29 = v0;
  v29[1] = sub_241405218;
  v30 = v0[20];
  v31 = v0[18];
  v32 = v0[11];

  return MEMORY[0x282200308](v32, v31, v27);
}

uint64_t sub_2414058BC()
{
  *(v0 + 40) = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

id GMSpecifierController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMSpecifierController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_241405AAC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2413E85C0;

  return v7();
}

uint64_t sub_241405B94(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2413E7CA4;

  return v8();
}

uint64_t sub_241405C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2413E8158(a3, v25 - v11);
  v13 = sub_24140ECDC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_241408308(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24140ECCC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_24140EC8C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_24140EC4C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_241408308(a3);

    return v23;
  }

LABEL_8:
  sub_241408308(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_241405F38(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2414060D8(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_241408700(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x245CE6B00](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2414060D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = a1;
  v6 = sub_24140E4BC();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v28 - v12;
  v34 = *(a3 + 16);
  if (v34)
  {
    v30 = 0;
    v13 = 0;
    v39 = *(v11 + 16);
    v40 = v11 + 16;
    v33 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v11 + 72);
    v37 = a4 + 56;
    v38 = v14;
    v15 = (v11 + 8);
    v36 = a4;
    while (1)
    {
      v35 = v13;
      v39(v41, v33 + v38 * v13, v6);
      v18 = *(a4 + 40);
      sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]);
      v19 = sub_24140EBCC();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
      {
        break;
      }

      v32 = v15 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v24 = ~v20;
      while (1)
      {
        v39(v10, *(v36 + 48) + v21 * v38, v6);
        sub_2414087E8(&qword_28120FCF8, MEMORY[0x277D0E218]);
        v25 = sub_24140EBDC();
        v16 = *v15;
        (*v15)(v10, v6);
        if (v25)
        {
          break;
        }

        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v37 + 8 * (v21 >> 6))) == 0)
        {
          a4 = v36;
          goto LABEL_4;
        }
      }

      result = (v16)(v41, v6);
      v27 = v31[v22];
      v31[v22] = v27 | v23;
      if ((v27 & v23) != 0)
      {
        a4 = v36;
LABEL_5:
        v17 = v35;
        goto LABEL_6;
      }

      v17 = v35;
      a4 = v36;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        return result;
      }

      ++v30;
LABEL_6:
      v13 = v17 + 1;
      if (v13 == v34)
      {
        goto LABEL_17;
      }
    }

    v16 = *v15;
LABEL_4:
    v16(v41, v6);
    goto LABEL_5;
  }

  v30 = 0;
LABEL_17:

  return sub_241406424(v31, v29, v30, a4);
}

uint64_t sub_241406424(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_24140E4BC();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542B98, &qword_2414137D8);
  result = sub_24140EE4C();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]);
    result = sub_24140EBCC();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24140674C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24140E48C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24140E4AC();
  v33 = v9;
  v34 = &off_2853176D0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v11 = sub_24140E49C();
  (*(v5 + 104))(v8, *MEMORY[0x277D0DFD8], v4);
  LOBYTE(v9) = sub_2413FEA34(v8, v11);

  (*(v5 + 8))(v8, v4);
  v12 = 0;
  if (v9)
  {
    if (a2)
    {
      v13 = sub_24140E61C();
      a2 = v14;
    }

    else
    {
      v13 = 0;
    }

    sub_24140E62C();
    v15 = sub_24140E5EC();
    v16 = sub_24140E61C();
    v18 = v17;

    if (a2)
    {
      if (v16 == v13 && a2 == v18)
      {

LABEL_11:

        v12 = 22;
        goto LABEL_27;
      }

      v19 = sub_24140EF1C();

      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v20 = sub_24140E60C();
    v21 = sub_24140E61C();
    v23 = v22;

    if (a2)
    {
      if (v21 == v13 && a2 == v23)
      {

LABEL_18:

        v12 = 23;
        goto LABEL_27;
      }

      v24 = sub_24140EF1C();

      if (v24)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v25 = sub_24140E5FC();
    v26 = sub_24140E61C();
    v28 = v27;

    if (a2)
    {
      if (v26 == v13 && a2 == v28)
      {

        v12 = 24;
        goto LABEL_27;
      }

      v29 = sub_24140EF1C();

      if (v29)
      {
        v12 = 24;
        goto LABEL_27;
      }
    }

    else
    {
    }

    v12 = 21;
  }

LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v12;
}

uint64_t sub_241406AA0(uint64_t a1, void *a2)
{
  v4 = sub_24140E4BC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24140E4DC();
  v57 = v9;
  v58 = &off_2853176C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v11 = sub_24140E72C();
  __swift_project_value_buffer(v11, qword_28120FD70);
  sub_24140869C(v56, v55);
  v12 = a2;
  v13 = sub_24140E70C();
  v14 = sub_24140ED6C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v54 = v16;
    *v15 = 136315394;
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]);
    v17 = sub_24140ED3C();
    v53 = v4;
    v18 = v8;
    v19 = v5;
    v20 = v17;
    v22 = v21;

    __swift_destroy_boxed_opaque_existential_1(v55);
    v23 = sub_2413F10BC(v20, v22, &v54);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v24 = sub_24140E61C();
    v26 = sub_2413F10BC(v24, v25, &v54);

    *(v15 + 14) = v26;
    v5 = v19;
    v8 = v18;
    v4 = v53;
    _os_log_impl(&dword_2413B9000, v13, v14, "Getting context for Unavailability: %s TicketStatus: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v16, -1, -1);
    MEMORY[0x245CE6B00](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v27 = sub_24140E61C();
  v29 = v28;
  sub_24140E62C();
  v30 = sub_24140E5EC();
  v31 = sub_24140E61C();
  v33 = v32;

  if (v31 == v27 && v33 == v29)
  {

LABEL_10:

LABEL_11:
    v35 = 3;
    goto LABEL_12;
  }

  v34 = sub_24140EF1C();

  if (v34)
  {
    goto LABEL_10;
  }

  v37 = sub_24140E60C();
  v38 = sub_24140E61C();
  v40 = v39;

  if (v38 == v27 && v40 == v29)
  {

LABEL_17:

    v35 = 4;
    goto LABEL_12;
  }

  v41 = sub_24140EF1C();

  if (v41)
  {
    goto LABEL_17;
  }

  v42 = sub_24140E5FC();
  v43 = sub_24140E61C();
  v45 = v44;

  if (v43 == v27 && v45 == v29)
  {
  }

  else
  {
    v46 = sub_24140EF1C();

    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __swift_project_boxed_opaque_existential_1(v56, v57);
  v47 = sub_24140E4CC();
  v48 = v5[13];
  v48(v8, *MEMORY[0x277D0E0E8], v4);
  v49 = sub_2413FE81C(v8, v47);

  v50 = v5[1];
  v50(v8, v4);
  if (v49)
  {
    v35 = 21;
  }

  else
  {
    v51 = sub_24140E4CC();
    v48(v8, *MEMORY[0x277D0E168], v4);
    v52 = sub_2413FE81C(v8, v51);

    v50(v8, v4);
    if (v52)
    {
      v35 = 21;
    }

    else
    {
      v35 = 5;
    }
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v56);
  return v35;
}

uint64_t sub_24140701C(uint64_t a1)
{
  v2 = sub_24140E4BC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E4DC();
  v52 = v7;
  v53 = &off_2853176C0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v9 = sub_24140E72C();
  __swift_project_value_buffer(v9, qword_28120FD70);
  sub_24140869C(v51, v50);
  v10 = sub_24140E70C();
  v11 = sub_24140ED6C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136315138;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    sub_24140E4CC();
    sub_2414087E8(&qword_28120FD00, MEMORY[0x277D0E218]);
    v14 = sub_24140ED3C();
    v16 = v15;

    __swift_destroy_boxed_opaque_existential_1(v50);
    v17 = sub_2413F10BC(v14, v16, &v49);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2413B9000, v10, v11, "Getting context for Unavailability: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CE6B00](v13, -1, -1);
    MEMORY[0x245CE6B00](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v18 = sub_24140E4CC();
  v19 = *MEMORY[0x277D0E0E8];
  v20 = v3[13];
  v20(v6, v19, v2);
  v21 = sub_2413FE81C(v6, v18);

  v22 = v3[1];
  v22(v6, v2);
  if (v21 & 1) != 0 || (v23 = sub_24140E4CC(), v20(v6, *MEMORY[0x277D0E168], v2), v24 = sub_2413FE81C(v6, v23), , v22(v6, v2), (v24))
  {
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v25 = sub_24140E4CC();
    v20(v6, *MEMORY[0x277D0E0D0], v2);
    v26 = sub_2413FE81C(v6, v25);

    v22(v6, v2);
    if (v26)
    {
      sub_24140E6CC();
      v27 = (sub_24140E6BC() & 1) == 0;
      v28 = 7;
      v29 = 9;
      goto LABEL_24;
    }
  }

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v30 = sub_24140E4CC();
  v20(v6, v19, v2);
  v31 = sub_2413FE81C(v6, v30);

  v22(v6, v2);
  if (v31 & 1) != 0 || (v32 = sub_24140E4CC(), v20(v6, *MEMORY[0x277D0E168], v2), v33 = sub_2413FE81C(v6, v32), , v22(v6, v2), (v33))
  {
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v34 = sub_24140E4CC();
    v20(v6, *MEMORY[0x277D0E0A8], v2);
    v35 = sub_2413FE81C(v6, v34);

    v22(v6, v2);
    if (v35)
    {
      sub_24140E6CC();
      v27 = (sub_24140E6BC() & 1) == 0;
      v28 = 21;
LABEL_23:
      v29 = 12;
LABEL_24:
      if (v27)
      {
        v44 = v28;
      }

      else
      {
        v44 = v29;
      }

      goto LABEL_27;
    }
  }

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v36 = sub_24140E4CC();
  v20(v6, v19, v2);
  v37 = sub_2413FE81C(v6, v36);

  v22(v6, v2);
  if (v37 & 1) != 0 || (v38 = sub_24140E4CC(), v20(v6, *MEMORY[0x277D0E168], v2), v39 = sub_2413FE81C(v6, v38), , v22(v6, v2), (v39))
  {
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v40 = sub_24140E4CC();
    v20(v6, *MEMORY[0x277D0E0A8], v2);
    v41 = sub_2413FE81C(v6, v40);

    v22(v6, v2);
    if ((v41 & 1) == 0)
    {
      v44 = 24;
      goto LABEL_27;
    }
  }

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v42 = sub_24140E4CC();
  v20(v6, *MEMORY[0x277D0E0F8], v2);
  v43 = sub_2413FE81C(v6, v42);

  v22(v6, v2);
  if ((v43 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v45 = sub_24140E4CC();
    v20(v6, *MEMORY[0x277D0E0A8], v2);
    v46 = sub_2413FE81C(v6, v45);

    v22(v6, v2);
    v27 = (v46 & 1) == 0;
    v28 = 5;
    goto LABEL_23;
  }

  sub_24140E6CC();
  if (sub_24140E6BC())
  {
    v44 = 11;
  }

  else
  {
    v44 = 10;
  }

LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v44;
}

uint64_t sub_241407788(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_24140E48C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241407848, 0, 0);
}

uint64_t sub_241407848()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_24140E49C();
  v6 = *(v2 + 104);
  v6(v1, *MEMORY[0x277D0E020], v4);
  v7 = sub_2413FEA34(v1, v5);

  v8 = *(v2 + 8);
  v8(v1, v4);
  v9 = sub_24140E49C();
  if (v7)
  {
    v10 = v6;
    v11 = 26;
    v12 = 25;
  }

  else
  {
    v13 = v0[5];
    v14 = v0[3];
    v6(v13, *MEMORY[0x277D0DFD8], v14);
    v15 = sub_2413FEA34(v13, v9);

    v8(v13, v14);
    if ((v15 & 1) == 0)
    {
      v16 = v0[5];
      v17 = v0[2];
      v18 = v0[3];
      v19 = sub_24140E49C();
      v6(v16, *MEMORY[0x277D0E008], v18);
      v20 = sub_2413FEA34(v16, v19);

      v8(v16, v18);
      if ((v20 & 1) == 0)
      {
        v25 = 0;
        goto LABEL_9;
      }
    }

    v10 = v6;
    v21 = v0[2];
    v9 = sub_24140E49C();
    v11 = 9;
    v12 = 24;
  }

  v22 = v0[5];
  v23 = v0[3];
  v10(v22, *MEMORY[0x277D0DFC8], v23);
  v24 = sub_2413FEA34(v22, v9);

  v8(v22, v23);
  if (v24)
  {
    v25 = v11;
  }

  else
  {
    v25 = v12;
  }

LABEL_9:
  v26 = v0[5];

  v27 = v0[1];

  return v27(v25);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_241407B08()
{
  result = sub_24140E50C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of GMSpecifierController.enroll()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F8554;

  return v6();
}

uint64_t dispatch thunk of GMSpecifierController.fetchStatus(forceDownloadIfNeeded:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2413F82EC;

  return v8(a1);
}

uint64_t dispatch thunk of GMSpecifierController.fetchStatus()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413F8554;

  return v6();
}

uint64_t dispatch thunk of GMSpecifierController.clearCFU()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E7CA4;

  return v6();
}

uint64_t sub_24140825C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E85C0;

  return sub_2414038BC(v2);
}

uint64_t sub_241408308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_241408370(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2413E85C0;

  return sub_2413E81C8(a1, v5);
}

uint64_t sub_241408428()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E85C0;

  return sub_241401308(v2, v3);
}

uint64_t sub_2414084D4()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2413E7CA4;

  return sub_24140021C(v2, v4, v3);
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2414085C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2413E85C0;

  return sub_2413FFE2C(v2, v3);
}

uint64_t sub_24140869C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241408700@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2414060D8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_241408734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241404E48(a1, v4, v5, v6);
}

uint64_t sub_2414087E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241408830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241403E2C(a1, v4, v5, v6);
}

uint64_t sub_241408938()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2414089D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_241408AC8()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_241408B60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_241408C10()
{
  result = [objc_allocWithZone(type metadata accessor for GMEligibilityProvider()) init];
  qword_28120FCD8 = result;
  return result;
}

id GMEligibilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GMEligibilityProvider.shared.getter()
{
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v1 = qword_28120FCD8;

  return v1;
}

void *sub_241408D78()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_241408E24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_241408E7C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

BOOL sub_241408FDC()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return qword_285317228 != v2 && unk_285317230 != v2;
}

BOOL sub_241409038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id sub_2414090D4()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  if (*(v0 + v1) == 5)
  {
    return [*(v0 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController) featureOptInStatus];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2414091AC()
{
  v1 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v2 = vdupq_n_s64(*(v0 + v1));
  return vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_285317258, v2), vceqq_s64(unk_285317268, v2)))) & 1;
}

char *GMEligibilityProvider.init()()
{
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter] = 0;
  v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch] = 0;
  *&v0[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController] = [objc_allocWithZone(type metadata accessor for GMSpecifierController()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GMEligibilityProvider();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [*&v1[OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController] setDelegate_];
  return v1;
}

uint64_t sub_2414093A8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v8 = sub_24140E72C();
  __swift_project_value_buffer(v8, qword_28120FD70);
  v9 = a1;
  v10 = sub_24140E70C();
  v11 = sub_24140ED6C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = a1;
    v14 = v9;
    _os_log_impl(&dword_2413B9000, v10, v11, "Fetch status called with presenter. %@", v12, 0xCu);
    sub_2413F1664(v13);
    MEMORY[0x245CE6B00](v13, -1, -1);
    MEMORY[0x245CE6B00](v12, -1, -1);
  }

  v15 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v16 = *&v2[v15];
  *&v2[v15] = a1;

  v17 = sub_24140ECDC();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v19 = v9;
  v20 = v2;
  sub_2413E7730(0, 0, v7, &unk_241413810, v18);
}

uint64_t sub_2414095F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_2414096BC;

  return sub_241409B94();
}

uint64_t sub_2414096BC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2414097B8, 0, 0);
}

uint64_t sub_2414097B8()
{
  v21 = v0;
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = qword_28120FCB8;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_24140E72C();
    __swift_project_value_buffer(v6, qword_28120FD70);
    v7 = sub_24140E70C();
    v8 = sub_24140ED6C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2413F10BC(0xD000000000000017, 0x800000024141AAE0, &v20);
      _os_log_impl(&dword_2413B9000, v7, v8, "%s Attempt to reload specifiers.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CE6B00](v10, -1, -1);
      MEMORY[0x245CE6B00](v9, -1, -1);
    }

    v11 = v0[6];
    v12 = sub_24140ECDC();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_24140ECBC();
    v13 = v5;
    v14 = sub_24140ECAC();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    sub_2413E7730(0, 0, v11, &unk_241413948, v15);
  }

  v17 = v0[6];

  v18 = v0[1];

  return v18();
}

uint64_t sub_241409A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_241409AB8, v6, v5);
}

uint64_t sub_241409AB8()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 reloadSpecifiers];
  v3 = v0[1];

  return v3();
}

uint64_t sub_241409BB4()
{
  v1 = v0[33];
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  v0[34] = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[35] = v3;
  if (v3 == 18)
  {
LABEL_8:
    v10 = v0[1];

    return v10();
  }

  v4 = v0[33];
  v5 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  v0[36] = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_requestState;
  swift_beginAccess();
  if (*(v4 + v5) == 1)
  {
    if (qword_28120FCB8 != -1)
    {
      swift_once();
    }

    v6 = sub_24140E72C();
    __swift_project_value_buffer(v6, qword_28120FD70);
    v7 = sub_24140E70C();
    v8 = sub_24140ED8C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2413B9000, v7, v8, "Enrollment request is already in progress. Bailing.", v9, 2u);
      MEMORY[0x245CE6B00](v9, -1, -1);
    }

    goto LABEL_8;
  }

  v12 = v0[33];
  *(v4 + v5) = 1;
  v13 = v0 + 32;
  v14 = *(v12 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController);
  if (*(v12 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_shouldForceDownloadIfNeededOnFetch) == 1)
  {
    v15 = v0 + 10;
    v0[10] = v0;
    v0[15] = v13;
    v0[11] = sub_241409EFC;
    v16 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BE8, &qword_241413938);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24140A390;
    v0[21] = &block_descriptor_22;
    v0[22] = v16;
    [v14 fetchStatusWithForceDownloadIfNeeded:1 completionHandler:v0 + 18];
  }

  else
  {
    v15 = v0 + 2;
    v0[2] = v0;
    v0[7] = v13;
    v0[3] = sub_24140A2B0;
    v17 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542BE8, &qword_241413938);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24140A390;
    v0[21] = &block_descriptor_2;
    v0[22] = v17;
    [v14 fetchStatusWithCompletionHandler_];
  }

  return MEMORY[0x282200938](v15);
}

uint64_t sub_241409EFC()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_241409FDC, 0, 0);
}

uint64_t sub_241409FDC()
{
  v24 = v0;
  v1 = v0[32];
  *(v0[33] + v0[36]) = 2;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v2 = sub_24140E72C();
  __swift_project_value_buffer(v2, qword_28120FD70);
  v3 = sub_24140E70C();
  v4 = sub_24140ED6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_2413F10BC(0xD000000000000011, 0x800000024141AAC0, &v23);
    *(v6 + 12) = 2080;
    v8 = GMEligibilityContext.description.getter(v5);
    v10 = sub_2413F10BC(v8, v9, &v23);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = GMEligibilityContext.description.getter(v1);
    v13 = sub_2413F10BC(v11, v12, &v23);

    *(v6 + 24) = v13;
    _os_log_impl(&dword_2413B9000, v3, v4, "%s Previous Status: %s New Status: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v7, -1, -1);
    MEMORY[0x245CE6B00](v6, -1, -1);
  }

  if (v1 != v0[35])
  {
    *(v0[33] + v0[34]) = v1;
    v14 = sub_24140E70C();
    v15 = sub_24140ED8C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = GMEligibilityContext.description.getter(v1);
      v20 = sub_2413F10BC(v18, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2413B9000, v14, v15, "Status: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CE6B00](v17, -1, -1);
      MEMORY[0x245CE6B00](v16, -1, -1);
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_24140A2B0()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24140B668, 0, 0);
}

uint64_t sub_24140A390(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

void sub_24140A3EC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v8 = sub_24140E72C();
  v9 = __swift_project_value_buffer(v8, qword_28120FD70);
  v10 = v2;
  v11 = sub_24140E70C();
  v12 = sub_24140ED8C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v39 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v9;
    v17 = v16;
    v41[0] = v16;
    *v14 = 136315650;
    *(v14 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7D0, v41);
    *(v14 + 12) = 2080;
    v18 = GMEligibilityContext.description.getter(a1);
    v20 = sub_2413F10BC(v18, v19, v41);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2112;
    v21 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
    swift_beginAccess();
    v22 = *&v10[v21];
    *(v14 + 24) = v22;
    *v15 = v22;
    v23 = v22;
    _os_log_impl(&dword_2413B9000, v11, v12, "%s Updating eligibility with %s do we have a presenter? %@", v14, 0x20u);
    sub_2413F1664(v15);
    MEMORY[0x245CE6B00](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CE6B00](v17, -1, -1);
    v24 = v14;
    v7 = v39;
    MEMORY[0x245CE6B00](v24, -1, -1);
  }

  v25 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  *&v10[v25] = a1;
  v26 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v27 = *&v10[v26];
  if (v27)
  {
    v28 = v27;
    v29 = sub_24140E70C();
    v30 = sub_24140ED6C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7D0, &v40);
      _os_log_impl(&dword_2413B9000, v29, v30, "%s Attempting to reload specifiers.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x245CE6B00](v32, -1, -1);
      MEMORY[0x245CE6B00](v31, -1, -1);
    }

    v33 = sub_24140ECDC();
    (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    sub_24140ECBC();
    v34 = v28;
    v35 = sub_24140ECAC();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v34;
    sub_2413E7730(0, 0, v7, &unk_241413828, v36);
  }
}

uint64_t sub_24140A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_24140B66C, v6, v5);
}

void sub_24140A8F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  if (qword_28120FCB8 != -1)
  {
    swift_once();
  }

  v5 = sub_24140E72C();
  __swift_project_value_buffer(v5, qword_28120FD70);
  v6 = v0;
  v7 = sub_24140E70C();
  v8 = sub_24140ED8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7F0, &v29);
    *(v9 + 12) = 2112;
    v12 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
    swift_beginAccess();
    v13 = *&v6[v12];
    *(v9 + 14) = v13;
    *v10 = v13;
    v14 = v13;
    _os_log_impl(&dword_2413B9000, v7, v8, "%s Fetching ADM waitlist status do we have a presenter? %@", v9, 0x16u);
    sub_2413F1664(v10);
    MEMORY[0x245CE6B00](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CE6B00](v11, -1, -1);
    MEMORY[0x245CE6B00](v9, -1, -1);
  }

  v15 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_presenter;
  swift_beginAccess();
  v16 = *&v6[v15];
  if (v16)
  {
    v17 = v16;
    v18 = sub_24140E70C();
    v19 = sub_24140ED6C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2413F10BC(0xD000000000000010, 0x800000024141A7F0, &v28);
      _os_log_impl(&dword_2413B9000, v18, v19, "%s Attempting to fetch current waitlist status and reload image creation specifier.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CE6B00](v21, -1, -1);
      MEMORY[0x245CE6B00](v20, -1, -1);
    }

    v22 = sub_24140ECDC();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    sub_24140ECBC();
    v23 = v17;
    v24 = sub_24140ECAC();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    v25[2] = v24;
    v25[3] = v26;
    v25[4] = v23;
    sub_2413E7730(0, 0, v4, &unk_241413838, v25);
  }
}

uint64_t sub_24140AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24140ECBC();
  *(v4 + 24) = sub_24140ECAC();
  v6 = sub_24140EC8C();

  return MEMORY[0x2822009F8](sub_24140AD30, v6, v5);
}

uint64_t sub_24140AD30()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = sub_24140EC0C();
  [v2 reloadSpecifierID_];

  v4 = v0[1];

  return v4();
}

id GMEligibilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEligibilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t GMRequestState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_24140AEAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_24140AEC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E7CA4;

  return sub_2414095F0(a1, v4, v5, v6);
}

uint64_t sub_24140AF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_24140A808(a1, v4, v5, v6);
}

uint64_t sub_24140B030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_24140AC98(a1, v4, v5, v6);
}

unint64_t sub_24140B0E8()
{
  result = qword_27E542BE0;
  if (!qword_27E542BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542BE0);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_24140B5AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2413E85C0;

  return sub_241409A20(a1, v4, v5, v6);
}

uint64_t sub_24140B6A0()
{
  type metadata accessor for GMFooterUtility();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return MEMORY[0x2821336E0](0xD000000000000015, 0x800000024141AC10, v1);
}

uint64_t sub_24140B71C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = sub_24140E8BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426D0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27E543B48);
  (*(v1 + 16))(v4, v10, v0);
  sub_24140E8CC();
  sub_24140E79C();
  (*(v6 + 8))(v9, v5);
  v11 = sub_24140E7AC();

  return v11;
}

uint64_t sub_24140B918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542880, &qword_241412EF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - v3;
  v5 = sub_24140E7EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542888, &qword_241412EF8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_24140E7FC();
  v15 = MEMORY[0x277CE1A00];
  MEMORY[0x245CE5640](v9, v5, MEMORY[0x277CE1A00]);
  (*(v6 + 8))(v9, v5);
  v19 = v5;
  v20 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x245CE5660](v14, v10, OpaqueTypeConformance2);
  v19 = v10;
  v20 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = sub_24140E7CC();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v17;
}

unint64_t sub_24140BBE0()
{
  result = qword_27E542BF0;
  if (!qword_27E542BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E542BF0);
  }

  return result;
}

uint64_t sub_24140BC34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542890, &qword_241412F00);
  __swift_allocate_value_buffer(v0, qword_27E543B48);
  __swift_project_value_buffer(v0, qword_27E543B48);
  if (qword_28120FD68 != -1)
  {
    swift_once();
  }

  v1 = qword_28120FCD8;
  v2 = OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_eligibility;
  swift_beginAccess();
  if (*(v1 + v2) == 5)
  {
    [*(v1 + OBJC_IVAR____TtC24AssistantSettingsSupport21GMEligibilityProvider_gmSpecifierController) featureOptInStatus];
  }

  return sub_24140E8FC();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27E543AC8 == -1)
  {
    if (qword_27E543AD0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27E543AD0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27E543AC0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27E543AB4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27E543AB4 >= a3)
      {
        result = dword_27E543AB8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27E543AD0;
  if (qword_27E543AD0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E543AD0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x245CE6380](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27E543AB4, &dword_27E543AB8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantVoiceMetrics.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getPETEventPropertyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPETEventPropertyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantMetrics.m" lineNumber:39 description:{@"Unable to find class %s", "PETEventProperty"}];

  __break(1u);
}

void ProactiveEventTrackerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProactiveEventTrackerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantMetrics.m" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void __getPETScalarEventTrackerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPETScalarEventTrackerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantMetrics.m" lineNumber:42 description:{@"Unable to find class %s", "PETScalarEventTracker"}];

  __break(1u);
}

void __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIGMEnrollmentViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GMSpecifierProvider.m" lineNumber:24 description:{@"Unable to find class %s", "VTUIGMEnrollmentViewController"}];

  __break(1u);
}

void __getVTUIGMEnrollmentViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GMSpecifierProvider.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIEnrollTrainingViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantActivationController.m" lineNumber:29 description:{@"Unable to find class %s", "VTUIEnrollTrainingViewController"}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantActivationController.m" lineNumber:28 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSCopyDisplayIdentifiersSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASTLockScreenSuggestionSpecifier.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKKnowledgeStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKKnowledgeStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:37 description:{@"Unable to find class %s", "CKKnowledgeStore"}];

  __break(1u);
}

void CoreKnowledgeLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreKnowledgeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantLanguageController.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPermanentEventStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKPermanentEventStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:39 description:{@"Unable to find class %s", "CKPermanentEventStore"}];

  __break(1u);
}

void __getCKEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEventClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantLanguageController.m" lineNumber:35 description:{@"Unable to find class %s", "CKEvent"}];

  __break(1u);
}

void __getCKKnowledgeStoreClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKKnowledgeStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:39 description:{@"Unable to find class %s", "CKKnowledgeStore"}];

  __break(1u);
}

void CoreKnowledgeLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreKnowledgeLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantVoiceController.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getCKPermanentEventStoreClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKPermanentEventStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:41 description:{@"Unable to find class %s", "CKPermanentEventStore"}];

  __break(1u);
}

void __getCKEventClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKEventClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantVoiceController.m" lineNumber:37 description:{@"Unable to find class %s", "CKEvent"}];

  __break(1u);
}

void getNRDevicePropertySystemVersion_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:132 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getVTUISiriDataSharingOptInPresenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUISiriDataSharingOptInPresenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:123 description:{@"Unable to find class %s", "VTUISiriDataSharingOptInPresenter"}];

  __break(1u);
}

void VoiceTriggerUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:120 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:130 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:129 description:{@"%s", *a1}];

  __break(1u);
}

void __getBYFlowSkipControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBYFlowSkipControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:143 description:{@"Unable to find class %s", "BYFlowSkipController"}];

  __break(1u);
}

void SetupAssistantLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantController.m" lineNumber:142 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTUIVoiceSelectionViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIVoiceSelectionViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:125 description:{@"Unable to find class %s", "VTUIVoiceSelectionViewController"}];

  __break(1u);
}

void __getVTUIEnrollTrainingViewControllerClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTUIEnrollTrainingViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AssistantController.m" lineNumber:121 description:{@"Unable to find class %s", "VTUIEnrollTrainingViewController"}];

  __break(1u);
}

void SearchLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AssistantAppsSettingsController.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}